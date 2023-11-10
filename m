Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B0E7E7BF5
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 12:48:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9209810E99A;
	Fri, 10 Nov 2023 11:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA91F10E994
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699616897; x=1731152897;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eCfhbCGg9B7Rie1PGGe4DlxYLpcKAuXrdjBLIDVdbfU=;
 b=FSA2aNwZeJLQEd5bnF6JGZA27Y1yWyaJnZEV6kd/ECsFAxawbIMxBmjP
 kiLujFX62nqg5doVmvCuMInqjDwjqznonassRfG3ApYhzAhJ5inp7mom2
 Eo/NGfiE5oAwvYKSNwB4AG1hzVth2NDEPOZdvd/EJa9McVvc31ySH8lNy
 epCSIKe/9EYfF4dbx/TKbmGhGkJmdSCCVgffQUKBmhydKN53qGeKkt0Z9
 59qWRb/S9fCiSE/Dsu7iAe0AZMWf1YvEDG/ebqzNe3DWcyBDaG4VlShwJ
 uYMTWkrAv8n35IfMr16pZJNHbU1YCMRx+uRsM9elH+5TOMe0Kgc1ZbScT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="11722080"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="11722080"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 03:48:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="1010934639"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="1010934639"
Received: from ruehl-mobl.ger.corp.intel.com (HELO localhost) ([10.252.53.12])
 by fmsmga006-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2023 03:48:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Nov 2023 13:48:06 +0200
Message-Id: <20231110114807.3455739-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] MAINTAINERS: update drm/i915 W: and B:
 entries
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
Cc: jani.nikula@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The 01.org page has ceased to exist, and the relevant documentation is
now hosted at https://drm.pages.freedesktop.org/intel-docs/

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 MAINTAINERS | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index db78e674282f..fda92c15f687 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10516,9 +10516,9 @@ M:	Rodrigo Vivi <rodrigo.vivi@intel.com>
 M:	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
 L:	intel-gfx@lists.freedesktop.org
 S:	Supported
-W:	https://01.org/linuxgraphics/
+W:	https://drm.pages.freedesktop.org/intel-docs/
 Q:	http://patchwork.freedesktop.org/project/intel-gfx/
-B:	https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs
+B:	https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html
 C:	irc://irc.oftc.net/intel-gfx
 T:	git git://anongit.freedesktop.org/drm-intel
 F:	Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
-- 
2.39.2

