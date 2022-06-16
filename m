Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F7E54E0A4
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 14:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 033E0113FBC;
	Thu, 16 Jun 2022 12:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7305A113FBC
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 12:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655381726; x=1686917726;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AmSEg2KSQovDLOUctAqiD8EgHCs6Ke0GOT6SeqasEMo=;
 b=PHJn015950gYGgfvT76d/KyrCF3ypGt/GROcAWUgD9q1MCt+iBtDbNZc
 k25i11fMiFJXfi1y2Hywdab+luYjQvkCo04GQrxmtAIlEeL/hU7eTHrJg
 GYjNN4u+6Z7ARv7XU36tC3QIwuD2T2EW27n8M9ZGZpTSa2egN3fQQGCxY
 uZ1FV+5J/hHeTCduVhXTbOEmVemEGMREpm9sU+P/dQAhXZs2KxLWay526
 T52n1mT0SSgPBtUmlCJ+wzenQ6UXGSTI5qLnq/fOxdUzyGiPdI0/6j6l2
 WHiF/yqKlIuJvIPECDySDHldKlkfqLvCGbcikSdmthn5vYkAsODZa+GI5 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="278030916"
X-IronPort-AV: E=Sophos;i="5.91,305,1647327600"; d="scan'208";a="278030916"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 05:15:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,305,1647327600"; d="scan'208";a="831535745"
Received: from priyanka-nuc7i7bnh.iind.intel.com ([10.145.162.209])
 by fmsmga006.fm.intel.com with ESMTP; 16 Jun 2022 05:15:24 -0700
From: priyanka.dandamudi@intel.com
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 17:35:07 +0530
Message-Id: <20220616120509.1190329-1-priyanka.dandamudi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/2] Add support for LMEM PCIe resizable
 bar
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

From: Priyanka Dandamudi <priyanka.dandamudi@intel.com>

Added support to resize the bar to maximum supported.
Also, added new modparam lmem_bar_size which can resize the bar
to one of the supported sizes.

Akeem G Abodunrin (1):
  drm/i915: Add support for LMEM PCIe resizable bar

Priyanka Dandamudi (1):
  drm/i915: Add lmem_bar_size modparam

 drivers/gpu/drm/i915/gt/intel_region_lmem.c |   4 +
 drivers/gpu/drm/i915/i915_driver.c          | 118 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_params.c          |   2 +
 drivers/gpu/drm/i915/i915_params.h          |   1 +
 4 files changed, 125 insertions(+)

-- 
2.25.1

