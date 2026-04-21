Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kI5lMEGd52ml+QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 17:52:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B2443CF6D
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 17:52:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C41CE10E8F0;
	Tue, 21 Apr 2026 15:52:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="FzMpBM44";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y4nbOOh5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FDD410E8DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 15:52:29 +0000 (UTC)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63LA2bR51809202
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 15:52:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=b+TpPDtb4A8gF0EfZG351FvS
 a4dKKMV4oqQnvGwrL7A=; b=FzMpBM445RAAHk5vR+lJe3EuQLfi6pcaUmmL6Xb9
 pkqyCdRuKRhZYAeqdBBJ2p1rB2QhDqfjc4uESrNlx8tLhu9mFxQavV7cIkg86e5E
 jl1qY50x6SO9v9RStaYY3lHz5+nW7bmI7NcFSslRK+7b+S/0C9IUrmJqcZATLUJf
 2A89t2dcihv7AiNmjqqmr/qGXD8xwxUGwSpTeLRoWZi2riO6PFahpYkrbwsFUpRl
 XBQZJyIiY/EUvf9DgVklf9v/P3PRDwS/API4JnlMpTcAHWX8nB71fgG+GogTQYds
 S5CZ8df8UR1qDGBLUvIErjMWyL3xS3pbyYK5gM4Kf7TSbQ==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com
 [209.85.217.71])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dp74xs4jp-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 15:52:27 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id
 ada2fe7eead31-5fa75a19f21so7682825137.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 08:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776786747; x=1777391547;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=b+TpPDtb4A8gF0EfZG351FvSa4dKKMV4oqQnvGwrL7A=;
 b=Y4nbOOh59qVTOiG8XjepbppA3+WkU2TFZqbzCw4LQW2ZNrWloic0d4d0fimN2Wpq2h
 umfJ3x5oEQ3pxduLMGkf5ijlQb7UEYoYFFbzQVwzHjBmboznzpCLWUBl7lDEjvS8MqsC
 vOo920G08bTA5Sae/EHVkgh3rtvFD2YnKjiD+MFymMa2JM09OAFQsIkACOF8UPHGLYrC
 tPxT/I4EgF1fi5N3w7Oq2A/DCd9dPJRhE8QnYz3BNzQnZvR2gCpnGEuZRAZ4rgiVY5C+
 gVgGRmF3xvxkTl9oaMJMDT3ufGqXiqCngBs1zTFX1gEEPaVJaaT2PuwTU0W4elk9vvHw
 bb2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776786747; x=1777391547;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=b+TpPDtb4A8gF0EfZG351FvSa4dKKMV4oqQnvGwrL7A=;
 b=jRUUgSuDe9tBZWS8WMQbdcwbb1BYqAZGtsYajSoLZWQ/d4VyCS6bIBxPMKNPtNsD3z
 SLDJyLb/KX5TRwXuZhOk0/pco7F1EdBVO7NikhJ0BEz2pvhKndd7pYbZ4n80IfMw3dun
 tHNYjrhRayOMxkdCuXCNKI14UCIeARW7+SUreSurwNcUI8vxj94toK5F0mrwF1XMdRiQ
 x3C6xGVB8W7eJRx48i/5kAcNKmZM1ZyVg7gxSKqpVsGpRk7IcPK7PZ5FCNXsjMglNti+
 /6gB+kQP7C2iApxlXadfWlg7PI8va/p5xTrVI4+Q0WA6EdyLod32FbeDsd9nX0i7Hf0E
 nIuA==
X-Forwarded-Encrypted: i=1;
 AFNElJ80tHdU2yF8pgs6CLka9qr6VaklWhsbTvLh8RzrnVge4pU5FbmTAyRFd7hKob9LmtxA0Vgc43NM7eg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw/+7rYxf1P/NdsiF0uVAjCt1ilMweeTRa/m3IQwN0Zx/eJcEAJ
 h0p6Jn/+QiacQ5JSJcQXap8qAcIcL8MAmAdHYFJKrmMsdxNRbifnuOn34XNzTl8J1tBYstjfImr
 m38HaDY78jCe8sbPjhBnYG2XIW4H8GheI9PJnwkya4aZJef8FKE34P4h1DN3FZhC67GZtWBE=
X-Gm-Gg: AeBDieuhLqV6sponEZ4h3x5hcYF0bf1zxFCDMJSG/mE/ZKlIob6PNC65C31K098bJz/
 Xl36UJg4gZLwjfiSZ0xBgQnoUyUhTJEJBwcUT4xD0iLJfogFLcVehsFWt4gs7RkBYT0YpQjEzb7
 VnVdX66xjtEs/ozp7LhQvVWHiUSN5VTPIQ3WRtllxWCQ2nEZAw8FLxXgnuGsdUUvF/4POYhcxzR
 tywRqHgfVPBbSLHmz8M4TDSlg9YfU9HEPrcD6Hghfn7iU3CCri3hUdZ2t6BiNz/NGpDoc9fEcnK
 wxuBxf0dtbyi1UF0Xc9Z6XeQMLYRQgaYDgyNJznPBHA2H8j+UXGgAu4vTOVEFHPf0Slq5qcmEhK
 ieJrgBu68J/TMupJoNQmbtzp1g5wQDMdeDUUGnSujeMc0KMXy0r1Lnv8gEhDLQ5mjKRptppTrSi
 RrpIRNO69Q7P65Faq6rJCB+ESgIXWhm3kbpwCnZLYB1kbg/Q==
X-Received: by 2002:a05:6102:5492:b0:611:959c:86b with SMTP id
 ada2fe7eead31-616fe259128mr6807911137.16.1776786747182; 
 Tue, 21 Apr 2026 08:52:27 -0700 (PDT)
X-Received: by 2002:a05:6102:5492:b0:611:959c:86b with SMTP id
 ada2fe7eead31-616fe259128mr6807884137.16.1776786746729; 
 Tue, 21 Apr 2026 08:52:26 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-38ecb5f66besm31845671fa.13.2026.04.21.08.52.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2026 08:52:25 -0700 (PDT)
Date: Tue, 21 Apr 2026 18:52:23 +0300
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
Subject: Re: [PATCH v2 13/20] drm/connector: Add new atomic_create_state
 callback
Message-ID: <kxp5j2tsermgycxq2wtxsvfml7etawwc7mew523rtkynp2x6oi@trsnzjwlnjto>
References: <20260320-drm-mode-config-init-v2-0-c63f1134e76c@kernel.org>
 <20260320-drm-mode-config-init-v2-13-c63f1134e76c@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260320-drm-mode-config-init-v2-13-c63f1134e76c@kernel.org>
X-Authority-Analysis: v=2.4 cv=Vq8Txe2n c=1 sm=1 tr=0 ts=69e79d3b cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=sh7rbVFwc6wKdXg0ZAwA:9 a=CjuIK1q_8ugA:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-GUID: GdEujuc3R0oCgmOY8GbIhtkEZVW0aDFO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIxMDE1NyBTYWx0ZWRfX5tRb6X390N9k
 fdlxwxcQlKBHPD7JnEnsmwEIoHVGj2TmYTUKk8gkgSjG5MhdHwi/aF1GgVlE5JNz3oZ+/VzSa/F
 lWkSYAV3Tma6I7p2IRED8XNf4hl/5yVUEQy06j5y4M4hrsWz/1knEMUUnbpDANEZ4beGnTwVHPQ
 orliOHtzOJcZBVVBcCOd6WA78g/ZWVT5pQGWURULtKocDXu76VdEp+sRiRk5RpSzJTxO173stOv
 thmnxxtXdF6LIOLFhd8UKgvXLSfEm7vUVir/mUQlYdVSgAcou8f5cdDuNmixc12LPhCqkpDk+FC
 B/WQWngs67PpsiHXGu6BUSoj0ykSFUIYGtT7HHI4SeGJ409tm6Gn5w/axW6KeWT+DtjQypG8bYu
 8mWNWSdz7SpKiVT0IOco6/7gUFlCK1SEUu2gjKKzF8IqBpgD8O3NA4PlK+gwwiBFsOdhfSWLoBQ
 uHa8Zu3VkLyYOjrgBsw==
X-Proofpoint-ORIG-GUID: GdEujuc3R0oCgmOY8GbIhtkEZVW0aDFO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 spamscore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 74B2443CF6D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 05:27:20PM +0100, Maxime Ripard wrote:
> Commit 47b5ac7daa46 ("drm/atomic: Add new atomic_create_state callback
> to drm_private_obj") introduced a new pattern for allocating drm object
> states.
> 
> Instead of relying on the reset() callback, it created a new
> atomic_create_state hook. This is helpful because reset is a bit
> overloaded: it's used to create the initial software tate, reset it, but
> also reset the hardware.
> 
> It can also be used either at probe time, to create the initial state
> and possibly reset the hardware to an expected default, but also during
> suspend/resume.
> 
> Both these cases come with different expectations too: during the
> initialization, we want to initialize all states, but during
> suspend/resume, drm_private_states for example are expected to be kept
> around.
> 
> And reset() isn't fallible, which makes it harder to handle
> initialization errors properly.
> 
> And this is only really relevant for some drivers, since all the helpers
> for reset only create a new state, and don't touch the hardware at all.
> 
> It was thus decided to create a new hook that would allocate and
> initialize a pristine state without any side effect:
> atomic_create_state to untangle a bit some of it, and to separate the
> initialization with the actual reset one might need during a
> suspend/resume.
> 
> Let's continue the transition to the new pattern with connectors.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/drm_atomic_state_helper.c | 45 +++++++++++++++++++++++++++++++
>  drivers/gpu/drm/drm_mode_config.c         | 21 ++++++++++++++-
>  include/drm/drm_atomic_state_helper.h     |  4 +++
>  include/drm/drm_connector.h               | 13 +++++++++
>  4 files changed, 82 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
