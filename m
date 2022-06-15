Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB3E54CC9F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 17:24:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD1E01120E0;
	Wed, 15 Jun 2022 15:24:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5205B11211A
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 15:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655306688; x=1686842688;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3vPHvaKplrVcjTie5bPmBJ0ZptRJSnIRA/7Ly1Ck518=;
 b=MCRj44hl3r/gPWrvzr9PBAk/6+YphhksGm0RkIQy65uqw9TuOT3vv5Nj
 WXQz5hRjK/jkzxAVI7tQ6u0sGS0jO1HXnaXJMsolHdmnMAqIYJKmOkld8
 JbflrbIOH7g2pU0qUQC82bKIqXqiwKIrCSLNTB7u6w11zR6ppuLlJLSre
 A4WpwPGBhl6aDi7TKTeJAKa3GgosGrgBiVBb/wQ0+6QyH66Oj1faqwf67
 E9tjInRwkjjlzVv41FCn87qhj31h6qEMx7jYkeUOJzh0J3XiLwsYwGnL7
 rkEBhb5D0wozEtFQPcM37XcPxTdqFtB5tqM5A2SwtZYSv5rwCOjz7XJJO Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="276570465"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="276570465"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 08:24:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="589175926"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga007.fm.intel.com with SMTP; 15 Jun 2022 08:24:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Jun 2022 18:24:33 +0300
Date: Wed, 15 Jun 2022 18:24:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Yqn5sfnFxypRCYBv@intel.com>
References: <cover.1655297182.git.jani.nikula@intel.com>
 <YqneX9G0VVDqJvYC@intel.com> <878rpyxak6.fsf@intel.com>
 <875yl2x8i9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <875yl2x8i9.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/7] drm/i915/display: split out verifation,
 compare and dump from intel_display.c
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 15, 2022 at 06:15:58PM +0300, Jani Nikula wrote:
> On Wed, 15 Jun 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> > On Wed, 15 Jun 2022, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> >> On Wed, Jun 15, 2022 at 03:47:54PM +0300, Jani Nikula wrote:
> >>> The state verification and pipe config comparison/dumping are fairly
> >>> isolated pieces of code within intel_display.c. Move them to separate
> >>> files in a long overdue cleanup.
> >>> 
> >>> Jani Nikula (7):
> >>>   drm/i915/wm: move wm state verification to intel_pm.c
> >>>   drm/i915/dpll: move shared dpll state verification to intel_dpll_mgr.c
> >>>   drm/i915/mpllb: use I915_STATE_WARN() for state mismatch warnings
> >>>   drm/i915/mpllb: move mpllb state check to intel_snps_phy.c
> >>
> >> I'd perhaps go for foo_state_verify() naming convention. Would
> >> match the foo_state_dump() naming convention I suggested
> >> for the dumping stuff.
> >
> > Roger.
> >
> >>
> >> Apart from that these ^ four are
> >> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >>
> >>>   drm/i915/display: split out modeset verification code
> >>
> >> I really hate some of that code. I guess hiding it is one option :P
> >> This one ^ is
> >> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Yeah, there's some weird stuff. For example we only call
> > verify_encoder_state() only to verify it's disabled.
> >
> >>
> >>>   drm/i915/display: split out pipe config compare to a separate file
> >>
> >> Not entirely sure I like moving this one. The fastset stuff
> >> within needs to stay in sync with the fastset codepaths which
> >> are in intel_display.c. Not sure if we risk more bugs if it's
> >> too well hidden...
> >
> > Mixed feelings. The problem remains, the file is still too damn big, and
> > it's hard to draw the lines what to extract. Maybe all the modeset code
> > needs to be lifted, along with the config compare, but then I think that
> > has too many dependencies to axe out cleanly. Damned if you do, damned
> > if you don't.
> 
> I've also got a patch to move intel_modeset_setup_hw_state() and all the
> static functions only it calls to another file. Do you also think that
> needs to be together with the modeset code...?

Readout+sanitation... I guess that's pretty self contained so a fairly
good candidate for moving out.

Though it does mean I get to rebase my "nuke the legacy state pointers"
branch at some point :/ Oh well, that's life.

-- 
Ville Syrjälä
Intel
