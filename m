Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LCLNLjY/GnxUQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 20:23:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 429DC4ED5DD
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 20:23:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2259110F23D;
	Thu,  7 May 2026 18:23:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="UPP1rQNi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 976DF10E59F
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2026 18:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1778178227;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hfC5TMU7qe7fFGe92a7DePwBp+CqUtTa+5DFp/GTcN4=;
 b=UPP1rQNifNOIrYWsdVpl6ByR9kl/3rNA74w+mMvydscnzgBfbnhfNkltSo0uMGRviVHZJJ
 R34udb8gN4OxOOVRVCRG+a6RAIzC80SmBjvpltNqiQLZ74EE7GK6jm6+0KsshFNTDpzLkB
 fCVe68WebujdXsQoYqMaQle1fp7jAyM=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-647-jGi2p922P_iDThvTITBP-g-1; Thu, 07 May 2026 14:23:46 -0400
X-MC-Unique: jGi2p922P_iDThvTITBP-g-1
X-Mimecast-MFC-AGG-ID: jGi2p922P_iDThvTITBP-g_1778178226
Received: by mail-qt1-f197.google.com with SMTP id
 d75a77b69052e-50faf575af4so25741501cf.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 May 2026 11:23:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778178226; x=1778783026;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ftCUpj5ypvcw40llhDtRrKigurBiomW0ZRMdUhWHyXA=;
 b=cpq6+wLsbc3Ey0y/y1Df6y9EqxXdhkrFY9OM9rnYpCDxyAKjy3ukarU6LpCAO0C4Hf
 vpKXcC33rY5pxvYdO6xNWet9gQgDApmY1bn0u+RbTR5RUsrqFaxBSy34mDf5lhb+TlAu
 5VFbvSMqCqSwXGPjXc8EBS+155yY/8rTLMMLTVGHGUWq0cccIlZRMrq4tdCfQYFCrR2B
 Eoua1rbHx/bQDPW9XGKuPufb2Mo7CtyeS1hXmtpFT+1r0/QTwkoZjk09njvP/c6ruk1P
 1rm+Yq74oBK9dNaKDuTFPnCB6VgUq8yNDoZ/ScwDpZoGPEyDUaXiWYe6QxfpOBkaI2Cx
 3PuQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8CXx/PH7XUH2/0lUaeMbD+INLZkiygckGTLCimRjFFtrG2j9dIyQf8AdyjM5L7sjg5F1iiEnK/3XI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxscByYGcmcp7Yfela0a63tVr9+jfoxGnPPvvxwfA8P3peppQXg
 6pczQjhYdHpMmk6C4QE1tgPvy2ycqBPTtaT0CZMgivC+2LwQcBgBRPgNVeqiq1J5FSemznyA32s
 Fi9v27RhnKwRQg13sRyum3lPHKkBXapC+2CcC/cHdXX0O4pjy95xh3/x3Dfqa+b12uef/Bg==
X-Gm-Gg: AeBDiet6s0miTfzjMVxY1oog6pHo+O3O8KzW0nTkNCvRc+bJQcP4i2htOdSrS+q9SHR
 x+veuAaJzStZVS40Zy6hL2HXfKtOh4BN2wWrcx3LujiF5mxWs/JoODLyTsHEsyQ9gxIQU6Uxi3d
 4+mdyLrp9QBw6Mm20nbAwblaHH760eF5EiWjcTx7sfZ9ptcFIxrAifJGc0HW4ESR0+mUDdjF6Yq
 g1qjGtldtLa4X34Pe0iZ/Uw4WU8quUQSupX1lW9NOAVSiUCRtqHHBDwGWiMwmgNDQF2uyq8oox7
 TeMet6toWfQEtJhZrxI8RQmDyswITURHJhnXLjssWjKIzWI5d2LQvJYk+yzdho4KKJAhWhvzzKX
 VVS1JTDQTyrJobEexhg==
X-Received: by 2002:a05:622a:5c98:b0:50f:c109:b78 with SMTP id
 d75a77b69052e-514621cf190mr123147841cf.60.1778178225677; 
 Thu, 07 May 2026 11:23:45 -0700 (PDT)
X-Received: by 2002:a05:622a:5c98:b0:50f:c109:b78 with SMTP id
 d75a77b69052e-514621cf190mr123147321cf.60.1778178225080; 
 Thu, 07 May 2026 11:23:45 -0700 (PDT)
Received: from [192.168.8.4] ([100.0.180.93]) by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-5148522a5adsm4018391cf.14.2026.05.07.11.23.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2026 11:23:44 -0700 (PDT)
Message-ID: <4de3ead617a9f706d00e8540e6c6d65353799f4f.camel@redhat.com>
Subject: Re: [PATCH] drm/dp_mst: Handle torn-down topology gracefully in
 drm_dp_mst_topology_queue_probe()
From: lyude@redhat.com
To: Jonas Emilsson <jonas.emilsson@gmail.com>, dri-devel@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, stable@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org
Date: Thu, 07 May 2026 14:23:44 -0400
In-Reply-To: <20260503034533.1023686-1-jonas.emilsson@gmail.com>
References: <20260503034533.1023686-1-jonas.emilsson@gmail.com>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Jq48OEd6l3Hf5LlPHENpIsAb__MtBgSv3yZif0qlLJ0_1778178226
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
X-Rspamd-Queue-Id: 429DC4ED5DD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jonas.emilsson@gmail.com,m:dri-devel@lists.freedesktop.org,m:imre.deak@intel.com,m:stable@vger.kernel.org,m:jonasemilsson@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	FORGED_SENDER(0.00)[lyude@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,intel.com:email]
X-Rspamd-Action: no action

Reviewed-by: Lyude Paul <lyude@redhat.com>

Will push upstream in just a moment

On Sun, 2026-05-03 at 05:45 +0200, Jonas Emilsson wrote:
> A hotplug or link-loss event can tear down the MST topology
> (setting mgr->mst_state =3D false and mgr->mst_primary =3D NULL)
> concurrently
> with a caller invoking drm_dp_mst_topology_queue_probe(). Since the
> check
> is already performed under mgr->lock, the condition is not a
> programming
> error but a valid race -- the topology was valid when the caller
> decided
> to call this function, but was torn down before the lock was
> acquired.
>=20
> Replace the drm_WARN_ON() with a graceful early return. This
> eliminates
> spurious kernel warnings and the resulting compositor crashes
> observed
> when connecting/disconnecting DP MST monitors, while keeping the
> correct
> behavior of doing nothing when MST is not active. A drm_dbg_mst()
> trace
> is added so the skipped probe remains observable under MST debug
> logging.
>=20
> The existing WARN_ON(mgr->mst_primary) in
> drm_dp_mst_topology_mgr_set_mst()
> already catches the case where the topology is initialized twice, so
> no
> diagnostic coverage is lost.
>=20
> Fixes: dbaeef363ea5 ("drm/dp_mst: Add a helper to queue a topology
> probe")
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: stable@vger.kernel.org
> Cc: intel-gfx@lists.freedesktop.org
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Jonas Emilsson <jonas.emilsson@gmail.com>
> ---
> =C2=A0drivers/gpu/drm/display/drm_dp_mst_topology.c | 4 +++-
> =C2=A01 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> index 8757972e8..0cb341ce1 100644
> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> @@ -3738,8 +3738,10 @@ void drm_dp_mst_topology_queue_probe(struct
> drm_dp_mst_topology_mgr *mgr)
> =C2=A0{
> =C2=A0=09mutex_lock(&mgr->lock);
>=20
> -=09if (drm_WARN_ON(mgr->dev, !mgr->mst_state || !mgr-
> >mst_primary))
> +=09if (!mgr->mst_state || !mgr->mst_primary) {
> +=09=09drm_dbg_mst(mgr->dev, "queue_probe skipped: topology
> torn down\n");
> =C2=A0=09=09goto out_unlock;
> +=09}
>=20
> =C2=A0=09drm_dp_mst_topology_mgr_invalidate_mstb(mgr->mst_primary);

