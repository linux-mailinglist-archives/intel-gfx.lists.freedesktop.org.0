Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F414246AD
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 21:29:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FD036EE18;
	Wed,  6 Oct 2021 19:29:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 368D96EE18
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 19:28:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="223483485"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="223483485"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 12:28:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="458536972"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 06 Oct 2021 12:28:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 22:28:20 +0300
Date: Wed, 6 Oct 2021 22:28:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YV341M2jk/VHKWC7@intel.com>
References: <20211004170535.4173-1-ville.syrjala@linux.intel.com>
 <20211004170535.4173-5-ville.syrjala@linux.intel.com>
 <20211006160902.GD3025323@ideak-desk.fi.intel.com>
 <YV3TUhNQtkfo4Am5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YV3TUhNQtkfo4Am5@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 4/5] drm/i915: Pimp link training debug
 prints
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

On Wed, Oct 06, 2021 at 07:48:18PM +0300, Ville Syrjälä wrote:
> On Wed, Oct 06, 2021 at 07:09:02PM +0300, Imre Deak wrote:
> > On Mon, Oct 04, 2021 at 08:05:34PM +0300, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > Unify all debug prints during link training to include information
> > > on both the encoder and the LTTPR. We unify the format to something
> > > like "[ENCODER:1:FOO][LTTPR 1] Something something". Though not
> > > sure if those brackets around the dp_phy just make it look like
> > > line noise? I'll accept suggestions on better formatting.
> > > 
> > > I'm slightly on the fence about also including the connector,
> > > but technically only the DPRX is the SST connector (ie.
> > > intel_dp->attached_connector). I suppose you could think of it
> > > as the branch device/whatever in the topology, and we're training
> > > the link leading to it. So that could argue for its inclusion.
> > > But it's all getting a bit long alrady, so not going to do it
> > > I think.
> > 
> > Imo including the connector info eventually would be good to be able to
> > match these lines with those only showing the connector, or connectors
> > in i915_display_info etc.
> 
> You're probably right. I was just looking at a dmesg wondering which
> connector it's training there...
> 
> Although with MST it of course doesn't match up with anything
> that the user thinks as a connected connector. So a bit annoying.
> And using a single MST connector wouldn't really lead to a
> coherent debug message either since there could be many MST
> connectors active on the same link :/

As a compromise I kept the SST connector name in the final passed/failed
debug print. That was the only place where we printed it previously as
well. Not ideal perhaps but at least it's something.

Series pushed. Thanks for the review.

-- 
Ville Syrjälä
Intel
