Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1D3264478
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 12:46:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23AA289226;
	Thu, 10 Sep 2020 10:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 074BE89226
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 10:46:06 +0000 (UTC)
IronPort-SDR: JDp/8lFCbAIB3AGcjxZHEfcwdgayx5qWyNVkvtNO6GW+VCIT4YH3r1cfI6vRQvSU1g9RwTfO9l
 FRpd+wUDm+8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="176568582"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="176568582"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 03:46:06 -0700
IronPort-SDR: QyFr6ylQi5zGXKE5S5zHmmy/MYW0Sby+vz557f/Ba/RbWpSlc8EVg7EORfmKhPiaHq6DJnD17w
 wY1R+bFYFCBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="341885522"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 10 Sep 2020 03:46:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Sep 2020 13:46:03 +0300
Date: Thu, 10 Sep 2020 13:46:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200910104603.GU6112@intel.com>
References: <20200910095227.9466-1-jani.nikula@intel.com>
 <20200910095227.9466-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200910095227.9466-2-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: move gen4 GCDGMBUS
 save/restore to display save/restore
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 10, 2020 at 12:52:26PM +0300, Jani Nikula wrote:
> Logically part of the display save/restore. No functional changes.
> =


Somewhat tempted to move this into the gmbus code proper.
But we don't have a gmbus resume hook atm so would need to
add one.

In the meantime:
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_suspend.c | 21 ++++++++++++---------
>  1 file changed, 12 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i=
915_suspend.c
> index ed2be3489f8e..4a93247942b7 100644
> --- a/drivers/gpu/drm/i915/i915_suspend.c
> +++ b/drivers/gpu/drm/i915/i915_suspend.c
> @@ -34,6 +34,8 @@
>  =

>  static void i915_save_display(struct drm_i915_private *dev_priv)
>  {
> +	struct pci_dev *pdev =3D dev_priv->drm.pdev;
> +
>  	/* Display arbitration control */
>  	if (INTEL_GEN(dev_priv) <=3D 4)
>  		dev_priv->regfile.saveDSPARB =3D I915_READ(DSPARB);
> @@ -41,10 +43,20 @@ static void i915_save_display(struct drm_i915_private=
 *dev_priv)
>  	/* save FBC interval */
>  	if (HAS_FBC(dev_priv) && INTEL_GEN(dev_priv) <=3D 4 && !IS_G4X(dev_priv=
))
>  		dev_priv->regfile.saveFBC_CONTROL =3D I915_READ(FBC_CONTROL);
> +
> +	if (IS_GEN(dev_priv, 4))
> +		pci_read_config_word(pdev, GCDGMBUS,
> +				     &dev_priv->regfile.saveGCDGMBUS);
>  }
>  =

>  static void i915_restore_display(struct drm_i915_private *dev_priv)
>  {
> +	struct pci_dev *pdev =3D dev_priv->drm.pdev;
> +
> +	if (IS_GEN(dev_priv, 4))
> +		pci_write_config_word(pdev, GCDGMBUS,
> +				      dev_priv->regfile.saveGCDGMBUS);
> +
>  	/* Display arbitration */
>  	if (INTEL_GEN(dev_priv) <=3D 4)
>  		I915_WRITE(DSPARB, dev_priv->regfile.saveDSPARB);
> @@ -61,15 +73,10 @@ static void i915_restore_display(struct drm_i915_priv=
ate *dev_priv)
>  =

>  int i915_save_state(struct drm_i915_private *dev_priv)
>  {
> -	struct pci_dev *pdev =3D dev_priv->drm.pdev;
>  	int i;
>  =

>  	i915_save_display(dev_priv);
>  =

> -	if (IS_GEN(dev_priv, 4))
> -		pci_read_config_word(pdev, GCDGMBUS,
> -				     &dev_priv->regfile.saveGCDGMBUS);
> -
>  	/* Cache mode state */
>  	if (INTEL_GEN(dev_priv) < 7)
>  		dev_priv->regfile.saveCACHE_MODE_0 =3D I915_READ(CACHE_MODE_0);
> @@ -102,12 +109,8 @@ int i915_save_state(struct drm_i915_private *dev_pri=
v)
>  =

>  int i915_restore_state(struct drm_i915_private *dev_priv)
>  {
> -	struct pci_dev *pdev =3D dev_priv->drm.pdev;
>  	int i;
>  =

> -	if (IS_GEN(dev_priv, 4))
> -		pci_write_config_word(pdev, GCDGMBUS,
> -				      dev_priv->regfile.saveGCDGMBUS);
>  	i915_restore_display(dev_priv);
>  =

>  	/* Cache mode state */
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
