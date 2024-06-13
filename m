Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD269069F6
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 12:28:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA26810EA10;
	Thu, 13 Jun 2024 10:28:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="xSdPVZXQ";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="wdFxaGRh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42C9210EA08;
 Thu, 13 Jun 2024 10:28:26 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1718274504;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=DXWKi7/fI2Bzg+nHWXwkNMX5JC0Mb24GuGI0J34THNk=;
 b=xSdPVZXQC/w3+TMjaFY9LNeL1WnHCWeYR5FC+xx/Jl1066L8n3leu371Cayyd0ttCo4sxE
 z/cspWCM9OJu7EL+EMSsd0GkoFVFc8i+kR0ZwrSIMCKjCZIBpsAaDy+UBWT/Y3ZB9M4jyO
 54awbjAit72147q8HreEkglo8gxxOePrykGx56sPfnLpZqMqxVoFsn1KUhW53280w9XNio
 /7lxEpKA3KjACfm7u8t1anXZbQz4J4joLUkZz4P2eDVYKkJCgGAhS3OZuPE0KGlFKluCGn
 SogAmLx1co6m/1Le02xxd1FGGyyIXJnoLCms1HHXr2l3qTRUiLZJqElGE52UZw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1718274504;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=DXWKi7/fI2Bzg+nHWXwkNMX5JC0Mb24GuGI0J34THNk=;
 b=wdFxaGRhjhxVYLZQfEOKKIckoZCMkkpX11LTQtcWVV08Z33R5bdU16TZq1ZSHAeVA0TSfG
 /0wwd//z9hkogSAA==
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: [PATCH v2 0/8] drm/i915: PREEMPT_RT related fixups.
Date: Thu, 13 Jun 2024 12:20:17 +0200
Message-ID: <20240613102818.4056866-1-bigeasy@linutronix.de>
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

v1=E2=80=A6v2:
  - The tracing disable bits (4/8) have been reworked after Steven pointed =
out
    that something isn't right.
  - The irq_work() bits have been dropped because they are no longer
    needed.

