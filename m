Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGtCJoHYzGkyXAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 10:34:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC92B376E05
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 10:34:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5585B10EFC4;
	Wed,  1 Apr 2026 08:34:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=mailbox.org header.i=@mailbox.org header.b="cDtgeijh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 363 seconds by postgrey-1.36 at gabe;
 Wed, 01 Apr 2026 08:34:06 UTC
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E33A10EFC4
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2026 08:34:06 +0000 (UTC)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4flymJ3sjDz9vKb;
 Wed,  1 Apr 2026 10:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org;
 s=mail20150812; t=1775032080;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tb1F2P/gPVX7hmvyL7zuDD5FVQ+lQUkUvdkCl8Wclqk=;
 b=cDtgeijh/xXy7nE6xhMCdiIacIOVa648Gbf4U7ObTHYmEsqmmM9Jyy7SpQFLBda+CsZOih
 zZFH9+azWNF50WEPVw9dsvkE3Vu1EHAbC4Qy8kushhoKKPwL/+dvNDvpLxC8ymM3pjV6V+
 gg7VKq9XTTLS+0eWtrNlFiumCpu2xZPc0o6B9O1GBaIZ9hM1qMEdYStpFEZ5Ki2SiKBLWI
 RLn63RLyF3/LXPrTZsiCdxIDF8tMR+qw1Wp5G3BJvePt2t5ZhSjO+uASNS3JmiuyXDGoPI
 a9LDuiXhSaGBzBGIsLuYwWnWbmdYLo9apoKhudIQ0IopI5nxR5Icz6rlrF+eVg==
Message-ID: <824bf7a3-44ad-4da3-b019-08e43a4cc192@mailbox.org>
Date: Wed, 1 Apr 2026 10:27:46 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color format"
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 kernel@collabora.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-doc@vger.kernel.org, Werner Sembach <wse@tuxedocomputers.com>,
 Andri Yngvason <andri@yngvason.is>, Marius Vlad <marius.vlad@collabora.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <acPmcMbUvzWMzC-Q@intel.com>
 <CAPY8ntCRPgN_ayHMGXFv9OrJrdyakUcUT0rvgY5J=FvdCFb6eA@mail.gmail.com>
 <7991520.DvuYhMxLoT@workhorse>
From: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
Content-Language: en-CA
In-Reply-To: <7991520.DvuYhMxLoT@workhorse>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-MBO-RS-ID: ce369c97bd17c9d38f0
X-MBO-RS-META: ru6a8tkc6pfuiejgd9pamkj44hgh76qb
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:nicolas.frattaroli@collabora.com,m:ville.syrjala@linux.intel.com,m:dave.stevenson@raspberrypi.com,m:harry.wentland@amd.com,m:sunpeng.li@amd.com,m:siqueira@igalia.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:lumag@kernel.org,m:s.hauer@pengutronix.de,m:robh@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:kernel@collabora.com,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org
 ,m:intel-xe@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:wse@tuxedocomputers.com,m:andri@yngvason.is,m:marius.vlad@collabora.com,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[michel.daenzer@mailbox.org,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[michel.daenzer@mailbox.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mailbox.org:dkim,mailbox.org:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: DC92B376E05
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/26/26 13:02, Nicolas Frattaroli wrote:
> On Thursday, 26 March 2026 12:16:12 Central European Standard Time Dave Stevenson wrote:
>> On Wed, 25 Mar 2026 at 13:43, Ville Syrjälä
>> <ville.syrjala@linux.intel.com> wrote:
>>> On Wed, Mar 25, 2026 at 12:49:19PM +0000, Dave Stevenson wrote:
>>>> On Tue, 24 Mar 2026 at 16:02, Nicolas Frattaroli
>>>> <nicolas.frattaroli@collabora.com> wrote:
>>>>>
>>>>> +/**
>>>>> + * enum drm_connector_color_format - Connector Color Format Request
>>>>> + *
>>>>> + * This enum, unlike &enum drm_output_color_format, is used to specify requests
>>>>> + * for a specific color format on a connector through the DRM "color format"
>>>>> + * property. The difference is that it has an "AUTO" value to specify that
>>>>> + * no specific choice has been made.
>>>>> + */
>>>>> +enum drm_connector_color_format {
>>>>> +       /**
>>>>> +        * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display protocol
>>>>> +        * helpers should pick a suitable color format. All implementations of a
>>>>> +        * specific display protocol must behave the same way with "AUTO", but
>>>>> +        * different display protocols do not necessarily have the same "AUTO"
>>>>> +        * semantics.
>>>>> +        *
>>>>> +        * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:0 if the
>>>>> +        * bandwidth required for full-scale RGB is not available, or the mode
>>>>> +        * is YCbCr 4:2:0-only, as long as the mode and output both support
>>>>> +        * YCbCr 4:2:0.
>>>>
>>>> Is there a reason you propose dropping back to YCbCr 4:2:0 without
>>>> trying YCbCr 4:2:2 first? Minimising the subsampling is surely
>>>> beneficial, and vc4 for one can do 4:2:2 but not 4:2:0.
>>>
>>> On HDMI 4:2:2 is always 12bpc, so it doesn't save any bandwidth
>>> compared to 8bpc 4:4:4.
>>
>> It does save bandwidth against 10 or 12bpc RGB 4:4:4.
>>
>> Or is the implication that max_bpc = 12 and
>> DRM_CONNECTOR_COLOR_FORMAT_AUTO should drop bpc down to 8 and select
>> RGB in preference to selecting 4:2:2?
> 
> Yes. Some people consider max-bpc to not be a legitimate way of requesting
> an actual bpc, and don't think drivers will choose the highest bpc <= max-bpc,
> and instead may negotiate a fantasy number anywhere below or equal to max-bpc.

Ridiculing others like this for disagreeing with you is uncalled for.

Is there any evidence for your claim that the driver must always use the 
highest possible bpc <= max-bpc?


> Of course this logic could be done in userspace which knows whether the
> less chroma for more bit depth trade-off is worth it, but userspace does
> not know the negotiated link bpc, and my attempts at adding a property for
> it are being blocked.

Assuming you're referring to the concerns I raised there, I don't have the power or intent to block it.


-- 
Earthling Michel Dänzer       \        GNOME / Xwayland / Mesa developer
https://redhat.com             \               Libre software enthusiast
