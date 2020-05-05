Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D3A1C6277
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 22:55:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8B7C6E23F;
	Tue,  5 May 2020 20:55:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5E016E23F
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 20:55:43 +0000 (UTC)
IronPort-SDR: ZyTc/eF2MXOXhq13l+riw/UNdEa8rKaCeumEH6Dd1i0TXuOllmVnxqlg/GBOS2T0dAdaQclTTJ
 2tK88DZguYDQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 13:55:43 -0700
IronPort-SDR: fAzIja8w1kaTVEzL5rulL9eXmIOFG2UGUv+zDm+LyRGLDGTmoCziE424TpvOrNUBSFA5yDU2LU
 +QbH2lQV0IDA==
X-IronPort-AV: E=Sophos;i="5.73,356,1583222400"; d="scan'208";a="461186583"
Received: from dsp-dsk1.jf.intel.com (HELO localhost) ([10.54.70.63])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 13:55:42 -0700
From: D Scott Phillips <d.scott.phillips@intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200430154735.22434-6-mika.kuoppala@linux.intel.com>
References: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
 <20200430154735.22434-6-mika.kuoppala@linux.intel.com>
Date: Tue, 05 May 2020 13:53:09 -0700
Message-ID: <87pnbicde2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915/gen12: Invalidate indirect
 state pointers
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
Cc: Kenneth Graunke <kenneth@whitecape.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Mika Kuoppala <mika.kuoppala@linux.intel.com> writes:

> Aim for completeness for invalidating everything
> and mark state pointers stale.
>
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

nak, this breaks iris. indirect state disable removes push constant
state from the render context, not just invalidating it
emphemerally. iris is depending on that state to persist.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
