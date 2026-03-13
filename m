Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLq4LWFkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 658E52F7612
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DEA810E527;
	Mon, 23 Mar 2026 16:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="m3kl09Ol";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2652810EC24
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:40 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id
 5614622812f47-45f053b7b90so1444845b6e.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408279; x=1774013079; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rnDJitpTduufuEe6X95vH8IiBFUBoxeB6eQQOPNaxFg=;
 b=m3kl09OlQN5dK2iZ3NA0J2efr132PpZtDsIPxBXmaAKJ4RI0ksQkuzxGLA6izbl41V
 k74ar3fx3+22dsxwwqDJLTrI77Fppo8C7usxpODu7DgqrKgG+//9SEg13QZE0dMNV2Od
 iDuopc7myG6Bq6sgV9TWhkzhBbx/oMXUABnmnhW3DX4GBTXsNZqxM9nEtW8oS3PI3q11
 eVue2eMom4TE8QvVJGeCqAyG9PYXV1iV91BGY+xom+yXKM/vc2nrTq+ZeSHJm1I8wU+Y
 /ek9E0mOkrZfncmtkCXwH4Y0r6Oxc3AOKju4dNqkaCsMMOcEuyDgMmItIbHudzGrXqGj
 ZtNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408279; x=1774013079;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=rnDJitpTduufuEe6X95vH8IiBFUBoxeB6eQQOPNaxFg=;
 b=P8J683qL8EA6c0WkCxjHl/oHE6P8gxW/eSpTqwMKiBB5yLdB2Ni5S7s15UnTDl9y+E
 rknqRWMrcmeG1GehsL+ApRAde+lCZ803UmX4L+Tw7gb6yhWOPOlyxaDfg6ydJQ0i5dGg
 2oKDo3XL2qxrMjl3rDjha0vqvieBzYaeWgD50gjvlQf20txT+iKUg/JgiHg06iI2+z2x
 WtRRxb6qByTIamqHZyobS3rSq9XXgsP8ZQgT1GVYgxEU/7otgAA+0GtLodiQgs++RX32
 sCRDuZ5eVj93aBQ2+nB0dIct4fcTti8dBE88LhqCoYTrsaJ3KnDP1h4R3Awmz6hDd3TK
 43SA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWItiN1qxLI4lVbBiruztI5nzwAGPhCY+ghPfVYhNra0K836ZPuPgItEhFpHMK1/6waNUxGCl+IV6I=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YynXYWxpNHkYTydcDxQ4KOdITW6Xw22fBzedOelKpmRG/t5c+tP
 2GgWpuZfs+Qsk3Q+pp2Fr5DMcHWlBcz8jJwFB6Tr5AgvZF+g7/gN8a2M
X-Gm-Gg: ATEYQzzcVkiMkzw8zARbYJ2AJ1Ytg5d1WNdWA+0c5fz7zY5ICiWQvt/e3481u7dAPkI
 nmJI9j6yIun1YTFsYHR6eGLs5fusuhWkK8u8IY0ek5sNXGxJX6llQKX678Z6TaJoSrub2wu+iRK
 TaVRoV4Cp49gJzSbl3HZxcIoAiyCP3KE7O0bBFppxkqLGz6xpb8D8y5MgaPbSNLkhdKd5DEajYe
 xy7OQWFDVIFRjNmS0RMclVdxoCxcgcXDFje5L4in6uEvARdluPMuNl//6mn2m/AZXrkUkzx/adx
 9LALhnzAoo8OWOK6AgtGZpfWPVT//JbH/QfzOg/3bqeqhTpjXV3C4weVEj3AWOCXleYQFoap5ta
 Ir0g2Bys4tB4ppwrn2WnE90LyQo81+XkOugcYjhZq7dG8ireEmSVswdLowwoIaqMDChZOSR1e8G
 kVEU+QosjL1Uicmjyepf3FpIQRXILK7bzlGrTEdJnqGaRDF4EK
X-Received: by 2002:a05:6808:11cb:b0:464:305e:8fcc with SMTP id
 5614622812f47-4675713631amr1649395b6e.20.1773408279143; 
 Fri, 13 Mar 2026 06:24:39 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:38 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Lucas Stach <l.stach@pengutronix.de>,
 Russell King <linux+etnaviv@armlinux.org.uk>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 etnaviv@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 48/65] drm-dyndbg: add DRM_CLASSMAP_USE to etnaviv
Date: Fri, 13 Mar 2026 07:20:13 -0600
Message-ID: <20260313132103.2529746-49-jim.cromie@gmail.com>
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,pengutronix.de,armlinux.org.uk,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:l.stach@pengutronix.de,m:linux+etnaviv@armlinux.org.uk,m:christian.gmeiner@gmail.com,m:etnaviv@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:linux@armlinux.org.uk,m:christiangmeiner@gmail.com,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.557];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,etnaviv];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 658E52F7612
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

