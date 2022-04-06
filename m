Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 068544F6BC7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 22:54:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5040D10E388;
	Wed,  6 Apr 2022 20:53:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 015C810E385
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 20:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649278438; x=1680814438;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EUWPpjYP8yZJ6gggk/nuGWsZrfvVfSpSfeyTC/X845U=;
 b=fbAkDYNffZ5XAeyaV1/pgazvCKNb7FqvEb5yU+AI/fi0b8L2DCHbQWP4
 Sh1DnwZbET1Ff3wIOShm5wNCC17gvx/yOsI4eoQuaHdeDFsganF4+Up0J
 f0VAUk2qBocfWwmHfWu3vVUmJeIjKP0hIopCniQVWmbClFqN/JTcHWqE+
 jQiGQV8tKdtcxB6I/dS3f8kZvKZbIbKXma3a7HVB2aJMsGyWrYfHhEFxb
 if71pxiPRKgpNQfpmSW2aBGSxY+2OQHAoulTYRI+HD9JDS9LTXIgwRKoU
 ZSE0dmILzzsne5p0FBts40JiOyEpzoTBOQb7NVs4DAaSrzbPj9hf9tMkF g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="248675689"
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="248675689"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 13:53:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="524089720"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga002.jf.intel.com with ESMTP; 06 Apr 2022 13:53:57 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Apr 2022 13:53:56 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Apr 2022 13:53:56 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2308.027;
 Wed, 6 Apr 2022 13:53:56 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dmc: Add MMIO range restrictions
Thread-Index: AQHYSREPDOLLoNL0skGRZsHFIgKPeqziEeYAgAEN4vCAAH/pgP//usYQ
Date: Wed, 6 Apr 2022 20:53:56 +0000
Message-ID: <79b46ab821c64ac69661f64a6cf18568@intel.com>
References: <20220405171429.3149199-1-anusha.srivatsa@intel.com>
 <20220405180242.naisj5g2edrhrfsi@ldmartin-desk2>
 <be86669330e24a448de8265fcc6eff81@intel.com>
 <20220406174627.ilsnfzjcojfxribe@ldmartin-desk2>
In-Reply-To: <20220406174627.ilsnfzjcojfxribe@ldmartin-desk2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Add MMIO range restrictions
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Wednesday, April 6, 2022 10:46 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Add MMIO range restriction=
s
>=20
> On Wed, Apr 06, 2022 at 10:16:55AM -0700, Anusha Srivatsa wrote:
> >
> >
> >> -----Original Message-----
> >> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> >> Sent: Tuesday, April 5, 2022 11:03 AM
> >> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> >> Cc: intel-gfx@lists.freedesktop.org
> >> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Add MMIO range
> >> restrictions
> >>
> >> On Tue, Apr 05, 2022 at 10:14:29AM -0700, Anusha Srivatsa wrote:
> >> >Bspec has added some steps that check for DMC MMIO range before
> >> >programming them.
> >> >
> >> >v2: Fix for CI failure for v1
> >> >
> >> >Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >> >Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> >> >---
> >> > drivers/gpu/drm/i915/display/intel_dmc.c | 42
> >> ++++++++++++++++++++++++
> >> > 1 file changed, 42 insertions(+)
> >> >
> >> >diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> >> >b/drivers/gpu/drm/i915/display/intel_dmc.c
> >> >index 257cf662f9f4..05d8e90854ec 100644
> >> >--- a/drivers/gpu/drm/i915/display/intel_dmc.c
> >> >+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> >> >@@ -103,6 +103,18 @@ MODULE_FIRMWARE(BXT_DMC_PATH);
> >> > #define DMC_V1_MAX_MMIO_COUNT		8
> >> > #define DMC_V3_MAX_MMIO_COUNT		20
> >> > #define DMC_V1_MMIO_START_RANGE		0x80000
> >> >+#define TGL_MAIN_MMIO_START		0x8F000
> >> >+#define TGL_MAIN_MMIO_END		0x8FFFF
> >> >+#define TGL_PIPEA_MMIO_START		0x92000
> >> >+#define TGL_PIPEA_MMIO_END		0x93FFF
> >> >+#define TGL_PIPEB_MMIO_START		0x96000
> >> >+#define TGL_PIPEB_MMIO_END		0x97FFF
> >> >+#define TGL_PIPEC_MMIO_START		0x9A000
> >> >+#define TGL_PIPEC_MMIO_END		0x9BFFF
> >> >+#define TGL_PIPED_MMIO_START		0x9E000
> >> >+#define TGL_PIPED_MMIO_END		0x9FFFF
> >> >+#define ADLP_PIPE_MMIO_START		0x5F000
> >> >+#define ADLP_PIPE_MMIO_END		0x5FFFF
> >> >
> >> > struct intel_css_header {
> >> > 	/* 0x09 for DMC */
> >> >@@ -374,6 +386,30 @@ static void dmc_set_fw_offset(struct intel_dmc
> >> *dmc,
> >> > 	}
> >> > }
> >> >
> >> >+static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc, const
> >> >+u32 *mmioaddr,
> >> >+u32 mmio_count)
> >> >+{
> >> >+	struct drm_i915_private *i915 =3D container_of(dmc, typeof(*i915),
> >> dmc);
> >> >+	int i;
> >> >+
> >> >+	if (IS_DG2(i915) || IS_ALDERLAKE_P(i915)) {
> >> >+		for (i =3D 0; i < mmio_count; i++) {
> >> >+			if (!((mmioaddr[i] >=3D TGL_MAIN_MMIO_START &&
> >> mmioaddr[i] <=3D TGL_MAIN_MMIO_END) ||
> >> >+			      (mmioaddr[i] >=3D ADLP_PIPE_MMIO_START &&
> >> mmioaddr[i] <=3D ADLP_PIPE_MMIO_END)))
> >> >+				return false;
> >> >+		}
> >> >+	} else if (IS_TIGERLAKE(i915) || IS_DG1(i915) ||
> >> IS_ALDERLAKE_S(i915))
> >> >+		for (i =3D 0; i < mmio_count; i++) {
> >> >+			if (!((mmioaddr[i] >=3D TGL_MAIN_MMIO_START &&
> >> mmioaddr[i] <=3D TGL_MAIN_MMIO_END) ||
> >> >+			      (mmioaddr[i] >=3D TGL_PIPEA_MMIO_START &&
> >> mmioaddr[i] <=3D TGL_PIPEA_MMIO_END) ||
> >> >+			      (mmioaddr[i] >=3D TGL_PIPEB_MMIO_START &&
> >> mmioaddr[i] <=3D TGL_PIPEB_MMIO_END) ||
> >> >+			      (mmioaddr[i] >=3D TGL_PIPEC_MMIO_START &&
> >> mmioaddr[i] <=3D TGL_PIPEC_MMIO_END) ||
> >> >+			      (mmioaddr[i] >=3D TGL_PIPED_MMIO_START &&
> >> mmioaddr[i] <=3D TGL_PIPEC_MMIO_END)))
> >> >+				return false;
> >>
> >> wonder if we should check for each pipe DMC range independently
> >> rather than just checking all the ranges.
> > Can convert this to a switch case in that scenario. "If it is PIPE A th=
en it must
> be within this range". But it will be 2 switches one for DG2 and ADLP and=
 one
> for TGL and the rest which have individual ranges for every pipe.
>=20
> I was thinking more about like this:
>=20
> #define _TGL_PIPEA_MMIO	0x92000
> #define _TGL_PIPEB_MMIO	0x96000
> #define TGL_PIPE_MMIO(pipe)	_MMIO_PIPE(pipe, _TGL_PIPEA_MMIO,
> _TGL_PIPEB_MMIO)
> #define TGL_PIPE_MMIO_SIZE	0x1000

Hmm, does it make sense to add something like:

#define DMC_MMIO(dmc_id)	_MMIO(_PICK(DMC_ID, DMC_FW_MAIN, DMC_FW_PIPEA, DMC=
_FW_PIPEB, DMC_FW_PIPEC, DMC_FW_PIPED)

> This of course means that each blob is supposed to update only addresses
> on their own ranges. Is this true? Do we care?

Yes, pipe A will update its own range and so on.
=20
> >
> >> >+	}
> >> >+	return true;
> >> >+}
> >> >+
> >> > static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
> >> > 			       const struct intel_dmc_header_base
> >> *dmc_header,
> >> > 			       size_t rem_size, u8 dmc_id) @@ -443,6 +479,12
> @@ static
> >> >u32 parse_dmc_fw_header(struct intel_dmc
> >> *dmc,
> >> > 		return 0;
> >> > 	}
> >> >
> >> >+	if (dmc_header->header_ver =3D=3D 3) {
> >>
> >> this also needs to be done for ver 2
> >For v2 though there has been no update about the start range. As in this
> mmio range is different from the RAM_MMIO_START range.
>=20
> it is the same situation as v3. We read it from firmware. Why do you simp=
ly
> trust the value in v2 but you don't trust it in v3? You removed the check=
 in
> 3d5928a168a9 ("drm/i915/xelpd: Pipe A DMC plugging")
>=20
>          for (i =3D 0; i < mmio_count; i++) {
> -               if (mmioaddr[i] < DMC_MMIO_START_RANGE ||
> -                   mmioaddr[i] > DMC_MMIO_END_RANGE) {
> -                       drm_err(&i915->drm, "DMC firmware has wrong mmio =
address
> 0x%x\n",
> -                               mmioaddr[i]);
> -                       return 0;
> -               }
>                  dmc_info->mmioaddr[i] =3D _MMIO(mmioaddr[i]);
>                  dmc_info->mmiodata[i] =3D mmiodata[i];
>          }
>=20
> I remember mentioning this during review, but let it pass.

Thanks for the above patch, will do the needful.

Anusha
> Lucas De Marchi
>=20
> >
> >Anusha
> >
> >> Lucas De Marchi
