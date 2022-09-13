Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D805B6CBB
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 14:05:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B429210E6BA;
	Tue, 13 Sep 2022 12:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3CE910E6B3;
 Tue, 13 Sep 2022 12:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663070705; x=1694606705;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ymvleY5q3q1XTZaqZqIZiIrdxjL9UQWIqjt8ooOodpI=;
 b=Q2ZPpaB4QhpYjWruuWIzcTvDiBknbHEWbrFHnWRalJrESGdX7otir/5R
 +cibB9FLJ3AParut3vQtFvbARYz+XsfUixG3MV4Ck0xk9ad7WYF4slRwz
 Xi0lQ6IsNhXVRyuSm9Imf4zEoNjIuoWC7cG8I/+0xWGJcgRSYECYJwTqv
 G9nrhSatX8g4O4yvjBNuyWk8+UkflblNMg44OWFjEAcj+JnWZUT8zdwbe
 5u8wBhsgSjwvafzBJTO+7d6ZcD2l4g77KKZaQ7S0HGx57NjMoKtx0OjH/
 aORVi1QzWnghJRWPLn9V9nRd3L0SHw6IFYW0AZisOtdPdKmzYEq81xwct w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="281136804"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="281136804"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 05:05:05 -0700
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="678538730"
Received: from jkrzyszt-mobl1.ger.corp.intel.com (HELO jkrzyszt-mobl1.lan)
 ([10.213.10.213])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 05:05:03 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 13 Sep 2022 14:04:38 +0200
Message-Id: <20220913120441.146757-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220913120441.146757-1-janusz.krzysztofik@linux.intel.com>
References: <20220913120441.146757-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/4] tests/core_hotunplug: Free mem
 allocated by igt_audio_driver_unload
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we pass NULL to igt_audio_driver_unload(), realloc() it calls
allocates new memory for us.  Free it each time we no longer need it,
before dropping a pointer to it, to avoid memory leaking.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index a0d29b799a..733ea8efb0 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -187,6 +187,7 @@ static void driver_bind(struct hotunplug *priv, int timeout)
 	if (priv->snd_driver) {
 		igt_info("Realoading %s\n", priv->snd_driver);
 		igt_kmod_load(priv->snd_driver, NULL);
+		free(priv->snd_driver);
 		priv->snd_driver = NULL;
 	}
 }
-- 
2.25.1

