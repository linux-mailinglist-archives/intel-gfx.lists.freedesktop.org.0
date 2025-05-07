Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89986AADFD9
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 14:55:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 259FC10E7AB;
	Wed,  7 May 2025 12:55:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PQac5XhY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A601610E7AB
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 May 2025 12:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746622547; x=1778158547;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=1+PVfAuTmh0Kpm23eaZoAMr7itN+yx/8Dkfwmkdcn6k=;
 b=PQac5XhY3KDzcIls/wKnfZwPigGnp5tBsVIoL1m2FEjTAO6BUtz0QMVR
 GSXF2hW+jsM4dmTyq1GEyTaICjCdnWpZ2p3l37LMYvuM2Rtd5yj1Ehs+X
 gosPHjwzczB6XJW8C1Rbyp1KxzBpR8sHVUmrAuBBFlgqqqzStu5jHymLx
 1mm+KxUIS/emJymHtFzxOt1xSP/GHvns+x0hqi0Ris+PRui9gfd8LQzed
 /fnA3YVTsr0N9CGR9YJlXqUfvNFXttFrtMbP0FczbIK0PVI75KYDwrVjh
 0EEUfjgqEA+XmGiFnFFjcLoEeooM0x2dn/nSL09aO/WmsFs9qjfyX+21F A==;
X-CSE-ConnectionGUID: HZurspucSmygvnqCqbz2Ow==
X-CSE-MsgGUID: 8Wpwpq84TOGLqErtbd1SxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="35982682"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="35982682"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 05:55:37 -0700
X-CSE-ConnectionGUID: JKDA8yuWRr2CAxEOFIcSMw==
X-CSE-MsgGUID: GDVCYj3iSsOCjrXt8OJHmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="135811269"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 05:55:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/rps: fix stale reference to i915->irq_lock
In-Reply-To: <174661672327.2473.16493793651989710991@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250507083136.1987023-1-jani.nikula@intel.com>
 <174661672327.2473.16493793651989710991@intel.com>
Date: Wed, 07 May 2025 15:55:21 +0300
Message-ID: <87frhgvava.fsf@intel.com>
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

On Wed, 07 May 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2025-05-07 05:31:36-03:00)
>>The RPS code has been switched from using i915->irq_lock to gt->irq_lock
>>years ago in commit d762043f7ab1 ("drm/i915: Extract GT powermanagement
>>interrupt handling"). Fix the stale comment referencing i915->irq_lock,
>>which has also ceased to exist.
>>
>>Reported-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>Closes: https://lore.kernel.org/r/174656703321.1401.8627403371256302933@intel.com
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks, pushed.

BR,
Jani.

>
>>---
>> drivers/gpu/drm/i915/gt/intel_rps_types.h | 2 +-
>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/intel_rps_types.h b/drivers/gpu/drm/i915/gt/intel_rps_types.h
>>index 5135b90a2a40..ece445109305 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_rps_types.h
>>+++ b/drivers/gpu/drm/i915/gt/intel_rps_types.h
>>@@ -57,7 +57,7 @@ struct intel_rps {
>> 
>>         /*
>>          * work, interrupts_enabled and pm_iir are protected by
>>-         * i915->irq_lock
>>+         * gt->irq_lock
>>          */
>>         struct timer_list timer;
>>         struct work_struct work;
>>-- 
>>2.39.5
>>

-- 
Jani Nikula, Intel
