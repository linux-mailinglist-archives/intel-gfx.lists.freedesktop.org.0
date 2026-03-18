Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMyRHNTSummfcAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 17:29:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F6C2BF4C2
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 17:29:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1634310E460;
	Wed, 18 Mar 2026 16:29:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="DgT2k0w4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58FF910E460
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 16:29:05 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 97A50600AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 16:29:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AF9BC2BCB2
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 16:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1773851344;
 bh=PJ8mloUGDA8ehxs/h4FzGNYzy8GviZKual04ClMGe4Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DgT2k0w44MSp7UcVOrGuwuhsFQHI+gCGXnvQPieMCYBeU0YJRpRR+UqIOGFEBLvsc
 Cruk707J8mgIe0etqcvafy6FyVVTSp+BnlwypK93FsXzSaV8n+Motv35aR17Tt4+GO
 hEG6Znfa+B5wifyHOFJVf6F8gJqwts9YaxEcNMtINR9KcTsxj0MaZnpPlUFR3/v3PW
 UVPdXrdKcQxZ71gYrchrhatXNrKJqqjFI7CKwZ3F8+Vl9E3S/1eVXGoIKyr3U5okLC
 ZQAItxssWEVHMGDXsOHprvrQ/4OOlRNDIoYdQPg4EA26vG8V9cwhk5ugKligLi8VxO
 KNX/RHZSqlpcw==
Received: by mail-ed1-f42.google.com with SMTP id
 4fb4d7f45d1cf-666ee394529so139091a12.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 09:29:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCUGCt98+Kgr4S9dPO84beAJklkPbS/YG4fR2forYx6maNYWTbAUJZp4NbFcyB9Q5CtEqUlKAXjlUd4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxvqK9Yr6uidqUGexX9uWvvC2IpjAi3+mDHv03ae9fklw+819zm
 lW40fplsNpcdrtsB8wReI8q3jm55WL9a8BHTQQtatrbNo9HOLJVAZ1xL4+vbSaM5RXYqhb37hiq
 TWjsK0I9tte4UBYKTLs+mi6f58MRNUw==
X-Received: by 2002:a05:6402:5203:b0:65b:a2b5:5320 with SMTP id
 4fb4d7f45d1cf-667b2c0bf49mr2499956a12.26.1773851342697; Wed, 18 Mar 2026
 09:29:02 -0700 (PDT)
MIME-Version: 1.0
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-62-jim.cromie@gmail.com>
In-Reply-To: <20260313132103.2529746-62-jim.cromie@gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 18 Mar 2026 11:28:51 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+n2rWsRA-fdB+csE9+A_tCL5fjSdGWxA+1P6Sbafs7Ag@mail.gmail.com>
X-Gm-Features: AaiRm50ju3fsACxEcH_HswXEtjwvyHmrjX0DVJy6kYjxOD6TIzPhRqn10EQHqBA
Message-ID: <CAL_Jsq+n2rWsRA-fdB+csE9+A_tCL5fjSdGWxA+1P6Sbafs7Ag@mail.gmail.com>
Subject: Re: [PATCH v11 61/65] accel/ethosu: enable drm.debug control
To: Jim Cromie <jim.cromie@gmail.com>
Cc: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com, 
 gregkh@linuxfoundation.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>, 
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, mripard@kernel.org, tzimmermann@suse.de, 
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com, 
 ville.syrjala@linux.intel.com, christian.koenig@amd.com, 
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com, 
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com, 
 ukaszb@chromium.org, intel-gfx@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:jim.cromie@gmail.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,tomeuvizoso.net,kernel.org,lists.freedesktop.org,vger.kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,suse.com,chromium.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 41F6C2BF4C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 8:25=E2=80=AFAM Jim Cromie <jim.cromie@gmail.com> w=
rote:
>
> ethosu.ko has several drm*dbg() calls, it must call DRM_CLASSMAP_USE
> to tell dynamic-debug what classmap enables them.
> Also include drm/drm_print.h explicitly.
>
> Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
> ---
>  drivers/accel/ethosu/ethosu_drv.c | 3 +++
>  1 file changed, 3 insertions(+)

Acked-by: Rob Herring (Arm) <robh@kernel.org>
