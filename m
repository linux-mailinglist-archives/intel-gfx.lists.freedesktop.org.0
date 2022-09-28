Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7732C5EDD1A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 14:47:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BFE110E6F5;
	Wed, 28 Sep 2022 12:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49B4710E5EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 12:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664369230; x=1695905230;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=WwFErN5m+5bFOBwOGCx684ZmY/+hXjDaGgHVSIBz8cg=;
 b=UiOR5d9Elt9/uYjAdDVaWIMkpTK2JuKAZhLSiYNAtxgL2VqVfI9NwBZ9
 nkvPXV39ah2fp8bSR3qxy2Cn7TGGrhbyDE/CAAJ2U3VDeN/BwXSERPV5j
 4BOY3pTw7uiSD9VCv0RnZ/GvcsqvNzr6ORbRYR7vgp8H+NFrGJUR3nFUv
 /RfSAaf2ivK7S9YfhdjPyFz53ZlwaPm6tQWxI30Oh1esaP75ZGlA8rmUa
 1jxJ5+Q1hEs7Og6KgJHnN6+YzvCDI+xAmcEzj9GoC5eC8rlFrb+dGk2Ew
 xwNjWakn4jQqZnEp43CWMqiUEBL65DINYIXWAPpU3peWtG3QU2gO6XgS5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="302501923"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="302501923"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 05:47:09 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="573023230"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="573023230"
Received: from swatish2-mobl2.gar.corp.intel.com (HELO [10.215.155.144])
 ([10.215.155.144])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 05:47:07 -0700
Message-ID: <d690c52f-edd1-fb19-aad4-ec32ed928dcf@intel.com>
Date: Wed, 28 Sep 2022 18:16:49 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220919130505.1984383-1-suraj.kandpal@intel.com>
From: Swati Sharma <swati2.sharma@intel.com>
Organization: Intel
In-Reply-To: <20220919130505.1984383-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v6 0/3] Enable Pipewriteback
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Suraj,

CI is not green
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v9/shards-all.html?testfilter=kms_writeback

2/4 subtests are passing
writeback-fb-id subtest can be fixed by asserting EINVAL for i915
we need to fix writeback-check-output first
On local validation, we were getting CRC mismatch however CI results
show different issue 
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v9/shard-tglu-4/igt@kms_writeback@writeback-check-output.html#dmesg-warnings575
Please check the same if its relevant.

On 19-Sep-22 6:35 PM, Kandpal, Suraj wrote:
> A patch series was floated in the drm mailing list which aimed to change
> the drm_connector and drm_encoder fields to pointer in the
> drm_connector_writeback structure, this received a huge pushback from
> the community but since i915 expects each connector present in the
> drm_device list to be a intel_connector but drm_writeback framework
> makes us have a connector which cannot be embedded in an intel_connector
> structure.
> [1]
> https://patchwork.kernel.org/project/dri-devel/patch/20220202081702.22119-1-suraj.kandpal@intel.com/
> [2]
> https://patchwork.kernel.org/project/dri-devel/patch/20220202085429.22261-6-suraj.kandpal@intel.com/
> Since no one had an issue with encoder field being changed into a
> pointer it was decided to break the connector and encoder pointer
> changes into two different series.The encoder field changes is
> currently being worked upon by Abhinav Kumar and the changes have been
> merged.
> [3]https://patchwork.kernel.org/project/dri-devel/list/?series=633565
> Going forward we use a drm_connector which is not embedded in
> intel_connector.
> We also create a intel_encoder to avoid changes to many
> iterators but no intel_connector. We also changed all iterators that
> 
> ---v2
> solving BAT issues
> 
> ---v3
> -removing unecessary comments from i915_reg.h [Arun]
> -moving wd_init into its own if condition [Arun]
> -fixing comment styling and alignment in intel_wd.c [Arun]
> -removing continue from loop and calling function if condition is met
> [Arun]
> -removing useless arguments from intel_queue_writeback_job and
> intel_enabling_capture [Arun]
> 
> --v4
> Adding Reviewed-by to patches which were previously reviewd
> 
> --v5
> Adding Reviewed-by for patch 3
> 
> --v6
> Solving BAT issue
> changes for checkpatch to pass
> 
> Suraj Kandpal (3):
>    drm/i915: Define WD trancoder for i915
>    drm/i915 : Changing intel_connector iterators
>    drm/i915: Enabling WD Transcoder
> 
>   drivers/gpu/drm/i915/Makefile                 |   1 +
>   drivers/gpu/drm/i915/display/intel_acpi.c     |   8 +-
>   drivers/gpu/drm/i915/display/intel_crtc.c     |   6 +
>   .../drm/i915/display/intel_crtc_state_dump.c  |   1 +
>   drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +
>   drivers/gpu/drm/i915/display/intel_display.c  |  68 +-
>   drivers/gpu/drm/i915/display/intel_display.h  |  18 +-
>   .../drm/i915/display/intel_display_debugfs.c  |  13 +-
>   .../drm/i915/display/intel_display_types.h    |  32 +-
>   drivers/gpu/drm/i915/display/intel_dpll.c     |   6 +
>   .../drm/i915/display/intel_modeset_setup.c    | 119 ++-
>   .../drm/i915/display/intel_modeset_verify.c   |  17 +-
>   drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
>   drivers/gpu/drm/i915/display/intel_wd.c       | 694 ++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_wd.h       |  48 ++
>   drivers/gpu/drm/i915/i915_drv.h               |   1 +
>   drivers/gpu/drm/i915/i915_irq.c               |   8 +-
>   drivers/gpu/drm/i915/i915_pci.c               |   7 +-
>   drivers/gpu/drm/i915/i915_reg.h               | 137 ++++
>   19 files changed, 1137 insertions(+), 56 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/display/intel_wd.c
>   create mode 100644 drivers/gpu/drm/i915/display/intel_wd.h
> 

-- 
~Swati Sharma
