Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A66633131
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 01:14:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4983E10E1C1;
	Tue, 22 Nov 2022 00:14:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFDDC10E1C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 00:14:47 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id 136so12662716pga.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 16:14:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ORDRszVIQbOEtamlnDAH7BvzZg6LF/xbc4LWS1+0AaI=;
 b=isEvXGvZSNlB+/Ald+NN3hcoSzjSg2DcD/gienVS+dI6HmgL7vnmVZXHbqJRr+SJKN
 CqXZlfd/jEMjwDaKW/xq4jftRIApK/g8Dyzp1QVjWp95BE2ipKosHK6Fq8eDUlHDqvvo
 t8tMXU5ejnHh3uXTLMw5c4YoNjkQbBqMEqvfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=ORDRszVIQbOEtamlnDAH7BvzZg6LF/xbc4LWS1+0AaI=;
 b=LujtmK6sXP16Lrqm45zdNt9EYdMYMm7sLuzh9Sq5bIeszg2TXnwoEnYvxH8SI+zVgS
 /kEvBr9PXfu0omiFW3louoq1kYiZrww0oXKI0vx7OXoG/h2ePM1PVyXRxZHep1Xq/j07
 ms8KOh/ETJeggQqKJp1sJPZHuVRa324p0SJbp58zyLh8gFG0l88vYctelcIMQ26KvGzZ
 D41WI0aDJBcdMxWadP1z7bcbvxhA0s3v3iEyjQoWr49w4HZ7BpfPXz00RUrANAb/IvtS
 XAH+Q9dR8d/EfVs41eo+zk5Gk13t+NYXrC+Fjmrd1OPUwxcvNWl2G6Lffti2981MesbF
 hHTA==
X-Gm-Message-State: ANoB5pk4JouB5bUQVJAsBTAm56m5FB9ohLGlctTarVYzYcPChf3fOu0G
 bT3A66dcI+LAQ+7StUVN4Earup7IudR6XA==
X-Google-Smtp-Source: AA0mqf64iadOX4ZWPHDROSYsaPkQq911WMyMA9j9ph65Vk6/b05k7TIMyW5QDoC8kftxz4i31Y6/yg==
X-Received: by 2002:a05:6a00:4c11:b0:56d:93d8:d81a with SMTP id
 ea17-20020a056a004c1100b0056d93d8d81amr1591142pfb.14.1669076087432; 
 Mon, 21 Nov 2022 16:14:47 -0800 (PST)
Received: from justonli-glaptop.lan (c-71-237-220-48.hsd1.or.comcast.net.
 [71.237.220.48]) by smtp.gmail.com with ESMTPSA id
 g16-20020a1709029f9000b00186da904da0sm10361086plq.154.2022.11.21.16.14.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Nov 2022 16:14:46 -0800 (PST)
Message-ID: <8927195aa625eb41665d3bfdf49644fa6cde46bf.camel@chromium.org>
From: Juston Li <justonli@chromium.org>
To: Alan Previn <alan.previn.teres.alexis@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Mon, 21 Nov 2022 16:14:45 -0800
In-Reply-To: <20221118003631.1523764-2-alan.previn.teres.alexis@intel.com>
References: <20221118003631.1523764-1-alan.previn.teres.alexis@intel.com>
 <20221118003631.1523764-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.45.3-2 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/pxp: Invalidate all PXP fw
 sessions during teardown
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

On Thu, 2022-11-17 at 16:36 -0800, Alan Previn wrote:
> A gap was recently discovered where if an application did not
> invalidate all of the stream keys (intentionally or not), and the
> driver did a full PXP global teardown on the GT subsystem, we
> find that future session creation would fail on the security
> firmware's side of the equation. i915 is the entity that needs
> ensure the sessions' state across both iGT and security firmware
> are at a known clean point when performing a full global teardown.
>=20
> That said, the i915 should inspect all active sessions and submit
> the invalidate-stream-key PXP command to the security firmware for
> each of them.
>=20
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
> =C2=A0drivers/gpu/drm/i915/pxp/intel_pxp.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
> =C2=A0.../drm/i915/pxp/intel_pxp_cmd_interface_42.h | 15 +++++++
> =C2=A0.../i915/pxp/intel_pxp_cmd_interface_cmn.h=C2=A0=C2=A0=C2=A0 |=C2=
=A0 3 ++
> =C2=A0drivers/gpu/drm/i915/pxp/intel_pxp_session.c=C2=A0 |=C2=A0 5 +++
> =C2=A0drivers/gpu/drm/i915/pxp/intel_pxp_tee.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 | 45
> +++++++++++++++++++
> =C2=A0drivers/gpu/drm/i915/pxp/intel_pxp_types.h=C2=A0=C2=A0=C2=A0 |=C2=
=A0 2 +
> =C2=A06 files changed, 71 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 2da309088c6d..6ba8fa5bfea0 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -23,6 +23,7 @@ void intel_pxp_init_hw(struct intel_pxp *pxp);
> =C2=A0void intel_pxp_fini_hw(struct intel_pxp *pxp);
> =C2=A0
> =C2=A0void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
> +void intel_pxp_tee_end_all_fw_sessions(struct intel_pxp *pxp, u32
> sessions_mask);
> =C2=A0
> =C2=A0int intel_pxp_start(struct intel_pxp *pxp);
> =C2=A0
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
> index 739f9072fa5f..26f7d9f01bf3 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
> @@ -12,6 +12,9 @@
> =C2=A0/* PXP-Opcode for Init Session */
> =C2=A0#define PXP42_CMDID_INIT_SESSION 0x1e
> =C2=A0
> +/* PXP-Opcode for Invalidate Stream Key */
> +#define PXP42_CMDID_INVALIDATE_STREAM_KEY 0x00000007
> +
> =C2=A0/* PXP-Input-Packet: Init Session (Arb-Session) */
> =C2=A0struct pxp42_create_arb_in {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pxp_cmd_header hea=
der;
> @@ -25,4 +28,16 @@ struct pxp42_create_arb_out {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pxp_cmd_header hea=
der;
> =C2=A0} __packed;
> =C2=A0
> +/* PXP-Input-Packet: Invalidate Stream Key */
> +struct pxp42_inv_stream_key_in {
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pxp_cmd_header header;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 rsvd[3];
> +} __packed;
> +
> +/* PXP-Output-Packet: Invalidate Stream Key */
> +struct pxp42_inv_stream_key_out {
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pxp_cmd_header header;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 rsvd;
> +} __packed;
> +
> =C2=A0#endif /* __INTEL_PXP_FW_INTERFACE_42_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
> index c2f23394f9b8..69e34ec49e78 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
> @@ -27,6 +27,9 @@ struct pxp_cmd_header {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0union {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0u32 status; /* out */
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0u32 stream_id; /* in */
> +#define PXP_CMDHDR_EXTDATA_SESSION_VALID GENMASK(0, 0)
> +#define PXP_CMDHDR_EXTDATA_APP_TYPE GENMASK(1, 1)
> +#define PXP_CMDHDR_EXTDATA_SESSION_ID GENMASK(17, 2)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Length of the message =
(excluding the header) */
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 buffer_len;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> index 85572360c71a..85e404b5ad0e 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> @@ -91,10 +91,13 @@ static int
> pxp_terminate_arb_session_and_global(struct intel_pxp *pxp)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct intel_gt *gt =3D p=
xp_to_gt(pxp);
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 active_sip_slots;
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* must mark termination =
in progress calling this function */
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0GEM_WARN_ON(pxp->arb_is_v=
alid);
> =C2=A0
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0active_sip_slots =3D intel_unc=
ore_read(gt->uncore,
> GEN12_KCR_SIP);
> +
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* terminate the hw sessi=
ons */
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D intel_pxp_termina=
te_session(pxp, ARB_SESSION);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ret) {
> @@ -110,6 +113,8 @@ static int
> pxp_terminate_arb_session_and_global(struct intel_pxp *pxp)
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_uncore_write(gt->un=
core, PXP_GLOBAL_TERMINATE, 1);
> =C2=A0
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_pxp_tee_end_all_fw_sessi=
ons(pxp, active_sip_slots);
> +
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index b0c9170b1395..9260a7013191 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -309,3 +309,48 @@ int intel_pxp_tee_cmd_create_arb_session(struct
> intel_pxp *pxp,
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> +
> +static void intel_pxp_tee_end_one_fw_session(struct intel_pxp *pxp,
> u32 session_id, bool is_alive)
> +{
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct drm_i915_private *i915 =
=3D pxp_to_gt(pxp)->i915;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pxp42_inv_stream_key_in=
 msg_in =3D {0};
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pxp42_inv_stream_key_ou=
t msg_out =3D {0};
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret, trials =3D 0;
> +
> +try_again:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memset(&msg_in, 0, sizeof(msg_=
in));
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memset(&msg_out, 0, sizeof(msg=
_out));
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0msg_in.header.api_version =3D =
PXP_APIVER(4, 2);
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0msg_in.header.command_id =3D P=
XP42_CMDID_INVALIDATE_STREAM_KEY;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0msg_in.header.buffer_len =3D s=
izeof(msg_in) -
> sizeof(msg_in.header);
> +
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0msg_in.header.stream_id =3D
> FIELD_PREP(PXP_CMDHDR_EXTDATA_SESSION_VALID, 1);
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0msg_in.header.stream_id |=3D
> FIELD_PREP(PXP_CMDHDR_EXTDATA_APP_TYPE, 0);
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0msg_in.header.stream_id |=3D
> FIELD_PREP(PXP_CMDHDR_EXTDATA_SESSION_ID, session_id);
> +
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D intel_pxp_tee_io_messa=
ge(pxp,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 &msg_in, sizeof(msg_in),
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 &msg_out, sizeof(msg_out),
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 NULL);
> +
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Cleanup coherency between G=
T and Firmware is critical, so
> try again if it fails */
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((ret || msg_out.header.sta=
tus !=3D 0x0) && ++trials < 3)
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0goto try_again;
> +
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ret)
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0drm_err(&i915->drm, "Failed to send tee msg for inv-
> stream-key-%d, ret=3D[%d]\n",
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0session_i=
d, ret);
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else if (msg_out.header.status=
 !=3D 0x0 && is_alive)
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0drm_warn(&i915->drm, "PXP firmware failed inv-stream-
> key-%d with status 0x%08x\n",
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 session_=
id, msg_out.header.status);
> +}
> +
> +void intel_pxp_tee_end_all_fw_sessions(struct intel_pxp *pxp, u32
> sessions_mask)
> +{
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int n;
> +
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (n =3D 0; n < INTEL_PXP_MA=
X_HWDRM_SESSIONS; ++n) {
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0intel_pxp_tee_end_one_fw_session(pxp, n,
> (sessions_mask & 0x1) ? true : false);

What's the reason for the is_alive bool here? Instead of only sending
the invalidate cmd for the alive sessions?

Although... for upstream we really only need to invalidate the ARB
session right?

Juston

> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0sessions_mask =3D (sessions_mask >> 1);
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> index f74b1e11a505..4d75b06ea4a0 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> @@ -14,6 +14,8 @@
> =C2=A0struct intel_context;
> =C2=A0struct i915_pxp_component;
> =C2=A0
> +#define INTEL_PXP_MAX_HWDRM_SESSIONS 16
> +
> =C2=A0/**
> =C2=A0 * struct intel_pxp - pxp state
> =C2=A0 */

