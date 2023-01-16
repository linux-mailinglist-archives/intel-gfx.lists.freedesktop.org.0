Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B46C766BCAF
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 12:19:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01CB710E3CC;
	Mon, 16 Jan 2023 11:19:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D515410E3CC
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jan 2023 11:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673867980; x=1705403980;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uBEl5oRupbfA0VyNcIU/qVBLZaV4Uj2WZoQBv91g+WY=;
 b=AKqEkr+RvdIthZPfVz3+3RQrzZ2r3VFVv0fROctSbm25NnPuZYW85ATS
 HkRFExhTc31JlMASwjkFDhv613NpEN+COaDW81ORt3Nmv7vLk70QxyXXS
 3Fl5d5oiFXd1WV3kIrWsQhLKHt1u3akNdzsvxtLKrxaN0HEuWTBQeoLiT
 U4C/QGLA4Q0v3F2zzDAnO2TjdoTluHUEeeTjqcXUJAO71E0PM3fPbd2q8
 Pd/J77kU/AS1xb5sS3KzA7b7N5H4DKCS4LjIxcd+1etULqW7I9NnARCt8
 ASNwRZ+/myKVltdzjaeF6cpqU31R3MXUETAi9sY1jTfJGf8qiegrmDnJM A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="386785788"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="386785788"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 03:19:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="689459326"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="689459326"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga008.jf.intel.com with ESMTP; 16 Jan 2023 03:19:38 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Jan 2023 13:19:35 +0200
Message-Id: <20230116111937.875-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] We need to have additional checks for DP
 MST UHBR
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

According to BSpec UHBR might hit hw limitation which must be checked.
So this series adds first some generic checker function, which might
be used to add this or similar checks in future, then we introduce
that particular UHBR check.

Stanislav Lisovskiy (2):
  drm/i915: Add generic constraint checker when determining DP MST DSC
    bpp
  drm/i915: Implement UHBR bandwidth check

 drivers/gpu/drm/i915/display/intel_dp_mst.c | 26 +++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

-- 
2.37.3

