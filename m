Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E15281FEF6
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Dec 2023 11:55:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F70E10E2C4;
	Fri, 29 Dec 2023 10:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EFB910E29C
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Dec 2023 10:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703847308; x=1735383308;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qCqu6QPR5+aOA9mxVoKfhv7e7nthsC1z9mTxbyc3oU4=;
 b=YFzqsUoU5uadc+vq+Csjgqb01WGZa0revVJLWwfZkXmbiMYfaDFaABVM
 5TVZxcPBD2LUtS6l/UXkcHkZeqBKmA4wevUAZm+eSnqFvXZS4IXvCLlO2
 eMORA1ys/29bYb2FTmCcztEfhIHi7CWtDc40DLupPp5d80n+yqZG8L6CQ
 NTiCGcmWwF5hYiawTP8GFKdlAm+aZcqUihVzJa3wcuL19h5iVEL/+qQE3
 cS6PWmA31Fs9886v0kymEpNj+Gj3KvrpWuUPb3kSMLOxYwJlspdzfiQXl
 Es86NK36YVtDWLkEIsGqdaz8l3s93k9WR7MClVydWGYpyq0LlNDBW/M5J Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10937"; a="18190648"
X-IronPort-AV: E=Sophos;i="6.04,314,1695711600"; d="scan'208";a="18190648"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2023 02:55:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10937"; a="869373088"
X-IronPort-AV: E=Sophos;i="6.04,314,1695711600"; d="scan'208";a="869373088"
Received: from opipikin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.35.124])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2023 02:55:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/i915/bios: remove some unused leftover declarations
In-Reply-To: <ZYrspCNWTbXAFrk7@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231221105414.1518267-1-jani.nikula@intel.com>
 <ZYrspCNWTbXAFrk7@intel.com>
Date: Fri, 29 Dec 2023 12:55:02 +0200
Message-ID: <87bka9e0s9.fsf@intel.com>
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

On Tue, 26 Dec 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Dec 21, 2023 at 12:54:14PM +0200, Jani Nikula wrote:
>> Remove some unused declarations probably left behind after some
>> refactoring.
>
> when you mention 'unused' I was wondering if we should move the
> local functions to 'static', but then I notice they are 'inexistent'.
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.h | 3 ---
>>  1 file changed, 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
>> index 49e24b7cf675..96673dc707e7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> @@ -246,13 +246,10 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size);
>>  bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv);
>>  bool intel_bios_is_lvds_present(struct drm_i915_private *dev_priv, u8 *i2c_pin);
>>  bool intel_bios_is_port_present(struct drm_i915_private *dev_priv, enum port port);
>> -bool intel_bios_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
>>  bool intel_bios_is_dsi_present(struct drm_i915_private *dev_priv, enum port *port);
>>  bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
>>  			       struct intel_crtc_state *crtc_state,
>>  			       int dsc_max_bpc);
>> -bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915, enum port port);
>> -bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum port port);
>>  
>>  const struct intel_bios_encoder_data *
>>  intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port);
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
