Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 366FA68760F
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 07:52:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BD5A10E1B7;
	Thu,  2 Feb 2023 06:51:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5223A10E1B7
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 06:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675320715; x=1706856715;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IqKAiahp2qyeEUwNx/T8/WuRSYLZXTnVVum+Gw+ls5M=;
 b=iHKMSV88mUToQgFKh3vIv/Cj3PhmTsUs9C7eoRpcdSJJnfyRs47hkj1A
 X+PeKP/ufnD8QIykd1wIFMnzwcEBPuG3F4RBkqKvkZH8CIDUHGijymAI0
 5zdpBbRI7xhORJmSqU2MQB+4oaBdWVPJ6gzdCIBxxigxi8TcZT5skWOQJ
 /zAL3pbsOx2x+ayQ4e9bUu03jUvVwCMCL2yoDIrZt9MRN9XjRHHTilH6F
 CRM2sS+0T6FdSBRI+rUY6w0laK4o7RkggSV1GYoz43fBbfu2Kcne+6bEZ
 540io4johiKYN+WilKkJ5rIcmFHYHib1lhRfLw4QTJWtBdOVv0RqVcAEh w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="308023843"
X-IronPort-AV: E=Sophos;i="5.97,266,1669104000"; d="scan'208";a="308023843"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 22:51:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="697579498"
X-IronPort-AV: E=Sophos;i="5.97,266,1669104000"; d="scan'208";a="697579498"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 01 Feb 2023 22:51:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 1 Feb 2023 22:51:53 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 1 Feb 2023 22:51:53 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 1 Feb 2023 22:51:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mOBqMVTwWpqn+cmzlpH6bWYraHggWk2pcu7WSikwjRmricvG3+rUxoUTbuU5YzE1yMs70CgDuYS5gnCZIOmbPXqtMSjIIbpsEuewveHnfLMF7aLmikTFClNlZtTIAv7ZRqeH15qAgrvQOD/RJBK1/pte3Dh3Rd3wsLS/95/Ys5EWJpTO5aCLmZ2FsyW+ET+bZ+WnE5A0czF+iJ4nohVQT0+PAaFleDT+LkQG94oHq9iODmJ3m2t8txJ+nynMlCCYr8wJB5LX77NxhO2MkcOnugSLORoVrL1IyTzQ5cf9z27nz1asEXZi14ELkxrmXAlMVuP9W1aZyIoWi2MufwrHFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wzMAfDQClDuKlE300OzJ21VYLsKXjrzuh1P/IuopKPY=;
 b=K8d+7nntCgV73O+ZxfVnx2ui76lrsWQek97WkqyMfRG+ExiBtOCeyNVUvpK1u6Kbz9EXaVa/jp1jhWdeLqOiAWIIkYiKOwzG2aEguPL0inb/QjPHZUAv5VIEPLTLOUT0jwnZF2NSjbMt1wFf7m+H3rKaZHh9btEkovlF56iQf0acHN9RoFMBdiyj/hX2+qAJY2txMtSa8P/odsiTP5hWJqtsXCfvRXO70YCg0a7h0l0QiFcV75vSlPIjyezqnqKhIqnRLODfHjaa641ZBzkwJ8xI6Sjak/CMCDx/Puu/iIQ0tjkHEKEBIp297b0Qc7dlIFoC65XiyQI1iDGmyqXhbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 IA1PR11MB7775.namprd11.prod.outlook.com (2603:10b6:208:3f3::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.24; Thu, 2 Feb 2023 06:51:50 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11%7]) with mapi id 15.20.6043.038; Thu, 2 Feb 2023
 06:51:49 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
Thread-Index: AQHYwaOE/EXAADz+NkeUK0QgUHi7O63WeiyAgAhR7zCAB3v7gIAhL06wgBv+ZsCAADSigIB5ErxAgAZdxOCACU3HEIAPuYtw
Date: Thu, 2 Feb 2023 06:51:49 +0000
Message-ID: <DM6PR11MB31770BE42F08018A83ABF749BAD69@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220906034803.4094252-1-arun.r.murthy@intel.com>
 <DM6PR11MB31775117B7388776D2E6DFD2BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177451D1F3A10D00706461ABA469@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31771349661CE3E0C2CB28BABA4D9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31777D09EBDFB4604D5E6631BA209@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177CFCD0942A580C4E9FE5BBA329@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Y1t3J2vIoiaPhYuR@intel.com>
 <DM6PR11MB3177F788C93767D65A8C7EBFBAC29@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177F06B273DC0A701B6BB68BAC69@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31779DE7C32B77798771CD74BAC89@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB31779DE7C32B77798771CD74BAC89@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|IA1PR11MB7775:EE_
x-ms-office365-filtering-correlation-id: 62da1e93-3ba1-4479-431e-08db04e9f55a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +/cxmiKuqScV0Y1qIFJJUx1J0wNz1gJ75mYHvau0sLY+Bh5lwZZu8241y3qsuNXFn8Gkty3cetyaF4Z1q1ASvLKDVoey5B1lq18jGV8Ls/iPk+yYnqcYwPOrUcC60VnUP+UvHSkLEiouxb8L3zYh116NelNtmj8J8MIYAq6m/XF/cG9mLWQNRLhXK8lHowrgSOIIzxhi+89tPw7sLWC+64KonINdMExlJ2AQXWw85xl7UOgIgCmDvA1MIbAXgKkRdZMsEOL71xEhSFxPiAQNDaLzr+wNhGJXlQlhZpjNU524lPOrQgBU2z2RH1KIzrRaWKYl4FQtHA/zDWtxvfaJX13nPOkuXqbMY4465hP7ovEG3hqE/bN5XlsPikS9yqYBEDK0onMMfzvPjpAjYL9thCOrYdzTe5GN9X7siUUoyOrwKqbAKXvWEZIOSgoC7SQyIzoW9j9cK/1Qbjaa1k0jrFdksqYDVaEBs5ed8MdMsVogYrAuTdI+WmmNPmOfHHhS2qNp+EHJRpVSp77zAndf7SMuIeqrTNb2c3i4OlfipfHpzZ+4iePiTXu6GFLtWTbkShfCNxo8TTvZdPMXgJg+KXmhOtv+a0zzp0ojYCmPNKfZ+xnkj9+Nfdu5Kyex5o0IggE+G2HOHFK7O36sPetoM4JptfdVPShJJI46i2R5oaBScJmo1eW0BQvgC8feIvyICNp1O3WzgRnG8GwqWvy6bvmhoDDvSr4QPDNhmnR4uMM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(376002)(366004)(396003)(39860400002)(136003)(451199018)(316002)(52536014)(122000001)(186003)(82960400001)(9686003)(38100700002)(26005)(38070700005)(83380400001)(66574015)(6506007)(54906003)(55236004)(53546011)(55016003)(5660300002)(2906002)(33656002)(478600001)(66556008)(86362001)(66946007)(66446008)(66476007)(71200400001)(64756008)(6916009)(8676002)(41300700001)(8936002)(7696005)(76116006)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Jz7rQZHhLwyoIp1kjT13+VNuxK3wTsNZlgmic2kW46H3kTBdWrAioRDKrb?=
 =?iso-8859-1?Q?8Gspp8baGQDqBhj12QFwO0XSxrh/HuG2YiPNtv3Jp6Vxe0e3tPVLSuB8C7?=
 =?iso-8859-1?Q?tKJuGDwpigUHxdzkT338LF45BqQI2snfpj/0KLWHluobXr2zwBxfvYsm0n?=
 =?iso-8859-1?Q?irJgrmwZCOq+Lok32hctze+bBDGc84ITliYDsTx9jKhmWQUJdIEMH7UO6V?=
 =?iso-8859-1?Q?XufL2zUjJe84xEBCK31YSzyYNAzj1G0gcwLby3pVfOp+jEFszhAApbAtY/?=
 =?iso-8859-1?Q?Qs+rsumdVM5Oz7HZkLz3q9LRMm9/mpdXWsMXuLTC8YtN0I43Zv/NZINkGe?=
 =?iso-8859-1?Q?mozUW6mljLxn2Y8Xd8027Ti7afUsxfsJwGV/tFa252sHgDP+c+YDUn++tT?=
 =?iso-8859-1?Q?TWD8gfeeSppOeV2a6pR0mmm9NWVcGbhwWJJTleCGa//qm1ZnMD/j3jhmDu?=
 =?iso-8859-1?Q?ldKBzdMx6O15EKkhg8zC64kWmodHHjDThA2sJrwIa7R3o8bMqkrH7cjNHz?=
 =?iso-8859-1?Q?+7pTGVUD7JZ+4twjqfo1DXulkoVvctQqmBerjIFkqm2naVNhI/qR78UbN7?=
 =?iso-8859-1?Q?lVrfpUXW1iXfISnjwc9yNNeqYGPcRK8GOUf326XVCPg8+TzL4eBrymBN/y?=
 =?iso-8859-1?Q?00TFEgAYZu4k6sghYKNhwFa/X0CnfgsQd35dLPAsHwXLbAm8j71IcVlNxK?=
 =?iso-8859-1?Q?rqaR2NlyBrvroHnn7BrdgHl1nK17eBdY3LR9KpRxDgLrzRm8K+u/xoKrnV?=
 =?iso-8859-1?Q?WwHOTwEKJR7V8kzsphMNRPN4jcahkOJ5kqN4K/XZSrDbeT4i1vs+G3Uaba?=
 =?iso-8859-1?Q?O6uMbK31l+wu/C+4wYYpF2hoWrjBPFUnaI/5FMO1CJf+3GP5cRnCo67+/4?=
 =?iso-8859-1?Q?+15iV2N0aJFocycNVjKnDp5JnWvociGEafSLqFt+v65ucfUBQV5CI1xGlO?=
 =?iso-8859-1?Q?t4j5qiInJB7+sKBryK0stHftLPytc88KuOjFYkgXZYzlSmq+n3NF6SIESd?=
 =?iso-8859-1?Q?IunO72OTi9/lANjy8LT3AmPN3KO9I+gSD6/8xV/tKZ7rawN6I/ad8dSitb?=
 =?iso-8859-1?Q?3em2qVCWGunJSuphZhqAKQ61IEsq18BABY1hIhhCDjUaaqlOgHpjkty/97?=
 =?iso-8859-1?Q?xkynCW27IdZs++C+Rx7gOxPza1A9Qw2hV92MGXUAtljIAr6sdmTCN8vgv4?=
 =?iso-8859-1?Q?oaZdHeKt64RVZs1ilJiSo0NzXmp6uH2H7nCsi4hp2GFfuFJOk0Bbnc6ekM?=
 =?iso-8859-1?Q?prDbJgIopjgtdQJUK52PWMvufcxAmtxBrxBKyvt02y2HlY63w8A+ASvloM?=
 =?iso-8859-1?Q?YJD/kOQA+gnAQNAd/38Tpf31lGHo/+AeVaDO04R1QOPLqmjwz2OaDhBl+a?=
 =?iso-8859-1?Q?ndOCXtW6XmTKSWZr0ba5h2GmyLJdDYqlHsd89FMmBnRdDvuCvHBzhWdQIM?=
 =?iso-8859-1?Q?N0oqG1MSKAI321xaWuu5kIPMsb6gWWopp2YKVBimL7U2nRlcNP3pEarnrj?=
 =?iso-8859-1?Q?AV++d9VZE/SqW40qZOZ6wKiL8ZmhTk3if9aghCpXz4f0fCP7cCMfzI+8cV?=
 =?iso-8859-1?Q?a4xG5JR0gy6WRHjAw8M22aMPsEJgwUIlu7w2rKCh/gFPOIn88BovxamnOb?=
 =?iso-8859-1?Q?0Mzio0SQgIn0FLNDzjAg9ZqV5YSPGXG9Ol?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62da1e93-3ba1-4479-431e-08db04e9f55a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2023 06:51:49.3125 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5oWNmFvPSYqXKp4QNEz3rJDLXeqhZ6wGC8va1y6zAjAqFpIehjafgWviEHV0ybOfZCfyFOOet/wGkHHvdU0SYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7775
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gentle Reminder!
The patch is pending since a long time.

Thanks and Regards,
Arun R Murthy
-------------------

> -----Original Message-----
> From: Murthy, Arun R
> Sent: Monday, January 23, 2023 12:14 PM
> To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>
> Cc: 'intel-gfx@lists.freedesktop.org' <intel-gfx@lists.freedesktop.org>;
> Syrjala, Ville <ville.syrjala@intel.com>
> Subject: RE: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
> buffers
>=20
> Any review comments on this. Gentle Reminder!
>=20
> Thanks and Regards,
> Arun R Murthy
> --------------------
>=20
> > -----Original Message-----
> > From: Murthy, Arun R
> > Sent: Tuesday, January 17, 2023 2:09 PM
> > To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>
> > Cc: 'intel-gfx@lists.freedesktop.org'
> > <intel-gfx@lists.freedesktop.org>;
> > Syrjala, Ville <ville.syrjala@intel.com>
> > Subject: RE: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on
> > Linear buffers
> >
> > Gentle Reminder!
> >
> > Thanks and Regards,
> > Arun R Murthy
> > -------------------
> >
> > > -----Original Message-----
> > > From: Murthy, Arun R
> > > Sent: Friday, January 13, 2023 12:57 PM
> > > To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville
> > > <ville.syrjala@intel.com>
> > > Subject: RE: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on
> > > Linear buffers
> > >
> > > > On Fri, Oct 28, 2022 at 03:23:02AM +0000, Murthy, Arun R wrote:
> > > > > Gentle Reminder!
> > > >
> > > > Is the igt stuff merged, and did this pass the test?
> > > >
> > > With IGT alone the tests will fail without the kernel patch.
> > > The
> > > tests(https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_112722v2/shard
> > > s-
> > > all.html?testfilter=3Dkms_async_flips) are passing with IGT and kerne=
l
> patch.
> > >
> > > Thanks and Regards,
> > > Arun R Murthy
> > > --------------------
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: Murthy, Arun R
> > > > > > Sent: Monday, October 10, 2022 1:24 PM
> > > > > > To: 'intel-gfx@lists.freedesktop.org'
> > > > > > <intel-gfx@lists.freedesktop.org>
> > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > > > buffers
> > > > > >
> > > > > > Ville,
> > > > > > 	Gentle reminder!
> > > > > >
> > > > > > Thanks and Regards,
> > > > > > Arun R Murthy
> > > > > > --------------------
> > > > > >
> > > > > > > -----Original Message-----
> > > > > > > From: Murthy, Arun R
> > > > > > > Sent: Monday, September 19, 2022 10:38 AM
> > > > > > > To: 'intel-gfx@lists.freedesktop.org'
> > > > > > > <intel-gfx@lists.freedesktop.org>
> > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on
> > > > > > > Linear buffers
> > > > > > >
> > > > > > > If no comments, can anyone merge the patch!
> > > > > > >
> > > > > > > Thanks and Regards,
> > > > > > > Arun R Murthy
> > > > > > > --------------------
> > > > > > >
> > > > > > > > -----Original Message-----
> > > > > > > > From: Murthy, Arun R
> > > > > > > > Sent: Wednesday, September 14, 2022 4:21 PM
> > > > > > > > To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> > > > > > > > gfx@lists.freedesktop.org
> > > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on
> > > > > > > > Linear buffers
> > > > > > > >
> > > > > > > > Gentle Reminder!
> > > > > > > > Any comments?
> > > > > > > >
> > > > > > > > Thanks and Regards,
> > > > > > > > Arun R Murthy
> > > > > > > > --------------------
> > > > > > > >
> > > > > > > > > -----Original Message-----
> > > > > > > > > From: Intel-gfx
> > > > > > > > > <intel-gfx-bounces@lists.freedesktop.org>
> > > > > > > > > On Behalf Of Murthy, Arun R
> > > > > > > > > Sent: Friday, September 9, 2022 9:17 AM
> > > > > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > > > Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support
> > > > > > > > > Async Flip on Linear buffers
> > > > > > > > >
> > > > > > > > > Gentle Reminder!
> > > > > > > > >
> > > > > > > > > > -----Original Message-----
> > > > > > > > > > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > > > > > > > > > Sent: Tuesday, September 6, 2022 9:18 AM
> > > > > > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > > > > > Cc: ville.syrjala@linux.intel.com; Murthy, Arun R
> > > > > > > > > > <arun.r.murthy@intel.com>
> > > > > > > > > > Subject: [PATCHv3] drm/i915: Support Async Flip on
> > > > > > > > > > Linear buffers
> > > > > > > > > >
> > > > > > > > > > Starting from Gen12 Async Flip is supported on linear b=
uffers.
> > > > > > > > > > This patch enables support for async on linear buffer.
> > > > > > > > > >
> > > > > > > > > > UseCase: In Hybrid graphics, for hardware unsupported
> > > > > > > > > > pixel formats it will be converted to linear memory
> > > > > > > > > > and then
> > > composed.
> > > > > > > > > >
> > > > > > > > > > v2: Added use case
> > > > > > > > > > v3: Added FIXME for ICL indicating the restrictions
> > > > > > > > > >
> > > > > > > > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > > > > > > > ---
> > > > > > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 14
> > > > > > > > > > ++++++++++++++
> > > > > > > > > >  1 file changed, 14 insertions(+)
> > > > > > > > > >
> > > > > > > > > > diff --git
> > > > > > > > > > a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > index be7cff722196..1880cfe70a7d 100644
> > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > @@ -6610,6 +6610,20 @@ static int
> > > > > > > > > > intel_async_flip_check_hw(struct intel_atomic_state
> > > > > > > > > > *state, struct
> > > > in
> > > > > > > > > >  		 * this selectively if required.
> > > > > > > > > >  		 */
> > > > > > > > > >  		switch (new_plane_state->hw.fb->modifier) {
> > > > > > > > > > +		case DRM_FORMAT_MOD_LINEAR:
> > > > > > > > > > +			/*
> > > > > > > > > > +			 * FIXME: Async on Linear buffer is
> supported
> > > > > > on ICL
> > > > > > > > > > as
> > > > > > > > > > +			 * but with additional alignment and
> fbc
> > > > > > restrictions
> > > > > > > > > > +			 * need to be taken care of. These
> aren't
> > > > > > applicable
> > > > > > > > > > for
> > > > > > > > > > +			 * gen12+.
> > > > > > > > > > +			 */
> > > > > > > > > > +			if (DISPLAY_VER(i915) < 12) {
> > > > > > > > > > +				drm_dbg_kms(&i915->drm,
> > > > > > > > > > +					"[PLANE:%d:%s]
> Modifier
> > > > > > does not
> > > > > > > > > > support async flips\n",
> > > > > > > > > > +					plane->base.base.id,
> plane-
> > > > > > > > > > >base.name);
> > > > > > > > > > +				return -EINVAL;
> > > > > > > > > > +			}
> > > > > > > > > > +
> > > > > > > > > >  		case I915_FORMAT_MOD_X_TILED:
> > > > > > > > > >  		case I915_FORMAT_MOD_Y_TILED:
> > > > > > > > > >  		case I915_FORMAT_MOD_Yf_TILED:
> > > > > > > > > > --
> > > > > > > > > > 2.25.1
> > > >
> > > > --
> > > > Ville Syrj=E4l=E4
> > > > Intel
