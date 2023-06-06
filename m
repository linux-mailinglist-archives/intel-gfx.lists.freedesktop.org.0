Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 893FD724931
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 18:32:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F5F10E380;
	Tue,  6 Jun 2023 16:32:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C24D910E380;
 Tue,  6 Jun 2023 16:32:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BAB35A00CC;
 Tue,  6 Jun 2023 16:32:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Coelho, Luciano" <luciano.coelho@intel.com>
Date: Tue, 06 Jun 2023 16:32:22 -0000
Message-ID: <168606914273.22676.15654906810575686577@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230606162332.312409-1-luciano.coelho@intel.com>
In-Reply-To: <20230606162332.312409-1-luciano.coelho@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_implement_internal_workqueues?=
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

Series: drm/i915: implement internal workqueues
URL   : https://patchwork.freedesktop.org/series/118947/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_hdcp.o
drivers/gpu/drm/i915/display/intel_hdcp.c: In function ‘intel_hdcp_enable’:
drivers/gpu/drm/i915/display/intel_hdcp.c:2403:22: error: ‘dev_priv’ undeclared (first use in this function); did you mean ‘dev_crit’?
 2403 |   queue_delayed_work(dev_priv->unordered_wq, &hdcp->check_work,
      |                      ^~~~~~~~
      |                      dev_crit
drivers/gpu/drm/i915/display/intel_hdcp.c:2403:22: note: each undeclared identifier is reported only once for each function it appears in
make[5]: *** [scripts/Makefile.build:252: drivers/gpu/drm/i915/display/intel_hdcp.o] Error 1
make[4]: *** [scripts/Makefile.build:494: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:494: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:494: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:494: drivers] Error 2
make: *** [Makefile:2026: .] Error 2
Build failed, no error log produced


