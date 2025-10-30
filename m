Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AB2C1F16B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 09:51:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C37F710E935;
	Thu, 30 Oct 2025 08:51:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iokexpTZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0859410E92D;
 Thu, 30 Oct 2025 08:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761814262; x=1793350262;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=bup7AB98FqqifvUSoe+GWZ7fyeuCwOu83UHRPn3q+Xg=;
 b=iokexpTZEefRTQy/nUHQQiWzYoqSYzo1hOWb4uTXVtczatDCxlZPtS13
 n05LUzc23VCmOTgalXOIsxeIugE4Rc5vYOVO5HoDR15fUbdNhul5oVRXQ
 v1LOeHsHDKO9v7X7hxXu0AJmkLuxBSOLbbSrAExEIWE7PjzPHMO5neFl/
 SvabhkN7z7K+AMu3ddKumVOPI9gPfiiv3PUof/ENSNa1S6GXyIQVpz+44
 5grzOfFke76DfTdcNumPfp9RBxtH9kZFp61GqKd/HM1FfdKVBqlsWaCpO
 /Bwum2HzI3311cVrCnNeUVgbXQK6CoJbAtfLq+DR57y0FogYFSrnd2bzO w==;
X-CSE-ConnectionGUID: SrIYutexQnO2yy+0lLqS7w==
X-CSE-MsgGUID: KvCLpHYbRJS+EelHml6o5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="74548259"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="74548259"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 01:51:01 -0700
X-CSE-ConnectionGUID: pLsi2s9EQ1aNXI1z08d6qQ==
X-CSE-MsgGUID: zB81DpTpQi2UUAHkcAUScQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185832979"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.223])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 01:51:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/6] drm/i915/display: add intel_display_vtd_active()
In-Reply-To: <ae26093b5ee79d456afaaae0d4040e91d45eb2c2.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1761146196.git.jani.nikula@intel.com>
 <e022166af7c67f43904e2d0fc87bc5c13e0f1204.1761146196.git.jani.nikula@intel.com>
 <ae26093b5ee79d456afaaae0d4040e91d45eb2c2.camel@coelho.fi>
Date: Thu, 30 Oct 2025 10:50:57 +0200
Message-ID: <a453394c50138e2c5a06c924af006d36bab83239@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 30 Oct 2025, Luca Coelho <luca@coelho.fi> wrote:
> On Wed, 2025-10-22 at 18:17 +0300, Jani Nikula wrote:
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.c b/driver=
s/gpu/drm/i915/display/intel_display_utils.c
>> index 13d3999dd580..04d010f7c23e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_utils.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_utils.c
>> @@ -1,10 +1,15 @@
>>  // SPDX-License-Identifier: MIT
>>  /* Copyright =C2=A9 2025 Intel Corporation */
>>=20=20
>> +#include <linux/device.h>
>> +
>> +#include <drm/drm_device.h>
>> +
>>  #ifdef CONFIG_X86
>>  #include <asm/hypervisor.h>
>>  #endif
>>=20=20
>> +#include "intel_display_core.h"
>>  #include "intel_display_utils.h"
>>=20=20
>>  bool intel_display_run_as_guest(struct intel_display *display)
>> @@ -16,3 +21,12 @@ bool intel_display_run_as_guest(struct intel_display =
*display)
>>  	return false;
>>  #endif
>>  }
>> +
>> +bool intel_display_vtd_active(struct intel_display *display)
>> +{
>> +	if (device_iommu_mapped(display->drm->dev))
>> +		return true;
>> +
>> +	/* Running as a guest, we assume the host is enforcing VT'd */
>> +	return intel_display_run_as_guest(display);
>> +}
>
> This also looks quite much like an "inlineable" function, no?

Same reason as before, and that display->drm->dev dereference would
require pulling in both intel_display_core.h and drm/drm_device.h in the
header.

BR,
Jani.


--=20
Jani Nikula, Intel
