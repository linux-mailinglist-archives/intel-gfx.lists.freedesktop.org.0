Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE6B65D009
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 10:56:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82FC910E52B;
	Wed,  4 Jan 2023 09:56:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C675510E524
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 09:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672826214; x=1704362214;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=pVUukVFKx9zBCIaiMTAeB+iuRTF2WUGw3D2HQNj+bqc=;
 b=I758zfiDS5ZP/f8nzyzumco9I/qPZpJgnneZmHrjBg81qYQKMUoT5YmP
 bVX3R/SLrjkWZZmGWDeDR/x7IUj8E9plhRCzp32Itq8X+oTT2ZCooVr+Y
 86kr6wpMETTDzT/gTk7CL2sKShAp6Q/7pgqIjwglji7aL0bN7ixxE/SP3
 BQCedjYgSodZTv800t1cqGjDqrer+LGlRUtJ3cEeRfuEwPylA1/CS7L24
 8CH5XqNl3cKMDlbHwelOVQ4tEeatol0d48vxPKXK/cEB5PZmZI6TNCFoH
 keCazK/afBgE+A6ooj0rsLnRhe9y2gJnFjjZOInA6g5GR94BMl0FYb7ET Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="323896094"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="323896094"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 01:56:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="762625272"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="762625272"
Received: from mkabdel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.25.63])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 01:56:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230102054047.124624-8-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230102054047.124624-1-suraj.kandpal@intel.com>
 <20230102054047.124624-8-suraj.kandpal@intel.com>
Date: Wed, 04 Jan 2023 11:56:48 +0200
Message-ID: <87h6x6y65b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v5 7/7] drm/i915/mtl: Add HDCP GSC interface
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
> --v3
> -abstract DISPLAY_VER check [Jani]
> -bring function declaration and definition in same patch[Jani]
>
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  28 +-
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 513 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   5 +-
>  3 files changed, 537 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/=
i915/display/intel_hdcp.c
> index a0f978e56879..0fef4a4356ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -25,6 +25,8 @@
>  #include "intel_hdcp.h"
>  #include "intel_hdcp_regs.h"
>  #include "intel_pcode.h"
> +#include "intel_connector.h"
> +#include "intel_hdcp_gsc.h"
>=20=20
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
> @@ -203,13 +205,20 @@ bool intel_hdcp2_capable(struct intel_connector *co=
nnector)
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
> +	struct intel_gt *gt =3D dev_priv->media_gt;
> +	struct intel_gsc_uc *gsc =3D &gt->uc.gsc;
>  	bool capable =3D false;
>=20=20
>  	/* I915 support for HDCP2.2 */
>  	if (!hdcp->hdcp2_supported)
>  		return false;
>=20=20
> -	/* MEI interface is solid */
> +	/* If MTL+ make sure gsc is loaded and proxy is setup */
> +	if (DISPLAY_VER(dev_priv) >=3D 14)
> +		if (!intel_uc_fw_is_running(&gsc->fw))
> +			return false;
> +
> +	/* MEI/GSC interface is solid depending on which is used */
>  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
>  	if (!dev_priv->display.hdcp.comp_added ||  !dev_priv->display.hdcp.mast=
er) {
>  		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> @@ -2235,7 +2244,7 @@ static int initialize_hdcp_port_data(struct intel_c=
onnector *connector,
>=20=20
>  static bool is_hdcp2_supported(struct drm_i915_private *dev_priv)
>  {
> -	if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
> +	if (intel_hdcp_gsc_cs_required(dev_priv) && !IS_ENABLED(CONFIG_INTEL_ME=
I_HDCP))
>  		return false;
>=20=20
>  	return (DISPLAY_VER(dev_priv) >=3D 10 ||
> @@ -2256,10 +2265,14 @@ void intel_hdcp_component_init(struct drm_i915_pr=
ivate *dev_priv)
>=20=20
>  	dev_priv->display.hdcp.comp_added =3D true;
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> -	ret =3D component_add_typed(dev_priv->drm.dev, &i915_hdcp_component_ops,
> -				  I915_COMPONENT_HDCP);
> +
> +	if (intel_hdcp_gsc_cs_required(dev_priv))
> +		ret =3D intel_hdcp_gsc_init(dev_priv);
> +	else
> +		ret =3D component_add_typed(dev_priv->drm.dev, &i915_hdcp_component_op=
s,
> +					  I915_COMPONENT_HDCP);
>  	if (ret < 0) {
> -		drm_dbg_kms(&dev_priv->drm, "Failed at component add(%d)\n",
> +		drm_dbg_kms(&dev_priv->drm, "Failed at fw component add(%d)\n",
>  			    ret);
>  		mutex_lock(&dev_priv->display.hdcp.comp_mutex);
>  		dev_priv->display.hdcp.comp_added =3D false;
> @@ -2486,7 +2499,10 @@ void intel_hdcp_component_fini(struct drm_i915_pri=
vate *dev_priv)
>  	dev_priv->display.hdcp.comp_added =3D false;
>  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>=20=20
> -	component_del(dev_priv->drm.dev, &i915_hdcp_component_ops);
> +	if (intel_hdcp_gsc_cs_required(dev_priv))
> +		intel_hdcp_gsc_fini(dev_priv);
> +	else
> +		component_del(dev_priv->drm.dev, &i915_hdcp_component_ops);
>  }
>=20=20
>  void intel_hdcp_cleanup(struct intel_connector *connector)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/=
drm/i915/display/intel_hdcp_gsc.c
> index 04d449bc483b..c42aa8b547a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -1,8 +1,10 @@
>  // SPDX-License-Identifier: MIT
>  /*
> - * Copyright 2021, Intel Corporation.
> + * Copyright 2022, Intel Corporation.
>   */
>=20=20
> +#include <drm/i915_hdcp_interface.h>
> +
>  #include "display/intel_hdcp_gsc.h"
>  #include "gem/i915_gem_region.h"
>  #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
> @@ -15,6 +17,512 @@ struct intel_hdcp_gsc_message {
>  	void *hdcp_cmd;
>  };
>=20=20
> +bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
> +{
> +	if (DISPLAY_VER(i915) >=3D 14)
> +		return true;
> +	return false;
> +}
> +
> +static int
> +gsc_hdcp_initiate_session(struct device *dev, struct hdcp_port_data *dat=
a,
> +			  struct hdcp2_ake_init *ake_data)
> +{
> +	struct wired_cmd_initiate_hdcp2_session_in session_init_in =3D { { 0 } =
};
> +	struct wired_cmd_initiate_hdcp2_session_out
> +						session_init_out =3D { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !ake_data)
> +		return -EINVAL;
> +
> +	i915 =3D kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_hdcp_fill_session_in(&session_init_in, data);
> +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&session_init_in,
> +				       sizeof(session_init_in),
> +				       (u8 *)&session_init_out,
> +				       sizeof(session_init_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (session_init_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
> +			    WIRED_INITIATE_HDCP2_SESSION,
> +			    session_init_out.header.status);
> +		return -EIO;
> +	}
> +
> +	ake_data->msg_id =3D HDCP_2_2_AKE_INIT;
> +	ake_data->tx_caps =3D session_init_out.tx_caps;
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
> +	struct wired_cmd_verify_receiver_cert_in verify_rxcert_in =3D { { 0 } };
> +	struct wired_cmd_verify_receiver_cert_out verify_rxcert_out =3D { { 0 }=
 };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km || !msg_sz)
> +		return -EINVAL;
> +
> +	i915 =3D kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_hdcp_fill_rxcert_in(&verify_rxcert_in, rx_cert, data);
> +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_rxcert_in,
> +				       sizeof(verify_rxcert_in),
> +				       (u8 *)&verify_rxcert_out,
> +				       sizeof(verify_rxcert_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed: %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (verify_rxcert_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
> +			    WIRED_VERIFY_RECEIVER_CERT,
> +			    verify_rxcert_out.header.status);
> +		return -EIO;
> +	}
> +
> +	*km_stored =3D !!verify_rxcert_out.km_stored;
> +	if (verify_rxcert_out.km_stored) {
> +		ek_pub_km->msg_id =3D HDCP_2_2_AKE_STORED_KM;
> +		*msg_sz =3D sizeof(struct hdcp2_ake_stored_km);
> +	} else {
> +		ek_pub_km->msg_id =3D HDCP_2_2_AKE_NO_STORED_KM;
> +		*msg_sz =3D sizeof(struct hdcp2_ake_no_stored_km);
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
> +	struct wired_cmd_ake_send_hprime_in send_hprime_in =3D { { 0 } };
> +	struct wired_cmd_ake_send_hprime_out send_hprime_out =3D { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !rx_hprime)
> +		return -EINVAL;
> +
> +	i915 =3D kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_hdcp_fill_hprime_in(&send_hprime_in, rx_hprime, data);
> +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&send_hprime_in,
> +				       sizeof(send_hprime_in),
> +				       (u8 *)&send_hprime_out,
> +				       sizeof(send_hprime_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (send_hprime_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
> +			    WIRED_AKE_SEND_HPRIME, send_hprime_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_store_pairing_info(struct device *dev, struct hdcp_port_data *d=
ata,
> +			    struct hdcp2_ake_send_pairing_info *pairing_info)
> +{
> +	struct wired_cmd_ake_send_pairing_info_in pairing_info_in =3D { { 0 } };
> +	struct wired_cmd_ake_send_pairing_info_out pairing_info_out =3D { { 0 }=
 };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !pairing_info)
> +		return -EINVAL;
> +
> +	i915 =3D kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_hdcp_fill_pairing_info_in(&pairing_info_in, pairing_info,
> +				       data);
> +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&pairing_info_in,
> +				       sizeof(pairing_info_in),
> +				       (u8 *)&pairing_info_out,
> +				       sizeof(pairing_info_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (pairing_info_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
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
> +	struct wired_cmd_init_locality_check_in lc_init_in =3D { { 0 } };
> +	struct wired_cmd_init_locality_check_out lc_init_out =3D { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !lc_init_data)
> +		return -EINVAL;
> +
> +	i915 =3D kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_hdcp_fill_locality_check_in(&lc_init_in, data);
> +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&lc_init_in, sizeof(lc_ini=
t_in),
> +				       (u8 *)&lc_init_out, sizeof(lc_init_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (lc_init_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. status: 0x%X\n",
> +			    WIRED_INIT_LOCALITY_CHECK, lc_init_out.header.status);
> +		return -EIO;
> +	}
> +
> +	lc_init_data->msg_id =3D HDCP_2_2_LC_INIT;
> +	memcpy(lc_init_data->r_n, lc_init_out.r_n, HDCP_2_2_RN_LEN);
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_verify_lprime(struct device *dev, struct hdcp_port_data *data,
> +		       struct hdcp2_lc_send_lprime *rx_lprime)
> +{
> +	struct wired_cmd_validate_locality_in verify_lprime_in =3D { { 0 } };
> +	struct wired_cmd_validate_locality_out verify_lprime_out =3D { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !rx_lprime)
> +		return -EINVAL;
> +
> +	i915 =3D kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_hdcp_fill_validate_locality_in(&verify_lprime_in, rx_lprime,
> +					    data);
> +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_lprime_in,
> +				       sizeof(verify_lprime_in),
> +				       (u8 *)&verify_lprime_out,
> +				       sizeof(verify_lprime_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (verify_lprime_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
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
> +	struct wired_cmd_get_session_key_in get_skey_in =3D { { 0 } };
> +	struct wired_cmd_get_session_key_out get_skey_out =3D { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !ske_data)
> +		return -EINVAL;
> +
> +	i915 =3D kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_hdcp_fill_session_key_in(&get_skey_in, data);
> +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&get_skey_in, sizeof(get_s=
key_in),
> +				       (u8 *)&get_skey_out, sizeof(get_skey_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (get_skey_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_GET_SESSION_KEY, get_skey_out.header.status);
> +		return -EIO;
> +	}
> +
> +	ske_data->msg_id =3D HDCP_2_2_SKE_SEND_EKS;
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
> +	struct wired_cmd_verify_repeater_in verify_repeater_in =3D { { 0 } };
> +	struct wired_cmd_verify_repeater_out verify_repeater_out =3D { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !rep_topology || !rep_send_ack || !data)
> +		return -EINVAL;
> +
> +	i915 =3D kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_hdcp_fill_repeater_in(&verify_repeater_in, rep_topology, data);
> +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_repeater_in,
> +				       sizeof(verify_repeater_in),
> +				       (u8 *)&verify_repeater_out,
> +				       sizeof(verify_repeater_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (verify_repeater_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_VERIFY_REPEATER,
> +			    verify_repeater_out.header.status);
> +		return -EIO;
> +	}
> +
> +	memcpy(rep_send_ack->v, verify_repeater_out.v,
> +	       HDCP_2_2_V_PRIME_HALF_LEN);
> +	rep_send_ack->msg_id =3D HDCP_2_2_REP_SEND_ACK;
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
> +					verify_mprime_out =3D { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +	size_t cmd_size;
> +
> +	if (!dev || !stream_ready || !data)
> +		return -EINVAL;
> +
> +	i915 =3D kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	cmd_size =3D struct_size(verify_mprime_in, streams, data->k);
> +	if (cmd_size =3D=3D SIZE_MAX)
> +		return -EINVAL;
> +
> +	verify_mprime_in =3D kzalloc(cmd_size, GFP_KERNEL);
> +	if (!verify_mprime_in)
> +		return -ENOMEM;
> +
> +	i915_hdcp_fill_auth_stream_req_in(verify_mprime_in, stream_ready,
> +					  cmd_size, data);
> +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)verify_mprime_in, cmd_size,
> +				       (u8 *)&verify_mprime_out,
> +				       sizeof(verify_mprime_out));
> +	kfree(verify_mprime_in);
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (verify_mprime_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
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
> +	struct wired_cmd_enable_auth_in enable_auth_in =3D { { 0 } };
> +	struct wired_cmd_enable_auth_out enable_auth_out =3D { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data)
> +		return -EINVAL;
> +
> +	i915 =3D kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_hdcp_fill_enable_auth_in(&enable_auth_in, data);
> +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&enable_auth_in,
> +				       sizeof(enable_auth_in),
> +				       (u8 *)&enable_auth_out,
> +				       sizeof(enable_auth_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (enable_auth_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
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
> +	struct wired_cmd_close_session_in session_close_in =3D { { 0 } };
> +	struct wired_cmd_close_session_out session_close_out =3D { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data)
> +		return -EINVAL;
> +
> +	i915 =3D kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	i915_hdcp_fill_close_session_in(&session_close_in, data);
> +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&session_close_in,
> +				       sizeof(session_close_in),
> +				       (u8 *)&session_close_out,
> +				       sizeof(session_close_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (session_close_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "Session Close Failed. status: 0x%X\n",
> +			    session_close_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct i915_hdcp_ops gsc_hdcp_ops =3D {
> +	.initiate_hdcp2_session =3D gsc_hdcp_initiate_session,
> +	.verify_receiver_cert_prepare_km =3D
> +				gsc_hdcp_verify_receiver_cert_prepare_km,
> +	.verify_hprime =3D gsc_hdcp_verify_hprime,
> +	.store_pairing_info =3D gsc_hdcp_store_pairing_info,
> +	.initiate_locality_check =3D gsc_hdcp_initiate_locality_check,
> +	.verify_lprime =3D gsc_hdcp_verify_lprime,
> +	.get_session_key =3D gsc_hdcp_get_session_key,
> +	.repeater_check_flow_prepare_ack =3D
> +				gsc_hdcp_repeater_check_flow_prepare_ack,
> +	.verify_mprime =3D gsc_hdcp_verify_mprime,
> +	.enable_hdcp_authentication =3D gsc_hdcp_enable_authentication,
> +	.close_hdcp_session =3D gsc_hdcp_close_session,
> +};
> +
> +int intel_hdcp_gsc_init(struct drm_i915_private *i915)
> +{
> +	struct i915_hdcp_master *data;
> +
> +	data =3D kzalloc(sizeof(struct i915_hdcp_master), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	i915->display.hdcp.master =3D data;
> +	i915->display.hdcp.master->hdcp_dev =3D i915->drm.dev;
> +	i915->display.hdcp.master->ops =3D &gsc_hdcp_ops;
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +
> +	return 0;
> +}
> +
> +int intel_hdcp_gsc_fini(struct drm_i915_private *i915)
> +{
> +	/* TODO: decrease GSC f/w reference count. */
> +	kfree(i915->display.hdcp.master);
> +	return 0;
> +}
> +
>  /*This function helps allocate memory for the command that we will send =
to gsc cs */
>  static int intel_initialize_hdcp_gsc_message(struct drm_i915_private *i9=
15,
>  					     struct intel_hdcp_gsc_message *hdcp_message)
> @@ -124,7 +632,8 @@ static int intel_gsc_send_sync(struct drm_i915_privat=
e *i915,
>   * will follow
>   */
>  ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_i=
n,
> -				size_t msg_in_len, u8 *msg_out, size_t msg_out_len)
> +				size_t msg_in_len, u8 *msg_out,
> +				size_t msg_out_len)
>  {
>  	struct intel_gt *gt =3D i915->media_gt;
>  	struct intel_gsc_mtl_header *header;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/=
drm/i915/display/intel_hdcp_gsc.h
> index 8f2563ab958b..1ce71729d6f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -1,6 +1,6 @@
>  /* SPDX-License-Identifier: MIT */
>  /*
> - * Copyright =C2=A9 2021 Intel Corporation
> + * Copyright =C2=A9 2022 Intel Corporation

You add this file in the same series with 2021, and change it later to
2022. What's the point?

Also, it's now 2023.

BR,
Jani.

>   */
>=20=20
>  #ifndef __INTEL_HDCP_GSC_H__
> @@ -11,8 +11,11 @@
>=20=20
>  struct drm_i915_private;
>=20=20
> +bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915);
>  ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_i=
n,
>  				size_t msg_in_len, u8 *msg_out,
>  				size_t msg_out_len);
> +int intel_hdcp_gsc_init(struct drm_i915_private *i915);
> +int intel_hdcp_gsc_fini(struct drm_i915_private *i915);
>=20=20
>  #endif /* __INTEL_HDCP_GCS_H__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
