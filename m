Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CC74AE265
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 20:43:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B043110E26D;
	Tue,  8 Feb 2022 19:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B965C10E6EC
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 19:43:46 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id
 c5-20020a17090a1d0500b001b904a7046dso1397126pjd.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 11:43:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sJjbNLxKnq2MLHtlOHVGr5cmsCqOoxOU5S439s399rs=;
 b=FCaFfDHqOKbbM+LTbZb/y7018/XOb/NmUt5E6W+YnPsqxKsfSDMkWZB/l0fglbgasl
 clQebc8o6nC+U2ONdp4ydBS2u9mOTBEPiyiovDrjfweqhsE4OQLY6vnmZL4LYFkMGbp4
 zx0Ldh7CVLEFZaAg0EkxPR7V58GWFRcK38oNqFb+kXJM/NXJ/LE0zDxE1iwSW9o0UhKv
 5mYjmoD1oql0ihFJrAlulXXNG0pefXs1oTT0rJ79JaxEBu0b7PhNtIS7oKe589fqyeuz
 iQS0o2k9uDlyVH34IVZDep+1o0VwKMV1j7oN9lcKwBo0mpIgqI5YGnPdeRoXaSL3qxo7
 v8aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=sJjbNLxKnq2MLHtlOHVGr5cmsCqOoxOU5S439s399rs=;
 b=KX4XutPi49P/DmXN19WmSfbcsIcm1hp76LAsVxrEzljcEQQVbSa2U8udi4Ib127OV0
 lQf3qBMrUYBYlZui51fP0HwaK5bmgogkD5i6ckH3iiCt8Si2zZrijlTh5oy1JhGkiBEs
 vHzrkjcoWFg6sVu9Yb6Gd5DNV3x0BZ3qSf5mXlfL1jmgqpTc3LTQoCytmeYsKvv+Y0dq
 VYnKEnEyLrIq4a1dmU2ApnrzOoVLd7zXpTTRbI6V3F5tJxrsDxE5qDQfxxpACVEq6wpU
 NGQGUG5ZjIvpbxjfh2mlt4m8BqBT38bcLMKVYdjGapmGy07xco8tUnFDq+DyMLRWfWMH
 V+Qw==
X-Gm-Message-State: AOAM531KSrca6Mmbq1GkZQKteI0K8+SjqyNA4WLGTKjnuvPZ3poqQmym
 cbznpa+wn+n3usJcKYKw/LQ=
X-Google-Smtp-Source: ABdhPJxcdJhuyvcGJERiilgb8k7uMGXZtduHdT/KN0RWAWmAOJukqmIGccAe7pKgqTm7G6G9cfXrHQ==
X-Received: by 2002:a17:90b:4c06:: with SMTP id
 na6mr3057583pjb.174.1644349426360; 
 Tue, 08 Feb 2022 11:43:46 -0800 (PST)
Received: from balhae.hsd1.ca.comcast.net
 ([2601:647:4800:c6f0:347f:e607:176:4358])
 by smtp.gmail.com with ESMTPSA id w11sm16876839pfu.50.2022.02.08.11.43.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 11:43:45 -0800 (PST)
From: Namhyung Kim <namhyung@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>,
 Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>,
 Boqun Feng <boqun.feng@gmail.com>
Date: Tue,  8 Feb 2022 11:43:17 -0800
Message-Id: <20220208194324.85333-6-namhyung@kernel.org>
X-Mailer: git-send-email 2.35.0.263.gb82422642f-goog
In-Reply-To: <20220208194324.85333-1-namhyung@kernel.org>
References: <20220208194324.85333-1-namhyung@kernel.org>
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
Cc: "Paul E. McKenney" <paulmck@kernel.org>, intel-gfx@lists.freedesktop.org,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Radoslaw Burny <rburny@google.com>, Byungchul Park <byungchul.park@lge.com>,
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

