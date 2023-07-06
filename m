Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C5C74A3E5
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 20:49:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A172610E4AF;
	Thu,  6 Jul 2023 18:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7B89610E0CA;
 Thu,  6 Jul 2023 18:48:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 755E4A0078;
 Thu,  6 Jul 2023 18:48:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uros Bizjak" <ubizjak@gmail.com>
Date: Thu, 06 Jul 2023 18:48:59 -0000
Message-ID: <168866933945.18978.7524984862074210899@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230703150859.6176-1-ubizjak@gmail.com>
In-Reply-To: <20230703150859.6176-1-ubizjak@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/pmu=3A_Use_local64=5Ftry=5Fcmpxchg_in_i915=5Fpmu?=
 =?utf-8?q?=5Fevent=5Fread?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/pmu: Use local64_try_cmpxchg in i915_pmu_event_read
URL   : https://patchwork.freedesktop.org/series/120296/
State : warning

== Summary ==

Error: dim checkpatch failed
f8d5cc6a6ba8 drm/i915/pmu: Use local64_try_cmpxchg in i915_pmu_event_read
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
in i915_pmu_event_read.  x86 CMPXCHG instruction returns success in ZF flag,

total: 0 errors, 1 warnings, 0 checks, 16 lines checked


