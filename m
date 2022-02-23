Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C66104C1CA0
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 20:52:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1D5910E433;
	Wed, 23 Feb 2022 19:51:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A88E10E8F9;
 Wed, 23 Feb 2022 19:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645645917; x=1677181917;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=egOWHG0eZTVJxHwNPhgyQRyzGN7RMqT82+yiRSrskp0=;
 b=f2UxvGUmDkIJ98XmRaAqm9soB89tgF1tX3omrJdAUdWmcujBJJtuPP0U
 NFdQU5OYmPB45KkfwoaZ6PId1hBloP+X8zN3/GiIqnIznsOui5a/jGWj7
 cI3P++vZvL17s6WIyvXkb+l/y6pZnQzzCGJCtkbwqS8X2o328Br4sjezt
 zEExQDNXOKUoLqpDKwgbM+TCF3U9Vkh1f6b7uq7RCJGaqU754kwIKHG/2
 E0TG07SpzZ/ndPWx215YtSsOIOouwmNFGVQvfzqRWvsUT15CVeYz4bdmA
 W2IXmjeWy2ty8AUhzrLorfkIfoNAUHDgh0RhBK2CDrN1SAAOKH84wL/IX A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="232688795"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="232688795"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 11:51:46 -0800
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="508576538"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 11:51:44 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Thu, 24 Feb 2022 01:22:01 +0530
Message-Id: <20220223195203.13708-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] hda/i915: split wait for component binding
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To avoid the intended wait being reported as kworker hung, split the
wait for i915 component bind, in multiples of
sysctl_hung_task_timeout_secs.

To facilitate this we are exporting sysctl_hung_task_timeout_secs from
kernel/hung_task.c for the kernel modules' use.

Ramalingam C (2):
  kernel/hung_task: Exporting sysctl_hung_task_timeout_secs
  hda/i915: split the wait for the component binding

 kernel/hung_task.c    |  1 +
 sound/hda/hdac_i915.c | 17 ++++++++++++++---
 2 files changed, 15 insertions(+), 3 deletions(-)

-- 
2.20.1

