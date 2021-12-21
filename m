Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A351247C789
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Dec 2021 20:38:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0242410F70B;
	Tue, 21 Dec 2021 19:37:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FD9210F70B;
 Tue, 21 Dec 2021 19:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640115478; x=1671651478;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lnQLTHpmTtqADYHA5jI8pdWF3mm1J1Q+wUCTPMgKO6k=;
 b=ieVhiok0ifY7zPAeYJzy/2HvbDFPsJ57hrgzCnB4NToaAbx+KKPWz72R
 1eGAW1ME0vEJvfFl0zeXhqiSiPY1bBnHA3tGZWuCSbeBGBi5Ej4hyPQwE
 JgMHuSTc4IKegz5h9BjJs+9nhBaAWsp1lO96PqIZR3g+v2stng45uaKOh
 eJZ4NHf468yObQP5iLHpYBk5Q9pZnitmETAQYOIwy0ClIeSfu4EdKExiI
 M8XRQmerAY8dAzdtiswWaa4ggjkPCoy2QgijXzOwxelsT6k0NyZHAEgUO
 +NzmAn/KRtcfsqAcMaQ5D11Zqbek5DKj8pmcVPpSBrP51cQ3GiBIcV/iU Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="227773894"
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="227773894"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 11:37:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="664054639"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga001.fm.intel.com with SMTP; 21 Dec 2021 11:37:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Dec 2021 21:37:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 21 Dec 2021 21:37:53 +0200
Message-Id: <20211221193754.12287-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm: Always include the debugfs dentry in
 drm_crtc
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
Cc: Jani Nikula <jani.nikula@intel.com>, Nathan Chancellor <nathan@kernel.org>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Remove the counterproductive CONFIG_DEBUG_FS ifdef and just include
the debugfs dentry in drm_crtc always. This way we don't need
annoying ifdefs in the actual code with DEBUGFS=n. Also we don't
have these ifdefs around any of the other debugfs dentries either
so can't see why drm_crtc should be special.

This fixes the i915 DEBUGFS=n build because I assumed the dentry
would always be there.

Cc: Jani Nikula <jani.nikula@intel.com>
Reported-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>
Fixes: e74c6aa955ca ("drm/i915/fbc: Register per-crtc debugfs files")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 include/drm/drm_crtc.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/drm/drm_crtc.h b/include/drm/drm_crtc.h
index 13eeba2a750a..4d01b4d89775 100644
--- a/include/drm/drm_crtc.h
+++ b/include/drm/drm_crtc.h
@@ -1135,14 +1135,12 @@ struct drm_crtc {
 	 */
 	spinlock_t commit_lock;
 
-#ifdef CONFIG_DEBUG_FS
 	/**
 	 * @debugfs_entry:
 	 *
 	 * Debugfs directory for this CRTC.
 	 */
 	struct dentry *debugfs_entry;
-#endif
 
 	/**
 	 * @crc:
-- 
2.32.0

