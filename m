Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD4162BE95
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 13:48:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013CE10E4A5;
	Wed, 16 Nov 2022 12:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7FA510E4A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 12:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668602887; x=1700138887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ObjukXOqfUoSlSHWt+gB5nKjWOUIqtAmQ5a7qWIzcAg=;
 b=iwvmxCDcKYddcIWyAvquDYuHUFxzuAIULEw8BwjPr0CaDb4tPweDZ7Tc
 GwonQkYtr68tKKvc4nchPSWIQDuzCW92p7FqIY2C0rRCDSgUm9moBpmRm
 srklPeNz5bwtlbchZz+uztrR/jgT4F4QBMlN8nH6m7xWksdnW5a6tnZqo
 xAySyBc5jjqphTq0B1aZRAR38cyX+p3tanJXHoM8WLf9uhFTXTX+rObpB
 phE4uHAEal0FY1+ypxfPX7MZ80k2vMpkTFot1XpmWIa8D45/iHy6igv6F
 wEMCj0UaMKh1RRo+TgY9NkPPZpWex6acnYUJ1pCPeNiH6U/Lsry5Xr5l/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="311241002"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="311241002"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 04:48:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="633618121"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="633618121"
Received: from sannilnx.jer.intel.com ([10.12.26.175])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 04:47:52 -0800
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Wed, 16 Nov 2022 14:47:35 +0200
Message-Id: <20221116124735.2493847-3-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221116124735.2493847-1-alexander.usyskin@intel.com>
References: <20221116124735.2493847-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] mei: bus-fixup: change pxp mode only if
 message was sent
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

Move PXP mode state machine to SETUP mode only if
memory ready message sent successfully to the firmware.
Leave it in INIT mode otherwise to allow try to send message later.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/misc/mei/bus-fixup.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/misc/mei/bus-fixup.c b/drivers/misc/mei/bus-fixup.c
index 90023c34666e..6df7679d9739 100644
--- a/drivers/misc/mei/bus-fixup.c
+++ b/drivers/misc/mei/bus-fixup.c
@@ -266,12 +266,13 @@ static void mei_gsc_mkhi_fix_ver(struct mei_cl_device *cldev)
 
 	if (cldev->bus->pxp_mode == MEI_DEV_PXP_INIT) {
 		ret = mei_gfx_memory_ready(cldev);
-		if (ret < 0)
+		if (ret < 0) {
 			dev_err(&cldev->dev, "memory ready command failed %d\n", ret);
-		else
+		} else {
 			dev_dbg(&cldev->dev, "memory ready command sent\n");
+			cldev->bus->pxp_mode = MEI_DEV_PXP_SETUP;
+		}
 		/* we go to reset after that */
-		cldev->bus->pxp_mode = MEI_DEV_PXP_SETUP;
 		goto out;
 	}
 
-- 
2.34.1

