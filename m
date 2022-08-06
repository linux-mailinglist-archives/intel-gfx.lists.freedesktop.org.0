Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9600858B58E
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Aug 2022 14:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A92011A118;
	Sat,  6 Aug 2022 12:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1EBFC1750
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Aug 2022 12:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659788841; x=1691324841;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PJsGoT+j4Bs8ncLa5K0pAkQgOVnmbbiPh2T9DtQ2FhI=;
 b=GD7JMc6Eye8KwAFw342bWECHyAsGcHZwiLcNsGJOIjzhnzg39eE/wjpr
 J6nu7nVHluBRHMYfMrmYy/dvVtW1zB0dqzJbf6YqiG5j9IcQ/oRRcvO9k
 ReP1hS9z8X+W+jhfNFkve9uu4GZy89bBuDY/+Bgo8oz8VBjvLVSRB/uUC
 DQZktpHblSDoGbZyr5bKB7cxHfuR71MJlDSUQNBW3ZHS0S6LdF2Cfv56X
 M/UzVNaYGhYjo9DUFJJCktr1/BDjZyTIjRRTcJApveiGHMd5Jd0DhtJQ/
 eW01WVFe8+eeXZMMhWwwQ09VPrATsxxRoULNjLg2na7pj+EcdrxXQg6k4 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="376658379"
X-IronPort-AV: E=Sophos;i="5.93,217,1654585200"; d="scan'208";a="376658379"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2022 05:27:19 -0700
X-IronPort-AV: E=Sophos;i="5.93,217,1654585200"; d="scan'208";a="632329036"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.143])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2022 05:27:16 -0700
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Sat,  6 Aug 2022 15:26:23 +0300
Message-Id: <20220806122636.43068-3-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220806122636.43068-1-tomas.winkler@intel.com>
References: <20220806122636.43068-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 02/15] mei: add kdoc for struct mei_aux_device
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
2.37.1

