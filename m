Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EPzqHNxvpGnCgwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 01 Mar 2026 17:57:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 880BD1D0C43
	for <lists+intel-gfx@lfdr.de>; Sun, 01 Mar 2026 17:56:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16F4610E3E4;
	Sun,  1 Mar 2026 16:56:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="g7bYISNY";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZZlrROWA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EFE810E3DD
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Mar 2026 16:56:45 +0000 (UTC)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 61SH01ks3052055
 for <intel-gfx@lists.freedesktop.org>; Sun, 1 Mar 2026 16:56:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=eOVsPPjRSHguluqilN+Kykf3
 N9M3bR0DVUL4ZH0XYBg=; b=g7bYISNYlH4zm8Xc8NmJw+M0K5jMvJ5cjPbQXgbm
 bGMeZQy7zp6MKJDjrHG1fpDIjml8NhjImDmfW+kEkNkuk8P3xFLHN90IqHo373cM
 RW5Ndm3pzApXW5silQHbujFxwqjOsi7o42PFypVLnjOlH32AAIGkMYcU1z4FAhXh
 n9bbyOltX81FKyM+Ec7S4fznCBe/RqQqafp0KNFl6kNigll5bQBsL0XwZxmm1AH7
 5OYkZGlfPKuqgshdIAdW+rO0jDOUncXt3YNu1bSO5WZY4Kl1DWo/wmKwpwLodB6R
 uuIKygv9NTamdvEIi7PH5LbqSED44L5RgmBIIQyUW0La4A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksgru1gn-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sun, 01 Mar 2026 16:56:44 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id
 af79cd13be357-8c70b6a5821so2658716285a.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 01 Mar 2026 08:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1772384204; x=1772989004;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=eOVsPPjRSHguluqilN+Kykf3N9M3bR0DVUL4ZH0XYBg=;
 b=ZZlrROWA3fWA9bDFigL+iBEPASefvCxzGCqq3o/sJgRBYrxIOrK52Nw16MFf2WOHIO
 mgYBQ49UDznVeBx7jyMR0SjwqnEPSKH4At+NKAaGNbIhGoowAzrvzAaA50cetycvHRSr
 cPPR8B7Mz/c8jJ+uCQgXQ/AqX+HwZvPFQom0eS9pkmH4xinRYxZuKIzBYnl9bmfy2KH7
 sYEtnFcmUOktR+6bWSi3RBC+sC9Ub1+FUOFMWrSI2PaJMvOwA3OQxhh6L/s3C0rnlrLh
 K5wIlAKmYtw6ariwu/uHe1C8VZ34VUkKFv9+TrTKBr0UoTkK6+6YAmPEes/htssPJqJE
 dT9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772384204; x=1772989004;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=eOVsPPjRSHguluqilN+Kykf3N9M3bR0DVUL4ZH0XYBg=;
 b=ZB9ifX5AXL1hX4LxijMKm/Q6Il9wFq3BmLoCvX50qEwoOs/Gv43yiLTmfhJFqWt8d1
 ocn32r4eIfNHd1dOzChI9ILoAyNY0hBlUAO6yYYjYgjBq1yG8QEO9trzGfI8wl6zQAO5
 1Bqo+/h3b4K2y14XYmvmTjVp/qK39yQ0e5m3P8UgWwN3U5s73V82Yq7yV57qbWZKxMPe
 GwVDx+c8xwgyY3Nc/QCglBDKCfMjxIbr9fU5Bzy3pWvCYC9wnxIpdkkDl5EDC4DjIhSL
 nHlpWyn+fTMfvagffANHm9PT8TF8ch+cOWuOi9BD/EyAisses0hC3MesKlkgFGAuqu4f
 8cbA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV98QcZOcPg74OiXOrDrGxtIVkkfjd9Qg104CO47rnQAdDrjBhVPk8zrt1fJGqCjoPkLVztWZe96mc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxeafM/sZgUOA2t5kaqL4LVKXL4n2Y15FA9qYFbgTlTMvY6PzSf
 9UasEDDSt5Z0y0mUT9CZxvtveWPG/9HD6FCElTNiLekoJaBbaQdRIH6tDVMbzsDK+k8r5vjgwiv
 8riVQHL/bU1IuTGGDu710cN4lFAnoXpt3VICKbsIubVvZVm0jMVHCeSrWHTE944IcJOrlhpQ=
X-Gm-Gg: ATEYQzyllJkhNSGzszOK2I3KJ4IiiY2DSsd19ooyX3QNK6Dsq6hh7pn0hTil4amiYnW
 QzGy/Agy0o6k6jkbzBBDBtD08lAaaAAaKCZvyZTKM4T3Gnmf9gQSVci6TYYTy0WqEAHovaBQyfs
 nR6N/fE5lBEFZqjZNaBb+lBCCilQ5I6xGeV7293j7wqb2DcDQ7zsYOkA14hExZibzrgqMsHWSFH
 VDNxL6UouBxgkUlsXkDjYRgbbLSpyjBHAh9fBEu9ttOxRX6x1UbzkvYtEjrMmSI1PzPb7WUEKH6
 QRqJeNh11jLwx+cZDMyNxWVEIyGVq5cOmSUfe0dpkLJjj+0dwQ83oB8R/YPxvKw186GW+xIXxK+
 jVDCkyBNnyJA+LNgeNU6usFrVnIymCBNmfT6FUyX/ptAjG0COIJl+fq8fpWNPBmduXSU8z9xe6K
 gNDPQkUM6gDIN962C9P6F6q4TQPxWsHNZHguU=
X-Received: by 2002:a05:620a:40c5:b0:8cb:1c3a:90d6 with SMTP id
 af79cd13be357-8cbc8d6719cmr1207726185a.7.1772384203878; 
 Sun, 01 Mar 2026 08:56:43 -0800 (PST)
X-Received: by 2002:a05:620a:40c5:b0:8cb:1c3a:90d6 with SMTP id
 af79cd13be357-8cbc8d6719cmr1207721785a.7.1772384203394; 
 Sun, 01 Mar 2026 08:56:43 -0800 (PST)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a115bd9996sm1161185e87.2.2026.03.01.08.56.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2026 08:56:42 -0800 (PST)
Date: Sun, 1 Mar 2026 18:56:41 +0200
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
Subject: Re: [PATCH v9 04/19] drm/display: hdmi-state-helper: Act on color
 format DRM property
Message-ID: <ylcczadyx5ovc7lbb57ehux62x6zbawf2k2pd23ymkp2meaqci@fvrf5gserw7j>
References: <20260227-color-format-v9-0-658c3b9db7ef@collabora.com>
 <20260227-color-format-v9-4-658c3b9db7ef@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260227-color-format-v9-4-658c3b9db7ef@collabora.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAxMDE1NSBTYWx0ZWRfX3onmBPctjEH5
 TXD3wbgEZ0WY1ZKS27mOxnX5/Oqt7v50hdMelyYrhyua1E3v9C2luqzPTmVeRe9mjd/GmpG6zbZ
 0wdmxQLx+rr7zCsNEWkW6mz0S7vjINXvJoUtAqWadhKA7wiu0S9t2la5Z3FZwJZVE3VErAoBzHp
 bPh+Dr4wjCmxpxuEx/sMmCcUdl1cdfc/DXZQmBiQFzRk8cO4ww+870EKQiaceE+n5QMirj04pRb
 EczjmCL9/eRyAa555OsV4YlAf9/EBgkFjLcoHO/krQdQDjSnFndbW9v0o4ppUD74JROTVEAv9ek
 oZkQjdG6bBZk5WZQXFKicLA46PziAfQnOLO3sUPdnsMfnENxyib6l9bF9qOb2qnPlMUfAHurT11
 kb4JownXlGpZ380g0v00SL9zl3X1btE3p3a43vINzLq69QBAUoCrpnmoMfaJWlpren4Q5+9uTA2
 4WKVSBKTLsw0EvYvScA==
X-Proofpoint-GUID: 7g-mU-d3D-irk2U4fwjcYk0YC9MM-yBD
X-Proofpoint-ORIG-GUID: 7g-mU-d3D-irk2U4fwjcYk0YC9MM-yBD
X-Authority-Analysis: v=2.4 cv=Zqzg6t7G c=1 sm=1 tr=0 ts=69a46fcc cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=RMrH-QTV4azj2PXgkmEA:9 a=CjuIK1q_8ugA:10 a=ZXulRonScM0A:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-01_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 priorityscore=1501 phishscore=0
 suspectscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603010155
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
X-Rspamd-Queue-Id: 880BD1D0C43
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 08:20:09PM +0100, Nicolas Frattaroli wrote:
> With the introduction of the "color format" DRM property, which allows
> userspace to request a specific color format, the HDMI state helper
> should implement this.
> 
> Implement it by translating the requested drm_connector_color_format to
> a drm_output_color_format enum value as per the logic HDMI should use
> for this: Auto is translated to RGB, and a fallback to YUV420 is only
> performed if the original color format was auto.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c | 28 +++++++++++++++++++++++--
>  1 file changed, 26 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
