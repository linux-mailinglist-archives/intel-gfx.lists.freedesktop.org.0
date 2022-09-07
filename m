Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2B05B0F91
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 23:52:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19CA210E8E7;
	Wed,  7 Sep 2022 21:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30A0310E8DB
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662587542; x=1694123542;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0Oosr1efZEAk/bzGsBCuZvDxX6WE7t3HGnW7Kpt3NhY=;
 b=nq03Gq3rIC7xLm/iQUgcvt6sUHq444sA6Kr+qRAE/t715MfQBMoyMgio
 4ExntogdfjkH7x53rqr+OYnliDbexap6BqsTEsY5cWT2gfxCrZ1ah7+WY
 npjWgbo1LHA4wcp/Ww+BHX0fj8ISnfmvrcS+LHbaD5cW0PhvPraemgiSh
 Agm3l5fF0yXBSKL98KGmJAhWDcDBelRBeF5IExh1qnzCX9AuZp5xnLZLC
 z9tJLBND65tB68aF3TLxJMi1+0dmu1XIlpnp4VRqYYnd5fta9v2OxaYBt
 5mpEEMbxXhZTidIJwoDhJKap/Uv1c8qBuzoWVhpklfCkBlDKR8mRAAJ42 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="358738967"
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="358738967"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 14:52:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="790208060"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.143])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 14:52:18 -0700
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Thu,  8 Sep 2022 00:51:10 +0300
Message-Id: <20220907215113.1596567-14-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220907215113.1596567-1-tomas.winkler@intel.com>
References: <20220907215113.1596567-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 13/16] mei: drop ready bits check after start
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
Cc: intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Alexander Usyskin <alexander.usyskin@intel.com>

The check that hardware and host ready bits are set after start
is redundant and may fail and disable driver if there is
back-to-back link reset issued right after start.
This happens during pxp mode transitions when firmware
undergo reset. Remove these checks to eliminate such failures.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
V8: New in the series
V9: Rebase

 drivers/misc/mei/init.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/misc/mei/init.c b/drivers/misc/mei/init.c
index 1b4d5d7870b9..bac8852aad51 100644
--- a/drivers/misc/mei/init.c
+++ b/drivers/misc/mei/init.c
@@ -218,16 +218,6 @@ int mei_start(struct mei_device *dev)
 		goto err;
 	}
 
-	if (!mei_host_is_ready(dev)) {
-		dev_err(dev->dev, "host is not ready.\n");
-		goto err;
-	}
-
-	if (!mei_hw_is_ready(dev)) {
-		dev_err(dev->dev, "ME is not ready.\n");
-		goto err;
-	}
-
 	if (!mei_hbm_version_is_supported(dev)) {
 		dev_dbg(dev->dev, "MEI start failed.\n");
 		goto err;
-- 
2.37.2

