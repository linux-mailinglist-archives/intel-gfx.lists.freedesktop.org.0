Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FF94ABF90
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 14:27:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90A7310E64A;
	Mon,  7 Feb 2022 13:27:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABA6D10E64A
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 13:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644240426; x=1675776426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R8OE7+G9G6ox8L1pd9KS7MLF8Tsh+GrRnlJOa0YFpmM=;
 b=MInKMwUQ55c5/CPJ0Ae/4OkDMLltkblGZDUvL39xxhVdIRn4KYzXQTGU
 zMfJcUFmGLywPNyOvnbJupmYsiRagsj4kdGTQIOEvCWyG+FkCsDT9yNYw
 5oarwsaJ22eP/Y2yzfoX/Pq3nJY5znynD3lhiLBs4XK5/eDwVhHBWv7Ze
 hwwe3gqFS1eqroSJNUzNm+QZBOInSZR75kp15b9goW1ZT70g6wFnQl9Ds
 OQFkCgmFm8qPz1wPiI8NM6+5db5gfMzxIZltTxvZoSVC1cO+vNARNB1/u
 C2mSPjTnHSQfdXvfgvnjMfjQbaYQI4PoqDBNE5rFfDkUPgUpkbul23CP2 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="248924841"
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="248924841"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 05:27:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="484419454"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 07 Feb 2022 05:27:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Feb 2022 15:27:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Feb 2022 15:27:00 +0200
Message-Id: <20220207132700.481-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220207132700.481-1-ville.syrjala@linux.intel.com>
References: <20220207132700.481-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Fix mbus join config lookup
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

The bogus loop from compute_dbuf_slices() was copied into
check_mbus_joined() as well. So this lookup is wrong as well.
Fix it.

Cc: stable@vger.kernel.org
Fixes: f4dc00863226 ("drm/i915/adl_p: MBUS programming")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index da721aea70ff..23d4bb011fc8 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4831,7 +4831,7 @@ static bool check_mbus_joined(u8 active_pipes,
 {
 	int i;
 
-	for (i = 0; i < dbuf_slices[i].active_pipes; i++) {
+	for (i = 0; dbuf_slices[i].active_pipes != 0; i++) {
 		if (dbuf_slices[i].active_pipes == active_pipes)
 			return dbuf_slices[i].join_mbus;
 	}
-- 
2.34.1

