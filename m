Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F09C165CFE9
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 10:49:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B44010E51C;
	Wed,  4 Jan 2023 09:49:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E999A10E51C
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 09:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672825743; x=1704361743;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=gxAFNNYYOSW0uIQ23m16b8mj4wfsA2pI1CcKc6TScKk=;
 b=aMUUoy6Oi73bQ52MUHke/8Y7wh1k267skWJ6n3nOTkcDscpsMpD1wQ/P
 Iu+hOjKBXaTfALo8SaVH1xN6X8YqhbGlcfKGxu6nOzgvQsQ6rcDyL8uYA
 2Wt8UCDrXJZR+6DW/fzGCNRJh9J4jg0WaqE1DAArZ99lcxofvro/I0XfI
 ppnBhvHtORRHzQRRqI2uY5o1l6WIogBcJwifl2YcGFm2Uubt9wW7iVFFg
 MkUXxsMiEiSyNqZox8N/o8koUfpHB4OcyvXtpaasXgSGGHdXMbETen+SV
 KpVFf1j0TDi+2shNFtV4BkFefROPp3BV0H3Y1eyaaoGNZanBUjeB+YTSS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="323894436"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="323894436"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 01:49:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="762622837"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="762622837"
Received: from mkabdel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.25.63])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 01:49:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230102054047.124624-3-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230102054047.124624-1-suraj.kandpal@intel.com>
 <20230102054047.124624-3-suraj.kandpal@intel.com>
Date: Wed, 04 Jan 2023 11:48:58 +0200
Message-ID: <87r0way6id.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v5 2/7] drm/i915/hdcp: Keep cp fw agonstic
 naming convention
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 02 Jan 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> From: Anshuman Gupta <anshuman.gupta@intel.com>
>
> Change the include/drm/i915_mei_hdcp_interface.h to
> include/drm/i915_hdcp_interface.h

This breaks the build, because you rename struct members but don't
rename the users. Every commit needs to be self-contained.

Please always build each commit before submitting, for example:

$ git rebase $baseline --exec="make -j$(nproc)"

where $baseline is the baseline, e.g. drm-tip.


BR,
Jani.

>
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Acked-by: Tomas Winkler <tomas.winkler@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  drivers/misc/mei/hdcp/mei_hdcp.c              |  2 +-
>  ...hdcp_interface.h => i915_hdcp_interface.h} | 86 +++++++++----------
>  3 files changed, 45 insertions(+), 45 deletions(-)
>  rename include/drm/{i915_mei_hdcp_interface.h => i915_hdcp_interface.h} (75%)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 32e8b2fc3cc6..81d195ef5e57 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -43,7 +43,7 @@
>  #include <drm/drm_rect.h>
>  #include <drm/drm_vblank.h>
>  #include <drm/drm_vblank_work.h>
> -#include <drm/i915_mei_hdcp_interface.h>
> +#include <drm/i915_hdcp_interface.h>
>  #include <media/cec-notifier.h>
>  
>  #include "i915_vma.h"
> diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
> index e889a8bd7ac8..cbad27511899 100644
> --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> @@ -23,7 +23,7 @@
>  #include <linux/component.h>
>  #include <drm/drm_connector.h>
>  #include <drm/i915_component.h>
> -#include <drm/i915_mei_hdcp_interface.h>
> +#include <drm/i915_hdcp_interface.h>
>  
>  #include "mei_hdcp.h"
>  
> diff --git a/include/drm/i915_mei_hdcp_interface.h b/include/drm/i915_hdcp_interface.h
> similarity index 75%
> rename from include/drm/i915_mei_hdcp_interface.h
> rename to include/drm/i915_hdcp_interface.h
> index f441cbcd95a4..d24f6726e50c 100644
> --- a/include/drm/i915_mei_hdcp_interface.h
> +++ b/include/drm/i915_hdcp_interface.h
> @@ -6,8 +6,8 @@
>   * Ramalingam C <ramalingam.c@intel.com>
>   */
>  
> -#ifndef _I915_MEI_HDCP_INTERFACE_H_
> -#define _I915_MEI_HDCP_INTERFACE_H_
> +#ifndef _I915_HDCP_INTERFACE_H_
> +#define _I915_HDCP_INTERFACE_H_
>  
>  #include <linux/mutex.h>
>  #include <linux/device.h>
> @@ -41,44 +41,44 @@ enum hdcp_wired_protocol {
>  	HDCP_PROTOCOL_DP
>  };
>  
> -enum mei_fw_ddi {
> -	MEI_DDI_INVALID_PORT = 0x0,
> +enum hdcp_ddi {
> +	HDCP_DDI_INVALID_PORT = 0x0,
>  
> -	MEI_DDI_B = 1,
> -	MEI_DDI_C,
> -	MEI_DDI_D,
> -	MEI_DDI_E,
> -	MEI_DDI_F,
> -	MEI_DDI_A = 7,
> -	MEI_DDI_RANGE_END = MEI_DDI_A,
> +	HDCP_DDI_B = 1,
> +	HDCP_DDI_C,
> +	HDCP_DDI_D,
> +	HDCP_DDI_E,
> +	HDCP_DDI_F,
> +	HDCP_DDI_A = 7,
> +	HDCP_DDI_RANGE_END = HDCP_DDI_A,
>  };
>  
>  /**
> - * enum mei_fw_tc - ME Firmware defined index for transcoders
> - * @MEI_INVALID_TRANSCODER: Index for Invalid transcoder
> - * @MEI_TRANSCODER_EDP: Index for EDP Transcoder
> - * @MEI_TRANSCODER_DSI0: Index for DSI0 Transcoder
> - * @MEI_TRANSCODER_DSI1: Index for DSI1 Transcoder
> - * @MEI_TRANSCODER_A: Index for Transcoder A
> - * @MEI_TRANSCODER_B: Index for Transcoder B
> - * @MEI_TRANSCODER_C: Index for Transcoder C
> - * @MEI_TRANSCODER_D: Index for Transcoder D
> + * enum hdcp_tc - ME Firmware defined index for transcoders
> + * @HDCP_INVALID_TRANSCODER: Index for Invalid transcoder
> + * @HDCP_TRANSCODER_EDP: Index for EDP Transcoder
> + * @HDCP_TRANSCODER_DSI0: Index for DSI0 Transcoder
> + * @HDCP_TRANSCODER_DSI1: Index for DSI1 Transcoder
> + * @HDCP_TRANSCODER_A: Index for Transcoder A
> + * @HDCP_TRANSCODER_B: Index for Transcoder B
> + * @HDCP_TRANSCODER_C: Index for Transcoder C
> + * @HDCP_TRANSCODER_D: Index for Transcoder D
>   */
> -enum mei_fw_tc {
> -	MEI_INVALID_TRANSCODER = 0x00,
> -	MEI_TRANSCODER_EDP,
> -	MEI_TRANSCODER_DSI0,
> -	MEI_TRANSCODER_DSI1,
> -	MEI_TRANSCODER_A = 0x10,
> -	MEI_TRANSCODER_B,
> -	MEI_TRANSCODER_C,
> -	MEI_TRANSCODER_D
> +enum hdcp_transcoder {
> +	HDCP_INVALID_TRANSCODER = 0x00,
> +	HDCP_TRANSCODER_EDP,
> +	HDCP_TRANSCODER_DSI0,
> +	HDCP_TRANSCODER_DSI1,
> +	HDCP_TRANSCODER_A = 0x10,
> +	HDCP_TRANSCODER_B,
> +	HDCP_TRANSCODER_C,
> +	HDCP_TRANSCODER_D
>  };
>  
>  /**
>   * struct hdcp_port_data - intel specific HDCP port data
> - * @fw_ddi: ddi index as per ME FW
> - * @fw_tc: transcoder index as per ME FW
> + * @hdcp_ddi: ddi index as per ME FW
> + * @hdcp_transcoder: transcoder index as per ME FW
>   * @port_type: HDCP port type as per ME FW classification
>   * @protocol: HDCP adaptation as per ME FW
>   * @k: No of streams transmitted on a port. Only on DP MST this is != 1
> @@ -90,8 +90,8 @@ enum mei_fw_tc {
>   *	     streams
>   */
>  struct hdcp_port_data {
> -	enum mei_fw_ddi fw_ddi;
> -	enum mei_fw_tc fw_tc;
> +	enum hdcp_ddi hdcp_ddi;
> +	enum hdcp_transcoder hdcp_transcoder;
>  	u8 port_type;
>  	u8 protocol;
>  	u16 k;
> @@ -100,7 +100,7 @@ struct hdcp_port_data {
>  };
>  
>  /**
> - * struct i915_hdcp_component_ops- ops for HDCP2.2 services.
> + * struct i915_hdcp_ops- ops for HDCP2.2 services.
>   * @owner: Module providing the ops
>   * @initiate_hdcp2_session: Initiate a Wired HDCP2.2 Tx Session.
>   *			    And Prepare AKE_Init.
> @@ -119,9 +119,9 @@ struct hdcp_port_data {
>   * @close_hdcp_session: Close the Wired HDCP Tx session per port.
>   *			This also disables the authenticated state of the port.
>   */
> -struct i915_hdcp_component_ops {
> +struct i915_hdcp_ops {
>  	/**
> -	 * @owner: mei_hdcp module
> +	 * @owner: hdcp module
>  	 */
>  	struct module *owner;
>  
> @@ -169,16 +169,16 @@ struct i915_hdcp_component_ops {
>  
>  /**
>   * struct i915_hdcp_component_master - Used for communication between i915
> - * and mei_hdcp drivers for the HDCP2.2 services
> - * @mei_dev: device that provide the HDCP2.2 service from MEI Bus.
> - * @hdcp_ops: Ops implemented by mei_hdcp driver, used by i915 driver.
> + * and hdcp drivers for the HDCP2.2 services
> + * @hdcp_dev: device that provide the HDCP2.2 service from MEI Bus.
> + * @hdcp_ops: Ops implemented by hdcp driver or intel_hdcp_gsc , used by i915 driver.
>   */
> -struct i915_hdcp_comp_master {
> -	struct device *mei_dev;
> -	const struct i915_hdcp_component_ops *ops;
> +struct i915_hdcp_master {
> +	struct device *hdcp_dev;
> +	const struct i915_hdcp_ops *ops;
>  
>  	/* To protect the above members. */
>  	struct mutex mutex;
>  };
>  
> -#endif /* _I915_MEI_HDCP_INTERFACE_H_ */
> +#endif /* _I915_HDCP_INTERFACE_H_ */

-- 
Jani Nikula, Intel Open Source Graphics Center
