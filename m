Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8F94CD228
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 11:14:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 018CC10E476;
	Fri,  4 Mar 2022 10:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F23110E476
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 10:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646388872; x=1677924872;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e/0JfA5Fp95603UdT5dM+82H4Y7tjeAdtCtPUIjNoHY=;
 b=PGHe/Af4X2TqCLMBEo78LfUxYqb6wTinwkcjxrfHW7E4lOzhP/uwxPZ5
 4M1q9BeidI/gJt9b7lEcW8XfXxXIHlFFIhmDeu/wRmvlDxh8lN8y35mhR
 iY0Qvxi3ZPVZamInoiRiQQusuNpssvMs3wXoBsgYusfed/dpB8pvcusag
 DPpSmPDlcSaM9KU1w15Eds1Rhg8g31M9fRof+0LS1yQMNvAkK5ThY8O2n
 /Au5K3tuPaOkR+Z1JCN8C0ypjO2TNyxGZp3kTS3sxDogmhsbiCQcx+cw8
 hndCk0y/Ai/T5yKyXL86Zi/Gjnd6ZOkLsxlxTmdhkXdWN4KGOazmaIiPb g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="233905899"
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="233905899"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 02:14:32 -0800
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="536228595"
Received: from pruilobx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.28.174])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 02:14:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Mar 2022 12:14:25 +0200
Message-Id: <20220304101426.1891347-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gmbus: move some local bus
 variables within loops
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Limit the scope.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 2bb3494b93e2..8f26528c3dc7 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -868,7 +868,6 @@ static const struct i2c_lock_operations gmbus_lock_ops = {
 int intel_gmbus_setup(struct drm_i915_private *dev_priv)
 {
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
-	struct intel_gmbus *bus;
 	unsigned int pin;
 	int ret;
 
@@ -886,6 +885,7 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv)
 
 	for (pin = 0; pin < ARRAY_SIZE(dev_priv->gmbus); pin++) {
 		const struct gmbus_pin *gmbus_pin;
+		struct intel_gmbus *bus;
 
 		gmbus_pin = get_gmbus_pin(dev_priv, pin);
 		if (!gmbus_pin)
@@ -978,10 +978,11 @@ bool intel_gmbus_is_forced_bit(struct i2c_adapter *adapter)
 
 void intel_gmbus_teardown(struct drm_i915_private *dev_priv)
 {
-	struct intel_gmbus *bus;
 	unsigned int pin;
 
 	for (pin = 0; pin < ARRAY_SIZE(dev_priv->gmbus); pin++) {
+		struct intel_gmbus *bus;
+
 		bus = dev_priv->gmbus[pin];
 		if (!bus)
 			continue;
-- 
2.30.2

