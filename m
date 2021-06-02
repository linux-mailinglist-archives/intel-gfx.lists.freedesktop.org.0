Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35697399030
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 18:41:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 497F26ED03;
	Wed,  2 Jun 2021 16:41:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3591E6ED01
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Jun 2021 16:41:54 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id q15so2687189pgg.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Jun 2021 09:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K4E4c2AY8cPCAyQt3ju84a/Gf90n4qowR+2b6Dd+NyM=;
 b=IdV51LMgC9uFIxZkwThnQdN/UZXXzsVCSkyWb7+G2mGjJd+jBoE9BKsZZMd2KfTZBH
 gKsjSr5ArBKssCN3m2iY6QOAt7lWFTDi3bUPY/Oy2C1/YQnOo9bHUuDI/esOhDq0X7X+
 sbTHAaClgCaIYps6cJbfw96k4pZgyDWVv9cl1O7JIhNK4sAFH13cfkxUiVDDJzM/O77z
 jFgYaL/SXbm+gfBSDQWyZ06+SWR/tle9CWolX3t1X069qrncWXl9Ufgo5ISXCHG+KePM
 A/Y8xa882ULvHBlO+auVKXosxL7xsr3CrXgY6DBWMguNCW4QPTFhGncYOcIIpBz4vUCZ
 9urw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K4E4c2AY8cPCAyQt3ju84a/Gf90n4qowR+2b6Dd+NyM=;
 b=OG6Q9T5hXHTvtQ2Qf9fCdZJw865Q/MPQbqlfWlrlzGXGkA30Oqy+Lp+WO9zFmM+op6
 cfFt+ZBnfbI8PeDx8krKGYxQa6slLMd2xhi5RDcwLgYgENjD/Y4HKvMm6vA9HRxYGwip
 TFPM22DOp6vafoJqAF3a0fRO6rb/yAPR0uiQeskn2QmRW/9pc0rcSxt38kG5r5NATc1I
 8o0pRmL5LBS4sc6vh3iU+R0w6vscTpgNs01vxwYzb8c/A0/OH5YdLr3kGbvTcjo0l826
 Q9V8NnXktuNERYmeQ8CBlX8QXx2fyvDO7ElNyNtZYtmYMKUhmzjEdZnIiJ0MMq28PQVE
 cMtw==
X-Gm-Message-State: AOAM531159qUa9ch3JSCGnZN7+Ug1ENSAM47r+DNK1thmjJCDQPEtNI3
 JXVAP/E/FnLjtBslO6OGAGLPSQ==
X-Google-Smtp-Source: ABdhPJwfC6TGVJVYbHOCTNFcDoso8R7IvAurL3R7hY/38/dAoVhT5TAtadoMVz8xuxAFzcRtwnStkQ==
X-Received: by 2002:a05:6a00:b46:b029:2d3:3504:88d9 with SMTP id
 p6-20020a056a000b46b02902d3350488d9mr27800353pfo.39.1622652113644; 
 Wed, 02 Jun 2021 09:41:53 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id h6sm75803pjs.15.2021.06.02.09.41.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jun 2021 09:41:53 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  2 Jun 2021 11:41:44 -0500
Message-Id: <20210602164149.391653-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] drm/i915: Get rid of fence error propagation
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fence error propagation is sketchy at best.  Instead of explicitly handling
fences which might have errors set in the code which is aware of errors, we
just kick them down the line and hope that userspace knows what to do when
a wait eventually fails.  This is sketchy at best because most userspace
isn't prepared to handle errors in those places.  To make things worse, it
allows errors to propagate across processes in unpredictable ways.  This is
causing hangs in one client to kill X11.

Unfortunately, there's no quick path from here to there thanks to the fact
that we're now running the command parser asynchronously and relying on
fence errors for when it fails.  This series first gets rid of asynchronous
command parsing and then cleans up from there.  There was never any real
use-case for asynchronous parsing and the platforms that rely heavily on
the command parser are old enough (Gen7) that, when we changed the way the
command parser works, it wasn't really a change anyone was asking for
anyway.

I think we probably want this whole mess back-ported.  I'm happy to take
suggestions on the strategy there because the history there is a bit
annoying and I'm not 100% sure where the Linux release cuts land.  In any
case, I'm happy to make a version of this series per-release if needed for
Greg to back-port.

Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>

Jason Ekstrand (5):
  drm/i915: Revert "drm/i915/gem: Asynchronous cmdparser"
  drm/i915: Remove allow_alloc from i915_gem_object_get_sg*
  drm/i915: Drop error handling from dma_fence_work
  Revert "drm/i915: Propagate errors on awaiting already signaled
    fences"
  Revert "drm/i915: Skip over MI_NOOP when parsing"

 drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |   4 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 227 +-----------------
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  10 +-
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     |  21 +-
 .../i915/gem/selftests/i915_gem_execbuffer.c  |   4 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |   2 +-
 drivers/gpu/drm/i915/i915_cmd_parser.c        | 199 ++++++++-------
 drivers/gpu/drm/i915/i915_drv.h               |   7 +-
 drivers/gpu/drm/i915/i915_request.c           |   8 +-
 drivers/gpu/drm/i915/i915_sw_fence_work.c     |   5 +-
 drivers/gpu/drm/i915/i915_sw_fence_work.h     |   2 +-
 drivers/gpu/drm/i915/i915_vma.c               |   3 +-
 12 files changed, 141 insertions(+), 351 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
