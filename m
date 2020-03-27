Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB8B195550
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 11:32:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4FFC6E077;
	Fri, 27 Mar 2020 10:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E05876E077
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 10:32:07 +0000 (UTC)
IronPort-SDR: bxKJEqHroMqN39djD+E7EQyuhNsh0w/EDpZkB/A7FLmSTdL81CTUrTKoqYAJQNMTchhmPg9+Pl
 +WVgL5GIheSQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 03:32:07 -0700
IronPort-SDR: J9n8Or96W7MJFwBi6ncQ/WiwS8UwJVjVXCh3P4jwGbRQbZOTA9lvpHAiG1iEq/iILwLMPiaHYo
 qIyGPWIwHGfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,312,1580803200"; d="scan'208";a="394336239"
Received: from kdhanoa-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.249.34.55])
 by orsmga004.jf.intel.com with ESMTP; 27 Mar 2020 03:32:06 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 12:32:06 +0200
Message-Id: <20200327103209.3099292-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] drm/i915/perf: add support for multi
 context filtering
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

Hi all,

i915/perf has currently support for single context filtering. This
allows mesa to read the content of the OA buffer and cut out any
unrelated context running in a middle of a query.

Iris currently uses 2 GEM contexts for 3D & compute commands. In order
to support performance queries on the compute context we need to be
able to also filter on the second GEM context used for compute
commands.

This series add support for filtering up to 4 GEM contexts in
i915/perf.

Lionel Landwerlin (3):
  drm/i915/perf: break OA config buffer object in 2
  drm/i915/perf: prepare driver to receive multiple ctx handles
  drm/i915/perf: enable filtering on multiple contexts

 drivers/gpu/drm/i915/i915_perf.c       | 702 ++++++++++++++++---------
 drivers/gpu/drm/i915/i915_perf_types.h |  25 +-
 include/uapi/drm/i915_drm.h            |  21 +
 3 files changed, 481 insertions(+), 267 deletions(-)

--
2.26.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
