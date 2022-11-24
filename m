Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BA963769B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 11:38:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6138A10E266;
	Thu, 24 Nov 2022 10:38:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E42AF10E266
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Nov 2022 10:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669286290; x=1700822290;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=u9dF9Hik+gFI5RJ1McX/O71OkD3eDrDxlt52mwfG6Js=;
 b=iqE2lM4O5EtRrZ2hkRqQrTJyOVI7pDH/YDxVZdtQn0PFr6VUuVKLcRe4
 cFZgHyE4LBvBYMYjf/L0TAZf+mfYgsgqOGbAOppbgjd+g7noUfpafNRhQ
 hb3muxvURfcozEp5PSexKrVWC4Un4Si3+KWgdHqH8hGe/x19lQsNCsFvg
 7O2ChLPkyJ9U+nrNu4twVfiuJ0sTF5C/06jlgjM0xjoGXPbgAxwUzLKgD
 /V3tfXBTCV+ucDQK69kHD4R0LZ7A82KLjBbUgMiccUxgWorHo1k6zTKSP
 QBvtBbeBdo0stq+zoaV1JaUqY4+jl2rnhQBLPRgbZ8Z9IHRmhxIa/HpbN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="400566023"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="400566023"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 02:36:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="675050020"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="675050020"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga001.jf.intel.com with ESMTP; 24 Nov 2022 02:36:24 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Nov 2022 12:36:22 +0200
Message-Id: <20221124103623.13974-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Implement workaround for PLL enabling for
 DG2/MTL
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It has been noticed by HW team, that there are might be problems
when PLL is being enabled with CDCLK squashing being turned on,
which might result in loosing register access and/or FIFO underrun.
As a workaround it has been proposed to disable CDCLK squashing right
before PLL is enabled and enable squashing later, if needed.

Stanislav Lisovskiy (1):
  drm/i915: Implement workaround for CDCLK PLL disable/enable

 drivers/gpu/drm/i915/display/intel_cdclk.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

-- 
2.37.3

