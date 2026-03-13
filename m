Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KE4pM2VkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B342F7671
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B94A10E523;
	Mon, 23 Mar 2026 16:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="i2oR8TKY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
 [209.85.167.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B928410EC2D
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:25:07 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id
 5614622812f47-467161c4b7aso1096018b6e.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408307; x=1774013107; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=p9IAEzSkGuy9vSx6TA0Y4hBOc80UNfiz/9RCZw4zMCM=;
 b=i2oR8TKY/R2X6sLI27lCBt1nqczzoCDssX0XKuFs1L+odyHeZqlq8uiDjqQi1VlaH9
 O3c4PGZYVANroQt754gwle7io1ECS6HgB85bBFWIqQdBW92Nc0JXhmxhce2PtwOBaxT/
 GO1AO0QngBsPzeqygAnJGO2+GT4rPmX8vrxHEdwcy0+9RBmL8YQy7kh7XYpCbYPr/qOw
 syKeUTMql/i0ZwKHOXl4WzZ5A3mU8/gXe26VZ+tsuaT2lC3Y57bIPrrlBtSTAJ+oM4mc
 k2jvBjXkV8+HZFminrknsPEV+YWXcxydmmHvq2YONxkGfP5da34nKTfExrekcsjTzHf4
 NzAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408307; x=1774013107;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=p9IAEzSkGuy9vSx6TA0Y4hBOc80UNfiz/9RCZw4zMCM=;
 b=YqY1+1risMhG/WP7ARvQ0a/5qGdGfSiblrmxWjXebT66GK9JGPavSRwT856UR0FjjO
 rVUx0wtvRt1OJ96s6G4OCarbmXP5B453Fw5f1oBASonS8FfeGLGjxebaxpd8a/+HjM2X
 D+sMFV41zDRKprtgbQUdgyioT5/nY7nILOWmiTURlzjcxMFp3Ao/QaqpDKriMT28Si9l
 6VHKUOmyoflPCOaH7wbyqeHb3mRW9EI7ckAj+kJ41VgV+n5Cx4s7LkcppHvru+YHO9Ap
 ihmDtR6WkgRvMaUCwNt/EvWzpYdqM3HEvDeTrOFTu6W48M+nYMD/Fgr29lryx9a9mCp4
 lvcg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVUY6gElnX9Npz7WHxzL2Bn2FxzJkhN4CpeDa1At1xBxEmH2bXHENkEKeN7qBC61meonqoLI5WwDqY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyTFlPMOOI4mZk/GuD8YsZ/LpxlVChgQ/E9ZEGrU0zl+u/TrkBi
 TeA7ETdH/E1eL9slHy002X2/oF2SNzLSVzfkRUW+n90bFEnpPbDfDvjX
X-Gm-Gg: ATEYQzyM49rM88F46bIX+GSmV+boh21q/9yfF6AtXxGF5hzZb5wF2sNAt/q90Caliip
 ZqX0nfA80Y6bagjhdCYNIxP1AQy7p8znO8h3VUnrJuQH/Ai/aOZl2bMOUahd34AYAn+ogeSaI6L
 J/pWpqMvOxfgT2ErlUt3sFqY+sTxfDua98kWqgqnWeYmahTFgYc89JyHaVA9EZt7BvbhHRBJw1+
 XCEZA7uEpCVOhKxuxS+A6aUtvFrRq9WM/MtqkYLVkkwIVAh3lwmg7lwi6KXYT2g/puGjJkCwaSg
 x1e4q21DXYcozQ2L96O2ANSC011qsuOKjg4W0GBLsEu/HynQ14nMUYJpuV1ej2g4cuH+KZTeQMT
 hmD5i4ChPTKk98ftPsgiJK8kZh7/JKzvZms1lNZPwnR/VzXNNlotS9YiZhTjOT8c7djR9MIEs69
 qSZtG6FANUohnmA9RTtgot4/a19ClXnCjbCymwFo2KQc/8NfRT
X-Received: by 2002:a05:6808:1912:b0:467:4a4e:5a80 with SMTP id
 5614622812f47-467575aef9cmr1688429b6e.45.1773408306845; 
 Fri, 13 Mar 2026 06:25:06 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.25.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:25:06 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Matthew Auld <matthew.auld@intel.com>,
 Arun Pravin <arunpravin.paneerselvam@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, louis.chauvet@bootlin.com,
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 63/65] drm_buddy: fix 64-bit truncation in power-of-2
 rounding
Date: Fri, 13 Mar 2026 07:20:28 -0600
Message-ID: <20260313132103.2529746-64-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260313132103.2529746-1-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:24 +0000
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,intel.com,amd.com,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:christian.koenig@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.613];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 78B342F7671
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The standard roundup_pow_of_two() and rounddown_pow_of_two() macros use
unsigned long internally, which on 32-bit architectures (like arm32) is
a 32-bit type.

drm_test_buddy_alloc_exceeds_max_order() uses the on a u64 value,
where they silently truncate the 10GB allocation, giving unexpected
success in DRM-CI.  (see below the snip).

Fix this by replacing the standard macros with safe 64-bit
power-of-two calculations using ilog2().

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---

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
 drivers/gpu/buddy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/buddy.c b/drivers/gpu/buddy.c
index 52686672e99f..ed4d33a30687 100644
--- a/drivers/gpu/buddy.c
+++ b/drivers/gpu/buddy.c
@@ -1091,7 +1091,7 @@ static int __alloc_contig_try_harder(struct gpu_buddy *mm,
 	u64 modify_size;
 	int err;
 
-	modify_size = rounddown_pow_of_two(size);
+	modify_size = 1ULL << ilog2(size);
 	pages = modify_size >> ilog2(mm->chunk_size);
 	order = fls(pages) - 1;
 	if (order == 0)
@@ -1318,7 +1318,7 @@ int gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
 
 	/* Roundup the size to power of 2 */
 	if (flags & GPU_BUDDY_CONTIGUOUS_ALLOCATION) {
-		size = roundup_pow_of_two(size);
+		size = 1ULL << (ilog2(size - 1) + 1);
 		min_block_size = size;
 		/*
 		 * Normalize the requested size to min_block_size for regular allocations.
-- 
2.53.0

