Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C44A6EC14
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 10:03:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 663E010E51D;
	Tue, 25 Mar 2025 09:03:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kXqsdoUj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E295510E51D;
 Tue, 25 Mar 2025 09:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742893398; x=1774429398;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UvzxqcOL6OUkTtr4lFFzh6hnAD3fKjSDEzEco6HYaHk=;
 b=kXqsdoUjwEdQ2mtU6R/mXnh6fODolahLr4mcf2iwYsjPX+tpkrddPfSd
 jUY2U8eH+4eDbXza4q5ILxaALfA1OkB4Z/cS9GOBIt84c4Z6D5lado9Nc
 DtOQyqmEQXiSFDfFu4PReanyvLAGL/MAZkqR7za/nnV3YLqnsvistAZJ3
 6Sw2uh0F5jxYGh1fPoevaxx92r3x3JRRnNdZ0pZAkRTvYO8Q8/EDS6w4y
 pqfV/Llp/oF7jp98ZIblI7JCZeLy7aa+36b78VSaa4FeJfP8aRb8742BC
 fxR9Gc5YUZH8iNrOV3XDJ+y7WM8m8nLmsau1okHRWXJ99ntau0mVDR6Xh w==;
X-CSE-ConnectionGUID: ROaBJmrwRs2ihnUz1R2rnQ==
X-CSE-MsgGUID: Ji+IY+/GSVe3jjOdPEFuXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="46868686"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="46868686"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 02:03:17 -0700
X-CSE-ConnectionGUID: luqqJcHrQk6tUwGnEbb1tA==
X-CSE-MsgGUID: huEGemd5QLq1wid3od2j/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="125091586"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.134])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 02:03:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Vivek
 Kasireddy <vivek.kasireddy@intel.com>, stable@vger.kernel.org
Subject: Re: [PATCH v2] drm/i915/xe2hpd: Identify the memory type for SKUs
 with GDDR + ECC
In-Reply-To: <32lakxysapix2hgoh5e7n2b6zlv544nh6vcvmg6zllzjnlikmd@7k37w7pqy4p2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250324-tip-v2-1-38397de319f8@intel.com>
 <20250324200207.GN3175483@mdroper-desk1.amr.corp.intel.com>
 <32lakxysapix2hgoh5e7n2b6zlv544nh6vcvmg6zllzjnlikmd@7k37w7pqy4p2>
Date: Tue, 25 Mar 2025 11:03:13 +0200
Message-ID: <87bjtpa3e6.fsf@intel.com>
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

On Mon, 24 Mar 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Mon, Mar 24, 2025 at 01:02:07PM -0700, Matt Roper wrote:
>>On Mon, Mar 24, 2025 at 10:22:33AM -0700, Lucas De Marchi wrote:
>>> From: Vivek Kasireddy <vivek.kasireddy@intel.com>
>>>
>>> Some SKUs of Xe2_HPD platforms (such as BMG) have GDDR memory type
>>> with ECC enabled. We need to identify this scenario and add a new
>>> case in xelpdp_get_dram_info() to handle it. In addition, the
>>> derating value needs to be adjusted accordingly to compensate for
>>> the limited bandwidth.
>>>
>>> Bspec: 64602
>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> Fixes: 3adcf970dc7e ("drm/xe/bmg: Drop force_probe requirement")
>>> Cc: stable@vger.kernel.org

FYI, this does not cherry-pick cleanly to drm-intel-next-fixes, and
needs a backport.

There are dependencies on at least

4051c59e2a6a ("drm/i915/xe3lpd: Update bandwidth parameters")
9377c00cfdb5 ("drm/i915/display: Convert intel_bw.c internally to intel_display")
d706998b6da6 ("drm/i915/display: Convert intel_bw.c externally to intel_display")

but I don't think we want to backport those.

BR,
Jani.




>>> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
>>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>
>>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>
> Thanks. Patch pushed to drm-intel-next.
>
> Lucas De Marchi

-- 
Jani Nikula, Intel
