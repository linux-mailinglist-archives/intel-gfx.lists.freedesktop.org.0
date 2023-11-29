Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D057FDE82
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 18:37:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3227110E648;
	Wed, 29 Nov 2023 17:37:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02D9A10E644;
 Wed, 29 Nov 2023 17:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701279448; x=1732815448;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=un2pqzgXqiJEa07g1HptOb4P01cfdzdlVQihNRd8ix8=;
 b=LyqDmfcnV4zKUKIsZiKlRrFdIcTqcAq+kwcTyw75UqmA3kROsaCrEkei
 vAYTdIv5kZSFlo7cbDQbh9qvAv4HQiZScZE6+Xy5/LPANruiOQeloyV+X
 3c8+itLF6BNOS5FKzUfEdb03yAJW6Khu+IgHYR7miTyeomaruUgUIOT7Y
 LCBSVloW3dHDhs5scsoJxeD35HngPncCn6jIcxFE4lKxGSgymoXBd/sdb
 /TQmL3RGwlTbAr7xnYjza8k6VFP1lQj2I7Otl1XvYsD9DG5EwwFV7wbK4
 jcsoe240vt2sytB8JG51wZUNBUsBV/JrNzYbzfvfgSBeynNBnrto3ASFC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="390361313"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="390361313"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 09:37:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="942401674"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="942401674"
Received: from dstavrak-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.61])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 09:37:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?B?5L2V5pWP57qi?= <heminhong@kylinos.cn>, "ville.syrjala"
 <ville.syrjala@linux.intel.com>, "uma.shankar" <uma.shankar@intel.com>
In-Reply-To: <1lagfvi0ner-1laizr4ur2c@nsmail7.0.0--kylin--1>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1lagfvi0ner-1laizr4ur2c@nsmail7.0.0--kylin--1>
Date: Wed, 29 Nov 2023 19:37:17 +0200
Message-ID: <87cyvs5ulu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] 
 =?utf-8?b?5Zue5aSNOiBbUEFUQ0ggdjJdIGRybS9pOTE1OiBj?=
 =?utf-8?q?orrect_the_input_parameter_on_=5Fintel=5Fdsb=5Fcommit=28=29?=
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, daniel <daniel@ffwll.ch>,
 "rodrigo.vivi" <rodrigo.vivi@intel.com>, airlied <airlied@gmail.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 29 Nov 2023, =E4=BD=95=E6=95=8F=E7=BA=A2 <heminhong@kylinos.cn> wro=
te:
> Friendly ping. I think this patch was forgotten.

Pushed, thanks for the patch.

>
> ----
>
> =E4=B8=BB=E3=80=80=E9=A2=98=EF=BC=9A[PATCH v2] drm/i915: correct the inpu=
t parameter on _intel_dsb_commit()=20
> =E6=97=A5=E3=80=80=E6=9C=9F=EF=BC=9A2023-11-14 10:43=20
> =E5=8F=91=E4=BB=B6=E4=BA=BA=EF=BC=9A=E4=BD=95=E6=95=8F=E7=BA=A2=20
> =E6=94=B6=E4=BB=B6=E4=BA=BA=EF=BC=9A=E4=BD=95=E6=95=8F=E7=BA=A2;
>
> Current, the dewake_scanline variable is defined as unsigned int,
> an unsigned int variable that is always greater than or equal to 0.
> when _intel_dsb_commit function is called by intel_dsb_commit function,
> the dewake_scanline variable may have an int value.
> So the dewake_scanline variable is necessary to defined as an int.
>
> Fixes: f83b94d23770 ("drm/i915/dsb: Use DEwake to combat PkgC latency")
> Reported-by: kernel test robot=20
> Closes: https://lore.kernel.org/oe-kbuild-all/202310052201.AnVbpgPr-lkp@i=
ntel.com/
> Cc: Ville Syrj=C3=A4l=C3=A4=20
> Cc: Uma Shankar=20
>
> Signed-off-by: heminhong=20
> ---
> drivers/gpu/drm/i915/display/intel_dsb.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i=
915/display/intel_dsb.c
> index 78b6fe24dcd8..7fd6280c54a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -340,7 +340,7 @@ static int intel_dsb_dewake_scanline(const struct int=
el_crtc_state *crtc_state)
> }
>
> static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
> - unsigned int dewake_scanline)
> + int dewake_scanline)
> {
> struct intel_crtc *crtc =3D dsb->crtc;
> struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);

--=20
Jani Nikula, Intel
