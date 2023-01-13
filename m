Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AB4668909
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 02:19:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEB2D10E976;
	Fri, 13 Jan 2023 01:18:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A89310E1C4;
 Fri, 13 Jan 2023 01:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673572733; x=1705108733;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2Lxj77hEAJ3S07gtUnrmnuW0iUn6nVX/lat5FVlG5s8=;
 b=Vg52+gxo5ZPvlPaXW9rK3ZpMI7O17a7rc97cNA3squRi3Hcq/2CyWSnT
 Pr3q9DdiSoLBa+dqonl8/EEJX0xybbxN+i7ehIuh/DzFYrLooVqfTXgMd
 wzH9MZWHiPoqbVPmUQ7h1fGCU9w3QeWw8y8wwk7GRbXyqZERYA7C0kkFf
 rteW+9IzrJKd06tNRgHemMy8QvRvEVqh2or9caXsBtQrXnSMmvaLchcnH
 AAY5Gs73aKmqOfPKWu65GEp4iwTRSe6oh2lr4jwRX6OTerGr30yLN0SNZ
 oBI2IVlEkQK0rJkOWYq5iIfQquk4vO0UM6RSqbregLLFhom0NRinMlp0n g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="323941581"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="323941581"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 17:18:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="746761027"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="746761027"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Jan 2023 17:18:52 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Jan 2023 17:18:47 -0800
Message-Id: <20230113011850.1463965-4-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230113011850.1463965-1-alan.previn.teres.alexis@intel.com>
References: <20230113011850.1463965-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/6] mei: clean pending read with vtag on bus
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
	Vivi@freedesktop.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rodrigo <rodrigo.vivi@intel.com>,
	Alexander Usyskin <alexander.usyskin@intel.com>,
	dri-devel@lists.freedesktop.org,
	Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Alexander Usyskin <alexander.usyskin@intel.com>

Client on bus have only one vtag map slot and should disregard the vtag
value when cleaning pending read flag.
Fixes read flow control message unexpectedly generated when
clent on bus send messages with different vtags.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/misc/mei/client.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/misc/mei/client.c b/drivers/misc/mei/client.c
index 9ddb854b8155..5c19097266fe 100644
--- a/drivers/misc/mei/client.c
+++ b/drivers/misc/mei/client.c
@@ -1343,7 +1343,9 @@ static void mei_cl_reset_read_by_vtag(const struct mei_cl *cl, u8 vtag)
 	struct mei_cl_vtag *vtag_l;
 
 	list_for_each_entry(vtag_l, &cl->vtag_map, list) {
-		if (vtag_l->vtag == vtag) {
+		/* The client on bus has one fixed vtag map */
+		if ((cl->cldev && mei_cldev_enabled(cl->cldev)) ||
+		    vtag_l->vtag == vtag) {
 			vtag_l->pending_read = false;
 			break;
 		}
-- 
2.39.0

