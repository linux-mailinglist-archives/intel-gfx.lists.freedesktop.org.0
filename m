Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58193557C87
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 15:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E7510ED62;
	Thu, 23 Jun 2022 13:09:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4689F10ED62
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 13:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655989765; x=1687525765;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rZVykARZEH8XICNf2gsvs7YOn/eGREdFdVEnhQ9QiXM=;
 b=PK10sgfeJ0NiB4UpR5vzSEV+GaIm9R8uuT86b3vfTQzjEEtvyo0Ydyn+
 gaCOsmZtvd+uoF5gV9UETPGm1JN2WmdX/cgARQcgqIWqz4WDS1WxYTPOp
 3K21JcN1BOBu+g6p1YYH+YxD5XWPXV6GzqZCNbu4I3AxyW0AO1hh2vVAw
 ELncD2JOW24UvWUUXqoLeStM0+8RPBLjMX6ASO9qczr7XMoptH2iUIZk4
 D5Dn+CkDqVX3+FtOhJAEqQmrWumHbU7fne+Hp51pCk+ynN2GuxY35ivDs
 Vld6ch2HlotPFOF24IMd9q5a9HGweVkgp7udJxTIC+b84D+KDwQSyDq/X w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="344703323"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="344703323"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 06:09:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="678051207"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by FMSMGA003.fm.intel.com with SMTP; 23 Jun 2022 06:09:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jun 2022 16:09:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jun 2022 16:08:58 +0300
Message-Id: <20220623130900.26078-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
References: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/9] drm/i915: Use _MMIO_PIPE2() where
 appropriate
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Stop hand rolling _MMIO_TRANS2() and just use the real thing.
Note that this register isn't even used atm, hence why this
builds despite the _PIPE2() macro not actually existing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8bcde74e9217..36505c75e6b5 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4407,7 +4407,7 @@
 #define DSPLINOFF(plane)	DSPADDR(plane)
 #define DSPOFFSET(plane)	_MMIO_PIPE2(plane, _DSPAOFFSET)
 #define DSPSURFLIVE(plane)	_MMIO_PIPE2(plane, _DSPASURFLIVE)
-#define DSPGAMC(plane, i)	_MMIO(_PIPE2(plane, _DSPAGAMC) + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */
+#define DSPGAMC(plane, i)	_MMIO_PIPE2(plane, _DSPAGAMC + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */
 
 /* CHV pipe B blender and primary plane */
 #define _CHV_BLEND_A		0x60a00
-- 
2.35.1

