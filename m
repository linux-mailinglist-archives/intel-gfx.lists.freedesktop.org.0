Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 445ED5EDFBD
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 17:07:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2407310E9CE;
	Wed, 28 Sep 2022 15:07:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4B15310E9CE;
 Wed, 28 Sep 2022 15:07:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 42FEDAAA91;
 Wed, 28 Sep 2022 15:07:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Date: Wed, 28 Sep 2022 15:07:23 -0000
Message-ID: <166437764326.595.8451273263780761726@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220928085826.243721-1-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20220928085826.243721-1-janusz.krzysztofik@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_iommu=3A_Remove_iova_cpu_hotplugging_flushing_=28rev2=29?=
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

Series: iommu: Remove iova cpu hotplugging flushing (rev2)
URL   : https://patchwork.freedesktop.org/series/108880/
State : warning

== Summary ==

Error: dim checkpatch failed
197c8a0312f4 iommu: Remove iova cpu hotplugging flushing
-:17: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#17: 
<4>[    6.931011] ffff888100e02a78 (&(&priv->bus_notifier)->rwsem){++++}-{3:3}, at: blocking_notifier_call_chain+0x20/0x50

total: 0 errors, 1 warnings, 0 checks, 76 lines checked
a07376429e5f Restore "iommu/dma: Fix race condition during iova_domain initialization"
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ac9a5d522bb8 ("iommu/dma: Fix race condition during iova_domain initialization")'
#8: 
reverted commit ac9a5d522bb80be50ea84965699e1c8257d745ce.  That revert is

-:22: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#22: FILE: drivers/iommu/dma-iommu.c:68:
+	struct mutex			mutex;

total: 1 errors, 0 warnings, 1 checks, 51 lines checked


