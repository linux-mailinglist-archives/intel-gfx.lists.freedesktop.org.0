Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A8C24C583
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 20:31:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF39F6E9FB;
	Thu, 20 Aug 2020 18:31:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FA686E9FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Aug 2020 18:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1597948287;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0voShhwhtzYr2KtRr3u+pQ89aQmDPNWLEdGZaEsKjCQ=;
 b=DcEA2rRJbDn1UN4Hih7uPwh4OX+amTLxLonLxzhSLqaUtJqNy7hkrBpy3+LQgT6s+hY8rX
 NELDoiAwDGcHy2b1NI782zczKrN+JZoiaCs0BJajf0RhhTsgNPQ47T5xE9Bm/AYRiATb4b
 eXKrVeIM9mZ3QZ2GpoiBaHczjTgEML0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-529-v1iOWCRdNJa14miR8l0MkA-1; Thu, 20 Aug 2020 14:31:25 -0400
X-MC-Unique: v1iOWCRdNJa14miR8l0MkA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 794A818686FA;
 Thu, 20 Aug 2020 18:31:24 +0000 (UTC)
Received: from Whitewolf.redhat.com (ovpn-120-42.rdu2.redhat.com
 [10.10.120.42])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BDB295DA74;
 Thu, 20 Aug 2020 18:31:23 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nouveau@lists.freedesktop.org
Date: Thu, 20 Aug 2020 14:30:12 -0400
Message-Id: <20200820183012.288794-21-lyude@redhat.com>
In-Reply-To: <20200820183012.288794-1-lyude@redhat.com>
References: <20200820183012.288794-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Subject: [Intel-gfx] [RFC v2 20/20] drm/nouveau/kms: Start using
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
index 89afc97ee2591..271a0a863a0e1 100644
--- a/drivers/gpu/drm/nouveau/nouveau_dp.c
+++ b/drivers/gpu/drm/nouveau/nouveau_dp.c
@@ -55,15 +55,13 @@ nouveau_dp_probe_dpcd(struct nouveau_connector *nv_connector,
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
