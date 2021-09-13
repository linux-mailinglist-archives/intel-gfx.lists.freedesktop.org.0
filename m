Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 871B0409F03
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 23:18:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87FDC88AA0;
	Mon, 13 Sep 2021 21:18:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0173088AA0;
 Mon, 13 Sep 2021 21:18:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE9CAA00E8;
 Mon, 13 Sep 2021 21:18:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Sep 2021 21:18:04 -0000
Message-ID: <163156788495.12461.10434449013783784756@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210913175747.47456-1-sean@poorly.run>
In-Reply-To: <20210913175747.47456-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/hdcp=3A_Pull_HDCP_auth/exchange/check_into?=
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

Series: drm/hdcp: Pull HDCP auth/exchange/check into
URL   : https://patchwork.freedesktop.org/series/94621/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  LD [M]  drivers/gpu/drm/i915/i915.o
  HDRTEST drivers/gpu/drm/i915/display/intel_hdcp.h
In file included from <command-line>:
./drivers/gpu/drm/i915/display/intel_hdcp.h:30:15: error: ‘struct drm_atomic_state’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
        struct drm_atomic_state *state);
               ^~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
drivers/gpu/drm/i915/Makefile:325: recipe for target 'drivers/gpu/drm/i915/display/intel_hdcp.hdrtest' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_hdcp.hdrtest] Error 1
scripts/Makefile.build:514: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:514: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:514: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1851: recipe for target 'drivers' failed
make: *** [drivers] Error 2


