Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 097BFB12A85
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Jul 2025 14:41:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C94F10E47E;
	Sat, 26 Jul 2025 12:41:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="PFy9HuK1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06B0410E47D
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:41:06 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56QAl7Q8014239
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:41:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=i6whXItl51qQxYCKews8I6N2
 kwKaahew86LQlq11tEE=; b=PFy9HuK1HhCu7y6xvrIoQ9RdPCkpUehPbgXX8SIj
 ZWNbd/33SHTvjy/a2OVOMZef+gIoJEhk1wCixL0ltamK8ryf3hhdm6pTjSrABEc4
 3jd4vfMQlAAw3DmdnYzny4RedbzhzsVPYLG8s+erhEog9HHA9/MN4w+LMPbewfqV
 rn/j796D324vgRnzuXbV/2TfZSRhN7QAUfgJ6dAUU2/zwgNKGECnNDELLz4OYz45
 1uH+HPAXnvwLYAmdpWxFac/gpu2lJaXx1zAvqE57BQ0GfPasT5wgaiqnelmAgMPk
 jCrpzFf0phDxGiLHL008PPaB/ZZYxQJ0vTIgIZ4nkQIdcQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484r6qgh2d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:41:05 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id
 6a1803df08f44-702b5e87d98so55051716d6.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 05:41:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753533664; x=1754138464;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=i6whXItl51qQxYCKews8I6N2kwKaahew86LQlq11tEE=;
 b=P+BWd2MjdWd7F0D/6pSyfzD5C2h75VwBiSOyuP4PKlGuKOoyvgAwwj5jCyWE87KNd2
 bZFpGJWhrsWu9qlnKJ1XQdHmqgfZCR4HGEB8yKh5U1ti18vUP/yOqPwM+fYklsi13YZ+
 x/b5JdK6L2OqY0+UIxj7IcwyEnzwlWgFrJ9vorMm0x4N9kDAwMVxRWmJg1PUlzWroeyg
 d12s5Ia0gg97TMLE+hw+aP29Y9/zyEF5XctGaK7Tm9ctOzMbjMqmUjsvCFCbgb9KutFu
 pmjrBIE/uEp0he2w9ZqIYJNlKiWBB9Bxhlmw2fNFuibHUwPTCoq/VgGSpRSWmXNaACc9
 ivvg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUJIYrEWVw8imz10Cgv4wMUwH3M733Cpb2pCJqldabuuNz/p8E2uRCUewor9P2wD/KBUKKje7TdpdQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw+5jo+qyGZD1oe0BCb+ik7CpnHYM1rq/V5mrKJxdqKYv5VHwEV
 wYxarJXxt6m+XTW/7UPWljjPc0g4nfShrYo7FfkS57DU/H67k4WKGayFPOD77wbLlapJH53oFlL
 V5mgXk3MjDyWGjJgSU32XSFEEcQEogbHIMqRdV4vBF22rKHTRCvJl3P9sgRCR8kK17kHbQVw=
X-Gm-Gg: ASbGncth+QVMzOupf0DkEK1FmvN83aT3XWNi2m+1GhwT688lv5fUUSAOOPb9w98Q/EO
 9BP3VbGHGtsciKNyvseQhGTvtKPYnsrPCEVAh2WTF003FzSmZxb3FEXxY/R7wl8u+Jy24aLjK/k
 +6VMSjNnsKE/AVmUUgIu54f6vdo4hfCUXZH3c+gDVgGMFJTrWzMlJTF+k1hps2yPNdCha8mfo71
 0MesURpqux3mVwuEM0tYPoLNYDh+q3tcXDXL4qPWeORtEjsIoQZ2mHhcoSqdgfSHcac972IfbuD
 cXUxqJ1dDCmeqfbktuKUq1UFntQfSdwRDM1SsG/gOz4wfnpObwZe9YnITEjvuW0LrreJ5hAHFEv
 Sma90UtWG/maeiXOgfxyoXRngi08FV+41oXQsOCA77FMt60uWsj7r
X-Received: by 2002:a05:6214:529b:b0:702:da74:d022 with SMTP id
 6a1803df08f44-707205d33b1mr80399236d6.35.1753533664097; 
 Sat, 26 Jul 2025 05:41:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPQDX73wCshkrBut65BKJsC8lKGRUiTfd5OXC0vTlX80yzrSUGlo1K4bxyQk5IG+160yXWeQ==
X-Received: by 2002:a05:6214:529b:b0:702:da74:d022 with SMTP id
 6a1803df08f44-707205d33b1mr80398866d6.35.1753533663708; 
 Sat, 26 Jul 2025 05:41:03 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-55b6336387csm426079e87.107.2025.07.26.05.41.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Jul 2025 05:41:01 -0700 (PDT)
Date: Sat, 26 Jul 2025 15:40:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 arun.r.murthy@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH 17/28] drm/i915/writeback: Define function to destroy
 writeback connector
Message-ID: <3paeal7ew2pjo6h23rr4t7fqz33avbyxuync5cxnxlh7w4xxr6@ja77buhqtlva>
References: <20250725050409.2687242-1-suraj.kandpal@intel.com>
 <20250725050409.2687242-18-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250725050409.2687242-18-suraj.kandpal@intel.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI2MDEwMiBTYWx0ZWRfX+S8p/Fm631sw
 Osrrdya9NxoEQRXY+3OSYOqT7Xt3Q/c4f+i3ED/BY975cfUnSaAkKLBXjUbh0mbMvMkwcHPSHsW
 2S7cl7WDeDE4FelxF1zV4RmdlgFuaEQjIAyEFbT78+t9CsU+/hI/m+vWXi6+xZZ2Gq45MF4tE1c
 qdfl4FTXI5BRURMbJcnx2HuWLV39Vt/6KNTn4PFFStxMxtmNGIIF3BqlyxpiZsPPywVbnbrQ7zm
 SviQr9cz/xzebvvX4w44MZpJX0uegWQ2LuDBjQzUhxlfF/utV7SV0aMPCeg38a3tImviyI9jJ3p
 4Nw1CMy64MsGz8ml7pmOV2+oCmBGUiaaCGUE8QM4yQQWuMogkxmxtxVxLkcXwPJvY9bkjJPP9IJ
 SyFkxIM+iHp0GacMfPCBfd1OGg54W9gbh+WDgMZjGvj/pdQhwI5JCQrs+F8MdU4HMJ+FGD2Z
X-Proofpoint-ORIG-GUID: 6-LrmZTfZ0cBfCmbDPqNWt_2vkZZpkwb
X-Authority-Analysis: v=2.4 cv=ea89f6EH c=1 sm=1 tr=0 ts=6884cce1 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=QyXUC8HyAAAA:8 a=DSuhFVeksThMRZl9yJUA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: 6-LrmZTfZ0cBfCmbDPqNWt_2vkZZpkwb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-26_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1011
 spamscore=0 mlxlogscore=968 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507260102
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

On Fri, Jul 25, 2025 at 10:33:58AM +0530, Suraj Kandpal wrote:
> Define function to destroy the drm_writbeack_connector and
> drm_connector associated with it.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_writeback.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index def33191a89e..9b2432d86d35 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -180,6 +180,12 @@ intel_writeback_detect(struct drm_connector *connector,
>  	return connector_status_connected;
>  }
>  
> +static void intel_writeback_connector_destroy(struct drm_connector *connector)
> +{
> +	drm_connector_cleanup(connector);
> +	kfree(connector);
> +}

Nice example of what I've written in my response to the cover letter:
without this commit we have a memory leak here, don't we?

> +
>  static struct drm_writeback_connector *
>  intel_get_writeback_connector(struct drm_connector *connector)
>  {
> @@ -208,6 +214,7 @@ const struct drm_connector_funcs conn_funcs = {
>  	.fill_modes = drm_helper_probe_single_connector_modes,
>  	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
>  	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> +	.destroy = intel_writeback_connector_destroy,
>  };
>  
>  static const struct drm_connector_helper_funcs conn_helper_funcs = {
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry
