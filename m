Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EF048BBC5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 01:23:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8287C10E195;
	Wed, 12 Jan 2022 00:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 639CB10E195;
 Wed, 12 Jan 2022 00:23:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5FF5BA9932;
 Wed, 12 Jan 2022 00:23:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Wed, 12 Jan 2022 00:23:20 -0000
Message-ID: <164194700036.21760.5424071952192148184@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220111231109.23244-1-matthew.brost@intel.com>
In-Reply-To: <20220111231109.23244-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Remove_some_hacks_required_for_GuC_62=2E0=2E0?=
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

Series: Remove some hacks required for GuC 62.0.0
URL   : https://patchwork.freedesktop.org/series/98773/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
845f929c1888 drm/i915/selftests: Add a cancel request selftest that triggers a reset
4d510c189a0d drm/i915/guc: Remove hacks for reset and schedule disable G2H being received out of order
-:7: WARNING:TYPO_SPELLING: 'cancelation' may be misspelled - perhaps 'cancellation'?
#7: 
In the i915 there are several hacks in place to make request cancelation
                                                             ^^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 63 lines checked


