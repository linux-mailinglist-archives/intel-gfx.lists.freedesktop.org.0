Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97159BAE8B6
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Sep 2025 22:30:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2726C10E2D5;
	Tue, 30 Sep 2025 20:30:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="nDOAPyJy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC59810E2D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Sep 2025 20:30:47 +0000 (UTC)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UKRpW4020364
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Sep 2025 20:30:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 A5MAdGf8N2IXmeD2HSikyGHXMxYdUuVy92vP7GjOTJs=; b=nDOAPyJyz8QfENmG
 6Ya4yWlFzuV+sHmRuXqcoE7XKaVP+2TOCcm3hCC6yVdRDCRwwd/gcwLbUtRAICTA
 6KnVbA6BiDCw2c5AmFQYaHMsZ1VSoDZQnoRR+Ztli0XxOwVpYsv088FtniMUH6Su
 KltjZSLfVpglv0q2ketBHbfrP0FjUB5X7/k1UA/abIyTr+On9m6rUffOKfmxwLSv
 u19+hBete2uQMeDyBG4NOSCclgSUL2HyeDhEfj7ek3VQY4v0fs8ugXSkTsxTTyNo
 Y9Pma35x/+Lve0NBPidw7BSgHx29WF5bYEL2e9bDGN5ASx/i7T2AojlgR3G6/mBO
 u3QzxA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x5tgtc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Sep 2025 20:30:46 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id
 d75a77b69052e-4df7cdf22cbso7559041cf.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Sep 2025 13:30:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759264246; x=1759869046;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=A5MAdGf8N2IXmeD2HSikyGHXMxYdUuVy92vP7GjOTJs=;
 b=RzQl8eEW4uCsVn5oqGbAGRNxMf/62mZca3DIYwonQkAq3HI6BqOozFFXyXpNXvRAnH
 SBWZ0CtZ5QxV579p2YZD8/I6QkDXMCcX7DTOFuonQkYw6CqX2kS7cCkDZ/7Q4zPsd3lJ
 zKtUnWtuZdWFufKhHBpm4PS1Ix9fL0vIM+j/d4PLWpyQX0TFjBoGRBqL2XB40Cp9bgs1
 GqzHBVPbdFEODPrUYZNfByxj2vYpoTpW1K3p4xnr6xPZJsc3z9XwjWiUC6rNUTIDshlD
 ykybeUcI0dX6naUc8ESvizq/KYa37Bi62eEHkBI7Ru8WpTWRbwUljyjzBY8Os2MN9fx+
 ptYg==
X-Gm-Message-State: AOJu0YxfCI+Pm7AX5vjZTNAvKVCpedMZRW5ItkN51wbG109aR4eo34gj
 mKJT250I7KISSZULr4pdkEFElUn4jCsBmx5YmH+xDpB1xEERh+5p0cnRzjcHNBMc0bgrFjuEDYi
 GbxPpndD9gmHwAmUzZh0iTbrAS+1dp3ZftsWqqmKa9XX8PRXFRBHuIjlsxeBrOQmKWFMPYykVIS
 p/4ZEuHw==
X-Gm-Gg: ASbGnctneD7sqJAs0nfp3ORMypUK2VbWbWfV5NrrNNHUOivy9x946wC50cq7bdmHmJc
 grHUBxTVxhjSS0fOJzzHrjXkk/LqA4wpiFxdj/Mdjd8Nj0gQfrL+Xb987oe+yfDS8ZZllaS5Or8
 +TNT+IxlWzW7M9FRhjTV5lfs55HQb9sz0asiiYEZ1xiuVEDiLNZYhdP+H9Z+A5pBkkXUlCRMc0K
 kGHAUTB+LSTDUJpbiJ3WHrn6PyWJtIBva1jH/V/ukgP866nhosY+6Ebaf/IHMqJlEyqMh85aa0I
 F0r5oTgsARTB/ktt9323RHipjd9eeR3hm5n26uWswhjm//pTCiIqOiar4WrQUxcA2dTveMPXD5d
 y8rcDwvILm/y1ETT7i5HgDfMCwR8lpmYaNBxbr4TXwXNqqS6Pr9lcdtgZKw==
X-Received: by 2002:a05:622a:1794:b0:4b2:d40b:997 with SMTP id
 d75a77b69052e-4e27dcb4b08mr75990881cf.11.1759264245476; 
 Tue, 30 Sep 2025 13:30:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGORQhiQcS0PDdJLteS92LEIIj+plRWVAELxeRtbfFmfukIvpLskhG1Uob7e7LVST8jsUGbEg==
X-Received: by 2002:a05:622a:1794:b0:4b2:d40b:997 with SMTP id
 d75a77b69052e-4e27dcb4b08mr75990301cf.11.1759264244891; 
 Tue, 30 Sep 2025 13:30:44 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5831665671csm5161706e87.75.2025.09.30.13.30.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Sep 2025 13:30:43 -0700 (PDT)
Date: Tue, 30 Sep 2025 23:30:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Swati Sharma <swati2.sharma@intel.com>
Subject: Re: [PATCH v6 2/6] drm/dp: Add helpers to query the branch DSC max
 throughput/line-width
Message-ID: <uao62medi7zlhu7p7q4ijnzyd4jfvamaumwhxbhun24eqgwhta@scnknn7slpfy>
References: <20250930182450.563016-1-imre.deak@intel.com>
 <20250930182450.563016-3-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250930182450.563016-3-imre.deak@intel.com>
X-Proofpoint-GUID: G7Jh3BffX7KdDVOLs8mvTakkQve6RWxz
X-Proofpoint-ORIG-GUID: G7Jh3BffX7KdDVOLs8mvTakkQve6RWxz
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68dc3df6 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=e5mUnYsNAAAA:8 a=QyXUC8HyAAAA:8 a=EUspDBNiAAAA:8
 a=tvw-fHIMQa-57OEpRgIA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfX4TB2iKQmDhHL
 OjJxFxZFGNDlSH/Ga1fRG3ChDCsxiNJqka6oZv0B1iFQWm5RdPDF5WhBbddsDfDHbYAYhuh2RqZ
 kX/WyI4exf3CxMBJwKCNZ7zCLo5wvO740PaPxlzX5mrICoS2lblcPb5FA5nXN5ovA+zsfsh30oF
 bR+O6N7uJAPW5x2V2j27SOmgM+Bb3wc9Bswe5KSA2VhLwvaGEIR1GJdE/ioPsFdUr/ADaMIfy63
 I2VIbUpjFx2JFcZ9BWPQRZW24gm+ADri0iDsC94mu8VMhw5pnDqgv6NjXxI+MqIcGCz6cfNyQ8n
 aw3k3QROXGup9DfujhB2k2NwKPgmuwUa1Yizjbf8roglNqBqtZmamxZqXwWnkBr5B+Ayc8kaLtP
 C7+P5T7+BAtjuXTh7mGYqyRndePwrw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018
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

On Tue, Sep 30, 2025 at 09:24:46PM +0300, Imre Deak wrote:
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
> v4:
> - Remove the default switch case in
>   drm_dp_dsc_sink_max_slice_throughput(), which is unreachable in the
>   current code. (Ville)
> 
> Cc: dri-devel@lists.freedesktop.org
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Reported-and-tested-by: Swati Sharma <swati2.sharma@intel.com>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 152 ++++++++++++++++++++++++
>  include/drm/display/drm_dp.h            |   3 +
>  include/drm/display/drm_dp_helper.h     |   5 +
>  3 files changed, 160 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
