Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0710E9DC15A
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 10:22:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 457E610E4A4;
	Fri, 29 Nov 2024 09:22:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B078D10E4A4;
 Fri, 29 Nov 2024 09:22:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/hdcp=3A_Change_l?=
 =?utf-8?q?og_level_for_HDMI_HDCP_LIC_check_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2024 09:22:12 -0000
Message-ID: <173287213271.231895.17652162037429323385@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241129090530.1814774-1-suraj.kandpal@intel.com>
In-Reply-To: <20241129090530.1814774-1-suraj.kandpal@intel.com>
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

Series: drm/i915/hdcp: Change log level for HDMI HDCP LIC check (rev2)
URL   : https://patchwork.freedesktop.org/series/141867/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_hdmi.o
drivers/gpu/drm/i915/display/intel_hdmi.c: In function ‘intel_hdmi_hdcp_check_link’:
drivers/gpu/drm/i915/display/intel_hdmi.c:1603:31: error: unused variable ‘display’ [-Werror=unused-variable]
 1603 |         struct intel_display *display = to_intel_display(dig_port);
      |                               ^~~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:229: drivers/gpu/drm/i915/display/intel_hdmi.o] Error 1
make[5]: *** [scripts/Makefile.build:478: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:478: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:478: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:478: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1936: .] Error 2
make: *** [Makefile:224: __sub-make] Error 2
Build failed, no error log produced


