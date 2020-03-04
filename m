Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D83178FD6
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 12:51:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5D0C6EB25;
	Wed,  4 Mar 2020 11:51:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFD526EB25
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 11:51:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 03:51:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="229306087"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 04 Mar 2020 03:51:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Mar 2020 13:51:28 +0200
Date: Wed, 4 Mar 2020 13:51:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: kbuild test robot <lkp@intel.com>
Message-ID: <20200304115128.GD13686@intel.com>
References: <20200303173313.28117-4-ville.syrjala@linux.intel.com>
 <202003041049.esRUs9Lz%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202003041049.esRUs9Lz%lkp@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 3/9] drm/i915: Split i9xx_read_lut_8() to
 gmch vs. ilk variants
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@lists.01.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 04, 2020 at 10:54:44AM +0800, kbuild test robot wrote:
> Hi Ville,
> =

> Thank you for the patch! Perhaps something to improve:
> =

> [auto build test WARNING on drm-intel/for-linux-next]
> [also build test WARNING on drm-tip/drm-tip]
> [cannot apply to v5.6-rc4 next-20200303]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
> =

> url:    https://github.com/0day-ci/linux/commits/Ville-Syrjala/drm-i915-G=
amma-cleanups/20200304-043847
> base:   git://anongit.freedesktop.org/drm-intel for-linux-next
> =

> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> =

> New smatch warnings:
> drivers/gpu/drm/i915/display/intel_color.c:1840 ilk_read_lut_8() error: p=
otential null dereference 'blob'.  (drm_property_create_blob returns null)

drm_property_create_blob() does _not_ return NULL. Why does this thing
think it does?

> =

> Old smatch warnings:
> drivers/gpu/drm/i915/display/intel_color.c:1706 i9xx_read_lut_8() error: =
potential null dereference 'blob'.  (drm_property_create_blob returns null)
> drivers/gpu/drm/i915/display/intel_color.c:1747 i965_read_lut_10p6() erro=
r: potential null dereference 'blob'.  (drm_property_create_blob returns nu=
ll)
> drivers/gpu/drm/i915/display/intel_color.c:1799 chv_read_cgm_lut() error:=
 potential null dereference 'blob'.  (drm_property_create_blob returns null)
> drivers/gpu/drm/i915/display/intel_color.c:1873 ilk_read_lut_10() error: =
potential null dereference 'blob'.  (drm_property_create_blob returns null)
> drivers/gpu/drm/i915/display/intel_color.c:1920 glk_read_lut_10() error: =
potential null dereference 'blob'.  (drm_property_create_blob returns null)
> =

> vim +/blob +1840 drivers/gpu/drm/i915/display/intel_color.c
> =

>   1823	=

>   1824	static struct drm_property_blob *
>   1825	ilk_read_lut_8(const struct intel_crtc_state *crtc_state)
>   1826	{
>   1827		struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>   1828		struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>   1829		enum pipe pipe =3D crtc->pipe;
>   1830		struct drm_property_blob *blob;
>   1831		struct drm_color_lut *blob_data;
>   1832		u32 i, val;
>   1833	=

>   1834		blob =3D drm_property_create_blob(&dev_priv->drm,
>   1835						sizeof(struct drm_color_lut) * LEGACY_LUT_LENGTH,
>   1836						NULL);
>   1837		if (IS_ERR(blob))
>   1838			return NULL;
>   1839	=

> > 1840		blob_data =3D blob->data;
>   1841	=

>   1842		for (i =3D 0; i < LEGACY_LUT_LENGTH; i++) {
>   1843			val =3D intel_de_read(dev_priv, LGC_PALETTE(pipe, i));
>   1844	=

>   1845			blob_data[i].red =3D intel_color_lut_pack(REG_FIELD_GET(
>   1846								LGC_PALETTE_RED_MASK, val), 8);
>   1847			blob_data[i].green =3D intel_color_lut_pack(REG_FIELD_GET(
>   1848								  LGC_PALETTE_GREEN_MASK, val), 8);
>   1849			blob_data[i].blue =3D intel_color_lut_pack(REG_FIELD_GET(
>   1850								 LGC_PALETTE_BLUE_MASK, val), 8);
>   1851		}
>   1852	=

>   1853		return blob;
>   1854	}
>   1855	=

> =

> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
