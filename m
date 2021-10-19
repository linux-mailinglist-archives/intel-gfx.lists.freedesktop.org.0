Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEBE433132
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 10:38:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DC286E13C;
	Tue, 19 Oct 2021 08:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17C656E13C
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 08:38:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="228407905"
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="228407905"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 01:38:38 -0700
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="493998296"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 01:38:37 -0700
Date: Tue, 19 Oct 2021 11:38:33 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20211019083833.GE1537791@ideak-desk.fi.intel.com>
References: <20211014220921.683870-1-imre.deak@intel.com>
 <20211014220921.683870-10-imre.deak@intel.com>
 <87h7ddsaqi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87h7ddsaqi.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 09/11] drm/i915: Add a platform
 independent way to check for CCS AUX planes
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

On Tue, Oct 19, 2021 at 11:02:45AM +0300, Jani Nikula wrote:
> 
> From patch 1:
> 
> static bool check_modifier_display_ver(const struct intel_modifier_desc *md,
> 				       u8 display_ver)
> {
> 	return display_ver >= md->display_ver.from &&
> 	       display_ver <= md->display_ver.until;
> }
> 
> On Fri, 15 Oct 2021, Imre Deak <imre.deak@intel.com> wrote:
> > +static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
> > +					     u8 display_ver_from, u8 display_ver_until)
> > +{
> > +	return check_modifier_display_ver(md, display_ver_from) &&
> > +	       check_modifier_display_ver(md, display_ver_until);
> > +}
> > +
> 
> ...
> 
> > +/**
> > + * intel_fb_is_gen12_ccs_aux_plane: Check if a framebuffer color plane is a GEN12 CCS AUX plane
> > + * @fb: Framebuffer
> > + * @color_plane: color plane index to check
> > + *
> > + * Returns:
> > + * Returns %true if @fb's color plane at index @color_plane is a GEN12 CCS AUX plane.
> > + */
> > +static bool intel_fb_is_gen12_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane)
> >  {
> > -	return is_gen12_ccs_modifier(fb->modifier) && is_ccs_plane(fb, plane);
> > +	const struct intel_modifier_desc *md = lookup_modifier(fb->modifier);
> > +
> > +	return check_modifier_display_ver_range(md, 12, 13) &&
> > +	       ccs_aux_plane_mask(md, fb->format) & BIT(color_plane);
> >  }
> 
> check_modifier_display_ver_range(md, 12, 13)
> 
> ==>
> 
> check_modifier_display_ver(md, 12) &&
> check_modifier_display_ver(md, 13)
> 
> ==>
> 
> 12 >= md->display_ver.from &&
> 12 <= md->display_ver.until &&
> 13 >= md->display_ver.from &&
> 13 <= md->display_ver.until
> 
> ==>
> 
> Always false.

If md->display_ver.from=12, md->display_ver.until=13

12 >= 12 &&
12 <= 13 &&
13 >= 12 &&
13 <= 13

not false.

But yes, check_modifier_display_ver_range() is bogus for the
md->display_ver.from == md->display_ver.until case, and should be

md->display_ver.from >= display_ver_from &&
md->display_ver.until <= disaply_ver_until

Thanks for catching this, will fix it.

> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
