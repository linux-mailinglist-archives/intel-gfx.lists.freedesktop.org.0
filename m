Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBScJhlcnGmzEgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 14:54:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AA0177721
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 14:54:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 780B510E3C6;
	Mon, 23 Feb 2026 13:54:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jW1rf9ye";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DEE610E044
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Feb 2026 07:37:28 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id
 5b1f17b1804b1-4807068eacbso22238645e9.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Feb 2026 23:37:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1771659447; x=1772264247; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YcSiEB2h+wSCIY10t8E7R/Khte+t349F76jiCfSqhKE=;
 b=jW1rf9yePjbryV87/SeyY2jgfQR0DYpzfjsBE3WUJBQ/gLCGgVNEvsP93eOHwl2rax
 +E9oMQgoc26TA0WMvLvNIm3byxgRhnjXL5k3UDuOIQXdEUgv/62jbVCkLKoJvyO4Yrar
 7st+pz82/cH1mz/x2hXoZFF6bXEtRlYtpz/mROWygfYjuNrGv7KiIde4MEqeYqQoTC9w
 UEuah2HCXFLtlyWvILWkSiE0M6C4FX3yXSCgL2WS9mpgyjHK602Gz+uS+4kRdYOumgPm
 VuBrYAfNq2hKtmALGEnFV0l5Fx9l8Kz0nF4JAH8Zk9vkoaYLYkODAXENzoSKtyDh9LrS
 0WIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1771659447; x=1772264247;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=YcSiEB2h+wSCIY10t8E7R/Khte+t349F76jiCfSqhKE=;
 b=BFC8sWx7CBU3Nz+dhmLmap5Ias2wvQWD0S3a34fqLWUfOySHT7pVPRDkot+kI+BiaK
 m/9O5Uk6/2kJs5pWHhmnplcjf8wPeLeaR6kmH786o3KtxclYlKbwV9+uVTwJpaeDfI0o
 nREvizmWnA8U18cCWG4qMz0ttdXFV9MFR5vzdyUyabA9PtSQZbg8CqHVljBiGeq15nCp
 L0tB/nLGfLfaHDzTZyXyYZSsyWCNSOCpf8etlCB1BbzTviYg2LmhwscPeC+LvVRgsbvh
 w6OjBEMnUbwXeKk844u4ZkbnWpzNEH7taYusJ2PZ1KLOCYeuAgOsJV/QAgJTp+NTKQ45
 +O2g==
X-Gm-Message-State: AOJu0YzOUsSJJLKKfAv6bNpmIYAFE3DmSeWmkisJ8OhfNv1eIqRYvPtM
 b5o3E/sDpTPeAGtsr1TMpeKbdmx933ZWyA4KpaZmXQM0mR6VFqieXXOSV0+c3ZkhQdA=
X-Gm-Gg: AZuq6aLzZIIAbzRuit1kDD2UA1B/Gx+he8YDPNMJ5TdFRCBYlHwnxLDOqkG0CQSZBd7
 askytL7YH5xmPLrDe1q0aVjylbJ8JECLENHzxTjBReRmlawQEcKu+0PAtPZ6CU5iIqZduGTJYui
 HDJx3IAV1EzsRfiEpOUZ011Gw0JZxgAXOtCtxNAa2xJxisxYk+MUUE6C7CrcX2r6und8ant8G+P
 JqE/emZlZAEsd/AliAFRAtCu3tot0vrkJ3ubGKU7sj7dxnOOVfQEe7x2+BqPsvqBn2ksKll1T92
 Qp7bG0DmutQSBbX/YXp8DZiihoUZPaSe2o7Iq2SIrfRqR7zBTOv8OEKAg1BNjvOwb2iiqCKPjZf
 nWCRy6QgKPuU5PaOq8rMLIq9hZ+F+ezLLextssRqAO1rkI2yzyCXzB/bKU3rQr4DXEOF8mLCxu9
 wYoT0BEJHcVvTGZxJpJusKm7Sst8EXaH/AR/LOBYng0htxxE3lqPhfEPkp9w==
X-Received: by 2002:a05:600c:8b66:b0:483:6f7c:19f4 with SMTP id
 5b1f17b1804b1-483a95ed6f3mr30448685e9.30.1771659446514; 
 Fri, 20 Feb 2026 23:37:26 -0800 (PST)
Received: from JTOLLET-M-FKW7 (130.64.3.89.rev.sfr.net. [89.3.64.130])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-483a31bc0e3sm109732405e9.5.2026.02.20.23.37.25
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Fri, 20 Feb 2026 23:37:26 -0800 (PST)
From: Jerome Tollet <jerome.tollet@gmail.com>
X-Google-Original-From: Jerome Tollet <jtollet@cisco.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Subject: Re: [RESEND] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
Date: Sat, 21 Feb 2026 08:37:24 +0100
Message-ID: <20260221073724.85291-1-jtollet@cisco.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <[email protected]>
References: <[email protected]>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 23 Feb 2026 13:54:29 +0000
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	DATE_IN_PAST(1.00)[54];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,cisco.com:mid,60hz:email]
X-Rspamd-Queue-Id: 94AA0177721
X-Rspamd-Action: no action

Hi Ankit,

I've completed isolated testing and can confirm the SCDC polling patch works perfectly.

Test results:
- Kernel: 6.19.2
- Hardware: Intel Alder Lake-N (N100) with integrated UHD Graphics
- Display: Cisco Desk Pro (CS-DESKPRO-2) 4K@60Hz via HDMI 2.0
- Status: 4K@60Hz (3840x2160@60Hz) working correctly
- Result: Stable display, no corruption, works across reboots

The SCDC polling approach is also more consistent with other implementations
like Windows, which performs similar SCDC polling after port enable.

Relevant dmesg output:
[    5.491988] i915: loading out-of-tree module taints kernel.
[    6.104904] i915 0000:00:02.0: [drm] Found alderlake_p/alderlake_n (device ID 46d1) integrated display version 13.00 stepping D0
[    6.218551] i915 0000:00:02.0: [drm] GT0: GuC firmware i915/tgl_guc_70.bin version 70.49.4
[    6.268439] [drm] Initialized i915 1.6.0 for 0000:00:02.0 on minor 1
[    6.691347] i915 0000:00:02.0: [drm] fb0: i915drmfb frame buffer device

Thanks,
Jerome
