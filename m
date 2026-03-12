Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CP2ZAVNBs2l6TgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 23:42:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 561C727B07B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 23:42:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F08410E22D;
	Thu, 12 Mar 2026 22:42:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="r9Ob3yk+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f74.google.com (mail-ed1-f74.google.com
 [209.85.208.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C3A210E1EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2026 22:42:22 +0000 (UTC)
Received: by mail-ed1-f74.google.com with SMTP id
 4fb4d7f45d1cf-660af6dee06so1358582a12.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2026 15:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1773355340; x=1773960140;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=ZQePyGCcJSLkSetdN+bKrj1kfFypqaLV10vxUIU7GyU=;
 b=r9Ob3yk+UvU6rpJ2Vi/U60D9DM5AyhrQcbbks3fzDE7EptYHz9SMSsSjc7ZIow99/T
 qMQPB+Eka2RS1SQN+tlGsTEOtRuDf2cqfr7T3GQ8QFETCyS8bU1SHGyQWVGF96HkfRn1
 Di0bf7LFQKeCyXdWek0xvpFqzjrAYXWOrzKq9NQB0P+kk0gJmwPuyDbvzPSrpGGmSXMv
 mM0Uttvr6osud6vNX1eIYC/jisl/lYqu4TEtYPR8T7pLCldcNy1M3sS2nxePc3E4Q05G
 N9mwny5q9sLAvbioyqNmSpGNLv131nTISiW6g6OAKxceJjtOwsIxo///gkUKoCXxLeXg
 KX/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773355340; x=1773960140;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ZQePyGCcJSLkSetdN+bKrj1kfFypqaLV10vxUIU7GyU=;
 b=jkeEwDYn0Ab0OxOO3zK6rdnGdHOQer1oDV8HxiZGjAMV0TvGkJ1LrlKMAOGDETyay1
 QOGOcIpMXif+suldyDARuIuUvJW5WG+43/6l5Ds58OhMyTggnE9c/HBzjLCZUJxsbCYN
 wWgVaBgjNh5zlBoMCxkkBzLGHYNhxJbyODq+4grylkQx1pWA/cRaFzeq1ceBN0bDP/eL
 wk8r97hge5q9zWf2/umuddPH3R39i75uX6yFRkEhTqi2AU+EZqDppoDKFNk0XKozp7Nz
 XLtZBde8lnv0Od7L+K9dcXLjzSYPbHPzaTjyxdBiZX70A07s1j5gfU+RmZuvbbf9e/Ex
 SxXw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWlxNNFoHVIk59LgnmPXncFbmw++f+ca7ALDZ1pdeuP8r+aqNe8hmWsmncc2Kp5Xp/qEIkeLbk2qLk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yyyl+4P8hq4shUCsEeCUndV7OF3FQ88hQPdGMdOX+kFWyURX8Sg
 DgnPqsqYypBV+QSzGJ+ZxuelAghA/b1o/57mg6eKz05VpUsjfWRVWdbMms4bx2GnFg3WVx7Y346
 DSvjiX3Ss2uywA0h27g==
X-Received: from edxw2.prod.google.com ([2002:a05:6402:702:b0:660:bf79:1ded])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6402:1ecf:b0:662:fad8:4ab1 with SMTP id
 4fb4d7f45d1cf-663ba9c2be5mr581809a12.7.1773355339768; 
 Thu, 12 Mar 2026 15:42:19 -0700 (PDT)
Date: Thu, 12 Mar 2026 22:42:18 +0000
Mime-Version: 1.0
Message-ID: <abNBSol3CLRCqlkZ@google.com>
Subject: [PULL] drm-rust-fixes 2026-03-12
From: Alice Ryhl <aliceryhl@google.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Matthew Brost <matthew.brost@intel.com>, 
 "Thomas =?utf-8?Q?Hellstr=C3=B6m?=" <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona.vetter@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:rodrigo.vivi@intel.com,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:dim-tools@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aliceryhl@google.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 561C727B07B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave and Sima,

Please pull these DRM Rust fixes.

The last patch has not been linux-next yet, but no issues are expected.
No conflicts expected.

The following changes since commit 11439c4635edd669ae435eec308f4ab8a0804808:

  Linux 7.0-rc2 (2026-03-01 15:39:31 -0800)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/rust/kernel.git tags/drm-rust-fixes-2026-03-12

for you to fetch changes up to 0073a17b466684413ac87cf8ff6c19560db44e7a:

  gpu: nova-core: gsp: fix UB in DmaGspMem pointer accessors (2026-03-11 16:24:15 +0100)

----------------------------------------------------------------
Core Changes:

- Fix safety issue in dma_read! and dma_write!.

Driver Changes (Nova Core):

- Fix UB in DmaGspMem pointer accessors.
- Fix stack overflow in GSP memory allocation.

----------------------------------------------------------------
Danilo Krummrich (1):
      gpu: nova-core: gsp: fix UB in DmaGspMem pointer accessors

Gary Guo (3):
      rust: ptr: add `KnownSize` trait to support DST size info extraction
      rust: ptr: add projection infrastructure
      rust: dma: use pointer projection infra for `dma_{read,write}` macro

Tim Kovalenko (1):
      gpu: nova-core: fix stack overflow in GSP memory allocation

 drivers/gpu/nova-core/gsp.rs      |  46 +++---
 drivers/gpu/nova-core/gsp/boot.rs |   2 +-
 drivers/gpu/nova-core/gsp/cmdq.rs |  93 +++++-------
 drivers/gpu/nova-core/gsp/fw.rs   | 101 +++++++++----
 rust/kernel/dma.rs                | 114 +++++++-------
 rust/kernel/lib.rs                |   4 +
 rust/kernel/ptr.rs                |  30 +++-
 rust/kernel/ptr/projection.rs     | 305 ++++++++++++++++++++++++++++++++++++++
 samples/rust/rust_dma.rs          |  30 ++--
 scripts/Makefile.build            |   4 +-
 10 files changed, 534 insertions(+), 195 deletions(-)
 create mode 100644 rust/kernel/ptr/projection.rs
