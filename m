Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC048AE9B4
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 16:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D791113414;
	Tue, 23 Apr 2024 14:41:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zu29I2R3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19136113414
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 14:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713883316; x=1745419316;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=w0YOcLZiA7vVOzJymjr9cO5018hFoS8hbWZiyAMpX4U=;
 b=Zu29I2R3m2F8dDEwstu4dFUmj8onOKW4l9h4ZHzBZpridq5gDZd0RHg9
 QorpY3Y4QHVquItxta6b2NGr9kZFeNaloh+U0/aFO6BIYhAM5KWL2QPlz
 vT6gBeow5ob05MSOfzI43QVgAcIL8C2H4u8enYAJkOWLD4ZkVm6AdUf27
 rtYGhF6Amqv/uZ8kFdZFGkR89fP+IDEdYXRvo1xgeFztNFmCvOT4WEPoi
 jwUGxMP0Hj8X7659dsK59iLFlT36BfpKHS8nj0F370xImSLsiiP7xpeo5
 tscK3fxIaxpFVeaKJ6hS9SyexNtxB8yqtfk03oryuPsCQUJfFFIteaV7g g==;
X-CSE-ConnectionGUID: nXihh3tgRVGTzJT25WeGEQ==
X-CSE-MsgGUID: 2mHZUWvlSUiPyOlOYO2L7Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="20871724"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="20871724"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 07:41:56 -0700
X-CSE-ConnectionGUID: 7lYd0sBAR6W3qMOZ9wSuCw==
X-CSE-MsgGUID: hc6Y6x4KS1WL0JzjtBFm0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="24390259"
Received: from fpirou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.117])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 07:41:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 1/4] drm/i915/dsi: remove unused _MIPIA_AUTOPWG
 register definition
In-Reply-To: <ZibPwTsKs7M7K2fL@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1713520813.git.jani.nikula@intel.com>
 <57afda02856a68f78fe4d30384d4f7b352b9a812.1713520813.git.jani.nikula@intel.com>
 <ZibPwTsKs7M7K2fL@intel.com>
Date: Tue, 23 Apr 2024 17:41:52 +0300
Message-ID: <87y194qgy7.fsf@intel.com>
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

On Mon, 22 Apr 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Fri, Apr 19, 2024 at 01:04:03PM +0300, Jani Nikula wrote:
>> There are other unused registers, but this is also unusable and
>> inadequate. Remove.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for the review, pushed the lot to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/vlv_dsi_regs.h | 3 ---
>>  1 file changed, 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>> index abbe427e462e..b0cdaad7db9c 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>> @@ -93,9 +93,6 @@
>>  #define  TEARING_EFFECT_DELAY_SHIFT			0
>>  #define  TEARING_EFFECT_DELAY_MASK			(0xffff << 0)
>>  
>> -/* XXX: all bits reserved */
>> -#define _MIPIA_AUTOPWG			(VLV_DISPLAY_BASE + 0x611a0)
>> -
>>  /* MIPI DSI Controller and D-PHY registers */
>>  
>>  #define _MIPIA_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb000)
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
