Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B75DCB12A80
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Jul 2025 14:38:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0C9810E47B;
	Sat, 26 Jul 2025 12:38:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="T7zXasWk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 857DF10E473
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:38:46 +0000 (UTC)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56Q3W1I1025243
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:38:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=p9WlLsI7wH4qRMkHcYS2d4F0
 b2ykbaMu84wDP9zYLAg=; b=T7zXasWkZ06zpnqARRkITEpUQPvghYuVTqKDO/c5
 DkNlyWVe2PJbAAVW6ID1DgAu11k444F0gxoGTpym5YSzRqTVjGwmq+qvzP59MbeI
 AFxGODu8ftka/jUJdG9NVBlaBdkkq8NNxh3l10es9Zu/y9kuUbtpaag0Ics9eTdX
 iCMgFtsvCEqzlk9ey+dUSeQIzrwGEUV8wOC7e1dRdB0z+H7ZaObisUUIyFfOHBNU
 6FwPDL/twmJ7RwBB3UwPFLoHa3J/WvttRasHChoWnfCerKu1LlVhtnVmG6YQi06M
 idJMXiQZZK6O6mdrXtPJKbWuQp4fMm2AZrk7h7qX2lPK2g==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484mqk0twr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:38:45 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id
 6a1803df08f44-6fe182a48acso67718806d6.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 05:38:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753533525; x=1754138325;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=p9WlLsI7wH4qRMkHcYS2d4F0b2ykbaMu84wDP9zYLAg=;
 b=oJ1h3+Xgkm3PvKISwXvtK0rRXQOWDwafwOj88sntMGqQEDJchCJ96jLiVd7cW/L4Ij
 kslDK++w+vkU+g6umX2+gwJ0ZYlxlMeXCNcdsK9nd5mmexSbfnI0CYi3DCyOk7YwtV3s
 QQxNztGDWIvQvJqkJdJeBFNoNixuKnn3EmK7zXa+TIY9x4PNDkaWb2DFogqIBhTRCZvd
 p2NwveaGrVVOzZswuh8GaLlIuAIL7PjyJlCkrY4KJOntKq9rzXIq3jtfd4QWZZgAx5Hd
 MaytPmmho0R7kVVu9ohL9eRSlilGo7KRyiavRGtEiAhEIHNqmEEy0HH2xEpfSfrs2V4j
 EEnA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV8tpyiWr9kfWbpD9XTrrFxVJvZ5zw7jiHJcDmfjypcmHprTa3SU5axv9vN9X7RPnVWPPJhzg5PZTs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyNEhpSb4k/F+A4xlXF1SWimbWcCbt3po2xTKvBSfAl/CcscGsU
 uxeJTeuxMXEZOFJExJU8NU5TD1BmoT5Ilkjd/0YHrEetwbDAWGlxgUlir3KFEJAyCCL389cSag7
 mZoZNEel60t6cZzrSQ7sHvGkzom1ZEmSgEhvaEt3YCgQnA5YHLKgavUdCyYyQYgqvCnwEX2Q=
X-Gm-Gg: ASbGncvCWabhVcpEJhTiIAs2Tit37Dp74bBvUEQFa604skRjNMLUHOHpyokpGY18L23
 vVCY3j1ga85tZNz/TCgyLqrcFALBzPBEi+h1ePC9Mxja/MtkcHraGjYX5x2s7ZczAEC2xJzCaRy
 XAk/shcO2Q85LfkJzCbiQ2yiB1gfLHtxwdcG9TV9PIFbU0ijd5H6pziAwx07e79sVR5L03vrHpu
 lWuNajtufJ0zs78MBsjINJATLrcmjiXlkqxMVv4Zc6sq7AwAqsRD7uAdT1QNwDhoC1QrEVjcSLP
 E9oM8Y40Sf3/8vluY9PULfndKdP7fPFjmYW9k2W1S8Xxw96xP8NmZO1ffoHMJ36JySjF+Dqqmur
 p8pN/apdN8LaPVI4iKPsvPBKPcMZBoi/AMvCa7F8Nf8iYx5B7CkES
X-Received: by 2002:a05:6214:c64:b0:6fb:265:a2c5 with SMTP id
 6a1803df08f44-70713d6d5d8mr103943176d6.17.1753533524548; 
 Sat, 26 Jul 2025 05:38:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHNpnjyLFNka9PviBkscyS3Ceub+UziIG7kHudjcBkOBPWBI7J1LtbvLyuYM7A/xBfUxwo1Og==
X-Received: by 2002:a05:6214:c64:b0:6fb:265:a2c5 with SMTP id
 6a1803df08f44-70713d6d5d8mr103942896d6.17.1753533524022; 
 Sat, 26 Jul 2025 05:38:44 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-331f429f382sm4288081fa.92.2025.07.26.05.38.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Jul 2025 05:38:43 -0700 (PDT)
Date: Sat, 26 Jul 2025 15:38:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 arun.r.murthy@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH 18/28] drm/i915/writeback: Add connector atomic check
Message-ID: <75d63c4377tss5cml47qu3ferkwuod7rceox6t5lrjqdzykuxx@q26ta2glzndw>
References: <20250725050409.2687242-1-suraj.kandpal@intel.com>
 <20250725050409.2687242-19-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250725050409.2687242-19-suraj.kandpal@intel.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI2MDEwNyBTYWx0ZWRfX6ggANFDUreu6
 xkdnMT8CqCLF0wWQGyy1l10CdHjl7N5PkCCvV68w8QVPqTj2xwYEo3BsdnsIulFUuAbu8ZNiCzu
 lQd6nQbgampcym8Z9x9IE8v1RsoHvZR5RJZEscVJiIx88dwVIB8LuirL1IBd3is11EtOuSt8CJt
 lBspWqTKHGcYXUk//rvRb1Oo+ErwxZIcSCm3ShpuzLAlVeHoNBsk6pFeU57vJvYR9RsVpaysw+m
 6PmxtPbsD7riJC4noDSP01ahHS+nlklaBDtIYVtoNXDgOdoDg0N+qrWodNwY8qKmGmqUvZSi7A7
 gTLf+h/vji0nMjV3KySRfWZbcXf0uAMKv3QlJvLPs3xErMgwcPpbjIb8JR/xrkLLV8JO0VLMQEx
 5IjkFlm8tKnbwoLL31fEm1VDYCXRh/PKDa1dEuGzhWVKeeCUM3kcOreaG/T1VE2lQaibO3L4
X-Authority-Analysis: v=2.4 cv=fqPcZE4f c=1 sm=1 tr=0 ts=6884cc56 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=QyXUC8HyAAAA:8 a=7yYpvgMhsW9ct4Lpu_sA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: nsNMRVYBkneA-NkCfA_F_3KiXTyOvwVU
X-Proofpoint-ORIG-GUID: nsNMRVYBkneA-NkCfA_F_3KiXTyOvwVU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-26_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 impostorscore=0
 adultscore=0 mlxscore=0 spamscore=0 mlxlogscore=974 phishscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507260107
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

On Fri, Jul 25, 2025 at 10:33:59AM +0530, Suraj Kandpal wrote:
> Add connector helper function for atomic check which sets the
> mode_changed bit and checks if pixel format of fb is valid or not.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_writeback.c    | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index 9b2432d86d35..7fb30cc61991 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -186,6 +186,54 @@ static void intel_writeback_connector_destroy(struct drm_connector *connector)
>  	kfree(connector);
>  }
>  
> +static int intel_writeback_check_format(u32 format)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(writeback_formats); i++) {
> +		if (writeback_formats[i] == format)
> +			return 0;
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +static int intel_writeback_atomic_check(struct drm_connector *connector,
> +					struct drm_atomic_state *state)
> +{
> +	struct drm_connector_state *conn_state =
> +		drm_atomic_get_new_connector_state(state, connector);
> +	struct drm_crtc_state *crtc_state;
> +	struct drm_framebuffer *fb;
> +	int ret;
> +
> +	/* We return 0 since this is called while disabling writeback encoder */
> +	if (!conn_state->crtc)
> +		return 0;
> +
> +	/* We do not allow a blank commit when using writeback connector */
> +	if (!conn_state->writeback_job)
> +		return -EINVAL;
> +
> +	fb = conn_state->writeback_job->fb;
> +	if (!fb)
> +		return -EINVAL;

Other atomic_check functions return 0 if there is no writeback_job or no
FB. Please elaborate.

> +
> +	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
> +	if (fb->width != crtc_state->mode.hdisplay ||
> +	    fb->height != crtc_state->mode.vdisplay)
> +		return -EINVAL;
> +
> +	ret = intel_writeback_check_format(fb->format->format);
> +	if (ret) {
> +		drm_dbg_kms(connector->dev,
> +			    "Unsupported drm format sent in writeback job\n");
> +		return ret;
> +	}

Missing a call to drm_atomic_helper_check_wb_connector_state(). Please
use the framework where available.

> +
> +	return 0;
> +}
> +
>  static struct drm_writeback_connector *
>  intel_get_writeback_connector(struct drm_connector *connector)
>  {
> @@ -221,6 +269,7 @@ static const struct drm_connector_helper_funcs conn_helper_funcs = {
>  	.get_writeback_connector = intel_get_writeback_connector,
>  	.get_modes = intel_writeback_get_modes,
>  	.mode_valid = intel_writeback_mode_valid,
> +	.atomic_check = intel_writeback_atomic_check,
>  	.prepare_writeback_job = intel_writeback_prepare_job,
>  	.cleanup_writeback_job = intel_writeback_cleanup_job,
>  };
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry
