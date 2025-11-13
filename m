Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A07F3C56CCA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 11:19:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3250D10E1B2;
	Thu, 13 Nov 2025 10:19:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZRxI+X4W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CAC810E1B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Nov 2025 10:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763029184; x=1794565184;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8wSXlTrhRDFGCIouurhyqmXfP4i1XlN56s+OUwzI5F8=;
 b=ZRxI+X4WkqreatlYawBmBRngQGgTD1l4Kf2SVHjkGquyGDHhn4ZYrY4X
 Y2qgqRce1zkZXYS+sX2dXQzmshKS0GVqSagDxVRtTG4iXI8rPRdoG3TVN
 HDUYa18bnsCdU79rrUQJHf2S9BNar/BXb+7sOKio+9L+groBQK7VM12zm
 NvkFy4px5M+4ZCyLBt8vavj7OECgWgkZ8MOk9+uGFwuIO+M6GPVS3mtw9
 eOR9/0xprp7NT5u2r9mT5/1sexubJhvvy1Xtx2uNrJE+qszlgLjbXIu6k
 FcY89CLIXdsM+WkXx1L2w/CmZWicM6usVRsXbmDI7Ub02FsVlSQk7nxmW A==;
X-CSE-ConnectionGUID: Z/oM0c2hSk+60+f3BhdJgg==
X-CSE-MsgGUID: LlD5GBYNS0+d3AXqD09ZWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="67706019"
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="67706019"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 02:19:43 -0800
X-CSE-ConnectionGUID: INwJQquhTi6O4k46X5kD/A==
X-CSE-MsgGUID: Qpey0qZbTlSCpeNg0OKUmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="189900052"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 02:19:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com
Subject: Re: [PATCH] drm/i915/display: Add default case to
 mipi_exec_send_packet
In-Reply-To: <51c99a4aa0dac4b06746cc61f9518678db3d7674@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251104164150.16795-2-jonathan.cavitt@intel.com>
 <51c99a4aa0dac4b06746cc61f9518678db3d7674@intel.com>
Date: Thu, 13 Nov 2025 12:19:38 +0200
Message-ID: <7fef6cfea1f179d4e358d07284baca7b4a1daa28@intel.com>
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

On Tue, 04 Nov 2025, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Tue, 04 Nov 2025, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
>> Add a default case to the switch case statement in mipi_exec_send_packet
>> to prevent attempts to read an uninitialized ret value.  It's unlikely
>> the default case will ever occur during regular exeuction, but if more
>> MIPI DSI Processor-to-Peripheral transaction types are ever added, then
>> having this in place will be a useful safety guard.
>>
>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>
> Fixes: 23db1577ce2d ("drm/i915/dsi: log send packet sequence errors")
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Fell between the cracks a bit, but pushed now.

Thanks for the patch.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> index 31edf57a296f..4b815ce6b1fe 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> @@ -171,6 +171,9 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
>>  	case MIPI_DSI_DCS_LONG_WRITE:
>>  		ret = mipi_dsi_dcs_write_buffer(dsi_device, data, len);
>>  		break;
>> +	default:
>> +		ret = -EINVAL;
>> +		break;
>>  	}
>>  
>>  	if (ret < 0)

-- 
Jani Nikula, Intel
