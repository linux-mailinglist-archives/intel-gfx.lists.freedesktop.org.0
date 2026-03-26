Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFXbH4VzymmB9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E34F235B83F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 720BE10E74A;
	Mon, 30 Mar 2026 12:58:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="k2rJ5HDF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com
 [209.85.160.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C54CD10EB82
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:54:45 +0000 (UTC)
Received: by mail-oa1-f53.google.com with SMTP id
 586e51a60fabf-40efc77933fso853332fac.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551285; x=1775156085; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Q0sBYQSvT/W3L1mc7F8xF1oVUSz9OX/m/AEikTG2UrU=;
 b=k2rJ5HDF1ha7PEtUWfC5Z8ZonvFK8KviMkOUsanftQekjClC9Dc6NUiftoY+Ei+BqK
 GvqEZTLwwglzDPGhVxvPM8x8dDCDRzGEbW/4h7xbp5oukTd96MaxzJD/xDyJNc2hJZDN
 B5ITDp/xrPoc77yLljW9UkgVl2GyCj5oOgJ9v+pdX3FbNposuIx4KvpXKGMhlU8UhlxZ
 EMxvI1abDiLlJBFy0W1jFDSMTSpvKr4aQCDOGYgo+z7C29yXpb0LAMt4IS/zvjzKu5Lc
 evccn8Q0uArQFHzSAgc8p5DeNhq7PzYzfYgrAwqcUqmEqjfN9uq34RGuIvQ1xx6VIFpN
 Wysg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551285; x=1775156085;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Q0sBYQSvT/W3L1mc7F8xF1oVUSz9OX/m/AEikTG2UrU=;
 b=ktDzZzRkI+3TWUzWADD3AqFpF3zjizuURq6D4yBQO2cL5lW+T8qNLWlHC/RnG+prGU
 TaDtbMcw7kR9ZpdCfSOc1hkSy+ty+ybI5fVdDRswa4j1FOcIqUPMS37Y4i3G+xG+wbbx
 kLGk7Py7+5yjrfgXpNQDEBhegq1kImQOTJA/GDAj+mwBGLtkJhNhj0gHYZeuJAbwa0zy
 ZTVEtaNG8smPOZsNwpKmwA7znDGI8rAlZW51zmtZApsalrr2mmfdlD3SXsQ2Tgyui0wa
 vxTz/h2w3Aj7JcHC7KZieUUB8DIMMYSL4oycHYdF+td7seQh/Dd5Y1Oz/l2YpI/De4zq
 tCtw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWDbwx2duIBSDpyuDrk5vmIAaOP27I4f0LHQaO8bGXLc9eYHqyg3g3GiMaEn2+qbLPkQ6dVuRxEjX4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxFdVSL5U75RCb6Xyp3+0s9uE/eUjHxg4Um4qKaKJogpO9wj63p
 gtw6vyVZs5YJ6ZOdQmtOUmidcYrDsLF85vrr1VgIbKJSjPS1llvWvcaw
X-Gm-Gg: ATEYQzxS2jB7WX0e1W7uBBAHMBIWo5Is1m8t0IVgg8sIqvodGlFy8erclsQvC/yjR3a
 Q4GqzQ0Y5DDNcVNKTIOrsOjhRKfDS9b+8yvsTwI48R3KpzVdl3IhDrUuSH+h2/19r1MQT66eTHu
 wESrfXPLDOBT1kZJhhKfoFARcJkolC3MpjXVMCMjrC74CMEgDT/7IGDJhUxpblPSa+DChYy03Ow
 IPqUk6lYC+NeRDqORXAoTHVXdR6CoCmJYOytKDaVJUGupHGPxkuk9Gt/qhg45vu+zkfxr2EvjCw
 TzDaEgVrqnMDEdSNbM+uDZg8gFB8GQliK4etEAgn8aat3QIOfFgJf8ZU0KYUQvVUV3ks5hpzjfQ
 q10xi24m3zKo7ARBWcPKxUUB2udtf0AuKocUZ8S3wgf2YgA2YRUEYb0W+UrSSssqiEf8eEH9Z0T
 Cmdhzc4ViDY+NRdz13e+x1KVFGSpz53VJvCQiVWzfUI0Wf082yzs7cthcacLE=
X-Received: by 2002:a05:6870:20c:b0:417:2156:ffea with SMTP id
 586e51a60fabf-41ca6fcb4f3mr4549318fac.13.1774551284964; 
 Thu, 26 Mar 2026 11:54:44 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.54.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:54:44 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, airlied@gmail.com, simona@ffwll.ch,
 jbaron@akamai.com, gregkh@linuxfoundation.org
Cc: jim.cromie@gmail.com, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH v12 10/69] dyndbg: reword "class unknown,
 " to "class:_UNKNOWN_"
Date: Thu, 26 Mar 2026 12:53:14 -0600
Message-ID: <20260326185413.1205870-11-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260326185413.1205870-1-jim.cromie@gmail.com>
References: <20260326185413.1205870-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 30 Mar 2026 12:57:43 +0000
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
X-Spamd-Result: default: False [3.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[90];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.986];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: E34F235B83F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When a dyndbg classname is unknown to a kernel module (as before
previous patch), the callsite is un-addressable via >control queries.

The control-file displays this condition as "class unknown,"
currently.  That spelling is sub-optimal/too-generic, so change it to
"class:_UNKNOWN_" to loudly announce the erroneous situation, and to
make it uniquely greppable.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 lib/dynamic_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index 6b1e983cfedc..a9caf84ddb22 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -1166,7 +1166,7 @@ static int ddebug_proc_show(struct seq_file *m, void *p)
 		if (class)
 			seq_printf(m, " class:%s", class);
 		else
-			seq_printf(m, " class unknown, _id:%d", dp->class_id);
+			seq_printf(m, " class:_UNKNOWN_ _id:%d", dp->class_id);
 	}
 	seq_putc(m, '\n');
 
-- 
2.53.0

