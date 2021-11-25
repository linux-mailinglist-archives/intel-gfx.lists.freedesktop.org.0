Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CC045D779
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Nov 2021 10:43:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A3D46E5CF;
	Thu, 25 Nov 2021 09:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D02E76E5CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Nov 2021 09:43:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="321717878"
X-IronPort-AV: E=Sophos;i="5.87,262,1631602800"; d="scan'208";a="321717878"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 01:43:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,262,1631602800"; d="scan'208";a="538929384"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 25 Nov 2021 01:43:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 25 Nov 2021 11:43:40 +0200
Date: Thu, 25 Nov 2021 11:43:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YZ9azCw2Rc96QuNL@intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-12-ville.syrjala@linux.intel.com>
 <87pmqplft3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87pmqplft3.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 24, 2021 at 05:43:52PM +0200, Jani Nikula wrote:
> On Wed, 24 Nov 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > In order to encapsulate FBC harder let's just move the debugfs
> > stuff into intel_fbc.c.
> 
> Mmmh, I've kind of moved towards a split where i915_debugfs.c and
> intel_display_debugfs.c have all the debugfs boilerplate, while the
> implementation files have the guts with struct drm_i915_private *i915
> (or something more specific) and struct seq_file *m passed in.
> 
> In some ways the split is arbitrary, but I kind of find the debugfs
> boilerplate a distraction in the implementation files, and we also skip
> building the debugfs files completely for CONFIG_DEBUG_FS=n. I don't
> think I'd want to add #ifdefs on that spread around either.

If we want to keep the debugfs in a separate file then we'll have to
expose the guts of the FBC implementation in intel_fbc.h (or some other
header) just for that, or we add a whole bunch of otherwise useless
functions that pretend to provide some higher level of abstraction.

Not really a fan of either of those options.

-- 
Ville Syrjälä
Intel
