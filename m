Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F583C1DDFE
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 01:12:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61A5910E228;
	Thu, 30 Oct 2025 00:12:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jy3Ktocq";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HxXvMy7m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8D6E10E05F
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Oct 2025 00:12:26 +0000 (UTC)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 59TKV9dC1501676
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Oct 2025 00:12:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 RlOA3yo8oapL6z88NAIu8PVoZTfephjCzUiz6uOkvUM=; b=Jy3KtocqdD5BKvb/
 uSvsMseZSvEDh6Mk3hdbKAkARftkNcBLbPtjXIxJGTPJ4ScOS0SgMWZGvLSKJkqZ
 VYbIOslbYkCSiL+gyHRiDhs1H4sCIHL0XlWKVvVEYSDaQYksJcKubOxHPCBp0ppS
 ELciUmERhtM7AdvvRUhph6GJopohAPQwSpBRlFAPB8pahUiNOtGbnoorLCCPBmR1
 3fik4T98EukcUS6RSomBkUTYrjZC2/G4pcwZy8yCVPmNkssSW5HtaBxfhXGNrSIh
 dxIU5CuMKqhYo/MIH8Z+iVbgUeDrC6IVnlnFM2poLoMGbcR8pm1D1l2lkNGED7dj
 2IpqJA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3t1jrk9j-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Oct 2025 00:12:25 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-4e8a3d0fb09so5259961cf.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 17:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1761783145; x=1762387945;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=RlOA3yo8oapL6z88NAIu8PVoZTfephjCzUiz6uOkvUM=;
 b=HxXvMy7mFJrYxxB9MtUs87OysStcvk8pIll0SeMLf/4Q33LWTeOmCJih/U9La/a6uC
 Mf70we9/7ckJ61xsnU8xYmbrb4QjLUJLjcEZmSX8u40yZnwXZHv2iZH9ivE6WmMZ/Lm4
 820Cdd4lhEoO4TO0svatnGgiXhsWwPimbm4igNTayUI0DL29pC8PuZY0pjc7zcsCxeiT
 UEE8bsPOJUghRCIM579eFThmMDlPBbmmkSmmwzixDWk0Yt4eKCm7ZjD/V7YOoNUTRVDw
 VI1E6e1zrSQI3ot0NXr4Qr+O8S/aHVxJGNC7bwZS7ECjGJzkh6tbDSer4CNG3NJrt0OJ
 uhug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761783145; x=1762387945;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RlOA3yo8oapL6z88NAIu8PVoZTfephjCzUiz6uOkvUM=;
 b=sQHlpYdr7vld9hY6xEYLf2RJBN8JphAlsVpnzMKi1DX+joHZ2zDJP6mYTi6x03Np0V
 UCyssGpaCQaGg/GiA/+vX0j1VoUpA7tMds7zaUTsXGDjNhqw81w9mOjNdclMI5YZVZFL
 neLyNtlvMXAukyBwhSWT9MscPPIBKJXv8RGaQduEs4NysekuwP2SYtYBNus22TR3f6eX
 c6S/yd8u54wOAss+j1dmwFQ9axifV8CcNjzenXc2c0KD5Bt7CoBkofdoTJVVCkXIcicE
 jAgGXwnRZ5LNQRHjSW//YMkWfd8/2aGjVjZRzfayEVLfsuWAdd3995sry4QQIz8y3+kQ
 Q7VQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVaYf5+Pc8YDqXpyKB2OHTmQ3S2NA4MsKqCkJyJF3X3dXV00nlV1Zf1me+M436pkw8casBzZjTER80=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzrLH8MbodN4iI/EECdWmVjtfhDUOHtxeecptseLtb2MV20TxGr
 F1qpx6auCxm3GuMQcYM2C4sxk7f/q+ZfrpFucJa05/91gVtuoX9LHmEuD7PMbzj4g4avPYfRxhy
 XzrEDr+QFabsDvbp/TxWpLXgcUwoetuCjyZE3KG34nguxhvmOzRcWJ4CX1gJqMbzpkOmyxcs=
X-Gm-Gg: ASbGnctZCQztYSoGzxslSPfVcZrb5vOEjYbxWSWY3w5OkmoC1Uq/mmjxm3AlNDwSE3U
 3N//BvYMDIjEX2rns5YEsRm6sZysQQfi8fSSJr//9hCbqT78WB/qowJyXoNnZX0qxk7r1t8z3Ni
 aoUMKD5HtZKWqnAHHSOfP9oRdrfK+ELNC28Zj2tp6Z04gxDFQVQ97A9lBdDn8uBMwuB6j73PGFd
 +VxFyltsoV/9ScF2gTZr+FUzskCV7ZPupe6bHr+xxTi7CNV3RFqxgb2jMo0XFpd5wrHLJkUTxH4
 vqI6AJ4NIzI122zILRx9fC+KaqdCYIwXUbdGZHTZ3wq7WymmppCfdWemjLKPyLqAYE43PSHYcyc
 C/xCZn4TzbUC0rTE51RYQs834TFkWMzTdWvuZbm2dxX413X4Sir0iSoiy4jW/kDow1Ewu1t5awN
 sKBLpCGHLsut9B
X-Received: by 2002:a05:622a:355:b0:4e5:6c5e:430a with SMTP id
 d75a77b69052e-4ed22b201demr15246361cf.64.1761783144881; 
 Wed, 29 Oct 2025 17:12:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTTPJzQ4pPAdhaocWtdADne4C/nq9/kxzm5f9yI/Y1cbenNeHY/sD8/KOO3LAKlfuZ51CL3w==
X-Received: by 2002:a05:622a:355:b0:4e5:6c5e:430a with SMTP id
 d75a77b69052e-4ed22b201demr15246121cf.64.1761783144399; 
 Wed, 29 Oct 2025 17:12:24 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-59301f8471csm4163592e87.106.2025.10.29.17.12.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Oct 2025 17:12:23 -0700 (PDT)
Date: Thu, 30 Oct 2025 02:12:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "lumag@kernel.org" <lumag@kernel.org>, "sean@poorly.run" <sean@poorly.run>,
 "robin.clark@oss.qualcomm.com" <robin.clark@oss.qualcomm.com>
Subject: Re: [PATCH] drm/display/dp: Rename bit 4 of DPCD TEST_REQUEST to
 match DP2.1 spec
Message-ID: <75lb7tqpoxvvf72iv3ag23yw32xce6ifxaxq4sghb2jhwxbr5c@wbjnp44tgkm3>
References: <20251028222817.3290035-1-khaled.almahallawy@intel.com>
 <jn7piiqfyeiiinpxu5ht7qza2la3cigdqlhtlvuvkbzqeyhcad@v5aypgcrcdok>
 <d768e2abf7e27edac66f1d0068540e2b0617561e.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d768e2abf7e27edac66f1d0068540e2b0617561e.camel@intel.com>
X-Proofpoint-GUID: MHvXlNXE5A7pi2rW_PzxnbA49pwy1QeA
X-Proofpoint-ORIG-GUID: MHvXlNXE5A7pi2rW_PzxnbA49pwy1QeA
X-Authority-Analysis: v=2.4 cv=M/lA6iws c=1 sm=1 tr=0 ts=6902ad6a cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=QyXUC8HyAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=IdroE-pjToVxfVGS2yYA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDAwMCBTYWx0ZWRfXzn2LZThuSPa/
 BMlzlom9BfBKgAaXUJj2biQl6uFojLCC05GIhUeUFXCe1Rxvi0eoKI8cmYlMP3aPKLZjJDi8H3x
 BJaTSitOU936vwTs8xC8sGAdnJltvT46XCEc895ALsDzldkSraoaeD9XRpnC6B0e19wm2A9iIrI
 mjmSqgqye9L+YTjDgrqa7bv6jcy/3Niw2PV5oqI+mbm+PKkUv3dOvGdGUjJdiE2iPXXgRdrHsAn
 JNQ5BTX1lQYWGRSINzz/KHPVuSQhcv4gjcfFLKW/cvv8vCDlM2UubyEZhRi0sJ7tDaAyy1+xrHO
 FxbnKPnDbhCf8vzQZvi8+FuhBHsmpxb9Zcxrk/6tDILTG2uD3Zc2bAFUklxoYXf/qzdEuVvQLeO
 n0tx4aK+sB7fukCWKFFOQser8qu34w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_08,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 spamscore=0 clxscore=1015 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300000
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

On Wed, Oct 29, 2025 at 09:43:45PM +0000, Almahallawy, Khaled wrote:
> On Wed, 2025-10-29 at 10:57 +0200, Dmitry Baryshkov wrote:
> > On Tue, Oct 28, 2025 at 03:28:17PM -0700, Khaled Almahallawy wrote:
> > > The DP_TEST_LINK_FAUX_PATTERN field was deprecated in the DP 1.3
> > > spec.
> > > Update its name to align with the DP 2.1 definition and reflect its
> > > actual use in the code. No functional changes.
> > > 
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Cc: Rob Clark <robin.clark@oss.qualcomm.com>
> > > Cc: Dmitry Baryshkov <lumag@kernel.org>
> > > Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
> > > Cc: Sean Paul <sean@poorly.run>
> > > Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> > > ---
> > >  drivers/gpu/drm/msm/dp/dp_link.c | 2 +-
> > >  include/drm/display/drm_dp.h     | 2 +-
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > > 
> > 
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > 
> > Would you prefer to merge this through drm-misc-next or through msm-
> > next?
> 
> Thank you for your review. 
> it would be great if you can merge to drm-misc-next after I address
> Konrad input.

Yes, please send v2 once it's ready.

-- 
With best wishes
Dmitry
