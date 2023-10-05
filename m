Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8327B9D4A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 15:22:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3893D10E3FC;
	Thu,  5 Oct 2023 13:22:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17D0F10E3FC
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 13:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696512149; x=1728048149;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=fX3LxoNFgiguHgT5bpB7HXFIw0LFhJ4shTm6oYxYBH0=;
 b=IoNnPK3R6XGxhlALd1Bmf73EOhAe2Aq0ByIWakNiGmOB2gjGvNy33EHV
 D/Noaz1GY1qyiT1eGDqj5INYeQ7tnoFcSkp5nnOhUe4lOVVmijZrU0jeE
 hBW3kApzzfYN4R97W5Eqn7yDjE4/LLPZhAmCIKmc/cLdA6luW3YxnehIf
 Pa3/4w2vOnHcqMm0syByGubaKE/T1zlYPr/qrgti2Y/aS8kQgSDSZ30Fs
 1FwhonhudaskZKRcedITtRQbBNEnaho1wwDCY/9SArHzU/bJmERryTA5+
 iKj6oIK0vDnPfdv53Q8TRp0YYWV4VHylzM00uKdAppg1rTUgHIi6sf0+N g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="382359991"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="382359991"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:16:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="781250239"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="781250239"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:16:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Khaled Almahallawy
 <khaled.almahallawy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <169650959377.1601.4111271359854746928@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231005001310.154396-1-khaled.almahallawy@intel.com>
 <169650959377.1601.4111271359854746928@gjsousa-mobl2>
Date: Thu, 05 Oct 2023 16:16:33 +0300
Message-ID: <878r8hciq6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cx0: Only clear/set the Pipe Reset
 bit of the PHY Lanes Owned
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

On Thu, 05 Oct 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Khaled Almahallawy (2023-10-04 21:13:10-03:00)
>>Currently, with MFD/pin assignment D, the driver clears the pipe reset bit
>>of lane 1 which is not owned by display. This causes the display
>>to block S0iX.
>>
>>By not clearing this bit for lane 1 and keeping whatever default, S0ix
>>started to work. This is already what the driver does at the end
>>of the phy lane reset sequence (Step#8)
>>
>>Bspec: 65451
>>
>
> We should not have blank lines in the trailers section. This could be fixed
> while applying.

Agreed.

>
>>Cc: Mika Kahola <mika.kahola@intel.com>
>>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>>Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
>
> Nice fix. Thanks!
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>>---
>> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 +--
>> 1 file changed, 1 insertion(+), 2 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>index abd607b564f1..f653b83a7d4f 100644
>>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>@@ -2596,8 +2596,7 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
>>                 drm_warn(&i915->drm, "PHY %c failed to bring out of SOC reset after %dus.\n",
>>                          phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
>> 
>>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
>>-                     XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1),
>>+        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port), lane_pipe_reset,
>>                      lane_pipe_reset);
>> 
>>         if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
>>-- 
>>2.25.1
>>

-- 
Jani Nikula, Intel
