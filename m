Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7449368796B
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 10:47:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D38CC10E4B5;
	Thu,  2 Feb 2023 09:47:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B9A010E4B5
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 09:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675331256; x=1706867256;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zxxFw/62VyMzn+psAvJOCd6mxSMdV8mVxxwOP2A/uSQ=;
 b=CxmdJFt/UTQshKEtfDjg9FW51Ps3YuikUvPWItAjysqqnceeHhCRUqLL
 35CJ5P4X6gY7IDcx0NC3k+u0FxQ2D8dXQu6jpzftlPwUy0lAwuUjiHGMp
 +hFltMBgzH0H9WSiCWI+Y06x+tn8jb4Zs7hRlbZwd0E1IIKjU9l8IvgRy
 HpIsjbpqPca8+5b53GVnYvEhPhcg0wLu0mEXuiQzPNiSr+UIkSqVUC4ud
 agGeqdZEKanbfB/o09vGpfXaoeIsA/Z6KE16HNUHuzzxPNmC/UWRaOy1t
 SnwlUXoJ9xha6d5GfBu52vsrezaZLeBGQy+d21n2ZElx8CzMgkWLMyOs/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="316403288"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="316403288"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 01:47:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="807910275"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="807910275"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga001.fm.intel.com with ESMTP; 02 Feb 2023 01:47:27 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Feb 2023 11:47:24 +0200
Message-Id: <20230202094726.6435-1-stanislav.lisovskiy@intel.com>
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

 drivers/gpu/drm/i915/display/intel_dp_mst.c | 28 +++++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

-- 
2.37.3

