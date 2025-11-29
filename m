Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4282CB648A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 16:13:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4D6F10E6CB;
	Thu, 11 Dec 2025 15:13:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="irVvOUC7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1522910E4D5
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Dec 2025 08:16:28 +0000 (UTC)
X-CSE-ConnectionGUID: YgW2mAn3Sv+mOxZuj/mSuQ==
X-CSE-MsgGUID: XsDabTXCQoOSExpNtfCfsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67180821"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="67180821"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:16:28 -0800
X-CSE-ConnectionGUID: 09tAjtsVSsewnJnHKcEy0A==
X-CSE-MsgGUID: ZqO9IFCxQZOitoEcGKoLRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="196064875"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:16:26 -0800
Resent-From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Resent-Date: Tue, 9 Dec 2025 10:16:24 +0200
Resent-Message-ID: <aTfa2L5qBO6j620Q@intel.com>
Resent-To: intel-gfx@lists.freedesktop.org
X-Original-To: ville.syrjala@linux.intel.com
Delivered-To: ville.syrjala@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by stinkbox.korsu.shacknet.nu with IMAP (fetchmail-6.5.4)
 for <vsyrjala@localhost> (single-drop); Sat, 29 Nov 2025 05:30:01 +0200 (EET)
Received: from fmviesa010.fm.intel.com (fmviesa010.fm.intel.com
 [10.60.135.150])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 107F120B5871
 for <ville.syrjala@linux.intel.com>; Fri, 28 Nov 2025 19:29:55 -0800 (PST)
X-CSE-ConnectionGUID: mGjiLJdLTOiCbsN4ZjG78A==
X-CSE-MsgGUID: LLgz6PYoSuS/nEV/m+1qow==
X-IronPort-AV: E=Sophos;i="6.20,235,1758610800"; d="scan'208";a="194366673"
Received: from orvoesa101.jf.intel.com ([10.18.183.141])
 by fmviesa010-1.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 19:29:55 -0800
X-CSE-ConnectionGUID: xtGxazwRSMehiiJoMH9DJQ==
X-CSE-MsgGUID: uzOIgPl3RtKPuOwbJic11w==
Authentication-Results: mtab.intel.com; spf=None smtp.pra=alex.t.tran@gmail.com;
 spf=Pass smtp.mailfrom=alex.t.tran@gmail.com;
 spf=None smtp.helo=postmaster@mail-pg1-f173.google.com;
 dkim=pass (signature verified) header.i=@gmail.com;
 dmarc=pass (p=none dis=none) d=gmail.com
IronPort-SDR: 692a68b2_Xeb8G8Hy7Ju5QR6e2XJax/MfeFSFDbBe0brgCKebsiTl+jA
 MwcGcccBSxQGp8AauPZfL/9LQuOtIuIO1/0J6OA==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0EECADuZyppga3XVdFaHgE8DAILgWUCgj6BYDMEVJRbj?=
 =?us-ascii?q?WiTYz0CDwEBAQEBAQEBAQcBAU8CBAEBAwQ3AYRIjGcCHgcBBDMGDgECAQIBA?=
 =?us-ascii?q?QEBAQMCAQIBAQEBAQEBAQEBAQsBAQECAgEBAQIBAQIEAwEBAQECEAEBIhkHD?=
 =?us-ascii?q?juGTw1JAQwBCAGBe4EsYQIFAzsBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEFAixhFhULAQ0BGx0BAxIQWwIRAQUBIxIigmCCIwEGEAEDN?=
 =?us-ascii?q?gMFpAqBBUKMPRYFAhaBAYINBgUDAgHaVQoZKA1uA4FhAgcJAQoYgR4BhHUpT?=
 =?us-ascii?q?w6COAGFHHGDfoEhgQOBJYFHgQmCLYIfggYzhi8EgzCBeIQskzQIBx8SCAEcB?=
 =?us-ascii?q?goCSBUSAwQDBAQBAgsTCQMDAg4CCAMCCAYZAT8SBBMKAwoLBwUfCgIMEQooI?=
 =?us-ascii?q?hICKQoDIAoLDAsPAxgVAQEHBgICAwEEAgQMAgMGAgIFBAMCCgcDBAEBCAICL?=
 =?us-ascii?q?QMBAxkICQgCCwURGAwLBQIKEBcDDwEJAx8GEggOCAMDAgICAQcCAgECAQEDA?=
 =?us-ascii?q?wcGEAECAQ8CAwMEAwQGAwUJAQcBAQEBAQITAwICBREHAgEBIRUCBwEEAycZA?=
 =?us-ascii?q?gIGAgICAgMCAgMDAwECAQEDBQEDAgMCAQIBBgIDAwMFAwEOAgIDAQMBBgQEA?=
 =?us-ascii?q?gUBAgICDgEDAgIGAgcJAwUCARMTAgICAgECAgECBwEBAgMCBQUIAgEBAQICA?=
 =?us-ascii?q?wILAgIBAgECAgMCAwIGAQkEBAQBAgEBBwQDCAEDJAMDBAUDAgICBwIEAxcCD?=
 =?us-ascii?q?QYBBAMFBQMKBgICAw8DBgYHAgcEAgQCAgIOAgIDBwQCAgMBDAQHAgMCAhIDA?=
 =?us-ascii?q?QECDwICAgwBAQQCAgIFAh4KDgIPAgEDAQEGAgQEAwoGAgYFAgIBBAMHAgECA?=
 =?us-ascii?q?QIIAwIHAwIDAgEPGAMCAwoCBgUJAgIDAwQCAgIJAQMGAQEBAQICAgMCAgUGD?=
 =?us-ascii?q?gQEBAEBEQogAQMFAgQHAgEDAgIBBAEBAwMCAQIBAgMBAgIEAgMDAwMDBAUDA?=
 =?us-ascii?q?QEDAgMFAgIDAgICAgQBAQMLAQIEAwEFAQcFAwEDBQMEBAMDBQMLAgIEAgMDB?=
 =?us-ascii?q?gMDBgMCBQIHAgIBBQUCAQEBAQwJAgICBwMOAwICAgMEAQIDBAMFAgMEAQEBA?=
 =?us-ascii?q?QQFAgMDAgIBAwUCAgEBAgIEBAIDAwYCBAIPAgEFHREBAgYGAwIBAwUDAwMDA?=
 =?us-ascii?q?wIEAgICAgYHCwwEBAIBBQMFAwMFBgMBAwQDCAMKAgQYBgUCAgIBAgwSAwMKB?=
 =?us-ascii?q?AQDAgUCBgkDAgMDBAEDOR8WBAUCBQMDAwE6Aw4EAwgeAgEBAgYCAQMDCAIDA?=
 =?us-ascii?q?QMCBwMUBgEGCAIEBAoCAwMHBgUHAhEoBAICAgIEAwYDCggHBAMBCgMDDAICE?=
 =?us-ascii?q?AIDBwQCAxMGAwMEAwwGAwECEhgGAQMHAwgDAgcEAggHDQIEAgkDBQUBFQQCB?=
 =?us-ascii?q?AMCAgICATEDAwMDBQcCBAEEBgEDAwMHAwMCDAICAhIDBQIFBgIBAwwDBAMDB?=
 =?us-ascii?q?QUFCS0QBQMCBwsOBQgGAwMEAwMFAwQFBgUFAwMCAwMCAgMCAgIBFAMGAgIEB?=
 =?us-ascii?q?QIMEgMDBAEEAgECAgICPAMEAwMDBwENGhACBAYDBQoDBQYCBgEJEgUCAwIDG?=
 =?us-ascii?q?Q8DCwkIBwwBPAwHCigENgEGDhQHBiUZZwcHlBtQghwTgQ+WDAqDI48SoB1xB?=
 =?us-ascii?q?4QfgWSZd4V8GjOXUpMZLphYIpFvkV5phD4CCgcHESQSgUgkgVwzGiOBAYI2T?=
 =?us-ascii?q?wMZD44tFhyDQsVHIjUCOgIHCwEBAwmFQyYTCwGETYVVgXSBSwEB?=
IronPort-PHdr: A9a23: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
IronPort-Data: A9a23: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
 J88e4dBD616FJDeVWvFdu/FWZNJNM8=
IronPort-HdrOrdr: A9a23:4U+V6q49qMyWd549YAPXwAHXdLJyesId70hD6qm+c20zTiX+rb
 HSoB1/73XJYVkqKQgdcLy7Scy9qBDnhORICOsqTM+ftWDd0QPCXeNfBOPZsl7d8kbFh4hgPM
 lbAsxDIey1Il5gk87g7QW0V/omysKW6b2liI7lo0tFfEVFb+VP4W5CZDpz0XcYeOCFP/cE/V
 anh/av3wDQAkj/p/7aOkU4
X-Talos-CUID: =?us-ascii?q?9a23=3AOtnUvmpvPTIz9OBkGhkq9oLmUdA5XW3U3mjqGGq?=
 =?us-ascii?q?1CWdoarqwaQ682poxxg=3D=3D?=
X-Talos-MUID: 9a23:6TvaGQquEl5PyLaCVwcezyxwE+Zn26D1MlwuqYghpMOmNCcpYijI2Q==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6800,10657,11627"; a="89053734"
X-IronPort-AV: E=Sophos;i="6.20,235,1758610800"; d="scan'208";a="89053734"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-pg1-f173.google.com ([209.85.215.173])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 19:29:54 -0800
Received: by mail-pg1-f173.google.com with SMTP id
 41be03b00d2f7-bddba676613so1516281a12.2
 for <ville.syrjala@linux.intel.com>; Fri, 28 Nov 2025 19:29:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764386993; x=1764991793; darn=linux.intel.com;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=W3VMXcUmTO3xpxKoPCgPeXG3UWYRk+wblTdtJybNqmg=;
 b=irVvOUC7W9j0LdHb6grFwQOPRjxkl8YUIzrAHESUlyUJEmVMzJE+CrVqQ2eAVzvny3
 JdQsLDlHWMNkz2sEb8qc3L2PqIIt5d0+uyZigL7IkW3muCsKCM7KR+JDKuggqdq2EbRN
 2bZRlqJyTBLvTpzKr+muTuORCLViDfE+JO+/OQ6m1UF0nKiaTtRv5s1jZowZDWOjHI+G
 iQafOUrgIrokQL6JNvcONcwd6u0gn1AxAEpkBKe487kCwKMW2AgFVznSN4/hrWTfLV+5
 jVQ2eyAaGWRX2z/Ao0zpEMw44mJO+bF5d8PA+6k4jVydDjSVcNFZ6Avag2B5x+zm9tdN
 CvZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764386993; x=1764991793;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=W3VMXcUmTO3xpxKoPCgPeXG3UWYRk+wblTdtJybNqmg=;
 b=m8iARB5CoJnlo7ikrSsOQkVagoAqmlN3okYEXzWnDneU8UaG3v1XVNcasawKQGRyQL
 U6Cir7WfaX9V20z6uQwoXqs/vX4TSOx2/Th/9MVTO5XT7GhDCHrGjX5AXWbyfOTNtbhX
 I0RNZhQ087pT+gc0fPnWb31e3rPbd8ifTIrihR/rInzuYN37btHewFex38+q5a9ba+rE
 H5+ugyswGvLMa9GNoFxbVqGjkhDFAH4c4j1eVqk+pfQSr2CGimmUNdvv3gWVJSqwwOKA
 WYtDYtMAymXNxlJpnVPYHwOp3dxXmcJeGwEyv+rE66dqTQvAWaDihh8HqlU+I/3m0DH9
 3qOQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXBn4FvZO2bagnUR3D40MWDVLAATehxQYfglY87fZEVNIjGjqEUsyxftsIjVJnvaAEXJBaY3DBWdUgDbcWM@linux.intel.com
X-Gm-Message-State: AOJu0YxCx/RhsFfupjnYcJOA0kl08whTzRgPS+wyS2VnVi2WYcmXGL7J
 QNfFXElMLFuuCH3i0VYEXLHDUbd8PIk15i/7FMN0dOtkF4XLx+8Oncue
X-Gm-Gg: ASbGncvbdiRg6hXjRt79avtHALt4FkDcJTUl+sP9fOuMAtD/9ATm45lejHTgDrLK236
 dMPC24yTSVwc+RGipLe+bBtuh6kD8co+crzXMAt85cNHgygZG7bq8oTibsQK9yEbiVmXB6G9MQA
 rL4Ilyg05ePjCsJi6GLs1uzVdGmY9OjcMtLzKZv0ZBl/69GPHK+w+vb5mKbIM8XDohSxEaq4wMy
 uPp1YYhJ5rDRgmleSdgeEOaBSZHn5H36gdAbAQ9JnogN0usKjSOrRNGYSLy5TTQejChN7LJ9+kY
 Gih3TyL5aXU9xKZn/+5nWdPaVzuZksKUv9voLnVR5yXNM4c9yO2pWFBTUizgAQuhdlEDPoTrwY3
 zw0wGxiw1w35eupRmZOx2JD6uzzoVI+V1VFAu8sNGTSfHE5x5pD+KfPoZX56nhReft/aj+X2GkO
 zVoSwZNt0V2r0=
X-Google-Smtp-Source: AGHT+IFWeBUfkLimXpH6/rkpJhmGPswp2kuBGTWuMwz5cnMjbd68P1jHOBqNKoSbkkI6Vy6iYnVFGQ==
X-Received: by 2002:a05:7022:6b97:b0:119:e569:f610 with SMTP id
 a92af1059eb24-11c9d60e3e0mr20589635c88.9.1764386993316; 
 Fri, 28 Nov 2025 19:29:53 -0800 (PST)
Received: from fedora ([172.59.162.202]) by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-11dcb03cc7dsm26206743c88.5.2025.11.28.19.29.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Nov 2025 19:29:52 -0800 (PST)
From: Alex Tran <alex.t.tran@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net
Cc: airlied@gmail.com, simona@ffwll.ch, ville.syrjala@linux.intel.com,
 vinay.belgaumkar@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Alex Tran <alex.t.tran@gmail.com>
Subject: [PATCH v1] drm: i915: gt: intel_rps: handle counter overflow by
 calculating delta for each register
Date: Fri, 28 Nov 2025 19:29:21 -0800
Message-ID: <20251129032921.811332-1-alex.t.tran@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 11 Dec 2025 15:13:04 +0000
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

The previous implementation calculated the power deltas by adding together
the u32 energy counters DMIEC, DDREC, CSIEC into a u64 total and then
subtracting from the previous total to obtain the delta. When any of the
u32 counters overflowed and wrapped, the total would be less then previous
total, causing incorrect delta calculations since u64 subtraction doesn't
handle u32 counter wrapping correctly.

This implementation tracks each counter individually, allowing their deltas
to be calculated separately and then summed. This correctly handles u32
counter wraparound, fixing incorrect power calculations when counters
overflow.

Signed-off-by: Alex Tran <alex.t.tran@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c       | 40 +++++++++++++----------
 drivers/gpu/drm/i915/gt/intel_rps_types.h |  6 ++--
 2 files changed, 27 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 4da94098bd3e..8247a8b16f18 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -324,8 +324,10 @@ __ips_chipset_val(struct intel_ips *ips)
 	struct intel_uncore *uncore =
 		rps_to_uncore(container_of(ips, struct intel_rps, ips));
 	unsigned long now = jiffies_to_msecs(jiffies), dt;
+	u32 dmiec_delta, ddrec_delta, csiec_delta;
+	u32 dmiec, ddrec, csiec;
 	unsigned long result;
-	u64 total, delta;
+	u64 delta;
 
 	lockdep_assert_held(&mchdev_lock);
 
@@ -339,17 +341,21 @@ __ips_chipset_val(struct intel_ips *ips)
 	if (dt <= 10)
 		return ips->chipset_power;
 
-	/* FIXME: handle per-counter overflow */
-	total = intel_uncore_read(uncore, DMIEC);
-	total += intel_uncore_read(uncore, DDREC);
-	total += intel_uncore_read(uncore, CSIEC);
+	dmiec = intel_uncore_read(uncore, DMIEC);
+	ddrec = intel_uncore_read(uncore, DDREC);
+	csiec = intel_uncore_read(uncore, CSIEC);
 
-	delta = total - ips->last_count1;
+	dmiec_delta = dmiec - ips->last_dmiec;
+	ddrec_delta = ddrec - ips->last_ddrec;
+	csiec_delta = csiec - ips->last_csiec;
 
+	delta = dmiec_delta + ddrec_delta + csiec_delta;
 	result = div_u64(div_u64(ips->m * delta, dt) + ips->c, 10);
-
-	ips->last_count1 = total;
+
 	ips->last_time1 = now;
+	ips->last_dmiec = dmiec;
+	ips->last_ddrec = ddrec;
+	ips->last_csiec = csiec;
 
 	ips->chipset_power = result;
 
@@ -396,7 +402,7 @@ static void __gen5_ips_update(struct intel_ips *ips)
 	struct intel_uncore *uncore =
 		rps_to_uncore(container_of(ips, struct intel_rps, ips));
 	u64 now, delta, dt;
-	u32 count;
+	u32 gfxec;
 
 	lockdep_assert_held(&mchdev_lock);
 
@@ -408,10 +414,10 @@ static void __gen5_ips_update(struct intel_ips *ips)
 	if (dt <= 10)
 		return;
 
-	count = intel_uncore_read(uncore, GFXEC);
-	delta = count - ips->last_count2;
-
-	ips->last_count2 = count;
+	gfxec = intel_uncore_read(uncore, GFXEC);
+	delta = gfxec - ips->last_gfxec;
+
+	ips->last_gfxec = gfxec;
 	ips->last_time2 = now;
 
 	/* More magic constants... */
@@ -607,12 +613,12 @@ static bool gen5_rps_enable(struct intel_rps *rps)
 
 	__gen5_rps_set(rps, rps->cur_freq);
 
-	rps->ips.last_count1 = intel_uncore_read(uncore, DMIEC);
-	rps->ips.last_count1 += intel_uncore_read(uncore, DDREC);
-	rps->ips.last_count1 += intel_uncore_read(uncore, CSIEC);
+	rps->ips.last_dmiec = intel_uncore_read(uncore, DMIEC);
+	rps->ips.last_ddrec = intel_uncore_read(uncore, DDREC);
+	rps->ips.last_csiec = intel_uncore_read(uncore, CSIEC);
 	rps->ips.last_time1 = jiffies_to_msecs(jiffies);
 
-	rps->ips.last_count2 = intel_uncore_read(uncore, GFXEC);
+	rps->ips.last_gfxec = intel_uncore_read(uncore, GFXEC);
 	rps->ips.last_time2 = ktime_get_raw_ns();
 
 	ilk_display_rps_enable(display);
diff --git a/drivers/gpu/drm/i915/gt/intel_rps_types.h b/drivers/gpu/drm/i915/gt/intel_rps_types.h
index ece445109305..e275291787cf 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps_types.h
@@ -13,10 +13,12 @@
 #include <linux/workqueue.h>
 
 struct intel_ips {
-	u64 last_count1;
+	u32 last_dmiec;
+	u32 last_ddrec;
+	u32 last_csiec;
 	unsigned long last_time1;
 	unsigned long chipset_power;
-	u64 last_count2;
+	u32 last_gfxec;
 	u64 last_time2;
 	unsigned long gfx_power;
 	u8 corr;
-- 
2.51.0
