Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A336C7E0A90
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 22:06:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8630310EAC2;
	Fri,  3 Nov 2023 21:06:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E05BF10EABE
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 21:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699045594; x=1730581594;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=krLYO4OUzZAWXYBvrABEK7JRrlbRzGs28H494W3LXns=;
 b=WP2kRepuEMAuxhDLkWytzeeEMCtEclttdvWhpjpW3cHlYw9JmtzAh4Fs
 C1fFzanhLSontLi2mlSWnq4fQBEebMUQX5oSjgvdbdKeqw71yj8SEtMUA
 8sv1tsPHzFcMbtnVWJ80P4mhs1yrOn0GRjGschTqofRXhvL3PWBz6Xxp8
 uUfrOT0pTNE1e30/+BsP9LYNIXS5fXdOEAeeT3cbol8jWEiRd3BGTdGNe
 +t2QUHhZNJFJNYwtLVnND2LWQLV+ekEmYGau75J72Nw+GowcMm994gcSD
 27yB8s5x4+NKrovyN0I36lvdeyCPlBT2+dIyxv1irBosQWhxxVEEujSNT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="391894077"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="391894077"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 14:06:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="827621324"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="827621324"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2023 14:06:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 14:06:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 3 Nov 2023 14:06:31 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 3 Nov 2023 14:06:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FjEW18vJCQVRBJh29UAioVmVPqBUlVR4+Yn6NOmIF1zP7PHntIhxnMGJD6GrTJFvD+mt0n2CC7T8pFLTOGqaUwPpsb46jXR9iKCJP0SCu/fO7mz/uyEzBlBR+v9zlWzvG93q1P1t/qkKsXrksuF729YBX1RoYl0wh2Osif8GvpjBI6Xw9natk1b/Jm9bM/FswWTMn4YKEWPrxztLkqmTXVSq3VQPp6nG7sIvtVppfk22zBAPv6eYYtTW7h+ZwtMiR0qABhDZ3PdxicmWe0ayAvHBje6TnEoBeR12lPOkmCk0gFALvSmyHCtGtJLjZ5eTdw7CT7EHngStbSJAzne5kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BKSsAHQIH6GnSlJOBHZCkb2vRthDndWd7JKwR+xLb/8=;
 b=UHyWw0RuRjGRA8NNHeN0lw6a3Ixsyax9OU6uKpqhMPlloe0hfJHF3y0meWhXtkSRMcF2ODFAcncAY/e82/5hpamc9XMKpVGWJngYF4T+WahEeP50/g0EzhkC0aRaiBAs9vtkO5tdqcwo+0dNdpO5/PZeb9F435pXAoMiUgawWCi5g2IcdlBPUgS1Bd5uzvSs22QpO5F91V4A+KXGWcjrYRBHD8VJoU8HI+He7McrcmF6H08po4Sx8HANt+Q2m5KxtEBWGUPsLD9lFLeTfeJToNQ8byCcPjWBDt7iYyqeBms/+PJA00G1Z0sscHnjZj933ymgdWbrNT7+KbyxD5h5BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 CH0PR11MB5507.namprd11.prod.outlook.com (2603:10b6:610:d6::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6954.21; Fri, 3 Nov 2023 21:06:26 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::3365:36be:3cbb:4e85]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::3365:36be:3cbb:4e85%4]) with mapi id 15.20.6954.021; Fri, 3 Nov 2023
 21:06:26 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily disable CPU caching
 into DMA for MTL
Thread-Index: AQHaDbfEEaJUlFLxp0W83RnNEcAlwbBpBKaQgAAExwCAAAB5oA==
Date: Fri, 3 Nov 2023 21:06:25 +0000
Message-ID: <DM4PR11MB597141B93A4B88AD2816271B87A5A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231102175831.872763-1-jonathan.cavitt@intel.com>
 <DM4PR11MB5971CFB861177DF38E880CBE87A5A@DM4PR11MB5971.namprd11.prod.outlook.com>
 <CH0PR11MB5444275023547A253114C2DDE5A5A@CH0PR11MB5444.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB5444275023547A253114C2DDE5A5A@CH0PR11MB5444.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|CH0PR11MB5507:EE_
x-ms-office365-filtering-correlation-id: d60552cb-d46e-4041-9223-08dbdcb0bdb7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iZNh2ZQM5juDH375mv3/nyfgLLFox5xtNJJqb06ivdF/Ng/XlccPDKfEU3je5J/xycEyWuImSWNStZjOhzRNNsZNrWDfGPFiddLFxj8UOXhcUGp0xLXe0nqN9isNNwEoC44qIxAnYcbVpDlIx/dBQKM2c34CUcjouzac8AwA3TLi6OW8FFEXcsqRFguHV3ejPNsdyBg4povmWg/Z1VjKVO2OUeaWrTdzm63UfbUIfX/8DaX9XpTlqA29ZEB03lG/SY0HfYjsQOW8+szS5p33Csd26ygvH5yVA4dqg1gVAvcyCxG6wk4Hxd++XIHKKIfrcdMU+NAZVMvR/skdZl93WI849rQ/8LUEiAzpoC++QUgmKcmEJqqObVeouFZZQCfjVJFSS9fHy/2RpMyz1uiQHroerO9/qikH2PRXXo5ThUa8tu6bhGkzYLz3vq5dQuIvwhxflM5yXNbHrvs5jfMFUz2bM995gBjfl7QngUJkYHJx/rj/ZSSODfwKZmkwbZI/VYzSBhFDf5nTRSysiGmSZPuLk7BFXK+RhnF+HXMNGMo9nLTbfdCd8zK4LygWwRBaXDmvl3X6Nl5d9sAUtGvc03N8BxNNXORCeNacUj38cutd1OWEEbSAOLCy7if1a40t
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(346002)(366004)(376002)(136003)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(64756008)(316002)(54906003)(66446008)(66556008)(76116006)(66946007)(66476007)(110136005)(71200400001)(9686003)(53546011)(83380400001)(38070700009)(6506007)(26005)(7696005)(38100700002)(82960400001)(122000001)(33656002)(86362001)(478600001)(4326008)(8676002)(52536014)(8936002)(41300700001)(5660300002)(55016003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EybTz0WfjLI+QNALCkCDXamlYaBwWAXUSUAsi2ykCYEZxpvzZFo96JLFhfGr?=
 =?us-ascii?Q?iFa5uhonJPP9OMWycFTGjWZzu0iYBU789UrsmVe/F2EUJgNhRiomEb5RkDdt?=
 =?us-ascii?Q?UXMMieE9ZPO2Y4yfwkEVSqjFQ0/VAks5SDeA5dATv2AiqH+i6kc8uZM4uf80?=
 =?us-ascii?Q?vqUnJA2Q2H3LgVKxCVoYikNdKqm+sTjXUBP1FJHtp4C/U4WIkQuxPuAoWMgR?=
 =?us-ascii?Q?bvLwmem43DBqQD2qbGvnmTkF/F3rpeuy4yq9s8c5ty69XyCOe9hrbVV810Uz?=
 =?us-ascii?Q?o04u8Cea744hE+oJvqWWNNz2TgkqI/VZM0XNh8n/a38bmQR0LC7SHFP28R4h?=
 =?us-ascii?Q?KCVxDlQdcRP1+MNxlxa44MaCKOss2Mh+/laezkCHtVpCc4ChQLIgjUmknjOH?=
 =?us-ascii?Q?o7ndgON8QtJgIGaqQ9CD32NMljhT/lIwZUOu+ooVsuL+8QrLvsI8RinYig4I?=
 =?us-ascii?Q?Un6kP7BsUhVqkg4VBc1Iy4MoaitLf3vOy8wv6B5XaDeA5YaM6FuecOPX5obu?=
 =?us-ascii?Q?e30jdmGEbriXSYiR+7wF2Ua9i1Mn1Bnk7T4em553CyWd52jZVW6XHPN3hBPk?=
 =?us-ascii?Q?+cOP63Lldwaq3/rTPCB2FMvRb0XkpBsbV9VMAOFwzmcdcaGagWuQhmkaLYmW?=
 =?us-ascii?Q?9lH0PVnX+3oxMiOiacPCvYidhPlZrNSgkG+dHdlRXZB7HSQMRAKqKwZ2mXVr?=
 =?us-ascii?Q?v1pj0wVS1i+ATq6hqyUUoHhPYCbWQaLtHC2PnT/HSRd9bG1TrcwusRifZMd8?=
 =?us-ascii?Q?33F/s1yhcSp9B7pdY+bhU3SGzKKvCMmLRRnk/pp+R8pTd/S/h3dv9bHGa2nT?=
 =?us-ascii?Q?yI26/8DRM76QlXU9A1tgUb2Iukj5ar6P70bQN0xuexoiE1/8ihghRTaTJ339?=
 =?us-ascii?Q?Y7S0VVdQ+aBQ3PzriU+p+qYpjtRUomuL7WyVvTtrkharPS3c1DCIzifF9D0K?=
 =?us-ascii?Q?QuWuuP48o+pxWLY0j5OLfCZDx5JqniHwcEhMPxCTOKEVPuoyzefbNertC7d1?=
 =?us-ascii?Q?qvyc7TN6dP27wzfKFu2SvlyxyG0b2+7UruyyQ2oEDISMzUp1sUG6yHD/pq2a?=
 =?us-ascii?Q?C304+TdU/Oav1MOns5h3HPDtCV1/IgmqwAFxu8Tt63qgwJAQa7G3S/9bYLPv?=
 =?us-ascii?Q?B9wmfZ4Z653mQS6UPkXW7VWxi7Gt/lGH/T/6YLlArDz6aQiggIyiNKQR47/j?=
 =?us-ascii?Q?/e7ooFwwqF0b6LzP7nfd1/IfGI50Xk9b/UDSb56AdiEOYBSGNJYAO9FWHb7W?=
 =?us-ascii?Q?zQ11wXY9kUOXWL0qicwY+diJxxCpGC8vDSA89vqkaJI8f5es8hIQbgiBHSZS?=
 =?us-ascii?Q?2vaRYh9d3nZaLZljkOtWmg9pgvrRRguIJg6HKyauethorhvPMZe/sNg2KBFp?=
 =?us-ascii?Q?tocKMsyFaanulshoc98wvFYjLfNAPyoFt1q0Z1OicUmwVX5/ZsQWMop1pgwp?=
 =?us-ascii?Q?7T8NlPJ/nwmwnI5V3lzFCE36IU5u+8/N/8Nd5Tq4v7JIW8LyiEuYlC6jgGmG?=
 =?us-ascii?Q?RTCr2GHYScb/+HC+b+99J+nsuMf7aFrH6oiQAuhJIsXQyZlVRsIacMYRbP3B?=
 =?us-ascii?Q?nsdL6KG5tLC7IUYpCEr4KNIH1X0b+ka8nbBNf5EmQfGfuk/Cm6mP4kdjjj7x?=
 =?us-ascii?Q?Nw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d60552cb-d46e-4041-9223-08dbdcb0bdb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 21:06:25.8240 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JM/vALls0thAZgzjQeRfDWfJmBFi9OQGSAlUopMnvSpzm0geKO35v90Zifx2doscHmEnCuMfm1pq7t50CNgnPNo8PZ7Cag6niqGh6KDJBLs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5507
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

Hi Jonathan,

> -----Original Message-----
> From: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Sent: Friday, November 3, 2023 1:15 PM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>;
> chris.p.wilson@linux.intel.com
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily disable CPU cac=
hing
> into DMA for MTL
>=20
> -----Original Message-----
> From: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Sent: Friday, November 3, 2023 1:02 PM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedes=
ktop.org
> Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Cavitt, Jonathan
> <jonathan.cavitt@intel.com>; chris.p.wilson@linux.intel.com
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily disable CPU cac=
hing
> into DMA for MTL
> >
> > Hi Jonathan,
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf O=
f
> Jonathan
> > > Cavitt
> > > Sent: Thursday, November 2, 2023 10:59 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Cavitt, Jonathan
> > > <jonathan.cavitt@intel.com>; chris.p.wilson@linux.intel.com
> > > Subject: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily disable CPU cac=
hing into
> > > DMA for MTL
> > >
> > > FIXME: It is suspected that some Address Translation Service (ATS)
> > > issue on IOMMU is causing CAT errors to occur on some MTL workloads.
> > > Applying a write barrier to the ppgtt set entry functions appeared
> > > to have no effect, so we must temporarily use I915_MAP_WC in the
> > > map_pt_dma class of functions on MTL until a proper ATS solution is
> > > found.
> > >
> > What is the performance impact here? Are we disabling caching only
> > for the pte changes/scratch pages or does it extend beyond?
>=20
>=20
> I don't actually know what map_pt_dma is used for, but if the name is
> indicative of its purpose, it should only impact mappings into the dma
> page table.
> As for the performance impact, I don't imagine it'll be much.  Maybe
> a single-digit percentage slowdown?  It might actually improve
> performance if we're avoiding enough cache misses, but the true
> performance impact would have to be measured empirically.
> -Jonathan Cavitt
>=20
Even I am assuming the performance impact to be low as only pte uncached
would be uncached and hence
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>


>=20
> >
> > Regards,
> > Radhakrishna(RK) Sripada
> > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > CC: Chris Wilson <chris.p.wilson@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_gtt.c | 20 ++++++++++++++++++++
> > >  1 file changed, 20 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c
> > > b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > > index 4fbed27ef0ecc..21719563a602a 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > > @@ -95,6 +95,16 @@ int map_pt_dma(struct i915_address_space *vm,
> struct
> > > drm_i915_gem_object *obj)
> > >  	void *vaddr;
> > >
> > >  	type =3D intel_gt_coherent_map_type(vm->gt, obj, true);
> > > +	/*
> > > +	 * FIXME: It is suspected that some Address Translation Service (AT=
S)
> > > +	 * issue on IOMMU is causing CAT errors to occur on some MTL
> > > workloads.
> > > +	 * Applying a write barrier to the ppgtt set entry functions appear=
ed
> > > +	 * to have no effect, so we must temporarily use I915_MAP_WC here o=
n
> > > +	 * MTL until a proper ATS solution is found.
> > > +	 */
> > > +	if (IS_METEORLAKE(vm->i915))
> > > +		type =3D I915_MAP_WC;
> > > +
> > >  	vaddr =3D i915_gem_object_pin_map_unlocked(obj, type);
> > >  	if (IS_ERR(vaddr))
> > >  		return PTR_ERR(vaddr);
> > > @@ -109,6 +119,16 @@ int map_pt_dma_locked(struct i915_address_space
> > > *vm, struct drm_i915_gem_object
> > >  	void *vaddr;
> > >
> > >  	type =3D intel_gt_coherent_map_type(vm->gt, obj, true);
> > > +	/*
> > > +	 * FIXME: It is suspected that some Address Translation Service (AT=
S)
> > > +	 * issue on IOMMU is causing CAT errors to occur on some MTL
> > > workloads.
> > > +	 * Applying a write barrier to the ppgtt set entry functions appear=
ed
> > > +	 * to have no effect, so we must temporarily use I915_MAP_WC here o=
n
> > > +	 * MTL until a proper ATS solution is found.
> > > +	 */
> > > +	if (IS_METEORLAKE(vm->i915))
> > > +		type =3D I915_MAP_WC;
> > > +
> > >  	vaddr =3D i915_gem_object_pin_map(obj, type);
> > >  	if (IS_ERR(vaddr))
> > >  		return PTR_ERR(vaddr);
> > > --
> > > 2.25.1
> >
> >
