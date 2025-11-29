Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F73C94727
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Nov 2025 20:53:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A16110E20F;
	Sat, 29 Nov 2025 19:53:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DgcuBEm0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com
 [74.125.224.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D5C10E20F
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Nov 2025 19:53:06 +0000 (UTC)
Received: by mail-yx1-f44.google.com with SMTP id
 956f58d0204a3-64107188baeso2529756d50.3
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Nov 2025 11:53:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764445985; x=1765050785; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=bq5yUqUCzfdjLEn9031/L9EMDQ3XGvUTCWlQPofKw7E=;
 b=DgcuBEm0cakbtIg9Y0aWSkq7Ks7wlNP9jpjZgK0khPLrhvRTYLO5DdcnOXTD2rzGR3
 d2RU8or8vKCUf4gNCb8nNP+d5UWO0fgcpUe738BNsozX/0g2RMaUma0Rq+92VTh9iHOg
 VJyBpHsXV8PM5RpVRcja4eZ+IcSJwf44OQk90/F17AwQnVQ5PGW//aPMK+fhnVBe9jC2
 X+HZnqxcLauFaAOksClb0PysM72lr/F/iUn6gDQeLK/rai+ith4iiBRW4j36JjlrN9U+
 U7gjOY3ZY/+Tvd6jepRktHCyAF2rrObJCaJWQ6ZJFjshcpjZuYiMQKeANIATGw6GbZIG
 XXjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764445985; x=1765050785;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bq5yUqUCzfdjLEn9031/L9EMDQ3XGvUTCWlQPofKw7E=;
 b=SZPlzQJ10RLv/AFwqpJLi10nxQJJ3LBj3FZplDLersw5xV9GF1cBQoOPB+N/uXVi/P
 WQrErx3tF/VpbLcMCbYSMCEW/PUEnK2N/P46jG+/CUm9VbLVHrtmuA8TzURm/mlTXGv/
 LrGqlLwDtOFe1C+VCANxEIGenf75dRTiLns3DsMJH4fr6EuGUxWyBCPUA9SFGfCjjfkz
 XQaGJNy2o2Efnh/ZteYit1dNdE4Raie/1OvpPuBut1VnrjeXc2ig3qXH8a9vNoP4+9ju
 zav51OF0VG6s1DDUzDzgYGAIi+qvphgZRQFHax3P1/wAJ8DKjdRJUzIVKn/ZBdCTnz2w
 Ocyg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWnlq+m9/rELBxg/o3iLlXHX2u6OJXA+/gE4Y0HwVt0R9g8No/RQ4bkQZdmDCftNxdVoYInhwFEmJk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzSKTzXGNLc0PS+d/CJWxCPSMFDPa5FBaZKM0LmJ7KR34OPglTk
 kmepYz/cjwIaES166+Qm9NZTN/XltcQE1aYwhqbAtqk7xWwKM5BnbFzfY3XnYQ==
X-Gm-Gg: ASbGnctB88oECYjzAlPXLmIHvUZMFZPlTQTIVRCMrIiMR1qhuTe2JOo44+818oDjTqU
 f2OLD8CErLRVYVo722YYmXGu7YiHf8L6+OTBNUC0IMQ41wUPzDBsWD+N7h6WRF+gDUeuTxxcdBI
 sohaar8zM3QcP+S740WdvR+CA2gPLg1hK7v28jlHCMBa20fRYdQVxyGKmsxPNPpH+vWCDp6RpLa
 DI7cG4rEwAwx99Lt1QqLU4uS2WMw99uxzKa104+wM07l2d6X5RCz3b5eg2m/d0FFAwRtVwq/0bl
 U0o5QveR7EU5enP+zwrHHDfXkHWndIuKQZQXTwJ9+QENxaOjDmMlt6cB5/GwVYM7LiuRuKu/HrU
 o8wp1NbVsflyWrzPhvYaX6xcDkjoBpqADbqBJomWEQUP76BJkWucIfB5ztpdEkCnzEf7x/EqGra
 9ilFMJOfk=
X-Google-Smtp-Source: AGHT+IEfj6PVUeeY07J7TJfo/pC02NnxeqqVhA9KwWv0e199pnEc7YIXLK9r3fHsMgALzxDeBf1gGQ==
X-Received: by 2002:a05:690e:1510:b0:63f:a8db:47b4 with SMTP id
 956f58d0204a3-64302a8f75fmr24324286d50.3.1764445985371; 
 Sat, 29 Nov 2025 11:53:05 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:353a:b6ab:d4ee:67b9])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78ad1044f9esm28751737b3.56.2025.11.29.11.53.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Nov 2025 11:53:05 -0800 (PST)
From: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Randy Dunlap <rdunlap@infradead.org>, Ingo Molnar <mingo@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Petr Pavlu <petr.pavlu@suse.com>,
 Daniel Gomez <da.gomez@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Danilo Krummrich <dakr@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-modules@vger.kernel.org, linux-trace-kernel@vger.kernel.org
Cc: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
Subject: [PATCH 0/3] Unload linux/kernel.h
Date: Sat, 29 Nov 2025 14:52:59 -0500
Message-ID: <20251129195304.204082-1-yury.norov@gmail.com>
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

Yury Norov (NVIDIA) (3):
  kernel.h: drop STACK_MAGIC macro
  kernel.h: move VERIFY_OCTAL_PERMISSIONS() to sysfs.h
  tracing: move tracing declarations from kernel.h to a dedicated header

 MAINTAINERS                       |   1 +
 drivers/gpu/drm/i915/i915_utils.h |   2 +
 include/linux/kernel.h            | 209 +-----------------------------
 include/linux/moduleparam.h       |   2 +-
 include/linux/sysfs.h             |  13 ++
 include/linux/tracing.h           | 203 +++++++++++++++++++++++++++++
 6 files changed, 221 insertions(+), 209 deletions(-)
 create mode 100644 include/linux/tracing.h

-- 
2.43.0

