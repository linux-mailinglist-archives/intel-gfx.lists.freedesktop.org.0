Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCy2DulbHWrnZgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:16:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC5761D2C6
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:16:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8E7010E78C;
	Mon,  1 Jun 2026 10:16:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="bG97OOPA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A040C10E78C
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2026 10:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1780308964;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ec/J4tNvrAMdwkOq5RTOf80WrT+IRWDMG7cFT7/0gaw=;
 b=bG97OOPAoHu9sfEqhiUz+D42kqucPKFn4+sshDR/VXpNGLmDVaTEgP2R54uiN2L3HHo2zO
 jzvjYnrPIG4a3Jzhet9bvw/ibed2K84i6Ofv5Wc+4N19MY+Z1W2OQ3QyccwWNqWYrsA6Y5
 yHQkjhDV+Vc7NUW2GqIz90nagSVmSFw=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-590-Fp-vQwvbPQaIu-d6MXfOmA-1; Mon, 01 Jun 2026 06:16:03 -0400
X-MC-Unique: Fp-vQwvbPQaIu-d6MXfOmA-1
X-Mimecast-MFC-AGG-ID: Fp-vQwvbPQaIu-d6MXfOmA_1780308962
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-490ae4d89e2so3130675e9.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Jun 2026 03:16:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780308962; x=1780913762;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Ec/J4tNvrAMdwkOq5RTOf80WrT+IRWDMG7cFT7/0gaw=;
 b=AT79/nxfbesNFmh3002RI9ONmlzMSbRJoslKaukNCNBKO3fsatuwK2mgUdV270q3AO
 GnntUg/BZR71Eg6FnNcyoA0trN9lzbzDOkYDVOQN+f5DGWn3olR70brcsWJBXRM+owqO
 9Rfzdkisvx3c9g+SzJix59xn4VI4ZhG01U3WWcgRHV/l8xF8KuMeKAQUqpvv9Z+wPsP4
 YqVjZPcsQkklEYK5gRrEPopevTGTiIKtARFyOW+y9Nzwj1YpLFIx99wzqUvTd6y3j+HJ
 osjgcH7/+drk+VpbphES6F+o6jGTWtaIjFgbYWzkcu1Bc2y4lQR6RANPgO8OmcztaTqK
 dTGg==
X-Forwarded-Encrypted: i=1;
 AFNElJ+NRzJ3OH8ml/dPeUoM7n4Vp5d1jLM1mOkCe87OMGgPb1HdYxoB4ayiDkfE5fOe8TTE7em+cKjyO+8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwrbBaXHZQpxWiFHEwMF6UYZbMHwhkqp5JEJ/9pIoUCwOxn0CCT
 DTlOCguKihaKcP+uhpBHneRXCkFNSULcUeisuziVGjkZPG3jWfwFY3yz4f0XENKe4PbBlwA89at
 gFhK3nflTbgYwMZo0q6FmPWrS5/wK/UtIKub/7PxuzPifV4AVh5IgGUo1IICiEBgFapoF0koBFH
 LSww==
X-Gm-Gg: Acq92OHXEN2jvp+1jvINFtvU3vcQM86yQeyEa9LTLZtjrwj/8P0UYbWaUD7z+cpSuVn
 VwncTPUdmWiYTHGH+1LTiX4QSy7QmLIzB0X4564O3Qc9jl6fhyQV+1SCsZjckjl64+r3TH41Imj
 e8PenFDb2H+OfHddt2p80yXTcHx2U+g/tMsM5S5Ixq2ZaSb1IK4V/aORZQnnw6VSD2aToAifYer
 N0//xZkvB2jk6t6QUqXxSkii/0gHz29szdUGIxeG4bPTH1mTLK+/f/gNpHJ66TAjZ8INj8+OQiw
 f7tsjJ3hZ91xX7dHVqs6sjp4eK57TxzAcN96Dsvr8oPlyVi1VaVAxECI7MfAmAli1xkyz17MIYJ
 5EtgmFTsWTgpaTHd+j5MdOWLyrjbpi1o2OGz7YATjGO/8AimEUyxaJA2j51ANemxmz5TQFaWTUD
 7FDQIFQmgS4oqUiy0=
X-Received: by 2002:a05:600c:1c06:b0:490:a298:3859 with SMTP id
 5b1f17b1804b1-490a29838b6mr211911525e9.24.1780308962206; 
 Mon, 01 Jun 2026 03:16:02 -0700 (PDT)
X-Received: by 2002:a05:600c:1c06:b0:490:a298:3859 with SMTP id
 5b1f17b1804b1-490a29838b6mr211910935e9.24.1780308961705; 
 Mon, 01 Jun 2026 03:16:01 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-45ef32fabcasm23621879f8f.0.2026.06.01.03.16.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2026 03:16:01 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, airlied@redhat.com, airlied@gmail.com,
 simona@ffwll.ch, admin@kodeit.net, gargaditya08@proton.me,
 paul@crapouillou.net, jani.nikula@linux.intel.com, mhklinux@outlook.com,
 zack.rusin@broadcom.com, bcm-kernel-feedback-list@broadcom.com
Cc: dri-devel@lists.freedesktop.org, linux-hyperv@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-mips@vger.kernel.org, virtualization@lists.linux.dev, Thomas
 Zimmermann <tzimmermann@suse.de>, stable@vger.kernel.org
Subject: Re: [PATCH v4 01/10] drm/damage-helper: Do not alter damage clips
 on modeset, but ignore them
In-Reply-To: <20260530185716.65688-2-tzimmermann@suse.de>
References: <20260530185716.65688-1-tzimmermann@suse.de>
 <20260530185716.65688-2-tzimmermann@suse.de>
Date: Mon, 01 Jun 2026 12:16:00 +0200
Message-ID: <87y0gylg67.fsf@ocarina.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: eQVGdfH_OyP5GIHb3G4WCbOWz3hdhS0vI1O0fntbgas_1780308962
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
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tzimmermann@suse.de,m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:airlied@redhat.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:admin@kodeit.net,m:gargaditya08@proton.me,m:paul@crapouillou.net,m:jani.nikula@linux.intel.com,m:mhklinux@outlook.com,m:zack.rusin@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:dri-devel@lists.freedesktop.org,m:linux-hyperv@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-mips@vger.kernel.org,m:virtualization@lists.linux.dev,m:stable@vger.kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,ocarina.mail-host-address-is-not-set:mid]
X-Rspamd-Queue-Id: 8FC5761D2C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thomas Zimmermann <tzimmermann@suse.de> writes:

Hello Thomas,

> User space supplies rectangles for damage clipping in a plane property.
> For full mode sets, drivers still require a full plane update. In this
> case, leave the information as-is and set the ignore_damage_clips flag
> instead. The damage iterator will later ignore any damage information.
>
> Also fixes a bug where ignore_damage_clips was not cleared across plane-
> state duplications.
>
> Leaving the damage information as-is might be helpful to drivers that
> benefit from this information even on full modesets (e.g., for cache
> management). It will also help with consolidating the damage-handling
> logic.
>
> Also add a new unit test that evaluates the ignore_damage_clips flag. It
> sets two damage clips plus the flag and tests if the reported damage
> covers the entire framebuffer.
>
> v4:
> - slightly reword the commit description
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Fixes: 35ed38d58257 ("drm: Allow drivers to indicate the damage helpers to ignore damage clips")
> Acked-by: Zack Rusin <zack.rusin@broadcom.com>
> Cc: dri-devel@lists.freedesktop.org
> Cc: <stable@vger.kernel.org> # v6.10+
> ---
>  drivers/gpu/drm/drm_atomic_state_helper.c     |  1 +
>  drivers/gpu/drm/drm_damage_helper.c           |  6 ++--
>  .../gpu/drm/tests/drm_damage_helper_test.c    | 28 +++++++++++++++++++
>  3 files changed, 31 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
> index cc70508d4fdb..84d5231ccac1 100644
> --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> @@ -359,6 +359,7 @@ void __drm_atomic_helper_plane_duplicate_state(struct drm_plane *plane,
>  	state->fence = NULL;
>  	state->commit = NULL;
>  	state->fb_damage_clips = NULL;
> +	state->ignore_damage_clips = false;
>  	state->color_mgmt_changed = false;
>  }

I would split this as a separate patch since is the bug you are fixing for
commit 35ed38d58257 ("drm: Allow drivers to indicate the damage helpers to
ignore damage clips").

>  EXPORT_SYMBOL(__drm_atomic_helper_plane_duplicate_state);
> diff --git a/drivers/gpu/drm/drm_damage_helper.c b/drivers/gpu/drm/drm_damage_helper.c
> index 74a7f4252ecf..945fac8dc27b 100644
> --- a/drivers/gpu/drm/drm_damage_helper.c
> +++ b/drivers/gpu/drm/drm_damage_helper.c
> @@ -78,10 +78,8 @@ void drm_atomic_helper_check_plane_damage(struct drm_atomic_commit *state,
>  		if (WARN_ON(!crtc_state))
>  			return;
>  
> -		if (drm_atomic_crtc_needs_modeset(crtc_state)) {
> -			drm_property_blob_put(plane_state->fb_damage_clips);
> -			plane_state->fb_damage_clips = NULL;
> -		}
> +		if (drm_atomic_crtc_needs_modeset(crtc_state))
> +			plane_state->ignore_damage_clips = true;
>  	}
>  }

This makes sense to me as well and I agree that re-using the flag for this
is better than making plane_state->fb_damage_clips == NULL the condition.

As mentioned though, I would make it a separate patch. Both changes look
good to me:

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

