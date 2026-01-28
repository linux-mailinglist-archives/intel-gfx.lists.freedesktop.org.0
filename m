Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAk4MXPHe2nZIQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:47:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75312B4581
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:47:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8EF810E8BF;
	Thu, 29 Jan 2026 20:47:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g8L04+IK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7854A10E6E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jan 2026 14:59:29 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id
 d9443c01a7336-2a12ed4d205so46369185ad.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jan 2026 06:59:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1769612369; x=1770217169; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aXyZBm2HT5a2syRm7I8O8JEOj9+5Hm8S0vVHV9UIr+Q=;
 b=g8L04+IK5edafrFewkF4egpq/1U4F9l3c5eUEiLuZ8xy479s1ZoS68Qup0umF8kqqr
 42/k7Ve20KT4sZUbc4Fi3rtjUSh7uWjAojcbybVgcV9GD5cxrb6XOw6yeskXwWYp1xy1
 FW7FKIZQvStzzk8R+d3Wr/s04H1OBpN6FqbxJQoQ2ZTxlFvo8h7Sa1KDsvZHLdB1skYG
 hLeBwm8WGB4L8hjYyI+OcOoTgM+NdtjY4B8YJ2tUcqRkqXTavkQBRB3VuuyRNAgMxvAL
 BR14NnC2zC3xsKGpCsh9R0VxOU0sS1SZFbZdQpUdzgkqNtYHdCjvPVtQ8MfzU8RzRyso
 KnuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769612369; x=1770217169;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=aXyZBm2HT5a2syRm7I8O8JEOj9+5Hm8S0vVHV9UIr+Q=;
 b=SEz6c0Ie+MaRxEmBeFUULr1Lz6TDIoWA1HZ0h2XnDSdAfffvnJfI4T7R4rEjwnOjKf
 dUGcTjshTaqYktyHVT293qECOb8NUSW9PqsEvoQVwSzPFPsbMIpB5of+s/sEpdz4lTPf
 u+TU8XxzraqY3yOthnkespLmDtAkivB/HRTjtHxd2LNCKmjHVAaaktMRYPPVUpqSc3wV
 RvLvSy5mZ4hU9jJhzsaZt2kopp3eFzOJO0uYlxUZJLRFlI8rd84S/AtMbe4eutsYBsYM
 htjUvkM3seL3NHrsGWthK3yE/6cyUpFZDQ0sh58f+9qrcpNpbR+owQBRQMV+gUyaDndQ
 QzLg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXaVs8wFxXz9CMo4WQBBdf4CSibJ5XCY8u08qawQiylaZQTJReXCGBUMr2pzLBMSKryJ31HEB60O6I=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyIdIx/+6VRAtN2QXQLhcZeqCQhr4QrUO/BcUru/sM45Um6mvb6
 FcHmUD1Oqr/GdJQQkNhhUitrkDvOtVUkBEJviPkXMI5gx/9N5cbyrAE=
X-Gm-Gg: AZuq6aJycD+FzM19aKTRfCXxg3XMfogXcitJiViNkiS1pWwdcc8H8xckScG8cshM+q7
 d722X4qzjznG9tGMif80/ZtJXcQQkmZqAK8AsP4tTypEfhlfp4RVhaD6I3kv9ElTcVXJR0gal/a
 XMUhapMP8/Xqxl0LIC/ed8miTXvZezlNadUbp3XPQh8EHawrWgM2PgxwmSggPP5kLoXVyiWrj8E
 DnHzNPYrngUIm4LAbtRL88cnVFS9MT7uHRr4oYUZW41PvLVowhtBwNtNjkuGfgfoQY0hYzNUEpq
 mOa1Cix/h79TB2TV6C46l/qsyOd4ZaEQmCXI5MwrwVttYOtF2yWR2hGKCNzLP/vJ4oXXEF3mfv7
 bXn6ZsRwh2uMxu0Dn27vCvL4AcHxFwycygrmdt75e/XPeZfQnwNb6+LFP4aWtCg9Gi8JBZ20YwF
 t/6SzyFC6iN8S3
X-Received: by 2002:a17:902:ce0d:b0:2a7:d7b8:7661 with SMTP id
 d9443c01a7336-2a870d536c7mr48989305ad.4.1769612368925; 
 Wed, 28 Jan 2026 06:59:28 -0800 (PST)
Received: from at.. ([171.61.161.8]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2a88b5d9a7bsm25820235ad.79.2026.01.28.06.59.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jan 2026 06:59:28 -0800 (PST)
From: Atharva Tiwari <atharvatiwarilinuxdev@gmail.com>
To: 
Cc: Atharva Tiwari <atharvatiwarilinuxdev@gmail.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>,
 Javier Martinez Canillas <javierm@redhat.com>,
 "Borislav Petkov (AMD)" <bp@alien8.de>,
 Lenny Szubowicz <lszubowi@redhat.com>,
 Francesco Pompo <francescopompo2@gmail.com>, linux-efi@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: [PATCH v2 2/2] drm/i915/display: Disable display for iMac's
Date: Wed, 28 Jan 2026 14:58:38 +0000
Message-ID: <20260128145855.1071-3-atharvatiwarilinuxdev@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260128145855.1071-1-atharvatiwarilinuxdev@gmail.com>
References: <20260128145855.1071-1-atharvatiwarilinuxdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[29];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:atharvatiwarilinuxdev@gmail.com,m:ardb@kernel.org,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:tzimmermann@suse.de,m:javierm@redhat.com,m:bp@alien8.de,m:lszubowi@redhat.com,m:francescopompo2@gmail.com,m:linux-efi@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[atharvatiwarilinuxdev@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linux.intel.com,intel.com,ursulin.net,ffwll.ch,suse.de,redhat.com,alien8.de,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[atharvatiwarilinuxdev@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 75312B4581
X-Rspamd-Action: no action

Disable display on iMacs, as they can't do link training
on the internal display.

(tested on iMac20,1)

Signed-off-by: Atharva Tiwari <atharvatiwarilinuxdev@gmail.com>
---
 .../gpu/drm/i915/display/intel_display_device.c    | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 1170afaa8680..b1fec1018d7e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -3,6 +3,7 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/dmi.h>
 #include <linux/pci.h>
 
 #include <drm/drm_color_mgmt.h>
@@ -1435,7 +1436,18 @@ static bool has_no_display(struct pci_dev *pdev)
 		{}
 	};
 
-	return pci_match_id(ids, pdev);
+	static const struct dmi_system_id dmi_ids[] = {
+		{
+			.ident = "Apple Inc. iMac",
+			.matches = {
+				DMI_EXACT_MATCH(DMI_BOARD_VENDOR, "Apple Inc."),
+				DMI_MATCH(DMI_PRODUCT_NAME, "iMac"),
+			}
+		},
+		{}
+	};
+
+	return pci_match_id(ids, pdev) || dmi_check_system(dmi_ids);
 }
 
 #define INTEL_DISPLAY_DEVICE(_id, _desc) { .devid = (_id), .desc = (_desc) }
-- 
2.43.0

