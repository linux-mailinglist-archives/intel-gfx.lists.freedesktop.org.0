Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id LRdqL/sSD2otFAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 16:13:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 629A85A6F21
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 16:13:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1D7010F335;
	Thu, 21 May 2026 14:13:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=fooishbar.org header.i=@fooishbar.org header.b="B0KS206S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
 [209.85.210.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58E0110F337
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 14:13:11 +0000 (UTC)
Received: by mail-pf1-f169.google.com with SMTP id
 d2e1a72fcca58-83659d38e38so2460115b3a.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 07:13:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779372791; cv=none;
 d=google.com; s=arc-20240605;
 b=klNnGC1c2wD0bIL1NMNMzYb4x5dgBtf+T3Y6Ivir8SPl9oOxpITFP0RCpqr++Nl8ME
 OUY3CguriKTXOYuxn77UUFU04Q3naj1J/qw/ho08rZMulp5GeHq3IkON6yHOoywQ2MbG
 bNuOx/fI1EYIZU5Ft4Cgj9++NbDoj5qrxrZuk3eB7CoGwTwrb0vWB5k0w25eNP9I4GCC
 5XgALAvRzTQdWCEnR9WfNX9VwQDrb5ospo88xj/Eii9R2o5uiqnufDuR/P//M54cCxn7
 ZazXFDxOz4mwnuuqiDyAcn9vOP58sNFDwsDnx8WOuCxDqyN2sB/6CYOrpyb1vJmwqhrg
 5Xqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=REP4STaURwNBwYLUxnT2eThrBHI2vGspRNmg6btJygo=;
 fh=OlfsZMRLi3yE297MXEARvRA8ae6m/UO2xtl0b8zwSVM=;
 b=P0PTDEygBh1A5wbWdUfkZF18ordPLM4niy6M/G1lhsqWiT7jnPvLcPjfbsV8hk8jk7
 juAkTn+OQU7UUBp4tv5L+YnFtir4qV7Sy2SBykGd94x+Zib21BMFBCk8lkhsUDXga9EI
 f5sOZYjEZHHAJmtChjIoS0S0fxDq3/Wpsq25wuUxop29NqY7ROnztN+K0r4zDOeYxtEK
 ixmvga+j25syQXc/TczMJE2TBnRp9q/yTScUtDRWAp3t2EJrpPTpXqSC5Atu1zI67F57
 fZeR1ukdXZMDifkzZwdl216yqgyH2mZc3wY+p4b67DEz5PCxnkQR3zrdUzGC2xqrJfyh
 5Dqg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar.org; s=google; t=1779372791; x=1779977591;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=REP4STaURwNBwYLUxnT2eThrBHI2vGspRNmg6btJygo=;
 b=B0KS206SJCDMlPBj3enN0FsCW+bO+4qoyBjEbW/roKfA8sJwk/nfyATTMyS+9k1Bsc
 F+j7F9k2ubY32CFqKo+cXnsazki1e1I0ster1uIDj8Kyy4sHYuZuBlDMrUX6BCpQIuSW
 Pgb5txZ6LQ53Be20KEG+ZVZN8Uf6ptBqiZqDxwOGJcu8JMOHGhkvpqFT/FA2jmj0+IHM
 OYywnIpcZYYvDnk7z367KV+anBeBUnuGIVtvFj/8dUDCFqBEwaqhHo1JrWYKDpECAt0K
 z14Hb9qOlw8IkC1saAzEr01e/V8QRYPio5xwP/XNk6oko3d7OY1/B5Baj6BS6QwTnLLk
 6zFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779372791; x=1779977591;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=REP4STaURwNBwYLUxnT2eThrBHI2vGspRNmg6btJygo=;
 b=KFQEtxs3+AhAQM0mdoy1CzXz79Wiiwr0rb9ReJ6CVVDxyyRY1q/iMdIQEHng1arHjF
 hAK+wkEx+Mn4p6KZbYBEh1+cSygtvZH0kVARAdWMYheRpvsXkGfK4SywZZsvivt7yQad
 ckHHCaTFxmXE8E1KWfXXN9ZfzaeDC1X3rDkGhVzEXhEQMY0nQ7JrIIc9YTTddKSbTknr
 3bWDF6w1LiU7rrTq9wpcdwMlZkI6DVQ7metueffghm9tEBffGv4o3JQMVETu4VQv7aDu
 Zy6QH20/pUha4qz/VJDI/Nu3kQRENYNDeR84NyEtdaDJN4QEudJ82uBT+Qr6laQqo6T3
 DlGg==
X-Forwarded-Encrypted: i=1;
 AFNElJ9U2KyfwTzO+6JJp8yTIW0dpWY8huMEnuD4A5ijGC5zkbevLdE3JOk3t72ALCmM1hna/34l6PNfaDk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxc8glWccJme5Rl+ZzwFnhjWq4WnqAeJJ+YbrUQ/68KY2MEDoWK
 K/AJyVmOGJtj2oVCcji5yS+wFFHv7jPkgv1g8Gg2CEMOFRSlkNvdakiGHizNh75NEJLLiWJ1Cdn
 AZ0splbRYAv0eAPRdRvKah4C4VhlPe42iY+w+xJDqiw==
X-Gm-Gg: Acq92OH8DbcSPP3pfttlb9cdALp5JUwsiu4FHqTkvI/kkAqA/4phFek5xM20D1azmG7
 HI2E6bRojseWxmR0syuk1pmc82/tsqW4msRFRGrSb/BZgcxdkXzf0t4dJc1TKABTq0Ws4FLx/yw
 sRFA99LbC5g/3QwphHKuWN0u6WbYAbi9/vfU2BPfUqE/+QOI0C5oagTyFHlB94qkfBSs/enoHxV
 f7xxIusd5+hiADXERWvMKUqJYC92xdplTGnFt5+ygfH6vNb3BuNPpVQJDnM70228ltWETzT/yum
 d8t1EpdFXZgneFm/Rhhz62vQRpi2AXmDHX0MnEs=
X-Received: by 2002:a05:6a00:170c:b0:83f:2568:d45f with SMTP id
 d2e1a72fcca58-8414ae0067emr3410992b3a.23.1779372790773; Thu, 21 May 2026
 07:13:10 -0700 (PDT)
MIME-Version: 1.0
References: <20260423-color-format-v14-0-449a419ccbd4@collabora.com>
 <20260423-color-format-v14-3-449a419ccbd4@collabora.com>
In-Reply-To: <20260423-color-format-v14-3-449a419ccbd4@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 21 May 2026 15:12:59 +0100
X-Gm-Features: AVHnY4IhuE52xfR4O7ZsBvGU9UxEW_nGPaKeUuOJKbLW6yd-ftNZQIcte9EpFTU
Message-ID: <CAPj87rOgkSAhVzzHyuKEGPxVYeDhJKLGVNrBA2BkG00gvMJjYQ@mail.gmail.com>
Subject: Re: [PATCH v14 03/28] drm: Add new general DRM property "color format"
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
 Andri Yngvason <andri@yngvason.is>, Marius Vlad <marius.vlad@collabora.com>
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
	RCPT_COUNT_TWELVE(0.00)[42];
	FORGED_RECIPIENTS(0.00)[m:nicolas.frattaroli@collabora.com,m:harry.wentland@amd.com,m:sunpeng.li@amd.com,m:siqueira@igalia.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:lumag@kernel.org,m:s.hauer@pengutronix.de,m:robh@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:kernel@collabora.com,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:intel-xe@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:w
 ayland-devel@lists.freedesktop.org,m:wse@tuxedocomputers.com,m:andri@yngvason.is,m:marius.vlad@collabora.com,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
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
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,fooishbar.org:dkim]
X-Rspamd-Queue-Id: 629A85A6F21
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On Thu, 23 Apr 2026 at 20:04, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
> +       } else if (property == connector->color_format_property) {
> +               if (val > INT_MAX || !drm_connector_color_format_valid(val)) {
> +                       drm_dbg_atomic(connector->dev,
> +                                      "[CONNECTOR:%d:%s] unknown color format %llu\n",
> +                                      connector->base.id, connector->name, val);
> +                       return -EINVAL;
> +               }

Shouldn't this already be ensured by drm_property_change_valid_get()?

Cheers,
Daniel
