Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wB2SIQUYr2nHNgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 19:57:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF3923EFAA
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 19:57:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B7EB10E5AC;
	Mon,  9 Mar 2026 18:57:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iJ6KU0B9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com
 [209.85.160.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C619B10E2C2
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2026 01:50:39 +0000 (UTC)
Received: by mail-oa1-f49.google.com with SMTP id
 586e51a60fabf-40ee9b945d5so2411379fac.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Mar 2026 17:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1772761839; x=1773366639; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=bkFWDNzYpAaNf6nKTX9X2HQLMlJtuGjLEa5TVIf/IA4=;
 b=iJ6KU0B9xpJmpAsnoXuhKqsVAnPEzYjYgty+P0/JMZMxUvgkTOAkk6kUG8Dx+JQaUD
 OthHA9qZiFXu4hXIVQH9U7RLpVHmi/WsCikVQuDwLvJCjgJjiZqMIJZ+Tf8XejENNKrO
 JTKhfcx4bKMclqFOKKiwrG6LdOju3iW9pkv/KwKoQ9lShGZgzU3gep+mG8T6wTCghQqL
 1zrEZ80GgQHIi/GVfccTOUYrQVwm/rUNSjjF5ObN5aoKrrpFsWfsjgj8DbJOpjwKZLsV
 N2zjXz7GpfLcOH865jrEuIJxZsRPYmq9b1w9X57RFzG0hpCGqQOqEKEGlipFTS5l0x9Y
 aToA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772761839; x=1773366639;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bkFWDNzYpAaNf6nKTX9X2HQLMlJtuGjLEa5TVIf/IA4=;
 b=lgO0gRukzPYgoCo6AkktQlemCHHOaPJEVEqpOXPrh3gYG3T37nz2dqf5Udwu0Tf7sF
 ZnJpiedZsh2K0Wg/l8GG+Gtxr1Z78aZm8dD1iIqPhv7urzD4SSWg3p2JwnIvnP6VvZzj
 y9an2dzzaffRINwT89ZJkAoawmiDTR5pO0VZ/bdQn145npSAhm+smDmUu8yRU7XjO9rv
 7xgqC8qMbBOu2+ha/k1CMpdl20gg7+2fN8HxWAvPws/2tc7S9QHNem0+iroqixGl2TG/
 +GC5MzUEljP7mc2xeyFOaiHfLxFFRcVM6tlnUUDeOP4Stf9234xPuDzwHlJjBpqfn7hf
 6hpQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX7oyx6kDeHEnjIjTtuQJ91uCb91AOgMmYGT1szRgMTi/pMy+xCYAqDT9Yj1j1+u+IwsjXit0F42nc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxhGRgQ51J+wSCrdLZnbYwhk6iMlwuZ9qo9CV3l7ktFhTETpmzS
 0eL7A9MfpHZYqYDJh32X2aOgMGXWsawWqdowULo+86XtyJ5qBD7sRsNy
X-Gm-Gg: ATEYQzzQ9c+B5Me6Tj+umZocgYpd3GAq0LVdcc/EGEmLSOPwa8vEXozJPgEQBxr1fCa
 lMhWKyWRFMoAxNMRaCKpdQ57Un13NUfE3LRlR/3euDsu6zA90Y/UZdi/GHj2xXlKT+92pdzPnWl
 c2+cTBFxez9tsy7AxNMo2knrtUv9D1QOqvqT1ot8dy7mNRBVdRXy2zsKdb5aQ3DVjJjSCNBvV72
 wBfnauxNVNy2cEH8adMwbX6Nkjl0DI/hPEWMAhdEJb34agW0287UlZqNBqY3JTIVOXfmYeTgv7w
 DeMdf5xH//4PcB9LleB0lBq0kG7JLAq6VKs3l+IGyK7ft4VbmsZwHK+Rsi3rOWc1jMeoTYEO1Kr
 W8gbMMy1XwSbzIwQooQBOOh5u59LDmORXXfHpBF2UGivRLSBMlRGRpkidSzMi48ed5HmRaeq2C2
 +dNyrTvCeGmPDX6Jo0xwzaRitC+r3Lg5EIJNANzZzwK2JRxgn4
X-Received: by 2002:a05:6820:4487:b0:679:96f:3f11 with SMTP id
 006d021491bc7-67b9bd4c44bmr385436eaf.64.1772761838800; 
 Thu, 05 Mar 2026 17:50:38 -0800 (PST)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 006d021491bc7-67b9cc1a627sm115245eaf.6.2026.03.05.17.50.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2026 17:50:38 -0800 (PST)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Jim Cromie <jim.cromie@gmail.com>
Subject: [RFC PATCH 0/7] queued static-key API reduces IPIs to 134/16154 in
 dyndbg 
Date: Thu,  5 Mar 2026 18:50:03 -0700
Message-ID: <20260306015022.1940986-1-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 09 Mar 2026 18:56:53 +0000
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
X-Rspamd-Queue-Id: 1EF3923EFAA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[89];
	R_MISSING_CHARSET(0.50)[];
	SUBJECT_ENDS_SPACES(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:intel-gvt-dev@lists.freedesktop.org,m:jim.cromie@gmail.com,m:jimcromie@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,drm-misc-fixes-2026-02-26-78-g535e886b182f:email]
X-Rspamd-Action: no action

This patchset formalizes and exposes the internal
architecture-specific arch_jump_label_transform_queue API as a public
kernel interface (static_key_*_queued).

Currently, dynamic_debug toggles static keys individually, which
triggers a machine-wide synchronization (IPI) for every callsite.
This causes $O(N)$ overhead.

By using the new queued API, (which also adds an insert-sort to the
queue) dynamic_debug can now toggle up to 256 sites (x86 queue length)
with a single IPI.

Without the sort, dyndbg saw a far more modest IPI reduction; ~6k/16k.
Ordered descriptors does not insure ordered patch-addresses.
Currently, only x86 has the sort.

I tested on virtme-ng, using:

  echo +p > /proc/dynamic_debug/control
  echo -p > /proc/dynamic_debug/control

With this patch and test, IPIs reduced to 134 from 16154.

Patchset also changes virtio.c to use pr_debug_ratelimited() instead
of pr_debug(), which otherwise flooded my test-setup, obscuring
results.

serial_core.c also gets 1 _ratelimited() change, though I didnt see
them in my setup, and likely missed a few conversion candidates.

Patchset also includes a new query-cmd syntax for dyndbg:

  echo 'module !virtio* +p' > /proc/dynamic_debug/control
  echo -p > /proc/dynamic_debug/control

It further reduced the console output, so might have sufficient
utility for eventual inclusion, despite lacking and/or logic.

The patch hoisting the static_key_apply_queued() out of
ddebug_change() up to ddebug_exec_queries() does nothing in this case,
and would only affect multi-queries:

  echo 'module !virtio* +p ; module serial -p' > /proc/dynamic_debug/control

ISTM such queries are currently rare, but could be leveraged in
classmap-params, to optimize drm.debug=0x1ff, which currently would
get one query-command per bit (12+ IPIs).

DRM is the biggest potential beneficiary of this:

root@drm-misc-fixes-2026-02-26-78-g535e886b182f:/home/jimc/projects/lx/wk-D/b0-dd-drm-all# modprobe i915
[   20.405557] dyndbg:  25 debug prints in module i2c_core
[   20.459373] dyndbg: 340 debug prints in module drm
[   20.459851] ACPI: bus type drm_connector registered
[   20.471366] dyndbg:  89 debug prints in module drm_kms_helper
[   20.482336] dyndbg: 155 debug prints in module drm_display_helper
[   20.496153] dyndbg:   2 debug prints in module ttm
[   21.136619] dyndbg: 1801 debug prints in module i915
root@drm-misc-fixes-2026-02-26-78-g535e886b182f:/home/jimc/projects/lx/wk-D/b0-dd-drm-all# modprobe amdgpu
[   32.907485] dyndbg: 4532 debug prints in module amdgpu


Jim Cromie (7):
  jump_label: expose queueing API for batched static key updates
  virtio: use pr_debug_ratelimited to avoid flooding
  drivers/tty/serial/serial_core: ratelimit uart_wait_until_sent
  dyndbg: use static-key queueing API in dynamic-debug
  dyndbg: hoist static_key_apply_queued up
  lib/dynamic_debug: add negation support to queries
  dyndbg-test: test keyword !value negation

 arch/Kconfig                                  |   3 +
 arch/x86/Kconfig                              |   1 +
 arch/x86/kernel/alternative.c                 |  50 ++++---
 arch/x86/kernel/jump_label.c                  |  13 +-
 drivers/tty/serial/serial_core.c              |   4 +-
 drivers/virtio/virtio_ring.c                  |  12 +-
 include/linux/jump_label.h                    |  24 ++++
 kernel/jump_label.c                           | 125 ++++++++++++++++--
 lib/dynamic_debug.c                           |  88 ++++++++----
 .../dynamic_debug/dyndbg_selftest.sh          |  35 +++++
 10 files changed, 290 insertions(+), 65 deletions(-)

-- 
2.53.0

