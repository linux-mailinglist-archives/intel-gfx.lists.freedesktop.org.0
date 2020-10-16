Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6237628FEE5
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 09:08:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CE196EA7B;
	Fri, 16 Oct 2020 07:08:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28B216EA7B
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 07:08:43 +0000 (UTC)
IronPort-SDR: QTS5cXdFrOMGUAsMRQcw94Gr5OHh2Oox6nlSNdnDJrNZyhXSdI/6+yctXlOzLnwQjGsxarBmya
 7FxH05ATLvHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="166611388"
X-IronPort-AV: E=Sophos;i="5.77,382,1596524400"; d="scan'208";a="166611388"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2020 00:08:42 -0700
IronPort-SDR: oNYv+ZCWfOZJTHTvVgrQL/CZUWkcwDpzFhupKVOTkiKTrCT9RTCONyY16nL8F6beeqoeX00VWa
 DdUl2+F02M+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,382,1596524400"; d="scan'208";a="357292343"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Oct 2020 00:08:40 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 3A89E5C2038; Fri, 16 Oct 2020 10:07:07 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201015195023.32346-1-chris@chris-wilson.co.uk>
References: <20201015195023.32346-1-chris@chris-wilson.co.uk>
Date: Fri, 16 Oct 2020 10:07:07 +0300
Message-ID: <87eelysl7o.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Delay execlist processing for
 tgl
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> When running gem_exec_nop, it floods the system with many requests (with
> the goal of userspace submitting faster than the HW can process a single
> empty batch). This causes the driver to continually resubmit new
> requests onto the end of an active context, a flood of lite-restore
> preemptions. If we time this just right, Tigerlake hangs.
>
> Inserting a small delay between the processing of CS events and
> submitting the next context, prevents the hang. Naturally it does not
> occur with debugging enabled. The suspicion then is that this is related
> to the issues with the CS event buffer, and inserting an mmio read of
> the CS pointer status appears to be very successful in preventing the
> hang. Other registers, or uncached reads, or plain mb, do not prevent
> the hang, suggesting that register is key -- but that the hang can be
> prevented by a simple udelay, suggests it is just a timing issue like
> that encountered by commit 233c1ae3c83f ("drm/i915/gt: Wait for CSB
> entries on Tigerlake"). Also note that the hang is not prevented by
> applying CTX_DESC_FORCE_RESTORE, or by inserting a delay on the GPU
> between requests.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Bruce Chang <yu.bruce.chang@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: stable@vger.kernel.org

Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 6170f6874f52..d15d561152ba 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2711,6 +2711,9 @@ static void process_csb(struct intel_engine_cs *engine)
>  			smp_wmb(); /* complete the seqlock */
>  			WRITE_ONCE(execlists->active, execlists->inflight);
>  
> +			/* Magic delay for tgl */
> +			ENGINE_POSTING_READ(engine, RING_CONTEXT_STATUS_PTR);
> +
>  			WRITE_ONCE(execlists->pending[0], NULL);
>  		} else {
>  			if (GEM_WARN_ON(!*execlists->active)) {
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
