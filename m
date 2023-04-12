Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D416DFCB8
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 19:28:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A80110E8C3;
	Wed, 12 Apr 2023 17:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 28D2B8908B;
 Wed, 12 Apr 2023 17:28:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DDCE9A47DF;
 Wed, 12 Apr 2023 17:28:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Wed, 12 Apr 2023 17:28:19 -0000
Message-ID: <168132049987.10849.9324238056543647936@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230412113308.812468-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230412113308.812468-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fix_error_propagation_amongst_request_=28rev3=29?=
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

Series: Fix error propagation amongst request (rev3)
URL   : https://patchwork.freedesktop.org/series/114451/
State : warning

== Summary ==

Error: dim checkpatch failed
9e4d4a173f02 drm/i915/gt: Add intel_context_timeline_is_locked helper
5e0b2f6541d9 drm/i915: Create the locked version of the request create
f24c647aa3ba drm/i915: Create the locked version of the request add
-:43: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#43: FILE: drivers/gpu/drm/i915/i915_request.c:1876:
 
+}

total: 0 errors, 0 warnings, 1 checks, 38 lines checked
216285b78cf8 drm/i915: Throttle for ringspace prior to taking the timeline mutex
-:101: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Chris Wilson <chris@chris-wilson.co.uk>' != 'Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>'

total: 0 errors, 1 warnings, 0 checks, 64 lines checked
ebf8f355b629 drm/i915/gt: Make sure that errors are propagated through request chains
-:31: WARNING:BAD_FIXES_TAG: Please use correct Fixes: style 'Fixes: <12 chars of sha1> ("<title line>")' - ie: 'Fixes: cf586021642d ("drm/i915/gt: Pipelined page migration")'
#31: 
Fixes: cf586021642d80 ("drm/i915/gt: Pipelined page migration")

-:32: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Link: with a URL to the report
#32: 
Reported-by: Matthew Auld <matthew.auld@intel.com>
Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>

total: 0 errors, 2 warnings, 0 checks, 99 lines checked


