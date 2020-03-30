Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D881D198456
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 21:24:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46A8889D64;
	Mon, 30 Mar 2020 19:24:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891E189C2C;
 Mon, 30 Mar 2020 19:24:41 +0000 (UTC)
IronPort-SDR: i6Az3azasPzkuD8gRZIJIIeM43K4DseLVSmxC8XfmMcmDfOE0NL4tuLtOdf6p6WB6/xVakBKBT
 GO9TDFTipMWg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 12:24:41 -0700
IronPort-SDR: u07A9Z9DJd+SzSK+Ti72onh/u2QIFVIh6YRQgcwFn8ypmwMWDv2LSM14Z8IYAYX07HOsS+dF+J
 Qs3iGXEk6WIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,325,1580803200"; d="scan'208";a="359268688"
Received: from plaxmina-desktop.iind.intel.com ([10.145.162.62])
 by fmsmga001.fm.intel.com with ESMTP; 30 Mar 2020 12:24:37 -0700
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: jani.nikula@linux.intel.com, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Jonathan Corbet <corbet@lwn.net>
Date: Tue, 31 Mar 2020 00:45:24 +0530
Message-Id: <20200330191524.14676-1-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/todo: Add todo to make i915 WARN* calls drm
 device specific
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With below commit, we have new struct drm_device based WARN* macros,
which include device specific information in the backtrace.

commit dc1a73e50f9c63d4dd928df538082200467dc4b1
Author: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
Date:   Wed Jan 15 09:14:45 2020 +0530

    drm/print: introduce new struct drm_device based WARN* macros

Majority of the i915 WARN* are already converted to use struct
drm_device specific drm_WARN* calls.Add new todo entry for
pending conversions.

Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
---
 Documentation/gpu/todo.rst | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
index 37a3a023c114..0cb32df89784 100644
--- a/Documentation/gpu/todo.rst
+++ b/Documentation/gpu/todo.rst
@@ -575,6 +575,18 @@ See drivers/gpu/drm/amd/display/TODO for tasks.
 
 Contact: Harry Wentland, Alex Deucher
 
+Make i915 WARN* Calls struct drm_device Specific
+------------------------------------------------
+
+struct drm_device specific drm_WARN* macros include device information in the
+backtrace, so we know what device the warnings originate from. Convert all the
+calls of WARN* with drm_WARN* calls in i915. While at it, remove WARN* which
+are not truly valid.
+
+Contact: Jani Nikula
+
+Level: Starter
+
 Bootsplash
 ==========
 
@@ -595,7 +607,7 @@ Level: Advanced
 Outside DRM
 ===========
 
-Convert fbdev drivers to DRM
+Convert fbdev drivers to 
 ----------------------------
 
 There are plenty of fbdev drivers for older hardware. Some hwardware has
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
