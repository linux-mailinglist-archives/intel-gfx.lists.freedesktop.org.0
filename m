Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 736AE4734D9
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 20:21:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 060B610E8A1;
	Mon, 13 Dec 2021 19:21:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4C00C10E89D;
 Mon, 13 Dec 2021 19:21:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 441ECA47DF;
 Mon, 13 Dec 2021 19:21:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: broonie@kernel.org
Date: Mon, 13 Dec 2021 19:21:17 -0000
Message-ID: <163942327725.29014.17288893098762007761@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211213170753.3680209-1-broonie@kernel.org>
In-Reply-To: <20211213170753.3680209-1-broonie@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_implicit_use_of_struct_pci=5Fdev?=
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

Series: drm/i915: Fix implicit use of struct pci_dev
URL   : https://patchwork.freedesktop.org/series/97975/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
be0180f70dc2 drm/i915: Fix implicit use of struct pci_dev
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
In file included from /tmp/next/build/drivers/gpu/drm/i915/intel_device_info.h:32,

-:13: WARNING:USE_RELATIVE_PATH: use relative pathname instead of absolute in changelog text
#13: 
                 from /tmp/next/build/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:11:

-:14: WARNING:USE_RELATIVE_PATH: use relative pathname instead of absolute in changelog text
#14: 
/tmp/next/build/drivers/gpu/drm/i915/display/intel_display.h:643:39: error: 'struct pci_dev' declared inside parameter list will not be visible outside of this definition or declaration [-Werror]

total: 0 errors, 3 warnings, 0 checks, 7 lines checked


