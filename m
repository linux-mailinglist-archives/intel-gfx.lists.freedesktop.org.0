Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD055A13C23
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 15:26:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A44F10E984;
	Thu, 16 Jan 2025 14:26:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h+4eDW5W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 784A910E986;
 Thu, 16 Jan 2025 14:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737037598; x=1768573598;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1qkZKYmO6vP1SsNvTBs61jAbmVfmY36zLSsS4OTIjsc=;
 b=h+4eDW5Wtc8AtJ2IxIyv2MbNXikC9pS2mdrEZDOiIp6h1c/ATNR7NRaJ
 akFPjqK7auUJZeXbivsGPOLPHvHjtnssY/npv8EGJsBMzoPiWUrfonQe6
 7bXP7NOhMyUeeoT2YQsqYjs+Np6JR/4gLU0fG1mE7eRt1lhtvEf1buKBg
 OYm6Tr6NSUQApvB5hg0X8qDTcYRYErnPIkM3PyRm0+OUSHweWemJklmTi
 r9IBdtFzkQdHAmonVOERtYgvmqLHeyxIfoMWWB6QGQJp1G6J41RsVaqp1
 mnYD/E5k53WHNPDGwKhO1UUXAJlAHAe7YR3J054QJoStsvxF5zxpXHzYJ Q==;
X-CSE-ConnectionGUID: ZvMyJt1hTfuQHf3d0SmF9A==
X-CSE-MsgGUID: AfQ0P0ayQ9uNmeg+1CMkkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="37541898"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37541898"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 06:26:38 -0800
X-CSE-ConnectionGUID: LUJoLFQiR+6hOajXdZVGRg==
X-CSE-MsgGUID: OlZso482TOyEiAlTqk2SnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="142776958"
Received: from puneetse-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.125.109.57])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 06:26:38 -0800
Date: Thu, 16 Jan 2025 08:26:36 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Francois Dugast <francois.dugast@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 jani.nikula@intel.com
Subject: Re: [PATCH] drm/xe: Add missing SPDX license identifiers
Message-ID: <u7wm5gyzznr7obtgmnrnafh4lliyqgxvx5umg6o2iqxmxscc5j@wnctmzdwxk7t>
References: <20250116124532.1480351-1-francois.dugast@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250116124532.1480351-1-francois.dugast@intel.com>
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

On Thu, Jan 16, 2025 at 01:45:32PM +0100, Francois Dugast wrote:
>Ensure all Xe driver files have a proper SPDX license identifier, add it
>in files where it was missing.
>
>Signed-off-by: Francois Dugast <francois.dugast@intel.com>
>---
> drivers/gpu/drm/xe/Kconfig.profile                           | 1 +
> drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h | 5 +++++
> 2 files changed, 6 insertions(+)
>
>diff --git a/drivers/gpu/drm/xe/Kconfig.profile b/drivers/gpu/drm/xe/Kconfig.profile
>index ba17a25e8db3..7530df998148 100644
>--- a/drivers/gpu/drm/xe/Kconfig.profile
>+++ b/drivers/gpu/drm/xe/Kconfig.profile
>@@ -1,3 +1,4 @@
>+# SPDX-License-Identifier: GPL-2.0-only
> config DRM_XE_JOB_TIMEOUT_MAX
> 	int "Default max job timeout (ms)"
> 	default 10000 # milliseconds
>diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
>index cb6c7598824b..a1ff59288a3d 100644
>--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
>+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
>@@ -1,3 +1,8 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright © 2024 Intel Corporation

		^2025

otherwise,  Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>+ */
>+
> #ifndef _I915_GEM_STOLEN_H_
> #define _I915_GEM_STOLEN_H_
>
>-- 
>2.43.0
>
