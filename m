Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6323F60396E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 07:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BFA210E1AB;
	Wed, 19 Oct 2022 05:58:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C457210E0DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 05:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666159115; x=1697695115;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=foqCpn6Q82IwUH2XbMSSmlFM1tWRmsEADK4PAjjs6Zs=;
 b=NNWf71gxbIimOjvcXhYx5zmHugu+NgZlaCZD1RFtS1OJ3Wd+1jfdcwsl
 VavndIzIP7G2+jd6jAHNbmvsv7nsUO8b9ktnjYmVaBeWhHgPPvuurzbnH
 fSHyimKXFENaDrsisxgJ/pifMF5MM1jVFnziVRasASEHOKqkOoVWJKYWV
 neGv5lUAkMxapVzyvJZzjelJXBWkHytRztmcP0X79P8Zv+VJjYpbyy8zd
 YJF2Y3UED8xRlLb3bZFzNI647bCNf76EGXTKaTGKRpxg43VjZx5Wm/45A
 ku38bWZuog9Qz4liGsVY9swq8TnQO24bLaBIWA28Q1DsCSN37VSSnIv7e A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="305049393"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="305049393"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 22:58:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="629082878"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="629082878"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga002.jf.intel.com with ESMTP; 18 Oct 2022 22:58:34 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Oct 2022 23:00:41 -0700
Message-Id: <20221019060043.3749258-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V2 0/2] drm/i915/guc: Add GuC-Error-Capture-Init
 coverage of new engine types
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

After initial upstream merge of GuC error-capture feature, we eventually
decided to remove a lot of unnecessary warning messages when we couldn't
retrieve register lists for ADS-error-state-capture initialization. It was
a justified decision because the majority of that noise was being repeated
three times per GT reset and included list-types that are not supported
upstream. However after that change, we are not able to catch cases of
missing register lists for new engines that hadn't been added.

This series introduces new selective checks and warnings (such as skipping
if its a VF or if its an empty register list). This series also adds register
list for compute engine which is merely a duplicate of render class list.

Alan Previn (2):
  drm/i915/guc: Add error-capture init warnings when needed
  drm/i915/guc: Add compute reglist for guc err capture

 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 80 ++++++++++++++++---
 1 file changed, 71 insertions(+), 9 deletions(-)


base-commit: b249abef9f86f788e6bacc657ae8eb7743948200
-- 
2.34.1

