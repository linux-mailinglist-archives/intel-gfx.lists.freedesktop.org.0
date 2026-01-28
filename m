Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4N2MCnbHe2nZIQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:47:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB230B4588
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:47:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5421D10E8C6;
	Thu, 29 Jan 2026 20:47:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="V0bpNCWm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6006C10E70E
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jan 2026 14:59:21 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id
 d9443c01a7336-2a77c1d5c3bso30976125ad.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jan 2026 06:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1769612361; x=1770217161; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vGJMSx3RqPnXMSF3iMxugpnUOfI/BDwqereywSHSzkk=;
 b=V0bpNCWmd9FiAigqm+GuYwtU+mHfiutsz9vVoozfpdf+invJK3YjfcBqRwK5COemIZ
 mDNfN52Vd8Cc5jM7R7aYViNbi32DmEpLVGgMSgs+SUkzLhn2tMBwpjhw4ObpBx8ineXt
 RQFZnrn6pL+Y0bOWo4tQ2csQ/fbDnfjD7Xk7dkF1BOGtIBRyyDTKqIIoPXHaN+eEEJsc
 7vNvA4Yi068bJS4X0HH/NiVIo6uUztJRibK3J4JFO0iF2dOlEDY14WMf8cD6WquiZpMe
 XlJhIo03KzzMIQMDN7+Eq2YVjhlIlAkq1u617qO75OYtZY2Dgx/ONpFNFrrxcXLk+dcI
 080A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769612361; x=1770217161;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=vGJMSx3RqPnXMSF3iMxugpnUOfI/BDwqereywSHSzkk=;
 b=TLhTw5/MIzrJKKejy5fIpTndxV61coz4OqYfYYk/WmqifLn4Qwq/OTqhHgBwkXRM7+
 W0G99zdN1LQJKnzbk1NNRxbkSTDAXpzrCJI/W9h9IZ+pr2EWPwB3IS7zyPcAm3KfCejD
 fMpTQ2XJ/MjxH/RjchNAWhyuCnSATvyzICVxMJbTrN2T8ZygeAToL+Ano4ozmbVMQnct
 QILlw9lHcmV0hKRw1V0LBFlc6g0FRmfb08zRE6KWn8gWO4PUrnwDhSGuNyequp/8Mz3y
 KSNFVkZO4/flR/RwrP/TculjVH2vq4VoOjsohRM59sYEEamvbVdtFd/oA0lbVoaH0m1j
 3tEw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXIuTI9ZO5uf/Ze+vJRCgsSfRzMCwtQ9la3CqBLecDjM38WUi4ILFdeAWU1kC5Wc/DyfxOH8HU8E94=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyHxOLmsmECTc1OTIQ9uljsfc1CfJoEE9wrvv2Tjy000A6+L4at
 jqbcfoT6mmQ3LFKPt6Tmizyz4i4i07eyXu0OC4kukATPe/y3UHux51s=
X-Gm-Gg: AZuq6aIEBJk6fXOmjJxGJRM970/Z0WfiV+jbbzBMr2YZM5vhVwNcEKFsWwUVR5zShRB
 6QSP4PHIyZCjYZ4N1rLGhFPhVb6ZCABKQTN1GskqIa4vboQJloNSusoS2GwlUxtkRlMBgfeK2hY
 0ZgColw/I6aK4YhVu3Wxic3f2GgmWCZtxEzzj+Jgef9elyTCuu0XosYbhMS3dMarM61NnQumEtu
 mFyAsC3H3EKHJXCRr6AMd2islXsCFiJQeOa3roXcWm5490TGFlznW5hnM9XFeCa6GOMdASBMsu0
 yb8xID3ixYsGlms5p87RWo/3/YQNAiDXKozVj28a9BSd9+amGiHNlsf1aixDH2UuLEN4UdHlIn6
 PfEBChTbQFzyIzMcpqA+yot6QV2hgh/Q2NGjXeVOy0Cb5KxRpxYJclTyylRlRRLM6A5FppZbm11
 UWwfsNkP5QJ4YZx47NQnO68ao=
X-Received: by 2002:a17:903:4410:b0:296:2b7a:90cd with SMTP id
 d9443c01a7336-2a870db7c28mr53750585ad.32.1769612360659; 
 Wed, 28 Jan 2026 06:59:20 -0800 (PST)
Received: from at.. ([171.61.161.8]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2a88b5d9a7bsm25820235ad.79.2026.01.28.06.59.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jan 2026 06:59:20 -0800 (PST)
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
 "Borislav Petkov (AMD)" <bp@alien8.de>,
 Francesco Pompo <francescopompo2@gmail.com>,
 Lenny Szubowicz <lszubowi@redhat.com>, linux-efi@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: [PATCH v2 1/2] efi/libstub: enable apple-set-os for all apple devices
Date: Wed, 28 Jan 2026 14:58:37 +0000
Message-ID: <20260128145855.1071-2-atharvatiwarilinuxdev@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260128145855.1071-1-atharvatiwarilinuxdev@gmail.com>
References: <20260128145855.1071-1-atharvatiwarilinuxdev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 29 Jan 2026 20:47:43 +0000
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
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[29];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[atharvatiwarilinuxdev@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:atharvatiwarilinuxdev@gmail.com,m:ardb@kernel.org,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:javierm@redhat.com,m:tzimmermann@suse.de,m:bp@alien8.de,m:francescopompo2@gmail.com,m:lszubowi@redhat.com,m:linux-efi@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linux.intel.com,intel.com,ursulin.net,ffwll.ch,redhat.com,suse.de,alien8.de,vger.kernel.org,lists.freedesktop.org];
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
X-Rspamd-Queue-Id: CB230B4588
X-Rspamd-Action: no action

Make apple-set-os run on all macs, as
apple-set-os is needed to use eGPUs and iGPU.

(tested on iMac20,1)

Signed-off-by: Atharva Tiwari <atharvatiwarilinuxdev@gmail.com>
---
 drivers/firmware/efi/libstub/x86-stub.c | 22 +++++-----------------
 1 file changed, 5 insertions(+), 17 deletions(-)

diff --git a/drivers/firmware/efi/libstub/x86-stub.c b/drivers/firmware/efi/libstub/x86-stub.c
index cef32e2c82d8..60e1a41bfe5f 100644
--- a/drivers/firmware/efi/libstub/x86-stub.c
+++ b/drivers/firmware/efi/libstub/x86-stub.c
@@ -303,32 +303,20 @@ static const struct efi_smbios_record *get_table_record(u8 type)
 
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
-	};
 	const struct efi_smbios_type1_record *record;
-	const u8 *product;
+	const u8 *vendor;
 
 	record = (struct efi_smbios_type1_record *)
 			(efi_get_smbios_record(1) ?: get_table_record(1));
 	if (!record)
 		return false;
 
-	product = efi_get_smbios_string(record, product_name);
-	if (!product)
+	vendor = efi_get_smbios_string(record, manufacturer);
+	if (!vendor)
 		return false;
 
-	for (int i = 0; i < ARRAY_SIZE(type1_product_matches); i++) {
-		if (!strcmp(product, type1_product_matches[i]))
-			return true;
-	}
+	if (!strcmp(vendor, "Apple Inc."))
+		return true;
 
 	return false;
 }
-- 
2.43.0

