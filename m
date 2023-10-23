Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF307D2E9E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 11:38:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08F2610E08E;
	Mon, 23 Oct 2023 09:38:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3241410E08E
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 09:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698053929; x=1729589929;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=GmoHPUpnmixEKJHuTcQuQElmdxz6eN0UMRvZ42/aRAE=;
 b=DpKGUN9zoIDKhyOwL82tcGwTRPB3IhyNVDWxjDswjDzNBlkr/AslX1OU
 DXPjkwFUs5xIs9I04JGxGQjf5Hk5oJei78tpcfOr3KRyMGP42tlSOEf6o
 rV+6lngrjYxuJXJrKKaphGjmLT9mrhp6IbBsjNBf87S5/hKv5PqcvqPVY
 qr/YFl94mAuwNgp+R3oTA0arKtMQNosM05cRlUN2WZFz59mc2n9200DuW
 nTQ6fJJsc0C8+Y6+cG8gvdBmgohUbFv16+IPy0GI0MTMC1E2QlTFpse0m
 PnAO19QP5N52sdPnUotaTtgfbCm1H//vcGEM0j1uxj2bbGqyrb9h/XGr/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="5426629"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; 
   d="scan'208";a="5426629"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 02:38:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="787417968"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="787417968"
Received: from evlad-mobl.ger.corp.intel.com (HELO localhost) ([10.252.47.180])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 02:38:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20231012224754.GM5757@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231011142704.985867-1-jani.nikula@intel.com>
 <20231012224754.GM5757@mdroper-desk1.amr.corp.intel.com>
Date: Mon, 23 Oct 2023 12:38:44 +0300
Message-ID: <87cyx5d6fv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: drop gt/intel_gt.h include from
 skl_universal_plane.c
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 12 Oct 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Wed, Oct 11, 2023 at 05:27:04PM +0300, Jani Nikula wrote:
>> No longer needed after commit 94bcf876cb6a ("drm/i915/mtl: Drop
>> Wa_14017240301").
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks, pushed to din.

>
>> ---
>>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 1 -
>>  1 file changed, 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> index 245a64332cc7..49e9d40d5e67 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -21,7 +21,6 @@
>>  #include "skl_scaler.h"
>>  #include "skl_universal_plane.h"
>>  #include "skl_watermark.h"
>> -#include "gt/intel_gt.h"
>>  #include "pxp/intel_pxp.h"
>>  
>>  static const u32 skl_plane_formats[] = {
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
