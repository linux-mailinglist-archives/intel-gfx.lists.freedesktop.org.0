Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF923FEE6D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 15:09:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43B2B6E52A;
	Thu,  2 Sep 2021 13:09:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAA5E6E52A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 13:09:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="282816605"
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="282816605"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 06:09:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="521085339"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 02 Sep 2021 06:09:26 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 06:09:25 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 2 Sep 2021 18:39:23 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.010;
 Thu, 2 Sep 2021 18:39:23 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Li, Juston" <juston.li@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Kandpal, Suraj" <suraj.kandpal@intel.com>
CC: "seanpaul@chromium.org" <seanpaul@chromium.org>, "C, Ramalingam"
 <ramalingam.c@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v6 2/3] drm/i915/hdcp: read RxInfo once when
 reading RepeaterAuth_Send_ReceiverID_List
Thread-Index: AQHXlSrbo3fWAbinE0qoy2Hia8eCbquQzNfQ
Date: Thu, 2 Sep 2021 13:09:23 +0000
Message-ID: <9b05d24bb4944e5b9742e83b6c3688c6@intel.com>
References: <20210819184835.1181323-1-juston.li@intel.com>
 <20210819184835.1181323-3-juston.li@intel.com>
In-Reply-To: <20210819184835.1181323-3-juston.li@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH v6 2/3] drm/i915/hdcp: read RxInfo once when
 reading RepeaterAuth_Send_ReceiverID_List
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
> Subject: [Intel-gfx] [PATCH v6 2/3] drm/i915/hdcp: read RxInfo once when
> reading RepeaterAuth_Send_ReceiverID_List
>=20
> When reading RepeaterAuth_Send_ReceiverID_List, RxInfo is read by itself =
once
> to retrieve the DEVICE_COUNT to calculate the size of the ReceiverID list=
 then
> read a second time as a part of reading ReceiverID list.
>=20
> On some MST docking stations, RxInfo can only be read after the RxStatus
> READY bit is set otherwise the read will return -EIO. The spec states tha=
t the
> READY bit should be cleared as soon as RxInfo has been read.
>=20
> In this case, the first RxInfo read succeeds but after the READY bit is c=
leared, the
> second read fails.
>=20
> Fix it by reading RxInfo once and storing it before reading the rest of
> RepeaterAuth_Send_ReceiverID_List once we know the size.
>=20
> Modify get_receiver_id_list_size() to read and store RxInfo in the messag=
e
> buffer and also parse DEVICE_COUNT so we know the size of
> RepeaterAuth_Send_ReceiverID_List.
>=20
> Afterwards, retrieve the rest of the message at the offset for seq_num_V.
>=20
> Changes in v5:
> - Don't change the offset define for Send_ReceiverID_List
>   When reading, update message offset to account for RxInfo being read
>=20
> Changes in v4:
> - rebase and edit commit message
>=20
> Changes in v3:
> - remove comment
>=20
> Changes in v2:
> - remove unnecessary moving of drm_i915_private from patch 1
>=20
> Signed-off-by: Juston Li <juston.li@intel.com>
> Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
> Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Adding Suraj to this thread.
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 31 ++++++++++----------
>  1 file changed, 16 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 1d0096654776..fbfb3c4d16bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -496,11 +496,10 @@ get_rxinfo_hdcp_1_dev_downstream(struct
> intel_digital_port *dig_port, bool *hdcp  }
>=20
>  static
> -ssize_t get_receiver_id_list_size(struct intel_digital_port *dig_port)
> +ssize_t get_receiver_id_list_rx_info(struct intel_digital_port
> +*dig_port, u32 *dev_cnt, u8 *byte)
>  {
> -	u8 rx_info[HDCP_2_2_RXINFO_LEN];
> -	u32 dev_cnt;
>  	ssize_t ret;
> +	u8 *rx_info =3D byte;
>=20
>  	ret =3D drm_dp_dpcd_read(&dig_port->dp.aux,
>  			       DP_HDCP_2_2_REG_RXINFO_OFFSET, @@ -508,15
> +507,11 @@ ssize_t get_receiver_id_list_size(struct intel_digital_port
> *dig_port)
>  	if (ret !=3D HDCP_2_2_RXINFO_LEN)
>  		return ret >=3D 0 ? -EIO : ret;
>=20
> -	dev_cnt =3D (HDCP_2_2_DEV_COUNT_HI(rx_info[0]) << 4 |
> +	*dev_cnt =3D (HDCP_2_2_DEV_COUNT_HI(rx_info[0]) << 4 |
>  		   HDCP_2_2_DEV_COUNT_LO(rx_info[1]));
>=20
> -	if (dev_cnt > HDCP_2_2_MAX_DEVICE_COUNT)
> -		dev_cnt =3D HDCP_2_2_MAX_DEVICE_COUNT;
> -
> -	ret =3D sizeof(struct hdcp2_rep_send_receiverid_list) -
> -		HDCP_2_2_RECEIVER_IDS_MAX_LEN +
> -		(dev_cnt * HDCP_2_2_RECEIVER_ID_LEN);
> +	if (*dev_cnt > HDCP_2_2_MAX_DEVICE_COUNT)
> +		*dev_cnt =3D HDCP_2_2_MAX_DEVICE_COUNT;
>=20
>  	return ret;
>  }
> @@ -534,6 +529,7 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port
> *dig_port,
>  	const struct hdcp2_dp_msg_data *hdcp2_msg_data;
>  	ktime_t msg_end =3D ktime_set(0, 0);
>  	bool msg_expired;
> +	u32 dev_cnt;
>=20
>  	hdcp2_msg_data =3D get_hdcp2_dp_msg_data(msg_id);
>  	if (!hdcp2_msg_data)
> @@ -546,17 +542,22 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_po=
rt
> *dig_port,
>=20
>  	hdcp->cp_irq_count_cached =3D atomic_read(&hdcp->cp_irq_count);
>=20
> +	/* DP adaptation msgs has no msg_id */
> +	byte++;
> +
>  	if (msg_id =3D=3D HDCP_2_2_REP_SEND_RECVID_LIST) {
> -		ret =3D get_receiver_id_list_size(dig_port);
> +		ret =3D get_receiver_id_list_rx_info(dig_port, &dev_cnt, byte);
>  		if (ret < 0)
>  			return ret;
>=20
> -		size =3D ret;
> +		byte +=3D ret;
> +		size =3D sizeof(struct hdcp2_rep_send_receiverid_list) -
> +		HDCP_2_2_RXINFO_LEN - HDCP_2_2_RECEIVER_IDS_MAX_LEN
> +
> +		(dev_cnt * HDCP_2_2_RECEIVER_ID_LEN);
> +		offset +=3D HDCP_2_2_RXINFO_LEN;
>  	}
> -	bytes_to_recv =3D size - 1;
>=20
> -	/* DP adaptation msgs has no msg_id */
> -	byte++;
> +	bytes_to_recv =3D size - 1;
>=20
>  	while (bytes_to_recv) {
>  		len =3D bytes_to_recv > DP_AUX_MAX_PAYLOAD_BYTES ?
> --
> 2.31.1

