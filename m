Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dhRzNS2VKmrqswMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 12:59:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 839B56711CE
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 12:59:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=L+0yuZyr;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=redhat.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2385C10EE7E;
	Thu, 11 Jun 2026 10:59:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C34F10EE7E
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2026 10:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1781175594;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OE5i5Cs1x/Y1/tYzMUIth7XXWL2BCwQTkDQ8GlOHrbw=;
 b=L+0yuZyr7x8SshBqqzFPQIjeZUbGtnnudPHnO6+Cw9czcE3qjW1nzDbEU1S1OZGH5GQL/7
 LIc9L6Pk3hOedEZRAU4dpCd3ir/D/Fcw6HoJXdgr36vLlMT9lcoQX6l5Cdig56eVJ3yzOr
 gyMspkTaQCwuBlkWI/N2HQGmEgDkAW4=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-678-pjheSqNHM7iMfmgB4Q63DA-1; Thu, 11 Jun 2026 06:59:48 -0400
X-MC-Unique: pjheSqNHM7iMfmgB4Q63DA-1
X-Mimecast-MFC-AGG-ID: pjheSqNHM7iMfmgB4Q63DA_1781175587
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-4601daf4c65so4750725f8f.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2026 03:59:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781175587; x=1781780387;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=OE5i5Cs1x/Y1/tYzMUIth7XXWL2BCwQTkDQ8GlOHrbw=;
 b=ZeaxmIuC08w7dLbst8f/32+n6nVH6UwEjDWDQiGtNeUy3Wi1w+4ui7f3iod1g+Hfes
 ALY2AWPoLTMLnzz+UoKyq+xN+BqRQNtKIOoF+YTEH4jXDf9Q5f8eKwrHM1WX0i5xi3mZ
 tk4BsBoTYdqoTdFC8/WIv0qKZCH7mzb1/QF/pifKBM/IqBQaJKzGM34ZqpRK8AovYfLR
 gLw5hC2V1UdagGAtaB0flNxRrHwdIsANSyG+6R2N5exzl+pJzNOXPhxmOX4cse/imi5p
 AlfxH4hmk1rbwWS6qXg8HORRCH5kS6gDEmKxuxDbL0U0cVQgr7CSlOS4gcHHlYMuw2LS
 u8UA==
X-Forwarded-Encrypted: i=1;
 AFNElJ9zG/1EDsauCO9TC12eHGsrc9UONMdxc+7taNR+lhivmoWgq6XFT7R+4Zsc5dD+S3djs3Ocvn3DMuQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwcwuJGPUue1AJW0PE/0GrcF+IGahwjpKFakz9Nt5cpiaopWEk+
 4lXu/vk4xlizB41RAMCiA4knUnJQUFFvSKfzneUgeTvztssot2Cq4QDhHHB8wWNOBL9PwRiA2+E
 veLKeRWgm/TXSbBH0L1pl1P1aCTHOVF+zIm0hv6B08h9MDU54K/zdF1HVnab6Yv38uwXZFA==
X-Gm-Gg: Acq92OHolPVeXOfrOSYJelOntXJAlnLEDqx5H+VlcREXAwMmxNTY5TziLXDLYN4xRfH
 1eCprbkChATZ4HlKnz9Fdpn2LYqLbrVcJtI/yQONJRMW26VjBQsOkMbyyldgLSr0g7MuYDHMH12
 d1qP1aXJXqowfO+Y+Di9yX+vBbDxmIQWxr6Y9FN9j3ep6y6PPgD/Jurw13X7y68KXGtIKQ/jRYg
 tAj/MLtHO8LaaySHrA6y7hQSyhIAMuEZtgNFEesFbdkwDcrm3HyfNnZ5dixbWk32xONBbxaIAKU
 r8+WK8QS0AquxLYv9sLmU3/hGblplMGWHR2K52I2cE9pHBz52eklwOEk2f493EkQPLRtPOlPnG1
 ZaNl/3lqsG1cZABlu7x43MhQwYkdlR9LD4GzVfYYwr4L8XvRigUMgIVp9jfuMzSYaRkg4zXQ4rA
 slV3Dnh38/cThW+gM=
X-Received: by 2002:a05:6000:710:b0:460:1c5b:f25f with SMTP id
 ffacd0b85a97d-460677b1af7mr3240539f8f.20.1781175587119; 
 Thu, 11 Jun 2026 03:59:47 -0700 (PDT)
X-Received: by 2002:a05:6000:710:b0:460:1c5b:f25f with SMTP id
 ffacd0b85a97d-460677b1af7mr3240484f8f.20.1781175586716; 
 Thu, 11 Jun 2026 03:59:46 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4601f2dcde3sm81947989f8f.1.2026.06.11.03.59.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2026 03:59:46 -0700 (PDT)
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
 amd-gfx@lists.freedesktop.org, Zack Rusin <zackr@vmware.com>,
 stable@vger.kernel.org
Subject: Re: [PATCH v5 01/15] drm/amd/display: Handle struct
 drm_plane_state.ignore_damage_clips
In-Reply-To: <45aec54a-ec80-48ed-9bcc-84e7bccc11eb@suse.de>
References: <20260610152505.260172-1-tzimmermann@suse.de>
 <20260610152505.260172-2-tzimmermann@suse.de>
 <87y0gl5qw8.fsf@ocarina.mail-host-address-is-not-set>
 <45aec54a-ec80-48ed-9bcc-84e7bccc11eb@suse.de>
Date: Thu, 11 Jun 2026 12:59:44 +0200
Message-ID: <87mrx15om7.fsf@ocarina.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: -eFe81XfLaYpCF8k-mbJSBEKBHWI4R1UveTxyvddysc_1781175587
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
	RCPT_COUNT_TWELVE(0.00)[32];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,suse.de:email,ocarina.mail-host-address-is-not-set:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 839B56711CE

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Hi Javier
>
> Am 11.06.26 um 12:10 schrieb Javier Martinez Canillas:
>> Thomas Zimmermann <tzimmermann@suse.de> writes:
>>
>> Hello Thomas,
>>
>>> The mode-setting pipeline can disabled damage clippings for a commit
>>> by setting ignore_damage_clips in struct drm_plane_state. The commit
>>> will then do a full display update.
>>>
>>> Test the flag in DCN code and do a full update in DCN code if it has
>>> been set.
>>>
>>> Commit 35ed38d58257 ("drm: Allow drivers to indicate the damage helpers
>>> to ignore damage clips") introduced ignore_damage_clips to selectively
>>> ignore damage clipping in certain framebuffer changes. This driver does
>>> not do that, but DRM's damage iterator will soon rely on the flag.
>>> Therefore supporting it here as well make sense for consistency.
>>>
>>> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
>>> Fixes: 35ed38d58257 ("drm: Allow drivers to indicate the damage helpers to ignore damage clips")
>> I don't think that a Fixes tag is correct here? Your patch series
>> is changing the 'struct drm_plane_state.ignore_damage_clips' and
>> the changes make sense, but definitely isn't a fix in my opinion.
>
> But shouldn't we have added this test in amdgpu and the other drivers as 
> part of commit 35ed38d58257 ? Sure, these drivers don't use
> ignore_damage_clips, but it's still an inconsistency wrt damage

I don't think so, since the original scope of ignore_damage_clips was for DRM
driver of virtual devices (namely virtio-gpu and vmwgfx). These do per-buffer
uploads instead of per-plane uploads, and so there was a need to force a full
plane update if the framebuffer attached to the plane was changed.

Your series are now extending the scope of ignore_damage_clips to be used by
core helpers and force a full plane update when doing a modeset. This makes
sense to me but it wasn't the original intention of the propery and that is
why I don't think that should be considered a fix.

The only patch that IMO is really a fix for commit 35ed38d58257 is patch #6.
Because is true that the plane state ignore_damage_clips was carried over
when the state was duplicated.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

