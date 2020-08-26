Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B13A02536F8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 20:26:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA1F66EAD0;
	Wed, 26 Aug 2020 18:26:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5D6D6EACC
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 18:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598466375;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=35rHv6yAPDZviSzUI6usWQKLdZ1pcNOajmAO8CrvWqA=;
 b=KcLe2T7VteDeI2oILsTsD5NW4KdliGzHua9r9C8lG0JRqoI5quh5qf0ZLMK58adGIbAsLs
 qPGvDPglX42bULJB/ukHREf5TDyNtfwi6e0C1YZKZPlFW/10aTZUQGFsHjeZZcLGQsg9bz
 CU7MNbg6OcjxOQ3yTMRTVbvrvpgePms=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-483-cBkSOHBkM9SG-hdG5iOtwg-1; Wed, 26 Aug 2020 14:26:14 -0400
X-MC-Unique: cBkSOHBkM9SG-hdG5iOtwg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B97B5801ABA;
 Wed, 26 Aug 2020 18:26:12 +0000 (UTC)
Received: from Whitewolf.redhat.com (ovpn-119-77.rdu2.redhat.com
 [10.10.119.77])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E14A5100238C;
 Wed, 26 Aug 2020 18:26:11 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nouveau@lists.freedesktop.org
Date: Wed, 26 Aug 2020 14:24:56 -0400
Message-Id: <20200826182456.322681-21-lyude@redhat.com>
In-Reply-To: <20200826182456.322681-1-lyude@redhat.com>
References: <20200826182456.322681-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: [Intel-gfx] [PATCH v5 20/20] drm/nouveau/kms: Start using
 drm_dp_read_dpcd_caps()
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
Cc: David Airlie <airlied@linux.ie>, Ben Skeggs <bskeggs@redhat.com>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that we've extracted i915's code for reading both the normal DPCD
caps and extended DPCD caps into a shared helper, let's start using this
in nouveau to enable us to start checking extended DPCD caps for free.

Signed-off-by: Lyude Paul <lyude@redhat.com>
Reviewed-by: Ben Skeggs <bskeggs@redhat.com>
---
 drivers/gpu/drm/nouveau/nouveau_dp.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/nouveau_dp.c b/drivers/gpu/drm/nouveau/nouveau_dp.c
index 59be357b17e00..810bf69565683 100644
--- a/drivers/gpu/drm/nouveau/nouveau_dp.c
+++ b/drivers/gpu/drm/nouveau/nouveau_dp.c
@@ -54,15 +54,13 @@ nouveau_dp_probe_dpcd(struct nouveau_connector *nv_connector,
 	int ret;
 	u8 *dpcd = outp->dp.dpcd;
 
-	ret = drm_dp_dpcd_read(aux, DP_DPCD_REV, dpcd, DP_RECEIVER_CAP_SIZE);
-	if (ret == DP_RECEIVER_CAP_SIZE && dpcd[DP_DPCD_REV]) {
-		ret = drm_dp_read_desc(aux, &outp->dp.desc,
-				       drm_dp_is_branch(dpcd));
-		if (ret < 0)
-			goto out;
-	} else {
+	ret = drm_dp_read_dpcd_caps(aux, dpcd);
+	if (ret < 0)
+		goto out;
+
+	ret = drm_dp_read_desc(aux, &outp->dp.desc, drm_dp_is_branch(dpcd));
+	if (ret < 0)
 		goto out;
-	}
 
 	if (nouveau_mst) {
 		mstm = outp->dp.mstm;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
