Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D069C8AA3D3
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 22:09:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 414D911380B;
	Thu, 18 Apr 2024 20:09:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nVMv1QlC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 913A21132FB;
 Thu, 18 Apr 2024 20:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713470952; x=1745006952;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=j3NTUcpqXZyh7BqMnM5LQCBIw4TM0k1+k2MCiUWObkw=;
 b=nVMv1QlC7zAPltg7zoDq1dHFws5h1gQu3aYatiKTjh2KBa32G0ROM0BG
 bTw/AQW+aSOUDyUiiH4g369BoDmRPHpjvaaE4LOxHKDX/hutWWZmyIdRE
 TY+3Mys1jySvUPgkgM7X6rZJKCV/Jvg06+wAHbFksEIVIwUq/lro7Q+d9
 xmEpTsTkIffynEe0hEb3spC0En1lee9f882CuO2lMpcorwo8HPrnvv56f
 8GrdFbx+XVVAconBhXptUQgqkGkullKdn/BZAb5bFzsvh4bbfroVLugPu
 dHtDtQliMu0+8QT00jMbirEgvc8wlt13uk2pThlrcYjHBqX0Nt+XPa23W A==;
X-CSE-ConnectionGUID: a/qBHylASmq1/W4oISuIgQ==
X-CSE-MsgGUID: JkX3cNuOTAiGcE1q2p1MZw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8880676"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="8880676"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 13:09:11 -0700
X-CSE-ConnectionGUID: 8KjkpvYZRa6lzitEl6Aj2Q==
X-CSE-MsgGUID: oAxW4os8Sy2efEQVYLorcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="60522767"
Received: from msundstr-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.212])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 13:09:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Subject: Re: [PATCH 4/5] drm/i915/dmc: change meaning of
 dmc_firmware_path="" module param
In-Reply-To: <171346797884.2007.8763877365097656146@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1713450693.git.jani.nikula@intel.com>
 <f88657c63d698d339a7a1079f6c428ba9e6b6b06.1713450693.git.jani.nikula@intel.com>
 <171346797884.2007.8763877365097656146@gjsousa-mobl2>
Date: Thu, 18 Apr 2024 23:09:04 +0300
Message-ID: <87frviwhzz.fsf@intel.com>
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
> Quoting Jani Nikula (2024-04-18 11:39:53-03:00)
>>The distinction between the dmc_firmware_path module param being NULL
>>and the empty string "" is problematic. It's not possible to set the
>>parameter back to NULL via sysfs or debugfs. Remove the distinction, and
>>consider NULL and the empty string to be the same thing, and use the
>>platform default for them.
>>
>>This removes the possibility to disable DMC (and runtime PM) via
>>i915.dmc_firmware_path="". Instead, you will need to specify a
>>non-existent file or a file that will not parse correctly.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_dmc.c | 20 ++++++++++----------
>> drivers/gpu/drm/i915/i915_params.c       |  3 ++-
>> 2 files changed, 12 insertions(+), 11 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>>index 740c05ce83cc..3e510c2be1eb 100644
>>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>@@ -73,6 +73,13 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
>>         return i915->display.dmc.dmc;
>> }
>> 
>>+static const char *dmc_firmware_param(struct drm_i915_private *i915)
>>+{
>>+        const char *p = i915->params.dmc_firmware_path;
>>+
>>+        return p && *p ? p : NULL;
>>+}
>>+
>> #define DMC_VERSION(major, minor)        ((major) << 16 | (minor))
>> #define DMC_VERSION_MAJOR(version)        ((version) >> 16)
>> #define DMC_VERSION_MINOR(version)        ((version) & 0xffff)
>>@@ -989,7 +996,7 @@ static void dmc_load_work_fn(struct work_struct *work)
>> 
>>         err = request_firmware(&fw, dmc->fw_path, i915->drm.dev);
>> 
>>-        if (err == -ENOENT && !i915->params.dmc_firmware_path) {
>>+        if (err == -ENOENT && !dmc_firmware_param(i915)) {
>>                 fallback_path = dmc_fallback_path(i915);
>>                 if (fallback_path) {
>>                         drm_dbg_kms(&i915->drm, "%s not found, falling back to %s\n",
>>@@ -1062,15 +1069,8 @@ void intel_dmc_init(struct drm_i915_private *i915)
>> 
>>         dmc->fw_path = dmc_firmware_default(i915, &dmc->max_fw_size);
>> 
>>-        if (i915->params.dmc_firmware_path) {
>>-                if (strlen(i915->params.dmc_firmware_path) == 0) {
>>-                        drm_info(&i915->drm,
>>-                                 "Disabling DMC firmware and runtime PM\n");
>>-                        goto out;
>>-                }
>>-
>>-                dmc->fw_path = i915->params.dmc_firmware_path;
>>-        }
>>+        if (dmc_firmware_param(i915))
>>+                dmc->fw_path = dmc_firmware_param(i915);
>> 
>>         if (!dmc->fw_path) {
>>                 drm_dbg_kms(&i915->drm,
>>diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
>>index de43048543e8..9e7f2a9f6287 100644
>>--- a/drivers/gpu/drm/i915/i915_params.c
>>+++ b/drivers/gpu/drm/i915/i915_params.c
>>@@ -109,7 +109,8 @@ i915_param_named_unsafe(huc_firmware_path, charp, 0400,
>>         "HuC firmware path to use instead of the default one");
>> 
>> i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
>>-        "DMC firmware path to use instead of the default one");
>>+        "DMC firmware path to use instead of the default one. "
>>+        "Use non-existent file to disable DMC and runtime PM.");
>
> Okay. But is it too bad to have a magic string for it? The up side is
> that there wouldn't be error messages in the log if we had such option.

Another upside is that we could also just skip requesting the firmware
altogether, similar to what we have currently.

It's just a small naming problem... what should the magic string for
"disabled" be? Like, yes, that's the obvious choice right there, but
it's also a valid filename. Who am I to say how people should name their
firmware blobs. :)

"/dev/null"?


BR,
Jani.



>
> --
> Gustavo Sousa
>
>> 
>> i915_param_named_unsafe(gsc_firmware_path, charp, 0400,
>>         "GSC firmware path to use instead of the default one");
>>-- 
>>2.39.2
>>

-- 
Jani Nikula, Intel
