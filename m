Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB8558B584
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Aug 2022 14:33:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E83BB18BEA1;
	Sat,  6 Aug 2022 12:31:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83B8AC1754
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Aug 2022 12:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659788844; x=1691324844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pWwgBvD99brUZP1vpwghMCe5wodCT05WBigqNzyLWgg=;
 b=NCiPnyOk7wOUjFYj0sImZc9RzYJ6mOiq6FU3a9V1IUWw38JMZvJuxxFL
 g3NTgr07Ii5LXCwvHa0P5Kb1Ka5J6QrzhFCDSAqxlJSNXvS/Lw60papIJ
 l3n4DtHx+Yhg50+snvwBBVAAiNYmkHSG5Ocw9kTsjpH03XHoIAfmn7O0/
 wXLCep6UEkGNLjzAdR+bsbNpLfVKn4UyF4FG4QV/cvBwf995hpGLPpdfD
 FlhN8udgP2UdS2iqt3r/z22DL1oS/rsUHXCUi2JHFTinNEasmMlGFs8X6
 t2hbqFGBTo9ttQ0OzzSe/mzLj8KXbQr9SxBKigSLZe8lE6Y2AC7QOvmJI w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="376658382"
X-IronPort-AV: E=Sophos;i="5.93,217,1654585200"; d="scan'208";a="376658382"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2022 05:27:23 -0700
X-IronPort-AV: E=Sophos;i="5.93,217,1654585200"; d="scan'208";a="632329045"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.143])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2022 05:27:19 -0700
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Sat,  6 Aug 2022 15:26:24 +0300
Message-Id: <20220806122636.43068-4-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220806122636.43068-1-tomas.winkler@intel.com>
References: <20220806122636.43068-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 03/15] mei: add slow_firmware flag to the mei
 auxiliary device
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
Cc: intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add slow_firmware flag to the mei auxiliary device info
to inform the mei driver about slow underlying firmware.
Such firmware will require to use larger operation timeouts.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 include/linux/mei_aux.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/mei_aux.h b/include/linux/mei_aux.h
index a0cb587006d5..4894d8bf4159 100644
--- a/include/linux/mei_aux.h
+++ b/include/linux/mei_aux.h
@@ -12,11 +12,14 @@
  * @aux_dev: - auxiliary device object
  * @irq: interrupt driving the mei auxiliary device
  * @bar: mmio resource bar reserved to mei auxiliary device
+ * @slow_firmware: The device has slow underlying firmware.
+ *                 Such firmware will require to use larger operation timeouts.
  */
 struct mei_aux_device {
 	struct auxiliary_device aux_dev;
 	int irq;
 	struct resource bar;
+	bool slow_firmware;
 };
 
 #define auxiliary_dev_to_mei_aux_dev(auxiliary_dev) \
-- 
2.37.1

