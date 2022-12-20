Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BD9652795
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 21:11:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD6A310E0A2;
	Tue, 20 Dec 2022 20:11:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AE6710E3D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 20:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671567100; x=1703103100;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kH4jReruyuztKtSVULDXReruhd54MfIoFDFDJHH5xhU=;
 b=R2awrxJy8oKX69+moV3lNFy5WzaaHhVGR+oNQjv7+d+hOPAjdP7aqpth
 0Vzph+cUfec4x1nC4p4EJU4SfLYUawpoA24Tn04fHRCfNKdobLGGB7hcj
 aMaqrSrPOnZOH8ZMOM34+i5q1k1FbzDKfEIQ5ptuYYWC7ePCUm61v8n2W
 IVxscVIW+lvobnekbQdUBekCo6UtHUV9g6dgSPFAP4VxfgNMsXCC+c6vE
 U27CoHufbCzt0BIgAQL2N1HW+0iiR9OiNy22ghry5pxZDzqyLIrZE+zJe
 xSRlcSdCTwbaHKL5BDcpv/qfXf+3Uw4VYKcvqOsNu3JL6tdYCrVzwi62r A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="405950629"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="405950629"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 12:11:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="681785470"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="681785470"
Received: from dtpaulso-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.209.148.251])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 12:11:37 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Dec 2022 17:11:02 -0300
Message-Id: <20221220201104.339399-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/dmc: Make firmware loading
 backwards-compatible
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series changes DMC loading to be backwards-compatible by removing
version checking and loading blobs from unversioned filenames.

Should this be accepted, the next step would be to update linux-firmware to
start using the unversioned filenames. That said, this change still allows to
use the previously versioned paths as fallback, allowing DMC loading to still
work with the current state of linux-firmware.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Gustavo Sousa (2):
  drm/i915/dmc: Do not require specific versions
  drm/i915/dmc: Use unversioned firmware paths

 drivers/gpu/drm/i915/display/intel_dmc.c | 133 ++++++++++++++---------
 drivers/gpu/drm/i915/display/intel_dmc.h |   1 -
 2 files changed, 82 insertions(+), 52 deletions(-)

-- 
2.38.1

