Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E69717A7D75
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 14:09:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE4DB10E497;
	Wed, 20 Sep 2023 12:09:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EED010E497
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 12:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695211755; x=1726747755;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=VpM+KhQnmTWQJUmQ8kuCB3brPRNbsvR463emcv81uuQ=;
 b=I8l+njp7J5K+iT5l3hmjfTfoj045Q+BL1i+Py4Xs11Z4qnHdYGGvIScf
 4RELiMTgDk6s6+ABWzvg1Dy7i6IlHC1COva07MICEJY/hxLqYTNSgnFYh
 I33PMHzqQSSByl0Osxm0tYrLIK8M3Q9BXrkp74WvVC7R4gz9OJHO4IghM
 vpDL5doa2f8GkJj+bdkyR05L9d1C0N/5ePtLAbROhCJsSAnJTLAYugF1A
 A3MUHUiYuhZ8Eb2wz041p0bxHvLyLzTdVyM9OzbN//6lt6PwzXrupSEFX
 Ds/8+oCZLV6wVVC7KIRtGtDVdkLzmDn8Q4kvd6xGQvC2bPHaBCv70YHV0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="370514700"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="370514700"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 05:09:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="870360626"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="870360626"
Received: from ptelkov-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.38.103])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 05:09:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230920103852.264728-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230920085014.246564-1-suraj.kandpal@intel.com>
 <20230920103852.264728-1-suraj.kandpal@intel.com>
Date: Wed, 20 Sep 2023 15:09:10 +0300
Message-ID: <87r0mtqc61.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/hdcp: Move common message
 filling function to its own file
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 20 Sep 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h b/driv=
ers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
> new file mode 100644
> index 000000000000..1096dd36823f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
> @@ -0,0 +1,73 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2023 Intel Corporation
> + */
> +
> +#ifndef __INTEL_HDCP_GSC_MESSAGE_H__
> +#define __INTEL_HDCP_GSC_MESSAGE_H__
> +
> +#include <linux/err.h>

What does this header need from err.h?

BR,
Jani.

> +#include <linux/types.h>
> +
> +struct device;
> +struct drm_i915_private;
> +struct hdcp_port_data;
> +struct hdcp2_ake_init;
> +struct hdcp2_ake_send_cert;
> +struct hdcp2_ake_no_stored_km;
> +struct hdcp2_ake_send_hprime;
> +struct hdcp2_ake_send_pairing_info;
> +struct hdcp2_lc_init;
> +struct hdcp2_lc_send_lprime;
> +struct hdcp2_ske_send_eks;
> +struct hdcp2_rep_send_receiverid_list;
> +struct hdcp2_rep_send_ack;
> +struct hdcp2_rep_stream_ready;
> +
> +ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_i=
n,
> +				size_t msg_in_len, u8 *msg_out,
> +				size_t msg_out_len);
> +bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915);
> +int
> +intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_dat=
a *data,
> +				struct hdcp2_ake_init *ake_data);
> +int
> +intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
> +					       struct hdcp_port_data *data,
> +					       struct hdcp2_ake_send_cert *rx_cert,
> +					       bool *km_stored,
> +					       struct hdcp2_ake_no_stored_km
> +					       *ek_pub_km,
> +					       size_t *msg_sz);
> +int
> +intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data *=
data,
> +			     struct hdcp2_ake_send_hprime *rx_hprime);
> +int
> +intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_d=
ata *data,
> +				  struct hdcp2_ake_send_pairing_info *pairing_info);
> +int
> +intel_hdcp_gsc_initiate_locality_check(struct device *dev,
> +				       struct hdcp_port_data *data,
> +				       struct hdcp2_lc_init *lc_init_data);
> +int
> +intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data *=
data,
> +			     struct hdcp2_lc_send_lprime *rx_lprime);
> +int intel_hdcp_gsc_get_session_key(struct device *dev,
> +				   struct hdcp_port_data *data,
> +				   struct hdcp2_ske_send_eks *ske_data);
> +int
> +intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
> +					       struct hdcp_port_data *data,
> +					       struct hdcp2_rep_send_receiverid_list
> +					       *rep_topology,
> +					       struct hdcp2_rep_send_ack
> +					       *rep_send_ack);
> +int intel_hdcp_gsc_verify_mprime(struct device *dev,
> +				 struct hdcp_port_data *data,
> +				 struct hdcp2_rep_stream_ready *stream_ready);
> +int intel_hdcp_gsc_enable_authentication(struct device *dev,
> +					 struct hdcp_port_data *data);
> +int
> +intel_hdcp_gsc_close_session(struct device *dev, struct hdcp_port_data *=
data);
> +
> +#endif /* __INTEL_HDCP_GSC_MESSAGE_H__ */

--=20
Jani Nikula, Intel
