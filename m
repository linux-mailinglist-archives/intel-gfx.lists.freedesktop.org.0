Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 523218A5E25
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 01:18:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DF811128AB;
	Mon, 15 Apr 2024 23:18:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M8v1OUvl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 856561128A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Apr 2024 23:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713223119; x=1744759119;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CoppqfLpRcJemOxhGZj+A7Er62kIFNG9iFWaovmSn/Q=;
 b=M8v1OUvlWlOz/y9ZXd7cSDc2G0yX/27vNMOSFeHMfivwqGfsGwfLPncu
 vp/7vDUdUZLl3bZGOlRNOjSpbgGZVQ+XeX78O+5uB8UYCRXpgdXven9+f
 Lzc2idZpkMYSO+aPey9tJ4lQeWusa6n7hsoEe8IBy36W6wk0K84JLILp7
 XDusSaScAr7CAvq+5VZJsN1CvBLb4h6yrDB+8JMK3T2zxhLZ+h80getVC
 j6I2AJauM3QI+lgM4LLHzaAA3IWWgR1GRVSYBhmGKHvpVmDjADa//K9Co
 en0jXJazyn5gIQrHfDrVB4cuRhPIl30qoXrtUQF6CGV50GbCgbMuPfKiw Q==;
X-CSE-ConnectionGUID: e3BpJFbPSiuNRemDULBOfQ==
X-CSE-MsgGUID: 8bPWEWoCQIC2VaqmABt/OQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="31115481"
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="31115481"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 16:18:05 -0700
X-CSE-ConnectionGUID: O0SrH/YqQ7u/sm1laIuJgw==
X-CSE-MsgGUID: dg4srb2EQYi/IKkx7x8FbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="21963782"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 16:18:04 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 0/3] LNL GSC FW support
Date: Mon, 15 Apr 2024 16:17:43 -0700
Message-ID: <20240415231746.1230684-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
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

The flow is the same as MTL, so the only things we need to add are the
GSCCS and FW definitions. 
Due to the FW not being in its final state yet, we can't push it to
linux-firmware yet so it needs to be in the xe-for-ci branch. Also, due
to lack of mei support, a second patch for xe-for-ci has been added to
avoid attempting to use the GSC proxy until the mei patch is there.

I haven't yet added the gitlab links for the xe-for-ci patches because
the mei patch is expected to be published soon and therefore the patch
to skip the GSC proxy init might end up unneeded. I'll add the links in
if we decide to go with the series as-is.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>

Daniele Ceraolo Spurio (3):
  drm/xe/gsc: define GSCCS for LNL
  drm/xe/gsc: Skip GSC proxy init
  drm/xe/gsc: define GSC FW for LNL

 drivers/gpu/drm/xe/xe_gsc_proxy.c | 9 +++++++++
 drivers/gpu/drm/xe/xe_pci.c       | 3 ++-
 drivers/gpu/drm/xe/xe_uc_fw.c     | 1 +
 3 files changed, 12 insertions(+), 1 deletion(-)

-- 
2.43.0

