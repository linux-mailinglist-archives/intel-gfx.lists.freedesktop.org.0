Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C567009E6
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 16:04:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5971710E04D;
	Fri, 12 May 2023 14:04:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E56C810E04D
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 14:04:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 562B4656FB;
 Fri, 12 May 2023 14:04:14 +0000 (UTC)
Received: from rdvivi-mobl4 (unknown [192.55.55.57])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 389FDC433EF;
 Fri, 12 May 2023 14:04:12 +0000 (UTC)
Date: Fri, 12 May 2023 10:04:10 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZF5HWja9HdAjqqJz@rdvivi-mobl4>
References: <20230512111446.1524038-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230512111446.1524038-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: add helper for reading SPI
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 12, 2023 at 02:14:46PM +0300, Jani Nikula wrote:
> Add helper for reading SPI to not duplicate the write&read combo
> everywhere.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

BAT failure is likely a false positive on crcs... this patch
looks correct to me without any functional change.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 23 ++++++++++++-----------
>  1 file changed, 12 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 64eb11a45265..34a397adbd6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3033,6 +3033,13 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size)
>  	return vbt;
>  }
>  
> +static u32 intel_spi_read(struct intel_uncore *uncore, u32 offset)
> +{
> +	intel_uncore_write(uncore, PRIMARY_SPI_ADDRESS, offset);
> +
> +	return intel_uncore_read(uncore, PRIMARY_SPI_TRIGGER);
> +}
> +
>  static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
>  {
>  	u32 count, data, found, store = 0;
> @@ -3049,9 +3056,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
>  	oprom_offset &= OROM_OFFSET_MASK;
>  
>  	for (count = 0; count < oprom_size; count += 4) {
> -		intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, oprom_offset + count);
> -		data = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
> -
> +		data = intel_spi_read(&i915->uncore, oprom_offset + count);
>  		if (data == *((const u32 *)"$VBT")) {
>  			found = oprom_offset + count;
>  			break;
> @@ -3062,20 +3067,16 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
>  		goto err_not_found;
>  
>  	/* Get VBT size and allocate space for the VBT */
> -	intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, found +
> -		   offsetof(struct vbt_header, vbt_size));
> -	vbt_size = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
> +	vbt_size = intel_spi_read(&i915->uncore,
> +				  found + offsetof(struct vbt_header, vbt_size));
>  	vbt_size &= 0xffff;
>  
>  	vbt = kzalloc(round_up(vbt_size, 4), GFP_KERNEL);
>  	if (!vbt)
>  		goto err_not_found;
>  
> -	for (count = 0; count < vbt_size; count += 4) {
> -		intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, found + count);
> -		data = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
> -		*(vbt + store++) = data;
> -	}
> +	for (count = 0; count < vbt_size; count += 4)
> +		*(vbt + store++) = intel_spi_read(&i915->uncore, found + count);
>  
>  	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
>  		goto err_free_vbt;
> -- 
> 2.39.2
> 
