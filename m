Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D3760505B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 21:25:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F25D10EF24;
	Wed, 19 Oct 2022 19:25:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C441010EF24;
 Wed, 19 Oct 2022 19:25:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB0E9A73C7;
 Wed, 19 Oct 2022 19:25:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 19 Oct 2022 19:25:30 -0000
Message-ID: <166620753076.29709.1833301988828180466@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBE?=
 =?utf-8?q?RM_scheduling_cgroup_controller?=
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

Series: DRM scheduling cgroup controller
URL   : https://patchwork.freedesktop.org/series/109902/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  CC [M]  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c: In function ‘eb_request_add’:
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3077:3: error: too many arguments to function ‘copy_priority’
   copy_priority(&attr, eb, rq);
   ^~~~~~~~~~~~~
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3054:13: note: declared here
 static void copy_priority(struct i915_sched_attr *attr,
             ^~~~~~~~~~~~~
scripts/Makefile.build:250: recipe for target 'drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o' failed
make[5]: *** [drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o] Error 1
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm/i915' failed
make[4]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm' failed
make[3]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu' failed
make[2]: *** [drivers/gpu] Error 2
scripts/Makefile.build:500: recipe for target 'drivers' failed
make[1]: *** [drivers] Error 2
Makefile:1992: recipe for target '.' failed
make: *** [.] Error 2


