Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB40301021
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 23:40:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D4746EA6A;
	Fri, 22 Jan 2021 22:40:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8C446EA70
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 22:40:38 +0000 (UTC)
IronPort-SDR: ScAxopM6YdKbhKS7qoSsI4FEfuhdYAiqA8e4D1v9OWMYF8Ke+30xVM2gzetfRdG/o+U+jdgZBx
 5SYHuZsDC6lQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="179600347"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="179600347"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 14:40:31 -0800
IronPort-SDR: EluExuJ88a9pWrC6gvfuBzu38aQUCcpVUekVOyXwVrzENwhoqlui58j3ugT6S7q7ZgdyFjr4Mh
 25ml3mwnhkww==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="408054422"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 14:40:31 -0800
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 14:40:25 -0800
Message-Id: <cover.1611354210.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] drm/i915: Start disabling pread/pwrite
 ioctl's for future platforms
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The guidance for i915 at this time is to start phasing out pread/pwrite
ioctl's, the rationale being (a) the functionality can be done entirely in
userspace with a combination of mmap + memcpy, and (b) no existing user
mode clients actually use the pread/pwrite interface.

In this patch we disable these ioctls for dGfx platforms with the
expectation that this will be done for all future platforms (both discrete
and integrated). IGT changes which handle this kernel change have also been
submitted [1].

[1] https://patchwork.freedesktop.org/series/81384/

Test-with: 20210121083742.46592-1-ashutosh.dixit@intel.com

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Ashutosh Dixit (1):
  drm/i915: Start disabling pread/pwrite ioctl's for future platforms

 drivers/gpu/drm/i915/i915_drv.h          | 1 +
 drivers/gpu/drm/i915/i915_gem.c          | 6 ++++++
 drivers/gpu/drm/i915/i915_pci.c          | 3 ++-
 drivers/gpu/drm/i915/intel_device_info.h | 1 +
 4 files changed, 10 insertions(+), 1 deletion(-)

-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
