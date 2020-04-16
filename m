Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C15D81AD034
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 21:17:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 286136EB4F;
	Thu, 16 Apr 2020 19:17:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F0B6B6EB4E;
 Thu, 16 Apr 2020 19:17:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E91D5A47E0;
 Thu, 16 Apr 2020 19:17:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 16 Apr 2020 19:17:06 -0000
Message-ID: <158706462692.20887.11630776973616010209@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200416184522.21812-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200416184522.21812-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/selftests=3A_Move_g?=
 =?utf-8?q?pu_energy_measurement_into_its_own_little_lib?=
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

Series: series starting with [1/2] drm/i915/selftests: Move gpu energy measurement into its own little lib
URL   : https://patchwork.freedesktop.org/series/76044/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
04da6c2d287e drm/i915/selftests: Move gpu energy measurement into its own little lib
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

-:109: CHECK:LINE_SPACING: Please don't use multiple blank lines
#109: FILE: drivers/gpu/drm/i915/selftests/librapl.c:26:
+
+

total: 0 errors, 1 warnings, 1 checks, 93 lines checked
05b16cdfef39 drm/i915/selftests: Check power consumption at min/max frequencies
-:61: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#61: FILE: drivers/gpu/drm/i915/gt/selftest_rps.c:234:
+	msleep(5);

total: 0 errors, 1 warnings, 0 checks, 157 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
