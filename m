Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CABB4653906
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 23:52:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AC4710E138;
	Wed, 21 Dec 2022 22:51:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EB8810E137
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 22:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671663109; x=1703199109;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=dihkVAdrcYCS+uehz9anhQl84xJdTATy6LvWhxUMWQY=;
 b=FS48dB12A4iIno7HbXs3fLNyI6/1nJUNnGxUf+FVY23JpG033yL5SPYN
 QA3g7yFrnbvyasuQvoJbgi1BSkHm2/6dIEc9N0JBejdrgJ/FqrMZzwrni
 hdDfFiPOvumsVPEcCBx0/6ydlo4Px7qDVZsFcP+ky2cgjx0qdU84h6GJs
 AScm5rBzVQkVTpGX2T5+CsfN0qEriOt5dr6quCa5ZVkAcjNJ4ToOvLz3I
 ykfzalJXe1yOGq+EJaiHmx2EBiqY4pcZFn/1cZEEuu9LxfEcI+bqJy9G0
 qi/kUnC9Z0v8A7YgjO9/2uLG//PlsPEjU4lQzrn5IGbtSpzJs1pkHl/Rj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="300328211"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="300328211"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 14:51:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="682183971"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="682183971"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga008.jf.intel.com with ESMTP; 21 Dec 2022 14:51:48 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Dec 2022 14:54:35 -0800
Message-Id: <20221221225439.2714575-4-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221221225439.2714575-1-alan.previn.teres.alexis@intel.com>
References: <20221129004832.3735764-1-alan.previn.teres.alexis@intel.com>
 <20221221225439.2714575-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/7] mei: clean pending read with vtag on bus
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

From: Alexander Usyskin <alexander.usyskin@intel.com>

Client on bus have only one vtag map slot and should disregard the vtag
value when cleaning pending read flag.
Fixes read flow control message unexpectedly generated when
clent on bus send messages with different vtags.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
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
2.34.1

