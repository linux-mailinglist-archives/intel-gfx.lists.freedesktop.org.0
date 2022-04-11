Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0FE4FBF50
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 16:35:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BA3010E440;
	Mon, 11 Apr 2022 14:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E69F910E440
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Apr 2022 14:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649687756; x=1681223756;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jOvoij9K7RaQJEi66acHS1982tf+cRJfGoxUk0l4BV8=;
 b=YsQ/kIg3l18EaWPm/ITSjRtPDp+EBw08+//+IImF0yoMpnsdsQ+VDLTg
 2106HQWmxQXYfXlNDAZE8LRjZOQnvTASrs/RoMQX17WSGOn3flTqbtxNp
 dF86ty70NauNuDr1xfRkScKJEglyOF9hntjKb/Gd3AgEo7QjZN0/pbQyX
 gQU5phvLrBjjn7arq3k+ci7z0gNlKNi3xGIBFOoN6AbGf6xQpufWHSK5v
 We+kxWwF95i8p9/YV/IYDlpFnbBJl6oYw9tjGHb4WLZ1v/4CB/b85T1E7
 yigXI3N5Hdw4kXw4kpuUWNK8MTiqocXq87CNx3XCXeMK2c68fNQeqpn76 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="244014360"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="244014360"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 07:35:56 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="551164403"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 07:35:54 -0700
Date: Mon, 11 Apr 2022 17:35:51 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YlQ8xzVAXmZue9Wr@ideak-desk.fi.intel.com>
References: <20220404133846.131401-1-imre.deak@intel.com>
 <YlQhVWmwUA1DvTNS@ideak-desk.fi.intel.com>
 <87czhnivuf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87czhnivuf.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915/dg2: Add support for
 render/media decompression
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org,
 Juha-Pekka =?iso-8859-1?Q?Heikkil=E4?= <juha-pekka.heikkila@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 11, 2022 at 04:38:16PM +0300, Jani Nikula wrote:
> On Mon, 11 Apr 2022, Imre Deak <imre.deak@intel.com> wrote:
> > Hi Rodrigo, Jani,
> 
> TL;DR, all done, for details read on. ;)
> 
> > On Mon, Apr 04, 2022 at 04:38:42PM +0300, Imre Deak wrote:
> >> This is a rebased version of patches 15-17 of [1], adding DG2 display
> >> engine support for decompressing render and media compressed
> >> framebuffers.
> >> 
> >> The dependency patches from [1] should be merged already to drm-tip.
> >> 
> >> It addresses the review comments on the modifier layout description from
> >> Nanley, updates the commit logs vs. flat CCS and Tile4 and splits out
> >> the changes adding the modifiers to drm_fourcc.h to separate patches.
> >> 
> >> [1] https://patchwork.freedesktop.org/series/95686/
> >> 
> >> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> >> Cc: Ramalingam C <ramalingam.c@intel.com>
> >> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> >> Cc: Matt Roper <matthew.d.roper@intel.com>
> >> Cc: Mika Kahola <mika.kahola@intel.com>
> >> Cc: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
> >> Cc: Nanley Chery <nanley.g.chery@intel.com>
> >
> > I'd like to push this patchset to drm-intel-next, but it depends on
> > https://patchwork.freedesktop.org/patch/475167/?series=100419&rev=1
> 
> Please reference commits, looking that up is just an extra step for me.
> 
> > which is only in drm-intel-gt-next. According to Joonas, this should be
> > resolved by backmerging drm-intel-gt-next to drm-intel-next, could you
> > help with this?
> 
> To set the record straight, we don't crossmerge drm-intel-gt-next to
> drm-intel-next. The other direction is possible. These are the valid
> merges:
> 
> drm-intel-next -> drm-next		feature pull
> drm-intel-gt-next -> drm-next		feature pull
> drm-next -> drm-intel-next		backmerge
> drm-next -> drm-intel-gt-next		backmerge
> drm-intel-next -> drm-intel-gt-next	crossmerge
> topic/* -> *				topic merge
> 
> Anyway, drm-intel-gt-next with the commit in question 5e3094cfd9fb
> ("drm/i915/xehpsdv: Add has_flat_ccs to device info") has already been
> merged to drm-next and -rc1. I've done a backmerge and pushed it out.
> 
> Because we don't do drm-intel-gt-next -> drm-intel-next crossmerges, it
> might be better to apply things like feature flags to drm-intel-next,
> because the route from gt back to drm-intel-next is longer.
> 
> I might be prudent to trigger a retest with the new baseline before
> merging.

Ok thanks for the explanation, resent the patchset now for retesting.

> BR,
> Jani.
> 
> >
> >> Anshuman Gupta (1):
> >>   drm/i915/dg2: Add support for DG2 clear color compression
> >> 
> >> Matt Roper (2):
> >>   drm/fourcc: Introduce format modifiers for DG2 render and media
> >>     compression
> >>   drm/i915/dg2: Add support for DG2 render and media compression
> >> 
> >> Mika Kahola (1):
> >>   drm/fourcc: Introduce format modifier for DG2 clear color
> >> 
> >>  drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
> >>  drivers/gpu/drm/i915/display/intel_fb.c       | 53 +++++++++++++++----
> >>  .../drm/i915/display/skl_universal_plane.c    | 49 +++++++++++++----
> >>  include/uapi/drm/drm_fourcc.h                 | 36 +++++++++++++
> >>  4 files changed, 122 insertions(+), 20 deletions(-)
> >> 
> >> -- 
> >> 2.30.2
> >> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
