Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6A+wDExzymlQ9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A0035B64C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69EDE10E6DF;
	Mon, 30 Mar 2026 12:57:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FveDn4J6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com
 [209.85.160.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93C0910EAF8
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:54:30 +0000 (UTC)
Received: by mail-oa1-f48.google.com with SMTP id
 586e51a60fabf-40f0e14b9f9so935219fac.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551270; x=1775156070; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=20j/tkgEdgd9CCuui6wAsvaKhO91qX8t/1cdIGjfW6Q=;
 b=FveDn4J6vUpR213Hd8Bu4Cgr8uTtmA1h6ZSKpOG/oILgsxSZc6DnJGb7GBAC0KAsEJ
 JfYcNTZDL/ae+0l+UuHz3VC854fhQ1jeBe2mMXIweXw6SPQc+VFhGUgoQ8p8ErJhbkNQ
 07OiWDcz53eNQ7Q49Xd0FybuQbiZYGLc2fLnZHou5/f6Wf4BSWZeQ2yieKOrZQbjiszy
 x9KmMEKly6IkEI0I01wEZYZM38ICCAoTT5VeLzwU+2lNw9ZGIr/p9TAKXtosqb0eXRTV
 YsXlYkkJsBOBgdipsZneWiqNF4nB691+EDPvQTut6ZyUMFhQdOAiQiS1WhkuRGkqEuSv
 oTtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551270; x=1775156070;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=20j/tkgEdgd9CCuui6wAsvaKhO91qX8t/1cdIGjfW6Q=;
 b=HHUXF+d40lGf2qCiJd1CIaHzg7BOfeM3KxVbk5r6iA9XR4VIWPn4sQ1LZkAMoh8XQT
 QFIasD9jXTQcPUUOea/LcPS1tVFapUwEoX0Y85uJ9+Sv51va+UGbT5sm/v7UxsnfXydu
 x8fyF3FHOpDPLPE2HONLDEYPNyaiyC2sw7K6qNYMT+SzWhagSd1U47zb2zaDcNwQHuW4
 PApEQWh5/zBgpTJM7V/fPhDBBQrD5gCRq2MiaMxrTOxQSCMHUujcixRmJ2aog4fVLTcs
 2xk1uCubxjb8Ms1j1En8OZ3p1cEVa24G6CgRqxlUP3BdfpDKA/I9CVJ54Wq4GJTkm7AK
 ey9A==
X-Forwarded-Encrypted: i=1;
 AJvYcCU35Sjaa+Bs94KNedrpcxoPiSvD6xpMEg+scZiJ3132TsmwZ/gefMJhEmDl6fQUgYwmgE2YANXqZ3w=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwQyZzZ6Zj3EAJcXQacXMf07lLdkRf402e+W3YQ7PDW9JpS0lEQ
 mvXjx1LQzEMVXJqQHU9a2sX0oJG796IfKQxYztN+TxwHdKFhm6d2kVpc
X-Gm-Gg: ATEYQzx+n4sWKzbjFmuSkuRcTn+H4fE32ZqS5onC/WJj0d1GJjLSIPtCQEaanxoD0Yb
 9ATcNZTUbU0Z/+NBKqlBHMAgNsBWCHFobPpeC+JHyslm6NfFErOPtIxnj9qattE/1xKGKelsQFI
 zztYXIa9R7KAbocLk5TuifrVLxPQDCiZs2/FXXKLv0cFGOApiTU4xegNECJNhYBVqB0EMtVNQhI
 2akKHIHeakMXwEgMnkqMjRZbNQKEDL/gtCYEIIwa/mIs42VgQ3Fli0AiLJ0PQahkJpyWUnCSWlw
 DTqslB19W37YqPc9hOP52uDmn22GPW704prCl+QpGimZJQDQcE1o1x2CKkZh3+wnh2UxkBbkuwm
 eLpKiKLIrFBwyfMDcRG/isDiot3YUkcnyJgUtZ0Z3NHkH0Hz7o5WYzqfBAwy5NXNwH8x3vZuTd3
 nBY6c8EAoxshBvc1O/tmrhSleyM3OnyZAed23hiB3ONXE2eTIDd2//4p2DNOc=
X-Received: by 2002:a05:6870:194b:b0:409:9a0b:b733 with SMTP id
 586e51a60fabf-41ca6d6a50emr4660671fac.10.1774551269559; 
 Thu, 26 Mar 2026 11:54:29 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.54.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:54:29 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, airlied@gmail.com, simona@ffwll.ch,
 jbaron@akamai.com, gregkh@linuxfoundation.org
Cc: jim.cromie@gmail.com, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH v12 00/69] Fix CONFIG_DRM_USE_DYNAMIC_DEBUG=y
Date: Thu, 26 Mar 2026 12:53:04 -0600
Message-ID: <20260326185413.1205870-1-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 30 Mar 2026 12:57:43 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[90];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.982];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,avm.de:email]
X-Rspamd-Queue-Id: 92A0035B64C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


-v11 is here
https://lore.kernel.org/lkml/20260313132103.2529746-1-jim.cromie@gmail.com/

-v12 has a few changes:

vmlinux.lds.h is refactored:
- BOUNDED_SECTION* macros are pulled into bounded_section.lds.h
- dynamic-debug sections are factored into dyndbg.lds.h,
  which reuses bounded_section.lds.h
- scripts/module.lds.S gets proper output sections for dyndbg
  this fixes lost sections seen in some setups
- based upon codetag.lds.h

DYNAMIC_DEBUG_CLASSMAP_USE*() is refined:
- previous had static class-map decl and unique names
- now have extern'd <classname>-<usermod> names, matching 1-per-module model
- now with compile-time offset check
- _USE/_USE_ together allows more squashing

better modprobe-time classmap definition error detection:
- test descriptors for unknown class-names
- more complete class-map/user conflict detection

rebased onto -rc5
- applies cleanly to drm-misc-fixes
- passes a few more tests on DRM-CI

include patch from Philipp Hahn <phahn-oss@avm.de>

clean subsystem chunks
- dyndbg 1st
- drm - fixes for DRM-CI, adapt,use new API, un-BROKEN
- drm/accel - least mature, I have no HW

Jim Cromie (68):
  dyndbg: fix NULL ptr on i386 due to section mis-alignment
  vmlinux.lds.h: move BOUNDED_SECTION_* macros to reuse later
  dyndbg.lds.S: fix lost dyndbg sections in modules
  vmlinux.lds.h: drop unused HEADERED_SECTION* macros
  dyndbg: factor ddebug_match_desc out from ddebug_change
  dyndbg: add stub macro for DECLARE_DYNDBG_CLASSMAP
  docs/dyndbg: update examples \012 to \n
  docs/dyndbg: explain flags parse 1st
  test-dyndbg: fixup CLASSMAP usage error
  dyndbg: reword "class unknown," to "class:_UNKNOWN_"
  dyndbg: make ddebug_class_param union members same size
  dyndbg: drop NUM_TYPE_ARRAY
  dyndbg: tweak pr_fmt to avoid expansion conflicts
  dyndbg: reduce verbose/debug clutter
  dyndbg: refactor param_set_dyndbg_classes and below
  dyndbg: tighten fn-sig of ddebug_apply_class_bitmap
  dyndbg: replace classmap list with a vector
  dyndbg: macrofy a 2-index for-loop pattern
  dyndbg,module: make proper substructs in _ddebug_info
  dyndbg: move mod_name down from struct ddebug_table to _ddebug_info
  dyndbg: hoist classmap-filter-by-modname up to ddebug_add_module
  dyndbg-API: remove DD_CLASS_TYPE_(DISJOINT|LEVEL)_NAMES and code
  selftests-dyndbg: add a dynamic_debug run_tests target
  dyndbg: change __dynamic_func_call_cls* macros into expressions
  dyndbg-API: replace DECLARE_DYNDBG_CLASSMAP
  dyndbg: detect class_id reservation conflicts
  dyndbg: check DYNAMIC_DEBUG_CLASSMAP_DEFINE args at compile-time
  dyndbg-test: change do_prints testpoint to accept a loopct
  dyndbg-API: promote DYNAMIC_DEBUG_CLASSMAP_PARAM to API
  dyndbg: treat comma as a token separator
  dyndbg: split multi-query strings with %
  selftests-dyndbg: add test_mod_submod
  dyndbg: resolve "protection" of class'd pr_debug
  dyndbg: harden classmap and descriptor validation
  docs/dyndbg: add classmap info to howto
  dyndbg-test: verify DYNAMIC_DEBUG_CLASSMAP_USE_() compile-time CHECK
  drm: use correct ccflags-y spelling
  drm_buddy: fix power-of-2 rounding errs
  drm_print: fix drm_printer dynamic debug bypass
  drm_vblank: avoid bit-test when DRM_USE_DYNAMIC_DEBUG=y
  drm-dyndbg: adapt drm core to use dyndbg classmaps-v2
  drm-dyndbg: adapt DRM to invoke DYNAMIC_DEBUG_CLASSMAP_PARAM
  drm_print: modernize an archaic comment
  drm-dyndbg: DRM_CLASSMAP_USE in amdgpu driver
  drm-dyndbg: DRM_CLASSMAP_USE in i915 driver
  drm-dyndbg: DRM_CLASSMAP_USE in drm_crtc_helper
  drm-dyndbg: DRM_CLASSMAP_USE in drm_dp_helper
  drm-dyndbg: DRM_CLASSMAP_USE in nouveau
  drm-dyndbg: add DRM_CLASSMAP_USE to Xe driver
  drm-dyndbg: add DRM_CLASSMAP_USE to virtio_gpu
  drm-dyndbg: add DRM_CLASSMAP_USE to simpledrm
  drm-dyndbg: add DRM_CLASSMAP_USE to bochs
  drm-dyndbg: add DRM_CLASSMAP_USE to etnaviv
  drm-dyndbg: add DRM_CLASSMAP_USE to gma500 driver
  drm-dyndbg: add DRM_CLASSMAP_USE to radeon
  drm-dyndbg: add DRM_CLASSMAP_USE to vmwgfx driver
  drm-dyndbg: add DRM_CLASSMAP_USE to vkms driver
  drm-dyndbg: add DRM_CLASSMAP_USE to udl driver
  drm-dyndbg: add DRM_CLASSMAP_USE to mgag200 driver
  drm-dyndbg: add DRM_CLASSMAP_USE to the gud driver
  drm-dyndbg: add DRM_CLASSMAP_USE to the qxl driver
  drm-dyndbg: add DRM_CLASSMAP_USE to the drm_gem_shmem_helper driver
  drm-dyndbg: restore CONFIG_DRM_USE_DYNAMIC_DEBUG un-BROKEN
  drm-dyndbg: set CONFIG_DRM_USE_DYNAMIC_DEBUG=y
  accel: add -DDYNAMIC_DEBUG_MODULE to subdir-ccflags
  accel/ivpu: implement IVPU_DBG_* as a dyndbg classmap
  accel/ethosu: call DRM_CLASSMAP_USE
  accel/rocket: call DRM_CLASSMAP_USE

Philipp Hahn (1):
  dyndbg: Ignore additional arguments from pr_fmt

 .../admin-guide/dynamic-debug-howto.rst       | 184 +++-
 MAINTAINERS                                   |   3 +-
 drivers/accel/Makefile                        |   7 +-
 drivers/accel/ethosu/ethosu_drv.c             |   3 +
 drivers/accel/ivpu/ivpu_drv.c                 |  27 +-
 drivers/accel/ivpu/ivpu_drv.h                 |  45 +-
 drivers/accel/rocket/rocket_gem.c             |   2 +
 drivers/gpu/drm/Kconfig.debug                 |   3 +-
 drivers/gpu/drm/Makefile                      |   3 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c       |  12 +-
 drivers/gpu/drm/display/drm_dp_helper.c       |  12 +-
 drivers/gpu/drm/drm_buddy.c                   |   4 +-
 drivers/gpu/drm/drm_crtc_helper.c             |  12 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c        |   1 +
 drivers/gpu/drm/drm_print.c                   |  39 +-
 drivers/gpu/drm/drm_vblank.c                  |   9 +-
 drivers/gpu/drm/etnaviv/etnaviv_drv.c         |   2 +
 drivers/gpu/drm/gma500/psb_drv.c              |   2 +
 drivers/gpu/drm/gud/gud_drv.c                 |   2 +
 drivers/gpu/drm/i915/i915_params.c            |  12 +-
 drivers/gpu/drm/mgag200/mgag200_drv.c         |   2 +
 drivers/gpu/drm/nouveau/nouveau_drm.c         |  12 +-
 drivers/gpu/drm/qxl/qxl_drv.c                 |   2 +
 drivers/gpu/drm/radeon/radeon_drv.c           |   2 +
 drivers/gpu/drm/sysfb/simpledrm.c             |   2 +
 drivers/gpu/drm/tiny/bochs.c                  |   2 +
 drivers/gpu/drm/udl/udl_main.c                |   2 +
 drivers/gpu/drm/virtio/virtgpu_drv.c          |   2 +
 drivers/gpu/drm/vkms/vkms_drv.c               |   2 +
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.c           |   2 +
 drivers/gpu/drm/xe/xe_drm_client.c            |   2 +
 include/asm-generic/bounded_sections.lds.h    |  21 +
 include/asm-generic/dyndbg.lds.h              |  26 +
 include/asm-generic/vmlinux.lds.h             |  48 +-
 include/drm/drm_print.h                       |  22 +-
 include/linux/dynamic_debug.h                 | 309 +++++--
 kernel/module/main.c                          |  15 +-
 lib/Kconfig.debug                             |  24 +-
 lib/Makefile                                  |   5 +
 lib/dynamic_debug.c                           | 831 ++++++++++++------
 lib/test_dynamic_debug.c                      | 211 +++--
 lib/test_dynamic_debug_submod.c               |  21 +
 scripts/module.lds.S                          |   2 +
 tools/testing/selftests/Makefile              |   1 +
 .../testing/selftests/dynamic_debug/Makefile  |   9 +
 tools/testing/selftests/dynamic_debug/config  |   7 +
 .../dynamic_debug/dyndbg_selftest.sh          | 373 ++++++++
 47 files changed, 1747 insertions(+), 594 deletions(-)
 create mode 100644 include/asm-generic/bounded_sections.lds.h
 create mode 100644 include/asm-generic/dyndbg.lds.h
 create mode 100644 lib/test_dynamic_debug_submod.c
 create mode 100644 tools/testing/selftests/dynamic_debug/Makefile
 create mode 100644 tools/testing/selftests/dynamic_debug/config
 create mode 100755 tools/testing/selftests/dynamic_debug/dyndbg_selftest.sh

-- 
2.53.0

