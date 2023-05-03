Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A70B6F5A34
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB0CD10E2CA;
	Wed,  3 May 2023 14:37:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE43910E2CA
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:37:44 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D403661166;
 Wed,  3 May 2023 14:37:43 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id A24D6C433EF;
 Wed,  3 May 2023 14:37:41 +0000 (UTC)
Date: Wed, 3 May 2023 10:37:39 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJxs8xVn5oWFWat@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <9c210d53fdbd6da5fac42e435855d269504919d7.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9c210d53fdbd6da5fac42e435855d269504919d7.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 17/24] drm/i915/guc: drop lots of kernel-doc
 markers
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

On Tue, May 02, 2023 at 06:37:34PM +0300, Jani Nikula wrote:
> The documentation is closer to not being kernel-doc, so just drop the
> kernel-doc markers.
> 
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:27: warning: Function parameter or member 'size' not described in '__guc_capture_bufstate'
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:27: warning: Function parameter or member 'data' not described in '__guc_capture_bufstate'
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:27: warning: Function parameter or member 'rd' not described in '__guc_capture_bufstate'
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:27: warning: Function parameter or member 'wr' not described in '__guc_capture_bufstate'
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'link' not described in '__guc_capture_parsed_output'
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'is_partial' not described in '__guc_capture_parsed_output'
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'eng_class' not described in '__guc_capture_parsed_output'
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'eng_inst' not described in '__guc_capture_parsed_output'
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'guc_id' not described in '__guc_capture_parsed_output'
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'lrca' not described in '__guc_capture_parsed_output'
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'reginfo' not described in '__guc_capture_parsed_output'
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:62: warning: wrong kernel-doc identifier on line:
>  * struct guc_debug_capture_list_header / struct guc_debug_capture_list
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:80: warning: wrong kernel-doc identifier on line:
>  * struct __guc_mmio_reg_descr / struct __guc_mmio_reg_descr_group
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:105: warning: wrong kernel-doc identifier on line:
>  * struct guc_state_capture_header_t / struct guc_state_capture_t /
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:163: warning: Function parameter or member 'is_valid' not described in '__guc_capture_ads_cache'
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:163: warning: Function parameter or member 'ptr' not described in '__guc_capture_ads_cache'
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:163: warning: Function parameter or member 'size' not described in '__guc_capture_ads_cache'
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:163: warning: Function parameter or member 'status' not described in '__guc_capture_ads_cache'
> drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'marker' not described in 'guc_log_buffer_state'
> drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'read_ptr' not described in 'guc_log_buffer_state'
> drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'write_ptr' not described in 'guc_log_buffer_state'
> drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'size' not described in 'guc_log_buffer_state'
> drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'sampled_write_ptr' not described in 'guc_log_buffer_state'
> drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'wrap_offset' not described in 'guc_log_buffer_state'
> drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'flush_to_file' not described in 'guc_log_buffer_state'
> drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'buffer_full_cnt' not described in 'guc_log_buffer_state'
> drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'reserved' not described in 'guc_log_buffer_state'
> drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'flags' not described in 'guc_log_buffer_state'
> drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:491: warning: Function parameter or member 'version' not described in 'guc_log_buffer_state'
> 

It looks they are all internal and the only one that deserves documentation
is intel_guc_state_capture and that is properly documented...

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h | 12 ++++++------
>  drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  2 +-
>  2 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
> index 9d589c28f40f..1b6c219e1675 100644
> --- a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
> @@ -12,7 +12,7 @@
>  struct intel_guc;
>  struct file;
>  
> -/**
> +/*
>   * struct __guc_capture_bufstate
>   *
>   * Book-keeping structure used to track read and write pointers
> @@ -26,7 +26,7 @@ struct __guc_capture_bufstate {
>  	u32 wr;
>  };
>  
> -/**
> +/*
>   * struct __guc_capture_parsed_output - extracted error capture node
>   *
>   * A single unit of extracted error-capture output data grouped together
> @@ -58,7 +58,7 @@ struct __guc_capture_parsed_output {
>  #define GCAP_PARSED_REGLIST_INDEX_ENGINST  BIT(GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE)
>  };
>  
> -/**
> +/*
>   * struct guc_debug_capture_list_header / struct guc_debug_capture_list
>   *
>   * As part of ADS registration, these header structures (followed by
> @@ -76,7 +76,7 @@ struct guc_debug_capture_list {
>  	struct guc_mmio_reg regs[];
>  } __packed;
>  
> -/**
> +/*
>   * struct __guc_mmio_reg_descr / struct __guc_mmio_reg_descr_group
>   *
>   * intel_guc_capture module uses these structures to maintain static
> @@ -101,7 +101,7 @@ struct __guc_mmio_reg_descr_group {
>  	struct __guc_mmio_reg_descr *extlist; /* only used for steered registers */
>  };
>  
> -/**
> +/*
>   * struct guc_state_capture_header_t / struct guc_state_capture_t /
>   * guc_state_capture_group_header_t / guc_state_capture_group_t
>   *
> @@ -148,7 +148,7 @@ struct guc_state_capture_group_t {
>  	struct guc_state_capture_t capture_entries[];
>  } __packed;
>  
> -/**
> +/*
>   * struct __guc_capture_ads_cache
>   *
>   * A structure to cache register lists that were populated and registered
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index 4ae5fc2f6002..8bb9ed7c7b4d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -451,7 +451,7 @@ enum guc_log_buffer_type {
>  	GUC_MAX_LOG_BUFFER
>  };
>  
> -/**
> +/*
>   * struct guc_log_buffer_state - GuC log buffer state
>   *
>   * Below state structure is used for coordination of retrieval of GuC firmware
> -- 
> 2.39.2
> 
