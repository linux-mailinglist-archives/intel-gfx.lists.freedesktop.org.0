Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BMFAXBkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:04:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A378D2F7765
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAC0510E57B;
	Mon, 23 Mar 2026 16:03:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="I2gXa++t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C154D10E045
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 19:00:47 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id
 98e67ed59e1d1-35b95e21ccaso101642a91.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 12:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773774047; x=1774378847; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=G5pUoPYvzvdY/i+3VyCKmXdQJFa9RgqmeQepWrHmR+w=;
 b=I2gXa++t1BbszbhmMQv4hFVcP6r+PL/rryMMDT1X8IFx6bFjeroNKkYJ3sNxovPQ3T
 0538Np60Q1KGSrQfYgV6cbSG442RbaLwXkI+CWZzxy4wZfB2HWNFnGBXpg67xD35ZhEN
 jjOA3JwsZu20JZgT30e5y9PZU6WlMINkClmvD6GM3NgiVOzYutru5mhXsLDTTnM9caI/
 mSostH9WauluE1sMUDZYWE5frzuBo+v7aXgaU3P55Ie8aaOKer+sLRF0vmuHNtq7lOaW
 ZK3zJ3hrzuMB3BSejca3Ly1EGUNJTMmJsixVSRRS2bYufPAhqx1XWF38kU/RTMdPFyN0
 StUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773774047; x=1774378847;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=G5pUoPYvzvdY/i+3VyCKmXdQJFa9RgqmeQepWrHmR+w=;
 b=K4kd2EYPi+A5ReICirWpdK2MBjyOSpCIkBWad2Kn7eet322Ss/ppKgTCyRyDFpMug2
 Co7LTZ5dbsWKEG+Fct26Px0BxDl/oO3j/5VDu3eJgytLBVl7haKIbDzKWnpyBQpGc/yQ
 x32TDILvox+MqmNiCYS985e/HCUx6Ni3OXnKHbMRz+WV1PvDSnqg1+azJRoElsFx0lU8
 H7hvFizq7E0vX8dhkU2qUxq3rMKteyfc/lZ2Atbrti0mSj3n1LRquN7GeMfnMrECggAs
 pT+NJAURILLOnx4iSy8C8sZ0T7sQkUwvBuc+lRWLGpeYkVRPzCL5T6Hh5twqpn4dp/Pn
 Yrcg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXdCDEhxFKA2+GNq0lqTdFeMXPpuHEF2Ok70jTxYb857s6NFdT+KapuZOgmsJjH2SCvvUwIvcv9Rmk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YytJyqgD+PgqN9JigMbX41DgV2Vu1iv4eygZK00XYScy76hhk3G
 GYKaUCrjeWBsg2noB44USEGqy2UrcCcv7qAVDZMr+g7bW3nChbz15Abw
X-Gm-Gg: ATEYQzzUmAowjru2nb2drUpqrRCeH5hVQGkvtmr73ZIWvAZ9/Z7j6+OlJ6QWw/fxn7S
 NtFpLMVn3o6m2eCt8GlHxuQouMrpSbe1v639A2I7zNBy1h/0Q7QHavj6+QkJzosqWqPERtqeHEd
 bynZdGjdq++UtJovxGmLNDGzpEhJgrOs77hS1cap0vd/5pjouQje7sk8bwBOs8cum0nu7V3pTZ7
 2oWMAFLzpsfsTX9VZnJVHy73S6DK4Rr0XAwunholD/BjHwgspU1jTkv7JAZX6gG/EIBDWtr1SkB
 OTuqhGwY1QH5NAxSdJs7IL9HadtRtT3fULYgkpkrmIHgnfPwnOtT9gqHuzCZfcZ6B2xJaHmA0bl
 gxUGJcB5QgPiucQ65Ap4KkH0gjFZ85PJPoy8CM2lhXeCjwLVv5Eg0/KCj523B1AbgfURTXeRy9J
 oYEDErQOx18JawYDduM7zMLJkZtOX4EF1k0a29dIbRtUoCQhn2nRKfj6vsKeotH1c1J+tEuM8y8
 ZvJaWSswpg0dwdQ3U8JDl1SitBmOHYc0M5CUww4RdlC/0PJaJahfjnJ4TmgBv2YfW9fqw==
X-Received: by 2002:a17:90b:3a47:b0:35b:9f51:a755 with SMTP id
 98e67ed59e1d1-35badc14391mr3481930a91.18.1773774047144; 
 Tue, 17 Mar 2026 12:00:47 -0700 (PDT)
Received: from 2045D.localdomain (76.sub-72-110-123.myvzw.com. [72.110.123.76])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-35bba5a2c60sm196240a91.9.2026.03.17.12.00.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2026 12:00:46 -0700 (PDT)
From: Gui-Dong Han <hanguidong02@gmail.com>
To: gregkh@linuxfoundation.org,
	dakr@kernel.org,
	rafael@kernel.org
Cc: linux-kernel@vger.kernel.org, driver-core@lists.linux.dev,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-sound@vger.kernel.org,
 akaieurus@gmail.com, me@ziyao.cc, Gui-Dong Han <hanguidong02@gmail.com>
Subject: [PATCH 2/4] debugfs: fix placement of EXPORT_SYMBOL_GPL for
 debugfs_create_str()
Date: Wed, 18 Mar 2026 02:59:11 +0800
Message-ID: <20260317185920.43387-3-hanguidong02@gmail.com>
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
	DATE_IN_PAST(1.00)[141];
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
	FORGED_RECIPIENTS(0.00)[m:gregkh@linuxfoundation.org,m:dakr@kernel.org,m:rafael@kernel.org,m:linux-kernel@vger.kernel.org,m:driver-core@lists.linux.dev,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-sound@vger.kernel.org,m:akaieurus@gmail.com,m:me@ziyao.cc,m:hanguidong02@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.freedesktop.org,gmail.com,ziyao.cc];
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
X-Rspamd-Queue-Id: A378D2F7765
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The EXPORT_SYMBOL_GPL() for debugfs_create_str was placed incorrectly
away from the function definition. Move it immediately below the
debugfs_create_str() function where it belongs.

Fixes: d60b59b96795 ("debugfs: Export debugfs_create_str symbol")
Signed-off-by: Gui-Dong Han <hanguidong02@gmail.com>
---
 fs/debugfs/file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/debugfs/file.c b/fs/debugfs/file.c
index a941d73251b0..edd6aafbfbaa 100644
--- a/fs/debugfs/file.c
+++ b/fs/debugfs/file.c
@@ -1047,7 +1047,6 @@ ssize_t debugfs_read_file_str(struct file *file, char __user *user_buf,
 
 	return ret;
 }
-EXPORT_SYMBOL_GPL(debugfs_create_str);
 
 static ssize_t debugfs_write_file_str(struct file *file, const char __user *user_buf,
 				      size_t count, loff_t *ppos)
@@ -1142,6 +1141,7 @@ void debugfs_create_str(const char *name, umode_t mode,
 	debugfs_create_mode_unsafe(name, mode, parent, value, &fops_str,
 				   &fops_str_ro, &fops_str_wo);
 }
+EXPORT_SYMBOL_GPL(debugfs_create_str);
 
 static ssize_t read_file_blob(struct file *file, char __user *user_buf,
 			      size_t count, loff_t *ppos)
-- 
2.43.0

