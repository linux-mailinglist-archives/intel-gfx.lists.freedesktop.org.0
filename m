Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D19BA87F9
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Sep 2025 11:00:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6276110E3D5;
	Mon, 29 Sep 2025 09:00:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="T2xqhC3m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2802F10E3D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Sep 2025 09:00:19 +0000 (UTC)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58T8WfHA029194
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Sep 2025 09:00:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 K70Xwm8Y+J7KLULBIJyLbfN2P1E5MkuVdQpZLT5gNI0=; b=T2xqhC3mvopWRuOI
 dxF2M5bmsxCdK4g2NM7+MMJNM2TKUmoN2Xx3P7Zm0tFfES4xJro8VhVHUNntVmy8
 +HWYh0qYrsliHlpTf1lRpblNNs1dg+onkfVVUvmVnpCi4ExNZydJEZs8Rufpc9ua
 0+uLj88iEvI509YZRtaz1wjW9+GqNTHx50CiGwmyO9DUxIkEJRdTAvbtoVQuYZWq
 Fu0819rAN/llh0ud1HFmTjj2caKow1zAjKezwNjEKbBLDsfNFGWEjsejHLJwDN1o
 c/btiBM9qnka/NWzUr3JV/rQ04BYJ0eG4+3qwvgJFI5Nz21Y90GDNo5QUBGJDJVO
 DP5P+Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49fppr02a7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Sep 2025 09:00:17 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-4db75c7fa8dso103082291cf.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Sep 2025 02:00:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759136408; x=1759741208;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=K70Xwm8Y+J7KLULBIJyLbfN2P1E5MkuVdQpZLT5gNI0=;
 b=w7CG5vT72nRb7xQURDzPWf13gJBydufn6HqNvy1rrwq0/MTd387XrpbcEhQ5+Tedfr
 RKxoKL7RDtXTOkRzMY+CcZ0Ir43wLy7egLuDTvaHrY+Geu6zf1wJdoo4IlKsm7JSs3ek
 36g24eu8cNCDHjBsVOVUyGECm16QzT1nwgjsUgUP2AUkAop0WD7ZOsQscJzqujvd/SXA
 6QVj2hnpmJS5Q30ZNeUqnMZnrMshAXZ1hrrVQ1PJVoUrPo+atwdVovvAt+x4Mep9isD6
 IhcSdiytF0LnxzxXgWfdT4W626MTl94mPIYOjBn7DPpEwJoIcUm7GVjjHIYcTrALSBgs
 LXIg==
X-Gm-Message-State: AOJu0YyPntPoi8svEquBUfpoN/DWtpRaBO2puf2NYP9tQoisBbXMOQDd
 JHHrdCTMD1Yl44/oWEg1k3ItkN55r4tO2PWFol01Dj50W0tCwxA+rvUrUUFIrI47JlLQYHI/WoZ
 vEAjJdAU8aHD1jKqXbyAD/3i3IeL+lqf9sipADLzOS1c6TURUYcm9dstzrLjNiYOKH6qxx88=
X-Gm-Gg: ASbGncvuWoTog1A3BmzlMwdCwfld1I6wIDtSkLv7N5/stjETWUcHFEjSljIb76jh3Nv
 ui7ATdMZi9NfnfN2iyMnWb1LaqPEbcwFeVL5pUcNsekqKudlOxhvoZPkuQbfwRfvk8T9qpk5ugg
 VHP4f0V4b+Ngiy/y5JaSA9+EDQ6R6ySos9/1uDxxDpxTH8KBbVjEzhHTPhxF9alJ6wDgQDdj+Um
 yMIpkMp1DQvwOxYe+IFYdDS6+GQ9Mj9OtHh4evKAurH1BF7ZEXBXH1QjlXtoBcFf1W47kksOgK0
 P9+Lc4eUkRZ73v0ExTpTbqC+LlSuAi/7rNJs872FPWQNdArXPqdefrNYT+I7Dq7gRSD2tiBSMrx
 DzVhf+hc95Cnt+hHT3e1sKuf6mvDcmHJZgE9N28jpSlve55VXEDQS
X-Received: by 2002:a05:622a:438c:b0:4db:e906:21d5 with SMTP id
 d75a77b69052e-4dbe90625b2mr119075921cf.5.1759136407870; 
 Mon, 29 Sep 2025 02:00:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGs7jT0iWYWJCXgAu4QKcdkIglyJQcSU8ATVnEsnVaemdKEYJ2P7+RTKKGMTHiRPC2iB6Hy7A==
X-Received: by 2002:a05:622a:438c:b0:4db:e906:21d5 with SMTP id
 d75a77b69052e-4dbe90625b2mr119075461cf.5.1759136406987; 
 Mon, 29 Sep 2025 02:00:06 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-36fb7713a3dsm26929591fa.42.2025.09.29.02.00.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Sep 2025 02:00:06 -0700 (PDT)
Date: Mon, 29 Sep 2025 12:00:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v5 2/6] drm/dp: Add helpers to query the branch DSC max
 throughput/line-width
Message-ID: <agzmuyty22gxtm7cwpdl7ynmrubot45e65tfavbq5muamn6qnj@2wsbjqlc3pye>
References: <20250926211236.474043-3-imre.deak@intel.com>
 <20250929063644.533890-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250929063644.533890-1-imre.deak@intel.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI5MDA4MiBTYWx0ZWRfX4dhLLlef24RF
 2WfPHfpjeaaGofdd/udYM0QP6HBfX7FjuDWPQyIkUulUoQbv6utc7j4U2oPiXWLeLge5AxZPTwE
 LAKf/FiwL8AeOGsBOC53voxujgE7wjD0pgY+3vqTZdhCmQNkWLts46SacZ5r00+7BUdFAIdNbjK
 DqAoQg3UZFQ0t4mIsqx/WgTZzCBUaDoFAyYHfpRNrRzrkvxwXQQQGJ1oV2Yse7SwfA21hI7jf+z
 zGRe0eoFT4jSQ9uDlR22mJNTK1tzm5xGzNeRhbEfHhUsCpwRnitsbQ94U0XTdIRIdJ71klTBncr
 KvCOxIYDKKqan7NCCeDV1JBbEnsDzAfp6GFOYaOFg82ubLAn3pKCzvhWLWVEoOM5N4MFwkrHPjG
 t4BH+N2pfVhiD6FkvWLej318oMlTKQ==
X-Proofpoint-ORIG-GUID: 2oTVAnHkjdvKbo_fbaCejFuOKcRhTwqE
X-Authority-Analysis: v=2.4 cv=GLoF0+NK c=1 sm=1 tr=0 ts=68da4aa1 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=e5mUnYsNAAAA:8 a=QyXUC8HyAAAA:8 a=wX2-_eRYuEKPtGxe6ucA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=dawVfQjAaf238kedN5IG:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: 2oTVAnHkjdvKbo_fbaCejFuOKcRhTwqE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_03,2025-09-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 impostorscore=0 spamscore=0 bulkscore=0 clxscore=1015 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509290082
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

On Mon, Sep 29, 2025 at 09:36:44AM +0300, Imre Deak wrote:
> Add helpers to query the DP DSC sink device's per-slice throughput as
> well as a DSC branch device's overall throughput and line-width
> capabilities.
> 
> v2 (Ville):
> - Rename pixel_clock to peak_pixel_rate, document what the value means
>   in case of MST tiled displays.
> - Fix name of drm_dp_dsc_branch_max_slice_throughput() to
>   drm_dp_dsc_sink_max_slice_throughput().
> v3:
> - Fix the DSC branch device minimum valid line width value from 2560
>   to 5120 pixels.
> - Fix drm_dp_dsc_sink_max_slice_throughput()'s pixel_clock parameter
>   name to peak_pixel_rate in header file.
> - Add handling for throughput mode 0 granular delta, defined by DP
>   Standard v2.1a.

This one got sent as a separate V5, without a proper changelog. What has
changed?

> 
> Cc: dri-devel@lists.freedesktop.org
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 156 ++++++++++++++++++++++++
>  include/drm/display/drm_dp.h            |   3 +
>  include/drm/display/drm_dp_helper.h     |   5 +
>  3 files changed, 164 insertions(+)
> 

-- 
With best wishes
Dmitry
