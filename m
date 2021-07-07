Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2AD3BEEA8
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 20:27:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C0E76E197;
	Wed,  7 Jul 2021 18:27:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C86A6E197;
 Wed,  7 Jul 2021 18:27:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="270476142"
X-IronPort-AV: E=Sophos;i="5.84,221,1620716400"; d="scan'208";a="270476142"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 11:27:20 -0700
X-IronPort-AV: E=Sophos;i="5.84,221,1620716400"; d="scan'208";a="487069746"
Received: from rvanakke-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.40.173])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 11:27:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
In-Reply-To: <20210707181325.2130821-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210707181325.2130821-1-lucas.demarchi@intel.com>
Date: Wed, 07 Jul 2021 21:27:14 +0300
Message-ID: <87k0m26ku5.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/3] drm/i915: Nuke GEN macros
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
Cc: Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 07 Jul 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> Finish the conversion to the new VER macros and nuke the old macros so
> we don't have more changes sneaking in.
>
> Initially I thought about waiting for a backmerge from drm-next in
> drm-intel-next so I could use a topic branch to finish the conversion
> and nuke the macro, merging the topic branch in both drm-intel-next and
> drm-intel-gt-next. After the backmerge landed, I realized that would not
> be possible anymore as we already have changes on top preventing the
> merge-base to be used for a topic branch.
>
> Therefore the plan is:
> 	- Apply patch 1 in drm-intel-gt-next
> 	- Apply patches 2 and 3 in drm-intel-next
>
> Since patches are tested on drm-tip, CI should flag a build breakage if
> someone uses the GEN macros. Another possibility is to simply apply the
> 3rd patch on both branches, but I don't see a real need for that.

Acked-by: Jani Nikula <jani.nikula@intel.com>


>
> Lucas De Marchi (3):
>   drm/i915/gt: finish INTEL_GEN and friends conversion
>   drm/i915: finish INTEL_GEN and friends conversion
>   gpu/drm/i915: nuke old GEN macros
>
>  .../drm/i915/display/intel_display_debugfs.c  |  3 ++-
>  drivers/gpu/drm/i915/gt/intel_migrate.c       | 20 +++++++++----------
>  drivers/gpu/drm/i915/i915_debugfs.c           |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h               | 15 --------------
>  drivers/gpu/drm/i915/intel_uncore.c           |  2 +-
>  5 files changed, 14 insertions(+), 28 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
