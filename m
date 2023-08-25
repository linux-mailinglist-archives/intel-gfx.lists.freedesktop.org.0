Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EFA788B61
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 16:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F3DA10E6A5;
	Fri, 25 Aug 2023 14:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0544D10E6A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 14:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692972933; x=1724508933;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gIWY5g+skP/ylWHY4gru10mgGQqShwW8X94wlVFlSGk=;
 b=PwqFuNHzTgf3MhtW5O9TF1h+J8PtyC+JD/3+tHzh3cPN4mHZvS/JfLY4
 7Ps0G69WTUy0bHb9zpJuH5Dv7GCCYsjOIdkGzA63N336/otU19XBdIPfv
 T+QtdKHGR44/KkzeaVIJsDJIT1EWMxx4wAUOcOQY+kkF7b6MiaRVaV5Kv
 wS6X6kMxWtVFsEjdm0izjW9nRsTTydqVNgY98zlgHRAhRHMIWCTYyYfkW
 71imdzeBmaPQyRSydg1BMpWr04vsX9Hx8xMYGwC9LAS2s+Fj2Fw3XXDgc
 TnIFkf6fbkK1dXspCT0e1QZDQ2tBG3hfJf0EPdBkgNVupC3g/R0KQdSf1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="355050162"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="355050162"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 07:15:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="740617980"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="740617980"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 25 Aug 2023 07:15:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 07:15:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 07:15:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 07:15:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=afKq5N2bMHPmve7wY8IdLb9Rl9AjZakQTnbGCDjKCVLskxwfK2T8VeDnhmyFZKXgOd9geWHS9z2SRTXrtUJWk8exwzyt4fe/wNu8b/eylV4XOZlGbBI+iUOTpaPYf5uOvbxEUVhO8JIB6LIsYyZGcbnBbXX102P5lnlmnLAXGG/rW68ainzmyN8fvxUWRqOBphCAKxCR9ssfv/1Satl06PB4oPLiwJB4hSqKWrLH29C7dGwzKr2mqsOKHSchgMLML3Epm+/OkS8HKPIQQRoD8iYcrd05imVYyvJSDeb3SdgVn+n4/zOX5WNWvR6m/v7jr+Q5dMO3rflTMm0IMjhBGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S2AM4xCGfiYFiets2QIlu3wvRSESyr5FC2/d+AlnACA=;
 b=HPGW9FECSMuDXCIn47ZiLC6e2HIqY9GkdFCx6hGfJCrvfV/R70t5jdtNciJ9lvw9lBCRrRY8huBsawJWyP21F65pXic2hPcCmZ+F3DoJGonXO8cIuX0Rg9AD6XmNIrbItfGHdwDc3FGyfFfJ3Lh3Rar9BNlUG2KxxlQkDlsDThKpjm9u8NwxrhCQJUj1h6B5D7+3UFySYKBbaI7scZMiJRq5b0STayVDdbex/S9dddqSQ0NsUz2I+IkEk5dgPNfkj4Dkt4OZ0+8jDdFoaet0jlJZNh2gRpwcoK217OFivl7bbAnBuuHgp+CbpyQLoZMGsHj6XnUvgi6Lm/MbWFzfIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 IA0PR11MB7259.namprd11.prod.outlook.com (2603:10b6:208:43c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Fri, 25 Aug
 2023 14:15:27 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::8934:bc24:bf8a:2316]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::8934:bc24:bf8a:2316%3]) with mapi id 15.20.6699.028; Fri, 25 Aug 2023
 14:15:27 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [topic/core-for-ci v2] iommu/vt-d: Check domain
 flags before setting snp bit in page-control
Thread-Index: AQHZ1tyLEWgrdQN+2Uq3lMJgWsvbqa/6lDQAgAB63oA=
Date: Fri, 25 Aug 2023 14:15:27 +0000
Message-ID: <DM4PR11MB59710E7CD4B94D2A5F5BA04D87E3A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230824224249.365665-1-radhakrishna.sripada@intel.com>
 <87ttsn3947.fsf@intel.com>
In-Reply-To: <87ttsn3947.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|IA0PR11MB7259:EE_
x-ms-office365-filtering-correlation-id: 8475c054-a851-4598-583f-08dba575bb45
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Qq0TdwB5w2T8CK8Ytu/aznggKR6NsIaCRmzDKMKBeXafhH4CfDpZnSLNV/2hH927n0rFB0hy2tXp/5VxxhUdnrcqi4H0PN6/UD4TsOyiJm6YJ04b1bvCJa9sM0nXgrg2aDNB+aoGXFSPAQJGRl3cbi7p4UJWkYZAudNd0GhTfzkaHS0zUNbzbVF2Fi7D2QjCWAssmn30wVUEzxRnlDmzS+EOsoASCSw3kW/ALaoWs/1vyfylm/zWvU7xV/ml0XM7lwYiQHaBuj0cfmEp1oquLu4epdrJo+P1OLWC8sV5klp8cLngAFg3irX+92prp0QRRwnmaqE3SNQAHW4F/dND6TLyBZ3Jwi/igAizUly+5QYkwJKbpzXIWPggg6f/Gqp4EXn1erWk9R6XOalCySR4bI1z+PlR7Z+afSEYb02GAPwPo40aC5GWO5FCuq/9p4lChnnfXBGgrhRY9DCAdULahcXTpVNNtNwQUI84tsAHjSYUXHBBqkgNKo8PoczpiSlN28IgBX6ve6DMO/BazylOye6qr1vocS0YRAz6E3iG4d3JVZOP/I6y00EkePfvkBqG3D5OnldXHTYv4EN1kuwAe6KOupoijRG0qFWoZM2e1p/xer0YFPrvrr/Xji3NY/lw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(346002)(39860400002)(376002)(366004)(186009)(451199024)(1800799009)(52536014)(8676002)(83380400001)(4326008)(5660300002)(8936002)(26005)(55016003)(33656002)(71200400001)(38070700005)(38100700002)(82960400001)(122000001)(76116006)(66556008)(66946007)(64756008)(66476007)(66446008)(316002)(110136005)(478600001)(41300700001)(9686003)(2906002)(53546011)(6506007)(86362001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8VORXh536AoJprEY4ZCQlMQIGfbNEPWz10uNLObAL16hTjWE9JInu9d7UdKj?=
 =?us-ascii?Q?UT7+dSm/3FbH7v3hWg9OfCrD1ishCZ6XaF0Pik7VYhCKWPdfZnsMKQfWIUZa?=
 =?us-ascii?Q?RHlAq/61am7E1uahsUhlLTxKE5My9I+N/CzIqcYc/w/mvFjv2Ik3WTJ+LdR3?=
 =?us-ascii?Q?XJl2Nc184wxEsVxQa47WvESqpTV7JH5u1DBluR+C0Uu/H0PXHn+HzyOM4LE9?=
 =?us-ascii?Q?rvaQpJQQsnWYxb2V9E5V0Jjy3CU8tWRwy6NCCO3g3Yk+Lmv5qEKO4+WNyNO1?=
 =?us-ascii?Q?FdWLLyQhMN1fHB8CPHW6P/RJDDOI4lA9OA6L/8+1yr9BTl7JqVgOUbuABV4b?=
 =?us-ascii?Q?+H7u5RcwfsgjsINFevy1Pg+bzE/tBJwUqmvKyihmIcbLj7heK89RD+9zvrCZ?=
 =?us-ascii?Q?AbT8HDoCMmaUj6qJcIsoW0VEYqMn2obI5un/EAVk7ku7pjzS1zf9pswiTUFN?=
 =?us-ascii?Q?EeAFbVmvF41Y/cdHkZKZg7xwomZibKNrZnoLQKTNJfy28wfgUn2IkYWn4DAz?=
 =?us-ascii?Q?N9oasmPdeXRFJXeeUfUyj9sZ0suwNwTzo9nvXapzGUiN1q/H4R2vpWNqCzDM?=
 =?us-ascii?Q?HM+9QRZHXl1TWoEo4JPxbivBH6Yf8o/iO0lH3q8+bh/JjGVF5qwET/unwzub?=
 =?us-ascii?Q?u8Mqf4TqFKjU+6g1ZEqcu1L/lnTNGdYRb/IX1vCQUdj39ZxaUD0elZg/6a9L?=
 =?us-ascii?Q?IYC6fg2JJfwmHNvOLlepeb0U0NI2apaqpn8NofnEQR2gDNkeDn4G9zsWfAOU?=
 =?us-ascii?Q?AubQtFioHv8d5fVOKcBB8TYuVVms7hSW7r+XJ98KjrVJ9+BJuet9qprR/lqC?=
 =?us-ascii?Q?dFUpcfG2rJOZJRhhPXCZ+zUzo66SeXNw4R+3DxK/U3uIOQfz7MMaDHWIstoI?=
 =?us-ascii?Q?RSrviIOWM53NEnfNiFKYjwaGRdeyoOq2X72KUPSQTwODF1wrYivU0zJDWPwJ?=
 =?us-ascii?Q?eAR4k4ZtgccOiplqn02GC0C0XXX01noRiZeFdUvoyE7iIIrWEYyaXsh2zwZx?=
 =?us-ascii?Q?NbW4uoyq9O+4dLoVwdGgddWI7/kKvAYth2/sR+ax0hngQzleN80iQ8qMkiHl?=
 =?us-ascii?Q?Y4PFjaiqWRWSBSu4lXp22gOS/KNE4ei2dolpaUMpS4WY+GQez7U3JLNIuYrJ?=
 =?us-ascii?Q?nnFzi0By8ToIZ+PBuJ7EEw0ZDI3tOtxNUhfKXfKvUNm9LhVulEaF9ezpdyVv?=
 =?us-ascii?Q?fUL0Hq9IaKmA+4ihYwHYtqa5gYBDoRM2Irze37FjSF9sBRM/GqZHB3kE/TIh?=
 =?us-ascii?Q?Z+RFH0BIXBSjFRLMkudOLW33EsJqIp8ACVUkadIsqmjZOnyB+LvMC7+SaVA2?=
 =?us-ascii?Q?3aXB1Cok/pV2lJpkW+nhlc4ix84PL7Bcnqkjm4cjKvNm9KKB0KxZHOn1deds?=
 =?us-ascii?Q?i4PmSJxZYrvu0ZvRJL1htKAoCF25dokd/IDjvKHE7CqWWdIi6NJDGop4koiO?=
 =?us-ascii?Q?IktktRhKS1jA4tp7yGTzDu0ixJeZ+iOap9yQV+4TBfEv6lUmuN8tafiwCeN4?=
 =?us-ascii?Q?cuYlLj/b+jSRxpukF3QSpR5d5fiSEVwy8SViJ+x3okCbA7hrejmYAjsMt77U?=
 =?us-ascii?Q?zizhZSbPtiMYRlQZH7uszOXlyl5jMjTj2BjvqxtyaGlDCMruOA6L5bi/A6+x?=
 =?us-ascii?Q?KA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8475c054-a851-4598-583f-08dba575bb45
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2023 14:15:27.4647 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +klOjcFiIOeJrdQNrvgqDP+WLqXNeaUQuW7fb0kiTl0y/CkMu0ly0wEejqvIg/llcwRRoQ3zXzk+eLF7WhbYfta+PUybYsKuMAUWinDB4z0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7259
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
Cc: "Raj, Ashok" <ashok.raj@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I was trying this as a solution for the Pipe fault errors. However, I still=
 see
The pipe fault errors which do not occur all the time.

Will update the explanation in my follow up patches.

Thanks,
Radhakrishna Sripada

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Thursday, August 24, 2023 11:54 PM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Raj, Ashok <ashok.raj@intel.com>
> Subject: Re: [Intel-gfx] [topic/core-for-ci v2] iommu/vt-d: Check domain =
flags
> before setting snp bit in page-control
>=20
> On Thu, 24 Aug 2023, Radhakrishna Sripada <radhakrishna.sripada@intel.com=
>
> wrote:
> > From: Ashok Raj <ashok.raj@intel.com>
> >
>=20
> The *why* goes here, along with a link to a gitlab issue.
>=20
> Please don't expect topic/core-for-ci to have lower standards than any
> other branches. That's not the case. On the contrary, you'll need the
> *additional* justification for the commit being in topic/core-for-ci,
> and the gitlab issue.
>=20
>=20
> BR,
> Jani.
>=20
>=20
> > Signed-off-by: Ashok Raj <ashok.raj@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > ---
> >  drivers/iommu/intel/iommu.c | 2 +-
> >  drivers/iommu/intel/pasid.c | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
> > index 5c8c5cdc36cf..71da6f818e96 100644
> > --- a/drivers/iommu/intel/iommu.c
> > +++ b/drivers/iommu/intel/iommu.c
> > @@ -2150,7 +2150,7 @@ __domain_mapping(struct dmar_domain *domain,
> unsigned long iov_pfn,
> >  	if ((prot & (DMA_PTE_READ|DMA_PTE_WRITE)) =3D=3D 0)
> >  		return -EINVAL;
> >
> > -	attr =3D prot & (DMA_PTE_READ | DMA_PTE_WRITE | DMA_PTE_SNP);
> > +	attr =3D prot & (DMA_PTE_READ | DMA_PTE_WRITE);
> >  	attr |=3D DMA_FL_PTE_PRESENT;
> >  	if (domain->use_first_level) {
> >  		attr |=3D DMA_FL_PTE_XD | DMA_FL_PTE_US |
> DMA_FL_PTE_ACCESS;
> > diff --git a/drivers/iommu/intel/pasid.c b/drivers/iommu/intel/pasid.c
> > index c5d479770e12..a057ecf84d82 100644
> > --- a/drivers/iommu/intel/pasid.c
> > +++ b/drivers/iommu/intel/pasid.c
> > @@ -538,7 +538,7 @@ int intel_pasid_setup_first_level(struct intel_iomm=
u
> *iommu,
> >  	if (flags & PASID_FLAG_FL5LP)
> >  		pasid_set_flpm(pte, 1);
> >
> > -	if (flags & PASID_FLAG_PAGE_SNOOP)
> > +	if ((flags & PASID_FLAG_PAGE_SNOOP) && ecap_sc_support(iommu-
> >ecap))
> >  		pasid_set_pgsnp(pte);
> >
> >  	pasid_set_domain_id(pte, did);
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
