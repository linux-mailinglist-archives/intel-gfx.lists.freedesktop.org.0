Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 704A79FD3DD
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2024 12:37:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FEDB10E3C2;
	Fri, 27 Dec 2024 11:37:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="X8tOeP4Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5164210E3B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2024 11:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=khruvrtBZOjm1Q396MscA11s7dVcIV/GWd7Wg6z81ic=; b=X8tOeP4Z0L+6spEirQmkD9Xg1R
 ajBaz+qH2EMX+laadfAqWoAdfDQ7yD46nxQMHSuqTo/MHx2WpykMXR3LqatZwqKntDmdjrm/8YHpv
 tjGZj8fwkJbqXSweB8bKllNlzmQqVpvJlZt5bgkfGEzDgckFdoxlL5D8QAeDHwrW3ZmsAaNtJEz3z
 L7UPuOrHu5ryePhMEgoQoH3olFXlDyqetNZK2qP/IlHQRN9oxEcBMGBW2ohiiDXKMCjaH2TTyEVYO
 7lcEFoLb3nTFhcZ/7XUJ0uERZERuUgrsiMGjzvFpaW2pJnQ5ShZ968tcWgMi010Ktmu+G7yiFRXko
 zZWxxerA==;
Received: from [90.241.98.187] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1tR8fD-008EU9-Jj
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2024 12:37:55 +0100
From: Tvrtko Ursulin <tursulin@igalia.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915: Remove unused intel_huc_suspend
Date: Fri, 27 Dec 2024 11:37:53 +0000
Message-ID: <20241227113754.25871-2-tursulin@igalia.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241227113754.25871-1-tursulin@igalia.com>
References: <20241227113754.25871-1-tursulin@igalia.com>
MIME-Version: 1.0
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

From: "Dr. David Alan Gilbert" <linux@treblig.org>

intel_huc_suspend() was added in 2022 by
commit 27536e03271d ("drm/i915/huc: track delayed HuC load with a
fence")
but hasn't been used.

Remove it.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/gpu/drm/i915/gt/uc/intel_huc.c | 13 -------------
 drivers/gpu/drm/i915/gt/uc/intel_huc.h |  1 -
 2 files changed, 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index d7ac31c3254c..b3cbf85c00cb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -427,19 +427,6 @@ void intel_huc_fini(struct intel_huc *huc)
 		intel_uc_fw_fini(&huc->fw);
 }
 
-void intel_huc_suspend(struct intel_huc *huc)
-{
-	if (!intel_uc_fw_is_loadable(&huc->fw))
-		return;
-
-	/*
-	 * in the unlikely case that we're suspending before the GSC has
-	 * completed its loading sequence, just stop waiting. We'll restart
-	 * on resume.
-	 */
-	delayed_huc_load_complete(huc);
-}
-
 static const char *auth_mode_string(struct intel_huc *huc,
 				    enum intel_huc_authentication_type type)
 {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.h b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
index ba5cb08e9e7b..d5e441b9e08d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
@@ -57,7 +57,6 @@ int intel_huc_sanitize(struct intel_huc *huc);
 void intel_huc_init_early(struct intel_huc *huc);
 int intel_huc_init(struct intel_huc *huc);
 void intel_huc_fini(struct intel_huc *huc);
-void intel_huc_suspend(struct intel_huc *huc);
 int intel_huc_auth(struct intel_huc *huc, enum intel_huc_authentication_type type);
 int intel_huc_wait_for_auth_complete(struct intel_huc *huc,
 				     enum intel_huc_authentication_type type);
-- 
2.47.1

