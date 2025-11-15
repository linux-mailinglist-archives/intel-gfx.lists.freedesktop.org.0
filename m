Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF3FC5FF9B
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Nov 2025 04:55:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEDD210EB67;
	Sat, 15 Nov 2025 03:55:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="V9xyueey";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g/UCpTQf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7FD510EB76
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Nov 2025 03:55:24 +0000 (UTC)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5AF3Pg5W1404887
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Nov 2025 03:55:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=kpUJE4SYKU9ynxkJ/T5JJhpa
 CqT/i8ZykNmysQrjF+s=; b=V9xyueey6blpzm/jfavsSbhlfoxZqh6ziY9GLiVo
 pRLERZ2MEX31+yuGsAhlfVnpx49LUnkivh7VOeVkX+iEZCpUszfAr6RWAvx/GoxG
 ZijhYK8E3mzyIqhG1hK2L5/w9DdedzrozrD9Lv3PvXEGCefrjA2nK2F6EPnJkN5Q
 59YLYTARTJ+Imk6JfdjaS45qa6wSMYck595UYohLzKOGwUnrjp4w0vmLrwRUpeB6
 SYq4g3sGHee1nq0e3QSLce0NkDu8LM1+cCMEAkTcfdWp6FkDpecyTGsY74vra0rZ
 jqFpR49ENgMSjHk8p1Xtfaa+aw5Hd9R3LM0WfZoyiVfmLQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aehkv818n-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Nov 2025 03:55:23 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-4ed74e6c468so40237061cf.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Nov 2025 19:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1763178923; x=1763783723;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=kpUJE4SYKU9ynxkJ/T5JJhpaCqT/i8ZykNmysQrjF+s=;
 b=g/UCpTQfO73g6ax4TdPunUDNmGHZ40sf6V0J9r6L3gcsryDjKvLe84nLkphFT31XKd
 tEGYUZ5NSDZT3VRa9lxHfX8orDdzUFkXxtx7Sos3WTHyHnceAB/5SoS2xm8koSIOSfz6
 7ScBTp8stiLUrHZJm4TppAY8XwO87ufPKWYLPW5M+2JE/O6nUVcWn8/oBWWWrBg9Wj4P
 +Ag7TZbNW6gyHnlTzvBrI5YIn1hw6glbMTqZSMFxOIWn/7QsXUg2LahD2X2wXUqGVDD8
 0Bpa5WRdyr+by6zv5YBv0gu9DGkDdoD0yfChzQKmvm2VFfxOchxZqFbcVuC8GLuOsNWg
 PaJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763178923; x=1763783723;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kpUJE4SYKU9ynxkJ/T5JJhpaCqT/i8ZykNmysQrjF+s=;
 b=VG+u3v32W+kflFPd1DeQ7lFFnCIRIEu2VxlCNbrUWvImuiIeXctYEBjAvA+XTQoHG6
 OuVkPoxIiDyme8SKQQgLAy5j4H15jLlQ6g+xueBeZP0dfkLk8ZV1juE6tuXz5g+q7JgN
 DwBN9OK4L4aOaqOg3SzLZiy8bsLiclI+kTqTtKl1Ezh77GfCqTZdMc0ah0u4rF0vmo7j
 ZbYWgA2Mwv9+tagC4REyow41hyZptdETVmSttAaiE0P9+kpiGHfYNxKbk6Vo6G/gmH+z
 WKCFLYk8+cjUPpYOaP6b+btTvVTxx8Kx7B6t+5659m3ZoOKsopuD9Z+D2ejBLCLhYYxO
 BY+w==
X-Forwarded-Encrypted: i=1;
 AJvYcCXeS8KVfmpiENkzT6D/3jy8q5I3voz1UWAUSGs8iG+uwJo3vSPs6Jrd+4mNpIih9qUDg0SFrjCOr/I=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxCiL3dnddnkP8w1N31wG8B1lvlLbnJKOTcMk6PzDhV+6+Fjv6N
 EFJHHHopLbV0pvOpdV1laLRUFis5xt352htuBqPNm6Nema6EUIzI2MZlBuy1Spp1jS6ikmXqKqw
 7+w0OBsoV1wDbnWK1s0J6Lyy0aAb9dw032NEiJGzPRLSFuIeo4t2Ic9ueQ7mAsDS8iNihyrk=
X-Gm-Gg: ASbGnctJUGiOICtLAM4FjYagEypwFGdgGnswuWOzOm9rn9ElW0VFgOn0ELRsWhVn0rI
 kdy2BT4TcOaSGoOeUcHVSOLc1GaLrcORHMRNeH6s4ZUBhra4Q0CkvNTooCP4W9lvvsP1bR/kjWE
 D1owlgRtxBLrDlPlM+Xb7VGC9Q94+TUSDaRxT+HjIeJcjAXEpo8LIxioT4HxZ49g0P4rjIMmW2u
 0Ms/N/qPfzM9cKBsT7OMhXsF4cG2DffK9b/ZL0rMXc3Ny2uwdsVxXviwKxwGKSs0yeJXHw2ZWhS
 +Z8EZLjv78roS43szBAi++1uYZ6ehEsYCkCZwlB6aAEoDMQY8K9nd513Rm7b0icVK2Gt3DHKzfY
 aKsUzHW5myoIkRKZf+T2l5QLgHV+krtVLIuQEfMZ3iAD6E7cdVLoV6Udv0KsJ+mtkN9ozyC8jus
 BcrAaj6aIvKX4x
X-Received: by 2002:a05:6214:c65:b0:882:4dec:42b9 with SMTP id
 6a1803df08f44-882925f280amr79893326d6.26.1763178923086; 
 Fri, 14 Nov 2025 19:55:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH21xNZD/1SaQbAJXQ9lzSs2ET/wK99qDySnRnPvmoMPz0h942r+lDos6cmgLn70aSgdH9ifQ==
X-Received: by 2002:a05:6214:c65:b0:882:4dec:42b9 with SMTP id
 6a1803df08f44-882925f280amr79893116d6.26.1763178922595; 
 Fri, 14 Nov 2025 19:55:22 -0800 (PST)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5958040c7ccsm1449901e87.100.2025.11.14.19.55.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Nov 2025 19:55:20 -0800 (PST)
Date: Sat, 15 Nov 2025 05:55:17 +0200
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
Subject: Re: [PATCH v1 1/2] drm/ci: uprev mesa
Message-ID: <42v64xdsaqug5yy76yel4tukh6wkt2tp237vlnpteabyl5qjo5@iigtgujvecwc>
References: <20251114030056.1139570-1-vignesh.raman@collabora.com>
 <20251114030056.1139570-2-vignesh.raman@collabora.com>
 <prjwrsepfc3b6ozhue5cp66khlcvdrpvpy6jkk23edncmi4l3y@oiddmamgg3mx>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <prjwrsepfc3b6ozhue5cp66khlcvdrpvpy6jkk23edncmi4l3y@oiddmamgg3mx>
X-Proofpoint-ORIG-GUID: bk4Qc5WLYeSppMw3LHE3LwYR9hTeqVPH
X-Proofpoint-GUID: bk4Qc5WLYeSppMw3LHE3LwYR9hTeqVPH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAyOCBTYWx0ZWRfX93ZD96/yCoaA
 +sAFGVargwPVxF621O4OJSPih4j8V7Mg0dvPwpzub2ep5E3mReA6Ro3seKQJCVVx6fX1tF0c87o
 QZAvOsKgOJouHdX/AR/ysW8E08GgFmzW6ElKDZkOXe52w0kKxZiU5w9pfSQhhKDZ0I7u3L793t7
 aoh6OTTUL0E/oqG1lM5c8GuOGPlw0iP9UWmg0qgoKaI5EGlGH9L8DrWL49ToNMsXIJOz3d3euNF
 zHL40ye/eof/ijO6KQ7J6PcOg4arroyD7LxLh+KGCACWnPp/TKechIxp6yi65lqVgU2SaIOKOhx
 vPtE7oH03rWSMJOpCikRt+KVzgfvxhOWyvu/NK7DB79wCXF9vy4DOSaCYgkWOWRUhjE5o5AuTLX
 9q1IQuCdqwgpO0TfFPrPrRsk2Cd+/A==
X-Authority-Analysis: v=2.4 cv=PZLyRyhd c=1 sm=1 tr=0 ts=6917f9ab cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8 a=QX4gbG5DAAAA:8 a=E-Vn-V3zxCEcjh91BPMA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=Vxmtnl_E_bksehYqCbjh:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-15_01,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511150028
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

On Sat, Nov 15, 2025 at 02:44:56AM +0200, Dmitry Baryshkov wrote:
> On Fri, Nov 14, 2025 at 08:30:50AM +0530, Vignesh Raman wrote:
> > Uprev mesa to adapt to the latest changes in Mesa CI, including support
> > for firmware via LAVA overlays, removal of the python-artifacts job,
> > split container and build rules, use lava-job-submitter container,
> > and various misc fixes.
> > 
> > Co-developed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> > ---
> >  drivers/gpu/drm/ci/build.yml         |  22 +++---
> >  drivers/gpu/drm/ci/container.yml     |  28 ++++++--
> >  drivers/gpu/drm/ci/gitlab-ci.yml     |  95 ++++++++++++++++++++-----
> >  drivers/gpu/drm/ci/igt_runner.sh     |   4 +-
> >  drivers/gpu/drm/ci/image-tags.yml    |  22 +++---
> >  drivers/gpu/drm/ci/lava-submit.sh    | 101 +++++++++++++--------------
> >  drivers/gpu/drm/ci/static-checks.yml |   1 +
> >  drivers/gpu/drm/ci/test.yml          |  18 +++--
> >  8 files changed, 186 insertions(+), 105 deletions(-)
> > 
> 
> Thanks a lot for taking care of it!
> 
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Hmm, this causes a lot of failures, see [1] (note, the run is not
finished yet):
- On some platforms (msm, rk3399, mt8173) the
  core_setmaster@master-drop-set-root test fails. On other it seems to
  work correctly
- sm8350 seems to have some issues with this uprev, it cant' finish the
  jobs at all
- mt8173 and rockchip:rk3399 seem to have other test failures too

Could you please update fails / flakes tor all the affected platforms?
Also I'm really interested in the master-drop-set tests. Why do they
fail on some of the platforms, but not on all? This seems to be some
infrastructure-related issue, since exactly the same kernel with the
same IGT passes those tests (at least on msm hardware).

[1] https://gitlab.freedesktop.org/drm/msm/-/pipelines/1547684

-- 
With best wishes
Dmitry
