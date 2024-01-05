Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E78CB8254BE
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 15:00:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D331810E605;
	Fri,  5 Jan 2024 14:00:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E0E210E605
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 14:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704463204; x=1735999204;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=fdaKkybZk4IlDUXT1GtTAliR3tl1efjLuNJcYlsJ61o=;
 b=c5oJec9VpOINf66EbUU7+X7KELsMVVV19lLjG4kOdJlCfilKUgXA8DS8
 sCFK5CZN7jOp63U0kvJr8G8BaGaAfjFTEwDYdU5s1u4t/ebfzA8JhstjM
 jPTqotggrxx4Q8h5vCH8ZL+jsZj6ZqEhMFhPjyr3QjxI9ddWrymh7Z2/k
 F5DXCdPE6SHddjjXFNuApO87K/RtR1lkZerbPK0ceouivsH+XbO0/VwCm
 xYlETVhGrREv10Waff8FyqQ5eltT6KeIiblNiIrp0/OpJOa2zk5Mkee3w
 GUwkgg5PduuQ4jSOJdTestvdy+qlM2gGFrefVLeT2LXYcPrfcrDnL1gj1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="10877260"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="10877260"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:00:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="953961001"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="953961001"
Received: from amaslenx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.106])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 05:59:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Subject: Re: [PATCH 1/5] drm/i915/irq: use DISPLAY_VER instead of GRAPHICS_VER
In-Reply-To: <20240104222621.GF3529480@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240104174350.823605-1-jani.nikula@intel.com>
 <20240104222621.GF3529480@mdroper-desk1.amr.corp.intel.com>
Date: Fri, 05 Jan 2024 15:59:56 +0200
Message-ID: <87jzonyj6r.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 04 Jan 2024, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Thu, Jan 04, 2024 at 07:43:46PM +0200, Jani Nikula wrote:
>> Display code should not care about graphics version.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> For the series:
>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks, pushed to drm-intel-next, with the tabs in commit message for
2/5 fixed.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_irq.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> index 6964f4b95865..99843883cef7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> @@ -1587,7 +1587,7 @@ void ilk_de_irq_postinstall(struct drm_i915_private *i915)
>>  	struct intel_uncore *uncore = &i915->uncore;
>>  	u32 display_mask, extra_mask;
>>  
>> -	if (GRAPHICS_VER(i915) >= 7) {
>> +	if (DISPLAY_VER(i915) >= 7) {
>>  		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE_IVB |
>>  				DE_PCH_EVENT_IVB | DE_AUX_CHANNEL_A_IVB);
>>  		extra_mask = (DE_PIPEC_VBLANK_IVB | DE_PIPEB_VBLANK_IVB |
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
