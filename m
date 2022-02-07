Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B054ABF8F
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 14:27:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E048710F7B2;
	Mon,  7 Feb 2022 13:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99DBA10F7A2
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 13:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644240424; x=1675776424;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Set1mcUkQ4+KFe79Ox6jaYcx/9lWkeScNRjlFJWUwQY=;
 b=ZSauSqNDzZToBP4niNLfWWTPHVjY6B3JoYCGQta21QVe0sMzETLuGtme
 XBDNAoqFs+Q3FciYYstIaxWh5aF0/R4IACqKobHQ+JEYl1JN5x6V8PaQG
 PUAIJaW/CB0pHGVajxtadA2Hphd2bUkkVfwBmNJ7OesUKsNW1EQiCEepC
 l+64ngJQRqHA/oWjW7Ou/8f3OTJJechUL3KqY8SBgI/w3gq3mNPZO+ZIN
 l5fD1aq6xKnFG/PB3FbvMZSkMzq6TPc2O22guJlsrKYgtHuR64P49TfHF
 /XoweAwUfPzyuwtsu0L53MmGUxj3K2cj0gCuIRipW/IpocsH0U/Gfegov Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="247547157"
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="247547157"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 05:27:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="525132955"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 07 Feb 2022 05:27:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Feb 2022 15:27:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Feb 2022 15:26:59 +0200
Message-Id: <20220207132700.481-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i195: Fix dbuf slice config lookup
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Apparently I totally fumbled the loop condition when I
removed the ARRAY_SIZE() stuff from the dbuf slice config
lookup. Comparing the loop index with the active_pipes bitmask
is utter nonsense, what we want to do is check to see if the
mask is zero or not.

Cc: stable@vger.kernel.org
Fixes: 05e8155afe35 ("drm/i915: Use a sentinel to terminate the dbuf slice arrays")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 02084652fe3d..da721aea70ff 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4848,7 +4848,7 @@ static u8 compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool join_mbus,
 {
 	int i;
 
-	for (i = 0; i < dbuf_slices[i].active_pipes; i++) {
+	for (i = 0; dbuf_slices[i].active_pipes != 0; i++) {
 		if (dbuf_slices[i].active_pipes == active_pipes &&
 		    dbuf_slices[i].join_mbus == join_mbus)
 			return dbuf_slices[i].dbuf_mask[pipe];
-- 
2.34.1

