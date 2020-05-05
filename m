Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B76A11C6298
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 23:04:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E93C489E7B;
	Tue,  5 May 2020 21:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9528B89E7B
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 21:04:43 +0000 (UTC)
IronPort-SDR: DpkF5n6lOZzxq8LPqIBIVyAttA/mFWUvOYCcsXppXYbwf4WvYJLHXM7qTeCidyV7e2ukZqmjq3
 gVZtOK+8JJhw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 14:04:42 -0700
IronPort-SDR: bUJrBiq0quh5jVLWYMQtTYzFIV7ElPsuJ2YJtWQUhW/6Ys2Ap5J8S7OtduQlMoe9FWpw4wtuLe
 /vxxnN5dEPHg==
X-IronPort-AV: E=Sophos;i="5.73,356,1583222400"; d="scan'208";a="406995927"
Received: from dsp-dsk1.jf.intel.com (HELO localhost) ([10.54.70.63])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 14:04:42 -0700
From: D Scott Phillips <d.scott.phillips@intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200430154735.22434-2-mika.kuoppala@linux.intel.com>
References: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
 <20200430154735.22434-2-mika.kuoppala@linux.intel.com>
Date: Tue, 05 May 2020 14:02:09 -0700
Message-ID: <87mu6mccz2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/gen12: Fix HDC pipeline flush
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Mika Kuoppala <mika.kuoppala@linux.intel.com> writes:

> HDC pipeline flush is bit on the first dword of
> the PIPE_CONTROL, not the second. Make it so.
>
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Fixes: 4aa0b5d457f5 ("drm/i915/tgl: Add HDC Pipeline Flush")
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
