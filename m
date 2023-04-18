Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEED6E6C1A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 20:32:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC2A10E83E;
	Tue, 18 Apr 2023 18:32:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DDB4510E834;
 Tue, 18 Apr 2023 18:31:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5A6EAADE0;
 Tue, 18 Apr 2023 18:31:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 18 Apr 2023 18:31:58 -0000
Message-ID: <168184271884.17888.7142487572585861733@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Scaler/pfit_stuff?=
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

Series: drm/i915: Scaler/pfit stuff
URL   : https://patchwork.freedesktop.org/series/116661/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  LD [M]  drivers/gpu/drm/i915/i915.o
  CC [M]  drivers/gpu/drm/i915/gvt/handlers.o
drivers/gpu/drm/i915/gvt/handlers.c: In function ‘pf_write’:
drivers/gpu/drm/i915/gvt/handlers.c:1565:38: error: ‘PS_PLANE_SEL_MASK’ undeclared (first use in this function); did you mean ‘PS_PHASE_MASK’?
 1565 |     offset == _PS_1C_CTRL) && (val & PS_PLANE_SEL_MASK) != 0) {
      |                                      ^~~~~~~~~~~~~~~~~
      |                                      PS_PHASE_MASK
drivers/gpu/drm/i915/gvt/handlers.c:1565:38: note: each undeclared identifier is reported only once for each function it appears in
make[5]: *** [scripts/Makefile.build:252: drivers/gpu/drm/i915/gvt/handlers.o] Error 1
make[4]: *** [scripts/Makefile.build:494: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:494: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:494: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:494: drivers] Error 2
make: *** [Makefile:2025: .] Error 2
Build failed, no error log produced


