Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4780AEA314
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 17:58:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F8A210E2C9;
	Thu, 26 Jun 2025 15:58:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="B2dsjk8w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11D6C10E2C9
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jun 2025 15:58:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 01010A51650;
 Thu, 26 Jun 2025 15:58:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53C15C4CEEB;
 Thu, 26 Jun 2025 15:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1750953520;
 bh=cOkkymtMgKjIy84lPpztQlbUSqBMZ50sAZP8lm23Lx4=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=B2dsjk8wSaS5DsqFtDaEjy/IVYjiHLnjqEgFxCPALH57U+sbTC/tDlq6VmT0fNOTG
 7G1cAjRqTO5hk1XHNb+fDHaNlnqiXc/Kh0qwT9a6bFRLkencz0wScLuJSpK60yrjdD
 BfG1uZDGIDS2w6z/UieEMXsLYZyUfsMyCI8JrzoYVyfzI5rBOngw/G02HWaUiwmzwj
 ObAsem7VoyZ9hMzgoT8Bd69pWEVR10UwmvkyCHOZPMEguoM2JxbAWxDZjArqwnxeRe
 wNLnOsI/SQqgN5qfqvY1ZMfiQYjObqpFUmcMtKgRXBXWMlIymTzVbiUQyf7XT58RsX
 woJjxYz1kNswA==
Message-ID: <2fc89386-0ab5-476e-a218-a3936a2e0d3e@kernel.org>
Date: Thu, 26 Jun 2025 17:58:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dsi: Fix NULL pointer deref in
 vlv_dphy_param_init()
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
References: <20250626143317.101706-1-hansg@kernel.org>
 <9063507c2061b731750d632183097c5a35fd875d@intel.com>
Content-Language: en-US, nl
From: Hans de Goede <hansg@kernel.org>
In-Reply-To: <9063507c2061b731750d632183097c5a35fd875d@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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

Hi,

On 26-Jun-25 17:24, Jani Nikula wrote:
> On Thu, 26 Jun 2025, Hans de Goede <hansg@kernel.org> wrote:
>> Commit 77ba0b856225 ("drm/i915/dsi: convert vlv_dsi.[ch] to struct
>> intel_display") added a to_intel_display(connector) call to
>> vlv_dphy_param_init() but when vlv_dphy_param_init() gets called
>> the connector object has not been initialized yet, so this leads
>> to a NULL pointer deref:
>>
>>  BUG: kernel NULL pointer dereference, address: 000000000000000c
>>  ...
>>  Hardware name: ASUSTeK COMPUTER INC. T100TA/T100TA, BIOS T100TA.314 08/13/2015
>>  RIP: 0010:vlv_dsi_init+0x4e6/0x1600 [i915]
>>  ...
>>  Call Trace:
>>   <TASK>
>>   ? intel_step_name+0x4be8/0x5c30 [i915]
>>   intel_setup_outputs+0x2d6/0xbd0 [i915]
>>   intel_display_driver_probe_nogem+0x13f/0x220 [i915]
>>   i915_driver_probe+0x3d9/0xaf0 [i915]
>>
>> Use to_intel_display(&intel_dsi->base) instead to fix this.
> 
> Oops, my bad. It's misleading that the DSI init handles uninitialized
> connector so much, and the encoder has been initialized much
> earlier. But I guess this is the simplest fix.
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks, I also have this fix pending which seems to have
fallen through the cracks (it was never reviewed):

https://lore.kernel.org/dri-devel/20241116093426.4989-1-hdegoede@redhat.com/

I don't have a drm git tree setup on my laptop atm, can you push
this patch (or maybe both) to the fixes branch ?

Regards,

Hans




> 
>>
>> Fixes: 77ba0b856225 ("drm/i915/dsi: convert vlv_dsi.[ch] to struct intel_display")
>> Signed-off-by: Hans de Goede <hansg@kernel.org>
>> ---
>>  drivers/gpu/drm/i915/display/vlv_dsi.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> index 21c1e10caf68..2007bb9d974d 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -1589,8 +1589,8 @@ static void vlv_dsi_add_properties(struct intel_connector *connector)
>>  
>>  static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
>>  {
>> +	struct intel_display *display = to_intel_display(&intel_dsi->base);
>>  	struct intel_connector *connector = intel_dsi->attached_connector;
>> -	struct intel_display *display = to_intel_display(connector);
>>  	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
>>  	u32 tlpx_ns, extra_byte_count, tlpx_ui;
>>  	u32 ui_num, ui_den;
> 

