Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F793E85FB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Aug 2021 00:13:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 039A889EBD;
	Tue, 10 Aug 2021 22:13:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0A69389807;
 Tue, 10 Aug 2021 22:13:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01C6BA7E03;
 Tue, 10 Aug 2021 22:13:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juston Li" <juston.li@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Aug 2021 22:13:55 -0000
Message-ID: <162863363597.29684.8158477054411470692@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210810220730.136927-1-juston.li@intel.com>
In-Reply-To: <20210810220730.136927-1-juston.li@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/hdcp=3A_HDCP2=2E2_MST_dock_fixes_=28rev2=29?=
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

Series: drm/i915/hdcp: HDCP2.2 MST dock fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/93570/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/display/intel_hdcp.o
drivers/gpu/drm/i915/display/intel_hdcp.c: In function ‘_intel_hdcp2_enable’:
drivers/gpu/drm/i915/display/intel_hdcp.c:1931:25: error: unused variable ‘data’ [-Werror=unused-variable]
  struct hdcp_port_data *data = &dig_port->hdcp_port_data;
                         ^~~~
cc1: all warnings being treated as errors
scripts/Makefile.build:271: recipe for target 'drivers/gpu/drm/i915/display/intel_hdcp.o' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_hdcp.o] Error 1
scripts/Makefile.build:514: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:514: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:514: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1851: recipe for target 'drivers' failed
make: *** [drivers] Error 2


