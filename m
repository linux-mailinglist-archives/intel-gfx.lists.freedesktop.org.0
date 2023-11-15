Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9257EBC9F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 05:33:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BF2510E23A;
	Wed, 15 Nov 2023 04:33:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3E2710E23A
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 04:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700022817; x=1731558817;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KIEn9dce7UbjUmnLq/REgH8+V1KkdNhZhWkPqJ9vALc=;
 b=nAgjxh3U4pdfDtSeoh6esJAcz7Xvd60jzYW8KtnSweHTE0RnwGGyImrj
 jzfJvaD+kkq5RR3vfwekze5n08MNNWX+aW81ghpnh4OUUBeEHuSI/HZQ1
 EF+ZrCFf/GTX8m0of/WZUoeAfWyGXZW09Vr0iSFCjn0Mbyv8VXsBnorq0
 ggOqSEX1k1xPD3w3tB+MX4FryE63I2PhTvOfMU51VfkAnOF9L4oVnKgMr
 etlGy0NMq/AjmyZHfUOANiC7KfuOMt7JehNZ98xK/cTLfe4Vaa1rWmv7y
 oE3MZecLnJ4zm2T1nm7W/pY/12D634E/VNzt4TxxkL8b/kWgPa+IH/Pbb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="12355623"
X-IronPort-AV: E=Sophos;i="6.03,303,1694761200"; d="scan'208";a="12355623"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 20:33:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="794035136"
X-IronPort-AV: E=Sophos;i="6.03,303,1694761200"; d="scan'208";a="794035136"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2023 20:33:35 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 20:33:35 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 14 Nov 2023 20:33:35 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 14 Nov 2023 20:33:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a33vO4PVTdPUnh8wVED5ypm3DWaDud5DwuUyuM0Bra5/m4FBkNJN5XpF9gXEQvIP2uItvvCh6awZ3gPMgutrtI3RdY0I6bndYKD91NBdhenzapdANupDPTFMaATktipRmHaxlYXHzJS0bpKcFhWXuiSb96u1OasIZrTdkI5z/Om6X94aYNgL8IUGwqa8JtMw4gapDC+cDhDXcGPelu425Mz0AZNuFFgd4g6EanY4JdN63T8O3BzwPoE/N0gH5qPcKKHrhRbrAEi9U+scJSQo3lEb0yXpu7z2Dr1OBdenEkhVUgidcmU7Cyx9GHqsH85meX3M8q1vU9D0fWeGQfL2/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hb9D39rY91vN3QPm6Z09fwiUyJIzO7uru5Fx1tOvtEY=;
 b=lu3zKndIYBQarBy2GA4vMz4m4kANZZRqH2DqaxlkaysfWh6BDm03+rSl4W++Qq/sDXhbRpk1MZed8CyHmpo8qmWrQOUVmMcER38avv0AjKn7WZqXgnGAgUOzJMbb45V4s1ksHXQgutHDXbbcn2uodNt4Nc0PIqrzDxaW2vFsBisQiVPI+xu3APW6zntHVeX7a3SZ12yCxy4Nxqr3s9LIZ+q6a035pjsZGMMaB3rKoYKP9ciM1Pt4QVUQH1td7EEE5u7tw8DpKCVolOpRvkskUkIkGl0/GUIqSjhIWsGKz1QPXWQwUn4jeYU7Nb8E8aj18LyLSyjK/74ND1zSe0uCMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH0PR11MB4951.namprd11.prod.outlook.com (2603:10b6:510:43::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.31; Wed, 15 Nov
 2023 04:33:27 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::9bdd:1d20:1b4e:3e92]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::9bdd:1d20:1b4e:3e92%7]) with mapi id 15.20.6977.029; Wed, 15 Nov 2023
 04:33:27 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Krister Johansen <kjlx@templeofstupid.com>
Thread-Topic: Regression on linux-next (next-20231107)
Thread-Index: AQHaEy4yYl7vLy+WwEGiqew6ES3+AbByc44AgAB0VNCABOTWcIACUHqAgAC1zjA=
Date: Wed, 15 Nov 2023 04:33:27 +0000
Message-ID: <SJ1PR11MB6129480C4B04A336361F6E36B9B1A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129508509896AD7D0E03114B9AFA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <20231109204022.GA2073@templeofstupid.com>
 <SJ1PR11MB61296405021B3F44DC273F14B9AEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129420845D1523F136D0035B9B3A@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <20231114174121.GA2064@templeofstupid.com>
In-Reply-To: <20231114174121.GA2064@templeofstupid.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|PH0PR11MB4951:EE_
x-ms-office365-filtering-correlation-id: 30b40acc-1afb-41d7-2289-08dbe594032a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GiFeq1aWtE0XtWRLFeiOlUtfsl3cbkqq3jf/BEUQf20RuJ/NCbU+I68SgZrmX5ZQyvP6tFqhNfzAO88BtTPDbLBttJWmApQd7MQxrJXyNatu0aqiil9uPaDoqKBhIEaJj/Ibc/SPpdNqryadBC6qJ4qraopMfknZktdIqQbQ4iBrGuFx7bqQp8ONUKRCFWnuS/LNnI1CZr62WjmN7siX22O0j8P3xCfTCPdfDQubmTqvL3aKoD4s+FPeORX1IkVs/w1YnNiJ70Vnbil28c5cnZFA1FqPys13FA5KWnqwdSo0PLAzCfUvpkh7eSfWIkRtPQUKtN/RYWPBClwGVurtAfEVj5PlWecB4awkpfGXvWl0N5+2EBJvgaxIa1pPu0V3qNP9ziE68hnTlSxnPMmh3HCk4Jj4+4SX30Ogo89gGcwCCe2xvE3V3Bb1o5iLtKme63Jj3S+efaT9VS6e/Mi9ERHVjYWEWjX8EwI1r2JRFBDyB7/wOfSyjuLVdVWeqkXH7jIt5bRcsjQSYbblnEq/Zu/MxXpc8ud3pEJSKQ7rjJnn+yzDY1WKvIS2ROqTCCDStZ3/n80w03OdJne7ELJs2d/5gthagIoKelvBJ7B+PBaxJZJ4kErKY2/z8lWovILJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(346002)(366004)(39860400002)(396003)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(55016003)(26005)(6916009)(66476007)(66556008)(66446008)(54906003)(64756008)(76116006)(66946007)(122000001)(38070700009)(33656002)(38100700002)(86362001)(83380400001)(9686003)(82960400001)(7696005)(71200400001)(6506007)(53546011)(2906002)(478600001)(316002)(966005)(5660300002)(41300700001)(4326008)(8676002)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kxPBN5oqIERM9b/LdaBke+8+Qg6iF3YJuWmL2kdFVPQB6vrjTDWTDiGcvS5s?=
 =?us-ascii?Q?F+hCpTa6Yja+z+uvjwRQJSdgnV8dKywriB6G5+Q2+u3DWaVIr+FGHikmrHOr?=
 =?us-ascii?Q?s4HDqbdBFKqJdRmsWJDga8KO9S3KvfjTJy1yYpjtJjeE+2h/cfwdETORbxlG?=
 =?us-ascii?Q?EDCQzPIL7rMXfYJ6hKiUdt21XLQ9yBAu8hbdX321XjdNcPANKY7sQ9GW+KuS?=
 =?us-ascii?Q?TbWEKMFBS7yf+DGn32S7/cWmCROlSKH6+u80cWIobQKR5LcNN0uAGWAU5CUc?=
 =?us-ascii?Q?TRJt5ywl6X0x4IMI61HHeZqmf/mzmwDHaIp3WO4c/IVpDv8692vfOSH2cCUY?=
 =?us-ascii?Q?P4LbBF0o5OBQclNJjcBwco1Dj0k9DNXMgaiuNZ3jatbNDCVtTO9SOFDDffBB?=
 =?us-ascii?Q?dn40uS5DdAleq4tnjE1+iRp8yLiqnQtP+wJ1t04YY5ucjUq2PsM5Y/H1TWZM?=
 =?us-ascii?Q?5OmW85p30oC5jWZJpaf0mJGD6nO3BiTAEt34xFMlWSRYA8GrUlWiMCV746lZ?=
 =?us-ascii?Q?DfNPcl4yA4NisFGWpFpXyobWRQOQ31RMYQnoDvIbJ9w/WagL9A80VJLiHMjZ?=
 =?us-ascii?Q?4Me4g18Sg42abBX45Ql/bEG5JExXGzYM5N0GUXfJf+FTmxptTHZUxjKx6iEw?=
 =?us-ascii?Q?GlzSD90rB+ogHB1eoiE2s7YWcKBTO4Pn6SlTjI2vAnKsIQIDtVnQ035zsoTB?=
 =?us-ascii?Q?cQa9sMmS4HR5iptw0eaI7Vl8Arf6nJHxlD2HYQJWkid1Zyb3y7C64S1jkOOe?=
 =?us-ascii?Q?GDP/VU2hDNykyQ5NmHQFJGBDqFGCSXfmTx+PGBJSB7sRApxHcYKfzkRUO/Nb?=
 =?us-ascii?Q?RsmKwPmwtCY3t/XOGbfSipZwWg2whJC6JQ9N0HtzdLNW4jGBfG1LfYdcybHk?=
 =?us-ascii?Q?T6MWaJcbGOszMljnEjulHzPmKKu6AMcBYOtQ0hwx6gj9b11mjxBulmtZAF2K?=
 =?us-ascii?Q?wPpJiG+M+zR57MfCgZceF8SB1lNEXpOLw0tsqg9HtiWFtq4xHTE9ak1LMxEI?=
 =?us-ascii?Q?ndqVa8yNmWXrcqDlxIJtF85QHU0Tv3A/yEB3OzIfaogo7YvoGBE/qvW4Pa3M?=
 =?us-ascii?Q?kq39hVO1FnICwCvRjlEUTQXWbf3r6Dvp1J1hqxpS95Z2fLAciQxKajKgxpZJ?=
 =?us-ascii?Q?SUVzTzh6INmu6Oot/3XviDlRbZErVZ4qhQDMzTZmEYTEfGmEyMOskOdXgGim?=
 =?us-ascii?Q?frlGFoqtuT0wtPTAxgq452LjR+T5Cu5C5IG17Ci8IvvBuBcT3u48wIvGmSU5?=
 =?us-ascii?Q?aSAQ2BK1Mz6gWBSJsyaaTD5hYazAgVGIo2GVSGQYdX2+KqVyUhsiFntiyw2k?=
 =?us-ascii?Q?BsjTp8FHSO4odSkPdSc3OT3A2E5f2LlQiv6XvRA7rmVMW/aSiGzC7GuqNONx?=
 =?us-ascii?Q?YFElyQ6WVCb7OSBQ3dlr6ETifAlh81wmEgW5STlDq1w7ZGlDCGa6SnpKkyvC?=
 =?us-ascii?Q?6gXdgtdHFM8KH2DmFnsFAV+e/L7eVV9vthhA0vh6HnzB10wi7gQ9CP4qn+ro?=
 =?us-ascii?Q?YzelPIyhweRg1uLVR4prUCXiroXyMW2T2GZfXxycNvhA4hea4HCm4cJDGaaI?=
 =?us-ascii?Q?Q+m/27hdPdwVbQwZ8Hyf9hzuRb2kw05ODUwYVpcT5lIovODcuq2ILJMlX2WO?=
 =?us-ascii?Q?9w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30b40acc-1afb-41d7-2289-08dbe594032a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2023 04:33:27.4053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: okHsH/P5X/o6oiMyPn0wSkN8uAYV9/tgHLReB9JMkBhChJjyQ0ijGCnZp5Ooz5wWdVw6nRMqhJo4modDcRo2Oyjc6RKyMPs7zPN968hGpSU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4951
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Regression on linux-next (next-20231107)
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
Cc: Miklos Szeredi <mszeredi@redhat.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Krister,

> -----Original Message-----
> From: Krister Johansen <kjlx@templeofstupid.com>
> Sent: Tuesday, November 14, 2023 11:11 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: Krister Johansen <kjlx@templeofstupid.com>; intel-
> gfx@lists.freedesktop.org; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>;
> Miklos Szeredi <mszeredi@redhat.com>
> Subject: Re: Regression on linux-next (next-20231107)
>=20
> Hi Chaitanya,
>=20
> On Mon, Nov 13, 2023 at 06:21:57AM +0000, Borah, Chaitanya Kumar wrote:
> > Hello Krister,
> >
> > Any luck with this?
> >
> > > -----Original Message-----
> > > From: Borah, Chaitanya Kumar
> > > Sent: Friday, November 10, 2023 9:09 AM
> > > To: Krister Johansen <kjlx@templeofstupid.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Kurmi, Suresh Kumar
> > > <Suresh.Kumar.Kurmi@intel.com>; Saarinen, Jani
> > > <jani.saarinen@intel.com>; Miklos Szeredi <mszeredi@redhat.com>
> > > Subject: RE: Regression on linux-next (next-20231107)
> > >
> > > Hello Krister,
> > >
> > > > -----Original Message-----
> > > > From: Krister Johansen <kjlx@templeofstupid.com>
> > > > Sent: Friday, November 10, 2023 2:10 AM
> > > > To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> > > > Cc: kjlx@templeofstupid.com; intel-gfx@lists.freedesktop.org;
> > > > Kurmi, Suresh Kumar <suresh.kumar.kurmi@intel.com>; Saarinen, Jani
> > > > <jani.saarinen@intel.com>; Miklos Szeredi <mszeredi@redhat.com>
> > > > Subject: Re: Regression on linux-next (next-20231107)
> > > >
> > > > Hi Chaitanya,
> > > >
> > > > On Thu, Nov 09, 2023 at 05:00:09PM +0000, Borah, Chaitanya Kumar
> wrote:
> > > > > Hello Krister,
> > > > >
> > > > > Hope you are doing well. I am Chaitanya from the linux graphics
> > > > > team in
> > > > Intel.
> > > > >
> > > > > This mail is regarding a regression we are seeing in our CI
> > > > > runs[1] for some
> > > > machines (dg2 and adl-p) on linux-next  repository.
> > > > >
> > > > > Since the version next-20231107 [2], we are seeing the following
> > > > > error ```````````````````````````````````````````````````````````=
````````````````````
> > > > > <4>[   32.015910] stack segment: 0000 [#1] PREEMPT SMP NOPTI
> > > > > <4>[   32.021048] CPU: 15 PID: 766 Comm: fusermount Not tainted
> 6.6.0-
> > > > next-20231107-next-20231107-g5cd631a52568+ #1
> > > > > <4>[   32.031135] Hardware name: Intel Corporation Raptor Lake Cl=
ient
> > > > Platform/RPL-S ADP-S DDR5 UDIMM CRB, BIOS
> > > > RPLSFWI1.R00.4221.A00.2305271351 05/27/2023
> > > > > <4>[   32.044657] RIP: 0010:fuse_evict_inode+0x61/0x150 [fuse]
> > > > > ````````````````````````````````````````````````````````````````
> > > > > ````
> > > > > ``
> > > > > ```````````
> > > > >
> > > > > Details log can be found in [3].
> > > > >
> > > > > After bisecting the tree, the following patch [4] seems to be
> > > > > the first "bad" commit
> > > > >
> > > > >
> > > > > ````````````````````````````````````````````````````````````````
> > > > > ````
> > > > > ``
> > > > > ```````````````````````````````````
> > > > > 513dfacefd712bcbfab64e1a9c9c3e0d51c2dca5 is the first bad commit
> > > > > commit 513dfacefd712bcbfab64e1a9c9c3e0d51c2dca5
> > > > > Author: Krister Johansen kjlx@templeofstupid.com
> > > > > Date:   Fri Nov 3 10:39:47 2023 -0700
> > > > >
> > > > >     fuse: share lookup state between submount and its parent
> > > > >
> > > > >     Fuse submounts do not perform a lookup for the nodeid that
> > > > > they
> > > inherit
> > > > >     from their parent.  Instead, the code decrements the nlookup =
on the
> > > > >     submount's fuse_inode when it is instantiated, and no forget =
is
> > > > >     performed when a submount root is evicted.
> > > > >
> > > > >     Trouble arises when the submount's parent is evicted despite =
the
> > > > >     submount itself being in use.  In this author's case, the sub=
mount
> was
> > > > >     in a container and deatched from the initial mount namespace =
via a
> > > > >     MNT_DEATCH operation.  When memory pressure triggered the
> > > > > shrinker,
> > > > the
> > > > >     inode from the parent was evicted, which triggered enough for=
gets
> to
> > > > >     render the submount's nodeid invalid.
> > > > >
> > > > >     Since submounts should still function, even if their parent g=
oes away,
> > > > >     solve this problem by sharing refcounted state between the pa=
rent
> and
> > > > >     its submount.  When all of the references on this shared stat=
e reach
> > > > >     zero, it's safe to forget the final lookup of the fuse nodeid=
.
> > > > >
> > > > >
> > > > > ````````````````````````````````````````````````````````````````
> > > > > ````
> > > > > ``
> > > > > ```````````````````````````````````
> > > > >
> > > > > We also verified that if we revert the patch the issue is not see=
n.
> > > > >
> > > > > Could you please check why the patch causes this regression and
> > > > > provide a
> > > > fix if necessary?
> > > >
> > > > Apologies for the inconvenience.  I've reproduced the problem,
> > > > tested a fix, and am in the process of preparing patches to send to
> Miklos.
> > > > I'll cc the people on this e-mail in that thread.
> > > >
> > > > > [3]
> > > > > http://gfx-ci.igk.intel.com/tree/linux-next/next-20231109/bat-dg
> > > > > 2-14
> > > > > /b
> > > > > oot0.txt
> > > >
> > > > This link didn't resolve in DNS when I tried to access it.  I
> > > > needed to use intel- gfx-ci.01.org as the hostname instead.
> > > >
> > >
> > > My bad. I realized it too late. Hope you found the logs. If not here =
they
> are.
> > >
> > > https://intel-gfx-ci.01.org/tree/linux-next/next-20231109/bat-dg2-
> > > 14/boot0.txt
>=20
> Yes, I sent Miklos a patch for this on the 9th.  That was pulled into fus=
e/for-
> next.  You can either apply this patch directly:
>=20
> https://lore.kernel.org/linux-fsdevel/CAJfpegtOKLDy-
> j=3Doi8BsT+xjFnO+Mk7=3D8VxSDuyi-
> bxhRSGMKQ@mail.gmail.com/T/#m1116af8fd8428f2871d527b7fc5d6351bd6f
> 199a
>=20
> Or sync with a version of linux-next that contains the fix, which should =
be at
> least the 11/10 branch.
>=20

Thanks a lot for the fix. Issue is resolved for us now.

Regards

Chaitanya

> Thanks,
>=20
> -K
