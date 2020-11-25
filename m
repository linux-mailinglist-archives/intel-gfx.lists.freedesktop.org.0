Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 580112C44EA
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 17:25:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8708F6E9C6;
	Wed, 25 Nov 2020 16:25:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93B586E9C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 16:25:39 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id x22so2503455wmc.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 08:25:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uUxbRrS9MFqXGOvk/ieUK3bhzkS/VSko486/NfxYD1w=;
 b=gwqmqFySnTT8wFc9pyNO08a05EtFio6skO3VOfMb8mdBj6W1qBPu6+VRr2k1XCh6kl
 Q/nUJzrA1+98qaJuJmEx9Yj8Xp0Qz4KncxaIhz/aDBFojKu7G5YnfJs/2YEnSNGH2lKf
 sVR6MQzcank3A6sMNUPe9nWSpOoUBv2+cAY+I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uUxbRrS9MFqXGOvk/ieUK3bhzkS/VSko486/NfxYD1w=;
 b=ELkkCr2smp5iOR1NDh1GoE/L3hN5RZttzzKqzc9nNbFi4Pr2QG5SpGNGK7LsqvQHz0
 V94TDIICpLYglWZi7kZIH/MQP3F2xnLf/9sV4zRUZTCVlS2iTfOblqoKqk2o4bzu0Juf
 6b+AqgbJaIkmePPqWy9zkhCgSQjHd6KOAk8JIVxsnFS8ZEX9YKz0UtzhwgWZrW6qc0re
 TlNNPnYaXtH6yC6lvlTvbav6m5/sA6LR+pQh70mhb2pngGYDd7lFrH52XL1kX5v4c3ZX
 RrksNXUlYbkdCXz0UAIcME4VcUW81b2aZT/2WvZjVk9mzAYIefDsdmcm7I7UeQRTUXMW
 fhVA==
X-Gm-Message-State: AOAM531LX1Ew0eQdO8UW2NlEgO+oWFxkw69PMsU8AaFZLgZ2bNo8RrTt
 xEY5ZIeQSvlEjxG30GHilSnThg==
X-Google-Smtp-Source: ABdhPJwU55boKQUargCwj7uABbDFGkLI6m5Shju4RIwPqnobg7pzset1RPYMkQXjIR0a2azRJHembg==
X-Received: by 2002:a1c:1b06:: with SMTP id b6mr3649998wmb.101.1606321538289; 
 Wed, 25 Nov 2020 08:25:38 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a21sm4855187wmb.38.2020.11.25.08.25.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Nov 2020 08:25:37 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 25 Nov 2020 17:25:28 +0100
Message-Id: <20201125162532.1299794-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/3] mmu_notifier vs fs_reclaim lockdep
 annotations
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-mm@kvack.org, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

Just resending with the polish applied, no functional changes at all.

Previous versions.

v3: https://lore.kernel.org/dri-devel/20201120095445.1195585-1-daniel.vetter@ffwll.ch/
v2: https://lore.kernel.org/dri-devel/20200610194101.1668038-1-daniel.vetter@ffwll.ch/

Changes since v3:
- more acks/r-b
- typos in the kerneldoc fixed

Changes since v2:
- Now hopefully the bug that bombed xfs fixed.
- With unit-tests (that's the part I really wanted and never got to)
- might_alloc() helper thrown in for good.

I think if we have an ack/review from fs-devel this should be good to
land. Last version that landed in -mm (v2) broke xfs pretty badly.

Unfortuantely I don't have a working email from Qian anymore, who reported
the xfs issue. Maybe Dave Chinner instead?

Cheers, Daniel

Daniel Vetter (3):
  mm: Track mmu notifiers in fs_reclaim_acquire/release
  mm: Extract might_alloc() debug check
  locking/selftests: Add testcases for fs_reclaim

 include/linux/sched/mm.h | 16 ++++++++++++++
 lib/locking-selftest.c   | 47 ++++++++++++++++++++++++++++++++++++++++
 mm/mmu_notifier.c        |  7 ------
 mm/page_alloc.c          | 31 ++++++++++++++++----------
 mm/slab.h                |  5 +----
 mm/slob.c                |  6 ++---
 6 files changed, 86 insertions(+), 26 deletions(-)

-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
