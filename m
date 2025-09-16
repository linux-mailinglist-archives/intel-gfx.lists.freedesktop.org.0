Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CECB59AF4
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 16:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71C1510E7F1;
	Tue, 16 Sep 2025 14:55:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HBPfQcad";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
 [209.85.214.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6895410E643
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 04:48:28 +0000 (UTC)
Received: by mail-pl1-f169.google.com with SMTP id
 d9443c01a7336-264417f3a26so15970375ad.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 21:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757998108; x=1758602908; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=E4GnwUXvg4e1SjHBDj7IOnsANmiVf/8g2S4TikZ2k4g=;
 b=HBPfQcad1dX2n8NIIHzzs2Pa+uMcEvLJZiKaZa7mFN0x+MV62uq1/JELXxQFXrVD3A
 zizv20fuzL7KBbVrESDx6+qnn6OJzPz3Xtyj//sUUARGNoZ7cGBkrsV74MO8+dyN5U1G
 zyNbtG1wqREkk/WUl9Se4sNG6wN6HUNYOzpHBQEsZjKuX9KC0AjA2MxSzFDbEgNrR2NW
 uY4f8I7LZSofMWBKJQ9nGGNXhpqD1mVRZUWoEu4f2JZgidSzq8sBul6ku2AFwMotYGhw
 xIaQ7dIiVv6yE4byM2HdgONpRVLVdcuergsAbHri9fYqX6VlEL2G51U0kVabjgC5VMT6
 TYJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757998108; x=1758602908;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=E4GnwUXvg4e1SjHBDj7IOnsANmiVf/8g2S4TikZ2k4g=;
 b=uTbSmgPUj9L/jUN3i04RnZe84snRgfdPwd9q77PSeMDKUcBHBf6iEW6lZZ9gejmP58
 1XRnwOrPZBHzmTe0O/1g55N1hKTTOQe6+RQy7VizQh/5P63NHghtWzEwdzImewwEzilx
 XDzUOKMa1DankRhpfr0Yb8fLgYRivK/Ann4Dre6bmxJpU1eQeuHON1qsS9AJSn9sYKuT
 /aOL2BpyqFMr2Rt/PEt3VpLFtujMgvJDQOh9X7BdsqAcKnCJXKuesDogsbSoURge7+Xm
 eEB4zBuE4K33t1ckSY1OnqkTOLAkuAI7NL/Vv/gVvrM/j4S4+E0ROog0d4ckKbw+0pRp
 8mqg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWVDrJ5Um6e+1lWwYTI8kjPCu5KSYshbK4gY6x6zwYU8p+CdYqDSxqvdAOdvflmJc+F9KlRG/H7AzU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzS4Pno+qzWk0qfE7KXZE7cn9y0dqlmRoFn/3Xxsx7j0WN7UpQX
 TrxH5BefsAPb9Wc/UlThD8Naisw+YGWF3t8kXDoYrpkvERPWaz3Vgzn7
X-Gm-Gg: ASbGnctt/tkn/w/yrb+5zEAyVGu2PWvh83HpmDoTqUVh6Nuvj3wHd0Tm5IKqGRmHAtO
 JbLJyyPnSdw4oVQZduqJvJNiAuFZOILb8qr7EpAMvjAj9uT3YRfaex1Qt7zPmmYz9bh2d+9bHOZ
 myhecoQP/l8ULK5ifvc7UD2+XLsZXCLDOqwmqPjBmZtofEu4TLCbIc7Qxn9IdNC/Nhr80sRvaiN
 t1ohnt4GMwduqvM9fIT1n1v0aTKLCsRTLu/VCeNUoL87TD1Q7YxZ5IPbQew56NYMhvJaFIH/FNw
 X+2+1oZLp2e7Ij3HDiSHtlo6TfpzoDB9FPnYCMMi3ghDvceiwqO+w246twKYE8tlN6ffQjE3EXE
 ZK060xg3CbK/COGvqbMkonjEGnNXR+UVwexODVFs=
X-Google-Smtp-Source: AGHT+IEX+DuJO9pqL+sh6jlOJbx2wPh/MnPUcew7z+h1RxAPsxkAl191gDKewoy1JkBZ+L5tKb1L0g==
X-Received: by 2002:a17:902:ec8e:b0:25d:d848:1cca with SMTP id
 d9443c01a7336-25dd8481fbdmr195481725ad.35.1757998107572; 
 Mon, 15 Sep 2025 21:48:27 -0700 (PDT)
Received: from pengdl-pc.mioffice.cn ([43.224.245.249])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-25ef09c77f8sm104600605ad.15.2025.09.15.21.48.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Sep 2025 21:48:27 -0700 (PDT)
From: pengdonglin <dolinux.peng@gmail.com>
To: tj@kernel.org, tony.luck@intel.com, jani.nikula@linux.intel.com,
 ap420073@gmail.com, jv@jvosburgh.net, freude@linux.ibm.com, bcrl@kvack.org,
 trondmy@kernel.org, longman@redhat.com, kees@kernel.org
Cc: bigeasy@linutronix.de, hdanton@sina.com, paulmck@kernel.org,
 linux-kernel@vger.kernel.org, linux-rt-devel@lists.linux.dev,
 linux-nfs@vger.kernel.org, linux-aio@kvack.org,
 linux-fsdevel@vger.kernel.org, linux-security-module@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-s390@vger.kernel.org, cgroups@vger.kernel.org,
 pengdonglin <dolinux.peng@gmail.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, pengdonglin <pengdonglin@xiaomi.com>
Subject: [PATCH v3 02/14] drm/i915/gt: Remove redundant rcu_read_lock/unlock()
 in spin_lock
Date: Tue, 16 Sep 2025 12:47:23 +0800
Message-Id: <20250916044735.2316171-3-dolinux.peng@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916044735.2316171-1-dolinux.peng@gmail.com>
References: <20250916044735.2316171-1-dolinux.peng@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 16 Sep 2025 14:55:20 +0000
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

From: pengdonglin <pengdonglin@xiaomi.com>

Since commit a8bb74acd8efe ("rcu: Consolidate RCU-sched update-side function definitions")
there is no difference between rcu_read_lock(), rcu_read_lock_bh() and
rcu_read_lock_sched() in terms of RCU read section and the relevant grace
period. That means that spin_lock(), which implies rcu_read_lock_sched(),
also implies rcu_read_lock().

There is no need no explicitly start a RCU read section if one has already
been started implicitly by spin_lock().

Simplify the code and remove the inner rcu_read_lock() invocation.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
Signed-off-by: pengdonglin <pengdonglin@xiaomi.com>
Signed-off-by: pengdonglin <dolinux.peng@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 2a6d79abf25b..bf73166a1337 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -392,14 +392,12 @@ static void reset_rewind(struct intel_engine_cs *engine, bool stalled)
 
 	rq = NULL;
 	spin_lock_irqsave(&engine->sched_engine->lock, flags);
-	rcu_read_lock();
 	list_for_each_entry(pos, &engine->sched_engine->requests, sched.link) {
 		if (!__i915_request_is_complete(pos)) {
 			rq = pos;
 			break;
 		}
 	}
-	rcu_read_unlock();
 
 	/*
 	 * The guilty request will get skipped on a hung engine.
-- 
2.34.1

