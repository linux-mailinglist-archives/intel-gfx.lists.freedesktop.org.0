Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CA0903EDB
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 16:31:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4887B10E0BD;
	Tue, 11 Jun 2024 14:31:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b6958V0w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0836810E665;
 Tue, 11 Jun 2024 14:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718116251; x=1749652251;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xsM6mT/kbHhSjlkYC4/8I43M70F0uuiXz7xlAx9zu94=;
 b=b6958V0wRAvT+DSwGTUFBkS12gopKNR2tG1frsaPeGTgDE5h0Z5xBXxe
 +nlZHzLfxeAzVP1AaT8aHUatzM7uHsShrdL8IkYO2fDro5hz/pocmStsw
 YSmH1X3wmL0g5YO9TdnJQIwTq7r33MXlFMble7eWs+n4iT4WTdGKQCYR2
 sQxIBfgpbFM6fADE0PluxJhsfTtrkS9ZPg3Vo+pYpB/PqZKwqul1LDJbX
 17BlKoh2WoW8AzJNOIifdhhrwaTYZQMrc82vwZ5TkyqZVk3blDmizVZlZ
 apygAyCzwX7bchemi5A+uxVRVs9xny8YMR2OOaA+pU1PC2iLXeL9EXv2Q g==;
X-CSE-ConnectionGUID: 8tuAm0e3Tg6jmJ6oP6kuQg==
X-CSE-MsgGUID: cWlj/+tuSnOAQw/wdcKvhg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14957571"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="14957571"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:30:50 -0700
X-CSE-ConnectionGUID: 8Ovo/IMORPCbBdl/xUS/Mg==
X-CSE-MsgGUID: oMqcFSbcQZqVGIfKXs6L0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="44357866"
Received: from mwajdecz-mobl.ger.corp.intel.com ([10.94.248.185])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:30:49 -0700
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Subject: [RFC 7/7] drm/xe: Promote SR-IOV GuC ABI definitions to shared
 location
Date: Tue, 11 Jun 2024 16:30:08 +0200
Message-Id: <20240611143008.1900-8-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20240611143008.1900-1-michal.wajdeczko@intel.com>
References: <20240611143008.1900-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Move SR-IOV GuC ABI definitions to shared location and include
them in the generated GuC documentation chapter.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 Documentation/gpu/guc.rst                                  | 7 +++++++
 .../gpu/drm/{xe => intel/guc}/abi/guc_actions_sriov_abi.h  | 0
 .../gpu/drm/{xe => intel/guc}/abi/guc_relay_actions_abi.h  | 0
 .../{xe => intel/guc}/abi/guc_relay_communication_abi.h    | 0
 4 files changed, 7 insertions(+)
 rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_actions_sriov_abi.h (100%)
 rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_relay_actions_abi.h (100%)
 rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_relay_communication_abi.h (100%)

diff --git a/Documentation/gpu/guc.rst b/Documentation/gpu/guc.rst
index 55ae1476bf9e..468ba5a978e1 100644
--- a/Documentation/gpu/guc.rst
+++ b/Documentation/gpu/guc.rst
@@ -13,4 +13,11 @@ GuC ABI
 .. kernel-doc:: drivers/gpu/drm/intel/guc/abi/guc_communication_ctb_abi.h
 .. kernel-doc:: drivers/gpu/drm/intel/guc/abi/guc_messages_abi.h
 .. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+.. kernel-doc:: drivers/gpu/drm/intel/guc/abi/guc_actions_sriov_abi.h
 .. kernel-doc:: drivers/gpu/drm/intel/guc/abi/guc_klvs_abi.h
+
+GuC Relay ABI
+=============
+
+.. kernel-doc:: drivers/gpu/drm/intel/guc/abi/guc_relay_communication_abi.h
+.. kernel-doc:: drivers/gpu/drm/intel/guc/abi/guc_relay_actions_abi.h
diff --git a/drivers/gpu/drm/xe/abi/guc_actions_sriov_abi.h b/drivers/gpu/drm/intel/guc/abi/guc_actions_sriov_abi.h
similarity index 100%
rename from drivers/gpu/drm/xe/abi/guc_actions_sriov_abi.h
rename to drivers/gpu/drm/intel/guc/abi/guc_actions_sriov_abi.h
diff --git a/drivers/gpu/drm/xe/abi/guc_relay_actions_abi.h b/drivers/gpu/drm/intel/guc/abi/guc_relay_actions_abi.h
similarity index 100%
rename from drivers/gpu/drm/xe/abi/guc_relay_actions_abi.h
rename to drivers/gpu/drm/intel/guc/abi/guc_relay_actions_abi.h
diff --git a/drivers/gpu/drm/xe/abi/guc_relay_communication_abi.h b/drivers/gpu/drm/intel/guc/abi/guc_relay_communication_abi.h
similarity index 100%
rename from drivers/gpu/drm/xe/abi/guc_relay_communication_abi.h
rename to drivers/gpu/drm/intel/guc/abi/guc_relay_communication_abi.h
-- 
2.43.0

