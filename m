Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF8BCB9207
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:29:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4478210E8C6;
	Fri, 12 Dec 2025 15:29:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DgBrzQ0v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A108E10E8C6;
 Fri, 12 Dec 2025 15:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765553343; x=1797089343;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5m4Y8TEOJ7BM7RKcS5ETqqAsbz/7un/6XarxNauEY38=;
 b=DgBrzQ0v47U3BaZhHu4NFEZGnFiEKW5YMxwHk/zI5x8nN0GvkL/8AF64
 QAsNrsvmdYljAQrB9Q35tcjYWM+JL5LQ+UJRyQYPYc/jALF2IZHPTw02C
 yAEDrQDbi/UKUF6Eq50YUQ62Vi0EBTPX23GxiMMEj8qdVzqQ8zmXN1FwY
 nmIGFuQqtzcNPNfr4NPIPFjlRM0F8azvAXXSiVke2BXE3XVhsLtnc27kl
 DU167mSHhem9/h1lqdW4B+HaqZNLMORxL3a9vCXcoGmPYgY1cOM92zN5L
 UabErmh42tCjbdYblxHzBD/Az7U9f+8RbpUewrmgtrNJxYjqQWGRmZdfr Q==;
X-CSE-ConnectionGUID: lCtEK0vWRb+CpQqf4JN3nQ==
X-CSE-MsgGUID: vttb2vokReOmjKBLwjOpqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="67716376"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="67716376"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:03 -0800
X-CSE-ConnectionGUID: TeqYoV73SumZ/ZubpMQ0tw==
X-CSE-MsgGUID: Ry+xGC9pS96/Y2J+etb+bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="197935042"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:01 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 03/13] drm/i915: Clear crtc_state->use_flipq initially
Date: Fri, 12 Dec 2025 17:28:37 +0200
Message-ID: <20251212152847.13679-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
References: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

crtc_state->use_flipq is ephemeral, so it should be cleared when
duplicating the crtc state.

Doesn't actually matter because we alwasy recompute it during
during the commit, but let's set a good example regardless.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 348b1655435e..edf32b7fb5f7 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -276,6 +276,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 	crtc_state->update_planes = 0;
 	crtc_state->dsb_color = NULL;
 	crtc_state->dsb_commit = NULL;
+	crtc_state->use_flipq = false;
 	crtc_state->use_dsb = false;
 
 	return &crtc_state->uapi;
-- 
2.51.2

