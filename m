Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 411D08C8A81
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 19:05:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E658E10E0E2;
	Fri, 17 May 2024 17:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5E4910E0E2;
 Fri, 17 May 2024 17:05:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Improve_drm_printer_?=
 =?utf-8?q?code_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2024 17:05:47 -0000
Message-ID: <171596554788.2144079.8817494575960463196@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240517163406.2348-1-michal.wajdeczko@intel.com>
In-Reply-To: <20240517163406.2348-1-michal.wajdeczko@intel.com>
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

Series: Improve drm printer code (rev2)
URL   : https://patchwork.freedesktop.org/series/133749/
State : warning

== Summary ==

Error: dim checkpatch failed
3274a9b5ce18 drm/print: Add generic drm dev printk function
-:46: WARNING:PRINTK_WITHOUT_KERN_LEVEL: printk() should include KERN_<LEVEL> facility level
#46: FILE: drivers/gpu/drm/drm_print.c:197:
+			printk("%s" "[" DRM_NAME ":%ps]%s%s %pV",

-:46: WARNING:STRING_FRAGMENTS: Consecutive strings are generally better as a single string
#46: FILE: drivers/gpu/drm/drm_print.c:197:
+			printk("%s" "[" DRM_NAME ":%ps]%s%s %pV",

-:49: WARNING:PRINTK_WITHOUT_KERN_LEVEL: printk() should include KERN_<LEVEL> facility level
#49: FILE: drivers/gpu/drm/drm_print.c:200:
+			printk("%s" "[" DRM_NAME "]%s%s %pV",

-:49: WARNING:STRING_FRAGMENTS: Consecutive strings are generally better as a single string
#49: FILE: drivers/gpu/drm/drm_print.c:200:
+			printk("%s" "[" DRM_NAME "]%s%s %pV",

total: 0 errors, 4 warnings, 0 checks, 87 lines checked
3432db1c2de2 drm/print: Improve drm_dbg_printer
e7d37f80fdc1 drm/i915: Don't use __func__ as prefix for drm_dbg_printer


