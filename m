Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OP8+AlFzymnG8gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A85F035B6B1
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A47610E6F1;
	Mon, 30 Mar 2026 12:57:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iUCWAdEA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com
 [209.85.160.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C71210EBF2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:59 +0000 (UTC)
Received: by mail-oa1-f54.google.com with SMTP id
 586e51a60fabf-40f1a1f77a6so940307fac.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551359; x=1775156159; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TGwHOHakhEHhnxVqmZq5DXxfR0MylvY9XafKKBqzVj0=;
 b=iUCWAdEAO1gVfN4+XaMQq4vLDknq2x2vA66IcR8iNK0Etrr5URWKtVnhnhgskqXtJg
 6F2kvkc7x9hNhr5hAet7NCQW/3vGIDFZjUrZdYktGDUPy8fHsgEl39P2n2jMWAcal7RJ
 EPhqh2Ao0R2GwF9m3zOvhw6uOmXhMj/+MbiEFELbVi/KsSpfRt3e8VTdIpJmxdcP4eb9
 gTWAHEZ+yo+CTj2JbNfVrDx3KZ0XAtzYib8iZQKoWZ8aSyEpZf+iL6swukJ0fu+unndc
 bYdEYRW0vNlhobK3FQpjL6Tw91GINx7u/ZunMZ8OsRKfgI5uIUoCtCx3ZRe4W/SKiU2b
 DtZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551359; x=1775156159;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=TGwHOHakhEHhnxVqmZq5DXxfR0MylvY9XafKKBqzVj0=;
 b=oXc9du5JmRhoBIxBdRvzUzEn9P00un3VuKOFUgF90NvL+F1kMetdV0s0XkkHj20+Uu
 4OYEpteM32xRA7gVlVqtsIrmWKwYDmz4fZfO3eH+DxkEJK5Bp9NFoBJCDp9O7XowENXX
 uwhvmm4wT5gxwoTITZdf9U2OEjHmhTNYKtosRywOOIM/wXg//NcX0N9LERyMq4TryXXP
 8pqjOQ4NOnm/EGw3bbjHD01Nd4pba8FsDL8O0l7VotzOUdJHnt7tKGfGssGIWedN1w1U
 DiMxAcC2lpYUe7pXBfZLzYKN/BhFSgUapiAoPaJ2bPGGqfazJ3EepzWdH/E/W0BywJwd
 ZnXw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXTttqYQRBcyAeurRG59GSZEp2L20OxdN2NI0O8gaH5Hpo0X1Dcb1dnP9XiPVdnp1Cfq8VK0gPCMkE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx9iFd4UXpf+s0vs9CBCrKOzlxiy6eWI+QNGP/Qw34xbKd+DRr6
 TDN3vveg7+JIx2N5fqkmT87zXUhD9vpqNjRUhvZwXuzrl3iQx66OXtBv
X-Gm-Gg: ATEYQzwRfCMH7OeF2D0sr/WQUhp+UeH32YlnRBpDLIYgqFM0y8TrFE1i03wSjMk1NNA
 h/zCVe8MTGRjOoiyaxWy8gSJxeEhgH6gzCyVsjNa+R8AWsPFO1OicY/dVv2YztmAjTpyi4cMG0R
 V7ClfliSSMWU3HtjAUeFVKnUjSu8JYdZ5xfYoNhK7d8B19dzBrNhKDl/U/OIyS6CRWIXje+6pkj
 +KlnS1NRZfdUCOO3pn5Mn8FDbDjTV07ZHhdH0rDKxyO/Q2dk+xvqmi/TmRznILBEP++/cBqb+Dj
 jnlztgyHf/6gJEk1cfSqroW1gRFHeRu1rv1LOpprDAkQLIHp2L5DpWCAyM5bowdZRpGPSsGgyjE
 z/Wno+6wm8UWRRNg5IEDkkkbefl4hKKwg43qwhkSja0nZVF1eeDJGD5jqbFTQFkP1oIsL28yEj0
 GZ4mhRBmEiavBBeOTBzVb+c3HdaDzbTi86UHhsaWaQABcsnuaP
X-Received: by 2002:a05:6870:458c:b0:416:32c1:4276 with SMTP id
 586e51a60fabf-41ca7005de9mr4737216fac.28.1774551358609; 
 Thu, 26 Mar 2026 11:55:58 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:58 -0700 (PDT)
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
Subject: [PATCH v12 57/69] drm-dyndbg: add DRM_CLASSMAP_USE to vmwgfx driver
Date: Thu, 26 Mar 2026 12:54:01 -0600
Message-ID: <20260326185413.1205870-58-jim.cromie@gmail.com>
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
X-Rspamd-Queue-Id: A85F035B6B1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The vmwgfx driver has a number of DRM_UT_* debugs, make them
controllable when CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg
that the module uses them.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c b/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
index 0f101aedb49a..d877d0a8c830 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
@@ -259,6 +259,8 @@ static int vmw_probe(struct pci_dev *, const struct pci_device_id *);
 static int vmwgfx_pm_notifier(struct notifier_block *nb, unsigned long val,
 			      void *ptr);
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 MODULE_PARM_DESC(restrict_iommu, "Try to limit IOMMU usage for TTM pages");
 module_param_named(restrict_iommu, vmw_restrict_iommu, int, 0600);
 MODULE_PARM_DESC(force_coherent, "Force coherent TTM pages");
-- 
2.53.0

