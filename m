Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNy8EoYj2GmNYggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 00:09:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF853D0200
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 00:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E321510E0BC;
	Thu,  9 Apr 2026 22:09:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="kNv/mPHE";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gCs2zZQ/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B3810E099
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 22:09:06 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 639JaxJw2866295
 for <intel-gfx@lists.freedesktop.org>; Thu, 9 Apr 2026 22:09:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=0HMFaKZjpgyXaau/0X9Mxm/w
 GN/42VWp/aAAASGyGoc=; b=kNv/mPHEw/tFjVBnkayEOYmjoDA8xsri9s1Fx5AI
 j1rghVQSftnAm0tVvn+YyX5kR6NxS6O3dSqWEcQ/9lSZ+hrdwdG1+gilPhovXIoD
 gNr0mctsDpiBtOOepvYk2JQV1iPFChb/nlhXUGmm85iCETuMErjbBM/gwSw4nRtJ
 TuhcWuPxw7Wm3KU5go4mRE9Jh4bmK3YUSGd4dmcq9UXo52BVx7jxPFeFAqhdLoqA
 hqNgGZhxbOWpGXFD2ueRY9MHdyKwFe7ReAxa1BSeJFtvdMjnD+rEtIyQTkwTnTcs
 gX/v09P9lvNyi4ZmJgZQgtoEGgqdjnNr002UF6Z1Acb45A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4decayhy1y-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Apr 2026 22:09:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-50b781542c1so30604851cf.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Apr 2026 15:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1775772544; x=1776377344;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=0HMFaKZjpgyXaau/0X9Mxm/wGN/42VWp/aAAASGyGoc=;
 b=gCs2zZQ/dKXGFc8GVlCZey88L827VSL0Bc9wr7Il6LJjhJ59Byvh6Vl6b4ChrkKsMa
 pVi0Djql+zbMt42DROSI1EED01QdJh0C9oABbTCpLkdmQkpwN2a/+bb40+O9QVKGux4W
 u47nexpPnZspdocH1hzJ6KRv13y43KA2tH2FdFssLtyvWdyzovuHS58zwLx8KYPYTrIk
 zMG4DcH/ZChGn8UvukEgUiyamsqVoGA9rH/0ZuaY/2r6rxArxWKIf0Vcvx8gtiQv3kY2
 WJ7/I2woIEdq2HBijh80VBmokcVYflARBmrcglLp/KlBA8Cg+sUNiSv1mmMwEQqmZ3/5
 Q63g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775772544; x=1776377344;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0HMFaKZjpgyXaau/0X9Mxm/wGN/42VWp/aAAASGyGoc=;
 b=KZJNBZv6sP6NYK+pGxPSqKLgUwC6tvsM+RVE8OnUSpf5pfWnBtZVYb6+yaqOTPVUls
 ov8IFXrDoNDhyO6+WwKcq9O6Oq6qZGmqg4GT/ki7gFHWYxdUNl0wMGAm+7N+sJXAF4JP
 dnKCCP53vrDfjTFkYCTFCz81Apbx84QpvprF6Rt5xWqvDWHqp7OSrPL0nV0TYbdHRsDb
 fDZFc/haax95FYS1axkhZZ2SxiC7P1ovKnRMfLe3U6uyxhD6d9RU3pHop8AuIFyGqpT1
 WJjcciAbQUKivzHvMl8u/7nGzmJ3tw3C4s8syYLWc2GJ7IiCEwi+xp2arirFtMGem6ut
 dMsw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXiuKMS8aEsX8p9T1lRTGn5I9y7bZnakXpNY/dwgJHsmn8ktcRq/zVSABoXYrHrEAPJ7EH3H4jFN+E=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxxh8mnwA0bgN2GF7KcjtdAjoj2CaXtccCpPoOuU43038h0Hwt7
 AgMi19tFw3zLfweuflfkBOTEQ+Xg11wOI5dOoUGZM7BYMaMKlB7BfDusl4ectFyQ+L++0ksSrqk
 ZVW2g4Nz1Efvd60PrSF8m1RMRWsyemSrQrOqPQldNStGWDqDD5ssiaeMtCBT1WXZxWZUQWhQ=
X-Gm-Gg: AeBDievJeJrz8tXk84806fOzekVpD/ob84Ght2VGQfrc0bryPuuzQ4fU3gIS0+ojKVZ
 5fwiZOy79JC9tAxGPT/27mz2JOqJ7ea0tQfr3g+PU6MxhBvdMXUkRrCN6g80f2ewjLb+KPVOM9k
 1uO9rWjdN3SiDdORFX66yYe/ZEn24mCHn3HhuB+ZnT72OSLcW3ophP7pkGJVyPzYfRGzsplEF5d
 ufIlRDCsQQdK6/Z4zOb0Y3TiD/cU6/U4yACyFVrDXE9qTl57J67D+ywg4pIQDROsrzUkf+tY98+
 ZXIXpSoUBy8LPvMeeR63D9AmBbFatqc2iUFMgvquSwxktfYe9sX41dpe/aNeA1YPqvu0O8bObIn
 k7P6Y2To5YlqitcmXm9lZsMIoDdBSg1Qj6efXkrv5r11VERCAcmF9kSHwurfk5in4fVcV8tZTqb
 aM03CaTSKTMotq3TCF/D1KBkKEXV+MTqzTw9k=
X-Received: by 2002:a05:622a:2485:b0:50b:50bf:5bbe with SMTP id
 d75a77b69052e-50dd5adbf6fmr15604161cf.22.1775772544435; 
 Thu, 09 Apr 2026 15:09:04 -0700 (PDT)
X-Received: by 2002:a05:622a:2485:b0:50b:50bf:5bbe with SMTP id
 d75a77b69052e-50dd5adbf6fmr15603721cf.22.1775772543912; 
 Thu, 09 Apr 2026 15:09:03 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a3eee864a2sm196421e87.2.2026.04.09.15.09.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2026 15:09:02 -0700 (PDT)
Date: Fri, 10 Apr 2026 01:09:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v12 05/25] drm/atomic-helper: Add HDMI bridge output bus
 formats helper
Message-ID: <47l6v3hxfnl75heek4o7fmhybafk44ewsrr66sdw55ahjv5oof@sku3nqbhg2tx>
References: <20260409-color-format-v12-0-ce84e1817a27@collabora.com>
 <20260409-color-format-v12-5-ce84e1817a27@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260409-color-format-v12-5-ce84e1817a27@collabora.com>
X-Authority-Analysis: v=2.4 cv=XtnK/1F9 c=1 sm=1 tr=0 ts=69d82381 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=FnALt_FR2tA_ePdYDbsA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA5MDIwNCBTYWx0ZWRfX2pdJv8idmFx1
 2PP4m9M9gQk9WQ6qmuGjzf/jrOaqOVRdg6qi91BqL0YTZzgO59fNF5Z3gLaBpneK3IwVcyjNWkQ
 1myt2L6UkBmK6Cbxjt7hrgVdfaPzyxhA8QbQO0zbisulf8KjzTF4HHgF5YyoG5j99ncv/5cYxi/
 hB2IaK3mRJsFfKS/dAWxvRwFGTgF3mqowzeLl7BrZboF/MVxGvOuDMp/bQSidXzkQkLjjeTNtIl
 PJWhk6Efs+jb92mBWQU5YNDbaUYQ/qvoTCN8VWb5p7CuQIGRlt6+RVj3bEd0VVy52sCOtombMaz
 C68NOdVJgiRfaLHbjsvgJvzthbeMUkmt4YYB8NVV3ZOAXy7jGk2sIvUI1duj9VhV0RAx7tsM4RC
 RGBhzMUXvtUcV1Oza41IricxK9rolr/p+y+8FYS+E2iez5KtRnp1n9NvEckRHeHb83dPMRByVmq
 8qAzmtWS1wMjYDuph3A==
X-Proofpoint-GUID: 7LMkFwy0_6mmfowX_qlPAHLU0lRc3aZJ
X-Proofpoint-ORIG-GUID: 7LMkFwy0_6mmfowX_qlPAHLU0lRc3aZJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-09_04,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 bulkscore=0 phishscore=0 impostorscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2604010000
 definitions=main-2604090204
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
	FORGED_RECIPIENTS(0.00)[m:nicolas.frattaroli@collabora.com,m:harry.wentland@amd.com,m:sunpeng.li@amd.com,m:siqueira@igalia.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:lumag@kernel.org,m:s.hauer@pengutronix.de,m:robh@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:kernel@collabora.com,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:intel-xe@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:j
 ernejskrabec@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
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
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,collabora.com:email,oss.qualcomm.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: EFF853D0200
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 09, 2026 at 05:44:55PM +0200, Nicolas Frattaroli wrote:
> The drm_bridge_funcs atomic_get_output_bus_fmts operation should be the
> same for likely every HDMI connector bridge, unless such an HDMI
> connector bridge has some special hardware restrictions that I cannot
> envision yet.
> 
> To avoid code duplication and standardize on a set of media bus formats
> that the HDMI output color formats translate to, add a common helper
> function that implements this operation to the drm bridge helpers.
> 
> The function returns a list of output bus formats based on the HDMI
> bridge's current output bits-per-component, and its bitmask of supported
> color formats.
> 
> To guard against future expansion of DRM_OUTPUT_COLOR_FORMAT outgrowing
> the hweight8 call, add a BUILD_BUG_ON statement where it's used that
> checks for DRM_OUTPUT_COLOR_FORMAT_COUNT. The justification for not
> using hweight32 in all cases is that not all ISAs have a popcount
> instruction, and will benefit from a smaller/faster software
> implementation that doesn't have to operate across all bits.
> 
> The justification for not defining an hweight_color depending on the
> value of DRM_OUTPUT_COLOR_FORMAT_COUNT is that this count enum value is
> only known at compile time, not at preprocessor time.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/drm_atomic_helper.c | 81 +++++++++++++++++++++++++++++++++++++
>  include/drm/drm_atomic_helper.h     |  7 ++++
>  2 files changed, 88 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
