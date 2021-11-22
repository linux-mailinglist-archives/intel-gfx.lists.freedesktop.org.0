Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FC6458F72
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 14:33:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B668959D;
	Mon, 22 Nov 2021 13:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9214C6E176
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 13:32:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="298196244"
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="298196244"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 05:32:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="596278863"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2021 05:32:56 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 05:32:55 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 22 Nov 2021 05:32:55 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 22 Nov 2021 05:32:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wt5gTuaef+BUDyftkhqusVQHYocekAZmlyDsP73G4mB0T/as9FllaRoiLWk7Z841hUpQTtGWYMybhEP/rqO/++3Jmkwp7eTy4P2A/yhUH1RCaJKyYT+7HuxDGjyYnU0r3ayk9J6gVW34V+Gb+MpEv75q+AWPYmX4RnDDQ6Aj1FFQmGEFwbpoWbdDtM+aaVT6+DjdqFJi4FqP3OAa0WGTKZiJ6tb+BlSav+VAuJG4snsrRR2I+0Z9S9GHk2dvHT6ACuwkBZpde70Azr5dArwYyprcie8q3cYbQ7lRFggS3RUGxvBRzGyp+FjinJj+4I2e9Ty6ErYmvLYn2WOI06xqsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DTFRodmYF4zPj6lm9QmF6KWTTAghpjOkvxNTe07rAM0=;
 b=RQTw08DDZx6G5nXFfTQhfAzMLGH4j9Hj61upcPk3K9sZaZ518xZfY1G1LvnUx6vLH4D9UoWBnPftRKkpKlto/sq5+XbtuMQ14hk88dZbrZKrT1dNeQVqQitygxLjaIbPEGD++snfJlUjn71H3YY+leFBNNVFLa8w9RC5mjM1mnMCK+5kvUDKYI90D9KGzm5Cw0BNK0KqTHjq7g/oXd3FwXilaJVjmFE2upBdeQARW3sxAEnpoe8aRMmt/AdJvdJce2ySQi4BwXnjAgQJj1HLPXTEAj1/RA7KxROc8IgPuXNRh9f2PGbOKOBeKYv2ikJem7kqY8V7yNCgMNpMn0MmgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DTFRodmYF4zPj6lm9QmF6KWTTAghpjOkvxNTe07rAM0=;
 b=Tn798j+Bf1VKwRpwQFNZ0sN8jAFiC6bEEpM5GL+HpmbmYP2OUf9vm+OH0GKQEiD+N0nGamR3Lxdh+KN8h+lqhZQF6OmoOc/k+gqiXEk42eaFD7MOvdujtblWPytajuErZi+I8VDJMsMIPQKSp43EMJ9cKAje0gjWDOrP7fF17KQ=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5586.namprd11.prod.outlook.com (2603:10b6:5:35d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Mon, 22 Nov
 2021 13:32:54 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::4c98:111b:1f1e:898f]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::4c98:111b:1f1e:898f%6]) with mapi id 15.20.4649.015; Mon, 22 Nov 2021
 13:32:54 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/adl_p: Add adl-p ddc pin mapping
Thread-Index: AQHX24X3tel7DZOmq0GfipYbhIyXBqwPksnw
Date: Mon, 22 Nov 2021 13:32:54 +0000
Message-ID: <CO6PR11MB5651B58030DB1B5F0DB0E258A39F9@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20211117074143.23324-1-shawn.c.lee@intel.com>
In-Reply-To: <20211117074143.23324-1-shawn.c.lee@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 16718a2b-894e-4111-e456-08d9adbc96f1
x-ms-traffictypediagnostic: CO6PR11MB5586:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CO6PR11MB558664233010BC4B598EFDFEA39F9@CO6PR11MB5586.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6ssm0MkbdqMExr1gwyfSCQ9kx9nhl+cRW5TdrkPrYfpgVMicwykwUbiDyUFTvaPQ38OPEFBoCfcKspoISQTYKw5XkC2UY5sinex9vLSHJTFXar7HlR8L9kWRCVcLNrGl5uNu8D3M0m+9ry4nh0TsN+mP2lr5pO/5N4qkwPK1cwddDTdz2peliul8B4A8A+w56noYsTDM/YxxZAPYxas+G/w14BYon5k2h65oOk8coED5GnH+IBg0DupLHh0tznR9vDt0GgAaxSIZIlH7H53CdaYnQvVn3Z/NGg5F23eVOAa3X3snA+HMGvPzGbjK3lQ1uFLft7sKHq8LRYPGfpbUG0O505/h8PhEcDgQiH/rUuBgW6vbSMofeSqH9cpGB0jpMgfsOqeJIRkUH7VVaq4NwIgS+694w6VO5y+o2ETxq//lGu5QXgLeQLdQfiLzdYmVLdVqdCFc3xuE+UW93PdPeUVShIRVu5dWHed290r8l5P2RCur7wc0HtX5ZPudI7NMtcvfDI2pnvHzwgKNkOpFIqG9IW7AT3mSr5j6/26ALjkrf2aJaRMvCHT2SMwyN6RdYBLiE8Oj1zQCrILI2ujuyGvqbcbU2SUj8yore02bEqgQgETIuzpIQzhXxrDNC35xSmAqKRP2gUwU9VmKnhOt4AddJAhBs+FCf4XIp0LSF1ez1jY9IOd3P9NDmryWagEDYp1hcJ9za7w01QG3V+dUYA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(122000001)(5660300002)(9686003)(52536014)(55236004)(508600001)(54906003)(71200400001)(4326008)(7696005)(55016002)(6916009)(83380400001)(6506007)(26005)(82960400001)(76116006)(186003)(38070700005)(8676002)(66446008)(2906002)(66556008)(316002)(66946007)(8796002)(64756008)(66574015)(38100700002)(86362001)(66476007)(33656002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?FOo5tSADdJR16xNe2J5r+VuycIhVS/DZv7gV/K4UUsphHwD+thhDtPWUhk?=
 =?iso-8859-1?Q?rPv+QzSdqMk/UoF8KgDQHbYot3KvT8R4gPA/JqOmHrXrLg+PAZvTHYYpzJ?=
 =?iso-8859-1?Q?Y6yNw45MKlXSwkfdaMTHpMFbuCkehDIsUDsr4bUH7MGpZkpd24pCUqP8rY?=
 =?iso-8859-1?Q?3Bw9k0klDPIjAWQLKWG9UaNpPqbs/fqG6nMCkFiw692EyNJcgzxW9NUwMg?=
 =?iso-8859-1?Q?gAg0iyBSqYpPwwELY9F12sTtTO9SDRFnxZMe5MbF8/gYofP6/odNCSSoOq?=
 =?iso-8859-1?Q?T8A8tbr/W3l9IAZfRF78+ke4DfDs7X5SAySQb6Pt6RAqPQ2nXJ59v5aw2+?=
 =?iso-8859-1?Q?FEwr0zaJoEGa91aUNlmXcssVxzazkPidC2raug1diKb1VjdH16tBuDL8fd?=
 =?iso-8859-1?Q?bMcYHJr0OzDidDhaoJ0b26YM6YtFtl2Yvv04wl5FYoP1fPPnR+GVl1A+zx?=
 =?iso-8859-1?Q?VhKYoU+XYI3pfn81MS6lpEijAgoj369rVGMhsdZTfi3wFseiGoLh485XKq?=
 =?iso-8859-1?Q?N+rLB/R3VKUUg1zdpLzDgyMrabksKZ3nb5ZJm+OSYvc975zLa53Gip6E9k?=
 =?iso-8859-1?Q?omh4sRSN/0S0sXFFbATyq27LbNKQa/ukCWkY/o03tMHJttqdR/ZclZMkU4?=
 =?iso-8859-1?Q?p+juGXRI9+s9SMBbXb2S1NUjwTzxH7SnqiGB4aON6Jzshp/6mCVZbWmTyr?=
 =?iso-8859-1?Q?ADQKb7p2dxbM6z7Y+ZYFMbjU45aXBbWs3zecMKMI8HPV0XEKOTRW6EKzQt?=
 =?iso-8859-1?Q?5H6GAigaiHhnd18fFfRwRBFgZW4n9D7uuo+ltNssG5UfmmaD1ynSgoy1O0?=
 =?iso-8859-1?Q?yZZED8xTFjcXySvlacBZRanIe48hmH923q1wK9t4t65+EUjwfqoddAe3I+?=
 =?iso-8859-1?Q?VCayY1hp1OQmFTQ42hiO9ewPiohhx7SAqKrFIPnOT9gT2VtbfYQ/G3ey8g?=
 =?iso-8859-1?Q?qZ7blcQt7SARtrGesWQ9dpUi4m176+GVQIHQ/jZXcQVvetn2/SHN+r9vaH?=
 =?iso-8859-1?Q?ZQqChYyiP5Z5ccMQa8cc5ldClJTh8JmIiMqJjCWg7JcvwXCqisIrEsW6qy?=
 =?iso-8859-1?Q?Z2Jk1kyPcgqpZwZVAU8vpsO4RezCA7MIohobwsrpBPULy21JPQA4MdIT22?=
 =?iso-8859-1?Q?Uq9tG4k/OqtUnXTU81I7aI1vdYaCL6SVsov74pXanOMDNYgpYvBZbzVQ7x?=
 =?iso-8859-1?Q?SGbpEX5q8ge0E4JDIpY+5+j0cWQ4mvaVg4M1hhlHSfrg3tgek3ZNM1wM+b?=
 =?iso-8859-1?Q?y9dXMlhqdMVSN/5Qhg03dZrWmJUtz1L4KitbJPWcsqWTBhl85lJiaxUSY4?=
 =?iso-8859-1?Q?f6WK6hb0++V/SwYPZj1NAoHyLZvHoTBkFPC8PY87WmAaYHaVqBfw7MlZVK?=
 =?iso-8859-1?Q?v6Zr8Wjl0KWoxXFQy1all0HoUvQnBHd8x54JtrTKBJr5dk5225OJvqaBy3?=
 =?iso-8859-1?Q?PrOtORoyghcVbhogDeux6kDNuHdsFuYdow7l3EXYare/wq/LOJvflBUvGf?=
 =?iso-8859-1?Q?V7DZf+/YoVmAF0Ix+wtmNitoFqotdjaeg/dXC4ZNfRZevJAFzqU1zqJ+0Q?=
 =?iso-8859-1?Q?x3v6KjHJgf0CoeTbzq5E9sVhlx8eBwMY/L/oPPBa6/p6dmpkjpXjg1ifHF?=
 =?iso-8859-1?Q?dumtinSlaIgzMf6GQmIARS/Cu+umS9i6lyT7hCZeRDnv4Pg+jhY0Nliw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16718a2b-894e-4111-e456-08d9adbc96f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2021 13:32:54.6362 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JIkYQFonVOWwo19FAt8+1TYvk0nGcaoBwMiKqiWXu4OT/MgXX8gLiMoWg6qsUjbmA/3xlT/mq/aWjZCuekQ0vA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5586
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_p: Add adl-p ddc pin mapping
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
Reply-To: "20211117074143.23324-1-shawn.c.lee@intel.com"
 <20211117074143.23324-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>, "Tseng,
 William" <william.tseng@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi all,

May I have your comment for this patch? Thank you!

Best regards,
Shawn

>From VBT, ddc pin info suggests the following mapping:
>VBT                                    DRIVER
>DDI A->ddc_pin=3D1 should translate to PORT_A->0x1=20
>DDI B->ddc_pin=3D2 should translate to PORT_B->0x2
>TCP 0->ddc_pin=3D3 should translate to PORT_TC1->0x9
>TCP 1->ddc_pin=3D4 should translate to PORT_TC2->0xa
>TCP 2->ddc_pin=3D5 should translate to PORT_TC3->0xb
>TCP 3->ddc_pin=3D6 should translate to PORT_TC4->0xc
>
>Adding adl_p pin map to facilitate this translation
>as we cannot use existing icl ddc pin map due to
>DDI C is not available on adl-p platform.
>
>Bspec:20124
>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Cc: Imre Deak <imre.deak@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Cooper Chiou <cooper.chiou@intel.com>
>Cc: William Tseng <william.tseng@intel.com>
>Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_bios.c     | 12 ++++++++++++
> drivers/gpu/drm/i915/display/intel_vbt_defs.h |  6 +++++-
> 2 files changed, 17 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index 2b1423a43437..c1479e61f032 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -1549,6 +1549,15 @@ static const u8 adls_ddc_pin_map[] =3D {
> 	[ADLS_DDC_BUS_PORT_TC4] =3D GMBUS_PIN_12_TC4_ICP,  };
>=20
>+static const u8 adlp_ddc_pin_map[] =3D {
>+	[ICL_DDC_BUS_DDI_A] =3D GMBUS_PIN_1_BXT,
>+	[ICL_DDC_BUS_DDI_B] =3D GMBUS_PIN_2_BXT,
>+	[ADLP_DDC_BUS_PORT_TC1] =3D GMBUS_PIN_9_TC1_ICP,
>+	[ADLP_DDC_BUS_PORT_TC2] =3D GMBUS_PIN_10_TC2_ICP,
>+	[ADLP_DDC_BUS_PORT_TC3] =3D GMBUS_PIN_11_TC3_ICP,
>+	[ADLP_DDC_BUS_PORT_TC4] =3D GMBUS_PIN_12_TC4_ICP, };
>+
> static const u8 gen9bc_tgp_ddc_pin_map[] =3D {
> 	[DDC_BUS_DDI_B] =3D GMBUS_PIN_2_BXT,
> 	[DDC_BUS_DDI_C] =3D GMBUS_PIN_9_TC1_ICP, @@ -1563,6 +1572,9 @@ static u8=
 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
> 	if (IS_ALDERLAKE_S(i915)) {
> 		ddc_pin_map =3D adls_ddc_pin_map;
> 		n_entries =3D ARRAY_SIZE(adls_ddc_pin_map);
>+	} else if (IS_ALDERLAKE_P(i915)) {
>+		ddc_pin_map =3D adlp_ddc_pin_map;
>+		n_entries =3D ARRAY_SIZE(adlp_ddc_pin_map);
> 	} else if (INTEL_PCH_TYPE(i915) >=3D PCH_DG1) {
> 		return vbt_pin;
> 	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) =3D=3D PCH_TGP) {=
 diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/d=
rm/i915/display/intel_vbt_defs.h
>index a2108a8f544d..d5be01b983f4 100644
>--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>@@ -330,7 +330,11 @@ enum vbt_gmbus_ddi {
> 	ADLS_DDC_BUS_PORT_TC1 =3D 0x2,
> 	ADLS_DDC_BUS_PORT_TC2,
> 	ADLS_DDC_BUS_PORT_TC3,
>-	ADLS_DDC_BUS_PORT_TC4
>+	ADLS_DDC_BUS_PORT_TC4,
>+	ADLP_DDC_BUS_PORT_TC1 =3D 0x3,
>+	ADLP_DDC_BUS_PORT_TC2,
>+	ADLP_DDC_BUS_PORT_TC3,
>+	ADLP_DDC_BUS_PORT_TC4,
> };
>=20
> #define DP_AUX_A 0x40
>--
>2.17.1
>
