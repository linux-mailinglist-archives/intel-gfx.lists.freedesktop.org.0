Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AC75A4DFB
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:26:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC46210F345;
	Mon, 29 Aug 2022 13:26:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from wnew2-smtp.messagingengine.com (wnew2-smtp.messagingengine.com
 [64.147.123.27])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDB7710F2DE;
 Mon, 29 Aug 2022 13:25:49 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailnew.west.internal (Postfix) with ESMTP id 440132B06089;
 Mon, 29 Aug 2022 09:16:13 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Mon, 29 Aug 2022 09:16:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1661778972; x=
 1661786172; bh=m0bX0yVVXPuP/oiIMrVxVPH8Yeb69EPj7qYI2Vvf/WI=; b=Z
 PfNQDvfQdg4O/9q5B6QdM4lFRA5ZWXziurkzxm7eLvq12NY96Cl0xdSvybGsKhPw
 L/R/NtZk/hRdkppkQ2vKyLZ92DTp+c/dcZJvzky6SugiRRbu8sViWJ2Ly8QirghV
 huf/UgU7uq/yxq13hVu8uEdLw1Aiofnn44QFVPZ1EacRWn8TfUvVMaATqKiU38IV
 hUvq/x38aUkWISJT7e+7L1nqgj6ZiAyVWZ1zI0hY2lQ4H8BggH8mhxJnSckk2FVN
 5Kd3Y9vhCdmvylUwZ21w+wEmIJ4VXEscMiDBHDoPUsuTbsi/+s8SfifxCB/aDh86
 /m3Mx+LXGp1g3k7bXuv0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1661778972; x=
 1661786172; bh=m0bX0yVVXPuP/oiIMrVxVPH8Yeb69EPj7qYI2Vvf/WI=; b=W
 S5LLf8pI/X2rsE2aqg+J53OTUs72AvcN18KCU3py4vRy2VRNnFvF+upF5spN2gUZ
 /7zZkNpy6+mtGqyz/beYOidQfU5hUKT0RKVLPsCgU4mpYkcPKzhsF+dFlLsPHybU
 NOVsiGZSQW6RvAbQetYXEbvnwKvWcWX02FJ7Wo5CqBYVcqzmTA5MP1qauZIRmhfY
 y5e5M195xjUTZHG3joT1wkI8U3pA9JRyglm3qfI67RHiueZa3pJijuKqBbAg47il
 dwBud1K0F0PnkNm9vXP6YvHdsEk7U2B1yf8QTjnEXaO6lZJgtnO9O/D14IYw94rR
 oelDLHECeIJyt2LeVfHfw==
X-ME-Sender: <xms:HLwMY_QFSeNT1Tcy8tSHFuFOMTPaF5BH_aDRK13alRUrk2OSHLCxqw>
 <xme:HLwMYwzdVr7RqQ9L252fpVG0aztOPQNZq_MbknfN7PmxwSUiPqO08DEmhztLKfryo
 jUACJsb-yYEGIDK_N0>
X-ME-Received: <xmr:HLwMY00-BTxtoiJr1edyP67jEAKT6ylousbI6ph8cVV7epD53Dt6n9L29GVM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdekuddgieegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvvefufffkofgjfhggtgfogfesthhqredtredtjeenucfhrhhomhepofgr
 gihimhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtf
 frrghtthgvrhhnpeefiedvfefggffgffehveejieffuddtgffhjefggeetieduvdeileet
 lefgveegtdenucevlhhushhtvghrufhiiigvpeeknecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:HLwMY_AgFL5NHLTT3MQgOwv4XILQi41uJNOzCwExoQjP7Zi95U3SFg>
 <xmx:HLwMY4hqrb1Frqsmka9iPaqgPtURYXU5DrHc-C8ezhBJJUUXKoY1Tw>
 <xmx:HLwMYzoo0zYiNHCURgvXUuDAKf2pM1qAHxGAZZNVI1Ff6ZtB3IgdEA>
 <xmx:HLwMY9atwFmFTvzIWonksKCjcQSg8yAhdel2tuYVXC1Q6vjvv0SKy_qivG0>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Aug 2022 09:16:11 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Maxime Ripard <mripard@kernel.org>, Ben Skeggs <bskeggs@redhat.com>,
 David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>, Lyude Paul <lyude@redhat.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Karol Herbst <kherbst@redhat.com>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Emma Anholt <emma@anholt.net>, Daniel Vetter <daniel@ffwll.ch>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Mon, 29 Aug 2022 15:11:52 +0200
Message-Id: <20220728-rpi-analog-tv-properties-v2-38-459522d653a7@cerno.tech>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220728-rpi-analog-tv-properties-v2-0-459522d653a7@cerno.tech>
References: <20220728-rpi-analog-tv-properties-v2-0-459522d653a7@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.10.0-dev-65ba7
X-Developer-Signature: v=1; a=openpgp-sha256; l=1164; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=54ghzoAkQN+pfS+MGQnqBXckT+/90z2OxxUOtpxMDb8=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMk8uxT7n319YvL7yoeD2997z8petNc1U6DvmO3Ucrtgd/9t
 Sk73O0pZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjCR248ZGfZ9CtRb/kOU93rd4rlvhS
 e9m5vw8na/gvVqrc4Xh055Sd5n+Kf1vmrykkDm9B+JV/gMnyvO5bpgbzxLiltO9XRK7htPN24A
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
Content-Transfer-Encoding: quoted-printable
Subject: [Intel-gfx] [PATCH v2 38/41] drm/sun4i: tv: Remove useless destroy
 function
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
Cc: Dom Cobley <dom@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@lists.linux.dev,
 Geert Uytterhoeven <geert@linux-m68k.org>, Maxime Ripard <maxime@cerno.tech>,
 Mateusz Kwiatkowski <kfyatek+publicgit@gmail.com>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Our destroy implementation is just calling the generic helper, so let's=0D
just remove our function and directly use the helper.=0D
=0D
Signed-off-by: Maxime Ripard <maxime@cerno.tech>=0D
Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>=0D
=0D
diff --git a/drivers/gpu/drm/sun4i/sun4i_tv.c b/drivers/gpu/drm/sun4i/sun4i=
_tv.c=0D
index 52bbba8f19dc..6d7e1d51569a 100644=0D
--- a/drivers/gpu/drm/sun4i/sun4i_tv.c=0D
+++ b/drivers/gpu/drm/sun4i/sun4i_tv.c=0D
@@ -491,15 +491,9 @@ static const struct drm_connector_helper_funcs sun4i_t=
v_comp_connector_helper_fu=0D
 	.get_modes	=3D sun4i_tv_comp_get_modes,=0D
 };=0D
 =0D
-static void=0D
-sun4i_tv_comp_connector_destroy(struct drm_connector *connector)=0D
-{=0D
-	drm_connector_cleanup(connector);=0D
-}=0D
-=0D
 static const struct drm_connector_funcs sun4i_tv_comp_connector_funcs =3D =
{=0D
 	.fill_modes		=3D drm_helper_probe_single_connector_modes,=0D
-	.destroy		=3D sun4i_tv_comp_connector_destroy,=0D
+	.destroy		=3D drm_connector_cleanup,=0D
 	.reset			=3D drm_atomic_helper_connector_reset,=0D
 	.atomic_duplicate_state	=3D drm_atomic_helper_connector_duplicate_state,=
=0D
 	.atomic_destroy_state	=3D drm_atomic_helper_connector_destroy_state,=0D
=0D
-- =0D
b4 0.10.0-dev-65ba7=0D
