Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D3391BF26
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 15:06:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EF6710E0EE;
	Fri, 28 Jun 2024 13:06:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="LtIn4lJ0";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="549x4V07";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1198410E0EE;
 Fri, 28 Jun 2024 13:06:08 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1719579966;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=t2PWw8MLm+wjqtXPAY7SGj8voS96oKHhcy6AwpKo7W4=;
 b=LtIn4lJ0ofrurDpY1J6etY31vKU0obLKYgPoqVr0DPHIJrkWArqxIN5MhAaQR/i16gpCDl
 1aJ7PmxamTvSFegKFtT2U7SZ7c5xce1BTB2H2bM5JdeBmuAHoAVpk5lUDvqZ1TYKj3IAJ9
 ugcdZOYeq1VWFmKvL9R0KvzIyrZFV4QbBp2bCXu3hBRy/Mm9SMKk1FfWXYsDqvSV4H4ZC/
 0OTvPTYl5hBPIB2YcV5MVVacp29xWe6X7BkmDuEcTlfhEFB61meu2O22iiG3xEodh6JfDP
 kEnF0mYILMFjf5zxrTiea6RXHaeoQUEXgxCcfEdKO7s50F/IBrXgLqj+o0/BKw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1719579966;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=t2PWw8MLm+wjqtXPAY7SGj8voS96oKHhcy6AwpKo7W4=;
 b=549x4V07YJ2UzC3xmfXJc+i6PNDsk/W951YloPu6z3HnMIZP/YBaPQl1bdYbf8TaL27bVr
 Gwp5wqo9kCIfuGCA==
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: [PATCH v3 0/8] drm/i915: PREEMPT_RT related fixups.
Date: Fri, 28 Jun 2024 14:57:59 +0200
Message-ID: <20240628130601.1772849-1-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
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

Hi,

The following patches are from the PREEMPT_RT queue.  It is mostly about
disabling interrupts/preemption which leads to problems. Unfortunately
DRM_I915_LOW_LEVEL_TRACEPOINTS had to be disabled because it acquires locks
from within trace points. Making the lock a raw_spinlock_t led to higher
latencies during video playback
  https://lore.kernel.org/all/20211006164628.s2mtsdd2jdbfyf7g@linutronix.de/

and I'm not sure if I hit the worse case here.
I tested it on a SandyBridge with built-in i915 by using X, OpenGL and
playing videos without noticing any warnings. However, some code paths
were not entered.
I carry them for some time now and most issues were reported by other
people and they reported that things work for them since.

v2=E2=80=A6v3 https://lore.kernel.org/all/20240613102818.4056866-1-bigeasy@=
linutronix.de/
  - Collected tags.
  - Added comment to 3/8 explaining why RT is excluded from the test.
=20=20
v1=E2=80=A6v2:
  - The tracing disable bits (4/8) have been reworked after Steven pointed =
out
    that something isn't right.
  - The irq_work() bits have been dropped because they are no longer
    needed.


Sebastian
