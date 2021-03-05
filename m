Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1F932EF0D
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Mar 2021 16:38:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 033CC6E1B4;
	Fri,  5 Mar 2021 15:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2129F6E1B4
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Mar 2021 15:38:31 +0000 (UTC)
IronPort-SDR: aTRWPrxOz0Jf7TZplMvSNZWF3a1HL09dD6ndUkYw/AKEucoF2kXI6ab1muRBLhUaQ2WkvTZyrQ
 ULvfXUNT9w3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9914"; a="174782614"
X-IronPort-AV: E=Sophos;i="5.81,225,1610438400"; d="scan'208";a="174782614"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 07:38:06 -0800
IronPort-SDR: maWPb0C3UhVjJQzAacc81l1eRTxpryVKdZ37naiD3P1SqZ+iSeRvkkl/J4MyUBIuSOykc+nf8l
 9vvwFimOL5Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,225,1610438400"; d="scan'208";a="436501728"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 05 Mar 2021 07:38:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Mar 2021 17:38:03 +0200
Date: Fri, 5 Mar 2021 17:38:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <YEJQW6UHGEaeET8U@intel.com>
References: <20210304170421.10901-1-ville.syrjala@linux.intel.com>
 <20210304142022.5d266e3b@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210304142022.5d266e3b@gandalf.local.home>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: Silence pipe tracepoint WARNs
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 04, 2021 at 02:20:22PM -0500, Steven Rostedt wrote:
> On Thu,  4 Mar 2021 19:04:17 +0200
> Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> =

> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > I believe this should silence the WARN spew from the
> > pipe disable tracepoint Steve reported. And I tossed in
> > a few other minor improvements as well.
> > =

> > Cc: Steven Rostedt <rostedt@goodmis.org>
> =

> It seemed to have stopped the general protection faults when tracing all
> events on my machine.
> =

> Reported-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> Tested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

Series pushed to drm-intel-next. Thanks for reporting the problem.

> =

> -- Steve
> =

> > =

> > Ville Syrj=E4l=E4 (4):
> >   drm/i915: Move pipe enable/disable tracepoints to
> >     intel_crtc_vblank_{on,off}()
> >   drm/i915: Don't try to query the frame counter for disabled pipes
> >   drm/i915: Return zero as the scanline counter for disabled pipes
> >   drm/i915: Fix DSI TE max_vblank_count handling
> > =

> >  drivers/gpu/drm/i915/display/intel_crtc.c    | 24 +++++++++++++++++---
> >  drivers/gpu/drm/i915/display/intel_display.c |  8 +------
> >  drivers/gpu/drm/i915/i915_irq.c              |  2 +-
> >  3 files changed, 23 insertions(+), 11 deletions(-)
> > =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
