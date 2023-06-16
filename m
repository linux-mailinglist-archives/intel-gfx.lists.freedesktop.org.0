Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4174A732559
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 04:43:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A71BC10E589;
	Fri, 16 Jun 2023 02:43:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9162210E589;
 Fri, 16 Jun 2023 02:43:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 89911AADE4;
 Fri, 16 Jun 2023 02:43:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Fri, 16 Jun 2023 02:43:18 -0000
Message-ID: <168688339853.9827.6205564412306253403@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230615211940.4061378-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230615211940.4061378-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gsc=3A_Fix_intel=5Fgsc=5Fuc=5Ffw=5Fproxy=5Finit=5F?=
 =?utf-8?q?done_with_directed_wakerefs?=
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

Series: drm/i915/gsc: Fix intel_gsc_uc_fw_proxy_init_done with directed wakerefs
URL   : https://patchwork.freedesktop.org/series/119412/
State : warning

== Summary ==

Error: dim checkpatch failed
2bd0cd46532e drm/i915/gsc: Fix intel_gsc_uc_fw_proxy_init_done with directed wakerefs
-:16: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#16: 
   "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.

total: 0 errors, 1 warnings, 0 checks, 61 lines checked


