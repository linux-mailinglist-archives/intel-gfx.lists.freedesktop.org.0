Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A484B7B4D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 00:42:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DADB610E1B0;
	Tue, 15 Feb 2022 23:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BB9A10E5BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 23:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644968529; x=1676504529;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zgdK5yWi8Te1II3WDgAB7bufTFWdSNgd2U3eIFDrFzc=;
 b=ORfFmA5lhBf+X8B95xH/ALX687jgc6OKE8EqMbqtdoPIbZKSBvsaJhRl
 ByS4S5y/sYe3tWjSQltYqCHxRKaqzzL+MO2Y73AnUvHjZlOAYT6rSZqmu
 ZgfW1voJTvyxoWqLBcKAIpX/eR8eQsLa85eoF7oENyAnh80oixNTG8Y5k
 uZvTbyIWMvuL75Al3MWDRqA3P3V3rX/fewp7fAsN9CU2sj5OLalIwfGab
 PZKMfYBrrhpfd+lbaVbQXKkEVYOK2H8pwTlApfem0dRX4b4HqSEKdc4uK
 GRhwvJrImu2RehftpY3H1qKjX5hV+XfxwBl+WfU5hHLn+kVQ/5teOtqdH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="237888544"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="237888544"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 15:41:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="681250539"
Received: from leemi-mobl1.amr.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.251.143.221])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 15:41:52 -0800
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 15:41:45 -0800
Message-Id: <20220215234146.304035-1-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH v3 0/1] Splitting up platform-specific calls
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
v3: Revised to use simple if-else structure.

Casey Bowman (1):
  i915/drm: Split out x86/arm64 for run_as_guest

 drivers/gpu/drm/i915/i915_drv.h | 8 ++++++++
 1 file changed, 8 insertions(+)

-- 
2.25.1

