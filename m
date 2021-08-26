Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC3F3F8A8A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 16:57:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD3F06E86C;
	Thu, 26 Aug 2021 14:57:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A4D06E86C;
 Thu, 26 Aug 2021 14:57:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 523FAA0003;
 Thu, 26 Aug 2021 14:57:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Aug 2021 14:57:15 -0000
Message-ID: <162998983530.15048.12838280482129088690@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210826105214.152713-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210826105214.152713-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Be_more_gentle_when_exiting_non-persistent_cont?=
 =?utf-8?q?exts_=28rev2=29?=
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

Series: drm/i915: Be more gentle when exiting non-persistent contexts (rev2)
URL   : https://patchwork.freedesktop.org/series/93420/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
660ff9cdf697 drm/i915: Be more gentle when exiting non-persistent contexts
-:213: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#213: FILE: drivers/gpu/drm/i915/gt/intel_context_types.h:40:
+	void (*revoke)(struct intel_context *ce, struct i915_request *rq, unsigned int preempt_timeout_ms);

total: 0 errors, 1 warnings, 0 checks, 247 lines checked


