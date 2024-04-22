Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8988AD042
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 17:07:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 451E810E26E;
	Mon, 22 Apr 2024 15:07:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="adVjBiCN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA3CB10E26E;
 Mon, 22 Apr 2024 15:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713798470; x=1745334470;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=cRtwhycGcTbbInORGykcDbLrv9ysXUSoMXZFPZ6xFeo=;
 b=adVjBiCNRCS7s9ZzHeKBgi2jgwr3w552s+2ilxNvEOZuI7wsYTmFqZxi
 6mVMZN+Mxgw0Epznu13nkOFnizOhG54GgWVj+4rgj/drQRVBiulIrup4R
 sZ198xhoB5jbFG+xEJtzB7884Z4UnHWB5spk4yct4cLnxcw9PQGQyEoWR
 0AwophX1rgm9YSjVzHkYXEiwk8ipdoAivUT+oT1RKyBjmEFxPZ2DRdKoK
 bZefwL+DWe+Na8WRopCexm8Mbrs0/kIZmssa80i7DYJIC39af8W7ZjyRV
 +KUSTIERdGCOQ79nPDq8oLI6TvnaLgwJ8LXDRhpgJkA9hRlDhbsPHqdHF Q==;
X-CSE-ConnectionGUID: eBZD9TbvTMaHyGF4wMyQRg==
X-CSE-MsgGUID: V+cBmmpvRYSV9FOmwx7GXg==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="13123580"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="13123580"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 08:04:38 -0700
X-CSE-ConnectionGUID: Xbffxe7hS9SyGgGgKtlS5Q==
X-CSE-MsgGUID: hg8bHKE6RSaPB8uUQVz3yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="55256890"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.128])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 08:04:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Gustavo
 Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH v2 0/5] drm/i915/dmc: firmware path handling changes
In-Reply-To: <xa6zj5rxk725th4em7knyei2745fpps5bplqsdft7ua3one7oo@ufm4kw24rj3i>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1713519628.git.jani.nikula@intel.com>
 <xa6zj5rxk725th4em7knyei2745fpps5bplqsdft7ua3one7oo@ufm4kw24rj3i>
Date: Mon, 22 Apr 2024 18:04:33 +0300
Message-ID: <87zftlsake.fsf@intel.com>
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

On Fri, 19 Apr 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Fri, Apr 19, 2024 at 12:41:53PM GMT, Jani Nikula wrote:
>>v2 of https://lore.kernel.org/r/cover.1713450693.git.jani.nikula@intel.com
>>
>>Jani Nikula (5):
>>  drm/i915/dmc: handle request_firmware() errors separately
>>  drm/i915/dmc: improve firmware parse failure propagation
>>  drm/i915/dmc: split out per-platform firmware path selection
>>  drm/i915/dmc: change how to disable DMC firmware using module param
>>  drm/i915/display: move dmc_firmware_path to display params
>>
>> .../drm/i915/display/intel_display_params.c   |   4 +
>> .../drm/i915/display/intel_display_params.h   |   1 +
>> drivers/gpu/drm/i915/display/intel_dmc.c      | 175 +++++++++++-------
>> drivers/gpu/drm/i915/i915_params.c            |   3 -
>> drivers/gpu/drm/i915/i915_params.h            |   1 -
>> drivers/gpu/drm/xe/xe_device_types.h          |   3 -
>
> Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

Thanks for the reviews and acks, pushed to drm-intel-next.

BR,
Jani.



>
> thanks
> Lucas De Marchi
>
>> 6 files changed, 112 insertions(+), 75 deletions(-)
>>
>>-- 
>>2.39.2
>>

-- 
Jani Nikula, Intel
