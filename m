Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F18596B59
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 10:30:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85198112D39;
	Wed, 17 Aug 2022 08:30:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1099D112D02
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 08:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660725016; x=1692261016;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TA5jz4IeKRRCsnjwAi+NismvFOuA/4YilVmMjStNAoE=;
 b=aqQkIA97B+wAfqB6LrTowZDWYYFJiUR+zX6eiu6IWr+I/n1vAEQ1GoQh
 3f1jAdj6nAQ76g9Df8oA+z3bGbuDbh0jkYxPcp6VuzFIMvwWN9UzYYbu4
 niSOmli7kFbNErQngmWJlfX8AwZlJ1TMsDhCL9Lx6OTHoC6sUDAoBYipC
 aGhH0FGhjjpV0a3SoAAlZhIZu5Xk8TFlvgCxFtPCvKQ8Eklz+CVhD+T9v
 TUHnh9HvqmDpXnCMtHpB+kCG7Z5I7gnhRfEPDq0LCz5LsriNJEsjlWL1t
 z13WYpgQogauHc9mf4m9L4yf+oX93ZKJmxs4XdlSByza3yxzM4ne3CN2R w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="293231804"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="293231804"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 01:29:54 -0700
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="667509466"
Received: from sbammi-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 01:29:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
In-Reply-To: <YvyjILz4bXhvPjdZ@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660664162.git.jani.nikula@intel.com>
 <b0f4f087866257d280eb97d6bcfcefd109cc5fa2.1660664162.git.jani.nikula@intel.com>
 <YvyjILz4bXhvPjdZ@intel.com>
Date: Wed, 17 Aug 2022 11:29:50 +0300
Message-ID: <87mtc3p91d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RESEND 1/3] drm/i915/dsi: filter invalid backlight
 and CABC ports
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 17 Aug 2022, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com> wrote:
> On Tue, Aug 16, 2022 at 06:37:20PM +0300, Jani Nikula wrote:
>> Avoid using ports that aren't initialized in case the VBT backlight or
>> CABC ports have invalid values. This fixes a NULL pointer dereference of
>> intel_dsi->dsi_hosts[port] in such cases.
>> 
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Would be interesting to figure out which one of those actually fixed the
> https://gitlab.freedesktop.org/drm/intel/-/issues/6476 issue, this one
> or next one.

I asked to test with patch 1 alone first, and it lets them boot without
the oops. And it produces the warn added here. But this just filters
port C out of bl_ports, and doesn't fix the root cause. Patch 2 should
fix the root cause, get rid of the warn and give them functioning
backlight. I hope. There was no test results with patches 2&3. :)

> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Thanks for the review!

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/icl_dsi.c | 7 +++++++
>>  drivers/gpu/drm/i915/display/vlv_dsi.c | 7 +++++++
>>  2 files changed, 14 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index 5dcfa7feffa9..885c74f60366 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -2070,7 +2070,14 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>>  	else
>>  		intel_dsi->ports = BIT(port);
>>  
>> +	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
>> +		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
>> +
>>  	intel_dsi->dcs_backlight_ports = intel_connector->panel.vbt.dsi.bl_ports;
>> +
>> +	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
>> +		intel_connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
>> +
>>  	intel_dsi->dcs_cabc_ports = intel_connector->panel.vbt.dsi.cabc_ports;
>>  
>>  	for_each_dsi_port(port, intel_dsi->ports) {
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> index b9b1fed99874..35136d26e517 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -1933,7 +1933,14 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>>  	else
>>  		intel_dsi->ports = BIT(port);
>>  
>> +	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
>> +		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
>> +
>>  	intel_dsi->dcs_backlight_ports = intel_connector->panel.vbt.dsi.bl_ports;
>> +
>> +	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
>> +		intel_connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
>> +
>>  	intel_dsi->dcs_cabc_ports = intel_connector->panel.vbt.dsi.cabc_ports;
>>  
>>  	/* Create a DSI host (and a device) for each port. */
>> -- 
>> 2.34.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
