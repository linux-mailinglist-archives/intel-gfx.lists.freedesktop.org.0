Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A44A40EC9B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 23:27:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 686E56EA52;
	Thu, 16 Sep 2021 21:26:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from wnew3-smtp.messagingengine.com (wnew3-smtp.messagingengine.com
 [64.147.123.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 367CD6E927;
 Thu, 16 Sep 2021 21:25:56 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.west.internal (Postfix) with ESMTP id B84122B011F6;
 Thu, 16 Sep 2021 17:16:41 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Thu, 16 Sep 2021 17:16:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=u92.eu; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=R/tidGid4Cs5Z
 uAv4KbqJodwLkPczaEEwqfZnwHWGhA=; b=Ww7IZCgPdJ/+CnohNULzwbPegKHZm
 2Fh5R4WPjB4Y81MyzS3+EckYPDynlcPE6sQQOwSX53OyiSKkaWOiMh4AFh7EXpAn
 +wRjliC1GBDKWX5G1m4fueYXC+jQSswijqD/0wZJqisS8vsNWQws2SQA6eUwCafY
 MHQOjNAXbFTxsRNiTHnC3h7rkVCBzSF2Oawk9eHriy7p/Vzg8/SWCnDOktGqTUiK
 hHnLWRzO8sTDjGtc3LmanAWho+I4FiCGWBu1Dk6yov6gMr5nILEIaP0xCHaNlad6
 LrhaLPss+rRkMvjBGCoOSMS8ODKXzKZT2C1Eu45YnxFpHw6YczUOlVMqA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=R/tidGid4Cs5ZuAv4KbqJodwLkPczaEEwqfZnwHWGhA=; b=o2nanYhl
 tJ6IrghK66DSKGstszmQbsNs/9ffr+s17BLdUcdTnDI3rES+6plBw1YtKahLbuFS
 D7jh8Qsic4+7+WuHiuLkbWiW2lfzMcRVI7TNMQstY2LKhw52HpTdPMBmnjaJt1Pr
 ECf2x0ftFJsjdXBsCT2TYpM5KJ47mBouT4whPF9N4YWFiKvqtrgCLmTtOZYQ7LzV
 gid6YHc3rF79+xNIxdyspAc1qkeb2otfhnE4smCW438kzJSwBffyt8BuevAUGtZr
 ZsQ3berHJ20M3Q8vLhfStTq99P/WQTAVsCh+PTetDRRj147Bh3TfnrztmyZ7AzgD
 e14RaGyP6+Btwg==
X-ME-Sender: <xms:ObRDYZ7yhET2pR1O0lfl4voYSG-yazq9YUaMssrZkS_WrbqM35ojJw>
 <xme:ObRDYW5dM5Rhn0yZr-imNxIZlf4uNUFx0uZnzTLDpIxPUr9Y5crukNzN_UMVNFAEj
 MEkrxqyjd-ps51_tg>
X-ME-Received: <xmr:ObRDYQf0l7yIpvoFLSWko3l9G7_o-Ie0q0pyE5Fx0QHc4GpIqVSIElCUvkIeam1VkgsU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudehgedgudehvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefhvghrnhgrnhguohcutfgrmhhoshcuoehgrhgvvghnfhho
 ohesuhelvddrvghuqeenucggtffrrghtthgvrhhnpeekleekjedtheejheekfefggeevvd
 fgueegffeuveduhfehueegkeeijedvvdejfeenucevlhhushhtvghrufhiiigvpeehnecu
 rfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvvghnfhhoohesuhelvddrvghu
X-ME-Proxy: <xmx:ObRDYSKdSB9h_UDhyjspM0TmpwERkwU-s9SzKBZGZmRHmZJQJEG9WA>
 <xmx:ObRDYdI3syJRkb3v7NwoxSWpd2tkAe33QrtMsNoivpLMUdz2bG09Sg>
 <xmx:ObRDYbwM9NzW-pIW8WdhdnP5TknDBiBWtTdeJTK_PjMKfzvEbNmD1Q>
 <xmx:ObRDYWVKJ5P7d5DsQZ0etF8JKSpwYUb9y0RBJdrIsKrDIl9KPSyZkKNK1M0>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 16 Sep 2021 17:16:38 -0400 (EDT)
From: Fernando Ramos <greenfoo@u92.eu>
To: dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org, sean@poorly.run, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org
Date: Thu, 16 Sep 2021 23:15:47 +0200
Message-Id: <20210916211552.33490-11-greenfoo@u92.eu>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210916211552.33490-1-greenfoo@u92.eu>
References: <20210916211552.33490-1-greenfoo@u92.eu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/15] drm/nouveau: cleanup:
 drm_modeset_lock_all() --> DRM_MODESET_LOCK_ALL_BEGIN()
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

As requested in Documentation/gpu/todo.rst, replace driver calls to
drm_modeset_lock_all() with DRM_MODESET_LOCK_ALL_BEGIN() and
DRM_MODESET_LOCK_ALL_END()

Signed-off-by: Fernando Ramos <greenfoo@u92.eu>
---
 drivers/gpu/drm/nouveau/dispnv50/disp.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/nouveau/dispnv50/disp.c
index d7b9f7f8c9e3..eb613af4cdd5 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
@@ -667,15 +667,17 @@ nv50_audio_component_bind(struct device *kdev, struct device *hda_kdev,
 	struct drm_device *drm_dev = dev_get_drvdata(kdev);
 	struct nouveau_drm *drm = nouveau_drm(drm_dev);
 	struct drm_audio_component *acomp = data;
+	struct drm_modeset_acquire_ctx ctx;
+	int ret;
 
 	if (WARN_ON(!device_link_add(hda_kdev, kdev, DL_FLAG_STATELESS)))
 		return -ENOMEM;
 
-	drm_modeset_lock_all(drm_dev);
+	DRM_MODESET_LOCK_ALL_BEGIN(drm_dev, ctx, 0, ret);
 	acomp->ops = &nv50_audio_component_ops;
 	acomp->dev = kdev;
 	drm->audio.component = acomp;
-	drm_modeset_unlock_all(drm_dev);
+	DRM_MODESET_LOCK_ALL_END(drm_dev, ctx, ret);
 	return 0;
 }
 
@@ -686,12 +688,14 @@ nv50_audio_component_unbind(struct device *kdev, struct device *hda_kdev,
 	struct drm_device *drm_dev = dev_get_drvdata(kdev);
 	struct nouveau_drm *drm = nouveau_drm(drm_dev);
 	struct drm_audio_component *acomp = data;
+	struct drm_modeset_acquire_ctx ctx;
+	int ret;
 
-	drm_modeset_lock_all(drm_dev);
+	DRM_MODESET_LOCK_ALL_BEGIN(drm_dev, ctx, 0, ret);
 	drm->audio.component = NULL;
 	acomp->ops = NULL;
 	acomp->dev = NULL;
-	drm_modeset_unlock_all(drm_dev);
+	DRM_MODESET_LOCK_ALL_END(drm_dev, ctx, ret);
 }
 
 static const struct component_ops nv50_audio_component_bind_ops = {
-- 
2.33.0

