Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBYiM1Gqb2lUEwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 17:16:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7AA47398
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 17:16:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC52B10E62C;
	Tue, 20 Jan 2026 16:16:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="0tJmjuJW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dl1-f73.google.com (mail-dl1-f73.google.com [74.125.82.73])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5273610E62D
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jan 2026 16:16:14 +0000 (UTC)
Received: by mail-dl1-f73.google.com with SMTP id
 a92af1059eb24-1233893db9fso4168047c88.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jan 2026 08:16:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1768925774; x=1769530574;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=U0JstZ3U8EnaEwbbkqLAiAggjIS51Q+2B5R7r3dcgTs=;
 b=0tJmjuJWdxz7iBtdyidp1o1S7hzxz4wXPvi6OWT0OEFgyXI203kQoEN2pqc34P3iwp
 fepD+PZzYcAL3TOV7eSUXS/JyRQMKUEUDPee+E6wAMJC/0o7PN6i7g4bOWjP3zOazOf1
 vNb44HaJDtghcgUN6+wrCcplD9zRvnGdTHShMpdla5xu3gL2CoAKFZfAGe/b7foi8j+d
 oZFkGPbeVvrAy6VkrCPnEzZl61nKaHJ39sDxjPXaRkd8oB+rfUmyC8FLMV6eprRkrdfK
 uA2s4d2P9iflwPS77nFVlMuQuEHhRBrOl7FresbPo9WcGr/lAl0ljqej5GWaArdw3x7S
 cEmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768925774; x=1769530574;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=U0JstZ3U8EnaEwbbkqLAiAggjIS51Q+2B5R7r3dcgTs=;
 b=AdNLY4Ed7XLPyy86HoSLalspemL/7b4UJZ6suKa8srNWKXLP994sLwKde5GkjCBhob
 JCRGWEm5btq1VM0BC3zh9JVYI5NdWvrZa7I5RdKgdpm84rHQSsqh8StPuHeqXbo1ARP1
 MGBSyoHmIIa2dKMaECTMAhEzC9PlVRtn9IjEFZ6RHnUAHbFJU4sGFvN9Nf3g7+18znri
 TZ2j9a6aq3HUODxXDdFiYZ6vVKxWuiHp9DTiS+vCZpZ+VTMtUyF9N1FQwmxKtucZB7q4
 xxZVQJd4HHM6dOHqHFQpy+4qLB6aTfE1u+2fpzvo8wjx84OrkiEj5btmfMAHy9d2Q6Pq
 jSHw==
X-Gm-Message-State: AOJu0YyG7OrF7T95FS3mdF9I+IU4rlx7DoAt0XwjihqwWYv46iX/N8AA
 RTgPUtjwnE8srkfJ+A0cDtcOq7Gt2Xpat3me63pQx0Bnd7kvQlAlVo7TjdtAcWpZZy39htIroVo
 oYJRQoIdm93V6JUwspUixop08DRGI7hKrCaw8ysGwGcDw2MRdvkmW719r6I0Q0OC22dWX4h53M3
 Kxyb4AFbm6fk+u/mtKXacKG7Uzd/17iYockfA4+v/dJnNoIuo2zp+gek51P14=
X-Received: from dlah28.prod.google.com ([2002:a05:701b:261c:b0:11a:51f9:d69])
 (user=jdsultan job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:f8b:b0:11f:3d55:ab9a with SMTP id
 a92af1059eb24-1244a70b337mr11389662c88.13.1768925773304; 
 Tue, 20 Jan 2026 08:16:13 -0800 (PST)
Date: Tue, 20 Jan 2026 08:13:38 -0800
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
Message-ID: <20260120161539.3161533-1-jdsultan@google.com>
Subject: [RFC PATCH v2 0/2]  Enable seamless boot (fastboot) for PTL
From: Juasheem Sultan <jdsultan@google.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Juasheem Sultan <jdsultan@google.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Manasi Navare <navaremanasi@google.com>,
 Drew Davenport <ddavenport@google.com>, Sean Paul <seanpaul@google.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jdsultan@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 5D7AA47398
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch series is the second revision of a series of patches meant
to add support for seamless framebuffer handoff within the Xe driver.
It was tested on Panther Lake platforms.

The goal of this series is to achieve a flicker-free transition from
the bootloader (BIOS/UEFI) to the kernel driver by strictly adhering
to the hardware state established by the firmware.

Thank you for the feedback on the previous revision.
  
This new patch series was created with that feedback in mind. That
revision was too rough of an implementation that had a considerable
amount of useless code and fixed problems that it unecessarily
introduced. Because of that, I completely reworked and rewrote the
solution into a much smaller, efficient version that properly makes
use of the existing infrastructure. This patch series has two specific
focal points. It enables Xe to properly adopt a framebuffer from bios
by fixing how we read stolen memory and it synchronizes an inherited
crtc state with the new state so that we can perform an initial commit.
This allows us to achieve seamless handoff between the firmware and
kernel with minimal changes required.

---
Changes since v1
- Complete rewrite of the code

Juasheem Sultan (2):
  drm/xe/display: Fix reading the framebuffer from stolen memory
  drm/i915/display: Synchronize crtc_state for initial commit

 drivers/gpu/drm/i915/display/intel_display.c  | 19 ++++++++++++++++
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 22 ++++++++++++++++++-
 2 files changed, 40 insertions(+), 1 deletion(-)

-- 
2.52.0.457.g6b5491de43-goog

