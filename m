Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D46651CB5
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 09:57:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D61F910E09C;
	Tue, 20 Dec 2022 08:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2DC810E09C
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671526613; x=1703062613;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=3+IVgRz7wlmZOsBdGEHJsQSX1H/jHBfjVu6opdvqGWI=;
 b=IvNrystKFGxixEmLhGHmbwTtFoLR27bIGW7fezh1yoB2DV5HOrZoaOrf
 R/MBa4d1EQEE5+MqbsO5QB1IFVJPaSuogc65gEtXIOC/8gkJfWSLp1nNX
 3rBInrfqEKuWOjxkMHB6uVLiz8yL+vjBjMs+1pEkjLzonTyhcpsiuhh3h
 GyPfzNyfqMR1xnn8ynzQSoImL0j69ZpXb+CbwbtkuQ5PkCzb6X/1VIihs
 tvP6D8UH/i4hQ2WokZ3XzyiB6CtOON4dbsljQ8kk171R1a+f0jv3g8u5C
 oROI6pnl9uhQzO1aMSyw/M0s0COf6oH2GWQDNeONcWJp9w5OlbOQIrwzb Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="405814867"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="405814867"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 00:56:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="650915840"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="650915840"
Received: from spalapa-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.60.249])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 00:56:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221214090758.3040356-3-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221214090758.3040356-1-suraj.kandpal@intel.com>
 <20221214090758.3040356-3-suraj.kandpal@intel.com>
Date: Tue, 20 Dec 2022 10:56:40 +0200
Message-ID: <878rj24fnb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 2/7] drm/i915/hdcp: Keep cp fw agonstic
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

On Wed, 14 Dec 2022, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> From: Anshuman Gupta <anshuman.gupta@intel.com>
>
> Change the include/drm/i915_mei_hdcp_interface.h to
> include/drm/i915_cp_fw_hdcp_interface.h

This is now stale.

>
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Acked-by: Tomas Winkler <tomas.winkler@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |   2 +-
>  drivers/misc/mei/hdcp/mei_hdcp.c              |   2 +-
>  include/drm/i915_mei_hdcp_interface.h         | 184 ------------------
>  3 files changed, 2 insertions(+), 186 deletions(-)
>  delete mode 100644 include/drm/i915_mei_hdcp_interface.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
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
>=20=20
>  #include "i915_vma.h"
> diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei=
_hdcp.c
> index e889a8bd7ac8..cbad27511899 100644
> --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> @@ -23,7 +23,7 @@
>  #include <linux/component.h>
>  #include <drm/drm_connector.h>
>  #include <drm/i915_component.h>
> -#include <drm/i915_mei_hdcp_interface.h>
> +#include <drm/i915_hdcp_interface.h>
>=20=20
>  #include "mei_hdcp.h"
>=20=20
> diff --git a/include/drm/i915_mei_hdcp_interface.h b/include/drm/i915_mei=
_hdcp_interface.h
> deleted file mode 100644

This patch now *deletes* the file. The next patch adds it back. Please
be more careful before sending.

Please check that all commits build before sending, run something like:

$ git rebase -i $tip --exec=3D"make -j8"

This should be standard practice for all contributions.


BR,
Jani.


> index f441cbcd95a4..000000000000
> --- a/include/drm/i915_mei_hdcp_interface.h
> +++ /dev/null
> @@ -1,184 +0,0 @@
> -/* SPDX-License-Identifier: (GPL-2.0+) */
> -/*
> - * Copyright =C2=A9 2017-2019 Intel Corporation
> - *
> - * Authors:
> - * Ramalingam C <ramalingam.c@intel.com>
> - */
> -
> -#ifndef _I915_MEI_HDCP_INTERFACE_H_
> -#define _I915_MEI_HDCP_INTERFACE_H_
> -
> -#include <linux/mutex.h>
> -#include <linux/device.h>
> -#include <drm/display/drm_hdcp.h>
> -
> -/**
> - * enum hdcp_port_type - HDCP port implementation type defined by ME FW
> - * @HDCP_PORT_TYPE_INVALID: Invalid hdcp port type
> - * @HDCP_PORT_TYPE_INTEGRATED: In-Host HDCP2.x port
> - * @HDCP_PORT_TYPE_LSPCON: HDCP2.2 discrete wired Tx port with LSPCON
> - *			   (HDMI 2.0) solution
> - * @HDCP_PORT_TYPE_CPDP: HDCP2.2 discrete wired Tx port using the CPDP (=
DP 1.3)
> - *			 solution
> - */
> -enum hdcp_port_type {
> -	HDCP_PORT_TYPE_INVALID,
> -	HDCP_PORT_TYPE_INTEGRATED,
> -	HDCP_PORT_TYPE_LSPCON,
> -	HDCP_PORT_TYPE_CPDP
> -};
> -
> -/**
> - * enum hdcp_wired_protocol - HDCP adaptation used on the port
> - * @HDCP_PROTOCOL_INVALID: Invalid HDCP adaptation protocol
> - * @HDCP_PROTOCOL_HDMI: HDMI adaptation of HDCP used on the port
> - * @HDCP_PROTOCOL_DP: DP adaptation of HDCP used on the port
> - */
> -enum hdcp_wired_protocol {
> -	HDCP_PROTOCOL_INVALID,
> -	HDCP_PROTOCOL_HDMI,
> -	HDCP_PROTOCOL_DP
> -};
> -
> -enum mei_fw_ddi {
> -	MEI_DDI_INVALID_PORT =3D 0x0,
> -
> -	MEI_DDI_B =3D 1,
> -	MEI_DDI_C,
> -	MEI_DDI_D,
> -	MEI_DDI_E,
> -	MEI_DDI_F,
> -	MEI_DDI_A =3D 7,
> -	MEI_DDI_RANGE_END =3D MEI_DDI_A,
> -};
> -
> -/**
> - * enum mei_fw_tc - ME Firmware defined index for transcoders
> - * @MEI_INVALID_TRANSCODER: Index for Invalid transcoder
> - * @MEI_TRANSCODER_EDP: Index for EDP Transcoder
> - * @MEI_TRANSCODER_DSI0: Index for DSI0 Transcoder
> - * @MEI_TRANSCODER_DSI1: Index for DSI1 Transcoder
> - * @MEI_TRANSCODER_A: Index for Transcoder A
> - * @MEI_TRANSCODER_B: Index for Transcoder B
> - * @MEI_TRANSCODER_C: Index for Transcoder C
> - * @MEI_TRANSCODER_D: Index for Transcoder D
> - */
> -enum mei_fw_tc {
> -	MEI_INVALID_TRANSCODER =3D 0x00,
> -	MEI_TRANSCODER_EDP,
> -	MEI_TRANSCODER_DSI0,
> -	MEI_TRANSCODER_DSI1,
> -	MEI_TRANSCODER_A =3D 0x10,
> -	MEI_TRANSCODER_B,
> -	MEI_TRANSCODER_C,
> -	MEI_TRANSCODER_D
> -};
> -
> -/**
> - * struct hdcp_port_data - intel specific HDCP port data
> - * @fw_ddi: ddi index as per ME FW
> - * @fw_tc: transcoder index as per ME FW
> - * @port_type: HDCP port type as per ME FW classification
> - * @protocol: HDCP adaptation as per ME FW
> - * @k: No of streams transmitted on a port. Only on DP MST this is !=3D 1
> - * @seq_num_m: Count of RepeaterAuth_Stream_Manage msg propagated.
> - *	       Initialized to 0 on AKE_INIT. Incremented after every successf=
ul
> - *	       transmission of RepeaterAuth_Stream_Manage message. When it ro=
lls
> - *	       over re-Auth has to be triggered.
> - * @streams: struct hdcp2_streamid_type[k]. Defines the type and id for =
the
> - *	     streams
> - */
> -struct hdcp_port_data {
> -	enum mei_fw_ddi fw_ddi;
> -	enum mei_fw_tc fw_tc;
> -	u8 port_type;
> -	u8 protocol;
> -	u16 k;
> -	u32 seq_num_m;
> -	struct hdcp2_streamid_type *streams;
> -};
> -
> -/**
> - * struct i915_hdcp_component_ops- ops for HDCP2.2 services.
> - * @owner: Module providing the ops
> - * @initiate_hdcp2_session: Initiate a Wired HDCP2.2 Tx Session.
> - *			    And Prepare AKE_Init.
> - * @verify_receiver_cert_prepare_km: Verify the Receiver Certificate
> - *				     AKE_Send_Cert and prepare
> -				     AKE_Stored_Km/AKE_No_Stored_Km
> - * @verify_hprime: Verify AKE_Send_H_prime
> - * @store_pairing_info: Store pairing info received
> - * @initiate_locality_check: Prepare LC_Init
> - * @verify_lprime: Verify lprime
> - * @get_session_key: Prepare SKE_Send_Eks
> - * @repeater_check_flow_prepare_ack: Validate the Downstream topology
> - *				     and prepare rep_ack
> - * @verify_mprime: Verify mprime
> - * @enable_hdcp_authentication:  Mark a port as authenticated.
> - * @close_hdcp_session: Close the Wired HDCP Tx session per port.
> - *			This also disables the authenticated state of the port.
> - */
> -struct i915_hdcp_component_ops {
> -	/**
> -	 * @owner: mei_hdcp module
> -	 */
> -	struct module *owner;
> -
> -	int (*initiate_hdcp2_session)(struct device *dev,
> -				      struct hdcp_port_data *data,
> -				      struct hdcp2_ake_init *ake_data);
> -	int (*verify_receiver_cert_prepare_km)(struct device *dev,
> -					       struct hdcp_port_data *data,
> -					       struct hdcp2_ake_send_cert
> -								*rx_cert,
> -					       bool *km_stored,
> -					       struct hdcp2_ake_no_stored_km
> -								*ek_pub_km,
> -					       size_t *msg_sz);
> -	int (*verify_hprime)(struct device *dev,
> -			     struct hdcp_port_data *data,
> -			     struct hdcp2_ake_send_hprime *rx_hprime);
> -	int (*store_pairing_info)(struct device *dev,
> -				  struct hdcp_port_data *data,
> -				  struct hdcp2_ake_send_pairing_info
> -								*pairing_info);
> -	int (*initiate_locality_check)(struct device *dev,
> -				       struct hdcp_port_data *data,
> -				       struct hdcp2_lc_init *lc_init_data);
> -	int (*verify_lprime)(struct device *dev,
> -			     struct hdcp_port_data *data,
> -			     struct hdcp2_lc_send_lprime *rx_lprime);
> -	int (*get_session_key)(struct device *dev,
> -			       struct hdcp_port_data *data,
> -			       struct hdcp2_ske_send_eks *ske_data);
> -	int (*repeater_check_flow_prepare_ack)(struct device *dev,
> -					       struct hdcp_port_data *data,
> -					       struct hdcp2_rep_send_receiverid_list
> -								*rep_topology,
> -					       struct hdcp2_rep_send_ack
> -								*rep_send_ack);
> -	int (*verify_mprime)(struct device *dev,
> -			     struct hdcp_port_data *data,
> -			     struct hdcp2_rep_stream_ready *stream_ready);
> -	int (*enable_hdcp_authentication)(struct device *dev,
> -					  struct hdcp_port_data *data);
> -	int (*close_hdcp_session)(struct device *dev,
> -				  struct hdcp_port_data *data);
> -};
> -
> -/**
> - * struct i915_hdcp_component_master - Used for communication between i9=
15
> - * and mei_hdcp drivers for the HDCP2.2 services
> - * @mei_dev: device that provide the HDCP2.2 service from MEI Bus.
> - * @hdcp_ops: Ops implemented by mei_hdcp driver, used by i915 driver.
> - */
> -struct i915_hdcp_comp_master {
> -	struct device *mei_dev;
> -	const struct i915_hdcp_component_ops *ops;
> -
> -	/* To protect the above members. */
> -	struct mutex mutex;
> -};
> -
> -#endif /* _I915_MEI_HDCP_INTERFACE_H_ */

--=20
Jani Nikula, Intel Open Source Graphics Center
