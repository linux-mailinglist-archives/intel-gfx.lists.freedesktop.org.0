Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A21720889
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 19:42:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C79D10E0C4;
	Fri,  2 Jun 2023 17:42:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28B5810E0C4
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 17:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685727764; x=1717263764;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=CFzUWGehUj/AThbWBM3WzDCggzyqSyMGPCj7AikaIP8=;
 b=Sy1KqP+1SMPgf97xtcUU5s5umuf8Ax9uE5Om3MVlwy6k1o3bbvvxuW82
 PPA34NHcTaac+A4dhDBRi5D5URLMEIeEPxZukQuQ84p5V/1PMLUL1gno0
 v+9iWBHi0W7onlgGxLXL2nswsa0n0Wu1DwNZxYAy244tvbK9uCa03rXE+
 o8dDurYAkcatQLdfCYle+74BNsmY6cCnB/f5Fjk6PMMPSNHlD6I43x96y
 PN4uXpD8ZVRcR07wLE/NwFT64h++kI9nOLa5DvBp+fagxro2wSTWWNYlK
 CaQpZ3VzNJNH4WZSsTMECaW29zaZj0FArIkekksysESGFvxBSfFVLRNrI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="442302715"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="442302715"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 10:42:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="777765012"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="777765012"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.111])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 10:42:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <Y6S/msVyeS9dZoGH@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221222201804.1380963-1-maarten.lankhorst@linux.intel.com>
 <Y6S/msVyeS9dZoGH@ideak-desk.fi.intel.com>
Date: Fri, 02 Jun 2023 20:42:39 +0300
Message-ID: <878rd1dals.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Flush power delayed put when
 connector init failed
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

On Thu, 22 Dec 2022, Imre Deak <imre.deak@intel.com> wrote:
> On Thu, Dec 22, 2022 at 09:18:04PM +0100, Maarten Lankhorst wrote:
>> When intel_dp_init_connector fails, some power wells used in dp aux
>> communication may not be completely disabled yet. This may result in a
>> null pointer dereference when icl_aux_pw_to_phy() is called from
>> icl_combo_phy_aux_power_well_disable() after the encoder and connector
>> are already freed.
>> 
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> ---
>> This approach better?
>
> Looks ok to me, thanks for fixing it. I think Jani's idea is good to
> refactor things wrt. the encoder hooks, but imo that could be done later
> keeping the fix simpler, so:
>
> Acked-by: Imre Deak <imre.deak@intel.com>

I missed this one. Pushed to din now, thanks for the patch and ack.

BR,
Jani.


>
>> 
>>  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
>>  1 file changed, 1 insertion(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index bf80f296a8fd..8cf1d6ca86f4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -5492,6 +5492,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>>  	return true;
>>  
>>  fail:
>> +	intel_display_power_flush_work(dev_priv);
>>  	drm_connector_cleanup(connector);
>>  
>>  	return false;
>> -- 
>> 2.37.2
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
