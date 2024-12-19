Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2C69F8131
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 18:10:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAF7C10ED61;
	Thu, 19 Dec 2024 17:10:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C9DF10ED60;
 Thu, 19 Dec 2024 17:10:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_annotate_i915=5Fgem?=
 =?utf-8?q?=5Fobject=5Ftrylock=28=29_as_=5F=5Fmust=5Fcheck?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rolf Eike Beer" <eb@emlix.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2024 17:10:10 -0000
Message-ID: <173462821050.467596.337740925474666683@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <7746997.EvYhyI6sBW@devpool47.emlix.com>
In-Reply-To: <7746997.EvYhyI6sBW@devpool47.emlix.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: annotate i915_gem_object_trylock() as __must_check
URL   : https://patchwork.freedesktop.org/series/142836/
State : warning

== Summary ==

Error: dim checkpatch failed
d9ac0678af4a drm/i915/selftests: check the return value of i915_gem_object_trylock()
72b7193baf3f drm/i915: mark i915_gem_object_trylock() as __must_check
-:6: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#6: 
When you don't look at the return code you can't know if you actually got the

total: 0 errors, 1 warnings, 0 checks, 10 lines checked


