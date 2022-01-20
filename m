Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E9F495660
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 23:35:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F0BD10E3DE;
	Thu, 20 Jan 2022 22:34:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16BE510E3DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 22:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642718097; x=1674254097;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6LhyIWIcgsMXRNmqcgnMFTMVm3DYYF1HhszMcb5x1C0=;
 b=HMlp8Vp6hjZaWDed7USmoAlSXP68uCyEFoqT+upnxHg+G7IgXsZvW1yu
 h5TbHd5darP+SPTEvKUr515c85SECIfHux1RwIusQCqw1+Lw4SJyo4oQe
 Q4B3w+qiULiwqM+kOy1qrzLeCH1N7yp4R8UsWDvmrpfOCyKwNoTrOR41U
 yNuTQa18QJ+cXdEr6vvqBiqwG0iJbVA11ouqQnPdhWIZhX5BPv6YveTtO
 dt6fHWX2JlmFWlhBJWFST1hEJTl3BGy+eNzQY0iDV95DoSDdFvuT8Eg2o
 voS8wiwxdB95muaPWMMZVy/PuGmctqDq5bxsMSHRhxNstbIZfvRnwI+Ex w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="243078568"
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="243078568"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 14:34:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="475712800"
Received: from cgbowman-desktop.jf.intel.com ([10.7.199.58])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 14:34:14 -0800
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jan 2022 14:16:51 -0800
Message-Id: <20220120221652.207255-1-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 0/1] Splitting up platform-specific calls
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
Cc: ville.syrjala@intel.com, wayne.boyer@intel.com, jani.nikula@intel.com,
 lucas.demarchi@intel.com, daniel.vetter@intel.com, michael.cheng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In this RFC I would like to ask the community their thoughts
on how we can best handle splitting architecture-specific
calls.

I would like to address the following:

1. How do we want to split architecture calls? Different object files
per platform? Separate function calls within the same object file?

2. How do we address dummy functions? If we have a function call that is
used for one or more platforms, but is not used in another, what should
we do for this case?

I've given an example of splitting an architecture call
in my patch with run_as_guest() being split into different
implementations for x86 and arm64 in separate object files, sharing
a single header.

Another suggestion from Michael (michael.cheng@intel.com) involved
using a single object file, a single header, and splitting various
functions calls via ifdefs in the header file.

I would appreciate any input on how we can avoid scaling issues when
including multiple architectures and multiple functions (as the number
of function calls will inevitably increase with more architectures).

Casey Bowman (1):
  i915/drm: Split out x86 and arm64 functionality

 drivers/gpu/drm/i915/Makefile              |  4 +++
 drivers/gpu/drm/i915/i915_drv.h            |  6 +---
 drivers/gpu/drm/i915/i915_platform.h       | 16 +++++++++++
 drivers/gpu/drm/i915/i915_platform_arm64.c | 33 ++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_platform_x86.c   | 33 ++++++++++++++++++++++
 5 files changed, 87 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_platform.h
 create mode 100644 drivers/gpu/drm/i915/i915_platform_arm64.c
 create mode 100644 drivers/gpu/drm/i915/i915_platform_x86.c

-- 
2.25.1

