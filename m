Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6011397EE11
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 17:25:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0063810E424;
	Mon, 23 Sep 2024 15:25:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b/cw4mja";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1C4710E438;
 Mon, 23 Sep 2024 15:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727105105; x=1758641105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=laAiViqZnmtiQe4WFrnrp5X550IcdYdpVSfea1AcZbw=;
 b=b/cw4mja/g8JCX+nYwyxn7FcacmsYY/sXcs+zSEJUSwBhVEt9i9IHp/x
 A22f0ITdClziQfZSAyDeqxSed8VKyZSRYdOaKLBDF4hLrJDJ6WhRv8TkH
 kUEssRPdAM8IjDUSOsfr0DwxHBK//bVj7PKZgsdZA0ujbj0D2fY7js/p5
 W073Z7olUbzD/fgkCcDEBh3/2MQa62gEMeMrCxkiFpUTgQa+sswgEBgAh
 jpI6bxZulxylZib+aVeBxLycauTdPn1Rf63aCHOYuiB1OMwKRdqEsa+Uk
 cGFSh/lP+wmCBuAgExseklOAdnaJ+mIm4LSYMvlRyf4JJahwigYKMVz+N w==;
X-CSE-ConnectionGUID: SP7aBMLaSKCFUOpx5qxRTw==
X-CSE-MsgGUID: NtObWu+qR02AoyQhjk8e0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26013471"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="26013471"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 08:25:05 -0700
X-CSE-ConnectionGUID: Xi0vFIX1Tj+znF6b1FTaLQ==
X-CSE-MsgGUID: JJaf8vKCRga2cFIx40FaBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="71239776"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 08:25:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 18:25:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 3/6] drm/i915/bios: Round PCI ROM VBT allocation to
 multiple of 4
Date: Mon, 23 Sep 2024 18:24:50 +0300
Message-ID: <20240923152453.11230-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240923152453.11230-1-ville.syrjala@linux.intel.com>
References: <20240923152453.11230-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 37f30bb76e08..d4281234773c 100644
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

