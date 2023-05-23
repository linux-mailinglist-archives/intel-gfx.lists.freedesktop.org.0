Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 405A070DA2A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 12:18:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51DE510E424;
	Tue, 23 May 2023 10:18:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 910DB10E421
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 10:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684837112; x=1716373112;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P8ZGR1xA9YTPvSrldQrDUf5YO4ftD1FbPLo/gKRMXsA=;
 b=eBdQa3+5+/BWqRCtX+wBnRSjKFx7toHhKhRvbEhbDKFYLKruzrRJfNI3
 ZThMV7dTlK4OvPWbr+dIKbRaGEZCRRjzohJjWPa9yq8LdztZHcLlvzXXe
 LP7O7HLt0cpe2nBRooGk532yebwdUGPZB5kbaXqgAUgZdOU8dP6O42w/L
 W2HV/tjwtDJGz3A3SJKy+Y68ZTNMWkZSXuNNXWdcQEvkj88vrvEyg9R6L
 3JlRqN/RmF+sKQGdbk5fy2/xQyLBWmt8aq6NQzp92d6EYhmme0czFxzJv
 2RVvZx9vsnAtrD4J8idyk+DKoKDlSBZAWofKRaI7J62Uc/rHzziKU6rNV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="342656853"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="342656853"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 03:18:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="816083321"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="816083321"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 23 May 2023 03:18:25 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 May 2023 15:46:49 +0530
Message-Id: <20230523101651.1282681-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Add rc_range_params for YUV420
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

Calculations for YUV420 were missing from calculate_rc_param,
add them be in line with DSC 1.2a specs.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/dsc: Move rc param calculation for native_420
  drm/i915/dsc: Add rc_range_parameter calculation for YCBCR420

 drivers/gpu/drm/i915/display/intel_vdsc.c | 167 +++++++++++++++-------
 1 file changed, 118 insertions(+), 49 deletions(-)

-- 
2.25.1

