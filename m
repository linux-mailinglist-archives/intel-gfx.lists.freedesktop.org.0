Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EBE88A55C
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 15:55:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6009F10E95B;
	Mon, 25 Mar 2024 14:55:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EQuBc0Oz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8822210E95B
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 14:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711378525; x=1742914525;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=asSGMOh+FLO6rfoe6ZV4CmvlWC/YWRo+THgJI+LtSq4=;
 b=EQuBc0Oza1ChIdV+fiTJ02Vl2OpzymJaBVhEpD0Rbcbvax97Ra+Fh8v5
 NipO+meCjioG/DBhUPimgM7QCazvjwBlJ2pwOFNMHUPwVM0/q56F9Xyr/
 R7f23/yehVCi/Ub+8rnuGruNhXHQGiFufz4bfgydj/IY3QCELfn9/tKyS
 27k8PgDdXMp0Xt/io9zMz1T7TJQOzx6sVpfRPvBJvpor6l4MAwODLOeBI
 BgvMxhgdOeP4mxcIFda05sf83h+d155XX4Lt4Qi+5fE05tS/zFMkRz/YE
 EnpFtUp3JzBbjXyr7WyQQf9uHOEDsDznxIHSyPvhR0E4x8L8wP2SafP+X Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="17778653"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="17778653"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 07:55:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="827784712"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="827784712"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 25 Mar 2024 07:55:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 25 Mar 2024 16:55:20 +0200
Date: Mon, 25 Mar 2024 16:55:20 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 3/5] drm/i915: Use old mbus_join value when increasing
 CDCLK
Message-ID: <ZgGQWE-jo7cLdhFJ@intel.com>
References: <20240322114046.24930-1-stanislav.lisovskiy@intel.com>
 <20240322114046.24930-4-stanislav.lisovskiy@intel.com>
 <Zf3DuTTsvjXfdOQE@intel.com>
 <171137789980.56348.2594261820316637553@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <171137789980.56348.2594261820316637553@gjsousa-mobl2>
X-Patchwork-Hint: comment
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

On Mon, Mar 25, 2024 at 11:44:59AM -0300, Gustavo Sousa wrote:
> Quoting Ville Syrjälä (2024-03-22 14:45:29-03:00)
> >On Fri, Mar 22, 2024 at 01:40:44PM +0200, Stanislav Lisovskiy wrote:
> >> In order to make sure we are not breaking the proper sequence
> >> lets to updates step by step and don't change MBUS join value
> >> during MDCLK/CDCLK programming stage.
> >> MBUS join programming would be taken care by pre/post ddb hooks.
> >> 
> >> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 +++++++++++-
> >>  1 file changed, 11 insertions(+), 1 deletion(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> index 31aaa9780dfcf..43a9616c78260 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> @@ -2611,9 +2611,19 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
> >>  
> >>          if (pipe == INVALID_PIPE ||
> >>              old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
> >> +                struct intel_cdclk_config cdclk_config;
> >> +
> >>                  drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
> >>  
> >> -                intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
> >> +                /*
> >> +                 * By this hack we want to prevent mbus_join to be programmed
> >> +                 * beforehand - we will take care of this later in pre ddb
> >> +                 * programming hook.
> >> +                 */
> >
> >We're not doing anything to prevent mbus joining to be
> >programmed here. It will simply not be programmed here,
> >which is why we need to use the old mbus_join based ratio.
> 
> Hey, guys.
> 
> Just so I understand this better. What I understood from the
> recent discussion was:
> 
>   CDCLK programming should only care about the current MBus joining
>   state and not consider the new one in the current hardware commit,
>   which must actually be handled later in the sequence by the proper
>   "entity".
> 
> Is my understanding correct? If so, sorry for the confusion introduced
> by my patches.
> 
> My previous understanding was that that the CDCLK change sequence would
> need to consider the new MBus joining state in case we were in a modeset
> where mbus joining changed, so I added that odd-looking condition in
> update_mbus_pre_enable() (not moved into
> intel_dbuf_mdclk_min_tracker_update()), thinking that the update should
> be handled by the cdclk sequence.

I don't think we can handle it from the cdclk code as
that can't handle the proper ordering between plane
ddb updates vs. mbus_join changes.

It's rather infuriating that we need to update the ratio
from both places. I'm not sure how careful we actually
have to be between programming the ratio vs. actually
changing mbus_join+mdclk/cdclk. I guess we should ask
the hardware folks for more details and if the sequence
doesn't have to super accurate then maybe think about
a simpler way to do things...

-- 
Ville Syrjälä
Intel
