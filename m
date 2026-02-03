Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id o3oEOb0Bgml5NwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:10:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B23DA5E3
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:10:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A77CC10E676;
	Tue,  3 Feb 2026 14:10:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gTonk76a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0716810E554
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Feb 2026 07:31:58 +0000 (UTC)
Received: by mail-pl1-f174.google.com with SMTP id
 d9443c01a7336-2a91215c158so14083745ad.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Feb 2026 23:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770103917; x=1770708717; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JuaUAhd1+lDG6wBrbXZqMO2C5ILHdpZJbCQrItpX1Ck=;
 b=gTonk76alwH4yy8cx56qmvYfNpF1qCr0VU3ZwOVfQHWqOtiQcdIADX8mXwke0XmEvl
 XwzkUqMRzPA/B01o27K+jQ/kyHqiWLf7RddTa7DpUc0AtpA4NAiZ6+aE4p3mfUYC7Q9O
 ylfYpflz7pkRzoB7A81s3wFF/OgjSWN+dvnwmqdIR8PPH2XpkJYlC3UpCXwcpaSryPwR
 u4P/Zp2DCq/OFGwWmsB4aop0TABTvvsJEXTle5bA38X6HbGGEqZSveUN62vyB2beS4Wh
 UoE84yTmaCH1ZF4gOEQ1y2Lo2RbMuJsoGfswOzWWsnOXf//uqCz0w2fk+hePAljr/byF
 PYaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770103917; x=1770708717;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=JuaUAhd1+lDG6wBrbXZqMO2C5ILHdpZJbCQrItpX1Ck=;
 b=T5PZeGq9eFAN0GTwuUcEbbGFUG5gNvQFKYY5XnEdKk3zJbOEqvWFtVcdRYX8Lf52dw
 76Mix7zDYAShGjN7af5NUNbz4HvpzDAOxb+MzCyAw2ITI4AXHsuXbEop+5pei+RHvrKr
 1YXegjnqB0wWVJVyfBrrfhWHS/u3mMvz4Witcq+AAsRbMdZghML+SuhBfr6SVpSPpG+Q
 5mRGUTxyN2esP7GWbN4yEMwa2CPK9n3BCx+RjBUrJ0/oT+M8BIpwoHuU6RQrJVHPCfu4
 08RdOyBO4WJihlXYd2RWRmTxCJFjnJHVApd+youBid+34sspY2sZi/78m7qTMeiFVM0G
 Edfg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVUZ+qzovJjCBC7zUisEy+UTSAuVwKzLNTysG+7jf2jgI7DInGH8cQqZZT30IowTo+FYRsAidN3mIM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxC+l3ABSEcPLtNOZpdIIVvvx4fTlU7OiBjGoXAp1JlIQXV5qyG
 PeStTrwlNyMm1C9PLYCK1AJ8NGTJ9twesbXustIbgssqUZvS9kPacfaq8hs4
X-Gm-Gg: AZuq6aIm12ZZfTdannmdps3ncd3QwnPgzaG0A2j2+orlzzuEnCeqNgC0/0QfYq3lpuY
 4/cek72fWLbS+anliWuehERs+lthqb3SaxyzrJ+0VF4CFgLC4CVTcSvSzgmIZ1wSbbSESWiPV6Z
 ft0LsadHo9sOYdpCbp7QDsGBiaXswNNytm/31PrLIUikMfLKvZq4DODzuw+o+xufGLFg7cNVfdD
 vFJMjjYxmCIOkYiDd6lfIonnmPLaRScMIiri0CjuSRMtvEZJom7nvYhb+sCnXRak1Gt/NVdEmst
 U//bcz4hxIiThNdK3lOnEFCiXbcJT7ucjps7p6XIKBB5QxwYUf6+smnSBoIV8oTy7l9uXhwm0GA
 UVJ9Aiz/w94thMby5Vv32nFxyF9G9XqanjXkKhup94evDwh5GN9KiUGOBIWonzqXw2WJZ5t3SOt
 HH2XPGpdk0C+wB6M+mCvSi09kbcA==
X-Received: by 2002:a17:903:1ac8:b0:2a0:d728:2e79 with SMTP id
 d9443c01a7336-2a8d7ed9bcbmr138418055ad.16.1770103917493; 
 Mon, 02 Feb 2026 23:31:57 -0800 (PST)
Received: from at.. ([171.61.163.171]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2a8dc225534sm108280865ad.68.2026.02.02.23.31.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Feb 2026 23:31:57 -0800 (PST)
From: Atharva Tiwari <atharvatiwarilinuxdev@gmail.com>
To: 
Cc: Atharva Tiwari <atharvatiwarilinuxdev@gmail.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Lenny Szubowicz <lszubowi@redhat.com>,
 "Borislav Petkov (AMD)" <bp@alien8.de>,
 Francesco Pompo <francescopompo2@gmail.com>, linux-efi@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: [PATCH v3 1/2] efi/libstub: Enable apple-set-os for most apple devices
Date: Tue,  3 Feb 2026 07:31:17 +0000
Message-ID: <20260203073130.1111-2-atharvatiwarilinuxdev@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203073130.1111-1-atharvatiwarilinuxdev@gmail.com>
References: <20260203073130.1111-1-atharvatiwarilinuxdev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 03 Feb 2026 14:10:02 +0000
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linux.intel.com,intel.com,ursulin.net,ffwll.ch,redhat.com,suse.de,alien8.de,vger.kernel.org,lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:atharvatiwarilinuxdev@gmail.com,m:ardb@kernel.org,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:javierm@redhat.com,m:tzimmermann@suse.de,m:lszubowi@redhat.com,m:bp@alien8.de,m:francescopompo2@gmail.com,m:linux-efi@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[atharvatiwarilinuxdev@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[atharvatiwarilinuxdev@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 88B23DA5E3
X-Rspamd-Action: no action

Enable apple-set-os on Apple Mac systems by default.

Exclude MacBook6,2 and MacBookAir7,2, as enabling apple-set-os on
these models causes regressions.

(tested on iMac20,1)

Signed-off-by: Atharva Tiwari <atharvatiwarilinuxdev@gmail.com>
---
 drivers/firmware/efi/libstub/x86-stub.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/firmware/efi/libstub/x86-stub.c b/drivers/firmware/efi/libstub/x86-stub.c
index cef32e2c82d8..532a713adef5 100644
--- a/drivers/firmware/efi/libstub/x86-stub.c
+++ b/drivers/firmware/efi/libstub/x86-stub.c
@@ -303,15 +303,9 @@ static const struct efi_smbios_record *get_table_record(u8 type)
 
 static bool apple_match_product_name(void)
 {
-	static const char type1_product_matches[][15] = {
-		"MacBookPro11,3",
-		"MacBookPro11,5",
-		"MacBookPro13,3",
-		"MacBookPro14,3",
-		"MacBookPro15,1",
-		"MacBookPro15,3",
-		"MacBookPro16,1",
-		"MacBookPro16,4",
+	static const char disabled_product_matches[][14] = {
+		"MacBookPro6,2",
+		"MacBookPro7,2",
 	};
 	const struct efi_smbios_type1_record *record;
 	const u8 *product;
@@ -325,12 +319,12 @@ static bool apple_match_product_name(void)
 	if (!product)
 		return false;
 
-	for (int i = 0; i < ARRAY_SIZE(type1_product_matches); i++) {
-		if (!strcmp(product, type1_product_matches[i]))
-			return true;
+	for (int i = 0; i < ARRAY_SIZE(disabled_product_matches); i++) {
+		if (!strcmp(product, disabled_product_matches[i]))
+			return false;
 	}
 
-	return false;
+	return true;
 }
 
 static void apple_set_os(void)
-- 
2.43.0

