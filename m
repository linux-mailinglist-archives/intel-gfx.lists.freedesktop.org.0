Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E592B0F02
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 21:26:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABDEF6E431;
	Thu, 12 Nov 2020 20:26:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 894076E432
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 20:26:27 +0000 (UTC)
IronPort-SDR: TUWBoHBGc2yFvRpIjQCoNzyKB7jQQlNa8GShlvvbg0chLiCowancnwiwtnr191snOkhFlb6AKd
 Iw74MyAI+cNw==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="158152980"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="158152980"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 12:26:25 -0800
IronPort-SDR: 7PwNWAwdWgKErDNx+K1feOFuHMh8g1y9+1uY3yIaUDxS3ozpcdhAiDlAk6OdtlWi6fC5ixgvXj
 ozIyVm+7RS2A==
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="542391767"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 12:26:25 -0800
Date: Thu, 12 Nov 2020 15:27:39 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201112202739.GG1198919@intel.com>
References: <cover.1605181350.git.jani.nikula@intel.com>
 <277dcc0c299158c6959a6c047a07a284e09c2311.1605181350.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <277dcc0c299158c6959a6c047a07a284e09c2311.1605181350.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915/suspend: replace
 I915_READ()/WRITE() with intel_de_read()/write()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 12, 2020 at 01:44:39PM +0200, Jani Nikula wrote:
> Another straggler with I915_READ() and I915_WRITE() uses gone.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_suspend.c | 33 +++++++++++++++--------------
>  1 file changed, 17 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
> index db2111fc809e..63212df33c9e 100644
> --- a/drivers/gpu/drm/i915/i915_suspend.c
> +++ b/drivers/gpu/drm/i915/i915_suspend.c
> @@ -24,6 +24,7 @@
>   * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
>   */
>  
> +#include "display/intel_de.h"
>  #include "display/intel_fbc.h"
>  #include "display/intel_gmbus.h"
>  #include "display/intel_vga.h"
> @@ -39,21 +40,21 @@ static void intel_save_swf(struct drm_i915_private *dev_priv)
>  	/* Scratch space */
>  	if (IS_GEN(dev_priv, 2) && IS_MOBILE(dev_priv)) {
>  		for (i = 0; i < 7; i++) {
> -			dev_priv->regfile.saveSWF0[i] = I915_READ(SWF0(i));
> -			dev_priv->regfile.saveSWF1[i] = I915_READ(SWF1(i));
> +			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv, SWF0(i));
> +			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
>  		}
>  		for (i = 0; i < 3; i++)
> -			dev_priv->regfile.saveSWF3[i] = I915_READ(SWF3(i));
> +			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv, SWF3(i));
>  	} else if (IS_GEN(dev_priv, 2)) {
>  		for (i = 0; i < 7; i++)
> -			dev_priv->regfile.saveSWF1[i] = I915_READ(SWF1(i));
> +			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
>  	} else if (HAS_GMCH(dev_priv)) {
>  		for (i = 0; i < 16; i++) {
> -			dev_priv->regfile.saveSWF0[i] = I915_READ(SWF0(i));
> -			dev_priv->regfile.saveSWF1[i] = I915_READ(SWF1(i));
> +			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv, SWF0(i));
> +			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
>  		}
>  		for (i = 0; i < 3; i++)
> -			dev_priv->regfile.saveSWF3[i] = I915_READ(SWF3(i));
> +			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv, SWF3(i));
>  	}
>  }
>  
> @@ -64,21 +65,21 @@ static void intel_restore_swf(struct drm_i915_private *dev_priv)
>  	/* Scratch space */
>  	if (IS_GEN(dev_priv, 2) && IS_MOBILE(dev_priv)) {
>  		for (i = 0; i < 7; i++) {
> -			I915_WRITE(SWF0(i), dev_priv->regfile.saveSWF0[i]);
> -			I915_WRITE(SWF1(i), dev_priv->regfile.saveSWF1[i]);
> +			intel_de_write(dev_priv, SWF0(i), dev_priv->regfile.saveSWF0[i]);
> +			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
>  		}
>  		for (i = 0; i < 3; i++)
> -			I915_WRITE(SWF3(i), dev_priv->regfile.saveSWF3[i]);
> +			intel_de_write(dev_priv, SWF3(i), dev_priv->regfile.saveSWF3[i]);
>  	} else if (IS_GEN(dev_priv, 2)) {
>  		for (i = 0; i < 7; i++)
> -			I915_WRITE(SWF1(i), dev_priv->regfile.saveSWF1[i]);
> +			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
>  	} else if (HAS_GMCH(dev_priv)) {
>  		for (i = 0; i < 16; i++) {
> -			I915_WRITE(SWF0(i), dev_priv->regfile.saveSWF0[i]);
> -			I915_WRITE(SWF1(i), dev_priv->regfile.saveSWF1[i]);
> +			intel_de_write(dev_priv, SWF0(i), dev_priv->regfile.saveSWF0[i]);
> +			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
>  		}
>  		for (i = 0; i < 3; i++)
> -			I915_WRITE(SWF3(i), dev_priv->regfile.saveSWF3[i]);
> +			intel_de_write(dev_priv, SWF3(i), dev_priv->regfile.saveSWF3[i]);
>  	}
>  }
>  
> @@ -88,7 +89,7 @@ void i915_save_display(struct drm_i915_private *dev_priv)
>  
>  	/* Display arbitration control */
>  	if (INTEL_GEN(dev_priv) <= 4)
> -		dev_priv->regfile.saveDSPARB = I915_READ(DSPARB);
> +		dev_priv->regfile.saveDSPARB = intel_de_read(dev_priv, DSPARB);
>  
>  	if (IS_GEN(dev_priv, 4))
>  		pci_read_config_word(pdev, GCDGMBUS,
> @@ -109,7 +110,7 @@ void i915_restore_display(struct drm_i915_private *dev_priv)
>  
>  	/* Display arbitration */
>  	if (INTEL_GEN(dev_priv) <= 4)
> -		I915_WRITE(DSPARB, dev_priv->regfile.saveDSPARB);
> +		intel_de_write(dev_priv, DSPARB, dev_priv->regfile.saveDSPARB);
>  
>  	/* only restore FBC info on the platform that supports FBC*/
>  	intel_fbc_global_disable(dev_priv);
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
