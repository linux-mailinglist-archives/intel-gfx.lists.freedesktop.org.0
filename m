Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KO6fDcunpWngCwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 16:07:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BF51DB739
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 16:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A9710E51E;
	Mon,  2 Mar 2026 15:07:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=yngvason.is header.i=@yngvason.is header.b="XTK0VG55";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com
 [74.125.224.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E423010E51E
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2026 15:07:50 +0000 (UTC)
Received: by mail-yx1-f46.google.com with SMTP id
 956f58d0204a3-64c9a6d68e5so3308772d50.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2026 07:07:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772464070; cv=none;
 d=google.com; s=arc-20240605;
 b=aVCpSyyzddrHzv3yS68/fk5BBsHl5rMJlKmw5ge1wrjiXnPsjYVi6CoirzlIATLZXc
 MUEvZ60uhDl3TCnpGfVqTPzHstgj5p14BgI1klvrlbzUPbBdwT4LbKLpEcQzqQ4KcY+V
 vw1ai71l/j1aCn6iLfdo2GGCI1evMANCtcJyWOhtihLoPdD29ShhuOFBTGJiVWnLHmWe
 6y6txOkuiZB8grgnHY75X9uYMwkUuUh3rYWRURbD27J79633w3AFpZJWQ14tAPUJoUb+
 JKyVzpve/Bpzuy/dnU9jxdgtGcGz5ifBvsepqQagtV45xyrdlMCc4JjG3bJMydYrpNBS
 tmlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=+gDTORrI2pQyWVeOn4meK1oMBrguCe1b/ScMwN2EmY8=;
 fh=cL6SPUxP67F+3bLcnk3ykyhomr2yimy0gAlXDtzyv3o=;
 b=dvVcr30kh5mWNV/7MaEjRoQn3cRLckP2tmZXd3lHNZRFjE6TdtacSyyrtgQYJxU5h1
 dUmqhiaiXB5oNfhYNOWjO+TWW3f/adiNWrTsw9dBteUO+K+nmAui7UjkpBYRBw9qKuUK
 9CqzNRFZy8yMczdnRdPZ2WJzuSbXXIVJ1e8P1xVPYrHukDfuKMlTKses2ubu0fhpQPsd
 D8GBiXlAsM7FentytUjX4aMXXWHpbN1aqL7vdsxMgKzALUx87nD0/yyken+uTXuQ+cjB
 +9ZiDRwkR2T742gmN3nGjn06kHEXQeWM5hA3Rf03OqW66SKZ6J5ixz/NvMDtMs5Nnptj
 hl+Q==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yngvason.is; s=google; t=1772464070; x=1773068870; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+gDTORrI2pQyWVeOn4meK1oMBrguCe1b/ScMwN2EmY8=;
 b=XTK0VG55hePAbMb19t8yRWiq0ocGIb6Q0hk42Co9/9oi++86Oelhu532rQObN6hH+a
 deT+Bgi2MDiDubVofKCtSe9Tbbm5cHrzXGqPke44mMqiFFD40kp7hiNFE7dg9c3VHrgF
 2SYctykfde//3kG9NAYjUK1c8X5qikuArzis8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772464070; x=1773068870;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=+gDTORrI2pQyWVeOn4meK1oMBrguCe1b/ScMwN2EmY8=;
 b=SpZSx2GCcvjsT7QCx0MCwiiyCq5sWSDAlXD9FgJYPYZciIM4OUX1VempTKNvivo5y0
 rrZcWCPt0MwO2XUA110I8RxoIYUpsBzzsKFZzXbw1TE3wNNcCRaMdqTTvkqpUU295fCA
 btC/9MmLGX5jaye2WeDjEZuhWIA4r0wJ25nV+tAs1BZ+erOw9gwmYizSAz/0ytfeD08A
 NfTxRaOgrv8uq6pfnTNM1OlHp6wyKBJ8ZVbWr99KB81/SNpm0Xw4h6DsfYW/xgwkKZkM
 5wKz0WN0dTaX+R+8DCVkdkyhdDrpxLqVd3XoEz+/IuCB97B6Q+lWstXuXecimlOG2zhj
 7pww==
X-Forwarded-Encrypted: i=1;
 AJvYcCWNq0YMJZVQeFO1//NGk0dcLUxRz5StWiN94SFWb91SXHCxYoEBv5ESZv7oiHkoVQDjwprVh5nNei4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw8iVRdWsSjfWZm3rxPBcvu+/U5qOS9ZirwrY6dp04VX55c6Exb
 t1mUH4o0fmX9KhYtnR++QlqrTM0Dhjpa238pXzYiDfEOklk9D1aI9vxbIwELQLGGeXxj4X7ACXC
 WyvOrEZF1VP6qDVClW7tcG/BlSiQETKZenQobbfKFUA==
X-Gm-Gg: ATEYQzzphyN1JUu6HSKMl6/Nfyw03YB8wZB8uyKOQ5q0sWxNVDO8/VeNW1Svp6T99tg
 omXxKANlx1PrV2TQGiB0jZFt5mU/+FYQJa4S9ZFISJC81vGAjuBNCxQJhxGgRH8agMm/9zwX8sp
 OOZLYdBoRKQxYCLgL33Nps1C0ElZPeWvisjf6btrlUKFhsfxcx4J4Zgk9othMKcALDdA2hJOtPp
 h+vkLcUxeMq2bk394otAXrk9sL4Txh44YjSMD3i1JqJoCiMIG75rma6VejgYFX3fQ6tpgDTkn2o
 vjoPpYpMOfZsAmt68RBfo/U2lGU+zSbvB4FIG1Y=
X-Received: by 2002:a53:ab0a:0:b0:64c:c1b6:714c with SMTP id
 956f58d0204a3-64cc2379297mr8671268d50.70.1772464069335; Mon, 02 Mar 2026
 07:07:49 -0800 (PST)
MIME-Version: 1.0
References: <20260227-color-format-v9-0-658c3b9db7ef@collabora.com>
 <20260227-color-format-v9-2-658c3b9db7ef@collabora.com>
 <y5ybjitphwydvtcjdtrmpcx7t7hwevjszpktcnmyvjqkgzinmu@hoitkl7lghxh>
 <5081457.31r3eYUQgx@workhorse>
In-Reply-To: <5081457.31r3eYUQgx@workhorse>
From: Andri Yngvason <andri@yngvason.is>
Date: Mon, 2 Mar 2026 15:07:12 +0000
X-Gm-Features: AaiRm531VbuvPlDMvL8ehAEpeh4QP_0yXJbIL2OEHZWnP0es8QNn2W0TYwz5fEU
Message-ID: <CAFNQBQymuv0roy_xupcgU1bHygfBeE3S1FepQYxpobLq8O0yEA@mail.gmail.com>
Subject: Re: [PATCH v9 02/19] drm: Add new general DRM property "color format"
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
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
 Werner Sembach <wse@tuxedocomputers.com>,
 Marius Vlad <marius.vlad@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
X-Rspamd-Queue-Id: 60BF51DB739
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[yngvason.is,quarantine];
	R_DKIM_ALLOW(-0.20)[yngvason.is:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:nicolas.frattaroli@collabora.com,m:dmitry.baryshkov@oss.qualcomm.com,m:harry.wentland@amd.com,m:sunpeng.li@amd.com,m:siqueira@igalia.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:lumag@kernel.org,m:s.hauer@pengutronix.de,m:robh@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:kernel@collabora.com,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:intel-xe@lists.freedesktop
 .org,m:linux-doc@vger.kernel.org,m:wse@tuxedocomputers.com,m:marius.vlad@collabora.com,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[andri@yngvason.is,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[yngvason.is:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andri@yngvason.is,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,mail.gmail.com:mid,yngvason.is:dkim,yngvason.is:email]
X-Rspamd-Action: no action

Hi Nicolas,

Thanks for carrying this forward.

m=C3=A1n., 2. mar. 2026 kl. 12:36 skrifa=C3=B0i Nicolas Frattaroli
<nicolas.frattaroli@collabora.com>:
>
> On Sunday, 1 March 2026 17:47:48 Central European Standard Time Dmitry Ba=
ryshkov wrote:
> > On Fri, Feb 27, 2026 at 08:20:07PM +0100, Nicolas Frattaroli wrote:
> > > From: Andri Yngvason <andri@yngvason.is>

N.b. this patch was originally from Werner Sembach, but it has grown
considerably since either of us touched it, so I think that
Co-developed-by tags would be more appropriate here.

Best regards,
Andri
