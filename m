Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5B146C620
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 22:06:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C3BA6E0DB;
	Tue,  7 Dec 2021 21:06:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 462C46E0DB
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 21:06:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="301070248"
X-IronPort-AV: E=Sophos;i="5.87,295,1631602800"; d="scan'208";a="301070248"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 13:06:54 -0800
X-IronPort-AV: E=Sophos;i="5.87,295,1631602800"; d="scan'208";a="502759279"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 13:06:54 -0800
Date: Tue, 7 Dec 2021 13:01:29 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <20211207210129.GA16721@jons-linux-dev-box>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-5-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211122230402.2023576-5-alan.previn.teres.alexis@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 22, 2021 at 03:03:59PM -0800, Alan Previn wrote:
> Add GuC's error capture output structures and definitions as how
> they would appear in GuC log buffer's error capture subregion after
> an error state capture G2H event notification.
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

s/guc_ctx_id/guc_id

With __packed (per Jani's feedback) as well:

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

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
> -- 
> 2.25.1
> 
