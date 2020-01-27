Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7156614A9BC
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 19:21:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BE0B6E5D2;
	Mon, 27 Jan 2020 18:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 451DB6E595;
 Mon, 27 Jan 2020 18:21:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:12:50 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="429062886"
Received: from dbstims-dev.fm.intel.com ([10.1.27.172])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 27 Jan 2020 10:12:49 -0800
From: Dale B Stimson <dale.b.stimson@intel.com>
To: igt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jan 2020 10:12:18 -0800
Message-Id: <cover.1580147712.git.dale.b.stimson@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 0/2] i915/gem_ctx_isolation:
 __for_each_physical_engine + engine mapping
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

i915/gem_ctx_isolation: __for_each_physical_engine and gem_engine_topology

V2: Use new function gem_context_clone_with_engines

Use __for_each_physical_engine with gem_engine_topology.

Iterates through the definitive list of all engines
present.

Patch 1 was originally posted by Ramalingam C <ramalingam.c@intel.com>.
Since then, slight modifications have been done to it due to
upstream changes.  Patch 1 is being kept separate from patch 2 in
order to assure proper attribution to the author.

Dale B Stimson (1):
  i915/gem_ctx_isolation: use the gem_engine_topology library, part 2

Ramalingam C (1):
  i915/gem_ctx_isolation: use the gem_engine_topology library, part 1

 tests/i915/gem_ctx_isolation.c | 44 +++++++++++++++++-----------------
 1 file changed, 22 insertions(+), 22 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
