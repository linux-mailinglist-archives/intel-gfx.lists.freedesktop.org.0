Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CEB45B80C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 11:08:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7BC76EA74;
	Wed, 24 Nov 2021 10:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 866A26EA74
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 10:08:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="215275810"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="215275810"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 02:08:22 -0800
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="456989639"
Received: from moconno1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.40])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 02:08:21 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211122230402.2023576-5-alan.previn.teres.alexis@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-5-alan.previn.teres.alexis@intel.com>
Date: Wed, 24 Nov 2021 12:08:18 +0200
Message-ID: <87a6htn9wt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 4/7] drm/i915/guc: Add GuC's error state
 capture output structures.
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 22 Nov 2021, Alan Previn <alan.previn.teres.alexis@intel.com> wrote:
> Add GuC's error capture output structures and definitions as how
> they would appear in GuC log buffer's error capture subregion after
> an error state capture G2H event notification.

If it's for decoding data, should they all have __packed?

>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>  .../gpu/drm/i915/gt/uc/intel_guc_capture.h    | 35 +++++++++++++++++++
>  1 file changed, 35 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
> index df420f0f49b3..b2454b6cd778 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
> @@ -29,6 +29,41 @@ struct __guc_mmio_reg_descr_group {
>  	struct __guc_mmio_reg_descr * ext;
>  };
>  
> +struct intel_guc_capture_out_data_header {
> +	u32 reserved1;
> +	u32 info;
> +		#define GUC_CAPTURE_DATAHDR_SRC_TYPE GENMASK(3, 0) /* as per enum guc_capture_type */
> +		#define GUC_CAPTURE_DATAHDR_SRC_CLASS GENMASK(7, 4) /* as per GUC_MAX_ENGINE_CLASSES */
> +		#define GUC_CAPTURE_DATAHDR_SRC_INSTANCE GENMASK(11, 8)
> +	u32 lrca; /* if type-instance, LRCA (address) that hung, else set to ~0 */
> +	u32 guc_ctx_id; /* if type-instance, context index of hung context, else set to ~0 */
> +	u32 num_mmios;
> +		#define GUC_CAPTURE_DATAHDR_NUM_MMIOS GENMASK(9, 0)
> +};
> +
> +struct intel_guc_capture_out_data {
> +	struct intel_guc_capture_out_data_header capture_header;
> +	struct guc_mmio_reg capture_list[0];
> +};
> +
> +enum guc_capture_group_types {
> +	GUC_STATE_CAPTURE_GROUP_TYPE_FULL,
> +	GUC_STATE_CAPTURE_GROUP_TYPE_PARTIAL,
> +	GUC_STATE_CAPTURE_GROUP_TYPE_MAX,
> +};
> +
> +struct intel_guc_capture_out_group_header {
> +	u32 reserved1;
> +	u32 info;
> +		#define GUC_CAPTURE_GRPHDR_SRC_NUMCAPTURES GENMASK(7, 0)
> +		#define GUC_CAPTURE_GRPHDR_SRC_CAPTURE_TYPE GENMASK(15, 8)
> +};
> +
> +struct intel_guc_capture_out_group {
> +	struct intel_guc_capture_out_group_header group_header;
> +	struct intel_guc_capture_out_data group_lists[0];
> +};
> +
>  struct intel_guc_state_capture {
>  	struct __guc_mmio_reg_descr_group *reglists;
>  	u16 num_instance_regs[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];

-- 
Jani Nikula, Intel Open Source Graphics Center
