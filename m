Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 911A27A976F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 19:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A27510E151;
	Thu, 21 Sep 2023 17:23:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A811B10E151;
 Thu, 21 Sep 2023 17:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695317037; x=1726853037;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=MZa9LeGNKGYGfoJt8+7XfHV38YTuVePRiEKRIN33zbE=;
 b=DFWzjpeOan89lnTPQdLqdJSZWdyoXeJPOqMk6r6nyEkryC2H3CA//E02
 128Ve114pLrUSG4CpXQCKSZK3HKJHY4EtdqiBGJ9KVsb8/gBXxESlJAfo
 8qmC+19qmB4V3lWtA6vFuujVnbtbWKEBEnLllrpF2U0joycU7y0I7aYEo
 ROW4IeaKZ945vcQes5vWwfcEHX3E/rOEfMrL3e/XgPeaVG422sEKHfTm1
 X2HQHMcSr42Rb3S3CiQSK40CICq8q+bXvtcoBUGIj42FxF5x7iJNJZdyi
 XyOHcmD5WYQCpkzxWyWL2a7A9DZi8UYE3RAZGg0Tif2GBjBz/5fj40XAd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="377889130"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="377889130"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 10:23:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="812735189"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="812735189"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga008.fm.intel.com with SMTP; 21 Sep 2023 10:23:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Sep 2023 20:23:52 +0300
Date: Thu, 21 Sep 2023 20:23:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <ZQx8KIRt1JRfq6dV@intel.com>
References: <20230904115517.458662-1-vinod.govindapillai@intel.com>
 <20230904115517.458662-3-vinod.govindapillai@intel.com>
 <ZQGRH4aWpp078lBl@intel.com>
 <6xbdhnsalvs7d2i6crfcniog3pepg4gospzyq7vakptla4vgef@opjfzuwbdjr6>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6xbdhnsalvs7d2i6crfcniog3pepg4gospzyq7vakptla4vgef@opjfzuwbdjr6>
X-Patchwork-Hint: comment
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4 2/2] drm/i915/lnl: FBC is
 supported with per pixel alpha
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
Cc: intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 21, 2023 at 08:22:23AM -0500, Lucas De Marchi wrote:
> On Wed, Sep 13, 2023 at 01:38:23PM +0300, Ville Syrj=E4l=E4 wrote:
> >On Mon, Sep 04, 2023 at 02:55:17PM +0300, Vinod Govindapillai wrote:
> >> For LNL onwards, FBC can be supported on planes with per
> >> pixel alpha
> >>
> >> Bspec: 69560
> >> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_fbc.c | 3 ++-
> >>  1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/dr=
m/i915/display/intel_fbc.c
> >> index a3999ad95a19..c0e4caec03ea 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> >> @@ -1209,7 +1209,8 @@ static int intel_fbc_check_plane(struct intel_at=
omic_state *state,
> >>  		return 0;
> >>  	}
> >>
> >> -	if (plane_state->hw.pixel_blend_mode !=3D DRM_MODE_BLEND_PIXEL_NONE =
&&
> >> +	if (DISPLAY_VER(i915) < 20 &&
> >
> >Bspec still says 15. Someone needs to figure this mess out for
> >all LNL patches.
> =

> The HW reports IP version 20. The name of the IP is "Xe2-LPD (formerly Di=
splay_15)".
> For checking the display version, we don't care about the name or former
> name, we care about what is in the GMD_ID.

Well, we care what it actually means. If the bspec and hardware reported
IP version all messed up how is one supposed to know what hardware has what
features?

-- =

Ville Syrj=E4l=E4
Intel
---------------------------------------------------------------------
Intel Finland Oy
Registered Address: PL 281, 00181 Helsinki =

Business Identity Code: 0357606 - 4 =

Domiciled in Helsinki =


This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

