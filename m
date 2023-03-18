Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3D36BFA88
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 14:46:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BED210E476;
	Sat, 18 Mar 2023 13:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8E5C10E121
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 13:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679147168; x=1710683168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cxd36+a6AXhoMiCWljReXGns07VGkMy5OO5Bz4w8Br8=;
 b=bbzU47O5DCmrzqUv1ctCPsjHktJmfGRPYR22DshkE2Oi37QWXf6/ZD2f
 L5jRLCWx1a4eUAHx/coEZl8pUk1snvPa8nV3FtiC64LRYUMaWz9jwdmyt
 OvxNJ/xjeIZFx45O0FiXHJHavXapV8BDldWPHA+6pnp6bt8QmjR0AhSpD
 Ev2H0yJIw+zq7t9Smwo9sIU+Rc+8I5l+r6LONO+H49Dl1ChPHap4bNmjM
 /jJ+q/dch1p5kVShyPGbnXErI6H6/vAEmAi/8B7FjTE0KBL40KFOTDfqw
 4Uqm4s2BA2uo3n9sjhhotkiyrrFrh78YKO54rtFtcW+q22Wa9cr26ZtMV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="326798817"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="326798817"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2023 06:46:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="823967836"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="823967836"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 18 Mar 2023 06:46:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Mar 2023 15:46:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Mar 2023 15:45:44 +0200
Message-Id: <20230318134544.11033-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230318134544.11033-1-ville.syrjala@linux.intel.com>
References: <20230318134544.11033-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH xf86-video-intel 8/8] intel: Fix some
 theoretical buffer overflow
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Looks to me like the theoretical max the sprintf()s need
here is about 34+4+9+sizeof(de->d_name) bytes. Let's just
make that 64+sizeof(de->d_name) for simplicity.

This shuts up the compiler:
../src/intel_device.c: In function ‘__intel_open_device__pci’:
../src/intel_device.c:387:60: warning: ‘%s’ directive writing up to 255 bytes into a region of size 247 [-Wformat-overflow=]
  387 |                         sprintf(path + base + 4, "/dev/dri/%s", de->d_name);
      |                                                            ^~
../src/intel_device.c:387:25: note: ‘sprintf’ output between 10 and 265 bytes into a destination of size 256
  387 |                         sprintf(path + base + 4, "/dev/dri/%s", de->d_name);
      |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../src/intel_device.c:392:54: warning: ‘/dev’ directive writing 4 bytes into a region of size between 0 and 255 [-Wformat-overflow=]
  392 |                         sprintf(path + base + 3, "/%s/dev", de->d_name);
      |                                                      ^~~~
../src/intel_device.c:392:25: note: ‘sprintf’ output between 6 and 261 bytes into a destination of size 256
  392 |                         sprintf(path + base + 3, "/%s/dev", de->d_name);
      |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/intel_device.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/src/intel_device.c b/src/intel_device.c
index f28d3be11796..2ce2e9ad1467 100644
--- a/src/intel_device.c
+++ b/src/intel_device.c
@@ -335,9 +335,9 @@ static int __intel_open_device__major_minor(int _major, int _minor)
 static int __intel_open_device__pci(const struct pci_device *pci)
 {
 	struct stat st;
-	char path[256];
-	DIR *dir;
 	struct dirent *de;
+	char path[64+sizeof(de->d_name)];
+	DIR *dir;
 	int base;
 	int fd;
 
-- 
2.39.2

