Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F18A4E50B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:09:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A22DC10E648;
	Tue,  4 Mar 2025 16:09:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vt/aAX1S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F08E10E647;
 Tue,  4 Mar 2025 16:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741104539; x=1772640539;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=JhDuHR3YcFNncL21kgYCV9ARGo037283pR0vcxAIfJ0=;
 b=Vt/aAX1SbrUNtbeczLZpP+AN4NiVKzarvgiPONjMvIlbgUmFbKbm7k25
 nc6TNnenXk7QhjeY4cZkWc+DJ3T1QOMhjJ9J1t4akeCLsLfw94tlT2lFL
 zojlfl+ajXlrCjFNUmbqRnUzFvUroywzn6LHCYiZh+XYbqpHUen6jxGy7
 twXpDRmviLXqTB9hVhCfvLHCBBeBaicRY+Q3TeFlaly7ZIsrjohrrsKvD
 f60ivFLHW2VbabnQ1vA9pHx+zp6HYH8i8HwIMuV6jdGReu/uhPjd9qd+B
 /UN1I5IeFOUSc3H0QKaqbQ671tDbpmCJoin7c63yPF4CtfYTE5/pP9D6u Q==;
X-CSE-ConnectionGUID: yp4bHtfQQtaIDKhM9qJ+XA==
X-CSE-MsgGUID: aUFlqQWGRGaxMUAojCE3ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42223844"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="42223844"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 08:08:59 -0800
X-CSE-ConnectionGUID: NTEMlMB2RVaCD9VmUcj1xQ==
X-CSE-MsgGUID: KAJMU8xFQDm0vGZhE8KkHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119320455"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 08:08:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v5 2/6] drm/i915/hpd: Let an HPD pin be in the disabled
 state when handling missed IRQs
In-Reply-To: <20250304152917.3407080-3-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250304152917.3407080-1-imre.deak@intel.com>
 <20250304152917.3407080-3-imre.deak@intel.com>
Date: Tue, 04 Mar 2025 18:08:54 +0200
Message-ID: <871pvczskp.fsf@intel.com>
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

On Tue, 04 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
> After suspending and resuming the detection on connectors, HPD IRQs that
> arrived while the detection was suspended, are handled by scheduling the
> intel_hotplug::hotplug work for them. All HPD pins must be at this point
> in either the HPD_ENABLED (set for all pins during driver loading/system
> resuming) or HPD_MARK_DISABLED (set by IRQ storm detection) state: the
> HPD_DISABLED state for a pin can be set only from the HPD_MARK_DISABLED
> state by the hotplug work after a storm detection (enabling polling on
> the given pin/connector), however the hotplug work won't be scheduled
> while the detection is suspended.
>
> A follow-up change will add support for blocking the HPD IRQ handling
> on a given HPD pin (without disabling the IRQ generation on it), after
> which it becomes possible to see a pin in the HPD_DISABLED state when
> unblocking the IRQ handling (since the blocking could've happened for an
> already disabled pin). Adjust queue_work_for_missed_irqs() accordingly,
> so that this function can be reused for unblocking the IRQ handling.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hotplug.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 9692b5c01aea9..3fb5feeefa144 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -980,6 +980,7 @@ static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
>  		case HPD_MARK_DISABLED:
>  			queue_work = true;
>  			break;
> +		case HPD_DISABLED:
>  		case HPD_ENABLED:
>  			break;
>  		default:

-- 
Jani Nikula, Intel
