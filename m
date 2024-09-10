Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AD49738DC
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 15:42:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9FE710E7F2;
	Tue, 10 Sep 2024 13:42:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SxR1i7hG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D667A10E7EF;
 Tue, 10 Sep 2024 13:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725975748; x=1757511748;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CqfnHzWr4aSKie5yvzqrTjj3Nzo4thUCiYFze8b25QA=;
 b=SxR1i7hGCl8Vf+o7LnWeC004gXt+gkR0m+r/je66riO+nxcKUHQJ8zKQ
 w7bGrlpcY5l6zos7TyMBOh7+HNdH/S6bWyHqdagNgnSon4vP2u8LSz4a4
 AtTAW2QxBQjrhgNI/Rf3sWZjzjIhKo/urQl3xEna1AwBx2aaV/OJRb/9v
 tkJ6DL1P93b45S8zZ7+oxTaPom9Jdc10g2ztj31UCiKu69aQccLMg63su
 y0I16lsfv8JimJiRXZhcy+YPWvc5qovYObyN9kMzrXaNKBpXyUdEv3wsE
 XHzlUFk2JxU9vHGI8ZEP7n8UNNAUynlvxhnI8djOemgEJVjzsomDSWlsV A==;
X-CSE-ConnectionGUID: Qq3qkw/YTf6IWtqb+eM7Ng==
X-CSE-MsgGUID: 327R8SF8QTKV3JCS6ItaYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="35861234"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="35861234"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:42:28 -0700
X-CSE-ConnectionGUID: 7Rqet5rhRuix/5+saIycHw==
X-CSE-MsgGUID: f79PIF1wSri6K/NtGk6HZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67081298"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Sep 2024 06:42:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Sep 2024 16:42:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/5] drm/i915/bios: Round PCI ROM VBT allocation to multiple
 of 4
Date: Tue, 10 Sep 2024 16:42:16 +0300
Message-ID: <20240910134219.28479-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
References: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

The SPI code rounds the VBT allocation to a multiple of four bytes
(presumably because it reads the VBT 4 bytes at a time). Do the
same for the PCI ROM side to eliminate pointless differences between
the two codepaths. This will make no functional difference.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 86b81fd23f58..cc4a4cc2bf3e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3166,7 +3166,7 @@ static struct vbt_header *oprom_get_vbt(struct intel_display *display,
 	}
 
 	/* The rest will be validated by intel_bios_is_valid_vbt() */
-	vbt = kmalloc(vbt_size, GFP_KERNEL);
+	vbt = kmalloc(round_up(vbt_size, 4), GFP_KERNEL);
 	if (!vbt)
 		goto err_unmap_oprom;
 
-- 
2.44.2

