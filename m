Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D09F4E4635
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 19:42:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94BA310E0AD;
	Tue, 22 Mar 2022 18:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFFF310E0AD
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 18:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647974574; x=1679510574;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rzVQNPJNmRV4hzlDJZWW3J1KA5OHa3f+j3wdMmCERt0=;
 b=neQ/sfMP+qF6WJxVKe+WSSuaEBBpilq1x3eD/ud7gKt2WQXrtYBCu7iY
 MtQRUlSemMopJUafZv8VRQqGKc3dCoZtCzDQXRSGgrB8T+Kn84bUxp4k9
 8RjEusxCzrAXS5f/MCuhyV6kho7DNDdQJanjVc+9znDfSmYls7FxFN2lG
 Tny/A85VZ1MQed8S1YRmKFzILWWjklN1ufCgO7m5oDK4OnnZhD8xnSIuS
 9MOAxbq29asOZBH682rTzhdHZu1bDWwnFlpswHs9gqbTWtoBBa88fRHTp
 oJgEMuaFIX3IrjSRLy5+SVnu6iRuZvw2dXUagb+zQkIFyensd8rKwZEjS Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="245390204"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="245390204"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 11:42:54 -0700
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="583392667"
Received: from nsajadpo-mobl.amr.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.251.14.169])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 11:42:54 -0700
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 11:42:36 -0700
Message-Id: <20220322184237.397484-1-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/1] Splitting up platform-specific calls
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
Cc: lucas.demarchi@intel.com, daniel.vetter@intel.com
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
v4: Modified into more arch-neutral split.

Casey Bowman (1):
  i915/drm: Split run_as_guest into x86 and non-x86

 drivers/gpu/drm/i915/i915_drv.h | 5 +++++
 1 file changed, 5 insertions(+)

-- 
2.25.1

