Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09928548157
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jun 2022 10:16:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1B7610E056;
	Mon, 13 Jun 2022 08:16:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08CE310E074
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jun 2022 08:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655108210; x=1686644210;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=m11NCYmbWWqBZLtyzJ/Wegs4fn7Ksih4q55BiPHTbCg=;
 b=TT3uWZVlPlAngzHrrx1CM3cYCbjc0N6Lrp/vI4M4jgUX3T3ZCqTlryIN
 i7JAYNf5JZWbkEZ6Tu4TgEVDlS8bUbpHHbTXMVnGInbEhmF252OobT8nd
 a+3JoSs1TRc+I6LSBdhUtYT4stvxa10/uQ2bgR+XEG7jfuO0ruQW4qO7n
 8QF3a4Mq64ZJgEV0Ad9mOVNmzkwQJWMNMLgmYZRfcq/oL97vIuU3t3RIB
 nhWGI8bfSl7YDyMDhv+R6kPTOifeaA51qYwFgkzGCPgvvEpjRbaiOWk9m
 CmMDeuS6iYUNgit8Co1ah/pCyjEocF4UytYLpW38yOGrsqQkRzIAnr46K Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10376"; a="275741326"
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="275741326"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 01:16:49 -0700
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="651289823"
Received: from npower-mobl.ger.corp.intel.com (HELO [10.213.222.108])
 ([10.213.222.108])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 01:16:48 -0700
Message-ID: <dbc2ad75-1248-8d53-281d-f0a308733972@linux.intel.com>
Date: Mon, 13 Jun 2022 09:16:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 00/15] HuC loading for DG2
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
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/06/2022 00:19, Daniele Ceraolo Spurio wrote:
> On DG2, HuC loading is performed by the GSC, via a PXP command. The load
> operation itself is relatively simple (just send a message to the GSC
> with the physical address of the HuC in LMEM), but there are timing
> changes that requires special attention. In particular, to send a PXP
> command we need to first export the GSC driver and then wait for the
> mei-gsc and mei-pxp modules to start, which means that HuC load will
> complete after i915 load is complete. This means that there is a small
> window of time after i915 is registered and before HuC is loaded
> during which userspace could submit and/or checking the HuC load status,
> although this is quite unlikely to happen (HuC is usually loaded before
> kernel init/resume completes).
> We've consulted with the media team in regards to how to handle this and
> they've asked us to do the following:
> 
> 1) Report HuC as loaded in the getparam IOCTL even if load is still in
> progress. The media driver uses the IOCTL as a way to check if HuC is
> enabled and then includes a secondary check in the batches to get the
> actual status, so doing it this way allows userspace to keep working
> without changes.
> 
> 2) Stall all userspace VCS submission until HuC is loaded. Stalls are
> expected to be very rare (if any), due to the fact that HuC is usually
> loaded before kernel init/resume is completed.

Motivation to add these complications into i915 are not clear to me 
here. I mean there is no HuC on DG2 _yet_ is the premise of the series, 
right? So no backwards compatibility concerns. In this case why jump 
through the hoops and not let userspace handle all of this by just 
leaving the getparam return the true status?

Regards,

Tvrtko

> Timeouts are in place to ensure all submissions are unlocked in case
> something goes wrong. Since we need to monitor the status of the mei
> driver to know what's happening and when to time out, a notifier has
> been added so we get a callback when the status of the mei driver
> changes.
> 
> Note that this series depends on the GSC support for DG2 [1], which has
> been included squashed in a single patch.
> 
> [1]: https://patchwork.freedesktop.org/series/102339/
> 
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: Tony Ye <tony.ye@intel.com>
> Cc: Alexander Usyskin <alexander.usyskin@intel.com>
> 
> Daniele Ceraolo Spurio (8):
>    HAX: mei: GSC support for XeHP SDV and DG2 platform
>    drm/i915/pxp: load the pxp module when we have a gsc-loaded huc
>    drm/i915/dg2: setup HuC loading via GSC
>    drm/i915/huc: track delayed HuC load with a fence
>    drm/i915/huc: stall media submission until HuC is loaded
>    drm/i915/huc: report HuC as loaded even if load still in progress
>    drm/i915/huc: define gsc-compatible HuC fw for DG2
>    HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI
> 
> Tomas Winkler (4):
>    mei: add support to GSC extended header
>    mei: bus: enable sending gsc commands
>    mei: pxp: support matching with a gfx discrete card
>    drm/i915/pxp: add huc authentication and loading command
> 
> Vitaly Lubart (3):
>    mei: bus: extend bus API to support command streamer API
>    mei: pxp: add command streamer API to the PXP driver
>    drm/i915/pxp: implement function for sending tee stream command
> 
>   drivers/gpu/drm/i915/Kconfig.debug            |   2 +
>   drivers/gpu/drm/i915/Makefile                 |  11 +-
>   drivers/gpu/drm/i915/gt/intel_gsc.c           | 141 +++++++++-
>   drivers/gpu/drm/i915/gt/intel_gsc.h           |   3 +
>   drivers/gpu/drm/i915/gt/uc/intel_huc.c        | 244 ++++++++++++++++--
>   drivers/gpu/drm/i915/gt/uc/intel_huc.h        |  27 ++
>   drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c     |  34 +++
>   drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h     |   1 +
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  64 +++--
>   drivers/gpu/drm/i915/i915_request.c           |  24 ++
>   drivers/gpu/drm/i915/pxp/intel_pxp.c          |  32 ++-
>   drivers/gpu/drm/i915/pxp/intel_pxp.h          |  32 ---
>   drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      |  69 +++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_huc.h      |  15 ++
>   drivers/gpu/drm/i915/pxp/intel_pxp_irq.h      |   8 +
>   drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |   8 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp_session.h  |  11 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 138 +++++++++-
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |   5 +
>   .../drm/i915/pxp/intel_pxp_tee_interface.h    |  21 ++
>   drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |   6 +
>   drivers/misc/mei/bus-fixup.c                  | 105 +++++---
>   drivers/misc/mei/bus.c                        | 145 ++++++++++-
>   drivers/misc/mei/client.c                     |  69 +++--
>   drivers/misc/mei/debugfs.c                    |  17 ++
>   drivers/misc/mei/gsc-me.c                     |  77 +++++-
>   drivers/misc/mei/hbm.c                        |  25 +-
>   drivers/misc/mei/hw-me-regs.h                 |   7 +
>   drivers/misc/mei/hw-me.c                      | 123 +++++++--
>   drivers/misc/mei/hw-me.h                      |  14 +-
>   drivers/misc/mei/hw-txe.c                     |   2 +-
>   drivers/misc/mei/hw.h                         |  62 +++++
>   drivers/misc/mei/init.c                       |  21 +-
>   drivers/misc/mei/interrupt.c                  |  47 +++-
>   drivers/misc/mei/main.c                       |   2 +-
>   drivers/misc/mei/mei_dev.h                    |  33 +++
>   drivers/misc/mei/mkhi.h                       |  57 ++++
>   drivers/misc/mei/pci-me.c                     |   2 +-
>   drivers/misc/mei/pxp/mei_pxp.c                |  40 ++-
>   include/drm/i915_pxp_tee_interface.h          |   5 +
>   include/linux/mei_aux.h                       |   2 +
>   include/linux/mei_cl_bus.h                    |   6 +
>   42 files changed, 1537 insertions(+), 220 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_huc.h
>   create mode 100644 drivers/misc/mei/mkhi.h
> 
