Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0A545D9D1
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Nov 2021 13:13:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C4796E138;
	Thu, 25 Nov 2021 12:13:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CE7B6E138
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Nov 2021 12:13:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="215529290"
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="215529290"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 04:13:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="509765886"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 25 Nov 2021 04:13:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 25 Nov 2021 14:13:10 +0200
Date: Thu, 25 Nov 2021 14:13:09 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YZ991bmhNaIj4MrQ@intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-12-ville.syrjala@linux.intel.com>
 <87pmqplft3.fsf@intel.com> <YZ9azCw2Rc96QuNL@intel.com>
 <87bl28lcyw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87bl28lcyw.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 11/20] drm/i915/fbc: Move FBC debugfs stuff
 into intel_fbc.c
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 25, 2021 at 12:57:27PM +0200, Jani Nikula wrote:
> On Thu, 25 Nov 2021, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Wed, Nov 24, 2021 at 05:43:52PM +0200, Jani Nikula wrote:
> >> On Wed, 24 Nov 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> >> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> >
> >> > In order to encapsulate FBC harder let's just move the debugfs
> >> > stuff into intel_fbc.c.
> >> 
> >> Mmmh, I've kind of moved towards a split where i915_debugfs.c and
> >> intel_display_debugfs.c have all the debugfs boilerplate, while the
> >> implementation files have the guts with struct drm_i915_private *i915
> >> (or something more specific) and struct seq_file *m passed in.
> >> 
> >> In some ways the split is arbitrary, but I kind of find the debugfs
> >> boilerplate a distraction in the implementation files, and we also skip
> >> building the debugfs files completely for CONFIG_DEBUG_FS=n. I don't
> >> think I'd want to add #ifdefs on that spread around either.
> >
> > If we want to keep the debugfs in a separate file then we'll have to
> > expose the guts of the FBC implementation in intel_fbc.h (or some other
> > header) just for that, or we add a whole bunch of otherwise useless
> > functions that pretend to provide some higher level of abstraction.
> >
> > Not really a fan of either of those options.
> 
> Obviously I'm in favour of hiding the guts, no question about it. I'm
> also very much in favour of moving the details out of our *debugfs.c
> files. It's just a question of where to draw the line, and which side of
> the line the debugfs boilerplate lands.
> 
> Which leaves us either your approach in the patch at hand, or adding the
> fbc helper functions for debugfs, which would be something like:
> 
> intel_fbc_get_status
> intel_fbc_get_false_color
> intel_fbc_set_false_color

So I guess you're suggesting that just the DEFINE_ATTRIBUTE
and debugfs_create_file() stuff should remain in
intel_display_debugfs.c?

Not sure that approach has any benefits whatsoever. The get/set 
functions will need to be non-static and they'll get included in
the binary whether or not debugfs is enabled or not (unless you
lto it perhaps). If everything is in intel_fbc.c all that stuff
just gets optimized out entirely when not needed.

Also then I couldn't do this sort of stuff:
 if (fbc->funcs->set_false_color)
 	debugfs_create_file(...)
because that requires knowledge only available to intel_fbc.c.
I'd need to add some kind of intel_fbc_has_false_color() thing
just for that.

-- 
Ville Syrjälä
Intel
