Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D13657A8D37
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 21:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 759DD10E54D;
	Wed, 20 Sep 2023 19:56:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAC8C10E550
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 19:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1695239792;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Tt1oyx9UBclJogZ6DRbxVIlbM0rrfuuxabal50tETcg=;
 b=gy9yx7pKczmMBquQ4NDrvl9Q+Ck66iKXt1T4KNj52GSEOxlSaKOCUJYRSZytdsXHlal5yP
 q4A7JeUoNz41waOVUVOqhvJPp2WPAdKDwBe7g8U0rGhh24gNy/0wv6qyFZHsbWVf+t//u4
 vGa41l/6LN1zj3IDiOms6WmPeqqdQ6c=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-257-f2OOlMuiOtWIB8SvOKjcNQ-1; Wed, 20 Sep 2023 15:56:29 -0400
X-MC-Unique: f2OOlMuiOtWIB8SvOKjcNQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE9991818840;
 Wed, 20 Sep 2023 19:56:28 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.195.126])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B9688C15BB8;
 Wed, 20 Sep 2023 19:56:27 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Wed, 20 Sep 2023 21:56:13 +0200
Message-ID: <20230920195613.304091-5-hdegoede@redhat.com>
In-Reply-To: <20230920195613.304091-1-hdegoede@redhat.com>
References: <20230920195613.304091-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/dsi: Add some debug logging to
 mipi_exec_i2c (v2)
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
Cc: Hans de Goede <hdegoede@redhat.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add some debug logging to mipi_exec_i2c, to make debugging various
issues seen with it easier.

Changes in v2:
- Drop unnecessary __func__ drm_dbg_kms() argument

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index e56ec3f2d84a..24b2cbcfc1ef 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -565,6 +565,9 @@ static const u8 *mipi_exec_i2c(struct intel_dsi *intel_dsi, const u8 *data)
 	u8 payload_size = *(data + 6);
 	u8 *payload_data;
 
+	drm_dbg_kms(&i915->drm, "bus %d client-addr 0x%02x reg 0x%02x data %*ph\n",
+		    vbt_i2c_bus_num, slave_addr, reg_offset, payload_size, data + 7);
+
 	if (intel_dsi->i2c_bus_num < 0) {
 		intel_dsi->i2c_bus_num = vbt_i2c_bus_num;
 		i2c_acpi_find_adapter(intel_dsi, slave_addr);
-- 
2.41.0

