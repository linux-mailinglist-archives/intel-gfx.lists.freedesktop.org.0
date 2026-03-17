Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAyzDWZkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4E22F7678
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8464810E53E;
	Mon, 23 Mar 2026 16:03:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UGOIR7jD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A86E10E045
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 19:11:12 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id
 d2e1a72fcca58-829b2018c94so3324529b3a.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 12:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773774672; x=1774379472; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Ey5xOspEF8t8qpOzkawTxCYiw1oiTsiTR8cXxAAxS3s=;
 b=UGOIR7jDJDlhnXhmmyaTHa6VgrnP0zU6tgwOTuoVmHr2j4pINFADD8u7e98dKd+2dD
 nZwxwoPPad1vlUNJT+3ERo414G0zaEOE8pNYWgW+BecbB1N2mVc8xkFFXcU1ViqFZbxy
 bsloIy3v5Vl3GRJEGz1wxugqYzzfqSGeTscfBe1p6UV6dCWwKsxk/u3/7HEtfBWNXnQH
 7hd+JyAHAaWeNI4m+REyDQu4aeX9SFUVguJdNpxl90rJ8Fapcs2bGDOCbOTD3hFYjHJD
 ICxhk7uQY3LP1FeP4eUIaJf+UZHOydRCkZYOuXojpg1Bfvkcsz7e8sfkxYnfpu4BgbDe
 K+3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773774672; x=1774379472;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Ey5xOspEF8t8qpOzkawTxCYiw1oiTsiTR8cXxAAxS3s=;
 b=qd/GKLnO3E1qbsyAbaLBTHDOWlAAVgNdZHlmNWwodCAlYJ8Aekqivi/29kPPp/7RUd
 XJxqc2bzw2MoQeeqWz9NoPQYWTqOJgPbepmeNxkiQbUFwTGyyfw6eWYZFespv14Z5QEs
 /yXemTZJApXddZGryrhT8OVyB4tJdC+r4OVLsCitOLBdew9MH3Qa4NKVcthFG60DmfEW
 dgsTMQz6yhEJOGL+KxmZ+ZrmeQlwyTU6MPMDbr4Hxsw4Rp3SAStb9oGlMvggSjg0oX/5
 mjs0YVqBobmCdwKhNYWU4EqQ1SpBg5Tk2p+xuVTwzzqbpECDhDe2f67Ztbyn3ZQavZoS
 /YuA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWCCGn4bmPpf93Ry9O70CHDogoQzunQRCngznLZf3723njcw8ak2diL4mGHO+m6zfbVJN9N8b470LE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwKOk1JRLoP7N41Hqkg9ql8cKESluYjyZppKzdgAnpT4wjiuaby
 e6t6EqMa8n3gTo2lKzcuA6lU8iJX82TjMKM+uonjDqW0/LRL8r9Axm0g
X-Gm-Gg: ATEYQzyQXZT6t0edUsu8rLPAYf+7NGgEGvVpjxilIuf61yWpDrPDysYktE5YyoBTpz1
 k/WHXYOEjRjTHK0hMJMraIwluErNjXYlAq38zNNmaXIkeVDHJv2iSrg2dlskR42ga9o0LFv+Phi
 xai3azdxcKxQvoEp9viCmA67CWukQoVABFc5rQpfz+0LpzXuaaauRxttvB18P3cJ11Q9RAc2uQt
 urcqTUqxy9dyigdkyuyKBL0Eh1eD0mAcI5FiSwI6XKMunv/l509xdNfTzfZAWNO5oavXzjJ6+Uw
 zMxoBR06GJVZKb7HE7J0lKSZL085Pu0WdLxzTyg3IeNzGXrwD/IeiZ1H6yjR8IeArbY2AEkS8se
 fMAclIl/x9Xb14pu/rA8GeMMgh8GgSB5va2Dr0uZ+4shm7qF3t/VnOJP/KbU45r4g7vMCTqKcnV
 jZ8pRoJjIKsaIPq0wlQgguk2EVpdhyuqr1vYW2eZLBQ7qHy++ZaMvMcQT9pydSJIT1ynFehI5tJ
 SwgVFlBzNkRLQdrpOBgQqWhWsMY4ud1xUlG9YIgDH8eh0zwEXL7zx+ItA0rW7+tcyPJ1Q==
X-Received: by 2002:a05:6a00:1ca3:b0:81f:4ce8:d64b with SMTP id
 d2e1a72fcca58-82a6ae4f234mr356985b3a.44.1773774672367; 
 Tue, 17 Mar 2026 12:11:12 -0700 (PDT)
Received: from 2045D.localdomain (76.sub-72-110-123.myvzw.com. [72.110.123.76])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-82a6bf0cf5fsm224612b3a.61.2026.03.17.12.11.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2026 12:11:11 -0700 (PDT)
From: Gui-Dong Han <hanguidong02@gmail.com>
To: gregkh@linuxfoundation.org, dakr@kernel.org, rafael@kernel.org,
 vkoul@kernel.org, yung-chuan.liao@linux.intel.com
Cc: pierre-louis.bossart@linux.dev, rander.wang@intel.com,
 linux-kernel@vger.kernel.org, driver-core@lists.linux.dev,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-sound@vger.kernel.org,
 akaieurus@gmail.com, me@ziyao.cc, Gui-Dong Han <hanguidong02@gmail.com>,
 yangshiguang <yangshiguang@xiaomi.com>
Subject: [PATCH 3/4] soundwire: debugfs: initialize firmware_file to empty
 string
Date: Wed, 18 Mar 2026 03:10:29 +0800
Message-ID: <20260317191029.43515-1-hanguidong02@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317185920.43387-1-hanguidong02@gmail.com>
References: <20260317185920.43387-1-hanguidong02@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:23 +0000
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
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[140];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[hanguidong02@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:gregkh@linuxfoundation.org,m:dakr@kernel.org,m:rafael@kernel.org,m:vkoul@kernel.org,m:yung-chuan.liao@linux.intel.com,m:pierre-louis.bossart@linux.dev,m:rander.wang@intel.com,m:linux-kernel@vger.kernel.org,m:driver-core@lists.linux.dev,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-sound@vger.kernel.org,m:akaieurus@gmail.com,m:me@ziyao.cc,m:hanguidong02@gmail.com,m:yangshiguang@xiaomi.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.dev,intel.com,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,gmail.com,ziyao.cc,xiaomi.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hanguidong02@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: BD4E22F7678
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Passing NULL to debugfs_create_str() causes a NULL pointer dereference
upon reading, and creating debugfs nodes with NULL string pointers is no
longer permitted. Change the initialization of firmware_file to an
allocated empty string. Existing driver code using this field handles
empty strings correctly.

Fixes: fe46d2a4301d ("soundwire: debugfs: add interface to read/write commands")
Reported-by: yangshiguang <yangshiguang@xiaomi.com>
Closes: https://lore.kernel.org/lkml/17647e4c.d461.19b46144a4e.Coremail.yangshiguang1011@163.com/
Signed-off-by: Gui-Dong Han <hanguidong02@gmail.com>
---
 drivers/soundwire/debugfs.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/soundwire/debugfs.c b/drivers/soundwire/debugfs.c
index ccc9670ef77c..d4abe8bfca76 100644
--- a/drivers/soundwire/debugfs.c
+++ b/drivers/soundwire/debugfs.c
@@ -358,8 +358,9 @@ void sdw_slave_debugfs_init(struct sdw_slave *slave)
 	debugfs_create_file("go", 0200, d, slave, &cmd_go_fops);
 
 	debugfs_create_file("read_buffer", 0400, d, slave, &read_buffer_fops);
-	firmware_file = NULL;
-	debugfs_create_str("firmware_file", 0200, d, &firmware_file);
+	firmware_file = devm_kstrdup(&slave->dev, "", GFP_KERNEL);
+	if (firmware_file)
+		debugfs_create_str("firmware_file", 0200, d, &firmware_file);
 
 	slave->debugfs = d;
 }
-- 
2.43.0

