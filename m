Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D628A31D942
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 13:16:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15D6E89DA4;
	Wed, 17 Feb 2021 12:16:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 764CF89DA4
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 12:16:18 +0000 (UTC)
IronPort-SDR: xa4egEBtdUxFowjPkSvdbc6Tu9KU+joKLPoeUfiFM1S93Nww+V1hxHVg4rmCHBccbRkLi8ExtW
 a/wddYUIYgaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="202396579"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="202396579"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 04:16:18 -0800
IronPort-SDR: HpRG0Qhnrlp1ovNwySdLIJf00hWgB79X5XB9EbhmxchLdxiWIa54BQfjTMwLbiOCAHmTj8JXBa
 fGQM0FMrA1kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="419077715"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga004.fm.intel.com with ESMTP; 17 Feb 2021 04:16:16 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Feb 2021 17:35:59 +0530
Message-Id: <20210217120601.12037-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH libdrm 0/2] Update i915_pciids.h and support ADLS
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series adds :
1. sync up of i915_pciids.h with kernel
2. Support for ADLS platform

Tejas Upadhyay (2):
  intel: sync i915_pciids.h with kernel
  intel: add INTEL_ADLS_IDS to the pciids list

 intel/i915_pciids.h   | 177 ++++++++++++++++++++++++------------------
 intel/intel_chipset.c |   1 +
 2 files changed, 102 insertions(+), 76 deletions(-)

-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
