Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBKkIqytvWnIAQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 21:27:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB29D2E0CDD
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 21:27:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A2710EB0C;
	Fri, 20 Mar 2026 20:27:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="RhHsNnN/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 832EB10EB10
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 20:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1774038439;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AJMXPSFWArYmrnP7zLSkM+CTFVv6oJClq2Ka1iADR9M=;
 b=RhHsNnN/i7WVOmW6KhKvohRwQtvEIeLF3rrePujJJC8AtmY7ey8sMvbaxAmX8pqqMPyLBl
 OzdOaW6fK9ZIRWO6a5Sd1Jn8cwHLlVhxD9Pu3/uwVB7AiK8lEjgp6QkYgbxp7g//zv9FpS
 nk6/UkE9WL09aj4FsqZAS7XuwXlP2Uw=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-371-lO949nzVPCilhu_ROs6IfQ-1; Fri, 20 Mar 2026 16:27:17 -0400
X-MC-Unique: lO949nzVPCilhu_ROs6IfQ-1
X-Mimecast-MFC-AGG-ID: lO949nzVPCilhu_ROs6IfQ_1774038437
Received: by mail-qv1-f71.google.com with SMTP id
 6a1803df08f44-89c4b118740so120053426d6.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 13:27:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774038437; x=1774643237;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MB0+rSNGBKBl0fATluwYhfYR/8s/ouHiFI/my1DN3XI=;
 b=SRL9dwAQB5KBhqEMefgirsPOq9nFRsystWt0F9ZvPQP89jSPssuCPFxcT4RP9/kD/2
 4DSD4nTYX35/nKK6gshUpuMEQUlMiyNBLVsyrlxBYf2a9sDmumw3XBiZhqfgH//jGYnS
 hpd+BbC9EitW6Ztwv41R+6wTo60CSTKe46ZnyelJ6WzliI6THBG7kXdZMwT38N1nCPBO
 sqAZMdNXLt95A+H354VGyIUa1p5SsNR/tQwLZP6NNeekijEWtx9uDkgTS6bE26TtcrTI
 M1AQUm1etsemcRQ8fbqTAsBl4/XfYlwlSmTcVCU+ZeCcuHNaExhjCqzBYojRQdPsK2Xa
 XsAQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVzqmsqrd7RSPonnXZUu4AgYWKZtkbxmLblQhDl0OdkMPH0Hu/b3jgFNaaFVH5IZpchZd1DM514s7A=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxEur29pdaz9azHklyxB9aJZtgwA7xAVEUeaqJnNq+5w8/pFKWy
 ULB0FpiyJX5nc7ZeKIL9JORklbNg918H24YkhILtb5Ilh8siwO9MAcQBpfCs1RJyxbzo/rGXHfw
 4dFD+wzWVfiRU3hWaDn/l7Lgi45niMiCRRwO7xgmoVM+xGOgw0KHsvH3BmrU1WzQlJB3Uaw==
X-Gm-Gg: ATEYQzwdjufnd0lEk/xKING76NBHVVKA4IOtQFs3fATs4+ntiJEFicAx6QRiu1KQPOK
 HUI752kPF8QgJ0UdKyRbSqsYMd9hVaOl7Gz5fqha+H6avhlcAOKl8JQ1yqvxSZbK/PYEhj6wVDP
 GBtivsHYi6BjmGTXbzRLHByGn3qqQdRjbTdLNTstA/xuIJqR0iy66NQrCeN1PMXFTqCCTY1Hw39
 Mg3AKYu1b75UEKo1mnCyXE6dzydeheYQYT3PfEadMoY4FZQ4jlle1wKhRGru2MI0wMYb8bxg/Go
 iTnE82qT+hb5UfI8rmUFEGLI3Nruk6RQnUoftSATnhwOVgq+Jr5S8MMnve/MCCq0cbn+N/ubjhz
 NrgOeT9BWxdaGNQ5/eA==
X-Received: by 2002:ad4:5968:0:b0:89c:4ea7:a70f with SMTP id
 6a1803df08f44-89c859e8c82mr70322106d6.14.1774038437320; 
 Fri, 20 Mar 2026 13:27:17 -0700 (PDT)
X-Received: by 2002:ad4:5968:0:b0:89c:4ea7:a70f with SMTP id
 6a1803df08f44-89c859e8c82mr70321736d6.14.1774038436929; 
 Fri, 20 Mar 2026 13:27:16 -0700 (PDT)
Received: from [192.168.8.4] ([100.0.180.93]) by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-89c85361ac2sm27015786d6.41.2026.03.20.13.27.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2026 13:27:16 -0700 (PDT)
Message-ID: <5cbcc6ff5b5dd72e0c4737cdff8ef897fa10cb61.camel@redhat.com>
Subject: Re: [PATCH v11 43/65] drm-dyndbg: DRM_CLASSMAP_USE in nouveau
From: lyude@redhat.com
To: Jim Cromie <jim.cromie@gmail.com>, airlied@gmail.com, simona@ffwll.ch, 
 jbaron@akamai.com, gregkh@linuxfoundation.org, Danilo Krummrich
 <dakr@kernel.org>,  Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann	
 <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, 
 christian.koenig@amd.com, matthew.auld@intel.com, 
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com, 
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org, 
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Date: Fri, 20 Mar 2026 16:27:15 -0400
In-Reply-To: <20260313132103.2529746-44-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-44-jim.cromie@gmail.com>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6yu9gP20iArubnHpF7pJdk5kMkiOHiuNu_OV5hUQQBM_1774038437
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jim.cromie@gmail.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:dakr@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:dri-devel@lists.freedesktop.org,m:nouveau@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,kernel.org,linux.intel.com,suse.de,lists.freedesktop.org,vger.kernel.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[lyude@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: EB29D2E0CDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Fri, 2026-03-13 at 07:20 -0600, Jim Cromie wrote:
> Following the dyndbg-api-fix, replace DECLARE_DYNDBG_CLASSMAP with
> DRM_CLASSMAP_USE.=C2=A0 This refs the defined & exported classmap, rather
> than re-declaring it redundantly, and error-prone-ly.
>=20
> This resolves the appearance of "class:_UNKNOWN_" in the control file
> for the driver's drm_dbg()s.
>=20
> Fixes: f158936b60a7 ("drm: POC drm on dyndbg - use in core, 2
> helpers, 3 drivers.")
>=20
> Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
> ---
> =C2=A0drivers/gpu/drm/nouveau/nouveau_drm.c | 12 +-----------
> =C2=A01 file changed, 1 insertion(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/nouveau/nouveau_drm.c
> b/drivers/gpu/drm/nouveau/nouveau_drm.c
> index 5d8475e4895e..d205b58aff70 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_drm.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_drm.c
> @@ -74,17 +74,7 @@
> =C2=A0#include "nouveau_uvmm.h"
> =C2=A0#include "nouveau_sched.h"
> =C2=A0
> -DECLARE_DYNDBG_CLASSMAP(drm_debug_classes,
> DD_CLASS_TYPE_DISJOINT_BITS, 0,
> -=09=09=09"DRM_UT_CORE",
> -=09=09=09"DRM_UT_DRIVER",
> -=09=09=09"DRM_UT_KMS",
> -=09=09=09"DRM_UT_PRIME",
> -=09=09=09"DRM_UT_ATOMIC",
> -=09=09=09"DRM_UT_VBL",
> -=09=09=09"DRM_UT_STATE",
> -=09=09=09"DRM_UT_LEASE",
> -=09=09=09"DRM_UT_DP",
> -=09=09=09"DRM_UT_DRMRES");
> +DRM_CLASSMAP_USE(drm_debug_classes);
> =C2=A0
> =C2=A0MODULE_PARM_DESC(config, "option string to pass to driver core");
> =C2=A0static char *nouveau_config;

