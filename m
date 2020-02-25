Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A01A16C1EC
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 14:17:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFD1F6E8DD;
	Tue, 25 Feb 2020 13:17:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 178166E8DD;
 Tue, 25 Feb 2020 13:17:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 106CDA41FB;
 Tue, 25 Feb 2020 13:17:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 25 Feb 2020 13:17:12 -0000
Message-ID: <158263663206.5721.14231983507991413370@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225111509.21879-1-jani.nikula@intel.com>
In-Reply-To: <20200225111509.21879-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915=3A_split_out_intel?=
 =?utf-8?b?X2RyYW0uW2NoXSBmcm9tIGk5MTVfZHJ2LmM=?=
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

Series: series starting with [1/3] drm/i915: split out intel_dram.[ch] from i915_drv.c
URL   : https://patchwork.freedesktop.org/series/73894/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a633c5989ab0 drm/i915: split out intel_dram.[ch] from i915_drv.c
-:552: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#552: 
new file mode 100644

-:565: ERROR:BRACKET_SPACE: space prohibited before open square bracket '['
#565: FILE: drivers/gpu/drm/i915/intel_dram.c:9:
+#define DRAM_TYPE_STR(type) [INTEL_DRAM_ ## type] = #type

total: 1 errors, 1 warnings, 0 checks, 1025 lines checked
744ac95da66a drm/i915/dram: use intel_uncore_*() functions for register access
9c8d12fe133b drm/i915/drv: use intel_uncore_write() for register access

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
