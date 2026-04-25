Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MItOI/Kg7GkhawAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2026 13:09:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F246466156
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2026 13:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DF0110E1B0;
	Sat, 25 Apr 2026 11:09:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="RJk2YCDy";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cPk0xvb9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 962E110E160
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Apr 2026 11:09:32 +0000 (UTC)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63P3Qq8K470912
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Apr 2026 11:09:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=skggYkTTFObHeIE3RudQp0G9
 1CjiRon2TwvgONrTWQQ=; b=RJk2YCDyCRrYvpfj7deR0E+7F40sA7ecy3s5LwuC
 JwrLO0+41LY8A8E8LR/ubgVCS5crHRH15ux1KKMvHODIbUrQADAzhDKgh7DgKvuF
 boQxjUCJyrrvL6yo7vKI5fZ2xQpzDowy54280huGdhYwzFB9c65HxxfKNPRI4dgf
 TzvtBwc/KZplZZc4LERPGuSZRVGn6F/7kMgsRm/Bdsa4aRalN+daxsXP7WUoJgWj
 bYrYOvtt7Z3WHlGDs8HW63uk9QF9uu+0o4W20QEDD2bTA4LKfF5OGr5Xv65hOcT6
 YIz1ZbrnMAen9tBpnWm8cneIfIV5cwOaJh3zaOUNqYsNPQ==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com
 [209.85.221.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drnq5rrn3-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Apr 2026 11:09:32 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id
 71dfb90a1353d-56f694e2ab8so7706806e0c.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Apr 2026 04:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1777115371; x=1777720171;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=skggYkTTFObHeIE3RudQp0G91CjiRon2TwvgONrTWQQ=;
 b=cPk0xvb9v5B+q9mJwj3Mma6RzZcgcfccHwNbEMvIYCI+GLZK0kXBnfHEn33MAo2So8
 LR92cE7iFL82ApU2gDxoo/3QYKRjtNafeS5z3plrWtdohHdnBM5ylQq0v2Sjh111i4nQ
 D6lDrr/NXroJbEvWu15xN4jFd6frjJHiYVb+tz0W/1EOKqy4lRprNsCZIdWtFBELXOl7
 07RIOkkIdqwEd17W5lggxqezfU8pO64+9lk2lNvXHLOskqJWC0kqcH3xGTxKvgoTwJmX
 sWFlz/KOXVuWDg3BsMOBloV9TZKyfWnafNiprpbZeZyM+bsabMGS8kDQUHxJ/9d7IPVY
 7gMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777115371; x=1777720171;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=skggYkTTFObHeIE3RudQp0G91CjiRon2TwvgONrTWQQ=;
 b=eqpdKlA3Cj38c0wO60C3xPKRI5UJBJC3bCjBVFU7thVbDNOwWH3zjPB2+pHio+bzsT
 pOYPxDSzhgMzu0omqz/yXv92M+n0It7hQ43rVFa7yAmKBN/UUvnbXtT4F2twD4xgfLWG
 wc7+uv6T4mdNHjRi8tx3ZOZ8N+fXDUHM+lKPBLVYi7fJ2eUPBcO7c+rHXVSgr7nDNVVX
 2Cp8V7bRVag08WLpZfwfG+lkFMnAivI5qaTcaQDp1M/xKK/6qI7PeZhJLvsK3VslaKIR
 dz/6YCxS5XAmvPrEWa/d7TXZoB0yYyH4fIUxYLww4wnxlfo+rivjaek65VcPtEv3Efc7
 czuQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8YIKf5LIK0vRRjvcbbbfmnxhrr1HyKIhS2U6fh51yOIXT1kQNMq2dMwPwlFfHIbwGzilPsNx6pJOE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwjGztqfS2NlkB5f0n1jDw3eOsHC5D8jkR5UEDhdAsmfc9e1X7d
 HcjRgQgNw3+pg0FfSogMdlDwDoVWIEb4OzZ2hqmgyxbSbNhpJEoLdOnJvSuYT8o0QmvGi0qFi3b
 /ZUmJ2PqmBiC1b6qLaoijPUeowbC9avpZw5CZrAWKTld+/il5+DC3alGMvE7RurgrVEzblRg=
X-Gm-Gg: AeBDiev+GGnwhxr5Bj+vMp0MQl+VMDNEHlM359vDgGZTWS8gjHUKckOU4Pgg+BbG5iG
 Q3+BDXdIwlXQzhhty+6u3VjHvHzewg/EKrwlx8Jbtg+09ym3YfFzIXnlOsqn4OAQZe3+D77/ec3
 BDkwcr+PlyLnY8XD/ZSNQKW2kvWuJRxVCXc0EQMRJr/7qRwcgB5aOc60xg4NNRbrNI0Ejnd3yJA
 Z8MhdWftTNrqRY2j5Waar5H6BbE0pTqN0Mjiu8wOIAXRLsOIvexd1GIN+7FhzfcepRNubkUhnWR
 tw0lw26MTjbYK/YSvVH028DRV9bbysIyax0oiCVflCK+GaTJeqdj/y8A6MOk5fD6ornEddqH+pf
 +LBk9hN0d4vd9UXPm3xaWpbmtPPnxqO19h8BYGapn/aZyO2rXfsVR+HHfbHSTP9EMuZs1LVUHZ7
 zMTPcMOis6MxpmPNbgNvZyWcO/o3bxacSEBjDAeHh4oml57g==
X-Received: by 2002:a05:6102:1611:b0:605:7a45:c7c0 with SMTP id
 ada2fe7eead31-616f70f0572mr17646757137.13.1777115371002; 
 Sat, 25 Apr 2026 04:09:31 -0700 (PDT)
X-Received: by 2002:a05:6102:1611:b0:605:7a45:c7c0 with SMTP id
 ada2fe7eead31-616f70f0572mr17646746137.13.1777115370439; 
 Sat, 25 Apr 2026 04:09:30 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-38ecb5f64ebsm50476681fa.10.2026.04.25.04.09.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2026 04:09:29 -0700 (PDT)
Date: Sat, 25 Apr 2026 14:09:27 +0300
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
 wayland-devel@lists.freedesktop.org
Subject: Re: [PATCH v14 04/28] drm/connector: Let connectors have a say in
 their color format
Message-ID: <5uit4utjrezpuqok36apjrkojaklze4ftgp2r4zrqolus7gkcn@nu2hsrhaj6zy>
References: <20260423-color-format-v14-0-449a419ccbd4@collabora.com>
 <20260423-color-format-v14-4-449a419ccbd4@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260423-color-format-v14-4-449a419ccbd4@collabora.com>
X-Authority-Analysis: v=2.4 cv=QNxYgALL c=1 sm=1 tr=0 ts=69eca0ec cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=vpl3xS56dgtxGFZ4nZMA:9 a=CjuIK1q_8ugA:10
 a=tNoRWFLymzeba-QzToBc:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: FaezPo1gG0RTe3vmtiT5C6oHVudWb1Wq
X-Proofpoint-ORIG-GUID: FaezPo1gG0RTe3vmtiT5C6oHVudWb1Wq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI1MDExMSBTYWx0ZWRfX7S0AydR7iVwE
 bhDOc7F+2s+Ojjk/hS3VjNPbWl5FjqqCd2RpyytlvVCZe1ZPiTgbwGhVvvCfUhDcfE6kXeaIzke
 e3fNMVayvMAYYOgFqeWsUSwjS9WuGSyoD1wr/yWE9X98lcXU5vHnlpZX2HdzEvQSfY9rixkzT/p
 CmjOwrqiunaYFbrTAexssNDlZqNN0CtTA1g8Ni8M6NRBVBV93B7JkPlFUk+nAQGfkz4PhhmOyxJ
 3YDjh3upVc2UWpg7mbOEV7YF1woQMf5tZGkI3ZF3WIS7cRyD6+u90qK87EVpvQjJ6flbUUi9hIo
 x9H7iSBFccJUMTcI6QfGxZFhs600zv1NfVwXDjGG1YfQf3XmhMQNGOGz5Txn+875aGYzfhXXDn6
 F1pENtC84W8G8wtROxzhVtPzgyq0Bqx9+Z8rejC454wLthHh6DMPfsmeTjLP+DwV4oRdsbvSKqa
 KhRz0edaxryh4B+XedQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-25_02,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 phishscore=0 spamscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604250111
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
X-Rspamd-Queue-Id: 3F246466156
X-Rspamd-Action: no action
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
	RCPT_COUNT_TWELVE(0.00)[39];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:nicolas.frattaroli@collabora.com,m:harry.wentland@amd.com,m:sunpeng.li@amd.com,m:siqueira@igalia.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:lumag@kernel.org,m:s.hauer@pengutronix.de,m:robh@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:kernel@collabora.com,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:intel-xe@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:w
 ayland-devel@lists.freedesktop.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:email,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim]

On Thu, Apr 23, 2026 at 09:03:27PM +0200, Nicolas Frattaroli wrote:
> Add a function to get the connector color format from a connector state,
> and a new function pointer in drm_connector_funcs to allow connectors to
> override what connector color format it returns.
> 
> This is useful for the bridge chain recursive bus format selection code,
> which does not wish to implement connector implementation specific
> checks like whether it involves HDMI.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/drm_connector.c | 16 ++++++++++++++++
>  include/drm/drm_connector.h     | 12 ++++++++++++
>  2 files changed, 28 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
