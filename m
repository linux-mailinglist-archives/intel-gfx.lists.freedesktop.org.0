Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFA4545D07
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 09:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E74E113CF0;
	Fri, 10 Jun 2022 07:17:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D50E711A88A
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 07:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654845451; x=1686381451;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QDsmpMv1HQ3ykU/KGPG9BX/ZOMjBcKAcdbF3OvJGpm4=;
 b=fadZ0TxDVgF0Uqnn/F+xWVoy/lHx9rk/81S+k9CQ3SNfWKhcmwDWM5Ek
 QfV7A2ez87PoddXgtWRDrrElUxblfUH3m5RTHljZoo+3Wc/SXBSCEX/el
 NyHieADcabCI2TOdISd4AaXOO6/QxiehIVmWz0IzN5ZMz7o+0wsfDd/TY
 Qifm9QHrsc0DsnR1RfBRgYuyP8xRZG5GeFnpldL1Nf2e1yw2/23x4+sUT
 ho2MZSyuPf6YnOvXccPLrCCAM6iiaf1gn5mlR0qilNmS2VTngNzKTlqRw
 a+SynggZf0EkNERZT/wesEDZbjfgkc7aHWBboIkzdzuqltSnQFOiqDk2O g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="302917296"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="302917296"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 00:17:31 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="828090984"
Received: from seamusk-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.39.102])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 00:17:30 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jun 2022 10:17:04 +0300
Message-Id: <20220610071704.4150527-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220610071704.4150527-1-jouni.hogander@intel.com>
References: <20220610071704.4150527-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915: Do not start connector polling
 on headless sku
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

Connector polling is waking up the polled device. Polling
is unnecessary if our device is known to not have display.

Fix this and save some power by disabling starting connector
polling when we are having headless sku. Use information from
opregion.

v2: Move headless sku check into INTEL_DISPLAY_ENABLED macro

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index eba94fa76b18..db37806967cc 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1343,7 +1343,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 /* Only valid when HAS_DISPLAY() is true */
 #define INTEL_DISPLAY_ENABLED(dev_priv) \
-	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
+	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)),		\
+	 !(dev_priv)->params.disable_display &&				\
+	 !intel_opregion_headless_sku(dev_priv))
 
 #define HAS_GUC_DEPRIVILEGE(dev_priv) \
 	(INTEL_INFO(dev_priv)->has_guc_deprivilege)
-- 
2.25.1

