Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFt+AElfHWo/ZwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:30:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6450A61D6CC
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:30:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9783A11317A;
	Mon,  1 Jun 2026 10:30:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="GQm6PenR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DDC811317A
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2026 10:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1780309828;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=m5PnIUHVz9ACSP+/e7SnC4cD1TL+Z3tg4EIuDM06718=;
 b=GQm6PenRqlHE5fwAvh+yBpQ2UAw1QmnxoIow7O6zDOsku8TzYA8QdOyu3j6l42Q8L6yizA
 5a51IR6zIJR1uWwRz+k2MmEajcFk0WuFqy9wnSqKh5LCcXCM5yv89TPmlIFNRY2FRoVaWv
 s6u9HfZ18Lg58gep2XyVg2OvnJBRT1w=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-428-D30ggjOyODm-e9eVucuuIA-1; Mon, 01 Jun 2026 06:30:27 -0400
X-MC-Unique: D30ggjOyODm-e9eVucuuIA-1
X-Mimecast-MFC-AGG-ID: D30ggjOyODm-e9eVucuuIA_1780309826
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-49045f93baeso68353415e9.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Jun 2026 03:30:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780309826; x=1780914626;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=m5PnIUHVz9ACSP+/e7SnC4cD1TL+Z3tg4EIuDM06718=;
 b=L5O9fiV+OqPYUMvnXN1Ss40MWdLWuZ+DBEgIryZZoZ38E6whE88U1pM8lT82yYF2CX
 +ithYJlrr/LK9mH3JlsjiF6Bg0DePvEbQPp2/DfUEp+ZlaLig3DXr3KTh4CPhiTcYxoR
 XQKhw5Qg3nj1dbZJhOfATh4CJjG4lkcNdWLt060Ez67Advj5+JTay6mUKbozzy1PIGi1
 KnXkLrYN56EZOODFgZDHWAEx9Fch/2He7uK8CRCPciUdlfHFHx7RD3isPl28FBQcwQ3t
 DXFvU+dDZ8WPGuGtyrabEljgOEAX5L6oqh2rRfiQJvlIxVyAmeO/XRBEizytpXVRH1VH
 dP5Q==
X-Forwarded-Encrypted: i=1;
 AFNElJ+JjJtZe1w7d2GZfW6q4vVJIpOppyimNCqGycCgUythOmiWeZj1MglYFI+5jCafcuWM7tvdfBKWZYY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyXqXYUqX4KQJqqdzrVgw7ClBuGrlV7Rxm3gJHCVqrE5FpwBKhQ
 3UQ2pvPoK5VdYy1YAOndtDJ5vt6cc7gPkMurVplNdvPzvLldjCujYPoG4qk09B0+2Qee5T2WhEG
 QDQb141+DX55/vfncZXjIlS1WLDuG3IfeuYEgJ+9xAtqm+GWzXyOvVFhZMsZl1klThJyxng==
X-Gm-Gg: Acq92OGs7u7Ix/jRF/Cro7w/b2zgA0ZJu39Ah0LOrXy48Y2YCx6aWD61H6P3CN5in3X
 5f2hg64DofRkbzfe8TupsiSp/ZdQjzKwOaEnYUfwQQi1GrkN+aUQNOLS54swd2nffslsgOJlERh
 ASrJl+w29GhvkMJq58gC1LbeUVZ73kIkg2RMsE0SubJ9+ueTwxoz+zHC705GAupP7rjfxI/krHQ
 +obe6APAHBoRaCZ5DaDFTqWtLEYDh1thiB8MmxAS2WBurVIoTUJ+iAcvPi2K5UK8M1U9Sg/zyr9
 dUkZGLhp+VXzkc7Z4xf37eU6M+bZTxoXviGCBMbJExsdPU+SOpQ92wLQwTPFhqyn9CWcUoxIfAE
 rsWjjv2RO+Jow1xHNiKiq2GHVU/T2MZ6k39z6h0H7qql7LK6JNTMz8weiGoE5i95eGvVvUVXikL
 LIvT3n64r4tEmnyKI=
X-Received: by 2002:a05:600c:8582:b0:490:51e9:deba with SMTP id
 5b1f17b1804b1-490a293b7c1mr147144825e9.27.1780309826070; 
 Mon, 01 Jun 2026 03:30:26 -0700 (PDT)
X-Received: by 2002:a05:600c:8582:b0:490:51e9:deba with SMTP id
 5b1f17b1804b1-490a293b7c1mr147143955e9.27.1780309825482; 
 Mon, 01 Jun 2026 03:30:25 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-490adb4381csm24027695e9.3.2026.06.01.03.30.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2026 03:30:24 -0700 (PDT)
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
Subject: Re: [PATCH v4 10/10] drm/vmwgfx: Remove unused field struct
 vmwgfx_du_update_plane.old_state
In-Reply-To: <20260530185716.65688-11-tzimmermann@suse.de>
References: <20260530185716.65688-1-tzimmermann@suse.de>
 <20260530185716.65688-11-tzimmermann@suse.de>
Date: Mon, 01 Jun 2026 12:30:23 +0200
Message-ID: <878q8ylfi8.fsf@ocarina.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: jaj1JFldDBqJycJ36UaUvgaifppaKLs-9r1_2ubiFVY_1780309826
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,suse.de:email]
X-Rspamd-Queue-Id: 6450A61D6CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Plane updates no longer require the old plane state. Remove the field
> from struct vmwgfx_du_update_plane and fix all callers.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Reviewed-by: Zack Rusin <zack.rusin@broadcom.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

