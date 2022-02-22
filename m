Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E44454C0570
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 00:42:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BF8E10E206;
	Tue, 22 Feb 2022 23:42:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 26D4410E158;
 Tue, 22 Feb 2022 23:42:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22059A00A0;
 Tue, 22 Feb 2022 23:42:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Balasubramani Vivekanandan" <balasubramani.vivekanandan@intel.com>
Date: Tue, 22 Feb 2022 23:42:43 -0000
Message-ID: <164557336310.23041.980232691635566126@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222145206.76118-1-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20220222145206.76118-1-balasubramani.vivekanandan@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Use_the_memcpy=5Ffrom=5Fwc_function_from_drm?=
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

Series: drm/i915: Use the memcpy_from_wc function from drm
URL   : https://patchwork.freedesktop.org/series/100581/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8a3424cc9277 drm: Relax alignment constraint for destination address
6acb0786b38d drm: Add drm_memcpy_from_wc() variant which accepts destination address
6745ebf6450b drm/i915: use the memcpy_from_wc call from the drm
422645148875 drm/i915/guc: use the memcpy_from_wc call from the drm
31fa2a37993d drm/i915/selftests: use the memcpy_from_wc call from the drm
fcb2d0374e1b drm/i915/gt: Avoid direct dereferencing of io memory
-:27: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Matthew Brost <matthew.brost@intel.com'
#27: 
Cc: Matthew Brost <matthew.brost@intel.com

total: 1 errors, 0 warnings, 0 checks, 57 lines checked
5166347f7d66 drm/i915: Avoid dereferencing io mapped memory


