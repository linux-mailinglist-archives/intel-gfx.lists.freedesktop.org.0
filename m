Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 220695B0963
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 17:59:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0CD610E7BE;
	Wed,  7 Sep 2022 15:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22FB310E7BC
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 15:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662566365; x=1694102365;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p2EcS4Ec16euTVgTxkfMDzoAcraThNKdjheL2DjQbLU=;
 b=RBNOzCZoB58K0G85fKZAGHCGqhcaAXt4uJOvV5/TqzW8tGiwV/HfuKTl
 ZE3gqMIAtzvYX7sUunMqzW0U4IwWDnVpa/jqci/T3fHILX7/EIM3qhiUg
 ZfS2VL2PZn1k5O4D1qEZfNiXd4gW0ZHbp6OXjGLDj1F/GMFatvY/f+aY9
 /xFrTuLxT7exJR8H+DoBNJaku/1RXcb0GWVdiIxl5PBraebrJbQaGVOPF
 EBpHbATsTYiw/sIV7nk5w/fh9W++pZXjmV6vnPaSHXZJII3y279fH6UAt
 7f+icnLJQeB+l0l714EBv/YYnjInq/oS35jE3b2/OvEaBZOeH2gU/J4WZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="296916830"
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="296916830"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 08:58:48 -0700
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="676247561"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 08:58:45 -0700
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Wed,  7 Sep 2022 18:57:59 +0300
Message-Id: <20220907155813.1427526-3-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220907155813.1427526-1-tomas.winkler@intel.com>
References: <20220907155813.1427526-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 02/16] mei: add kdoc for struct mei_aux_device
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

struct mei_aux_device is an interface structure
requires proper documenation.

Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 include/linux/mei_aux.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/mei_aux.h b/include/linux/mei_aux.h
index 587f25128848..a0cb587006d5 100644
--- a/include/linux/mei_aux.h
+++ b/include/linux/mei_aux.h
@@ -7,6 +7,12 @@
 
 #include <linux/auxiliary_bus.h>
 
+/**
+ * struct mei_aux_device - mei auxiliary device
+ * @aux_dev: - auxiliary device object
+ * @irq: interrupt driving the mei auxiliary device
+ * @bar: mmio resource bar reserved to mei auxiliary device
+ */
 struct mei_aux_device {
 	struct auxiliary_device aux_dev;
 	int irq;
-- 
2.37.2

