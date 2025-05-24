Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF920AC2CB7
	for <lists+intel-gfx@lfdr.de>; Sat, 24 May 2025 02:30:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DF1710E204;
	Sat, 24 May 2025 00:30:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="TdVRH3BP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A25D110E204
 for <intel-gfx@lists.freedesktop.org>; Sat, 24 May 2025 00:30:28 +0000 (UTC)
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54NBhGJb029111
 for <intel-gfx@lists.freedesktop.org>; Sat, 24 May 2025 00:30:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=eEQ/PXH4AzQrHKjfA3QpTYWm
 6wGaPSgM0A0/Bd20mB8=; b=TdVRH3BPR7B96ouPZ/pQtvICwrM5TbgFYqucqn7h
 gvyTBCH48DHxE6qZpF48pBY9Y03uz9ezPILLBxX0OM+sMG5PjnVQOYVBXUqix1Y2
 9bMUGQK+3BxuIL+oXxfeQhMtDwzdrU7zXYKXbhQ0qUYbvAbDsztQcrBBC8thRLIF
 CxkE/obS0dwWd1eCriYRKnwYbO6RFRMavupMDKKa3ex0W7PozGUghSCtUcrYTHjt
 UAwFX6NSZn+fQTCCAQJVL5BVr8ohg/jEZ6T1SYu1hJrzUDX0HmlzJVL9XNMlTZ3X
 AQT9OsSENqCnFI0Hh/oO+gOJXus/CFUFlqi/NxRanuyVeQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf4bjrf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sat, 24 May 2025 00:30:27 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-6f8bdbd9174so10443476d6.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 May 2025 17:30:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748046626; x=1748651426;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=eEQ/PXH4AzQrHKjfA3QpTYWm6wGaPSgM0A0/Bd20mB8=;
 b=Vel06E9n8oZ6nS6+VqU+lgSesPj/WpSDM5BggsS/qWs6NE949EqRJPsLkT7dfrLfc5
 sUg0K5hxs0ZMEXsfAJnBmMey0Y8pnOuLe5ceJ2agLp34hp3B1cu+ybWAB2zjM57ldiZV
 h8ByPyf8X9KSrLX6wkfRraoUNd6PJk5jcG2bL4S45iO/StQ3Iy173gilZTgxrH4l3Zjm
 sUSZ2ISOiZKH+ihoPS/zWdmZleD0JbEIC7vK9ShvkHjy65X9owDcbotScBdBmIxr/STi
 voT9rOO79WGBi6bPXLynbS+uQ8y0cywxlzqYrZ+4Qnq23OY+IvBjO+YrZGUIp/G8kDUD
 3amA==
X-Forwarded-Encrypted: i=1;
 AJvYcCURm3D4IJAB++tQW3Ha01/yeoj9I3k6azdHNYgAc+pCtXmz9HGx7luBISn4RVDofJw/mU5FKxQ1Vtk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzMVGCL/J1JT4lOgcZTP/OX507vbpuhwAWKKj844xX3Le/3sHSS
 7Ob/VB2BolNLQ8L7JwzoAYXNr8gEy+dwodBxSU6vbvLEBVFBfuX9/TKEXEQ9tV1knuSmSr2zoF7
 Cmh1cAs199btCBzlTuIc3SvzAT6WTOEdA+xt0yOzeB9UPN/OTykFYFwHSLGpZ2iULyiK/he0=
X-Gm-Gg: ASbGncvAzP+J582CE0JkCFwS7/+KKkq8KH8ZY5Ppww5KAdHncFJ50nrYL81yMu9TATr
 SDIFKKhzSwko61oZ/v9/kD3Pni5RX9wJ4oC1gWdtPr7sF+aXdTh5F9Eoy/fGEx2Pc4WhaSJOBy7
 4G98GptyXlJsWxRy+m+O5cD8a0xZBDnGE8/TSm0wTBbw7K+AJO2sD93CrvjgW21HEDHfBQJv25Q
 UXxjVEREnPAUSMFUjmOQKU4y7EaDloBqvCS0e/QvLU/IHBrR0+2TYqWvRLxBF5npcVkQCKNtyU3
 IHEb4KvZVsOvGCwn1nANllCPO6q8NzaQVp/8Soqem9I3OFz8HG3mA+AZEzWzM4Sl/AYA+22yRtY
 =
X-Received: by 2002:a05:6214:764:b0:6f5:f4a:a3f6 with SMTP id
 6a1803df08f44-6fa9d2c800cmr26783196d6.27.1748046626351; 
 Fri, 23 May 2025 17:30:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmYI/l7G5xtZG9kstE0qO/gA9/duv04IAkLDk+Q4M6A2rLCetKsnbEjeA4uAr/a/57JKlCbw==
X-Received: by 2002:a05:6214:764:b0:6f5:f4a:a3f6 with SMTP id
 6a1803df08f44-6fa9d2c800cmr26782916d6.27.1748046626026; 
 Fri, 23 May 2025 17:30:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-550e7017736sm4151153e87.131.2025.05.23.17.30.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 May 2025 17:30:25 -0700 (PDT)
Date: Sat, 24 May 2025 03:30:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/connector: move HDR sink metadata to display info
Message-ID: <k4vbzomlwbirprhxxyxegwv7u6g66vyqeqefqogz7hqd75rwrq@7yv7rgsvohio>
References: <20250519112900.1383997-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250519112900.1383997-1-jani.nikula@intel.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI0MDAwMyBTYWx0ZWRfX8+sRgCNqxJPY
 uitGa+ISzu4VKKYKp/EfR64V0oATTFxxpEARDvkJm/OI7RDNlSV+0oe1WiEceVrwivIhKhSJrxa
 z696MkzAvwfhHGG2CL2kXORaLP6u2Y8VSDN+gEUPjHCoaepKhvNfJeLuglDTfcZYRBC8eK3IKHa
 TuPlquvOtqIHL5zRPcOZ5JVa4b0l2mlTMUdE6spBmPxxurBJktpsF5M5OEcQjpvw2JQFuXLhdJ9
 NnNrrmZtPg79lN0Nu3lQZCWPszOI65ExbMGgJlhzcVadOGSD+2F2GfZNZ1j5jfZ+wniamFYRHcv
 KYD4UqF1XVCL/1+v8ZPxargwWR6x7ntx8I/QMkI1Z64CNWrVzo6nnVvmS9yBMP7ADVAxCMWwRS8
 UjI9PPpN2y8QN6Plip4HgmdMS6hmMot8uOWsI5vwfI6ATEq1G5bSOoP8UJoIJjvgV9gE3WOt
X-Proofpoint-GUID: DmK2qsT-pThfBYQiAOnLA12fFlKF23pM
X-Authority-Analysis: v=2.4 cv=Ws8rMcfv c=1 sm=1 tr=0 ts=68311323 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=QyXUC8HyAAAA:8 a=EUspDBNiAAAA:8 a=eTiSQVBF0D9Q57cMN4AA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: DmK2qsT-pThfBYQiAOnLA12fFlKF23pM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_07,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 mlxscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505240003
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

On Mon, May 19, 2025 at 02:29:00PM +0300, Jani Nikula wrote:
> Information parsed from the display EDID should be stored in display
> info. Move HDR sink metadata there.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> This depends on commit 6692dbc15e5e ("drm/edid: fixed the bug that hdr
> metadata was not reset") in drm-misc-fixes. Will need to wait for
> backmerge.
> ---
>  drivers/gpu/drm/display/drm_hdmi_helper.c     |  2 +-
>  drivers/gpu/drm/drm_connector.c               |  2 +-
>  drivers/gpu/drm/drm_edid.c                    | 19 ++++++++++---------
>  .../drm/i915/display/intel_dp_aux_backlight.c |  2 +-
>  include/drm/drm_connector.h                   |  8 +++++---
>  5 files changed, 18 insertions(+), 15 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry
