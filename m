Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBE633D8F9
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Mar 2021 17:19:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C92E6E418;
	Tue, 16 Mar 2021 16:19:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42ED36E405;
 Tue, 16 Mar 2021 16:19:17 +0000 (UTC)
IronPort-SDR: SK1pQVBvDpRi+33+L329icacrx1/xjrh60grhi9XLgc2vPsnIjfbX/XEJwOdJ1RTcAf/qLXnrJ
 MYjFGX1PmyFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="176885366"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="176885366"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 09:18:54 -0700
IronPort-SDR: w9OPpKwwbl+D2O8vn/6UpYHv+uRBBOmVY+6g2AEwgkh7YwdFTo+cmvv1OgPI/evrNI4xajMGD2
 mSh3vQXU9Z8Q==
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="412272384"
Received: from lmirensk-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.195.153])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 09:18:52 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 16 Mar 2021 16:18:38 +0000
Message-Id: <20210316161840.1993818-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 0/2] Default fence expiration test
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

See patch 2.

Tvrtko Ursulin (2):
  lib: Add helper for reading modparam values
  tests/i915: Default fence expiry test

 lib/igt_params.c          |  26 +++
 lib/igt_params.h          |   2 +
 tests/Makefile.sources    |   3 +
 tests/i915/gem_watchdog.c | 376 ++++++++++++++++++++++++++++++++++++++
 tests/meson.build         |   1 +
 5 files changed, 408 insertions(+)
 create mode 100644 tests/i915/gem_watchdog.c

-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
