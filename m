Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1361013799B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 23:27:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8861B6E0E6;
	Fri, 10 Jan 2020 22:27:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2886F6E0E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 22:27:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 14:27:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,418,1571727600"; d="scan'208";a="218198544"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga007.fm.intel.com with ESMTP; 10 Jan 2020 14:27:29 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.151.239])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00AMRSEU001371; Fri, 10 Jan 2020 22:27:28 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 22:27:19 +0000
Message-Id: <20200110222723.14724-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v4 0/4] Add ops to intel_uc
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

Instead of spreading multiple conditionals across the uC code
to find out current mode of uC operation, start using predefined
set of function pointers that reflect that mode.

v2: rebased, using macro to generate ops helpers 
v3: reuse __uc_check_hw to avoid redundant comment
v4: forward declare ops struct vs functions

Michal Wajdeczko (4):
  drm/i915/uc: Add ops to intel_uc
  drm/i915/uc: Add init_fw/fini_fw to to intel_uc_ops
  drm/i915/uc: Add init/fini to to intel_uc_ops
  drm/i915/uc: Add sanitize to to intel_uc_ops

 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 75 +++++++++++++++++----------
 drivers/gpu/drm/i915/gt/uc/intel_uc.h | 36 ++++++++++---
 2 files changed, 78 insertions(+), 33 deletions(-)

-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
