Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 388F46A4C3C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 21:28:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0949910E418;
	Mon, 27 Feb 2023 20:28:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CFC7810E1CF;
 Mon, 27 Feb 2023 20:28:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C95CDA00CC;
 Mon, 27 Feb 2023 20:28:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrea Righi" <andrea.righi@canonical.com>
Date: Mon, 27 Feb 2023 20:28:23 -0000
Message-ID: <167752970379.26339.13346777631851713920@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230220171858.131416-1-andrea.righi@canonical.com>
In-Reply-To: <20230220171858.131416-1-andrea.righi@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/sseu=3A_fix_max=5Fsubslices_array-index-out-of-bou?=
 =?utf-8?q?nds_access_=28rev3=29?=
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

Series: drm/i915/sseu: fix max_subslices array-index-out-of-bounds access (rev3)
URL   : https://patchwork.freedesktop.org/series/114199/
State : warning

== Summary ==

Error: dim checkpatch failed
4fd8113016d7 drm/i915/sseu: fix max_subslices array-index-out-of-bounds access
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
  UBSAN: array-index-out-of-bounds in drivers/gpu/drm/i915/gt/intel_sseu.c:65:27

total: 0 errors, 1 warnings, 0 checks, 8 lines checked


