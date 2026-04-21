Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMlVEvOe52ml+QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 17:59:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA8C43D0D5
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 17:59:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ECB710E8F3;
	Tue, 21 Apr 2026 15:59:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="blC0KCuS";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GjENaVO3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2FF610E8EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 15:59:43 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63LA5w5m1834756
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 15:59:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=qTGT9dVHn9ZD4VlzKf8b4LWl
 wJ6q97WIUZp+d0WZsqE=; b=blC0KCuSqm9wlc6YuJb5fJBNdXfodybBI8mwiIpG
 cu6otodaBirp60rUNTgROxukDQUGZiL6De3HJPM03wiuePdz0xSeBsYSBoirf4PT
 qoLPdE+pPdkw5yTbWy+PGdRwzUBM1+HV++fY4+Q+ZbgP0RdOMBRXxnbSIjPoBKgc
 hF5Uyg91dwehoFyGu0H2aXCfOynF8KmbWq8KKtVGWSE5p7KJpLFXx+76GAYxak9D
 p94Xm6IMiIlV3m9FMlfL1EKhpkJ0NfmkV80pk1th44BQ7+TPFCpqlNJMiPj9eL6T
 se3Lg0BuYQoLayAbgATtnlnbdQjBs4NA+YoK2kDwBPuY7g==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com
 [209.85.222.72])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dp76gs8k0-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 15:59:43 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id
 a1e0cc1a2514c-950bdef305cso2662127241.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 08:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776787182; x=1777391982;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=qTGT9dVHn9ZD4VlzKf8b4LWlwJ6q97WIUZp+d0WZsqE=;
 b=GjENaVO38+pTvn8abYzp0OFvnP3ViWXmCzeTiCcMFkkLtuDfumeB7a9KnyaExg1baG
 x6DIBek30rqQH/tVeuBiNpqQU+2AdBMolmLYtnH+vx6laJlOG6pN6VouoK4P+6j7KMus
 0/VKC0NmDMWvY5lQKnfzJhxtPby91c6/kQZls/5XddHtHkMLc5TrWN9iuFeRIxxvrEYk
 S80W34yEtbn5ZEaD/a+HqyumhbIRwyDgFaj8yBVraP8FG4pHjtPFTlqmZVRYMM3xm6zv
 XMQWysYX0wKVw4USCBY4CJC5NjZsTRCN+4IKlcm8XLGzfyR0ORStgASR6t/9svQEHJXF
 5yDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776787182; x=1777391982;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qTGT9dVHn9ZD4VlzKf8b4LWlwJ6q97WIUZp+d0WZsqE=;
 b=c787jVQN4ah2jW/qAPUBU/zwgipikEu/ALRtfEpI9WyIE3CM7s4D+iOz5vsWdc5BT3
 lFV/m1ipma0StElLci/u2gdI6vGTZI+UFy8jbO67xrPrYayrorl2vWjNfI/g2lxIGvHY
 prwDBWLSfnAQaZoNVXCLQz/SgfprQS4E+m1QAgh6gmx2l6dDbFqCGJmThSRrACoAdDtz
 GkfgnW4YP3cv+zwHwkUc08zpXqELZ22cp7y+MyuL0QJVmPk68493JLIxZ9Yrl+gLT4lo
 8mLP7V3WsBY9LKhEO7FVrCJV3DNAeP8HM+qbR39wygf5u6XewBscvIAz4IpB4E3F82Tv
 hckQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ+65bno/n0U++WrnqZNeCLKHl91V7C5u0QkAOOrYeA44T2Ue8neYUD1p3tOoig8gd2zVoNxamxiBTU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwXmIELPWiNpLDPILGXA62i5Z09e57EHgI2j4Ava/dmkGfZBYZ4
 Y0qHiCMYnAo+0MuPIGZmx/p9GDOt8PsQg4TPAWlbjFKQdAlCufnfK4UbZQetk2KLVC9DeEdvQSI
 mWiO2hT9ALpGDj7YPbf8pj9riKr532yRBgdkYWVjoK5PBEMNCzqtPJ2Mb6u66tUPBYXLgAxo=
X-Gm-Gg: AeBDieunKiUIW3Qce1nbKI16jLEe/gFMoGOY3+ifKPV7fCbZZRGodowCrMGJR2OwRYz
 eVBO9cH3HJAZFsMD+PhWOjA08BBOzQAQ/Og3Yzs4VVWBA7MDiJ2HGVBAJYXXRTH2irc8ZtK+0VM
 GTIBzDbpbUyF+PkYizslj2illfK3yRoJrnGKIW5FurlZNsxXGC74w4xs4hNUGBtJvxmGXpIu/N3
 BSff08a+cf6LrbNqzc5i9WluSpsLCs3CDnw6KwGAniyz7y4dtn/6LutkFh9o5w2zttgRb7HoLQ7
 at4C2SZqrDNtZAoYJq1dbyjyvsW1mdCVfyRZaWIilxgd2dD6+NAmPfLHCIiQR+iwNKZ9vYfIr2f
 4hQSFIgtOv9V7UQaVnotRGMJhVGnT0kGoUVyMZB6+ma8vjgN1c2nWbhaUAkhfr/GAaNdXVpP5I0
 IjUaZNYI9m69iB3hn573Xa0RN3IbjP8+wwl2p3t2LlvYJIgA==
X-Received: by 2002:a05:6102:6052:b0:602:8c16:b24c with SMTP id
 ada2fe7eead31-616f806992emr7568536137.19.1776787182077; 
 Tue, 21 Apr 2026 08:59:42 -0700 (PDT)
X-Received: by 2002:a05:6102:6052:b0:602:8c16:b24c with SMTP id
 ada2fe7eead31-616f806992emr7568495137.19.1776787181651; 
 Tue, 21 Apr 2026 08:59:41 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-38ecb6f0bfdsm31472081fa.26.2026.04.21.08.59.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2026 08:59:40 -0700 (PDT)
Date: Tue, 21 Apr 2026 18:59:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, Jyri Sarha <jyri.sarha@iki.fi>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Simon Ser <contact@emersion.fr>,
 Harry Wentland <harry.wentland@amd.com>, Melissa Wen <mwen@igalia.com>,
 Sebastian Wick <sebastian.wick@redhat.com>, Alex Hung <alex.hung@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Chen-Yu Tsai <wens@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Daniel Stone <daniels@collabora.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Subject: Re: [PATCH v2 16/20] drm/atomic: Drop private obj state allocation
Message-ID: <6fp5keyrgfic7x6rsopxpqdqfrbotkofv3vzni4bstphxwbc4l@5nlu63kpuwas>
References: <20260320-drm-mode-config-init-v2-0-c63f1134e76c@kernel.org>
 <20260320-drm-mode-config-init-v2-16-c63f1134e76c@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260320-drm-mode-config-init-v2-16-c63f1134e76c@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIxMDE1NyBTYWx0ZWRfX9ESLMy8g0mtc
 FNnv8jTc75WD7RV3wlu3FMLqPwbsYiOKyqZLxrtFS5WqqSnDljOlefFgNvOzbuYeaQcAXG9nTJT
 eW6xhOglvFo8Q9mRGIJLAOwNaifTavWaKwb4UmFTIlM50ZmHocarUXEI63yTu+18GkxvNPksGGm
 cicSr8c3F6947HcUwxs0AOWVxJ0kpBKDA3EuKQt6SUpFMkvJvEfKuSUST2RBBE60RiyHjZKT+VO
 EOuyLWKWIrfcnKscXj8FrejiPLukS6EV2e/wQOThCYh7CUO3abdW+LjfBOlPDSV4dnQMF0BAp3s
 7smxdsRNHP48/PzjvH+KXlGkDaUV5jrZ2bBHH7c0DgybpT7mzmJGIJrg4FrV+0dkKedThLWjJOm
 PpSIfP7739vBTBfNagvTeFuBrmc5ZaAslfyXeR6UC/uvlpEWc6NBzKXJK8sxqZNMQ4V0i+koCPp
 XD/HnvAKcxf5UMVW5HQ==
X-Proofpoint-GUID: t-tFYKrefK9dOI4ZjsieTAZxpVGWcDBV
X-Authority-Analysis: v=2.4 cv=crWrVV4i c=1 sm=1 tr=0 ts=69e79eef cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=P1BnusSwAAAA:8
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=CGuZyk7pIeUWItkfYpsA:9 a=CjuIK1q_8ugA:10
 a=1WsBpfsz9X-RYQiigVTh:22 a=D0XLA9XvdZm18NrgonBM:22
X-Proofpoint-ORIG-GUID: t-tFYKrefK9dOI4ZjsieTAZxpVGWcDBV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 spamscore=0 phishscore=0 bulkscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604070000
 definitions=main-2604210157
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[38];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:jyri.sarha@iki.fi,m:tomi.valkeinen@ideasonboard.com,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:contact@emersion.fr,m:harry.wentland@amd.com,m:mwen@igalia.com,m:sebastian.wick@redhat.com,m:alex.hung@amd.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:wens@kernel.org,m:samuel@sholland.org,m:dave.stevenson@raspberrypi.com,m:mcanal@igalia.com,m:kernel-list@raspberrypi.com,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniels@collabora.com,m:intel-xe@lists.freedesktop.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:laurent.pinchart+renesas@ideasonbo
 ard.com,m:jernejskrabec@gmail.com,m:laurent.pinchart@ideasonboard.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,lwn.net,linuxfoundation.org,iki.fi,ideasonboard.com,intel.com,linaro.org,kernel.org,kwiboo.se,emersion.fr,amd.com,igalia.com,redhat.com,ursulin.net,sholland.org,raspberrypi.com,lists.freedesktop.org,vger.kernel.org,collabora.com,lists.infradead.org,lists.linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideasonboard.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim]
X-Rspamd-Queue-Id: EDA8C43D0D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 05:27:23PM +0100, Maxime Ripard wrote:
> Now that drm_dev_register() calls drm_mode_config_create_state() for
> every modeset driver, the private obj states will be initialized at
> driver registration automatically if they haven't already.
> 
> Thus, the explicit initial allocation we have in
> drm_atomic_private_obj_init() is now redundant, and we can remove it.
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/drm_atomic.c | 7 -------
>  1 file changed, 7 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
