Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPMwM19zymnG8gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E27535B7B3
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68F1110E736;
	Mon, 30 Mar 2026 12:57:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mJhJjzTm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com
 [209.85.161.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6011F10EBF2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:55 +0000 (UTC)
Received: by mail-oo1-f42.google.com with SMTP id
 006d021491bc7-662f30d3f1fso1458494eaf.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551354; x=1775156154; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rnDJitpTduufuEe6X95vH8IiBFUBoxeB6eQQOPNaxFg=;
 b=mJhJjzTm8qISXbzl5jpQyS4CG7SCSUDLI+0ASdFjNJPf7y4DlBcsex23kVzT8MpSo6
 HACOvlioMgkFt28hF3c/KTn18MFDVP48YOtG7eu5EAFChuNzUXatsVZQtwf0ud8TSdTO
 138YeFE+469ngqVh/LUjLnSkvSvW2apoHUvgGmNebys5QOiv15unTYxhmU0UFda7mfSh
 G0qioJsLGmUfxRp6nVZFavQgdLnlcJIh1+NfTsUqeA2R6gG40bZezwE33Tzczx3JZpUj
 YvrXb0d/8zbbBH+ZQEOY+eUXbK1tP3dh/WUEmD+RS5aPDPZqMkLEACukCkkruVG+7xus
 kKpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551354; x=1775156154;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=rnDJitpTduufuEe6X95vH8IiBFUBoxeB6eQQOPNaxFg=;
 b=sVTl4iz9diDx4byjfr8Kl25uyS7/3907ftMrRxuuGe06LrKH/IzcOR6Pp1Lq140n7b
 9z6899QQ36ZEfRsgChqnLhwjBuzsAkZDPgw41g3WS4mGMYSQ9PiG6d+WJZ2MJ2a5wah3
 ayFj97gsoQWAhR/yDt8DZYkYeNEh/WXG1bLOFQ40hIt22CdqZ6Cr3JAhm+bAehJW2SWc
 hKkXHd/PA2a5OvRnCXMs0No3I4blWdTfBQsI7+oo9h0RTSknF6/zYezERGg0R6NETx7W
 2D1cHvi07HKgtkpIjP4lpE+vtWfoXEbQrWWzIIs5VPYCitFIo1NWyj/AJ1Wb0ZyXrwHv
 cVPw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX643LRNgf292BVFZ+Cr7ILYVTDx6SwXfYu1U3IyxgjmtK2mLo+hWtl7ZIF7g2UmnSBzINSQLTPghY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx8q4UZXB56lXuMTNURPho7/74/iLPYi7SKR55BQCk1zI/37ez3
 71EeNgHzDNARd2yZ7dyerOWHdwuvb/1waEwWCYPaydUxm92XLg0wE1+n
X-Gm-Gg: ATEYQzy4RjXvweRu9C0jpEkvr8APYHcrNhd3XNVg0VcSmBNGASD91aGWD+DHr78QXE5
 UNI8Hm5q3Xf0EpL1/ygHhxU8YgjPN0IbvJT4VrSNxp6xxwQcATcpZVNQypBKhN50bhDB+OSPZL4
 Qdmj4mkG+po+Xcv73ksDxJ7P+eRco38lqcAPUAx2HFP8eXCmRjABPfE+Piko+7g8GdsoAatwwza
 bXFvkiI3HjU4N6Yx3SHhKNktmmDYcZGWZ3nF73/ZD7jdtz2e5KIJvfhS86c19ravC2w8gfPh4+O
 5a9qnjfmnazijYn4kvPIdNw5sPSo6urwiGRfkKMUToXqcN6TWgodB5daDNDQPFbKCnldpvCrKd/
 puFZyPtAKgU5ONBdVLkORNQklbJHEdSVh9NZLdLa64yyOOIix9ia+yUjQUFcgygWWIBM+HJ/5oT
 HByHNCbV65/EIpArmlRUdpK/MeHLv4rBnTyOPXIwnIykJIg0jr
X-Received: by 2002:a4a:bb88:0:b0:67c:2bfd:24a3 with SMTP id
 006d021491bc7-67e10ce7d8dmr943404eaf.20.1774551354565; 
 Thu, 26 Mar 2026 11:55:54 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:54 -0700 (PDT)
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
Subject: [PATCH v12 54/69] drm-dyndbg: add DRM_CLASSMAP_USE to etnaviv
Date: Thu, 26 Mar 2026 12:53:58 -0600
Message-ID: <20260326185413.1205870-55-jim.cromie@gmail.com>
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
X-Rspamd-Queue-Id: 6E27535B7B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

etnaviv has 5 DRM_UT_CORE debugs, make them controllable when
CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg that the module has
class'd debugs as well as plain-old pr_debug()s

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/etnaviv/etnaviv_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/etnaviv/etnaviv_drv.c b/drivers/gpu/drm/etnaviv/etnaviv_drv.c
index 08aca9035fc1..ef4423d4987f 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_drv.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_drv.c
@@ -26,6 +26,8 @@
 #include "etnaviv_mmu.h"
 #include "etnaviv_perfmon.h"
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 /*
  * DRM operations:
  */
-- 
2.53.0

