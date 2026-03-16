Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBzUM1VkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 171762F7552
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BDDF10E4D3;
	Mon, 23 Mar 2026 16:03:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=antgroup.com header.i=@antgroup.com header.b="ICjBAjIP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 304 seconds by postgrey-1.36 at gabe;
 Mon, 16 Mar 2026 03:52:11 UTC
Received: from out28-146.mail.aliyun.com (out28-146.mail.aliyun.com
 [115.124.28.146])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B243210E2AF;
 Mon, 16 Mar 2026 03:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antgroup.com; s=default;
 t=1773633129; h=From:To:Subject:Date:Message-Id:MIME-Version;
 bh=OED2UqpsODjwgj7WIlX0Yih4RVuBc+4p//C/zveDf7Q=;
 b=ICjBAjIPLiafKrFIAUpeSX0lt+qdbO3l6q7yYzOMG7Y8lWIw56RTh/UiRRd+Zn0lRLUH98SOpnZpZA61gCIWEB4UQq3VAGA/rdaAzVfxPv9+V7CA8ufJxuSnfQ6vjsM1l2jGMXOJU7E04Gmpn/m3neGHMKT7Z+JhUae4i+Dp4RM=
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R111e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=maildocker-contentspam033037032089;
 MF=houwenlong.hwl@antgroup.com; NM=1; PH=DS; RN=47; SR=0;
 TI=SMTPD_---.gt4DdjB_1773632822; 
Received: from localhost(mailfrom:houwenlong.hwl@antgroup.com
 fp:SMTPD_---.gt4DdjB_1773632822 cluster:ay29) by smtp.aliyun-inc.com;
 Mon, 16 Mar 2026 11:47:03 +0800
From: Hou Wenlong <houwenlong.hwl@antgroup.com>
To: linux-kernel@vger.kernel.org
Cc: Hou Wenlong <houwenlong.hwl@antgroup.com>,
 Alex Deucher <alexander.deucher@amd.com>, Alex Hung <alex.hung@amd.com>,
 Alvin Lee <alvin.lee2@amd.com>, amd-gfx@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Aurabindo Pillai <aurabindo.pillai@amd.com>,
 Ausef Yousof <auyousof@amd.com>,
 Bhuvanachandra Pinninti <bpinnint@amd.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Charlene Liu <charlene.liu@amd.com>, Chenyu Chen <chen-yu.chen@amd.com>,
 Chris Park <chris.park@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Dillon Varone <dillon.varone@amd.com>,
 Dmytro Laktyushkin <dmytro.laktyushkin@amd.com>,
 dri-devel@lists.freedesktop.org, Gustavo Sousa <gustavo.sousa@intel.com>,
 Harold Sun <Harold.Sun@amd.com>, Harry Wentland <harry.wentland@amd.com>,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jun Lei <jun.lei@amd.com>, Karthi Kandasamy <karthi.kandasamy@amd.com>,
 Leo Chen <leo.chen@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Lohita Mudimela <lohita.mudimela@amd.com>,
 Lucas De Marchi <demarchi@kernel.org>,
 Meenakshikumar Somasundaram <meenakshikumar.somasundaram@amd.com>,
 Nicholas Carbones <Nicholas.Carbones@amd.com>, Ray Wu <ray.wu@amd.com>,
 Relja Vojvodic <rvojvodi@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ryan Seto <ryanseto@amd.com>,
 Samson Tam <Samson.Tam@amd.com>, Simona Vetter <simona@ffwll.ch>,
 =?UTF-8?q?Timur=20Krist=C3=B3f?= <timur.kristof@gmail.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Wayne Lin <wayne.lin@amd.com>,
 Wenjing Liu <wenjing.liu@amd.com>, Yan Li <yan.li@amd.com>,
 Zhenyu Wang <zhenyuw.linux@gmail.com>, Zhi Wang <zhi.wang.linux@gmail.com>
Subject: [PATCH 0/2] drm: Fix namespace clashes with 'pixel_format'
Date: Mon, 16 Mar 2026 11:46:27 +0800
Message-Id: <cover.1773629419.git.houwenlong.hwl@antgroup.com>
X-Mailer: git-send-email 2.31.1
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
X-Spamd-Result: default: False [2.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[180];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[antgroup.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[antgroup.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[47];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[antgroup.com,amd.com,lists.freedesktop.org,intel.com,gmail.com,linux.intel.com,kernel.org,igalia.com,ffwll.ch,ursulin.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[houwenlong.hwl@antgroup.com,intel-gfx-bounces@lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[antgroup.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,antgroup.com:dkim,antgroup.com:mid]
X-Rspamd-Queue-Id: 171762F7552
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The 'pixel_format' structure is defined in include/video/pixel_format.h.
However, DRM also defines a local structure with the same name, which
leads to namespace clashes as reported in [0]. As suggested in [1],
rename the 'pixel_format' definitions in drivers/drm by adding a prefix
to avoid the conflict.

[0]: https://lore.kernel.org/lkml/aahBPzflrEJ2FPx0@sirena.org.uk
[1]: https://lore.kernel.org/lkml/20260313122808.GAabQC2Bmul9Odt-dX@fat_crate.local

Hou Wenlong (2):
  drm/i915/gvt: Rename struct 'pixel_format' to 'gvt_pixel_format'
  drm/amd/display: Rename enum 'pixel_format' to 'dc_pixel_format'

 drivers/gpu/drm/amd/display/dc/core/dc_resource.c           | 4 ++--
 drivers/gpu/drm/amd/display/dc/dc_hw_types.h                | 2 +-
 drivers/gpu/drm/amd/display/dc/dc_spl_translate.c           | 3 ++-
 drivers/gpu/drm/amd/display/dc/dpp/dcn10/dcn10_dpp_dscl.c   | 4 ++--
 drivers/gpu/drm/amd/display/dc/dpp/dcn401/dcn401_dpp_dscl.c | 4 ++--
 drivers/gpu/drm/amd/display/dc/inc/hw/hw_shared.h           | 2 +-
 drivers/gpu/drm/amd/display/dc/inc/hw/transform.h           | 2 +-
 drivers/gpu/drm/i915/gvt/fb_decoder.c                       | 6 +++---
 8 files changed, 14 insertions(+), 13 deletions(-)

--
2.31.1

