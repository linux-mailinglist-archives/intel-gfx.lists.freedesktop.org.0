Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3AE494162
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 21:01:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC8E810E147;
	Wed, 19 Jan 2022 20:01:41 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC7F510E147;
 Wed, 19 Jan 2022 20:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642622500; x=1674158500;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fEwiRA1Sjh0vSatFIuvDK+G/oRL1SVL4KSIy6wHIyvc=;
 b=QCBzC2VtjvNRb9+QpKnAtEoSnElpp+sl17jLOMxS1DqBaOVB/4Z8ymXA
 pvdSZegEJ4v/Nsw8eI9VLIMLbG+/+GPfuIXULPsODC7f6LAzlCrseTH+V
 rBFTNDtCnb+9sjiwvTYSeiCjHiTM2/Td5J4OoqEh6TkQgp7mUZpbARDDN
 dvaOgWZkUZNlRtU/xwpW8jdq9pwEE3ljJky3PltUqF5m/8rOwH5ij0F3n
 PxNim5Xw/m22lyGpoj+iXKfwjgvYlIBLHVXdLmKv1Nsyt9MUsIodXcxWn
 E4M5vZr/PbJvlqkDvlJAs2dNt0rmx3GTAoFMGe27Iv4CbZEa7UJT4yIYq A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="225158773"
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="225158773"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 12:01:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="767363799"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jan 2022 12:01:37 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Wed, 19 Jan 2022 12:01:36 -0800
Message-Id: <20220119200137.2364940-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t 0/1] Add test for new hw info query
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Various UMDs require hardware configuration information about the
current platform. A new interface has been added to the KMD to return
this information. So, add a test for the new interface.

v2: Rebased to newer baseline.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>


Rodrigo Vivi (1):
  tests/i915/query: Query, parse and validate the hwconfig table

 include/drm-uapi/i915_drm.h |   1 +
 lib/intel_hwconfig_types.h  | 106 +++++++++++++++++++++++
 tests/i915/i915_query.c     | 168 ++++++++++++++++++++++++++++++++++++
 3 files changed, 275 insertions(+)
 create mode 100644 lib/intel_hwconfig_types.h

-- 
2.25.1

