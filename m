Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOT2A7ic52l9+QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 17:50:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4934643CEEB
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 17:50:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DE9810E8D1;
	Tue, 21 Apr 2026 15:50:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="T3JfPtk/";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N+5FFZEg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 355A710E8FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 15:50:12 +0000 (UTC)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63LFhR9s4167796
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 15:50:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=Mo2f7WcLf3osCcteJk9O/SCd
 aTHE9e4ZotSTHgD8zF4=; b=T3JfPtk/F9qTRPbRfkl7o2BZSzyv+JBhAXxS6ttT
 MOSjxvRnI4i77iSapmiJCFDnVsEq0QW/Jtnw0oP+13HCbJQZsbIl4o0nBZ7BM/Ak
 dIm5WQtrFpcHBrWUTfX0DPJz2/3k1CpYkjeUEJsBotxlqW8cHl4C1IzB9EukfqBJ
 WziBCJ4gy7miFoopX+oh4xsVOQF0GNzaP2l4PhxJYGlrDMcyomR8Wgf+5BvOL2B9
 dB4LcWEqOCSN3Mkne/6U/Pgvif/ICIcmjzDdVgPKjCyZVEtz3mctUrd2bbmrhx6Z
 XFkpDlnDUmrRcpSLJdCXg+25TftEYna+RLl4BXLJNiiZyQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dp1au2pry-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 15:50:11 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-50da529ff48so104682981cf.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 08:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776786610; x=1777391410;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Mo2f7WcLf3osCcteJk9O/SCdaTHE9e4ZotSTHgD8zF4=;
 b=N+5FFZEg+jnamrUp8K2GH9/oe7cOKmWNsn4sum6QWO4gdE612MN1i9a+gH3btjmfbt
 bCbg+fdEs/GX9p7kAJ2UOLyg3s6Wq2Ag4bC3NlziNqz8ZD7z1DyWdtTLclk8P4MHIS0E
 uOFuxZhxZb5qKy94dxVHYYUZI5YYdf3Pw8Z1sFQ6TjzZEd5h73T208BR1WeA2zTZTUV4
 C9MpRmpv4mvA8MHjyLp5GpnVht796zN4XS8ChPjGGY06VAVoMVg28tt72Sjz5IPYE9j5
 GAcAaNrdM+yyNmR9dHo/9LEQ0yZs/7O6fSGpzsEKVTd7ymwRzmJWJhPcOUBreao2KBwM
 p2Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776786610; x=1777391410;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Mo2f7WcLf3osCcteJk9O/SCdaTHE9e4ZotSTHgD8zF4=;
 b=s7PnBEp1vzVJgm+Cv1XuPRBaqquurTCrL9rtT0xdYHzNepWtBpD/Qij4zgM32UXRpL
 Si4Yq+KpSNnHJHYDv9+8Jyu400hc44vtIzI4EtVshIvN5YXOnPuQ/vLNqRgO/9/dYUvB
 2lWp8DjsH4P4yWYUYqI9nzS/p3oaTP+sGPJlNtm1JOWtv2AVYUzjQl/55bCe8DADObfj
 SE2X8Sf4HP5HFK7ZzQw1UG8pHMMOGYsemBGH7Z3REMzfJD/6k9B2Cf8H3vYdvveG636A
 czVf01O44AHJAAXAYN88MPlHWqyB+d8G40F5PxBMB8epjJRd8SvKhZDQXFgNHfnOnuTX
 9HqQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ/tLvcahxiCsJKkPblRWZhxn6Ou8eCy0V1c/DzMeLiJJhmIYc5+wCEnYb0iuhI+Ah5Px2XIffTO5Q4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwL7HVth3eQjbjcak3qreRmNKY6dEWq2N3lGc4MKp/WedB9K6b+
 KMYVsPSp7kcSZWABhK0g4hO3fm9kVxrLKt4eQstQMwlQLYIMJOuAfIakTkA02Pl6SQYL5SvmjqQ
 a3Yr9v4GOPTku956LAkM3vZr9FurZrXugPsw5F2DW6+C9kWZdDI8YnTOnUSK/rE/Msst2it8=
X-Gm-Gg: AeBDiesXLUovzPx1E8hn5PZNvpfvTnqpBmwrPdukmOoxZR2kywpYt3PsKUaiQKhIKUz
 6LYMSgF+A6IxIF4CXBPQnnPnIJwxjtJMtzrZQmL2/xBFj2qK+gnhi0qGhza8jWHVc3k0Y4umhWi
 /s+abRR6qut9zbAkUPfZFL+sPtnKG15tIv+T4/qBb7vpSZUoAwN2NmCIrex4xTs6IKWMAlJoZGa
 i1ZBOZ5k5qT/v/huOM6JsiZscv45YVtWLIWCnAQiJuXH71laralhzGDDKIMXn3QFp70gRfAJJdB
 bikMBuiUGXcm5OJKKwWCFjP4kxD/jRMHtXCN0vTGwjb1fdhrWjWxIT5Pmx29qKhkFTj/dIgxxH6
 nAORVqjglSBLbfSdtObZHOUp1KQ/NRuDuDpeKMFg0DC09z1OLGz9Waq31NmJNS16MfA3mhqbaWz
 Hc7l2l3yQQEvS5gecg1TmzDd0ng7CLLJoKNrjoGsf3qyi12w==
X-Received: by 2002:a05:622a:11d5:b0:50f:b732:202c with SMTP id
 d75a77b69052e-50fb73225a9mr33343711cf.19.1776786610411; 
 Tue, 21 Apr 2026 08:50:10 -0700 (PDT)
X-Received: by 2002:a05:622a:11d5:b0:50f:b732:202c with SMTP id
 d75a77b69052e-50fb73225a9mr33342531cf.19.1776786609679; 
 Tue, 21 Apr 2026 08:50:09 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a4185c8a33sm3824506e87.36.2026.04.21.08.50.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2026 08:50:08 -0700 (PDT)
Date: Tue, 21 Apr 2026 18:50:06 +0300
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
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v2 12/20] drm/hdmi: Rename
 __drm_atomic_helper_connector_hdmi_reset()
Message-ID: <5me7yklungth6sss5okogfwtr2ed47fwaq3rxnfbhjqgauefis@h2c4kbfk2sqe>
References: <20260320-drm-mode-config-init-v2-0-c63f1134e76c@kernel.org>
 <20260320-drm-mode-config-init-v2-12-c63f1134e76c@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260320-drm-mode-config-init-v2-12-c63f1134e76c@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIxMDE1NiBTYWx0ZWRfX4Zgr7MYwvQAF
 56omqiOLTnDBJM0WwObevZl9vqtIah/cOfD54ruNRed5BYmlXAvh/pymq4R09qpKSYdZ6w55sns
 upWJ58hFs12kiGHcEe6OEwdUxec5OpGXm9QRmhehiCfCWfFUFW8dTCeIUKi+o11Rjpil571Atn+
 Rlt367j2dZTVthnoI24Co4tXW02P3/GgNeaPDmLcBdR+6lZqHjF70EPjmkc5gwWFekIA/yRxp1V
 yacKvec9G1E2+WsqV+TSbcWKFGw4DSZ5KvLcSJVQEtP4O/vDbqeJlJ8gTP5Gi0T0qyaFfNWNnqb
 BCIpqKhiEZ7T1ML37X4DduXmTMTih8F64AlgCeBPBvR+rR9HYjQzDHoiZux7oAs9K31ouhNRwaE
 6At/OqFaBCfO7y8oy4+75Iq1CN2mjugCo7hqtpkrs9xxQr+n69vq0TwGgqjfnWQqpsdqpCucgKs
 PJKjrFcTZucwstRDzjw==
X-Authority-Analysis: v=2.4 cv=F9JnsKhN c=1 sm=1 tr=0 ts=69e79cb3 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=P1BnusSwAAAA:8
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=fOc9-Nj7kuNS0fQUIscA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=D0XLA9XvdZm18NrgonBM:22
X-Proofpoint-GUID: lN8JUIvmyPZWwS1eumG5PBE5NanZprdx
X-Proofpoint-ORIG-GUID: lN8JUIvmyPZWwS1eumG5PBE5NanZprdx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 clxscore=1015 suspectscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 adultscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2604070000
 definitions=main-2604210156
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
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:jyri.sarha@iki.fi,m:tomi.valkeinen@ideasonboard.com,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:contact@emersion.fr,m:harry.wentland@amd.com,m:mwen@igalia.com,m:sebastian.wick@redhat.com,m:alex.hung@amd.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:wens@kernel.org,m:samuel@sholland.org,m:dave.stevenson@raspberrypi.com,m:mcanal@igalia.com,m:kernel-list@raspberrypi.com,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniels@collabora.com,m:intel-xe@lists.freedesktop.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:jernejskrabec@gmail.com,s:lists@lf
 dr.de];
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
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideasonboard.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,oss.qualcomm.com:dkim]
X-Rspamd-Queue-Id: 4934643CEEB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 05:27:19PM +0100, Maxime Ripard wrote:
> __drm_atomic_helper_connector_hdmi_reset() is typically used to
> initialize a newly allocated drm_connector_state when the connector is
> using the HDMI helpers, and is being called by the
> drm_connector_funcs.reset implementation.
> 
> Since we want to consolidate DRM objects state allocation around the
> atomic_create_state callback that will only allocate and initialize a
> new drm_connector_state instance, we will need to call
> __drm_atomic_helper_connector_hdmi_reset() from both the reset and
> atomic_create hooks.
> 
> To avoid any confusion, we can thus rename
> __drm_atomic_helper_connector_hdmi_reset() to
> __drm_atomic_helper_connector_hdmi_state_init().
> 
> Suggested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/display/drm_bridge_connector.c     |  4 ++--
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c    | 14 ++++++++------
>  drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |  2 +-
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |  2 +-
>  drivers/gpu/drm/vc4/vc4_hdmi.c                     |  2 +-
>  include/drm/display/drm_hdmi_state_helper.h        |  4 ++--
>  6 files changed, 15 insertions(+), 13 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
