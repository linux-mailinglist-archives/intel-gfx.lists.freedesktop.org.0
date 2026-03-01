Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WArOLhBupGnwggUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 01 Mar 2026 17:49:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B971D0B8F
	for <lists+intel-gfx@lfdr.de>; Sun, 01 Mar 2026 17:49:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2DF710E3DC;
	Sun,  1 Mar 2026 16:49:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="S4WFzvr7";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N/kiVMmr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53AB910E3D7
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Mar 2026 16:49:13 +0000 (UTC)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 621AtKwj1363873
 for <intel-gfx@lists.freedesktop.org>; Sun, 1 Mar 2026 16:49:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=dSllOkKEfDtkPszOpUxSs26w
 5scwH7eQoWJUjkkZk+0=; b=S4WFzvr74n+UOsusIQV8vroIg+2n/ZWGqD6P5I8I
 2QnM8/qHBqWY7ILgw/yiAvzWx2qubCHOnQ0vsX5ZwC28cc3zn5dc/5KewkUHerbV
 QZZW+NBsVHblGZuFL0vr0vV4FBjPUbU65Zeg+xCL7ugVV5oZZpgnU0KHM+4rP4T7
 RzUxQUk59lKRg+E0hMuAkjfRNqBYMlWRSO1Es3UCGXt0OChZJrGKGFssr4tyDNqg
 OzXVptZm/MnRSTytiWYP9Xpe4HPms2u9CWCNhehNOtxetcz8Ixh1CZGH/mcLael2
 5065GNEayH87h4/uFtcHDWZcrDtLuJdAzC8C101bS6eCaQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cmgbarnwc-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sun, 01 Mar 2026 16:49:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id
 af79cd13be357-8c71304beb4so2516962185a.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 01 Mar 2026 08:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1772383751; x=1772988551;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=dSllOkKEfDtkPszOpUxSs26w5scwH7eQoWJUjkkZk+0=;
 b=N/kiVMmrXuU6Yj38mqMcQlw5/JjJyucmTi9NzXsRsCbrWQ38kuJatEJUjIPQiUtM+B
 YY1wEUTBTr3dFzlzF281SLZKIcqNBJaE55sinN2m3z1rQih3RvclCOKcmx7i0uVBqkc2
 Ff31hDtYm0qHt3hfhCnxkXN2cLdxlzIsidESrMT16yAmeq2j6anCO2N0fZgQROq1WK6s
 6nrbyZ3Dlo0492ziku876kogagP38GerOJirp7RhNVbQszaEOeTvRlxdfGgTwIC+2EZn
 8lWd2fEw42UD70W35/fAlU4oxRztGqeo7Zq+2btAJMEjNxSoJpRU2yKMFJDz/r9wGj/i
 Q3ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772383751; x=1772988551;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=dSllOkKEfDtkPszOpUxSs26w5scwH7eQoWJUjkkZk+0=;
 b=sf5ohYmWhyiZfIV8iVdgRHkrJDtGFAylgRsJ8xHWS9fya0qG0TsZ+utQqHdZqkvEzN
 tginrhvmRQPSvrodPa1cUbv3N65ejEakvnbmBp3W5XZuikj9Bxervwhtp5y+kYAMx4Qb
 82T2FY/NnHUGafr9QeR6bMIQAcl3CQxY6iAsOD0ziSjWTG7fWAA7S0E8RSzccujf4Dte
 kgQ+L3DCvG0o+WSv308YJuZY7V1ex0auq7y8z7Maa3zcKvPvdl0QharYWvSLZtB8kV3l
 QbhwjbW7KHPhG4LSljWhI/3i86wqZdVpgJ4Wq/QU6xLNNPQyz3BsT2XXwjwXdfu1a8hU
 NFnw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVvpxKubAuR6On+x8pFxvOLXaiVXdBiSDjq29UaxbqOVaNejDf+5R8v7x8NjYfvBZB/uoKfmAlQOjQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxYBDLMjnzXZFmgsHcGm5pmVxv60uTtOGOTvmlI7SeFj6GQ4E2c
 S7kDrEiYhmNof+s8wkXQuULmERm7txi6ECnwBbKX7YUpaP987eemQKse5dRjHeC9awFKaaX9fdp
 CBEzTYIU7ws+Xy1cPMKWv7eCtqlag84GZ/skilFCrVQh0g1o7ihFk1NQowmftsn1Ty6gN0Aw=
X-Gm-Gg: ATEYQzynD4vQ1io6otWcwspLS2RVxM6wRyhEvsKrEv/mQ3HBG9M/JJcaR6AFQur01Li
 Y0NB8kq/U8QCOvdlDTpWzMliMv+GrJOxrzrmzYWA/FYodXvL8ajmmF8rtN5M+COtEGSG/sqoBdh
 9RyX/9Qm5mkxRSy684SNjiP0FWEIVbfyxVZX6iCfHbEs1oheq2djq7ZyYMenCAuqKoSpAmpdT2/
 1/XBrv2lbarCIZIz0b5+lxu1ZsdhGDwOfRWniwSYyqp5Fw89nGe7nLhrx8uwT3CFHd42LYE4Buo
 Kt1rWB9DzYwCeUpYsMva8Uvlk3zoDFz3MjehAExwRh5oHeT+Vg0Wf2ekOWe2dvtkqpvHaScorYg
 XHWYH1jnuIOunWpsfOIYTShMeF5phW6Uwc70SeNf9gPyl0L5bD4qIvvGDcRHrdeaVpMGNjENKdf
 tLhKMdBqUhaAW9Hp1EYJjEOHL7WANrhs2ny4o=
X-Received: by 2002:a05:620a:2901:b0:8b2:598d:6e66 with SMTP id
 af79cd13be357-8cbc8da8ecemr1218259985a.22.1772383750678; 
 Sun, 01 Mar 2026 08:49:10 -0800 (PST)
X-Received: by 2002:a05:620a:2901:b0:8b2:598d:6e66 with SMTP id
 af79cd13be357-8cbc8da8ecemr1218255985a.22.1772383750077; 
 Sun, 01 Mar 2026 08:49:10 -0800 (PST)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-389f301788dsm21899311fa.35.2026.03.01.08.49.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2026 08:49:08 -0800 (PST)
Date: Sun, 1 Mar 2026 18:49:06 +0200
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
Subject: Re: [PATCH v9 05/19] drm/display: hdmi-state-helper: Try subsampling
 in mode_valid
Message-ID: <lw2tdcwu7yathstby4a5tx3ys6rruzeg3odvnsjsgc75sqycun@geoqspu2sfpv>
References: <20260227-color-format-v9-0-658c3b9db7ef@collabora.com>
 <20260227-color-format-v9-5-658c3b9db7ef@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260227-color-format-v9-5-658c3b9db7ef@collabora.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAxMDE1MyBTYWx0ZWRfX8OmZYxcwKzsj
 uAd7EzcQmBAVWg626c7aDt/0qqYRuYqs9w1GTQi63Cy1Nip3WzN/LVk6P9GKyyuZ9AH6DnXDFPl
 nEIkvnBjb996w1wBNeeeTmFeDJeEGTaNl46bc7j6VowwzkRXZua9D6Mx6IR0sX0Ni3rWeRzasuR
 Mxwc2jQllCDBai5dVYVkEghIJntF7vQ3OrlvnYUiIWmGUWiyw7FpQORar1of7+Zz6DZfvIv7n9j
 R9oh0gjaL6L4qoksdXnZserQ5tKeysEnj7uGculkLqFX2hQz0nuKbVjd8RamM1boUDhxinz3UZR
 Zqg05m3C1OhmTCb2uadflxUkR7nRiQWBe59m/DcmL0kRMQTDKnDnzo+Bk0kpR4aaQf9XK/3jdG0
 7UfbhFRKJugxbQzaz4kzKn2L8WdRbX/1VD2RLnm8gr45cgWTErArAkNUNsxyRFJcoLZYMq6Vmyq
 RVAVPxPA33xs9wr6GHQ==
X-Authority-Analysis: v=2.4 cv=QfVrf8bv c=1 sm=1 tr=0 ts=69a46e08 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8
 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=CpXNCzN6O6rfykjMCtIA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: MxlN5iNrQ4eAbT1ts_RLtlTPAGN9EK69
X-Proofpoint-GUID: MxlN5iNrQ4eAbT1ts_RLtlTPAGN9EK69
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-01_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 bulkscore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603010153
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:nicolas.frattaroli@collabora.com,m:harry.wentland@amd.com,m:sunpeng.li@amd.com,m:siqueira@igalia.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:lumag@kernel.org,m:s.hauer@pengutronix.de,m:robh@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:kernel@collabora.com,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:intel-xe@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:j
 ernejskrabec@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 51B971D0B8F
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 08:20:10PM +0100, Nicolas Frattaroli wrote:
> drm_hdmi_connector_mode_valid assumes modes are only valid if they work
> with RGB. The reality is more complex however: YCbCr 4:2:0
> chroma-subsampled modes only require half the pixel clock that the same
> mode would require in RGB.
> 
> This leads to drm_hdmi_connector_mode_valid rejecting perfectly valid
> 420-only or 420-also modes.
> 
> Fix this by checking whether the mode is 420-capable first. If so, then
> proceed by checking it with DRM_OUTPUT_COLOR_FORMAT_YCBCR420 so long as
> the connector has legalized 420, otherwise error out. If the mode is not
> 420-capable, check with RGB as was previously always the case.
> 
> Fixes: 47368ab437fd ("drm/display: hdmi: add generic mode_valid helper")
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
