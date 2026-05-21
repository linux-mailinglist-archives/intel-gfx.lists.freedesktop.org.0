Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIfjA4UcD2rbFwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 16:53:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B11B35A7BA1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 16:53:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8B2510F36A;
	Thu, 21 May 2026 14:53:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=fooishbar.org header.i=@fooishbar.org header.b="X4Cm0eRa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 697B910F373
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 14:53:53 +0000 (UTC)
Received: by mail-pj1-f52.google.com with SMTP id
 98e67ed59e1d1-36974221f93so3410052a91.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 07:53:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779375233; cv=none;
 d=google.com; s=arc-20240605;
 b=bTCZNdZ9a7agl83NbnzLQEsOGZzDL3OIQmsHi3VB3nrTSbfxQ4TGrnnjrO/Hv1kYlC
 CBcrp//pMIFYvedlKT947PhEsEGe+AGlzkb9uK3e9qwiYSpf3HHwOgq1cLKgxdtCKL+i
 TWUb54RiB+13JK4tvmJ3AE3OFAx4Uf+8oJbzwqPk4EZMPgZm2O8+gvt9FB60ktBRCUFN
 y0pWK8Q1aVVPRmh4p1/PIbUhhnzEQwj5Gzs8H1tSpBbqDxKwhnpyykk4c8ebh24AFGjb
 eab7SBLN6dnFzlbVLd5Md9zcLYRCKr3oqTsp7Nb02n49Ack5gvkxxXA7rTZrXySgHRvF
 yA7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=bA/ypZiwvOF7bLYV81VPBE2mEbMWo9wKAEc1kqSaHPI=;
 fh=VNzflCDlvXfXebg9iQ7zc9QvnlYrkmhd8e8++hHf5Yw=;
 b=YG7C/860uDqXgoje/aIQbXTpjukIv5Lq8VJ2Qtu9F/scwzvbunL7kug7flNissRq05
 rmTrW6a0OSNdtXiv89PKBtJ7kCSFHJcTLGI1NH1kVIoKlIDcee+NsfdS7WwaO6CbC/fe
 X1JU1zUCt/YHPBTJ/EIyq9VnAGntbOaAE/fNzIg/4cwmRE4edYURTtpFLgcNUXCEFWEk
 B3aRkznrQZUFdn8BowGETyG9ocq8n0vdynFTMxpxNXVvIC9Q2UaqyroxWXlhfR+RkP0o
 HFy843+StGi+Vsxv1XpDmId9vLCDRjmuPD+jq8+KEEt2V47x/tgc7G+LZbkHHNR7r13e
 unOg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar.org; s=google; t=1779375233; x=1779980033;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=bA/ypZiwvOF7bLYV81VPBE2mEbMWo9wKAEc1kqSaHPI=;
 b=X4Cm0eRalOhD7aPfWdgBAVBQsTDZXCODGprWlAk7HpUnnY+QmW9ikUAQrBoFUV066h
 PDq+nDNKvUEK2MsIIG6juPz1PheewyhtGHPFuPAPBtp2mrTxzoJghs+yb/ppOeUeoZea
 hoO6TCqDTrAq0SopDvvkHIDjNYLqX7sCHKPLZvyHx1qYa4pGVD4MupVlPKM+IVFcW5Sa
 A5qso4bpIuub5uH4u1gwjA3BzgPAxnmrVcCSjEs1Z2bIlIHfGiu9gkCs3B2WsL7cLyyv
 BPcsGzUNRznfDwlBxAoewe/5/5HxNBKViHyx5FnJziIrSFAIAgz48nptWdoERrpqnJYU
 6gwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779375233; x=1779980033;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bA/ypZiwvOF7bLYV81VPBE2mEbMWo9wKAEc1kqSaHPI=;
 b=Q4NiiUB+Q5zkglVyHqNIakPqrUBCn2gqC4ML1IzpI0v6DMJwTuKq7EvKTm2WnhakA4
 FOnm9V0ldhdxFA4X01hMgwk4MuqwFOpQC7CDD9KTqs6fPYSWTSXKsdkc6r/l2GT2oh9/
 KWjs4EFk5pK8XoTsdB83wNenRJq2mw3vOxnDCURVEQJn9kfWad0tZUyVCidJeKgJR2i8
 3NskpLRhiNbnIrrkSa1nzwnfw/44ORSpNcOsvSoJ1wXENRKM0iJ0CIfeRWSWZu3sHMZA
 NRuZR/XRBq8saeqWflcSNLk0JBOfWayG/VM6DFAHm5Xc36kmTHt7Ale331CF1sBuQTvN
 hY/w==
X-Forwarded-Encrypted: i=1;
 AFNElJ8WByV8gZL7hEqV1fRzCtJQcWzPC1dArlA9n3P8P/hYlnQgz3lUETzW9MzXO1CIk3+qGRlwn8NpGtM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxcgN9QRM52j8omcFAVGIMT34Qvsq04S1fmkTNA3OycgFpOW60W
 Q2pvUT1dM/FZ9HmjY/4jl6oNH5g7ji919oNIYUoeT8DVITk34DuHeCaz1UNOC1FSzt2e26rYxbe
 k2HlotEIgXsO+lV1yL/KUaZSS4V9DPvoZUa7sUjNgUA==
X-Gm-Gg: Acq92OHMS2TVVt/ByyFAoyxLkuFw+oN4GL1Dx9IWdJEzi4h01KOrLG5uCrgf7SzEFMd
 TTCtmxvn3db7PAjqVP7KIyQO5ePIFMVzC4MZH4ox+pYEr6gA69uS0HMv/PGhWZoCqAMM/emvSoV
 J/RdLd3sV8nuvEmrpfxRKk4GZVjTxO+09cgbSpICqoKiOwQhvWbJj3JOUuS5uq1c+IWe4IDUZJH
 jw9zSUdqXjojqxICP6l52JvhIFdF4R4ghcU6fjlQ+LmX4SumJrqy+S4QGovBWFMseBihJcWjLbX
 bJVuy0+ZLRkjccKbtkyHI78LFqeSO6jQ0EBnEBQ=
X-Received: by 2002:a17:90b:2d50:b0:368:78da:803 with SMTP id
 98e67ed59e1d1-36a451816e0mr3680773a91.12.1779375232901; Thu, 21 May 2026
 07:53:52 -0700 (PDT)
MIME-Version: 1.0
References: <20260423-color-format-v14-0-449a419ccbd4@collabora.com>
In-Reply-To: <20260423-color-format-v14-0-449a419ccbd4@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 21 May 2026 15:53:41 +0100
X-Gm-Features: AVHnY4KPQYYiaRNDiAsU-wmS8JuOZnjSnShN4CXgg2DHzWx0LVSgQ_nHQROoprA
Message-ID: <CAPj87rOFnB+csoswOOSBR2-=abtCDbsKq2uJ_PgYKPWh-G8m9w@mail.gmail.com>
Subject: Re: [PATCH v14 00/28] Add new general DRM property "color format"
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[fooishbar.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[fooishbar.org];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[daniel@fooishbar.org,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[45];
	FORGED_RECIPIENTS(0.00)[m:nicolas.frattaroli@collabora.com,m:harry.wentland@amd.com,m:sunpeng.li@amd.com,m:siqueira@igalia.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:lumag@kernel.org,m:s.hauer@pengutronix.de,m:robh@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:kernel@collabora.com,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:intel-xe@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:w
 ayland-devel@lists.freedesktop.org,m:wse@tuxedocomputers.com,m:andri@yngvason.is,m:cristian.ciocaltea@collabora.com,m:marius.vlad@collabora.com,m:dmitry.baryshkov@oss.qualcomm.com,m:andyshrk@163.com,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[fooishbar.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel@fooishbar.org,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is,oss.qualcomm.com,163.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,fooishbar.org:dkim,collabora.com:email,mail.gmail.com:mid,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: B11B35A7BA1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi there,

On Thu, 23 Apr 2026 at 20:04, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
> We have an implementation in Weston at
> https://gitlab.freedesktop.org/wayland/weston/-/merge_requests/1825 that
> adds support for this property. This patch series has been tested
> against that MR on i915 (HDMI, DP), amdgpu (HDMI, DP) and on rockchip
> (HDMI).

This MR is R-b me.

> General notes on the approach taken by me: instead of silently switching
> to a different format than was explicitly requested, or even worse,
> outputting something to the sink the sink doesn't support, bubble up an
> error to userspace instead. "color format" is a "I want this" type
> property, not a "force this" type property, i.e. the kernel will respect
> the limits imposed by the hardware.

Yes! If userspace wants a fallback chain, it should encode it itself
through a series of test commits, rather than adding the sequential
logic to the kernel. Doing that might work for one axis, but pretty
quickly disintegrates when there are multiple parameters to perhaps
fall back on.

I had minor comments on 03 and 20, but they're Rb me with the obvious
fixes. 11, 12, and 19 are Acked-by me, as I don't quite know the
hardware specifics well enough to say. The rest are Reviewed-by me.

I suggest you merge the common code and VOP2/DW-QP implementations via
drm-misc, leaving Intel and AMD to merge through their own trees
whenever they're ready. We'll merge the Weston implementation when it
lands in DRM.

Thanks to you and all prior cooks for all the work, and to Maxime and
Dmitry for the help and review as well.

Cheers,
Daniel
