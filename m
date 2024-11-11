Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DA89C3AC2
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:20:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 287DC10E44A;
	Mon, 11 Nov 2024 09:20:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Iz72NJ5R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C37BB10E1C8;
 Mon, 11 Nov 2024 09:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316850; x=1762852850;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=RGc1SS3lm2asaj6Vy6zs8wIo7/m4Km+vkLkx35RnrGY=;
 b=Iz72NJ5RGtCdzcqMUsZozTBeW45bTLA+W7h3pTPe3xII0QyUDrCQ2N4v
 lvqefVKeZRBqZXLFcPZrONLeYH/ZsGMGkq7qR/r1Q0EHT8yVeZsIoxC7G
 DQ9RXeoIfnrZR27CT1eQPA+T6dFIbspYywOiavhI8ooWrde944d2aAzit
 0aOsGB+fh2KO/iRv3FvvrWi3l9oCgpDzoZ+yCPceC0C76hEx7JeIiUizA
 ULEblG139mO3ynjkF1Z4woBN8XRFugQyDimu17XXrFBIBBLQwwyj879IQ
 U7nqgK6HvYT8Yv/4r5DUhHKYP+Gbn6GZpJlPyR7MJuPSyvROfoJGG5LgQ A==;
X-CSE-ConnectionGUID: Z3bMUGV8SuO+hMVvNZkq5w==
X-CSE-MsgGUID: h2Q/8W/DR2yDS6AYQN/Upw==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="31213596"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="31213596"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:20:49 -0800
X-CSE-ConnectionGUID: jayIRjZSSxGTkgI/aoOuUw==
X-CSE-MsgGUID: bj7SeBbvQ7SbCwCTjq1GzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="91767026"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.75])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:20:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org,
 I915-ci-infra@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: =?utf-8?Q?=E2=9C=93?= Fi.CI.IGT: success for drm/i915/dmc_wl:
 Fixes and enablement for Xe3_LPD (rev4)
In-Reply-To: <20241108180821.GU4891@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241108130218.24125-1-gustavo.sousa@intel.com>
 <173107953029.1426848.2416792718594299210@2413ebb6fbb6>
 <20241108180821.GU4891@mdroper-desk1.amr.corp.intel.com>
Date: Mon, 11 Nov 2024 11:20:44 +0200
Message-ID: <87r07icej7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 08 Nov 2024, Matt Roper <matthew.d.roper@intel.com> wrote:
> Although I just realized I confused the i915 results with the Xe results
> and the full Xe run is still going...woops.  Xe BAT was fine, but if it
> turns out there's a problem with the full Xe shard run, we can deal with
> that once we see the results.

I think the CI messaging should have more clarity on what's being run.

Fi.CI.BAT vs. CI.BAT and Fi.CI.IGT vs. CI.FULL.

You just have to know "Fi" means i915 and lack of it means xe.


BR,
Jani.

-- 
Jani Nikula, Intel
