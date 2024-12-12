Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B41E39EE163
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 09:36:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D62610ECF5;
	Thu, 12 Dec 2024 08:36:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XTSRhhEA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F98B10ECF5
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2024 08:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733992568; x=1765528568;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6WlhYplmkYdaNSS6SwaS8WwIIlqgLq7VUM7t/aKEboI=;
 b=XTSRhhEADJOtoIkpIU+yaYx+oP+pi0z6QSPwgZ838nrsL9++rYtraqBG
 vaurO7dsTV+ntW2dqBMy9euBV08PQW0bxvqrXy1Y+dOk0e8akBVl/gKLS
 yfZNYDMRFyFbekaf3t5ko6kABK6o+IFhWEKO0Ht+bdMnq1EzviXp1stDm
 dmX9Tm789N+KJ5DhS5zZ+tAumBbfQ0/QtE6WFshQN16gCbYs/SxO95v6u
 2bZrO6pY+S4pH5n3XOJXuVKjdu9/VcTHLCmZ5POgLSuaNeZ7A536gWuFT
 rMv1BHvxVPTjwsyAwon0ouWEo8SOSiNeqJO6pzqYijP4Knji1HPI2KGrP w==;
X-CSE-ConnectionGUID: mWovRJRDS+q1xGJ3iU19wA==
X-CSE-MsgGUID: BqWnr/SsRYaa2QDdlY05ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="33728387"
X-IronPort-AV: E=Sophos;i="6.12,227,1728975600"; d="scan'208";a="33728387"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 00:36:07 -0800
X-CSE-ConnectionGUID: xrBoSkwPSkGyE0ZLcwatPA==
X-CSE-MsgGUID: SBvpUFUQRCWl6nxXbAfR1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96009330"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.79])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 00:36:04 -0800
Date: Thu, 12 Dec 2024 09:36:00 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, intel-gfx@lists.freedesktop.org,
 anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v4 0/4] Implement Wa_14022698537
Message-ID: <Z1qgcHImmUFB9SVi@ashyti-mobl2.lan>
References: <20241211115952.1659287-1-raag.jadav@intel.com>
 <Z1oi12-OwzLRGLoX@ashyti-mobl2.lan>
 <Z1pW-HyMsRdsWp2Y@black.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z1pW-HyMsRdsWp2Y@black.fi.intel.com>
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

Hi Raag,

On Thu, Dec 12, 2024 at 05:22:32AM +0200, Raag Jadav wrote:
> On Thu, Dec 12, 2024 at 12:40:07AM +0100, Andi Shyti wrote:
> > > Raag Jadav (4):
> > >   drm/intel/pciids: Refactor DG2 PCI IDs into segment ranges
> > >   drm/i915/dg2: Introduce DG2_D subplatform
> > >   drm/i915: Introduce intel_cpu_info.c for CPU IDs
> > >   drm/i915/dg2: Implement Wa_14022698537
> > 
> > merged to drm-intel-next.
> 
> Thanks, appreciate it.
> 
> Andy usually picks the cover letter as well, we don't do that here?

what do you mean with taking the cover letter?

For pushing the patch I use the dim tool and I feed it with the
cover letter's mbox file.

Andi
