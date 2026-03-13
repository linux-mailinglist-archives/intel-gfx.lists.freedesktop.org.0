Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +N9xOGtkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAB32F7702
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99F9010E540;
	Mon, 23 Mar 2026 16:03:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="RrrYxXJg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8CA310EBFC
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:23:04 +0000 (UTC)
Received: by mail-oi1-f177.google.com with SMTP id
 5614622812f47-466f1c3c627so1552465b6e.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408184; x=1774012984; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vld9IFfyvePqt5M1J9/OwioGOqjnLV2rFk+KzTunpXM=;
 b=RrrYxXJgnrKWeN0l+QdbWnq5Foal5clfVF061dMEPL/IM3MbnAGcDokk5XsfDsB0Pf
 ZaD4/JHNhj4moCvr+tTmuJogZ8AOQnSqv/XXYAdwVOdUIy7r2ECME1QWJu33kD2mqJmT
 SZWQVO7le+P21RnaXTxcCazgM7N+Hq/zqArjHoZx+APjMzP8Q8clBLmaTIyvKE5F4Euu
 CQJNR3NY1yAfr3iyZHVAwkEJ/JQ9RF0VsiVO9Nq36PPJpHChW4W47JK3LUsi+yJRCa+1
 Qou6jjW3aYSuRUZASneMTonBOgeMgc2gD5YGQh/jIErfDK9XO4WsjtbVvfroqkgp6Cp0
 Z1XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408184; x=1774012984;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=vld9IFfyvePqt5M1J9/OwioGOqjnLV2rFk+KzTunpXM=;
 b=GEMWOYi6pPGltk7gp2pdw1RSvmj28NFRmt20KbcRcgsPOL4mPsNLkdnFO0umMwGWUN
 XWNzTThS0oIAlba7XH4D7jfk9YtBDHye93zNE0Kbm+c7yyCrtCDOXxuYDjGrvNz+BYj2
 vY689dT7xK6EY+/I60jfL+8j/naqfX5tPzgbF/QBwYyDxprfDvCpUoJqX6d7r1URTNlJ
 QcLF4SdW0agbkLBpdMgN1oeQt13hqFghBfx26JGXI9ozYOf8X8+RJHNenWRFVF/JwnI7
 CJ9S0zK2ODoGQM5+NzVo6uhy8yS2G0tOKm+VGWiJUH/zaZfCOyABWkIC6dqQshSXWe29
 8PnQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWEA0cJMW2XqLA4j8034QXuOJspMvK7BI657rJUZW+odpAQA5nF11fucJZP3DIPIgrTc5iB2DFZM2g=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwTKEuzJIrUockYUD5eKi2y+D7fyVLbU0zIXOUdDL9adFg69ENV
 Sybf8cCUvRhB8RFY5C3QA/Wk3Zv8HzCOY/vT9FFSAha6s1RjBaZClo4n
X-Gm-Gg: ATEYQzxQy80KOFOvGa6DoA/WaT2/kbcISzA4AB4wh/+6dnEV5tcub1LGXbrmjnqEIur
 drxQnWxobHI/EMXYlwsws0VqMImzczrbiwIHLY4/y2PIg5KvH6oQ6D8gOZlCRkD2P/DSXvliX+A
 zPdgVqkX3gCc9eMV7s8SduPfoIPX3nbiMLex5RY6Om83hoHjOl0EEiB3uaO2oIM8RDZQAyp1JkK
 qcx6sCdrcajFGBUXtMNFSWCc35uLn6KvSSVe57FrXRBcKvqcx80H33pLV5flyzKrqVkqir7cG30
 KRrMptXdJYD26IGr4UvX8p7dT2H0jMgU40Kc8eXtigjv0T2DJz4lhKnQy9S7gnd3C7X6g/DACpp
 5Lyc7GWYGlu0FBI+bBJ2oF37oOKEqZ8e2Iuq61DqaXOPuSlubKHoHx4jG8F8iN9w0u4oGQK6Jn0
 t/7hHHMHh9INOeeLvIWGQzgV467uzCBLw8JDXmFM7KxNyfIoPx7Vjg3d8sKeA=
X-Received: by 2002:a05:6808:1203:b0:466:fb74:1ec9 with SMTP id
 5614622812f47-467570ef685mr1573218b6e.4.1773408183890; 
 Fri, 13 Mar 2026 06:23:03 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.23.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:23:03 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, pmladek@suse.com, ukaszb@chromium.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 04/65] docs/dyndbg: update examples \012 to \n
Date: Fri, 13 Mar 2026 07:19:29 -0600
Message-ID: <20260313132103.2529746-5-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260313132103.2529746-1-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
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
X-Spamd-Result: default: False [2.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[242];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,lwn.net,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.606];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: 8CAB32F7702
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

commit 47ea6f99d06e ("dyndbg: use ESCAPE_SPACE for cat control")
changed the control-file to display format strings with "\n" rather
than "\012".  Update the docs to match the new reality.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Tested-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 .../admin-guide/dynamic-debug-howto.rst       | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/Documentation/admin-guide/dynamic-debug-howto.rst b/Documentation/admin-guide/dynamic-debug-howto.rst
index 095a63892257..4b14d9fd0300 100644
--- a/Documentation/admin-guide/dynamic-debug-howto.rst
+++ b/Documentation/admin-guide/dynamic-debug-howto.rst
@@ -38,12 +38,12 @@ You can view the currently configured behaviour in the *prdbg* catalog::
 
   :#> head -n7 /proc/dynamic_debug/control
   # filename:lineno [module]function flags format
-  init/main.c:1179 [main]initcall_blacklist =_ "blacklisting initcall %s\012
-  init/main.c:1218 [main]initcall_blacklisted =_ "initcall %s blacklisted\012"
-  init/main.c:1424 [main]run_init_process =_ "  with arguments:\012"
-  init/main.c:1426 [main]run_init_process =_ "    %s\012"
-  init/main.c:1427 [main]run_init_process =_ "  with environment:\012"
-  init/main.c:1429 [main]run_init_process =_ "    %s\012"
+  init/main.c:1179 [main]initcall_blacklist =_ "blacklisting initcall %s\n"
+  init/main.c:1218 [main]initcall_blacklisted =_ "initcall %s blacklisted\n"
+  init/main.c:1424 [main]run_init_process =_ "  with arguments:\n"
+  init/main.c:1426 [main]run_init_process =_ "    %s\n"
+  init/main.c:1427 [main]run_init_process =_ "  with environment:\n"
+  init/main.c:1429 [main]run_init_process =_ "    %s\n"
 
 The 3rd space-delimited column shows the current flags, preceded by
 a ``=`` for easy use with grep/cut. ``=p`` shows enabled callsites.
@@ -59,10 +59,10 @@ query/commands to the control file.  Example::
 
   :#> ddcmd '-p; module main func run* +p'
   :#> grep =p /proc/dynamic_debug/control
-  init/main.c:1424 [main]run_init_process =p "  with arguments:\012"
-  init/main.c:1426 [main]run_init_process =p "    %s\012"
-  init/main.c:1427 [main]run_init_process =p "  with environment:\012"
-  init/main.c:1429 [main]run_init_process =p "    %s\012"
+  init/main.c:1424 [main]run_init_process =p "  with arguments:\n"
+  init/main.c:1426 [main]run_init_process =p "    %s\n"
+  init/main.c:1427 [main]run_init_process =p "  with environment:\n"
+  init/main.c:1429 [main]run_init_process =p "    %s\n"
 
 Error messages go to console/syslog::
 
-- 
2.53.0

