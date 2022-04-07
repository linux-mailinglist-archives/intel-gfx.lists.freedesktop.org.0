Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4954F7FB4
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 14:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A81B10EABE;
	Thu,  7 Apr 2022 12:59:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 619D010EADD
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 12:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649336392; x=1680872392;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=563hB/rXHNGZzJHbLZ19JTAegWPlZpDTmnNbjcAniLA=;
 b=iJuiDbcTx8j3KL9ttC1TjdZyPBy5K5zyp/rRArTSnL4zvA890E1asR4T
 an5KDfh17ogBOp6lo8LUILnr1fE99jVs5NRqFaZc3F3STbZI5A6Uqsgl9
 542bpbK+Uoh5M0X6+MWKgeBrNUH9TN25QDRAhOkhxmyng6wjbRqwbLfgB
 6p+9y9fM74tpY1F/nnO2UnWNtjL+iNhQGvhs2jMk9ysy45s4T9wkdHnY0
 J6s+wK9iwtseAtvOMIL3wMqjv23MJnmHflLK/P3iM55x5gg5yZSRXQrkP
 j+JnG3lu2idSg7vGFD3RzW7NrmjiQp4S5fskkN1ZmSECfS+4cHKFUSz59 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10309"; a="241245623"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="241245623"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 05:59:52 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="571040877"
Received: from sannilnx.jer.intel.com ([10.12.231.73])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 05:59:48 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Thu,  7 Apr 2022 15:58:27 +0300
Message-Id: <20220407125839.1479249-9-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220407125839.1479249-1-alexander.usyskin@intel.com>
References: <20220407125839.1479249-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/20] drm/i915/gsc: add slow_fw flag to the mei
 auxiliary device
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
Cc: linux-kernel@vger.kernel.org, Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add slow_fw flag to the mei auxiliary device info
to inform the mei driver about slow underlying firmware.
Such firmware will require to use larger operation timeouts.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 include/linux/mei_aux.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/mei_aux.h b/include/linux/mei_aux.h
index 587f25128848..a29f4064b9c0 100644
--- a/include/linux/mei_aux.h
+++ b/include/linux/mei_aux.h
@@ -11,6 +11,7 @@ struct mei_aux_device {
 	struct auxiliary_device aux_dev;
 	int irq;
 	struct resource bar;
+	bool slow_fw;
 };
 
 #define auxiliary_dev_to_mei_aux_dev(auxiliary_dev) \
-- 
2.32.0

