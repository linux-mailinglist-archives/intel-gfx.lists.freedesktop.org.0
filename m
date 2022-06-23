Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A551A556FC9
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 03:17:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C1B811362E;
	Thu, 23 Jun 2022 01:17:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D4F2C11362F;
 Thu, 23 Jun 2022 01:17:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CAC58AA0EB;
 Thu, 23 Jun 2022 01:17:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Thu, 23 Jun 2022 01:17:26 -0000
Message-ID: <165594704679.17071.464354359222718050@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220622183836.13825-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20220622183836.13825-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dg2=3A_Add_performance_workaround_18019455067?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dg2: Add performance workaround 18019455067
URL   : https://patchwork.freedesktop.org/series/105512/
State : warning

== Summary ==

Error: dim checkpatch failed
aaa694cf2d6b drm/i915/dg2: Add performance workaround 18019455067
-:33: ERROR:CODE_INDENT: code indent should use tabs where possible
#33: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2110:
+                /* Wa_18019455067:dg2 / BSpec 68331/54402 */$

-:34: ERROR:CODE_INDENT: code indent should use tabs where possible
#34: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2111:
+                wa_write_or(wal, RT_CTRL, NUMBER_OF_STACKIDS_512);$

-:34: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#34: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2111:
+                wa_write_or(wal, RT_CTRL, NUMBER_OF_STACKIDS_512);$

total: 2 errors, 1 warnings, 0 checks, 18 lines checked


