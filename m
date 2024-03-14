Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BC287BA11
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 10:12:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BA0710E947;
	Thu, 14 Mar 2024 09:12:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nd1PdmDp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2154810E947
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Mar 2024 09:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710407529; x=1741943529;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=YQLWPaimZ/60rSuzRlN0Ucx/MxclR3MVSXZ5SnxJfxg=;
 b=Nd1PdmDp7YsE8Qa6glEjLWQcDaj74bAr38lgWw2BZvDCpc6HChnHKQAI
 6Hgj7ZKJTRKQoCSIDbNMhqwQ9b99dEoNZOtM7iH3ZSN2e/22iygaSYyvD
 gy92YwAQnW5UmR5engfQF6Gscri77jGbFwj90gU4IBKAg8X1IJciKFCoE
 4ZHn297bMZA4yMEELVC9deTr1pvDUMi44lM1ibzckFpceeVY+YKctu5Iy
 Mo8o6VAqGJK/9C8zhLlRBJgPbA7pHOFj704HjXGklUOebH/1DH6Evy14m
 AlgYh37v1CcQ0kObvhtOC/3PBbxssatLRCH2BL8qRs8eMnWI5BO7TRy2Q Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="5818427"
X-IronPort-AV: E=Sophos;i="6.07,124,1708416000"; 
   d="scan'208";a="5818427"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 02:12:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,124,1708416000"; d="scan'208";a="12242531"
Received: from rboza-mobl.ger.corp.intel.com (HELO localhost) ([10.252.53.139])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 02:12:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, clinton.a.taylor@intel.com,
 shekhar.chauhan@intel.com
Subject: Re: [PATCH v5] drm/i915/dp: Increase idle pattern wait timeout to 2ms
In-Reply-To: <171015867667.7312.2596870350343862692@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240311041504.806058-1-shekhar.chauhan@intel.com>
 <171015867667.7312.2596870350343862692@gjsousa-mobl2>
Date: Thu, 14 Mar 2024 11:12:03 +0200
Message-ID: <87wmq5qisc.fsf@intel.com>
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

On Mon, 11 Mar 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Shekhar Chauhan (2024-03-11 01:15:04-03:00)
>>The driver currently waits 1ms for idle patterns,
>>but for Xe2LPD and possibly future display IPs,
>>it requires a 1640us (rounded up to 2ms) timeout
>>whilst waiting for idle patterns for MST streams.
>>
>>To simplify the code, the timeout is uniformly
>>increased by 1ms across all platforms/display IPs.
>>
>>v1: Introduced the 2ms wait timeout.
>>v2: Segregated the wait timeout for platforms before & after LNL.
>>v3: Fixed 2 cosmetic changes.
>>v4: Revert to v2 design with commit message enhancements.
>>v5: Minor cosmetic changes to the commit message.
>>
>>BSpec: 68849
>>Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks for the patch and review, pushed to drm-intel-next.

BR,
Jani.

>
>>---
>> drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>>index bea441590204..05ba3642d486 100644
>>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>>@@ -3680,7 +3680,7 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
>> 
>>         if (intel_de_wait_for_set(dev_priv,
>>                                   dp_tp_status_reg(encoder, crtc_state),
>>-                                  DP_TP_STATUS_IDLE_DONE, 1))
>>+                                  DP_TP_STATUS_IDLE_DONE, 2))
>>                 drm_err(&dev_priv->drm,
>>                         "Timed out waiting for DP idle patterns\n");
>> }
>>-- 
>>2.34.1
>>

-- 
Jani Nikula, Intel
