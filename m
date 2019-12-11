Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAC711AB27
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 13:45:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83BBC6EB2F;
	Wed, 11 Dec 2019 12:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2C426EB35
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 12:45:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 04:45:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="215907329"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga003.jf.intel.com with ESMTP; 11 Dec 2019 04:45:55 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.135.169])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 xBBCjsKe016678; Wed, 11 Dec 2019 12:45:54 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 12:45:46 +0000
Message-Id: <20191211124549.59516-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] Drop some explicit params in uc_fw functions
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

There is no need to pass explicit i915/gt/ggtt params since we
already have a debug trick to get parent gt from uc_fw, and thus
access i915/gt/ggtt implicitly, we only need to make this trick
available on non-debug builds.

Michal Wajdeczko (3):
  drm/i915/uc: Drop explicit i915 param in some uc_fw functions
  drm/i915/uc: Drop explicit gt param in some uc_fw functions
  drm/i915/uc: Drop explicit ggtt param in some uc_fw functions

 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c     |  5 +--
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c  | 53 +++++++++++------------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h  |  5 +--
 5 files changed, 31 insertions(+), 36 deletions(-)

-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
