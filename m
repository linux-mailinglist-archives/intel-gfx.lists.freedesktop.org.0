Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E3B89B9B2
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 10:08:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CE6910E0C1;
	Mon,  8 Apr 2024 08:08:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S9p5xxWE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81469112239;
 Mon,  8 Apr 2024 08:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712563686; x=1744099686;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rGneWe+OdaC4FnfcvDpkq11V8zlVTZTmUlhJkUZwhNc=;
 b=S9p5xxWE+1gmWOo1+wkAqojoJ4aNwkJkX5aZLq87WWizrGjt0f7fDKhv
 E4+UFOM+Ev94LJ8wTQ712CrmVTCP5Nm0MQ5Hz2B487Z/owBP7JBn3hfiO
 c6hCu/bek0YFxYZzmp4BXnCC2qRES0uLJhutoGaHyPAatnO8t4zkboWb9
 hCvnLSXOS0q3dkijpLQbGqikVfl87P5RLHc/V1Uo8evKtGfX9TnVpwRvO
 q7SiB2fyUpg6P8YyOndWiMXViWbzo63zerugPJTiqnX0AHnF8r13Zo/Oe
 Gk1+5UrG/zzCXgzk4DoWidsE3U8s25x0Oh6r4pNHpEE35iPpb7o/OoxgX g==;
X-CSE-ConnectionGUID: WrlnYMnBTo2P64fdrie+/w==
X-CSE-MsgGUID: HlqD3HsiQ9qHsWYOBiROUQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="25327364"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="25327364"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 01:08:05 -0700
X-CSE-ConnectionGUID: ah9xejhPRpOuebc0/WazNw==
X-CSE-MsgGUID: XXyL/sxLSZySiDpD9HCpsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24583173"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 01:08:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/6] drm/i915 and drm/xe display integration cleanups
In-Reply-To: <ba7nesmtctmqypdwnnjyffh7x7ibewnqpoim2cuoawqp2nolb3@mrfm3h3rxaao>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1712345787.git.jani.nikula@intel.com>
 <ba7nesmtctmqypdwnnjyffh7x7ibewnqpoim2cuoawqp2nolb3@mrfm3h3rxaao>
Date: Mon, 08 Apr 2024 11:07:59 +0300
Message-ID: <87il0sb7kw.fsf@intel.com>
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

On Fri, 05 Apr 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Fri, Apr 05, 2024 at 10:37:37PM +0300, Jani Nikula wrote:
>>Some cleanups on i915 side, and subsequent cleanups on xe side. I'd like
>>to merge all of these via drm-intel-next.
>
> For the entire series:
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
> and ack on merging via drm-intel-next.

Thanks, pushed to drm-intel-next. I think the firwmare url stuff can be
sorted later.

There were some CI failures, but there are really no functional changes
here, it should all have failed at build time.

BR,
Jani.

>
> Lucas De Marchi
>
>>
>>BR,
>>Jani.
>>
>>Jani Nikula (6):
>>  drm/i915: use IS_JASPERLAKE()/IS_ELKHARTLAKE() instead of
>>    IS_PLATFORM()
>>  drm/i915/dmc: define firmware URL locally
>>  drm/i915: move i915_fixed.h to display/intel_fixed.h
>>  drm/xe/display: clean up a lot of cruft from compat i915_drv.h
>>  drm/xe/display: remove compat i915_gem.h
>>  drm/xe/display: clean up compat i915_vgpu.h
>>
>> .../drm/i915/display/intel_ddi_buf_trans.c    |  4 +--
>> drivers/gpu/drm/i915/display/intel_dmc.c      |  4 ++-
>> .../{i915_fixed.h => display/intel_fixed.h}   |  0
>> drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
>> .../gpu/drm/xe/compat-i915-headers/i915_drv.h | 34 -------------------
>> .../drm/xe/compat-i915-headers/i915_fixed.h   |  6 ----
>> .../gpu/drm/xe/compat-i915-headers/i915_gem.h |  9 -----
>> .../drm/xe/compat-i915-headers/i915_vgpu.h    | 26 --------------
>> .../drm/xe/compat-i915-headers/intel_uc_fw.h  | 11 ------
>> 9 files changed, 6 insertions(+), 90 deletions(-)
>> rename drivers/gpu/drm/i915/{i915_fixed.h => display/intel_fixed.h} (100%)
>> delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_fixed.h
>> delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_gem.h
>> delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h
>>
>>-- 
>>2.39.2
>>

-- 
Jani Nikula, Intel
