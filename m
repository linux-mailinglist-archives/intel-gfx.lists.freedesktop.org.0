Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3483E7E09FA
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 21:15:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CF7E10E19C;
	Fri,  3 Nov 2023 20:15:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8687110E19C
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 20:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699042510; x=1730578510;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4Ar+MAiRtFXSA4BTDeGuPkEp6K5PJEypLh49XbqHE6M=;
 b=TTUXS8POFMZMtxhb0TlWZU5dAIvuvSP0nqlgB9JXvtFv0+RrO/wTFrhK
 aQYgVaTbKsHflUz8G5ailWPjwQJ8qHxqIsvrSCJLZbc2oyax0s4NFU6WK
 OChys6a+wB5pVnlNCOinAYgXbMJ3L7ce1dc2I0dzeE+JBtnc+rnoSVxSZ
 p66VAPgi1NszYAuRyr1qEXOE+Mu4G8Y1SQUwWtmB6n8tETXtP/OfhR7qe
 AXDlM0KMesVAI0hx27YFnStVB8+fL6dGT3Rz3956D/ZrrKoFhdkFzxVlD
 /23gozZBOP1THR7y64yvTBneP5dNobuG/nZHk4gMuD3lrvGsfApHv5PH3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="453314700"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="453314700"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 13:15:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="738176661"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="738176661"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2023 13:15:09 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 13:15:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 13:15:08 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 3 Nov 2023 13:15:08 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 3 Nov 2023 13:15:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=maoyJ5kYIj/pmbfclm5/1I5eQhtTeK4KhKJZFbUHI91crS7CMA5cqo57Yrl3MmbYjORSWBeBehEgz6tNrJdJkQ2vpRqGP/cG1stm63mNrwUybvv8nvQeDod8VOOVDAbXk8uGi2uuRKhGMvK/evntGqy7PXtwWXq4gXlkgZPJCYyO0TMJDeowABt+2t1yroWt5J6gwwuq1mjCod62skX/JKuRsQiqVFosDB0U+gW3S2NU0EMBcIVgxs9J91HkvJ4OWPpmIsgFBaTupsDsZkZDVeI2ZJ+bVvD7JDii1OdpdDp2fBf2hRrF26turuPWloRiNC4iFM+bXQRO/12s9eUvfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tdKj0lfPrJ30deDj1SO1I435noGf9ZiXX2Wey6/uAOs=;
 b=cUyXO1ff31Ge2xgKNNXmj2nEtTez2i+Wh3WcHzJAiJFa6jMjY/tMMS0Pz5MdwFjiWAcupAiugE8kndPPPyI8xV+BdHNtEydIO0wJjk6rX87MTUsPjopLOo1CzsHBZZObK+h6FC1ILzOmEqZtAgq5DJDnGr3exuioTGFF5VC8v9L3Hxhmyx2U/LRAHtd9ODVowU0z7gy/U+KAKVW83GhQxo8EYoQ6pabZkhKAR1kgycwkGrNupRas4H8uvBfZWRn0uFcsc8D1OSehjyZfm39wmskg8mNvmuc11hQLNOX7ifcxzIsj1MyeblTrZm8tedxpc8H6KMGiF4PHkGegc7eV3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SJ0PR11MB5087.namprd11.prod.outlook.com (2603:10b6:a03:2ad::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.19; Fri, 3 Nov
 2023 20:15:04 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::2563:1b48:8ed:1305]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::2563:1b48:8ed:1305%4]) with mapi id 15.20.6954.021; Fri, 3 Nov 2023
 20:15:04 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily disable CPU caching
 into DMA for MTL
Thread-Index: AQHaDbe4LH1Cn1+BM0m3gZHgK7uUi7BpBauAgAABJBA=
Date: Fri, 3 Nov 2023 20:15:04 +0000
Message-ID: <CH0PR11MB5444275023547A253114C2DDE5A5A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20231102175831.872763-1-jonathan.cavitt@intel.com>
 <DM4PR11MB5971CFB861177DF38E880CBE87A5A@DM4PR11MB5971.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB5971CFB861177DF38E880CBE87A5A@DM4PR11MB5971.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SJ0PR11MB5087:EE_
x-ms-office365-filtering-correlation-id: b2810ba2-8968-4188-0a40-08dbdca99138
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LH1/d5zyMF7mn3nu643bhNgbZTlXIpEvKJuiT9Jhum6+nLDlk4LUodRTiJ8hPxQg2IS9Q49eAML/AtRZwS61vxC5jUdMlip03C3wNpoU5Vg5AnefCJfQw0EbSZ1d1NZAFgFG7MWw36Atz5cmMVca5FYWGSo7scQTz+uIw5rYQnSgB36vaiNSiaXf9THLmAbsU5f5XsgHAYV0A4IFrmE6sZBEvgWnT4Grk9CVh/FHoN0l8Qtl+dg0AO5+9/Chm+LMGe5GgYPlfvc77nwfEe58aHPYEVRuL3xmhn7dULRwp4bJDf6L7lDDh7YmDfGBE4lnwG18scvajdtrXFvSFyXuf5wwHXUOkgsS/AKjtx9ZiPtHkNk1sn028ayXDotHsGBoE24yQF+MPTQ50QWl1GT54l9nHg5kwGNJ1ZANVtPRsh+U0HmbGk++J7eFEh6wcoMCtB2LUlZgI0pEqzMJLRpxavM2FVuXfFs/5In026Ons4a3du0u88QVBuArTbNhkUFbM+ofaNpdYoqHe9hgBrVqdYnBtC/6SxUJT1Tbvu7g1MMMIXnJ7NdTQnvbDWkhfFb1oLd3tyku+TazXTQdKVnwDOOw3TQr4TQDgTD7Yq3EPx9165vRJ8TGLWaIfZfxe6qx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(39860400002)(346002)(396003)(366004)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(110136005)(316002)(26005)(64756008)(54906003)(7696005)(6506007)(66476007)(66446008)(66556008)(76116006)(478600001)(53546011)(33656002)(38070700009)(9686003)(86362001)(71200400001)(66946007)(55016003)(52536014)(41300700001)(83380400001)(8676002)(8936002)(5660300002)(4326008)(122000001)(82960400001)(2906002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LayV0Ea1cdJaoho76gVKmrkY2D3ZO0yJRJJ0QIkJxfu41IeWjp4ZNQDB+/c/?=
 =?us-ascii?Q?3cuIUvveI7hETfpx3D65b6H3z2+Eij3WOOaODPSv9JgWa6nzqeecWLdlQTxb?=
 =?us-ascii?Q?SZ1Ca09NSMYiXnB5EF4CfQFnU+65u98sY4ZpV9/wmGlytBdR5lHQpNpJL6ay?=
 =?us-ascii?Q?/acij9Urqhzgzidv7teDXNV8ESkwqLlhtfhsbEL2RVhyaVXxDBOxKBTkW3tX?=
 =?us-ascii?Q?Ju0jf88unwlFerv3bs2sCFnucPUq8Pl6gxXBXDLKyxWTwdyDBvcSI0HyERfR?=
 =?us-ascii?Q?TMNWwl+7r5sF6/fHLUSf+ztlRlbLPAAvVX9Upq/FNrEGJOFonlHrBTZDaL2i?=
 =?us-ascii?Q?eiYGpMWFKXLYVS0dCcbwnXzG2S+dDwn7Jwaik2tenLlHf2oMv9EDHgY1XiGY?=
 =?us-ascii?Q?caQnl4tu4Aq1dZ3DpYdtQq7dm/iydiIizZ1ZA0MgSvy+bDGx1/8egHYqsqU0?=
 =?us-ascii?Q?PCJaJEhtoKzEK0eM1Dr2iDMXgNHbfFQRDDIgjo9jAXtef8h/pOWHtDIUOZpA?=
 =?us-ascii?Q?zAzy/ATcWlMzIu2zOHgEBi+RaCXTVkgKgBwsT7TLo1sq/HrSN/BFpbk+bRjN?=
 =?us-ascii?Q?vGkLojGF2yWK1pZj4MsRXUC81DYXhmDiWsrPmiaLgbgG3Kc8pexwqdc26hMy?=
 =?us-ascii?Q?PA2SAlSKfHdESW+W81N/6q1kFp8hnVAPKN2hJXZVDRuzZYys38OYRqGTsHuh?=
 =?us-ascii?Q?XC5P/fDfxTSkzmEQV4THhBXv922RnaeQ3/PfqUc2N4Ra/lpx1vVIzL96NUfq?=
 =?us-ascii?Q?Wt6v/ntvIl9K9ROg7QW4/QWj8/8A8DGdBcXTsGa/4HDLfWsu2m5bnh4j9oq/?=
 =?us-ascii?Q?QKyxwFWkDgeox6d0XZpWbuZQl3Atl6kIg52ObnfXqcwQk3OlOpa1Cist3xzZ?=
 =?us-ascii?Q?kVMML9JxCxF+vRc7QYJRWbPcZQkIxKiJ4gwsVSYRAd56MdKyE4dQ6lNR5EiD?=
 =?us-ascii?Q?TwY9iwIyp2r5qToy42XDUfSmjHMeGs4srMwiB9UObPFQG1L3esYqSDONSslN?=
 =?us-ascii?Q?srdUSnhuElsBGtN+enkoT0lZ1qEwcBwkGzYV2ci3qA82pKVHT9e+azvUstNk?=
 =?us-ascii?Q?AyxID406bznMuOPwSChzdZ5crkSoYG5usxh3YOJP27CbHBmlGNEtmkiVM1tN?=
 =?us-ascii?Q?HE/anFLFbLOmvDy0AfQ6Nbzr5mUBdDwBgb941fpCtBIoOMPsBkZIA/PPg2AQ?=
 =?us-ascii?Q?09GVYM5Pdzv8neGMHTCvr2IV9jRzX/VW0wMulSkGjJSUtjQ27noGAZ9cQgsT?=
 =?us-ascii?Q?K1kQQFt59RubuOOKTFdUPixAnPTje3pf5nqRiC2DjE6aB78dYkySTJzPyF/l?=
 =?us-ascii?Q?5olSyUwqzFQJyyGGfQtcDoOA5sh0qN+v6l+CWfPYqJZpMEGm05iDJpgUl2S3?=
 =?us-ascii?Q?zMo3UmVuIZNO4IEHGxr8WNxMYTxXckpAmCnkGAhKGAM/Lr6jobfQUh6u/ots?=
 =?us-ascii?Q?iaACj2nR8bGCKa4MI/JSqfyQt5Q6r02BUU6tvITJT5crisvCKKG5NNZuG+ey?=
 =?us-ascii?Q?f420CtKo4MXjRnU8GzCHWgB5oowk6NpBGSg21p7NqF60CsexXl7lUSy7a75a?=
 =?us-ascii?Q?CiUPn7sztgzJBO2FEyUnNTPBl64iIzvs/lmd2Lzo?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2810ba2-8968-4188-0a40-08dbdca99138
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 20:15:04.6989 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hhln20RVGR14N20+iFzRVpS3gHA/VEUeC4Bgp16BK9g0DQVzHqgsKwz92p+72QgKlV4k0ydKXOhBz9FMe5dd12jhvEWCZh/UKMjMlt9YcCw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5087
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily disable CPU
 caching into DMA for MTL
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
Cc: "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-----Original Message-----
From: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>=20
Sent: Friday, November 3, 2023 1:02 PM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedeskt=
op.org
Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Cavitt, Jonathan <jonathan.=
cavitt@intel.com>; chris.p.wilson@linux.intel.com
Subject: RE: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily disable CPU cachi=
ng into DMA for MTL
>=20
> Hi Jonathan,
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of =
Jonathan
> > Cavitt
> > Sent: Thursday, November 2, 2023 10:59 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Cavitt, Jonathan
> > <jonathan.cavitt@intel.com>; chris.p.wilson@linux.intel.com
> > Subject: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily disable CPU cachi=
ng into
> > DMA for MTL
> >=20
> > FIXME: It is suspected that some Address Translation Service (ATS)
> > issue on IOMMU is causing CAT errors to occur on some MTL workloads.
> > Applying a write barrier to the ppgtt set entry functions appeared
> > to have no effect, so we must temporarily use I915_MAP_WC in the
> > map_pt_dma class of functions on MTL until a proper ATS solution is
> > found.
> >=20
> What is the performance impact here? Are we disabling caching only
> for the pte changes/scratch pages or does it extend beyond?


I don't actually know what map_pt_dma is used for, but if the name is
indicative of its purpose, it should only impact mappings into the dma
page table.
As for the performance impact, I don't imagine it'll be much.  Maybe
a single-digit percentage slowdown?  It might actually improve
performance if we're avoiding enough cache misses, but the true
performance impact would have to be measured empirically.
-Jonathan Cavitt


>=20
> Regards,
> Radhakrishna(RK) Sripada=20
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > CC: Chris Wilson <chris.p.wilson@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gtt.c | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >=20
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c
> > b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > index 4fbed27ef0ecc..21719563a602a 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > @@ -95,6 +95,16 @@ int map_pt_dma(struct i915_address_space *vm, struct
> > drm_i915_gem_object *obj)
> >  	void *vaddr;
> >=20
> >  	type =3D intel_gt_coherent_map_type(vm->gt, obj, true);
> > +	/*
> > +	 * FIXME: It is suspected that some Address Translation Service (ATS)
> > +	 * issue on IOMMU is causing CAT errors to occur on some MTL
> > workloads.
> > +	 * Applying a write barrier to the ppgtt set entry functions appeared
> > +	 * to have no effect, so we must temporarily use I915_MAP_WC here on
> > +	 * MTL until a proper ATS solution is found.
> > +	 */
> > +	if (IS_METEORLAKE(vm->i915))
> > +		type =3D I915_MAP_WC;
> > +
> >  	vaddr =3D i915_gem_object_pin_map_unlocked(obj, type);
> >  	if (IS_ERR(vaddr))
> >  		return PTR_ERR(vaddr);
> > @@ -109,6 +119,16 @@ int map_pt_dma_locked(struct i915_address_space
> > *vm, struct drm_i915_gem_object
> >  	void *vaddr;
> >=20
> >  	type =3D intel_gt_coherent_map_type(vm->gt, obj, true);
> > +	/*
> > +	 * FIXME: It is suspected that some Address Translation Service (ATS)
> > +	 * issue on IOMMU is causing CAT errors to occur on some MTL
> > workloads.
> > +	 * Applying a write barrier to the ppgtt set entry functions appeared
> > +	 * to have no effect, so we must temporarily use I915_MAP_WC here on
> > +	 * MTL until a proper ATS solution is found.
> > +	 */
> > +	if (IS_METEORLAKE(vm->i915))
> > +		type =3D I915_MAP_WC;
> > +
> >  	vaddr =3D i915_gem_object_pin_map(obj, type);
> >  	if (IS_ERR(vaddr))
> >  		return PTR_ERR(vaddr);
> > --
> > 2.25.1
>=20
>=20
