Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C59695B32B5
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 11:03:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B03F210EC15;
	Fri,  9 Sep 2022 09:03:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F7D010EC15
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 09:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662714203; x=1694250203;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=z1K2WZ/orPD7rVPCRHAOawjs0goQGG5AQXgx878NWCY=;
 b=HB5YAktHsLXbSlMi+jAevkG30EOdJxrOfqvsday8btzUOHMl0eORSvT1
 NX5XEvEoqyCxVl+4QMnG5WQUFlmPlpM+/7wSiCclR10wuDqkbT30LuMJi
 b42bMzjFiVRZqRb84Dy/N0HdOvcs+Rb6PmLhv124t+cnU47OWfHfrsD4C
 aPx3Cpez6ePHDMGGaB0HFxQ0FEateNphxcgGAt8j+2aXIKfBf2opZLY/3
 8B+5WoJTrySHAsPqVHVB8BaaGWSdWB4RJiXWR4tTeuoV66vMvvqXVGjPV
 0qCFxWUHnv51xOwyj3dFQPSujI93M7UyvbSb3IFith+rvdj56kpeEXxDS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="284451687"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="284451687"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 02:03:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="566301525"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 09 Sep 2022 02:03:23 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 02:03:22 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 02:03:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 9 Sep 2022 02:03:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 9 Sep 2022 02:03:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k/pbot6638hvRTHZXRSgUYjexklARcRiB+8LwCO+nqSkJCDeM+0kmY7ul2fvHSOqiywdr35VhJzbuiy8P3Htp7JUsYaAuAyP4gYRYKNFveSG8sUdksaoX072uLh6YKXQk1lyBRlKdePcNa8vmz2+jvxVIHsZ5rGeUqoCS8tjPbpeWhtYn39Szw5e3dn9GahCpnlHFu9a+CL7KZ4cVcgDfVF6irsFKMbpTU2xvgoM/rLbKfJSc7SAg7WIMdGIEe9j9igSQZoHKzybDaN+Nic+4vgTS4yH4zif1dAsW6y+W/POmiwWfSN+wtHOIJUpTrNtg9A+3UlPQq6V/Xvg/ABBxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jtCYDIrhlCeLehohGilkl6G0bWuohkXS600h0WNxIt4=;
 b=dPos2L2OcLU3orCFKKUmcNmtMgGJJOCC5JsQGfGZfZnSz9xoCWXCDwvi5zGylg3MfKAzvlnPGzeAVsn6sugERt1lZXnaJKbRL9R5Mm3qe73BtAKxIK6GVSvWD3q84Sq62FqblaJABpOs1PsDbNxmdOTReO9p21JRdryTkgXk2f/iNHUE9J5QkFvF5ajY+wxjH+z7C9ce8Z7p+uQ15LP2vW5DhQOL0K3JeRt03RjzBsdEEyGL8TwGWTwoBT3ifsG+bqy8i35OYxrrlPujXz6wcZbY+AyhoKSYKk7Rw3E5jKqQ1KyXoCQdrzq1d9mT5vCxoK0vAG0o56NrH8oXgBCWPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 PH0PR11MB5644.namprd11.prod.outlook.com (2603:10b6:510:ef::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.19; Fri, 9 Sep 2022 09:03:19 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3083:6b7c:8c2a:c200]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3083:6b7c:8c2a:c200%5]) with mapi id 15.20.5588.018; Fri, 9 Sep 2022
 09:03:19 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 1/3] drm/i915: Define WD trancoder for i915
Thread-Index: AQHYtf+40s+GjcLnfkibd/8R/c1yS63Wx0hAgAAiJICAAABYkA==
Date: Fri, 9 Sep 2022 09:03:19 +0000
Message-ID: <DM6PR11MB3177A5D6C18F30CC270E31C1BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220822081642.159908-1-suraj.kandpal@intel.com>
 <20220822081642.159908-2-suraj.kandpal@intel.com>
 <DM6PR11MB3177686D56259B3554812B48BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87h71g7wh2.fsf@intel.com>
In-Reply-To: <87h71g7wh2.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 89fd6020-7cf5-42c8-753a-08da924223be
x-ms-traffictypediagnostic: PH0PR11MB5644:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HQW9uCS3zsAyU+INopF67eXQvtJGs/vlQQ0ai7Qqyt6YdimQSTPtF6NgupdlVR14Y/fUxNCjFEpJg++qjjIwMwroGC6wDqbkAaILT664mRe2RK6adA/9AVZmmovGue0TTZAlYX4twso7r3Hyt0niWmqgOER3Qzso//WXJh2+KBGBjgQveKnxAE00nsaNrMWmtBwdhFoIFnhuph0UJiU3oS4aKVYy+H8Qyntfg8biiPPeBdzw+0ZLHXGN4ul1nsHyhy69k9V3CZ8z9F90X1gtM7X2osJxShJEEPTV+q8HhJEEzmhiAHlwe7+OI/esO1fJy/ve5pAvyaS7mVMVILYHSXJeAZnomK2LHT3T/WzIUAwQWm67hNK5U12R1ZAKwGFHHFRML9dyNsgOMBZDxAXribR/LouGBkMlarCaK0o3EGArAechmjAPyMBhibcIiP4aHrGI7JV4j5B7/cmbLF27tOxWC1tKiLEPpSaGAGEAuRh7jjOoHe20T293mvCxRZqQDztReDcTMlJC8cNGTfqFdTy19JmsTbVGDug/kFL6FFsVAiy+bPqQPv1/7wEGTZ9Wr7Cr8qk8XmQAN0G+U42kI0D5JmQ2sptzpd7jstVtXFnMqx7d8dqYkSpxS+DtQ9Y6Om5C9/J7XwE+kqmnT3ylxwIOYP+CggYAolM6sW9JtxvHf/SymD3lmz70zNIJUQ7PzJUGH2h6kspQZPzU1CjCfiFoQhzMbR2WeB2Pe6IzFdocPO18IF6iGlM3sZzqIhIf8QFQyKxFsk0rnpPQGnL8bA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(396003)(376002)(366004)(346002)(2906002)(66556008)(5660300002)(8936002)(55016003)(6506007)(26005)(38100700002)(9686003)(41300700001)(7696005)(33656002)(38070700005)(76116006)(66946007)(66476007)(66446008)(64756008)(52536014)(8676002)(82960400001)(86362001)(316002)(110136005)(478600001)(186003)(71200400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8fmjt4A6GnEHqqflaKbSWm7id5HwIFmhp/Emv9YYGQ+evxsOWAnwgoyUm8am?=
 =?us-ascii?Q?kSWcd2grTqc45dw9ALVqekJeFKA8LWmf7AK6FpSfmvaN2pIzd+N1Yl/rwdjD?=
 =?us-ascii?Q?nuezjiaeOYboLx5SQiyPKZQRH4B2qcxon/u66t+etBUb/nXYDwkwY9Tu5LCp?=
 =?us-ascii?Q?0ov/14K5oS8JAaU+I85uYKbBQuSe0WPRNTDQTihJ0q1IIbav5WCEH/SWMAtU?=
 =?us-ascii?Q?fXCzcQYtf1oGHPWwDPnM40WeluK0zip0Fznygb9kG9h7f+UNkh5g83T5Q+AH?=
 =?us-ascii?Q?LdkdihKDkRwxXReAXN1mN8ca+z019r0acg/6G4ktiZHdbVvgsDtlPgUT/xv1?=
 =?us-ascii?Q?T6zSZmUDZjzABiPDsh7ngKHPT6Mc3C/idxPFO79zc1J1A6TnjPuorx4vVnIz?=
 =?us-ascii?Q?7qIbH9pGtN1gl4H2SZpv80aw/j6KS5p3h/3mJFLSAPeNjfDEZfKFYgcTN8Uk?=
 =?us-ascii?Q?w3DXneJ10tbNKkz2l6LhDyeO3dtWyCayxozLiZ0Tbm6j49YIUEE1zUGF7E7R?=
 =?us-ascii?Q?ketwDYUcEH52zws1kvXe6p5HZdbeYfpbSg5ERRFP9cy93swtRxDduHPgMuxA?=
 =?us-ascii?Q?A+CGk8fa2aVpMjmca4gB2B+aH6KUyMfbaM1/m+s9cnaeR0DHee6TgNhzr1ug?=
 =?us-ascii?Q?uOhCFO1dlmLReexIwOOfrf3nUGZTNgs1iZZPc14gh1oo4hKoAQUXYS0Ogbk5?=
 =?us-ascii?Q?SmlLm93Yis7wlaelVch+zzz7C6s7qg5bcglUf8+LJPmP6MQRAOxvLCk9VuF4?=
 =?us-ascii?Q?xZA4/h2Ukr0TwHiDxys0aELyuAlZNEdWmJfIr7tCpSnr/IM/HMsbn55V283+?=
 =?us-ascii?Q?1ZUuX2ngfj4EzRYtYdx/B5gr52KPAgx3b3lxHQulrl3gdBzX0Aj0qgmPBLDQ?=
 =?us-ascii?Q?z5fs/yxU8tywo7igW0qWRET0nC/X+K5SkV6OABiW8XB2K4TsdF3LRa9DR70k?=
 =?us-ascii?Q?8hQ1Cc1CBFGm3BMTVRCq8Js4lOX4H1OL8BdJ0CUOBMrlkeYsuwY+piXan0/H?=
 =?us-ascii?Q?1/HXDS0htk1PM10kWfbH06PPiVf/+xuZZddsn7+VOB5Hx8Lh624VZ8n3Uzxs?=
 =?us-ascii?Q?VV9VcXpo8mKbgdwElwizW3IdsNUz4HiLPc9uUPDxLUcmIWxH9qQUEc8y6ewP?=
 =?us-ascii?Q?R61aGmP2tcRvEeu4xwDCzBoasVmOFwBi2uKWpzFJy8vH90gAmnzdlBm5V301?=
 =?us-ascii?Q?JG4q9Nzv4HQ2rFPTi76VEAWi7Eon610KSh9HVBgKDjfFkkcX10SiZoaMQEKK?=
 =?us-ascii?Q?pyducWPXWyl0CKrmLJZzyiJ0jS+qpSOj/3/PSRNj1bytGzpYOr3hnxi7BISm?=
 =?us-ascii?Q?+FwzB7xjxWyV1ukuR/po7+U4GDq3jbGaRkK/oLgN6JmiOJhAFO/I6mdAaUI7?=
 =?us-ascii?Q?y0mEimkwEAsPjduHkxuCRLCLP/xHNPlHNGTQgEV0lZuxuENzn3u8eERKSMch?=
 =?us-ascii?Q?V37RB1d7VbIayTewbPtKjujQKng+U4iaJ+bMcfsgoQmF4J4HsvOloP37Bjis?=
 =?us-ascii?Q?Tk5wdLqkZ4QJZorTIXzn2q7664s9S5d2cHeWUpQAj201Nts007IBJCf0JZNn?=
 =?us-ascii?Q?vQ2z40RJ9u0EK4M+WX78QXfthZGDkYs2WuPiffLU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89fd6020-7cf5-42c8-753a-08da924223be
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2022 09:03:19.0902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eQki9SD2r437dRDl8UGfqxzoafGmm4pRptWsrGAk4y9PJg77XsfJucmIjHwxdzg6EyhH8EY6aJXOZ56/2/HsqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5644
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Define WD trancoder for
 i915
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

> On Fri, 09 Sep 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> From: Suraj Kandpal <suraj.kandpal@intel.com>
> >>
> >> Adding WD Types, WD transcoder to enum list and WD Transcoder
> offsets.
> >> Adding i915 register definitions related to WD transcoder
> >>
> >> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_display.h  |   6 +
> >>  .../drm/i915/display/intel_display_types.h    |   1 +
> >>  drivers/gpu/drm/i915/i915_reg.h               | 139 +++++++++++++++++=
+
> >>  3 files changed, 146 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> >> b/drivers/gpu/drm/i915/display/intel_display.h
> >> index fa5371036239..4e9f22954a41 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> >> @@ -120,6 +120,8 @@ enum transcoder {
> >>  	TRANSCODER_DSI_1,
> >>  	TRANSCODER_DSI_A =3D TRANSCODER_DSI_0,	/* legacy DSI */
> >>  	TRANSCODER_DSI_C =3D TRANSCODER_DSI_1,	/* legacy DSI */
> >> +	TRANSCODER_WD_0,
> >> +	TRANSCODER_WD_1,
> >>
> >>  	I915_MAX_TRANSCODERS
> >>  };
> >> @@ -141,6 +143,10 @@ static inline const char *transcoder_name(enum
> >> transcoder transcoder)
> >>  		return "DSI A";
> >>  	case TRANSCODER_DSI_C:
> >>  		return "DSI C";
> >> +	case TRANSCODER_WD_0:
> >> +		return "WD 0";
> >> +	case TRANSCODER_WD_1:
> >> +		return "WD 1";
> >>  	default:
> >>  		return "<invalid>";
> >>  	}
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> index 0da9b208d56e..0e94bd430bcb 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> @@ -79,6 +79,7 @@ enum intel_output_type {
> >>  	INTEL_OUTPUT_DSI =3D 9,
> >>  	INTEL_OUTPUT_DDI =3D 10,
> >>  	INTEL_OUTPUT_DP_MST =3D 11,
> >> +	INTEL_OUTPUT_WD =3D 12,
> >>  };
> >>
> >>  enum hdmi_force_audio {
> >> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> >> b/drivers/gpu/drm/i915/i915_reg.h index bf5c39d9f953..e3fced4b9980
> >> 100644
> >> --- a/drivers/gpu/drm/i915/i915_reg.h
> >> +++ b/drivers/gpu/drm/i915/i915_reg.h
> >> @@ -2059,6 +2059,8 @@
> >>  #define TRANSCODER_EDP_OFFSET 0x6f000
> >>  #define TRANSCODER_DSI0_OFFSET	0x6b000
> >>  #define TRANSCODER_DSI1_OFFSET	0x6b800
> >> +#define TRANSCODER_WD0_OFFSET	0x6e000
> >> +#define TRANSCODER_WD1_OFFSET	0x6e800
> >>
> >>  #define HTOTAL(trans)		_MMIO_TRANS2(trans, _HTOTAL_A)
> >>  #define HBLANK(trans)		_MMIO_TRANS2(trans, _HBLANK_A)
> >> @@ -3831,6 +3833,11 @@
> >>  #define PIPE_DSI0_OFFSET	0x7b000
> >>  #define PIPE_DSI1_OFFSET	0x7b800
> >>
> >> +/* WD 0 and 1 */
> > Can this be changed to
> > /* WD offset */
>=20
> Nah, the comments should be removed altogether, they add zero value.
> That's literally what the macro name says already.
>=20
That should be best!
Please remove this.

Thanks and Regards,
Arun R Murthy
-------------------
l Open Source Graphics Center
