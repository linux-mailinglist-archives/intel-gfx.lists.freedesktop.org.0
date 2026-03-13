Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIrjJWxkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5712F7716
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CDA410E553;
	Mon, 23 Mar 2026 16:03:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="WmNTlo02";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33D2410EC0E
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:17 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id
 5614622812f47-46701f2077cso2599816b6e.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408256; x=1774013056; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=26vMP3nfkpOdAIVisqGbQnZnw5iiyCO+aaCVYuAOEzg=;
 b=WmNTlo02SCBpoSToy/6YiubusBXVTTjAKS2GiPGp4uAeFePbVPdIPs8Hv1pF7u8ocA
 5ZOI48Ea/8GL4U+x6fCBUbpJ9847PoYXtl25EjbSEwoKgGYbZkzd6o33XHjsq+uHMVYE
 uFsrjtQDxkOwuIpODyW4ONx5pMEvKeM74PAiVpnnhLj+ZIYtRoIEnqGL/8d69eNuXyYb
 cLfVPs6rAacPNDHzpVbVphebvLF5rYWtgRZFtEVMh9rwoeBcySu9mAAtQkDFlaYTvarB
 No8wqECDfv0LVqUwEU4Y+roUlORNxIBVnTY5L4okV/lHA7rDfyzcS2Cf/TFIf43w7B9N
 RdKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408256; x=1774013056;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=26vMP3nfkpOdAIVisqGbQnZnw5iiyCO+aaCVYuAOEzg=;
 b=rCAbBs9O4+8xIeKeznQXTQVxcN/e63Ryi+fABL3TOcc5mwAk6SgEV+EZU2J7RcJ3aW
 0ZqJTqW+TWyUL0df5uHf9rAw3dZ+pqRqAC5DgFdIl+42viK/IH6GeNDA+GHSXW/md1Eu
 TltwIgk2QUnUMtYR7LYggZWxOxBm+IwWJJ+JkXWmkpIG8RODTFUAX285ZlkI/pNNUgPE
 j7AT587YM2mwduz31c7fEAcLPN9rRDX5LzEomanR+6Ncnj1azjaIrPi+KWRpc2+Sr1hA
 PNIK0HgK4n/ie3mGe9Amkv0dNS/hGZ/9iyOcP7My7Xyh1sUQw0TrCg1r4gHxfaf+fAo8
 o8lw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVTvvzdPIuJlZhQjpyE5Tx9fSA64KFR8cEmtn6+kS2YDvouXjKoMCfHaopPALEIHxKPMBCccNNudSQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxmxts703Es9T2wYw1uv0yome5UgW12RipskBXru1ybXpk2yl9D
 DiGABPVjMkkQt6Vep2yLAoWvEpOb88A+TzJuyraOk/wembIw0PzreGcq
X-Gm-Gg: ATEYQzwgu/ehZNyzz+gKPkfjwW7UzxHVJS4XdlZmfddIVrfYJ5HhLWS4wrZ1Tf3w2LH
 NPYLmjmYf/iVZVtooRPWcR3SEJ3b4PMaWAk+Rp1eBbJyvEzlAsAetWtH7izZRsaL6KbYZ4+kyv9
 OR2SPjnFNaCvEOJxJxCtWVhDilh3Wa/TvG81D0kIxnIv0Qw1ZiARNg4LQ6KLTQd2HPccrtZbjZN
 nhN7kWtL9gxjGsAp8diAziPDVPBrlCoerYz7/Ss4dvC4OCIzLRmp1vfmGDWKk7ZY9Z4hrBYdxaK
 a/1xy4gTf9NPinzFkZnWLhT/CrLOQK3BOhs+wZd5m3VoPiAig1q+yN/KQuEuVv75++mrnuJbkiq
 F6JUnP9BNexxxOIPQOyM+KGD9jhmZNGgtvUsEvg6K3dNSu3TlSkYCiKaAk3Lr2tdFFs+xbSW6wl
 mnLch1fZQJslzjmPDPyWpQ56fd+gRl79uDh2znfV3VfUT3rnuh
X-Received: by 2002:a05:6808:118e:b0:45f:103c:2478 with SMTP id
 5614622812f47-4674329caf4mr3963254b6e.30.1773408256475; 
 Fri, 13 Mar 2026 06:24:16 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:16 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 37/65] drm-print: modernize an archaic comment
Date: Fri, 13 Mar 2026 07:20:02 -0600
Message-ID: <20260313132103.2529746-38-jim.cromie@gmail.com>
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,linux.intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.661];
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
X-Rspamd-Queue-Id: 3E5712F7716
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In the year 2025 it is no longer noteworthy that drm.debug logging is
adjustable at runtime, via sysfs node.  Simplify the statement.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 include/drm/drm_print.h | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
index 94064ec6c229..c3df2f3f47d8 100644
--- a/include/drm/drm_print.h
+++ b/include/drm/drm_print.h
@@ -89,10 +89,9 @@ extern unsigned long __drm_debug;
  *  - ...
  *  - drm.debug=0x1ff will enable all messages
  *
- * An interesting feature is that it's possible to enable verbose logging at
- * run-time by echoing the debug value in its sysfs node::
+ * You can also alter the logged categories at run-time:
  *
- *   # echo 0xf > /sys/module/drm/parameters/debug
+ *   #> echo 0xf > /sys/module/drm/parameters/debug
  *
  */
 enum drm_debug_category {
-- 
2.53.0

