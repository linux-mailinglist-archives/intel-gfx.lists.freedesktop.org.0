Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBW2LlJkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7144F2F7531
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7243010E467;
	Mon, 23 Mar 2026 16:03:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="cKeTrWaO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D02110EC13
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:43 +0000 (UTC)
Received: by mail-oi1-f177.google.com with SMTP id
 5614622812f47-4672076355aso1531119b6e.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408282; x=1774013082; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QeA7b49GNmqPBpy8bbweHTxpApMcFe3iFgz41hqVwCU=;
 b=cKeTrWaO8+7NbjvlsLvxuJdULdr8/5E1ueOEF+gFvVZT5/OfTShPZOtz48zOx0P9jj
 L7VRYk0b9JURzCuOmD6iprkxhORHgbHP7aGyMjFiMV+tCILx69JoO32SpRrpG5Dz1qLa
 lY8chmEwKPvddi1oFmLWBYV5z6/iCVZ1AgnNoPZk8YL1l+GwCH3AANM/sIZ9q+G7wEKR
 q6KxhvXyN+7XsoRDXF4J4YdtDz1c4QnfoxSsvaV5evo8UHI7x1RPgr+1iMmZK4RHFOta
 9ZEqML1c9B6gOvmTUcbNev0Zw+frDhx8a0p9eE5yOLZ/NWh05fhS2K0TpDopBEQknjgI
 HmSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408282; x=1774013082;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=QeA7b49GNmqPBpy8bbweHTxpApMcFe3iFgz41hqVwCU=;
 b=OJjcZJ9+dEUaIF86A/jzknEznXOzm16kxfTfj5j4U6Ho2PG9K3AVMQmdMrrLnzRMzk
 9ouB3VjiOY34ff+bhvFSAq2QlXIF5MDAqPO9C7JuRwb8KpgTUixLnxDM/4FrZV90n0CP
 ur6VB5xov2RCl0KCuuBiIE4Dnnp0/S9OEReauebiQoSZoXDiQRRPFfAjPrwUmte5JXhk
 G3ogkf4CbotDjrb05espLRMLkDbmwINP2mTMa3CUCLjf6S6TDbOfdMT8FgIfi5/qm+zi
 oSL6aGI6JBn4gNkMzqxwZlTisTBMxG/KEN1qryFwtqRiIGdYokmtDQLMkS7lpwqABIKL
 ym7w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWgSMHp5uutZ291kQ8MFKG/GvwdJuy5hjGU7keRhtThI4zhl1AtBNOpZVBH6+0K8ii33aWbdv/Z/x0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwA8J9ETTnvmtxKoj8mf0eLehHMSggg6IxaMlVogcUkwqbleYV7
 o5qYo/nbBjUrd5LbtPIg33CQuD0Drdz/zg+t4y/01RznCTqCVyQvpXX9
X-Gm-Gg: ATEYQzxyQM8p8wh7AVXXJLoukEKmBSwdBPyhEiFBoKmCFga1KLunkIgGP+3Mx7LGey0
 GZyBI5mCCAE1TYuItjT44Z70/Tdr0karSAyPunAM5D5D627M6iVa7b3tJ8dzMA0vUdKc9v8b7UJ
 L0yaRFk0V6XrLMUFo1e2P7kk4MN/zkfNH7MnEUPaR3l9bMZfaPINym98J2raIEc2VT4YtRe9Hs/
 ykSIr2l+GUXbVGSp6Vl34liEOWnSAH8UJtL0/FPoRyUHMSfBdY6s8UgufSsAR27uM5cVMoxbea7
 BG/guSAAtAmHjWd6LUmH5Juu1MAcdeuE1J2/z0Y+ze7lGAf2ROUYoLOmQM7HDNqvavWTomlTMFK
 OnjoitMXhcEj2/JFkDj7cC/660k9bPbBVktDyqtX2NHgPQOWODRUDHTR5NyqgXicuc4eVs+XAUz
 AkvBdpnPHVQ1ecxbqNYNkZ0z21MoJvGW7141PJzTodznIe3Ds3
X-Received: by 2002:a05:6808:c2c8:b0:44f:78fb:7b11 with SMTP id
 5614622812f47-4675753904dmr1572573b6e.39.1773408282489; 
 Fri, 13 Mar 2026 06:24:42 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:42 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, matthew.auld@intel.com,
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com,
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH v11 50/65] drm-dyndbg: add DRM_CLASSMAP_USE to radeon
Date: Fri, 13 Mar 2026 07:20:15 -0600
Message-ID: <20260313132103.2529746-51-jim.cromie@gmail.com>
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,amd.com,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.543];
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
X-Rspamd-Queue-Id: 7144F2F7531
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

radeon has some DRM_UT_* debugs, make them controllable when
CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg about its use of
the class'd debugs.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/radeon/radeon_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/radeon/radeon_drv.c b/drivers/gpu/drm/radeon/radeon_drv.c
index 87fd6255c114..a7133fb6377d 100644
--- a/drivers/gpu/drm/radeon/radeon_drv.c
+++ b/drivers/gpu/drm/radeon/radeon_drv.c
@@ -254,6 +254,8 @@ static const struct pci_device_id pciidlist[] = {
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 static const struct drm_driver kms_driver;
 
 static bool radeon_support_enabled(struct device *dev,
-- 
2.53.0

