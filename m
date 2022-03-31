Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D7E4ED0B3
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 02:09:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3872510EE78;
	Thu, 31 Mar 2022 00:09:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83D4A10EE78
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 00:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648685354; x=1680221354;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8MB8yLkwwk+8vVufcKNIj2gNnbegkZ9GnwPqZXxFB0A=;
 b=Ib7fXOMr/IK7NnXGoHBhg6ORLhLhwufi2GDJ2BGp2o/n1tf4y4sEmy8w
 YYL7+rNd1U9NF2CKEl4HGqM4sNBVn0ZGZAa3/fGqzJBreE1hebwhpmqbp
 8nCXfst46FaG0m3VfCNtuPSOCljJ7ohv2awejb9qM++SAC7vhnte6hi6X
 gXflSaOSmSXcBwJlLNtRduXkuLGqGrhSsaVlzneOcjKaI3o9Or7n1Nkmj
 UMYFFZP3WT5Q+zycQ9uwkPFuZiiWtkERsoQe5tgy7fXJ8KTyMcVUo1jny
 GklSAq7rTemkfaf8BLEVb6Qm28UbgY73+LirZRXq06AesxfQ0cCuguLPl g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="241827212"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="241827212"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 17:09:13 -0700
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="586197440"
Received: from mcbewley-mobl.ger.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.209.48.13])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 17:09:13 -0700
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 17:09:07 -0700
Message-Id: <20220331000908.1225343-1-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH v5 0/1] Splitting up platform-specific calls
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
Cc: michael.cheng@intel.com, lucas.demarchi@intel.com, daniel.vetter@intel.com
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
v5: Rebased on top of the run_as_guest -> i915_run_as_guest changes

Casey Bowman (1):
  Split i915_run_as_guest into x86 and non-x86

 drivers/gpu/drm/i915/i915_utils.h | 5 +++++
 1 file changed, 5 insertions(+)

-- 
2.25.1

