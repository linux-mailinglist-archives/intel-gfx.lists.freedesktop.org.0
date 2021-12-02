Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C169F4662CB
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 12:54:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E17BE6F5FC;
	Thu,  2 Dec 2021 11:53:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6F0C6F5FC
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 11:53:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="216708352"
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="216708352"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 03:53:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="500717637"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 02 Dec 2021 03:53:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Dec 2021 13:53:55 +0200
Date: Thu, 2 Dec 2021 13:53:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <Yaiz05so0YWbc4pS@intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
 <20211201152552.7821-3-ville.syrjala@linux.intel.com>
 <e5d1f9751cc409c608b3b7aa833fbe4f6642fae1.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e5d1f9751cc409c608b3b7aa833fbe4f6642fae1.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 02/14] drm/i915: Rename plane YUV order bits
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 01, 2021 at 05:14:39PM +0000, Souza, Jose wrote:
> On Wed, 2021-12-01 at 17:25 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Rename the YUV byte order bits to be a bit more consistent.
> 
> Why rename bits not used? Would be better already nuke it.
> Anyways up to you.

We'll need the masks for the REG_FIELD_PREP() stuff later.

> 
> Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
> 
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_universal_plane.c |  8 ++++----
> >  drivers/gpu/drm/i915/i915_reg.h                    | 14 +++++++-------
> >  2 files changed, 11 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 845b99844ec6..9ff24a0e79b4 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -672,13 +672,13 @@ static u32 skl_plane_ctl_format(u32 pixel_format)
> >  	case DRM_FORMAT_XYUV8888:
> >  		return PLANE_CTL_FORMAT_XYUV;
> >  	case DRM_FORMAT_YUYV:
> > -		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_YUYV;
> > +		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_ORDER_YUYV;
> >  	case DRM_FORMAT_YVYU:
> > -		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_YVYU;
> > +		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_ORDER_YVYU;
> >  	case DRM_FORMAT_UYVY:
> > -		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_UYVY;
> > +		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_ORDER_UYVY;
> >  	case DRM_FORMAT_VYUY:
> > -		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_VYUY;
> > +		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_ORDER_VYUY;
> >  	case DRM_FORMAT_NV12:
> >  		return PLANE_CTL_FORMAT_NV12;
> >  	case DRM_FORMAT_P010:
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 3c0471f20e53..02d8db03c0bf 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -6966,7 +6966,7 @@ enum {
> >  #define   DVS_SOURCE_KEY	(1 << 22)
> >  #define   DVS_RGB_ORDER_XBGR	(1 << 20)
> >  #define   DVS_YUV_FORMAT_BT709	(1 << 18)
> > -#define   DVS_YUV_BYTE_ORDER_MASK (3 << 16)
> > +#define   DVS_YUV_ORDER_MASK	(3 << 16)
> >  #define   DVS_YUV_ORDER_YUYV	(0 << 16)
> >  #define   DVS_YUV_ORDER_UYVY	(1 << 16)
> >  #define   DVS_YUV_ORDER_YVYU	(2 << 16)
> > @@ -7045,7 +7045,7 @@ enum {
> >  #define   SPRITE_RGB_ORDER_RGBX		(1 << 20) /* only for 888 and 161616 */
> >  #define   SPRITE_YUV_TO_RGB_CSC_DISABLE	(1 << 19)
> >  #define   SPRITE_YUV_TO_RGB_CSC_FORMAT_BT709	(1 << 18) /* 0 is BT601 */
> > -#define   SPRITE_YUV_BYTE_ORDER_MASK	(3 << 16)
> > +#define   SPRITE_YUV_ORDER_MASK		(3 << 16)
> >  #define   SPRITE_YUV_ORDER_YUYV		(0 << 16)
> >  #define   SPRITE_YUV_ORDER_UYVY		(1 << 16)
> >  #define   SPRITE_YUV_ORDER_YVYU		(2 << 16)
> > @@ -7130,7 +7130,7 @@ enum {
> >  #define   SP_ALPHA_PREMULTIPLY		(1 << 23) /* CHV pipe B */
> >  #define   SP_SOURCE_KEY			(1 << 22)
> >  #define   SP_YUV_FORMAT_BT709		(1 << 18)
> > -#define   SP_YUV_BYTE_ORDER_MASK	(3 << 16)
> > +#define   SP_YUV_ORDER_MASK		(3 << 16)
> >  #define   SP_YUV_ORDER_YUYV		(0 << 16)
> >  #define   SP_YUV_ORDER_UYVY		(1 << 16)
> >  #define   SP_YUV_ORDER_YVYU		(2 << 16)
> > @@ -7271,10 +7271,10 @@ enum {
> >  #define   PLANE_CTL_YUV420_Y_PLANE		(1 << 19)
> >  #define   PLANE_CTL_YUV_TO_RGB_CSC_FORMAT_BT709	(1 << 18)
> >  #define   PLANE_CTL_YUV422_ORDER_MASK		(0x3 << 16)
> > -#define   PLANE_CTL_YUV422_YUYV			(0 << 16)
> > -#define   PLANE_CTL_YUV422_UYVY			(1 << 16)
> > -#define   PLANE_CTL_YUV422_YVYU			(2 << 16)
> > -#define   PLANE_CTL_YUV422_VYUY			(3 << 16)
> > +#define   PLANE_CTL_YUV422_ORDER_YUYV		(0 << 16)
> > +#define   PLANE_CTL_YUV422_ORDER_UYVY		(1 << 16)
> > +#define   PLANE_CTL_YUV422_ORDER_YVYU		(2 << 16)
> > +#define   PLANE_CTL_YUV422_ORDER_VYUY		(3 << 16)
> >  #define   PLANE_CTL_RENDER_DECOMPRESSION_ENABLE	(1 << 15)
> >  #define   PLANE_CTL_TRICKLE_FEED_DISABLE	(1 << 14)
> >  #define   PLANE_CTL_CLEAR_COLOR_DISABLE		(1 << 13) /* TGL+ */
> 

-- 
Ville Syrjälä
Intel
