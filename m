Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGUuHmFzymlQ9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD1535B7E2
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79DD410E75E;
	Mon, 30 Mar 2026 12:58:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CZp95l9S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com
 [209.85.160.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ACF310EBF1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:56:06 +0000 (UTC)
Received: by mail-oa1-f51.google.com with SMTP id
 586e51a60fabf-41576c5c01cso891762fac.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551366; x=1775156166; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ves6/eFJLAs0HG68Znj+VH4wZtUdDvx4ZnDak47UPW8=;
 b=CZp95l9S9Yg0SfZ7f6KlJmcbF3c0GrNH5LivAhepCkzOCZxIzhYPQ5V0+MMdGr0oPj
 qvAAfkr2NuO6GnJMh2ijqtP1zTRFNQhamyI/4PfpO1PiSQ1HndiWySTNnYySVUGeGm0X
 MM1O1au+mgT/HW8nm+YBrfA/D1gKUpHmUrfjqgg9E/P55ms/lAfgqX0tfSkymtmadq44
 73IGoPISKS5Xcj9/vDEA7fzJeLZvJrTDFcd8KT9rMF33QhtrQbuGFICeLu3bYJXX/zrO
 pvzjML5Mf7pO4S7J3YI+mca0pEIRL6tZy5SPN7zezyG54qtBL5YI6ePzU5mXILcNUvbE
 2f3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551366; x=1775156166;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=ves6/eFJLAs0HG68Znj+VH4wZtUdDvx4ZnDak47UPW8=;
 b=O3rZ4zaNDFhLqB+ez73o79HuKCsHAEmv5O4ASF/vZNoSKfxGRcNqNbB+sZ7VnCrWkF
 YLr0GjDMED06YYxlSN0onq9HGQlbVbOC+gxPED6PkOOuYC95TthvLoxJoByhxeAxzLag
 wMkPNvMdxjB8oOrteB4B/ePK2R1FQTn4CJM0/8fKA85Lp2a8yqLr3mLQIX8W26U6n9Ld
 oJmJxXRc8QW4OYF+UnYbqP4cEKFOS4pCnBsDaM1XGMIcoXmRJvmkUT2EEk51e8TPmWpL
 vgCiwQdPj7E0BiNPFh4mKyq6+J2EDUbN7tiFQclW9puS9URzoUhIOmXwSygE1zfgeLGu
 8K7A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUZEcIGzyzHy4xC/pQhysw8avxSPCRrXSSTdl1AIUsnqIgBy+cJTYUi70Cr/EEewN7inu5F+RPqCBY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzT8GayHtLHhCBGAWQVEYapBqe5jc3bT2tgh/ZVfPxOUoQvQql6
 j/95Uw/EOfOy/6CBy95ECrqtfjOgxsSgaMDrPrlTEr26DPgE4pjQpEmr
X-Gm-Gg: ATEYQzzvqb3SLiZVkYN3gp0kn0HYbvqNwx8AslhBN8fLkiYROxlcanZk19IIiF2lAw8
 66EIi22YZykZgbabqVCOmcEhNKJMMGDP4l5STy8EiS2vvslG/iDZl0XNENRRRgs7za1kzr6xetP
 rMYhK08kmlPYbRCPDFGkXwRCxvBRo2i3YwrZq0SyM8LFU4vJoc/EMSNFULtdZCYO9cHP75Z1lIL
 ieUrHtOO6tK08SYR8bc06TuiTry1h77EBbhrr1W0UEPQK+5Qs3qMdPoyCEtreTNd+/xhlIc5eei
 A6c7a3b3sAMfrn8OMXyxI5m4EbiFi4doybVH6VuAzd14RUJPJ5H6wZdqynP6rqWV76ebHyJiWuC
 TIKmpdtZCBc+kyfWhNrEW9GNtt/+X6vn0BOmzFlMq5UfYQFbX5/gdal9SAu+xC+V12fteSeQ+5l
 UXLL1tJqqjTrlKPyd1AcD9K8HWRVnAMbuk2xwq7ikGGNkylKvT
X-Received: by 2002:a05:6820:1506:b0:660:ffcf:42e7 with SMTP id
 006d021491bc7-67dff45c71dmr3869491eaf.30.1774551365754; 
 Thu, 26 Mar 2026 11:56:05 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.56.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:56:05 -0700 (PDT)
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
Subject: [PATCH v12 62/69] drm-dyndbg: add DRM_CLASSMAP_USE to the qxl driver
Date: Thu, 26 Mar 2026 12:54:06 -0600
Message-ID: <20260326185413.1205870-63-jim.cromie@gmail.com>
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
X-Rspamd-Queue-Id: 0FD1535B7E2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The qxl driver has a number of DRM_UT_* debugs, make them
controllable when CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg
that the module uses them.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/qxl/qxl_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/qxl/qxl_drv.c b/drivers/gpu/drm/qxl/qxl_drv.c
index 2bbb1168a3ff..73998bb331d9 100644
--- a/drivers/gpu/drm/qxl/qxl_drv.c
+++ b/drivers/gpu/drm/qxl/qxl_drv.c
@@ -67,6 +67,8 @@ module_param_named(modeset, qxl_modeset, int, 0400);
 MODULE_PARM_DESC(num_heads, "Number of virtual crtcs to expose (default 4)");
 module_param_named(num_heads, qxl_num_crtc, int, 0400);
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 static struct drm_driver qxl_driver;
 static struct pci_driver qxl_pci_driver;
 
-- 
2.53.0

