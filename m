Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCYrE2JzymnG8gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE02D35B7F8
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6498010E763;
	Mon, 30 Mar 2026 12:58:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PrvLVlSz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com
 [209.85.160.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2628610EBF2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:56:11 +0000 (UTC)
Received: by mail-oa1-f51.google.com with SMTP id
 586e51a60fabf-41c420d1460so582613fac.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551370; x=1775156170; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hyf4ilrW4GCVGVmagWACzMec5+WgfPealp/jm9A7WHo=;
 b=PrvLVlSz6yV6Wz7KbPU8wq3qlUwveAxdzvE0PxxRnjEfA3qep1cO1j+kJPhg/69WuS
 MZHo+n6jHPFTFHkQtMwATflLMvcAW7x4dKMJbMwCyNssK7tgUwvytp1+u4sOeo3irfCO
 9am9OilhJC5Eq8ZQuziU0B61BrNw85J1O29Bpw22ZM6UWXsIxlTE6RNUy5DOebCeg5aO
 YlQbfj14UfREwBP5lMx+Pefb+cdkpMciTidIu52Kjj2SNz00Zj6iKHhE3CYSpf2+BPtk
 InET7UlJyot48FJxEzYZp8d7aS1HZbyUm/ad5apkWuoYKiHD9QFPgNuHpccj/NElqXCh
 t8og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551370; x=1775156170;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=hyf4ilrW4GCVGVmagWACzMec5+WgfPealp/jm9A7WHo=;
 b=gyXw7Y9GochyzY2NZpkPWntCYO4H7GZWKAOFkLnrmo1qhGiALDgmrZKtprNeiSBumZ
 q8vYcbnqkmR8bw7VhCvHNSJU03FIhARjxzCudJmddoowR8OGCpO0ZabJ5deHk3IYtmU6
 H1tm27c9BuHQ+KGUplZOJL2gIu6xcIKf6B8zYu7UrPcYzuQ3Yu75BjJqV/iQplVeFr58
 LFuxr3kY8EMHmYxqKP3hMHKB0fp35QRcHtghGlKvc1eRCoH17go9cqWK8FW9kANlxDdw
 6cwEW18GAlcSAL83p4p8EOKnAak+KVP2zYvZIQ90ZAU0qVX7mfzuCCVNF98tOIhbIcHE
 Cw3Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVsalqdwPNKPeouVXXqz9Wo846Oe3M3xHoOckHIx823bigbkBsa9FXjYpSvafNbKrGDFEWPZIlneD8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yza/JVx/0t0Ol2vUvFpARlbT0nLciAYVN4LbEEXLPJq3S93BoQG
 rvkHE8eMQmRQ9sTG6uwnOJA6/h7b9P751YN2BUT8wvxm0PT99/HMsIDV
X-Gm-Gg: ATEYQzz9eIzqB0WZbKXRxU9Rq9E+JSl1HF89jKvrzdEjm5v54yG8sC/s/NLRLV53x0P
 OfYQOGdS5d/lWs8+gQvY/jSY763kkpsoH6I9mc9t1b4JClcdqoPAG5JFl2E///avupkr6tNRX+Y
 vVpJhLlP9WdDcevmqcM4VyuZ+GpnZDtLnTv29IdApt5kZLBbFXaglejtIp90+NyN2V7omSJMX4B
 oOPPiw/SiQYsy7DDirHh/X/9QTvYnA1oB9Z7IF4Wpm5OJoS1g/JSp1VFKrTFf+zpZtHZlBRB+MB
 GjVMJmowT4tewOkl4zrxkGBH52CEuxZP6Imk0BQMezLwD89h3LRtxR7HPYtuPeibULHlq5wTf2A
 NCUJfEvYdsrsvu0HYpLRid0KYSco+11sS8Q6ZIj/g+h5O1WdlOvVk5gN5S4/7TjZRsjn0gEo6aS
 ekva68QJda5iLV2qEqI1P4ydAFzVkZ6lxjNRpIbMHInfJqYYDm
X-Received: by 2002:a05:6870:8e0d:b0:417:1bb9:c00 with SMTP id
 586e51a60fabf-41ca6e3d581mr4428868fac.20.1774551370328; 
 Thu, 26 Mar 2026 11:56:10 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.56.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:56:10 -0700 (PDT)
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
Subject: [PATCH v12 65/69] drm-dyndbg: set CONFIG_DRM_USE_DYNAMIC_DEBUG=y
Date: Thu, 26 Mar 2026 12:54:09 -0600
Message-ID: <20260326185413.1205870-66-jim.cromie@gmail.com>
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
X-Rspamd-Queue-Id: DE02D35B7F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Set CONFIG_DRM_USE_DYNAMIC_DEBUG=y by default, so its easier to test
with less config fiddling.

Note that it still depends upon CONFIG_DYNAMIC_DEBUG=y, so may not be
automatic for DRM-CI.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/Kconfig.debug | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/Kconfig.debug b/drivers/gpu/drm/Kconfig.debug
index 6c83b1276870..6d17868b4c80 100644
--- a/drivers/gpu/drm/Kconfig.debug
+++ b/drivers/gpu/drm/Kconfig.debug
@@ -1,6 +1,6 @@
 config DRM_USE_DYNAMIC_DEBUG
 	bool "use dynamic debug to implement drm.debug"
-	default n
+	default y
 	depends on DRM
 	depends on DYNAMIC_DEBUG || DYNAMIC_DEBUG_CORE
 	depends on JUMP_LABEL
-- 
2.53.0

