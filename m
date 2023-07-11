Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F26474EAF9
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 11:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B01710E352;
	Tue, 11 Jul 2023 09:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E877389343
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 09:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689068583; x=1720604583;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3j57e4B25WugnC23w5u0AmOnnitGNsOwU63DzyCJnaE=;
 b=SlCaTWUuU8gIjpkjia7XcA6zSnuCA9wJ8dxPELcItOHcfjVs2yQ8ZoJx
 h0PbU03h6pb9/qWqi19jz7aBprXXCZbyL+0umbRQYKKttK6csUr2ti/6E
 cD/OodaZ/iaYXrnsRSAwNi8TCCHCCN4atyALpvNXVCi3owaFsGNuqVX5L
 pc1598zjs1rvWUyk0gvD+8cQaAF2fsZl6aj4/11iTg6kHzTghIagLsBNy
 ckrE4YJfVShr+b+bpDEB4T55selkaucrnHqlmIpLE1q8/AkPnfNo80qH0
 yJeWTmiHAc9QMkhIv55Ga3ZgzpuKUYR+huehl484JUeAewVudFQosG+9f A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="354436579"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="354436579"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 02:43:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="791150484"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="791150484"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 11 Jul 2023 02:43:02 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 11 Jul 2023 02:43:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 11 Jul 2023 02:43:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 11 Jul 2023 02:43:01 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 11 Jul 2023 02:43:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QKM8YbnhHyQjuRwzL6BiLN6Gw0PXK4W/MXfLdAhI2oSZULnBwovX/acV7nTsWPo5zQp8pEj9W2mBZEZU3L6JzKjYv28n2JOAe/pRvSasQhWdvGlYY2CP3mWk1XbSph5rOdNECbCnlksKNpQf13lCf2aG8sIbUL5ULmQBOAgh6FTNKhWWoK8W2NLhTdXNFzVMB6/c554ghG4MbFfHb6P89mKNobTV2OSvln4sOAW7nwLG+WViaf/N9141YqBLLFQWfXgx197oIFXqm+NKje3iWwiVh8iX8EOmVzKl4B9IqDW9IDIYNdLxePOr7h+G75wbBOEQhZ2ZAMUz8rN3TOoMmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=swELLeFSa7abPZvoFr4ENoa06DdLwJharAyYWMc4n+c=;
 b=PrR8POGpgMb0FGEhUWeFFaAKPgoHg8xx8sP2vMYjZC6bDcDo/tSKUh1mhq8k1FDC8x2DG4R691hT81eRbzk+/euIy6XrV9lMf0Svi6Ty4/IK+bh+VzjLtFFeDgFzjVuEGSSlgIVn8vtYxkp/cc11yxNbhMtjnKgwgPtfJSMXFZ7v+ZiZG6rktudgn9ae342bYcg1kgQgQwELxAIx6tyYsfjQRiDZQIbje3avkAkG0SHCjJ2U2LJ9wg8W12Pe6kBMSL6IIKjBQ56ubiMSEzY3ys5CxtpPa0rajQHWiU6Y0FbP6P/NdNcdtz1jokKnnSWMiZVML5qJGhnvG0DCgAOYJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH3PR11MB8776.namprd11.prod.outlook.com (2603:10b6:610:1c1::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.31; Tue, 11 Jul
 2023 09:42:59 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6%4]) with mapi id 15.20.6544.024; Tue, 11 Jul 2023
 09:42:59 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/5] drm/i915/vdsc: Fill the
 intel_dsc_get_pps_config function
Thread-Index: AQHZsxbaE6aoyDKFSUeMdkYTgc91Y6+y2HMAgAFxoKA=
Date: Tue, 11 Jul 2023 09:42:59 +0000
Message-ID: <SN7PR11MB6750E7ADABEEED7E05766C8AE331A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230710100911.2736389-1-suraj.kandpal@intel.com>
 <20230710100911.2736389-5-suraj.kandpal@intel.com> <87wmz8hvgt.fsf@intel.com>
In-Reply-To: <87wmz8hvgt.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH3PR11MB8776:EE_
x-ms-office365-filtering-correlation-id: 0f09ca3d-f01f-491e-fab2-08db81f33644
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Js3OFRo951+75gAppiun7gMMu3CEjSwPWF50W5yILbUZXlAIl+bYqF3BIfbKUAiTQ/Uat7h8dCM83TnuZwwU+nQOpTkBCuZzFZZESZoTyUcpguykYQMLv2k/qBPbM9Y2UhvrF/UhKXCGo/j4GaXVV3PHJpHdqK7fQHjDcMlYCK0DXEOF28/ng01PVkD+wkZf9jjJM6r+xIF1UhC0qUH2dr0MAt/mCH4tnrCQxg4NcZAmjvmvSCFuDaPTxErOd6nh050YrZEn+AcSq4z7K1/+sHwK7AKmb3CzZxJyuAJyMpJsHL2TYlPnUoWUnENP/1BTqfbGy5sCIpGi1ZRmatZ6MXKhzyAQDEugXjy7xbIqv8CZFFPtKIRmlUQx1QHZM4KiUawauxukUIrNmWz6yxaWb8CrKjUUGTHpe9UXkMNwviFQKh0f8Q3a1s/rKoZM/fOKDR4sPK3QTwYDAmXr+Z8i6kZjN0q7qBHQ8f4V1x0zRZ2J/7TULIGqXKDhb5iPfDb8qHF/kO8Gks4cGr9O8DtMGpepCm785Td1uS2Muk872LeE84cBeWmh8vFn+TpiIX/auLT7oro1ty3ONVUHy+7P0oEJ0cgfFyWzDoHbCay7lkubzRe4PXg82mwhXmwofM2U
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(346002)(136003)(39860400002)(376002)(451199021)(478600001)(7696005)(71200400001)(33656002)(83380400001)(26005)(6506007)(186003)(55016003)(9686003)(316002)(2906002)(41300700001)(30864003)(38100700002)(82960400001)(122000001)(66476007)(66446008)(64756008)(66946007)(66556008)(76116006)(86362001)(8936002)(8676002)(38070700005)(5660300002)(52536014)(110136005)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5BMAzaFgcLU/6X8zX00OjUf0anUByBU2KEhgRKqu9opAVMFUtDsOKn1IohR9?=
 =?us-ascii?Q?KovGUBfxwI6pdBlbQg7LvgaR+LUQ1+l+jcW1Fz75DzYIJbnQV53Z/T368Mwn?=
 =?us-ascii?Q?G+bcro90LWGYmfSs1TvbOGIoK8L/FPfb0lwhuWwZKFaZ6FszkhviDWMX8gcF?=
 =?us-ascii?Q?Lk1jxKBrCevBdiUHDWNS9NWrnxSwICFDe/ULD4Uk+zUkthhYxB8PhVGNzfVI?=
 =?us-ascii?Q?0VN7oVLeZ3cYbqR4oRW/MbvAWaAgyul0LVDPBRUaDzXzU1suwQvIoOxTn4lg?=
 =?us-ascii?Q?NFVETK7ECt0mBDoKPVgAxpZ++t00McUxYM0CN+Q96Ls8wsidVI8pw+vt/TD1?=
 =?us-ascii?Q?1Q57L5pm1pM4ULKVsXSXHdrObwj/O+K3N22jajxxW0V2eCkzM7+qRKpi+0xD?=
 =?us-ascii?Q?dTXwA6pXRnnyla/tV1xnvxmBaKqGckM+XXUeCSDwNiF894/WNf23CLwxQ82L?=
 =?us-ascii?Q?lXqbRTqu3Fqm1CsEKAij+ZC77s40Ikvhz/H/Sn6LWnQvJvxqcN3NvLkQFri5?=
 =?us-ascii?Q?UdPocFVBu/CLMLBtC9TVNE/KUadOYzMh/h02YOtl8NZ6/07STP9SZWXMbis6?=
 =?us-ascii?Q?ViuV2Z3kA2+vbEmYHYOk6W+T1x1LBqi9Smnaue1cwCyET2JR1au9UEhl2ter?=
 =?us-ascii?Q?ah+DV9t48YZXVBdQ3OXM7K03lSgognAM5yQKsVjNdiWCOBtJR0hD/NfDA79A?=
 =?us-ascii?Q?S6v6ZJQTiPcbNN+b5ReFR1wXH7gBjv6H+BZTK5OWlblVTYBF2nLDLr7DDK0p?=
 =?us-ascii?Q?vJG/pBOPwYCckXJQhrcKRLEf3y5jaSQ8BZbsoJKekrJEfV2GTSO6Za/u5siH?=
 =?us-ascii?Q?KhGn9tfHlIjaQ65aPjc1lbnhy7+l2MNTKvlgSMo4DSYUDazcE56kK7q5GwVQ?=
 =?us-ascii?Q?X3tMStynJdxa4ax7ShAczM6xHK2yONibWDivLZYDF9XseAA+cp//12mmuBWW?=
 =?us-ascii?Q?ijqBSEK5Bm8A92auggy3btG6ZD0nat+yFtvJvgboomzfWp0Mc/ter/Ul50v+?=
 =?us-ascii?Q?RfFkeGBw6IXH0qXsVBYvF/pWHheqL6Dm67JWnoP2IG1+/vl+LriTXVA++pX2?=
 =?us-ascii?Q?8673g6FDQnlrgrOXHoyDycrxcnCScMZMlHVIoqDmQfQ8nZj3OsQMpFQKjgyt?=
 =?us-ascii?Q?BmHoktUwLUi8dagxE75oWic465ECxJlfJYT4UBO7NasdiMULkKKrT9IMkM09?=
 =?us-ascii?Q?c/D2NxCDSdiyA+WRwBQQq++Qc6QDpOWmn+HeJ3K5nzBbE7O1SGwVp48MZpw+?=
 =?us-ascii?Q?PWF8NmywEugV+tThJtarPGxTuF75XWPzvVx6PYKku+i4gzNHFHE8hQlCEmzt?=
 =?us-ascii?Q?xbyXmOhJ+K9ftVZeOYp2WasBjOvosi1ZF5n17L+45K6s8ZHO2tE5sa0BtIMF?=
 =?us-ascii?Q?1lZ9/zpSyJultMQm6lI/3e4FUf96KSvem3xbi36iJQ9NLylpXwK0pBjJ9mWd?=
 =?us-ascii?Q?aMzjQRG/8bChk+rXvfkXdlOoohMX7K8qCs3DBopu5I/7jz2eMAopZb3mo6j2?=
 =?us-ascii?Q?R6GvATV/6nxGUOvHiIkqzYGpyRmNn+hklMREBliQOdE7LjLaLiGpC9COY8hY?=
 =?us-ascii?Q?ygBE+hZVnsq2+VGTC3MRkz1BBSpQaAuK2YqkLvD2?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f09ca3d-f01f-491e-fab2-08db81f33644
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2023 09:42:59.0371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IaivFuGdMyEHDXJpNd8bjRlEmqxmBzwiZH+5Ewn8r7NKjkqegN2E5H+usDPq5hv+gGdHowpYozgZRN5FrkcXjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8776
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/vdsc: Fill the
 intel_dsc_get_pps_config function
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

> On Mon, 10 Jul 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > We have setup both the read and write functions so we can move ahead
> > and fill in all the readout state from PPS register into the
> > crtc_state so we can send it for comparision.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c     | 152 +++++++++++++++---
> >  .../gpu/drm/i915/display/intel_vdsc_regs.h    |  53 ++++--
> >  2 files changed, 172 insertions(+), 33 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index 274d82360c1a..a4f5b4aceb33 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -596,51 +596,51 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
> >  	/* Populate PICTURE_PARAMETER_SET_2 registers */
> >  	pps_val =3D 0;
> >  	pps_val |=3D DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
> > -		DSC_PIC_WIDTH(vdsc_cfg->pic_width /
> num_vdsc_instances);
> > +		DSC_PIC_WIDTH(vdsc_cfg->pic_width /
> num_vdsc_instances, true);
>=20
> So absolutely *no* register macros with boolean flags to shift or not. Ju=
st no.
>=20
> This is totally unreadable.
>=20
> Define the macros in terms of the REG_FIELD_MASK and REG_FIELD_PREP,
> and use REG_FIELD_GET to read the values.
>=20
> #define   DSC_PIC_WIDTH(pic_width)
> REG_FIELD_PREP(DSC_PIC_WIDTH_MASK, pic_width)
>=20
> 	pps_val |=3D DSC_PIC_WIDTH(vdsc_cfg->pic_width /
> num_vdsc_instances)
>=20
> This should probably be a first cleanup patch before the other changes.
>=20

Hmm I see thanks for pointing me out to this solution will add a new refact=
or patch
At the start in the next revision

> >  	drm_dbg_kms(&dev_priv->drm, "PPS2 =3D 0x%08x\n", pps_val);
> >  	intel_dsc_write_pps_reg(crtc_state, PPS_2, pps_val);
> >
> >  	/* Populate PICTURE_PARAMETER_SET_3 registers */
> >  	pps_val =3D 0;
> >  	pps_val |=3D DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
> > -		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
> > +		DSC_SLICE_WIDTH(vdsc_cfg->slice_width, true);
> >  	drm_dbg_kms(&dev_priv->drm, "PPS3 =3D 0x%08x\n", pps_val);
> >  	intel_dsc_write_pps_reg(crtc_state, PPS_3, pps_val);
> >
> >  	/* Populate PICTURE_PARAMETER_SET_4 registers */
> >  	pps_val =3D 0;
> >  	pps_val |=3D DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay)
> |
> > -		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
> > +		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay, true);
> >  	drm_dbg_kms(&dev_priv->drm, "PPS4 =3D 0x%08x\n", pps_val);
> >  	intel_dsc_write_pps_reg(crtc_state, PPS_4, pps_val);
> >
> >  	/* Populate PICTURE_PARAMETER_SET_5 registers */
> >  	pps_val =3D 0;
> >  	pps_val |=3D DSC_SCALE_INC_INT(vdsc_cfg-
> >scale_increment_interval) |
> > -		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
> > +		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval,
> true);
> >  	drm_dbg_kms(&dev_priv->drm, "PPS5 =3D 0x%08x\n", pps_val);
> >  	intel_dsc_write_pps_reg(crtc_state, PPS_5, pps_val);
> >
> >  	/* Populate PICTURE_PARAMETER_SET_6 registers */
> >  	pps_val =3D 0;
> >  	pps_val |=3D DSC_INITIAL_SCALE_VALUE(vdsc_cfg-
> >initial_scale_value) |
> > -		DSC_FIRST_LINE_BPG_OFFSET(vdsc_cfg-
> >first_line_bpg_offset) |
> > -		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
> > -		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
> > +		DSC_FIRST_LINE_BPG_OFFSET(vdsc_cfg-
> >first_line_bpg_offset, true) |
> > +		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp, true)
> |
> > +		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp,
> true);
> >  	drm_dbg_kms(&dev_priv->drm, "PPS6 =3D 0x%08x\n", pps_val);
> >  	intel_dsc_write_pps_reg(crtc_state, PPS_6, pps_val);
> >
> >  	/* Populate PICTURE_PARAMETER_SET_7 registers */
> >  	pps_val =3D 0;
> >  	pps_val |=3D DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
> > -		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
> > +		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset, true);
> >  	drm_dbg_kms(&dev_priv->drm, "PPS7 =3D 0x%08x\n", pps_val);
> >  	intel_dsc_write_pps_reg(crtc_state, PPS_7, pps_val);
> >
> >  	/* Populate PICTURE_PARAMETER_SET_8 registers */
> >  	pps_val =3D 0;
> >  	pps_val |=3D DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
> > -		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
> > +		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset, true);
> >  	drm_dbg_kms(&dev_priv->drm, "PPS8 =3D 0x%08x\n", pps_val);
> >  	intel_dsc_write_pps_reg(crtc_state, PPS_8, pps_val);
> >
> > @@ -654,7 +654,7 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
> >  	/* Populate PICTURE_PARAMETER_SET_10 registers */
> >  	pps_val =3D 0;
> >  	pps_val |=3D DSC_RC_QUANT_INC_LIMIT0(vdsc_cfg-
> >rc_quant_incr_limit0) |
> > -		DSC_RC_QUANT_INC_LIMIT1(vdsc_cfg-
> >rc_quant_incr_limit1) |
> > +		DSC_RC_QUANT_INC_LIMIT1(vdsc_cfg-
> >rc_quant_incr_limit1, true) |
> >
> 	DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST) |
> >
> 	DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
> >  	drm_dbg_kms(&dev_priv->drm, "PPS10 =3D 0x%08x\n", pps_val); @@
> -673,13
> > +673,14 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
> >  	if (DISPLAY_VER(dev_priv) >=3D 14) {
> >  		/* Populate PICTURE_PARAMETER_SET_17 registers */
> >  		pps_val =3D 0;
> > -		pps_val |=3D DSC_SL_BPG_OFFSET(vdsc_cfg-
> >second_line_bpg_offset);
> > +		pps_val |=3D DSC_SL_BPG_OFFSET(vdsc_cfg-
> >second_line_bpg_offset,
> > +					     true);
> >  		drm_dbg_kms(&dev_priv->drm, "PPS17 =3D 0x%08x\n",
> pps_val);
> >  		intel_dsc_write_pps_reg(crtc_state, PPS_17, pps_val);
> >
> >  		/* Populate PICTURE_PARAMETER_SET_18 registers */
> >  		pps_val =3D 0;
> > -		pps_val |=3D DSC_NSL_BPG_OFFSET(vdsc_cfg-
> >nsl_bpg_offset) |
> > +		pps_val |=3D DSC_NSL_BPG_OFFSET(vdsc_cfg-
> >nsl_bpg_offset, true) |
> >  			   DSC_SL_OFFSET_ADJ(vdsc_cfg-
> >second_line_offset_adj);
> >  		drm_dbg_kms(&dev_priv->drm, "PPS18 =3D 0x%08x\n",
> pps_val);
> >  		intel_dsc_write_pps_reg(crtc_state, PPS_18, pps_val); @@ -
> 1206,18
> > +1207,133 @@ static void intel_dsc_read_pps_reg(struct
> > intel_crtc_state *crtc_state,  static void
> > intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)  {
> >  	struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
> > -	u32 pps_temp1, pps_temp2;
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +	u32 pps_temp;
> > +
> > +	/* Readout PPS_0 register */
>=20
> The comments may be helpful as headings, but a simple /* PPS 0 */ etc wil=
l
> do.
>=20

Sure=20
> > +	pps_temp =3D 0;
>=20
> Please define the read function so that you don't have to initialize this=
 to zero
> every time.
>=20

Right seem to have missed that

> > +	intel_dsc_read_pps_reg(crtc_state, PPS_0, &pps_temp);
> >
> > -	/* Readout PPS_0 and PPS_1 registers */
> > -	intel_dsc_read_pps_reg(crtc_state, PPS_0, &pps_temp1);
> > -	intel_dsc_read_pps_reg(crtc_state, PPS_1, &pps_temp2);
> > +	vdsc_cfg->bits_per_component =3D (pps_temp & DSC_BPC_MASK) >>
> > +DSC_BPC_SHIFT;
>=20
> Use REG_FIELD_GET(), throw out the shifts.
>=20

Will Update this in the next revision

> > +	vdsc_cfg->line_buf_depth =3D
> > +		(pps_temp & DSC_LINE_BUF_DEPTH_MASK) >>
> DSC_LINE_BUF_DEPTH_SHIFT;
> > +	vdsc_cfg->block_pred_enable =3D pps_temp &
> DSC_BLOCK_PREDICTION ? true
> > +: false;
>=20
> For assigning booleans just pps_temp & DSC_BLOCK_PREDICTION is enough.
> The ternary operator is superfluous. Ditto below.
>=20

Ahh correct got it will fix this

Regards,
Suraj Kandpal
> > +	vdsc_cfg->convert_rgb =3D pps_temp &
> DSC_COLOR_SPACE_CONVERSION ? true : false;
> > +	vdsc_cfg->simple_422 =3D pps_temp & DSC_422_ENABLE ? true : false;
> > +	vdsc_cfg->native_422 =3D pps_temp & DSC_NATIVE_422_ENABLE ?
> true : false;
> > +	vdsc_cfg->native_420 =3D pps_temp & DSC_NATIVE_420_ENABLE ?
> true : false;
> > +	vdsc_cfg->vbr_enable =3D pps_temp & DSC_VBR_ENABLE ? true :
> false;
> >
> > -	vdsc_cfg->bits_per_pixel =3D pps_temp2;
> > +	/* Readout PPS_1 register */
> > +	pps_temp =3D 0;
> > +	intel_dsc_read_pps_reg(crtc_state, PPS_1, &pps_temp);
> >
> > -	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
> > +	vdsc_cfg->bits_per_pixel =3D pps_temp;
> > +
> > +	if (vdsc_cfg->native_420)
> >  		vdsc_cfg->bits_per_pixel >>=3D 1;
> >
> >  	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel >> 4;
> > +
> > +	/* Readout PPS_2 register */
> > +	pps_temp =3D 0;
> > +	intel_dsc_read_pps_reg(crtc_state, PPS_2, &pps_temp);
> > +
> > +	vdsc_cfg->pic_width =3D
> > +		DSC_PIC_WIDTH(pps_temp & DSC_PIC_WIDTH_MASK,
> false);
>=20
> This is the way to go:
>=20
> 	vdsc_cfg->pic_width =3D REG_FIELD_GET(DSC_PIC_WIDTH_MASK,
> pps_temp);
>=20
> > +	vdsc_cfg->pic_height =3D pps_temp & ~DSC_PIC_WIDTH_MASK;
>=20
> Nope, just use REG_FIELD_GET() for all of it.
>=20
> > +
> > +	/* Readout PPS_3 register */
> > +	pps_temp =3D 0;
> > +	intel_dsc_read_pps_reg(crtc_state, PPS_3, &pps_temp);
> > +
> > +	vdsc_cfg->slice_width =3D
> > +		DSC_SLICE_WIDTH(pps_temp & DSC_SLICE_WIDTH_MASK,
> false);
> > +	vdsc_cfg->slice_height =3D pps_temp & ~DSC_SLICE_WIDTH_MASK;
> > +
> > +	/* Readout PPS_4 register */
> > +	pps_temp =3D 0;
> > +	intel_dsc_read_pps_reg(crtc_state, PPS_4, &pps_temp);
> > +
> > +	vdsc_cfg->initial_dec_delay =3D
> > +		DSC_INITIAL_DEC_DELAY(pps_temp &
> DSC_INITIAL_DEC_DELAY_MASK, false);
> > +	vdsc_cfg->initial_xmit_delay =3D pps_temp &
> > +DSC_INITIAL_XMIT_DELAY_MASK;
> > +
> > +	/* Readout PPS_5 register */
> > +	pps_temp =3D 0;
> > +	intel_dsc_read_pps_reg(crtc_state, PPS_5, &pps_temp);
> > +
> > +	vdsc_cfg->scale_decrement_interval =3D
> > +		DSC_SCALE_DEC_INT(pps_temp &
> DSC_SCALE_DEC_INT_MASK, false);
> > +	vdsc_cfg->scale_increment_interval =3D pps_temp &
> > +DSC_SCALE_INC_INT_MASK;
> > +
> > +	/* Readout PPS_6 register */
> > +	pps_temp =3D 0;
> > +	intel_dsc_read_pps_reg(crtc_state, PPS_6, &pps_temp);
> > +
> > +	vdsc_cfg->initial_scale_value =3D pps_temp &
> DSC_INITIAL_SCALE_VALUE_MASK;
> > +	vdsc_cfg->first_line_bpg_offset =3D
> > +		DSC_FIRST_LINE_BPG_OFFSET(pps_temp &
> > +
> DSC_FIRST_LINE_BPG_OFFSET_MASK, false);
> > +	vdsc_cfg->flatness_min_qp =3D
> > +		DSC_FLATNESS_MIN_QP(pps_temp &
> DSC_FLATNESS_MIN_QP_MASK, false);
> > +	vdsc_cfg->flatness_max_qp =3D
> > +		DSC_FLATNESS_MAX_QP(pps_temp &
> DSC_FLATNESS_MAX_QP_MASK, false);
> > +
> > +	/* Readout PPS_7 register */
> > +	pps_temp =3D 0;
> > +	intel_dsc_read_pps_reg(crtc_state, PPS_7, &pps_temp);
> > +
> > +	vdsc_cfg->nfl_bpg_offset =3D
> > +		DSC_NFL_BPG_OFFSET(pps_temp &
> DSC_NFL_BPG_OFFSET_MASK, false);
> > +	vdsc_cfg->slice_bpg_offset =3D pps_temp &
> ~DSC_NFL_BPG_OFFSET_MASK;
> > +
> > +	/* Readout PPS_8 register */
> > +	pps_temp =3D 0;
> > +	intel_dsc_read_pps_reg(crtc_state, PPS_8, &pps_temp);
> > +
> > +	vdsc_cfg->initial_offset =3D
> > +		DSC_INITIAL_OFFSET(pps_temp &
> DSC_INITIAL_OFFSET_MASK, false);
> > +	vdsc_cfg->final_offset =3D pps_temp & ~DSC_INITIAL_OFFSET_MASK;
> > +
> > +	/* Readout PPS_9 register */
> > +	pps_temp =3D 0;
> > +	intel_dsc_read_pps_reg(crtc_state, PPS_9, &pps_temp);
> > +
> > +	vdsc_cfg->rc_model_size =3D pps_temp &
> DSC_RC_MODEL_SIZE_MASK;
> > +
> > +	/* Readout PPS_10 register */
> > +	pps_temp =3D 0;
> > +	intel_dsc_read_pps_reg(crtc_state, PPS_10, &pps_temp);
> > +
> > +	vdsc_cfg->rc_quant_incr_limit0 =3D pps_temp &
> DSC_RC_QUANT_INC_LIMIT0_MASK;
> > +	vdsc_cfg->rc_quant_incr_limit1 =3D
> > +		DSC_RC_QUANT_INC_LIMIT1(pps_temp &
> DSC_RC_QUANT_INC_LIMIT1_MASK,
> > +false);
> > +
> > +	/* Readout PPS_16 register */
> > +	pps_temp =3D 0;
> > +	intel_dsc_read_pps_reg(crtc_state, PPS_16, &pps_temp);
> > +
> > +	vdsc_cfg->slice_chunk_size =3D pps_temp &
> DSC_SLICE_CHUNK_SIZE_MASK;
> > +
> > +	if (DISPLAY_VER(i915) >=3D 14) {
> > +		/* Readout PPS_17 register */
> > +		pps_temp =3D 0;
> > +		intel_dsc_read_pps_reg(crtc_state, PPS_17, &pps_temp);
> > +
> > +		vdsc_cfg->second_line_bpg_offset =3D
> > +			DSC_SL_BPG_OFFSET(pps_temp &
> DSC_SL_BPG_OFFSET_MASK, false);
> > +
> > +		/* Readout PPS_18 register */
> > +		pps_temp =3D 0;
> > +		intel_dsc_read_pps_reg(crtc_state, PPS_18, &pps_temp);
> > +
> > +		vdsc_cfg->nsl_bpg_offset =3D
> > +			DSC_NSL_BPG_OFFSET(pps_temp &
> DSC_NSL_BPG_OFFSET_MASK, false);
> > +		vdsc_cfg->second_line_offset_adj =3D
> > +			pps_temp & ~DSC_NSL_BPG_OFFSET_MASK;
> > +	}
> >  }
> >
> >  void intel_dsc_get_config(struct intel_crtc_state *crtc_state) diff
> > --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> > b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> > index b71f00b5c761..605d37c2978b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> > @@ -57,7 +57,8 @@
> >  #define MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe)
> 	_MMIO_PIPE((pipe) - PIPE_B, \
> >
> _MTL_DSC1_PICTURE_PARAMETER_SET_17_PB, \
> >
> _MTL_DSC1_PICTURE_PARAMETER_SET_17_PC)
> > -#define DSC_SL_BPG_OFFSET(offset)		((offset) << 27)
> > +#define DSC_SL_BPG_OFFSET(offset, shift)	(shift ? (offset) << 27 :
> (offset) >> 27)
> > +#define DSC_SL_BPG_OFFSET_MASK
> 	REG_GENMASK(31, 27)
> >
> >  #define _MTL_DSC0_PICTURE_PARAMETER_SET_18_PB	0x782B8
> >  #define _MTL_DSC1_PICTURE_PARAMETER_SET_18_PB	0x783B8
> > @@ -69,8 +70,9 @@
> >  #define MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe)
> 	_MMIO_PIPE((pipe) - PIPE_B, \
> >
> _MTL_DSC1_PICTURE_PARAMETER_SET_18_PB, \
> >
> _MTL_DSC1_PICTURE_PARAMETER_SET_18_PC)
> > -#define DSC_NSL_BPG_OFFSET(offset)		((offset) << 16)
> > +#define DSC_NSL_BPG_OFFSET(offset, shift)	(shift ? (offset) << 16
> : (offset) >> 16)
> >  #define DSC_SL_OFFSET_ADJ(offset)		((offset) << 0)
> > +#define DSC_NSL_BPG_OFFSET_MASK
> 	REG_GENMASK(31, 16)
> >
> >  /* Icelake Display Stream Compression Registers */
> >  #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
> > @@ -96,6 +98,9 @@
> >  #define  DSC_BPC_SHIFT			8
> >  #define  DSC_VER_MIN_SHIFT		4
> >  #define  DSC_VER_MAJ			(0x1 << 0)
> > +#define  DSC_LINE_BUF_DEPTH_MASK	REG_GENMASK(15, 12)
> > +#define  DSC_BPC_MASK			REG_GENMASK(11, 8)
> > +
> >
> >  #define DSCA_PICTURE_PARAMETER_SET_1		_MMIO(0x6B204)
> >  #define DSCC_PICTURE_PARAMETER_SET_1		_MMIO(0x6BA04)
> > @@ -123,8 +128,9 @@
> >  #define ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe)
> 	_MMIO_PIPE((pipe) - PIPE_B, \
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_2_PB, \
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_2_PC)
> > -#define  DSC_PIC_WIDTH(pic_width)	((pic_width) << 16)
> > -#define  DSC_PIC_HEIGHT(pic_height)	((pic_height) << 0)
> > +#define  DSC_PIC_WIDTH(pic_width, shift)	(shift ? (pic_width) << 16 :
> (pic_width >> 16))
> > +#define  DSC_PIC_HEIGHT(pic_height)		((pic_height) << 0)
> > +#define  DSC_PIC_WIDTH_MASK			REG_GENMASK(31,
> 16)
> >
> >  #define DSCA_PICTURE_PARAMETER_SET_3		_MMIO(0x6B20C)
> >  #define DSCC_PICTURE_PARAMETER_SET_3		_MMIO(0x6BA0C)
> > @@ -138,8 +144,9 @@
> >  #define ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe)
> 	_MMIO_PIPE((pipe) - PIPE_B, \
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_3_PB, \
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_3_PC)
> > -#define  DSC_SLICE_WIDTH(slice_width)   ((slice_width) << 16)
> > +#define  DSC_SLICE_WIDTH(slice_width, shift)   (shift ? (slice_width) =
<< 16
> : (slice_width >> 16))
> >  #define  DSC_SLICE_HEIGHT(slice_height) ((slice_height) << 0)
> > +#define  DSC_SLICE_WIDTH_MASK			REG_GENMASK(31,
> 16)
> >
> >  #define DSCA_PICTURE_PARAMETER_SET_4		_MMIO(0x6B210)
> >  #define DSCC_PICTURE_PARAMETER_SET_4		_MMIO(0x6BA10)
> > @@ -153,8 +160,11 @@
> >  #define ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe)
> 	_MMIO_PIPE((pipe) - PIPE_B, \
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_4_PB, \
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_4_PC)
> > -#define  DSC_INITIAL_DEC_DELAY(dec_delay)       ((dec_delay) << 16)
> > -#define  DSC_INITIAL_XMIT_DELAY(xmit_delay)     ((xmit_delay) << 0)
> > +#define  DSC_INITIAL_DEC_DELAY(dec_delay, shift)	(shift ? (dec_delay)
> << 16 : \
> > +							 (dec_delay) >> 16)
> > +#define  DSC_INITIAL_XMIT_DELAY(xmit_delay)		((xmit_delay)
> << 0)
> > +#define  DSC_INITIAL_DEC_DELAY_MASK
> 	REG_GENMASK(31, 16)
> > +#define  DSC_INITIAL_XMIT_DELAY_MASK
> 	REG_GENMASK(9, 0)
> >
> >  #define DSCA_PICTURE_PARAMETER_SET_5		_MMIO(0x6B214)
> >  #define DSCC_PICTURE_PARAMETER_SET_5		_MMIO(0x6BA14)
> > @@ -168,8 +178,10 @@
> >  #define ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe)
> 	_MMIO_PIPE((pipe) - PIPE_B, \
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_5_PB, \
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_5_PC)
> > -#define  DSC_SCALE_DEC_INT(scale_dec)	((scale_dec) << 16)
> > +#define  DSC_SCALE_DEC_INT(scale_dec, shift)	(shift ? (scale_dec) <<
> 16 : (scale_dec) >> 16)
> >  #define  DSC_SCALE_INC_INT(scale_inc)		((scale_inc) << 0)
> > +#define  DSC_SCALE_DEC_INT_MASK
> 	REG_GENMASK(27, 16)
> > +#define  DSC_SCALE_INC_INT_MASK
> 	REG_GENMASK(15, 0)
> >
> >  #define DSCA_PICTURE_PARAMETER_SET_6		_MMIO(0x6B218)
> >  #define DSCC_PICTURE_PARAMETER_SET_6		_MMIO(0x6BA18)
> > @@ -183,10 +195,14 @@
> >  #define ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe)
> 	_MMIO_PIPE((pipe) - PIPE_B, \
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_6_PB, \
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_6_PC)
> > -#define  DSC_FLATNESS_MAX_QP(max_qp)		((max_qp) << 24)
> > -#define  DSC_FLATNESS_MIN_QP(min_qp)		((min_qp) << 16)
> > -#define  DSC_FIRST_LINE_BPG_OFFSET(offset)	((offset) << 8)
> > -#define  DSC_INITIAL_SCALE_VALUE(value)		((value) << 0)
> > +#define  DSC_FLATNESS_MAX_QP(max_qp, shift)		(shift ?
> (max_qp) << 24 : (max_qp) >> 24)
> > +#define  DSC_FLATNESS_MIN_QP(min_qp, shift)		(shift ?
> (min_qp) << 16 : (min_qp) >> 16)
> > +#define  DSC_FIRST_LINE_BPG_OFFSET(offset, shift)	(shift ?
> (offset) << 8 : (offset) >> 8)
> > +#define  DSC_INITIAL_SCALE_VALUE(value)			((value) << 0)
> > +#define  DSC_FLATNESS_MAX_QP_MASK
> 	REG_GENMASK(28, 24)
> > +#define  DSC_FLATNESS_MIN_QP_MASK
> 	REG_GENMASK(20, 16)
> > +#define  DSC_FIRST_LINE_BPG_OFFSET_MASK
> 	REG_GENMASK(12, 8)
> > +#define  DSC_INITIAL_SCALE_VALUE_MASK
> 	REG_GENMASK(5, 0)
> >
> >  #define DSCA_PICTURE_PARAMETER_SET_7		_MMIO(0x6B21C)
> >  #define DSCC_PICTURE_PARAMETER_SET_7		_MMIO(0x6BA1C)
> > @@ -200,8 +216,9 @@
> >  #define ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe)
> 	_MMIO_PIPE((pipe) - PIPE_B, \
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_7_PB, \
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_7_PC)
> > -#define  DSC_NFL_BPG_OFFSET(bpg_offset)		((bpg_offset)
> << 16)
> > +#define  DSC_NFL_BPG_OFFSET(bpg_offset, shift)	(shift ? (bpg_offset)
> << 16 : (bpg_offset) >> 16)
> >  #define  DSC_SLICE_BPG_OFFSET(bpg_offset)	((bpg_offset) << 0)
> > +#define  DSC_NFL_BPG_OFFSET_MASK		REG_GENMASK(31,
> 16)
> >
> >  #define DSCA_PICTURE_PARAMETER_SET_8		_MMIO(0x6B220)
> >  #define DSCC_PICTURE_PARAMETER_SET_8		_MMIO(0x6BA20)
> > @@ -215,8 +232,10 @@
> >  #define ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe)
> 	_MMIO_PIPE((pipe) - PIPE_B, \
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_8_PB, \
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_8_PC)
> > -#define  DSC_INITIAL_OFFSET(initial_offset)		((initial_offset) << 16)
> > +#define  DSC_INITIAL_OFFSET(initial_offset, shift)	(shift ? (initial_o=
ffset)
> << 16 : \
> > +							 (initial_offset) >> 16)
> >  #define  DSC_FINAL_OFFSET(final_offset)			((final_offset)
> << 0)
> > +#define  DSC_INITIAL_OFFSET_MASK
> 	REG_GENMASK(31, 16)
> >
> >  #define DSCA_PICTURE_PARAMETER_SET_9		_MMIO(0x6B224)
> >  #define DSCC_PICTURE_PARAMETER_SET_9		_MMIO(0x6BA24)
> > @@ -232,6 +251,7 @@
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_9_PC)
> >  #define  DSC_RC_EDGE_FACTOR(rc_edge_fact)	((rc_edge_fact) <<
> 16)
> >  #define  DSC_RC_MODEL_SIZE(rc_model_size)	((rc_model_size) <<
> 0)
> > +#define  DSC_RC_MODEL_SIZE_MASK
> 	REG_GENMASK(15, 0)
> >
> >  #define DSCA_PICTURE_PARAMETER_SET_10
> 	_MMIO(0x6B228)
> >  #define DSCC_PICTURE_PARAMETER_SET_10
> 	_MMIO(0x6BA28)
> > @@ -247,8 +267,10 @@
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_10_PC)
> >  #define  DSC_RC_TARGET_OFF_LOW(rc_tgt_off_low)
> 	((rc_tgt_off_low) << 20)
> >  #define  DSC_RC_TARGET_OFF_HIGH(rc_tgt_off_high)
> 	((rc_tgt_off_high) << 16)
> > -#define  DSC_RC_QUANT_INC_LIMIT1(lim)			((lim) << 8)
> > +#define  DSC_RC_QUANT_INC_LIMIT1(lim, shift)		(shift ? (lim)
> << 8 : (lim) >> 8)
> >  #define  DSC_RC_QUANT_INC_LIMIT0(lim)			((lim) << 0)
> > +#define  DSC_RC_QUANT_INC_LIMIT1_MASK
> 	REG_GENMASK(12, 8)
> > +#define  DSC_RC_QUANT_INC_LIMIT0_MASK
> 	REG_GENMASK(4, 0)
> >
> >  #define DSCA_PICTURE_PARAMETER_SET_11
> 	_MMIO(0x6B22C)
> >  #define DSCC_PICTURE_PARAMETER_SET_11
> 	_MMIO(0x6BA2C)
> > @@ -330,6 +352,7 @@
> >  #define  DSC_SLICE_ROW_PER_FRAME(slice_row_per_frame)
> 	((slice_row_per_frame) << 20)
> >  #define  DSC_SLICE_PER_LINE(slice_per_line)
> 	((slice_per_line) << 16)
> >  #define  DSC_SLICE_CHUNK_SIZE(slice_chunk_size)
> 	((slice_chunk_size) << 0)
> > +#define  DSC_SLICE_CHUNK_SIZE_MASK		REG_GENMASK(15,
> 0)
> >
> >  /* Icelake Rate Control Buffer Threshold Registers */
> >  #define DSCA_RC_BUF_THRESH_0			_MMIO(0x6B230)
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
