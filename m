Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDAB947A4F
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 13:17:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3477410E0A4;
	Mon,  5 Aug 2024 11:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2E6110E0A4;
 Mon,  5 Aug 2024 11:17:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Fix_mmap_memory_boun?=
 =?utf-8?q?dary_calculation_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 05 Aug 2024 11:17:05 -0000
Message-ID: <172285662592.540085.6018469420556864090@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240805102554.154464-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240805102554.154464-1-andi.shyti@linux.intel.com>
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

Series: Fix mmap memory boundary calculation (rev2)
URL   : https://patchwork.freedesktop.org/series/136840/
State : warning

== Summary ==

Error: dim checkpatch failed
a0fdbebff8ba drm/i915/gem: Adjust vma offset for framebuffer mmap offset
d845cdb8a75a drm/i915/gem: Fix Virtual Memory mapping boundaries calculation
-:19: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#19: 
Reported-by: Jann Horn <jannh@google.com>
Co-developed-by: Chris Wilson <chris.p.wilson@linux.intel.com>

-:78: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#78: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:333:
+
+}

total: 0 errors, 1 warnings, 1 checks, 88 lines checked


