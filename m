Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Ml9FMLYz2mb1AYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 17:12:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE2F395A3A
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 17:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCD3810F21F;
	Fri,  3 Apr 2026 15:11:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ldZpXaL1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AFE710ED2B
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2026 12:26:34 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id
 a640c23a62f3a-b9c11eba219so132375866b.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Apr 2026 05:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1775046393; x=1775651193; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gNPoJV1+9P6HlUjxEIUEsSTm7esF137eU6g0yQ13nXA=;
 b=ldZpXaL1YlebOumO+8omK2Oac3H0fKq1uZYsyhY0xZXYsihiuxHAlGFghjpNUUyWib
 0paZBLZss4Cv5tdkqNv07TiG9vtpnl7SXZ51vxQ/x5yz+2lZ6/BgZUoJWuSLqaeXze+v
 LGfnwjgEx/F3oOA0Z4H92pBLxMwqtG2nyxfmmYbeVW2tiXMDONyCtHV31b15p1ZrdF5V
 zD3AshJJ05izxCKR+31Wokk2voSlXKApxEpSwXmAHIpqQTuFV+h8ogRgjsxMWGOBQEAj
 wKl1EDZkGP5aHQ5yLRzbJHh988SdltT5sMG4s3p/KtlcWkvYDPYNUql7NWycPOb376/i
 51WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775046393; x=1775651193;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=gNPoJV1+9P6HlUjxEIUEsSTm7esF137eU6g0yQ13nXA=;
 b=mB10GVL94iF9yGarJA5QvRNjgc+2Q6fuzKDn9qDmZ/O1Rzpj4E9IOfyVZkc6qem3tx
 w/mkFgd4880mPogb48f0ORorab7wWc2mfXxrMDM9f0/P4ZtJ7lacHWyJ2I4QLPkD9IKg
 mhiNHybtnbV6aH3Sn5LcP1ZCU69+QkyLXwLnj8U8qTlcTHdjTY8uwrW5arsAzAStj2IT
 Do4J7vTLI8nT82lyaEe8aY0MQ2kfkxFJ2HFanxkujkyKNZR+wTMoSE3NvpApx6qErqwD
 Bp3UCNHhOoejrAo9bL1EtyH4geaedB4Kh8vNatWmNB31BfuikoZJTlPlFteuvC2FJL4Z
 GZuQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWYVSXfl2bgc0IHu5QfuUebqEgw/lz3MqjjrGZiXlEK0/hXnFfG5BaHT0PAr5CUbS/0kHDK2jKyiGU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx6+ysZnyJt3fZmm2Gh7Z6KCkTAzLoRAm3bmeuZoN6wf/efssuU
 vsqFzENbfIZCqsfAOynt0zAQaSMl+umo0sl8E9x4IbNJPvnZBywhX6Nf
X-Gm-Gg: ATEYQzzjK9xQnnhbTgmhSz7h1UdLjL+NcxX3CQWt1U9He9qvwIWs/1qBBypeEUlfFbr
 KXoT0/tE95z9ysEkEOGyS5+pzkePUpOkLIsUhgdX3zRZ5S4Ze66sGMbWBKnmVTeGyFFCsh/JlIf
 NN8CVmJDnJ/yKZxHlgp63s6jFP9YRHfY0ZawSIj6JhXfDyPmbAtGbPeBtJ8yKdeK2lklVDwm1iH
 PPvZk7uD979UF4nAfMjwOY5Zr+WuETRlGELrmmplqpp/mvFDBsnpqfNmYC0iKfG5CSo5mkxCwFF
 9PswShyLYkEdWlR8DLrQPmi393V/MIQvCqyyZ66wxNfpcdUjIavf9MxHtIMIsDNcgYBExUJ7CdI
 +Vi341Be1NqVcUpky6GPok8pmRhnM4KlcrNYxAAR1UlERnGFf1bQN2DOEqeCk5G151N2cSnCJlK
 ft7ZvSj99rsrnZNpXVK3+218N4UutDzCa1AVjB8UjsIp9H8U60u7ITS1M50DGGvqk=
X-Received: by 2002:a17:906:dc9:b0:b96:996c:8605 with SMTP id
 a640c23a62f3a-b9c1391fdbemr175359966b.23.1775046392631; 
 Wed, 01 Apr 2026 05:26:32 -0700 (PDT)
Received: from JTOLLET-M-FKW7.cisco.com
 ([2603:5004:20a0:100a:a4bc:ddcb:75a8:39fd])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b9b7b1a5924sm518156666b.32.2026.04.01.05.26.31
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Wed, 01 Apr 2026 05:26:32 -0700 (PDT)
From: Jerome Tollet <jerome.tollet@gmail.com>
X-Google-Original-From: Jerome Tollet <jtollet@cisco.com>
To: ville.syrjala@linux.intel.com
Cc: arun.r.murthy@intel.com, ankit.k.nautiyal@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Jerome Tollet <jtollet@cisco.com>
Subject: Re: [RESEND] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
Date: Wed,  1 Apr 2026 14:26:13 +0200
Message-ID: <20260401122613.76354-1-jtollet@cisco.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <ac0AQ_74Tukshr__@intel.com>
References: <ac0AQ_74Tukshr__@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 03 Apr 2026 15:11:58 +0000
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
	DATE_IN_PAST(1.00)[50];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:arun.r.murthy@intel.com,m:ankit.k.nautiyal@intel.com,m:dri-devel@lists.freedesktop.org,m:jtollet@cisco.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,cisco.com:mid]
X-Rspamd-Queue-Id: 1DE2F395A3A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Ville, Ankit,

Thanks for the review.

Ankit, Arun Murthy also reviewed the patch (in the [PATCH v2] thread)
and asked for the HDMI 2.0 spec section reference in the code comment.
The requirement comes from Section 10.4.1 (SCDC scrambling enable
sequence), Table 10-19, register 0x21 (TMDS_Scrambler_Status), bit 0.
Could you confirm the exact sub-section in your copy of the spec and
add it to the comment in v3?

Thanks,
Jérôme
