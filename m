Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4247EA3280C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 15:10:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D45B210E8B4;
	Wed, 12 Feb 2025 14:10:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NRDtfhVl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AEE310E194
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 06:34:18 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id
 a640c23a62f3a-ab7c14b880dso357960866b.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 22:34:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739255657; x=1739860457; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+VPaO82oa+ToJAvE8KK14A7HRHYdSJZmkn8z9n0Ed6E=;
 b=NRDtfhVlqiVadsZLg6qY1p7N1XF+4LZcIqjZ8zgw4QcQmgdBOuDMnm02+8QB1WqnmA
 +9gvuw4vxlPgROlmSed39nhRU3ef5EB5LixsAMz1F+CH6JhZtSHh55DA7DpEHV4u7mDz
 E9zxLnBF8maOW8r3O9o+gcbBSgSaHOWwhft+6gDpuLPsePx8wcZaLqpAfEaNFMIVIyCJ
 2f5IkahxxuId+A+oTRc2H3zGSs5Q85oTf4psgSE0E11buX3FkUDSygwQ7HwZb8//aNN5
 anL0VEvkcO31dZqvuO7lvc8eONJRrtRVgJwdqsLjWpvpdjvfrmCRTxgGn1/X4pnDQkcR
 b1JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739255657; x=1739860457;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+VPaO82oa+ToJAvE8KK14A7HRHYdSJZmkn8z9n0Ed6E=;
 b=F9MSceXIq1I7yzJV7ctzmYAvHZiAXFioTJagiiM8yPe+xtTEt2c7W5A4a9OTnBO9xe
 1pLUOXA55MWrg5XApKMJtLOjLiBZyf0QdBtu0ZPsgqgtiow19/2zf4QQ7UgpUBYdd/zk
 68hlK4mH+VN1vOPtIaeo5XfC7NgGr8eHf5/GNeN6PxkNU1+Mzw/xqvXLgrWPZDihu9BT
 K+h2bauxwZn0vM5Zy2tbAQarlJcvfj12spWqZWri3gbLvvj63zQKdz93EoQAQMYYb7S4
 COlY9OsweIkOZOmMU7vdI1d5oB6xosi44PPIsOLrdYOck/1seJGpWODA28XgpQ5Cx+qo
 /p8Q==
X-Gm-Message-State: AOJu0YzHXHuhid1nQEBqYf0DWJ0Ph4QvAtndwc4NDDEj8MIJLKK+Jj0D
 6vxfxQVE7YqQ4duaRcV/5TVR/Fo6fhIiRR5kkAI9OR8fMaHME+rt
X-Gm-Gg: ASbGncuWaNLDVcdn4Y3L2NO5ETy31gAQI3qGHJk+NawqLOGlZbf0dx+aOL6Byyf/Q+a
 23rCbGtCpN4fuOeCyhyfSLo4kU8gllAu+cMkkyeFrKoc294JSGFKvd69XNpHijwgPfVcfJWS5+J
 PVYzAq9vKubdg1cbh07UOoRRwRiovqn6qPeeXrp/92Qpry+qim3AZ5wC0onI2iiYuqKEmZhp3ZR
 gotAk7JZAc+rD8rn+fnncJ9G8qS2e2Pv1Az7P+rRDoQtlr0Rjc0YcojkI+8Nt3UIJyjps+XUzZY
 +eVl+JiMBR4DGxPvq9TDmYmr5YmTVYcl2d2/+qQd2VraNzam8H2C1oMt0P1coMmzOjmxp4VqIO3
 mUXXausX7VpGhL24=
X-Google-Smtp-Source: AGHT+IH+h/EDzBlXmY1icTRjXeK+Ak7KcNlqt+EmP5Cd9qKrtjUxCKio7N1P1GRT2oqbk9e4+uCvIg==
X-Received: by 2002:a17:906:6a1a:b0:ab6:d0b9:8fd1 with SMTP id
 a640c23a62f3a-ab7da3ad5c1mr184746966b.34.1739255656735; 
 Mon, 10 Feb 2025 22:34:16 -0800 (PST)
Received: from legolas.fritz.box
 (p200300d0af0cd200603313d7beea72d6.dip0.t-ipconnect.de.
 [2003:d0:af0c:d200:6033:13d7:beea:72d6])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ab7c62c464dsm300440466b.28.2025.02.10.22.34.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2025 22:34:16 -0800 (PST)
From: Markus Theil <theil.markus@gmail.com>
To: linux-kernel@vger.kernel.org,
	andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, netdev@vger.kernel.org, Jason@zx2c4.com,
 tytso@mit.edu, Markus Theil <theil.markus@gmail.com>
Subject: [PATCH v2 2/3] media: vivid: use prandom
Date: Tue, 11 Feb 2025 07:33:31 +0100
Message-ID: <20250211063332.16542-3-theil.markus@gmail.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250211063332.16542-1-theil.markus@gmail.com>
References: <CAHmME9oqvWp_Nd1Gwgyw52qy8wxztMyCpNsjByH=VnRaXqczww@mail.gmail.com>
 <20250211063332.16542-1-theil.markus@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 12 Feb 2025 14:10:13 +0000
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

This is part of a prandom cleanup, which removes
next_pseudo_random32 and replaces it with the standard PRNG.

Signed-off-by: Markus Theil <theil.markus@gmail.com>
---
 drivers/media/test-drivers/vivid/vivid-vid-cap.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/media/test-drivers/vivid/vivid-vid-cap.c b/drivers/media/test-drivers/vivid/vivid-vid-cap.c
index b166d90177c6..166372d5f927 100644
--- a/drivers/media/test-drivers/vivid/vivid-vid-cap.c
+++ b/drivers/media/test-drivers/vivid/vivid-vid-cap.c
@@ -300,8 +300,10 @@ void vivid_update_quality(struct vivid_dev *dev)
 	 */
 	freq_modulus = (dev->tv_freq - 676 /* (43.25-1) * 16 */) % (6 * 16);
 	if (freq_modulus > 2 * 16) {
+		struct rnd_state prng;
+		prandom_seed_state(&prng, dev->tv_freq ^ 0x55);
 		tpg_s_quality(&dev->tpg, TPG_QUAL_NOISE,
-			next_pseudo_random32(dev->tv_freq ^ 0x55) & 0x3f);
+			prandom_u32_state(&prng) & 0x3f);
 		return;
 	}
 	if (freq_modulus < 12 /*0.75 * 16*/ || freq_modulus > 20 /*1.25 * 16*/)
-- 
2.47.2

