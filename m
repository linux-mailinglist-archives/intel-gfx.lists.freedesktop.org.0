Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7951E8690AF
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 13:37:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2469110E90C;
	Tue, 27 Feb 2024 12:37:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TF29i/+w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BEF610E90D
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 12:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709037437; x=1740573437;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=0YqwDBBKg0SuvAgEQ4h757QKT9Bkvmo5nHqMRBZMNGY=;
 b=TF29i/+wzTPbuexrvKyrpxKG+xCB8D23JjmLbS2qhDmxsfvVltuxph9c
 pYbolbNN4jYgo+m2r6nexmzEMwrrTffb7CfvxmJ5IL9KxvpiTpGB7JCGk
 bmhSoWKFXhNdKsNbHOXTKToSidZ7RtJaVp9OJ45SG2R3nSKtPOnQ1BKHZ
 +HT88Am+Lf9tMOoc39/btBywV1X9w2GOiYlFEWldP6T4pi78wwn5jnNkB
 araVnOTUfq/zmjDHI5+zHsqMRs4C6vtOnTCfoOZEw48+PIt6oVg5tlbS+
 nb5oDSeQT0MOkd6W3r/1BBVRtn5Qz3ggwUZEmbpi1xzwM42IKRJtQAXJq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="25838120"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="25838120"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 04:37:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="11629775"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.187])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 04:37:13 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 1/4] drm/i915: Pass size to oprom_get_vbt
In-Reply-To: <20240220223129.3822480-2-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240220223129.3822480-1-radhakrishna.sripada@intel.com>
 <20240220223129.3822480-2-radhakrishna.sripada@intel.com>
Date: Tue, 27 Feb 2024 14:37:10 +0200
Message-ID: <875xyajd6x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 20 Feb 2024, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
> oprom_get_vbt will later be used to show the contents of vbt for which
> the size of vbt is needed.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index fe52c06271ef..ceb6e4145c62 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3008,38 +3008,39 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
>  	return NULL;
>  }
>  
> -static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
> +static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915,
> +					size_t *size)
>  {
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	void __iomem *p = NULL, *oprom;
>  	struct vbt_header *vbt;
>  	u16 vbt_size;
> -	size_t i, size;
> +	size_t i;
>  
> -	oprom = pci_map_rom(pdev, &size);
> +	oprom = pci_map_rom(pdev, size);
>  	if (!oprom)
>  		return NULL;
>  
>  	/* Scour memory looking for the VBT signature. */
> -	for (i = 0; i + 4 < size; i += 4) {
> +	for (i = 0; i + 4 < *size; i += 4) {

Not a fan of using *size everywhere. Please just use size here, and do
something like this near the end:

	if (sizep)
		*sizep = size;

This also allows you to pass NULL when you don't need the size, like
intel_bios_init(), and you can drop the extra dummy local variable.

BR,
Jani.

>  		if (ioread32(oprom + i) != *((const u32 *)"$VBT"))
>  			continue;
>  
>  		p = oprom + i;
> -		size -= i;
> +		*size -= i;
>  		break;
>  	}
>  
>  	if (!p)
>  		goto err_unmap_oprom;
>  
> -	if (sizeof(struct vbt_header) > size) {
> +	if (sizeof(struct vbt_header) > *size) {
>  		drm_dbg(&i915->drm, "VBT header incomplete\n");
>  		goto err_unmap_oprom;
>  	}
>  
>  	vbt_size = ioread16(p + offsetof(struct vbt_header, vbt_size));
> -	if (vbt_size > size) {
> +	if (vbt_size > *size) {
>  		drm_dbg(&i915->drm,
>  			"VBT incomplete (vbt_size overflows)\n");
>  		goto err_unmap_oprom;
> @@ -3082,6 +3083,7 @@ void intel_bios_init(struct drm_i915_private *i915)
>  	const struct vbt_header *vbt;
>  	struct vbt_header *oprom_vbt = NULL;
>  	const struct bdb_header *bdb;
> +	size_t size;
>  
>  	INIT_LIST_HEAD(&i915->display.vbt.display_devices);
>  	INIT_LIST_HEAD(&i915->display.vbt.bdb_blocks);
> @@ -3106,7 +3108,7 @@ void intel_bios_init(struct drm_i915_private *i915)
>  	}
>  
>  	if (!vbt) {
> -		oprom_vbt = oprom_get_vbt(i915);
> +		oprom_vbt = oprom_get_vbt(i915, &size);
>  		vbt = oprom_vbt;
>  	}

-- 
Jani Nikula, Intel
