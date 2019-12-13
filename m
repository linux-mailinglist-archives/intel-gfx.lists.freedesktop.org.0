Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0236911E4E1
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 14:48:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D78D89A59;
	Fri, 13 Dec 2019 13:48:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC4A789A59;
 Fri, 13 Dec 2019 13:48:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A20C2A00C7;
 Fri, 13 Dec 2019 13:48:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 13 Dec 2019 13:48:52 -0000
Message-ID: <157624493263.23798.11330292970504145549@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210123050.8799-1-jani.nikula@intel.com>
In-Reply-To: <20191210123050.8799-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/8=5D_drm/print=3A_introduce_new_s?=
 =?utf-8?q?truct_drm=5Fdevice_based_logging_macros_=28rev2=29?=
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

Series: series starting with [1/8] drm/print: introduce new struct drm_device based logging macros (rev2)
URL   : https://patchwork.freedesktop.org/series/70685/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d7ea30d4f862 drm/print: introduce new struct drm_device based logging macros
-:83: CHECK:LINE_SPACING: Please don't use multiple blank lines
#83: FILE: include/drm/drm_print.h:432:
+
+

-:85: ERROR:SPACING: space required after that ',' (ctx:VxO)
#85: FILE: include/drm/drm_print.h:434:
+	__drm_printk((drm), info,, fmt, ##__VA_ARGS__)
 	                        ^

-:88: ERROR:SPACING: space required after that ',' (ctx:VxO)
#88: FILE: include/drm/drm_print.h:437:
+	__drm_printk((drm), notice,, fmt, ##__VA_ARGS__)
 	                          ^

-:91: ERROR:SPACING: space required after that ',' (ctx:VxO)
#91: FILE: include/drm/drm_print.h:440:
+	__drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
 	                        ^

-:94: ERROR:SPACING: space required after that ',' (ctx:VxO)
#94: FILE: include/drm/drm_print.h:443:
+	__drm_printk((drm), err,, "*ERROR* " fmt, ##__VA_ARGS__)
 	                       ^

-:96: CHECK:LINE_SPACING: Please don't use multiple blank lines
#96: FILE: include/drm/drm_print.h:445:
+
+

-:109: CHECK:LINE_SPACING: Please don't use multiple blank lines
#109: FILE: include/drm/drm_print.h:458:
+
+

-:113: CHECK:LINE_SPACING: Please don't use multiple blank lines
#113: FILE: include/drm/drm_print.h:462:
+
+

-:133: CHECK:LINE_SPACING: Please don't use multiple blank lines
#133: FILE: include/drm/drm_print.h:482:
+
+

total: 4 errors, 0 warnings, 5 checks, 79 lines checked
a0f600677870 drm/client: convert to drm device based logging
61971354700a drm/fb-helper: convert to drm device based logging
95ddafc5a263 drm/gem-fb-helper: convert to drm device based logging
3b7b57f4804e drm/mipi-dbi: convert to drm device based logging
524d75ac7bcf drm/atomic: convert to drm device based logging
24153faaf3f2 drm/i915/uc: convert to drm device based logging
7d8822d0bd70 drm/i915/wopcm: convert to drm device based logging

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
