Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1344B4AE108
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 19:42:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2648A10E9B1;
	Tue,  8 Feb 2022 18:42:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1166810E9B1
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 18:42:24 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id w1so112193plb.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 10:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sJjbNLxKnq2MLHtlOHVGr5cmsCqOoxOU5S439s399rs=;
 b=mP+JA2jOmXnN0QJajfkIUt/2J+YY274d73Tpsayrg0OPhRz09HHxfcvuU3B3mwiqnY
 hzY0Lbl2ZeFudSA8gidRqmKkzOBsskPWAA95Zhxz8AtGg7QzLr/mkOq6pIW/roTuds6T
 RD8W3Hr++o41fiElpLT3ULAynuFkC4d6yBwqaZvLGC9j+mi5ijc3EeXbJLUotnx9rN39
 HARmHpca2ynWd/QIQHy20dDcT4nFTlWV+f9iNzfI+mRidIjU2ZEa1iTlRQilY+y877y9
 i75AiuaSyy8HT1tgf4RtYq2nyiarZfbhBBea1TzXMYz7ONYn80/FFFIyDt9ns+5pFD0M
 /PlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=sJjbNLxKnq2MLHtlOHVGr5cmsCqOoxOU5S439s399rs=;
 b=WvLGiXkpbb5ZStV+mK/ikPf1pD/RmgfZxsxg3wvZ1VfC9ecA/IO9Js6qW/hIArlEUB
 uysylwrmlsf3qLix4r8Gxf5nEw0Z56thX65ikqKDGMN3RHyZMgIE+tEtj5DbuQFRPtfe
 JloPYW8STtBvBpjZFhR5Sp8Uw8Qo/mb3J3fmKkaWjb7auzd1UgBIN4Qo7xFPzK0UXgNH
 7ROCe29V8EGvQACsU2TcNQ4urt6FePzTpBeHo7q2Hjbu93/potYu+Z3DNJbtvjWGRkLA
 oTMjtZ8kxCvHfxCcf+oZ+hYMKhUulxYQFfjLljxxWzuOHZOy5DdU5nWEHCGW/UYxi33v
 WyoQ==
X-Gm-Message-State: AOAM532l7v2AZ139zNdgQ1A7ZJrgo52cPszonMb2pkxC+jXUZUcGLF+7
 ybAVWst6s6GUq4nYaTBfUf4=
X-Google-Smtp-Source: ABdhPJzBjlE3rwJV9oAI24HmL30J4frNkDJPBvRKrr6l9+m4t4xU0yXmOxL4eqLQrp0Uc4O4QKknBA==
X-Received: by 2002:a17:902:e74e:: with SMTP id
 p14mr5639468plf.95.1644345743659; 
 Tue, 08 Feb 2022 10:42:23 -0800 (PST)
Received: from balhae.hsd1.ca.comcast.net
 ([2601:647:4800:c6f0:347f:e607:176:4358])
 by smtp.gmail.com with ESMTPSA id l14sm3517027pjf.1.2022.02.08.10.42.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 10:42:23 -0800 (PST)
From: Namhyung Kim <namhyung@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>,
 Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>,
 Boqun Feng <boqun.feng@gmail.com>
Date: Tue,  8 Feb 2022 10:42:01 -0800
Message-Id: <20220208184208.79303-6-namhyung@kernel.org>
X-Mailer: git-send-email 2.35.0.263.gb82422642f-goog
In-Reply-To: <20220208184208.79303-1-namhyung@kernel.org>
References: <20220208184208.79303-1-namhyung@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/12] drm/i915: Protect lockdep functions with
 #ifdef
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
Cc: intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Radoslaw Burny <rburny@google.com>,
 Byungchul Park <byungchul.park@lge.com>,
 "Paul E. McKenney" <paul.mckenney@linaro.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With upcoming lock tracepoints config, it'd define some of lockdep
functions without enabling CONFIG_LOCKDEP actually.  The existing code
assumes those functions will be removed by the preprocessor but it's
not the case anymore.  Let's protect the code with #ifdef's explicitly.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Signed-off-by: Namhyung Kim <namhyung@kernel.org>
---
 drivers/gpu/drm/i915/intel_wakeref.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
index dfd87d082218..6e4b8d036283 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.c
+++ b/drivers/gpu/drm/i915/intel_wakeref.c
@@ -106,8 +106,11 @@ void __intel_wakeref_init(struct intel_wakeref *wf,
 	wf->wakeref = 0;
 
 	INIT_DELAYED_WORK(&wf->work, __intel_wakeref_put_work);
+
+#ifdef CONFIG_LOCKDEP
 	lockdep_init_map(&wf->work.work.lockdep_map,
 			 "wakeref.work", &key->work, 0);
+#endif
 }
 
 int intel_wakeref_wait_for_idle(struct intel_wakeref *wf)
-- 
2.35.0.263.gb82422642f-goog

