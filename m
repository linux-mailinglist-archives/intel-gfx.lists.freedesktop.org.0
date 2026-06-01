Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAZCBfReHWojZwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:29:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1E861D649
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:29:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C744113170;
	Mon,  1 Jun 2026 10:29:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Ya46cfdP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0F1911316F
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2026 10:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1780309743;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rR3vdJBAgyYpZ/mB0zSfLOFP8KAbUlqalAgRbWXUhZ4=;
 b=Ya46cfdPCpfK3KOJatoUvbcW6GqOT7VEuVcn8wDVFsHmfrxCb8XC20CKiRpmKxPv1G3FGt
 b7UQHfhJpPFYZRmGLGoRkshCtAFjP4kREH0YH8f/vKRxUZg8Zi5oHnyYlu7UbWWzCBtcW5
 BhZzCXCsJR4y+M/q1NQeWb4d2XojD5M=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-526-KkbaBAytOW-Tn8HcWWrUdw-1; Mon, 01 Jun 2026 06:28:59 -0400
X-MC-Unique: KkbaBAytOW-Tn8HcWWrUdw-1
X-Mimecast-MFC-AGG-ID: KkbaBAytOW-Tn8HcWWrUdw_1780309739
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-490479c2911so104322795e9.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Jun 2026 03:28:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780309738; x=1780914538;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=rR3vdJBAgyYpZ/mB0zSfLOFP8KAbUlqalAgRbWXUhZ4=;
 b=ogOgODphdR55tw56lIKThhLG5B2UJ1sZQ+ZhNaOqiu+Zbuo9Dhif5yhPcJ7h++UH8t
 qJDSRpICP0fspVL7CfmnJxpwT8bWDWpEdPBU8kUyNPv8Ksh7e6lhkxmawV3P/7mk/phM
 tMqCH+AEvoSNfFtl7EGCkaVNFLfWV4ddoyI+o7FcU1Zmi0ruCijoW5OxCFSUu32iut4j
 m0UV0AxOf2N8Cyyj1IMOIFbn/mWyEgJFDKCUiWLdt4aKNm7sdiXK/6NuffpMXjKbetrQ
 YxG/UmmAP1uO1TzLO8gM5WqHDIHmYzKEUoKvjhPxcZQryttBHnBiPaT7djw4zJBKMpEn
 JnAw==
X-Forwarded-Encrypted: i=1;
 AFNElJ/34JR5xtfL7sEh55D9RxkX3d9pmxV5nMeDrAZIRd9c94D2W8r5rXRPa/GSFXhdrqYtxY2fhVA1d10=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyOotjADiAl94L1m/MZcwSKyrNXrmdB2AUAf2qH59ugxhOz6VJn
 JtfLJu6GP/ZFB48XSmp4g4rgdwp5bfGZ++C58BNlborXEDLepaL4cMTo+oE+b0sm9yMZeI2mYi+
 UkS52hJt0tTIJ82sA903TwMhY6jD16w12tDL3RVNR8mlilt+eMOXyQGPJYX2pt0IekQiu/g==
X-Gm-Gg: Acq92OHySxRkB3YP4bKVv3PGJxxmJgSAD1OXZWFSZUKlAG7UgZm8UIydIIdEnTx3N5e
 qB47xZeZji5NUkjIXurhrwW0HolHlphIfkAeauXw+eidiR2zzYQ4G21YaN7L85f/Il8VcJKRsnU
 t/YqeD50V1dqGNEHz/u4QSr6/u3JApQ86O2fs6NPMr0zFCT8uEzti0tbdn++Pe0KYhLOcaSy+Ug
 NExKryDavzWrY3hlmeKqRaRPHD1Yk63905Pv4zLH+mARN0ZRWiJVRwFUaY1Ww6oDlMTyPTC4rER
 PveiOgQAJlfzRSUzsHWBuDP9f9s33ndvmdUiJ8qIqbCyQvb2QkaTM6buTGRaOvxyqLpBofZ9eN7
 Q0Im0qdRi6hTR/Tt1v5/6JLQdPD9DAHWE9CjC9jVUJxmHgG7f7sziw6FCrSZm4jV+quQqdaSb4w
 XtmyyPt/0JJEBoIYM=
X-Received: by 2002:a05:600c:a214:b0:490:9782:3eb8 with SMTP id
 5b1f17b1804b1-490a2948f0cmr117371375e9.25.1780309738539; 
 Mon, 01 Jun 2026 03:28:58 -0700 (PDT)
X-Received: by 2002:a05:600c:a214:b0:490:9782:3eb8 with SMTP id
 5b1f17b1804b1-490a2948f0cmr117370965e9.25.1780309738117; 
 Mon, 01 Jun 2026 03:28:58 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-490ae3901cesm8445615e9.7.2026.06.01.03.28.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2026 03:28:57 -0700 (PDT)
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
Subject: Re: [PATCH v4 07/10] drm/damage-helper: Remove old state from
 drm_atomic_helper_damage_iter_init()
In-Reply-To: <20260530185716.65688-8-tzimmermann@suse.de>
References: <20260530185716.65688-1-tzimmermann@suse.de>
 <20260530185716.65688-8-tzimmermann@suse.de>
Date: Mon, 01 Jun 2026 12:28:56 +0200
Message-ID: <87h5nmlfkn.fsf@ocarina.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: hjvPy5XKCWOFKlUGBbqtR__LOXXdP3xz4X6fRE7nqM0_1780309739
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,suse.de:email,broadcom.com:email,ocarina.mail-host-address-is-not-set:mid]
X-Rspamd-Queue-Id: 6F1E861D649
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Nothing in drm_atomic_helper_damage_iter_init() requires the old
> plane state. Remove the parameter and mass-convert callers.
>
> Most callers now no longer require the old plane state in their plane's
> atomic_update helper. Remove it as well.
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

