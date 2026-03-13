Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAAjHGdkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 163FE2F7695
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBFAB10E532;
	Mon, 23 Mar 2026 16:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ewo/WpHF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1513710EC13
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:47 +0000 (UTC)
Received: by mail-oi1-f178.google.com with SMTP id
 5614622812f47-467161c4a1cso841995b6e.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408286; x=1774013086; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=z5CIU7Xv1sd29xtDEeVm5EwbYfV92LBvg9qr7+GGg2w=;
 b=Ewo/WpHFfm09kx5VmoNF8fezqzX7lZXSL9w261wvhsvP/Vmj0XQqLxSDCJMb3crqcS
 ciOSFuGZZBwRsTScKZ3f4h9qqUeM2/pyxok7xJO1x/A0HOuWMXPPBWCqysO8qXVm8qVW
 BOoMV0KqYp94hvNyx5RUqjwTjVyc6pC27hMUaB0Va99EIjpVDlw0GNN1CpF05TDfnKvC
 aIrlEsuLB7mNcgWWzOv1aNVgdzoo+30kwkSa7S8n+U5ZkUWyCpCi54cWaOvc9MzfmVS7
 2M22QOwxQh7bEApSPzIYqYrBKOQrJnKk8tm4or5jlHaizuefCY0m4rn0SE+8FsQqhhnu
 8Q2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408286; x=1774013086;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=z5CIU7Xv1sd29xtDEeVm5EwbYfV92LBvg9qr7+GGg2w=;
 b=MTaCHf5nk2ypXOmI6k61CUN5FESYE7wV3p0uj6q5OGvV56e782bYT5L7dRh/P+aAmV
 VeAqT+/glW1760Fw7gKz7LKuE9A/7thFkC2VvuUytIo8mJCb3GkIxkoOHVK8tTbnSdMu
 AZo+hoiqLklG2YN0OlHmgpcwkOyTnEwzlE36LSPsEbhg3QikumuQQBEIkogdhJJC8RC3
 S9c8d6pCpMaa7dHjPPG6X6gTe6fKDS9GnWPKGEK+C9+FzO43Hh1rfLn3Km2NO0YQx/3Q
 Y6Cpd6vM1sd53Dg0bi1W7usS7aHF7bVqvx2ZJ7P9rG7OWxewdYqS1DcfhGdRFSYzuLiB
 qJhw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV8daXyFfvpSR761+CgwKDPqweUWwMQ9KJQGfmFVblJutwtaB4Rbn6+W7dOmgRwVtju8YdsHMYRNXU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzJU06/HCHiSNQbqhBXK+Fsj90Y5b/9WPdnRJ2LhifJ6XJotDdd
 sOAlvVbq5kYhumiJLMOLkxNHoTjmB+Vi47YwE5CGKfrVJ0k37LYq6y49
X-Gm-Gg: ATEYQzxn2n3s5SeRiie4+tEvi27Q7t34boq2GwtDovWHSaBFRsuYn6eDTwdqNW41ixe
 Y/SOQPVPaFaZBBTzD2rzAJ76dO3yw3mB3PldvebAbgfGG8x9weEiyx6g1Xr+OSO8JEkPXiKOJDz
 d4WAYG3ss7g0qRlESk2z+TSGrJGGuf6uM/JlkPyBYA33X77wVe0NyMZ32OTrM9rtIob1unw4lEI
 aS1iF+4a5amwMbbC+7/vdHzKdpVE6ITtcDZgv+zq55xESibOcEgHtXbErY6ULoVl0EArCVe7jPZ
 +lOFB//2T4/SVWC43OF8F4MjeTSff6EikafgoHPN8Q0uotdWu6ES3A3Ns0bZQZQ53OKOZDIo+FF
 iOfZyYhzi5bspKWLj52bXwfGGAMo1kcEuASLsbEF35sGpM1ut3o4R/SA/yTAvSMpapmjeH1myUv
 hWhDjRr8kwOef7dMws/YvhCxeZa5dafM+D1SSRACoYm+n7h271
X-Received: by 2002:a05:6808:1302:b0:467:e7b:6fc4 with SMTP id
 5614622812f47-467575dca9dmr1665945b6e.45.1773408286169; 
 Fri, 13 Mar 2026 06:24:46 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:45 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Louis Chauvet <louis.chauvet@bootlin.com>,
 Haneen Mohammed <hamohammed.sa@gmail.com>,
 Melissa Wen <melissa.srw@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 52/65] drm-dyndbg: add DRM_CLASSMAP_USE to vkms driver
Date: Fri, 13 Mar 2026 07:20:17 -0600
Message-ID: <20260313132103.2529746-53-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260313132103.2529746-1-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:24 +0000
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
X-Spamd-Result: default: False [2.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[242];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,bootlin.com,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:louis.chauvet@bootlin.com,m:hamohammed.sa@gmail.com,m:melissa.srw@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:hamohammedsa@gmail.com,m:melissasrw@gmail.com,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,linux.intel.com,amd.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.540];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 163FE2F7695
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The vkms driver has a number of DRM_UT_* debugs, make them
controllable when CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg
that the module uses them.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/vkms/vkms_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/vkms/vkms_drv.c b/drivers/gpu/drm/vkms/vkms_drv.c
index 95020765c4c2..e22c15f045d1 100644
--- a/drivers/gpu/drm/vkms/vkms_drv.c
+++ b/drivers/gpu/drm/vkms/vkms_drv.c
@@ -40,6 +40,8 @@
 
 static struct vkms_config *default_config;
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 static bool enable_cursor = true;
 module_param_named(enable_cursor, enable_cursor, bool, 0444);
 MODULE_PARM_DESC(enable_cursor, "Enable/Disable cursor support");
-- 
2.53.0

