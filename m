Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wcemGP+JKmoLsAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 12:12:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E459670BB8
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 12:12:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=jQH+Awhi;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=redhat.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A2E210EE00;
	Thu, 11 Jun 2026 10:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E29610EE05
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2026 10:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1781172730;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=q0r9Bb05wU768Bts6kNipr0zjojivSJzgQogOHI5wH0=;
 b=jQH+AwhiNYfDNE+fpr4EyyfDzX+dLcde4fPwRfQtPkFv4U4Ir1NylXa63M2xY7sHY9Lsh0
 2QjNaTT2VebPP1X4WLmCuDf8Q08O5dzGXjc8KU7LN722trj0LbRBVADxg9kRbg8AOdBkGb
 FynE6i7WfrFwElLyvj9LvMXWaXI+0/g=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-402-sDy_fw_NN9Oi3Y1ZZa1Ayg-1; Thu, 11 Jun 2026 06:12:09 -0400
X-MC-Unique: sDy_fw_NN9Oi3Y1ZZa1Ayg-1
X-Mimecast-MFC-AGG-ID: sDy_fw_NN9Oi3Y1ZZa1Ayg_1781172728
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-490ae0167ceso36863915e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2026 03:12:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781172728; x=1781777528;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=q0r9Bb05wU768Bts6kNipr0zjojivSJzgQogOHI5wH0=;
 b=g+mw74oW3nF+OFM8jRo7KUNeB1CwdfjHzntVzTixtVyk+Rjwu5gCaGIM82MFIvK9Yh
 Pz1pW8SkiDuk3YIxkwahhnNAtZ1SH3QXZUcVY4BZg6EcFe4x3E4a+zzAgwhlqbZll87J
 N7NKvqdrhd16ka3m8FYEGE8w3dVg2h09asNf0UFoxZTtNt8ie1HTdsWQoId7rIAdeQii
 PH6ockWNP4t3QQeDEUBrOtf2xflqke5NboSAevp9jj1auJWb5Cy3Oeh/NAw5z3kM5gJy
 If8ik54uG/l+iwxodeDwnZkQLKCffB3gYS0YcKQ+5pK35HxRkRYnp0xxFbzl48iY32xu
 kDtA==
X-Forwarded-Encrypted: i=1;
 AFNElJ/SGrES1sCTEtOVNEg2ADvSI9u2yIdqc1xQz7PFaiPVuuqP2oMxWuJ7ER0WQEEHU/d/HaObegjrgLY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx/4/H9w5lsJgH3clqjVTv6Z75ccIepPNGRoUEWnPd6Da9d9vAF
 3ZAXXWk/m6yFEPCo29IHPoJLqftuxjYH2YT/Tcinl5puiTZk5rPwDKSDI88Q5NIKi8IheRNyzyp
 OhzWC/FrHP70eN4J2vKDYYlZLglP/bbgukdM/H9On/rMrZHHXt7SEU7JnBAwsx8LlGKpzHw==
X-Gm-Gg: Acq92OFV9N1TxuRWC0Rzf/7xYqVm0dbwSg8sZKfqYV8kHZFwCKIlcuSL2E4xlOqKEvC
 FjYFm263TYFsDoTnT6pIN8jp0Rug/r5bOmFTNDqQ5iQKB2KwQs9MWzzoEfvKqsNvOspuDQ5f6xI
 0vZ+GTL2wZI43fJKXTrymZRl4KwnKcHOlE8f6CBXnnhmh3sj9VppIzJLWeiCR/n/jAvJbqQbqqM
 5pndPfQAlAcLC8xQ6VXeSHvQCvW19z8hvGio8O3iu7EEwy9O0tL0r95GC2gOGyVz6V9GBCHvpLA
 o7lJZzFX/CxxTXYBWqTrPsXAgSUpn819iKheh/grBbyiHPLGu3yn3RXMvrgQsRB4xpGc1LlOkAQ
 k5YzHl9x8+A2DPYodPcHdyQod1wy0E1B7U0fZoFCmnwJ3M1yYGcfWmgwtRvyoAo6C42Dnv7uHKi
 PEtZFIJGKZtHM9Es4=
X-Received: by 2002:a05:600c:a39b:b0:490:c08b:b24b with SMTP id
 5b1f17b1804b1-490e5607e3cmr15876085e9.26.1781172728113; 
 Thu, 11 Jun 2026 03:12:08 -0700 (PDT)
X-Received: by 2002:a05:600c:a39b:b0:490:c08b:b24b with SMTP id
 5b1f17b1804b1-490e5607e3cmr15875655e9.26.1781172727683; 
 Thu, 11 Jun 2026 03:12:07 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-490e2d09a85sm51975965e9.14.2026.06.11.03.12.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2026 03:12:07 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, airlied@redhat.com, airlied@gmail.com,
 simona@ffwll.ch, admin@kodeit.net, gargaditya08@proton.me,
 paul@crapouillou.net, jani.nikula@linux.intel.com, mhklkml@zohomail.com,
 zack.rusin@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 harry.wentland@amd.com, sunpeng.li@amd.com, siqueira@igalia.com,
 alexander.deucher@amd.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net,
 dmitry.osipenko@collabora.com, gurchetansingh@chromium.org,
 olvaffe@gmail.com
Cc: dri-devel@lists.freedesktop.org, linux-hyperv@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-mips@vger.kernel.org, virtualization@lists.linux.dev,
 amd-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Zack Rusin <zackr@vmware.com>, stable@vger.kernel.org
Subject: Re: [PATCH v5 03/15] drm/vboxvideo: Handle struct
 drm_plane_state.ignore_damage_clips
In-Reply-To: <20260610152505.260172-4-tzimmermann@suse.de>
References: <20260610152505.260172-1-tzimmermann@suse.de>
 <20260610152505.260172-4-tzimmermann@suse.de>
Date: Thu, 11 Jun 2026 12:12:06 +0200
Message-ID: <87se6t5qtl.fsf@ocarina.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: oFjkCqRCiPD5db7oIEnRq7hYfChYgWNgUkEX6ko0adY_1781172728
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:tzimmermann@suse.de,m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:airlied@redhat.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:admin@kodeit.net,m:gargaditya08@proton.me,m:paul@crapouillou.net,m:jani.nikula@linux.intel.com,m:mhklkml@zohomail.com,m:zack.rusin@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:harry.wentland@amd.com,m:sunpeng.li@amd.com,m:siqueira@igalia.com,m:alexander.deucher@amd.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:dmitry.osipenko@collabora.com,m:gurchetansingh@chromium.org,m:olvaffe@gmail.com,m:dri-devel@lists.freedesktop.org,m:linux-hyperv@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-mips@vger.kernel.org,m:virtualization@lists.linux.dev,m:amd-gfx@lists.freedesktop.org,m:zackr@vmware.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[suse.de,kernel.org,linux.intel.com,redhat.com,gmail.com,ffwll.ch,kodeit.net,proton.me,crapouillou.net,zohomail.com,broadcom.com,amd.com,igalia.com,intel.com,ursulin.net,collabora.com,chromium.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	FORGED_SENDER(0.00)[javierm@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
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
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ocarina.mail-host-address-is-not-set:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,suse.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0E459670BB8

Thomas Zimmermann <tzimmermann@suse.de> writes:

> The mode-setting pipeline can disabled damage clippings for a commit
> by setting ignore_damage_clips in struct drm_plane_state. The commit
> will then do a full display update.
>
> Test the flag in the primary plane's atomic_update and do a full update
> if it has been set.
>
> Commit 35ed38d58257 ("drm: Allow drivers to indicate the damage helpers
> to ignore damage clips") introduced ignore_damage_clips to selectively
> ignore damage clipping in certain framebuffer changes. Vboxvideo does not
> do that, but DRM's damage iterator will soon rely on the flag. Therefore
> supporting it here as well make sense for consistency.
>
> While at it, also replace uint32_t with the preferred u32.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Fixes: 35ed38d58257 ("drm: Allow drivers to indicate the damage helpers to ignore damage clips")

And for this one as well.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

