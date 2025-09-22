Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D456CB8FA8D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 10:55:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2438F10E3F5;
	Mon, 22 Sep 2025 08:55:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lv/UXQuc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B73E10E36E;
 Mon, 22 Sep 2025 08:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758531317; x=1790067317;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=NBDo0QmlQVbP44KEwoVFN0nze+EJGOjw4Nf1DxaPEYk=;
 b=lv/UXQucWUFr3jBv1V6kSPZZFAcAaW6dvihT/VnIUsK43qg2Ys+13LnH
 +TU4B+qNQ0O3VaeGSCAbhfOkBXiAA1L+/32dFMRcUwuhFp5UaU+P6fs+z
 x7E1n1L4lmmoBMo6jtOGXXCDeNzzo8Bnww92e+LVVMlHYviu7dkWGDgap
 0//ztlOBxshbes/m2n+GfbUf6DDnGflXvoQwLUL6v0oXkMtYJSmGKKZSz
 JF44kiwj/Bj9P5b4eBs5Wkt26l67LUCuSD343JClKk+6pNfDPtuDklk7v
 VS4hzH2QwAhADp4dqCWKWu1dSwcti19E1vkLw6riMy3XnDlJypWkbMQSI Q==;
X-CSE-ConnectionGUID: C+twlC5vSbanw2NUte2sNg==
X-CSE-MsgGUID: FdT7pRenRuCVSaYx3xbgQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11560"; a="60846638"
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="60846638"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 01:55:17 -0700
X-CSE-ConnectionGUID: CzAKUutmSMeY4x4tkDABqw==
X-CSE-MsgGUID: L9xkHdKGSdqSZvYc64zgQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="176494141"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.61])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 01:55:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH v2 2/3] drm/i915/display: Add definition for wcl as
 subplatform
In-Reply-To: <175831397551.1987.9539609696117964896@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250919162233.1624905-1-dnyaneshwar.bhadane@intel.com>
 <20250919162233.1624905-3-dnyaneshwar.bhadane@intel.com>
 <175831397551.1987.9539609696117964896@intel.com>
Date: Mon, 22 Sep 2025 11:55:12 +0300
Message-ID: <06444849ae706b5463c7789ac8acd7d288095a35@intel.com>
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

On Fri, 19 Sep 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Dnyaneshwar Bhadane (2025-09-19 13:22:32-03:00)
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>>index a9a36176096f..84aa6b6384da 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_device.c
>>+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>>@@ -1379,6 +1379,11 @@ static const u16 mtl_u_ids[] = {
>>         0
>> };
>> 
>>+static const u16 wcl_ids[] = {
>>+        INTEL_WCL_IDS(ID),
>>+        0
>>+};
>>+
>
> To be consistent with the other subplatform device id lists, we probably
> want to move this to be just before the definition of ptl_desc.

Yeah, mtl_u_ids[] is already misplaced.


-- 
Jani Nikula, Intel
