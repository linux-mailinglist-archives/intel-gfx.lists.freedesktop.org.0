Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7899C563B24
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 22:32:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9546A112FC3;
	Fri,  1 Jul 2022 20:32:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6DD6112FC3
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 20:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1656707561;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=DwOaP2o/ijrgj8vUo4oYF/o/pPE6cbtbSwpHocDbRsE=;
 b=J/21fYwzBjcglOmjKGXbpwkJAR84X5xwSE3O0cPKszAZuyHqtn44+/gWbY0KmqH0p7RKog
 Yqeidu5qiAT3alOLezcHskG9ICNYO9mYOhV93ErcS2hs4Qn/EQqh3cJl+WfOHgEzdDURh7
 Z2AxZj+iNzFAP8hj23o3yUPlSFuQkIY=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-392-J94BsRfLMYC1IOZq3_uSRQ-1; Fri, 01 Jul 2022 16:32:40 -0400
X-MC-Unique: J94BsRfLMYC1IOZq3_uSRQ-1
Received: by mail-qk1-f198.google.com with SMTP id
 m15-20020a05620a290f00b006a74cf760b2so2779300qkp.20
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Jul 2022 13:32:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DwOaP2o/ijrgj8vUo4oYF/o/pPE6cbtbSwpHocDbRsE=;
 b=RVUWsae0g/VpDE+1QjFcMevMMIh4shbpRMCacuM7rzEJqG6A21JktjZYLBPL4Rk3aw
 +nyu972vF5wOEXRViT3YpTxrmCYeuZZYby8+Z4/LgcMQh/OS2voP+qhEG21FNANpvijc
 EtU906BnQufNTiZr1p769pvf0P3iDudpjTs4NDqAuJpXv0y1R8rb6jaYaqrYgK4ainyq
 tAzA8rEEByEZ8MEUAm7qnr1GdS+dVZ5osoYmpbZ6yDb5Q2vVOlJkV7bo2QdlrST6eYxd
 bEb9BFYXJN9T9TI2BMUFZJYTmb69lMXgGaAi34AlzOujSMrcAQVm9TCvI7KSRlfWM6OD
 FAtw==
X-Gm-Message-State: AJIora+uxpstYeKNG7LvjfeTXOZaqvAKOWp0/Lq2EYnnHwzWGFTtL8Zc
 c61inCidWqAEqsGdxHO7lFuT7UZEeXrILUrUsl9pHYTaXuPWoIa+51xzsVNm0ZfnlndUe/f0cys
 NErb4Dww/F7QvWvZuU2xCT6p8G8TX
X-Received: by 2002:a05:620a:75b:b0:6ae:e611:bd5 with SMTP id
 i27-20020a05620a075b00b006aee6110bd5mr11871044qki.319.1656707560371; 
 Fri, 01 Jul 2022 13:32:40 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1ugnMWyfmfVtM3ayR6RS9jLsuRyWUyzIriYbwM9D2BNQBRCrpDRP+IBJ4J8OiSPKazN46nuHg==
X-Received: by 2002:a05:620a:75b:b0:6ae:e611:bd5 with SMTP id
 i27-20020a05620a075b00b006aee6110bd5mr11871017qki.319.1656707560141; 
 Fri, 01 Jul 2022 13:32:40 -0700 (PDT)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 c3-20020ac84e03000000b00304f55e56e4sm15139103qtw.40.2022.07.01.13.32.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Jul 2022 13:32:39 -0700 (PDT)
From: Tom Rix <trix@redhat.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tvrtko.ursulin@linux.intel.com, airlied@linux.ie,
 daniel@ffwll.ch, jose.souza@intel.com, jouni.hogander@intel.com,
 gwan-gyeong.mun@intel.com, ville.syrjala@linux.intel.com,
 matthew.d.roper@intel.com
Date: Fri,  1 Jul 2022 16:32:36 -0400
Message-Id: <20220701203236.1871668-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
Subject: [Intel-gfx] [PATCH] drm/i915/display: clean up comments
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
Cc: Tom Rix <trix@redhat.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

spelling changes
resoluition -> resolution
dont        -> don't
commmit     -> commit
Invalidade  -> Invalidate

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7d61c55184e5..e6a870641cd2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -555,7 +555,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 		/*
 		 * TODO: 7 lines of IO_BUFFER_WAKE and FAST_WAKE are default
 		 * values from BSpec. In order to setting an optimal power
-		 * consumption, lower than 4k resoluition mode needs to decrese
+		 * consumption, lower than 4k resolution mode needs to decrease
 		 * IO_BUFFER_WAKE and FAST_WAKE. And higher than 4K resolution
 		 * mode needs to increase IO_BUFFER_WAKE and FAST_WAKE.
 		 */
@@ -959,7 +959,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	int psr_setup_time;
 
 	/*
-	 * Current PSR panels dont work reliably with VRR enabled
+	 * Current PSR panels don't work reliably with VRR enabled
 	 * So if VRR is enabled, do not enable PSR.
 	 */
 	if (crtc_state->vrr.enable)
@@ -1664,7 +1664,7 @@ static void intel_psr2_sel_fetch_pipe_alignment(const struct intel_crtc_state *c
  *
  * Plane scaling and rotation is not supported by selective fetch and both
  * properties can change without a modeset, so need to be check at every
- * atomic commmit.
+ * atomic commit.
  */
 static bool psr2_sel_fetch_plane_state_supported(const struct intel_plane_state *plane_state)
 {
@@ -2203,7 +2203,7 @@ static void _psr_invalidate_handle(struct intel_dp *intel_dp)
 }
 
 /**
- * intel_psr_invalidate - Invalidade PSR
+ * intel_psr_invalidate - Invalidate PSR
  * @dev_priv: i915 device
  * @frontbuffer_bits: frontbuffer plane tracking bits
  * @origin: which operation caused the invalidate
-- 
2.27.0

