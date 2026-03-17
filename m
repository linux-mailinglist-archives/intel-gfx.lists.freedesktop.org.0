Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WF0WOVZkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8512F7561
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CDF810E4F9;
	Mon, 23 Mar 2026 16:03:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="B1pGTCDK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9662710E1B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 19:00:28 +0000 (UTC)
Received: by mail-pj1-f53.google.com with SMTP id
 98e67ed59e1d1-3585ec417f6so88643a91.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 12:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773774028; x=1774378828; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=N2RhT/UW1C987y6pJfFZ8RN5SYowSBt72Kbbj9XR2UU=;
 b=B1pGTCDKomwHTuyf3+Wg7w3iKPNLvGrLGgPp4cp8nhZgHkD4ekYXmy0VRCcncA2hof
 gLaBKm8Tzz2u7X7NRwCbIDfJv1I76wVGgdXA5JrU8CvG4d1/863xRGoWS0CeNV/KCzm/
 k+RJYQLis+EOdH5QAZrew6k2nBK792+zYRBpSzOcI77WcjFebr1bLmxG26XqUsZZHUX2
 C4ZglIvBrNIi3E500JSHZmq3ewhy/PK8DmNrXm5pRar8Y8ikazG7i+MhCA43KJYYU92/
 tSlJqBaHJLkEnplKTtmI3stbxMndxftOjspN1oniyYl3bEfABjqzgtuwtpYoCX3GMFtr
 98Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773774028; x=1774378828;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=N2RhT/UW1C987y6pJfFZ8RN5SYowSBt72Kbbj9XR2UU=;
 b=Yku0TfNBKIAC5HJRKxT792erg8vf5Hbj1r1pH5mZjB67QcY+gvi4UxZU6+APrReZmy
 q4C3CKywbOaYRs03/HTUvb14LhtIFvIFhGhoJBfWTCrRjEYZomF7wHW1E6mO8ZS6sNZ9
 /OMgQV+5UOUoSh6t6ecqz5lDnTzDPWzTM6+vUShkwyHj+5p0/5FWlRgPqT0Q5EkpDKBD
 Su83JPstG6L6wuP3Cbf927uTymVxACcDOsEbr49UT2i6xwnE/FqbEf/dxZlPMmQt99wJ
 IhWa7qj9keK6UvSI8EDkgwxjWyEOY/HClwCyWAjEm733OuOrS0177O9YnCEQDN8dYIvh
 2U7w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVKJC+gQa2pxtAvofGSMRs+cZwGQU3rd68tkYialxHfQlyLBHFBQxpfDcaCwbxdHo4HmwPKO/hKMeE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzEk8+Q6zlSmDeaDSDH/CFFKkoGNEjFjJR9ReZCZFUOk4jJfcA2
 SViLVM+LuvIxyvc6q5Yg58lq1m8Ucy6rxrf+L0EmoECntcZ1XlVeH1Oz
X-Gm-Gg: ATEYQzxj3vmaL+k/njdi0BW9q/9Swmn9QGFK67dP527tNz1ZMy01iVXzYiv9NpYXwJ4
 4vIFNAf+bkCNP0lMk5JMfKqCsbLcQfPQGEqpaw8K1FM6TrtLtdnyZbk0zUqyk3Wx/qE4nBq48xc
 bk+s0v+yuKTvSi4l7GSpPJZiJUBA6Reuf/yOYPa7O2XYVXnJae7dpgvzkg7LcqF1dgVrF2kT37b
 YSIHOZjvEwsVFC8mtyzCoKjBrin9p+E2HRDJiFjlbS93Y4b6tc056UMQ45DIZLdLgQQwlluJPVE
 S+0PAmxxAYDSLHEUJ4Ij5phVbDi2sQtcw845MVSKCBBkSpC7WMhyCMk6GTKAnmBhBMSFuqxDaaD
 xK1NpjFXEXR2L8my5hIPhNUFlaTvCh1gQFxCtiSqpyP/wNq0oYj3RaP00AK8LxZbkf0u7EaZi2U
 X+1BzSYxqG8HIq37dH8cznGuiTsC1DgjeDx/auFd2w0xCScYChwe+zCu66JmR5ceb6SC49bE3g3
 JCAbITXiwXluoN//qN8aLJopf3GBfAf3sRGtNrqKA/fUbDO45LgEd+nzqPQGDiQV10mrA==
X-Received: by 2002:a17:90b:35cb:b0:35b:92ba:66e4 with SMTP id
 98e67ed59e1d1-35bb99b2ce2mr555490a91.7.1773774027874; 
 Tue, 17 Mar 2026 12:00:27 -0700 (PDT)
Received: from 2045D.localdomain (76.sub-72-110-123.myvzw.com. [72.110.123.76])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-35bba5a2c60sm196240a91.9.2026.03.17.12.00.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2026 12:00:27 -0700 (PDT)
From: Gui-Dong Han <hanguidong02@gmail.com>
To: gregkh@linuxfoundation.org,
	dakr@kernel.org,
	rafael@kernel.org
Cc: linux-kernel@vger.kernel.org, driver-core@lists.linux.dev,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-sound@vger.kernel.org,
 akaieurus@gmail.com, me@ziyao.cc, Gui-Dong Han <hanguidong02@gmail.com>,
 yangshiguang <yangshiguang@xiaomi.com>
Subject: [PATCH 1/4] debugfs: check for NULL pointer in debugfs_create_str()
Date: Wed, 18 Mar 2026 02:59:10 +0800
Message-ID: <20260317185920.43387-2-hanguidong02@gmail.com>
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
	FORGED_RECIPIENTS(0.00)[m:gregkh@linuxfoundation.org,m:dakr@kernel.org,m:rafael@kernel.org,m:linux-kernel@vger.kernel.org,m:driver-core@lists.linux.dev,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-sound@vger.kernel.org,m:akaieurus@gmail.com,m:me@ziyao.cc,m:hanguidong02@gmail.com,m:yangshiguang@xiaomi.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.freedesktop.org,gmail.com,ziyao.cc,xiaomi.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 2A8512F7561
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Passing a NULL pointer to debugfs_create_str() leads to a NULL pointer
dereference when the debugfs file is read. Following upstream
discussions, forbid the creation of debugfs string files with NULL
pointers. Add a WARN_ON() to expose offending callers and return early.

Fixes: 9af0440ec86e ("debugfs: Implement debugfs_create_str()")
Reported-by: yangshiguang <yangshiguang@xiaomi.com>
Closes: https://lore.kernel.org/lkml/2025122221-gag-malt-75ba@gregkh/
Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Gui-Dong Han <hanguidong02@gmail.com>
---
 fs/debugfs/file.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/fs/debugfs/file.c b/fs/debugfs/file.c
index 3376ab6a519d..a941d73251b0 100644
--- a/fs/debugfs/file.c
+++ b/fs/debugfs/file.c
@@ -1127,7 +1127,7 @@ static const struct file_operations fops_str_wo = {
  *          directory dentry if set.  If this parameter is %NULL, then the
  *          file will be created in the root of the debugfs filesystem.
  * @value: a pointer to the variable that the file should read to and write
- *         from.
+ *         from. This pointer and the string it points to must not be %NULL.
  *
  * This function creates a file in debugfs with the given name that
  * contains the value of the variable @value.  If the @mode variable is so
@@ -1136,6 +1136,9 @@ static const struct file_operations fops_str_wo = {
 void debugfs_create_str(const char *name, umode_t mode,
 			struct dentry *parent, char **value)
 {
+	if (WARN_ON(!value || !*value))
+		return;
+
 	debugfs_create_mode_unsafe(name, mode, parent, value, &fops_str,
 				   &fops_str_ro, &fops_str_wo);
 }
-- 
2.43.0

