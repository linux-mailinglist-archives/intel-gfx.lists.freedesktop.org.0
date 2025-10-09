Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D66BC9513
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 15:33:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B41A10EA4B;
	Thu,  9 Oct 2025 13:32:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="NSgjC7lf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 692C310EA46
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 13:32:56 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EaiB029956
 for <intel-gfx@lists.freedesktop.org>; Thu, 9 Oct 2025 13:32:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=RRr9DsOTbQL+IhH2cQUogvPD
 iLS8DNEDEbNUEWkTRTg=; b=NSgjC7lfbBgTxi4WQX3tdtzkY/WqL0mozpo5s32Z
 E/wukCkntqZq08uD5vOClESI3KnKzb5bsudg3ABvfFY0HOpSRctfklIdnhQTUW45
 MhfWkYbbM102O/ipBVg9zILkwap0aipTxBcPTcPTUOFrRoQRBOKDJ1nSa1KvFcMj
 WyPpeV/dOst/tb/kSGtNjerKKCelofJuz+VsmLKB9JHUclgjriAnvsvR84HbdOPg
 Kfi6UDLynP12r9cZITunI4XKApAChyAmtES3Cy7iMbnL9h7+RSTii5eTrjj9CxWE
 94Xt4f6BGN37Z/Nu27kDJckZyr5bMurQdBo9ytUJNm5mDQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com
 [209.85.221.198])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4nayfh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Oct 2025 13:32:55 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id
 71dfb90a1353d-54a887b39b2so1861399e0c.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Oct 2025 06:32:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760016774; x=1760621574;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RRr9DsOTbQL+IhH2cQUogvPDiLS8DNEDEbNUEWkTRTg=;
 b=mM7oPRII7MzCa8DoM7LCmd2VfvsvjLJZTamsat0Th61yZho+1V+suvhpr55IM9aH0x
 oKeDd+XbMo7dFff/pqRCKgQns8YCAcWzjRwi9DhwkxQizFUlIkrBf2ZkqwxIdxu1erRL
 h+O5+w6HX/GXzuP1pdemRbNzN5b4O+nr+Z6r4saLA9gvxdhEgOzh/QarHMWd8KlN7thd
 SClcZ22hd1kx6IYAwsDRa4/lVK6adogJ/2cAm+QcRNkdQKKXtMN96XQD+dcsv0K/4+mi
 gDcOoLiVdEvnk53av7D1qIbexgx00z54AGLKE3yKYZ+/Mwe2KBts/8KP01OhMq0DOKsK
 nEqA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWcuh4H/o5sCno5W2kWJ+BuKCpfpla4VnnXxUvrX6cB0Vl+SivqxcnyytFBrnOK8w9838uyl3yjYgU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxa6G/k3zBZnGjPjuk3o562Zp9AfMAzX/bajoQYGhkX+pkb0YfO
 BUFIAEZZt9fQWhXQktjiTfBCoj56hTWhqH00mdF5Vz0diPEreVqq/rVeXYst4tPj1ZIcel08W5A
 zrCQ6ge+LSheUr0vscIu3O48uJBJalbLfj5xFQRKW+XTmJ0YmXKzMvKAmklrisnx1hHwrfao=
X-Gm-Gg: ASbGncvbHwHpbXWSQ0A8W9lWYywkI1N76p03SsXIVMSTvHWL3pfMFoo/oJBYGfswGgX
 OtqvSWBZICxf4sb/xP3OrV7maP9w3kZiVSB8cBDnLoIEO32cE8X+DrgbTyh/HW0GjBzlB31Jsr1
 S+QNdRnrdiLrx/Jrubd54wWB3ZuNKZaW2dIoVLsMl4aJs/8NDxxuLHIoC4NOXOyZ90Y4+TimxOD
 Dv0g8EOSHnK1Ypp90ivJCcbu6sgnqNdN2Up/kaV3FnHVOe/ssgFepZm7lXWEZ3e6C1gcFDCULiY
 keMxJKTIV0bxSMKpPWeLNh2+ubA8miyfY3eJifvSv5WWKCfJrJmswaMUmN7+UAMrV5op/R+ca81
 chjk99nj/E4je8B6Xd+aMLNnvy2ekmWga4Rg6bjGlbjIg8H3SMcowbbs+Jw==
X-Received: by 2002:a05:6122:169a:b0:544:79bd:f937 with SMTP id
 71dfb90a1353d-554b8c23f89mr3464563e0c.15.1760016774180; 
 Thu, 09 Oct 2025 06:32:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF11oySDBoem7xTkH1oLPUQwPCox0qjhESMy2x1A0tSRyY/Tw898j/talcs/MTKAv8Q9vNTjA==
X-Received: by 2002:a05:6122:169a:b0:544:79bd:f937 with SMTP id
 71dfb90a1353d-554b8c23f89mr3464505e0c.15.1760016773679; 
 Thu, 09 Oct 2025 06:32:53 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5907adb1268sm1047769e87.90.2025.10.09.06.32.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Oct 2025 06:32:52 -0700 (PDT)
Date: Thu, 9 Oct 2025 16:32:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: jfalempe@redhat.com, javierm@redhat.com, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-tegra@vger.kernel.org
Subject: Re: [PATCH 1/4] drm/client: Add client free callback to unprepare
 fb_helper
Message-ID: <w23s7pc3diq742biiq6sah6lkps6irejtkvcwvyotbaty37hvj@j2nheyk3ir4e>
References: <20251009132006.45834-1-tzimmermann@suse.de>
 <20251009132006.45834-2-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251009132006.45834-2-tzimmermann@suse.de>
X-Authority-Analysis: v=2.4 cv=ZJzaWH7b c=1 sm=1 tr=0 ts=68e7b988 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=463TWv_Jhf9JylTOhJ4A:9 a=CjuIK1q_8ugA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-ORIG-GUID: VZMh-lHiNtI8OJxsPBiXBPHZ5i0I_vDr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX4Ry3mqMF5EO4
 PbiULhI47Qhsb+IPHLnURRdvfyh9mJAWwTIADHKY4qdbfYolXyCmkbj4/4GtEdT8McCFCUTBGd5
 LLePc2fJzH06PbD4wLuWn3UqteB61KSHp6jTB6YZjSnjUSweVBQJ3OdVSZGr7sJxWaiskuvpQUy
 MCvdIMX+kkLvLJhnXUvfzPgaqGX6R8pUupkA+wLNVtZ30jBFxzfAjfiTN4REf2KHWAm7JIcGrcb
 fi92XA2X2Wc8o2+6ZFCmz5WGi5j9E0Lliy1BvfF+23ocTXwd2sez1pqio0bsaJ/M7/d3Ha9h1SO
 yiho2ZIMwF00OC3aXI+4cCKXTYGw3McXAfMVLzbWDGAX22ayh6JsSbg+xpA55QlJjIY/G00XRZt
 tKQXpAscLK9QmvIvs7lKgXO1g9o8RA==
X-Proofpoint-GUID: VZMh-lHiNtI8OJxsPBiXBPHZ5i0I_vDr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 impostorscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121
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

On Thu, Oct 09, 2025 at 03:16:28PM +0200, Thomas Zimmermann wrote:
> Add free callback to struct drm_client_funcs. Invoke function to
> free the client memory as part of the release process. Implement
> free for fbdev emulation.
> 
> Fbdev emulation allocates and prepares client memory in
> drm_fbdev_client_setup(). The release happens in fb_destroy from
> struct fb_ops. Multiple implementations of this callback exist in
> the various drivers that provide fbdev implementation. Each of them
> needs to follow the implementation details of the fbdev setup code.
> 
> Adding a free callback for the client puts the unprepare and release
> of the fbdev client in a single place.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/armada/armada_fbdev.c      |  2 --
>  drivers/gpu/drm/clients/drm_fbdev_client.c | 17 +++++++++++++++--
>  drivers/gpu/drm/drm_client.c               |  4 ++++
>  drivers/gpu/drm/drm_fbdev_dma.c            |  4 ----
>  drivers/gpu/drm/drm_fbdev_shmem.c          |  2 --
>  drivers/gpu/drm/drm_fbdev_ttm.c            |  2 --
>  drivers/gpu/drm/exynos/exynos_drm_fbdev.c  |  2 --
>  drivers/gpu/drm/gma500/fbdev.c             |  3 ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c |  2 --
>  drivers/gpu/drm/msm/msm_fbdev.c            |  2 --

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> # core, msm

>  drivers/gpu/drm/omapdrm/omap_fbdev.c       |  2 --
>  drivers/gpu/drm/radeon/radeon_fbdev.c      |  2 --
>  drivers/gpu/drm/tegra/fbdev.c              |  2 --
>  include/drm/drm_client.h                   | 10 ++++++++++
>  14 files changed, 29 insertions(+), 27 deletions(-)
> 

-- 
With best wishes
Dmitry
