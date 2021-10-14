Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B863F42D6C8
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 12:07:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E544A6E15D;
	Thu, 14 Oct 2021 10:07:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 710186E15D
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 10:07:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="225103073"
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="225103073"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 03:07:52 -0700
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="491887470"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 03:07:51 -0700
Date: Thu, 14 Oct 2021 13:07:47 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20211014100747.GA33552@ideak-desk.fi.intel.com>
References: <20211007203517.3364336-2-imre.deak@intel.com>
 <20211008001915.3508011-1-imre.deak@intel.com>
 <YWdEK+dlwCJehkw0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YWdEK+dlwCJehkw0@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 01/11] drm/i915: Add a table with a
 descriptor for all i915 modifiers
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

On Wed, Oct 13, 2021 at 11:40:11PM +0300, Ville Syrjälä wrote:
> On Fri, Oct 08, 2021 at 03:19:08AM +0300, Imre Deak wrote:
> >  bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
> >  bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
> >  bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
> 
> Side note: 
> We have quite a few of these 'int plane' things still around. I'd 
> like to see them all renamed to 'color_plane' so that we don't get
> confused between diffrent kinds of planes.
> 
> The rules that I've been going for everywhere:
> - int color_plane == plane of a planar/compressed framebuffer
> - struct intel_plane *plane == representation of the piece of
>   hardware that does the scanout
> - enum plane plane_id == standalone version of plane->id
> - enum i9xx_plane_id i9xx_plane == standalone version of plane->i9xx_plane

Ok, makes sense, I'll s/plane/color_plane/ in functions I added in this
patchset and will follow up to convert the remaining ones.

> -- 
> Ville Syrjälä
> Intel
