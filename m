Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 244A64647BD
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 08:15:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33EAE6E9A1;
	Wed,  1 Dec 2021 07:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D692C6E9A1;
 Wed,  1 Dec 2021 07:15:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CFA77AA3D8;
 Wed,  1 Dec 2021 07:15:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Wed, 01 Dec 2021 07:15:51 -0000
Message-ID: <163834295183.14898.8856204088706346330@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211201070056.2147953-1-anusha.srivatsa@intel.com>
In-Reply-To: <20211201070056.2147953-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBJ?=
 =?utf-8?q?ntroduce_Raptor_Lake_S_=28rev3=29?=
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

Series: Introduce Raptor Lake S (rev3)
URL   : https://patchwork.freedesktop.org/series/96869/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gt/uc/intel_uc.o
drivers/gpu/drm/i915/gt/uc/intel_uc.c: In function ‘uc_expand_default_options’:
drivers/gpu/drm/i915/gt/uc/intel_uc.c:38:31: error: implicit declaration of function ‘IS_RAPTORLAKE_S’; did you mean ‘IS_ALDERLAKE_S’? [-Werror=implicit-function-declaration]
  if (IS_ALDERLAKE_S(i915) && !IS_RAPTORLAKE_S(i915)) {
                               ^~~~~~~~~~~~~~~
                               IS_ALDERLAKE_S
cc1: all warnings being treated as errors
scripts/Makefile.build:287: recipe for target 'drivers/gpu/drm/i915/gt/uc/intel_uc.o' failed
make[4]: *** [drivers/gpu/drm/i915/gt/uc/intel_uc.o] Error 1
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1846: recipe for target 'drivers' failed
make: *** [drivers] Error 2


