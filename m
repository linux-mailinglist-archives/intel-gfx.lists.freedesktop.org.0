Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FIhKtEf2GlaYAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 23:53:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0A63D00C3
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 23:53:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4393F10E0CE;
	Thu,  9 Apr 2026 21:53:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="GmT673w0";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ko835XX1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D9B610E02F
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 21:53:15 +0000 (UTC)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 639INaON3352625
 for <intel-gfx@lists.freedesktop.org>; Thu, 9 Apr 2026 21:53:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=hu81u8EXPjFrB34GvSJW9iQw
 sEy8qvlO31eh+EE0xPg=; b=GmT673w0E/j1Q74yC99wb3ajRMSsRLbCbIHUvSVP
 uamrDGeWDu5NNk7G6tKX8jeB37nxu/H/C06C/S4yCJruDmrKx+ZLLLzPg3mclIP6
 mSJmy3eZbHxVhMTwbP7fc/ATus+LU4btxJZkNij0IJGfTBasR8eTPtdAYkhavNPk
 uRKgkE5/rQgpoYqNzOSkZrgr4DDhAZjoJYhMnELo5gQPSmcJA20p5gYGBIOs/rjO
 DxahXh/NChmF8HdNyZIHzJDRHWzU05YKF8KSlIsWptwTNibxjz92qddG+8mnXzev
 ypT8gPTdbW/WfZSg6miimVwvQCD63qVuSXz0MZsGx0OBcg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dec1qt0xa-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Apr 2026 21:53:14 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id
 d75a77b69052e-50b4ca7e7c2so28931671cf.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Apr 2026 14:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1775771594; x=1776376394;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=hu81u8EXPjFrB34GvSJW9iQwsEy8qvlO31eh+EE0xPg=;
 b=Ko835XX1S2JI6/dCKWM225Wvj2Tep44IGJMgUkBS3FJqhzLS5YKOwWMbSyhWpvoJCv
 hddWrB4PUrTThCzK6chEQ2bf2evOZVq1hJpwbiTVMgHIKToNz46sLrQnkhKjqPjZT4LL
 7WGN1ZORuSTH3DfkpX1RKjfoDPVUOFuwZlo8yRQ/pTwI0eTTOC9bmGx0ab4hUNk7xL1I
 PlrcSphHGWkBDeSXQmIssQRO0myYg6lb+tfq3rJnVKS5xSaOExs5Nbec6U8F23Oe9V8O
 878aFGXK8n3Hy+48EKHTTgcNBh0wSi6CU9SX0juRSA9LLnyfWDC0jFD0OBjechQHZeOM
 Yaiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775771594; x=1776376394;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hu81u8EXPjFrB34GvSJW9iQwsEy8qvlO31eh+EE0xPg=;
 b=be4n+lRVbAB0dsSc7y5dEWtXn7VlMC2FrGC2n3P2S4i3g3OIHCTS/cURcFNB/MPIrG
 QiJg1d+9ldJ0/aID2uVAumJY2aJ3QyT9PacE38ndDlHTrl5S31chy8hJBiIAvq6fCV++
 kp9YkwTWlWELGdBIR3+UIVYVrAdj3LKuECwYRfbxrvoobte1ShkP9YzGOiQ1Xt7YwlHQ
 gidlDc0PhV1UmyUYHgHLbC3qnU0JPjQursJuRW/16Qw2p5EhsJIWkWDMc9+Tol+IW4oB
 yhQBHUK1U33vmgDiC8VOlOy0w9xUW13oQNv2ONI9QPXi6xk02TiQ9XZgCw0GSXibzMiu
 zuqg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVMYroUPYNzAWKklrpPmfO33L1EoAPzzdP9jEBvr7MgeXjLsAeqYXjTLTtFKpE/hC5gEvxjqVrDjqU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwAPw5Gru3JALv0v0v3i1azsxLMJZbir2eXQsyQNGXBInXsAeY/
 rWl6O7z0p8xemX+Fzg+t327o+8aseOAB3pPzzbstBhDOfuOX98FYUhO0Uqo36YuctVQm6lM70YY
 pTMrPkISEVgkFsY9r1b9iwI/++v8fnW7L4fZfaw6UN+k+hGQy7fpDVou0rrJAgCSm4NvShS8=
X-Gm-Gg: AeBDieu2UdW03hWzAvqQioD1CmdXN4OFBbKgI8LbPUhGS6TXZ6XIuqD778AcP3pn83k
 MKxj8e135LXCVTUZ+h0zNjsz4UH6BWM4gljHnmFsqOlyLHWRFUxadn2j+azDdw9YEvWop4cdhK5
 SYHsbksySGAcfsRsRFFqwbQywfXTQs5pk0AcJR0+W2h9F+RwkboM89SRZ8N26xcfwjkJg5rPaJs
 QDXwoaaFgoKjxmsFJQWYo42z4cHk9hKpJ8YzDWmYoLpZK68RFkAqKpQo/xy/apK1j1drIgZQmJZ
 Zq+AFD3AhhUDtKj+LcCMStGvvmHH+/3UKaUrizSziz5/g0jUCTx+gfLuIm4xRbV+GCPtTZ6Qn+v
 vUKCc7xT5AHkFjdGrv5uifGiAuNz6SMCZP22pzE+cSKXccDuS2cjTzoYJju6lsbc121NAzzSpeF
 Id3bDLTBloAJSEvvO6Z85b3cuQ0NduSOcVOOU=
X-Received: by 2002:a05:622a:9:b0:50d:7b0c:35de with SMTP id
 d75a77b69052e-50dd5c74756mr15755461cf.44.1775771593979; 
 Thu, 09 Apr 2026 14:53:13 -0700 (PDT)
X-Received: by 2002:a05:622a:9:b0:50d:7b0c:35de with SMTP id
 d75a77b69052e-50dd5c74756mr15755051cf.44.1775771593478; 
 Thu, 09 Apr 2026 14:53:13 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-38e49298f1csm1971861fa.12.2026.04.09.14.53.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2026 14:53:11 -0700 (PDT)
Date: Fri, 10 Apr 2026 00:53:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Dave Airlie <airlied@redhat.com>,
 Jesse Barnes <jbarnes@virtuousgeek.org>, Eric Anholt <eric@anholt.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mark Yacoub <markyacoub@google.com>, Sean Paul <seanpaul@google.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Simona Vetter <simona.vetter@ffwll.ch>
Subject: Re: [PATCH RFC 09/12] drm: Introduce drmm_connector_dp_init() with
 link training state properties
Message-ID: <gmaxonri7y3k43pxsnxfnd23mydgrwsw2322v6m4yjoksqm7aj@4ehgvhzg2ubb>
References: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
 <20260409-feat_link_cap-v1-9-7069e8199ce2@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260409-feat_link_cap-v1-9-7069e8199ce2@bootlin.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA5MDIwMiBTYWx0ZWRfX0ngw1qKDEAK+
 0xWHXNrPc0s5r5XxqG/c/0H/3j/y9fqP/385wyCweEV0sHGyuGqKg0ieB7zdZflZKM7rRrHxhCN
 pMIncutV7ynpdmM5DpSmQBAXLb5U3MxAjdqREFcVSLkx8joT20HjHaGL60ufb8HMmvj+pUdn4jC
 DfIZxi1ugi/K8FJB0BSo1RJXBPIzUnPZPtxPDthrX4Vb9vZ4puqb9/zeQ8TL/3uNkA3wZ0XcP6C
 DI4REUG0K4+DpEorqSmL5p4HJPGMVSn5omfEmWb0mg7XNpEHXTv7oOyTeXL0J6/hunCuawac8Zl
 W8/HEMCENIN/xWC/PATbU0jsBGPBpzzB5CxBWkyPM/acuPfO3gXDv4EhXi06JdxB6IsPAm1LQIB
 fWtQJ9rdnXovnQbUbFYvYZtUg9SieKv1zwjSpOEEAwSaSfCFSg+sfpd1GNoYC9lQatGvsq1w9n5
 w8dhrvCXZxHEzxS1YMw==
X-Authority-Analysis: v=2.4 cv=eOcjSnp1 c=1 sm=1 tr=0 ts=69d81fca cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=P-IC7800AAAA:8
 a=E-m9dlAQy1ysB7IIWEIA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-GUID: pXriOSsCS15kpa-GfohXnomIPbZepsCD
X-Proofpoint-ORIG-GUID: pXriOSsCS15kpa-GfohXnomIPbZepsCD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-09_04,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0 phishscore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604010000
 definitions=main-2604090202
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
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kory.maincent@bootlin.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:airlied@redhat.com,m:jbarnes@virtuousgeek.org,m:eric@anholt.net,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:chris@chris-wilson.co.uk,m:thomas.petazzoni@bootlin.com,m:markyacoub@google.com,m:seanpaul@google.com,m:louis.chauvet@bootlin.com,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:simona.vetter@ffwll.ch,m:jernejskrabec@gmail.com,m:matthiasbgg@gmail.c
 om,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,redhat.com,virtuousgeek.org,anholt.net,kernel.org,suse.de,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com,chris-wilson.co.uk,bootlin.com,google.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,oss.qualcomm.com:dkim,bootlin.com:email,qualcomm.com:dkim]
X-Rspamd-Queue-Id: 5E0A63D00C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 09, 2026 at 07:08:25PM +0200, Kory Maincent wrote:
> Add a managed DisplayPort connector initialization helper,
> drmm_connector_dp_init(), modeled after the existing HDMI counterpart
> drmm_connector_hdmi_init(). Cleanup is handled automatically via a
> DRM-managed action.
> 
> The helper creates the following immutable connector properties to expose
> DP link training capabilities and state to userspace:
> 
>   - num_lanes: bitmask of supported lane counts (1, 2, 4)
>   - link_rate: Array of supported link rates.
>   - dsc_en: Display Stream Compression supported
>   - voltage_swingN: per-lane voltage swing level bitmask
>   - pre-emphasisN: per-lane pre-emphasis level bitmask
> 
> Link rates are passed by the driver in deca-kbps, following the DRM
> convention, but exposed to userspace in kbps for clarity.
> 
> Two additional helpers are provided to update and reset those properties
> at runtime:
>   - drm_connector_dp_set_link_train_properties()
>   - drm_connector_dp_reset_link_train_properties()
> 
> Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
> ---
>  drivers/gpu/drm/Makefile           |   1 +
>  drivers/gpu/drm/drm_dp_connector.c | 344 +++++++++++++++++++++++++++++++++++++
>  include/drm/drm_connector.h        |  38 ++++
>  include/drm/drm_dp_connector.h     | 109 ++++++++++++
>  4 files changed, 492 insertions(+)
> 
> diff --git a/include/drm/drm_dp_connector.h b/include/drm/drm_dp_connector.h
> new file mode 100644
> index 0000000000000..77d2f4bb6df68
> --- /dev/null
> +++ b/include/drm/drm_dp_connector.h
> @@ -0,0 +1,109 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#ifndef DRM_DP_CONNECTOR_H_
> +#define DRM_DP_CONNECTOR_H_
> +
> +#include <drm/drm_connector.h>
> +
> +#define DRM_DP_1LANE	BIT(0)
> +#define DRM_DP_2LANE	BIT(1)
> +#define DRM_DP_4LANE	BIT(2)
> +#define DRM_NLANES_MASK (DRM_DP_1LANE | DRM_DP_2LANE | DRM_DP_4LANE)
> +#define DRM_DP_VOLTAGE_SWING_LEVEL_0 BIT(0)
> +#define DRM_DP_VOLTAGE_SWING_LEVEL_1 BIT(1)
> +#define DRM_DP_VOLTAGE_SWING_LEVEL_2 BIT(2)
> +#define DRM_DP_VOLTAGE_SWING_LEVEL_3 BIT(3)
> +#define DRM_DP_VOLTAGE_SWING_LEVEL_MASK (DRM_DP_VOLTAGE_SWING_LEVEL_0 | \
> +					 DRM_DP_VOLTAGE_SWING_LEVEL_1 | \
> +					 DRM_DP_VOLTAGE_SWING_LEVEL_2 | \
> +					 DRM_DP_VOLTAGE_SWING_LEVEL_3)
> +#define DRM_DP_PRE_EMPH_LEVEL_0 BIT(0)
> +#define DRM_DP_PRE_EMPH_LEVEL_1 BIT(1)
> +#define DRM_DP_PRE_EMPH_LEVEL_2 BIT(2)
> +#define DRM_DP_PRE_EMPH_LEVEL_3 BIT(3)
> +#define DRM_DP_PRE_EMPH_LEVEL_MASK (DRM_DP_PRE_EMPH_LEVEL_0 | \
> +				    DRM_DP_PRE_EMPH_LEVEL_1 | \
> +				    DRM_DP_PRE_EMPH_LEVEL_2 | \
> +				    DRM_DP_PRE_EMPH_LEVEL_3)
> +
> +/**
> + * struct drm_connector_dp_link_train_caps - DRM DisplayPort link training
> + * capabilities

Those are not just link training caps. It is more like DP link caps.
They make sense to be a part of the DP-related drm_connector part.

> + */
> +struct drm_connector_dp_link_train_caps {
> +	/**
> +	 * @nlanes: Bitmask of lanes number supported
> +	 */
> +	u8 nlanes;
> +
> +	/**
> +	 * @nrates: Number of link rates supported
> +	 */
> +	u32 nrates;
> +
> +	/**
> +	 * @rates: Array listing the supported link rates in deca-kbps
> +	 */
> +	const u32 *rates;
> +
> +	/**
> +	 * @dsc: Display Stream Compression supported
> +	 */
> +	bool dsc;
> +
> +	/**
> +	 * @v_swings: Bitmask of voltage swing level supported
> +	 */
> +	u8 v_swings;
> +
> +	/**
> +	 * @pre_emphs: Bitmask of pre-emphasis level supported
> +	 */
> +	u8 pre_emphs;
> +};
> +
> +/**
> + * struct drm_connector_dp_link_train - DRM DisplayPort link training
> + * information report
> + */
> +struct drm_connector_dp_link_train {

THese define the current DP state. As such, they definitely make sense
to be a part of the drm_connector.
> +	/**
> +	 * @nlanes: The number of lanes used
> +	 */
> +	u8 nlanes;
> +
> +	/**
> +	 * @rates: Link rate value selected in deca-kbps
> +	 */
> +	u32 rate;
> +
> +	/**
> +	 * @dsc: Display Stream Compression enabled
> +	 */
> +	bool dsc_en;
> +
> +	/**
> +	 * @v_swings: Array listing the bitmask voltage swing level per lanes
> +	 */
> +	u8 v_swing[4];
> +
> +	/**
> +	 * @pre_emph: Array listing the bitmask pre-emphasis level per lanes
> +	 */
> +	u8 pre_emph[4];

Please consider following struct phy_configure_opts_dp (or using it as
is). Overall, please refer the talk and (more important) the lightning
resumee at this XDC. I have some bits and pieces ready in spite of that
proposal, but I didn't have time to finish it.

> +};
> +

-- 
With best wishes
Dmitry
