Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aF7oHhNdHWoBZwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:21:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1DF61D3DF
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:21:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72C7311314E;
	Mon,  1 Jun 2026 10:21:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="KjmeKrGG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 249B911314C
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2026 10:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1780309263;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PtraVy72eIuUfdejQSU7WTEFINXM3tMuzrGKzIN4pEs=;
 b=KjmeKrGGw7lCPtuu1rnGdzMUPgKy2f2dJWDyJRQvO2Qcob2rE3wCN9KBPzScyaqZDSDukK
 fW/merYuxFsAevobcb/5p2NiUfM/kxTUf2cRr/Rj70M87ETVIBvpMGpEr0qMT+8D9Y3c0A
 O/uLLz37fsgO+OEZQzbulU52S8utcTk=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-47-rCrkqtvBMdScWN58_3TEgQ-1; Mon, 01 Jun 2026 06:21:00 -0400
X-MC-Unique: rCrkqtvBMdScWN58_3TEgQ-1
X-Mimecast-MFC-AGG-ID: rCrkqtvBMdScWN58_3TEgQ_1780309259
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-490a762e646so11692735e9.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Jun 2026 03:20:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780309259; x=1780914059;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=PtraVy72eIuUfdejQSU7WTEFINXM3tMuzrGKzIN4pEs=;
 b=F17dbyP+lCmpzRe7EsNH1tOJ6Q4NI7UCmf5WlBbXFg7YHf2vQBrmYDoYROJkDBxu3J
 dyinVyNE8aFD2UChlVrKfbxDcDkR6lD+cjh1dAo8ph5Ec/P969GiWvc4pjZIUNUhMZh8
 IUazLgn1oTLGJviAJ3kRjfnS8PNUkNcR9L6VaMqNBo0TAqqkjTXfQnhBaia+tBl/7r+f
 7LCGWmvkXqmV8KgtJg7YVj43TBMLMT/9x2vBUrINghsoxNr5+XE+QHKYEm4AK/1OCTzh
 QZUS+hl4IDKvUZDr6iLcGIDDmLcp6j1SaZMOB2xOVAS0nkhr+B9KiP2mTDmmXW88EfjC
 hhjA==
X-Forwarded-Encrypted: i=1;
 AFNElJ8B8T7iaYUpXgdiakjcOg1IQBDr4YFUO5mwzzCXob8cJZbGlm5YVIOApQQagm9Zy9LWto6w/YLaRPY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwCyD8y7ayDm4cJo122TGxTbVBAzuq9DROD7s3NBbn3Be0NyieM
 tNpnd1J82IAdyQNRDoorVyjF2fH9SM+cuzPmxjEW5UFAitUGt1plAfhVYk/SF3P0a3eiKD3trPW
 wGfD3LayrkcBFSYW7NUlBAfAD+ky4htHWRzWtOnKwQ8M9fWeYELl6It8kZ9g59JNuzeTZKg==
X-Gm-Gg: Acq92OF1EAVmn4wiyb35bFt+wxf6jyFyu8G4MdMHll7+yQrx/1XD+1z5eSkLo917csF
 u9Rlich2z9Ffo2BL23CpQWLKZrMcBbMBJAoq93bP04+ZthntUMt4uPT/qrIH6YS2b8KeJ1l9k/U
 gw0/1fkUCzZj/TxpSbKkYQK6Q5fcn95rhiAqmQU2LmupWZHQEXFoTvNQGuggBZHjmPGSfss5dgP
 NhNqSMPtF0M50z5Junn6p8UvDnPHpAJG24QDLfFfgZYdMwAsT1H1KRQghf6ERNL+YM/8WgLuzbC
 elx7lsQSdZHVyBfvWg1uqYC0ye/TKWrZOOtYPZk0TKOPCcIEILywwui14EhokPrdAmGg5iCWxed
 orkK3Ap1Co2Wwc9Z5TrYENRHiZ157+Zd05eb08Npds6eeWGxCrz2YVLy7lff79sBCxiNtEPcYrg
 +2dbxicQm7QMsitWg=
X-Received: by 2002:a05:600c:1992:b0:490:adb6:793d with SMTP id
 5b1f17b1804b1-490adb67fc0mr29782795e9.26.1780309258858; 
 Mon, 01 Jun 2026 03:20:58 -0700 (PDT)
X-Received: by 2002:a05:600c:1992:b0:490:adb6:793d with SMTP id
 5b1f17b1804b1-490adb67fc0mr29781855e9.26.1780309258391; 
 Mon, 01 Jun 2026 03:20:58 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-490aeacecfasm19237985e9.4.2026.06.01.03.20.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2026 03:20:57 -0700 (PDT)
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
Subject: Re: [PATCH v4 03/10] drm/ingenic: Remove calls to
 drm_atomic_helper_check_plane_damage()
In-Reply-To: <20260530185716.65688-4-tzimmermann@suse.de>
References: <20260530185716.65688-1-tzimmermann@suse.de>
 <20260530185716.65688-4-tzimmermann@suse.de>
Date: Mon, 01 Jun 2026 12:20:56 +0200
Message-ID: <87se76lfxz.fsf@ocarina.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: z1qO-tqxA7DaBJ9Y8km3zWrTK-uxyl2JLk-IEYA5ETo_1780309259
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,broadcom.com:email,ocarina.mail-host-address-is-not-set:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: EA1DF61D3DF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Atomic helpers call drm_atomic_helper_check_plane_damage() after the
> atomic_check anyway. See atomic_helper_check_planes(). Remove the calls
> from the planes' atomic_check.
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

