Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2092064B3A2
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 11:54:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C17710E301;
	Tue, 13 Dec 2022 10:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBCAD10E301
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 10:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670928877; x=1702464877;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=dVP3FrAGGLO1Wir5vvtr4Lyxvr6PxzS/Qaj+7J3eJxU=;
 b=QsTPw5rM2DqCpHvTd0uKSSHrgRG4IieHZVmKpLYu79E1OSf8qb60KhBO
 iikzoEkjPRdMu67+/cScmS8TzXjPI3DgWhMFBV1aarKg/xLcBvWnJP3an
 Om/BecqyRs48EzUHdrHL0nq6+hPyn3XDhGynG35c6x32UJUwvf4N5JBWE
 MrO4LUqD7m0lEcmtUy98ljntbuORI8IxptInmAJ4+/KWDc75u9i69aPAm
 cWy2ApaomkhGC8Nm81xRJWUep2s3TndHOayy96Y+HTnWzYww51Wi7Rtmp
 9BJOyLV7jgPaeELYci7D+yF5O7NQzzPRA8RNiJt8eO7XsAPwlgf8FtEjj Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="382405563"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="382405563"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 02:54:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="681036475"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="681036475"
Received: from amicu-mobl.ger.corp.intel.com (HELO localhost) ([10.252.19.220])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 02:54:35 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221213070158.2621403-8-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221213070158.2621403-1-suraj.kandpal@intel.com>
 <20221213070158.2621403-8-suraj.kandpal@intel.com>
Date: Tue, 13 Dec 2022 12:54:33 +0200
Message-ID: <87y1rbwp3q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 7/7] drm/i915/mtl: Add HDCP GSC interface
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
Cc: Tomas Winkler <tomas.winkler@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 13 Dec 2022, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> MTL uses GSC command streamer i.e gsc cs to send HDCP/PXP commands
> to GSC f/w. It requires to keep hdcp display driver
> agnostic to content protection f/w (ME/GSC fw) in the form of
> i915_hdcp_fw_ops generic ops.
>
> Adding HDCP GSC CS interface by leveraging the i915_hdcp_fw_ops generic
> ops instead of I915_HDCP_COMPONENT as integral part of i915.
>
> Adding checks to see if GSC is loaded and proxy is setup
>
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  28 +-
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 503 +++++++++++++++++-
>  2 files changed, 524 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index e856b10948ab..efdaa938df48 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -25,6 +25,8 @@
>  #include "intel_hdcp.h"
>  #include "intel_hdcp_regs.h"
>  #include "intel_pcode.h"
> +#include "intel_connector.h"
> +#include "display/intel_hdcp_gsc.h"

Please keep sorted.

>  
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
> @@ -203,13 +205,20 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp = &connector->hdcp;
> +	struct intel_gt *gt = dev_priv->media_gt;
> +	struct intel_gsc_uc *gsc = &gt->uc.gsc;
>  	bool capable = false;
>  
>  	/* I915 support for HDCP2.2 */
>  	if (!hdcp->hdcp2_supported)
>  		return false;
>  
> -	/* MEI interface is solid */
> +	/* If MTL+ make sure gsc is loaded and proxy is setup */
> +	if (DISPLAY_VER(dev_priv) >= 14)

This should be abstracted to avoid duplicating DISPLAY_VER(dev_priv) >=
14.

> +		if (!intel_uc_fw_is_running(&gsc->fw))
> +			return false;
> +
> +	/* MEI/GSC interface is solid depending on which is used */
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
>  	if (!dev_priv->display.hdcp.comp_added ||  !dev_priv->display.hdcp.master) {
>  		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> @@ -2235,7 +2244,7 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
>  
>  static bool is_hdcp2_supported(struct drm_i915_private *dev_priv)
>  {
> -	if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
> +	if (DISPLAY_VER(dev_priv) < 14 && !IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
>  		return false;
>  
>  	return (DISPLAY_VER(dev_priv) >= 10 ||
> @@ -2256,10 +2265,14 @@ void intel_hdcp_component_init(struct drm_i915_private *dev_priv)
>  
>  	dev_priv->display.hdcp.comp_added = true;
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> -	ret = component_add_typed(dev_priv->drm.dev, &i915_hdcp_component_ops,
> -				  I915_COMPONENT_HDCP);
> +
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		ret = intel_gsc_hdcp_init(dev_priv);
> +	else
> +		ret = component_add_typed(dev_priv->drm.dev, &i915_hdcp_component_ops,
> +					  I915_COMPONENT_HDCP);

Ditto.

>  	if (ret < 0) {
> -		drm_dbg_kms(&dev_priv->drm, "Failed at component add(%d)\n",
> +		drm_dbg_kms(&dev_priv->drm, "Failed at fw component add(%d)\n",
>  			    ret);
>  		mutex_lock(&dev_priv->display.hdcp.comp_mutex);
>  		dev_priv->display.hdcp.comp_added = false;
> @@ -2485,7 +2498,10 @@ void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
>  	dev_priv->display.hdcp.comp_added = false;
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  
> -	component_del(dev_priv->drm.dev, &i915_hdcp_component_ops);
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		intel_gsc_hdcp_fini(dev_priv);
> +	else
> +		component_del(dev_priv->drm.dev, &i915_hdcp_component_ops);

Ditto.

>  }
>  
>  void intel_hdcp_cleanup(struct intel_connector *connector)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index aea3a1158c75..380ebbabb9ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -3,6 +3,7 @@
>   * Copyright 2021, Intel Corporation.
>   */
>  
> +#include <drm/i915_cp_fw_hdcp_interface.h>

Blank line between <> and "" includes.

>  #include "i915_drv.h"
>  #include "gt/uc/intel_gsc_fw.h"
>  #include "gt/uc/intel_gsc_fwif.h"
> @@ -16,6 +17,505 @@ struct intel_hdcp_gsc_message {
>  	void *hdcp_cmd;
>  };
>  
> +static int
> +gsc_hdcp_initiate_session(struct device *dev, struct hdcp_port_data *data,
> +			  struct hdcp2_ake_init *ake_data)
> +{
> +	struct wired_cmd_initiate_hdcp2_session_in session_init_in = { { 0 } };
> +	struct wired_cmd_initiate_hdcp2_session_out
> +						session_init_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !ake_data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_cp_fw_fill_session_in(&session_init_in, data);
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&session_init_in,
> +				       sizeof(session_init_in),
> +				       (u8 *)&session_init_out,
> +				       sizeof(session_init_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (session_init_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
> +			    WIRED_INITIATE_HDCP2_SESSION,
> +			    session_init_out.header.status);
> +		return -EIO;
> +	}
> +
> +	ake_data->msg_id = HDCP_2_2_AKE_INIT;
> +	ake_data->tx_caps = session_init_out.tx_caps;
> +	memcpy(ake_data->r_tx, session_init_out.r_tx, HDCP_2_2_RTX_LEN);
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_verify_receiver_cert_prepare_km(struct device *dev,
> +					 struct hdcp_port_data *data,
> +					 struct hdcp2_ake_send_cert *rx_cert,
> +					 bool *km_stored,
> +					 struct hdcp2_ake_no_stored_km
> +								*ek_pub_km,
> +					 size_t *msg_sz)
> +{
> +	struct wired_cmd_verify_receiver_cert_in verify_rxcert_in = { { 0 } };
> +	struct wired_cmd_verify_receiver_cert_out verify_rxcert_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km || !msg_sz)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_cp_fw_fill_rxcert_in(&verify_rxcert_in, rx_cert, data);
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_rxcert_in,
> +				       sizeof(verify_rxcert_in),
> +				       (u8 *)&verify_rxcert_out,
> +				       sizeof(verify_rxcert_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed: %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (verify_rxcert_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
> +			    WIRED_VERIFY_RECEIVER_CERT,
> +			    verify_rxcert_out.header.status);
> +		return -EIO;
> +	}
> +
> +	*km_stored = !!verify_rxcert_out.km_stored;
> +	if (verify_rxcert_out.km_stored) {
> +		ek_pub_km->msg_id = HDCP_2_2_AKE_STORED_KM;
> +		*msg_sz = sizeof(struct hdcp2_ake_stored_km);
> +	} else {
> +		ek_pub_km->msg_id = HDCP_2_2_AKE_NO_STORED_KM;
> +		*msg_sz = sizeof(struct hdcp2_ake_no_stored_km);
> +	}
> +
> +	memcpy(ek_pub_km->e_kpub_km, &verify_rxcert_out.ekm_buff,
> +	       sizeof(verify_rxcert_out.ekm_buff));
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_verify_hprime(struct device *dev, struct hdcp_port_data *data,
> +		       struct hdcp2_ake_send_hprime *rx_hprime)
> +{
> +	struct wired_cmd_ake_send_hprime_in send_hprime_in = { { 0 } };
> +	struct wired_cmd_ake_send_hprime_out send_hprime_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !rx_hprime)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_cp_fw_fill_hprime_in(&send_hprime_in, rx_hprime, data);
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&send_hprime_in,
> +				       sizeof(send_hprime_in),
> +				       (u8 *)&send_hprime_out,
> +				       sizeof(send_hprime_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (send_hprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
> +			    WIRED_AKE_SEND_HPRIME, send_hprime_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_store_pairing_info(struct device *dev, struct hdcp_port_data *data,
> +			    struct hdcp2_ake_send_pairing_info *pairing_info)
> +{
> +	struct wired_cmd_ake_send_pairing_info_in pairing_info_in = { { 0 } };
> +	struct wired_cmd_ake_send_pairing_info_out pairing_info_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !pairing_info)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_cp_fw_fill_pairing_info_in(&pairing_info_in, pairing_info,
> +					data);
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&pairing_info_in,
> +				       sizeof(pairing_info_in),
> +				       (u8 *)&pairing_info_out,
> +				       sizeof(pairing_info_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (pairing_info_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. Status: 0x%X\n",
> +			    WIRED_AKE_SEND_PAIRING_INFO,
> +			    pairing_info_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_initiate_locality_check(struct device *dev,
> +				 struct hdcp_port_data *data,
> +				 struct hdcp2_lc_init *lc_init_data)
> +{
> +	struct wired_cmd_init_locality_check_in lc_init_in = { { 0 } };
> +	struct wired_cmd_init_locality_check_out lc_init_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !lc_init_data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_cp_fw_fill_locality_check_in(&lc_init_in, data);
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&lc_init_in, sizeof(lc_init_in),
> +				       (u8 *)&lc_init_out, sizeof(lc_init_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (lc_init_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. status: 0x%X\n",
> +			    WIRED_INIT_LOCALITY_CHECK, lc_init_out.header.status);
> +		return -EIO;
> +	}
> +
> +	lc_init_data->msg_id = HDCP_2_2_LC_INIT;
> +	memcpy(lc_init_data->r_n, lc_init_out.r_n, HDCP_2_2_RN_LEN);
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_verify_lprime(struct device *dev, struct hdcp_port_data *data,
> +		       struct hdcp2_lc_send_lprime *rx_lprime)
> +{
> +	struct wired_cmd_validate_locality_in verify_lprime_in = { { 0 } };
> +	struct wired_cmd_validate_locality_out verify_lprime_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !rx_lprime)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_cp_fw_fill_validate_locality_in(&verify_lprime_in, rx_lprime,
> +					     data);
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_lprime_in,
> +				       sizeof(verify_lprime_in),
> +				       (u8 *)&verify_lprime_out,
> +				       sizeof(verify_lprime_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (verify_lprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_VALIDATE_LOCALITY,
> +			    verify_lprime_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int gsc_hdcp_get_session_key(struct device *dev,
> +				    struct hdcp_port_data *data,
> +				    struct hdcp2_ske_send_eks *ske_data)
> +{
> +	struct wired_cmd_get_session_key_in get_skey_in = { { 0 } };
> +	struct wired_cmd_get_session_key_out get_skey_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !ske_data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_cp_fw_fill_session_key_in(&get_skey_in, data);
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&get_skey_in, sizeof(get_skey_in),
> +				       (u8 *)&get_skey_out, sizeof(get_skey_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (get_skey_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_GET_SESSION_KEY, get_skey_out.header.status);
> +		return -EIO;
> +	}
> +
> +	ske_data->msg_id = HDCP_2_2_SKE_SEND_EKS;
> +	memcpy(ske_data->e_dkey_ks, get_skey_out.e_dkey_ks,
> +	       HDCP_2_2_E_DKEY_KS_LEN);
> +	memcpy(ske_data->riv, get_skey_out.r_iv, HDCP_2_2_RIV_LEN);
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_repeater_check_flow_prepare_ack(struct device *dev,
> +					 struct hdcp_port_data *data,
> +					 struct hdcp2_rep_send_receiverid_list
> +							*rep_topology,
> +					 struct hdcp2_rep_send_ack
> +							*rep_send_ack)
> +{
> +	struct wired_cmd_verify_repeater_in verify_repeater_in = { { 0 } };
> +	struct wired_cmd_verify_repeater_out verify_repeater_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !rep_topology || !rep_send_ack || !data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_cp_fw_fill_repeater_in(&verify_repeater_in, rep_topology, data);
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_repeater_in,
> +				       sizeof(verify_repeater_in),
> +				       (u8 *)&verify_repeater_out,
> +				       sizeof(verify_repeater_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (verify_repeater_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_VERIFY_REPEATER,
> +			    verify_repeater_out.header.status);
> +		return -EIO;
> +	}
> +
> +	memcpy(rep_send_ack->v, verify_repeater_out.v,
> +	       HDCP_2_2_V_PRIME_HALF_LEN);
> +	rep_send_ack->msg_id = HDCP_2_2_REP_SEND_ACK;
> +
> +	return 0;
> +}
> +
> +static int gsc_hdcp_verify_mprime(struct device *dev,
> +				  struct hdcp_port_data *data,
> +				  struct hdcp2_rep_stream_ready *stream_ready)
> +{
> +	struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in;
> +	struct wired_cmd_repeater_auth_stream_req_out
> +					verify_mprime_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +	size_t cmd_size;
> +
> +	if (!dev || !stream_ready || !data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	cmd_size = struct_size(verify_mprime_in, streams, data->k);
> +	if (cmd_size == SIZE_MAX)
> +		return -EINVAL;
> +
> +	verify_mprime_in = kzalloc(cmd_size, GFP_KERNEL);
> +	if (!verify_mprime_in)
> +		return -ENOMEM;
> +
> +	i915_cp_fw_fill_auth_stream_req_in(verify_mprime_in, stream_ready,
> +					   cmd_size, data);
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)verify_mprime_in, cmd_size,
> +				       (u8 *)&verify_mprime_out,
> +				       sizeof(verify_mprime_out));
> +	kfree(verify_mprime_in);
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (verify_mprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_REPEATER_AUTH_STREAM_REQ,
> +			    verify_mprime_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int gsc_hdcp_enable_authentication(struct device *dev,
> +					  struct hdcp_port_data *data)
> +{
> +	struct wired_cmd_enable_auth_in enable_auth_in = { { 0 } };
> +	struct wired_cmd_enable_auth_out enable_auth_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_cp_fw_fill_enable_auth_in(&enable_auth_in, data);
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&enable_auth_in,
> +				       sizeof(enable_auth_in),
> +				       (u8 *)&enable_auth_out,
> +				       sizeof(enable_auth_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (enable_auth_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_ENABLE_AUTH, enable_auth_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_close_session(struct device *dev, struct hdcp_port_data *data)
> +{
> +	struct wired_cmd_close_session_in session_close_in = { { 0 } };
> +	struct wired_cmd_close_session_out session_close_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_cp_fw_fill_close_session_in(&session_close_in, data);
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&session_close_in,
> +				       sizeof(session_close_in),
> +				       (u8 *)&session_close_out,
> +				       sizeof(session_close_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (session_close_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "Session Close Failed. status: 0x%X\n",
> +			    session_close_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct i915_hdcp_fw_ops gsc_hdcp_ops = {
> +	.initiate_hdcp2_session = gsc_hdcp_initiate_session,
> +	.verify_receiver_cert_prepare_km =
> +				gsc_hdcp_verify_receiver_cert_prepare_km,
> +	.verify_hprime = gsc_hdcp_verify_hprime,
> +	.store_pairing_info = gsc_hdcp_store_pairing_info,
> +	.initiate_locality_check = gsc_hdcp_initiate_locality_check,
> +	.verify_lprime = gsc_hdcp_verify_lprime,
> +	.get_session_key = gsc_hdcp_get_session_key,
> +	.repeater_check_flow_prepare_ack =
> +				gsc_hdcp_repeater_check_flow_prepare_ack,
> +	.verify_mprime = gsc_hdcp_verify_mprime,
> +	.enable_hdcp_authentication = gsc_hdcp_enable_authentication,
> +	.close_hdcp_session = gsc_hdcp_close_session,
> +};
> +
> +int intel_gsc_hdcp_init(struct drm_i915_private *i915)
> +{
> +	struct i915_hdcp_fw_master *data;
> +
> +	data = kzalloc(sizeof(struct i915_hdcp_fw_master), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	i915->display.hdcp.master = data;
> +	i915->display.hdcp.master->fw_dev = i915->drm.dev;
> +	i915->display.hdcp.master->ops = &gsc_hdcp_ops;
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +
> +	return 0;
> +}
> +
> +int intel_gsc_hdcp_fini(struct drm_i915_private *i915)
> +{
> +	/* TODO: decrease GSC f/w reference count. */
> +	kfree(i915->display.hdcp.master);
> +	return 0;
> +}

The previous patch adds the header and the declarations for the
functions and this one adds the definitions. They should go together,
hand in hand.

> +
>  /*This function helps allocate memory for the command that we will send to gsc cs */
>  static int intel_initialize_hdcp_gsc_message(struct drm_i915_private *i915,
>  					     struct intel_hdcp_gsc_message *hdcp_message)
> @@ -127,7 +627,8 @@ static int intel_gsc_send_sync(struct drm_i915_private *i915,
>   * will follow
>   */
>  ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
> -				size_t msg_in_len, u8 *msg_out, size_t msg_out_len)
> +				size_t msg_in_len, u8 *msg_out,
> +				size_t msg_out_len)
>  {
>  	struct intel_gt *gt = i915->media_gt;
>  	struct intel_gsc_mtl_header *header;

-- 
Jani Nikula, Intel Open Source Graphics Center
