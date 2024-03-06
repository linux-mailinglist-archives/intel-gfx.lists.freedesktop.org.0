Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 300E3873C53
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 17:33:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E2CD113329;
	Wed,  6 Mar 2024 16:33:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CXVprLnr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C13E11332B
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 16:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709742799; x=1741278799;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j2C0kO8y5Giiz7Ra+/AftnoILvcErHhPF7x5DaSrzRI=;
 b=CXVprLnrRYbr9dLMZ2ww4HRRsOPi3vRD+ivpCBHUJGVDMHkfv3Aps70r
 QsODTduk8hw0t94dJaWRLJupXazzZSmeDHsF5Q21irRAlFO6iQ9gKyMIN
 QiSvFeftBB+6wAUQrETPggh0x7XwVezd6mDl8XT+HftCr6Pzjlr7+437s
 I63QbhdULoG+VVBuO3lGo6QZ9EBbbOK3yu5mDxfcFYBL6A9e/4vxA9UxM
 24vY7mYadNcdB6SMzQ2tR8RCAXnsGBjwAu3Q948sl+LNY6WMemdEe+APk
 bHWp/AlWNjeM2bU63+3ScaeP+/upuiqq6YfYR8VdHdMqgMJrM9UmUqDVG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="4517716"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="4517716"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 08:33:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14375077"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 08:32:29 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 08:32:28 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 08:32:28 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 08:32:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b4QjA6fSrDXW7mPqIN+nslzKXS/VP9Hkoffm+vnLuNLk5QSCHpKVUk1XuvebYlv7+CIwhkPkRwVNF+HV9syF6hs3lDbnnk+TRLmUo57pT3jTdOXuEbqC6MNZpeu7+wdVzEngvB/jgbYgO+BK/CQoH3gMNr0EI3nDUQXdSFI8kCEXtMdEBZL4DwbYkWVc0jo55VhwJ2hM1ti7fvQxpN/D5ZensN+39DPpXPTR9nt7iNyQ4bWdmVDSkR2kktEmoZvBmMKmevpi3IhrmhYkAnX2aTqpI7Cc6jvjor52XIfaXFFgRhpzDs3DjVrdc4uo/nGMErtDnbiUBVEh3EgbqC50Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vcsaFVam8jqMCRILSkzcRZsrm+ch81oEZyi3kIlBIrY=;
 b=YOFdkL0laPfPa8PgcJI1O1luyFwE/qHHvv7MZluZa8Un5d+nLn+puXgwCVMgP2+2RrQphUkzdZAR9d33Qut5Hi8aGCb5/zQM2R1VkfZd+MXCMKNmGLBvaODSlwj0UCYW1/8Abeyx32oCz1jvic29h8u6F24NuyeoBxtCtqJ4ntTX7gyYWaRJaoEA9Sb5kKTvofeMOpsCymcdZllmzKM+05uW8YSrUiq2J/FgaO+uU+WvpZDpJVUlYYTDNUYX340MQh3MWlosWkR9lWjDJgfAAKLXa9rQpSN05Uv7Gl0kXWHtXJdZ+of8YaZO1quh0b47pcsys3ac36V5KUkI4V+Z0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA1PR11MB5801.namprd11.prod.outlook.com (2603:10b6:806:23d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Wed, 6 Mar
 2024 16:32:26 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e%5]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 16:32:26 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Matthew Wilcox <willy@infradead.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: RE: Regression on linux-next (next-20240228)
Thread-Topic: Regression on linux-next (next-20240228)
Thread-Index: Adpt7cuPPMBR1f+2T1On00uzl1C9NAACv5+AAAhXahAABzNYAAAC9KTwACGTokAAFxWlgAAvgUaQ
Date: Wed, 6 Mar 2024 16:32:26 +0000
Message-ID: <SJ1PR11MB61294003A5E4624A043AA270B9212@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB61292145F3B79DA58ADDDA63B9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <ZeVis2823T4YllDg@casper.infradead.org>
 <SJ1PR11MB6129A8999D977A46D6E9CA4AB9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <ZeXLAAVtjEz0mB8V@casper.infradead.org>
 <SJ1PR11MB6129E5A41D3B4FEF81C87CC7B9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB61299F3119D2CE9190AF92E5B9222@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <ZedbFeW3nYVTeaKW@casper.infradead.org>
In-Reply-To: <ZedbFeW3nYVTeaKW@casper.infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA1PR11MB5801:EE_
x-ms-office365-filtering-correlation-id: cad0b070-9352-4beb-f332-08dc3dfb0229
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fa3xxKRr201ShADO+NahhWgukj5rzae3ZGMbSO9l/z7Yc1CDPsFrfycsBiPql/F0jR07+3rhhvRByOcovYEVmaEfvjzE36xm7dwDd2H6Q7Sgydp5YmXWVZAzeJ9v7HWTiexCt7gDOt/JnxdKqPATrU0yWTclrXNu+0/0R9Y9u+IRxV+tqq6m7oxgcqbCydt8RcQhM4ULTV9RofHokIZ7fjRHwZn6prcbDUwjdtRdH/Dpara9lKWVHnAwoc7zUOOYU8q2wLqxNas9N3fsyvb86bEfEf1bOTjwiUNz+YgrXdvKUVIEw8op1resLBxLd2rVEojQ5l2vVVDtGRJL8+sbuZz+1hj9+k1paysyxtTRoEuL0GoH/LwuYOg1P33vtgo9L8gbDFI5zTtAX9HZldcvUILOiF9Xfli6h/ddH+Yr4y3ynJ6UL0RtZMAN/S8zhwbJhiWpiTg+IYkNBAXsIe4ZehP9DZ0pGXL1F1WVyOvWjd5D/QBAgI9xkR6nFeXWqv7qsfTWT39YW9qmVOKUH03LlrFWD3lB2jLe4nRNm/0sB6q+xk46CY3nbkQdeQsA1wxQiuD9l91Ohj9ppYmmCLVkk8kec1BpU626zJ7SUGI523paaGXHwRyfgAtJZaIYmreBo12/o/nIe28QyU7x1Tp3cF4H8xNXg1nswwkMDHjUIJ95vor6+pUAu00R2sBGE3gVROlYFqRm0/1CPyZFlEoCRJzbZIT7pUSwOuH9UY1VKE0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NTPPRNf5PyY/dFi4ISu8UNmCSEAzeQT1yawTjDmkGMeYOX+oqPdptrTFxa1O?=
 =?us-ascii?Q?PvLMrTWKRn6VzvDjMaUVTJlPI8Y/66cvIM64rKjT2DiFisBJlQlro4mnhES7?=
 =?us-ascii?Q?J+OSkLuB7CzJsvSiN7Sjm+4RAUR7Wjng8PW8Cm1SkPEPvisfo6l4rYnbuQ0p?=
 =?us-ascii?Q?6Mx6xRcoE8O4qdYABIKpPLJhRb9Q1AhSW/oWqX0k5Juol4Mqxryvbu5G+Hxe?=
 =?us-ascii?Q?CBXuPR5janjt1Sx4oEFydddytYaDSaF9/UMkKD5Q0dMLpCN6Wse4K/TJa064?=
 =?us-ascii?Q?ARjAzEhp8TaWVnUHbpc1/m2D/07Id0BiH1ZJ0jD5wY6joqrsPwgQj7xM8Xp1?=
 =?us-ascii?Q?ecem8VUSbJtPF+EUFa1p/lNmk8TkAUJaNu+GB49gCZMW5ufj8NsLr89L78I7?=
 =?us-ascii?Q?7lnfPt1k04qYX3Kssdn96Fc7Y8uwlCZaXD++C+YCOlTFPnYbxtm8pw1Ob7qE?=
 =?us-ascii?Q?03krmklbDKWfBgVCwJtyeQ4hOegpDtP17TavN8HFaiZnVpvlY5SluHv0PDp4?=
 =?us-ascii?Q?qaNJ5jpcDvTJwAZKKdSfPi0mjjGE/Lr2SRGohPC9cmZqCe3HKHDqhpMVvLxn?=
 =?us-ascii?Q?b5B7ThEWSIeQUD3Hlds5LCgeGoImJwIvHAVyQs2feJIFyCb2jfRRvfW3nHEb?=
 =?us-ascii?Q?bwl+0SGn128RrOJcfG3aOsub2EJjfYU8evXVbxM420gGj30etP2XVcDg1l+e?=
 =?us-ascii?Q?T1OX+0HtF63zchxh+RYE7IPSacYeiXapwA6+/RmUg+mT3T77L/rDtxJ9qooA?=
 =?us-ascii?Q?FBxO3zhIGWrFEMK50gnbziGfwEHI8w966H+9jWCFSJduWyrQUQzSQk6o2qsD?=
 =?us-ascii?Q?1rIbHJvrYYG8j3/frWCwLvitXA17/7KlJft2TeMWTV37USxlz1Gj02UlSnJ1?=
 =?us-ascii?Q?63EsBTLSN/vLEKe1G1EXHWWXnD3T9X5hevpBnkNxC3it+DKYmvwuWYjc86pe?=
 =?us-ascii?Q?3nJm16r4DdPQ509GheA+mG+Ls81B61ruH/gv79+bz0TNrjey5TYe/TBqqhdc?=
 =?us-ascii?Q?jfTm8eAuhFFR2q6GWeoRD91GMFBfkydROuUgg+LapHTYU1tCSwqWzXPQd4ED?=
 =?us-ascii?Q?Sa6yDzD0vuWaC2Vz/CBOfnIus4dq2eVhckpzLyv6gRdrZlbS1pEVd+GAoFQg?=
 =?us-ascii?Q?mxocS2n8hiQnj3Wa3N+4k2VgoNP2fvP6nlrxx4XKEvEUgjSIEGAULcCR1CfM?=
 =?us-ascii?Q?eOH9aoztWEVclwOSn5fNmXmN3DxCfSCmu5Zk9VIG8cFnJxsT8npVic+QPgnO?=
 =?us-ascii?Q?4uL5Z8VU/C3BQd74cEHVbUS3dfBvig/Pm77/sjU8FLNPvwuQDkVDg+Rp63bj?=
 =?us-ascii?Q?mAcexDggM3mCtHD/guXPATTGaNRIohGlENEz6kH3cBm1K+ZF67Wxdjd7YDM/?=
 =?us-ascii?Q?GIj2bfUlZlFk8HmGa1I4+b9ZPL+UADrSBiwqt0NRPDbhaTm1Oa7uPhgNsNsB?=
 =?us-ascii?Q?MTkpwRnEGmNXiNt9zTbseYvF8simLwbQKXNvnDFlTwn+uQQIGZkp9BQuxzv1?=
 =?us-ascii?Q?hLZOQo2+1akr+OM7BXDKkhRB52ObUe+mIIGg9/J/qQONbdcjArHUEjpe4QE4?=
 =?us-ascii?Q?nWeGY5Wt2EnQgPWoxqPoHIqSM6NkkvNubAG8rN8lvPcgWheS7OFIbdTwqXZQ?=
 =?us-ascii?Q?Gw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cad0b070-9352-4beb-f332-08dc3dfb0229
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2024 16:32:26.1601 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S9oMB43iWvvvDAATQ1JY8ynvargRQbhY5Ewzc86e/rhyWCOl/IZpzNeZTDPl2rRvjMkvUNycabHEva8g8rVjdewIeFynknp0mqui6sMcIjo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5801
X-OriginatorOrg: intel.com
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

Hello Mathew,

> -----Original Message-----
> From: Matthew Wilcox <willy@infradead.org>
> Sent: Tuesday, March 5, 2024 11:19 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>
> Subject: Re: Regression on linux-next (next-20240228)
>=20
> On Tue, Mar 05, 2024 at 06:49:16AM +0000, Borah, Chaitanya Kumar wrote:
> > Issue is still seen with the following changes
> >
> > void put_pages_list(struct list_head *pages)
> >
> >         folio_batch_init(&fbatch);
> >         list_for_each_entry(folio, pages, lru) {
> > -               if (!folio_put_testzero(folio))
> > +               if (!folio_put_testzero(folio)) {
> > +                       list_del(&folio->lru);
> >                         continue;
> > +               }
> >                 if (folio_test_large(folio)) {
> >                         __folio_put_large(folio);
> > +                       list_del(&folio->lru);
> >                         continue;
> >                 }
>=20
> Thanks for testing.  Sorry about this.  I think I figured out what the pr=
oblem
> actually is.  I switched from list_for_each_entry_safe() to list_for_each=
_entry()
> since I was no longer deleting the entries from the list.  Unfortunately,=
 I was
> still freeing the entries as I walked the list!  So it would dereference =
folio-
> >lru.next after giving folio back to the page allocator (which probably p=
ut it on
> the PCP list, where it would point to another free folio?)
>=20
> Anyway, this should do the job, without the change I asked you to test ab=
ove.
> If this doesn't do the job by itself, you could try combining the two cha=
nges,
> but I don't think that will be necessary.
>=20
> diff --git a/mm/swap.c b/mm/swap.c
> index a910af21ba68..1d4b7713605d 100644
> --- a/mm/swap.c
> +++ b/mm/swap.c
> @@ -139,10 +139,10 @@ EXPORT_SYMBOL(__folio_put);  void
> put_pages_list(struct list_head *pages)  {
>  	struct folio_batch fbatch;
> -	struct folio *folio;
> +	struct folio *folio, *next;
>=20
>  	folio_batch_init(&fbatch);
> -	list_for_each_entry(folio, pages, lru) {
> +	list_for_each_entry_safe(folio, next, pages, lru) {
>  		if (!folio_put_testzero(folio))
>  			continue;
>  		if (folio_test_hugetlb(folio)) {

The following change works for us.

void put_pages_list(struct list_head *pages)
{
        struct folio_batch fbatch;
-       struct folio *folio;
+       struct folio *folio, *next;
=20
        folio_batch_init(&fbatch);
-       list_for_each_entry(folio, pages, lru) {
+       list_for_each_entry_safe(folio, next, pages, lru) {
                if (!folio_put_testzero(folio))
                        continue;
                if (folio_test_large(folio)) {

Thank you for the resolution. When can we expect a patch?

Regards

Chaitanya
