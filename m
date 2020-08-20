Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E904524AD45
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 05:25:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8DD26E891;
	Thu, 20 Aug 2020 03:25:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBE266E891
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Aug 2020 03:25:10 +0000 (UTC)
IronPort-SDR: a1d1H7S3M82UdgihgGz32Sel4nARiVe2QpFPs1peGAmnYtIsvBU1zH1jLKnUS/RyK179En6r/h
 0x9M+qroSqPA==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="219538577"
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="219538577"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 20:25:10 -0700
IronPort-SDR: FmmoCxWLZfU83xoc3RIs2+eTsPfVAZHX6HQuNqjZJ5Fy5gtobZO8RmsPAmMypcpC726OdZuHF6
 Hs+cta0+LpKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="278503686"
Received: from lkp-server01.sh.intel.com (HELO 4cedd236b688) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 19 Aug 2020 20:25:08 -0700
Received: from kbuild by 4cedd236b688 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1k8bCO-0000ku-57; Thu, 20 Aug 2020 03:25:08 +0000
Date: Thu, 20 Aug 2020 11:24:57 +0800
From: kernel test robot <lkp@intel.com>
To: Nischal Varide <nischal.varide@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202008201129.35PcFyIc%lkp@intel.com>
References: <20200819043409.26010-2-nischal.varide@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819043409.26010-2-nischal.varide@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/5]
 Critical-KlockWork-Fixes-intel_display.c-NullDeref
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
Cc: kbuild-all@lists.01.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nischal,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on v5.9-rc1 next-20200819]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Nischal-Varide/Critical-Kc=
lockWork-Fixes-intel_atomi-c-PossibleNull/20200819-193249
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
compiler: gcc-9 (Debian 9.3.0-15) 9.3.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


cppcheck warnings: (new ones prefixed by >>)

        ^
   drivers/gpu/drm/i915/display/intel_display.c:4308:7: warning: Local vari=
able src_w shadows outer variable [shadowVar]
     int src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
         ^
   drivers/gpu/drm/i915/display/intel_display.c:4271:20: note: Shadowed dec=
laration
    int src_x, src_y, src_w;
                      ^
   drivers/gpu/drm/i915/display/intel_display.c:4308:7: note: Shadow variab=
le
     int src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
         ^
   drivers/gpu/drm/i915/display/intel_display.c:11169:7: warning: Local var=
iable tmp shadows outer variable [shadowVar]
     u32 tmp =3D intel_de_read(dev_priv,
         ^
   drivers/gpu/drm/i915/display/intel_display.c:11133:6: note: Shadowed dec=
laration
    u32 tmp;
        ^
   drivers/gpu/drm/i915/display/intel_display.c:11169:7: note: Shadow varia=
ble
     u32 tmp =3D intel_de_read(dev_priv,
         ^
   drivers/gpu/drm/i915/display/intel_display.c:14246:4: warning: Local var=
iable __ret_warn_on shadows outer variable [shadowVar]
      I915_STATE_WARN(active,
      ^
   drivers/gpu/drm/i915/display/intel_display.c:14237:3: note: Shadowed dec=
laration
     I915_STATE_WARN(!!encoder->base.crtc !=3D enabled,
     ^
   drivers/gpu/drm/i915/display/intel_display.c:14246:4: note: Shadow varia=
ble
      I915_STATE_WARN(active,
      ^
   drivers/gpu/drm/i915/display/intel_display.c:14293:3: warning: Local var=
iable __ret_warn_on shadows outer variable [shadowVar]
     I915_STATE_WARN(active !=3D new_crtc_state->hw.active,
     ^
   drivers/gpu/drm/i915/display/intel_display.c:14279:2: note: Shadowed dec=
laration
    I915_STATE_WARN(new_crtc_state->hw.active !=3D active,
    ^
   drivers/gpu/drm/i915/display/intel_display.c:14293:3: note: Shadow varia=
ble
     I915_STATE_WARN(active !=3D new_crtc_state->hw.active,
     ^
   drivers/gpu/drm/i915/display/intel_display.c:14298:3: warning: Local var=
iable __ret_warn_on shadows outer variable [shadowVar]
     I915_STATE_WARN(active && crtc->pipe !=3D pipe,
     ^
   drivers/gpu/drm/i915/display/intel_display.c:14279:2: note: Shadowed dec=
laration
    I915_STATE_WARN(new_crtc_state->hw.active !=3D active,
    ^
   drivers/gpu/drm/i915/display/intel_display.c:14298:3: note: Shadow varia=
ble
     I915_STATE_WARN(active && crtc->pipe !=3D pipe,
     ^
   drivers/gpu/drm/i915/display/intel_display.c:14315:3: warning: Local var=
iable __ret_warn_on shadows outer variable [shadowVar]
     I915_STATE_WARN(1, "pipe state doesn't match!n");
     ^
   drivers/gpu/drm/i915/display/intel_display.c:14279:2: note: Shadowed dec=
laration
    I915_STATE_WARN(new_crtc_state->hw.active !=3D active,
    ^
   drivers/gpu/drm/i915/display/intel_display.c:14315:3: note: Shadow varia=
ble
     I915_STATE_WARN(1, "pipe state doesn't match!n");
     ^
   drivers/gpu/drm/i915/display/intel_display.c:18447:23: warning: Local va=
riable crtc shadows outer variable [shadowVar]
      struct intel_crtc *crtc;
                         ^
   drivers/gpu/drm/i915/display/intel_display.c:18385:21: note: Shadowed de=
claration
    struct intel_crtc *crtc;
                       ^
   drivers/gpu/drm/i915/display/intel_display.c:18447:23: note: Shadow vari=
able
      struct intel_crtc *crtc;
                         ^
   drivers/gpu/drm/i915/display/intel_display.c:6103:35: warning: Shifting =
signed 32-bit value by 31 bits is undefined behaviour [shiftTooManyBitsSign=
ed]
    scaler_state->scaler_users |=3D (1 << scaler_user);
                                     ^
   drivers/gpu/drm/i915/display/intel_display.c:6127:6: note: Calling funct=
ion 'skl_update_scaler', 3rd argument '31' value is 31
        SKL_CRTC_INDEX,
        ^
   drivers/gpu/drm/i915/display/intel_display.c:6103:35: note: Shift
    scaler_state->scaler_users |=3D (1 << scaler_user);
                                     ^
   drivers/gpu/drm/i915/display/intel_display.c:10477:36: warning: Shifting=
 signed 32-bit value by 31 bits is undefined behaviour [shiftTooManyBitsSig=
ned]
     scaler_state->scaler_users |=3D (1 << SKL_CRTC_INDEX);
                                      ^
   drivers/gpu/drm/i915/display/intel_display.c:10479:37: warning: Shifting=
 signed 32-bit value by 31 bits is undefined behaviour [shiftTooManyBitsSig=
ned]
     scaler_state->scaler_users &=3D ~(1 << SKL_CRTC_INDEX);
                                       ^
>> drivers/gpu/drm/i915/display/intel_display.c:11280:9: warning: Uninitial=
ized variable: base [uninitvar]
    return base + plane_state->color_plane[0].offset;
           ^

# https://github.com/0day-ci/linux/commit/5d862961b8571914f726e947570316016=
ec67c5d
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Nischal-Varide/Critical-KclockWork-Fixes-i=
ntel_atomi-c-PossibleNull/20200819-193249
git checkout 5d862961b8571914f726e947570316016ec67c5d
vim +11280 drivers/gpu/drm/i915/display/intel_display.c

0e8ffe1bf81b07 drivers/gpu/drm/i915/intel_display.c         Daniel Vetter  =
       2013-03-28  11263  =

cd5dcbf1b26c60 drivers/gpu/drm/i915/intel_display.c         Ville Syrj=E4l=
=E4         2017-03-27  11264  static u32 intel_cursor_base(const struct in=
tel_plane_state *plane_state)
1cecc830e6b662 drivers/gpu/drm/i915/intel_display.c         Ville Syrj=E4l=
=E4         2017-03-27  11265  {
1cecc830e6b662 drivers/gpu/drm/i915/intel_display.c         Ville Syrj=E4l=
=E4         2017-03-27  11266  	struct drm_i915_private *dev_priv =3D
f90a85e76c2a89 drivers/gpu/drm/i915/display/intel_display.c Maarten Lankhor=
st     2019-10-31  11267  		to_i915(plane_state->uapi.plane->dev);
7b3cb17a48dc1b drivers/gpu/drm/i915/display/intel_display.c Maarten Lankhor=
st     2019-10-31  11268  	const struct drm_framebuffer *fb =3D plane_state=
->hw.fb;
1cecc830e6b662 drivers/gpu/drm/i915/intel_display.c         Ville Syrj=E4l=
=E4         2017-03-27  11269  	const struct drm_i915_gem_object *obj =3D i=
ntel_fb_obj(fb);
1cecc830e6b662 drivers/gpu/drm/i915/intel_display.c         Ville Syrj=E4l=
=E4         2017-03-27  11270  	u32 base;
1cecc830e6b662 drivers/gpu/drm/i915/intel_display.c         Ville Syrj=E4l=
=E4         2017-03-27  11271  =

5d862961b85719 drivers/gpu/drm/i915/display/intel_display.c Nischal Varide =
       2020-08-19  11272  	if (obj) {
5d862961b85719 drivers/gpu/drm/i915/display/intel_display.c Nischal Varide =
       2020-08-19  11273  =

d53db442db36fd drivers/gpu/drm/i915/intel_display.c         Jos=E9 Roberto =
de Souza 2018-11-30  11274  		if (INTEL_INFO(dev_priv)->display.cursor_need=
s_physical)
c6790dc22312f5 drivers/gpu/drm/i915/display/intel_display.c Chris Wilson   =
       2020-02-02  11275  			base =3D sg_dma_address(obj->mm.pages->sgl);
1cecc830e6b662 drivers/gpu/drm/i915/intel_display.c         Ville Syrj=E4l=
=E4         2017-03-27  11276  		else
1cecc830e6b662 drivers/gpu/drm/i915/intel_display.c         Ville Syrj=E4l=
=E4         2017-03-27  11277  			base =3D intel_plane_ggtt_offset(plane_st=
ate);
5d862961b85719 drivers/gpu/drm/i915/display/intel_display.c Nischal Varide =
       2020-08-19  11278  	}
1cecc830e6b662 drivers/gpu/drm/i915/intel_display.c         Ville Syrj=E4l=
=E4         2017-03-27  11279  =

30a027dcccc270 drivers/gpu/drm/i915/display/intel_display.c Ville Syrj=E4l=
=E4         2019-10-15 @11280  	return base + plane_state->color_plane[0].o=
ffset;
1cecc830e6b662 drivers/gpu/drm/i915/intel_display.c         Ville Syrj=E4l=
=E4         2017-03-27  11281  }
1cecc830e6b662 drivers/gpu/drm/i915/intel_display.c         Ville Syrj=E4l=
=E4         2017-03-27  11282  =


---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
