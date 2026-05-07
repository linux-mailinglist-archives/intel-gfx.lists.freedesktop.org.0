Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDTKNOzd/GlFUwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 20:46:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EFB4ED93C
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 20:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E81F610E2B7;
	Thu,  7 May 2026 18:46:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="MQKigppL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C02610E2AB
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2026 18:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1778179558;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lqy2FCaWABbSZ5XwoLHNJ+cZVmf74lpr+4emSNEVXgA=;
 b=MQKigppLAqYUoLka4ABEOOHx3qi89llrNs9wXes2ll1JQHvgsQqPwOOE5O+IztcPj8X6mb
 678bTAbsUFAM0RixaRCn9uuB38KXsTN5pqU964Bj/Lg2hj7lASA8iStui9Q/vHjJUnkuER
 Aztm3tDenf/l/oqRZCn+httPFsJK2mY=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-274-BT1vG07MMl6kqOzXmROHeg-1; Thu, 07 May 2026 14:45:56 -0400
X-MC-Unique: BT1vG07MMl6kqOzXmROHeg-1
X-Mimecast-MFC-AGG-ID: BT1vG07MMl6kqOzXmROHeg_1778179556
Received: by mail-qv1-f72.google.com with SMTP id
 6a1803df08f44-8ba9baef44cso20741546d6.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 May 2026 11:45:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778179556; x=1778784356;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WgXIkCgB3aSRfVz0FcSmSasyEWuA9kchSMzu8PPJBaA=;
 b=AsmKdOhgXOXW6+HrC+h136G2Th7X3s3GjBz2RwjrwhlRfApk6nNHmLCvmX9kT8Jrrk
 WyVIk5uze+73OKChuN3/5ykyMfkjxTwKcoNQocvRzELog/BEpgH7IPQYUm1czWeGm6h6
 A0JACtWrVetWzQnhG2pVQ9PaVpi/tojqJKZ2QaYyYJhkIE8wwGCw0GSsCFm93gQBj8Ii
 Tc4Fxp1v45nUQzk2Fe2DHpp1UiAZjyCHusG7BuhQmfm83Tk02hjDcjI8LSsU3oJOxF3W
 IQB6yGQJ2ly88l+WQCZdvQx37XSF+IONyNRlqGSIupSFOVp+l1W/0wCx5NH4JsYiBE1P
 0pHw==
X-Forwarded-Encrypted: i=1;
 AFNElJ/+lmmq00ZNXPbhBvcu8nt0J71hixljXehrW2uTmzhDqI95kuvXsMJDKbkx1TfCY0MGtenuBnLEi4c=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzXlMArwPvuLhRyylwcbstfiOcpIf87QaWzWjWqDCwYIgxbZP/A
 LuFCB42K3bZcqUAJKkHwStjo0hp3UgIllJ8fRF8HchTi++/e1keUnUVbQ8vI789dX+HXie18A8T
 tMIVgS7Yk+hLKljXR+Tgu+YvzEqNAXjbdGkFdGRbe9VDBkP2tYM+9eplbU+14iAtqk1WOq48GBn
 ezhA==
X-Gm-Gg: AeBDiesqdn0Iesw2pDpfb5s52euv2SM1YcBNW42YkOK/1ICsM3fA+hpozayEv8Awwzi
 BfnH1fX+PBPDlyOasNl2s/Ng+OGftsQOBUDmlv5G0zUEiqzkGAqNLt8Cw3v4NWyr68guViLI7GD
 MOstyia50oBaN7LXOflHFraH1W5+ip5htU0UqwPSXMLdSWatoXMpyLrWEvaWrRrP2lLLVqIZNyN
 42Fbo52pLYcM4l5qwOttu4Dq7VqDXG9OT36y1cpQ5s54TyrmEqeswVFAnP8Fwe9GHZiL6MM7Qx5
 FDnld7sDeMmWDkbTWSLJ3BDTMWe2lO0r5bSbDKOp//BXYB7jaalBBj6hg4vNTywv+4+qpj9M7Nl
 ptqQAtMI8qs8x+hmhUw==
X-Received: by 2002:ad4:5ecb:0:b0:89c:4812:cc2 with SMTP id
 6a1803df08f44-8bc42c63a8amr140677956d6.15.1778179555938; 
 Thu, 07 May 2026 11:45:55 -0700 (PDT)
X-Received: by 2002:ad4:5ecb:0:b0:89c:4812:cc2 with SMTP id
 6a1803df08f44-8bc42c63a8amr140677476d6.15.1778179555448; 
 Thu, 07 May 2026 11:45:55 -0700 (PDT)
Received: from [192.168.8.4] ([100.0.180.93]) by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-8b538a293dbsm249581016d6.2.2026.05.07.11.45.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2026 11:45:54 -0700 (PDT)
Message-ID: <6b3516fe9db22f223f6e558b5a6ff31fbe6aa64d.camel@redhat.com>
Subject: Re: [PATCH] drm/dp_mst: Handle torn-down topology gracefully in
 drm_dp_mst_topology_queue_probe()
From: lyude@redhat.com
To: Jonas Emilsson <jonas.emilsson@gmail.com>, dri-devel@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, stable@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org
Date: Thu, 07 May 2026 14:45:54 -0400
In-Reply-To: <20260503034533.1023686-1-jonas.emilsson@gmail.com>
References: <20260503034533.1023686-1-jonas.emilsson@gmail.com>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 20Sy2rt1P4qQrIfUveDxG26Zj5NPFbo3roaaqqr1Q68_1778179556
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
X-Rspamd-Queue-Id: 85EFB4ED93C
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

Actually sorry - I need to take back the r-b, there's a couple of
issues in this patch that I didn't immediately notice because it had
trouble applying (though I don't have a clue why)

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

There is no such function named drm_dbg_mst, can you switch this to
drm_dbg_kms() like the rest of the file and make sure it builds before
sending another version?

> =C2=A0=09=09goto out_unlock;
> +=09}
>=20
> =C2=A0=09drm_dp_mst_topology_mgr_invalidate_mstb(mgr->mst_primary);

