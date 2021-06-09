Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BA13A1EFF
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 23:29:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E06216EB57;
	Wed,  9 Jun 2021 21:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 350 seconds by postgrey-1.36 at gabe;
 Wed, 09 Jun 2021 21:29:30 UTC
Received: from mail-4321.protonmail.ch (mail-4321.protonmail.ch [185.70.43.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12F2A6EB57
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 21:29:30 +0000 (UTC)
Received: from mail-02.mail-europe.com (mail-0201.mail-europe.com
 [51.77.79.158])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 by mail-4321.protonmail.ch (Postfix) with ESMTPS id 4G0g946MCXz4xVth
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 21:24:24 +0000 (UTC)
Authentication-Results: mail-4321.protonmail.ch;
 dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr
 header.b="eIHkNV2R"
Date: Wed, 09 Jun 2021 21:24:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail3; t=1623273861;
 bh=HOJnTStK1H9lEzyOT9wp33tz33iSfinHkHc1uA7cHQA=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=eIHkNV2RswfouuTGnfK6xEBmk7KaBbLlKGHYmpg9cfPGWvDGItXEchqsKM1d6DXM1
 4cnjx8ymKKRfCRkuOEoXs0fWnW3YaJeQ42XyqaWLLEJlgC5ZPIhcGv3RwsOEI1uAr0
 h687RKsGU1rDwGsCRUeXGfgzMPtlKfEoErHOV2R3xFVTQKeaBZF16mIrtvnI1Xs5Vu
 TK5zQjAkWZ3w3Vs9DbO6XNp1flytul1c0WUm2G+IrLYGNQ8+YQVJgU5moUJnnFcvm+
 LKxsZ0zzeWdxWwq/xlJ7bcgTEbyS1Qi4lzIUZj63HMhDmbC9ctpVY+FmGULv2Q470K
 oDj9UlfpAz7Ww==
To: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
From: Simon Ser <contact@emersion.fr>
Message-ID: <KRoUI7OC9lRIvk3YzdGm6tcMVAVlG1fR78Ll7kTZZT4@cp3-web-051.plabs.ch>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: [Intel-gfx] [PATCH v2 7/7] drm/connector: add ref to
 drm_connector_get in iter docs
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
Reply-To: Simon Ser <contact@emersion.fr>
Cc: pekka.paalanen@collabora.com, michel@daenzer.net, alexander.deucher@amd.com,
 harry.wentland@amd.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Mention that connectors need to be referenced manually if they are
to be accessed after the iteration has progressed or ended.

Signed-off-by: Simon Ser <contact@emersion.fr>
---
 include/drm/drm_connector.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 714d1a01c065..c1af1e4ca560 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1735,6 +1735,11 @@ void drm_mode_put_tile_group(struct drm_device *dev,
  * drm_connector_list_iter_begin(), drm_connector_list_iter_end() and
  * drm_connector_list_iter_next() respectively the convenience macro
  * drm_for_each_connector_iter().
+ *
+ * Note that the return value of drm_connector_list_iter_next() is only valid
+ * up to the next drm_connector_list_iter_next() or
+ * drm_connector_list_iter_end() call. If you want to use the connector later,
+ * then you need to grab your own reference first using drm_connector_get().
  */
 struct drm_connector_list_iter {
 /* private: */
-- 
2.31.1


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
