Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IExvM79tpGmmgQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 01 Mar 2026 17:47:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3041D0B6F
	for <lists+intel-gfx@lfdr.de>; Sun, 01 Mar 2026 17:47:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E720A10E3D3;
	Sun,  1 Mar 2026 16:47:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="j9k43y29";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U0J88eFO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC9F410E3D2
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Mar 2026 16:47:52 +0000 (UTC)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 6219jg09837665
 for <intel-gfx@lists.freedesktop.org>; Sun, 1 Mar 2026 16:47:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=23yFjRakNDMv9z7eHrnsMfwG
 zCe1oBIgBUxRG3B4w9c=; b=j9k43y29AY/jcOBaZs4hjILMyf4NJhXj35Ds8fPf
 WOCMUgc83CYIceqbax3lqKhzX79Ko+iYQC1kKbPZDfsyqOkPtQI1g5VEsX7Lu/qL
 AxtlMsFmktCzVSbsiJI69w0rNrE7ejK0npefurmC+7ixrdHK1PUZe8EUs5aAClT2
 0dCCX8KR5It6Pr5VJ5vpuJH+eFms1e653wLTIIoz6kdz/S1wGb/5T+JN6GgqOTHL
 S+SDKd8+NufyC2a2lQuyvzgeT7eO/Frd6HF6ueEq71KVMYEsRIOilY3LgMv7z3FW
 WkVeV3lPmX4qJcZAkupTCrsicOZk0I+o6inqX9bWQ9NUlw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksgru166-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sun, 01 Mar 2026 16:47:52 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id
 af79cd13be357-8cbb8040f48so3483203285a.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 01 Mar 2026 08:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1772383671; x=1772988471;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=23yFjRakNDMv9z7eHrnsMfwGzCe1oBIgBUxRG3B4w9c=;
 b=U0J88eFOqs2NSSV/+ivaYNcqJkyO8OLP99X4QrpTQ28pbgb1EYGL45q7vpZyNIxZsv
 RvwA4ZrLlPFJ5/ks6oywSts6FfdROKT5W810Dn9hM41pko1Zq+0Il6j45PmqSNKzsN4B
 NvOlirmgbtJGcNzl7zWDd7MMbYnJjE0T5NSCAjhQKoZRsbeXpJWLbjsksQYBntNsXUH6
 AgWJ0cVBBb+Txu3A84C+s+LZPUz4zHy3tx2aiw3YSBULMQiZbuP5Pz+cxQwPR75KgLdj
 XIDsWISNTJ/zbHT6g3+2N0VXkcVaHLyq0/L8Hr0P4D5eobAKgfyx9lpwDf6u5wPqx+Jv
 14nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772383671; x=1772988471;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=23yFjRakNDMv9z7eHrnsMfwGzCe1oBIgBUxRG3B4w9c=;
 b=fwaDSlM7YtnFCYdWLrmiIQ8cRSNPs+mUA/io+dXH1vMhmIPEgADZZRKuH0Dhcil3aM
 EnjYvwQMZYtHsXcm15DZ9AEMrAXhfBcsFxAcxRC3CaRLqvMeuZgoW3y6ZMInA+mOA3ph
 s2iH7yv0hcQdV6nu41nVuMLDX7Wp/ILr5v42EGKN36nr6UHzYcEFwFw7SNMaMKaG1RWH
 rJ5T5YveEv3/ymUW4hEJEvlD3lZ573iSPvMaPaV1yOPvYqlGVKhbdI96H6KOnrIwuVpu
 GtnUSnaRhOXSokKAwG6TWIGkrmI7Gi5jvsuZjGp10SL9s2xDsIojNVPbQh5xz/iKFUOh
 RU+Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUbYPISdwV5tEX+jrhRcTL7sNQg5cPJVoUKlp0OXk4mGj5eEsD0+KtaAr3xzVo4TFSrRfGudcTpBI4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yyt/F2eJn+CSpPRO87ItdLwMf35ICEZfnYxCaij9/p+V33yw61R
 zdUd9psnRb1CnjQ0JSxCXvdo66qECmoYNWt6QvTolSjX7C7Rz2TIv9IV5jJn8vCXOAPXHW8weyf
 Axlv5z+aGTMXjE/GKHbsvqx+4IXIpfX9zjj+GO5cv45eHDK/qw0wRj+NGh8BvRZXIzgDgf4s=
X-Gm-Gg: ATEYQzxlNFgzTmWVD+qL5HHAqXJXLkH4of4KmLAE681nI4TbnLVgIuNRoBuGPaEhx8i
 bo9ggyLa5j7k4UGVuxwO7eCaoE0HrJ6RK/nmXAaio5Pi7FwosDqeXi5YLfUu68P6EKqBpw3RPIf
 peNN16pCzmNi5lBVGcqoQpoQVSrmQuZjdghhFC8yaXgd+dpIdLqF/d+xKsvgR9W0n8V5ieLz231
 LOyMAn5Z9GRol/KqAObuLk91Vqg92yPjrBsc9xWOok+XO1QT41rM/cfr+dFhc73ysw7XoYaLB1C
 imCXpSLJ2D14zI6G9lCQh/3IfUvF2FFTIxegnsPLwOU9Y9IR+uf/LSUQ9yqTDRPRbYxowN35YIl
 /2uEqGaiMyeB27GEldB56l60nltSYIdtoUHdS+rRVl4OjqpIkaCl1JhQ+K0DyqzaSq+ghh9V8cH
 MEgG7/sOXXaZarI7Ui8vc5ECOlUA4x3he3BLo=
X-Received: by 2002:a05:620a:4801:b0:8cb:4066:7acc with SMTP id
 af79cd13be357-8cbc8e4b74fmr1215340985a.50.1772383671044; 
 Sun, 01 Mar 2026 08:47:51 -0800 (PST)
X-Received: by 2002:a05:620a:4801:b0:8cb:4066:7acc with SMTP id
 af79cd13be357-8cbc8e4b74fmr1215338985a.50.1772383670575; 
 Sun, 01 Mar 2026 08:47:50 -0800 (PST)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a115bca083sm1146993e87.31.2026.03.01.08.47.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2026 08:47:49 -0800 (PST)
Date: Sun, 1 Mar 2026 18:47:48 +0200
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
 intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org,
 Andri Yngvason <andri@yngvason.is>,
 Werner Sembach <wse@tuxedocomputers.com>,
 Marius Vlad <marius.vlad@collabora.com>
Subject: Re: [PATCH v9 02/19] drm: Add new general DRM property "color format"
Message-ID: <y5ybjitphwydvtcjdtrmpcx7t7hwevjszpktcnmyvjqkgzinmu@hoitkl7lghxh>
References: <20260227-color-format-v9-0-658c3b9db7ef@collabora.com>
 <20260227-color-format-v9-2-658c3b9db7ef@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260227-color-format-v9-2-658c3b9db7ef@collabora.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAxMDE1MyBTYWx0ZWRfX8eDYdIk/4N9G
 3FcWlhSP7f/ysok8aUpvlFk8VVlVWQaHQbnxgGBHqfGOuyAyce0qmRtJg5o9qwMn83H9h6fvwX1
 3C17PzlfFpin+Hesu71497mwti6ILu5Dxa3DePl4fsENty1+8N+fJgyZ4VZzqnqCQ4aKMYGkSNI
 yTlknpZEfhRvYDQ9NLxh4OkxP7EBKGkPLBzR266eI8GdzgBQD7zPNTBmKTclo2X/Nn47NvxTTyU
 UYljrtt6AFl3JARlXLhifNuSM5n6b+U2NW++lk8mQg2tpYidzhu2PDxs0oAsqm8IYpmyXBy+39v
 TIdFBXodpJCNJbn/aVItl4fMFqzjHn7BNWo9efOb8XSDR2Tue0C+xRnWjHXSyFrgXG97IhElgUg
 YTDlpGUUJ1M4v8xuS3SRyNQsGKJzy9adnRBOFV2azBNGnbjJOIUbsP+GaMxcu7GLhOeOqhpeR9W
 EJ4xAd+yW62HWU0NqSw==
X-Proofpoint-GUID: 6fSTJFGjlbCoTlo2H50aq4mrsJjnQ5NE
X-Proofpoint-ORIG-GUID: 6fSTJFGjlbCoTlo2H50aq4mrsJjnQ5NE
X-Authority-Analysis: v=2.4 cv=Zqzg6t7G c=1 sm=1 tr=0 ts=69a46db8 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=yDUiu3_GAAAA:8
 a=QX4gbG5DAAAA:8 a=bDwM_fcg3tGIVG_HqXcA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=gafEeHOdjwYkg5oUpzAY:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-01_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 priorityscore=1501 phishscore=0
 suspectscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[41];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:nicolas.frattaroli@collabora.com,m:harry.wentland@amd.com,m:sunpeng.li@amd.com,m:siqueira@igalia.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:lumag@kernel.org,m:s.hauer@pengutronix.de,m:robh@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:kernel@collabora.com,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:intel-xe@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:a
 ndri@yngvason.is,m:wse@tuxedocomputers.com,m:marius.vlad@collabora.com,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,yngvason.is,tuxedocomputers.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[yngvason.is:email,oss.qualcomm.com:dkim,collabora.com:email,qualcomm.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 5E3041D0B6F
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 08:20:07PM +0100, Nicolas Frattaroli wrote:
> From: Andri Yngvason <andri@yngvason.is>
> 
> Add a new general DRM property named "color format" which can be used by
> userspace to request the display driver to output a particular color
> format.
> 
> Possible options are:
>     - auto (setup by default, driver internally picks the color format)
>     - rgb
>     - ycbcr444
>     - ycbcr422
>     - ycbcr420
> 
> Drivers should advertise from this list which formats they support.
> Together with this list and EDID data from the sink we should be able
> to relay a list of usable color formats to users to pick from.
> 
> Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
> Signed-off-by: Andri Yngvason <andri@yngvason.is>
> Signed-off-by: Marius Vlad <marius.vlad@collabora.com>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/drm_atomic_helper.c |   5 ++
>  drivers/gpu/drm/drm_atomic_uapi.c   |  11 ++++
>  drivers/gpu/drm/drm_connector.c     | 124 ++++++++++++++++++++++++++++++++++++
>  include/drm/drm_connector.h         | 103 ++++++++++++++++++++++++++++++
>  4 files changed, 243 insertions(+)

It seems and feels that the common code to be used (almost?) everywhere
would be:

if (!drm_mode_create_color_format_property(connector, supported_formats))
	drm_connector_attach_color_format_property(connector);


Please mention somewhere the reason to split that into two functions.


-- 
With best wishes
Dmitry
