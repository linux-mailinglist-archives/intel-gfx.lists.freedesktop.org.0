Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4AE42CDF1
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 00:28:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52D506E51C;
	Wed, 13 Oct 2021 22:28:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1E526E51C
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 22:28:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="227513492"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="227513492"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 15:28:29 -0700
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="659728644"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 15:28:28 -0700
Date: Thu, 14 Oct 2021 01:28:24 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20211013222824.GE19061@ideak-desk.fi.intel.com>
References: <20211007203517.3364336-1-imre.deak@intel.com>
 <20211007203517.3364336-10-imre.deak@intel.com>
 <YWdBFg9i85wzXUfz@intel.com> <YWdFbXzbqHCPK4uK@intel.com>
 <20211013213255.GD19061@ideak-desk.fi.intel.com>
 <YWdVsmZRvl+dAgOM@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YWdVsmZRvl+dAgOM@intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/11] drm/i915: Add a platform independent
 way to check for CCS control planes
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

On Thu, Oct 14, 2021 at 12:54:58AM +0300, Ville Syrjälä wrote:
> On Thu, Oct 14, 2021 at 12:32:55AM +0300, Imre Deak wrote:
> > On Wed, Oct 13, 2021 at 11:45:33PM +0300, Ville Syrjälä wrote:
> > > On Wed, Oct 13, 2021 at 11:27:02PM +0300, Ville Syrjälä wrote:
> > > > On Thu, Oct 07, 2021 at 11:35:15PM +0300, Imre Deak wrote:
> > > > > Future platforms change the location of CCS control planes in CCS
> > > > > framebuffers, so add intel_fb_is_rc_ccs_ctrl_plane() to query for these
> > > > 
> > > > Don't we use the term 'ccs_plane' everywhere else?
> > > > 
> > > > > planes independently of the platform. This function can be used
> > > > > everywhere instead of is_ccs_plane() (or is_ccs_plane() && !cc_plane()),
> > > > > since all the callers are only interested in control planes (and not CCS
> > > > > color-clear planes).
> > > 
> > > Hmm. I guess you're changing the terminology across the board?
> > > If it's used consistently then no objections from me.
> > 
> > ccs_plane has been used as a generic term for both the "control" and the
> > cc plane, or at least I thought of it as such.
> 
> The official definition I think is:
> CCS == color control surface
>
> So in terms of modifier naming I suppose I tend to think
> of it like this:
> modifier name has CCS -> color control surface is present
> modifier name has CC -> clear color is present
> 
> But if we want to make the distinction somehow stronger I was
> thinking maybe ccs_aux vs. ccs_cc. But dunno if that just ends up
> being more confusing since AUX_DIST is also used for planar scanout
> on skl/etc.
> 
> Or another way to make it more clear would be to drop the "ccs" part
> from the is_ccs_cc_plane() or whatever. But is_cc_plane() is perhaps
> also pretty confusing. So could expand it to full on is_clear_color_plane()?

Imo it's better to preserve the connection to ccs in the name, maybe
regarding the cc as a subplane of the ccs plane.

> Shrug. Plenty of different color paint for this one available I think.

Ok with all that, I think the best would be to use the ccs_plane /
ccs_cc_plane names to mean the control plane and clear color plane.
Will change the patch.

--Imre
