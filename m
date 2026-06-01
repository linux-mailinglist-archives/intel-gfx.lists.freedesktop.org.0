Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMPVEmldHWoBZwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:22:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABABD61D43E
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:22:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3114A113157;
	Mon,  1 Jun 2026 10:22:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="JHA1kqDv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3C12113157
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2026 10:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1780309349;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UYSWdrjn4aqQxQd0Cf2jKHSTVgv+zTIrZalUlPmgVOc=;
 b=JHA1kqDvAphyub391mJ3rxaYpdSzwIn+04KfRcyzlWz5wXXW6pSNMJ4vj83E3uTatCvXA2
 Ww05f0Jbw3q0ZPoYox1Ts3E90NKI0VoEdpeNTaEHhXFLcZ0ECYI2hzlBn6cMT1HdmwDI/x
 qt38PHDCTYIy+83yiiimchMw7E12pps=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-283-HaLAOuAgNMSHLd9-2FjJEg-1; Mon, 01 Jun 2026 06:22:27 -0400
X-MC-Unique: HaLAOuAgNMSHLd9-2FjJEg-1
X-Mimecast-MFC-AGG-ID: HaLAOuAgNMSHLd9-2FjJEg_1780309346
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-490af284fd8so1141575e9.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Jun 2026 03:22:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780309346; x=1780914146;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=UYSWdrjn4aqQxQd0Cf2jKHSTVgv+zTIrZalUlPmgVOc=;
 b=Y+cRdc4kgcLFdr2bYpEUtxv9GZjcebbzRhJAJ4Ggt0vJQa23nzcttS6jXErxYmWm2a
 pIh5ZV3bI0qlDqXfSJD4blgeeTR59QAsVZVBUyxAN3aXbb+43qI91ycEHQLshZ7OGjQV
 sTrcTNrVCYKxWRWnY2251yrx41GYK0J9zgyJkT/3nXayj0RWPnr6o65oirzKSYZ+RGO2
 60sGAQZOni8G0rBAvkspguIwMZW/0sayFnSfUg8Al/ObbaSX81iY/xkFLKHUef0MtAXt
 j0P+xOsqxmpLNfcK30TkPTgn00WTV/4eeSUd61BK6aGZuyZ408wY4LRbbd97bj0mhEjk
 LLbA==
X-Forwarded-Encrypted: i=1;
 AFNElJ8Hwr6sthQkH0P0h1RbrJQJ+Bnugdp8RLerTQAO1Zoqma+WBnufT+aGpMPwsYmsb0xcCe24uV5lObs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwUfwPmSO3lNvm/TDgfW1+dg/TjnihraD9HwZLHfg2n6Fb575S8
 RzUGDsCTdHoOdmDNRRjohaHbftn0lrw9xFKAkyXnq+8avg+snbdymWOicQsTbkSZUURmkdoQjNm
 RVyvKn5pY9C6V/CwVkGMeYphLXooXeWM3M0lpfXs/fcLj9P3aUa7oMfPio0x3Ap5h3uT5Jg==
X-Gm-Gg: Acq92OE6nbNSDoAPJP60Sbdsar2xq0y4HK1p9aoIlNi/aJJGE6l4ZBaJKYaQ5X3EFRS
 bW6DgjVsBKjDIztoKQruXTggPqZ5WB8bMhZa9o8IVK3wogIoixyWoUPtur84y6VoOccZk1lu+Ch
 KQda5Ijm4WB6lfgRpTtRMigmXMlu4GZ56YXSqCNahit353cQ/iylKrddr/iV5roppWREIuzkGdx
 50jcE5/u3nE0OF2nNiCT69pKhm0nCGZDfd/1RzpxT6qDhN28jxx3hxCBF5SzcqkFs8SKyJHwDcO
 dx0xAWiP99QL/wHmYjhjwUR+rCJF4aWhq53ybExe2zo/jgfgTd7vAd2SZhXkU5CM0GKer8IAB2d
 LduJ/yddzNHC4gZsPGwt8vQI8l5G/8bG9iR4PdZBYZ7cZNpk4pAQLcQemoybSQvoZW++KQ7CX39
 OPoiLkWx+eFnLEPiU=
X-Received: by 2002:a05:600d:848c:10b0:490:a1a9:4ffe with SMTP id
 5b1f17b1804b1-490a291197bmr137427635e9.12.1780309346494; 
 Mon, 01 Jun 2026 03:22:26 -0700 (PDT)
X-Received: by 2002:a05:600d:848c:10b0:490:a1a9:4ffe with SMTP id
 5b1f17b1804b1-490a291197bmr137427265e9.12.1780309346037; 
 Mon, 01 Jun 2026 03:22:26 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-490aaebf4f1sm74962075e9.12.2026.06.01.03.22.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2026 03:22:25 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, airlied@redhat.com, airlied@gmail.com,
 simona@ffwll.ch, admin@kodeit.net, gargaditya08@proton.me,
 paul@crapouillou.net, jani.nikula@linux.intel.com, mhklinux@outlook.com,
 zack.rusin@broadcom.com, bcm-kernel-feedback-list@broadcom.com
Cc: dri-devel@lists.freedesktop.org, linux-hyperv@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-mips@vger.kernel.org, virtualization@lists.linux.dev, Thomas
 Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v4 05/10] drm/atomic_helper: Do not evaluate plane
 damage before atomic_check
In-Reply-To: <20260530185716.65688-6-tzimmermann@suse.de>
References: <20260530185716.65688-1-tzimmermann@suse.de>
 <20260530185716.65688-6-tzimmermann@suse.de>
Date: Mon, 01 Jun 2026 12:22:24 +0200
Message-ID: <87mrxelfvj.fsf@ocarina.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: udD9fdEXoPEiK3VHrO-SuBkZeC0bW9bJ5BiUrdgmkcI_1780309346
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tzimmermann@suse.de,m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:airlied@redhat.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:admin@kodeit.net,m:gargaditya08@proton.me,m:paul@crapouillou.net,m:jani.nikula@linux.intel.com,m:mhklinux@outlook.com,m:zack.rusin@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:dri-devel@lists.freedesktop.org,m:linux-hyperv@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-mips@vger.kernel.org,m:virtualization@lists.linux.dev,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[suse.de,kernel.org,linux.intel.com,redhat.com,gmail.com,ffwll.ch,kodeit.net,proton.me,crapouillou.net,outlook.com,broadcom.com];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[javierm@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[javierm@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,broadcom.com:email,ocarina.mail-host-address-is-not-set:mid]
X-Rspamd-Queue-Id: ABABD61D43E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Remove the call to drm_atomic_helper_check_plane_damage() from before
> calling the atomic_check helpers. The call has no longer any purpose,
> as the actual evaluation happens after running atomic_check.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Acked-by: Zack Rusin <zack.rusin@broadcom.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

