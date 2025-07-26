Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E375FB12A82
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Jul 2025 14:40:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0379010E473;
	Sat, 26 Jul 2025 12:39:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="h6oPrW94";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD30710E473
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:39:56 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56QBk2eH020782
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:39:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=OWv91NLXRDuT4X2MxDjuA0UN
 OQUYmBmQUsyW7/9v0ew=; b=h6oPrW94lXVY5UtPsSY4O9gA7EuzTP8O1Jp8zgLH
 aDMQQVtQkfZUx5saJ1cvjyr+4o+4oeeFtjzqLU25VD9cZHndDKJPq8CTPVsgj5x7
 Vx93hP+4kiH7Zoo2pWZSCSyv0R8TVg0AwAoqdlBxi8Fsv65aUfKZ4BrKHBbDIUrJ
 DESRdCGZ9shRLd6JaErt+q0fOXHTu7ANPhM4mj2JlSqqiKoTH+ef0rHugI7Q3Eis
 EwFS/2ayoHRYFlhTCGhVUH/jQSt9wiXzW4jwNwXv1CK9jHFIeVr2u1k3gev+dxTg
 d7bMl+LRER64VWr2oz5N46L7W4A5VIDs10eSGB20uN0aAw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484r6qgh1a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 12:39:56 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-70707168c59so25395106d6.2
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Jul 2025 05:39:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753533594; x=1754138394;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OWv91NLXRDuT4X2MxDjuA0UNOQUYmBmQUsyW7/9v0ew=;
 b=ZHcBDd/PhnFgFutvnrnC+pE6Ep7nldkbMzPyiSCRxB4tYfukhDXDVlY/hIsH/0u5MX
 ehC9Fu/GX3iIps92pZ3OcnZhGQ++24C+wu7PAYBbVWjRldNMdnvLVXf8/D+u/FhLUJa1
 vHhHDmUFBGS54kX7RrMmcgWmcDNuU9WH3JCO1wK+exlcZ6ffnVFXo4QyzdlWe4vcPBV0
 XeQoRLY8F2jnDgj3WeHFWYcIIjGBUSpYql1METfRbWp/2nqnK82UX/KeDHnoNP47sbH4
 1CkUrhOjkUXCHllqX2uTHHqN+gsy8LNOVNJkZYvfo+qRlz/LCsyr2nlp4Q/9kUWrHbLD
 7Bsg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWNXSRNa60TDRR95HXW408Zbzd9NGZUWbnOaTGWZSTdq/LPRGBID/xEuPIkR0HoxLT9I9yZBnQnMeY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyLK+236bypd8fDpRozqVd3Yss0SB3uEU3dW1ZJdUnCa2IvesEB
 S+mOXXvMkRFKOtSarRP4cZsa8f2ZwbxRm7mJpTy9/liLnhGskGJzLW04qZCbNFNx1pToZ/X2CI6
 dt3xBmg0yxO7Z9NBYSYFIJ3/L7nVzAs6tf0Iv5xAO7MZhfXANW/AVPfsiaDujMLynscZtOkXcW2
 QeMLw=
X-Gm-Gg: ASbGncvRUVcJ4NneIlO2cZWPrSm3t+fLFoHx4UsL5ylfVzfG3E3yZZS83htwHPassaD
 Xc+9KlsxcNGICeBsb3HPfndZwYe+gpvVzJCmQwsOxl5R/wkNefEq6NPf76vE+1Mj1teH02U+8uz
 vE8qCh01gcQT8aKgSbtx5BWU/n+mBPK1PeXu+fZEbKIynFdKLn21JF7TSXSQs+8Zdjh8GXR/nTA
 mvJZAfvQFHRZi2Yzq3jQEuomMbiH3/rP1b5iGDqRRkzd96YJHw2esSi5/8WmS07ayQZWJTsXYoj
 zqvr/0LNZd4T1hs4RgT/+m7uOjTd9myrr2pZeZfUGPfXiY4IiY8qewqxjuDVcapXY1QTbb9D3jp
 DYfWoYmAUGh3IVQyc7orqnAKDcszdD99wN3EceeyigB9PyQaf5dG4
X-Received: by 2002:a05:6214:c4f:b0:705:12b4:154 with SMTP id
 6a1803df08f44-707205b2dbamr58956366d6.33.1753533594475; 
 Sat, 26 Jul 2025 05:39:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQiX8ECR16J6mHdmsGPse8S+RlovYhgXsDP3Lhn1m1Kl+FztM+cvVbVhC24nQNG9WzzdSr2Q==
X-Received: by 2002:a05:6214:c4f:b0:705:12b4:154 with SMTP id
 6a1803df08f44-707205b2dbamr58956126d6.33.1753533593977; 
 Sat, 26 Jul 2025 05:39:53 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-55b631a1b0fsm425273e87.73.2025.07.26.05.39.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Jul 2025 05:39:53 -0700 (PDT)
Date: Sat, 26 Jul 2025 15:39:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 arun.r.murthy@intel.com, uma.shankar@intel.com,
 Harry Wetland <harry.wentland@amd.com>
Subject: Re: [PATCH 00/28] Enable Pipe writeback
Message-ID: <moagnjfwotoyisjfymvftkm3ndlifgxgjg2b6e74nm3pbityow@us2zmsccovwh>
References: <20250725050409.2687242-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250725050409.2687242-1-suraj.kandpal@intel.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI2MDEwMiBTYWx0ZWRfX+YsKa5Tb0P1v
 m4uzEwrVTS35SZZwMTnTBNCMCWEvsb0Gs16u27HlO0wjWC3mBubONXiyV95KEDZjVFIIHTV1kIE
 +6KhgxoWxKpCyzuq5ugD/C51sj6mr3mxKSV2W2cPzExDTZ/SEutJBcfcQYwmRsuYyeM/QY5eFUO
 o4Tb+PWYG+Glt/89cSXNw+qOrQ3EwIt+BQ7mN2aYqoyaNFR+synfPbG2YEX5MOpSMyQZCwCbmvf
 b3/eMXxJ+caxy+fE/eIFMhZ1CaXLpkmdEftBaqLlPBJL0A7tNu7JQoT2DCKocqJcM8HnSJWDhZZ
 lfAyDjbxHCsm4CJ05mxv3s9CCWWQw7Dz2ZQFMQNQE4oZTNgJO2D56RwrS+mnLjfuliBvzvQEe0I
 Vgu8o2Lp2i4+2x5GjHQBrpCqTmXbQ+Y7CcF7XbaO59gG6D+8s+BnUAEiLucUv1ZWuQLYuICr
X-Proofpoint-ORIG-GUID: HweQ0NVjGFTLzFj7g-U1jBishseN-RQ_
X-Authority-Analysis: v=2.4 cv=ea89f6EH c=1 sm=1 tr=0 ts=6884cc9c cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=zd2uoN0lAAAA:8 a=QyXUC8HyAAAA:8 a=2U7y_S2j5q8vnCcmH9MA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: HweQ0NVjGFTLzFj7g-U1jBishseN-RQ_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-26_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1011
 spamscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
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

On Fri, Jul 25, 2025 at 10:33:41AM +0530, Suraj Kandpal wrote:
> This series aims to enable pipe writeback functionality on
> ADLP where it has been tested. The plan is to slowly accomodate
> all supported hardware after this functionality is tested on them.
> This series also brings change to drm core but not in a drastic way.
> We introduce a helper which lets drivers have their own preallocated
> conenctor keeping the connector in drm_writeback_conenctor blank.
> This lets driver have more control over their connector but still use
> the drm core queues for job creation and signalling. Some new helpers
> have been added to aid drivers so that derivation of drm_connector
> from drm_writeback_connector and vice versa becomes easy for drivers
> that will use this helper since it won't be as straight forward as
> wb_conn->connector anymore. Driver not using these API will not be
> affected in anyways.
> This series enables the triggered captured mode where we need to
> trigger a capture.
> 
> Cc: Harry Wetland <harry.wentland@amd.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> Suraj Kandpal (28):
>   drm/writeback: Add function that takes preallocated connector
>   drm/writeback: Add a helper function to get writeback connector
>   drm/writeback: Define function to get drm_connector from writeback
>   drm/i915/writeback: Add writeback registers
>   drm/i915/writeback: Add some preliminary writeback definitions
>   drm/i915/writeback: Init writeback connector
>   drm/i915/writeback: Add function for get_writeback_connector
>   drm/i915/writeback: Define the get_connector_from_writeback hook
>   drm/i915/writeback: Add function to get modes
>   drm/i915/writeback: Add hook to check modes
>   drm/i915/writeback: Define encoder->get_hw_state
>   drm/i915/writeback: Fill encoder->get_config
>   drm/i915/writeback: Add private structure for writeback job
>   drm/i915/writeback: Define function for prepare and cleanup hooks
>   drm/i915/writeback: Define compute_config for writeback
>   drm/i915/writeback: Define function for connector function detect
>   drm/i915/writeback: Define function to destroy writeback connector
>   drm/i915/writeback: Add connector atomic check

You are adding hooks one by one. Are you sure that the series is
bisectable? In other words, the driver must work (aka must not crash)
after each commit.

>   drm/i915/writeback: Add the enable sequence from writeback
>   drm/i915/writeback: Add writeback to xe Makefile
>   drm/i915/writeback: Define writeback frame capture function
>   drm/i915/writeback: Configure WD_STRIDE reg
>   drm/i915/writeback: Configure WD_SURF register
>   drm/i915/writeback: Enable writeback interrupts
>   drm/i915/writeback: Initialize writeback encoder.
>   drm/i915/writeback: Define the disable sequence for writeback
>   drm/i915/writeback: Make exception for writeback connector
>   drm/i915/writeback: Modify state verify function
> 
>  drivers/gpu/drm/drm_writeback.c               | 123 +++-
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_acpi.c     |   1 +
>  .../drm/i915/display/intel_crtc_state_dump.c  |   2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 178 +++--
>  drivers/gpu/drm/i915/display/intel_display.h  |   4 +
>  .../drm/i915/display/intel_display_debugfs.c  |   3 +
>  .../drm/i915/display/intel_display_device.c   |  29 +-
>  .../drm/i915/display/intel_display_device.h   |   2 +-
>  .../gpu/drm/i915/display/intel_display_irq.c  |  10 +
>  .../drm/i915/display/intel_display_limits.h   |   2 +
>  .../drm/i915/display/intel_display_power.c    |   4 +
>  .../drm/i915/display/intel_display_power.h    |   2 +
>  .../gpu/drm/i915/display/intel_display_regs.h |   1 +
>  .../drm/i915/display/intel_display_types.h    |   1 +
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   3 +
>  drivers/gpu/drm/i915/display/intel_opregion.c |   2 +-
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |   3 +
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |   4 +
>  .../gpu/drm/i915/display/intel_writeback.c    | 686 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_writeback.h    |  23 +
>  .../drm/i915/display/intel_writeback_reg.h    | 142 ++++
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  include/drm/drm_modeset_helper_vtables.h      |  59 ++
>  include/drm/drm_writeback.h                   |  21 +-
>  25 files changed, 1238 insertions(+), 69 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_writeback.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_writeback.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_writeback_reg.h
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry
