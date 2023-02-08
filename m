Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A325168EE01
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 12:34:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8458510E752;
	Wed,  8 Feb 2023 11:34:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E65B410E74C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 11:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675856048; x=1707392048;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lgaJURp5bGXm7MwCtGXvyUzlk6Hi3RjWPtoEXD2VwMg=;
 b=Yl7+QOpHNLszHy+8lF0iOsREtW+Zjdm4VT7Gx2QMdG/Ug2KHQQoNpvX6
 4QLmj1CEpupAwpbm+yq2XlcOcou4QXUMQADLZUQ6hzO4ftvbckwcJlUB2
 Hxw7CPNFEAriQi5viZfBOrXh7ChrZ/X5Gd/rD7BOK3ABBsvhnQr7QeE/u
 5m7ESXkeYgA/luVFmvYYkJDT2yyQLokIlX0EhIGMaKBJjxNWLEo2zK1oY
 0ZOAZ43ziX5kXMvH9k5Zr1rYNG0U6mjP6hXnt9jBd2Gcy6byn06u3cOIr
 MXIGJXLWfy0WYckG2GZ+XwNWXIDfxG5ELTXf6PSL3RQvpH+ckDtvvUPCt w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="331903987"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="331903987"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 03:34:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="617187766"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="617187766"
Received: from lxu17-mobl.ccr.corp.intel.com (HELO intel.com) ([10.252.63.161])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 03:34:07 -0800
Date: Wed, 8 Feb 2023 12:34:04 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Y+OIrKmtqGgXrVP0@ashyti-mobl2.lan>
References: <20230208094550.27730-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230208094550.27730-1-stanislav.lisovskiy@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Communicate display
 configuration to pcode
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

Hi Stanislav,

[...]

> +/**
> + * intel_display_to_pcode- inform pcode for display config
> + * @cdclk: current cdclk as per new or old state
> + * @voltage_level: current voltage_level send to Pcode
> + * @active_pipes: active pipes for more accurate power accounting
> + */
> +static void intel_display_to_pcode(struct drm_i915_private *dev_priv,
> +				   unsigned int cdclk, u8 voltage_level,
> +				   u8 active_pipes)
> +{
> +	int ret;
> +

if (DISPLAY_VER(dev_priv) < 12)
	return;

the rest can go outside the if and we save one indentation leve.

BTW... /dev_priv/i915/ ?

> +	if (DISPLAY_VER(dev_priv) >= 12) {
> +		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> +					SKL_CDCLK_PREPARE_FOR_CHANGE |
> +					DISPLAY_TO_PCODE_MASK
> +					(cdclk, active_pipes, voltage_level),
> +					SKL_CDCLK_READY_FOR_CHANGE,
> +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> +		if (ret) {
> +			drm_err(&dev_priv->drm,
> +					"Failed to inform PCU about display config (err %d)\n",
> +					ret);
> +			return;
> +		}
> +	}
> +}

[...]

> +void intel_display_to_pcode_pre_notification(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	const struct intel_cdclk_state *old_cdclk_state =
> +		intel_atomic_get_old_cdclk_state(state);
> +	const struct intel_cdclk_state *new_cdclk_state =
> +		intel_atomic_get_new_cdclk_state(state);
> +	if (!intel_cdclk_changed(&old_cdclk_state->actual,
> +				&new_cdclk_state->actual) &&
> +				(new_cdclk_state->active_pipes ==
> +				old_cdclk_state->active_pipes))
> +		return;
> +	if (old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
> +		intel_display_to_pcode(dev_priv, new_cdclk_state->actual.cdclk,
> +					new_cdclk_state->actual.voltage_level,
> +					new_cdclk_state->active_pipes);
> +		return;
> +	}
> +	if (old_cdclk_state->actual.cdclk >= new_cdclk_state->actual.cdclk) {
> +		intel_display_to_pcode(dev_priv, old_cdclk_state->actual.cdclk,
> +					old_cdclk_state->actual.voltage_level,
> +					old_cdclk_state->active_pipes);
> +		return;
> +	}
> +	if (old_cdclk_state->active_pipes != new_cdclk_state->active_pipes) {
> +		intel_display_to_pcode(dev_priv, new_cdclk_state->actual.cdclk,
> +					new_cdclk_state->actual.voltage_level,
> +					new_cdclk_state->active_pipes);
> +		return;
> +	}
> +	intel_display_to_pcode(dev_priv, DISPLAY_TO_PCODE_CDCLK_MAX,
> +				new_cdclk_state->actual.voltage_level,
> +				new_cdclk_state->active_pipes);

if you replace all the ifs with "else if"s you can have only one
return and remove all the brackets.

> +}
> +
> +/*intel_display_to_pcode_post_notification: after frequency change sending
> + * voltage_level, active pipes, current CDCLK frequency.
> + * @state: intel atomic state
> + */
> +void intel_display_to_pcode_post_notification(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	const struct intel_cdclk_state *new_cdclk_state =
> +		intel_atomic_get_new_cdclk_state(state);
> +		intel_display_to_pcode(dev_priv, new_cdclk_state->actual.cdclk,
> +					new_cdclk_state->actual.voltage_level,
> +					new_cdclk_state->active_pipes);

the indentation here is off

> +}

Andi

[...]
