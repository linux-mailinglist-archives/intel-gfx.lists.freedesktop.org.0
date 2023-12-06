Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C07807044
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Dec 2023 13:54:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E497F10E712;
	Wed,  6 Dec 2023 12:54:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9596E10E710;
 Wed,  6 Dec 2023 12:54:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E49EAADD6;
 Wed,  6 Dec 2023 12:54:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Wed, 06 Dec 2023 12:54:30 -0000
Message-ID: <170186727057.26425.8794577978843155848@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231206093916.1733863-1-suraj.kandpal@intel.com>
In-Reply-To: <20231206093916.1733863-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/hdcp=3A_Fail_Repeater_authentication_if_Type1_device_no?=
 =?utf-8?q?t_present?=
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

Series: drm/i915/hdcp: Fail Repeater authentication if Type1 device not present
URL   : https://patchwork.freedesktop.org/series/127414/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_hdcp.o
In file included from ./include/drm/ttm/ttm_resource.h:34,
                 from ./include/drm/ttm/ttm_device.h:30,
                 from ./drivers/gpu/drm/i915/i915_drv.h:37,
                 from drivers/gpu/drm/i915/display/intel_hdcp.c:18:
drivers/gpu/drm/i915/display/intel_hdcp.c: In function ‘hdcp2_authenticate_repeater_topology’:
drivers/gpu/drm/i915/display/intel_hdcp.c:1638:16: error: ‘dev_priv’ undeclared (first use in this function); did you mean ‘dev_crit’?
 1638 |   drm_dbg_kms(&dev_priv->drm,
      |                ^~~~~~~~
./include/drm/drm_print.h:410:22: note: in definition of macro ‘drm_dev_dbg’
  410 |  __drm_dev_dbg(NULL, dev, cat, fmt, ##__VA_ARGS__)
      |                      ^~~
drivers/gpu/drm/i915/display/intel_hdcp.c:1638:3: note: in expansion of macro ‘drm_dbg_kms’
 1638 |   drm_dbg_kms(&dev_priv->drm,
      |   ^~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_hdcp.c:1638:16: note: each undeclared identifier is reported only once for each function it appears in
 1638 |   drm_dbg_kms(&dev_priv->drm,
      |                ^~~~~~~~
./include/drm/drm_print.h:410:22: note: in definition of macro ‘drm_dev_dbg’
  410 |  __drm_dev_dbg(NULL, dev, cat, fmt, ##__VA_ARGS__)
      |                      ^~~
drivers/gpu/drm/i915/display/intel_hdcp.c:1638:3: note: in expansion of macro ‘drm_dbg_kms’
 1638 |   drm_dbg_kms(&dev_priv->drm,
      |   ^~~~~~~~~~~
make[6]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/display/intel_hdcp.o] Error 1
make[5]: *** [scripts/Makefile.build:480: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:480: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:480: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:480: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1911: .] Error 2
make: *** [Makefile:234: __sub-make] Error 2
Build failed, no error log produced


