Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AD6JH1lzymlQ9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEEE35B731
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5DA910E713;
	Mon, 30 Mar 2026 12:57:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lZw+P64i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com
 [209.85.160.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0A0B10EBE9
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:43 +0000 (UTC)
Received: by mail-oa1-f52.google.com with SMTP id
 586e51a60fabf-41cd9267bbfso533955fac.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551343; x=1775156143; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=irTrrnawNz+DXC6VSfC9mZGBC+I85t9C/e5XGxZ5eAQ=;
 b=lZw+P64iBfRYIMX/W9pc5CyUElmM4XV3yAGWsoA9zbyXdLBb1E3Tx11ju5j8nA8rUx
 T1zZFzpcqDzLLZPeeIGjsZu2S5DX6M+vzPJdJzfLzY1cohVK4urBaP8XalH/3tzugn3R
 9UVtUzjWZv/+9WcKephlNOlMnfv3HXi6aNMlUCdMzpX9CmOFCfSXTSUnxV7biEobJFLb
 OBmiSs3rD3+04LjownyUEf1aPPm6St/71MD2MQVgGbWQ/DkWWhRjI5ovDO1YXqlk3clv
 FRfBakrBgw/bQuIbNZ9cFSV2GCiz1ZwdKHA5CktqDsmd5TbKfZU9cSYwtjleNzeFpm/k
 hwOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551343; x=1775156143;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=irTrrnawNz+DXC6VSfC9mZGBC+I85t9C/e5XGxZ5eAQ=;
 b=e4GdmFyb89dYgtDx27umSQ2htBsIC3rpgXhENHrYEtghyztQL+O65bwHhAO345mL4j
 tSFXQ4ci8d08uUnnafdnUBO0IWnN5Q/pBwny+qBsGI5gXyVeEgvkuxP5deJT+l9s2hx0
 PE5nPY67t5WsrtnayUWZ3qGGwJWPY/7UN27UuQ6TnNvtutt+AVzVayPtgQN7sYKrjYuw
 qIOL5Lf3RAlnmK3Kh18xW3ChX0suPCWBnHAVaNtyeSHov73YoHjDJlCKP5QdHHAT1sQU
 xW5xdwUBWbvQbIQYs4ReexYJKFE5Sze+bJDPa5FbFwk34RZcxNxW5esu/uoQQ0xpUnAQ
 XlfQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVuJDsHvOOaPifuOgdmHdX2CZc+xZSyznyhv/+DJ3aMxA870aOfbFjQ9Xa31KBAgT9UmE0mKD18Kv8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwbfoSQuVJ2wYw6LotsGXNlOdYTRy3/5n/kgnzUKpfDWlj7vMSd
 2hMttK626qWeG+N6zHLMj9vHmC6ZCxyGcVkWMIJwTU2VNN/erMawzlpr
X-Gm-Gg: ATEYQzz0WuvmrcUBihGrRj6fAzck8WEme6p+/rOthmdf22jDcD4uTvhf417rav4oa59
 rZAESKHpLl74MX+/ZNk6/EhU8fDS1WOrJj0eOTbRCUlO6wEby6wbYTwpwwONG1eaqjvM9B3sJlZ
 0zoAk3S3EChGurukM7o6aBsnFOrzx/i1PMc6jYgAzMX2OhMaiDVHwFSsxoy6YHYvJeqVaqbdOKQ
 kEhI7i2P0GfzSMPmCVWVAqJu41xg59YAd0Npz4I+UcpKqRtyd2n/LoUIQ1dDcUkRCksLmzEsS3D
 758L/ZGPp1Ye+GKaM3TzFj5ZgmyxQ1Q7WbVFdoeHgyQmAJ09kOYxWvbb3SijTvhCLaCtv1FIVlw
 9OXDcJ1NH2UOOItYAk2lkQ3ArT0nCkE4heZ352XmQysoL++7HRc6brH+EKVup8f1IA5g+Hohl9Q
 owXzQvnmwGQIN3rDpggE8uTRVQoVUy85r9empn18VSklIIiz1N
X-Received: by 2002:a05:6871:e488:b0:41c:6bae:2307 with SMTP id
 586e51a60fabf-41cd7b9c264mr1725197fac.12.1774551342859; 
 Thu, 26 Mar 2026 11:55:42 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:42 -0700 (PDT)
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
Subject: [PATCH v12 46/69] drm-dyndbg: DRM_CLASSMAP_USE in i915 driver
Date: Thu, 26 Mar 2026 12:53:50 -0600
Message-ID: <20260326185413.1205870-47-jim.cromie@gmail.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: 2EEEE35B731
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Following the dyndbg-api-fix, replace DECLARE_DYNDBG_CLASSMAP with
DRM_CLASSMAP_USE.  This refs the defined & exported classmap, rather
than re-declaring it redundantly, and error-prone-ly.

This resolves the appearance of "class:_UNKNOWN_" in the control file
for the driver's drm_dbg()s.

Fixes: f158936b60a7 ("drm: POC drm on dyndbg - use in core, 2 helpers, 3 drivers.")

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
---
 drivers/gpu/drm/i915/i915_params.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 34ed82bb1b1a..40c5e0014686 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -29,17 +29,7 @@
 #include "i915_params.h"
 #include "i915_drv.h"
 
-DECLARE_DYNDBG_CLASSMAP(drm_debug_classes, DD_CLASS_TYPE_DISJOINT_BITS, 0,
-			"DRM_UT_CORE",
-			"DRM_UT_DRIVER",
-			"DRM_UT_KMS",
-			"DRM_UT_PRIME",
-			"DRM_UT_ATOMIC",
-			"DRM_UT_VBL",
-			"DRM_UT_STATE",
-			"DRM_UT_LEASE",
-			"DRM_UT_DP",
-			"DRM_UT_DRMRES");
+DRM_CLASSMAP_USE(drm_debug_classes);
 
 #define i915_param_named(name, T, perm, desc) \
 	module_param_named(name, i915_modparams.name, T, perm); \
-- 
2.53.0

