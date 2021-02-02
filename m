Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5EC30B877
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 08:15:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69E426E8D1;
	Tue,  2 Feb 2021 07:15:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3500D6E8D1
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 07:15:25 +0000 (UTC)
IronPort-SDR: VkFISR69KP5iSzX52FJFisD1sX9/WlQDFWl+8fRGVcZA3fVSBo+CAQb58iWvKmaV5jW7MhVfg8
 ODL/tPVOwUdg==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="180953799"
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="180953799"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 23:15:24 -0800
IronPort-SDR: SW8tl0VKjPJ6yi6j4CGBHzFwbiw2eP+jbsGHvOgDjcZTZeqeuxJDcV+5lu6o5XuLUBoYh6OZjo
 LPx0U+QBwG6A==
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="391323464"
Received: from amishuti-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.249.46.139])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 23:15:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, Matt Roper <matthew.d.roper@intel.com>, Mika
 Kuoppala <mika.kuoppala@linux.intel.com>, Imre Deak <imre.deak@intel.com>,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <87lfcqobpl.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <87lfcqobpl.fsf@intel.com>
Date: Tue, 02 Feb 2021 09:15:18 +0200
Message-ID: <87ft2fgcu1.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] Fixes that failed to apply to v5.11-rc4
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 18 Jan 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> The following commits have been marked as Cc: stable or fixing something
> in v5.11-rc4 or earlier, but failed to cherry-pick to
> drm-intel-fixes. Please see if they are worth backporting, and please do
> so if they are.
>
> Conflicts:
> dbe13ae1d6ab ("drm/i915/pmu: Don't grab wakeref when enabling events")
> 9bb36cf66091 ("drm/i915: Check for rq->hwsp validity after acquiring RCU lock")
> 5b4dc95cf7f5 ("drm/i915/gt: Prevent use of engine->wa_ctx after error")
> 6a3daee1b38e ("drm/i915/selftests: Fix some error codes")
> 67fba3f1c73b ("drm/i915/dp: Fix LTTPR vswing/pre-emp setting in non-transparent mode")
>
> Fails to build:
> 3170a21f7059 ("drm/i915: Only enable DFP 4:4:4->4:2:0 conversion when outputting YCbCr 4:4:4")
>
> BR,
> Jani.

Update.

Conflicts:
5b4dc95cf7f5 ("drm/i915/gt: Prevent use of engine->wa_ctx after error")
6a3daee1b38e ("drm/i915/selftests: Fix some error codes")
67fba3f1c73b ("drm/i915/dp: Fix LTTPR vswing/pre-emp setting in non-transparent mode")
699390f7f026 ("drm/i915: Fix the PHY compliance test vs. hotplug mishap")
e7004ea4f5f5 ("drm/i915/gt: Close race between enable_breadcrumbs and cancel_breadcrumbs")
fed387572040 ("drm/i915/display: Prevent double YUV range correction on HDR planes")

Fails to build:
0713eb979d2c ("drm/i915: Disable atomics in L3 for gen9")
f8abfda84841 ("drm/i915: Fix the MST PBN divider calculation")

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
