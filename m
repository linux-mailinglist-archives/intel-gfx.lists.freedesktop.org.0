Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 888CF34754B
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 11:07:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9E516E9A7;
	Wed, 24 Mar 2021 10:07:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEE8D6E9A7
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 10:07:11 +0000 (UTC)
IronPort-SDR: hiuILsBapWY3tlYzzKtBK20eNq58YKbYAD+PxVVnc9wfSHynGC4i6VhnA/6+2GYEaAlNPywDd+
 WTbcvOtUOKSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="210775455"
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="210775455"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 03:07:11 -0700
IronPort-SDR: bGVToKJxpWIL3r1uFY1zmM27A4+QMRfLkxOKoeeBmvmKD+eODQuaLbDlDQELGaMLkcfHg8NuEq
 uunqkgroX0bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="442914393"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Mar 2021 03:07:11 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 24 Mar 2021 03:07:10 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 24 Mar 2021 15:37:08 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.013;
 Wed, 24 Mar 2021 15:37:08 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Add DP HDCP2.2 timeout to
 read entire msg
Thread-Index: AQHW9IfiNAR1sNTzukmdP917FPebu6qS3OgAgABiMuA=
Date: Wed, 24 Mar 2021 10:07:07 +0000
Message-ID: <c8f7e90341524fc4b0e514376214a7e9@intel.com>
References: <20210127082437.31339-1-anshuman.gupta@intel.com>
 <20210127082437.31339-2-anshuman.gupta@intel.com>
 <b1df0c61-9d6e-3a04-d22f-4a2c2a096df0@intel.com>
In-Reply-To: <b1df0c61-9d6e-3a04-d22f-4a2c2a096df0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Add DP HDCP2.2 timeout
 to read entire msg
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Wednesday, March 24, 2021 3:06 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Add DP HDCP2.2 timeout to
> read entire msg
> 
> Hi Anshuman,
> 
> Changes look good to me as per the Errata.
> 
> There are minor comments, inline:
Thanks for review, I will address your comment but just need to clarified one thing as below 
> 
> On 1/27/2021 1:54 PM, Anshuman Gupta wrote:
> > As documented in HDCP 2.2 DP Errata spec transmitter should abort the
> > authentication protocol in case transmitter has not received the
> > entire {AKE_Send_Cert, AKE_Send_H_prime, AKE_Send_Paring_Info} msg
> > within {110,7,5} miliseconds.
> >
> > Adding above msg timeout values and aborting the HDCP authentication
> > in case it timedout to read entire msg.
> >
> > https://www.digital-cp.com/sites/default/files/HDCP%202_2_DisplayPort_
> > Errata_v3_0.pdf
> >
> > Cc: Ramalingam C <ramalingam.c@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 56 +++++++++++++-------
> >   include/drm/drm_hdcp.h                       |  3 ++
> >   2 files changed, 40 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > index f372e25edab4..f7cc5cbcabc6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > @@ -292,39 +292,42 @@ struct hdcp2_dp_msg_data {
> >   	u8 msg_id;
> >   	u32 offset;
> >   	bool msg_detectable;
> > +	bool msg_can_timedout;
> 
> Perhaps we can just check if msg_read_timedout is not 0 , instead of adding
> bool msg_can_timedout.
> 
> 
> >   	u32 timeout;
> >   	u32 timeout2; /* Added for non_paired situation */
> > +	/* Timeout to read entire msg */
> > +	u32 msg_read_timeout;
> >   };
> >
> >   static const struct hdcp2_dp_msg_data hdcp2_dp_msg_data[] = {
> > -	{ HDCP_2_2_AKE_INIT, DP_HDCP_2_2_AKE_INIT_OFFSET, false, 0, 0 },
> > +	{ HDCP_2_2_AKE_INIT, DP_HDCP_2_2_AKE_INIT_OFFSET, false, false,
> 0, 0, 0},
> >   	{ HDCP_2_2_AKE_SEND_CERT,
> DP_HDCP_2_2_AKE_SEND_CERT_OFFSET,
> > -	  false, HDCP_2_2_CERT_TIMEOUT_MS, 0 },
> > +	  false, true, HDCP_2_2_CERT_TIMEOUT_MS, 0,
> HDCP_2_2_DP_CERT_READ_TIMEOUT_MS},
> >   	{ HDCP_2_2_AKE_NO_STORED_KM,
> DP_HDCP_2_2_AKE_NO_STORED_KM_OFFSET,
> > -	  false, 0, 0 },
> > +	  false, false, 0, 0, 0 },
> >   	{ HDCP_2_2_AKE_STORED_KM,
> DP_HDCP_2_2_AKE_STORED_KM_OFFSET,
> > -	  false, 0, 0 },
> > +	  false, false, 0, 0, 0 },
> >   	{ HDCP_2_2_AKE_SEND_HPRIME,
> DP_HDCP_2_2_AKE_SEND_HPRIME_OFFSET,
> > -	  true, HDCP_2_2_HPRIME_PAIRED_TIMEOUT_MS,
> > -	  HDCP_2_2_HPRIME_NO_PAIRED_TIMEOUT_MS },
> > +	  true, true, HDCP_2_2_HPRIME_PAIRED_TIMEOUT_MS,
> > +	  HDCP_2_2_HPRIME_NO_PAIRED_TIMEOUT_MS,
> HDCP_2_2_DP_HPRIME_READ_TIMEOUT_MS},
> >   	{ HDCP_2_2_AKE_SEND_PAIRING_INFO,
> > -	  DP_HDCP_2_2_AKE_SEND_PAIRING_INFO_OFFSET, true,
> > -	  HDCP_2_2_PAIRING_TIMEOUT_MS, 0 },
> > -	{ HDCP_2_2_LC_INIT, DP_HDCP_2_2_LC_INIT_OFFSET, false, 0, 0 },
> > +	  DP_HDCP_2_2_AKE_SEND_PAIRING_INFO_OFFSET, true, true,
> > +	  HDCP_2_2_PAIRING_TIMEOUT_MS, 0,
> HDCP_2_2_DP_PAIRING_READ_TIMEOUT_MS },
> > +	{ HDCP_2_2_LC_INIT, DP_HDCP_2_2_LC_INIT_OFFSET, false, false, 0, 0,
> 0 },
> >   	{ HDCP_2_2_LC_SEND_LPRIME,
> DP_HDCP_2_2_LC_SEND_LPRIME_OFFSET,
> > -	  false, HDCP_2_2_DP_LPRIME_TIMEOUT_MS, 0 },
> > -	{ HDCP_2_2_SKE_SEND_EKS, DP_HDCP_2_2_SKE_SEND_EKS_OFFSET,
> false,
> > -	  0, 0 },
> > +	  false, false, HDCP_2_2_DP_LPRIME_TIMEOUT_MS, 0, 0 },
> > +	{ HDCP_2_2_SKE_SEND_EKS, DP_HDCP_2_2_SKE_SEND_EKS_OFFSET,
> false, false,
> > +	  0, 0, 0 },
> >   	{ HDCP_2_2_REP_SEND_RECVID_LIST,
> > -	  DP_HDCP_2_2_REP_SEND_RECVID_LIST_OFFSET, true,
> > -	  HDCP_2_2_RECVID_LIST_TIMEOUT_MS, 0 },
> > -	{ HDCP_2_2_REP_SEND_ACK, DP_HDCP_2_2_REP_SEND_ACK_OFFSET,
> false,
> > -	  0, 0 },
> > +	  DP_HDCP_2_2_REP_SEND_RECVID_LIST_OFFSET, true, false,
> > +	  HDCP_2_2_RECVID_LIST_TIMEOUT_MS, 0, 0 },
> > +	{ HDCP_2_2_REP_SEND_ACK, DP_HDCP_2_2_REP_SEND_ACK_OFFSET,
> false, false,
> > +	  0, 0, 0 },
> >   	{ HDCP_2_2_REP_STREAM_MANAGE,
> > -	  DP_HDCP_2_2_REP_STREAM_MANAGE_OFFSET, false,
> > -	  0, 0 },
> > +	  DP_HDCP_2_2_REP_STREAM_MANAGE_OFFSET, false, false,
> > +	  0, 0, 0},
> >   	{ HDCP_2_2_REP_STREAM_READY,
> DP_HDCP_2_2_REP_STREAM_READY_OFFSET,
> > -	  false, HDCP_2_2_STREAM_READY_TIMEOUT_MS, 0 },
> > +	  false, false, HDCP_2_2_STREAM_READY_TIMEOUT_MS, 0, 0 },
> >   /* local define to shovel this through the write_2_2 interface */
> >   #define HDCP_2_2_ERRATA_DP_STREAM_TYPE	50
> >   	{ HDCP_2_2_ERRATA_DP_STREAM_TYPE,
> > @@ -513,6 +516,8 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port
> *dig_port,
> >   	u8 *byte = buf;
> >   	ssize_t ret, bytes_to_recv, len;
> >   	const struct hdcp2_dp_msg_data *hdcp2_msg_data;
> > +	ktime_t msg_end;
> > +	bool msg_expired;
> >
> >   	hdcp2_msg_data = get_hdcp2_dp_msg_data(msg_id);
> >   	if (!hdcp2_msg_data)
> > @@ -539,6 +544,11 @@ int intel_dp_hdcp2_read_msg(struct
> intel_digital_port *dig_port,
> >   		len = bytes_to_recv > DP_AUX_MAX_PAYLOAD_BYTES ?
> >   		      DP_AUX_MAX_PAYLOAD_BYTES : bytes_to_recv;
> >
> > +		/* Entire msg read timeout since initiate of msg read */
> > +		if (bytes_to_recv == size - 1)
> 
> 
> IMHO, we can add the check if msg_read_timeout > 0, so as to skip for
> messages that do not have timeout requirement.
Above condition is to tick the timeout only when msg is initiated.
Sometimes we can only send DP_AUX_MAX_PAYLOAD_BYTES at a time.
So we can't add  msg_read_timeout > 0 here, that will  be true in case of
We are sending more then DP_AUX_MAX_PAYLOAD_BYTES Over link.

Br,
Anshuman.
> 
> 
> > +			msg_end = ktime_add_ms(ktime_get_raw(),
> > +					       hdcp2_msg_data-
> >msg_read_timeout);
> > +
> >   		ret = drm_dp_dpcd_read(&dig_port->dp.aux, offset,
> >   				       (void *)byte, len);
> >   		if (ret < 0) {
> > @@ -551,6 +561,14 @@ int intel_dp_hdcp2_read_msg(struct
> intel_digital_port *dig_port,
> >   		byte += ret;
> >   		offset += ret;
> >   	}
> > +
> > +	msg_expired = ktime_after(ktime_get_raw(), msg_end);
> > +	if (msg_expired && hdcp2_msg_data->msg_can_timedout) {
> 
> As mentioned before, we can use msg_read_timeout here.
> 
> 
> Regards,
> 
> Ankit
> 
> > +		drm_dbg_kms(&i915->drm, "msg_id %d, entire msg read
> timeout(mSec): %d\n",
> > +			    msg_id, hdcp2_msg_data->msg_read_timeout);
> > +		return -ETIMEDOUT;
> > +	}
> > +
> >   	byte = buf;
> >   	*byte = msg_id;
> >
> > diff --git a/include/drm/drm_hdcp.h b/include/drm/drm_hdcp.h
> > index ac22c246542a..2b165a0f434f 100644
> > --- a/include/drm/drm_hdcp.h
> > +++ b/include/drm/drm_hdcp.h
> > @@ -224,9 +224,12 @@ struct hdcp2_rep_stream_ready {
> >
> >   /* HDCP2.2 TIMEOUTs in mSec */
> >   #define HDCP_2_2_CERT_TIMEOUT_MS		100
> > +#define HDCP_2_2_DP_CERT_READ_TIMEOUT_MS	110
> >   #define HDCP_2_2_HPRIME_NO_PAIRED_TIMEOUT_MS	1000
> >   #define HDCP_2_2_HPRIME_PAIRED_TIMEOUT_MS	200
> > +#define HDCP_2_2_DP_HPRIME_READ_TIMEOUT_MS	7
> >   #define HDCP_2_2_PAIRING_TIMEOUT_MS		200
> > +#define HDCP_2_2_DP_PAIRING_READ_TIMEOUT_MS	5
> >   #define	HDCP_2_2_HDMI_LPRIME_TIMEOUT_MS		20
> >   #define HDCP_2_2_DP_LPRIME_TIMEOUT_MS		7
> >   #define HDCP_2_2_RECVID_LIST_TIMEOUT_MS		3000
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
