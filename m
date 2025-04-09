Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C97B4A82E75
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 20:19:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5341C10E701;
	Wed,  9 Apr 2025 18:19:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F4QHJW+0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F16DE10E700;
 Wed,  9 Apr 2025 18:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744222752; x=1775758752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0SEy8nnv6fiGJziL6iazQiWfF654a7ScZMQpUh4o96A=;
 b=F4QHJW+0xCkxZbIO8cbgJtC1P+3MDh0PHjU/SBlTVP92TquJ9yMuR+yo
 YKf5bvcxXMCYR5ytKIxSOnKLwVsT3wwRtuJ4OEkY9PKPtAJ6KNoGMgHda
 TaQ6VCoMaez83ClOC53GVxXrJ8v0zt5/SoTqiUvrnHf+d8VRylXt6HaUK
 XSCE4Am4KfKVSFaS2XxPka0R3ASqD1vjTCknXKoj30eghxvAnAw6ocD7w
 ONCnQJm9S5HAawiFoIQIMR5ym1UZsqg7uRahKFd+byo9fBMTvqZ+PSPaW
 K5D2PD+SyS/YfEAd2wEufyCzX6gEmzV4h2TGB20XxCMxW1vNmOUGcSKpf g==;
X-CSE-ConnectionGUID: bXcje1NSQ2qflF8EdP/FIg==
X-CSE-MsgGUID: 6U6GHGpeRk+qX5GSpMkGpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="45730027"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="45730027"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:19:12 -0700
X-CSE-ConnectionGUID: +4QYBjzYQa2Ps2Xq9j4PLQ==
X-CSE-MsgGUID: a93k3EB9S6GnVsJ4H7D1ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="165879120"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:19:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 13/14] drm/i915/audio: don't set LPE audio irq chip data,
 it's unused
Date: Wed,  9 Apr 2025 21:17:54 +0300
Message-Id: <d75ec986093c912de67a42782aa5a49357a9f8e5.1744222449.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744222449.git.jani.nikula@intel.com>
References: <cover.1744222449.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Nobody uses the irq chip data. Stop setting it, and as a bonus get rid
of another struct drm_i915_private * reference.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lpe_audio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 59551c8414c2..666148a14522 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -179,7 +179,7 @@ static int lpe_audio_irq_init(struct intel_display *display)
 				handle_simple_irq,
 				"hdmi_lpe_audio_irq_handler");
 
-	return irq_set_chip_data(irq, dev_priv);
+	return 0;
 }
 
 static bool lpe_audio_detect(struct intel_display *display)
-- 
2.39.5

