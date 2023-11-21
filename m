Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CBF7F3963
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 23:42:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC09F10E101;
	Tue, 21 Nov 2023 22:42:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA7A010E101
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 22:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1700606563;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0ElQRGY0isfYsMKQ1j3gCo27bQcg0SuJmAfZSX/wY/k=;
 b=NPwrkzvhLDjDZf7oIGWw7BpxJhN8IteGosIU4vtF3yDrOZEjd+djSG3iP7OfU0oN6xGVsn
 gB2vZxeFYBU6FfRG74G8j0ZujXk21cABRyeTfSdFLkcQIr6aehpqI4zoNlQbEUKqSeBRXB
 D9Ms7JyVhZbtqHZR1ysHh2o0sulaLdw=
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com
 [209.85.219.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-617-yJ_EEkNNMu65DUME9BWPSQ-1; Tue, 21 Nov 2023 17:42:42 -0500
X-MC-Unique: yJ_EEkNNMu65DUME9BWPSQ-1
Received: by mail-yb1-f200.google.com with SMTP id
 3f1490d57ef6-daed1e15daeso7411173276.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 14:42:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700606562; x=1701211362;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0ElQRGY0isfYsMKQ1j3gCo27bQcg0SuJmAfZSX/wY/k=;
 b=eV+ysSVIaRbIjPFSILPQy3QqsGFVxNcgIWk5XKN9d0o3taZUwiPzExMrymKkA9cgdL
 GPM6s0fPZaChobuErXiSvlxcSoD8SXyr00gVT3PMvXjFSI3vhjT4klDbOdvGlgwBiWKj
 dSNe+lKQYVRJekoKpn6b1/Q1fKSO381o1LcPdbnIwhhw6tQaZMbxrKBG7z2ta4mriJbu
 Re0dMABcaHj6v6/mjQT7y4ONyvlGt67o3hlcLb2b2A3d1AlHGX81nbD0nfiP51lisCyJ
 PBtcPHRGRK9jRcvZtuKhfoV+dBt4iclB08tt1l3kPuaFihvLH3be5Io31zfhHN7ejnpa
 r1lA==
X-Gm-Message-State: AOJu0YykFR6INYZ2bOHVYScxXhZkY1FgOtOEi4h9ObPbz340YUTslNQL
 mQx3Bu7heR6CXCIUe07lYq/HKGiWKJhfEpykul1EtI9RCwuULqOxav6lSYRF3kwom7vMW0XZ7go
 OeNvl8r7xXusm4M1jjZ7wY/JPx8Od
X-Received: by 2002:a25:5c4:0:b0:d9a:f666:b68e with SMTP id
 187-20020a2505c4000000b00d9af666b68emr367543ybf.30.1700606561990; 
 Tue, 21 Nov 2023 14:42:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHRSjq9twvoSzgF5Q9Q/FUlWz6aqRI90OMayCTy5o0ibsygPbETnRAEkLcwWcr7iGmyw+YSiw==
X-Received: by 2002:a25:5c4:0:b0:d9a:f666:b68e with SMTP id
 187-20020a2505c4000000b00d9af666b68emr367535ybf.30.1700606561698; 
 Tue, 21 Nov 2023 14:42:41 -0800 (PST)
Received: from ?IPv6:2600:4040:5c6c:a300::feb? ([2600:4040:5c6c:a300::feb])
 by smtp.gmail.com with ESMTPSA id
 j16-20020a0cf9d0000000b006564afc5908sm4335918qvo.111.2023.11.21.14.42.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Nov 2023 14:42:41 -0800 (PST)
Message-ID: <714f94e18518fecb10263d9140550694162fe27c.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 21 Nov 2023 17:42:40 -0500
In-Reply-To: <20231116131841.1588781-1-imre.deak@intel.com>
References: <20231116131841.1588781-1-imre.deak@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 00/11] drm/i915: Fix UHBR data,
 link M/N/TU and PBN values
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

For patches 1-3:

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Thu, 2023-11-16 at 15:18 +0200, Imre Deak wrote:
> This is v2 of [1], with the following changes:
> - Store the pbn_div value in fixed point format.
> - Fix PBN calculation in patch 8.
> - Reuse intel_dp_max_data_rate(), intel_dp_effective_data_rate() in
>   intel_link_compute_m_n() (Jani).
>=20
> [1] https://lore.kernel.org/all/20231113201110.510724-1-imre.deak@intel.c=
om
>=20
> Cc: Arun R Murthy <arun.r.murthy@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
>=20
> Imre Deak (11):
>   drm/dp_mst: Store the MST PBN divider value in fixed point format
>   drm/dp_mst: Fix PBN divider calculation for UHBR rates
>   drm/dp_mst: Add kunit tests for drm_dp_get_vc_payload_bw()
>   drm/i915/dp: Replace intel_dp_is_uhbr_rate() with
>     drm_dp_is_uhbr_rate()
>   drm/i915/dp: Account for channel coding efficiency on UHBR links
>   drm/i915/dp: Fix UHBR link M/N values
>   drm/i915/dp_mst: Calculate the BW overhead in
>     intel_dp_mst_find_vcpi_slots_for_bpp()
>   drm/i915/dp_mst: Fix PBN / MTP_TU size calculation for UHBR rates
>   drm/i915/dp: Report a rounded-down value as the maximum data rate
>   drm/i915/dp: Simplify intel_dp_max_data_rate()
>   drm/i915/dp: Reuse intel_dp_{max,effective}_data_rate in
>     intel_link_compute_m_n()
>=20
>  .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |   5 +-
>  .../amd/display/amdgpu_dm/amdgpu_dm_helpers.c |   3 +-
>  .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |   5 +-
>  drivers/gpu/drm/display/drm_dp_mst_topology.c |  31 +++-
>  drivers/gpu/drm/i915/display/intel_display.c  |  51 ++----
>  drivers/gpu/drm/i915/display/intel_dp.c       |  78 +++++++---
>  drivers/gpu/drm/i915/display/intel_dp.h       |   5 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  55 +++++--
>  drivers/gpu/drm/nouveau/dispnv50/disp.c       |   6 +-
>  .../gpu/drm/tests/drm_dp_mst_helper_test.c    | 145 ++++++++++++++++++
>  include/drm/display/drm_dp_helper.h           |  13 ++
>  include/drm/display/drm_dp_mst_helper.h       |   7 +-
>  12 files changed, 311 insertions(+), 93 deletions(-)
>=20

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

