Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F15D8BFC8B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 13:45:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBB23112835;
	Wed,  8 May 2024 11:45:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AwDyz1/Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 058D7112835
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 11:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715168717; x=1746704717;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Z2+oS4Ans8JqBprbt8lhZ5VM4SNNrnzMJHmgefB0DiE=;
 b=AwDyz1/YCvGlj8So8qPXaCr25mhzBHqNKBDjpTViAEVjj0Oml/bZ4eer
 tT5GV3eiYcDvALc2Uu2HCNPYwV/PcIWUzdbx1RSoaz/vdVsiopav4WQ9S
 KaofwX2zZkB+gBqNHiaCX7g5xnbnpAgVuwAdrwxWiwDdp/fempSQsjjcc
 qEgDb8dHWD4P5bvAjkDgfFTgXBDqooimtzJP3gNFkFCvL16XqBYXH/NXO
 O9ZePdml970ssazgZqsUTe0Riv/nuCdJO38yoyD1y0gs3FFeaXf0n8MWK
 G6XZLKyHlsmxSHNcQYTEKVypNUTUvrTIowrfYQ01tHcQ50q1x6B6wfMOs g==;
X-CSE-ConnectionGUID: u9Cq8vh1Rui7ISOzCAkLSg==
X-CSE-MsgGUID: iEaLtZQ1SqaRv7jwAprbSA==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="11234268"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="11234268"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 04:45:17 -0700
X-CSE-ConnectionGUID: S35w54SuRoCUdApyHuxSMg==
X-CSE-MsgGUID: F9EBuTF0SeeggaJXrlMq5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="33697459"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 04:45:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Rodrigo
 Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com, Bjorn Helgaas
 <bhelgaas@google.com>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/5] drm/i915: don't include CML PCI IDs in CFL
In-Reply-To: <ZjtapMK6kadLqHCN@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1715086509.git.jani.nikula@intel.com>
 <bebbdad2decb22f3db29e6bc66746b4a05e1387b.1715086509.git.jani.nikula@intel.com>
 <Zjow5HXrXpg2cuOA@intel.com> <ZjtapMK6kadLqHCN@intel.com>
Date: Wed, 08 May 2024 14:45:10 +0300
Message-ID: <87o79gjznd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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

On Wed, 08 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, May 07, 2024 at 09:47:16AM -0400, Rodrigo Vivi wrote:
>> On Tue, May 07, 2024 at 03:56:48PM +0300, Jani Nikula wrote:
>> > It's confusing for INTEL_CFL_IDS() to include all CML PCI IDs. Even if
>> > we treat them the same in a lot of places, CML is a platform of its ow=
n,
>> > and the lists of PCI IDs should not conflate them.
>> >=20
>> > Cc: Bjorn Helgaas <bhelgaas@google.com>
>> > Cc: linux-pci@vger.kernel.org
>> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> > ---
>> >  arch/x86/kernel/early-quirks.c                      |  1 +
>> >  drivers/gpu/drm/i915/display/intel_display_device.c |  1 +
>> >  include/drm/i915_pciids.h                           | 12 +++++++-----
>> >  3 files changed, 9 insertions(+), 5 deletions(-)
>> >=20
>> > diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-qu=
irks.c
>> > index 59f4aefc6bc1..2e2d15be4025 100644
>> > --- a/arch/x86/kernel/early-quirks.c
>> > +++ b/arch/x86/kernel/early-quirks.c
>> > @@ -547,6 +547,7 @@ static const struct pci_device_id intel_early_ids[=
] __initconst =3D {
>> >  	INTEL_BXT_IDS(&gen9_early_ops),
>> >  	INTEL_KBL_IDS(&gen9_early_ops),
>> >  	INTEL_CFL_IDS(&gen9_early_ops),
>> > +	INTEL_CML_IDS(&gen9_early_ops),
>> >  	INTEL_GLK_IDS(&gen9_early_ops),
>> >  	INTEL_CNL_IDS(&gen9_early_ops),
>> >  	INTEL_ICL_11_IDS(&gen11_early_ops),
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/dri=
vers/gpu/drm/i915/display/intel_display_device.c
>> > index 56a2e17d7d9e..3aa7d1cdd228 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>> > @@ -832,6 +832,7 @@ static const struct {
>> >  	INTEL_GLK_IDS(&glk_display),
>> >  	INTEL_KBL_IDS(&skl_display),
>> >  	INTEL_CFL_IDS(&skl_display),
>> > +	INTEL_CML_IDS(&skl_display),
>> >  	INTEL_ICL_11_IDS(&icl_display),
>> >  	INTEL_EHL_IDS(&jsl_ehl_display),
>> >  	INTEL_JSL_IDS(&jsl_ehl_display),
>> > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
>> > index 85ce33ad6e26..5f52c504ffde 100644
>> > --- a/include/drm/i915_pciids.h
>> > +++ b/include/drm/i915_pciids.h
>> > @@ -472,6 +472,12 @@
>> >  	INTEL_VGA_DEVICE(0x9BCA, info), \
>> >  	INTEL_VGA_DEVICE(0x9BCC, info)
>> >=20=20
>> > +#define INTEL_CML_IDS(info) \
>> > +	INTEL_CML_GT1_IDS(info), \
>> > +	INTEL_CML_GT2_IDS(info), \
>> > +	INTEL_CML_U_GT1_IDS(info), \
>> > +	INTEL_CML_U_GT2_IDS(info)
>> > +
>> >  #define INTEL_KBL_IDS(info) \
>> >  	INTEL_KBL_GT1_IDS(info), \
>> >  	INTEL_KBL_GT2_IDS(info), \
>> > @@ -535,11 +541,7 @@
>> >  	INTEL_WHL_U_GT1_IDS(info), \
>> >  	INTEL_WHL_U_GT2_IDS(info), \
>> >  	INTEL_WHL_U_GT3_IDS(info), \
>> > -	INTEL_AML_CFL_GT2_IDS(info), \
>> > -	INTEL_CML_GT1_IDS(info), \
>> > -	INTEL_CML_GT2_IDS(info), \
>> > -	INTEL_CML_U_GT1_IDS(info), \
>> > -	INTEL_CML_U_GT2_IDS(info)
>> > +	INTEL_AML_CFL_GT2_IDS(info)
>>=20
>> Why only CML and not AML and WHL as well?
>
> Why do we even have CML as a separate platform? The only difference=20
> I can see is is that we do allow_read_ctx_timestamp() for CML but
> not for CFL. Does that even make sense?

git blame tells me:

5f4ae2704d59 ("drm/i915: Identify Cometlake platform")
dbc7e72897a4 ("drm/i915/gt: Make the CTX_TIMESTAMP readable on !rcs")

BR,
Jani.

--=20
Jani Nikula, Intel
