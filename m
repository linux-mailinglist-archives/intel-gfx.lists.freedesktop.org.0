Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7A26F53E3
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 10:59:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A844110E22D;
	Wed,  3 May 2023 08:59:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 470AC10E257
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 08:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683104380; x=1714640380;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=QJduVMs4D6lEqNPvqBt35oWbpUUYNaTuZDHtH9eACe8=;
 b=Y92w0MviWo771EJgpubo5elpkF9q9RMz4WG0KoUBL8DgO3cSTuOOtti7
 JQ9og7LfbY+ebh65P26kAg3B/QINAE+8GFVB2ykYoSv8xjLT+Le9xfMj5
 qHlxVtppDQQfkAFeqh5p3yhBKRsoai5UiNJvgV1gEen+yfjr9Zik3nl3P
 PyTzygqDrFFREYDtxZnlC2qvuhRiuXlQkUPLJs9gD8FWQ1/JcpjYwFwts
 kw5ageMqT+2SczQyICGmD9rrNrKGx3NwByalsy1p4wLg+50V+VkYUaD6H
 0nYsBzsCSaY8yFks9E/5Ld+TSbpvRFUVFZmtxrEfgvs6Mt6Lz93ocRhSC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="337743274"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="337743274"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 01:59:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="690625387"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="690625387"
Received: from ebrosekx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.204])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 01:59:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
Date: Wed, 03 May 2023 11:59:35 +0300
Message-ID: <87y1m5zt6w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 00/14] drm/i915/dsi: ICL+ DSI modeset
 sequence fixes
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

On Tue, 25 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> A bunch of changes to the ICL+ DSI modeset sequences.
> The hope is that these might help with
> https://gitlab.freedesktop.org/drm/intel/-/issues/7717

This needs a rebase, and I left some minor comments inline.

I can't claim I did an in-depth review, but I also don't think anyone's
going to have that as a priority either. I looked at every patch,
thought the changes made sense, and pretty much matched what it said on
the box, but I did not peruse the specs or other driver code. I'm
inclined to rely more on the test results from the issue. Would be great
to try to ping the folks in the already closed, related bugs, for
testing as well to ensure this doesn't break anything for
them. Especially if we're trying to Cc: stable this stuff, if we can't
pinpoint the exact change that fixes the reported issue.

Anyway, overall on the series,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Ville Syrj=C3=A4l=C3=A4 (14):
>   drm/i915/icl: Do panel power on + reset deassert earlier on icl+
>   drm/i915/dsi: Do display on sequence later on icl+
>   drm/i915/dsi: Always do panel power up delay on icl+
>   drm/i915/dsi: Print the VBT MIPI sequence delay duration
>   drm/i915/dsi: Split icl+ D-PHY vs. DSI timing steps
>   drm/i915/dsi: Gate DSI clocks earlier
>   drm/i915/dsi: Respect power cycle delay on icl+
>   drm/i915/dsi: Implement encoder->shutdown() for icl+
>   drm/i915/dsi: Move most things from .enable() into .post_disable()
>   drm/i915/dsi: Do DSC/scaler disable earlier on icl+
>   drm/i915/dsi: Respect power_off_delay on icl+
>   drm/i915/dsi: Move panel reset+power off to be the last thing
>   drm/i915/dsi: Grab the crtc from the customary place
>   drm/i915/dsi: Remove weird has_pch_encoder asserts
>
>  drivers/gpu/drm/i915/display/icl_dsi.c       | 127 +++++++++++--------
>  drivers/gpu/drm/i915/display/intel_dsi.c     |  20 +++
>  drivers/gpu/drm/i915/display/intel_dsi.h     |   2 +
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c |   2 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c       |  23 ----
>  5 files changed, 100 insertions(+), 74 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center
