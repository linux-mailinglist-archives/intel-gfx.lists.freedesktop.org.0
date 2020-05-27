Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC7A1E4056
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 13:45:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3075289A67;
	Wed, 27 May 2020 11:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D98AF89A4E;
 Wed, 27 May 2020 11:45:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D298CA73C7;
 Wed, 27 May 2020 11:45:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Wed, 27 May 2020 11:45:27 -0000
Message-ID: <159057992783.345.4886543948146880905@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200527110132.16679-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20200527110132.16679-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Add_debugfs_for_requesting_HDCP_version?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: i915: Add debugfs for requesting HDCP version
URL   : https://patchwork.freedesktop.org/series/77693/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ee34d42eee76 drm/i915: Add support for considering HDCP ver requested via debugfs
a44896d4d874 drm/i915: Add a new debugfs to request HDCP version
-:38: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#38: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2190:
+{
+

-:53: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#53: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2205:
+	seq_printf(m, "Requested Versions:\n");

-:55: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#55: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2207:
+		seq_printf(m, "HDCP1.4\n");

-:57: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#57: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2209:
+		seq_printf(m, "HDCP2.2\n");

-:63: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#63: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2215:
+static int i915_hdcp_ver_request_open(struct inode *inode,
+				     struct file *file)

-:84: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#84: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2236:
+static ssize_t i915_hdcp_ver_request_write(struct file *file,
+					  const char __user *ubuf,

-:106: CHECK:LINE_SPACING: Please don't use multiple blank lines
#106: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2258:
+
+

-:139: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#139: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2314:
+		debugfs_create_file("i915_hdcp_version_request", S_IRUGO, root,

total: 0 errors, 4 warnings, 4 checks, 110 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
