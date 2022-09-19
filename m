Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DC25BD55D
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 21:48:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F29D10E101;
	Mon, 19 Sep 2022 19:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A202310E10C
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 19:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663616899; x=1695152899;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ScRoFSIoJBQbPApPVns64VNNiH5H7MC0sc2yIIEh7AM=;
 b=gmPm51t1UcgbIIFjU1bLr/tVoKfuFeg87LMPX4sUisT2ADR0CAEs8Rxa
 1tXyUX12+RoLPAey98LWWNjOCRAZTGQFekAH3g7RRcRs9pC0adaR5BRWL
 n8X19ynU9A1WQYzYiYAe2TzGiHYvDWJ4wqPjDtLIG0TNubztHSGbxLo3b
 HS2krTsUOtdFtDUHvblsTPc5jNGPtLN/PBllb0x1WxhE4VZTUHs1I4YWE
 bD1S4UIzFCVrwr4HKz8sBvQ2pYQgwS8rfGEuKViSexchZwWNuINkHUM1z
 tQOQnQfxDUPjjRlqYYqUUo3Cufq+7Xck0mJBw1Vws86eSlWsw/Ow/A+Yj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="385795744"
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="385795744"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 12:48:19 -0700
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="687113908"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 12:48:18 -0700
Date: Mon, 19 Sep 2022 12:48:39 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20220919194839.GB1061693@mdnavare-mobl1.jf.intel.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220917004404.414981-1-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/6] Introduce struct cdclk_step
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Please find the review commenst for the respective patches.
Also as a general rule, please add/ copy all folks nvolved in offline 
discussions/ triage help in order to accelerate reviews and get feedback
from all.

Manasi

On Fri, Sep 16, 2022 at 05:43:58PM -0700, Anusha Srivatsa wrote:
> This is a prep series for the actual cdclk refactoring
> that will be sent following this. Idea is to have a
> struct - cdclk_step that holds the following:
> - cdclk action (squash, crawl or modeset)
> - cdclk frequency
> which gets populated in atomic check. Driver
> uses the populated values during atomic commit
> to do the suitable sequence of actions like
> programming squash ctl registers in case of squashing
> or PLL sequence incase of modeset and so on.
> 
> This series just addresses the initial idea. The actual plumming
> in the atomic commit phase will be sent shortly.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Anusha Srivatsa (6):
>   drm/i915/display Add dg2_prog_squash_ctl() helper
>   drm/i915/display: add cdclk action struct to cdclk_config
>   drm/i915/display: Embed the new struct steps for squashing
>   drm/i915/display: Embed the new struct steps for crawling
>   drm/i915/display: Embed the new struct steps for modeset
>   drm/i915/display: Dump the new cdclk config values
> 
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 77 +++++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_cdclk.h | 16 ++++-
>  2 files changed, 74 insertions(+), 19 deletions(-)
> 
> -- 
> 2.25.1
> 
