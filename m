Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D319915253E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 04:24:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFE386F440;
	Wed,  5 Feb 2020 03:24:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 49DA16F440;
 Wed,  5 Feb 2020 03:23:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3A799A0134;
 Wed,  5 Feb 2020 03:23:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 05 Feb 2020 03:23:59 -0000
Message-ID: <158087303921.17319.6742293820555441751@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200204151810.8189-1-jani.nikula@intel.com>
In-Reply-To: <20200204151810.8189-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_split_out_display_debugfs_to_a_separate_file?=
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

Series: drm/i915: split out display debugfs to a separate file
URL   : https://patchwork.freedesktop.org/series/72979/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f453df1c7174 drm/i915: split out display debugfs to a separate file
-:25: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#25: 
new file mode 100644

-:166: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 63)
#166: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:137:
+	if (INTEL_GEN(dev_priv) >= 9)
+		/* no global SR status; inspect per-plane WM */;

-:513: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#513: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:484:
+static void intel_dp_mst_info(struct seq_file *m,
+			  struct intel_connector *intel_connector)

-:592: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#592: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:563:
+	seq_printf(m, "\tmodes:\n");

-:674: WARNING:LONG_LINE: line over 100 characters
#674: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:645:
+	seq_printf(m, "\t\thw: fb=%d,%s,%dx%d, visible=%s, src=" DRM_RECT_FP_FMT ", dst=" DRM_RECT_FMT ", rotation=%s\n",

-:775: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#775: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:746:
+	seq_printf(m, "CRTC info\n");

-:776: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#776: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:747:
+	seq_printf(m, "---------\n");

-:780: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#780: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:751:
+	seq_printf(m, "\n");

-:781: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#781: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:752:
+	seq_printf(m, "Connector info\n");

-:782: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#782: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:753:
+	seq_printf(m, "--------------\n");

-:809: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#809: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:780:
+		seq_printf(m, " tracked hardware state:\n");

-:916: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#916: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:887:
+				seq_puts(m,
+				"\tAs PSR is enabled, DRRS is not enabled\n");

-:923: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#923: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:894:
+		seq_printf(m, "\t\tBusy_frontbuffer_bits: 0x%X",
+					drrs->busy_frontbuffer_bits);

-:934: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#934: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:905:
+			seq_printf(m, "DRRS_State: Unknown(%d)\n",
+						drrs->refresh_rate_type);

-:1086: CHECK:BRACES: braces {} should be used on all arms of this statement
#1086: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1057:
+		if (encoder && connector->status == connector_status_connected) {
[...]
+		} else
[...]

-:1092: CHECK:BRACES: Unbalanced braces around else statement
#1092: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1063:
+		} else

-:1136: CHECK:BRACES: braces {} should be used on all arms of this statement
#1136: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1107:
+		if (encoder && connector->status == connector_status_connected) {
[...]
+		} else
[...]

-:1151: CHECK:BRACES: Unbalanced braces around else statement
#1151: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1122:
+		} else

-:1180: CHECK:BRACES: braces {} should be used on all arms of this statement
#1180: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1151:
+		if (encoder && connector->status == connector_status_connected) {
[...]
+		} else
[...]

-:1183: CHECK:BRACES: Unbalanced braces around else statement
#1183: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1154:
+		} else

-:1352: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1352: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1323:
+
+

-:1753: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO | S_IWUSR' are not preferred. Consider using octal permissions '0644'.
#1753: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1724:
+				    S_IRUGO | S_IWUSR,

-:1930: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#1930: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1901:
+		debugfs_create_file("i915_panel_timings", S_IRUGO, root,

-:1932: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#1932: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1903:
+		debugfs_create_file("i915_psr_sink_status", S_IRUGO, root,

-:1939: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#1939: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1910:
+		debugfs_create_file("i915_hdcp_sink_capability", S_IRUGO, root,

-:1946: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#1946: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1917:
+		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,

-:2549: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#2549: FILE: drivers/gpu/drm/i915/i915_debugfs.c:2017:
+		seq_printf(m, "\n");

-:2582: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2582: FILE: drivers/gpu/drm/i915/i915_debugfs.c:2028:
+	seq_printf(m, "Isochronous Priority Control: %s\n",
+			yesno(dev_priv->ipc_enabled));

total: 0 errors, 16 warnings, 12 checks, 3951 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
