Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 771894B1C11
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 03:15:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ECC610E9B5;
	Fri, 11 Feb 2022 02:15:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84F0E10E9B5
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 02:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644545716; x=1676081716;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=88msxF9Qhyfj+XaoIgt0LsXJQp9o8u8HzxT1kjkJbO4=;
 b=Bm4QCTxtdBhucISz3ckdaYz5r2oNgFgN60ABE+ow4RrxVmt79gRLGrR8
 Y26r5EwZTAqfDyLHcufs+kyKtceaJ6D+m5uDh1kiVOcoxVP6tOM8hdlor
 Fz5njT7uKnQ21ItfTEr3tVxFMBF+vzmbYN06aX/53E+WlnbrEQmChUTqG
 CNXtDF1MI4Zz/76oozUIhNzbsRbonSXyqmdhCL+93rOMyqWdvWX6yLiAI
 Sr13l77uwhCtyMYnry6EvcsANqdE0r6T5tSOkNWPzQyKAzHF3mtfgdmjr
 At86w+HAheIAAREyg2C0v3U1C8OOqZG+r+md6/oR9SNwN/cU5p1+4EWJG A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="274196299"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="274196299"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 18:15:16 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="623073695"
Received: from dparker1-mobl.amr.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.254.46.173])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 18:15:15 -0800
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 18:15:09 -0800
Message-Id: <20220211021510.202602-1-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH v2 0/1] Splitting up platform-specific calls
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
Cc: michael.cheng@intel.com, jani.nikula@intel.com, lucas.demarchi@intel.com,
 daniel.vetter@intel.com
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

v2: Revised to use kernel's platform-splitting scheme.

Casey Bowman (1):
  i915/drm: Split out x86 and arm64 functionality

 drivers/gpu/drm/i915/Makefile                         |  3 +++
 drivers/gpu/drm/i915/i915_drv.h                       |  7 ++-----
 drivers/gpu/drm/i915/platforms/Makefile               |  8 ++++++++
 .../arm64/include/platform/i915_hypervisor.h          | 11 +++++++++++
 .../platforms/x86/include/platform/i915_hypervisor.h  |  9 +++++++++
 5 files changed, 33 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/platforms/Makefile
 create mode 100644 drivers/gpu/drm/i915/platforms/arm64/include/platform/i915_hypervisor.h
 create mode 100644 drivers/gpu/drm/i915/platforms/x86/include/platform/i915_hypervisor.h

-- 
2.25.1

