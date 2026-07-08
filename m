Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XFBsE5PHTmqZTwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 23:56:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A03C972AB1B
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 23:56:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=JOoddEpW;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA8A10F2D4;
	Wed,  8 Jul 2026 21:56:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C530A10F2D4
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2026 21:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1783547789;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=btjBlfn1gEh32xkLC16toOwaofpK3E2AbdoJxAP/F/4=;
 b=JOoddEpW9Tb0/6eKbkj2lDDfo+YHD8u0RR9zx65OqXXdUtL4ETe5C5KMzULjE5CGGiuro+
 9/bS9aAvA5n3FQV2HfqKpg9pAYTdm+GPH+Junv03FCBEEqc3p82LNn98OEM2+kh4VFrUVJ
 NLHAWv9zXT+STJw9PWvFYGlUQY2hlU8=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-528-M7z4DZqdOt6_sRWrweZrdg-1; Wed, 08 Jul 2026 17:56:28 -0400
X-MC-Unique: M7z4DZqdOt6_sRWrweZrdg-1
X-Mimecast-MFC-AGG-ID: M7z4DZqdOt6_sRWrweZrdg_1783547788
Received: by mail-qk1-f199.google.com with SMTP id
 af79cd13be357-92e695a3b28so38225685a.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2026 14:56:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783547788; x=1784152588;
 h=mime-version:user-agent:content-transfer-encoding:content-type
 :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
 :content-type;
 bh=btjBlfn1gEh32xkLC16toOwaofpK3E2AbdoJxAP/F/4=;
 b=FgHdmWlaGUboqyxs/RQ52U3ACy2TfHpjtYndtDp+ePx17yihGaDVAqhHs06Z6w7BJ/
 +KJu+BYOJMzmNZElrL+K/2aAVALz9QdJk4tf8J1VXLH6PIJIZNi6MtH1XGKJv5W28+vl
 i0pQa9AX0UZGGuDFDLsifauVsCAUcFeCdoLG4JbT02wFmx1F8X0wSDFGYljhT6NE2vw0
 HAHBjNAVx18S0HGWhO9LfyS8Xp6cHm4m3e0/T1TNo9VAwi9dX/pWyTFgjcy7AmjZj9l8
 UxA+r5uxJxkJ4oiIxaIFAj9pX5vq4LYWPP+AMDyGH8I46mfqdCSpQGgHOX+vALCNWsMB
 GP1Q==
X-Forwarded-Encrypted: i=1;
 AHgh+RqGnl9DakhscpBhS7qv0b4Cs2zyCPlEO6bI6gRKOT3+esvqOLaQx12oiPnvGV2t2znJfs9G+fsibq4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwaheUpInf7nGyNeiN7EvunhY+OOQP8dXnVT/UgyGY2KjiHpoel
 Wy+Tg+bmdqLiKapqu9TIPE+hwmG1K4Y58kiPYZIh5wucbYUdQm6iacww7CR+qaCV2fSe9tJjdKV
 KUHV+qkLjqtxWh0R5nvPRiCSbxO4CSNsUDsNOL7L+gQJ/QK+3wBultRXrx6uBE4kv+zMnCA==
X-Gm-Gg: AfdE7cmAwiKRv0qjRHBnE6+97yeM65tFjUMibKnOcQSf7kHvZxGh+fRjVSM41Ec7l+o
 4POQ7cl7cXJeTYypeOomgk8H0OS1utKF1wmzMzYy2g/ybU9hkLZhyI9EmDTMJhylGzpDoFCZH0V
 KvepcIBN0cG0tgCDNFbsxuiE605R0s7HCCZr3yfT8zp/qH/snZYP0kR3943bbMT2FuVy99rpXHj
 HrbDUFqZXeisBv6YAGJnwx99w7AAkA9vHMacHQAyUmbUM0w83uR3sCSjGzzdHmR3PWC0IHe/E3U
 tTNb/qV1uOJxpyP8bCkC/Iu08qD7J2IhbAcuDQ3eXhBjm1c8uIDFhWhnWR7qbyv98zA+lfnbUCI
 6/afAOm0=
X-Received: by 2002:a05:620a:444a:b0:911:e11e:dc0d with SMTP id
 af79cd13be357-92edac0d694mr13100185a.24.1783547788070; 
 Wed, 08 Jul 2026 14:56:28 -0700 (PDT)
X-Received: by 2002:a05:620a:444a:b0:911:e11e:dc0d with SMTP id
 af79cd13be357-92edac0d694mr13096985a.24.1783547787628; 
 Wed, 08 Jul 2026 14:56:27 -0700 (PDT)
Received: from [192.168.8.4] ([100.0.180.93]) by smtp.gmail.com with ESMTPSA id
 af79cd13be357-92e90ca90a5sm1483479985a.32.2026.07.08.14.56.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jul 2026 14:56:26 -0700 (PDT)
Message-ID: <b6b58477af57eb25e28eefb1a979a65aa250dc45.camel@redhat.com>
Subject: Re: [PATCH 00/10] vga_switcheroo, drm: Push fbcon handling into DRM
 clients
From: lyude@redhat.com
To: Thomas Zimmermann <tzimmermann@suse.de>, lukas@wunner.de, 
 jfalempe@redhat.com, alexander.deucher@amd.com, christian.koenig@amd.com, 
 airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, 	rodrigo.vivi@intel.com,
 tursulin@ursulin.net, dakr@kernel.org, deller@gmx.de
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, nouveau@lists.freedesktop.org, 
 linux-fbdev@vger.kernel.org, sashiko-reviews@lists.linux.dev
Date: Wed, 08 Jul 2026 17:56:25 -0400
In-Reply-To: <20260707135724.247562-1-tzimmermann@suse.de>
References: <20260707135724.247562-1-tzimmermann@suse.de>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: q47DbW8U3j0Xy45kI8rf13lHEXJcIJgbfDq8nHQMud0_1783547788
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tzimmermann@suse.de,m:lukas@wunner.de,m:jfalempe@redhat.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:dakr@kernel.org,m:deller@gmx.de,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:nouveau@lists.freedesktop.org,m:linux-fbdev@vger.kernel.org,m:sashiko-reviews@lists.linux.dev,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[suse.de,wunner.de,redhat.com,amd.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,intel.com,ursulin.net,gmx.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER(0.00)[lyude@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A03C972AB1B

For both nouveau patches:

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Tue, 2026-07-07 at 15:38 +0200, Thomas Zimmermann wrote:
> Vga_switcheroo currently invokes fb_switch_outputs() to inform fbcon
> about switching of the physical outputs among framebuffer devices.
> But
> new DRM clients to not use fbdev/fbcon and might require their own
> vga_switcheroo support. Let's strictly separate them from each other.
>=20
> Remove fbdev/fbcon from vga_switcheroo. Introduce a pre_switch
> callback
> for vga_switcheroo clients to do the fbcon update. Allows for
> removing
> all direct interactions between vga_switcheroo and fbdev/fbcon.
>=20
> Also replace the existing reprobe hook with post_switch for symetry.
>=20
> At the same time, push the fbcon update into DRM's client for fbdev
> emulation. Do this with the new DRM client callback acquire_outputs,
> so that other clients can have their own handling of vga_switcheroo.
>=20
> There are only four drivers that support vga_switcheroo: amdgpu,
> radeon, i915 and nouveau. Update each of them with the new callbacks.
> When vga_switcheroo now invokes pre_switch, each DRM driver forwards
> to aquire_outputs and lets the DRM clients handle the new outputs.
>=20
> Tested with radeon on a notebook with Radeon HD 4225 and HD 5430.
>=20
> Thomas Zimmermann (10):
> =C2=A0 drm/edid: Include <linux/fb.h>
> =C2=A0 drm/client: Add acquire_outputs callback; implement for fbdev
> =C2=A0=C2=A0=C2=A0 emulation
> =C2=A0 vga_switcheroo: Add pre_switch callback to client ops
> =C2=A0 vga_switcheroo: Add post_switch callback to client ops
> =C2=A0 drm/amdgpu: Implement struct vga_switcheroo_client_ops.pre_switch
> =C2=A0 drm/i915: Implement vga_switcheroo_client_ops.pre_switch
> =C2=A0 drm/nouveau: Implement vga_switcheroo_client_ops.pre_switch
> =C2=A0 drm/nouveau: Implement vga_switcheroo_client_ops.post_switch
> =C2=A0 drm/radeon: Implement struct vga_switcheroo_client_ops.pre_switch
> =C2=A0 vga-switcheroo: Remove unused interfaces
>=20
> =C2=A0drivers/gpu/drm/amd/amdgpu/amdgpu_device.c |=C2=A0 9 ++++-
> =C2=A0drivers/gpu/drm/clients/drm_fbdev_client.c | 23 ++++++++----
> =C2=A0drivers/gpu/drm/drm_client_event.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 18 ++++++++++
> =C2=A0drivers/gpu/drm/drm_edid.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
> =C2=A0drivers/gpu/drm/i915/i915_switcheroo.c=C2=A0=C2=A0=C2=A0=C2=A0 | 11=
 +++++-
> =C2=A0drivers/gpu/drm/nouveau/nouveau_vga.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 | 28 +++++++++------
> =C2=A0drivers/gpu/drm/radeon/radeon_device.c=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=
=A0 9 ++++-
> =C2=A0drivers/gpu/vga/vga_switcheroo.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 41 +++++---------------
> --
> =C2=A0drivers/video/fbdev/core/fbcon.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 8 -----
> =C2=A0include/drm/drm_client.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 14 +++=
+++++
> =C2=A0include/drm/drm_client_event.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 3 ++
> =C2=A0include/linux/vga_switcheroo.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 30 +++++++++-------
> =C2=A012 files changed, 122 insertions(+), 73 deletions(-)
>=20
>=20
> base-commit: cd8abe2554ec7eba16c1d48ab508732bf93534eb

