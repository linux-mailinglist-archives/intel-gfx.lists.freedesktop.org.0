Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7CB5589A5
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 22:00:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C89310E71D;
	Thu, 23 Jun 2022 20:00:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C8FB10E5EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 20:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656014441; x=1687550441;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lUSPqmK6N8utrAY9pZSCseI/GSQJG+k5Y8INdybPG9k=;
 b=SstAVHYGWgmdjYXQkM3NByy8NuRug7DluLtZX+7ZXcgr8QgxXp+7wQjM
 kY31fOA9Ml66Wy5mrEvEDZWde5WGwPkHizMxpJup4ujhBHZUIInwVySRQ
 Abg4SRjkN0UDpW4KyoAgkLLoyPL9o9cA48m97Ne+plmM4L/MjbwBPBkn0
 bbZDElyR/FiPFW4pQ70E5pqN+Kmqa65hOILk0T5FOzKatEO45Bxv+Z7Gy
 qTWgU0vs2MUSIBR49ywahbZ6vCCLeXLLVnUC+lDKBj7/2N6RGjgu4g6xP
 UDfm8JZrMZajTTZEoXGHJUHWRVOg8iyFfJGsSeXtOFFLq6608KcVWwhn9 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="278374458"
X-IronPort-AV: E=Sophos;i="5.92,217,1650956400"; d="scan'208";a="278374458"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 13:00:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,217,1650956400"; d="scan'208";a="592863976"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by fmsmga007.fm.intel.com with SMTP; 23 Jun 2022 13:00:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jun 2022 23:00:37 +0300
Date: Thu, 23 Jun 2022 23:00:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YrTGZZneKukWSkM4@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
 <473e9c4d9c5a21d742b72dad27cca87402796abb.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <473e9c4d9c5a21d742b72dad27cca87402796abb.1655712106.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 01/16] drm/i915: use GRAPHICS_VER() instead
 of accessing match_info directly
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

On Mon, Jun 20, 2022 at 11:37:40AM +0300, Jani Nikula wrote:
> We've just set up device info in i915_driver_create() so we can use
> GRAPHICS_VER() intead of looking at match_info directly.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index d26dcca7e654..aeec3dfe3ebf 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -829,8 +829,6 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>   */
>  int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  {
> -	const struct intel_device_info *match_info =
> -		(struct intel_device_info *)ent->driver_data;
>  	struct drm_i915_private *i915;
>  	int ret;
>  
> @@ -839,7 +837,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		return PTR_ERR(i915);
>  
>  	/* Disable nuclear pageflip by default on pre-ILK */
> -	if (!i915->params.nuclear_pageflip && match_info->graphics.ver < 5)
> +	if (!i915->params.nuclear_pageflip && GRAPHICS_VER(i915) < 5)

Should also be switched to DISPLAY_VER(), but that could be done as a
separate patch too.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  		i915->drm.driver_features &= ~DRIVER_ATOMIC;
>  
>  	ret = pci_enable_device(pdev);
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
