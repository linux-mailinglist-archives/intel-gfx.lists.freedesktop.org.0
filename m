Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96261B3BC0B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 15:11:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D90FE10EBB1;
	Fri, 29 Aug 2025 13:11:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="IM3RiErC";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="xizktk6a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A721010EBB0;
 Fri, 29 Aug 2025 13:11:41 +0000 (UTC)
Date: Fri, 29 Aug 2025 15:11:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1756473099;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OSiq3W4tfX2isH1s96zcSlO7yrSvu7Otu/HHoiZyYHs=;
 b=IM3RiErCHY3LMmg/hARIJqVuNioUyR3NiIjdUlWHsN4qkxxJy83lKdUUl7I9nV5/Uo4Uw1
 Ju+ZErQ1QatpznjtM6tTaw1rf+QxvsNcvPmkcjZXN/JMQgA287uVg8t1Sn6WqaCluO7IDn
 viwH1f+YdxZ5UwBx0D88enQWNrxNCUx94qfgV9lft2SfjEJseHtsjlePnoL3r/plWXkXF7
 Qa/l963TLsakYEfFxHoymAI+P9W9eOEObS49V0yNdiUltqq2W23jxZDxlyzYOrz22/w2iV
 +c3rmdzEQPM5b2HdoMp5XFIhSNUICgPTE3bOehB/dksdwN0C8HLYFHj+c6Vwlw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1756473099;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OSiq3W4tfX2isH1s96zcSlO7yrSvu7Otu/HHoiZyYHs=;
 b=xizktk6asmXPm84S9vq2y5rFBF/enDGLPqIo09JbkK09VP+MqCHhtje6Fk2dT/1MnxPTzC
 +eDUPLNoIiuJDHAg==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/display: Make tracepoints work correctly on
 xe with PREEMPT_RT
Message-ID: <20250829131138.Ya8y4TZb@linutronix.de>
References: <20250828090944.101069-1-dev@lankhorst.se>
 <20250828090944.101069-2-dev@lankhorst.se>
 <7ba38466ab2295059820d3d540b6324769ba5485@intel.com>
 <20250829120810.xsF9vGw7@linutronix.de>
 <a5f1568b-6abf-43b0-ae72-5ae0d4024319@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <a5f1568b-6abf-43b0-ae72-5ae0d4024319@lankhorst.se>
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

On 2025-08-29 14:37:55 [+0200], Maarten Lankhorst wrote:
> Hey,
Hi,
>=20
> That requires adding new macros for 23 tracepoints for something that onl=
y affects preempt-rt,
> and even then only on a specific type of uncommon output (DSI).

Sure. I just wanted to mention this but if it is not worth it, drop it.
I am totally fine with the proposal here btw.

> Aren't we also completely duplicating the functionality of tracepoints th=
en?

Depends. You would have the static branch twice but the trace macro does
a bit more. You wouldn't be the "first" user of this either:

|         if (trace_amdgpu_dm_brightness_enabled()) {
|                 trace_amdgpu_dm_brightness(__builtin_return_address(0),
|                                            user_brightness,
|                                            brightness,
|                                            caps->aux_support,
|                                            power_supply_is_system_supplie=
d() > 0);
|         }

My memory is also that Steven suggested something like this (using the
_enabled macro) among with some macros for trace point generation but I
can't find these emails anymore. So I have no proof and could make
things up=E2=80=A6

> Kind regards,
> ~maarten Lankhorst

Sebastian
