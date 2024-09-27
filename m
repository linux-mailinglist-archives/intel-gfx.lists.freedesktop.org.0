Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A8E987E1E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 08:07:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38A3910EC19;
	Fri, 27 Sep 2024 06:07:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J3CtO8K/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFAF610EC19
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2024 06:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727417230; x=1758953230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nP3061qgHpQ8U3kbbh7/9jzQ5XT4MEfyg7ZEnMezJOg=;
 b=J3CtO8K/ux59Vs+pM1xDeLtF50os9xKcR9tL1RQnDxO4rJyVTEWOHg6d
 4sXP6S31ARbOJvOcle5AGGR17aFWoft/9xAqC5U9FAnxq7uEYceaXACBR
 yL6wr2YF2QKFmDjx1BCxc1UgORwKZA2F75OjInyzdj5EAL9deN29lU+/X
 zer+rBvwYKzqNjyEbF0C4m+R2W6/GyZp+pO54AO5kOgKuCmeCs2ZjZ8HB
 H6dgM+7dENMFYm4lNZZ7cSeUiMCr2hwJhmkMbqC1RQ5GTz3If+WxIUYdE
 RT2yAoBZbRrHn63tC9OmlFCh+FxoyvV3gSVAU4+V1Fc4aa6S6TWTSrl7n w==;
X-CSE-ConnectionGUID: RLCxLhvnR8W3sxDuVSn7BQ==
X-CSE-MsgGUID: CrpKpNtNTfG5L5KPN6c2OQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="37116860"
X-IronPort-AV: E=Sophos;i="6.11,157,1725346800"; d="scan'208";a="37116860"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 23:07:09 -0700
X-CSE-ConnectionGUID: tvg4npYZSXSUQNmseIHeVw==
X-CSE-MsgGUID: vPbPC+B+SYaeU2X5JEQabw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,157,1725346800"; d="scan'208";a="77195180"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa005.jf.intel.com with ESMTP; 26 Sep 2024 23:07:08 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Retry first read and writes to downstream
Date: Fri, 27 Sep 2024 11:34:37 +0530
Message-ID: <20240927060437.1422942-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240925065658.1269767-1-suraj.kandpal@intel.com>
References: <20240925065658.1269767-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Retry the first read and write to downstream at least 10 times
with a 50ms delay if not hdcp2 capable(dock decides to stop advertising
hdcp2 capability for some reason). The reason being that
during suspend resume Dock usually keep the HDCP2 registers inaccesible
causing AUX error. This wouldn't be a big problem if the userspace
just kept retrying with some delay while it continues to play low
values content but most userpace applications end up throwing an error
when it receives one from KMD. This makes sure we give the dock
and the sink devices to complete its power cycle and then try HDCP
authentication.

--v2
-Add more details in comment [Jani]
-fix looping condition [Jani]
-optimize loop exit condition [Jani]

--v3
-Add comment explaining why the loop was added [Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 37 ++++++++++++++++++-----
 1 file changed, 30 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 2afa92321b08..00d4c9ac6c45 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1512,7 +1512,7 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	} msgs;
 	const struct intel_hdcp_shim *shim = hdcp->shim;
 	size_t size;
-	int ret;
+	int ret, i;
 
 	/* Init for seq_num */
 	hdcp->seq_num_v = 0;
@@ -1522,13 +1522,36 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	if (ret < 0)
 		return ret;
 
-	ret = shim->write_2_2_msg(connector, &msgs.ake_init,
-				  sizeof(msgs.ake_init));
-	if (ret < 0)
-		return ret;
+	/*
+	 * Retry the first read and write to downstream at least 10 times
+	 * with a 50ms delay if not hdcp2 capable(dock decides to stop advertising
+	 * hdcp2 capability for some reason). The reason being that
+	 * during suspend resume dock usually keeps the HDCP2 registers inaccesible
+	 * causing AUX error. This wouldn't be a big problem if the userspace
+	 * just kept retrying with some delay while it continues to play low
+	 * value content but most userpace applications end up throwing an error
+	 * when it receives one from KMD. This makes sure we give the dock
+	 * and the sink devices to complete its power cycle and then try HDCP
+	 * authentication. The values of 10 and delay of 50ms was decided based
+	 * on multiple trial and errors.
+	 */
+	for (i = 0; i < 10; i++) {
+		if (!intel_hdcp2_get_capability(connector)) {
+			msleep(50);
+			continue;
+		}
+
+		ret = shim->write_2_2_msg(connector, &msgs.ake_init,
+					  sizeof(msgs.ake_init));
+		if (ret < 0)
+			continue;
+
+		ret = shim->read_2_2_msg(connector, HDCP_2_2_AKE_SEND_CERT,
+					 &msgs.send_cert, sizeof(msgs.send_cert));
+		if (ret > 0)
+			break;
+	}
 
-	ret = shim->read_2_2_msg(connector, HDCP_2_2_AKE_SEND_CERT,
-				 &msgs.send_cert, sizeof(msgs.send_cert));
 	if (ret < 0)
 		return ret;
 
-- 
2.43.2

