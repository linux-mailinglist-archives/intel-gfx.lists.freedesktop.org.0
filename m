Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DDBB94E90
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 10:05:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55BA610E0EA;
	Tue, 23 Sep 2025 08:05:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="V4olzZ1s";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="Jb4G78GC";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="V4olzZ1s";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="Jb4G78GC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6E5D10E0EA
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Sep 2025 08:05:32 +0000 (UTC)
X-CSE-ConnectionGUID: IcKwfeFBRBmSdE9apN/DlA==
X-CSE-MsgGUID: UuFpCeYoQ3O8y5tdZ3pI9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71509306"
X-IronPort-AV: E=Sophos;i="6.18,287,1751266800"; d="scan'208";a="71509306"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 01:05:32 -0700
X-CSE-ConnectionGUID: 0mLnBg6FTUuhxlWZNmMTJw==
X-CSE-MsgGUID: 9TLO6DA/T6iPRM2LUUUMqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,287,1751266800"; d="scan'208";a="175990270"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 01:05:31 -0700
Resent-From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Resent-Date: Tue, 23 Sep 2025 11:05:28 +0300
Resent-Message-ID: <aNJUyDkjAMa6laUY@intel.com>
Resent-To: intel-gfx@lists.freedesktop.org
X-Original-To: ville.syrjala@linux.intel.com
Delivered-To: ville.syrjala@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by stinkbox.korsu.shacknet.nu with IMAP (fetchmail-6.4.39)
 for <vsyrjala@localhost> (single-drop); Mon, 22 Sep 2025 16:51:10 +0300 (EEST)
Received: from orviesa007.jf.intel.com (ORVIESA007.jf.intel.com
 [10.64.159.147])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id D9DF620B5713
 for <ville.syrjala@linux.intel.com>; Mon, 22 Sep 2025 06:49:12 -0700 (PDT)
X-CSE-ConnectionGUID: +W2iHUvWQp6odT9Sk1OM5w==
X-CSE-MsgGUID: gM4pTBHbRJWYOpteGwKh7w==
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="176304999"
Received: from fmvoesa108.fm.intel.com ([10.64.2.18])
 by orviesa007-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 06:49:13 -0700
X-CSE-ConnectionGUID: BUoL7Q74QVOaN50ZXNxHeA==
X-CSE-MsgGUID: kw+4CE+yTQ+1lGuSPQK1rA==
IronPort-SDR: 68d153d8_G7Se36raAffq9oNoVo0SOUaGXf4SczHDzeTZWc6XSgHDo9d
 TuI0KUDuda9KmOoe54FiFVhfdwm4qNOInv1QcKg==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0E9AQBZU9Foj4Pfh8NaHQEBAQEJARIBBQUBQIFTgW5SQ?=
 =?us-ascii?q?AFBW0FJhBk8iHuGVYIhbJ8wDwEBAQEBAQEBAQk9FAQBAQMBA4UAjEACJjgTA?=
 =?us-ascii?q?QIEAQEBAQMCAQIBAQEBAQEBAQEBAQsBAQECAgEBAQIBAQYDAQEBAQIQAQEBA?=
 =?us-ascii?q?QEBOQVJhk8NgmIBM3GBJQEBAQEBAQEBAQEBAQEdAg2BABAXBAsBDQEBNwEYH?=
 =?us-ascii?q?AImAl8SgwIBgiIFEwM1BAMBDJpCnEZ/M4EBggwBAQbbKgR3gWQDBoEbLohQA?=
 =?us-ascii?q?YR8hG2BIRuBSUSEDm+CHyuCDjiDDoJpgiaBFpAxjG5IgQIcA1ksAVUTDQoLB?=
 =?us-ascii?q?wWBMDMDIAoLDAsSHBUCFC8PGjIdcwwoEoR5hB4rT4QOdD5ag1Mkaw8GgRWDW?=
 =?us-ascii?q?wUBhy5AAwsYDUgRLDcGDhsGPQFuB5YlgzEBgQ0sIoFplwSwH4I/gWeMHpU5G?=
 =?us-ascii?q?jOXUg6TCgGZBiKNZpU0hgWBfyOBXHGDNk8DGQ+OIRmEGoRgwm1CNAI6AgcBC?=
 =?us-ascii?q?gEBAwmSHoFLAQE?=
IronPort-PHdr: A9a23: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
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:Ynbci64jc1eO4lFYYwPXwELXdLJyesId70hD6qkQc3BomwKj5q
 WTdZMgpGXJYVcqKQodcLW7UsTuL080mqQFhrX5UY3SPzUO21HYVL2Kj7GSpQEIcheWnoU9tZ
 uIGJIObOEYY2IK7/oSmDPIauoI8Z296rmhgeqb531xTQdsApsQnztRO0KhCFR/QAQDPYY0CJ
 bZxscvnUvfRV0nKv+gH3EAUqz4q8bVmImOW292O/fL0njzsdqz0s+ELzGomi0GWzcK+70l6m
 StqX2L2oyT98ujwhvQk1Te9YhShbLau6Z+OPA=
X-Talos-CUID: 9a23:AFYfnGzn5GcIj98cdXcJBgU+J8cBLUSCkE7uBEaeVD5beJuFaVK5rfY=
X-Talos-MUID: 9a23:IZ7zyAhVb/87uHD74Jz748MpN9grv4+DS1ExqNZfv+aZDhRJGG6HpWHi
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60867550"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="60867550"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from smtp-out2.suse.de ([195.135.223.131])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 06:49:11 -0700
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 349621F79A;
 Mon, 22 Sep 2025 13:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1758548949; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=7TzD8bMv0gdipWLQ/wOu3P08SLqKkylmdgnKiucqS+8=;
 b=V4olzZ1sVE6zlzQYJ9cqO2/GPIzc9f3v/C2WFa3nzC07/9UtK46eNSkp5Q+ZODqBIcq7km
 VxYXSBdkebX8PDURYy9lLZwtWInJuB8+7hav0DHWYEpCDNcaQOhJ/5cWcuQLGVOUdgfu0I
 2zCXR0pnzQPp4LmEf8mhpKM+JwofUU8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1758548949;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=7TzD8bMv0gdipWLQ/wOu3P08SLqKkylmdgnKiucqS+8=;
 b=Jb4G78GCOKJ7HMid6++qn5pfiNCZTNmUiXh/eihDkAn76Kw5FJyRTcWWt9V5qNxyIgl0A2
 vgE6apw3X4EBX/Bw==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=V4olzZ1s;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=Jb4G78GC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1758548949; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=7TzD8bMv0gdipWLQ/wOu3P08SLqKkylmdgnKiucqS+8=;
 b=V4olzZ1sVE6zlzQYJ9cqO2/GPIzc9f3v/C2WFa3nzC07/9UtK46eNSkp5Q+ZODqBIcq7km
 VxYXSBdkebX8PDURYy9lLZwtWInJuB8+7hav0DHWYEpCDNcaQOhJ/5cWcuQLGVOUdgfu0I
 2zCXR0pnzQPp4LmEf8mhpKM+JwofUU8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1758548949;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=7TzD8bMv0gdipWLQ/wOu3P08SLqKkylmdgnKiucqS+8=;
 b=Jb4G78GCOKJ7HMid6++qn5pfiNCZTNmUiXh/eihDkAn76Kw5FJyRTcWWt9V5qNxyIgl0A2
 vgE6apw3X4EBX/Bw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id C067313A63;
 Mon, 22 Sep 2025 13:49:08 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id uN1KLdRT0WguAgAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Mon, 22 Sep 2025 13:49:08 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: jani.nikula@linux.intel.com, samasth.norway.ananda@oracle.com,
 simona@ffwll.ch, deller@gmx.de
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 George Kennedy <george.kennedy@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, Qianqiang Liu <qianqiang.liu@163.com>,
 Shixiong Ou <oushixiong@kylinos.cn>, Kees Cook <kees@kernel.org>,
 stable@vger.kernel.org, Zsolt Kajtar <soci@c64.rulez.org>
Subject: [PATCH] fbcon: Fix OOB access in font allocation
Date: Mon, 22 Sep 2025 15:45:54 +0200
Message-ID: <20250922134619.257684-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-3.51 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 MID_CONTAINS_FROM(1.00)[]; NEURAL_HAM_LONG(-1.00)[-1.000];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 RCPT_COUNT_TWELVE(0.00)[16]; ARC_NA(0.00)[];
 FREEMAIL_TO(0.00)[linux.intel.com,oracle.com,ffwll.ch,gmx.de];
 MIME_TRACE(0.00)[0:+]; FUZZY_RATELIMITED(0.00)[rspamd.com];
 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from]; 
 FREEMAIL_ENVRCPT(0.00)[163.com,gmx.de]; TO_DN_SOME(0.00)[];
 RCVD_COUNT_TWO(0.00)[2]; FROM_EQ_ENVFROM(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 DNSWL_BLOCKED(0.00)[2a07:de40:b281:104:10:150:64:97:from,2a07:de40:b281:106:10:150:64:167:received];
 DKIM_TRACE(0.00)[suse.de:+]; RCVD_VIA_SMTP_AUTH(0.00)[];
 FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,suse.de,oracle.com,linuxfoundation.org,linux.intel.com,ravnborg.org,163.com,kylinos.cn,kernel.org,c64.rulez.org];
 RCVD_TLS_ALL(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid, suse.de:dkim, suse.de:email,
 intel.com:email, imap1.dmz-prg2.suse.org:helo, imap1.dmz-prg2.suse.org:rdns]
X-Spam-Flag: NO
X-Spam-Level: 
X-Rspamd-Queue-Id: 349621F79A
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
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

Commit 1a194e6c8e1e ("fbcon: fix integer overflow in fbcon_do_set_font")
introduced an out-of-bounds access by storing data and allocation sizes
in the same variable. Restore the old size calculation and use the new
variable 'alloc_size' for the allocation.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Fixes: 1a194e6c8e1e ("fbcon: fix integer overflow in fbcon_do_set_font")
Reported-by: Jani Nikula <jani.nikula@linux.intel.com>
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15020
Cc: Samasth Norway Ananda <samasth.norway.ananda@oracle.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: George Kennedy <george.kennedy@oracle.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: Helge Deller <deller@gmx.de>
Cc: "Ville Syrjälä" <ville.syrjala@linux.intel.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Qianqiang Liu <qianqiang.liu@163.com>
Cc: Shixiong Ou <oushixiong@kylinos.cn>
Cc: Kees Cook <kees@kernel.org>
Cc: <stable@vger.kernel.org> # v5.9+
Cc: Zsolt Kajtar <soci@c64.rulez.org>
---
 drivers/video/fbdev/core/fbcon.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index 5fade44931b8..c1c0cdd7597c 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -2518,7 +2518,7 @@ static int fbcon_set_font(struct vc_data *vc, const struct console_font *font,
 	unsigned charcount = font->charcount;
 	int w = font->width;
 	int h = font->height;
-	int size;
+	int size, alloc_size;
 	int i, csum;
 	u8 *new_data, *data = font->data;
 	int pitch = PITCH(font->width);
@@ -2551,10 +2551,10 @@ static int fbcon_set_font(struct vc_data *vc, const struct console_font *font,
 		return -EINVAL;
 
 	/* Check for overflow in allocation size calculation */
-	if (check_add_overflow(FONT_EXTRA_WORDS * sizeof(int), size, &size))
+	if (check_add_overflow(FONT_EXTRA_WORDS * sizeof(int), size, &alloc_size))
 		return -EINVAL;
 
-	new_data = kmalloc(size, GFP_USER);
+	new_data = kmalloc(alloc_size, GFP_USER);
 
 	if (!new_data)
 		return -ENOMEM;
-- 
2.51.0
