Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0E19E2C8D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 21:00:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8718710E0D0;
	Tue,  3 Dec 2024 20:00:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fxCfFjCz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADCF010E0D0;
 Tue,  3 Dec 2024 20:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733256032; x=1764792032;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YPLd1DjAX7gNniFPSLTOWYkyjTh0BKWZSf83E6y5uoo=;
 b=fxCfFjCzesMnjBYT1jNxLHTe9L6XdX+p3SzasFIFmyQp+monEaqPWqjk
 v2b3c2kCcqxU1RX4Ewson6kRGUKDbQrqL3LDQkBSYGQh6BDxiMB8XCPZA
 kiSN8nuuQBZsOwFLHoh6EpbOyeuQk3bjJhUs+YaDBi6lgKj37F/ynzjcM
 TzoQWseuUzcFZdohAxM8b81Lf7RfhcWrt1rqerpbmKtNoxuABjWk5MJeB
 XKkw8aMgykdcFZ3FkAFMaDNZ5RY7UORFkxC/D6OT9bQl4sQ0/CLrlPCwA
 pV7V4lO4vU84+KiqdusJHvOKTY9/LGMay9d923RaDmz6+uF3321kGu9wm w==;
X-CSE-ConnectionGUID: PULSQOXkQ5WaxgUaHExTlA==
X-CSE-MsgGUID: 8D/njRgmQ/qsah9gs1DVJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="32836190"
X-IronPort-AV: E=Sophos;i="6.12,206,1728975600"; d="scan'208";a="32836190"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 12:00:31 -0800
X-CSE-ConnectionGUID: FBet2v0pT5mgv6lPdcazhg==
X-CSE-MsgGUID: wXQ+BAo+QP2yS9DL5khdyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,206,1728975600"; d="scan'208";a="98523157"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 12:00:31 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: linux-usb@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 <intel-xe@lists.freedesktop.org>, intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 chaitanya.kumar.borah@intel.com, Luca Coelho <luca@coelho.fi>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH] usb: typec: ucsi: Fix connector status writing past buffer
 size
Date: Tue,  3 Dec 2024 12:00:10 -0800
Message-ID: <20241203200010.2821132-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
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

Similar to commit 65c4c9447bfc ("usb: typec: ucsi: Fix a missing bits to
bytes conversion in ucsi_init()"), there was a missing conversion from
bits to bytes. Here the outcome is worse though: since the value is
lower than UCSI_MAX_DATA_LENGTH, instead of bailing out with an error,
it writes past the buffer size.

The error is then seen in other places like below:

	Oops: general protection fault, probably for non-canonical address 0x891e812cd0ed968: 0000 [#1] PREEMPT SMP NOPTI
	CPU: 3 UID: 110 PID: 906 Comm: prometheus-node Not tainted 6.13.0-rc1-xe #1
	Hardware name: Intel Corporation Lunar Lake Client Platform/LNL-M LP5 RVP1, BIOS LNLMFWI1.R00.3222.D84.2410171025 10/17/2024
	RIP: 0010:power_supply_get_property+0x3e/0xe0
	Code: 85 c0 7e 4f 4c 8b 07 89 f3 49 89 d4 49 8b 48 20 48 85 c9 74 72 49 8b 70 18 31 d2 31 c0 eb 0b 83 c2 01 48 63 c2 48 39 c8 73 5d <3b> 1c 86 75 f0 49 8b 40 28 4c 89 e2 89 de ff d0 0f 1f 00 5b 41 5c
	RSP: 0018:ffffc900017dfa50 EFLAGS: 00010246
	RAX: 0000000000000000 RBX: 0000000000000011 RCX: c963b02c06092008
	RDX: 0000000000000000 RSI: 0891e812cd0ed968 RDI: ffff888121dd6800
	RBP: ffffc900017dfa68 R08: ffff88810a4024b8 R09: 0000000000000000
	R10: 0000000000000000 R11: 0000000000000000 R12: ffffc900017dfa78
	R13: ffff888121dd6800 R14: ffff888138ad2c00 R15: ffff88810c57c528
	FS:  00007713a2ffd6c0(0000) GS:ffff88846f380000(0000) knlGS:0000000000000000
	CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
	CR2: 000000c0004b1000 CR3: 0000000121ce8003 CR4: 0000000000f72ef0
	DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
	DR3: 0000000000000000 DR6: 00000000ffff07f0 DR7: 0000000000000400
	PKRU: 55555554
	Call Trace:
	 <TASK>
	 ? show_regs+0x6c/0x80
	 ? die_addr+0x37/0xa0
	 ? exc_general_protection+0x1c1/0x440
	 ? asm_exc_general_protection+0x27/0x30
	 ? power_supply_get_property+0x3e/0xe0
	 power_supply_hwmon_read+0x50/0xe0
	 hwmon_attr_show+0x46/0x170
	 dev_attr_show+0x1a/0x70
	 sysfs_kf_seq_show+0xaa/0x120
	 kernfs_seq_show+0x41/0x60

Just use the buffer size as argument to fix it.

Fixes: 226ff2e681d0 ("usb: typec: ucsi: Convert connector specific commands to bitmaps")
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/usb/typec/ucsi/ucsi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/typec/ucsi/ucsi.c b/drivers/usb/typec/ucsi/ucsi.c
index c435c0835744a..69caae84879e9 100644
--- a/drivers/usb/typec/ucsi/ucsi.c
+++ b/drivers/usb/typec/ucsi/ucsi.c
@@ -651,7 +651,8 @@ static void ucsi_unregister_altmodes(struct ucsi_connector *con, u8 recipient)
 static int ucsi_get_connector_status(struct ucsi_connector *con, bool conn_ack)
 {
 	u64 command = UCSI_GET_CONNECTOR_STATUS | UCSI_CONNECTOR_NUMBER(con->num);
-	size_t size = min(UCSI_GET_CONNECTOR_STATUS_SIZE, UCSI_MAX_DATA_LENGTH(con->ucsi));
+	size_t size = min(sizeof(con->status),
+			  UCSI_MAX_DATA_LENGTH(con->ucsi));
 	int ret;
 
 	ret = ucsi_send_command_common(con->ucsi, command, &con->status, size, conn_ack);
-- 
2.47.0

