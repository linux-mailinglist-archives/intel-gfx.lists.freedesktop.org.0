Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 387AE1C9075
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 16:44:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7A696E9C8;
	Thu,  7 May 2020 14:44:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 438826E9C8;
 Thu,  7 May 2020 14:44:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CB00A47DA;
 Thu,  7 May 2020 14:44:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Thu, 07 May 2020 14:44:49 -0000
Message-ID: <158886268921.2189.273627239167417611@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200507134122.17732-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200507134122.17732-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gen12=3A_Add_aux_table_invalidate_for_all_engines_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/gen12: Add aux table invalidate for all engines (rev2)
URL   : https://patchwork.freedesktop.org/series/77038/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e20a34365bd6 drm/i915/gen12: Add aux table invalidate for all engines
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
References: d248b371f747 ("drm/i915/gen12: Invalidate aux table entries forcibly")

-:15: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d248b371f747 ("drm/i915/gen12: Invalidate aux table entries forcibly")'
#15: 
References: d248b371f747 ("drm/i915/gen12: Invalidate aux table entries forcibly")

-:50: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'aux_inv_reg', this function's name, in a string
#50: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:4562:
+	GEM_BUG_ON("unknown aux_inv_reg\n");

total: 1 errors, 2 warnings, 0 checks, 126 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
