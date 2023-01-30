Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FD0680E49
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 13:58:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FC7710E242;
	Mon, 30 Jan 2023 12:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44B5D10E241
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 12:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675083511; x=1706619511;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=EJvFCY9RvJ1iyG5LYTYaNWmrrDFrgCKvP78XZUFMsJY=;
 b=AhlNnIP2HRxZ6VsBaG/MBI0sxfH5kimHyfyZ/bcpHZK0syqFrddCLTeg
 dZEZ1PL4Wl5d9kq/JYzBG1zojGPEIKTFTgjJ+vB6Euj1Fb+WrA6EPLwBh
 ABC66TC1nwB1P1rPU24Lv/U3nGSChokvrLQWCIuY9dQH1F5lKTBkzL716
 M57EXmnJwG9eAW8tRMCIzm32w2I1M1/HWxCS98W9DeMAPdZ6lB57mDcgK
 AooPl4cDfReZ4Bi+8MCwM8GZg0XoNigk4bq4EFqNVnjY3g6kr7Lz9fFgK
 UPP3OYe7Hx+90PWLe+eOr0OOeIiBU8UVXW8iB4upzprgugNVLCT1kexxn w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="354863093"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="354863093"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 04:58:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="772492185"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="772492185"
Received: from jproschw-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.33.170])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 04:58:21 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87wn6nu46j.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221219092428.2515430-1-andrzej.hajda@intel.com>
 <87wn6nu46j.fsf@intel.com>
Date: Mon, 30 Jan 2023 14:58:18 +0200
Message-ID: <87bkmg41sl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/vlv: fix pixel overlap
 register update
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 19 Dec 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Mon, 19 Dec 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>> To update properly bits in the register the mask should be used
>> to clear old value and then the result should be or-ed with new
>> value, for such updates there is separate helper intel_de_rmw.
>>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>
> Seems like the right thing to do.
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

And pushed both to din, thanks for the patches.

BR,
Jani.


>
>
>> ---
>>  drivers/gpu/drm/i915/display/vlv_dsi.c | 24 +++++++++---------------
>>  1 file changed, 9 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> index 662bdb656aa304..f5268997a3e172 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -649,23 +649,17 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
>>  	enum port port;
>>  
>>  	if (intel_dsi->dual_link == DSI_DUAL_LINK_FRONT_BACK) {
>> -		u32 temp;
>> +		u32 temp = intel_dsi->pixel_overlap;
>> +
>>  		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
>> -			for_each_dsi_port(port, intel_dsi->ports) {
>> -				temp = intel_de_read(dev_priv,
>> -						     MIPI_CTRL(port));
>> -				temp &= ~BXT_PIXEL_OVERLAP_CNT_MASK |
>> -					intel_dsi->pixel_overlap <<
>> -					BXT_PIXEL_OVERLAP_CNT_SHIFT;
>> -				intel_de_write(dev_priv, MIPI_CTRL(port),
>> -					       temp);
>> -			}
>> +			for_each_dsi_port(port, intel_dsi->ports)
>> +				intel_de_rmw(dev_priv, MIPI_CTRL(port),
>> +					     BXT_PIXEL_OVERLAP_CNT_MASK,
>> +					     temp << BXT_PIXEL_OVERLAP_CNT_SHIFT);
>>  		} else {
>> -			temp = intel_de_read(dev_priv, VLV_CHICKEN_3);
>> -			temp &= ~PIXEL_OVERLAP_CNT_MASK |
>> -					intel_dsi->pixel_overlap <<
>> -					PIXEL_OVERLAP_CNT_SHIFT;
>> -			intel_de_write(dev_priv, VLV_CHICKEN_3, temp);
>> +			intel_de_rmw(dev_priv, VLV_CHICKEN_3,
>> +				     PIXEL_OVERLAP_CNT_MASK,
>> +				     temp << PIXEL_OVERLAP_CNT_SHIFT);
>>  		}
>>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
