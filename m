Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPnONpef7GmtagAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2026 13:03:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E8E4660F2
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2026 13:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD20710E416;
	Sat, 25 Apr 2026 11:03:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="buxnuiWL";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IQtrilPm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 979A810E156
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Apr 2026 11:03:48 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63P4dkMq1555660
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Apr 2026 11:03:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=NGyE7KsIgE1iCIP7BFttRF0t
 KByHvA43U+zOtPNKwNs=; b=buxnuiWLQj2/Up9fdROOm92md/+ciO6Vm5XkOt00
 bBiFLPIEta5evStIw1TWwS3cQox2DW8qE1rvDaOJ3G5rbEO+CPyV9uW/NqCy3rq2
 NxW6VyEUFmaZntlnlgL3G2iCEkfn8ynKqlQrPc4ut8FZQy7JPr+mckAf/BtohmQK
 G2MUjUwP5Ob1v2vgrr0AdKirLo0DrUu+SZsN/DI0JU7GX7k+FCrTY4JilBMmT4eo
 Nq/Wwav4JPuYvldw418/mpwjLsTyVhP3HP9LnjuLnD4kLtAyGyCb0x+PYbZkpakR
 2jPJXqZnLBhAWmJiGZ9wcieiQKA/SNG/XbjdMeRT6MtCHA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drpsgrmmw-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Apr 2026 11:03:47 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id
 d75a77b69052e-50d8e8c47a3so232529221cf.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Apr 2026 04:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1777115026; x=1777719826;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=NGyE7KsIgE1iCIP7BFttRF0tKByHvA43U+zOtPNKwNs=;
 b=IQtrilPm2LmK10HMfynBCeF8jIjVHjfw1/PfhkmivDP6wukQjaCK9q78M7uMeG/FZC
 hZmXP+qgdrA/jSEJSDX1MkODB8JD+4fxcv5+3P0dkwdE6PXLBpgWWQeR6uDszVmQpf+J
 mQ+fkp9giS1nnUsh/oaEN5Nj1xJIeMXTMS2G9xmeimZneuk3ibeN5TFWQGFM7Yh0KEPy
 YfSRGcW5RPiGGojr3vi0wYcG8VGBm3eEvMcU7o+jVNMsBQX+UWk+WT8fncoV+SqKvBPE
 ozZIe7Dt/7QehVbTp82NBqYLxgHNBBvXy8CftafSSuK2deNOzQcZ/WDmPcY1f8iT1MNc
 KJBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777115026; x=1777719826;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NGyE7KsIgE1iCIP7BFttRF0tKByHvA43U+zOtPNKwNs=;
 b=sZxHcoy1ibmnpVdiNNDrWBd9ws4voL5uskcqmHLGPTaSEVH7EFEN3wox0BAYZfk++L
 yiN9lfecSXu7tkg1SV+fDoyXDyOEAGErb/N9FS4nUYkwpn2l/R0hZr61is/+lp+9Do1s
 lSKNZquf8ZR7pLd4EMMaGqHzoRIYuhrmZvNEHbVIsMIkenkvWsjUFgH7LV6U6zRCCuv/
 Y1c/Lr+f0JzaBwwHQ0i+cTUPNHjXs8amMImv35IlWcM4iXFC0d1H3OFBWi/QC20aVxT7
 H23AY6w2OAwYLNYw/IYrUO6J+yfST0rpXcYPJ5Dfse7rFotlASn9qQn39CwatnZK5Ivu
 Hs1A==
X-Forwarded-Encrypted: i=1;
 AFNElJ9E/Xdv4enWZ0zfVUDG5W9/Ipjw0aZiahR3JSlQ+YH/vK51FSPqFa3BMGwUxACdTUAxOBeEthXO1Bs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwbKjdVzoQsQshyYjpqFkY5l2ZK2k0c9ol9ha1Bpyr9lQWAQzOk
 GczczAgOc9zFQ0Pw9FXFPRtBJcpBlSJmH4fGWxOiGRMfd6TZD3a9smmj0dlE5RoS9xZwiCDUWwG
 W03lTX51Kmz9VAiyMyBG3Yq9ystrtYEXlBruBEjXP8kRNXVP0oG7wQ2gli0t7OCreNbH1HjQ=
X-Gm-Gg: AeBDietTUUWh4JXrYx261ECW3yzKZXy2UnmPs2WmwBbgJQoD7uEe7ZVT5xe5BhIDFTn
 WkahLnvinNooP+xj0nWPznfzYD0jmPKJpW2zoV+969YypC4u28qtCc1y6aKG/CVSuj/MGA0TgB9
 F+NSe9Jjxmkkb68CP/qgWjt0ea1d/sO7oAPebOcpY/ke2KRarVP6D2dFnJbstUxntCg0stBFAgA
 4WXEAIhHhGDJyQdhIEGcmfDBEOm02TY581qcyN0csOsqSTNx+xty+eLiXwTmXc8jVGLXsBA9vKR
 TjYjZVC91S/10n9YjzBaMNzCu0gAgH9/Uuj4VeISXvYtJV3cHJRJwPf0vLB5VxlAQxrLqJvfXxr
 BEf5OLsXzgRAVI4Xs7Gxy8HshUjRYiMRUHza9uXQ6R2voXpPRVGiBIfvDSnDf3V8jwqZosSDrXT
 Hmp9qC69QRy9KW+d/BiJ7bcuo8d5uFZb1LMzLvtg2QvaBSOg==
X-Received: by 2002:ac8:5f4d:0:b0:50f:135e:d68 with SMTP id
 d75a77b69052e-50f135e1259mr360464531cf.58.1777115026543; 
 Sat, 25 Apr 2026 04:03:46 -0700 (PDT)
X-Received: by 2002:ac8:5f4d:0:b0:50f:135e:d68 with SMTP id
 d75a77b69052e-50f135e1259mr360464161cf.58.1777115026099; 
 Sat, 25 Apr 2026 04:03:46 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a6335ce587sm2078590e87.70.2026.04.25.04.03.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2026 04:03:45 -0700 (PDT)
Date: Sat, 25 Apr 2026 14:03:43 +0300
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
Subject: Re: [PATCH v14 06/28] drm/bridge: Act on the DRM color format property
Message-ID: <e3lpzsodpfemx62ye2rshiq7xnexiihzwxtj5ouqddxip5xnxo@q75ujeicb5p5>
References: <20260423-color-format-v14-0-449a419ccbd4@collabora.com>
 <20260423-color-format-v14-6-449a419ccbd4@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260423-color-format-v14-6-449a419ccbd4@collabora.com>
X-Proofpoint-GUID: 3wgZB0p2evY56UgoPdomg2vPFKEqkuaV
X-Proofpoint-ORIG-GUID: 3wgZB0p2evY56UgoPdomg2vPFKEqkuaV
X-Authority-Analysis: v=2.4 cv=Y+fIdBeN c=1 sm=1 tr=0 ts=69ec9f93 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=zO9H7474j3G4b47APuEA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI1MDExMCBTYWx0ZWRfXwJMKuUpAvi2x
 JBUvqU44lXQZmICt34jOqu//EL+cqL4bACejQMc36wdwXjflLLH4jJ9hvMSsIJDUj6nsEN+J7Y5
 IPnVx5pIFcfPEdqAvoL6FsMmx3Way8YpjDbiJGxCTLjpCm7k2X3x0w6dRCbqxtRrXNX6vSC6qOI
 hjFp/JaWTSwMZu6S6bifnfu1V5LTzQROlW23fIfxb/IyiNWc3w9MJUE1jXIGCZG/ObqBM4Ef9xq
 5Sd8uE7VW/E7cbRlbyDiMFyy7Ius7Q6UuwXyb1VLIj4jpkGjml4gS9MI2GqjtmQzinB7jSbALsf
 yQmaIrdN3MwSgQW77iglgtlE7gE7CAsned2IEWyXwDufnArFwShk3rJzO06sZEtW+AHP3I3gi1u
 j5XJobeXCvkOyjPihtxG5DWGYBSYFMmdr/LrAVujd2Am4WbUgIjBQ7tfyYKmZM6ijbwrV0G3uXy
 WogWr9Rpw/JUH/QR8ng==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-25_02,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604250110
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
X-Rspamd-Queue-Id: 88E8E4660F2
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
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[39];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,qualcomm.com:dkim,qualcomm.com:email,collabora.com:email]

On Thu, Apr 23, 2026 at 09:03:29PM +0200, Nicolas Frattaroli wrote:
> The new DRM color format property allows userspace to request a specific
> color format on a connector. In turn, this fills the connector state's
> color_format member to switch color formats.
> 
> Make drm_bridges consider the color_format set in the connector state
> during the atomic bridge check. Call into the connector function to get
> the connector state's connector color format. For bridge connectors
> including an HDMI bridge, this will make use of whatever the HDMI
> implementation set as output formats, and AUTO will never be part of the
> rejection logic.
> 
> Reject any output bus formats that do not correspond to the requested
> color format. DRM_CONNECTOR_COLOR_FORMAT_AUTO is always accepted as a
> matching color format for a bus format, meaning that non-HDMI bridge
> chains will end up picking the first bus format choice that works, as
> has already been the case previously.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/drm_bridge.c | 64 +++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 63 insertions(+), 1 deletion(-)
> 

Nice, generic and easily reusable for DP!

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
