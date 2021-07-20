Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CE13D0521
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 01:24:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 028CD89EF7;
	Tue, 20 Jul 2021 23:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87FC889E7B;
 Tue, 20 Jul 2021 23:24:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10051"; a="209441156"
X-IronPort-AV: E=Sophos;i="5.84,256,1620716400"; d="scan'208";a="209441156"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 16:24:38 -0700
X-IronPort-AV: E=Sophos;i="5.84,256,1620716400"; d="scan'208";a="632477376"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 16:24:37 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Jul 2021 16:20:10 -0700
Message-Id: <20210720232014.3302645-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] Nuke legacy hw_id
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
Cc: Tomas Winkler <tomas.winkler@intel.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Motivated by my review in
https://patchwork.freedesktop.org/patch/443857/?series=92135&rev=5 I
went to look why we needed the additional hw_id fields. It turns out we
don't, but we kept adding new IDs to keep it consistent. Now that with
the extra media engines we would just leave than zero'ed, let's refactor
the code so we don't keep them around: they aren't used since
GRAPHICS_VER == 8.

I'd say last patch is a stretch due to the use of _PICK() and hardcoding
the map, but to me it seems to avoid making it more complex elsewhere.

Lucas De Marchi (4):
  drm/i915/gt: fix platform prefix
  drm/i915/gt: nuke unused legacy engine hw_id
  drm/i915/gt: rename legacy engine->hw_id to engine->gen6_hw_id
  drm/i915/gt: nuke gen6_hw_id

 drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 10 ----------
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 12 ------------
 drivers/gpu/drm/i915/gt/intel_gt.c           |  4 ++--
 drivers/gpu/drm/i915/i915_reg.h              |  4 +++-
 4 files changed, 5 insertions(+), 25 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
