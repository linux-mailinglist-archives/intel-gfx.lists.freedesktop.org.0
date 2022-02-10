Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3590A4B0BC7
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 12:05:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D68C10E7F2;
	Thu, 10 Feb 2022 11:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3756510E7F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 11:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644491113; x=1676027113;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+TQyLvbwehh+4btsbLIilbeJqa3loo927VS+go91Yxo=;
 b=WJjm9mYsuwkX7NQ+ZmYAu8zVrJWRsQhVzdplhJcfZA3KTPVOKXcaTjG6
 npq9OLxwMLk4pavkXPlr4JHojogPUN1gRbo+TcoC2sIWkYP3/+nVpGrUC
 cTNKkKeRwWSUE5OASKqr4BZYNqiVxe4jlZx++VGS547+D5j3YzPey81Z8
 6ilhbDUohULz+3rsFB5t3nd0yi0za4FMnlcH/1MqMiqtkRfRZjhOQtZvV
 aCyvTp54AlCif9gT8qRcxPNwIaaCOk4dpjUrh5LBlbwKrAAmO028GoH6V
 yTIccDABPtFJFL2CQMvSrQBHRADznPS+6gx0EdqjFy+3v4dub0nscRWKs A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="335882829"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="335882829"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 03:05:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="526436381"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 10 Feb 2022 03:05:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Feb 2022 13:05:07 +0200
Date: Thu, 10 Feb 2022 13:05:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YgTxYxPJ9LHjTS2v@intel.com>
References: <cover.1644489329.git.jani.nikula@intel.com>
 <42fd9cd777c5cc9a8d48db9dd8306924c735918e.1644489329.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <42fd9cd777c5cc9a8d48db9dd8306924c735918e.1644489329.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/opregion: debug log about
 Mailbox #2 for backlight
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

On Thu, Feb 10, 2022 at 12:36:46PM +0200, Jani Nikula wrote:
> Start debug logging about the presence of the new Mailbox #2 for
> backlight. Actual support is to be added later.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_opregion.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 6e32ed6bbf4e..b1ad11b2ebb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -47,10 +47,11 @@
>  #define OPREGION_ASLE_EXT_OFFSET	0x1C00
>  
>  #define OPREGION_SIGNATURE "IntelGraphicsMem"
> -#define MBOX_ACPI      (1<<0)
> -#define MBOX_SWSCI     (1<<1)
> -#define MBOX_ASLE      (1<<2)
> -#define MBOX_ASLE_EXT  (1<<4)
> +#define MBOX_ACPI		BIT(0)	/* Mailbox #1 */
> +#define MBOX_SWSCI		BIT(1)	/* Mailbox #2 (obsolete from v2.x) */
> +#define MBOX_ASLE		BIT(2)	/* Mailbox #3 */
> +#define MBOX_ASLE_EXT		BIT(4)	/* Mailbox #5 */
> +#define MBOX_BACKLIGHT		BIT(5)	/* Mailbox #2 (valid from v3.x) */

Opregion is such a lovely turd.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  
>  struct opregion_header {
>  	u8 signature[16];
> @@ -957,6 +958,10 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
>  		opregion->asle_ext = base + OPREGION_ASLE_EXT_OFFSET;
>  	}
>  
> +	if (mboxes & MBOX_BACKLIGHT) {
> +		drm_dbg(&dev_priv->drm, "Mailbox #2 for backlight present\n");
> +	}
> +
>  	if (intel_load_vbt_firmware(dev_priv) == 0)
>  		goto out;
>  
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
