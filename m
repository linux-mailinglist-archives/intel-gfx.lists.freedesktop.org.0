Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D7763E73A
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 02:47:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E716310E00E;
	Thu,  1 Dec 2022 01:47:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 613A410E00E
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 01:47:47 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id k5so466401pjo.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 17:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hSpchYfg5sxDktrWiUCGM8kWwm6Qm9gkMEQPfkgTBBA=;
 b=CvAgb5koEhxeMsc0WK7Nma0kHifKBpIqHiVo++2uIrpIH6ibDrmzEIOaZzQ6VT2d4t
 p13aWtYssI34cjlLYChznSGnfKuoJEsm86eX+imTqWF2U2ZkC58tw/RJbUy4SVzkd08I
 q2Ec/y/LIEKhl7md4je0ihRrOX4LJb4A1PXSo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=hSpchYfg5sxDktrWiUCGM8kWwm6Qm9gkMEQPfkgTBBA=;
 b=doD++1+0OD7dT7mHqZ1avUNRITXXUd4QQIx/BcJ+yRLGALAGzTX9/+RGAJAoDYuw1j
 BZa8ChmTJl2isZbOf48aa7hhCpoxU+rxV+NjDCpfrkAx9zbZYvOPWquR5Gd+8YSnMHuL
 4HyP/DL+RTjoqF6YI20/ngl5F2bvBZIRWvaT6WXtbCZSlvcdIsK0Jx6LMHpouc6HgdNa
 P1eId9wCfhSyfJsAbo+qpy65ifmMPtO6LNeGm2DBdotfoK/ovHs/iUYYo37+6ElLZoyQ
 Xq2uLHv/nDf0ZFgmKehxCrPq6z6XcrUbSuUEzrY1qzyeS0738Zx38jswfEB0gQ9hItBS
 HO1Q==
X-Gm-Message-State: ANoB5pnq4sFVq3UQAFbzyS+SGTenxKHFGcIKyLQfMkA9F7e2Zcv1Av3S
 SlYDeOXc4nTufy/m+726NNFy1g==
X-Google-Smtp-Source: AA0mqf7GiG/iHsizkcNYQMVVVxrDlDPEcuwuyVk9o252S0vOKLFb+uTJ/2eHAJODEJV7v9r3hQaSBw==
X-Received: by 2002:a17:902:f609:b0:188:a8a2:f43a with SMTP id
 n9-20020a170902f60900b00188a8a2f43amr54988813plg.130.1669859266809; 
 Wed, 30 Nov 2022 17:47:46 -0800 (PST)
Received: from ?IPv6:2620:15c:90:700:eb8a:621e:e881:e345?
 ([2620:15c:90:700:eb8a:621e:e881:e345])
 by smtp.gmail.com with ESMTPSA id
 h15-20020a056a00000f00b00574d38f4d37sm2020131pfk.45.2022.11.30.17.47.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Nov 2022 17:47:46 -0800 (PST)
Message-ID: <97a03abf634d233d38fd4cb200eaad5140215c07.camel@chromium.org>
From: Juston Li <justonli@chromium.org>
To: Alan Previn <alan.previn.teres.alexis@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Wed, 30 Nov 2022 17:47:45 -0800
In-Reply-To: <20221129004832.3735764-2-alan.previn.teres.alexis@intel.com>
References: <20221129004832.3735764-1-alan.previn.teres.alexis@intel.com>
 <20221129004832.3735764-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.0-2 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/pxp: Invalidate all PXP fw
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

On Mon, 2022-11-28 at 16:48 -0800, Alan Previn wrote:
> A gap was recently discovered where if an application did not
> invalidate all of the stream keys (intentionally or not), and the
> driver did a full PXP global teardown on the GT subsystem, we
> find that future session creation would fail on the security
> firmware's side of the equation. i915 is the entity that needs
> ensure the sessions' state across both iGT and security firmware
> are at a known clean point when performing a full global teardown.
>=20
> Architecturally speaking, i915 should inspect all active sessions
> and submit the invalidate-stream-key PXP command to the security
> firmware for each of them. However, for the upstream i915 driver
> we only support the arbitration session that can be created
> so that will be the only session we will cleanup.
>=20
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
> =C2=A0drivers/gpu/drm/i915/pxp/intel_pxp.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
> =C2=A0.../drm/i915/pxp/intel_pxp_cmd_interface_42.h | 15 ++++++++
> =C2=A0.../i915/pxp/intel_pxp_cmd_interface_cmn.h=C2=A0=C2=A0=C2=A0 |=C2=
=A0 3 ++
> =C2=A0drivers/gpu/drm/i915/pxp/intel_pxp_session.c=C2=A0 |=C2=A0 5 +++
> =C2=A0drivers/gpu/drm/i915/pxp/intel_pxp_tee.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 | 35
> +++++++++++++++++++
> =C2=A0drivers/gpu/drm/i915/pxp/intel_pxp_types.h=C2=A0=C2=A0=C2=A0 |=C2=
=A0 2 ++
> =C2=A06 files changed, 61 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 2da309088c6d..bbeb8ed8e211 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -23,6 +23,7 @@ void intel_pxp_init_hw(struct intel_pxp *pxp);
> =C2=A0void intel_pxp_fini_hw(struct intel_pxp *pxp);
> =C2=A0
> =C2=A0void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
> +void intel_pxp_tee_end_arb_fw_session(struct intel_pxp *pxp, u32
> arb_session_id);
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
> index 85572360c71a..8eb886d3f2a0 100644
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
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_pxp_tee_end_arb_fw_sessi=
on(pxp, ARB_SESSION);
> +
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index b0c9170b1395..202ea01cbb88 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -309,3 +309,38 @@ int intel_pxp_tee_cmd_create_arb_session(struct
> intel_pxp *pxp,
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> +
> +void intel_pxp_tee_end_arb_fw_session(struct intel_pxp *pxp, u32
> session_id)
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
 !=3D 0x0)
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0drm_warn(&i915->drm, "PXP firmware failed inv-stream-
> key-%d with status 0x%08x\n",
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 session_=
id, msg_out.header.status);
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

This isn't need anymore, otherwise

Reviewed-by: Juston Li <justonli@chromium.org>

> +
> =C2=A0/**
> =C2=A0 * struct intel_pxp - pxp state
> =C2=A0 */

