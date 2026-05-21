Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HnzI4EZD2osFwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 16:41:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC365A7789
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 16:41:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C176F10E4C9;
	Thu, 21 May 2026 14:41:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=fooishbar.org header.i=@fooishbar.org header.b="fpPt8P12";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8363510F35D
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 14:41:01 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id
 d9443c01a7336-2b9fcf7c91bso65951425ad.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 07:41:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779374461; cv=none;
 d=google.com; s=arc-20240605;
 b=CGYuwBBNQyD37qk/E9lUSgJ7NGcvp/lRHdb2tE+z284cVnjZrG3ckGD8BblbHzP2wA
 hBd/8JO9Kh17cxtAYGNiin+zXoIB3mmYxvDOGnup2I+ycJBjnwgUDoHQ+Qw7edcpyjxc
 sztRUOaKSpPOZ6fx/Xe2Ldo/oykwz8jZO7d3XEn1TKpJgc/Hwd2J7KBXzgn9WIFjBgg0
 hpdaxTjvFUcf7PNtCMF/tMw1M96bZxa1mVtxY/t18diq8apqbR77XTQxtH7iZzEaI6ai
 WSeDpEyWyqyL+GuNHV0h3Gd7EQdM4vGKN1SDPghIR1f9mtj0wDjAnGTX7Iht0iUcv9LM
 rB5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=RI8RcJrMlrGpgo/P0j5rPAmC/BUqQ0jZHOTebzV+Hvs=;
 fh=96oUWKQatLzgyJXlA7pq9GYhT3OeKhBA/hW2zcruFgQ=;
 b=Nf7/ot0MUJg1FwjCR1HHQlfVH+lOEdxqp8XbuWWVbjs5jVDTDG1HU22YWMHxW7rtg7
 KOM3K1YcbZtEZ/4FtnFE3z7NdvjfrOSJBAHJ7f6i9fu7WmEXXIyEvGu9qzCNPq9htzwU
 C4tUvr8HKP12y/z+qL4qnXyJdRGiuNb7+1s6e0nLKVURc9p1Kum+mwFKENphhQDeXBX1
 2vaQj2ITISlFK7MMRnN6CK2l8t+PdasGa69DJf0pxuPradkNwjy2Kis+kQubGD906R4J
 gZXZTer8Xg5e9RpLukoNkgomo4gs33R9Xz4Ss+N8TZtB2Ib2R+xuULRkKvZog5fFt2NH
 zLRA==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar.org; s=google; t=1779374461; x=1779979261;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=RI8RcJrMlrGpgo/P0j5rPAmC/BUqQ0jZHOTebzV+Hvs=;
 b=fpPt8P12fUNdMUXb8E4v259pENQikVsG8rYsQX6klE1idNU7TA3Wk5GZPOs2b7o7zm
 Xnrpaw0VzDMnV4nBB5dDvF/L41ZV8nclP0R6AE4yfyZPy7LhGft291pLTtSy0bVi8Gd0
 9RWc8Oa7nDq25dIPb8aapdWb9Rdvz2fElhEiGiAh+oTQKyChnTHv+Nrk5ZE80VT9WvPl
 J0IoNIjOB/JFLhjSv0rCuarR1wv0Wk1BfmdY+2gGNRcCrHFTiJGyYhbDyIDw8WP0Ocg8
 BlGJxSS79Cc7MXZ7k0NMtOUM13msZFeKwV9q/NCKE2igzXuQNa2shRDjz95xSWZfCE31
 X1NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779374461; x=1779979261;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RI8RcJrMlrGpgo/P0j5rPAmC/BUqQ0jZHOTebzV+Hvs=;
 b=UTFrmZby0GqhhizII1llsWlvFEnCZ7zvBeKSr6CvKlOAifr1UrUW5RmCAYWOm8kkC+
 nidisW8hDJ9OfnUcwZCe7aAVQLmmAMEYX3jrSvkDnDL0ojNCCWv5IbU6A1uVS07AileS
 HGNovosD7cj+cNZl4SsH2NBxudBrJ28sfnVSp0355JoINRRvijKNdE49L/3iCKCaVIMx
 jPtogIyaCaN0VJWLgQOvuhSYus0GwXMCq0yx83zS4z/AXRTlGy+n1w6KUm/1+ljW7Bck
 2oUU0C27fX9vtWUotPWzKO0B9K5URiNStFlZ0j98hTKPAWUFfsY9A5PrbDODI9Q8nLyX
 gYhA==
X-Forwarded-Encrypted: i=1;
 AFNElJ+KDctZB3hAXvfuJEX7XN3ZhNZQwp3c/82KQFT6PUVUHGlRGraZP5KJ4LhEa5mXQJEIHa9gGSwQwSA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzg3ezs63/a2venWtqfLXKWPUd647iAckJ/y7KBOGuizNrkmQpI
 hjyPduHTuupIHuFTC397RMcjQMIblvL0tP4ynEt7BQ+HNuwym2P7sjwnDBIbtFj6MFOgYOZDSMh
 1pQwlPZwI12yKHgdEjWeZHuGglkruxlJLcwfuz/Yb2Q==
X-Gm-Gg: Acq92OHeUNlPs9mVTUIXl34jhBluI5BmfAIE9t+t1BBa90+Qnu0X0zY1pvhSJ0JJY53
 hfyp3nvxomVjidj5VR7C643PxDVbGbzZrmOZ+yyhX7ukE94zEQ4QgAI1kS8XdZHNdxD9V4HZ2wo
 ytzmSu98omhYcmNMBLU0RmQvS9x4zUnMAh3x9TIeEEAwihLifdbPoUle8ZMKlzVZlo/+k4GVODy
 EZzDWVG43NpNryUk5pi+JuKtiD4KMSJpSeId4qQg1pEvawcUSBEuZS5w84OEiz8V5yW9IR5PiSh
 tlBv/T2qH+n49XItSBW0GD+gHfojSUDUXj3AFVLGg3TqVSWO4g==
X-Received: by 2002:a17:903:1b10:b0:2bc:e62a:979b with SMTP id
 d9443c01a7336-2bea33d166emr36661465ad.30.1779374460988; Thu, 21 May 2026
 07:41:00 -0700 (PDT)
MIME-Version: 1.0
References: <20260423-color-format-v14-0-449a419ccbd4@collabora.com>
 <20260423-color-format-v14-20-449a419ccbd4@collabora.com>
In-Reply-To: <20260423-color-format-v14-20-449a419ccbd4@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 21 May 2026 15:40:49 +0100
X-Gm-Features: AVHnY4LM5MR-pydhp54-iciGhQnPfxKOlxWC92SZdhfzMOyTtShVga8wCcjC3D0
Message-ID: <CAPj87rOBvjw4v+PER+6+FMuDRajXNnPSKAke8a=tVgiSRg8QTg@mail.gmail.com>
Subject: Re: [PATCH v14 20/28] drm/rockchip: dw_hdmi_qp: Implement "color
 format" DRM property
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
 wayland-devel@lists.freedesktop.org, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
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
	RCPT_COUNT_TWELVE(0.00)[40];
	FORGED_RECIPIENTS(0.00)[m:nicolas.frattaroli@collabora.com,m:harry.wentland@amd.com,m:sunpeng.li@amd.com,m:siqueira@igalia.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:lumag@kernel.org,m:s.hauer@pengutronix.de,m:robh@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:kernel@collabora.com,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:intel-xe@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:w
 ayland-devel@lists.freedesktop.org,m:cristian.ciocaltea@collabora.com,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
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
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,mail.gmail.com:mid,collabora.com:email,fooishbar.org:dkim]
X-Rspamd-Queue-Id: EAC365A7789
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On Thu, 23 Apr 2026 at 20:06, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
> +       bridge = drm_bridge_chain_get_first_bridge(encoder);
> +       if (!bridge)
> +               return 0;
> +
> +       bstate = drm_atomic_get_bridge_state(conn_state->state, bridge);
> +       if (!bstate)
> +               return 0;

IS_ERR() + PTR_ERR()

Cheers,
Daniel
