Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFHCHRVfHWojZwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:29:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0369661D66E
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:29:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7359113174;
	Mon,  1 Jun 2026 10:29:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="VVzTeCBB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB4DA113172
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2026 10:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1780309776;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=NR4sOBYtM0bZ0iqX/XjOc3nz+SGcL1hWjzs/0wJdl4Y=;
 b=VVzTeCBB+XKcHZMgzGwahCNp4+EYzp+4+IpGFwTNzk7IwCk4FqTbvmEs1YZ4CEm8zm14N5
 KmXILOGcEGk9mrcL9y2SYs3x5W9xSpAN6CDAOgqBbovGIgqiJyK/ZQ05qVEAYAeTBYJpCB
 +6BJ+BR60bf73BeAxGsepS3tG2ZMIp8=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-428-6iy-Tn9gMiaYADG5vXqRsw-1; Mon, 01 Jun 2026 06:29:34 -0400
X-MC-Unique: 6iy-Tn9gMiaYADG5vXqRsw-1
X-Mimecast-MFC-AGG-ID: 6iy-Tn9gMiaYADG5vXqRsw_1780309774
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-4600c8cb13aso687895f8f.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Jun 2026 03:29:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780309774; x=1780914574;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NR4sOBYtM0bZ0iqX/XjOc3nz+SGcL1hWjzs/0wJdl4Y=;
 b=hONXGWUN+GYuuxJQ110tZN6XXD22CBYlE15zK/C36GZ5arVC+qJUzcCMhpkmY6IM0H
 DZY980JVxDljLUsW5+Z/W1j4M2Ad4Dxnrf5OUXy350V04Oj8e26+jZpq5Z6ViP4DDeUR
 ixxzPksFEItLESuVz9rKPaeM8dejxfgQ1uHKqSqPXZOWYaQClHJFv0AfglAXmPIcrCXt
 mqQOnmBnAZi6Ov5I8417yW5k0wshOS9psgfbBpBZ4Oq3LfbbMyB0Npl3/FEUN6vENVug
 2gYztrWShp/WtJcEr9o506JwDidcc8hlJMe2vTUOmP6aIz0MYKlD5Ak8Yp0MHeHSacKA
 kLDw==
X-Forwarded-Encrypted: i=1;
 AFNElJ8Gl3Te00MiHNwRlR00k4jmX7DmKL4PVEnEuBK7CIUIwmYIHGR/xjokdW1PTdMs58C9ExvQsYQR+Ts=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyvkkCXNu5SOy8GZLE85GmR+Rn0w58jhffKTxU9Kp0VCgLiurPy
 YMc1h8gQG0zQTooRPlqdS0SEcLcfcBG4PDOCppUJVCTLg31ILDA4hyIVzVef3uawKaR6cWAdlkr
 iGEb0vVU8OAd2y3AtLs5DgGXJ0+NopZDJcIChNHNdj8SzsDN9sP+2wdr8ulg2F0ng6RgRfA==
X-Gm-Gg: Acq92OHt2OnbfipKBjVqRMzfpHGyz98yQSjO2FLLaVjFRQXx2/ZaTwf3Brw1QVplOde
 qbry6I6EwUhd9rUtjdBVrmORM7G2gkHUMJs8JUdqVB1Oi7wqVselUI0upgnaHK1UmbUO+dcqs9S
 eYrbA71sQ6lZXHrNQBeQvMKhCpJA1hgcuN3Bcaz7zd9QADRtp+78bdh7jA2uOeMzz92rX2Gb/xG
 DEgGHz/fVf2sCe4CSkxg2ljHrPOT39UV5hkQs3kN1dGA2oebQ0XSRXgdSktV5jgFUVc2abxfcvW
 4qSw6hJ7QElPxXEB4lzitHOEZ//Z1xodnFBC5KjatslTA+Ja2qGN/jxr6eXvwyr5Q1KYzfizqv7
 mh8JlmvpWAYi13U1toGZYBmVgZjQQqZ8tlKV5dX/WIHL2TgQewjT7LfeNIv3OEaDSBUMdRykoq9
 QaA0ZeVKqEgM+3gEw=
X-Received: by 2002:a05:600d:8444:20b0:490:44eb:c1d9 with SMTP id
 5b1f17b1804b1-490a2947c86mr142088515e9.28.1780309773586; 
 Mon, 01 Jun 2026 03:29:33 -0700 (PDT)
X-Received: by 2002:a05:600d:8444:20b0:490:44eb:c1d9 with SMTP id
 5b1f17b1804b1-490a2947c86mr142087935e9.28.1780309773155; 
 Mon, 01 Jun 2026 03:29:33 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-45ef34a037fsm25007994f8f.4.2026.06.01.03.29.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2026 03:29:32 -0700 (PDT)
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
Subject: Re: [PATCH v4 08/10] drm/damage-helper: Remove old state from
 drm_atomic_helper_damage_merged()
In-Reply-To: <20260530185716.65688-9-tzimmermann@suse.de>
References: <20260530185716.65688-1-tzimmermann@suse.de>
 <20260530185716.65688-9-tzimmermann@suse.de>
Date: Mon, 01 Jun 2026 12:29:31 +0200
Message-ID: <87eciqlfjo.fsf@ocarina.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: bBEl8lWHKZi5_5IsyFL6BhouT8SkTYp0B76btuZP8G4_1780309774
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
X-Rspamd-Queue-Id: 0369661D66E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Nothing in drm_atomic_helper_damage_merged() requires the old
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

