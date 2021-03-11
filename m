Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E9A3377AC
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 16:28:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C82F76EDD8;
	Thu, 11 Mar 2021 15:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 360E56EDD8
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 15:28:47 +0000 (UTC)
IronPort-SDR: O9m+crkzjZztJ8GLytuVZ/t9jqpNkeqANC802RmLjLVToaeLP/EQqtCksEhiqkI+cYgEHMOB7o
 6pN7WvcCSKkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="252699339"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="252699339"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 07:28:46 -0800
IronPort-SDR: vK5zsyIbbQGBd8ZGnrnYf/MhIPuw9gq6AKXRUaNZY0CUt0Qnpghgco4zvNZYkLXEA8XMeVuC4A
 k8CTQhwCWaFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="510039351"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 11 Mar 2021 07:28:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Mar 2021 17:28:43 +0200
Date: Thu, 11 Mar 2021 17:28:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <YEo3K4RjsgsMSNiZ@intel.com>
References: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
 <20210305153610.12177-3-ville.syrjala@linux.intel.com>
 <20210311143605.GA8577@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210311143605.GA8577@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Tighten SAGV constraint for
 pre-tgl
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

On Thu, Mar 11, 2021 at 04:36:05PM +0200, Lisovskiy, Stanislav wrote:
> On Fri, Mar 05, 2021 at 05:36:06PM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Say we have two planes enabled with watermarks configured
> > as follows:
> > plane A: wm0=3Denabled/can_sagv=3Dfalse, wm1=3Denabled/can_sagv=3Dtrue
> > plane B: wm0=3Denabled/can_sagv=3Dtrue,  wm1=3Ddisabled
> =

> Was thinking about this, always thought its not possible, i.e
> wm1 kinda requires more resources, so if we can do wm1, should
> always be able to do wm0..
> =

> > =

> > This is possible since the latency we use to calculate
> > can_sagv may not be the same for both planes due to
> > skl_needs_memory_bw_wa().
> =

> The current code, which I see in internal at least looks like this:
> =

> /*
>  * FIXME: We still don't have the proper code detect if we need to apply =
the WA,
>  * so assume we'll always need it in order to avoid underruns.
>  */
> static bool skl_needs_memory_bw_wa(struct drm_i915_private *dev_priv)
> {
>       return IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv);
> }
> =

> i.e I think it will return same latency for all planes.
> =

> Or am I missing something?..

We do stuff like =

if (skl_needs_memory_bw_wa(dev_priv) && wp->x_tiled)
	latency +=3D 15;
so different latencies for different tilings.

Also the fact that eg. Y vs. X/linear do the method1 vs. method2
selection differently could mean we get different set of wm levels
even w/o any latency adjustments. Or at least it's impossible for
me to see from the code that it couldn't happen.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
