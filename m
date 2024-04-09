Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B9C89D5AE
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 11:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E681112C0B;
	Tue,  9 Apr 2024 09:37:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z8MY0qLK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3A43112C0B
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Apr 2024 09:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712655420; x=1744191420;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f1Lm7aHpSa8s37pb91D1Z0prA9DyKJbQTq5/BxAdZrs=;
 b=Z8MY0qLKdSP57MvZHdzZdf8+fjFLx3KNS0nz+CHOhtI3yQuMrCtDIoto
 14UPAskfiLoM7SCBxM8Lfz4DgiVYRo/+a+6rLlQQA2bYUqr47LUnZa7ua
 SNYTdr2K7NotmT+CHOmdyQTzJ0Kyxa57FiT9/dsF2PNgz0+tnBABQnH8w
 qgrCIJpc4a3GuBLZotJNYOyjx/BWBL13ORJwi3FvCM2Gc0BDn7bziPM08
 3pyGLobdyBLpMyMV50IM6oCByPXOOcwL3CwYXtc3HyhhVddekWnnPtIbt
 2XN68LuCELkjrU2jzjd84fEm9Z27HPqRYzNQu2n2RRYCxro6I7spTjlej w==;
X-CSE-ConnectionGUID: pvdOne7iSk6fjNwIPpp9LA==
X-CSE-MsgGUID: a1m7jxttQweZYTuNUBXDLQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="8085583"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; 
   d="scan'208";a="8085583"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 02:36:59 -0700
X-CSE-ConnectionGUID: BH06TbI0Sv+VOHgUPdlnEg==
X-CSE-MsgGUID: rON0nflURI+yaNL5XGicAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="24908018"
Received: from mzizka-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.249.37.25])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 02:36:57 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: baolu.lu@intel.com, vinod.govindapillai@intel.com, jani.saarinen@intel.com
Subject: [PATCH v1 0/1] iommu/vt-d: Fix WARN_ON in iommu probe path
Date: Tue,  9 Apr 2024 12:36:44 +0300
Message-Id: <20240409093645.456004-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

This has already been sent to try bot
https://patchwork.freedesktop.org/series/132132/

Lu Baolu (1):
  iommu/vt-d: Fix WARN_ON in iommu probe path

 drivers/iommu/intel/iommu.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

-- 
2.34.1

