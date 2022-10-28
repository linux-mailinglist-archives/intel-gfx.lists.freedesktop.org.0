Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCE8610B2E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 09:21:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6600C10E794;
	Fri, 28 Oct 2022 07:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EFF410E794
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 07:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666941688; x=1698477688;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S8dQzeeROsZWPkVdK1pI+K7A5Er2tL+nCRGLm5Wxe4k=;
 b=FLD71Jhh8zZL3nuEb+0qxl47gSa/Pcoq9arlBg3NNTwa6d1Cu8oUkdmi
 yCayCSthG7iYsRz7sME5WfUmwwEWFx/hNl06Y4edNwetiMZa6tz4WiUJM
 pi9Qp8KyZLu7EadQL4Ut4YfU50UZu357TyXifXiXiOAZOk9bH80V9XXXo
 l9AZerzab2YmZakrF1jSkoZTy89uGVdBCus9tYCbWBlfaplmZcEaUPKCS
 8s6W6Y6l1fnQZoeQsJls5GX8cYpmLZmLiyPrmMnfwwjrBXBW5a7+P9kJ1
 W2TR3tVRhVvpm+gueMBGTsLrLRjsRJ7k9xSw+9DfzCJNWRCz+a2SjazXW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="309523268"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="309523268"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 00:21:27 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="961924461"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="961924461"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 00:21:25 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 12:51:19 +0530
Message-Id: <20221028072120.3594337-1-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Add selftest for slpc tile interaction
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This tests runs a  workload on tiles simultaneously by requesting for RP0 frequency
and fails if there is a throttling error

Riana Tauro (1):
  drm/i915/guc/slpc: Add selftest for slpc tile-tile interaction

 drivers/gpu/drm/i915/gt/selftest_slpc.c | 63 +++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

-- 
2.25.1

