Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 486FE93B375
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 17:16:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB83A10E726;
	Wed, 24 Jul 2024 15:16:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC2E910E726;
 Wed, 24 Jul 2024 15:15:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/gt=3A_Stop_?=
 =?utf-8?q?poisoning_the_idle_kernel_context_alone_when_waking_up?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Niemiec" <krzysztof.niemiec@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jul 2024 15:15:59 -0000
Message-ID: <172183415983.362822.8888495380900819896@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240724141745.17345-3-krzysztof.niemiec@intel.com>
In-Reply-To: <20240724141745.17345-3-krzysztof.niemiec@intel.com>
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

Series: drm/i915/gt: Stop poisoning the idle kernel context alone when waking up
URL   : https://patchwork.freedesktop.org/series/136433/
State : warning

== Summary ==

Error: dim checkpatch failed
30c921464da6 drm/i915/gt: Stop poisoning the idle kernel context alone when waking up
-:17: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#17: 
References: 1d0e2c9359fe ("drm/i915/gt: Always poison the kernel_context image before unparking")

-:17: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 1d0e2c9359fe ("drm/i915/gt: Always poison the kernel_context image before unparking")'
#17: 
References: 1d0e2c9359fe ("drm/i915/gt: Always poison the kernel_context image before unparking")

total: 1 errors, 1 warnings, 0 checks, 68 lines checked


