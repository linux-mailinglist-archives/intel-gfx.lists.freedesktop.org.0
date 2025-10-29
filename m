Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15893C193DC
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 09:57:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EB8710E0F8;
	Wed, 29 Oct 2025 08:57:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="F+BRj58l";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GOt394sH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45DFF10E742
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 08:57:33 +0000 (UTC)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 59T4v3PE3643088
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 08:57:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=7a63mCSv+A9JvgWMq7Ieh7NT
 4tLcXzk9s+x47dKyuJQ=; b=F+BRj58lP+5eA/marruZFwnwCtmJMHkHj9YBDlBt
 qD9/cqIHj3w0TOZC3VGj94+on44sKfGeB1ku3OsYgjmuMLrniZYwqZPakT77gk1S
 WJMDmgrMtLFGrJEYoH4LCDorZG7yPw1ytbv6PC5nSAKio3Zhag1CHBJv0M4WQ5h6
 rR5Tm8cu01/aVD0/i6QaG7Bczau0v/jh+8MBkCXc6uf3UwB/gLwiCeRJP1I/J/ip
 pQwkLf9+NvB2m7Z5qall3khhRJCgtXJxYYZ1gkYc9OED1v5EyWeBLGjqh6KoL5OY
 O+6DaLmmJPzOI/NiK+/ABnInhgv6PpIn63B7kHSpETm+8w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1hw5y-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 08:57:32 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id
 af79cd13be357-89090e340bfso1387202085a.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 01:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1761728251; x=1762333051;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=7a63mCSv+A9JvgWMq7Ieh7NT4tLcXzk9s+x47dKyuJQ=;
 b=GOt394sHIQEwCCGvvTG460a12ibF+SLIrdI4zxXWvzfvxXs9gNJ3SCvw2CO0uzdV0H
 i4PKBbKtPst+u2SERCZ6OzBUC4+rb2twQMinrX6Ut82ZgUawirXekxz06LN6f6jllTEm
 3qFL7RKDnlkdV5VQc3lfJcYETqbt7nxz4oURbQsx22cT0oXaVFO+QuLgpKGXpBHxaBMx
 p8VduYGsV8R6oDebH2E14ywsutAUAx4NssZ0nR08NBtB8xzvwOT+6YlHbWne5nT9jcqf
 2DKYJJ0HJirV67KQUxwOKDpufSgZMsPMB/QQlZJDL9U8k/CIvIKuphjGDV3XCLwbN40H
 Kjqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761728251; x=1762333051;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7a63mCSv+A9JvgWMq7Ieh7NT4tLcXzk9s+x47dKyuJQ=;
 b=j9ha1yaCNO8aTeAEjYN+POJN7wVhG+FZWJJ7WBZj/D7A4D/jaoiwD7UdjhvO2rxYQN
 hP1ca8kqCXZymtFgyADx61HslRQybSnOLFxOe6f11rgqHo6gWmMQ/Bb4meu7L3M5jL2x
 XnhL1BvqxeqBnChIo+qK+QNYiws6fLdF1ZmxHWk6PEZ2oovk4/hA61hbH/qjZZkzJ2YS
 NO/Q1S5i/5wHavSoEVZWV8lnpHEuNuQx5I/DijBF1h9Z54JHTBVW7S1xQMoHd5MAkTiC
 68dK2Ur/6WmV9PXLR1hblgMGw7fATPezfVO64psYuxSumFgCT1XRWYNHBOoF8YRiHEEK
 gZtQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW+//AV3/dykFqY0XLER2yEKyGEcNV7aiNoyv+kQauzZxF/pXGehG4FHoV7z3MbKWsJ3O9IxngAiLY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy37UIusOesJM/COBpPhP+rCY35qgTGVv2BJ3c+ymh5A2HaWsnT
 vMpNodK8E+2fgwmyvnPZxOdnybZwNi9VOkjgWcH4P8PQ+/hTO+eJ3M4o728AxMRvFzMJqFM4UNe
 b/wzLzLeLRXEJaHw42bW8p/EQPyCNFtdy9Pr5GVKhevUe/IQzAMuPePUYBmjCpLdxYwP44Fc=
X-Gm-Gg: ASbGncvdPbMuVFnDXm8FkDaskW+8/1eyaE63nP4lB7Q32J7xL3/wy5V7g/Jh6vmddyT
 OsLvjTwGblVWo812Y8i2KZySRLeOF3KejtHB1XCiGCWBSPSdn2vab2RfSTsD2mVTL+xrH6hm0JU
 0dVbPXfDJTE+JoLP82DLaN/nG1zXAhzvjTY3nFJcJdr/YONuy6wXEJ1lsyjy4HKoKU2VrZd9GTn
 YGBVDIpVTGMeefpL6JbK6ijPWJK2ZuaAfs8ZVUQdUTX55yf1jHlFVcfwo7/fURn6jeyp2MjrkPe
 UisalZwad307Z5iBTy6CW9hpDY4ffS+DbUVkmURNR0y2JHPUTbiGiQ7N0MtZrAXBjyb60zrK16P
 kjstW7ziqsl+p/i5TqkMjjICmsPMNmkds7aH+uKtnya7DSKYtMMZuCXQ5YtPH7D21sluzjwbijO
 S39IH0Y24B3Xvn
X-Received: by 2002:a05:622a:1b87:b0:4b2:9cdc:6d52 with SMTP id
 d75a77b69052e-4ed15c9afcamr25245881cf.71.1761728251377; 
 Wed, 29 Oct 2025 01:57:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHHMxS9dJDlfut9jklaN1u7WjxrtXy+M4HfVu5cw7ucNDEH9oxaqvAGSpJbi0LaKmBBPdMe+A==
X-Received: by 2002:a05:622a:1b87:b0:4b2:9cdc:6d52 with SMTP id
 d75a77b69052e-4ed15c9afcamr25245721cf.71.1761728250874; 
 Wed, 29 Oct 2025 01:57:30 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-378ee0bbfeasm32127811fa.25.2025.10.29.01.57.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Oct 2025 01:57:29 -0700 (PDT)
Date: Wed, 29 Oct 2025 10:57:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@intel.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>
Subject: Re: [PATCH] drm/display/dp: Rename bit 4 of DPCD TEST_REQUEST to
 match DP2.1 spec
Message-ID: <jn7piiqfyeiiinpxu5ht7qza2la3cigdqlhtlvuvkbzqeyhcad@v5aypgcrcdok>
References: <20251028222817.3290035-1-khaled.almahallawy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251028222817.3290035-1-khaled.almahallawy@intel.com>
X-Authority-Analysis: v=2.4 cv=dbiNHHXe c=1 sm=1 tr=0 ts=6901d6fc cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=QyXUC8HyAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=rHtxkZaJ8jImS8H9yjEA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: dYosn8sD0kzVJUafK-kRN1rTnPJae1Kl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA2NiBTYWx0ZWRfX5v+pjB4WD6di
 SajDZMu/fDvMJxgKlo3QcuROjXvciV0cLM6hjNPIVuja4Tp65jHZv+mGl5zr/2igLLp9fhD/gS6
 WU4bnoLBQx40XngV8xsswjUYGyVhudbzdZXyKWog8xYGskpVOHx9ygHsfgevYFVM5D01fnwlLaE
 z4sEUhAs6kqrArBsq0M86u4rtms5zUhx9moCpgdvhJcfzulnW1/JAOOZcOwHWCFM26LJb3Mu0ky
 gpf7SXyBLVL/YvLiyqD+5Qw54doRlOFk4/AVbxtmFGGzB/T7pFJfrcfTPEUxtMjxdeFILeR+7jQ
 A4RObsCermL96P6Ba1UVOK153rbICtjDsaMZtNaGtVrnHrgBXqL2qPCmJDE6Fkgivs4ujViupoz
 GjJC1NtLeC/mdqWemaaI5ZkixugTlg==
X-Proofpoint-GUID: dYosn8sD0kzVJUafK-kRN1rTnPJae1Kl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290066
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

On Tue, Oct 28, 2025 at 03:28:17PM -0700, Khaled Almahallawy wrote:
> The DP_TEST_LINK_FAUX_PATTERN field was deprecated in the DP 1.3 spec.
> Update its name to align with the DP 2.1 definition and reflect its
> actual use in the code. No functional changes.
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Rob Clark <robin.clark@oss.qualcomm.com>
> Cc: Dmitry Baryshkov <lumag@kernel.org>
> Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Cc: Sean Paul <sean@poorly.run>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_link.c | 2 +-
>  include/drm/display/drm_dp.h     | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Would you prefer to merge this through drm-misc-next or through msm-next?

-- 
With best wishes
Dmitry
