Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 013371561CC
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 01:08:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6DF16E140;
	Sat,  8 Feb 2020 00:08:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 03F3D6E136;
 Sat,  8 Feb 2020 00:08:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EEDFDA00C7;
 Sat,  8 Feb 2020 00:08:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 08 Feb 2020 00:08:15 -0000
Message-ID: <158112049595.30228.501393334279760050@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200207205010.2857970-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200207205010.2857970-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Always_force_a_context_reload_when_rewinding?=
 =?utf-8?q?_RING=5FTAIL_=28rev3=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/execlists: Always force a context reload when rewinding RING_TAIL (rev3)
URL   : https://patchwork.freedesktop.org/series/73175/
State : failure

== Summary ==

Applying: drm/i915/execlists: Always force a context reload when rewinding RING_TAIL
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_lrc.c
M	drivers/gpu/drm/i915/gt/intel_ring.c
M	drivers/gpu/drm/i915/gt/intel_ring.h
M	drivers/gpu/drm/i915/gt/intel_ring_types.h
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
