Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A7BC5FC33
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Nov 2025 01:50:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 000A310EB8E;
	Sat, 15 Nov 2025 00:50:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="LxUYZC8H";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ObH29VRS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6227710EB8E
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Nov 2025 00:50:11 +0000 (UTC)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5AEIQ6Jr241632
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Nov 2025 00:50:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=Qs9XNl6C5ygh9qZUkoG6dSnI
 2cAtbM33aIVEqpZU3HM=; b=LxUYZC8H3vZCJgDMaslziF+/Q+DGDpgidTjmxz91
 36M9bXPQASL0FtjnxYfrUVa1RxfX/6Gx0QRblsZWir9/aZGk9+AO/Bx7/lK6htOu
 Kld39VgMAHM2tQvShW6rixT4ooi/0ZDEkCQl+CHmcUqd7XlYKDhy9nIkb/l1G30P
 8MUMR014eDXOtxX+gjWzx34mcc9JA6nEV5BeVunCkD+NB3z6IefYWUeHupCjzzTd
 AzfeiCztR72AYwahKrSIIHEMhcWT5EQsRTFBaSGjKloFPxSK9SPAbPxvOhpNAzVX
 fLJMN8YRUPS0S07zPbKtVfvjn6QEYSfcvTnlirAT3vmhkA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ae7pj192g-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Nov 2025 00:50:10 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-88050bdc2abso85452046d6.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Nov 2025 16:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1763167810; x=1763772610;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Qs9XNl6C5ygh9qZUkoG6dSnI2cAtbM33aIVEqpZU3HM=;
 b=ObH29VRSIo4CXBJr5Ls1jJdOF/txWfYtaM+Tv2nSVLASkQyNU55ffWkrpaD+YS4DAu
 BkWbsrF0W+YZXYMl6Po5gJKU0Mfx7od6vNICfn8j8WGnyZGQydspQqmzFw/JFyuP3DVx
 Qbfez0RVF+Na03SBswQ/N+5yUM7OqrpnP/k1UtKX0MA+KyctIVfucl3nQ8X525PaMF9d
 FORRfqK78ySIGb5Et/gyvUnxD40a6LSy2JMuFVMLJuJcXwTk+dhyOKPzLAOnWrqia3x9
 Vrmyvs2B2Yi9BNQTuD1CaAGjuXFGQ9PRj4k09RNOr5vECPh6t+XDlOm3YIcktOcRpUGL
 uOoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763167810; x=1763772610;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Qs9XNl6C5ygh9qZUkoG6dSnI2cAtbM33aIVEqpZU3HM=;
 b=xIJ7o9kkSPL4gvvmKDwQSxKBwZQeMc6W4GQLFVuTVPKx+g9HQ9OwLgMVTqIHaKtaEP
 //W88Npi0l96wx/PRgD2FjGE5thwhZuQVymvcOGsRjcqBIEhSizjulfP1f11zkHAO0cZ
 pvaGP7TJrw4ks6yeJ2vN6cekEQiRpHy3E0Bps+8ITIb32NS4mxYbGVAir/XZtWDJ1OV6
 /Wn5rfmsmZM9c0Uosgslsq6JlI0K8bBDRhRFdfLgsvRlnKgRaEVd6ych3Iubqm9awmUT
 pBfIKrY7oNhUCRFciy6Oh7x9q8EBCpVc9h9pKNNOIYGE1m/OpPIsCq5tJxN7hYheT1dj
 PbiQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUvbcs4IjUUFJZ1MRVyKSwIoUd5j1GrCvR1Z8shTBsyMk3o8Bg5Kd09dl5eJ2vFVdwxQyrNwH6Hg8s=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwpdkRz6WRSrhG4uJ8Nu1FM/ea/J6sJZxOI+LI9tJZ4ejvFP+E5
 GvtczuPhu3V5E0wg50ouU9+4Bu7iBIPHl52/oBPQQq3/w9JsAdbIQC/i4i34g8rYimC8RF5tpPz
 fNQBkk+xdj5oTBvAYXO1sllV8S+5c4WVvn6+TkaN/T9KQQRuLEOuf1oGCucfdvG7+aC0aF2g=
X-Gm-Gg: ASbGncuxTQDq7g+HQIQRMd9GdCuWOChC9eAbc/+Jg1UpkxXB0C93qeXV5mNJHV7Z5Ub
 mEtGITq/c4CyrsxOq9tHA1I/lepslfWmstKQ/D1GK3ziAJk1++BvtqRPDYcJJuT2q6r9YkCd81O
 6cdXUr+plpqIq8qhjUG++czFi9Mr+CvggFoGF88/Kxk7M3yA0hP9bkmfGiyyBXpySc8XNwhlJdo
 bV5e+7uo6oP2I+aAn9lS/FGGFa7v354DV4Ks3rGc+x3p0/1+4wzIEzF3rakN7fPzRKV22HlR0MI
 mWqcSemapC6aqIuuQMenVCB3Z/5VyFFDlWLd8UjWvPWOPcthdeBGopsiFzvBEG/wzIZT5TYO13A
 VgYaWgwFW6bbwYM/Z84YbtG+CxyKeSiSFHQo4lqv6/fcw3S+MipIrDpP4xTr/5OnCqnyWsMDprc
 dChgh9WZYNcqb3
X-Received: by 2002:ad4:5dce:0:b0:87c:1d89:a245 with SMTP id
 6a1803df08f44-88292699d47mr77113286d6.49.1763167809680; 
 Fri, 14 Nov 2025 16:50:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFjIFGATfZLfaUZaE3KWR5c8p1sYfBsOVpYyQEawnaMA0DTE16Ifr+U3lmX3Y+76mKypsKpog==
X-Received: by 2002:ad4:5dce:0:b0:87c:1d89:a245 with SMTP id
 6a1803df08f44-88292699d47mr77113096d6.49.1763167809268; 
 Fri, 14 Nov 2025 16:50:09 -0800 (PST)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-37b9ce0822csm12716841fa.10.2025.11.14.16.50.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Nov 2025 16:50:07 -0800 (PST)
Date: Sat, 15 Nov 2025 02:50:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
 helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch,
 lumag@kernel.org, robdclark@gmail.com, robin.clark@oss.qualcomm.com,
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
 valentine.burley@collabora.com, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] drm/ci: Move qualcomm baremetal jobs to lava
Message-ID: <ursdbkco5n734zhfqceztib4b6vxb2juq5jfllzcjeuctd6lvn@dbdbkbr4csws>
References: <20251114030056.1139570-1-vignesh.raman@collabora.com>
 <20251114030056.1139570-3-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114030056.1139570-3-vignesh.raman@collabora.com>
X-Proofpoint-ORIG-GUID: l0tSxW2oCwkGPnYUSWv-DEZX6rgYQRmn
X-Authority-Analysis: v=2.4 cv=Z53h3XRA c=1 sm=1 tr=0 ts=6917ce42 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=QX4gbG5DAAAA:8 a=Oc5gQ_T1tCqBBtY5fQkA:9
 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: l0tSxW2oCwkGPnYUSWv-DEZX6rgYQRmn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAwNCBTYWx0ZWRfXycSI2DYMtGPv
 JREiMGW01bfQ6MLjT7f5mo6wH7wRH3tjppgFTGgMI1yMzFJKn0VFASCEvdxSwSNZSBy799NPTvB
 avN3Dy+r+EkqC4udpjIG8pLlLKkxYPh2VJm8oD2+G2e5x4w9NaZNDzTbG8uTlcB7dZL9qIWCtnW
 Ao4egM9eQ133RJwGqknPHbMCSqIJLHyYt0bM8FNJKElpcHFLQvSR06yLTnN7szTlxok4xGn63Ky
 Vxm5qI9qT9Ul4lDBjfce8YRU/YDrz+PRNNSuE/BlclgmvGPiOBZEdE+E46FFdmHuuVm4N6ikCbB
 6Z2qtr4dJl3ew2JZsD0BU4JWq0UMgJDZd8Afxx/KglLVY0vqsMVqz/YzOQCYEDUrw+nTSK3AH5p
 f23qhn56Tcz0iNCox9FUymoB/TAFxQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 spamscore=0 malwarescore=0 suspectscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511150004
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

On Fri, Nov 14, 2025 at 08:30:51AM +0530, Vignesh Raman wrote:
> Qualcomm apq8016 and apq8096 DUTS are moved to Collabora lava
> farm. So enable these jobs to use lava and update expectation
> files.
> 
> Co-developed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
>  drivers/gpu/drm/ci/arm64.config               |  1 +
>  drivers/gpu/drm/ci/test.yml                   | 62 ++++++-------------
>  .../gpu/drm/ci/xfails/msm-apq8016-fails.txt   |  4 ++
>  .../gpu/drm/ci/xfails/msm-apq8096-fails.txt   |  2 +
>  4 files changed, 27 insertions(+), 42 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

I'll try picking up these patches through the drm/msm tree, if noone
objects.

-- 
With best wishes
Dmitry
