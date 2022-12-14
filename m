Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C4D64D1E8
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 22:42:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00CAE10E07F;
	Wed, 14 Dec 2022 21:41:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CC5110E07F
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 21:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671054113;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fOVC9DNP6YGan+cRfxOLEPJLfZEo+HEg+2n4tX+0Qvw=;
 b=ijP/L3oFZrlavcJ4A7MUZSkd//4nF0lnKyNRiCV7G2LOyGy7ibz8Ywhlf5idcFh83QalTI
 YdCC6cNwVsuuw0eqm2Ha3IFx7oc99g4UA4a3D41Q+aqw8KBnV6kmafcj3oaPTQHg04oBr7
 ZsgRRkzk2fGjvWxZAHmDWC9gFjzhVT4=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-283-980fSOEKNFKJPedyBhn35Q-1; Wed, 14 Dec 2022 16:41:44 -0500
X-MC-Unique: 980fSOEKNFKJPedyBhn35Q-1
Received: by mail-qk1-f200.google.com with SMTP id
 v7-20020a05620a0f0700b006faffce43b2so4177483qkl.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 13:41:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cdHdAoArTyqSXyDa1PEkCBag/sq888ZHYvAImxogP+M=;
 b=ERq4IPlybupeuPOVOQbgxmTr++j6WjsKcdEP9dX5OthGRDhQz3UW48HtTC06QYaF+j
 RF/eysLBwrN2krEV9y1Ox8F0NtIRF1b5RVUaZTAdi2m0t7An/zNk9KIe/NNN2dJDAqe3
 ctpe7uD8+RWQklnwQ2NOEYMb+LhUzql/Nvof7oRN9F74qixHzSU90BeUe+vzoYttXArD
 z+LqZL4qN2FY8dvm44q1ZN/tc3RG3qIiCA9hBLvuvKsULi72NID6QjKbMDqtxqeKU0iK
 kMWGyHi+M5Q/IHFSYrljtwnMQ0z/R5/5WyzF4tRU+/nlQVBLUpPxSCZRMjh8DlbQkFOa
 UyWQ==
X-Gm-Message-State: ANoB5pnKQoEYloRpkd8fkJ5rBRTDIxHLbx2RFXLFOEmdhUkB4hgjo4bU
 l04rC7+fqlEqAScWqo8CmA4Zxm7El8kKkWaG3fkZxS+NWCebfeWKgfZ+Bei47t2ipc4adPZ/biQ
 HnbhYSlqkhLW3Lhl1tg6RzNMy3Ctp
X-Received: by 2002:a0c:ee42:0:b0:4c6:9271:a037 with SMTP id
 m2-20020a0cee42000000b004c69271a037mr31285566qvs.30.1671054104459; 
 Wed, 14 Dec 2022 13:41:44 -0800 (PST)
X-Google-Smtp-Source: AA0mqf6/X83985KkuvLTvoDpqH8sCw8wzfXSCZscLl6n0ADVrXXhZF1/89D4asUprsIO5b6HJfQikQ==
X-Received: by 2002:a0c:ee42:0:b0:4c6:9271:a037 with SMTP id
 m2-20020a0cee42000000b004c69271a037mr31285543qvs.30.1671054104212; 
 Wed, 14 Dec 2022 13:41:44 -0800 (PST)
Received: from ?IPv6:2600:4040:5c6c:9200:beb9:10e2:8071:6929?
 ([2600:4040:5c6c:9200:beb9:10e2:8071:6929])
 by smtp.gmail.com with ESMTPSA id
 u15-20020a05620a454f00b006fa22f0494bsm10879054qkp.117.2022.12.14.13.41.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Dec 2022 13:41:43 -0800 (PST)
Message-ID: <1ade43347769118c82f1b68bd8b51172a1012a37.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 14 Dec 2022 16:41:42 -0500
In-Reply-To: <20221214184258.2869417-1-imre.deak@intel.com>
References: <20221214184258.2869417-1-imre.deak@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/display/dp_mst: Fix down/up message
 handling after sink disconnect
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
Cc: stable@vger.kernel.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For the whole series:

Reviewed-by: Lyude Paul <lyude@redhat.com>

Thanks!

On Wed, 2022-12-14 at 20:42 +0200, Imre Deak wrote:
> If the sink gets disconnected during receiving a multi-packet DP MST AUX
> down-reply/up-request sideband message, the state keeping track of which
> packets have been received already is not reset. This results in a failed
> sanity check for the subsequent message packet received after a sink is
> reconnected (due to the pending message not yet completed with an
> end-of-message-transfer packet), indicated by the
>=20
> "sideband msg set header failed"
>=20
> error.
>=20
> Fix the above by resetting the up/down message reception state after a
> disconnect event.
>=20
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: <stable@vger.kernel.org> # v3.17+
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_mst_topology.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/=
drm/display/drm_dp_mst_topology.c
> index 51a46689cda70..90819fff2c9ba 100644
> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> @@ -3641,6 +3641,9 @@ int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_m=
st_topology_mgr *mgr, bool ms
>  =09=09drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL, 0);
>  =09=09ret =3D 0;
>  =09=09mgr->payload_id_table_cleared =3D false;
> +
> +=09=09memset(&mgr->down_rep_recv, 0, sizeof(mgr->down_rep_recv));
> +=09=09memset(&mgr->up_req_recv, 0, sizeof(mgr->up_req_recv));
>  =09}
> =20
>  out_unlock:

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

