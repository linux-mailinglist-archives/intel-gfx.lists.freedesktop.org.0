Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A060BD5DB2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 21:04:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E49F010E4DC;
	Mon, 13 Oct 2025 19:04:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="l6sQtRmv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com
 [209.85.166.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C210710EAC9
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 17:58:41 +0000 (UTC)
Received: by mail-il1-f178.google.com with SMTP id
 e9e14a558f8ab-42d8b15548eso6139865ab.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Oct 2025 10:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760032721; x=1760637521; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=lGMv5lHdrhywBVTV/PqaJfnG7AITk86FOlf4SxNuZNA=;
 b=l6sQtRmv94EsGBYuU6nf+cuWeMkVmgK18fvYwM2KWjmMSZ5W2KWHpRjs8xQEmQk77R
 byOLFUWOCHHETnfZeqUnU9fRCvfcClEbRph7hHcEUc7L5iMj3FAG0db1XAIKYa1Xf9l4
 Wiui+y9i3ONeSs/NFAPv8cdeZDv9BFN+7BWF6K247hEmBVAid/eD7Ase/OREgOYR3zsO
 urFsCGyvAaNqY2c8OeXsPvV2fI9m4YjEi1DjplMQt8Kk1v/D7MqOBZVHBKhbhmS+PieB
 Yj/hCDDRoP4MMngDy+6jvtWKAXgc5NSWr1ITHMjygPwDX4Jxr4YPYsSDCpjzG54dk9q0
 GA3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760032721; x=1760637521;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=lGMv5lHdrhywBVTV/PqaJfnG7AITk86FOlf4SxNuZNA=;
 b=Z4j4S/sHFz0ROFZ/7Aj8IOH3CXGhf6gcUv4SetYl0Fxa0394u2Hsf9A7aMysPLcgqC
 xmbxgULq3t4pua3vNGcWTgjxwYOUhEagJhA2WQ31Id+wdJfaTcHkwVp0KiYgXXRNHMwR
 pnBfzhaSvBdS38oHRDhv9kVoH1GkCupW/QTwqRgiwt0ddJyemTP+Ga3aajS871dyQeKF
 XacdVmXbkGJi/Fw15G/5/2V2yjzJUhZpQMcEEP9J8AlI70TpyaCVRpMFq7LKNdC5Hb/Q
 73a0lFnnW4XZKg0Sh/6KMJEHzOQIkRJoot5/zDVyMy8QHCnECP++y+JCdkgFH86OlADN
 HkyQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUAlwUSs3Gn7PuYXG7WVvTaqhGaptmsU+4jRHcbd2GUOeSyCoWg2Rf9tdhM7j32n8TOKaN2/6cQ3bs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyytD5fi82rS4YztMmyGvMUy7xBOIKlGIzbOIP+1jBZO5cFWMkV
 u3IEIBHvdwBkeJNRIoNuInxNdXOU7ZKcAuEetqIFlW8geA+5S47JeTl2
X-Gm-Gg: ASbGncuklZBdH+lE5Ws24hRGUUJLXf3pxhtekCHt0H3+4XrXuG4whmSao5jbo0ejzjX
 RWDd7pznCE4ccM08pYSB9ofOEUg/LMGKriMRLnLNw8xPdim9Z/P/vRXjws00SxSt30JOREclfu1
 zt5tlKf/NWPvK5ZPXb/uE0sr0h42KRcXr+5HXH9qosKimzT6QcWH0Iu8h6YOkPQcltf0YfYX8iq
 rm6yEqNzb/0HLrbkWnCnqx98a6N0ymwkuXruCwyGAuzFAXrTppmU1QIQMWwHpkgFQi6nfh0biyV
 5IWSYoW8vQ5/nV5Zy2QDe0mTwW72wxYZcD6E+Dx5pWDRw+o7DMMzPw1qyZh2lesDiKbZXdG2w72
 4DeYeu688lj+LaGIvg3S9aIkBWN8Cqpk3xbciHseMF2g9bHdvyMXpnqiUxniCTmf8LTmuiUEPT3
 /Fcodv3RBpfY0UQV1rIgbKlzm0KFT5sa7f6WqYV3tcxXHtj7By
X-Google-Smtp-Source: AGHT+IH0kP4+vfxD+O9Wz2DP4UBxSThOXmUadGnkvBABGnXzdVOZ2Hbq3wUFuypfAQx9EkxOwcXsnQ==
X-Received: by 2002:a05:6e02:3783:b0:42e:712e:52a0 with SMTP id
 e9e14a558f8ab-42f873540b2mr82406535ab.6.1760032720604; 
 Thu, 09 Oct 2025 10:58:40 -0700 (PDT)
Received: from godzilla.raven-morpho.ts.net
 (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 8926c6da1cb9f-58f7200c4afsm30256173.35.2025.10.09.10.58.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Oct 2025 10:58:40 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: jbaron@akamai.com
Cc: gregkh@linuxfoundation.org, ukaszb@chromium.org, louis.chauvet@bootlin.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, daniel.vetter@ffwll.ch,
 tvrtko.ursulin@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, Jim Cromie <jim.cromie@gmail.com>,
 andrewjballance@gmail.com
Subject: [PATCH v5 00/30] Fix DYNAMIC_DEBUG classmaps for DRM
Date: Thu,  9 Oct 2025 11:58:04 -0600
Message-ID: <20251009175834.1024308-1-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 13 Oct 2025 19:04:10 +0000
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

DYNAMIC_DEBUG classmaps is BROKEN for its 1st user: DRM. Lets Fix it.

The DECLARE_DYNDBG_CLASSMAP macro muddled the distinction between
definition and reference; in use it failed K&R define once, refer many.

Replace it with:
. DYNAMIC_DEBUG_CLASSMAP_DEFINE		for drm.ko
. DYNAMIC_DEBUG_CLASSMAP_USE		for drivers etc

Enhance test-dynamic-debug{,-submod}.ko to recapitulate DRM's 2+ module
boss-workers failure scenario, and to selftest against them.  This allows
dropping the DRM patches, formerly included to prove functionality.

The latest (unversioned) rev:
. I inexplicably fiddled with the patch subject
. dropped DRM as OT for lib/
https://lore.kernel.org/lkml/20250911213823.374806-1-jim.cromie@gmail.com/

v1-4 saw significant review, thanks Louis Chauvet <louis.chauvet@bootlin.com>

v4: https://lore.kernel.org/lkml/20250803035816.603405-1-jim.cromie@gmail.com/
v3: https://lore.kernel.org/lkml/20250402174156.1246171-1-jim.cromie@gmail.com/#t
v2: https://lore.kernel.org/lkml/20250320185238.447458-1-jim.cromie@gmail.com/
v1: https://lore.kernel.org/lkml/20250125064619.8305-1-jim.cromie@gmail.com/
v0: prehistoric versions are linked from v1,v2

Jim Cromie (30):
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
  dyndbg: DECLARE_DYNDBG_CLASSMAP needs stub defn
  dyndbg,module: make proper substructs in _ddebug_info
  dyndbg: hoist classmap-filter-by-modname up to ddebug_add_module
  dyndbg: move mod_name from ddebug_table down to _ddebug_info
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
  dyndbg: resolve "protection" of class'd pr_debugs
  dyndbg: add DYNAMIC_DEBUG_CLASSMAP_USE_(clname,_base)
  docs/dyndbg: add classmap info to howto

CC: Louis Chauvet <louis.chauvet@bootlin.com>
Cc: ukaszb@chromium.org
cc: andrewjballance@gmail.com

 .../admin-guide/dynamic-debug-howto.rst       | 179 ++++-
 MAINTAINERS                                   |   3 +-
 include/asm-generic/vmlinux.lds.h             |   5 +-
 include/linux/dynamic_debug.h                 | 304 ++++++--
 kernel/module/main.c                          |  15 +-
 lib/Kconfig.debug                             |  24 +-
 lib/Makefile                                  |   5 +
 lib/dynamic_debug.c                           | 678 +++++++++++-------
 lib/test_dynamic_debug.c                      | 198 +++--
 lib/test_dynamic_debug_submod.c               |  21 +
 tools/testing/selftests/Makefile              |   1 +
 .../testing/selftests/dynamic_debug/Makefile  |   9 +
 tools/testing/selftests/dynamic_debug/config  |   7 +
 .../dynamic_debug/dyndbg_selftest.sh          | 373 ++++++++++
 14 files changed, 1393 insertions(+), 429 deletions(-)
 create mode 100644 lib/test_dynamic_debug_submod.c
 create mode 100644 tools/testing/selftests/dynamic_debug/Makefile
 create mode 100644 tools/testing/selftests/dynamic_debug/config
 create mode 100755 tools/testing/selftests/dynamic_debug/dyndbg_selftest.sh

-- 
2.51.0

