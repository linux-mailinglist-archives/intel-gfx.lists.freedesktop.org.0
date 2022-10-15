Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 537545FF857
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Oct 2022 05:58:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E8FA10E35B;
	Sat, 15 Oct 2022 03:57:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4010D10E35A
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Oct 2022 03:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665806264; x=1697342264;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ddl7IUtmN+9X2oJJ/96CfdxJ+8R0cZ/PsqGY9UUq5eE=;
 b=Nwdy3ueRloYI6HJ8R8l8fgsVn8wURV5YyfP/mOnKala4FbJq4p7uvZ7j
 F12kv1/FffETM5QNs2RwBYPEVUmayYYofIyxRUiurPnndj5tCnxxQGHQl
 h/SSdlURsuhUUyVfZHqYGIej80LZvtg6FLRgbPuLFni5Ff7Ot1ljhr9Zn
 VN+z2rGpF4S7CQnwCc00wdHQj7dZbWslBXR/MqEF+ZcfU5VgGIChURC/7
 fTHX/SnMJIiD70yUWh0j4jFprmcimxqJ0O9DT6VocBo2HD/zTb8ONi9Ng
 zRjlQShUg1lBkVNEOs3aoD2cFoKLYFeeMPV6c3pWRSVgXg+1KWdJ6aAvL Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="332036827"
X-IronPort-AV: E=Sophos;i="5.95,186,1661842800"; d="scan'208";a="332036827"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 20:57:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="716962774"
X-IronPort-AV: E=Sophos;i="5.95,186,1661842800"; d="scan'208";a="716962774"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2022 20:57:43 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 20:59:50 -0700
Message-Id: <20221015035952.1741319-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/guc: Add GuC-Error-Capture-Init
 coverage of new engine types
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

After initial upstream merge of GuC error-capture feature, we eventually
decided to remove a lot of unnecessary warning messages when we couldn't
retrieve register lists for ADS-error-state-capture initialization. It was
a justified decision because the majority of that noise was being repeated
three times per GT reset and included list-types that are not supported
upstream. However after that change, we are not able to catch cases of
missing register lists for new engines that hadn't been added.

This series introduces new selective checks and warnings (such as skipping
if its a VF or if its an empty register list). This series also adds register
list for compute engine which is merely a duplicate of render class list.

Alan Previn (2):
  drm/i915/guc: Add error-capture init warnings when needed
  drm/i915/guc: Add compute reglist for guc err capture

 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 59 ++++++++++++++++++-
 1 file changed, 57 insertions(+), 2 deletions(-)


base-commit: 5996bd8b9a613edd4ea145b95001cf0d6229e97e
-- 
2.34.1

