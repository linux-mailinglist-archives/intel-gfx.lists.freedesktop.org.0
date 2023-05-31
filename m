Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EFA71806B
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 14:54:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F9910E4BB;
	Wed, 31 May 2023 12:54:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C553610E4BB;
 Wed, 31 May 2023 12:54:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BD531A0BA8;
 Wed, 31 May 2023 12:54:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Wed, 31 May 2023 12:54:31 -0000
Message-ID: <168553767177.17616.9285101091207205108@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230530170104.2192126-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230530170104.2192126-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/selftest/gsc=3A_Ensure_GSC_Proxy_init_completes_be?=
 =?utf-8?q?fore_selftests_=28rev2=29?=
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

Series: drm/i915/selftest/gsc: Ensure GSC Proxy init completes before selftests (rev2)
URL   : https://patchwork.freedesktop.org/series/117713/
State : warning

== Summary ==

Error: dim checkpatch failed
35fe6f671494 drm/i915/selftest/gsc: Ensure GSC Proxy init completes before selftests
-:74: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#74: FILE: drivers/gpu/drm/i915/selftests/i915_selftest.c:162:
+static struct __startup_waiter all_startup_waiters[] = { \

total: 0 errors, 1 warnings, 0 checks, 79 lines checked


