Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B1076CA3D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 12:01:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21FB910E533;
	Wed,  2 Aug 2023 10:01:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1FAE10E54B
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Aug 2023 10:01:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="400485979"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="400485979"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 03:01:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="732321091"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="732321091"
Received: from osalyk-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.215])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 03:01:52 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 02 Aug 2023 13:01:50 +0300
Resent-Message-ID: <87wmydvk35.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from fmsmga007.fm.intel.com (fmsmga007.fm.intel.com [10.253.24.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id C8D3D58068A
 for <jani.nikula@linux.intel.com>; Tue,  1 Aug 2023 14:55:47 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="732143113"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="732143113"
Received: from fmsmga107.fm.intel.com ([10.1.193.145])
 by fmsmga007-1.fm.intel.com with ESMTP; 01 Aug 2023 14:55:47 -0700
Authentication-Results: mtab.intel.com; spf=None
 smtp.pra=astrajoan@yahoo.com; spf=Pass smtp.mailfrom=astrajoan@yahoo.com;
 spf=None smtp.helo=postmaster@sonic311-24.consmr.mail.gq1.yahoo.com;
 dkim=pass (signature verified) header.i=@yahoo.com; dmarc=pass (p=reject
 dis=none) d=yahoo.com
IronPort-SDR: 64c97f62_3MO6jNrEBrV9y4zcRtmtmZUbJyppvbbY27kzvkpUzchiSsY
 +jKYrKIjHM+V4LdS+EQH2FJ6FQEWCHUeucyDy8g==
X-IPAS-Result: =?us-ascii?q?A0E1ADMPfslkh81BiWJaGwEBAQEBAQEBBQEBARIBAQEDA?=
 =?us-ascii?q?wEBAYF7BgEBAQsBVYFdOAGBETEEC0eMb4duCAEBBoE9AWOCIYhpA5IMgUA+D?=
 =?us-ascii?q?wEBAQEBAQEBAQlEBAEBAwQ4AoRFAkAPCYVwAh0HAQQwCQ0BAQIBAgEBAQEBA?=
 =?us-ascii?q?wIBAgEBAQEBAQMBAQECAgEBAQIBAQIEAgEBAQECEAEBASMXBw4QJ4VoDQgBD?=
 =?us-ascii?q?hCCEAwYF2Q9DQk1AQEBAQEBAQEBAQEBAQEBAQEBFwJHDgQNAQEeAwMnCwENA?=
 =?us-ascii?q?QE3AQ9RRRIHEoJ+gigBAzEDBaMwjDgWBQEBFoEBggkBAQYEAwIDr0cBIygDg?=
 =?us-ascii?q?lMJHYElAYRKI4c7gleBfnpCfYEQglGCLYIggjmGLYoChQ4/BQIELoI1hlqDD?=
 =?us-ascii?q?itOOghfJyuBHT0CDVULC2McEWoJSQM2gT0CAhE6FEwEWhkbAwcDCAwHNTUQL?=
 =?us-ascii?q?wcEMgcIFQYJGAgnJQZRBxcWJAkTFUAEgXg2gSAKAYEFPwMSDhGCTyICPTgbS?=
 =?us-ascii?q?4JqCRVBBEx6EC4EFBgyYnUfEwcePRESGQ0FCH8dAQEMBSY/AwUDBBgiDBcdA?=
 =?us-ascii?q?wkDBwVJQAMLGA1LESw1Bg4bBkJzB516gU1yAXoTgW+QIwmUep9Mb2aDL5sWh?=
 =?us-ascii?q?WsaMy6DU4xshlySEZgoIJEzkTCFPTWBLjqBXDMaI4M3TwMXAg+OIBmDW488X?=
 =?us-ascii?q?SQyAjkCBwsBAQMJi0gBAQ?=
IronPort-PHdr: A9a23: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
 HEwBXNhAU6VjY3EpAWr2uJKlxY=
IronPort-Data: A9a23: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
 Qr+tHqsnmA=
IronPort-HdrOrdr: A9a23:slkppKhsdTqWM2o8KoWx7ZSWbHBQXisji2hC6mlwRA09TyVXrb
 HNoN0w0xjohDENHFQtnt6cOcC7MA7hHPlOkPMs1NKZNzUO11HYSL2KgbGD/9SkIVyGygc/79
 YaT0EBMqyWMbESt6+TjmiF+pQbsaG6GcuT9ILjJhlWPGJXgtlbnmFEIzfeKGtQZCMDKLgYMN
 6nxuRhzgDLRV0nKv68AXkOG8jvzuelqLvWJSQBAB4srC2g5AnF1FaveyL04isj
X-Talos-CUID: 9a23:bNCDnGy3tpkbieaKWTtyBgUwHckKNVrE6EuTJhCBI0cxULG5Q0afrfY=
X-Talos-MUID: 9a23:lohStQik8FBNfdeBNyDE9sMpLutB3pj0DBk20pwMivKdLy4vPnC2g2Hi
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="349725677"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="349725677"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from sonic311-24.consmr.mail.gq1.yahoo.com ([98.137.65.205])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Aug 2023
 14:55:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1690926946; bh=UXmKHAxI8FcpQqNUOkYn2/+u4cfxJmVRmsV+0atGSbE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To;
 b=kG7/otN36PLmNXYsYMsc8oh8w4eWuLjyowJlOd5olUv4HFT72/M//fH/9+9Q9M5YpIqwXoCIjXn2Dq5c7KJXC48AmFfB6PEgUL6eWRcFyCE7bjktQbdJGIOl2OFfi2HX9SLlSu/qOMWA05DLyL5F8q+fJxGUsvGLTp6gcJds0KB/3qHRRT7eIRRqbFJ9PB/SrIjvEPAEPPCOXMrlC5PTRLYEAUIlMorZ7oO2D14+Vw+Ghy6GVA7AeTUDbEISOoUesMERTKfKJ+tDq9f9YDjDWkGHwNSZ5sdIjx83OWPEs0aQHGKOWnw+a6J3guFLYYMEcttk4S/sgH4YjfAG8cQOVQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com;
 s=s2048; t=1690926946; bh=hahUDcQ0Zy6qaUXUDw+7yszJcn30MyA7JPU1zj9wZ86=;
 h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
 b=LTiy5f7ji7vYoRxrBtBe9dYp18oonQ01rT63UEtCiV0IfPezt+qVORAm/R4nrfs7F8Su9nK6jAnS++1o8iWGlJGY3pw7GPrXDklo2dcjLmJpEe2S5d381xBBpH5gdXKqXi3+xyKsBf2fINuEJPX9JU770Gl44Wo5SxI4k8UmzgKB7L+U9/KQYhOUG9Gg9PD/rMs4pqQdP7TxGlS74bGN81yQbX6o1FWo4SARt+4jTDVaH8a1lGxabQ/hi0JgjwVDUukK1Ij1pMLSJJeenzCG8PyOiQzfXPLbWn7MbO8ZcPKgUML71yeSQEt3H3lpKuayZ1cgj7PnlW93K0OzQDYGYg==
X-YMail-OSG: CeB8NW4VM1kxgCRNT.137CFxcgks5EgRQ4FIH9uLQ.Gu.XFz.YCLWhmwoYgYH9r
 Ne8ik7bvGbWLUf2aOchhmJuN5vQiVCZrcMeyD6g5SiaZIfzyH35EW6d6JOHpRG5T2PaY1wp6GxyV
 nPQSTO9W1bhR_96gpVnumR8Z06G_JQLNCRik4ok5lwGSWj7FIEkETJxdIPr1u3MRz3kktbM7V52Y
 ncn6iQNw3hfG_F1Q8FjmQkkOtfWCeHHEd0sG6Bsrh47dUQQEo3VMqYJ.86i2CXEGXju3sVEIpZkW
 q5MLRSb32asq1cxFSThKUDiARSR2ubCe3ATupilZ4I5J4U9a73igyCt1eB2N9lsCH6wMc.Z8Gp.K
 W23IDNrh1tuBOQlrBKrFDCAeYHr72VbjHZ_wEtzBKF87mpoH44WIuhNx.9Au5AbCdSmiMpJRx_yT
 QQ.w3V9usUGSFJ5Kls2hP60oZGd1dUAUC17AF_dkv5L3gHGS9.6YlfFciM0ULZClBE1jGhN.L1Fc
 bhDeE6suiTfcNR3SIYkSGB4OCWnI9XiosJlFqFzWJgZwMBOSLMpi8tewO.AoAXoql9bJtMUbzViK
 L9nh9kHjwe4E1i.2XGOtF6RciN8R9zxEg813xyor1OfXOib40QdAFCEvDCca2QyrpChgtS6D1scJ
 dwXiDSes74_4GFR.Pz9kmcGlD4WUXUw4HsYNNg85C6vjXz0JANf6X.i4xPS4DYDOitKTOk5i0Js3
 TrTA5zte.Ljm_Drn3m_Jxx_yPpTjmgBMI042d6pHmt87zwy2NBkP1iGI_rq9rJOYR4qjrToybJqe
 RT2AWxdEiO0z.vbO7xh2KU1tR2v_Ln.bhnq9DuHSJ9fV9F6GM8f4wR6b5.kKmbhrlytJenIwiVAH
 LvfpBXCUxI5LnMx57NtnrC_HEkfg62ak5S1z6qGoMh0JDItld8iZB9Q7pHWKnfHwpI2XBEnL5Jm4
 zyN07EyFKbQxO9yEIeoyvgUb4GZxpTKP4zyL9V6LHzMLxDucTzRqL2isTr4_USGfTeoYTekcVsCz
 E8gmVKDyXlF_rWNEjYbK_MuL4dEMI7Ssnmuujv8itdpbURCirokMWNydO4dULojSV4FMt3IvWLtW
 ua_Ep4vAYw1an2jNvqVHzadbmzUZS9lREwPufPSAQzNaW7HqwJJuWpvn9paOV2rOE5BCuDG9c3GS
 wa24Ejg0f147i3kAZd7smmtj86vr5NqL.X23C1TEjaAtuDCIWcBQBZv1pbpEN7j7RUXzVI9zNEzK
 ZyQpVI2ZfrtV0OpbCHtIaswFJaIRagIe8vHCa1nXMAYCeN7RrseNhKJ9MUJUlXk.0tHM3z4GErNu
 YFtJRL2mIMj6nun1zEQX3unvLVlULYH8JXdZ3SLKbsCzCpPYNxf0k9G6nAqISVVmqPWNdMScSGpa
 TCq_O64u2KCmvmDcUO6w.lvkr2YspCTUd77bbRojR65guTFwaAEDV_bTQAPkJHtICUs.LW_quuSh
 jRdfpYbInps5qMZawhcqYqWoodKVTy3dXQuplZP2e.BCWbduwUBhxtcRlZ_Nz5Ji7Dy_H8tYhpPX
 7bbrBm9bcbXu3IzWNaZ7YRy4ndu_J02EUDkyBvxAyqNg.b4YEzVyn4gXXauv9zCo7DRifABHrpVH
 L35KLWEws.ec4pov2YKAzexp3TsMxAUoRjUnmROpYf1tbYv7ylfJj_Qc.v1EmEBULqN7ff2YTo0_
 Vbf3jt8dzqdu1PT0GeGwSkfwz00wK87jwlV5IhHXnwulH_PyK1nuxc2twjLLwNhYdSC7tY4W_Bn3
 V_6j4OaE5bUpa6RDbQeRBVAP5kOyCoDhIQlIal1OIeFf5umn1oRX9NB9MEApvJR7Kb5OQN0IwycO
 2fEniVND1FPM7RIbCFQ7Tm64kp3BKH8p.DEQ9mdDO7XO9BNClcVjhr090_EFd1Z7UQSrJ.Rknk2F
 H04b4Cj3_Yf5BFqq.A3NuANYWLgamoGD2ZkPqJdMAHRz_YIYttkCFi0liv8ZEAD3sfPTPZ9NKkVb
 tGJ0hF5rZTMaSJng00owCRVUW.7ITvhzp7J8Rq3Vuhmj2Mglr6w6V0A.V27aQ252PovvECyccUzN
 4jvcUNf8nBh5SIf6w8Bq4RzWmDkLwyBifJC7DMoOuXNeIL_D0LrRlx0AeuFdn0_6NSS9rV7SKKyr
 MzOhYxd.8oUt6Nf7Qgypt5y4xH.AF0HYctIs4x3sqTPDff0JU1PS_OTnwibczP81IlmU8gCtvqJN
 wdtHPKGnUX44Ee6N92WiKr1ngcgrTrbzIpO5cIlsBNEg-
X-Sonic-MF: <astrajoan@yahoo.com>
X-Sonic-ID: 2980e2db-bdae-4ebc-80a7-121cc92a00dc
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.gq1.yahoo.com with HTTP; Tue, 1 Aug 2023 21:55:46
 +0000
Received: by hermes--production-gq1-7d844d8954-q6fhd (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID 2133038380f997b8027ffd392dd22e8f;
 Tue, 01 Aug 2023 21:55:44 +0000 (UTC)
From: Ziqi Zhao <astrajoan@yahoo.com>
To: syzbot+622bba18029bcde672e1@syzkaller.appspotmail.com, astrajoan@yahoo.com,
 jani.nikula@linux.intel.com, airlied@gmail.com, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, ivan.orlov0322@gmail.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 skhan@linuxfoundation.org, tzimmermann@suse.de
Date: Tue,  1 Aug 2023 14:55:38 -0700
Message-Id: <20230801215538.105255-1-astrajoan@yahoo.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <00000000000034cf5d05fea52dd4@google.com>
References: <00000000000034cf5d05fea52dd4@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TUID: lRZolwnOOqd3
Subject: [Intel-gfx] [PATCH v2] drm/modes: Fix division by zero error
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
Cc: netdev@vger.kernel.org, dsahern@kernel.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, jiri@nvidia.com,
 jacob.e.keller@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the bug reported by Syzbot, the variable `den == (1 << 22)` and
`mode->vscan == (1 << 10)`, causing the multiplication to overflow and
accidentally make `den == 0`. To prevent any chance of overflow, we
replace `num` and `den` with 64-bit unsigned integers, and explicitly
check if the divisor `den` will overflow. If so, we employ full 64-bit
division with rounding; otherwise we keep the 64-bit to 32-bit division
that could potentially be better optimized.

In order to minimize the performance overhead, the overflow check for
`den` is wrapped with an `unlikely` condition. Please let me know if
this usage is appropriate.

Reported-by: syzbot+622bba18029bcde672e1@syzkaller.appspotmail.com
Signed-off-by: Ziqi Zhao <astrajoan@yahoo.com>
---
V1 -> V2: address style comments suggested by Jani Nikula
<jani.nikula@linux.intel.com>

 drivers/gpu/drm/drm_modes.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
index ac9a406250c5..137101960690 100644
--- a/drivers/gpu/drm/drm_modes.c
+++ b/drivers/gpu/drm/drm_modes.c
@@ -1285,13 +1285,13 @@ EXPORT_SYMBOL(drm_mode_set_name);
  */
 int drm_mode_vrefresh(const struct drm_display_mode *mode)
 {
-	unsigned int num, den;
+	u64 num, den;
 
 	if (mode->htotal == 0 || mode->vtotal == 0)
 		return 0;
 
-	num = mode->clock;
-	den = mode->htotal * mode->vtotal;
+	num = mul_u32_u32(mode->clock, 1000);
+	den = mul_u32_u32(mode->htotal, mode->vtotal);
 
 	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
 		num *= 2;
@@ -1300,7 +1300,10 @@ int drm_mode_vrefresh(const struct drm_display_mode *mode)
 	if (mode->vscan > 1)
 		den *= mode->vscan;
 
-	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(num, 1000), den);
+	if (unlikely(den > UINT_MAX))
+		return DIV64_U64_ROUND_CLOSEST(num, den);
+
+	return DIV_ROUND_CLOSEST_ULL(num, (u32) den);
 }
 EXPORT_SYMBOL(drm_mode_vrefresh);
 
-- 
2.34.1

