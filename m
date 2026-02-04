Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLGvFkSkhGmI3wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 15:08:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9441AF3C7A
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 15:08:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 826E310E8D5;
	Thu,  5 Feb 2026 14:08:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OVoI0iwy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7200210E381
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Feb 2026 23:06:18 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id
 4fb4d7f45d1cf-658323d1c91so46612a12.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Feb 2026 15:06:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770246377; x=1770851177; darn=lists.freedesktop.org;
 h=mime-version:user-agent:content-transfer-encoding
 :disposition-notification-to:references:in-reply-to:date:to:from
 :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=f2or16IdPuBH+Us6KDsCVjpzjuTdT1iZplBGe8rzmqE=;
 b=OVoI0iwyCFb2gJpy6sagI7JfnRcdmDBQJR0aux6ewUDLu0WNcnRW/L0vZX9d/DdD0D
 lgPOOtAMmgIzs+pqqbbS5MvBkF6wbE8fZxMOJudZ+8nmHvfhg6S3HvCBHDHK9r1LBrR4
 lKommaM0fOD/OcMAJrRFwe4dfPMpzZbE0tlxWqE9RfOqaGDPYCKIYU6kgPJ0mStYZbfz
 zJrajzH2IPPZIdhAtQhuGAlF2drN7ir3GV48o2K4GLNVrT0PCvTalh+x9+v7+i3oIotr
 yQv1JdOJd2MbarGK5bSwBnLA33AERYAcWo6f6mKmpHZzI+0P/jxGmWofDh3lE/LudLcU
 u0bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770246377; x=1770851177;
 h=mime-version:user-agent:content-transfer-encoding
 :disposition-notification-to:references:in-reply-to:date:to:from
 :subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=f2or16IdPuBH+Us6KDsCVjpzjuTdT1iZplBGe8rzmqE=;
 b=R1PYb+/2yZZj2HTQD/w+32iSzEkosQUBjmQV15uMJ+r8LzvwrhxCJ98iTNWyT5C41A
 QhlFQ+wTIq9WrpQ1L5/PUZuYPQqli74IPYRSbSii+tEGcE9I1rB4lcXZktF5kDgE2oPV
 wD7UdHrssmqsYxpI0Y9dbPTB0RM9bKERLREg38ufCuEc5ZYOxjwubuOcDb8ZvRKgfWTn
 0BNEvgWAyvXdEIvRqoeHOG+6s1gxJnieBADoJPS+m1pULMUREs88pgvYOymB3EeFsYLB
 ijva9wFtoSUdTijol6ynPpmlz2duOEf110fCJanLH4Jkwi6xE3I7qLxyUkWhke/QWlUr
 1cLQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXGCSVyQrj9mgwiEvJ2u9GRW2xGWqjVf1rhoHBbyjqHStcKCh7693jkFEvrTqKBc5dDKKCnZQTcIcM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy3wjQGU6lFiK5KtAwUn8JJfRMNTEfj/7MloWM+A7RJtEKwH3CH
 mvtR4GN3+PUCqb7SU9VvYTF6EiwQtFdLL80qZXFDAvzw9dNkuV8oO8n1gmxT3xhv
X-Gm-Gg: AZuq6aIMPOfXxnG6VGMWDAPDz4M+J7DMD3jjRnOUkf+8luPrACgJBieQL9Kx5lMSYgP
 kJ6DVP1GHnTgC4YwfPPI2DwhtFCZGjYgsRT5Obpd/TypLQsuOmCm8jVtrJqKskcQxfOZSmE5Rhw
 wt0h8ZbfCru2kffykwdEAlAbaVJHx/BkC9EWw5x5nuDUSky9d8XooTd5t6LMKzoZD8AT9XST8Ez
 PzokuPr4wxyhf6tyyMVxI26GagmokVeLfXXeZ9jaTW83b2fVAAEA33IxHXVrzh+xcfaaS58Y/fo
 RjY/ucskq465jcR7yqOUDzoqLDDrUF39XL9aXHDBVMw6+IdVJr7lyCS/jq2A7pTGCyDa7fwzsfA
 J2jiPPTIEV3TYq9Cm3Oa2azZcJELThCv+L4v/9MFbMk/wwYWf25hE+2HjLrZ+P/yU4ofViCevwY
 qUWWUFN490X37z8ggN1/tRY3OFK2fzAO/s6ZhXJvgWqJpVSi3w1DZ2Hx+LyHm3tcZrE3MihTc=
X-Received: by 2002:a05:6402:2684:b0:64d:46f:331 with SMTP id
 4fb4d7f45d1cf-65949fd5dddmr1744777a12.8.1770246376640; 
 Wed, 04 Feb 2026 15:06:16 -0800 (PST)
Received: from [192.168.1.239] (87-205-5-123.static.ip.netia.com.pl.
 [87.205.5.123]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-65949ed6b7esm1664299a12.11.2026.02.04.15.06.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Feb 2026 15:06:16 -0800 (PST)
Message-ID: <85ae9f0a13e33eae0be857753c4dc9037e9fa91b.camel@gmail.com>
Subject: Re: [Intel-gfx] [RFC 00/15] Add support for HDMI2.1 FRL
From: Tomasz =?UTF-8?Q?Paku=C5=82a?= <tomasz.pakula.oficjalny@gmail.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Date: Thu, 05 Feb 2026 00:06:15 +0100
In-Reply-To: <20221107072045.628895-1-ankit.k.nautiyal@intel.com>
References: <20221107072045.628895-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 05 Feb 2026 14:08:00 +0000
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ankit.k.nautiyal@intel.com,m:dri-devel@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[tomaszpakulaoficjalny@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_FROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tomaszpakulaoficjalny@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,patchwork.freedesktop.org:url]
X-Rspamd-Queue-Id: 9441AF3C7A
X-Rspamd-Action: no action

On Mon, 2022-11-07 at 12:50 +0530, Ankit Nautiyal wrote:
> This set is RFC for adding support for HDMI2.1 FRL Link training.
> FRL or Fixed Rate Link is defined by HDMI2.1 spec for supporting higher
> bit-rate. As per HDMI2.1 specification, a new data-channel or lane is
> added in FRL mode, by repurposing the TMDS clock Channel. This enables
> HDMI to support 48 Gbps bandwidth (i.e. bit rate of 12 Gbps/lane for 4
> lanes).
>=20
> This series is a step for Native HDMI2.1 support for MTL and to begin
> discussion on the Fixed Rate Link Training part. It adds new structures,
> registers and functions for facilitating FRL training for HDMI2.1.
> Basically it provides the support for starting the Link training for a
> given bit rate and lane count.
>=20
> The appropriate bit rate and lanes need to be computed in the compute
> config phase for HDMI, for a given video-mode, which is not part of this
> series, but can be built on the basic structures and new members added
> in this series. The FRL Training will take place only when we take a
> decision to go for FRL mode and set the crtc_state parameters
> appropriately during compute config phase.
>=20
> The first 2 patches are prep work to have helper for getting MAX
> FRL rate for existing DP-to HDMI2.1 PCON and Native HDMI2.1 from an
> older series: https://patchwork.freedesktop.org/series/99311/
>=20
> As HDMI2.1 needs C20 PHY, there is dependency on patch series from
> Mika: https://patchwork.freedesktop.org/series/109714/
> Therefore Patch 3 which adds the C10/C20 registers, is taken from the
> above series for completeness, and FRL bits are added on top of that.
>=20
> Ankit Nautiyal (13):
>   drm/edid: Add helper to get max FRL rate for an HDMI sink
>   drm/i915/dp: Use the drm helpers for getting max FRL rate
>   drm/i915/hdmi21/mtl: Add new data members for FRL configuration
>   drm/drm_scdc_helper: Add SCDC helper funcs for HDMI2.1
>   drm/i915/mtl: Add registers for FRL Link Training
>   drm/i915/mtl: Add HDMI2.1 bits in PORT_BUF_CTL_1
>   drm/i915/mtl: Add port_data/data width for TRANS_DDI_FUNC and
>     DDI_BUF_CTL
>   drm/i915/display/mtl: Add new members in crtc_state for FRL
>     configuration
>   drm/i915/display/mtl: Update Transcoder/DDI registers with the frl
>     bits
>   drm/i915/display/mtl: Reset FRL Transcoder config while disabling HDMI
>   drm/i915/hdmi21/mtl: Enable Scrambling only for FRL mode
>   drm/i915/hdmi21/mtl: Add support for sending uevent to user for FRL
>     training failure
>   drm/i915/display/mtl: Add functions for FRL trainining state machine
>=20
> Mika Kahola (1):
>   drm/i915/mtl: Create separate reg file for PICA registers
>=20
> Vandita Kulkarni (1):
>   drm/i915/hdmi21/mtl: Parse frl max link rate from vbt
>=20
>  drivers/gpu/drm/display/drm_scdc_helper.c     | 196 ++++++++
>  drivers/gpu/drm/drm_edid.c                    |  38 ++
>  drivers/gpu/drm/i915/display/intel_bios.c     |  51 ++
>  drivers/gpu/drm/i915/display/intel_bios.h     |   1 +
>  .../gpu/drm/i915/display/intel_cx0_reg_defs.h | 144 ++++++
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  63 ++-
>  .../drm/i915/display/intel_display_types.h    |  32 ++
>  drivers/gpu/drm/i915/display/intel_dp.c       |  17 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 443 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_hdmi.h     |   2 +
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |   7 +
>  drivers/gpu/drm/i915/i915_reg.h               |  33 +-
>  include/drm/display/drm_scdc.h                |  23 +
>  include/drm/display/drm_scdc_helper.h         |  21 +
>  include/drm/drm_edid.h                        |   2 +
>  15 files changed, 1052 insertions(+), 21 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h

Does anybody know why this wasn't pursued further? I can't find anything
about FRL support in i915 as far as 6.18. Is it HDMI forum again? Is
there even anything left to hide at this point?
