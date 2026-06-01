Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJsYMC9fHWo/ZwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:30:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3401661D69E
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:30:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BC58113192;
	Mon,  1 Jun 2026 10:30:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="ZX6x9eiB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25608113183
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2026 10:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1780309803;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Wi97KWGdJTdWq3IdYpsAWLx4xopc99EofOMqrefmH9Q=;
 b=ZX6x9eiBPV38y8Bjz6hiGqz3TItoF+lCpb9j6fw+st8riYtmvSsQRYg4OF3YhGc+reI/Xa
 348RIHXwT5aIiala50ZB8/GarJFHxjeF16d22Kpbt/FXc+euOfsA53i0Wfv7rAqYmfVuyB
 eR0zxHGFKuRt8YreH7uy9/zLCDPEbBk=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-682-HAGQYOrJMT6IxasRmlIX0A-1; Mon, 01 Jun 2026 06:30:02 -0400
X-MC-Unique: HAGQYOrJMT6IxasRmlIX0A-1
X-Mimecast-MFC-AGG-ID: HAGQYOrJMT6IxasRmlIX0A_1780309801
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-49048e21ea7so48964275e9.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Jun 2026 03:30:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780309801; x=1780914601;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Wi97KWGdJTdWq3IdYpsAWLx4xopc99EofOMqrefmH9Q=;
 b=j2x7L7lKlDTia/krcHfIon/wcOhc6jVpYnZmsDpaEIu2HL5hqqCvyji5WJ1Iih8wrg
 +PDgmSjGy7AiM837qgJC3E204DoDi4ONbkCM91qWvK0nh1TWfMwyTHii1Gpb9/Fs2FOA
 /GzvZyf/zAUbEliXnWc4uACNpYZ5M9ThLAmshlh1rZSDkFWX+baQhOgeWzzbmv9haUfa
 lN/ZzGD5ltDHacyCZelPfAlbS+z9mXGtNeXCs46/7MBrlVadmdz5/rkjLTj/w77jn0iX
 IxSg2q3e3S34amSMNhJ6foOhZBabrHILv1SZV36qlCY/9gUobxgVTiwQWFz45Ty6Z+lx
 fKww==
X-Forwarded-Encrypted: i=1;
 AFNElJ88h9LfukOA/HFZx4+WlNQgXcy6w++xbSiFXO45IiksjsmhJpPUj3+pqVDkOEv0rpJ16ZtAvQ5l+5g=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzRXSUNMd1MA7IuMSE6K5NuAAQPV1+Zn2+ysW7Ija9gxgZGnfrM
 GS4j+aZAq807xcT/U9B4i/3vX5Eb0zv+ZjYsDfqI49uEyUfKp0TjjaG4Tfs29N2nK9mq+xjMwjV
 MpVjFEiTKcn5Cux3+z0onfIhuAfDUI5MLlAjtQ6NDQg14xKbHW2kaEpNfXYTwn/tSIAtnDA==
X-Gm-Gg: Acq92OHdJo1Px+mjAwe3wc99+5Ru0PSf08e4snSLmDz4mdVhZXwL2C29NiQtYzk7pCB
 HPqWxusID1zB663blPFjcHpGcHg1QOv53A9Rn6Cvy/qIOyGDnYb89WNx/3eFi0/axfIe5ib1LRE
 TOx6FniKx/9712Y2KwQPMFWoMNj9a2dr6lq5+TJIDrbHVf4l9/pSPzHknrXhREawmuGJa1/WlaP
 WbIAijJHJPIGcvjkb5Jewg81WM5HZvcqmBCSkjS2wwZw8jOpIpZxoHouUqnXyxTCD/KD/2AkXF0
 d+irBIOqr3M/ymEpAyv5SGvdL8inJevRhRlkolZuqLQyziz9dWhe1ogCe2pcnLEf1KfaH4ljKon
 Nm9zgR8wRc/uwFeflA5YRMbLYJUB3zKcc8PRIGSGbJeSOsaE9B+8ZErxbtjWXmYgphrBCnWABU1
 Qg+1lK49H07xe55iU=
X-Received: by 2002:a05:600c:1d0f:b0:489:32b:ac0b with SMTP id
 5b1f17b1804b1-490a2a22bb4mr148349575e9.6.1780309800954; 
 Mon, 01 Jun 2026 03:30:00 -0700 (PDT)
X-Received: by 2002:a05:600c:1d0f:b0:489:32b:ac0b with SMTP id
 5b1f17b1804b1-490a2a22bb4mr148349225e9.6.1780309800553; 
 Mon, 01 Jun 2026 03:30:00 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-490af0babdcsm4375085e9.0.2026.06.01.03.29.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2026 03:30:00 -0700 (PDT)
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
Subject: Re: [PATCH v4 09/10] drm/damage-helper: Rename state parameters in
 damage helpers
In-Reply-To: <20260530185716.65688-10-tzimmermann@suse.de>
References: <20260530185716.65688-1-tzimmermann@suse.de>
 <20260530185716.65688-10-tzimmermann@suse.de>
Date: Mon, 01 Jun 2026 12:29:59 +0200
Message-ID: <87bjdulfiw.fsf@ocarina.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: AF_dC8-TkIT7G5_HDyjwPsv6uCINw3Jk8Q62ZULJMDQ_1780309801
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,ocarina.mail-host-address-is-not-set:mid,broadcom.com:email,suse.de:email]
X-Rspamd-Queue-Id: 3401661D69E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Rename some of the state parameters of the damage-helper functions to
> align them with each other and other helpers. No functional changes.
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

