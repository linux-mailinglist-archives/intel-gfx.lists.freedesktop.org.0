Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F6435F75C
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 17:15:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5C1E6E944;
	Wed, 14 Apr 2021 15:15:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C0DC6E935;
 Wed, 14 Apr 2021 15:15:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 232FEA47DF;
 Wed, 14 Apr 2021 15:15:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Wed, 14 Apr 2021 15:15:24 -0000
Message-ID: <161841332414.4306.10621763592403865627@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210414151049.95828-1-hdegoede@redhat.com>
In-Reply-To: <20210414151049.95828-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=3A_Add_privacy-screen_class_and_connector_properties_=28rev2?=
 =?utf-8?q?=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm: Add privacy-screen class and connector properties (rev2)
URL   : https://patchwork.freedesktop.org/series/79259/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND  objtool
  CHK     include/generated/compile.h
  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      init/version.o
  AR      init/built-in.a
  LD      vmlinux.o
  MODPOST vmlinux.symvers
  MODINFO modules.builtin.modinfo
  GEN     modules.builtin
  LD      .tmp_vmlinux.kallsyms1
drivers/gpu/drm/drm_connector.o: In function `drm_connector_unregister':
/home/cidrm/kernel/drivers/gpu/drm/drm_connector.c:573: undefined reference to `drm_privacy_screen_unregister_notifier'
drivers/gpu/drm/drm_connector.o: In function `drm_connector_update_privacy_screen_properties':
/home/cidrm/kernel/drivers/gpu/drm/drm_connector.c:2377: undefined reference to `drm_privacy_screen_get_state'
drivers/gpu/drm/drm_connector.o: In function `drm_connector_register':
/home/cidrm/kernel/drivers/gpu/drm/drm_connector.c:541: undefined reference to `drm_privacy_screen_register_notifier'
drivers/gpu/drm/drm_connector.o: In function `drm_connector_update_privacy_screen':
/home/cidrm/kernel/drivers/gpu/drm/drm_connector.c:2457: undefined reference to `drm_privacy_screen_set_sw_state'
drivers/gpu/drm/drm_connector.o: In function `drm_connector_cleanup':
/home/cidrm/kernel/drivers/gpu/drm/drm_connector.c:457: undefined reference to `drm_privacy_screen_put'
Makefile:1199: recipe for target 'vmlinux' failed
make: *** [vmlinux] Error 1


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
