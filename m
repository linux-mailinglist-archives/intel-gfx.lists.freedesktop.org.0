Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 533E0CA8AFB
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 18:52:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9148410EB73;
	Fri,  5 Dec 2025 17:52:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NPbGaafs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com
 [209.85.128.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 175BC10EB76
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Dec 2025 17:52:40 +0000 (UTC)
Received: by mail-yw1-f182.google.com with SMTP id
 00721157ae682-78c2e5745bdso5454337b3.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Dec 2025 09:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764957159; x=1765561959; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=vhdM+o1UMOQThbgKivVtaRHqRyLxM9uhOvolJtsLWEk=;
 b=NPbGaafswqwgEqb1+XdHwoF9EFqQs1meXSnYmOqWBM1j19d2uJ7O30BFrelurWxIwc
 jmSWuJ1Hp/0fohkZDuT04eGRG1tVFK4qbU5vqhF8czTZCCL3XRNodVqlV6WG7tRZND9L
 OLYSqYnX5f1uzsPW0yiQBQZRih6v5xdav4waqzLFyr6+mJqtHm9hHPwuSXCoyTCCqX25
 816bvonXpj77K9jhdnnf39ax69HJtQFothQSAosyWH9niCslI7AaJ4f9PjyEDHcgW297
 XKTMTHP7sn3aFg+TRgddTVSTZs4Hw2Dlwv3XxRYE8vUtVGKG/wZprIzD1IHqQOUue2Gv
 mqkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764957159; x=1765561959;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vhdM+o1UMOQThbgKivVtaRHqRyLxM9uhOvolJtsLWEk=;
 b=aM8bTRjYYFWJUuvMl21cZw3E19WEavKxAdVGEfjZBO5rtIe2g+zRctjHhYZSRFPIOO
 pEFzR7DTa+FH81vcY5kHqAghA43eDHpIizeudhfUvS3rciclwfbOkqLHrPWA1bh9zlNv
 fyJINEJTe5niJ88POr7iT4MT6CeY9ZVTPqor0KtPBKK4IlK5lzQKzvgnSWRzcyXuMBGL
 j+VeATWXw+cHs+EZ4+DAOVqpvhLLc2t9dq5GEjiIXd4xQ4FjPQSaroBu0tXF7Pr0+XgG
 +UEGxviM6bwg/ZEmujbmRhhSANmg95Wr5wDCPDBfnFEDXzBNpHoUA5vK5cLyqOxj43oR
 uKWQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWRhBrCsWzRyL3k8NI+pMqhEfv0S+ws9Ax/VxagdGFE96z/eGE5PgybrpuBO5qFArRYdj02JRYOgYE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywaw5MKtNhYoUeQ2aPKvE3+8ev6GkalpPES6c6oGpWCFdH+YYDM
 W/+GK10qNsGnrjIW+ugksmybDRqctcv7+c4vFVxg47L37SYtzMFN5Cxq
X-Gm-Gg: ASbGncsYxRIde2zYZsqLbctmezTQmA/2TGCmV8oQNDlGnds8FliK/d07gGQeakiy5N/
 KnqwkCcUWWeklxoi4GlOPFMnDHI8BSGMUhVHB5WA2fXcIxeiZvUil/T50OTZbVgHph0ofHdXOWj
 frBLa25ATgN8j2zJEe6ASRc7BxuD0HCvlFzf0eUIQo0Zjp2q3AmlIgIkxcqJ024MU0CJhFVYUS4
 VGoVnntqIsUGRztvH2/qOT8Ww2pqII/KZnJQd7KwohKawrxBGH7EjHunftIkYNtqORSK5MagyxV
 KvtKTVY9sij4gltY8c+DYMdtrp2X6470vHE4qZH86NWgHCeGjFSTJ1VQ0tNL45JgZ6RscwKMADG
 xAgxCieJVu7UR+7vP1xVBgMmDnk6fvL7+0BxLFRrki7sJkCoRG/aX7jSbG+9K+HeYJHfLPl3NuH
 TDvCZyGA==
X-Google-Smtp-Source: AGHT+IGjlOLdXC97l6OEpoHY/ijeCRrrzo2vSMNi38e+iaXy3/qirDbODXQrNjFzrIZENzbiZevXPg==
X-Received: by 2002:a05:690c:4989:b0:787:ca87:595c with SMTP id
 00721157ae682-78c18600ac5mr113255467b3.9.1764957158797; 
 Fri, 05 Dec 2025 09:52:38 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:be2a:7e4d:3bf:3fbc])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78c1b4cffd8sm19112287b3.13.2025.12.05.09.52.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Dec 2025 09:52:38 -0800 (PST)
From: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Christophe Leroy <chleroy@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>, Ingo Molnar <mingo@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 David Laight <david.laight@runbox.com>, Petr Pavlu <petr.pavlu@suse.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Daniel Gomez <da.gomez@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Danilo Krummrich <dakr@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-modules@vger.kernel.org, linux-trace-kernel@vger.kernel.org
Cc: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
Subject: [PATCH v3 0/4] Unload linux/kernel.h
Date: Fri,  5 Dec 2025 12:52:31 -0500
Message-ID: <20251205175237.242022-1-yury.norov@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

kernel.h hosts declarations that can be placed better.

No major changes since v2. For testing details, see v2.

v1: https://lore.kernel.org/all/20251129195304.204082-1-yury.norov@gmail.com/
v2: https://lore.kernel.org/all/20251203162329.280182-1-yury.norov@gmail.com/
v3:
 - rename linux/tracing.h to linux/trace_printk.h (Steven);
 - cleanup headers better (Andy);

Yury Norov (NVIDIA) (4):
  kernel.h: drop STACK_MAGIC macro
  moduleparam: include required headers explicitly
  kernel.h: move VERIFY_OCTAL_PERMISSIONS() to sysfs.h
  tracing: move tracing declarations from kernel.h to a dedicated header

 Documentation/filesystems/sysfs.rst           |   2 +-
 .../drm/i915/gt/selftest_ring_submission.c    |   1 +
 drivers/gpu/drm/i915/i915_selftest.h          |   2 +
 include/linux/kernel.h                        | 210 +-----------------
 include/linux/moduleparam.h                   |   7 +-
 include/linux/sysfs.h                         |  13 ++
 include/linux/trace_printk.h                  | 205 +++++++++++++++++
 7 files changed, 229 insertions(+), 211 deletions(-)
 create mode 100644 include/linux/trace_printk.h

-- 
2.43.0

