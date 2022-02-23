Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 196CB4C1F6D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 00:15:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 391CD10E1D1;
	Wed, 23 Feb 2022 23:15:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E08C10E1C3;
 Wed, 23 Feb 2022 23:15:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 301C1A0078;
 Wed, 23 Feb 2022 23:15:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Balasubramani Vivekanandan" <balasubramani.vivekanandan@intel.com>
Date: Wed, 23 Feb 2022 23:15:16 -0000
Message-ID: <164565811617.25286.17211829074183674533@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222145206.76118-1-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20220222145206.76118-1-balasubramani.vivekanandan@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Use_the_memcpy=5Ffrom=5Fwc_function_from_drm_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915: Use the memcpy_from_wc function from drm (rev2)
URL   : https://patchwork.freedesktop.org/series/100581/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
00ae3268a143 drm: Relax alignment constraint for destination address
a546db39ed55 drm: Add drm_memcpy_from_wc() variant which accepts destination address
3e5850ca9352 drm/i915: use the memcpy_from_wc call from the drm
e77871620252 drm/i915/guc: use the memcpy_from_wc call from the drm
2f8f8fd84d10 drm/i915/selftests: use the memcpy_from_wc call from the drm
40321dcb094d drm/i915/gt: Avoid direct dereferencing of io memory
-:27: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Matthew Brost <matthew.brost@intel.com'
#27: 
Cc: Matthew Brost <matthew.brost@intel.com

total: 1 errors, 0 warnings, 0 checks, 57 lines checked
a12d4e929d86 drm/i915: Avoid dereferencing io mapped memory


