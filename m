Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 927D26B3668
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 07:11:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E665410E070;
	Fri, 10 Mar 2023 06:11:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83E7C10E070
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 06:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678428677; x=1709964677;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IzIUfHlfDyBpfyFCBKfo0OhRCTecjoV8ADuVzWwWzdQ=;
 b=dkf9O8bff1Rb/qM+UL4xEg8M38YRLSuiqMiCWX46fH0SiSKfxXeFmTB3
 s0V6DTzF21h/3z6HaqKqzKkTGFDT41a7phpIpVncqNx+xsM6HSb+nKYLQ
 LMHNw5wFFTOlhnceQg4CrHZ7QoBh/0PNemHWEy20PkTLf/ZVzMEL02KUN
 LYkOuBviX7k8S65SnTZGXhDkho+4AT9Ibe4Wep1eiCZ+Q155ez8D6i9ih
 WZb/5UaJEvwi3q5QYINUd1jMHyLWpXJQZ//z/syhcIyWRQ9+Hk14/XHuN
 3vIy/CBqjovKdoAoxwBk9kk56/k6K+bYAMAkwqhasZfiZz4CKzTQVUfDU A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="399254218"
X-IronPort-AV: E=Sophos;i="5.98,248,1673942400"; d="scan'208";a="399254218"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 22:11:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="801460531"
X-IronPort-AV: E=Sophos;i="5.98,248,1673942400"; d="scan'208";a="801460531"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 22:11:14 -0800
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Mar 2023 11:43:38 +0530
Message-Id: <20230310061339.2495416-1-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/1] drm/i915/mtl: Disable MC6 for MTL A step
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
Cc: hima.b.chilmakuru@intel.com, rodrigo.vivi@intel.com,
 gregory.f.germano@intel.com, srikanth.nandamuri@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Disabling MC6 for A step as it is not feasible to extend 
Wa_14017073508 in forcewake path to cover all corner cases. 
Reverting the commit 8f70f1ec587da. 

v2 - Combined patch1 and patch2 from rev1 

Badal Nilawar (1):
  drm/i915/mtl: Disable MC6 for MTL A step

 drivers/gpu/drm/i915/gt/intel_gt_pm.c     | 27 -----------------------
 drivers/gpu/drm/i915/gt/intel_rc6.c       |  8 +++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c | 13 +----------
 drivers/gpu/drm/i915/i915_reg.h           |  9 --------
 4 files changed, 9 insertions(+), 48 deletions(-)

-- 
2.25.1

