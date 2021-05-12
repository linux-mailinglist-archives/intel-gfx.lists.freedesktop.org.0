Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EEF37B956
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 11:36:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 672BE6E048;
	Wed, 12 May 2021 09:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D03A56E048
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 09:36:18 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id c22so26254268edn.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 02:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9r0HqUvaKk4Y8/sUOorsjyGLBxPCW7i9ptbHZbXDlc8=;
 b=jkr+UASee/FzgNOcExyrn6kO7pT8Q2shw0ut3H5QAxxg8moqFT85HL4uot1b+SkRex
 bxb79WEMbAELzMdpLPv2HRqO/ZcQFyp+Z4tdz/B3QjfXx0u1Iq9vKwnXCy9vzdImI34Y
 Cwrd+KFINJlvwzREWyjCT/X9sJjpic6C1gdUA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9r0HqUvaKk4Y8/sUOorsjyGLBxPCW7i9ptbHZbXDlc8=;
 b=HDLdZIZLkf5ixCLyNQRTWi07kSkQ+2O48ALrdiNNpP1+r/9caOJ1WMu8OxasJdzGyG
 egfGCYTnyTnUQXOVVtAY/oWpwZ0YcVIOhDx0RbZkxCVgrCSnxsG/GCoVmase4AsbsXD3
 6xBs+4pBWeAnccAVYp4uzQb5LVtkC58LM5W3wP+eppP0k6glzKVYkjQkpf09fIroa4yY
 v3xQotX64GFjS8jygIwkfn8UTgprXRVr3CY/C+C1mK/ENC+gX/BoZjJHaZ8gW/j32dTS
 TVMleSMEVUyWzkAzqRfGVzwCo3J+equDMyLwhRHvJ+mi7BmHHzqRpgHHt3pknEBCxmGQ
 6T7g==
X-Gm-Message-State: AOAM5302htn7aS7mOsJPCfEYwAQyF++dl2o8+UHwJgABkn7WxbuFbwjf
 6Ury/JpY6MO3tr6be8/NmSGAZ0GcxNp8Ww==
X-Google-Smtp-Source: ABdhPJyFrjFHkrhpU718MpkQM4Z0YqlItiIfXQUIaADWxBogx+BG3MjUIk+CM1rUTnKxjC9j+fhH1w==
X-Received: by 2002:aa7:db0c:: with SMTP id t12mr41788226eds.72.1620812177578; 
 Wed, 12 May 2021 02:36:17 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b21sm13717048ejg.80.2021.05.12.02.36.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 May 2021 02:36:17 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 12 May 2021 11:36:12 +0200
Message-Id: <20210512093612.3886716-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Revert hardcoded lockdep values.
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
Cc: Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For CI testing, config should be updated now.

Revert "lockdep: Bump MAX_STACK_TRACE_ENTRIES"
This reverts commit 8733308e6c3929b28fdf4bda6b4629f094f6547d.
Revert "lockdep: Up MAX_LOCKDEP_CHAINS"
This reverts commit 39eca5b925699687a7d638a866f74e79f48f73a9.

Once CI approves we can drop the above two commits from the CI fixup
branch.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 kernel/locking/lockdep_internals.h | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/kernel/locking/lockdep_internals.h b/kernel/locking/lockdep_internals.h
index 1ec5dd9282f9..ecb8662e7a4e 100644
--- a/kernel/locking/lockdep_internals.h
+++ b/kernel/locking/lockdep_internals.h
@@ -101,16 +101,14 @@ static const unsigned long LOCKF_USED_IN_IRQ_READ =
 #else
 #define MAX_LOCKDEP_ENTRIES	(1UL << CONFIG_LOCKDEP_BITS)
 
-/* FIXME: This can now be tuned in .config with CONFIG_LOCKDEP_CHAINS_BITS */
-#define MAX_LOCKDEP_CHAINS_BITS	17
+#define MAX_LOCKDEP_CHAINS_BITS	CONFIG_LOCKDEP_CHAINS_BITS
 
 /*
  * Stack-trace: tightly packed array of stack backtrace
  * addresses. Protected by the hash_lock.
  */
-/* FIXME: These can now be tuned by .config too */
-#define MAX_STACK_TRACE_ENTRIES	1048576UL
-#define STACK_TRACE_HASH_SIZE	16384
+#define MAX_STACK_TRACE_ENTRIES	(1UL << CONFIG_LOCKDEP_STACK_TRACE_BITS)
+#define STACK_TRACE_HASH_SIZE	(1 << CONFIG_LOCKDEP_STACK_TRACE_HASH_BITS)
 #endif
 
 /*
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
