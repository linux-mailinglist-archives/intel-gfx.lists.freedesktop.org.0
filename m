Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACveAGNkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC612F7626
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C39510E511;
	Mon, 23 Mar 2026 16:03:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AdCftPIk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com
 [74.125.82.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6D6610E6A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 04:16:14 +0000 (UTC)
Received: by mail-dy1-f180.google.com with SMTP id
 5a478bee46e88-2c0c955a481so1667333eec.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 21:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773807374; x=1774412174; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JZvDiA5OjEH9jB/X3wjJ3qQao5asOiEdEuR+UFxLqYM=;
 b=AdCftPIkmTak36f5MKqplLgCKN/xKA0BwFvcaSekDdDEJnE8OxwmBrDSWSOLKxGK+n
 Fm3ja2fU9KBDce6IPtBC68QLuIVrcVHFsl1she29V5P4r2KXUp+YTVE78HJnNroscbGR
 qs6sOXtW5s40BoKOGpg624Rr1gMbixjuY/Gu62PFqeRJ5I57aUfqusLVDYBiTRSKmcSU
 451LkeqvT16Fuu1yiC3fJwymCnyhcwF/OK4ASuabM9HjYzrsCSQHFYASWRGoTpLVno6b
 EJb5RMNtQ8htTj/+aNoh1fSRaPCuGdB7oP7QBCjDVmf8+IbVFlNV0gNruY4IoPHBuxFf
 gkmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773807374; x=1774412174;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=JZvDiA5OjEH9jB/X3wjJ3qQao5asOiEdEuR+UFxLqYM=;
 b=XrvQMEdTNI0LHaN4gLvV6VSd/bY7wXrL3eZsDPl0TuuM8/RAmGJNjo2AXOY4rRlo+X
 pmer9oTwIyZBDRr5HJz2urREyApQOevSjeUwafDK4TxEhaCPXlSwDcWmu1Ui5wkFmTAJ
 H1sdRE1UOPFfY6C/CA1Za6ip8qVFMVwVhMt2G4kUo1xh3Zoq9imi9h+ZydOq4NvM7OF9
 wvYmnBDiFbfhM9HTocNK2JDlkMRtZUrAYQsWAuL9EFEQLfRnNUsMwggAPWawN8FD1Mep
 uztYxbSULxSSml6PsnYr6EJFTL+rt/etwXbLyqOq8Q79AX4agYxV1azxjjqvPgsVqpPQ
 +ZKQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU6WuxEzttMo9kRdmbpfIKK6n3OuuK6LrY0kVNWyS03Vq2PSKb/47c18EY+8dAhhuOYWikyMdrDq+Q=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzDEcjOS9fPCv/0i7TD3oMvUojFrMUYlmhNdunWBU3QZI6M3QTW
 9c2Sm3zVSx9ksRVwAnczSqCYLgJdJYTXkrxx6ozTA05fYnX78rnw9GKp
X-Gm-Gg: ATEYQzzz57wRyQjwnqeQgKVNK4MKoOy+b0LUre0o5/82fwy56YC5Gqc7l598DYttQLe
 wr8znme4k6cVWmXtDw0EfUQcWvsMyo5htFVhJBaTW7crwQGaE+vAqNvgz/Yb34RvSvnnwwUw8FF
 tzcEUZs8jW6qWDwcm4XgnRva5GFJrk1XBsSj5MqYdZ+FsaPjrYHrdw7qCHcX2RyT8B1Hs4Ziu1n
 gg0VdeAAQ4c9ShIHn9B1O1npfzNjFQIWgcjGboqtoqFppZGEFbWnBYtoXMH1bTPOwhtAMnVTgTC
 H2JSLL9boWqfS/AtQCARvEZ3ej4Mdhq5gqCNqkhpiqjZUi0JF/PwvhMiTsmJkvCIP6iDdxH3SDF
 hXx7tGs6rQxdpWgK6Ey9ErqDUil4Gy5n05CXXyQfPVP9rsBWdaCZCwNE9guqNIbX+wcXSjNpiSE
 Hi6yiv2TMQQUHb7AfTLe60IXWCSB39S7bdD2AyllkZdODwwup5wcI84+rVNUn8DGHUCXwpPsFzO
 DZjtB1ARhfDSwC4F+zGhWhim+Jc1FVn5nOFAFuH28npvAnAi+5cQD9KNFik4UZUJwcNUvtl
X-Received: by 2002:a05:693c:2c06:b0:2be:833c:14a6 with SMTP id
 5a478bee46e88-2c0e5044091mr1153364eec.15.1773807373685; 
 Tue, 17 Mar 2026 21:16:13 -0700 (PDT)
Received: from 2045L.localdomain (130.sub-75-229-251.myvzw.com.
 [75.229.251.130]) by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2c0e560fb5fsm2790870eec.31.2026.03.17.21.16.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2026 21:16:13 -0700 (PDT)
From: Gui-Dong Han <hanguidong02@gmail.com>
To: hanguidong02@gmail.com
Cc: akaieurus@gmail.com, dakr@kernel.org, dri-devel@lists.freedesktop.org,
 driver-core@lists.linux.dev, gregkh@linuxfoundation.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org, me@ziyao.cc,
 pierre-louis.bossart@linux.dev, rafael@kernel.org, rander.wang@intel.com,
 vkoul@kernel.org, yangshiguang@xiaomi.com, yung-chuan.liao@linux.intel.com
Subject: Re: [PATCH 3/4] soundwire: debugfs: initialize firmware_file to empty
 string
Date: Wed, 18 Mar 2026 12:14:28 +0800
Message-ID: <20260318041446.9066-1-hanguidong02@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317191029.43515-1-hanguidong02@gmail.com>
References: <20260317191029.43515-1-hanguidong02@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[131];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hanguidong02@gmail.com,m:akaieurus@gmail.com,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:driver-core@lists.linux.dev,m:gregkh@linuxfoundation.org,m:intel-xe@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-sound@vger.kernel.org,m:me@ziyao.cc,m:pierre-louis.bossart@linux.dev,m:rafael@kernel.org,m:rander.wang@intel.com,m:vkoul@kernel.org,m:yangshiguang@xiaomi.com,m:yung-chuan.liao@linux.intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[hanguidong02@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hanguidong02@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.freedesktop.org,lists.linux.dev,linuxfoundation.org,vger.kernel.org,ziyao.cc,linux.dev,intel.com,xiaomi.com,linux.intel.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 8AC612F7626
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 3:11 AM Gui-Dong Han <hanguidong02@gmail.com> wrote:
>
> Passing NULL to debugfs_create_str() causes a NULL pointer dereference
> upon reading, and creating debugfs nodes with NULL string pointers is no
> longer permitted. Change the initialization of firmware_file to an
> allocated empty string. Existing driver code using this field handles
> empty strings correctly.
>
> Fixes: fe46d2a4301d ("soundwire: debugfs: add interface to read/write commands")
> Reported-by: yangshiguang <yangshiguang@xiaomi.com>
> Closes: https://lore.kernel.org/lkml/17647e4c.d461.19b46144a4e.Coremail.yangshiguang1011@163.com/
> Signed-off-by: Gui-Dong Han <hanguidong02@gmail.com>
> ---
>  drivers/soundwire/debugfs.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/soundwire/debugfs.c b/drivers/soundwire/debugfs.c
> index ccc9670ef77c..d4abe8bfca76 100644
> --- a/drivers/soundwire/debugfs.c
> +++ b/drivers/soundwire/debugfs.c
> @@ -358,8 +358,9 @@ void sdw_slave_debugfs_init(struct sdw_slave *slave)
>         debugfs_create_file("go", 0200, d, slave, &cmd_go_fops);
>
>         debugfs_create_file("read_buffer", 0400, d, slave, &read_buffer_fops);
> -       firmware_file = NULL;
> -       debugfs_create_str("firmware_file", 0200, d, &firmware_file);
> +       firmware_file = devm_kstrdup(&slave->dev, "", GFP_KERNEL);
> +       if (firmware_file)
> +               debugfs_create_str("firmware_file", 0200, d, &firmware_file);

I initially patterned this fix after commit 8cc27f5c6dd1 [1] by using
devm_kstrdup(). However, I realized that approach is flawed:
debugfs_write_file_str() calls a raw kfree(), which causes a mismatch.
I have submitted a separate patch [2] to fix that existing commit.

Additionally, firmware_file is a global pointer in this driver. The
original code blindly overwrote it with NULL every time a new slave was
added.

To fix both issues properly, I moved the allocation to the subsystem
init and exit paths so it is only allocated once.

The updated v2 patch is included below for review. I will wait for
further comments on the rest of the series and include this updated
patch if a full v2 series is required.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8cc27f5c6dd1
[2] https://lore.kernel.org/linux-pm/20260318024815.7655-1-hanguidong02@gmail.com/

From bbaff3bc33746a965a2387ffe8302d05e700a1c3 Mon Sep 17 00:00:00 2001
From: Gui-Dong Han <hanguidong02@gmail.com>
Date: Wed, 18 Mar 2026 03:10:29 +0800
Subject: [PATCH v2 3/4] soundwire: debugfs: initialize firmware_file to empty string

Passing NULL to debugfs_create_str() causes a NULL pointer dereference,
and creating debugfs nodes with NULL string pointers is no longer
permitted.

Additionally, firmware_file is a global pointer. Previously, adding every
new slave blindly overwrote it with NULL.

Fix these issues by initializing firmware_file to an allocated empty
string once in the subsystem init path (sdw_debugfs_init), and freeing
it in the exit path. Existing driver code handles empty strings
correctly.

Fixes: fe46d2a4301d ("soundwire: debugfs: add interface to read/write commands")
Reported-by: yangshiguang <yangshiguang@xiaomi.com>
Closes: https://lore.kernel.org/lkml/17647e4c.d461.19b46144a4e.Coremail.yangshiguang1011@163.com/
Signed-off-by: Gui-Dong Han <hanguidong02@gmail.com>
---
v2:
* Replace devm_kstrdup() with kstrdup() to fix allocation/free mismatch
with debugfs.
* Move initialization to subsystem init/exit paths to avoid overwriting
the global pointer on every slave probe.
---
 drivers/soundwire/debugfs.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/soundwire/debugfs.c b/drivers/soundwire/debugfs.c
index ccc9670ef77c..2905ec19b838 100644
--- a/drivers/soundwire/debugfs.c
+++ b/drivers/soundwire/debugfs.c
@@ -358,8 +358,8 @@ void sdw_slave_debugfs_init(struct sdw_slave *slave)
 	debugfs_create_file("go", 0200, d, slave, &cmd_go_fops);
 
 	debugfs_create_file("read_buffer", 0400, d, slave, &read_buffer_fops);
-	firmware_file = NULL;
-	debugfs_create_str("firmware_file", 0200, d, &firmware_file);
+	if (firmware_file)
+		debugfs_create_str("firmware_file", 0200, d, &firmware_file);
 
 	slave->debugfs = d;
 }
@@ -371,10 +371,15 @@ void sdw_slave_debugfs_exit(struct sdw_slave *slave)
 
 void sdw_debugfs_init(void)
 {
+	if (!firmware_file)
+		firmware_file = kstrdup("", GFP_KERNEL);
+
 	sdw_debugfs_root = debugfs_create_dir("soundwire", NULL);
 }
 
 void sdw_debugfs_exit(void)
 {
 	debugfs_remove_recursive(sdw_debugfs_root);
+	kfree(firmware_file);
+	firmware_file = NULL;
 }
-- 
2.43.0

