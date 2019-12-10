Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8713811908F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 20:27:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27DD46E90F;
	Tue, 10 Dec 2019 19:27:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 10E5D6E90F;
 Tue, 10 Dec 2019 19:27:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0943DA011A;
 Tue, 10 Dec 2019 19:27:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 10 Dec 2019 19:27:20 -0000
Message-ID: <157600604001.23232.1970794747005010806@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210123050.8799-1-jani.nikula@intel.com>
In-Reply-To: <20191210123050.8799-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/8=5D_drm/print=3A_introduce_new_s?=
 =?utf-8?q?truct_drm=5Fdevice_based_logging_macros?=
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

Series: series starting with [1/8] drm/print: introduce new struct drm_device based logging macros
URL   : https://patchwork.freedesktop.org/series/70685/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e36a486e7bb8 drm/print: introduce new struct drm_device based logging macros
-:82: CHECK:LINE_SPACING: Please don't use multiple blank lines
#82: FILE: include/drm/drm_print.h:432:
+
+

-:84: ERROR:SPACING: space required after that ',' (ctx:VxO)
#84: FILE: include/drm/drm_print.h:434:
+	__drm_printk((drm), info,, fmt, ##__VA_ARGS__)
 	                        ^

-:87: ERROR:SPACING: space required after that ',' (ctx:VxO)
#87: FILE: include/drm/drm_print.h:437:
+	__drm_printk((drm), notice,, fmt, ##__VA_ARGS__)
 	                          ^

-:90: ERROR:SPACING: space required after that ',' (ctx:VxO)
#90: FILE: include/drm/drm_print.h:440:
+	__drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
 	                        ^

-:93: ERROR:SPACING: space required after that ',' (ctx:VxO)
#93: FILE: include/drm/drm_print.h:443:
+	__drm_printk((drm), err,, "*ERROR* " fmt, ##__VA_ARGS__)
 	                       ^

-:95: CHECK:LINE_SPACING: Please don't use multiple blank lines
#95: FILE: include/drm/drm_print.h:445:
+
+

-:108: CHECK:LINE_SPACING: Please don't use multiple blank lines
#108: FILE: include/drm/drm_print.h:458:
+
+

-:112: CHECK:LINE_SPACING: Please don't use multiple blank lines
#112: FILE: include/drm/drm_print.h:462:
+
+

-:132: CHECK:LINE_SPACING: Please don't use multiple blank lines
#132: FILE: include/drm/drm_print.h:482:
+
+

total: 4 errors, 0 warnings, 5 checks, 79 lines checked
9e4cda811194 drm/client: convert to drm device based logging
4aa741b7ace7 drm/fb-helper: convert to drm device based logging
43216b61c8c8 drm/gem-fb-helper: convert to drm device based logging
1140ddc7f557 drm/mipi-dbi: convert to drm device based logging
41aad98d0cf3 drm/atomic: convert to drm device based logging
840bfaa93b0a drm/i915/uc: convert to drm device based logging
c6cf4a566a86 drm/i915/wopcm: convert to drm device based logging

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
