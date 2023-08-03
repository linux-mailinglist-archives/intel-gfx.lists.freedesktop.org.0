Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9F876E71F
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 13:40:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEA7710E60C;
	Thu,  3 Aug 2023 11:40:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B3E1D10E002;
 Thu,  3 Aug 2023 11:40:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ABA2FAADDC;
 Thu,  3 Aug 2023 11:40:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "William Tseng" <william.tseng@intel.com>
Date: Thu, 03 Aug 2023 11:40:29 -0000
Message-ID: <169106282967.5271.8824678671101411910@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230802101541.10045-1-william.tseng@intel.com>
In-Reply-To: <20230802101541.10045-1-william.tseng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/xelpd=3A_Calculate_first=5Fline=5Fbpg=5Foffset_for_DSC_?=
 =?utf-8?q?1=2E1_=28rev2=29?=
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

Series: drm/i915/xelpd: Calculate first_line_bpg_offset for DSC 1.1 (rev2)
URL   : https://patchwork.freedesktop.org/series/121882/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_vdsc.o
drivers/gpu/drm/i915/display/intel_vdsc.c: In function ‘calculate_rc_params’:
drivers/gpu/drm/i915/display/intel_vdsc.c:88:4: error: ‘rc’ undeclared (first use in this function); did you mean ‘rq’?
   88 |    rc->first_line_bpg_offset = 12;
      |    ^~
      |    rq
drivers/gpu/drm/i915/display/intel_vdsc.c:88:4: note: each undeclared identifier is reported only once for each function it appears in
make[6]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/display/intel_vdsc.o] Error 1
make[5]: *** [scripts/Makefile.build:480: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:480: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:480: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:480: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2032: .] Error 2
make: *** [Makefile:234: __sub-make] Error 2
Build failed, no error log produced


