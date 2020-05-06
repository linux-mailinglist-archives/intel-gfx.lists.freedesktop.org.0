Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 308DF1F14EF
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 11:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE2DE6E0CD;
	Mon,  8 Jun 2020 09:04:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBE6B6E0CD
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 09:04:57 +0000 (UTC)
IronPort-SDR: C3Ikt+X72D1aEOo6wFOVY7gGahgPYH3JL/GoL/WXznmfppKsvHfm41rKaqPXpfkBJuy4OQLofG
 tCII48xTB6ow==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 02:04:56 -0700
IronPort-SDR: NW84cwmus8OA9eAgEtPNBVEhPIYFNc8Q9MZrhL9sVL1eBqqpdEFPXdW0dK7iR5U/IjY4UJkmd5
 VubO5Y8TAA+g==
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="446664106"
Received: from bklaps-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.45.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 02:04:54 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Mon, 08 Jun 2020 12:04:51 +0300
Resent-Message-ID: <87d06ax70s.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by jnikula-mobl3 with IMAP (fetchmail-6.4.0.beta4)
 for <jani@localhost> (single-drop); Wed, 06 May 2020 13:31:42 +0300 (EEST)
Received: from orsmga002.jf.intel.com (orsmga002.jf.intel.com [10.7.209.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id DA6B058048A;
 Wed,  6 May 2020 03:31:29 -0700 (PDT)
IronPort-SDR: 0E0sXFeq8mYR0SLAtq0alAh9/MxIVzmxiGWUyPDrnWuna2Pg2GyG1Uu302L0+WPBZLrxKomxSu
 D3+XQtYo/lc/EUFhRd4ca3B4/N6qX8fLQ=
Received: from orsmga101.jf.intel.com ([10.7.208.22])
 by orsmga002-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 03:31:28 -0700
Authentication-Results: mtab.intel.com;
 dkim=none (message not signed) header.i=none;
 spf=None smtp.pra=kai.heng.feng@canonical.com;
 spf=None smtp.mailfrom=kai.heng.feng@canonical.com;
 spf=None smtp.helo=postmaster@youngberry.canonical.com;
 dmarc=fail (p=none dis=none) d=canonical.com
IronPort-SDR: s8zpUkhgFp1RHGGzQmw2TM0a7g4QPw+ru7DIaHzX+tf6btHL0OJ9JD82W7it6vzuijquxGH92c
 1ffKlpmPluhsRziRhswMKjrr5/mipPyUs=
IronPort-PHdr: =?us-ascii?q?9a23=3AdmfIhhXtTnAKTwK/zIPSntDITtXV8LGtZVwlr6?=
 =?us-ascii?q?E/grcLSJyIuqrYZRaGvKdThVPEFb/W9+hDw7KP9fy5BCpfsd3b7TgrS99lb1?=
 =?us-ascii?q?c9k8IYnggtUoauKHbQC7rUVRE8B9lIT1R//nu2YgB/Ecf6YEDO8DXptWZBUh?=
 =?us-ascii?q?rwOhBoKevrB4Xck9q41/yo+53Ufg5EmCexbal9IRmrrQjdrMsbjIhtJqovyh?=
 =?us-ascii?q?bCv2dFdflRyW50P1yYggzy5t23/J5t8iRQv+wu+stdWqjkfKo2UKJVAi0+P2?=
 =?us-ascii?q?86+MPkux/DTRCS5nQHSWUZjgBIAwne4x7kWJr6rzb3ufB82CmeOs32UKw0VD?=
 =?us-ascii?q?G/5KplVBPklCEKPCMi/WrJlsJ/kr5UoBO5pxx+3YHUZp2VNOFjda/ZZN8WWH?=
 =?us-ascii?q?ZNUtpUWyFHH4iybZYAD/AZMOhYsYfzulUAoxi5CwS3GO/j1iVFimPs0KEmz+?=
 =?us-ascii?q?gsFxzN0gw6H9IJtXTZtND7O70TUeyszqfH0zPDb/xL0jn99ofIdB8hquyLUL?=
 =?us-ascii?q?Jza8XRyFMjFwPbgVWWpozpJT2V2foLs2iU9OdvSfigi2ggqwF3ozig2t0jio?=
 =?us-ascii?q?3Tio0JzVDE8Dx0zYAoLtK3VEB1e8SrEIdMty6ELYt2RNsvTn9rtSon1rALuZ?=
 =?us-ascii?q?y2cSkJxZg7xBPTduCKfYiH7B/sVOucJTl2iXFqdr+xiBu8/0qtxO39W8e63l?=
 =?us-ascii?q?tHriRInNfMu30Lyhfd5M+HSv5n8Ueg3zaCzw7T6vtaLk8qiKXUNYUhwr0slp?=
 =?us-ascii?q?oUqUTPBCj2mF/5jKOObUor4POo5Pr9brr7uJCcKYl5gRz9PKQ2gsGyBfk0Ph?=
 =?us-ascii?q?ITU2WY/emwzr7u8EnjTLlXk/E6jLHVvZHHKcgBuKK1HRNZ3pw+5xuxDTqqyt?=
 =?us-ascii?q?oVkHsBIVlYYhyIlZLpNEvLIP3gDfewnVCskDBzyvHGOb3hH5PNLnfYn7j/Z7?=
 =?us-ascii?q?Z98U5dxBAvwt9F4ZJUDbcBIPPvVUDrsNzUFAM2Mwuxw+r/CdV90J0RWX6XD6?=
 =?us-ascii?q?KdLa/eq0KE6+ErLuWWZ4IYvCzxJ+U46/LwlXM5nEUSfait3ZsZcnC4GfFmLl?=
 =?us-ascii?q?2aYXX2g9cNC2cKsRQ4TOzlklGCXyBcZ3C9X68n+j40EoSmDYDFRoCsnLOOxi?=
 =?us-ascii?q?O7EodKaWBBD1CACW3oeJmcW/cQdCKSJddskj4eWrinSo8tzxeutA75y7p6Ku?=
 =?us-ascii?q?rb4DYVtZbi1Nhz+u3Smgs+9T1yD8SBzW6NS3t4kX8PRz8zxKp/u1Byyk+f0a?=
 =?us-ascii?q?hkhPxVDd5T5/ROUgc8L5Hc1PZ2C9ToVQLBYteJSVCmTcugATwqStIxwtkOY1?=
 =?us-ascii?q?tyGtm4jxDD2TaqDKERl7CRGJM09afc1WDrJ8lh03bGyLUhj14+T8tRNG2mgq?=
 =?us-ascii?q?p/+BbJC47Sk0SZjaSqer4Y3CHX72qDyWuOvEdFUA9/S6nFXHYfZlfIotT9/E?=
 =?us-ascii?q?/NU7iuCbE/OAtb1cGCMrdKasHujVheQffsIs7RY3itm2iuAxaE3LeMY5Dse2?=
 =?us-ascii?q?Ue3CXdD1IEkxsP/XudMQg+ByGho3/RDTB0FFLvZV/s/vd6qH+hUkA0yASKPA?=
 =?us-ascii?q?Vd0O+38xgUw/qdSO4X15oAuSE8u3N1Gkqw25TdDN/TiRBmefB/aNJ4wFpB2i?=
 =?us-ascii?q?r3ugpydsijJqEkhlMYfEJ5skXh/x5+DIJGkMMjqDUhyw8kevHQ609Iaz7Nhc?=
 =?us-ascii?q?O4AbbQMGSnuUn3M/OE9nT36v3PovddsLAUrlz5tzukHU04/ycvy4xT1H2Rot?=
 =?us-ascii?q?3SBxZHCMqpFg4s700+77jWYSg4spmQnXR3KafhqHuKwc8gUdhlhRqlds1Udb?=
 =?us-ascii?q?mZHSf7H8gbAY6lIeotnVmiZxZCN+dXu+p8Zpv6J6bZhvbqCaJmmzSr1z4VyZ?=
 =?us-ascii?q?1h0k+K6yt3Q/LJ2JBA+fyDww+bTG2i1QWkrsn934FCeTwWWGG4zHusCI1QY/?=
 =?us-ascii?q?h0eoAGQSerLtasz9pzz5jqRzZD9VGlCl9HkM+kcBafdRr8iAtX00lE6We/l3?=
 =?us-ascii?q?6eyDp52yossrLZxDbHlufrdVwHN2hEAmdvi1jEKoGyiNYbV0GsKQMukUjt/l?=
 =?us-ascii?q?70ko5coqk3NGzPWQFNdinyIXtlV/6zv7vEY8NJ59UmvCNYeO+1Z1ecS7X0p1?=
 =?us-ascii?q?0R1CawV3BGymUdcDen8o78gwQ8iG+ZKyNrq2HFfMhr2RrFzM3bWPhe1DccXj?=
 =?us-ascii?q?g+gjDRAV69NNCtu96TksSLvuW3TWn0WJRSdWGr1daGsy22rWFrGki5mPa+25?=
 =?us-ascii?q?XrRAMz1yj91tJjUWPDqxOlONvR2q+3MPxqcgxTPHGns5UoPIZ4n8NwgY0Z0z?=
 =?us-ascii?q?4bgImY+TwMlmKhedNckbnzanYAX3YC3sLV7Q752UZiMmPspcqxV3OTxdFkbs?=
 =?us-ascii?q?W7ZWVe0zw07sRDAqOZpLJemi49rl29pAPXKf9z+1VVgfgn6TgajucG/gQgyC?=
 =?us-ascii?q?q1CbkUGk9ZNiXo0R+P6pH2ralaYnqubanlzFB3zrXDRPmJpgBRXmq8e493TH?=
 =?us-ascii?q?Y2t5UudgKdliSqsNKsYtTbYNMNuwfBlgvJha5ULo48krwBgi80XAC19XAj1e?=
 =?us-ascii?q?M/igRjmJ+gu43SYWZk/eS5DxhXcDP4Ycw78TjriqBflc+SmYuoG98yf1dDFI?=
 =?us-ascii?q?utVv+uHD8I4L7kPgfIEDA6pTGVFLzQNQSW7kBgrnnGF9agMHTddxx7hZ1yAR?=
 =?us-ascii?q?KaIkJYmgUdWj43y4U4Gg6dz8vkaE5l5zoV6wei+CFBwe9pKRTzF1znilzxMG?=
 =?us-ascii?q?UST56SZFpT8ghIoUbTLcGaqOl0GnMQ+JrptwGLJmGBLw1VEWEEXFCFDFH/L9?=
 =?us-ascii?q?zMrZHB9eafHO+3M/rJZ/2Ht+VfU/6CwZ/n3JFh+n6AMcCGP38qCPNeuAILXn?=
 =?us-ascii?q?l4XcTUnTpJRSERmArGZsicoha38ykxpce6sbzqVA/p+YqTGu5XONRr9QqxhP?=
 =?us-ascii?q?TmVabYjyJ4JDBEk5IUkC6RjuFPjRhC2mc3LmP+Wa4NviPMUq/Kz6pLBhRdai?=
 =?us-ascii?q?VvOc8O5KU5jWwvcYbWjM340rlgg7s7EVBAABbik8DvZcEMLCezOVXILE2CMr?=
 =?us-ascii?q?OAJDbCx4f8Zqb2GtgyxK1E8ga9vzqWCRqpPT2C0TnkUR/pP+xKgwmQNRpZvo?=
 =?us-ascii?q?C2exIrAm/mBoGDCFXzIJp8ijs4xqcxj3XBODsHMDRyREhKq6WZ8SJShvgmQT?=
 =?us-ascii?q?5743FoLPeJl2Oi18eDcMpEl/xtD2w0kv5T6jI7zadY6GdPQ/kn0C3V5sVjpV?=
 =?us-ascii?q?2riKGG1yZnXRxSqz1KmJPu3w0qOKPX8YNFUGrF+xRF5HuZChADrd9oQtP1vK?=
 =?us-ascii?q?UYxt/KnaP1YDBMlrCctdMbHNTRIdmbPWAJIB30HjHeAREfXHigPGfYgU1Wmf?=
 =?us-ascii?q?XU/XqQ79A7ppXqhJsSW+pbWVgyRZZ4QgxuGN0PJosyXytxwOfd1Z5Zoyrv6k?=
 =?us-ascii?q?CIHpYSpJ3MW/OMDO+6LSqQh/9FYQcFxfXzKoFAU++zk0FkdFR+m5zHXkTKWt?=
 =?us-ascii?q?UY6C5ob0k0rUNCtnZzSGIb0EvjbQWs63YXU/Wzm1Rl72k2KfRo7zrq71otcx?=
 =?us-ascii?q?DSozAslUAqhdj/qSGWbTj+JqqqR5AQACPysE4wOZr/BQ1yaEfh+C4sfCeBTL?=
 =?us-ascii?q?VXgbx6cGltgwKJoppDF8lXSqhcaQMRz/WaPqh64RFnsiyigHR/y67FBJ9lzl?=
 =?us-ascii?q?V4YJmxqX1K1hh5fZg+LKrXIqtCx1wWjaWL7Hfxh7IBhTQGLkNIy1u8PSsBuU?=
 =?us-ascii?q?gGLL4jfnf69eVq7gqDkDJHPmMLUqhy+644xgYGI+2FihnY/ftbMEnoar6UJq?=
 =?us-ascii?q?WevWnLnMrOSVQ1hBsF?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FmEAA3kbJeh3BZvVtmHQEBPAEFBQE?=
 =?us-ascii?q?CAQkBgV6CIwFyVSMECyqNJIV8K4FBNotPj34LAQEBAQEBAQEBCBMQCgIEAQE?=
 =?us-ascii?q?ChEKCBBwGBjQTAgMBAQsBAQEEAQEBAgECAwQBAQIQAQEBCgsJCCmFXQyCOyk?=
 =?us-ascii?q?Bb34BAQEBAQEBAQEBAQEBAQEBAQEBFgINVIEWUoFRgyYBgnsFAQq0dzOEOQG?=
 =?us-ascii?q?GEAaBOAGHXIRnfoEcgREzgxuCTodyBI40BgGCTohJgQaXeQeCS4I7hV2Pcim?=
 =?us-ascii?q?dIJlrk0QsgWmBeU0jgzlQGA2QTg4JiGOFTzQzAjUCBggBAQMJViYTkTcBAQ?=
X-IPAS-Result: =?us-ascii?q?A0FmEAA3kbJeh3BZvVtmHQEBPAEFBQECAQkBgV6CIwFyV?=
 =?us-ascii?q?SMECyqNJIV8K4FBNotPj34LAQEBAQEBAQEBCBMQCgIEAQEChEKCBBwGBjQTA?=
 =?us-ascii?q?gMBAQsBAQEEAQEBAgECAwQBAQIQAQEBCgsJCCmFXQyCOykBb34BAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBFgINVIEWUoFRgyYBgnsFAQq0dzOEOQGGEAaBOAGHXIRnf?=
 =?us-ascii?q?oEcgREzgxuCTodyBI40BgGCTohJgQaXeQeCS4I7hV2PcimdIJlrk0QsgWmBe?=
 =?us-ascii?q?U0jgzlQGA2QTg4JiGOFTzQzAjUCBggBAQMJViYTkTcBAQ?=
X-IronPort-AV: E=Sophos;i="5.73,358,1583222400"; d="scan'208";a="120122369"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from youngberry.canonical.com ([91.189.89.112])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 03:30:25 -0700
Received: from 61-220-137-37.hinet-ip.hinet.net ([61.220.137.37]
 helo=localhost) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>)
 id 1jWHIM-0008Fl-44; Wed, 06 May 2020 10:28:54 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: jani.nikula@linux.intel.com
Date: Wed,  6 May 2020 18:28:02 +0800
Message-Id: <20200506102844.26596-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5] drm/i915: Init lspcon chip dynamically
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
Cc: David Airlie <airlied@linux.ie>, Lucas De Marchi <lucas.demarchi@intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On HP 800 G4 DM, if HDMI cable isn't plugged before boot, the HDMI port
becomes useless and never responds to cable hotplugging:
[    3.031904] [drm:lspcon_init [i915]] *ERROR* Failed to probe lspcon
[    3.031945] [drm:intel_ddi_init [i915]] *ERROR* LSPCON init failed on port D

Seems like the lspcon chip on the system only gets powered after the
cable is plugged.

Consolidate lspcon_init() into lspcon_resume() to dynamically init
lspcon chip, and make HDMI port work.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/203
Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
v5:
 - Consolidate lspcon_resume() with lspcon_init().
 - Move more logic into lspcon code.

v4:
 - Trust VBT in intel_infoframe_init().
 - Init lspcon in intel_dp_detect().

v3:
 - Make sure it's handled under long HPD case.

v2: 
 - Move lspcon_init() inside of intel_dp_hpd_pulse().

 drivers/gpu/drm/i915/display/intel_ddi.c    | 19 +------
 drivers/gpu/drm/i915/display/intel_dp.c     | 10 ++--
 drivers/gpu/drm/i915/display/intel_hdmi.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_lspcon.c | 63 ++++++++++++---------
 drivers/gpu/drm/i915/display/intel_lspcon.h |  3 +-
 5 files changed, 43 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5601673c3f30..798fd640da54 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4770,7 +4770,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 {
 	struct intel_digital_port *intel_dig_port;
 	struct intel_encoder *encoder;
-	bool init_hdmi, init_dp, init_lspcon = false;
+	bool init_hdmi, init_dp;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 
 	init_hdmi = intel_bios_port_supports_dvi(dev_priv, port) ||
@@ -4784,7 +4784,6 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		 * is initialized before lspcon.
 		 */
 		init_dp = true;
-		init_lspcon = true;
 		init_hdmi = false;
 		drm_dbg_kms(&dev_priv->drm, "VBT says port %c has lspcon\n",
 			    port_name(port));
@@ -4869,22 +4868,6 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 			goto err;
 	}
 
-	if (init_lspcon) {
-		if (lspcon_init(intel_dig_port))
-			/* TODO: handle hdmi info frame part */
-			drm_dbg_kms(&dev_priv->drm,
-				    "LSPCON init success on port %c\n",
-				    port_name(port));
-		else
-			/*
-			 * LSPCON init faied, but DP init was success, so
-			 * lets try to drive as DP++ port.
-			 */
-			drm_err(&dev_priv->drm,
-				"LSPCON init failed on port %c\n",
-				port_name(port));
-	}
-
 	intel_infoframe_init(intel_dig_port);
 
 	return;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6952b0295096..e26aa35d6e37 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5938,15 +5938,14 @@ static enum drm_connector_status
 intel_dp_detect_dpcd(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	u8 *dpcd = intel_dp->dpcd;
 	u8 type;
 
 	if (WARN_ON(intel_dp_is_edp(intel_dp)))
 		return connector_status_connected;
 
-	if (lspcon->active)
-		lspcon_resume(lspcon);
+	lspcon_resume(dig_port);
 
 	if (!intel_dp_get_dpcd(intel_dp))
 		return connector_status_disconnected;
@@ -7198,14 +7197,13 @@ void intel_dp_encoder_reset(struct drm_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(encoder));
-	struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	intel_wakeref_t wakeref;
 
 	if (!HAS_DDI(dev_priv))
 		intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
 
-	if (lspcon->active)
-		lspcon_resume(lspcon);
+	lspcon_resume(dig_port);
 
 	intel_dp->reset_link_params = true;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 010f37240710..643ad2127931 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3155,7 +3155,8 @@ void intel_infoframe_init(struct intel_digital_port *intel_dig_port)
 		intel_dig_port->set_infoframes = g4x_set_infoframes;
 		intel_dig_port->infoframes_enabled = g4x_infoframes_enabled;
 	} else if (HAS_DDI(dev_priv)) {
-		if (intel_dig_port->lspcon.active) {
+		if (intel_bios_is_lspcon_present(dev_priv,
+						 intel_dig_port->base.port)) {
 			intel_dig_port->write_infoframe = lspcon_write_infoframe;
 			intel_dig_port->read_infoframe = lspcon_read_infoframe;
 			intel_dig_port->set_infoframes = lspcon_set_infoframes;
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index d807c5648c87..f5f06d2a839a 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -525,44 +525,17 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
 	return enc_to_intel_lspcon(encoder)->active;
 }
 
-void lspcon_resume(struct intel_lspcon *lspcon)
-{
-	enum drm_lspcon_mode expected_mode;
-
-	if (lspcon_wake_native_aux_ch(lspcon)) {
-		expected_mode = DRM_LSPCON_MODE_PCON;
-		lspcon_resume_in_pcon_wa(lspcon);
-	} else {
-		expected_mode = DRM_LSPCON_MODE_LS;
-	}
-
-	if (lspcon_wait_mode(lspcon, expected_mode) == DRM_LSPCON_MODE_PCON)
-		return;
-
-	if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON))
-		DRM_ERROR("LSPCON resume failed\n");
-	else
-		DRM_DEBUG_KMS("LSPCON resume success\n");
-}
-
 void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon)
 {
 	lspcon_wait_mode(lspcon, DRM_LSPCON_MODE_PCON);
 }
 
-bool lspcon_init(struct intel_digital_port *intel_dig_port)
+static bool lspcon_init(struct intel_digital_port *intel_dig_port)
 {
 	struct intel_dp *dp = &intel_dig_port->dp;
 	struct intel_lspcon *lspcon = &intel_dig_port->lspcon;
-	struct drm_device *dev = intel_dig_port->base.base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_connector *connector = &dp->attached_connector->base;
 
-	if (!HAS_LSPCON(dev_priv)) {
-		DRM_ERROR("LSPCON is not supported on this platform\n");
-		return false;
-	}
-
 	lspcon->active = false;
 	lspcon->mode = DRM_LSPCON_MODE_INVALID;
 
@@ -586,3 +559,37 @@ bool lspcon_init(struct intel_digital_port *intel_dig_port)
 	DRM_DEBUG_KMS("Success: LSPCON init\n");
 	return true;
 }
+
+void lspcon_resume(struct intel_digital_port *intel_dig_port)
+{
+	struct intel_lspcon *lspcon = &intel_dig_port->lspcon;
+	struct drm_device *dev = intel_dig_port->base.base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	enum drm_lspcon_mode expected_mode;
+
+	if (!intel_bios_is_lspcon_present(dev_priv, intel_dig_port->base.port))
+		return;
+
+	if (!lspcon->active) {
+		if (!lspcon_init(intel_dig_port)) {
+			DRM_ERROR("LSPCON init failed on port %c\n",
+				  port_name(intel_dig_port->base.port));
+			return;
+		}
+	}
+
+	if (lspcon_wake_native_aux_ch(lspcon)) {
+		expected_mode = DRM_LSPCON_MODE_PCON;
+		lspcon_resume_in_pcon_wa(lspcon);
+	} else {
+		expected_mode = DRM_LSPCON_MODE_LS;
+	}
+
+	if (lspcon_wait_mode(lspcon, expected_mode) == DRM_LSPCON_MODE_PCON)
+		return;
+
+	if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON))
+		DRM_ERROR("LSPCON resume failed\n");
+	else
+		DRM_DEBUG_KMS("LSPCON resume success\n");
+}
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index 37cfddf8a9c5..169db35db13e 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -15,8 +15,7 @@ struct intel_digital_port;
 struct intel_encoder;
 struct intel_lspcon;
 
-bool lspcon_init(struct intel_digital_port *intel_dig_port);
-void lspcon_resume(struct intel_lspcon *lspcon);
+void lspcon_resume(struct intel_digital_port *intel_dig_port);
 void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
 void lspcon_write_infoframe(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
