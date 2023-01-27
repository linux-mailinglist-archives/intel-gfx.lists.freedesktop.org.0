Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABB267E2CF
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 12:12:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E05DD10E452;
	Fri, 27 Jan 2023 11:12:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3B0010E452;
 Fri, 27 Jan 2023 11:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674817971; x=1706353971;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=soob89mTOMZ/gGTPlZSXu4CJisYE3gDh0KHwhbykb7g=;
 b=Ck6E1vORMOjbsCjP+YSLBVDn0fdjHSlO3Zbvsk13K9JcXhBhvOtnwcpb
 ihwZ3ICCTU2x9FJx4R00nypzj7Muwgx1L84AQBIBzlNdiziAg/l+n2rxj
 dL02owZeykXvARpN5fEFqDhmpBiK6SY6ye7xLmO1Xm/NOPOCirCnVzWcI
 kOKOiP0+unKmGWrKtjthe5EO935JZZB+hCvElVgjxTUOt2hZvUDVwYXVk
 +MAL88OejqUVvBk+CkfsWwZm7vqUs+kSpBxAwUo/m1Xhga4PndRiqdO4y
 4CTV8XfGVA+uQr9E0j8FxV1TuNcOcM4zRiYupxTNgspzXqcuzn0UhF+Cj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328352643"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="328352643"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 03:12:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="908638117"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="908638117"
Received: from jgeary-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.233.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 03:12:48 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 11:12:35 +0000
Message-Id: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/6] Assorted intel_gpu_top improvements
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Mostly by popular demand from
https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/109, although for
some of these changes I'd like some second opinions. For instance is it user
friendly to change the default aggregation mode for stdout and JSON output?

Plus a GPU selection fix to prepare for Intel VPU being a DRM device, making
intel_gpu_top not try to monitor it.

And finally some memory freeing fixes.

Tvrtko Ursulin (6):
  intel_gpu_top: Fix man page formatting
  intel_gpu_top: Automatically enclose JSON output into brackets
  intel_gpu_top: Add command line switch to start in physical engine
    mode
  intel_gpu_top: Aggregate engine classes in all output modes
  intel_gpu_top: Fix cleanup on old kernels / unsupported GPU
  lib/igt_device_scan: Improve Intel discrete GPU selection

 lib/igt_device_scan.c |  7 +++--
 man/intel_gpu_top.rst | 60 +++++++++++++++++++++----------------------
 tools/intel_gpu_top.c | 37 +++++++++++++++++++-------
 3 files changed, 62 insertions(+), 42 deletions(-)

-- 
2.34.1

