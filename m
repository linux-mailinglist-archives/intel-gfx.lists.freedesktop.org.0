Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Ct8FGxkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCB02F770B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6296D10E53B;
	Mon, 23 Mar 2026 16:03:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="WZh2DwTQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05E8310EC23
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:25:02 +0000 (UTC)
Received: by mail-oi1-f182.google.com with SMTP id
 5614622812f47-46703fb602fso907290b6e.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408301; x=1774013101; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3MLouRi7A/376XLBTN4RuLKPG3wKNeKXtfBxDJ5SI9M=;
 b=WZh2DwTQLnsjy6w8U9A6g55Is5qIJWaC1xY3vUjBUtpfyhW9RQdxqpFjk7YyBMs6KO
 e4GF3bVHyUp9RJTeTME74KVVZu6rg5oNE7b4poJ/nES+42epIH8kPEWaEYeCB17VCJdt
 TAZqODAjWMBDVr0drPZEnLtDnYnxF34pAViYUZn8A3Aex0P71aiNi4KqlizhyMEwtsAV
 UqJBVvZqr4X4dboNBNVRBxnNZNBdkTY/NW4lJE2X4l8Xy7p42e31/JujRvEQhm/pj1FI
 S7pc2H+3Xrn9Y4n9hcgyaKB7zh0t0n0dn6pjfadpte8hu80e4aOPIo7SlkjAN69kZU0u
 sidw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408301; x=1774013101;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=3MLouRi7A/376XLBTN4RuLKPG3wKNeKXtfBxDJ5SI9M=;
 b=pD6HCpubrxmCAp39iuLOzPIOTHTuigLBOjutzlmwlFPPVfHtqxhjf5Lc7CTIzxLsf7
 te8ucAB0roVY88G+uu2RLc00l0YhIz9Y6xSjqu6PIEjpcBiWu0YMgpE5O/ew3cCliNCS
 47LPCPzu1W66QpwFmNyGn8+trln4Mj2aI9uRbQM5Yo04BgDgp00vrCJQJG2kexa/uIat
 HGO1v3Z3VtJwVheCUaM46tGZXmSiiQhJnQoF5pBEH+Efj48WJWjflN7XZ4phsHKTu2Ne
 DPIWa+DdoRIzk8TgxqokKQI0ZOeNjhfjvTVWyjC0InFNmsaCpBQwwvALiRQfpG5APgMd
 lYJA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWjMN8cM02HYKi3thhWN1erwIT4xOonwO9V0gdnmKbWbZ1SBsmndfnwNd1fgQW8txQFqY3KhGWmXqo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz7Ctbj3jYBUDQ/+RlpWv1/052xbPkNVZAE+k7T0R8/RqbSPfjs
 xqUHzy6mZTsJvfmQ4WUD6pjzDdEZBvsUuKxGBQsGNWVQ+rx2C/SUKAcp
X-Gm-Gg: ATEYQzyILHwWtVb+EiwfeATGZzw+OGYiO6+YoLiRuQdr55AhIp5HfKnc5v4Fo/arwo0
 hTff9Ixa01MSJ+v9ur2FXUI1o3QBYS3dzxRimMhTIyxS+sZNRZ3lb3VIU9jFheybYce15Hy9Dra
 EYxGY6G16qb3viLzh8oCLcTNUR2f5WHIDRr/CVQJabhdU0knPLlt4or3tydyl++Tn7UymHKDKdF
 IHFMh/pLN8zsu/uvTmuEz3G6XdQP0iS5e2+yCMikY0CsWZtfLrLQF320A8SyDByOjsOyc+4HeAr
 4qJdBhGsRiySq6Im7LdS+6CNdZtADWaiuQ9XkLlWc0bSpZpCXZ2PbOUcEibpU9zGK1Vz0T1TafJ
 OTEP6jG5om9Y13iVJG5PpkQb58AOua0O0C/zFs2mMVmgcsl7ODqDGaicXT6XfJ6OxC6Tu/l5Tzg
 s5aYswkVROw/7edN0fAWni/1b6bE+47F9FpP92BintrJ8p/EB1
X-Received: by 2002:a05:6808:8947:b0:467:1cf5:768b with SMTP id
 5614622812f47-46757053acamr1500831b6e.10.1773408301182; 
 Fri, 13 Mar 2026 06:25:01 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:25:00 -0700 (PDT)
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
Subject: [PATCH v11 60/65] drm: restore CONFIG_DRM_USE_DYNAMIC_DEBUG un-BROKEN
Date: Fri, 13 Mar 2026 07:20:25 -0600
Message-ID: <20260313132103.2529746-61-jim.cromie@gmail.com>
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
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,linux.intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.539];
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
X-Rspamd-Queue-Id: EDCB02F770B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Time for some thorough CI.

Also, the previous 18 patches could perhaps be replaced by a single
invocation of DYNDBG_CLASSMAP_USE, from a C-file linked into all drm
drivers & helpers.  I didn't find such a file, nor a drm-client
linkage item in the Makefile.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/Kconfig.debug | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/Kconfig.debug b/drivers/gpu/drm/Kconfig.debug
index 3b7886865335..48674fae5958 100644
--- a/drivers/gpu/drm/Kconfig.debug
+++ b/drivers/gpu/drm/Kconfig.debug
@@ -1,7 +1,6 @@
 config DRM_USE_DYNAMIC_DEBUG
 	bool "use dynamic debug to implement drm.debug"
 	default n
-	depends on BROKEN
 	depends on DRM
 	depends on DYNAMIC_DEBUG || DYNAMIC_DEBUG_CORE
 	depends on JUMP_LABEL
-- 
2.53.0

