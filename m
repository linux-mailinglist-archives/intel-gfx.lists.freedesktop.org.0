Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16963A207AF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 10:51:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0911310E633;
	Tue, 28 Jan 2025 09:51:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bntE1TpP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03B3E10E63B;
 Tue, 28 Jan 2025 09:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738057860; x=1769593860;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Iu3AO+UrlqFk5Kv5JuEqsK0QZjFQslGkKAyjgvcVzPo=;
 b=bntE1TpPhPrV0q1EGu62s9KRCTeeXEG7r+hCvWDQVa90qhI+GOfxLO3u
 0eg8ZI5zO+uE6MzIvEbiae83JTtlJD+DxxGGo9x9rJF8Gv/PtojhqNHcX
 7ltH/JyKki+YTfcsLB52zLSHr/rkbJS/R/A27rX/kWWHR0dyy4SSppHLm
 dKBnHFVzB9EeXQUNAcr0Ml8mzSYDWeLWjwf/bkN1wUfei+Fpjf0eFEJ9n
 6qh2H0iAHBA+VOI1UUJju9Z5z5SiEQ4KH8Hz6KF9i9mIDr3G+qkl/Q8jU
 R2nU4kGIgTlumYMD3ngRZMNLFg3CFa6qZOpOw5a9plwjN7wM3hle0TSss w==;
X-CSE-ConnectionGUID: Sxz0p2SyRsmFRwwIgYOl9A==
X-CSE-MsgGUID: U99kaWAiRN+hAgTB1zZRqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38673590"
X-IronPort-AV: E=Sophos;i="6.13,240,1732608000"; d="scan'208";a="38673590"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 01:51:00 -0800
X-CSE-ConnectionGUID: Q53XSHz+TVmBsizV4z5+/w==
X-CSE-MsgGUID: 3SCVT27vQyap1prtdLW5pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,240,1732608000"; d="scan'208";a="108660381"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.130])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 01:50:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915: Give i915 and xe each their own display
 tracepoints
In-Reply-To: <CH0PR11MB54445354D7CADC3046E2905EE5EC2@CH0PR11MB5444.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250127213055.640-1-ville.syrjala@linux.intel.com>
 <CH0PR11MB54445354D7CADC3046E2905EE5EC2@CH0PR11MB5444.namprd11.prod.outlook.com>
Date: Tue, 28 Jan 2025 11:50:54 +0200
Message-ID: <87ed0n9sht.fsf@intel.com>
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

On Mon, 27 Jan 2025, "Cavitt, Jonathan" <jonathan.cavitt@intel.com> wrote:
> Though it would probably be good to file an issue report detailing
> the issue this fixes, then mark this patch as having fixed that
> reported issue.

While I occasionally do request that when we get patches out of left
field, and I want to ensure we have a full understanding of the problem,
please let's not add extra hurdles for ourselves for fixing stuff.


BR,
Jani.


-- 
Jani Nikula, Intel
