Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0275683A44
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 00:14:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 392B010E04D;
	Tue, 31 Jan 2023 23:14:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 752BA10E04D
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 23:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1675206878;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zjes8mt+cA38QHo9OnFxpjtiCVQgvWd4AjwVweEsZfo=;
 b=hEnSQuIRR+C7GzsYL59F84eHutTDxWDeM1YTcRo3Ub1jYyt7/ijzW1TdlaYj70livlU1GU
 5WICwlH/q6Z0PTiRco2XacnfJc9GUCp8yTdIFYNNjWFZ4p056WY9RHJEW7gQ+AGDYj9+Wc
 5KThM/HTvTf42jS1AI8gPklJJEFisLM=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-672-LwS51RsyNO-ha6qrTUWh7Q-1; Tue, 31 Jan 2023 18:14:37 -0500
X-MC-Unique: LwS51RsyNO-ha6qrTUWh7Q-1
Received: by mail-qv1-f71.google.com with SMTP id
 gw11-20020a0562140f0b00b0053b81ec39dfso4932421qvb.14
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 15:14:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=FRtdjYIRmLspTw60fBmAPyuEzGmNE73BWrMAS8hfbw4=;
 b=ZQ9ONR+vVmAXIIvfXo8pO2BkNqxH3xGCCi6tZckl/YSLJ2xUB2bfQrt4Z8vB+9i4q3
 uG40a90e/HLl/RcgT9HqYAQC0snba9i43KW2wwpZQLetVJ6XfoyDHCQGuFzEI8MLbU6z
 3IBvELZPaMIupocFNt+zBa6JwpZ/kQxxIMn6Z4Ww54Irb4zW4vBH6kACZi9cSpMJwI8K
 CsO2jTw/XcDQFN45B7Y0vDNa8T8kJRKIERB7vgO7XUTROGeC1oC1Gsjm6Md4LmBjqUl+
 MZnIXa/zXr72+XEz/MWAaUKM+SPAxokMJY9L3IHbegcUr7MrABS71RUvkJFome0AhG6p
 ej9w==
X-Gm-Message-State: AO0yUKVEi+602qKFdgDqRCPE2vMV8iu9QoY8ktNG0FgSmUG8myuHBob0
 fZQXbbDQlFKkjA2NCeMjZNeErJ+kg7z1Z11fFrkAUa3ibu06h2VPUmK6A+O7c7LsykVtDSyV3fR
 GFWifsnBtHFy/LxUiyzrDK+x+2at2
X-Received: by 2002:a0c:fe8a:0:b0:537:8125:b533 with SMTP id
 d10-20020a0cfe8a000000b005378125b533mr1075819qvs.34.1675206876180; 
 Tue, 31 Jan 2023 15:14:36 -0800 (PST)
X-Google-Smtp-Source: AK7set812AVcYQItgDEOUUVmIwjOzqsTlUNL1toEziRpI8+xaK9MKG2VHimxDCuCyo2I7YbA6BYqWA==
X-Received: by 2002:a0c:fe8a:0:b0:537:8125:b533 with SMTP id
 d10-20020a0cfe8a000000b005378125b533mr1075801qvs.34.1675206875900; 
 Tue, 31 Jan 2023 15:14:35 -0800 (PST)
Received: from ?IPv6:2600:4040:5c68:6800::feb? ([2600:4040:5c68:6800::feb])
 by smtp.gmail.com with ESMTPSA id
 v1-20020ae9e301000000b007062139ecb3sm5331039qkf.95.2023.01.31.15.14.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Jan 2023 15:14:35 -0800 (PST)
Message-ID: <54d5d6edbcade9c7e518fd1ea8ab757772c2c200.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 18:14:34 -0500
In-Reply-To: <20230131150548.1614458-7-imre.deak@intel.com>
References: <20230131150548.1614458-1-imre.deak@intel.com>
 <20230131150548.1614458-7-imre.deak@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 06/17] drm/display/dp_mst: Sanitize
 payload iteration in drm_dp_mst_dump_topology()
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

On Tue, 2023-01-31 at 17:05 +0200, Imre Deak wrote:
> Simplify the loop iterating the payloads by using a helper to get a
> payload by its VCPI (keeping the list VCPI sorted). This also removes
> the assumption that the biggest VCPI matches the number of payloads
> (even though this holds now).
>=20
> Suggested-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_mst_topology.c | 45 ++++++++++++-------
>  1 file changed, 28 insertions(+), 17 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/=
drm/display/drm_dp_mst_topology.c
> index 8787df19f428b..0c04b96ae614c 100644
> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> @@ -4737,6 +4737,18 @@ static void fetch_monitor_name(struct drm_dp_mst_t=
opology_mgr *mgr,
>  =09kfree(mst_edid);
>  }
> =20
> +static struct drm_dp_mst_atomic_payload *
> +get_payload_by_vcpi(struct drm_dp_mst_topology_state *mst_state, int vcp=
i)
> +{
> +=09struct drm_dp_mst_atomic_payload *payload;
> +
> +=09list_for_each_entry(payload, &mst_state->payloads, next)
> +=09=09if (payload->vcpi =3D=3D vcpi)
> +=09=09=09return payload;
> +
> +=09return NULL;
> +}
> +
>  /**
>   * drm_dp_mst_dump_topology(): dump topology to seq file.
>   * @m: seq_file to dump output to
> @@ -4748,7 +4760,6 @@ void drm_dp_mst_dump_topology(struct seq_file *m,
>  =09=09=09      struct drm_dp_mst_topology_mgr *mgr)
>  {
>  =09struct drm_dp_mst_topology_state *state;
> -=09struct drm_dp_mst_atomic_payload *payload;
>  =09int i, ret;
> =20
>  =09mutex_lock(&mgr->lock);
> @@ -4768,24 +4779,24 @@ void drm_dp_mst_dump_topology(struct seq_file *m,
>  =09=09   state->payload_mask, mgr->max_payloads, state->start_slot, stat=
e->pbn_div);
> =20
>  =09seq_printf(m, "\n| idx | port | vcpi | slots | pbn | dsc |     sink n=
ame     |\n");
> -=09for (i =3D 0; i < mgr->max_payloads; i++) {
> -=09=09list_for_each_entry(payload, &state->payloads, next) {
> -=09=09=09char name[14];
> +=09for_each_set_bit(i, (unsigned long *)&state->payload_mask,
> +=09=09=09 BITS_PER_TYPE(state->payload_mask)) {

Huh, TIL we have a for_each_set_bit() macro. neat.

> +=09=09const struct drm_dp_mst_atomic_payload *payload =3D get_payload_by=
_vcpi(state, i + 1);
> +=09=09char name[14];
> =20
> -=09=09=09if (payload->vcpi !=3D i + 1 || payload->delete)
> -=09=09=09=09continue;
> +=09=09if (payload->delete)
> +=09=09=09continue;
> =20
> -=09=09=09fetch_monitor_name(mgr, payload->port, name, sizeof(name));
> -=09=09=09seq_printf(m, " %5d %6d %6d %02d - %02d %5d %5s %19s\n",
> -=09=09=09=09   i,
> -=09=09=09=09   payload->port->port_num,
> -=09=09=09=09   payload->vcpi,
> -=09=09=09=09   payload->vc_start_slot,
> -=09=09=09=09   payload->vc_start_slot + payload->time_slots - 1,
> -=09=09=09=09   payload->pbn,
> -=09=09=09=09   payload->dsc_enabled ? "Y" : "N",
> -=09=09=09=09   (*name !=3D 0) ? name : "Unknown");
> -=09=09}
> +=09=09fetch_monitor_name(mgr, payload->port, name, sizeof(name));
> +=09=09seq_printf(m, " %5d %6d %6d %02d - %02d %5d %5s %19s\n",
> +=09=09=09   i,
> +=09=09=09   payload->port->port_num,
> +=09=09=09   payload->vcpi,
> +=09=09=09   payload->vc_start_slot,
> +=09=09=09   payload->vc_start_slot + payload->time_slots - 1,
> +=09=09=09   payload->pbn,
> +=09=09=09   payload->dsc_enabled ? "Y" : "N",
> +=09=09=09   (*name !=3D 0) ? name : "Unknown");
>  =09}
> =20
>  =09seq_printf(m, "\n*** DPCD Info ***\n");

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

