Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 382B73DC1DB
	for <lists+intel-gfx@lfdr.de>; Sat, 31 Jul 2021 02:14:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C64BC6F4DB;
	Sat, 31 Jul 2021 00:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0EE846F4D7;
 Sat, 31 Jul 2021 00:14:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BD78CA0118;
 Sat, 31 Jul 2021 00:14:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 31 Jul 2021 00:14:48 -0000
Message-ID: <162769048874.3955.52619694806665565@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210731001019.150373-1-jose.souza@intel.com>
In-Reply-To: <20210731001019.150373-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/display/tgl+=3A_Dis?=
 =?utf-8?q?patch_atomic_commits_instead_of_front_buffer_modifications?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/4] drm/i915/display/tgl+: Dispatch atomic commits instead of front buffer modifications
URL   : https://patchwork.freedesktop.org/series/93252/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
762853c5a7c2 drm/i915/display/tgl+: Dispatch atomic commits instead of front buffer modifications
d75f9be16572 drm/i915/display: Fix sel fetch plane offset calculation
06de84df5401 drm/i915: Nuke ORIGIN_GTT
87fee2709b10 DO_NOT_MERGE: drm/i915/display: Enable PSR2 selective fetch by default
-:14: WARNING:TYPO_SPELLING: 'happend' may be misspelled - perhaps 'happened'?
#14: 
- kms_cursor_legacy: all tests that checks if evasion happend, I have
                                                      ^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 23 lines checked


