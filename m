Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B111630519F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 06:02:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3784B6E51A;
	Wed, 27 Jan 2021 05:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FAED6E51A
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 05:02:00 +0000 (UTC)
IronPort-SDR: nta4jaPeHvtOWm0gCRA9iFDt9F7BC27GzZSQV2k8QPMdq6Ag2nxM2h5WIJaWqIOsVmbk/tYdMc
 PRc4dNfn37ug==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="244093826"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="244093826"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 21:01:59 -0800
IronPort-SDR: TZXSMxPGKh99TbqroLC4QtNOeesBnisZ8QLhcn1TH3PQa5WiiN+REgwHPb8MBsTUc83KIUH9Q+
 EwbkQuWTDT8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="388155391"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 26 Jan 2021 21:01:59 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 26 Jan 2021 21:01:46 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 Jan 2021 10:31:43 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Wed, 27 Jan 2021 10:31:43 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Li, Juston" <juston.li@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/3] drm/i915/hdcp: update cp_irq_count_cached in
 intel_dp_hdcp2_read_msg()
Thread-Index: AQHW9B8AWCu/ETip+0yubWMFUBwZzKo66laQ
Date: Wed, 27 Jan 2021 05:01:43 +0000
Message-ID: <77908242abb444678b0f29a1356f3084@intel.com>
References: <20210126200805.2499944-1-juston.li@intel.com>
In-Reply-To: <20210126200805.2499944-1-juston.li@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/hdcp: update
 cp_irq_count_cached in intel_dp_hdcp2_read_msg()
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
Cc: "seanpaul@chromium.org" <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Build is failing .
Please send patches again after fixing it.

> -----Original Message-----
> From: Li, Juston <juston.li@intel.com>
> Sent: Wednesday, January 27, 2021 1:38 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: seanpaul@chromium.org; Gupta, Anshuman
> <anshuman.gupta@intel.com>; C, Ramalingam <ramalingam.c@intel.com>;
> Li, Juston <juston.li@intel.com>
> Subject: [PATCH 1/3] drm/i915/hdcp: update cp_irq_count_cached in
> intel_dp_hdcp2_read_msg()
> 
> Update cp_irq_count_cached when we handle reading the messages rather
> than writing a message to make sure the value is up to date and not stale
> from a previously handled CP_IRQ. AKE flow  doesn't always respond to a
> read with a write msg.
> 
> E.g. currently AKE_Send_Pairing_Info will "timeout" because we received a
> CP_IRQ for reading AKE_Send_H_Prime but no write occurred between that
> and reading AKE_Send_Pairing_Info so cp_irq_count_cached is stale
> causing the wait to return right away rather than waiting for a new CP_IRQ.
> 
> Signed-off-by: Juston Li <juston.li@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index f372e25edab4..56a1a0ed20fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -442,8 +442,6 @@ static
>  int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,
>  			     void *buf, size_t size)
>  {
> -	struct intel_dp *dp = &dig_port->dp;
> -	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
>  	unsigned int offset;
>  	u8 *byte = buf;
>  	ssize_t ret, bytes_to_write, len;
> @@ -459,8 +457,6 @@ int intel_dp_hdcp2_write_msg(struct
> intel_digital_port *dig_port,
>  	bytes_to_write = size - 1;
>  	byte++;
> 
> -	hdcp->cp_irq_count_cached = atomic_read(&hdcp->cp_irq_count);
> -
>  	while (bytes_to_write) {
>  		len = bytes_to_write > DP_AUX_MAX_PAYLOAD_BYTES ?
>  				DP_AUX_MAX_PAYLOAD_BYTES :
> bytes_to_write; @@ -508,6 +504,8 @@ static  int
> intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
>  			    u8 msg_id, void *buf, size_t size)  {
> +	struct intel_dp *dp = &dig_port->dp;
> +	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>  	unsigned int offset;
>  	u8 *byte = buf;
> @@ -523,6 +521,8 @@ int intel_dp_hdcp2_read_msg(struct
> intel_digital_port *dig_port,
>  	if (ret < 0)
>  		return ret;
> 
> +	hdcp->cp_irq_count_cached = atomic_read(&hdcp->cp_irq_count);
> +
>  	if (msg_id == HDCP_2_2_REP_SEND_RECVID_LIST) {
>  		ret = get_receiver_id_list_size(dig_port);
>  		if (ret < 0)
> --
> 2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
