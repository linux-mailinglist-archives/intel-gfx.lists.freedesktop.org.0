Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 3R52DNQb2GlSXwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 23:36:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C64B3CFF72
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 23:36:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4FE810E091;
	Thu,  9 Apr 2026 21:36:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="kOA4YSqW";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eWKJEQxb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A027F10E091
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 21:36:15 +0000 (UTC)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 639ILkBe3352573
 for <intel-gfx@lists.freedesktop.org>; Thu, 9 Apr 2026 21:36:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 TkJRO6Oo2pp+w//8GQnSgMgSzv0FXnFgaEUwgsNX1S4=; b=kOA4YSqWunwDnBf7
 PZEsJ4gRm6TFadnMermJIbJp9qe4l0tJMan+tjJ7C5KdmtduGZQzJjQJHHjaxNeZ
 o8qFJAwB9GlGMdjgGzNoVI0Uz1OLAPUFl2pChxXveCHHZiwuvliq3Oivjx1iTD/y
 Lyw1/v8ADl3BsfOHtd+bV2SlJc0UznsdZP2ySJfeiRCgF/8csU0oAuFVDflZrvTB
 XkTi7O2EM6L1ifqceIEVmZTK2f7P2BzGWaK/JlJDF1+NkjxpzJ+6E055M/Br2KET
 i1Yy3fwJNRpt8GS2EwNDYxGYwLJS0dn6PfBgk2D/Bo6BETBfnqmvVVJCShGiG9B2
 7HR0IA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dec1qsyu2-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Apr 2026 21:36:14 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id
 d75a77b69052e-50dd17a71f6so8743751cf.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Apr 2026 14:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1775770574; x=1776375374;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=TkJRO6Oo2pp+w//8GQnSgMgSzv0FXnFgaEUwgsNX1S4=;
 b=eWKJEQxbRjxzYO/EdWqQFtChyWf+jD8Kutq9xsOapjA2lTowuWFK++lL66mDwKRe4y
 030PrrRO6O7tn/tm7UsFra23MP0Q59ISIObAfJOoBMQhtXwraOKhjX/pRvEWRdcT97hN
 hT+vV/borv8XPjpyiGtd+Va+LoK4UbpFtHt/7EJgVOjC0RqQ4WjsELI2F2FQhJuF8Q3K
 5+xFqz/QJ1NS9eqTfq1D0KiUj4PBcsuGFybJYhIAaPxucu4+0hn5RLiqUjG6zinBq0dn
 uB7LfQaRRu9HuqXP22QLQdi01ewJ+rYAci5/Q8B+cjYcoP6y9TBz5oqB74WKlSTl/Jp1
 Av2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775770574; x=1776375374;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=TkJRO6Oo2pp+w//8GQnSgMgSzv0FXnFgaEUwgsNX1S4=;
 b=Zmo/eW1EATs6WhhjFDd9w3wf38HP2VEHv/cTCFMFYrJcuBxmPtNh+8YooLhi1C4tQ5
 QCSx+9cAeG2BMcKWSu9a4eraaVzG0r5YaQAP/We3moF2A8jWI1YZXW+4cu3du0wNzN+E
 GEmGlWM1yf491/WatqfXYiTQhHQnU0tJoMLJ6aro+sUsZvHF6lKMxoKJLh7YG69aXewl
 kJMpKU0wzsCi6/0RQY43qz6Qxn4P9TEFNgkE+20aEIarso/VLJINgWGpADIV+VI2cSmm
 f0jSHOdNde7cpfuPLTqnkavEBYWbd27V51Q1jH6/BWiKVR89EfMmtJ5BgXs3/Ew68lpN
 SWEQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV171GschjbV7K/Ye4viqYKtH0O8Pw2xBLg/kGTAepT3EX5CQsQU+6BNjnMsLDYgaBGh0EdqHbDDk0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yyh6mrnZS9jLDw/gs3DVo32VboiukxPZDbybUlhtPQojxlpk8Bp
 q+wCy3GMGnrhm3uEWmevMQi1zrAZJz2D8z0QVJwz13yfVGMDFOScEvUigCVcHlWTLyiiXceOI/L
 Ex8vPtxaPq/GTeTKnH1psQCwjjMXsTpTX+j2AcEphT/cDd0Rwqvh3fyNGulzAbPygGDW5Jss=
X-Gm-Gg: AeBDiesvYwlyKwflF5vNaqELqAZLvQvW5fZ5fSeVo8VLNrWAUcB6ok4ZUBJ0RLK0RPe
 ObCyFcnZH3N5Pc96fdwcBdxZSLv0dnGqGh/GwMMW6eWqDA9qMQ3/MHhZyR98yojbttFlOXLdbt9
 h97J53GDQJ6i9sWQ89UUkBA0onaXBoSk15QCw1lnBpSglAKPNS2LGYPgHL0DH02RyxQ6rLWyi0X
 K3Hs1dFWAvz4QIYjcFRQ72uA/+HupSt0mh1KknT2J5/hoS6nBORH/XaY+nAdwuE7lu+4j/90UtV
 dZSGp1XcdKZIWkiFyul1/vD8BNUeiKvwVS1pzvOVvl/GU9nzvLsKKsIEZ98qcVY0HoBsnPvORKT
 821YOw2r/+j4CUuMYIryoT/xW5NkdQRDkXHoFYDOzfV0P+ZswHjDiw7mY2XL5AqdMzvu27Ola4d
 smfeaSJjadFDelkQGhoavDhwdvN+9lHDEx0eI=
X-Received: by 2002:a05:622a:8305:b0:4ed:70d7:aa5a with SMTP id
 d75a77b69052e-50dc1acdc38mr55450981cf.25.1775770573996; 
 Thu, 09 Apr 2026 14:36:13 -0700 (PDT)
X-Received: by 2002:a05:622a:8305:b0:4ed:70d7:aa5a with SMTP id
 d75a77b69052e-50dc1acdc38mr55450611cf.25.1775770573510; 
 Thu, 09 Apr 2026 14:36:13 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a3eee86784sm174147e87.8.2026.04.09.14.36.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2026 14:36:12 -0700 (PDT)
Date: Fri, 10 Apr 2026 00:36:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Kory Maincent <kory.maincent@bootlin.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
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
Subject: Re: [PATCH RFC 00/12] Add support for DisplayPort link training
 information report
Message-ID: <u4ononk4cpccx77gvlywtfen5rmyslvr72v7olkhdrjf65aqce@xo777vofhcan>
References: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
 <adgNxaFhbQaxC5E_@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <adgNxaFhbQaxC5E_@intel.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA5MDE5OSBTYWx0ZWRfXxDAHKwO6Rplf
 SZ6bL0L1YhdE1o20ihKlnMswXAhCgCeslTorNcHlDiLD1MK4YEHCtmBjXim07dq5PmAyZENuy61
 kwpesf9YTXX+NdT6Teb9zamSQGns2GmUkx1V+afpx/YKi6DjnMv3MvfnSFqtbB4O8M6Xl3nrZz6
 +qHd34SHueoVyohNVfG9DRDA8JS1xgTzCCAJ3c8sphz7GZOyrcK22qHYk6j8btOWJXkjYyy2Lh2
 q/JztQbjkvJRFxlPh82c/N/J9tz540qvM3J8Q7OJQ51WEjDbPNy7TMlmXhYgIql7PlxWB0gzLoy
 tmGBB3T9v+yY+AXOihoY4NIZvBi+QB7G7PobkY0BDS0bCguDVTGLestqx53sSRpI6O/9O86lasn
 oFXEKhj6CePUJyeRZsIAC4kLB56eDVdbOAzZ3NY10l75WiLQGldgYG917a1fQPrzPicV28R4YHJ
 5ON3Oa1AEsibVY+Tidg==
X-Authority-Analysis: v=2.4 cv=eOcjSnp1 c=1 sm=1 tr=0 ts=69d81bce cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=F7xsp-YMIWaRqylmYmQA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: Ck1f0weLurUtDJ3RFn_cvt8TsxxKyMnG
X-Proofpoint-ORIG-GUID: Ck1f0weLurUtDJ3RFn_cvt8TsxxKyMnG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-09_04,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0 phishscore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604010000
 definitions=main-2604090199
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
	RCPT_COUNT_TWELVE(0.00)[36];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:kory.maincent@bootlin.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:airlied@redhat.com,m:jbarnes@virtuousgeek.org,m:eric@anholt.net,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:chris@chris-wilson.co.uk,m:thomas.petazzoni@bootlin.com,m:markyacoub@google.com,m:seanpaul@google.com,m:louis.chauvet@bootlin.com,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:simona.vetter@ffwll.ch,m:jernejskrabec
 @gmail.com,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[bootlin.com,linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,redhat.com,virtuousgeek.org,anholt.net,kernel.org,suse.de,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com,chris-wilson.co.uk,google.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,oss.qualcomm.com:dkim]
X-Rspamd-Queue-Id: 7C64B3CFF72
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 09, 2026 at 11:36:21PM +0300, Ville Syrjälä wrote:
> On Thu, Apr 09, 2026 at 07:08:16PM +0200, Kory Maincent wrote:
> > DisplayPort link training negotiates the physical-layer parameters needed
> > for a reliable connection: lane count, link rate, voltage swing,
> > pre-emphasis, and optionally Display Stream Compression (DSC). Currently,
> > each driver exposes this state in its own way, often through
> > driver-specific debugfs entries, with no standard interface for userspace
> > diagnostic and monitoring tools.
> > 
> > This series introduces a generic, DRM-managed framework for exposing DP
> > link training state as standard connector properties, modeled after the
> > existing HDMI helper drmm_connector_hdmi_init().
> > 
> > The new drmm_connector_dp_init() helper initializes a DP connector and
> > registers the following connector properties to expose the negotiated link
> > state to userspace:
> > 
> > - num_lanes:      negotiated lane count (1, 2 or 4)
> > - link_rate:      negotiated link rate
> > - dsc_en:         whether Display Stream Compression is active
> > - voltage_swingN: per-lane voltage swing level (lanes 0-3)
> > - pre_emphasisN:  per-lane pre-emphasis level (lanes 0-3)
> 
> I don't see why any real userspace would be interested in those (apart
> from maybe DSC). If this is just for diagnostics and whatnot then I
> think sysfs/debugfs could be a better fit.

I'd agree here. Please consider implementing it as a debugfs interface,
possibly reusing the Intel's format.

-- 
With best wishes
Dmitry
