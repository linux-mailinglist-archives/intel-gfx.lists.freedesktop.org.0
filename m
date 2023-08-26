Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8723C7892C6
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Aug 2023 02:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1F1C10E6F4;
	Sat, 26 Aug 2023 00:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A22D10E6F3
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Aug 2023 00:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693010826; x=1724546826;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iDyyc9QY/kfsv4JKCROA+YA4K381GQrp3VEipG10mYs=;
 b=hTd/oIm1u+QQBs7gYryuK44YprFSPapih4+l1MK3c+ScwkDQlPLWixqc
 j/5YwVAnePiySnBpwG7bHY9zM62jiefc3WdHnD9NKx969BAGlH/966HSb
 YBaEHx+WhI+4JXWvEmmlvHS3gUmjv6XtlInKVLZ0C74iM5zmiM69eL5wG
 Zo8Pi8lWhEA5VjlCqI90r+fWW3brJe1IOr0ABCNIdM4D18ew5MKmqzDZx
 0r7B/Nctf+4xtM4qPBj8DM/d2mitSuRYiL+f3gshcCLW7dPK++RBdpVMA
 RlVpU8ZARfDP/trgKNWIGUrBmSrdKCq8ZjpuG51qkxFSDAcEeSXx6nVDP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="374806635"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="374806635"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 17:47:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="714516976"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="714516976"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 25 Aug 2023 17:47:05 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 17:47:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 17:47:04 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 17:47:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Br8q24Xt8epzuUHBHCiGuQAa2JeWMgUjkwIPpsMa6HypW/y/7UVn9J/+CeNPLoFv7A3GcnT9ij7Ia1NtT4WwzzM5h4BSKt1929thydzMFkhdpYsQL1oU5SVy1NGviqkghzpiNZHQMXTh2Bs/QgyXAH5fwGtgC5tIsv7t4Ch1+/X3aGhd7gjOX7KL6Qv2gPY5mLUndH7k1n2NOf5oLHNeDhmHprMsvJDgPxhZAkrKq2CstS0xXMhhl0TlCcQ8VjtlW1pH4NdHDl6kzboKhbXOSaiSnpuiWLlGTMJK5vxlnlV61+um8s7T4i1g3NM33heoOiXDZc18mmSoh+u8hXGfRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6ajS1TUGJq7FzeSjr+g0X4NRhl0kYpeFwR8p8p7UaCA=;
 b=Ew36HAdsdyhQZd7t4/oiKsdEMKJKxyUL2xw0HFoXrEFz3WAQlbizi31ZBVYDvx1pCWcVBmWb/20RRSa5K4n/93DNEzJsxVnBsKV/P2o9QE7egveU+ZvASpOftzCVN/9ftuJhlvFQThXIPBetkw63a9pDsmUhG95+xdHF0B/07HwKCPih9PGnstMyjZGREK0wUmBEcbnLN+Rt94tjobMXfErZ0a4l5TGK4i3oyhSoJwHQ/yTGhaZIIQPiauMfvQLJpHROrNV8e1Jtlliv3q0op/UmqqjUhzWEUJVeBCCjwssoZg0e5DuBeDYp2sLuc3qHulv/pf5Zpm+FTOLLXLcgbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 PH7PR11MB8600.namprd11.prod.outlook.com (2603:10b6:510:30a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Sat, 26 Aug
 2023 00:47:02 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::8934:bc24:bf8a:2316]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::8934:bc24:bf8a:2316%3]) with mapi id 15.20.6699.028; Sat, 26 Aug 2023
 00:47:02 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@kernel.org>
Thread-Topic: [Intel-gfx] [topic/core-for-ci v2] iommu/vt-d: Check domain
 flags before setting snp bit in page-control
Thread-Index: AQHZ1tyLEWgrdQN+2Uq3lMJgWsvbqa/6lDQAgAB63oCAADTxgIAAei9g
Date: Sat, 26 Aug 2023 00:47:02 +0000
Message-ID: <DM4PR11MB5971D79917BC3897243CF62A87E2A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230824224249.365665-1-radhakrishna.sripada@intel.com>
 <87ttsn3947.fsf@intel.com>
 <DM4PR11MB59710E7CD4B94D2A5F5BA04D87E3A@DM4PR11MB5971.namprd11.prod.outlook.com>
 <ZOjjk2Gde6u7tOke@rdvivi-mobl4>
In-Reply-To: <ZOjjk2Gde6u7tOke@rdvivi-mobl4>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|PH7PR11MB8600:EE_
x-ms-office365-filtering-correlation-id: 336120c7-8f6d-4f67-47ab-08dba5cdf651
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fDRyoStzoDeSPllhBW3uOdUmOqyoavdBuGoY/N+2cA72veXNhsRI29TP1b4oId1D0oTIZG58G10kn+toIN1RyQzqFFf5bdvV9U/6fbxgNpVgodnFNBVHKianTiJ8V4BUEBBd2pU79aYOeEGHUV+7nLmLozvnn2H0JNxyB3mWhb8at14bi1S+bv7f0WCBb9BmrjPd4YP979f18OTOIO/OU5tWH4mtw9USRT6oRNviDFCFYBy+64xfrlAtsGAvecckORsejpwqp+wa4OZ5Cv6S/qvEdOuiqrCa1FNsDzc/K/xhhQEFrQPnR++Wd4Ox75P0r0O2O+ic7EYC2sVOdsBmjLTKKM4QoNO01YJa+TO9pjMiUc26viOuSbbk1QaY3etdVz02lEftT3rEbzLWH/4cNfPZFwIYSAEmNjCWKsls4P0xgRPusTvgoLTJF0fQdP0FnfbcZyvkXD5acfxE/s/Gox9CzJKx+t5DMMBg5ERo+21tsW+Xihl+MQy61W60jrKTBTczO9dKYoPW3r6G7lZTl2bA1Q1pUrazxDkBP56vnhYK6bh5K4Qm57b9i43qWMJB0BYJ82XdOxQJGsr3idcUkOgT/swmUSKp6UPfMWijQvN8dHX8b6IjoOWCBipUgHuW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(396003)(346002)(136003)(186009)(1800799009)(451199024)(52536014)(5660300002)(8676002)(4326008)(8936002)(83380400001)(33656002)(26005)(55016003)(71200400001)(38100700002)(38070700005)(82960400001)(122000001)(6916009)(66476007)(64756008)(66446008)(66946007)(7696005)(6506007)(54906003)(66556008)(76116006)(316002)(478600001)(53546011)(41300700001)(2906002)(9686003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?g1xcq9pZ9reJ92cQGDrAO5o/hH5sF5EV0BnKinxfyjdKNcddCOdswQOeMk5O?=
 =?us-ascii?Q?eIdvoME2w6w/AjFyKNDNfdfAk4oYWChNTImp13ily9C+qJNRqof8PXB4yHcX?=
 =?us-ascii?Q?y8xOxt5X3TDRj17AXZmwTQVmiCw0CDKFvSopdje6+VlH6C724aHrMW/FANXP?=
 =?us-ascii?Q?V/bq4T9D2YuEGj+ovCOMAHFyW+e14UpfcxI1P999CeZdTq0w9QZYtUokuZtI?=
 =?us-ascii?Q?1s5UsyNW85s39eGRqeYX+k6cnpF2uldSCnD5B7ziINuulpF5L12ave2S6sdr?=
 =?us-ascii?Q?0um7e4oeWf5WlDF8pd3u2rGVCvqfwAG7HMABHNOJF8q1wSTfyfyCoHQbaBp2?=
 =?us-ascii?Q?YfURGXApNFkXZLyQmpxqN9Og0e/n/awe6A3UR6kMP7T7B+t0U6ggenDMytvu?=
 =?us-ascii?Q?t+dKSZX9s37oKhhqiqf4gOPa+UlTIrcUZEMot+HDhBmoEklfzm4kVI5ILHQy?=
 =?us-ascii?Q?FG9pMlFtO7cWpFef4DwwQGfNl87EZL31qRjvwwH/5Knnbh48o9NJr+ZC6HQU?=
 =?us-ascii?Q?zSR9kuM3yncLbpnyevhAY49UeGW1i6ZrSZ/8iZTK+PtbD2MVYIZn3wWozvpN?=
 =?us-ascii?Q?qVqtcrk+0ThXvZAII6hM+7Zlw80PuqfM5NezUMHQhttzYyq+TohMC6my6uw4?=
 =?us-ascii?Q?I2V/lzXo+LlTe3sICQF8gn/rpadp48DU/CMnQ/s3ZvHGW/4l+uEPhc+/5luy?=
 =?us-ascii?Q?bu7CRA0BvjCSkI9RZo4VdJ5os4OSjCsWefgRPKg+lT5L2EoOGhW3AvPfAsyC?=
 =?us-ascii?Q?BUfRuKZlqGnH7axucT/zSjfrF+X9tLe2lLjG5vdQ3Ir94hsjnmpuznrklWkV?=
 =?us-ascii?Q?mYq4CZgE9qz9lUQC1p+GVWdkB1xsIFclhlxNoOKc8b1RpfnwPTDYqlLMk2/B?=
 =?us-ascii?Q?TmyS0SGgzRqyNdXyZ7ebBaXtY5Xjijzfs7nzgDEbTvFLh1w9o51aoWwtI2Xm?=
 =?us-ascii?Q?faEQttBUGXSk/6LmP2P4M3/KNs80sPC/Z6zHfXSn6hal1DktFIL8yjxw3mX7?=
 =?us-ascii?Q?J/UJrenNW+H2y3NBxUNeuRqULYO1EnUIHBXdkW6U+INaGeaClObCc/BENjFF?=
 =?us-ascii?Q?k9fTV4+4DtMCXa6M+uS1LZAVJADIu6RqcXXPQ6jbR4DgfkYUQ5JtcKP+Wf/v?=
 =?us-ascii?Q?F+2dYRNlqUhIpHLhj+X90sFM3uyOPQmmEZsbCPFrCN3+hNDRVmHAPU3b0u2Q?=
 =?us-ascii?Q?De/QF5410MZ055uQhAGstiZhbD5ZsJanK5xd82PDIYvmatoVAuNl9b6D//zQ?=
 =?us-ascii?Q?cvvQ3XHAHtiMT336+cqVHqa+yLhUfrfl6emjjwe+UMzr69+1hAxgGvAVx9nT?=
 =?us-ascii?Q?LUbuk1d9eQaSPI5kM0ML7P2+BA6PLmCfAKG1kjNKLp3E7K97Ls1nWLTY8A3i?=
 =?us-ascii?Q?HdOe7WTs6/Dmu9aAORqTMGV9Xhux2VdPRMd1S+I5UUtCGdfofRNpr6OcN4Vq?=
 =?us-ascii?Q?97XRuCvt4CJu8KPlPV+1luQ8H7kROJdachw2u3kRg91vDkIRtQEC9ZDgebg+?=
 =?us-ascii?Q?9Tmp7H2A++uv4pSbAi9+d3wFrAICqBtP+SMRWbERYTEu4vj2sp2zNIAC42L8?=
 =?us-ascii?Q?D5lsJTL4EcxNetc03b4RRnAaFOqk1ofioNl7Iya/aGdzY8mjRSr7JuQZZNkW?=
 =?us-ascii?Q?XQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 336120c7-8f6d-4f67-47ab-08dba5cdf651
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2023 00:47:02.2119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3D8WrkvPtfN8lugeivdk92N14oRHSvT/J+VvY8YI2J/goZkiHyIowfVbv7anIHN1Zt+blh6TJnPDfaGJorQB67hy0LdqBcvai0HpejxtdG4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8600
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [topic/core-for-ci v2] iommu/vt-d: Check domain
 flags before setting snp bit in page-control
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Raj, 
 Ashok" <ashok.raj@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
> Sent: Friday, August 25, 2023 10:24 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>; intel-gfx@lists.freedeskto=
p.org;
> Raj, Ashok <ashok.raj@intel.com>
> Subject: Re: [Intel-gfx] [topic/core-for-ci v2] iommu/vt-d: Check domain =
flags
> before setting snp bit in page-control
>=20
> On Fri, Aug 25, 2023 at 02:15:27PM +0000, Sripada, Radhakrishna wrote:
> > I was trying this as a solution for the Pipe fault errors. However, I s=
till see
> > The pipe fault errors which do not occur all the time.
>=20
> We should avoid overloading CI with tests. But if needed because we canno=
t
> reproduce locally but only on CI, please use the try-bot list instead of
> this one.
>=20
> And in the very last case where this list needs to be used, please use
> another prefix like CI or HAX, but not the topic/core-for-ci, otherwise
> we will think you are already asking to get that merged there.

Sure will update that. This is a tricky bug that resurfaced after removing
Iommu=3Dpt kernel command line. I already took down one CI resume system fo=
r
debug but the issue occurrence now seems to be intermittent and difficult t=
o narrow down.

Anyways thank you Rodrigo will add the CI tag for later if try bot does not=
 help.

Thanks,
Radhakrishna Sripada
>=20
> >
> > Will update the explanation in my follow up patches.
>=20
> >
> > Thanks,
> > Radhakrishna Sripada
> >
> > > -----Original Message-----
> > > From: Jani Nikula <jani.nikula@linux.intel.com>
> > > Sent: Thursday, August 24, 2023 11:54 PM
> > > To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> > > gfx@lists.freedesktop.org
> > > Cc: Raj, Ashok <ashok.raj@intel.com>
> > > Subject: Re: [Intel-gfx] [topic/core-for-ci v2] iommu/vt-d: Check dom=
ain flags
> > > before setting snp bit in page-control
> > >
> > > On Thu, 24 Aug 2023, Radhakrishna Sripada
> <radhakrishna.sripada@intel.com>
> > > wrote:
> > > > From: Ashok Raj <ashok.raj@intel.com>
> > > >
> > >
> > > The *why* goes here, along with a link to a gitlab issue.
> > >
> > > Please don't expect topic/core-for-ci to have lower standards than an=
y
> > > other branches. That's not the case. On the contrary, you'll need the
> > > *additional* justification for the commit being in topic/core-for-ci,
> > > and the gitlab issue.
> > >
> > >
> > > BR,
> > > Jani.
> > >
> > >
> > > > Signed-off-by: Ashok Raj <ashok.raj@intel.com>
> > > > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com=
>
> > > > ---
> > > >  drivers/iommu/intel/iommu.c | 2 +-
> > > >  drivers/iommu/intel/pasid.c | 2 +-
> > > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iomm=
u.c
> > > > index 5c8c5cdc36cf..71da6f818e96 100644
> > > > --- a/drivers/iommu/intel/iommu.c
> > > > +++ b/drivers/iommu/intel/iommu.c
> > > > @@ -2150,7 +2150,7 @@ __domain_mapping(struct dmar_domain
> *domain,
> > > unsigned long iov_pfn,
> > > >  	if ((prot & (DMA_PTE_READ|DMA_PTE_WRITE)) =3D=3D 0)
> > > >  		return -EINVAL;
> > > >
> > > > -	attr =3D prot & (DMA_PTE_READ | DMA_PTE_WRITE | DMA_PTE_SNP);
> > > > +	attr =3D prot & (DMA_PTE_READ | DMA_PTE_WRITE);
> > > >  	attr |=3D DMA_FL_PTE_PRESENT;
> > > >  	if (domain->use_first_level) {
> > > >  		attr |=3D DMA_FL_PTE_XD | DMA_FL_PTE_US |
> > > DMA_FL_PTE_ACCESS;
> > > > diff --git a/drivers/iommu/intel/pasid.c b/drivers/iommu/intel/pasi=
d.c
> > > > index c5d479770e12..a057ecf84d82 100644
> > > > --- a/drivers/iommu/intel/pasid.c
> > > > +++ b/drivers/iommu/intel/pasid.c
> > > > @@ -538,7 +538,7 @@ int intel_pasid_setup_first_level(struct intel_=
iommu
> > > *iommu,
> > > >  	if (flags & PASID_FLAG_FL5LP)
> > > >  		pasid_set_flpm(pte, 1);
> > > >
> > > > -	if (flags & PASID_FLAG_PAGE_SNOOP)
> > > > +	if ((flags & PASID_FLAG_PAGE_SNOOP) && ecap_sc_support(iommu-
> > > >ecap))
> > > >  		pasid_set_pgsnp(pte);
> > > >
> > > >  	pasid_set_domain_id(pte, did);
> > >
> > > --
> > > Jani Nikula, Intel Open Source Graphics Center
