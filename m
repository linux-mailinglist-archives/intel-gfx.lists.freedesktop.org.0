Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A3B67B1EF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 12:49:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F57410E7AE;
	Wed, 25 Jan 2023 11:49:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D77610E7A7;
 Wed, 25 Jan 2023 11:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674647345; x=1706183345;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fKoVRQNfxRte/j7ajZx9ISAihrKVDD3YxQnBEpRy6+U=;
 b=kEAg34YQSMIiAo6/BrtBaWkFSpMlgIIGpU9ayRDaaT0iFfZYEAk5paju
 AEPZ/0lq9hMXvZnvNKgZx+54WgjOkGQgITCm6AZL26Ip6s3wI6gc2EA3D
 WIc2oxYLCFuEhXD0mOxQD3GPnJWItpjcISfb+0av65eHw4a5QDlYSr8KV
 CFxkJbSGJ4cHN4BcR+KB4m8ncwfG2ii3Fh53NDI9N35H1VDJPwR2bI1if
 g8warHdptLlM1x0PsJVuVEeOt2h2EUgp0SamEFgaNlPUSaKAacHnXMpVT
 5VjxMkSzWcgCC21Z51GDy6WQ+qmO39d3+NKMqqPild8+rkdnQR9t3x/ST w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="412769930"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="412769930"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:49:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="786399712"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="786399712"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:49:03 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 13:48:48 +0200
Message-Id: <20230125114852.748337-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230125114852.748337-1-imre.deak@intel.com>
References: <20230125114852.748337-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/9] drm/display/dp_mst: Fix the payload VCPI
 check in drm_dp_mst_dump_topology()
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix an off-by-one error in the VCPI check in drm_dp_mst_dump_topology().

Cc: Lyude Paul <lyude@redhat.com>
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index 81cc0c3b1e000..619f616d69e20 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -4770,7 +4770,7 @@ void drm_dp_mst_dump_topology(struct seq_file *m,
 		list_for_each_entry(payload, &state->payloads, next) {
 			char name[14];
 
-			if (payload->vcpi != i || payload->delete)
+			if (payload->vcpi != i + 1 || payload->delete)
 				continue;
 
 			fetch_monitor_name(mgr, payload->port, name, sizeof(name));
-- 
2.37.1

