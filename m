Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1935E61C3
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 13:53:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEDD810EAD7;
	Thu, 22 Sep 2022 11:53:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BF6E10EAD7
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 11:53:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="364254983"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="364254983"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 04:53:16 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="723630467"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.153])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 04:53:15 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Thu, 22 Sep 2022 14:52:58 +0300
Resent-Message-ID: <87tu4z62xx.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by jnikula-mobl4.ger.corp.intel.com with IMAP (fetchmail-6.4.29)
 for <jani@localhost> (single-drop); Thu, 22 Sep 2022 11:40:12 +0300 (EEST)
Received: from orsmga007.jf.intel.com (orsmga007.jf.intel.com [10.7.209.58])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 175C5580C36;
 Thu, 22 Sep 2022 01:36:15 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="615127573"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="615127573"
Received: from orsmga101.jf.intel.com ([10.7.208.22])
 by orsmga007-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22
 Sep 2022 01:36:15 -0700
Authentication-Results: mtab.intel.com; dkim=none (message not signed)
 header.i=none; spf=None smtp.pra=liubo03@inspur.com; spf=Pass
 smtp.mailfrom=liubo03@inspur.com; spf=None
 smtp.helo=postmaster@ssh248.corpemail.net
X-Ironport-Dmarc-Check-Result: validskip
IronPort-SDR: 632c1e7e_gB4d0xUL5dbwUXOmnFAAUpYYuUNe3ecVBMEvOsqZpi7Ghve
 DQ4DJFfEGSnzZAabBz7pcKgkb9WbpALTS63dpUA==
X-IPAS-Result: =?us-ascii?q?A0HtBQDnYclihvg9M9JNhGeBVy4EUBe0OQsBAQEBAQEBA?=
 =?us-ascii?q?QEJQgQBAYFQgzSFDgIdBwEERwECBAEBAQEEAQIBAQEBAQEDAQEBAgIBAQECA?=
 =?us-ascii?q?QECBAIBAQEBAhABAQEBGAcZBw4KAQUFIoV1gjUihCJSgT4BDQWCfYMZAgadd?=
 =?us-ascii?q?zKBAYl8CQEOiwGFR4IpgwyBcYp/BJp4OQMJBAcFLi8SgR9sAQgGBgcKBTAGA?=
 =?us-ascii?q?gwYFAQCExJNBgoMAhIMCgYTDg4zEBcMDwMSAw8BBwIJEAgSJQgDAgMIAwIDG?=
 =?us-ascii?q?wsCAxYJDgMdCAoYEhASAgQRGgsIAxY/CQIEDgNACA4DEQQDDxgJEggQBAYDM?=
 =?us-ascii?q?gwlCwMFDw0BBgMGAgUFAQMgAxQDBSQHAyEPJg0NBCIdAwMFJQMCAhsHAgIDA?=
 =?us-ascii?q?gYVBgICGCctOQgECAQrIw8FAgcvBQQvAh4EBQYRCAIWAgYEBQIEBBYCEAgCC?=
 =?us-ascii?q?CcXBxMzGQEFWRAJIRYGJxAFBhUDIUcmBQc+Dyg0NjwjCR8bCoEVLAkiFgMEB?=
 =?us-ascii?q?AMCBhoDAyICECkGMgMVBikVFRoTCSuBAQYiHZ0gLWGCKYFQAQHAOQEGAoMrJ?=
 =?us-ascii?q?YQchWaVfBoxlmKSAgGWdyCiWIROAYIPgVxNI4FugUpOAxcCD445jXoBWCU0O?=
 =?us-ascii?q?wIGCwEBAwmNcoESAQE?=
IronPort-PHdr: A9a23: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
IronPort-HdrOrdr: A9a23:fId3Bqpskqm/z/XC0/968DcaV5r0eYIsimQD101hICF9WseFjc
 zrp/gD0wToknItXhgb6Ki90KnpexzhHP9OkOws1NiZPTUO1FHEEGgA1/qB/9SDIU3DH4dmvM
 8KGZSWYOeAaWSS5vyV3ODXKbodKOjtytHQuQ/Up00dNj2CE5sQjDuRXTzrdXGfI2F9dOAEPY
 eh5scvnUvHRUgq
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="287319281"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="287319281"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from ssh248.corpemail.net ([210.51.61.248])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Sep 2022
 01:36:13 -0700
Received: from ([60.208.111.195])
 by ssh248.corpemail.net ((D)) with ASMTP (SSL) id RJH00008;
 Thu, 22 Sep 2022 16:36:08 +0800
Received: from localhost.localdomain (10.200.104.97) by
 jtjnmail201607.home.langchao.com (10.100.2.7) with Microsoft SMTP Server id
 15.1.2507.12; Thu, 22 Sep 2022 16:36:09 +0800
From: Bo Liu <liubo03@inspur.com>
To: <jani.nikula@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <rodrigo.vivi@intel.com>, <tvrtko.ursulin@linux.intel.com>,
 <airlied@linux.ie>, <daniel@ffwll.ch>
Date: Thu, 22 Sep 2022 04:36:01 -0400
Message-ID: <20220922083601.3236-1-liubo03@inspur.com>
X-Mailer: git-send-email 2.18.2
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.200.104.97]
tUid: 2022922163608248abfaae967940ac91c8a7deabfe4fb
X-Abuse-Reports-To: service@corp-email.com
Abuse-Reports-To: service@corp-email.com
X-Complaints-To: service@corp-email.com
X-Report-Abuse-To: service@corp-email.com
Subject: [Intel-gfx] [PATCH] drm/i915: Fix double word in comments
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
Cc: intel-gfx@lists.freedesktop.org, Bo Liu <liubo03@inspur.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove the repeated word "not" in comments.

Signed-off-by: Bo Liu <liubo03@inspur.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 4ace026b29bd..a5cb253f6dc5 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -646,7 +646,7 @@ static unsigned int intel_bw_crtc_num_active_planes(const struct intel_crtc_stat
 {
 	/*
 	 * We assume cursors are small enough
-	 * to not not cause bandwidth problems.
+	 * to not cause bandwidth problems.
 	 */
 	return hweight8(crtc_state->active_planes & ~BIT(PLANE_CURSOR));
 }
@@ -661,7 +661,7 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
 	for_each_plane_id_on_crtc(crtc, plane_id) {
 		/*
 		 * We assume cursors are small enough
-		 * to not not cause bandwidth problems.
+		 * to not cause bandwidth problems.
 		 */
 		if (plane_id == PLANE_CURSOR)
 			continue;
-- 
2.27.0

