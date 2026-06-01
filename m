Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KActHNhcHWoBZwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:20:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D3561D39B
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:20:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8463310E761;
	Mon,  1 Jun 2026 10:20:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="dSuDXQdD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CDE910E75F
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2026 10:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1780309204;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2pmaS/rwYkc2+fCZTYV9toIp0r3BjOevXJeqgzIBH1c=;
 b=dSuDXQdDCzNAVZiCjvB/P1Xu1TtN1dPKDHA2SJleY8i2CVuw6V5baoyUkvRfCRWpqMoHtO
 226rdxOwEVpHh2nklbFTIiNyGFzFT+YgRFL6AWjtUfZrC6SYvw8ea+2Zqwrm6rgkNbrXDp
 jQtKLwp1jobEez+wOC0trG/tx52EMMg=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-654-JFhUZx8cOM6hCZZNQyuJ-g-1; Mon, 01 Jun 2026 06:20:01 -0400
X-MC-Unique: JFhUZx8cOM6hCZZNQyuJ-g-1
X-Mimecast-MFC-AGG-ID: JFhUZx8cOM6hCZZNQyuJ-g_1780309200
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-45ef55779d1so1467040f8f.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Jun 2026 03:20:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780309200; x=1780914000;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2pmaS/rwYkc2+fCZTYV9toIp0r3BjOevXJeqgzIBH1c=;
 b=Cm86Q7NY+BP0Ov48l+2T2LG/etP4U4FRuGTmPSwmIp2ooYNLu8PHFw43XvjDodD3cQ
 VOcJJLt6ZB+1Q44VigZOmDPxsbPEGgp+T81M1KZUIfF3j9/jTj2RQ0mWnFgeGP3iW6Pq
 21M6EJ44e0Nx+zp9/C/5OeUTj7y02EK+ryWfVE6DHQQ/nbLFd8DHbJZICs5F6XQMKyFA
 eC0er/7iVGNuuBkDdQBswlkgKVFJ5D+BeBP70FXoeAkn9v0aL2tBMN/B8brivL31s7nN
 9KnXrpd/H2hY70IK3upv8I3L09Z/l6FVwXg3lYCLAN2oKUH4+SKG88lzSM1vnQoTXege
 AuTw==
X-Forwarded-Encrypted: i=1;
 AFNElJ/odrnAts0PyO9JR004R00fS/xfpBA3+MGrqOtTIT9FOv9W67AXoQIi13jeFLwe5jxxoj1blRAjWoU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy7ea4gnKRSA+/XY8/AEJvGbgu+wzQ/rMdYc4QzWrHvWRt3sgvw
 DxDchl6bwgx64+AQt0mbK5ON2OKQVLPk7nuMBt21wH7CzWdC07aBaW+Eb53+ILcS52oWf4MQxxN
 iJn2yAEfrzFzn/8w6MwvempYn7GzeiJPh7EoCdMBibyDNC/xu5NJzlxkTaWhN1ppM+0OEng==
X-Gm-Gg: Acq92OG1c9UvtUPiZ7fABkpCaTEPJ/ypiDXhQ7pfC9LYh/TnxTqH1MRofhYwkZigbRP
 uXRtHoP2xl/QiL5MXVyal5EFaIRNdeReyYe9VZgHW6KIMxmT3SSw+FAWBfRAkYcNAPzbUWBWUVW
 Vx/jK/VcHPwcILfAv1Js+gzzfw2+ehOykvSEmeNSnt4G+oCDP+qcYGLFoIaNeefMCLcqvt7Wc8j
 fjqqJXKO7Z4XrB1TC8yU7JgwOs1sXyurHgic5N9D17w6wLxxOEs7lrMxfWAHVLGoZD8PPfarg0I
 w/QaXiliMAXR0Cp+pF78enYoj/znVsxycd4DBReeD4UwBClb31FFuEhypKzdIUrExLME8fcWkP5
 Om+/UU1KWDkKuSKSlKvOd+AX5cZdgLlM0cRspztliCEpDQBJtCuKKTfr7rW5/LBiu7mE9+YgiBN
 yxjNw0dTnBYwoNJRQ=
X-Received: by 2002:a05:6000:2581:b0:45e:f8d0:d22c with SMTP id
 ffacd0b85a97d-45ef8d0d485mr18400673f8f.25.1780309199699; 
 Mon, 01 Jun 2026 03:19:59 -0700 (PDT)
X-Received: by 2002:a05:6000:2581:b0:45e:f8d0:d22c with SMTP id
 ffacd0b85a97d-45ef8d0d485mr18400611f8f.25.1780309199267; 
 Mon, 01 Jun 2026 03:19:59 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-45ef354cf0dsm24570236f8f.17.2026.06.01.03.19.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2026 03:19:58 -0700 (PDT)
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
Subject: Re: [PATCH v4 02/10] drm/atomic-helpers: Evaluate plane damage
 after atomic_check
In-Reply-To: <20260530185716.65688-3-tzimmermann@suse.de>
References: <20260530185716.65688-1-tzimmermann@suse.de>
 <20260530185716.65688-3-tzimmermann@suse.de>
Date: Mon, 01 Jun 2026 12:19:57 +0200
Message-ID: <87v7c2lfzm.fsf@ocarina.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: MfUJz-hC-07ilkTyLW5hm7N0Q-ipinuwfY68Ghjvo7o_1780309200
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ocarina.mail-host-address-is-not-set:mid,broadcom.com:email,suse.de:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 24D3561D39B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Each plane's and CRTC's atomic_check might trigger a full modeset. As
> this affects the plane's damage handling, evaluate damage clips after
> running the atomic_check helpers.
>
> Examples can be found in a number of drivers, such as ast, gud, ingenic,
> mgag200 or vmwgfx, which all set mode_changed in the CRTC state to true.
> Ingenic even re-evaluates damage information in its plane's atomic_check.
> Doing this after the atomic_check helpers ran benefits all drivers.
>
> There's already a damage evaluation before the calls to atomic_check.
> With a few fixes to drivers, this can be removed.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Acked-by: Zack Rusin <zack.rusin@broadcom.com>
> ---
>  drivers/gpu/drm/drm_atomic_helper.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> index 51f39edc31ed..4c37299e8ccb 100644
> --- a/drivers/gpu/drm/drm_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_helper.c
> @@ -1065,6 +1065,10 @@ drm_atomic_helper_check_planes(struct drm_device *dev,
>  		}
>  	}
>  
> +	for_each_oldnew_plane_in_state(state, plane, old_plane_state, new_plane_state, i) {
> +		drm_atomic_helper_check_plane_damage(state, new_plane_state);
> +	}
> +

I wonder if it's worth to mention this in the drm_atomic_helper_check_planes()
function kernel-doc comment. But regardless, the change makes sense to me:

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

