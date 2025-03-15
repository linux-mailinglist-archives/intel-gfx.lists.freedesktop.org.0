Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B57A631C5
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Mar 2025 19:41:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B574610E055;
	Sat, 15 Mar 2025 18:41:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="jU4XwRs1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B22510E055
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Mar 2025 18:41:21 +0000 (UTC)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52FHfPJ5009120
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Mar 2025 18:41:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=o0tTtRexBT3cn0DTrpRBX0/7
 a8BLgsj2fyG79FB5G/E=; b=jU4XwRs1hgbCrhE+NKJs8UZqOlBtF1QCtbqV6g+w
 815B918PB2fWjj+zzp74pb8r/P3O5dfYPIvqxUTIghascRkEbAdDrTAWXsbPKa8n
 vhWDWoQkNuO5shJSdo2B1t/iSP6KydiGoCadBWjRI7eFJYlXDtc0HQ/DdhSYLXjJ
 MMGfzsSagpIXqpGPDRAp522QsNjuIQg+ld2v3oR6wu/+0X33rbcGugKTZuNbKVVx
 rffY7opTBL49dg6WCv4qIcKJU/ppkWYmino/mzHUQRVU8ac2nRiHqZLDmTwPPcb9
 bjLl3iQX949L0Yq3jMe0QOryMWVIOlQMl9Z1ksnJryadUA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1r113dr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Mar 2025 18:41:20 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id
 6a1803df08f44-6e917965e3eso49141066d6.3
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Mar 2025 11:41:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742064079; x=1742668879;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=o0tTtRexBT3cn0DTrpRBX0/7a8BLgsj2fyG79FB5G/E=;
 b=W+m8GtOkGURXD/HHOasD4HQMilPL9iNsTgIdwKER5UDQBPlnImfwhKibbXai2jI/mT
 fLbIU5uNYTMfMDrQ+XHNn+FSnY1fjJRWLSkWajdTXqBJ6JQgghYzcwXzV2b7SAM3lJo3
 8YEmO5BfDMknOSMB/4xNcKkBb5/PHUyw0IZnebUk4+asZCpX6R1RRxP6hoOrs9xKC2fq
 rJ5FcGn3ltmScVaGHJjY5OYZw83wkDSx1sKDOpLKga1kPY+vwdQhTTn4ADUpICfq7elv
 tu4hIrxUXZ4i96uXbL/wmgNurwELxaHSLFaVpWdqya3/0lIiIAm/fu1xRHbEbsc4NF/2
 B5Tw==
X-Gm-Message-State: AOJu0YzrAzdlvMGrRcgPpFPwXbM30SHzilcwgJ2gI4612YffNaICKaod
 TIVljv68O3YsqmXuKC3Cz8r0flCoOmLa4nTjjlFyNy1GawSCzQFTSGvBNYz1eDmu6fsgISDraNW
 7kDg1ZApaymfb1LDVTnDf1iJOM6JFpqLkmGftb6c6VyW/jFmrzm4QISKZaQEps/bQ8z7qzp2pWS
 Y=
X-Gm-Gg: ASbGncticim2+eLRRL4B+N4Fm8Gawo/yRQA0Mhvex8hHG1dSf7+UJ8J6fDvCgJBYgwv
 SuDQ8zxek4FLZqgr18aV8a1/uDu2j82qtpvsF32vx2+zWlwwNNp/9rz7w5/NCZckbiXYYWGQiyY
 ByTpZ9F8D9218Jpm23AI2a7zHCF1MEFvWnb15CJ21rDoYtPv0NBz0NngSkMjjGYabUi1661KG+k
 OLAbPiWPlSU6ndrXJ4vzDprYsg3RxpKtBXCpt9fKoGoZpS+VRw7yut/jz6gRnePcjSzR7VcRahm
 kqcEDBPlJNtjNaoX6/mWXed7QlNlhUBgsdToImDDFS5L7BK+NZoJD4URJPpRTV+nshszgxuBmkU
 5Hvk=
X-Received: by 2002:a05:6214:21cc:b0:6e1:a4ed:4b0c with SMTP id
 6a1803df08f44-6eaeaa8ddf1mr69921926d6.26.1742064079046; 
 Sat, 15 Mar 2025 11:41:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfkTOClxTLK3x/K0rLf64ks+7dDSLg2K8EAemXh/RvwB8wQhGyzUIPfQQUV/C/3SM+CBFlyg==
X-Received: by 2002:a05:6214:21cc:b0:6e1:a4ed:4b0c with SMTP id
 6a1803df08f44-6eaeaa8ddf1mr69921786d6.26.1742064078708; 
 Sat, 15 Mar 2025 11:41:18 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-30c3f1dbf7bsm9993721fa.103.2025.03.15.11.41.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Mar 2025 11:41:16 -0700 (PDT)
Date: Sat, 15 Mar 2025 20:41:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXI=?= =?utf-8?Q?e?= for
 drm/display: dp: add new DPCD access functions (rev2)
Message-ID: <q4kq4ttvxarmjalqrygxzbh75iq5fqiow6ba7w53fj6awdmju2@bamu4lj65zq4>
References: <20250314-drm-rework-dpcd-access-v4-0-e86ef6fc6d76@oss.qualcomm.com>
 <174197274966.36102.3170728683267694163@18a75f3d1eae>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <174197274966.36102.3170728683267694163@18a75f3d1eae>
X-Authority-Analysis: v=2.4 cv=LuaSymdc c=1 sm=1 tr=0 ts=67d5c9d0 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Vs1iUdzkB0EA:10 a=5KLPUuaC_9wA:10 a=e5mUnYsNAAAA:8 a=i3X5FwGiAAAA:8
 a=Q1adhBtR66OsueDpMuIA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=Vxmtnl_E_bksehYqCbjh:22 a=mmqRlSCDY2ywfjPLJ4af:22
X-Proofpoint-GUID: 0QdyCuV38BDMLE59IpmTRVWoRUP-yP-d
X-Proofpoint-ORIG-GUID: 0QdyCuV38BDMLE59IpmTRVWoRUP-yP-d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-15_07,2025-03-14_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0
 mlxscore=0 suspectscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 mlxlogscore=999
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503150134
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

On Fri, Mar 14, 2025 at 05:19:09PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/display: dp: add new DPCD access functions (rev2)
> URL   : https://patchwork.freedesktop.org/series/145998/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16290 -> Patchwork_145998v2
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_145998v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_145998v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145998v2/index.html
> 
> Participating hosts (44 -> 43)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_145998v2:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
>     - bat-apl-1:          [PASS][1] -> [ABORT][2] +1 other test abort
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16290/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145998v2/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
> 

Hmm, any comments on this one? Is it because of the DPCD code that I
changed or due to some other reasons?

>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_145998v2 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Possible fixes ####
> 
>   * igt@kms_pm_rpm@basic-rte:
>     - bat-rpls-4:         [DMESG-WARN][3] ([i915#13400]) -> [PASS][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16290/bat-rpls-4/igt@kms_pm_rpm@basic-rte.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145998v2/bat-rpls-4/igt@kms_pm_rpm@basic-rte.html
> 
>   
>   [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16290 -> Patchwork_145998v2
> 
>   CI-20190529: 20190529
>   CI_DRM_16290: 83417b23792d937795320a8804fd97d50c4c6233 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8274: 8274
>   Patchwork_145998v2: 83417b23792d937795320a8804fd97d50c4c6233 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145998v2/index.html

-- 
With best wishes
Dmitry
