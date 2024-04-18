Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A578AA3A8
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 22:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A04C10E039;
	Thu, 18 Apr 2024 20:03:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NYGrb8Va";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 322B510E039;
 Thu, 18 Apr 2024 20:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713470611; x=1745006611;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=15XOW/rITwjbAHe9AZEDpcWXH3nAwUB8C+CMsz7RpR8=;
 b=NYGrb8VaJ71JI2okiUPj440RAG4U1Kqk5rc4s07X5h0BiWNcB3eSGAvL
 /3X8xacWA42X5YX7ZjXcJT/LLP/0PB8Dv0tZVlLPERuaUyy/eJxGv5LXg
 pRnUKNOyzvRUAtErs/7jIYenwJGlznU8dPj09I3rnuNxdKvmHhI49pYFw
 4qsJjuYnN+GbonyuY3dru1VlwO0Wls7oy/B+TTjf69BALt22NUoCo7A8E
 eeKl5okwnw4JL9pcbfnEMCbpCbVvzi0MbRMCh/RzB5u9NFEfBzHVSgjpa
 WUpc/Ojkb7OW06wJfzTqrhqSN/QhmT3iayt/E6z3pEUMW5GH9x5/sQ93Z Q==;
X-CSE-ConnectionGUID: cHDloukhTQ2M6O0yl0HymQ==
X-CSE-MsgGUID: sG+7WxiuShGdl2IJHzc7Hg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9217349"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="9217349"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 13:03:29 -0700
X-CSE-ConnectionGUID: g3jnKtxfTAGBVtFq+GVn1g==
X-CSE-MsgGUID: okwec3jCQ2O/2XLgiPMvwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23076117"
Received: from msundstr-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.212])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 13:03:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Subject: Re: [PATCH 2/5] drm/i915/dmc: improve firmware parse failure
 propagation
In-Reply-To: <171346641545.2007.10117149787974036842@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1713450693.git.jani.nikula@intel.com>
 <08137052f324f47f9ca9aadfc5bdf915a17bfd06.1713450693.git.jani.nikula@intel.com>
 <171346641545.2007.10117149787974036842@gjsousa-mobl2>
Date: Thu, 18 Apr 2024 23:03:22 +0300
Message-ID: <87il0ewi9h.fsf@intel.com>
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

On Thu, 18 Apr 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2024-04-18 11:39:51-03:00)
>>Return failures from parse_dmc_fw() instead of relying on
>>intel_dmc_has_payload(). Handle and error report them slightly better.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_dmc.c | 39 +++++++++++++-----------
>> 1 file changed, 22 insertions(+), 17 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>>index 65880dea9c15..ee5db1aafd50 100644
>>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>@@ -853,7 +853,7 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
>>         return sizeof(struct intel_css_header);
>> }
>> 
>>-static void parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
>>+static int parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
>> {
>>         struct drm_i915_private *i915 = dmc->i915;
>>         struct intel_css_header *css_header;
>>@@ -866,13 +866,13 @@ static void parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
>>         u32 r, offset;
>> 
>>         if (!fw)
>>-                return;
>>+                return -EINVAL;
>> 
>>         /* Extract CSS Header information */
>>         css_header = (struct intel_css_header *)fw->data;
>>         r = parse_dmc_fw_css(dmc, css_header, fw->size);
>>         if (!r)
>>-                return;
>>+                return -EINVAL;
>> 
>>         readcount += r;
>> 
>>@@ -880,7 +880,7 @@ static void parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
>>         package_header = (struct intel_package_header *)&fw->data[readcount];
>>         r = parse_dmc_fw_package(dmc, package_header, si, fw->size - readcount);
>>         if (!r)
>>-                return;
>>+                return -EINVAL;
>> 
>>         readcount += r;
>> 
>>@@ -897,6 +897,11 @@ static void parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
>>                 dmc_header = (struct intel_dmc_header_base *)&fw->data[offset];
>>                 parse_dmc_fw_header(dmc, dmc_header, fw->size - offset, dmc_id);
>>         }
>>+
>>+        if (!intel_dmc_has_payload(i915))
>>+                return -ENOENT;
>
> This function and also the parsing helpers (parse_dmc_fw_*) already have
> the pattern of providing error messages for issues found. We could maybe
> have parse_dmc_fw() simply returning -1 for errors here.

I've become increasingly opposed to the magic -1 error return in the
kernel. Basically all negative error codes have a meaning, and -1 is
-EPERM. (I even have a branch converting a bunch of "return -1" to
something more meaningful.)

But I guess -1 wasn't really the main point about your comment anyway.

> For this specific condition (!intel_dmc_has_payload(i915)), we could
> complain that there the main DMC program was not found before returning.

Agreed.

> I think ENOENT might confuse users.

So would you rather just skip printing the error code returned by
parse_dmc_fw()? I take it this was really the main point?

BR,
Jani.


>
> --
> Gustavo Sousa
>
>>+
>>+        return 0;
>> }
>> 
>> static void intel_dmc_runtime_pm_get(struct drm_i915_private *i915)
>>@@ -951,22 +956,22 @@ static void dmc_load_work_fn(struct work_struct *work)
>>                 return;
>>         }
>> 
>>-        parse_dmc_fw(dmc, fw);
>>-
>>-        if (intel_dmc_has_payload(i915)) {
>>-                intel_dmc_load_program(i915);
>>-                intel_dmc_runtime_pm_put(i915);
>>-
>>-                drm_info(&i915->drm, "Finished loading DMC firmware %s (v%u.%u)\n",
>>-                         dmc->fw_path, DMC_VERSION_MAJOR(dmc->version),
>>-                         DMC_VERSION_MINOR(dmc->version));
>>-        } else {
>>+        err = parse_dmc_fw(dmc, fw);
>>+        if (err) {
>>                 drm_notice(&i915->drm,
>>-                           "Failed to load DMC firmware %s."
>>-                           " Disabling runtime power management.\n",
>>-                           dmc->fw_path);
>>+                           "Failed to parse DMC firmware %s (%pe). Disabling runtime power management.\n",
>>+                           dmc->fw_path, ERR_PTR(err));
>>+                goto out;
>>         }
>> 
>>+        intel_dmc_load_program(i915);
>>+        intel_dmc_runtime_pm_put(i915);
>>+
>>+        drm_info(&i915->drm, "Finished loading DMC firmware %s (v%u.%u)\n",
>>+                 dmc->fw_path, DMC_VERSION_MAJOR(dmc->version),
>>+                 DMC_VERSION_MINOR(dmc->version));
>>+
>>+out:
>>         release_firmware(fw);
>> }
>> 
>>-- 
>>2.39.2
>>

-- 
Jani Nikula, Intel
