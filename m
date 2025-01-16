Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B23EBA13FD5
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 17:50:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E264010E9DD;
	Thu, 16 Jan 2025 16:50:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eu4747eB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64E5C10E9DA;
 Thu, 16 Jan 2025 16:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737046215; x=1768582215;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=o7UsHnYBIRdbllO5norRuIugAMthbBOvuF7EjYJLAR8=;
 b=eu4747eBKbol+aG04wHCWI4pyQ6ktzXK79Yzl/pcoD/+DqUSBO9QZsW0
 4amv0uWJRH+vsfKU62ZIklF1AHfJV8v8czgym63p6EfRa6NDKl0o5QJ+P
 rnzaSdOKCg64cfaQ8/xbBQYhpqRdBLC7N85sots/dcsMgbNR8+hjXPfcb
 UeJnp+27I7ByNcSQQrpLiqsbeucDUlUHIblgNKtPTBPMAIyFaXz5DJVzJ
 npQZ2HzroYKyZBTiWs+E4sNQ8fFLjbYxBNmIVUWBYvwEE1256bGkZ2Hqf
 /SygzUitQtYsBwFz2EOIxrTb2sO8Rbaj73vCpgZKRW0aHH2gvsdnOpCUN A==;
X-CSE-ConnectionGUID: 03976NEnR46Qpxs1PAPk8g==
X-CSE-MsgGUID: Fh5MID5tT+aAiKKqrIGzaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="48841046"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="48841046"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 08:50:15 -0800
X-CSE-ConnectionGUID: JQbQv2AGTUK6UBDj1GVo0Q==
X-CSE-MsgGUID: 0OMyb9Z6TqSj5VDqSnA8tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="110550684"
Received: from ldmartin-desk2.corp.intel.com (HELO ldmartin-desk2)
 ([10.125.109.57])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 08:50:14 -0800
Date: Thu, 16 Jan 2025 10:50:14 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Francois Dugast <francois.dugast@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 jani.nikula@intel.com
Subject: Re: [PATCH] drm/xe: Add missing SPDX license identifiers
Message-ID: <a77sxupwyrdxzqqf6fkzi2ag4ivounyljdqan3o6crztgs3ssc@27uwncpb6crq>
References: <20250116124532.1480351-1-francois.dugast@intel.com>
 <u7wm5gyzznr7obtgmnrnafh4lliyqgxvx5umg6o2iqxmxscc5j@wnctmzdwxk7t>
 <Z4kYG7ZFE71cLBZw@fdugast-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z4kYG7ZFE71cLBZw@fdugast-desk>
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

On Thu, Jan 16, 2025 at 03:30:51PM +0100, Francois Dugast wrote:
>On Thu, Jan 16, 2025 at 08:26:36AM -0600, Lucas De Marchi wrote:
>> On Thu, Jan 16, 2025 at 01:45:32PM +0100, Francois Dugast wrote:
>> > Ensure all Xe driver files have a proper SPDX license identifier, add it
>> > in files where it was missing.
>> >
>> > Signed-off-by: Francois Dugast <francois.dugast@intel.com>
>> > ---
>> > drivers/gpu/drm/xe/Kconfig.profile                           | 1 +
>> > drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h | 5 +++++
>> > 2 files changed, 6 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/xe/Kconfig.profile b/drivers/gpu/drm/xe/Kconfig.profile
>> > index ba17a25e8db3..7530df998148 100644
>> > --- a/drivers/gpu/drm/xe/Kconfig.profile
>> > +++ b/drivers/gpu/drm/xe/Kconfig.profile
>> > @@ -1,3 +1,4 @@
>> > +# SPDX-License-Identifier: GPL-2.0-only
>> > config DRM_XE_JOB_TIMEOUT_MAX
>> > 	int "Default max job timeout (ms)"
>> > 	default 10000 # milliseconds
>> > diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
>> > index cb6c7598824b..a1ff59288a3d 100644
>> > --- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
>> > +++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
>> > @@ -1,3 +1,8 @@
>> > +/* SPDX-License-Identifier: MIT */
>> > +/*
>> > + * Copyright © 2024 Intel Corporation
>>
>> 		^2025
>>
>> otherwise,  Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>As this should have been there since initial commit, should we not use
>year of file creation according to git log, rather than current year?

Good point. It matches what was done in other commits tweaking the line
.e.g b96f16bdf58da and seems indeed to be the right thing to do.

Lucas De Marchi

>
>Francois
>
>>
>> Lucas De Marchi
>>
>> > + */
>> > +
>> > #ifndef _I915_GEM_STOLEN_H_
>> > #define _I915_GEM_STOLEN_H_
>> >
>> > --
>> > 2.43.0
>> >
