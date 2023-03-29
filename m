Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 989626CF551
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 23:24:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FEE610EC8A;
	Wed, 29 Mar 2023 21:24:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10EBE10EC7C
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 21:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680125037; x=1711661037;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=us8MPi9NbwnGe0CuzMIs/D8kjffvRjJb1yYTnPSkEzo=;
 b=IcH4jJVVXbfmA34dUZsWY3POI5cBKCTWfvuuYPHVQL/tKuk1HYEikz/I
 3Grh9kZNWowGPBJQnEsffEGASZRgMJxK7K9Ih60aGoTNb6Ar/vuWjSATB
 vBwPcYofEn965d3/IN9JuX49sKlLflO03RQ5e7JwiFQr7SyWXABe9kLps
 Z4pD56uL1/njlmYNmeuWlwTFaWZ5ucNJiX88FGPoK98mqjELXc6oi3gAW
 utVLTJqock3FSUxS8KHJp9ibfk68MzINIy7sfcebywn1r58BwHBIWKjF+
 BoE9QnzNq894jsPa11CzE+TfC7eIbtchx8XlWvz7u5mRrmfXdjmYMUiP7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="338504125"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="338504125"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 14:23:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="748916104"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="748916104"
Received: from snalwade-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.255.37.126])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 14:23:54 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 18:23:34 -0300
Message-Id: <20230329212336.106161-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] Add MTL Wa_14017066071,
 Wa_14017654203 and Wa_22015279794
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add some GT workarounds for MTL. Note that Wa_14017066071 and Wa_14017654203
require the same implementation and have the same platform and stepping bounds,
so there is a single patch for them.

v2:
  - Remove unrelated brace removal in first patch. (Matt)

Radhakrishna Sripada (2):
  drm/i915/mtl: Add workarounds Wa_14017066071 and Wa_14017654203
  drm/i915/mtl: Add Wa_22015279794

 drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  7 +++++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 14 ++++++++++++++
 2 files changed, 21 insertions(+)

-- 
2.40.0

