Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E435A5B5161
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Sep 2022 23:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D04E210E53D;
	Sun, 11 Sep 2022 21:52:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC23710E54E;
 Sun, 11 Sep 2022 21:52:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C69DCA9932;
 Sun, 11 Sep 2022 21:52:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>
Date: Sun, 11 Sep 2022 21:52:34 -0000
Message-ID: <166293315478.10770.8924536353562346401@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220911211443.581481-1-michal.winiarski@intel.com>
In-Reply-To: <20220911211443.581481-1-michal.winiarski@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Use_full_allocated_minor_range_for_DRM_=28rev2=29?=
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

Series: drm: Use full allocated minor range for DRM (rev2)
URL   : https://patchwork.freedesktop.org/series/108206/
State : warning

== Summary ==

Error: dim checkpatch failed
48b297af081c drm: Use XArray instead of IDR for minors
aa7dc1fa2e97 drm: Expand max DRM device number to full MINORBITS
e99972a1a9c6 drm: Introduce skip_legacy_minors modparam
-:49: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#49: FILE: drivers/gpu/drm/drm_drv.c:136:
+		r = xa_alloc(&drm_minors_xa, &minor->index, NULL, DRM_LEGACY_MINOR_LIMIT(type), GFP_KERNEL);

total: 0 errors, 1 warnings, 0 checks, 28 lines checked


