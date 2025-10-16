Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D81BE404A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 16:52:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF30810EA0C;
	Thu, 16 Oct 2025 14:52:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="oK0IvGUF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4962410EA05
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Oct 2025 14:52:37 +0000 (UTC)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59G79Y11016069
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Oct 2025 14:52:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:reply-to:subject:to; s=
 qcppdkim1; bh=jPmtY2bWstZxGYrHD2oLA4kDgMlBAGLM7cSsgPby8R8=; b=oK
 0IvGUFq5Jpvs+nDFM/Il2MpT/ilhF7MHPLO+EQjXbkTN5WAB2rI0VHOSOOV+Qzxv
 sRtsBKGetq9wWxLEcY2lXvRoMYL7LPpZ9pIVBfAimdy6R2mv9p6gAudwk8iSrs25
 65FvBqQsyi+Yt4UDL56r1HgrPj1Jwtkn5AOnrPf0622q69XSNno8TLBKC0CUEYol
 ixpON2jXbKn9SfLTwAQqtm6rDhMB2kh0BfyW/hagjxvIxYHeAEDIseAWzJedm9W+
 vK8BUcdjcOH0s4pKDHXdtZfLjAruVuPpD/VTQr//0Fa2Z6QX9Ou1aNUUAQRav4qz
 6q8Ce5vsU3zTX1Onw0lQ==
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com
 [209.85.160.69])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfm5rt9y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Oct 2025 14:52:36 +0000 (GMT)
Received: by mail-oa1-f69.google.com with SMTP id
 586e51a60fabf-3c97be590afso161381fac.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Oct 2025 07:52:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760626355; x=1761231155;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :reply-to:in-reply-to:references:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=jPmtY2bWstZxGYrHD2oLA4kDgMlBAGLM7cSsgPby8R8=;
 b=RA5Ryp2b+zWjcSzjQWkzlH/Y/MaibEq3UQMOnCFycuctMpg2VZh713L0J6aQ4Fy1vl
 mzmO1KHHJbI89xzneqYt7CRxv9RFh4WzW6ZsbLHSwWyj+I2jxM6PfHEs6joqXWWV/F3o
 fmzpfaMe6QAmyXEmqig6/kcZbgYEB+QcblP+0x/IS0EdKrxoxVxrhoN/tTO1gy4cOyNN
 lM4o1Y4/i5l8OgkCAUMqbFv0El5WeRm4GL9YOhxv7XKT/nPg95uBGnyb5fsPXknT3v5K
 N4COuVUCmCOsVY0luvCU8qVxqu4bbCh/mtwzMCuB1boKW//62gnpRL+r7ae5hZUS9ZTM
 Rswg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXVR13hFQCvPSURGQdZwsSE0lGtWSQcdt9llW6+X7D1fZv15NkzgUnnOcktGLGZOrOL3YQDUPo6K6w=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw29No6P8rI9XMZBEAMaDLeq5eW24R5l1epALrGnzJJhKUaVmDy
 lXBq8iMA4JA1EPwpmbrItO1oLZ63FVtUV/sJBjWHCGR2YkCcK0OCnI+/JFJEtx9cFBc5T+EcBHW
 m0dyuR4SfGjuT1+Phj+YcMO9MvjlvjKUXheA7a6YELtBtjwBxkYoHiAMotDCrDqvwJT/cR6sApF
 Lnq/Omj1njyK7rfWyMUuCm0xpwH/zOYWcIuCjm7BBnpdzMbg==
X-Gm-Gg: ASbGncvSeUHY4C6nlFp6nLEeoqSoX/Ks2A1ZiawSRbQamPFiiZXy3Hh2mJYp4uY74v1
 a8gWaiAeuX4kz8TfILwMbKiE4wtzdom7bpX/iBImss+BusSm6MA9zVN1hCCdbhHeqq6rQoMYUDj
 NDqkXFnqThyHmfqKTOWjMJ+fBSojKhQhLLL7gH/1YICm0ToalvCZOcwZIw56aRBMCNCAP7jtFDo
 xv1dXOii0FwR14=
X-Received: by 2002:a05:6871:2e88:b0:35d:a9e2:fbd1 with SMTP id
 586e51a60fabf-3c98cfa8295mr10098fac.21.1760626355274; 
 Thu, 16 Oct 2025 07:52:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF39ocujuIwT0Et62sHrBT+rRRN4wBRxOHxmKLmre65EnhOwqDPEsCuGBua+8VJiCAAa15gVkxk2D9mH6TwzQ8=
X-Received: by 2002:a05:6871:2e88:b0:35d:a9e2:fbd1 with SMTP id
 586e51a60fabf-3c98cfa8295mr10075fac.21.1760626354773; Thu, 16 Oct 2025
 07:52:34 -0700 (PDT)
MIME-Version: 1.0
References: <20250718105407.32878-1-vignesh.raman@collabora.com>
 <20250718105407.32878-2-vignesh.raman@collabora.com>
In-Reply-To: <20250718105407.32878-2-vignesh.raman@collabora.com>
From: Rob Clark <rob.clark@oss.qualcomm.com>
Date: Thu, 16 Oct 2025 07:52:23 -0700
X-Gm-Features: AS18NWBmqrEUHFQlSWdIGqm2-_tBPDNsmr766wJpJByzaFclGFLQ0RGnzuLEsPQ
Message-ID: <CACSVV029ueL_4Y5irmmOwy_9QDQGqDe_1wCGUe22FdefQiNjkw@mail.gmail.com>
Subject: Re: [PATCH v1 1/7] drm/ci: disable apq8016 and apq8096 bare-metal jobs
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
 helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch,
 robdclark@gmail.com, guilherme.gallo@collabora.com,
 sergi.blanch.torne@collabora.com, valentine.burley@collabora.com,
 lumag@kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-GUID: ZQLCEAwi6vmVZBiZjX52Q4cIwXANEhTt
X-Proofpoint-ORIG-GUID: ZQLCEAwi6vmVZBiZjX52Q4cIwXANEhTt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMCBTYWx0ZWRfXye5lOQaA5daI
 5k0wrIX85xbOxy3WpauMn4VB14ujFTBUo5dkFKgFTBIn/0Tzi/X7Wr1Fls5j5IGEkEUEU8pKrCj
 BCJ+gBqSsUFAA8QU1zAvxVwSPbmOcHOicJqSyjCxS7t3usiHSDKE4yBBSISPeCvaNJoiyPa0OKT
 ixseB/uWR1GeKtXyIAR5DF2bUH80KEJyigj0T7kk7YPVv/8jWl/9NpAKj37fekGGA8dL23r4AOM
 3//W/sqJQj8Hv5imEK4Uag5nAWFeFT1R5k19CZgZAJGT7bscvMGBfMtPzbxwXLTihETPugPaiLZ
 TrTymlvTRgEphjcNqaYr8KlL3aQGfOCZ4yXgv1mmoVkwj/qlakUNR+V1OjBXqyEfCapMyfCatn9
 J4kkEI71Xgyk+A4myTy9N2Cv4ZZO3w==
X-Authority-Analysis: v=2.4 cv=V71wEOni c=1 sm=1 tr=0 ts=68f106b4 cx=c_pps
 a=zPxD6eHSjdtQ/OcAcrOFGw==:117 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=QX4gbG5DAAAA:8 a=Gxbm4VOBLxWGKnsTXboA:9
 a=QEXdDO2ut3YA:10 a=y8BKWJGFn5sdPF1Y92-H:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0
 impostorscore=0 phishscore=0 clxscore=1011 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110020
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
Reply-To: rob.clark@oss.qualcomm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 18, 2025 at 3:54=E2=80=AFAM Vignesh Raman
<vignesh.raman@collabora.com> wrote:
>
> These devices are being moved to LAVA. The jobs will be enabled and the
> job definitions will be updated once the move is complete.

fwiw, the runners are up and running in LAVA now

BR,
-R

> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
>  drivers/gpu/drm/ci/test.yml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/ci/test.yml b/drivers/gpu/drm/ci/test.yml
> index 81147e86bfd0..53d19ffaaf61 100644
> --- a/drivers/gpu/drm/ci/test.yml
> +++ b/drivers/gpu/drm/ci/test.yml
> @@ -148,7 +148,9 @@ msm:sc7180-trogdor-kingoftown:
>      GPU_VERSION: ${DEVICE_TYPE}
>      RUNNER_TAG: mesa-ci-x86-64-lava-sc7180-trogdor-kingoftown
>
> -msm:apq8016:
> +# FIXME: Disable the bare-metal jobs. These devices are being moved to L=
AVA.
> +# Once the move is complete, update the job definitions accordingly.
> +.msm:apq8016:
>    extends:
>      - .baremetal-igt-arm64
>    stage: msm
> @@ -165,7 +167,7 @@ msm:apq8016:
>    script:
>      - ./install/bare-metal/fastboot.sh || exit $?
>
> -msm:apq8096:
> +.msm:apq8096:
>    extends:
>      - .baremetal-igt-arm64
>    stage: msm
> --
> 2.47.2
>
