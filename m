Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FB21C4AE6
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 02:11:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F7A088D96;
	Tue,  5 May 2020 00:11:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C99C488D96
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 00:11:45 +0000 (UTC)
IronPort-SDR: 21J7l+Qst7y2WDcNzjXF/voS3gl5LDF0Q1HNOwKTAh6ZIt9SSqE7/kTq2JK4z+XI6VNJhWrHIt
 RInM0lxJ1tvw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 17:11:45 -0700
IronPort-SDR: cZ5cjPEcUKylGXuFM+UUeReIOZqRpJoCT6Z3FVYeZzfge8Rm+/UY/+5KPkKhYDnbWsP9TVl8ft
 LnDsW+CbdOng==
X-IronPort-AV: E=Sophos;i="5.73,354,1583222400"; d="scan'208";a="248390152"
Received: from dsp-dsk1.jf.intel.com (HELO localhost) ([10.54.70.63])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 17:11:45 -0700
From: D Scott Phillips <d.scott.phillips@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20200505000146.2295525-1-d.scott.phillips@intel.com>
References: <20200505000146.2295525-1-d.scott.phillips@intel.com>
Date: Mon, 04 May 2020 17:09:13 -0700
Message-ID: <874ksvtf86.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Put HDC flush pipe_control
 bit in the right dword
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

D Scott Phillips <d.scott.phillips@intel.com> writes:

> Previously we set HDC_PIPELINE_FLUSH in dword 1 of gen12
> pipe_control commands. HDC Pipeline flush actually resides in
> dword 0, and the bit we were setting in dword 1 was Indirect State
> Pointers Disable, which invalidates indirect state in the render
> context. This causes failures for userspace, as things like push
> constant state gets invalidated.
>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: D Scott Phillips <d.scott.phillips@intel.com>

also,

Fixes: 4aa0b5d457f5 ("drm/i915/tgl: Add HDC Pipeline Flush")
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
