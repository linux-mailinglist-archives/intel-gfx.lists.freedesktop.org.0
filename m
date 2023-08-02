Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B655A76E282
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 10:10:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DC2410E5BD;
	Thu,  3 Aug 2023 08:10:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A24510E5BD
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 08:10:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="400740408"
X-IronPort-AV: E=Sophos;i="6.01,251,1684825200"; d="scan'208";a="400740408"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 01:10:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="1060154252"
X-IronPort-AV: E=Sophos;i="6.01,251,1684825200"; d="scan'208";a="1060154252"
Received: from twillhal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.37.180])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 01:10:02 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Thu, 03 Aug 2023 11:10:00 +0300
Resent-Message-ID: <87fs50v95z.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from orsmga008.jf.intel.com (orsmga008.jf.intel.com [10.7.209.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id DEB5F580D9D
 for <jani.nikula@linux.intel.com>; Wed,  2 Aug 2023 10:47:54 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="758837151"
X-IronPort-AV: E=Sophos;i="6.01,249,1684825200"; d="scan'208";a="758837151"
Received: from orsmga101.jf.intel.com ([10.7.208.22])
 by orsmga008-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02
 Aug 2023 10:47:54 -0700
Authentication-Results: mtab.intel.com; spf=None
 smtp.pra=astrajoan@yahoo.com; spf=Pass smtp.mailfrom=astrajoan@yahoo.com;
 spf=None smtp.helo=postmaster@sonic301-22.consmr.mail.gq1.yahoo.com;
 dkim=pass (signature verified) header.i=@yahoo.com; dmarc=pass (p=reject
 dis=none) d=yahoo.com
IronPort-SDR: 64ca96ca_ino8Xw8QAb/8K6mDfo81CYGFuhb2UXUoo6ZR6q136qFn8VK
 aBlwUqEeUaw2A9Dhk2wrbbJB//gybtmPaY106FA==
X-IPAS-Result: =?us-ascii?q?A0HoADP5lcpkhpRAiWJaHAEBAQEBAQcBARIBAQQEAQGBf?=
 =?us-ascii?q?AYBAQsBVYFdOAGBETEEC0eUXQgBAQaBPQFjgiGIaQOSDIFAPg8BAQEBAQEBA?=
 =?us-ascii?q?QEJRAQBAQMEOAKERQJADwmFcAIdBwEEMQgNAQECAQIBAQEBAQMCAQIBAQEBA?=
 =?us-ascii?q?QEDAQEBAgIBAQECAQECBAIBAQEBAhABAQEhGQcOECeFaA0IAQ4QghAMGBdkP?=
 =?us-ascii?q?Q0JNQEBAQEBAQEBAQEBAQEBAQEBARcCRw4EDQEBHgMDJwsBDQEBNwEPUUUSB?=
 =?us-ascii?q?xKCfoIoAQMxAwWif4w4FgUBARaBAYIJAQEGBAMCA69HASMoA4JTCR2BJQGES?=
 =?us-ascii?q?yOHO4JYgX56Qn2BEIJRgT5vgiCCOYYtiXWFDT8FAgQugjWDPIMlgxArTjoIX?=
 =?us-ascii?q?icrgR09Ag1UCwtlHBFqCUkDNoE9AgIROhNGBFoZHQMHAwgMBzU1EC8HBDINF?=
 =?us-ascii?q?QYJGAgnJQZRBxcWJAkTFUAEgXg2gSAKAYEFPwMSDhGCTiICPTgbS4JqCRVAB?=
 =?us-ascii?q?Ex4EC4EFBgyYnYfEwcePRESGQ0FCH8dAQEMBSc/AwUDBDcKFQ0LHwMJAwcFS?=
 =?us-ascii?q?UADCxgNSxEsNQYOGwYkASBzB59HcQEBgQ2Bb5AjCZR7n0xvZoMvmxeFaxozL?=
 =?us-ascii?q?oNTjGyGXJISmCggkTORMIU9NYEvATiBXDMaIy+DCE8DFwIPjiAZg1uPPF0kM?=
 =?us-ascii?q?gI5AgcLAQEDCYtIAQE?=
IronPort-PHdr: A9a23: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
 XJxTGE/Qg3E5WImyh+l37cVuSBamoQMudA=
IronPort-Data: A9a23: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
 Pn+oapRT5CrWOPYmARD
IronPort-HdrOrdr: A9a23:F6hwQ6pogGv8XkUtGkh8zPMaV5raeYIsimQD101hICG9vPbo9f
 yGtvIdyBPylXI1VHYvhNHoAtj8fZq6z+8O3WB1B9yftWbdyQ+Vxe1ZjbcKhgeQYhEWldQtrp
 uIDZIOb+EYZGIS5aia3OD7KadZ/DDtytHMuQ6x9QYPcegTUdAH0y5JTjy8NW1dACRlJb58Lr
 qzwaN8zQaISDAsaMO6DD0kcoH4yOHjpdbdZxkHDVoCx2C14Q9BvNbBfiSl4g==
X-Talos-CUID: =?us-ascii?q?9a23=3As1gFsmvtFWCSUhtYTh9jhV6/6IsPV1rcxluLP3O?=
 =?us-ascii?q?RU0EqV52HZEa14Lpdxp8=3D?=
X-Talos-MUID: 9a23:e8TGPArSWHG5M0Vltq8ezx9aMddk8ZW8M1wiyM42oOWNKH1gBQ7I2Q==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="359696405"
X-IronPort-AV: E=Sophos;i="6.01,249,1684825200"; d="scan'208";a="359696405"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from sonic301-22.consmr.mail.gq1.yahoo.com ([98.137.64.148])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Aug 2023
 10:47:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1690998473; bh=OvuQPE46agxmaX4ufGOdmLd8LE0zMezBwedxqC/ssqw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To;
 b=M6aPuYefANa5Jsgpuq2nTXNRT5F3V7cBj53s61a4dPwDw4iHxsofdSskTnbQ7I8Tm7XwO0DfTj8LwEpGbRbkImF4fbrgQ0fKAMOEDfyr2fQXR1zv/IC5uazhNJb75P5ZMSs8E5Dpl5I1LDU9yq1mKL1QABWRh2PBaGX9Z9i+S/u9RX9Vxl6P4Efm4Jbajbfkbk6ys/jHbKrTKIAONGnNO0zSacS4jr4Ylu//2CrG3hHFlsRzEoz1f+7zxKWDeoAPnizzMrub78XDF70FJWgmjXt4ZqPBQxX9J23e8AL01d3sxExbwt1ABlKJtinNseyMlR/myafLsW2t+MszhB0UbQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com;
 s=s2048; t=1690998473; bh=FvQKECw4HKjVLkGGj4p6k9A3opvxAU8ZaWBeQTbDO1Q=;
 h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
 b=RDugM32pV+Uk12puK8hDM1B9hUbhh1TuHniH2Zp11e47BxZUft5DH8D5/04eD+B6v6HgQ05RMwHdR5eiRzNEQbG3XeicSFammzp+0XUvO+tdMuzn5qFt2AQtPEoAW2q6eM5KhQv11DNtaZNKhp4ukZQB9zxolIPns4+ld+IF5KPhX2nDSiRUP4Bhmmq0ApjCrKPjmeLwNjQVYnGyrdQX8M221Alj2Ihna9x8xQArHzxNxvWt/n9bMtkaD9KBuX3NmDPDg7m/TaY0NOpz0N79pEH/dmKGgBri/j/IjlfVTzLVhWX4ekXn3YfBJhKq1lYSMwQ9Wt7OW09lIrnnOu392Q==
X-YMail-OSG: iWFIk8UVM1l6bIZ3uCO2wLC_eGhTV_F3Mf3yRyQRuLzxL8vZlHWqLcGDqxA.5Ss
 AWUV2chj4Gs6Px1w4TkRgmc7BhS4N7uVk791I_rHXdyT2nDV2unT75MQBkQm7dGfyB8fIFdazhjh
 eEifOlaslOa25.ARP8XKd8DRoQYEX7rDoPSJV5z6HnSqlxH.VNn69pGHyv7_EFwPeyyESy1wIhbs
 DC7_T1OKGaZdDSZME9V2FDxu4dvEGq4tzEa7vfCpYxQCANJvzKfbpshyU76qN9xSOB9CCihAnBpA
 906mOM6Za1QtEXGbBO3erekoL4jZTUTPfWY7gVYKWalwLDSDLJ3.3Ptzc8UbpDCvzKf7tA6YArYM
 rw8INImzeFoexHvo6XN6H0QsUcwLvBxU7rjJRZbUlN4OSHbW1Ly4aQD7fcmaMqkVBii6G1EjEAuT
 gpLY5SBfO.KbY6WgsfaMxJM4PWaEIaxlBCWrTf1snJuLjyubAyoL70Dyedc7hMkRznGMNcDXKQcb
 vGmkSNNAv8G8W1NNv3zJV0Lscdh9iaSWiFElyvq0xKHqtI.bSLuugnqW65yYjMPtVhGHlf_v9EGX
 G2zu1Qj5HM8inwQXEpJz8YaQxmms6r9nHlXFNmKR.nvsjU636Mzn5xNWtZwY45JJvhqLd4Ye1WZG
 UlM1HtMGwsAh7NULeOIpDUJkDvItV4nAehEFeSfX_JnBfElLtxmjztLeKyYnHVmXRyrNpjJPCKNI
 v38i3uePHnU3opzX1iGJLim7L.KqApTKKW5Wuz3PRMhHNGq6HmhTfJYi.x6El59Gv7chg9yzMG1F
 s44EdVk8EydIE0FTPri_EmXMi5ULKadRW3dLU3cDKpX7bJLTn6ErWjCG2ADyQrwKSTtzl3XEvMqE
 eM6yhW7Uvm4FsxnWycxhZBPVF_SgGNsBfGVWbl_59vvFYcAtkr.bNoWYvf7CQUOueIfgu1n_IxGA
 4P1l6ZY4fyofTDm0Fi7PJgmqUmbCSiYsnfuJo7cWCsHezygmmsbg3EO7_FCYRYqgJ0IoJ2BKc.e9
 FUoqFlkYpfvtbjDFVmS2KO5vF_y5NjTJtnseXzXFvnSANvnWOPS2FTAeWNPzv6I.l020iwyCg.RD
 gF4sWosWkFF1_GUZaPv4hDXjyJUjv_zQMuukGgPssUxxanAssaPk4Tfyha5XkmqULvOLk6IOAUW6
 SkRaq.DiSKUDwcpTjmo62Klvl4GuMfEgij5g6J_rBRbjWEwmEr4P1CqP8T0DtPKag7wyy9apGRrQ
 V.Rsp1n2JIjxRn46KjugiTzvpyx51pLjqlSLfCxu_A52IL0y2yX8GA9PZLTGSV2gT1M6armcPnmG
 aiHv5KjDcdNCbxy2kAkvfUTFqJBtIQrJzcFsXSIANdapyN3190L2JQtqYLZq_AQNERLngWS5ym8x
 .wxdKjTHo4qOi73iULxEyK36kD0Yr1F2cx1NRu5ZWrOk9.a1XO_2cqzG3HE1s1JLmA5aP4CCcwSa
 uUsQZeqMYWW8Y5ROi.yQgIe6yl_p5PZE6ae5dEuu0mLQAa8cH_uPR7m8vwtck7LhevGAzvFsnD4Q
 v3Qj2CxgZC_Ea1ATbWEqYaDxZKFMJB3to6.xwHqsgrpFlrZ3d.Y3Pm89KvPWIFoClDej14xPSfqi
 lb7PTS3ZiBV_W0OtqQ4egR3eEsQQYBhEthY97H1ITiHiBUXw5L5iw4aEsc4alqi7IuyhvQ6b1JNP
 6NdOzLj7yDIPKzhg55h9TGtjQaFsdpdyEIs5B8ZMda2dEDPR8_s3inl7WneRTZSi.hV08yVo3n4M
 TgTlMfiUfL9x4SamrC5_rId53s8nG0nOskz_lwCJsNMjAx9WxfjFLE3xoevVwWtycpn0OgdWHcWP
 CZWPFVE0SucP73Bz__pMWc2RE5ihlX4n3qXrpdb_nzKBvD3B16NUwzMg0Cn4h3qnBL126Vfi9E8g
 Mc7KyOal2hrWXatGGV07grNs7LwGQu918KSrUVYWOEfRu07WuGs7ISN9Y18Xsyjspq4KphcHQzos
 pdsRm_.SjXDxd.S85iefBphliQbOLEiHfybX6QaBL6AMFnBVj93wJR7_X_7t1oUvY5ARufoZlo3t
 UOFZk73w8pO_FQrZC8SJ6swWB1kkgnD_Fjme6VGSQEyOSYRF_VFXyehwFrZV.uAX16jGzAmlMN17
 v7Vmp1c8JLmSEmgePHFpo.d.6a4lCPS9ISKB.hGwWyLW8mnPvuYzgGcsJsGuOOvFT0uP5SVrE2Wv
 lCkX9wNuQ44_axNWXaOUEerIwggYBk1iAMWTPnuhz7.bDLg--
X-Sonic-MF: <astrajoan@yahoo.com>
X-Sonic-ID: b2ff0c9c-1ec2-4d56-a5fe-eb4080422660
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.gq1.yahoo.com with HTTP; Wed, 2 Aug 2023 17:47:53
 +0000
Received: by hermes--production-gq1-7d844d8954-l5pzx (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID d660ccb3d71ff4bfca7672ad34843e29;
 Wed, 02 Aug 2023 17:47:49 +0000 (UTC)
From: Ziqi Zhao <astrajoan@yahoo.com>
To: syzbot+622bba18029bcde672e1@syzkaller.appspotmail.com, astrajoan@yahoo.com,
 jani.nikula@linux.intel.com, airlied@gmail.com, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, ivan.orlov0322@gmail.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 skhan@linuxfoundation.org, tzimmermann@suse.de
Date: Wed,  2 Aug 2023 10:47:46 -0700
Message-Id: <20230802174746.2256-1-astrajoan@yahoo.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <00000000000034cf5d05fea52dd4@google.com>
References: <00000000000034cf5d05fea52dd4@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TUID: 8uIFHXTcj1sn
Subject: [Intel-gfx] [PATCH v3] drm/modes: Fix division by zero due to
 overflow
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
V2 -> V3: change title to include context on overflow causing the
division by zero

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

