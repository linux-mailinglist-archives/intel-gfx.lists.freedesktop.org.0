Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D20CC2C0E56
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Nov 2020 16:05:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B0E489DC1;
	Mon, 23 Nov 2020 15:05:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E292489DC1
 for <Intel-gfx@lists.freedesktop.org>; Mon, 23 Nov 2020 15:05:06 +0000 (UTC)
IronPort-SDR: 4o82VtVIjzqKJ+lUdVCf5pLDQMPoLr7vG6UsRdPagyuvdAD+iE6hv4lKCOTO8U3CiW8JDskwrF
 kL1HYks0uRog==
X-IronPort-AV: E=McAfee;i="6000,8403,9813"; a="189895747"
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="189895747"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 07:05:04 -0800
IronPort-SDR: FZ8dk9ElHow8iP7wsSc7neZ+d+gO/6Vqptgo121sSVcdhRn7/ihuPSProTtdn0nC/BexrJHyWJ
 mD+z85pWXm6g==
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="536125365"
Received: from suygunge-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.40.108])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 07:05:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Sean Z Huang <sean.z.huang@intel.com>, sean.z.huang@intel.com,
 Intel-gfx@lists.freedesktop.org
In-Reply-To: <20201114003716.4875-6-sean.z.huang@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201114003716.4875-1-sean.z.huang@intel.com>
 <20201114003716.4875-6-sean.z.huang@intel.com>
Date: Mon, 23 Nov 2020 17:04:59 +0200
Message-ID: <87a6v8nmg4.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PXP CLEAN PATCH v06 06/27] drm/i915: Rename the
 whitelist to allowlist
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

On Fri, 13 Nov 2020, Sean Z Huang <sean.z.huang@intel.com> wrote:
> From: "Huang, Sean Z" <sean.z.huang@intel.com>
>
> Rename the whitelist to allowlist as suggested

Please post this separately and we can merge this while the rest of the
series is still being reviewed.

BR,
Jani.

>
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 1c14a07eba7d..c9ef0025c60e 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1989,12 +1989,12 @@ void intel_uncore_fini_mmio(struct intel_uncore *uncore)
>  	uncore_mmio_cleanup(uncore);
>  }
>  
> -static const struct reg_whitelist {
> +static const struct reg_allowlist {
>  	i915_reg_t offset_ldw;
>  	i915_reg_t offset_udw;
>  	u16 gen_mask;
>  	u8 size;
> -} reg_read_whitelist[] = { {
> +} reg_read_allowlist[] = { {
>  	.offset_ldw = RING_TIMESTAMP(RENDER_RING_BASE),
>  	.offset_udw = RING_TIMESTAMP_UDW(RENDER_RING_BASE),
>  	.gen_mask = INTEL_GEN_MASK(4, 12),
> @@ -2007,14 +2007,14 @@ int i915_reg_read_ioctl(struct drm_device *dev,
>  	struct drm_i915_private *i915 = to_i915(dev);
>  	struct intel_uncore *uncore = &i915->uncore;
>  	struct drm_i915_reg_read *reg = data;
> -	struct reg_whitelist const *entry;
> +	struct reg_allowlist const *entry;
>  	intel_wakeref_t wakeref;
>  	unsigned int flags;
>  	int remain;
>  	int ret = 0;
>  
> -	entry = reg_read_whitelist;
> -	remain = ARRAY_SIZE(reg_read_whitelist);
> +	entry = reg_read_allowlist;
> +	remain = ARRAY_SIZE(reg_read_allowlist);
>  	while (remain) {
>  		u32 entry_offset = i915_mmio_reg_offset(entry->offset_ldw);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
