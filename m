Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C77183FEE5E
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 15:08:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25B3C6E52F;
	Thu,  2 Sep 2021 13:08:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 973926E52F
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 13:08:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="215967952"
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="215967952"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 06:08:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="602377465"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 02 Sep 2021 06:08:09 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 06:08:08 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 2 Sep 2021 18:38:05 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.010;
 Thu, 2 Sep 2021 18:38:05 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Li, Juston" <juston.li@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Kandpal, Suraj" <suraj.kandpal@intel.com>
CC: "seanpaul@chromium.org" <seanpaul@chromium.org>, "C, Ramalingam"
 <ramalingam.c@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v6 1/3] drm/i915/hdcp: update
 cp_irq_count_cached in intel_dp_hdcp2_read_msg()
Thread-Index: AQHXlSrZ09wXAkZZSkmlPcrHolu1zauQzBoA
Date: Thu, 2 Sep 2021 13:08:05 +0000
Message-ID: <4a8b0d505071448ab3a233d014bd5761@intel.com>
References: <20210819184835.1181323-1-juston.li@intel.com>
 <20210819184835.1181323-2-juston.li@intel.com>
In-Reply-To: <20210819184835.1181323-2-juston.li@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v6 1/3] drm/i915/hdcp: update
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Li, Juston <juston.li@intel.com>
> Sent: Friday, August 20, 2021 12:19 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: seanpaul@chromium.org; Gupta, Anshuman <anshuman.gupta@intel.com>;
> C, Ramalingam <ramalingam.c@intel.com>; Vivi, Rodrigo
> <rodrigo.vivi@intel.com>; Li, Juston <juston.li@intel.com>
> Subject: [Intel-gfx] [PATCH v6 1/3] drm/i915/hdcp: update cp_irq_count_ca=
ched
> in intel_dp_hdcp2_read_msg()
>=20
> Update cp_irq_count_cached when reading messages rather than when writing
> a message to make sure the value is up to date and not stale from a previ=
ously
> handled CP_IRQ.
>=20
> AKE flow  doesn't always respond to a read with a ACK write msg.
> E.g. AKE_Send_Pairing_Info will "timeout" because we received a CP_IRQ fo=
r
> reading AKE_Send_H_Prime but no write occurred between that and reading
> AKE_Send_Pairing_Info so cp_irq_count_cached is stale causing the wait to
> return right away rather than waiting for a new CP_IRQ.
>=20
> Signed-off-by: Juston Li <juston.li@intel.com>
> Acked-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Hi Suraj,
We don't have HDCP coverage in CI
Could you please provide your Tested-By tag after testing this patch series=
.
Br,
Anshuman=20
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index d697d169e8c1..1d0096654776 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -446,8 +446,6 @@ static
>  int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,
>  			     void *buf, size_t size)
>  {
> -	struct intel_dp *dp =3D &dig_port->dp;
> -	struct intel_hdcp *hdcp =3D &dp->attached_connector->hdcp;
>  	unsigned int offset;
>  	u8 *byte =3D buf;
>  	ssize_t ret, bytes_to_write, len;
> @@ -463,8 +461,6 @@ int intel_dp_hdcp2_write_msg(struct intel_digital_por=
t
> *dig_port,
>  	bytes_to_write =3D size - 1;
>  	byte++;
>=20
> -	hdcp->cp_irq_count_cached =3D atomic_read(&hdcp->cp_irq_count);
> -
>  	while (bytes_to_write) {
>  		len =3D bytes_to_write > DP_AUX_MAX_PAYLOAD_BYTES ?
>  				DP_AUX_MAX_PAYLOAD_BYTES :
> bytes_to_write; @@ -530,6 +526,8 @@ int intel_dp_hdcp2_read_msg(struct
> intel_digital_port *dig_port,
>  			    u8 msg_id, void *buf, size_t size)  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +	struct intel_dp *dp =3D &dig_port->dp;
> +	struct intel_hdcp *hdcp =3D &dp->attached_connector->hdcp;
>  	unsigned int offset;
>  	u8 *byte =3D buf;
>  	ssize_t ret, bytes_to_recv, len;
> @@ -546,6 +544,8 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port
> *dig_port,
>  	if (ret < 0)
>  		return ret;
>=20
> +	hdcp->cp_irq_count_cached =3D atomic_read(&hdcp->cp_irq_count);
> +
>  	if (msg_id =3D=3D HDCP_2_2_REP_SEND_RECVID_LIST) {
>  		ret =3D get_receiver_id_list_size(dig_port);
>  		if (ret < 0)
> --
> 2.31.1

