Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAM6BWBzymlQ9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A739135B7BA
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ACFF10E746;
	Mon, 30 Mar 2026 12:58:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Mj9P+dgz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com
 [209.85.160.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B2510EBF0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:57 +0000 (UTC)
Received: by mail-oa1-f47.google.com with SMTP id
 586e51a60fabf-40974bf7781so1893958fac.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551357; x=1775156157; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QeA7b49GNmqPBpy8bbweHTxpApMcFe3iFgz41hqVwCU=;
 b=Mj9P+dgzDwdhPEqBHMNGeOF1x5WytNOWdAS1R3h8ApNSURK0dDaCkk7Em5A67zQGXE
 /cYTajPQARaA0Q7Mcv12PfBgNwZ5oQpM9KEzdoqsM+uCTWkj/K614s+7m1M4lPV2FqGj
 kNWriKbUbFc8dbkpNS2422M16aBpNVqsiupHMEbLUFb95eNj3QFNnVJd6bL5wXnn2Sv3
 eTDIlnej+JrkTmNTsvXz8hbzxRHDeLTMXmnItErF9NgrQm9JOwahvvwS6dAlEFGg967H
 qBiDurL3Pm/H4RLHRUxfdNL/Bwdz461poBO7jieXsL337UrF0eyklsmGR5UT9aeRzs2G
 MaYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551357; x=1775156157;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=QeA7b49GNmqPBpy8bbweHTxpApMcFe3iFgz41hqVwCU=;
 b=b+2ssJHqUsnyehJSoDVBzzvIcOGtLybvylOLKMw9A+kkR8EiKi7+irw6DE8yWSrSEv
 LosKvbU/crCen0QzrT1Bs9GsmzJpb3L0bi8L+tMuNueQy0MRxw/dfn+pm7dFL87qxjcI
 xPGAXd4mpu6N2r0Gh4bPQO6w4CrbuLjJu8Wubisot5JYUtSxqE/cAFalOD/8bvwVgYOU
 WcLRolZ5LZPvTCflA/lfdt/9U4COq00mRKEwdkC+1TMsuGquq6ugPkjbpU5RR2RHqIuJ
 ZF3qqoPeMgbarqHmQK+in5oHYw6Aazw3994s+N41WkUKmC2mHqOrrjSpB115uMcU7fjM
 h07Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCW0P07/xniJcW98tloS392nuEYA/z7VZ1eZIB2tHsQAzVr8X5dpw/8ZWLm2+sNn1IUJITQyDK1401k=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxUWnvyHBUUPzBggzMK3rDGjG4eTkF2DQAqi50TRgOqp1D5W6Lc
 AYsxRLR5iJ6LBWsApRDfG83seELYxefaANe+qJpKmxHbZ9SPP3mefF5vffZh3A==
X-Gm-Gg: ATEYQzzpMxjm1gR19QrkXS/JbHoS8taKEoItFpTPu+yvFt6reWM4Wcso2jfNDIhzua3
 FSXaIpltTSdmgrw04VenkleOuIPUa5l00ZBEa3Q/FpHhf0+IF+iFpNd1uHEeHQA34XtVN+e/vm9
 BI9tNUHcKsRP4/ZEBj8BPkKcHWVqQ3Zzvp5ygzmWEoqBy1Kv78Znke+64nQS3HG98R5LRmdiN43
 INWgcu/L2UWxOi2ylUx0j3Zex/QAoQo2RFdCX9WfyUybQRG5xWSx0oGqZykpYolJHd66pQkDBNK
 8hiW4dHfhEa24raR7GbjndizFUfXifAXd51/sVaQ8A6Q7ETa1B2K1tEoBju+7yY/z3PskgIrcF2
 6/t7ieR6KCiyvUoXwpWwxVQJBjf049EXuEkoNagZnBzAzXikyIoRtoJiT21qYgpDFfPe4Tx6AXL
 a/YFfFW/Wb5cUtwtaNgF1jTbMDQNbYWPW2Ml2br0cexJoFnFaD9PayxnEfAtM=
X-Received: by 2002:a05:6871:4e41:b0:41c:4cd8:4e8a with SMTP id
 586e51a60fabf-41cd7bf490emr1301986fac.15.1774551357153; 
 Thu, 26 Mar 2026 11:55:57 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:56 -0700 (PDT)
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
Subject: [PATCH v12 56/69] drm-dyndbg: add DRM_CLASSMAP_USE to radeon
Date: Thu, 26 Mar 2026 12:54:00 -0600
Message-ID: <20260326185413.1205870-57-jim.cromie@gmail.com>
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[90];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: A739135B7BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

radeon has some DRM_UT_* debugs, make them controllable when
CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg about its use of
the class'd debugs.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/radeon/radeon_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/radeon/radeon_drv.c b/drivers/gpu/drm/radeon/radeon_drv.c
index 87fd6255c114..a7133fb6377d 100644
--- a/drivers/gpu/drm/radeon/radeon_drv.c
+++ b/drivers/gpu/drm/radeon/radeon_drv.c
@@ -254,6 +254,8 @@ static const struct pci_device_id pciidlist[] = {
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 static const struct drm_driver kms_driver;
 
 static bool radeon_support_enabled(struct device *dev,
-- 
2.53.0

