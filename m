Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB572800D6
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Oct 2020 16:03:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32B896E89F;
	Thu,  1 Oct 2020 14:03:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28CB96E89F
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Oct 2020 14:02:58 +0000 (UTC)
IronPort-SDR: uP+dzCNv6p37+M6XfGKfhjJ6NUMLqmfQvZo8cVTnvJsTFv6m+tOt+yooxGbtvhHl6HdQa/ENog
 RLkYg9bh0c6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="150360866"
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="150360866"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 07:02:57 -0700
IronPort-SDR: tefDMnjG8xloYnYjm1Nu5VNBJgPJvPn5MUhLDx5HQjyhZ/VhwberKrJUYYRdwrWfiiig2F4lBG
 C7vpzcD+6hVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="385538177"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 01 Oct 2020 07:02:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 01 Oct 2020 17:02:53 +0300
Date: Thu, 1 Oct 2020 17:02:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201001140253.GQ6112@intel.com>
References: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 00/11] drm/i915: Plumb crtc state to link
 training code
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 30, 2020 at 02:34:38AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Another attempt at plumbing the crtc state to the depths of
> the link training code. This time I tried to preserve the
> PHY test stuff in a somewhat working condition.
> =

> The DDI buf trans stuff also started to bug me again so had =

> to toss in a few cleanups in that area. Still pretty messy,
> but with a bit more regular structure we could perhaps toss
> in a few vfuncs to get rid of some if ladders at least.
> Not entirely sure yet...

Pushed to dinq. Thanks for the reviews.

> =

> Ville Syrj=E4l=E4 (11):
>   drm/i915: s/pre_empemph/preemph/
>   drm/i915: s/old_crtc_state/crtc_state/
>   drm/i915: Make intel_dp_process_phy_request() static
>   drm/i915: Shove the PHY test into the hotplug work
>   drm/i915: Split ICL combo PHY buf trans per output type
>   drm/i915: Split ICL MG PHY buf trans per output type
>   drm/i915: Split EHL combo PHY buf trans per output type
>   drm/i915: Split TGL combo PHY buf trans per output type
>   drm/i915: Split TGL DKL PHY buf trans per output type
>   drm/i915: Plumb crtc_state to link training
>   drm/i915: Eliminate intel_dp.regs.dp_tp_{ctl,status}
> =

>  drivers/gpu/drm/i915/display/intel_ddi.c      | 677 ++++++++++--------
>  drivers/gpu/drm/i915/display/intel_ddi.h      |  11 +-
>  .../drm/i915/display/intel_display_types.h    |  25 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 289 ++++++--
>  drivers/gpu/drm/i915/display/intel_dp.h       |  11 +-
>  .../drm/i915/display/intel_dp_link_training.c | 102 +--
>  .../drm/i915/display/intel_dp_link_training.h |   8 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  24 +-
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c |  23 +-
>  drivers/gpu/drm/i915/display/intel_dpio_phy.h |   2 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   7 +-
>  11 files changed, 718 insertions(+), 461 deletions(-)
> =

> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
