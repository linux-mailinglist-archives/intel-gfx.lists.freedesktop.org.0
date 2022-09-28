Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1825EDFEE
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 17:16:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAFD310E9D9;
	Wed, 28 Sep 2022 15:16:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CB9010E9D9
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 15:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664378172; x=1695914172;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=5zg1rvlKln6FSyfSlvH7jiSF7ET2iPjoAPry4YzqpvA=;
 b=CBTqXdpzVexEvVGkzhg8XsZ10FU7JLtgwMgeBp10OpnpoKHUb23Egav7
 96xMiTT7wbKdtS35sG755w71ChHbSbeM0KYAzgFYKr0zj74qO4Jnog+4i
 txDF0NxV9rnKjebEH+L/PbGHIl1abTlhqbjr/5iDcEJ40USNIz08LnzyE
 sOLGG7iRxEG9MV33H6X4PD7fznTAPR77Q6sbwjBhhr4xqC0l6b2SZBHOz
 repVzufrCmVm6ynguVv+lHU71hXoPH3BX8APlpkgF5XKMhWGJL3kROcDq
 8jyDZgPmqrdO1oZZCWAoU49jkRLjC4s9Jkps8siaJMSuGp41yzjUsX1zc w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="284761639"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="284761639"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 08:15:45 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="652715348"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="652715348"
Received: from swatish2-mobl2.gar.corp.intel.com (HELO [10.215.155.144])
 ([10.215.155.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 08:15:41 -0700
Message-ID: <85557788-311c-575c-0956-2e2201567a74@intel.com>
Date: Wed, 28 Sep 2022 20:45:38 +0530
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

Also, please specify in cover-letter, current
series WB support is for TGL+
since WB is supported from SKL+ as per bspec
https://gfxspecs.intel.com/Predator/Home/Index/4290

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
