Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0A979AC21
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 01:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB93310E1E1;
	Mon, 11 Sep 2023 23:08:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com
 [IPv6:2607:f8b0:4864:20::d36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7FE010E1C8;
 Mon, 11 Sep 2023 23:08:44 +0000 (UTC)
Received: by mail-io1-xd36.google.com with SMTP id
 ca18e2360f4ac-79545e141c7so123874439f.0; 
 Mon, 11 Sep 2023 16:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1694473724; x=1695078524; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=4QPvsUCuesDbdqzdhDuBEQMp4BSGGOAe53BRO5DTLhU=;
 b=drh3nAo87t6o16cVI0HLlTzpfT0+vUGXs2xJo4ST3x0PEYGsWL6oQG7jM6gzjBymxS
 kB4IlOBV3yg3vSssG6lL0ZF3NkovN5ojrFdZPcRI82Bx4TnygfD4GdW7Bzj7PCguxza6
 sFSQtp2Tf1QDJc2YJ1ik6wpLNtI5S+wNG4Qyawzt3gYfT0kCkETTGsE5lkGkmjP1J7ie
 yFNKtSWOyW+lVzU5qZ7SSofkjTWkz+yoy1f3shIcNMiChzbb/A5bBy02BaGSzm0oWiR+
 pVaAcfEaCKEwTkpYpryY2puXIrcOI3UrhWNhfyWlM6pVYjM+gynu0CcSqWIvsGNhrPT4
 m2PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694473724; x=1695078524;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4QPvsUCuesDbdqzdhDuBEQMp4BSGGOAe53BRO5DTLhU=;
 b=rTAgjMZu1Q6BGlzdjYRNx/gIBDgLyonsr6vKeq6yMTJS2YUdLvwNrIkKvrg+Z8e/xO
 BA0ChJDx64t24s3CaB6GgnTn8op3y158PV1HxdEFvC0xKzbbaWSqJadDUoeNaqhuo4Fw
 RQCtg9UGOVsWGINOq2dTA0oKDBxTWMfbdHCrOIpq8hYLqyhKJNaMufR/NpSJsL20sCtI
 IUtg7NmQ7IjoQan+lh31XIclRiJYOkS5xgfJBv2kOVXguO61BAo0GPVBkxRXa6CvajbV
 dmieBvhecmjmRKywehzCHScTi7bKZYBjKd39bFU217W9aRbckVI3KExagLfloXoWA6XA
 Vupw==
X-Gm-Message-State: AOJu0Yx9lhg0h1Qf6wAv9QT3KFWJ8OHL7NgEdtNQOhyd5k21Oxxn2tY/
 sJ8t7gkdp1/fDurXQEiZveg=
X-Google-Smtp-Source: AGHT+IFUPQoRpMf1cn/UePxbHse2ZRULTpQVv0MhBdRfgttJDXNSROjhhVjOL6jgLU7aV8tcFnbiDQ==
X-Received: by 2002:a5d:9d9a:0:b0:792:7c46:3dec with SMTP id
 ay26-20020a5d9d9a000000b007927c463decmr1259726iob.4.1694473723879; 
 Mon, 11 Sep 2023 16:08:43 -0700 (PDT)
Received: from frodo.. (c-73-78-62-130.hsd1.co.comcast.net. [73.78.62.130])
 by smtp.googlemail.com with ESMTPSA id
 z4-20020a029f04000000b00423240c7296sm2512607jal.69.2023.09.11.16.08.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Sep 2023 16:08:43 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: jbaron@akamai.com, gregkh@linuxfoundation.org, mcgrof@kernel.org,
 daniel.vetter@ffwll.ch
Date: Mon, 11 Sep 2023 17:08:16 -0600
Message-ID: <20230911230838.14461-1-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 00/22] fix DRM_USE_DYNAMIC_DEBUG regression
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
Cc: linux-doc@vger.kernel.org, jani.nikula@intel.com,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, Jim Cromie <jim.cromie@gmail.com>,
 seanpaul@chromium.org, dri-devel@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series fixes the regression in DRM_USE_DYNAMIC_DEBUG=y

blame analysis: (all mine)

1. my early test scripts did a lot of 'modprobe $m $*',
   with dyndbg=.. and debug=.. args
   this obscured the lack of drm.debug -> drivers propagation

2. I broke K&R rule: "define once, refer many times".
   the classmaps DECLAREd by the drivers would run on args in 1

The thinko beneath that was imitating the "static struct" in the
definition of DEFINE_DYNAMIC_DEBUG_METADATA.  Imitating __drm_debug
export instead broke the mental logjam.

So the patchset splits DECLARE_DYNDBG_CLASSMAP duty in 2: with
DYNDBG_CLASSMAP_DEFINE/_USE, where _DEFINE exports the classmap, so
_USE can reference it.  The _USEs are added into a new section:
__dyndbg_class_users.

ddebug_add_module() now also scans class_users at modprobe time,
whence it finds the kernel-param that refs the classmap, and applies
its initialized state to the user/driver.

test-dynamic-debug is extended with a _submod, allowing it to
recapitulate the drm.ddebug -/-> drivers failure scenario.


NOTE: patch-14 does the DECLARE -> _DEFINE/_USE, so it also changes
DRM to follow the API change.  That makes it buildable, but crosses 2
trees, which isn't so great.  But since the feature is marked BROKEN
at this point, perhaps I should have split them.

Finally 3 DRM patches: drops BROKEN on DRM_USE_DYNAMIC_DEBUG, fixes
drm/Makefile, and wires a bunch more drivers to _USE DRM's
drm_debug_classmap.

You can bang at the test module with:
#!/bin/bash

ddcmd () {
    echo $* > /proc/dynamic_debug/control
}
vx () {
    echo $1 > /sys/module/dynamic_debug/parameters/verbose
}
ddgrep () {
    grep $1 /proc/dynamic_debug/control
}
doprints () {
    cat   /sys/module/test_dynamic_debug/parameters/do_prints
}

note () {
    echo NOTE: $* >&2
    $*
}
ddparms () {
    note ls -l /sys/module/test_dynamic_debug/parameters/
    note cat   /sys/module/test_dynamic_debug/parameters/*
}
up () {
    modprobe drm debug=0x03 debug_trace=0x1ff
}
dn () {
    rmmod drm
}
ddtraceon () {
    echo 1 > /sys/kernel/tracing/tracing_on
    echo 1 > /sys/kernel/tracing/events/dyndbg/enable
}

# replay drm.debug dependent-module scenario
submod () {
    echo  MP test_dynamic_debug $1 $2 dyndbg=+pm $3 $4

    # extra complexity to avoid passing param=s since theyre explicit inits
    if [[ -z $1 ]] ; then
	modprobe test_dynamic_debug dyndbg=+pm
    elif [[ -z $2 ]] ; then
	modprobe test_dynamic_debug dyndbg=+pm \
		 p_disjoint_bits=${1:-0}
    elif [[ -z $3 ]] ; then
	# force 3,4 off, undoing DEBUG - declutter
	modprobe test_dynamic_debug dyndbg=+pm \
		 p_disjoint_bits=${1:-0} p_level_num=${2:-0}
		 # p_disjoint_names=${3:-MID,-LOW,-HI} p_level_names=${4:-L3}
    elif [[ -z $4 ]] ; then
	modprobe test_dynamic_debug dyndbg=+pm \
		 p_disjoint_bits=${1:-0} p_level_num=${2:-0}
		 # p_disjoint_names=${3:-MID}
    else
	modprobe test_dynamic_debug dyndbg=+pm \
		 p_disjoint_bits=${1:-0} p_level_num=${2:-0}
		 # p_disjoint_names=${3:-MID} p_level_names=${4:-L3}
    fi
    
    # _submod should pick up kparams
    echo  MP test_dynamic_debug_submod dyndbg=+pmf
    modprobe test_dynamic_debug_submod dyndbg=+pmf
}
unmod () {
    rmmod test_dynamic_debug_submod
    rmmod test_dynamic_debug
}

# The test:
submod_test () {
    unmod
    submod $*
    sleep 1
    
    note "above submod.s D2_* prdbgs should have printed"
    note "because they are enabled here:"
    ddgrep _submod

    echo 1 > /sys/module/test_dynamic_debug/parameters/do_prints

    note submod prdbgs should print here
    echo 1 > /sys/module/test_dynamic_debug_submod/parameters/do_prints
}

# old-code: triggered jump-label init panic, fixed by doing
# dyndbg-init in notifier, after jump-label
submod_force () {
    unmod
    submod $*
    sleep 1
    # force all classes off, then on
    note trigger toggled warning by turning off the supposed enabled prdbgs in submod

    echo 0     > /sys/module/test_dynamic_debug/parameters/disjoint_bits
    echo 0x2ff > /sys/module/test_dynamic_debug/parameters/disjoint_bits

    note now theyre on
    doprints
}

setup () {
    echo dynbg-verbose-0, clearing kmsg, and running submod_test
    vx 0
    dmesg -W &
    submod_test  7 7
    ddcmd class V +mfl
    ddcmd class V2 +tmfsl
    ddcmd class V3 +mfsl
    ddcmd class V4 +mfs
    ddcmd class V5 +mf
    ddcmd class V6 +m
    doprints
}



Jim Cromie (22):
  test-dyndbg: fixup CLASSMAP usage error
  dyndbg: make ddebug_class_param union members same size
  dyndbg: replace classmap list with a vector
  dyndbg: ddebug_apply_class_bitmap - add module arg, select on it
  dyndbg: split param_set_dyndbg_classes to module/wrapper fns
  dyndbg: drop NUM_TYPE_ARRAY
  dyndbg: reduce verbose/debug clutter
  dyndbg: silence debugs with no-change updates
  dyndbg: tighten ddebug_class_name() 1st arg type
  dyndbg: tighten fn-sig of ddebug_apply_class_bitmap
  dyndbg-API: remove DD_CLASS_TYPE_(DISJOINT|LEVEL)_NAMES and code
  dyndbg-API: fix CONFIG_DRM_USE_DYNAMIC_DEBUG regression
  dyndbg: add for_each_boxed_vector
  dyndbg: refactor ddebug_classparam_clamp_input
  dyndbg-API: promote DYNDBG_CLASSMAP_PARAM to API
  dyndbg-test: build it with just CONFIG_DYNAMIC_DEBUG_CORE
  dyndbg-doc: add classmap info to howto
  dyndbg: reserve flag bit _DPRINTK_FLAGS_PREFIX_CACHED
  dyndbg: add _DPRINTK_FLAGS_INCL_LOOKUP
  drm: use correct ccflags-y spelling
  drm-drivers: DRM_CLASSMAP_USE in 2nd batch of drivers, helpers
  drm: restore CONFIG_DRM_USE_DYNAMIC_DEBUG un-BROKEN

 .../admin-guide/dynamic-debug-howto.rst       |  60 ++-
 MAINTAINERS                                   |   2 +-
 drivers/gpu/drm/Kconfig                       |   3 +-
 drivers/gpu/drm/Makefile                      |   3 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c       |  12 +-
 drivers/gpu/drm/display/drm_dp_helper.c       |  12 +-
 drivers/gpu/drm/drm_crtc_helper.c             |  12 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c        |   2 +
 drivers/gpu/drm/drm_print.c                   |  35 +-
 drivers/gpu/drm/gud/gud_drv.c                 |   2 +
 drivers/gpu/drm/i915/i915_params.c            |  12 +-
 drivers/gpu/drm/mgag200/mgag200_drv.c         |   2 +
 drivers/gpu/drm/nouveau/nouveau_drm.c         |  12 +-
 drivers/gpu/drm/qxl/qxl_drv.c                 |   2 +
 drivers/gpu/drm/radeon/radeon_drv.c           |   2 +
 drivers/gpu/drm/udl/udl_main.c                |   2 +
 drivers/gpu/drm/vkms/vkms_drv.c               |   2 +
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.c           |   2 +
 include/asm-generic/vmlinux.lds.h             |   1 +
 include/drm/drm_print.h                       |  12 +-
 include/linux/dynamic_debug.h                 | 122 ++++--
 kernel/module/main.c                          |   3 +
 lib/Kconfig.debug                             |  10 +-
 lib/Makefile                                  |   4 +-
 lib/dynamic_debug.c                           | 407 +++++++++++-------
 lib/test_dynamic_debug.c                      | 137 +++---
 lib/test_dynamic_debug_submod.c               |  17 +
 27 files changed, 546 insertions(+), 346 deletions(-)
 create mode 100644 lib/test_dynamic_debug_submod.c

-- 
2.41.0

