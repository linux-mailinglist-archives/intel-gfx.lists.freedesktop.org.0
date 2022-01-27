Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFEA749EEF1
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 00:41:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2909A10E41C;
	Thu, 27 Jan 2022 23:41:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DF9C10E3F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 23:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643326885; x=1674862885;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=al2g9eMbN9IQ//eSkEHxbyJq7kz0CvaH6c9Z8ceDR+0=;
 b=hFYdIPHImyfiBJRHHTdOeNOQ7E0MjrHwqe70d/SDN3Oy99hN79H2qnLp
 rXD5puoKsmUQibUdayhgfy+RcRQCdinHpgH/mgGwTko9UgTbPobf+FADL
 NYHgLnbQFYRR7OmSS/kJJ/rFeDrjVWm+PD4wQR99O4bu/6UfOC7Lyhur4
 80dNCaJpolJv3kzFlf/W9jfGTeJfbyPPl1NgH6juDc/SiFbziuoog/leb
 8FNx7b268KoHUJLhN/u+PuDuA5bBiU9X3acwL3uJiN8OiE3UxABx4pnWs
 2fJj10p/bDCQ+bWxluFXarwM29uEkRDV2pWFjPIhZPMgGC1f00yV0omAi g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="230573045"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="230573045"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 15:41:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="563985271"
Received: from mrea-mobl.amr.corp.intel.com (HELO mvcheng-desk2.intel.com)
 ([10.251.14.177])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 15:41:24 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 15:41:16 -0800
Message-Id: <20220127234118.111015-1-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Use drm_clflush* instead of clflush
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
Cc: michael.cheng@intel.com, wayne.boyer@intel.com, lucas.demarchi@intel.com,
 chris@chris-wilson.co.uk, mika.kuoppala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series re-work a few i915 functions to use drm_clflush_virt_range
instead of calling clflush directly. This will prevent errors when building
for non-x86 architectures.


Michael Cheng (2):
  drm/i915/gt: Re-work intel_write_status_page
  drm/i915/gt: Re-work invalidate_csb_entries

 drivers/gpu/drm/i915/gt/intel_engine.h              | 13 ++++---------
 .../gpu/drm/i915/gt/intel_execlists_submission.c    |  4 ++--
 2 files changed, 6 insertions(+), 11 deletions(-)

-- 
2.25.1

