Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFzLNU5zymlQ9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A9035B67F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D320710E6EC;
	Mon, 30 Mar 2026 12:57:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Eq/vLxtn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com
 [209.85.160.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0BA810EBE9
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:32 +0000 (UTC)
Received: by mail-oa1-f48.google.com with SMTP id
 586e51a60fabf-40ee9b945d5so940470fac.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551332; x=1775156132; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=b4jWe/O/TQKg+phAG4swgxb5r2uUue/0h3/17ze4tn4=;
 b=Eq/vLxtncKNQ+ZEU+/X/bBiUdcJeQX+Y+rJ3mYIYSExKM7jeAoOhpXkc1TNq8mjCUV
 CEJ660E8nk1QvqprFC6edxAii9GDA9WcjkRejGV0xQJyDfswjS+TgJk8R/AaCsMvVIub
 WdQ2PlQx8Ng851XkUjcU0HAq+auqTJUkCJAsiONxgyhyAXENMV4LZCC+pw2cn17GrcmP
 vH8zj3PfuVjW1NJULbrRRhfW2DGV8W6ZmDJ1ibFEr0iwt/06hwHrqNWgJWyFNTgDZxcP
 JiYXKK0mrs2sNY9/IqkjiDqqKegOyo9kSzmgXd15h4OQ8JYUC8lyJXuo3swq7xAekAae
 kbfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551332; x=1775156132;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=b4jWe/O/TQKg+phAG4swgxb5r2uUue/0h3/17ze4tn4=;
 b=fAxio33M0/+TYWIxiItKfCUQKb9HAKv4R6PsZEv/1hdJ3SJhjRsvloT5620ZYA0Bl1
 00EPeG9ZNFqkk/bbsoENoAtQEB/FGezQKkSn56tvuE+Pa+8D8OoXQW4Lj4WApapspIG3
 Z5iFLjQyEVEBHDwrdTda9wg/PM/nC7bPsEBwZuP//iogYreylXdcFk8rPvb3mHZP/pe2
 uW0V6yU1edSkDgDOMm7E4rCtUq97ZymoyoRcPw6AzofuPpeJYB8VJxVm58lNzM6M+/vE
 3NyIas9O/WTbDWyBPhSpvzWBjlOmNoVwkn9rYNN8nuCLKXRutWpzIg1fWpt3fG0Fx8is
 G4QA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVplH2fDnsEaF0OfL2PwskbHwEJF+H/XSA6LjZ0hXtn+bTw2dDbyKbM0+CpeXXL1vb9+0IQL7gEnU4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxJ2MtfF/dpB8DviWXGlAL4Y1EtbLfoznaC8VaZoGXz9p96dzyQ
 g6qjhGHXg/hXPOYTq+TGWOEd/4u+aRCGeAxwWFMMagPjbp1LozR7+QIeS6NstQ==
X-Gm-Gg: ATEYQzzp8ynRwEs7wO8G04UG7xFMurILegrMZ7WylLAJa7Y6W43TO8fB5bKZNPtuiO7
 t/r5qBpnfAobP52X9aFuBOVuUcZMWIgH1eqqyGNfYxTaQfdpAKH2rupxjP1unS3/dxKYUSdpTdd
 +0hZjcop2Q3YShh12vkwqcwPQZ2jlh2iFo4BHaH5mUciKD8D36hIKqKF1R8+H+3GwsUAkldc1yG
 wrfW4NP67O/DiRlth8O5JiWXc1Vgbs3v7lub450x8xka8mkqef5FNz1gnuHYAdGtBAWKmh4Lyzt
 fmEAbskZt1p/bRnIaejTsI2Esiib13oIrOnJMo3zUUkkf7hU0THCt0cHmshcsTvvvSZPQVkZ1I3
 VBM0qW3l+yox3Y0uNNVtrXqj874yoYwa5eT/Auf8tvO/0XpMUKVsMQCH7q7kmMUN2hsWXpvx4l0
 hnKOVy66DCPtLEzLtjkiXJuBu5od8R51mU7dwMu28VYhzNeITI
X-Received: by 2002:a05:6870:194b:b0:409:9a0b:b733 with SMTP id
 586e51a60fabf-41ca6d6a50emr4662736fac.10.1774551332051; 
 Thu, 26 Mar 2026 11:55:32 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:31 -0700 (PDT)
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
Subject: [PATCH v12 39/69] drm_buddy: fix power-of-2 rounding errs
Date: Thu, 26 Mar 2026 12:53:43 -0600
Message-ID: <20260326185413.1205870-40-jim.cromie@gmail.com>
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
X-Rspamd-Queue-Id: 89A9035B67F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The standard roundup_pow_of_two() and rounddown_pow_of_two() macros use
unsigned long internally, which on 32-bit architectures (like arm32) is
a 32-bit type.

drm_test_buddy_alloc_exceeds_max_order() uses these on a u64 value,
where they silently truncate the 10GB allocation, giving unexpected
success in DRM-CI.  (see below the snip).

Fix this by replacing the those macros with safe 64-bit power-of-two
calculations using ilog2().

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
On DRM-CI, I encountered this kunit:arm32 failure.

[23:19:40] [PASSED] drm_test_buddy_alloc_clear
[23:19:40] [PASSED] drm_test_buddy_alloc_range_bias
[23:19:41] [PASSED] drm_test_buddy_fragmentation_performance
[23:19:41]     # drm_test_buddy_alloc_exceeds_max_order: EXPECTATION FAILED at drivers/gpu/drm/tests/drm_buddy_test.c:889
[23:19:41]     Expected err == -22, but
[23:19:41]         err == 0 (0x0)
[23:19:41] ------------[ cut here ]------------
[23:19:41] WARNING: drivers/gpu/drm/drm_buddy.c:405 at drm_buddy_fini+0x114/0x1b8, CPU#0: kunit_try_catch/74
[23:19:41] CPU: 0 UID: 0 PID: 74 Comm: kunit_try_catch Tainted: G                 N  7.0.0-rc1-gdfb0bcedd08a #1 VOLUNTARY
[23:19:41] Tainted: [N]=TEST
[23:19:41] Hardware name: Generic DT based system
[23:19:41] Call trace:
[23:19:41]  unwind_backtrace from show_stack+0x10/0x14
[23:19:41]  show_stack from dump_stack_lvl+0x3c/0x4c
[23:19:41]  dump_stack_lvl from __warn+0xe8/0x1c4
[23:19:41]  __warn from warn_slowpath_fmt+0xa4/0xc0
[23:19:41]  warn_slowpath_fmt from drm_buddy_fini+0x114/0x1b8
[23:19:41]  drm_buddy_fini from drm_test_buddy_alloc_exceeds_max_order+0x1c8/0x36c
[23:19:41]  drm_test_buddy_alloc_exceeds_max_order from kunit_try_run_case+0x78/0x1c8
[23:19:41]  kunit_try_run_case from kunit_generic_run_threadfn_adapter+0x1c/0x34
[23:19:41]  kunit_generic_run_threadfn_adapter from kthread+0x108/0x134
[23:19:41]  kthread from ret_from_fork+0x14/0x28
[23:19:41] Exception stack(0xf0bd5fb0 to 0xf0bd5ff8)
[23:19:41] 5fa0:                                     00000000 00000000 00000000 00000000
[23:19:41] 5fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[23:19:41] 5fe0: 00000000 00000000 00000000 00000000 00000013 00000000
[23:19:41] ---[ end trace 0000000000000000 ]---
[23:19:41]     # drm_test_buddy_alloc_exceeds_max_order: drivers/gpu/drm/drm_buddy.c:406: buddy_fini() root
[23:19:41] ------------[ cut here ]------------
[23:19:41] WARNING: drivers/gpu/drm/drm_buddy.c:414 at drm_buddy_fini+0x1b4/0x1b8, CPU#0: kunit_try_catch/74
[23:19:41] CPU: 0 UID: 0 PID: 74 Comm: kunit_try_catch Tainted: G        W        N  7.0.0-rc1-gdfb0bcedd08a #1 VOLUNTARY
[23:19:41] Tainted: [W]=WARN, [N]=TEST
[23:19:41] Hardware name: Generic DT based system
[23:19:41] Call trace:
[23:19:41]  unwind_backtrace from show_stack+0x10/0x14
[23:19:41]  show_stack from dump_stack_lvl+0x3c/0x4c
[23:19:41]  dump_stack_lvl from __warn+0xe8/0x1c4
[23:19:41]  __warn from warn_slowpath_fmt+0xa4/0xc0
[23:19:41]  warn_slowpath_fmt from drm_buddy_fini+0x1b4/0x1b8
[23:19:41]  drm_buddy_fini from drm_test_buddy_alloc_exceeds_max_order+0x1c8/0x36c
[23:19:41]  drm_test_buddy_alloc_exceeds_max_order from kunit_try_run_case+0x78/0x1c8
[23:19:41]  kunit_try_run_case from kunit_generic_run_threadfn_adapter+0x1c/0x34
[23:19:41]  kunit_generic_run_threadfn_adapter from kthread+0x108/0x134
[23:19:41]  kthread from ret_from_fork+0x14/0x28
[23:19:41] Exception stack(0xf0bd5fb0 to 0xf0bd5ff8)
[23:19:41] 5fa0:                                     00000000 00000000 00000000 00000000
[23:19:41] 5fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[23:19:41] 5fe0: 00000000 00000000 00000000 00000000 00000013 00000000
[23:19:41] ---[ end trace 0000000000000000 ]---
[23:19:41] [FAILED] drm_test_buddy_alloc_exceeds_max_order
[23:19:41]     # drm_buddy: Testing DRM buddy manager, with random_seed=0xacce106c
[23:19:41]     # module: drm_buddy_test
[23:19:41] # drm_buddy: pass:8 fail:1 skip:0 total:9
---
 drivers/gpu/drm/drm_buddy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_buddy.c b/drivers/gpu/drm/drm_buddy.c
index dbf984f8e301..8f23fb615d47 100644
--- a/drivers/gpu/drm/drm_buddy.c
+++ b/drivers/gpu/drm/drm_buddy.c
@@ -919,7 +919,7 @@ static int __alloc_contig_try_harder(struct drm_buddy *mm,
 	u64 modify_size;
 	int err;
 
-	modify_size = rounddown_pow_of_two(size);
+	modify_size = 1ULL << ilog2(size);
 	pages = modify_size >> ilog2(mm->chunk_size);
 	order = fls(pages) - 1;
 	if (order == 0)
@@ -1140,7 +1140,7 @@ int drm_buddy_alloc_blocks(struct drm_buddy *mm,
 
 	/* Roundup the size to power of 2 */
 	if (flags & DRM_BUDDY_CONTIGUOUS_ALLOCATION) {
-		size = roundup_pow_of_two(size);
+		size = 1ULL << (ilog2(size - 1) + 1);
 		min_block_size = size;
 	/* Align size value to min_block_size */
 	} else if (!IS_ALIGNED(size, min_block_size)) {
-- 
2.53.0

