Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A5E7D2CE0
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 10:38:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7945610E183;
	Mon, 23 Oct 2023 08:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B990C10E183
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 08:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698050304; x=1729586304;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=wYtZNWlAnc59OxiPHRPWXPS09xwvcopPvfxNqir/hTs=;
 b=HAQqNVm+KJu/iiWrJybOAA3M3I3uQVsTNbmY0uPHg2wE3fQFsonmBEeX
 PuaikHnMm6s7sdIBpeHg8rhItCTUHOXCrNlNMG2di8CbS6roMe73dZGkW
 VFMqo9FQ/qC5/jJqXCcnwyKO7r247a5CqXL1sqGpiEJcJwI2ApqWgyGHc
 haG6Oii+Pdh9WguNFfyomhJXXbi3upnKaD0zdy5wzpx+/o0xfzzQK7XlZ
 o9eP7rdUj5PRS/duh8rzczK8YiC7g9yaF2At+ueLqeapOaItfpQQrHyme
 0m5qN1GJfQwaHbEFuUVqYDJYUsy+knVc3GYpd3MIPwq4NRcNwP5vPOfjW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="385676792"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="385676792"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 01:38:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="901742182"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="901742182"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.40.234])
 ([10.249.40.234])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 01:36:05 -0700
Message-ID: <4d4705bb-573d-3c95-3c70-7313c59effe1@linux.intel.com>
Date: Mon, 23 Oct 2023 10:38:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231023-wabb-v3-0-1a4fbc632440@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20231023-wabb-v3-0-1a4fbc632440@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 0/4] Apply Wa_16018031267 / Wa_16018063123
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej

On 10/23/2023 9:41 AM, Andrzej Hajda wrote:
> Hi all,
>
> This the series from Jonathan:
> [PATCH v12 0/4] Apply Wa_16018031267 / Wa_16018063123
>
> taken over by me.
>
> Changes in this version are described in the patches, in short:
> v2:
> - use real memory as WABB destination,

Do we still need the NULL PTE patch now ?


Regards,

Nirmoy

> - address CI compains - do not decrease vm.total,
> - minor reordering.
> v3:
> - fixed typos,
> - removed spare defs,
> - added tags
>
> Regards
> Andrzej
>
> Andrzej Hajda (1):
>    drm/i915: Reserve some kernel space per vm
>
> Jonathan Cavitt (3):
>    drm/i915: Enable NULL PTE support for vm scratch
>    drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
>    drm/i915: Set copy engine arbitration for Wa_16018031267 /
>      Wa_16018063123
>
> .../drm/i915/gem/selftests/i915_gem_context.c |   6 ++
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  41 +++++++
>   drivers/gpu/drm/i915/gt/intel_engine_regs.h   |   6 ++
>   drivers/gpu/drm/i915/gt/intel_gt.h            |   4 +
>   drivers/gpu/drm/i915/gt/intel_gt_types.h      |   2 +
>   drivers/gpu/drm/i915/gt/intel_gtt.h           |   2 +
>   drivers/gpu/drm/i915/gt/intel_lrc.c           | 100 +++++++++++++++++-
>   drivers/gpu/drm/i915/gt/intel_workarounds.c   |   5 +
>   drivers/gpu/drm/i915/gt/selftest_lrc.c        |  65 ++++++++----
>   drivers/gpu/drm/i915/i915_drv.h               |   2 +
>   drivers/gpu/drm/i915/i915_pci.c               |   2 +
>   drivers/gpu/drm/i915/intel_device_info.h      |   1 +
>   12 files changed, 215 insertions(+), 21 deletions(-)
>
> ---
> Andrzej Hajda (1):
>        drm/i915: Reserve some kernel space per vm
>
> Jonathan Cavitt (3):
>        drm/i915: Enable NULL PTE support for vm scratch
>        drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
>        drm/i915: Set copy engine arbitration for Wa_16018031267 / Wa_16018063123
>
>   .../gpu/drm/i915/gem/selftests/i915_gem_context.c  |   6 ++
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c               |  41 +++++++++
>   drivers/gpu/drm/i915/gt/intel_engine_regs.h        |   6 ++
>   drivers/gpu/drm/i915/gt/intel_gt.h                 |   4 +
>   drivers/gpu/drm/i915/gt/intel_gtt.h                |   2 +
>   drivers/gpu/drm/i915/gt/intel_lrc.c                | 100 ++++++++++++++++++++-
>   drivers/gpu/drm/i915/gt/intel_workarounds.c        |   5 ++
>   drivers/gpu/drm/i915/gt/selftest_lrc.c             |  65 ++++++++++----
>   drivers/gpu/drm/i915/i915_drv.h                    |   2 +
>   drivers/gpu/drm/i915/i915_pci.c                    |   2 +
>   drivers/gpu/drm/i915/intel_device_info.h           |   1 +
>   11 files changed, 213 insertions(+), 21 deletions(-)
> ---
> base-commit: 201c8a7bd1f3f415920a2df4b8a8817e973f42fe
> change-id: 20231020-wabb-bbe9324a69a8
>
> Best regards,
