Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAC37A76F8
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 11:13:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06C7510E468;
	Wed, 20 Sep 2023 09:13:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E85410E470
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 09:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695201215; x=1726737215;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=olCxV4dDRHzl7rUPCZ81W4IXYuYlG91nkYzdbne+Das=;
 b=cCGtGhGQLPhI4akMxEEU4/EGvo0VtK7A1uUtmtv8VoWjzBKY35ZHA/eD
 YyLkeNQoEgyRtWtLuMtTgQ2+OIrO5rW6mpqC02frVFvX9oDjS72QZNnmg
 QC8dMPIJzrhBuD5bZI1AE+7ylPZz6X16EjZ8oKiDUWXcEh/4YIKm9qWLs
 WPvM2fqqkuZVhjppwbnyT7EKZsuIKbtMWt+v732joEu+Iel8uvIqbIGlM
 Ddcf7OZT4ZDbk6Gu0w2tga6L00HCPwDWSGCAey71UDwXsevoYM7CA170w
 S1N0VSILVZQOXlWKclGT1nesNhlke+9pob/VxZYquf/NVVA36dl4vT4aO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="411112129"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="411112129"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:13:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="723194447"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="723194447"
Received: from ptelkov-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.38.103])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:13:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230920085014.246564-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230920063611.242942-3-suraj.kandpal@intel.com>
 <20230920085014.246564-1-suraj.kandpal@intel.com>
Date: Wed, 20 Sep 2023 12:13:30 +0300
Message-ID: <87o7hxryv9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Move common message
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
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/=
drm/i915/display/intel_hdcp_gsc.h
> index eba2057c5a9e..e53dbe8d9048 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -9,6 +9,8 @@
>  #include <linux/err.h>
>  #include <linux/types.h>
>=20=20
> +#include "i915_drv.h"
> +

Please don't include i915_drv.h from headers if it can be avoided. This
patch for sure has no reason to do so.

>  struct drm_i915_private;
>=20=20
>  struct intel_hdcp_gsc_message {

> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h b/driv=
ers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
> new file mode 100644
> index 000000000000..8da3c50d759f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
> @@ -0,0 +1,56 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2023 Intel Corporation
> + */
> +
> +#ifndef __INTEL_HDCP_GSC_MESSAGE_H__
> +#define __INTEL_HDCP_GSC_MESSAGE_H__
> +
> +#include <drm/i915_hdcp_interface.h>
> +
> +#include "intel_hdcp_gsc.h"

What in this header requires including either of those headers that
can't be solved with forward declatations?

*Always* use forward declarations instead of #includes in headers if you
can.

AFAICT this only needs #include <linux/types.h> and a bunch of forward
declarations.

BR,
Jani.

> +
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
