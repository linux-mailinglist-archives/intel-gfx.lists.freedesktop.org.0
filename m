Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1652EA0BDB1
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 17:38:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2FDF10E721;
	Mon, 13 Jan 2025 16:38:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PFBgOvOw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 975B010E721
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 16:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736786312; x=1768322312;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pxoGs3T4hReR7eVW67VHDtnKUvEl3oQziyKagKSL/rc=;
 b=PFBgOvOw2uvjcHYRJihqfMrIvlZONRXXZNl4tfIKRXUKQgm+hkgNzCmN
 lsN0A98xlDTrLQaVWAY4ttBkPTYgJDmEgyLQXaA5NFXGaCobuqp+4YuQV
 rBQtdug9oSnF+c5+YASXVjC0RBcrj4NsE7El61VVIeD11qTOWmzvKumyl
 4+RD+Pg+5OhMajbFsIr2jJ/aJTQe5QmlyJEguvb3M45SDQBurNJ8+YbH9
 uWDLbTBXEwCE3Clb88i0m4gT0Y31JuSqrYo/gsQBcyAYrT1zqJ2xUaEn4
 cqLC5+RRZPWOOQYwqtq6d/qupi+5F/0JbnzG94iWOompSh7Rp3+G1PE01 A==;
X-CSE-ConnectionGUID: bMf0CKX+TUycb7DSQqnl7w==
X-CSE-MsgGUID: bnFe7oz0Qx69EO76o1FGEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="54603812"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="54603812"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 08:38:31 -0800
X-CSE-ConnectionGUID: wPLWizUoTkOv0G41+XxENw==
X-CSE-MsgGUID: bLq3C7+jTVGFmvG9aEOQCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104710836"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Jan 2025 08:38:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Jan 2025 18:38:27 +0200
Date: Mon, 13 Jan 2025 18:38:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Chery, Nanley G" <nanley.g.chery@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Ghuge, Sagar" <sagar.ghuge@intel.com>, Xi Ruoyao <xry111@xry111.site>,
 "Souza, Jose" <jose.souza@intel.com>
Subject: Re: [PATCH 4/4] drm/uapi/fourcc: Document the Intel clear color
 alignment better
Message-ID: <Z4VBg59XVgxDqKKP@intel.com>
References: <20241129065014.8363-1-ville.syrjala@linux.intel.com>
 <20241129065014.8363-5-ville.syrjala@linux.intel.com>
 <MN0PR11MB5987217695BB98F25B39645ADC1C2@MN0PR11MB5987.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <MN0PR11MB5987217695BB98F25B39645ADC1C2@MN0PR11MB5987.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 10, 2025 at 03:43:35PM +0000, Chery, Nanley G wrote:
> > -----Original Message-----
> > From: Ville Syrjala <ville.syrjala@linux.intel.com>
> > Sent: Friday, November 29, 2024 1:50 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Ghuge, Sagar <sagar.ghuge@intel.com>; Chery, Nanley G <nanley.g.chery@intel.com>; Xi Ruoyao <xry111@xry111.site>
> > Subject: [PATCH 4/4] drm/uapi/fourcc: Document the Intel clear color alignment better
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Document the fact that the Intel clear color offset and pitch
> > must be 64 byte aligned.
> > 
> 
> Documenting this new flexibility raises some questions. Particularly, how can userspace make use of the 64B alignment given that there are old kernels which require the 4K alignment? 

I suppose we should document that part as well. And maybe
after a few years we can drop the 4k part, or something.
I did add cc:stable to the alignment patch so hopefully
after a while most kernels people actually use will
expect 64 byte alignment.

I've pushed everything except this last patch to
drm-intel-next. I'll try to reword this part a bit and
repost.

> 
> -Nanley
> 
> > Cc: Sagar Ghuge <sagar.ghuge@intel.com>
> > Cc: Nanley Chery <nanley.g.chery@intel.com>
> > Cc: Xi Ruoyao <xry111@xry111.site>
> > Link: https://gitlab.freedesktop.org/mesa/mesa/-/commit/17f97a69c13832a6c1b0b3aad45b06f07d4b852f
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  include/uapi/drm/drm_fourcc.h | 27 ++++++++++++++-------------
> >  1 file changed, 14 insertions(+), 13 deletions(-)
> > 
> > diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> > index 70f3b00b0681..8234db1f484a 100644
> > --- a/include/uapi/drm/drm_fourcc.h
> > +++ b/include/uapi/drm/drm_fourcc.h
> > @@ -598,7 +598,7 @@ extern "C" {
> >   * compression.
> >   *
> >   * The main surface is Y-tiled and is at plane index 0 whereas CCS is linear
> > - * and at index 1. The clear color is stored at index 2, and the pitch should
> > + * and at index 1. The clear color is stored at index 2, and the offset and pitch must
> >   * be 64 bytes aligned. The clear color structure is 256 bits. The first 128 bits
> >   * represents Raw Clear Color Red, Green, Blue and Alpha color each represented
> >   * by 32 bits. The raw clear color is consumed by the 3d engine and generates
> > @@ -652,7 +652,7 @@ extern "C" {
> >   * outside of the GEM object in a reserved memory area dedicated for the
> >   * storage of the CCS data for all RC/RC_CC/MC compressible GEM objects. The
> >   * main surface pitch is required to be a multiple of four Tile 4 widths. The
> > - * clear color is stored at plane index 1 and the pitch should be 64 bytes
> > + * clear color is stored at plane index 1, and the offset and pitch must be 64 bytes
> >   * aligned. The format of the 256 bits of clear color data matches the one used
> >   * for the I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC modifier, see its description
> >   * for details.
> > @@ -688,17 +688,18 @@ extern "C" {
> >   * compression.
> >   *
> >   * The main surface is tile4 and is at plane index 0 whereas CCS is linear
> > - * and at index 1. The clear color is stored at index 2, and the pitch should
> > - * be ignored. The clear color structure is 256 bits. The first 128 bits
> > - * represents Raw Clear Color Red, Green, Blue and Alpha color each represented
> > - * by 32 bits. The raw clear color is consumed by the 3d engine and generates
> > - * the converted clear color of size 64 bits. The first 32 bits store the Lower
> > - * Converted Clear Color value and the next 32 bits store the Higher Converted
> > - * Clear Color value when applicable. The Converted Clear Color values are
> > - * consumed by the DE. The last 64 bits are used to store Color Discard Enable
> > - * and Depth Clear Value Valid which are ignored by the DE. A CCS cache line
> > - * corresponds to an area of 4x1 tiles in the main surface. The main surface
> > - * pitch is required to be a multiple of 4 tile widths.
> > + * and at index 1. The clear color is stored at index 2, and the offset and
> > + * pitch must be 64 bytes aligned. The clear color structure is 256 bits.
> > + * The first 128 bits represents Raw Clear Color Red, Green, Blue and Alpha
> > + * color each represented by 32 bits. The raw clear color is consumed by the
> > + * 3d engine and generates the converted clear color of size 64 bits. The
> > + * first 32 bits store the Lower Converted Clear Color value and the next 32
> > + * bits store the Higher Converted Clear Color value when applicable. The
> > + * Converted Clear Color values are consumed by the DE. The last 64 bits are
> > + * used to store Color Discard Enable and Depth Clear Value Valid which are
> > + * ignored by the DE. A CCS cache line corresponds to an area of 4x1 tiles in
> > + * the main surface. The main surface pitch is required to be a multiple of
> > + * 4 tile widths.
> >   */
> >  #define I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC fourcc_mod_code(INTEL, 15)
> > 
> > --
> > 2.45.2
> 

-- 
Ville Syrjälä
Intel
