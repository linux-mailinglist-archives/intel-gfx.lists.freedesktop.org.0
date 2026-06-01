Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILE4KKleHWoxZwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:27:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F54B61D5BF
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 12:27:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B60113168;
	Mon,  1 Jun 2026 10:27:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="bkvFyqP6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70B7311316A
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2026 10:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1780309669;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=hD1h4dJE66yskCwSbjuaF026xxijLvV5fH5oqPl0EUY=;
 b=bkvFyqP64A7n9sXJfArZ7i8OGrLfKXxra9KhXKMyfpmWJ7xxVn5sTqFRrpye7PI9IeKvpm
 0VmnIhtndI/P35aPmJXQMKCohP0M1fdwhHP3TZA015VWaVMHy1JUAM9ssoWIbhZlZyPuVd
 DQ8lw9fAaga3E6dgu1bey4L7XuzyI2E=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-359-oyHoK7H8PEafu4n88GyD3g-1; Mon, 01 Jun 2026 06:27:48 -0400
X-MC-Unique: oyHoK7H8PEafu4n88GyD3g-1
X-Mimecast-MFC-AGG-ID: oyHoK7H8PEafu4n88GyD3g_1780309667
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-45ef0af9517so2560026f8f.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Jun 2026 03:27:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780309667; x=1780914467;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=hD1h4dJE66yskCwSbjuaF026xxijLvV5fH5oqPl0EUY=;
 b=UF//K9SE36icJDOb4BDx9E6bBzqh5Y0qrIwb4PlMV3my4XewUtoQflmgPNXFImVjSv
 4kXWKlIyC1CMsu1hN8f645HNcqdQkkAYKGq/BR5s7thGE94I6T0blwSJi3jrAN37nQvt
 QnYOKB8QblSwMOLAoZ5DUJbRXcIxlhS/B7rs8Q6LnVQ1tAkmBA6sS/c7b63huJZfH2Kv
 B2ZMV5mYWgUcJmeL13LlqK/0mK9SswoKoIlIf1YN/iPYpSOhsyGl5hy3ILm+8YQtbpnD
 wgIyPeyzk0vSSsL8fO+1jYpCU/+iTgiXRWyDC4Oa4TlwlB5ZLiOYoKJ37x3jLFy74Txg
 bBZw==
X-Forwarded-Encrypted: i=1;
 AFNElJ8P6i5joFXNRACR4kze73+NhaIpejEOw/n4lCWKf/PfWmakjWJsmH46LNnIVyO0mX2vLlH34quUDlw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxkt2zizR/C6ac6HDfVy3agDDqyuev5EAlCnUFRry0DQ4pZexV6
 DcrNij7avQF2Obm6FFAfMG/hlV672X51yM0GIZaW7hwOmpxi0e+gLF+qW1Ds2+PvzkYdCxgb2XZ
 eD8VX20vTw3kke6eHueSTVG8cElQyvakyO0AQUwhgk0Cxovg2U/uGjasFEktLwJRvw4+Ulg==
X-Gm-Gg: Acq92OElaQCP8wb5s0cXS2n6jHwyzJJ2Z+tGmZK1KEnCIa2mpxaEqEhljDxVHKjeZJj
 /qznvxgHaKOuOxjfJV98etALIGLDQUSTray3VktGZoq9ksnLRPSB5+X4B2PFHRB4ZJpJkfB+L/Q
 D1XuYYUXZx6xC/4FvMZmTY3+UGJ+asnKk8aIj3GOUrXy1dYbLSzEGSLconovR1ZlGijQ1i3CCAb
 cvYfCIlSToMgKhQzukflt3J/UBmAeHIFInVYgwp5NiIEfMQ7WbemvflLByUBIAQIQFtDqEda7tK
 JGmqzwNQq8+2l36MdCwhnNbNagZIfWHBHNYrlmzG/U889D3N3AvS9b4prJOulrXaoltzS5w4YV/
 sXn3SfIlTOfsGLykv0uw7mLr1IpkSPNi4gNkipWbohCOVzhAEGAbqcE88Z09F1zL01g2xZCgQXa
 zUmaW5RXue1i4faEY=
X-Received: by 2002:a05:600c:a111:b0:490:469c:556b with SMTP id
 5b1f17b1804b1-490a2933355mr153783215e9.12.1780309666749; 
 Mon, 01 Jun 2026 03:27:46 -0700 (PDT)
X-Received: by 2002:a05:600c:a111:b0:490:469c:556b with SMTP id
 5b1f17b1804b1-490a2933355mr153782735e9.12.1780309666314; 
 Mon, 01 Jun 2026 03:27:46 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-45ef32fabcasm23690022f8f.0.2026.06.01.03.27.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2026 03:27:45 -0700 (PDT)
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
Subject: Re: [PATCH v4 06/10] drm/damage-helper: Test src coord in
 drm_atomic_helper_check_plane_damage()
In-Reply-To: <20260530185716.65688-7-tzimmermann@suse.de>
References: <20260530185716.65688-1-tzimmermann@suse.de>
 <20260530185716.65688-7-tzimmermann@suse.de>
Date: Mon, 01 Jun 2026 12:27:44 +0200
Message-ID: <87jysilfmn.fsf@ocarina.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: kVTjxmdnNRgRJac1z6Ve-LUbQegOtF93CqU9V7WNWco_1780309667
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ocarina.mail-host-address-is-not-set:mid,suse.de:email,broadcom.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 0F54B61D5BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Planes require a full update if the source coordinates change across
> atomic commits. Evaluate this during the atomic-check and set the flag
> ignore_damage_clips in the plane state, if so. Remove the check from
> drm_atomic_helper_damage_iter_init().
>
> This will help with removing the old state from the atomic-commit phase
> and simplify atomic_update helpers a bit.
>
> Several unit tests check against the change of the src coordinate. Drop
> them as they do no longer serve a purpose. If the src coordinate changes
> across commits, atomic helpers will set the plane state's
> ignore_damage_clips flag, for which a separate unit test exists.
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

