Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0464742CCD7
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 23:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C09A6E512;
	Wed, 13 Oct 2021 21:34:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41B5E6E512
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 21:34:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="224992972"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="224992972"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 14:34:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="563256653"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 13 Oct 2021 14:34:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Oct 2021 00:34:03 +0300
Date: Thu, 14 Oct 2021 00:34:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YWdQy9CfagVO3nK8@intel.com>
References: <20211007203517.3364336-2-imre.deak@intel.com>
 <20211008001915.3508011-1-imre.deak@intel.com>
 <YWc+MpZO3L/Rj1sL@intel.com>
 <20211013210141.GA19061@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211013210141.GA19061@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
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

On Thu, Oct 14, 2021 at 12:01:41AM +0300, Imre Deak wrote:
> On Wed, Oct 13, 2021 at 11:14:42PM +0300, Ville Syrjälä wrote:
> > On Fri, Oct 08, 2021 at 03:19:08AM +0300, Imre Deak wrote:
> > > +	/* Wa_22011186057 */
> > > +	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> > > +		return false;
> > > +
> > > +	if (DISPLAY_VER(i915) >= 11)
> > > +		return true;
> > > +
> > > +	if (IS_GEMINILAKE(i915))
> > > +		return pipe != PIPE_C;
> > > +
> > > +	return pipe != PIPE_C &&
> > > +		(plane_id == PLANE_PRIMARY ||
> > > +		 plane_id == PLANE_SPRITE0);
> > > +}
> > 
> > A bit tempted to say we should chop this up into more
> > platform specific variants. But that can be left for later I guess.
> 
> You mean clarifying that last check is for SKL/BXT? Would a code comment
> be ok?

I don't really enjoy comments when the code can express what we 
mean more clearly. So I'm thinking just a clean skl/glk/icl split
could perhaps be the thing. Pretty sure we have that exact if
ladder in the init function already at least once so could
shove this stuff in there as well.

But it's not really important for the moment.

-- 
Ville Syrjälä
Intel
