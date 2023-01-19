Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 032BC672DE7
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 02:14:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66C9210E224;
	Thu, 19 Jan 2023 01:14:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBCBB10E224;
 Thu, 19 Jan 2023 01:14:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3BA5DAADD6;
 Thu, 19 Jan 2023 01:14:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Deepak R Varma" <drv@mailo.com>
Date: Thu, 19 Jan 2023 01:14:00 -0000
Message-ID: <167409084024.24699.5560418770368501757@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <Y8hVK6wuqm50iADP@ubun2204.myguest.virtualbox.org>
In-Reply-To: <Y8hVK6wuqm50iADP@ubun2204.myguest.virtualbox.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gvt=3A_Avoid_full_proxy_f=5Fops_for_debugfs_attrib?=
 =?utf-8?q?utes?=
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

Series: drm/i915/gvt: Avoid full proxy f_ops for debugfs attributes
URL   : https://patchwork.freedesktop.org/series/113059/
State : warning

== Summary ==

Error: dim checkpatch failed
0a2fe8a8a5a3 drm/i915/gvt: Avoid full proxy f_ops for debugfs attributes
-:20: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#20: 
make coccicheck M=drivers/gpu/drm/i915/ MODE=patch COCCI=./scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci

total: 0 errors, 1 warnings, 0 checks, 34 lines checked


