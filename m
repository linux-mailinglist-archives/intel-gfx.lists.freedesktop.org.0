Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0350871603
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 07:49:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AAE010E012;
	Tue,  5 Mar 2024 06:49:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e8TFDwW9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E89510E2D2
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 06:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709621361; x=1741157361;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x9jgzzFQydEffJNY3Beo3/sTOG355umXEMxcTdabU8I=;
 b=e8TFDwW9wvA2XiOF3rLoY7Z35/gOkWLCLdALLFNLjPr3z03Xl3GHB7vT
 Gq7aBdgofxqC3KWWxiVG+4/umAjIemcmjICtg2sqfKLIpfPULsZlvEvZJ
 krdz2PZQxc/PVZJcI6LDiTGgdJ9+QPcJfPVrcesDGmHL+vi9x2uE+WwfH
 BqYPDUyeORBCjPsLYIAxpbhvCAqq1Q30HwxeV3gPyhbrrJ3jczg5WGLoL
 zv7xHzei+Py5aVGMPvfLrVToh/QtStZhzv+JlYay9x7TDIwtTT7HA2izC
 XBLZmp1aWueOguEMIq78s47wqj09BlIhnqJ9EJd7XfqMA/L2FwG8xJGHA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="15558246"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="15558246"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 22:49:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9235917"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 22:49:19 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 22:49:18 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 22:49:18 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 22:49:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NPQCgNzqqW97cAtj3wVhpxEI0ijrFcwtcKPYV/5na1/hsCIgauYaVah7i6LcMDt1sOkLu50+kVQ3yWhljmdQCL7DPEO4c1sV/ZI19/Dgymc1YZXfOI+ieN1lg/kJWpG18cp9C1fzRgo9PSZCAG2f+jbYcJ4J3BTWLkv5rBii3DWg7il/bImETZEhuRuilyqRCxTxTWM+XaOHBnGhBWKSfMH/Zl7RyDViE21D7r2ukFyLKgt2T6y7EV1KpJvfTWS+nsGfuAgmMDX22VlsVqn7mOBUFcdqcAdIk09k78RqfDiFqXmiUs60zVGuVPTOIsMDw3xV/9QLiISYMCqogUx5Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NVq0VClkVGNGI+9nSZm9s4cuNDMoTO8EVp1EFhmLy9s=;
 b=mqLOkfu+IITyxqOE6slGoJGZcIgOyLRuWkdJxNdgJfDLsxnVkiyeI41uS/FkUASKcytB80oUFMGbwAo+SHlBIhTsoYEu1+0mwDPescRq7Dyr21VzK69w5wfe1Mq7GNOJaQy4FDRL0XMrr2mVO7uvb3AKXAljVn/qjjzyn6N5Xx/t1RbQG+ENvO/kRrA5PWFODMVpJS4sWaA1uj7QaE6ua2hwgKsy4wOrlOROsM5jnjX2fSCcENILAyMwCaSktiW3+AnBouvBh7YDvNCh0xTm0P3oJ/saX6htaVTccooGFXnFEAO3oVu/9F0rm8/3OCVMPcV/Z1I4xv54g+8/Qb5pug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MW4PR11MB6862.namprd11.prod.outlook.com (2603:10b6:303:220::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Tue, 5 Mar
 2024 06:49:16 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e%5]) with mapi id 15.20.7362.019; Tue, 5 Mar 2024
 06:49:16 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Matthew Wilcox <willy@infradead.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: RE: Regression on linux-next (next-20240228)
Thread-Topic: Regression on linux-next (next-20240228)
Thread-Index: Adpt7cuPPMBR1f+2T1On00uzl1C9NAACv5+AAAhXahAABzNYAAAC9KTwACGTokA=
Date: Tue, 5 Mar 2024 06:49:16 +0000
Message-ID: <SJ1PR11MB61299F3119D2CE9190AF92E5B9222@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB61292145F3B79DA58ADDDA63B9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <ZeVis2823T4YllDg@casper.infradead.org>
 <SJ1PR11MB6129A8999D977A46D6E9CA4AB9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <ZeXLAAVtjEz0mB8V@casper.infradead.org>
 <SJ1PR11MB6129E5A41D3B4FEF81C87CC7B9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129E5A41D3B4FEF81C87CC7B9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|MW4PR11MB6862:EE_
x-ms-office365-filtering-correlation-id: 14e350d6-338e-429f-0d28-08dc3ce06031
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CYKIo3+r0XXIKr9CS3t2a7n16J4kDZruJK3PPU6+4Ga7lWKazSHfHyxm3Sog2GgMhxHHnshJ/cfrWcl36cCuffmdegYvwXulc1u8mbvwn39RtgcLys03IEqUsVDm0aqGAg3yTWVBkiVSWf0JdV+Hpsc8FdY43zETMuJU0y2MZ01iB05hYFbf40whFjr3MskNf4l8poyLPBJpCDfo8UjN9RhcZYWvRjrDHsg7I6SzemZa5gVn0jf1hXeQkuosCXPnJ3dnv+XI0LZp/Cvz9L6ZoYYsevAg72zqF3RA2/Y10auufWluDcLdaArlaSQLRLnyyRRwLRceDqe08KOjU5VAIEbDGLGfimW7U4V1dbnWSeOoDxlJKSUdMlYNwKI+GgDWHIYplqfZpKwtDdBOIU9laRJZLrDLCa2Cb04Ll5NVsODMzQZHhWaP/jFsr+0qyvdJ/Mty3KDCyEAakhsPfHh03sUtpAIWSliSHG0AFs0ldiBlCCd0q+Tu+8jX5XVLcGfXNdfR/91qkZjZ7OrCgWQXa3Uff+YxZrRUGhpUp6odIJ5PPoZ5mxQGLLXhAd+ATyuM4+84bG8o9n2F/yG6MnLXghH2IIgBdwoBNmbKHMyOfE97MBEHVbTGr9fTVJ06xde4yqkGU9kgurBiV/ucu+PXhA1ihYBwMUVGL7EJW7yDebPO4GpahDVNlyjxsp1XoIfl8mYLO1cDjyFNpJ8Envjj2dQR7H7kqToPPqRDTyyoOi0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2qDBPsyoggK68FwGGDsxlwIj2FzXlGWfl5Ar9sJNDom2QN4BN1s91QoOacAW?=
 =?us-ascii?Q?WYEISdTZuOo30H9HecP88xAAS+uj9VMh6zQ9SEPPve8vI9IsZb31ruzHgPbP?=
 =?us-ascii?Q?J/NhYwam1XXa4Wfo5K+5FU/yI9QrFQ2MCsYP89ctYT3uH2bKUE2k1b7ZcwJV?=
 =?us-ascii?Q?bYG6CU6ua6Lq08OdXe8R+bHHgO7P8ngJBRcwjGUwMWKDb2BJeHkdDSVwXgoO?=
 =?us-ascii?Q?XkFviJg5kmdz9iU3ohYeYEbXST9+QdLgmk9kCgUNv56Erc3T0S0QPYgGbI2D?=
 =?us-ascii?Q?lobGjmIeN/1auYuMFHzyraSWU0Cvv3eRd6wcKozjT34Iq9bIWeCfSDgTrU7f?=
 =?us-ascii?Q?NgyQ6pomQy2bMCYrj7D6oCD5s/6Yf8jU31l0T5trbeHwLwL1GZMtNqzIe0Cs?=
 =?us-ascii?Q?9qJRIP18owvSS+eoF7IS621jvXWL/emPFxrj3wGEjiMGoal41OvO3ENTjLw9?=
 =?us-ascii?Q?jKTsHwO4XC2dSAmbJkSYVmYgHTFRgAydowbA16YyFOGdfcxLI+gmVj/BEaHG?=
 =?us-ascii?Q?v/jj8qUMLGK2KDhybs0CW/R20fZfE/YS9AGEaEgVqpI55CXrQwKpez3hP1Mi?=
 =?us-ascii?Q?tyv/TsYra8cFroIAkp/y1662fQ7NzoctlmKEWyJ5whiS5Ebf88CKtuGy6i+X?=
 =?us-ascii?Q?PaVHOpcmTLvjas+xNCVFrWGfUfZaoZERSDZF2bhMh9N+6kbkXYz57/yJII/a?=
 =?us-ascii?Q?2iZmTG2G7XDIVbx6kvMfdxaQZyrMQNAg23IXwe1rxDvpgRxonsqEXDXjo7Dn?=
 =?us-ascii?Q?1x27++bWvZDo03s9yymDelvT4sPCd4uSQxWdWV2A/YAeYCughD7PvwfcrfFI?=
 =?us-ascii?Q?AiSbWfaESbiAvvou8KpRlkAlltBmJ3F8nlLdrRxiN5GHUx8wuHHrD9ZhJ6nP?=
 =?us-ascii?Q?Dq15JI/hZf8tq+a9gNghqr+aJPPcxAtOz4TLSMlSajSjeOFFrOM51x41XoWN?=
 =?us-ascii?Q?e6UiC93hIHg9u6erHu/kmuBbBewKfHCUPpEwWpEQsQw0TVi255KMXI22UOBE?=
 =?us-ascii?Q?YddUkteFNALpX5MI11ByD0yDKidTc1bXCv47U6rcEYqzNB3lQhA/VBk7tcm8?=
 =?us-ascii?Q?4dIR9X8Ns0HhlOba8IYP4PcUq1zaUEotwaPJzL1B86G4r8KkWeK0xpWoP9vU?=
 =?us-ascii?Q?KV4E4GSNyO3pcIokY2yQTrbEUCHzNgcXuXMNHajRZ3QNn49c+hVae04WytW6?=
 =?us-ascii?Q?nJQ4DjwHMGwcmdNMxxUSNqns/+smJVy2HDU04gTqJU5H1jiJ8+Dyggi9lnsa?=
 =?us-ascii?Q?9nrKgjR/u0/e0QfnlQTi43ih2br1lTp0xTE6gYCEV/nbq2t8aUSBmCdt38/R?=
 =?us-ascii?Q?V77s4cL+h9Az1cQcBomszPgoVmhxXV6pdum5TiU01WB37+Kgp+22GFJUfGKH?=
 =?us-ascii?Q?VXM3tpOVT19QbXEybPFgAA4QgI3M2BlP9Ygv5bVGagY1xP2VZ/az36WGJIVa?=
 =?us-ascii?Q?5S2jNKo2YB/HO/Z8QC1l92U8UjPubmWCisy2fqN7NY6lArW/GEpc0JfceFnj?=
 =?us-ascii?Q?HZAl4SCc/BCTSLaSZhNMxvNNWIPF1nHC2Gdp2W8DZTvzJ91gpzOmOyYzjCnd?=
 =?us-ascii?Q?OgA6nxdW3twd8WmtdRGjTzoYpZs4SmPLFBxel48C6NB7y2BfvoCjwUgT3uh7?=
 =?us-ascii?Q?sw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14e350d6-338e-429f-0d28-08dc3ce06031
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2024 06:49:16.3571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JsLSJtxuFP/aygkZFPdRKpOgW681sqJ6RaF2672Y5FGsk2Mxzt605kNHzix5SpKAt2ZB4i0Xi6HKgoXHTnw01nsKXDB/tRaVA5DX+RgX2Vk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6862
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
> From: Borah, Chaitanya Kumar
> Sent: Monday, March 4, 2024 8:18 PM
> To: Matthew Wilcox <willy@infradead.org>
> Cc: intel-gfx@lists.freedesktop.org; Kurmi, Suresh Kumar
> <Suresh.Kumar.Kurmi@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>
> Subject: RE: Regression on linux-next (next-20240228)
>=20
> Hello Mathew,
>=20
> > -----Original Message-----
> > From: Matthew Wilcox <willy@infradead.org>
> > Sent: Monday, March 4, 2024 6:52 PM
> > To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Kurmi, Suresh Kumar
> > <suresh.kumar.kurmi@intel.com>; Saarinen, Jani
> > <jani.saarinen@intel.com>
> > Subject: Re: Regression on linux-next (next-20240228)
> >
> > On Mon, Mar 04, 2024 at 10:03:13AM +0000, Borah, Chaitanya Kumar
> > wrote:
> > > > Could you try putting the two:
> > > >
> > > > -                       list_del(&folio->lru);
> > > >
> > > > statements back in and see if that fixes it?
> > >
> > > That seems to fix it.
> > >
> > >                 if (!folio_put_testzero(folio))
> > > +                       list_del(&folio->lru);
> > >                         continue;
> >
> > Ummm ... did you put { and } around this?  Otherwise the indentation
> > is misleading and what you're actually done is:
> >
> > 		if (!folio_put_testzero(folio))
> > 			list_del(&folio->lru);
> > 		continue;
> >
> > which will simply leak memory.
> >
>=20
> Oops look like a miss on our side. Let us re-do this and get back to you.
>=20

Issue is still seen with the following changes

void put_pages_list(struct list_head *pages)
=20
        folio_batch_init(&fbatch);
        list_for_each_entry(folio, pages, lru) {
-               if (!folio_put_testzero(folio))
+               if (!folio_put_testzero(folio)) {
+                       list_del(&folio->lru);
                        continue;
+               }
                if (folio_test_large(folio)) {
                        __folio_put_large(folio);
+                       list_del(&folio->lru);
                        continue;
                }

Regards

Chaitanya

> Regards
>=20
> Chaitanya
>=20
> > >                 if (folio_test_large(folio)) {
> > >                         __folio_put_large(folio);
> > > +                       list_del(&folio->lru);
> > >                         continue;
> > >                 }
> > > Regards
> > >
> > > Chaitanya
