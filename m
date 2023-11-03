Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F707E0B39
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 23:44:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0D3F10EAEC;
	Fri,  3 Nov 2023 22:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B194510EAEC
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 22:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1699051440;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=saw2SoRr4LaBLEeXSngEM0wgJOouHMU0U2IFzKqFAQU=;
 b=VJ58gIf2QUW2+3XwQky6mfh9EfXFc6qFHHENIrhR/xSFkqUfI4tPxQdg+mkVGTAjmOJtuf
 u8WumHEi3SxSyzPLtxSklcITRh3/J/r+3twZl6pHuUPZSueC0F7LXdi19bZEhvockmL86u
 xKBpf/rKF++nHf0a4cKpl8wmFkxFdVU=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-590-ySLHBS3YNOC6MiisqXBA8w-1; Fri, 03 Nov 2023 18:43:59 -0400
X-MC-Unique: ySLHBS3YNOC6MiisqXBA8w-1
Received: by mail-qk1-f197.google.com with SMTP id
 af79cd13be357-778a32da939so264058885a.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Nov 2023 15:43:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699051439; x=1699656239;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=saw2SoRr4LaBLEeXSngEM0wgJOouHMU0U2IFzKqFAQU=;
 b=H2fwCynMqqPU8PV3O3xnAXTV4gMYrl0C3B/3leCzftFz6duh2uaoe5OgwVD2tV6otR
 MPXPbS/nN94ZxIfhwDsPknDuYuv+uHkVYOi26MGEbJGaDzc7tVJ98Jcsq2tO493yC+0A
 5D52pX5hQjwxxRs0U+rmZw9jS4vBcEliqL0H+hRDN8C1en9B80I8iIzjuoq85m495O6+
 CnQjx4mTwEwPcjYaMPp1w4onMi+mAOOPETwdBQSJujZKkLUdEi2tufEv341r9IhovrEt
 H8saM3d7ev/zfmanJsNBI1o7Qn05vxtYqhd/UTUCtr0zDqj4fwwFShQbazyWLctn+0vb
 YAmw==
X-Gm-Message-State: AOJu0Yw7Hibjt+U4zJzbY9lOaaE+UJ7W/uP5NnmU89+26KZD2f+ri+Qa
 wKy8aXPYvUL2hcTL0pDJ/Cug3anyKnq9Vqd0VKLlwb7YTlbuzWVOjrCtUq7zBxmLB8axDq1wiiA
 uFQCWyHaIUGYpB6pHi0DpAjlw8vGJ
X-Received: by 2002:a05:620a:3aca:b0:778:9bbc:b864 with SMTP id
 ss10-20020a05620a3aca00b007789bbcb864mr19307653qkn.70.1699051438799; 
 Fri, 03 Nov 2023 15:43:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGm0peHr/8kjKKBjChy543Nn+yQkbmS0H1wxhMIYhQF1FvnAtyh6ilkSOZDSTeZXE5iTzFsNQ==
X-Received: by 2002:a05:620a:3aca:b0:778:9bbc:b864 with SMTP id
 ss10-20020a05620a3aca00b007789bbcb864mr19307646qkn.70.1699051438502; 
 Fri, 03 Nov 2023 15:43:58 -0700 (PDT)
Received: from ?IPv6:2600:4040:5c6c:a300::feb? ([2600:4040:5c6c:a300::feb])
 by smtp.gmail.com with ESMTPSA id
 po10-20020a05620a384a00b00774350813ccsm1105775qkn.118.2023.11.03.15.43.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Nov 2023 15:43:57 -0700 (PDT)
Message-ID: <793f2f45756aec45bb8efc1a774d44e140678f85.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 03 Nov 2023 18:43:57 -0400
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4 00/30] drm/i915: Improve BW management on
 MST links
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

BTW - sorry it took me a little while to get back to this, I'm still gettin=
g
back into the swing of things but I should be able to review this next week=
 :)

Thanks for all of the work you've done so far!

On Mon, 2023-10-30 at 17:58 +0200, Imre Deak wrote:
> This is v4 of [1] with the following changes:
>=20
> - Fix a race condition between connector setup and registration
>   (added patch 1).
> - Rename DRM_DP_OVERHEAD_SSC to DRM_DP_OVERHEAD_SSC_REF_CLK
>   (Ville, patch 9).
> - Fix setting crtc_state->fec_enable, once crtc_state->port_clock
>   required for it is already set (patch 10).
> - Fix passing the correct fec_enable parameter to
>   intel_dp_bw_fec_overhead() (patch 12).
> - Fix TU size, making it match the payload size in the payload table
>   (Patch 13).
> - Apply the HBLANK expansion quirk whenever the HBLANK period is
>   300ns or less (Patch 21).
> - Fix refcounting of the DSC AUX decompression device
>   (Stan, patch 25).
> - Fix HW readout/sanitize for the connector DSC decompression enabled
>   state (patch 25).
> - Move intel_crtc_needs_modeset() check to callers of
>   clear_pipe_update_flags_on_modeset_crtc() (Ville, patch 26).
> - Fix forcing modeset on CRTC due to a change in MST topology
>   (Ville, patch 27).
> - Add missing DocBooks, fix typos.
>=20
> [1] https://lore.kernel.org/all/20231024010925.3949910-1-imre.deak@intel.=
com
>=20
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Arun R Murthy <arun.r.murthy@intel.com>
>=20
> Imre Deak (28):
>   drm/i915/dp_mst: Fix race between connector registration and setup
>   drm/dp_mst: Add helper to determine if an MST port is downstream of
>     another port
>   drm/dp_mst: Factor out a helper to check the atomic state of a
>     topology manager
>   drm/dp_mst: Swap the order of checking root vs. non-root port BW
>     limitations
>   drm/dp_mst: Allow DSC in any Synaptics last branch device
>   drm/dp: Add DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD
>     flags
>   drm/dp_mst: Add HBLANK expansion quirk for Synaptics MST hubs
>   drm/dp: Add helpers to calculate the link BW overhead
>   drm/i915/dp_mst: Enable FEC early once it's known DSC is needed
>   drm/i915/dp: Specify the FEC overhead as an increment vs. a remainder
>   drm/i915/dp: Pass actual BW overhead to m_n calculation
>   drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation
>   drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
>   drm/i915/dp_mst: Program the DSC PPS SDP for each stream
>   drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is
>     disabled
>   drm/i915/dp_mst: Add missing DSC compression disabling
>   drm/i915/dp: Rename intel_ddi_disable_fec_state() to
>     intel_ddi_disable_fec()
>   drm/i915/dp: Wait for FEC detected status in the sink
>   drm/i915/dp: Disable FEC ready flag in the sink
>   drm/i915/dp_mst: Handle the Synaptics HBlank expansion quirk
>   drm/i915/dp_mst: Enable decompression in the sink from the MST encoder
>     hooks
>   drm/i915/dp: Enable DSC via the connector decompression AUX
>   drm/i915/dp_mst: Enable DSC passthrough
>   drm/i915/dp_mst: Enable MST DSC decompression for all streams
>   drm/i915: Factor out function to clear pipe update flags
>   drm/i915/dp_mst: Force modeset CRTC if DSC toggling requires it
>   drm/i915/dp_mst: Improve BW sharing between MST streams
>   drm/i915/dp_mst: Check BW limitations only after all streams are
>     computed
>=20
> Stanislav Lisovskiy (1):
>   drm/i915: Query compressed bpp properly using correct DPCD and DP Spec
>     info
>=20
> Ville Syrj=C3=A4l=C3=A4 (1):
>   drm/dp_mst: Fix fractional DSC bpp handling
>=20
>  .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |   2 +-
>  .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |   2 +-
>  drivers/gpu/drm/display/drm_dp_helper.c       | 134 +++++
>  drivers/gpu/drm/display/drm_dp_mst_topology.c | 206 +++++--
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 136 ++++-
>  drivers/gpu/drm/i915/display/intel_ddi.h      |   3 +
>  drivers/gpu/drm/i915/display/intel_display.c  | 101 ++--
>  drivers/gpu/drm/i915/display/intel_display.h  |   4 +-
>  .../drm/i915/display/intel_display_types.h    |   3 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 256 +++++++-
>  drivers/gpu/drm/i915/display/intel_dp.h       |  23 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 564 +++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_dp_mst.h   |   5 +
>  drivers/gpu/drm/i915/display/intel_fdi.c      |   5 +-
>  drivers/gpu/drm/i915/display/intel_link_bw.c  |  16 +-
>  drivers/gpu/drm/i915/display/intel_link_bw.h  |   1 +
>  .../drm/i915/display/intel_modeset_setup.c    |   6 +
>  drivers/gpu/drm/nouveau/dispnv50/disp.c       |   3 +-
>  .../gpu/drm/tests/drm_dp_mst_helper_test.c    |   6 +-
>  include/drm/display/drm_dp.h                  |   2 +
>  include/drm/display/drm_dp_helper.h           |  18 +
>  include/drm/display/drm_dp_mst_helper.h       |   9 +-
>  22 files changed, 1270 insertions(+), 235 deletions(-)
>=20

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

