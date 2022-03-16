Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF81C4DAC3E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 09:12:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4119410E73A;
	Wed, 16 Mar 2022 08:12:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D032310E73A
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 08:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647418335; x=1678954335;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=CoHUBR3UROwpa22nO0AB9QvxRAKjqXFiSLUsTbcbjd0=;
 b=QoZRvODdb8Kc/x60YlmhVkMKrCOd4+LD0R8lsdjDa/wpkuW4U5KEmnW/
 6p/DpWcejqkQfiUEfRaHU/4LUz5Dixq0UcRIBsSCltvv8B0MprzeiV4sK
 QCmsRLxMolHgOo7XSlcqbGeMmxjAa4JAWQ57BfRoNl1SPoO67ZwAWTS1F
 VYpdA5lwpXpAyLOP3eior1vGta/Re93jxVGmS5y8sEh+PMUqppYQcSiku
 HFCOWqQUTv0COVY3h2baVHm42XaI/Y40bcEHKFjydcWQBXdKL62DCt4tu
 1Q64KHEbAvioptMSjoJ+to0X8xmrLf/uCb202obAjMDapP/r0xJ0Ay/Ak Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="256710383"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="256710383"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 01:12:15 -0700
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="540808402"
Received: from jgarrosx-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.34.45])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 01:12:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220314225837.42816-1-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220314225837.42816-1-vinod.govindapillai@intel.com>
Date: Wed, 16 Mar 2022 10:12:10 +0200
Message-ID: <87y21anwo5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC PATCH 0/2] suppress the wrong long hotplug
 events
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

On Tue, 15 Mar 2022, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Monitors like LG 27UL650-W, 27UK850 goes into power sleep state
> and generates long duration hotplug events even when the monitor
> is connected for display. Here is a proposal to detect and
> suppress such hotplug events by "sleep" for 2 secs for power
> state monitor become available before enable atomic commit.

I don't understand the failure mode. Please elaborate. Do we have a bug
report?

BR,
Jani.

> A debugfs entry is created to enable the suppression of the
> hotplug event in such scenarios.
>
> Cc: Imre Deak <imre.deak@intel.com>
>
> Mohammed Khajapasha (2):
>   drm/i915/display: Add disable wait time for power state connector
>   drm/i915/display: Add sleep for power state connector
>
>  .../gpu/drm/i915/display/intel_connector.c    |  3 +
>  drivers/gpu/drm/i915/display/intel_display.c  | 80 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h  |  8 ++
>  .../drm/i915/display/intel_display_debugfs.c  | 58 ++++++++++++++
>  .../drm/i915/display/intel_display_debugfs.h  |  7 ++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/i915_drv.h               |  2 +
>  7 files changed, 160 insertions(+)

-- 
Jani Nikula, Intel Open Source Graphics Center
