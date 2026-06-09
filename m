Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BrSIAJhzKGqwEwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 22:12:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E838664076
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 22:12:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=fooishbar.org header.s=google header.b=Io6GWpt6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=none;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37D2E10E608;
	Tue,  9 Jun 2026 20:12:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDE8210E209
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2026 20:12:01 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id
 98e67ed59e1d1-36da8439078so5325023a91.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jun 2026 13:12:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781035921; cv=none;
 d=google.com; s=arc-20240605;
 b=EJj3lyF9oxzUDhnKtWTaXy/Q6DLNjK/0Qa1l/V0vwDu73F5ZSCLA0R199dj90l9Ygv
 HA/hERmCGgh0+MDbjuAuiCLCmNK2DdXw6cqe7kZWQ9ZK3ofq/XDVV06pmd5uyL2rA81L
 1IWJATLD74BCCbCaAvG2+6Wgh0DvSTFj2P4rxHSDYPuEheOFdFvh9uU4GFriwso3nNXB
 O+Z1+DrSDleFKYnZyTujEn3Ab8AO/nkG58QQGAJNGZpf0WFO8Z1+Hs6M8Y1DgWhi0o+9
 iN13s/4JAYR7Go3pjEqN3WEpQNow/uzIvE/agPloVhdt70Jbr2L0uv58vFDfxWgH6jW0
 KdwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=1TP2hUiA2w4UiubJG1d5nR2maW5WDwIWjpRzO+M+ax0=;
 fh=TY5Fo87a1Y/sDwTnSNxa/KKhElMFlh14aoNAQONl2PM=;
 b=UavElBIzfkAVYz42SOsuvzux+e3R8w2hNVcCgi+WCPRjWjzXdcc7GMSSQdUzagbPz7
 keqvXNhyeA7TC3ZK1c/G84jYGcuG+AfPLaBQeY2nuI3Qs1/lSszf5dOoCN0AMdJkrwbV
 BTdyF/cApewiPVEKn5mZJUM6qbYy1cINCkaXr0ncL18U93C3iUPM9oIMpvNdwmGR+lQi
 0GXEaQNcb5F4IJX9Nl1eNaqWjpb2yYnK6kpIt6IY3x4DFDqkJPuZGD2h+I1cRpUj4Yan
 8dgZbXhSFTqRpzEs0Govljmekb4mTOVJKB+5WJoguA3XAej5HfUzTGkavtgPdJF08wEX
 OcBw==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar.org; s=google; t=1781035921; x=1781640721;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=1TP2hUiA2w4UiubJG1d5nR2maW5WDwIWjpRzO+M+ax0=;
 b=Io6GWpt62/Gv/hyGboRumqyDPBqmK48RMS/LWQjoe3l1/+gg0mPwtFR9RZrYo5zrMF
 dTHM7QPQvj2OCdN8wF9jDgVSd8skMH9J50XOyWbjVJkdybrgmS7t4Gb9KClxygrdkO1F
 Fb0hfjjjguTi1bdiMnBUARPpimPf238PplHHiGjzC0MH+Vbvt0kYoWtU9c+/AfFIaO4C
 AzAeG6aM7LnU1/ndPe5pSjvVEX8Fho9hHIZQICq+eeUlcDEZUqry93r+N3BmnmQ+kYNp
 7W6Gjxl61cghxZi1rL0VU9OTjhofVrRSzstptUIzNhPBVPw+nIp7jwFMET7tbMzcwbw9
 EGSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781035921; x=1781640721;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1TP2hUiA2w4UiubJG1d5nR2maW5WDwIWjpRzO+M+ax0=;
 b=XuPFDJLeP24vmSTXcOl3tI/NWzs/naKP5QJKN3zmhXNz9gfcdsePVGmPTCei239uv5
 PDRsKU4mscBfD8g+M/qtkKRHUO56Kegn6O4Yo2pEQQLwGW5LfUbCgcbALPHfFBmAfHww
 qcNjTeoJpj/fwRrH4jA7QGogWVuBMb5aGBN4VemsSj7/4s+u7WOY87K0hI/Tm/RnYOlR
 9eeDsAXPslNHfvpVbBPfyQ3Gw0SqTyN9pNf1LvwMiPsehVXFJZILYF4hYUJChL0qNkL2
 2do4Q2IGsw5RWWtB1pHAvzJul2zUEDauJSlkL02+xJDoIXrvNvV/Yx8jvbodx4uM+Mm9
 OJtQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ/dl/FZ08CfhfAPgFqFL7BusjyvJKTvs8D8DDOkYFpgXZzV+ocDAJU7FZgkahCUjpkddrgSoaj2rfA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzQuTgSc3yr3ZfKUqag8ycVvZL6hFccy+KOREB84B0O224S0Zni
 XNuMQQSf1lLtyHgmMvjGgTD0S/UoMJrxjDd+kJZ479s4hpyvkxNpcWNdjqfz3QbHdfVm8GjUmO7
 SbZCkjqkgoeyM66hYdC9cbpnzOieVdakdvdNp7o0Bjg==
X-Gm-Gg: Acq92OE+qbo0nw8q6TlNxjIjPZgzkRO+2H9vD9HxZSNRiNO/yOARvRVa4UvkBw2R4cQ
 ooCQOJU6ArLilMHodll2BuXzqX9gqAFLnS1rPmH7XJLtua6OpNgyWXcjcjQ04aTh2kJ89lVU0v9
 SrKHezek4a1gFsoU8+dzSUcUqZuFG4/H6heUYXtthbVfXr+rcPTvNg9+yljj2Stf3x6vY51NSVV
 VlR3dtISIAUGrgxfCR/bIeXEjjSdi1E/9OHd/pDPcqpztMt6wbdwHL7el2WEba4S+EsW+RDJ+gL
 dahgrgEf9B+He4YUOQ==
X-Received: by 2002:a17:90b:3bcb:b0:367:cb53:7435 with SMTP id
 98e67ed59e1d1-370f1525ed1mr21923499a91.24.1781035921449; Tue, 09 Jun 2026
 13:12:01 -0700 (PDT)
MIME-Version: 1.0
References: <20260609-color-format-v17-0-35739b5782cc@collabora.com>
In-Reply-To: <20260609-color-format-v17-0-35739b5782cc@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 9 Jun 2026 21:11:46 +0100
X-Gm-Features: AVVi8Cf7R-IrVdYhsGfa6ARvQUl6VjYbn-pxlLXZ6UvxdCSIBKSlKWHfn1zLb40
Message-ID: <CAPj87rNhTViuff5qWeoGkPgyRvP0uOAcUGpcJJPTkPR2b8fJcw@mail.gmail.com>
Subject: Re: [PATCH v17 00/28] Add new general DRM property "color format"
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 kernel@collabora.com, 
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org, 
 wayland-devel@lists.freedesktop.org, Werner Sembach <wse@tuxedocomputers.com>, 
 Andri Yngvason <andri@yngvason.is>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
 Marius Vlad <marius.vlad@collabora.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Andy Yan <andyshrk@163.com>
Content-Type: text/plain; charset="UTF-8"
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[fooishbar.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:nicolas.frattaroli@collabora.com,m:harry.wentland@amd.com,m:sunpeng.li@amd.com,m:siqueira@igalia.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:lumag@kernel.org,m:s.hauer@pengutronix.de,m:robh@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:kernel@collabora.com,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:intel-xe@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:w
 ayland-devel@lists.freedesktop.org,m:wse@tuxedocomputers.com,m:andri@yngvason.is,m:cristian.ciocaltea@collabora.com,m:marius.vlad@collabora.com,m:dmitry.baryshkov@oss.qualcomm.com,m:andyshrk@163.com,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[fooishbar.org];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[daniel@fooishbar.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[45];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[fooishbar.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel@fooishbar.org,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is,oss.qualcomm.com,163.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,collabora.com:email,mail.gmail.com:mid,lists.freedesktop.org:from_smtp,fooishbar.org:dkim,fooishbar.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E838664076

Hi Nicolas,

On Tue, 9 Jun 2026 at 13:44, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
> this is a follow-up to
> https://lore.kernel.org/all/20250911130739.4936-1-marius.vlad@collabora.com/
> which in of itself is a follow-up to
> https://lore.kernel.org/dri-devel/20240115160554.720247-1-andri@yngvason.is/ where
> a new DRM connector property has been added allowing users to
> force a particular color format.
>
> That in turn was actually also a follow-up from Werner Sembach's posted at
> https://lore.kernel.org/dri-devel/20210630151018.330354-1-wse@tuxedocomputers.com/
>
> As the number of cooks have reached critical mass, I'm hoping I'll be
> the last person to touch this particular series.

Thanks for seeing this through!

I've pushed this now, minus the Intel patches which they can merge
through their own tree. The AMD tree required a pretty trivial
conflict resolution which seems to work OK here.

Cheers,
Daniel
