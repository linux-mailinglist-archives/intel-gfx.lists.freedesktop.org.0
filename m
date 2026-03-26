Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IN2REVFzymnG8gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E710D35B6B8
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADC6710E6F3;
	Mon, 30 Mar 2026 12:57:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="npMhsj+v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com
 [209.85.160.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44CE410EBE9
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:35 +0000 (UTC)
Received: by mail-oa1-f47.google.com with SMTP id
 586e51a60fabf-40ee9b945d5so940495fac.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551334; x=1775156134; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bX4ilSonYi7XSfI6S+RBBXv+cAYgjTID5jxcrBPOaxA=;
 b=npMhsj+vJQSGEcd3eMQDjm1OaGuqQRfbpa3rUxpdGZudnHxtVFZrd509LVgS6vcR7N
 0VrswZVQR/zh121vnZX99qjzdsa/Og/QqLRZbAItJjOfU+8k1aW58yncAktADlDAHiAR
 riCF1ssN6Ij/q7AWwvSFoHnklg6AXDrz4qHpuYvr2lHbvu+wYMXPy7Py+YjkCUAGbqx0
 gZZL51G84iuPztt77NM0rgiVMVY1xSn00yxKX4dklXm7aoqox0iHPsHx4t43d2LeznhP
 PV7VS173350iDmsxe4caj9/4pcwXa3kDUdJqfYd82SvgGGf5Wo0LRYHqSRZ5I/6LY+Ws
 ZMTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551334; x=1775156134;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=bX4ilSonYi7XSfI6S+RBBXv+cAYgjTID5jxcrBPOaxA=;
 b=QkY7wonMpNMaEyvfxV9j1ucPCApkBvRktyRzX7dQHZTXhnGHW1GHCeiNwRdOAr5p6G
 zXBf0Jt1kbDsWG6WU8vGEn29P6yzigTh8XoSaov2WTn1SHWDdlOGri6MqV26CtrtUxgL
 TVVbrt3ftFaZzz1uzNnKchPUIjvOrfPhK+8dR+xvHc9vY8Nqp0zq4NuwhUPn6MTXgy8U
 8wDgTdw/OypD6QjFdjDl5r4sx9wLOnoys9FP+ERtMRK0+iQYzIFD7gcUEWgcs7OAVP1P
 FQHhchQaDyZBSo6iN8CzCo5xFs9tXrPyVIUcdRtJYBZQLVfnGghLXXykwArjt6lRbkEa
 NRxA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUjnvRPyymJMTI2wMEytuE5OWYt6BMLMTjMgUlxstY8cQGgbS84Lwm7ekilUUjSGvRqopg+MZmXIeo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YysATmoJn6VQboyCQkV6Yq5mEA22Erh88DaHkL4VZhzKNak+jOY
 /9HZ05asN2VJ/aTxT5zJw4ZizSMptNK4DiVFqShEy+Zz2yVt3NUrkL85
X-Gm-Gg: ATEYQzz8GQ7eG+HZk4GM5z4d0uLaOrxhzS6TfOp2whm38ypl7NNSmndFCDOf47Dr2ZA
 rYuS6HmLAfziLZiJWdcm5b80zddhH71/2+G2dEx/LlYQK9jrKSMn+AQBSU9ZyuyoD0uhdj/aQvV
 yXXm1HkryEO51iPM+vKwcRByiCi8ynFh2qoKC+BtMH5BOOytgJ7mRNM6DEtnqdI+LrFSByAXXNN
 wXEZ5NQQWfNjo86i6dLLtzOwAHXDSC0XBhQ1/8VhegKiY1w6iyUNzCcWrTnoeX9TtwxPwvmmatB
 /rPIXPpee687LGCewWguLS6LcA3mb0XGpdDsQLl4OaK3Rejcn+k9aaHqOjUsqxILiqOeliMUcja
 mZIVfTT/IJkmMm/WLQavi1KGc0eCvLI/V76K5DkjmDOaDrC+RBhPEIFf/VE35q4vWoRjf93mqC9
 u8wLRnTFCGZdURCeBxht2nvHFGOFtRGeJ/KmEv77T7t3pGsSt+
X-Received: by 2002:a05:6870:9502:b0:409:5ef5:be0c with SMTP id
 586e51a60fabf-41ca6de6bcbmr4583508fac.12.1774551334408; 
 Thu, 26 Mar 2026 11:55:34 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:34 -0700 (PDT)
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
Subject: [PATCH v12 40/69] drm_print: fix drm_printer dynamic debug bypass
Date: Thu, 26 Mar 2026 12:53:44 -0600
Message-ID: <20260326185413.1205870-41-jim.cromie@gmail.com>
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
X-Rspamd-Queue-Id: E710D35B6B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

drm_debug_enabled() is the canonical bit-test for drm.debug.

Commit 6ce6fae84536 ("drm_print: optimize drm_debug_enabled for
jump-label") renamed the original bit-test to drm_debug_enabled_raw()
and introduced an internal bypass for dyndbg. When [1]=y, it defined
__drm_debug_enabled() to evaluate to 'true', allowing dyndbg's
static-key to handle the filtering at the callsite. It also provided
drm_debug_enabled() for cases where an explicit bit-mask check is
still required.

Later, commit 9fd6f61a297e ("drm/print: add drm_dbg_printer() for drm
device specific printer") added __drm_printfn_dbg(), but mistakenly
used the internal bypass __drm_debug_enabled() instead of the
canonical drm_debug_enabled(). This went unnoticed because at the
time, [1]=y was marked BROKEN.

Because __drm_printfn_dbg() is a shared helper where the callsite is
not directly guarded by dyndbg's static-key, this caused it to hit
the 'true' bypass and always print, ignoring the drm.debug bit-mask.

This results in a flood of messages in environments with slow serial
consoles, as seen in DRM-CI on i915 CML devices. When IGT causes a
mismatch in intel_pipe_config_compare(), the resulting UART storm
causes a hard timeout after 20 minutes.

To fix this, change __drm_printfn_dbg() to use
drm_debug_enabled_instrumented() instead.  This ensures the bit-test
is performed at runtime even when dyndbg is enabled.  It also adds a
pr_debug(), allowing us to enable it and count the frequency of this
bit-test.

Note that using drm_debug_enabled() here would also instrument the
callsite but only when [1]=n.  Since _instrumented() is basically free
when its off, theres no reason to not have it available where it might
provide some insight into the performance benefits of [1]=y.

Additionally, update __drm_dev_dbg() to use the canonical
drm_debug_enabled() instead of the internal __drm_debug_enabled().

- when [1]=y the call to __drm_dev_dbg() is guarded by a static-key,
  so the bit-test is redundant.

- when [1]=n, we need the bit-test, since drm_dev_dbg() calls
  __drm_dev_dbg() directly.  Here the pr_debug() can tell us the
  possible value of further optimization.

[1] CONFIG_DRM_USE_DYNAMIC_DEBUG

Fixes: 9fd6f61a297e ("drm/print: add drm_dbg_printer() for drm device specific printer")
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
-v12- improve commit-msg explanation of choices re (__)?drm_debug_enabled
---
 drivers/gpu/drm/drm_print.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_print.c b/drivers/gpu/drm/drm_print.c
index ded9461df5f2..9b622345e2eb 100644
--- a/drivers/gpu/drm/drm_print.c
+++ b/drivers/gpu/drm/drm_print.c
@@ -218,7 +218,7 @@ void __drm_printfn_dbg(struct drm_printer *p, struct va_format *vaf)
 	const struct device *dev = drm ? drm->dev : NULL;
 	enum drm_debug_category category = p->category;
 
-	if (!__drm_debug_enabled(category))
+	if (!drm_debug_enabled_instrumented(category))
 		return;
 
 	__drm_dev_vprintk(dev, KERN_DEBUG, p->origin, p->prefix, vaf);
@@ -335,7 +335,7 @@ void __drm_dev_dbg(struct _ddebug *desc, const struct device *dev,
 	struct va_format vaf;
 	va_list args;
 
-	if (!__drm_debug_enabled(category))
+	if (!drm_debug_enabled(category))
 		return;
 
 	/* we know we are printing for either syslog, tracefs, or both */
-- 
2.53.0

