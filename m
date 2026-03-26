Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UH+CCFJzymlQ9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C891035B6CE
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F0EC10E6F6;
	Mon, 30 Mar 2026 12:57:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="f6sNWf4n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com
 [209.85.160.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39EF910EBF1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:56:02 +0000 (UTC)
Received: by mail-oa1-f42.google.com with SMTP id
 586e51a60fabf-40f387a688dso1105457fac.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551361; x=1775156161; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hkvDWdY7OmvSXSpjnEXWJTz2q+ynFgJjHoQA2h5Gn4E=;
 b=f6sNWf4nDUQIKef+ex8VL4Cihv0ZtbNl98WZhd5bg5JWD2e0bybN0NSAIzH0JxO3Rw
 YjGyIoJYrp6dc8zMNsvMo4IoWCreyEyJLcF/pG/SboNpr/Dyuhy7Pxmp57RwZ/NQ0797
 /bIB6f7RV4KupxX9Si2zq5PzNbKkt+z5lZ+mqKOtv6lrOMXnVEJf6d2ac/+yAMUXqcoi
 sAEsXwS90Uy0yRyZBXD+nQEkYUJZbVWaTTH6QXxjQdK4PnDn5nVokv0jeitEkZhVYYyw
 8GXV8C9LW9Kb8x9glPnhUicW51XlR4rS376ws8aZiipU33/RaDQnmlyXv3C3uFUNwaZB
 1vSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551361; x=1775156161;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=hkvDWdY7OmvSXSpjnEXWJTz2q+ynFgJjHoQA2h5Gn4E=;
 b=JiwdN7AJGCup11MjPFoxyXOGoDuUJbvGmUeFyIXziDIZT3W78TWhmXP7pVb0KwVEOz
 KtM109XGR8gZVNH4gbwWW0xc0P+WN0aQiIquoIrREnTxf1EyGBbaIsIUj5Dw1XVTrjXw
 1mjorY3PhjrajUCcFm51pTuKsAjbxx22tXP+i8shZ9d01+u4ygRpInmdyEIHQFhFcLQ3
 Ht7dEjXp11tkhOzYBSfnoCsRn3AztgAU2QXprSDWlUyPSz/7pZz/OMtDoa2Gm7VZFi4u
 2Ov5l8EHZwXBKXDgbOi/gAm7piyC0zPLBulwFp+yELCAPvGQTzx/BMrZurlgpU3cvc9h
 qWNw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXBCVpaHE3DmasLYGN/7wbA+2Dh/v9BO36VGxBHiCLwcsCKs5I1ZgZ5RD6Nahrs7pIiVV2PoVUZ8F8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyE7ZXKOadgaldeW0KUG5OpMLap9ygV81Ku1HraNiXNQJqn/J4k
 QMJFMkQ0H1wO8cjGZH14VBFM4bTOWFwLtOEOPYZC00bV+pQiOFVfGJKt
X-Gm-Gg: ATEYQzxxHO2k+pqISpUWfUKDI/7dA1dmTu6drJ8+3nE2cBrvNfI1jdRWXKOGeSJOIuo
 q0q156lxV6LNFtsOi60xdx38HiMbbzzGVxHE++bSAyltZqlxu5neH7oHIUzPj5YUqm4g7qiKH+U
 y31aFkT5IX8xbmnB0nA4Q3GeCXMERg7bgZdYCyiFh4dX4cCHWw7l1SpF6OT2ibJX8ywagVChfwe
 WF/dsyLzL/f8XLN3TnpfkR4LWqVPPNo2PrWPOrH4xKr+FTXsf+C0CtVO2LgfOjh9QdGPU+n1D7V
 kMOJ2AkPn+Ds1BTdCLbbUhPxMeN20JAUS7SZq7opM+b/rxVxjz1foS6K65yg8cZPJ3t1UE+acVr
 fmBlUEAkPjU8njeByhXwGOxXOJHRrVKL3al2Ak5VLFWma0aGHh684WcZfE0Pep+ciAHPuOmngjq
 2Y6Op0Mp1teH7wckp8x6kqbnp/Z/xiSLKGjfHFJQrX3S4oF40T
X-Received: by 2002:a05:6870:b14b:b0:417:56da:593c with SMTP id
 586e51a60fabf-41ca715dbeamr4692008fac.45.1774551361348; 
 Thu, 26 Mar 2026 11:56:01 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.56.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:56:00 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, airlied@gmail.com, simona@ffwll.ch,
 jbaron@akamai.com, gregkh@linuxfoundation.org
Cc: jim.cromie@gmail.com, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH v12 59/69] drm-dyndbg: add DRM_CLASSMAP_USE to udl driver
Date: Thu, 26 Mar 2026 12:54:03 -0600
Message-ID: <20260326185413.1205870-60-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260326185413.1205870-1-jim.cromie@gmail.com>
References: <20260326185413.1205870-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 30 Mar 2026 12:57:43 +0000
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[90];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: C891035B6CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The udl driver has a number of DRM_UT_* debugs, make them
controllable when CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg
that the module uses them.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/udl/udl_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/udl/udl_main.c b/drivers/gpu/drm/udl/udl_main.c
index 08a0e9480d70..58fea20a1e81 100644
--- a/drivers/gpu/drm/udl/udl_main.c
+++ b/drivers/gpu/drm/udl/udl_main.c
@@ -21,6 +21,8 @@
 
 #define NR_USB_REQUEST_CHANNEL 0x12
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 #define MAX_TRANSFER (PAGE_SIZE*16 - BULK_SIZE)
 #define WRITES_IN_FLIGHT (20)
 #define MAX_VENDOR_DESCRIPTOR_SIZE 256
-- 
2.53.0

