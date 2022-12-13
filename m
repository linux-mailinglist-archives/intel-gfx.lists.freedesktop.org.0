Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4592464B32F
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 11:25:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 207FF10E2F8;
	Tue, 13 Dec 2022 10:24:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E5C710E2F3
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 10:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670927090; x=1702463090;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=F1R4zpTr2wBzaHfa5pzwofb9pYRHOrZEfwZDiCmg4Yc=;
 b=bYfpOI6w+tCKjacH2jAQ2hEsM3P0UXhFaaD/Zxe0gKhXssTW9d+pd0ru
 2Y3UQV4mPZsEx6l5TshO5ZDtBRla7aHcT5OFhDcNnZUD9IZ9pHEPSUIpf
 i+3VdKB8bxW+yLidSJWuMhKV9ciojUbxYpgGaZOFt6b6wA5RGEcWbSsHx
 Bbwk9FocCVkW4btpNh4emYnlK7jvOia4uDlf2Bk7gUeo6pfZXEpzuGesL
 cnrk/Ozk1A3PjCyzMqElctCPSf8u7tGdm6Un6AIHsAu+vYLhOYJa6ShIM
 usc7YNR5+L4qLr5Pj/ZgSmuPbksp4G87vKNTEIcIHQFz4Tf+kbdoIk8Bo w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="319242999"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="319242999"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 02:24:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="893870781"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="893870781"
Received: from amicu-mobl.ger.corp.intel.com (HELO localhost) ([10.252.19.220])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 02:24:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221213070158.2621403-4-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221213070158.2621403-1-suraj.kandpal@intel.com>
 <20221213070158.2621403-4-suraj.kandpal@intel.com>
Date: Tue, 13 Dec 2022 12:24:45 +0200
Message-ID: <87fsdjy51u.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 3/7] drm/i915/hdcp: HDCP2.x Refactoring
 to agnotic cp f/w
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
> From: Anshuman Gupta <anshuman.gupta@intel.com>
>
> As now we have more then one type of content protection
> secrity firmware. Let change the i915_cp_fw_hdcp_interface.h
> header naming convention to suit generic f/w type.
> %s/MEI_/FW_
> %s/mei_fw/cp_fw
> %s/mei_dev/fw_dev
>
> As interface to CP FW can be either a non i915 component or
> i915 intergral component, change structure name Accordingly.
> %s/i915_hdcp_comp_master/i915_hdcp_fw_master
> %s/i915_hdcp_component_ops/i915_hdcp_fw_ops
>
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  3 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 66 ++++++++---------
>  drivers/misc/mei/hdcp/mei_hdcp.c              | 12 ++--
>  include/drm/i915_cp_fw_hdcp_interface.h       | 70 +++++++++----------
>  4 files changed, 76 insertions(+), 75 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 57ddce3ba02b..a769cc8e2745 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -16,6 +16,7 @@
>  #include <drm/drm_connector.h>
>  #include <drm/drm_modeset_lock.h>
>  
> +#include "i915/i915_cp_fw_hdcp_interface.h"

What's with the i915/ subdir?

Anyway, please prefer forward declarations over includes in headers.

>  #include "intel_cdclk.h"
>  #include "intel_display.h"
>  #include "intel_display_power.h"
> @@ -368,7 +369,7 @@ struct intel_display {
>  	} gmbus;
>  
>  	struct {
> -		struct i915_hdcp_comp_master *master;
> +		struct i915_hdcp_fw_master *master;
>  		bool comp_added;
>  
>  		/* Mutex to protect the above hdcp component related values. */
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 6406fd487ee5..e856b10948ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1143,7 +1143,7 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_fw_master *comp;
>  	int ret;
>  
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1154,7 +1154,7 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
>  		return -EINVAL;
>  	}
>  
> -	ret = comp->ops->initiate_hdcp2_session(comp->mei_dev, data, ake_data);
> +	ret = comp->ops->initiate_hdcp2_session(comp->fw_dev, data, ake_data);
>  	if (ret)
>  		drm_dbg_kms(&dev_priv->drm, "Prepare_ake_init failed. %d\n",
>  			    ret);
> @@ -1173,7 +1173,7 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_fw_master *comp;
>  	int ret;
>  
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1184,7 +1184,7 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
>  		return -EINVAL;
>  	}
>  
> -	ret = comp->ops->verify_receiver_cert_prepare_km(comp->mei_dev, data,
> +	ret = comp->ops->verify_receiver_cert_prepare_km(comp->fw_dev, data,
>  							 rx_cert, paired,
>  							 ek_pub_km, msg_sz);
>  	if (ret < 0)
> @@ -1201,7 +1201,7 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_fw_master *comp;
>  	int ret;
>  
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1212,7 +1212,7 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
>  		return -EINVAL;
>  	}
>  
> -	ret = comp->ops->verify_hprime(comp->mei_dev, data, rx_hprime);
> +	ret = comp->ops->verify_hprime(comp->fw_dev, data, rx_hprime);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Verify hprime failed. %d\n", ret);
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1227,7 +1227,7 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_fw_master *comp;
>  	int ret;
>  
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1238,7 +1238,7 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
>  		return -EINVAL;
>  	}
>  
> -	ret = comp->ops->store_pairing_info(comp->mei_dev, data, pairing_info);
> +	ret = comp->ops->store_pairing_info(comp->fw_dev, data, pairing_info);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Store pairing info failed. %d\n",
>  			    ret);
> @@ -1254,7 +1254,7 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_fw_master *comp;
>  	int ret;
>  
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1265,7 +1265,7 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
>  		return -EINVAL;
>  	}
>  
> -	ret = comp->ops->initiate_locality_check(comp->mei_dev, data, lc_init);
> +	ret = comp->ops->initiate_locality_check(comp->fw_dev, data, lc_init);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Prepare lc_init failed. %d\n",
>  			    ret);
> @@ -1281,7 +1281,7 @@ hdcp2_verify_lprime(struct intel_connector *connector,
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_fw_master *comp;
>  	int ret;
>  
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1292,7 +1292,7 @@ hdcp2_verify_lprime(struct intel_connector *connector,
>  		return -EINVAL;
>  	}
>  
> -	ret = comp->ops->verify_lprime(comp->mei_dev, data, rx_lprime);
> +	ret = comp->ops->verify_lprime(comp->fw_dev, data, rx_lprime);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Verify L_Prime failed. %d\n",
>  			    ret);
> @@ -1307,7 +1307,7 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_fw_master *comp;
>  	int ret;
>  
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1318,7 +1318,7 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
>  		return -EINVAL;
>  	}
>  
> -	ret = comp->ops->get_session_key(comp->mei_dev, data, ske_data);
> +	ret = comp->ops->get_session_key(comp->fw_dev, data, ske_data);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Get session key failed. %d\n",
>  			    ret);
> @@ -1336,7 +1336,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_fw_master *comp;
>  	int ret;
>  
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1347,7 +1347,7 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
>  		return -EINVAL;
>  	}
>  
> -	ret = comp->ops->repeater_check_flow_prepare_ack(comp->mei_dev, data,
> +	ret = comp->ops->repeater_check_flow_prepare_ack(comp->fw_dev, data,
>  							 rep_topology,
>  							 rep_send_ack);
>  	if (ret < 0)
> @@ -1365,7 +1365,7 @@ hdcp2_verify_mprime(struct intel_connector *connector,
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_fw_master *comp;
>  	int ret;
>  
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1376,7 +1376,7 @@ hdcp2_verify_mprime(struct intel_connector *connector,
>  		return -EINVAL;
>  	}
>  
> -	ret = comp->ops->verify_mprime(comp->mei_dev, data, stream_ready);
> +	ret = comp->ops->verify_mprime(comp->fw_dev, data, stream_ready);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Verify mprime failed. %d\n", ret);
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1389,7 +1389,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_fw_master *comp;
>  	int ret;
>  
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1400,7 +1400,7 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
>  		return -EINVAL;
>  	}
>  
> -	ret = comp->ops->enable_hdcp_authentication(comp->mei_dev, data);
> +	ret = comp->ops->enable_hdcp_authentication(comp->fw_dev, data);
>  	if (ret < 0)
>  		drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed. %d\n",
>  			    ret);
> @@ -1413,7 +1413,7 @@ static int hdcp2_close_mei_session(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct i915_hdcp_comp_master *comp;
> +	struct i915_hdcp_fw_master *comp;
>  	int ret;
>  
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1424,7 +1424,7 @@ static int hdcp2_close_mei_session(struct intel_connector *connector)
>  		return -EINVAL;
>  	}
>  
> -	ret = comp->ops->close_hdcp_session(comp->mei_dev,
> +	ret = comp->ops->close_hdcp_session(comp->fw_dev,
>  					     &dig_port->hdcp_port_data);
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  
> @@ -2145,8 +2145,8 @@ static int i915_hdcp_component_bind(struct device *i915_kdev,
>  
>  	drm_dbg(&dev_priv->drm, "I915 HDCP comp bind\n");
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> -	dev_priv->display.hdcp.master = (struct i915_hdcp_comp_master *)data;
> -	dev_priv->display.hdcp.master->mei_dev = mei_kdev;
> +	dev_priv->display.hdcp.master = (struct i915_hdcp_fw_master *)data;
> +	dev_priv->display.hdcp.master->fw_dev = mei_kdev;
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>  
>  	return 0;
> @@ -2168,25 +2168,25 @@ static const struct component_ops i915_hdcp_component_ops = {
>  	.unbind = i915_hdcp_component_unbind,
>  };
>  
> -static enum mei_fw_ddi intel_get_mei_fw_ddi_index(enum port port)
> +static enum cp_fw_ddi intel_get_mei_fw_ddi_index(enum port port)
>  {
>  	switch (port) {
>  	case PORT_A:
> -		return MEI_DDI_A;
> +		return FW_DDI_A;
>  	case PORT_B ... PORT_F:
> -		return (enum mei_fw_ddi)port;
> +		return (enum cp_fw_ddi)port;
>  	default:
> -		return MEI_DDI_INVALID_PORT;
> +		return FW_DDI_INVALID_PORT;
>  	}
>  }
>  
> -static enum mei_fw_tc intel_get_mei_fw_tc(enum transcoder cpu_transcoder)
> +static enum cp_fw_tc intel_get_mei_fw_tc(enum transcoder cpu_transcoder)
>  {
>  	switch (cpu_transcoder) {
>  	case TRANSCODER_A ... TRANSCODER_D:
> -		return (enum mei_fw_tc)(cpu_transcoder | 0x10);
> +		return (enum cp_fw_tc)(cpu_transcoder | 0x10);
>  	default: /* eDP, DSI TRANSCODERS are non HDCP capable */
> -		return MEI_INVALID_TRANSCODER;
> +		return FW_INVALID_TRANSCODER;
>  	}
>  }
>  
> @@ -2206,14 +2206,14 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
>  		 * As per ME FW API expectation, for GEN 12+, fw_ddi is filled
>  		 * with zero(INVALID PORT index).
>  		 */
> -		data->fw_ddi = MEI_DDI_INVALID_PORT;
> +		data->fw_ddi = FW_DDI_INVALID_PORT;
>  
>  	/*
>  	 * As associated transcoder is set and modified at modeset, here fw_tc
>  	 * is initialized to zero (invalid transcoder index). This will be
>  	 * retained for <Gen12 forever.
>  	 */
> -	data->fw_tc = MEI_INVALID_TRANSCODER;
> +	data->fw_tc = FW_INVALID_TRANSCODER;
>  
>  	data->port_type = (u8)HDCP_PORT_TYPE_INTEGRATED;
>  	data->protocol = (u8)shim->protocol;
> diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
> index 7e3cd3fd7f7b..7ca8b739cd31 100644
> --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> @@ -715,7 +715,7 @@ mei_hdcp_close_session(struct device *dev, struct hdcp_port_data *data)
>  	return 0;
>  }
>  
> -static const struct i915_hdcp_component_ops mei_hdcp_ops = {
> +static const struct i915_hdcp_fw_ops mei_hdcp_ops = {
>  	.owner = THIS_MODULE,
>  	.initiate_hdcp2_session = mei_hdcp_initiate_session,
>  	.verify_receiver_cert_prepare_km =
> @@ -735,13 +735,13 @@ static const struct i915_hdcp_component_ops mei_hdcp_ops = {
>  static int mei_component_master_bind(struct device *dev)
>  {
>  	struct mei_cl_device *cldev = to_mei_cl_device(dev);
> -	struct i915_hdcp_comp_master *comp_master =
> +	struct i915_hdcp_fw_master *comp_master =
>  						mei_cldev_get_drvdata(cldev);
>  	int ret;
>  
>  	dev_dbg(dev, "%s\n", __func__);
>  	comp_master->ops = &mei_hdcp_ops;
> -	comp_master->mei_dev = dev;
> +	comp_master->fw_dev = dev;
>  	ret = component_bind_all(dev, comp_master);
>  	if (ret < 0)
>  		return ret;
> @@ -752,7 +752,7 @@ static int mei_component_master_bind(struct device *dev)
>  static void mei_component_master_unbind(struct device *dev)
>  {
>  	struct mei_cl_device *cldev = to_mei_cl_device(dev);
> -	struct i915_hdcp_comp_master *comp_master =
> +	struct i915_hdcp_fw_master *comp_master =
>  						mei_cldev_get_drvdata(cldev);
>  
>  	dev_dbg(dev, "%s\n", __func__);
> @@ -801,7 +801,7 @@ static int mei_hdcp_component_match(struct device *dev, int subcomponent,
>  static int mei_hdcp_probe(struct mei_cl_device *cldev,
>  			  const struct mei_cl_device_id *id)
>  {
> -	struct i915_hdcp_comp_master *comp_master;
> +	struct i915_hdcp_fw_master *comp_master;
>  	struct component_match *master_match;
>  	int ret;
>  
> @@ -846,7 +846,7 @@ static int mei_hdcp_probe(struct mei_cl_device *cldev,
>  
>  static void mei_hdcp_remove(struct mei_cl_device *cldev)
>  {
> -	struct i915_hdcp_comp_master *comp_master =
> +	struct i915_hdcp_fw_master *comp_master =
>  						mei_cldev_get_drvdata(cldev);
>  	int ret;
>  
> diff --git a/include/drm/i915_cp_fw_hdcp_interface.h b/include/drm/i915_cp_fw_hdcp_interface.h
> index e5dc6b985b2f..3abfe6d414b8 100644
> --- a/include/drm/i915_cp_fw_hdcp_interface.h
> +++ b/include/drm/i915_cp_fw_hdcp_interface.h
> @@ -41,38 +41,38 @@ enum hdcp_wired_protocol {
>  	HDCP_PROTOCOL_DP
>  };
>  
> -enum mei_fw_ddi {
> -	MEI_DDI_INVALID_PORT = 0x0,
> +enum cp_fw_ddi {
> +	FW_DDI_INVALID_PORT = 0x0,
>  
> -	MEI_DDI_B = 1,
> -	MEI_DDI_C,
> -	MEI_DDI_D,
> -	MEI_DDI_E,
> -	MEI_DDI_F,
> -	MEI_DDI_A = 7,
> -	MEI_DDI_RANGE_END = MEI_DDI_A,
> +	FW_DDI_B = 1,
> +	FW_DDI_C,
> +	FW_DDI_D,
> +	FW_DDI_E,
> +	FW_DDI_F,
> +	FW_DDI_A = 7,
> +	FW_DDI_RANGE_END = FW_DDI_A,
>  };
>  
>  /**
>   * enum mei_fw_tc - ME Firmware defined index for transcoders
> - * @MEI_INVALID_TRANSCODER: Index for Invalid transcoder
> - * @MEI_TRANSCODER_EDP: Index for EDP Transcoder
> - * @MEI_TRANSCODER_DSI0: Index for DSI0 Transcoder
> - * @MEI_TRANSCODER_DSI1: Index for DSI1 Transcoder
> - * @MEI_TRANSCODER_A: Index for Transcoder A
> - * @MEI_TRANSCODER_B: Index for Transcoder B
> - * @MEI_TRANSCODER_C: Index for Transcoder C
> - * @MEI_TRANSCODER_D: Index for Transcoder D
> + * @FW_INVALID_TRANSCODER: Index for Invalid transcoder
> + * @FW_TRANSCODER_EDP: Index for EDP Transcoder
> + * @FW_TRANSCODER_DSI0: Index for DSI0 Transcoder
> + * @FW_TRANSCODER_DSI1: Index for DSI1 Transcoder
> + * @FW_TRANSCODER_A: Index for Transcoder A
> + * @FW_TRANSCODER_B: Index for Transcoder B
> + * @FW_TRANSCODER_C: Index for Transcoder C
> + * @FW_TRANSCODER_D: Index for Transcoder D
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
> +enum cp_fw_tc {
> +	FW_INVALID_TRANSCODER = 0x00,
> +	FW_TRANSCODER_EDP,
> +	FW_TRANSCODER_DSI0,
> +	FW_TRANSCODER_DSI1,
> +	FW_TRANSCODER_A = 0x10,
> +	FW_TRANSCODER_B,
> +	FW_TRANSCODER_C,
> +	FW_TRANSCODER_D
>  };
>  
>  /**
> @@ -90,8 +90,8 @@ enum mei_fw_tc {
>   *	     streams
>   */
>  struct hdcp_port_data {
> -	enum mei_fw_ddi fw_ddi;
> -	enum mei_fw_tc fw_tc;
> +	enum cp_fw_ddi fw_ddi;
> +	enum cp_fw_tc fw_tc;
>  	u8 port_type;
>  	u8 protocol;
>  	u16 k;
> @@ -119,7 +119,7 @@ struct hdcp_port_data {
>   * @close_hdcp_session: Close the Wired HDCP Tx session per port.
>   *			This also disables the authenticated state of the port.
>   */
> -struct i915_hdcp_component_ops {
> +struct i915_hdcp_fw_ops {
>  	/**
>  	 * @owner: mei_hdcp module
>  	 */
> @@ -168,14 +168,14 @@ struct i915_hdcp_component_ops {
>  };
>  
>  /**
> - * struct i915_hdcp_component_master - Used for communication between i915
> - * and mei_hdcp drivers for the HDCP2.2 services
> - * @mei_dev: device that provide the HDCP2.2 service from MEI Bus.
> + * struct i915_hdcp_fw_master - Used for communication between i915
> + * and cp fw hdcp intf driver like mei_hdcp for the HDCP2.2 services
> + * @fw_dev: device that provide the HDCP2.2 service from CP FW interface.
>   * @hdcp_ops: Ops implemented by mei_hdcp driver, used by i915 driver.
>   */
> -struct i915_hdcp_comp_master {
> -	struct device *mei_dev;
> -	const struct i915_hdcp_component_ops *ops;
> +struct i915_hdcp_fw_master {
> +	struct device *fw_dev;
> +	const struct i915_hdcp_fw_ops *ops;
>  
>  	/* To protect the above members. */
>  	struct mutex mutex;

-- 
Jani Nikula, Intel Open Source Graphics Center
