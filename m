Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B2947C072
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Dec 2021 14:08:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 939FD88F1E;
	Tue, 21 Dec 2021 13:08:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7E6B10F41F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Dec 2021 13:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640092111; x=1671628111;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LP+eJ4gFkmEmhT44WhNC1+fD4ioEHWc1l2XMzb7PyDc=;
 b=EYrXe+UsxMtXZ4GPtxNLEnOkxgZkk9STD1zfj8Qz2hpMJcs0fUwKt8Ys
 eoh8TL9zr4yBhPQbYV9tn5QCrRRli2ZXe4PCOOAYUety+WBoNByfliA6B
 q74GIaMGHnJO6S6c55m8+MN8HXHqmZ7zlnm/AbcfPfdXh6oj5Vgwmdop2
 V+6wi2IbUfO8/70nTpqmldIINXO6DVJgQIkQYNPRmRyrpMF5jDx1jizl3
 VspDtDzKi+p0W1iWk5UwydTlx5GY4Msg+wrkAocJ4h+fWZH6EXInUyVt2
 LVgvqJkyr2Qf3ee1FuqKU9fXQYyLnAdMtwSuSdqwGYzo7SzUuhX0XD5Sq w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10204"; a="240612675"
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; d="scan'208";a="240612675"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 05:08:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; d="scan'208";a="684655691"
Received: from rezra1-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.22.155])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 05:08:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Dec 2021 15:08:24 +0200
Message-Id: <20211221130824.1796242-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/bios: fix slab-out-of-bounds access
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
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If VBT size is not a multiple of 4, the last 4-byte store will be out of
bounds of the allocated buffer. Spotted with KASAN. Round up the
allocation size.

Reported-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Fixes: a36e7dc0af1c ("drm/i915/dg1: Read OPROM via SPI controller")
Cc: Clint Taylor <clinton.a.taylor@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 76a8f001f4c4..310609d186cd 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2369,7 +2369,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 	vbt_size = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
 	vbt_size &= 0xffff;
 
-	vbt = kzalloc(vbt_size, GFP_KERNEL);
+	vbt = kzalloc(roundup(vbt_size, 4), GFP_KERNEL);
 	if (!vbt)
 		goto err_not_found;
 
-- 
2.30.2

