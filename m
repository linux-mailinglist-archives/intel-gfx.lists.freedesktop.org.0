Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F4DB209FD
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 15:22:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA2DC10E463;
	Mon, 11 Aug 2025 13:22:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=listout.xyz header.i=@listout.xyz header.b="Pj/pccSS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 319EB10E10E;
 Mon, 11 Aug 2025 13:11:49 +0000 (UTC)
Received: from smtp102.mailbox.org (smtp102.mailbox.org
 [IPv6:2001:67c:2050:b231:465::102])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4c0w5D5vn9z9slH;
 Mon, 11 Aug 2025 15:11:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=listout.xyz; s=MBO0001;
 t=1754917904;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nn7J5B2Aq1IDeL4KLSwsL1A7sTtX38IT2nssYyCR2Hg=;
 b=Pj/pccSSXFpsAeFaoXQdP4xi95b2D8/Lrnk3ADAfSu9xaqbTEEFaTjiyu7hz9Kszb5je5e
 bzXcvxB6yt+DAP1A1hcWrymIBx9a7kDVD42WinC40b+MmghsnlQcG0RkTthtN15SweynMo
 Fo9ZNScmCnTRlc+DA84/C6xOZX+jDHRV8fF2x4qnB8SUeoV1PtSwGDyOx3zWgrhE7eTrIu
 8XDJDDZcOmNFhyztRNrI4vCH20TvwpmLebkARK3Xh1hwC0aTDzrqbI1zKDUrTZ7yj86yfO
 xIoNpD0CN1QGK1XD+WsyNZp6jza4a7oKXtTKaeu7jMYdJ/3JNQyXs2xLOKVPYA==
Authentication-Results: outgoing_mbo_mout; dkim=none;
 spf=pass (outgoing_mbo_mout: domain of listout@listout.xyz designates
 2001:67c:2050:b231:465::102 as permitted sender)
 smtp.mailfrom=listout@listout.xyz
From: Brahmajit Das <listout@listout.xyz>
To: jani.nikula@linux.intel.com
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, joonas.lahtinen@linux.intel.com,
 linux-next@vger.kernel.org, listout@listout.xyz, rodrigo.vivi@intel.com,
 simona@ffwll.ch, tursulin@ursulin.net
Subject: [RFC PATCH 0/2] use new debugfs device-centered functions
Date: Mon, 11 Aug 2025 18:41:24 +0530
Message-ID: <20250811131126.71883-1-listout@listout.xyz>
In-Reply-To: <32c55ab0b1452a1fd8ef49e8a1ca640ad5bd9d76@intel.com>
References: <32c55ab0b1452a1fd8ef49e8a1ca640ad5bd9d76@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 4c0w5D5vn9z9slH
X-Mailman-Approved-At: Mon, 11 Aug 2025 13:22:15 +0000
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

Replace the use of drm_debugfs_create_files() with the new
drm_debugfs_add_files() function, which centers the debugfs files
management on the drm_device.

Refer:
https://docs.kernel.org/gpu/todo.html#clean-up-the-debugfs-support

Brahmajit Das (2):
  drm/i915/debugfs: use new debugfs device-centered functions
  drm/i915: use new debugfs device-centered functions

 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 7 +++----
 drivers/gpu/drm/i915/i915_debugfs.c                  | 7 +++----
 2 files changed, 6 insertions(+), 8 deletions(-)

-- 
2.50.1

