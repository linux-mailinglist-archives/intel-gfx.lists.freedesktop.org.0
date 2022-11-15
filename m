Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6795D629162
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 06:11:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A17C410E364;
	Tue, 15 Nov 2022 05:10:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0DE810E364
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 05:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668489049; x=1700025049;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QPYJLK0iaOsSU0j0WP0DWYpBczv4iwJIqLeOhvZ9kJE=;
 b=AzThdLjmZsa3fZQmaEn9g5I2ilUVOs7DEaHswPb5vUnsftRT9u6/aar/
 jWno8s15eDTreqQD+nrazFEYi/tBGkM3EWqROquMlYzabTcs80EOR9PQm
 EcC+OwWFfHzWHfnoGH5+o5KgcyvhGXNK2i/ifEYr4FnEF5pM469tHT1Te
 GTf9pwj+U5k5/F3QgyuhzfQSkd+0N1CoKRJbv8enpMgVYHLhAfRCzzxC0
 qdozsQhNwG7OdXjHUAGWv3rfGKu51dv83Eu6H9qQ7pfvJLALyS89r8PA7
 24pSJJ5SaUFN6Pcbjg9NQPPM48IX9trRCs3TPs8LcbiLA/IDW1UHzxpPD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="374298843"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="374298843"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 21:10:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="883819004"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="883819004"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 14 Nov 2022 21:10:48 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 21:10:47 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 21:10:47 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 21:10:47 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 21:10:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OFj9Dkr7wBLlh53HLRA7ih4JVV4lEacbjH4K9FeZcOt8cNVSEQMmg6admiNoM7jWZUYbmgVy+x+1o98Ylo7HPdnqM942r4FAUX9Qjnn0Ubexq8c99uNxkuAEZsq6fBd63A/yNFcgIRGsuWSZOl/nfXEdqd3q7TjLgZDqpHV5s4V1s0L588tZE+U+1cGnBsbYo09cQyID5krxBjKrM81Sqmggryc7ojJ5o8PVGN1I60i1KVl1wxoWu+zUQFkT9LCR+K3CqFpr7r8zLImpTzvZcDncDp3qKRvEaUfM+1JLN8D/3wcFj4rgkVqH/8YkzHNF8p/N/5OUyxNt0lmqHq1R3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QPYJLK0iaOsSU0j0WP0DWYpBczv4iwJIqLeOhvZ9kJE=;
 b=OczPt3LC/9W9s2P464U9qq71uKvRmL+f71ulth/vBOUA0UuyuiRdeEsLweeI3ROWZ5m6tkhbW1Kctko3aqUFMIefwbvQRwS2waMCmZC6X762w0P5pX8EKiLV23ztHj3pAf9Ko0p3/8pHuApA5TtwT6VFjcYcwIkU1J9e6gl3i2Q+4icyBORO2JYjej4VFs04m+sDs/LeLW0eJXJl2ULdgI1bQjo8rgRaLktM6uJ99UMBLb25gwsuMk1csSkWAHIr5LZkaSutYUFVUB5vloHBKvim31t9n9pAhjqzeJC+2HGATFqd3qB//eZzexTL9nZHkvx27ZxGy/lJU26tdhT++A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by PH7PR11MB6450.namprd11.prod.outlook.com (2603:10b6:510:1f5::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Tue, 15 Nov
 2022 05:10:37 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::df3:74e8:a417:a163]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::df3:74e8:a417:a163%7]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 05:10:37 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 0/8] Enable YCbCr420 for VDSC
Thread-Index: AQHY8oUZwqyRswFtrEiFCUCcZN0ZJq4zbf6AgAwNyiA=
Date: Tue, 15 Nov 2022 05:10:37 +0000
Message-ID: <MWHPR11MB174159D35C8E3456EC25EB06E3049@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20221107084258.1353210-1-suraj.kandpal@intel.com>
 <87pmdyapam.fsf@intel.com>
In-Reply-To: <87pmdyapam.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|PH7PR11MB6450:EE_
x-ms-office365-filtering-correlation-id: 505a376d-faf3-4978-7d72-08dac6c7bbbe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kUyoYqjQ2EXp4YNMTVdyAni523l9M5uYBRfpVpb5IGqfEmkAz06kbnt6AQoHBcfHFI66XxvEY7SDHQXNMyaSep5Vez7uFZ1UaUvppSTMHyn76R55sVuQ87JBBNU9v1k8f8MxCPbFdwSi7V6VIEaualG4aEnvgDaM/GGlCAUAO/vWaQNgBKLH5pzHCrqdt9t0t8IINog0vfwVJ0elKgvpo/otVOfbg/idGV3Ls2d2GN1KgXL4DATzNXh2vW4NjOmgej5OZwywSDzNNyB0k9WJMvjaaarNCxG/jcd0uQa5NvcFZyu3+GNf1Y2b8qSFR6FuwVpt2dd3nwo3AQWsVvaj1odFrfkgWiuYgVxxbcJoBHdZ17GiXuelFPBHYM6QDd/xsedJjmSLB0oROMFUwWkuOXKeTx0oHcx6SI+jYRoW9+zUnTBQ3kQhIQ5rmRDDA/nUK8iljW6Vt06LktloQMrCEnF/7OcmTKT4ZbUezTDimRxjt+CIlgNfOhBqqPp3T6czVY5DjkUI66xzi5uZ8anrPMpfdIZbTq05YFcCDyd3qcgn7VxY6C2fnu5f57y6mRlaam8R6WgoADXLJqpqBQUOmKDx8d2ioDLidqoNBVdiXFpiIFExLRqkeTWjrHvecF5XIF58bWG8d7gZUpH462mfyb3IyJGAPlJ9qYoa2njJ27kTJ4CBWd4gnMf0RWQcaUwSl3np2lqceKu+SMzox7xJLhU+nNp7xI+8/oOjRhRY4fIvmizhAOo+LdPP1n5VbuMY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(6029001)(376002)(39860400002)(396003)(346002)(366004)(136003)(451199015)(8936002)(66899015)(5660300002)(2906002)(41300700001)(64756008)(8676002)(66476007)(66556008)(52536014)(66946007)(66446008)(76116006)(122000001)(38070700005)(55016003)(186003)(478600001)(33656002)(316002)(6506007)(7696005)(71200400001)(110136005)(86362001)(4744005)(38100700002)(82960400001)(26005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AQRaILWn2Le9mEcCo5wQAb14oQvyJaod2ZwUPHNazc88MDUL7/4nSLwuo7ap?=
 =?us-ascii?Q?zr2YWBscWerp9RyLuVdlIP+dZ4vkKZd+hUqPZB5eGw8d0A4C4EgBPxtpqlsI?=
 =?us-ascii?Q?sVivRIPPLPy657vaIhmg9mtTJ/rs6myhbAmUYhd7DdLm9S+D4v2lo+KWFbYD?=
 =?us-ascii?Q?N4pvNGYD7f+FvBvcpZ2K+t0qWgXRBT7H3EbZxbsz2KjE3+W+1Pmahq9+I/0A?=
 =?us-ascii?Q?CmkzKy80852F9uPqp/dEj66LZte/qXpcJw8Px4vB/uwXEW6bt10FCYbrh4Wh?=
 =?us-ascii?Q?Y+MgT0T+Na7oZsvLm/7H+hfiZOUMgg+ZTiUKEKkcpAoVWRO7cIVXeNYXytIZ?=
 =?us-ascii?Q?9AL8YmT13856eqPstmEdJGGQGVUHQ/8YEZ6DUVSf42dTvTrJQEvZkZBE5Kbs?=
 =?us-ascii?Q?yQSn/rq1XOuvRNLp/0yKU9nDCF8LdbE/HVq2DLchy1xu9QvEynpy6Fx8qBZN?=
 =?us-ascii?Q?nlxd9nrurAE0yqsmLTvDwghJ0pO0YamB7NFg3j2jYnKncjw4na8706fcH3nZ?=
 =?us-ascii?Q?9+QhIYXleKWgcoKX1YpRNjXISNExCu5lk1lnN7diEdNFRUYgcveMe2Xi0Uax?=
 =?us-ascii?Q?wCn3m6TsRcUn/OSkohfYXpNPiNqplkCefCdbDA2euJQxpCJmIbLptPs4n7lR?=
 =?us-ascii?Q?JDy6D7xMi4pIP4pGGoBNmyFOk5oAS88nFD8+bnKvVJDZWOFoox+UaHrDFf1v?=
 =?us-ascii?Q?Zdt85lITmLGA6e3f63Fq1GyuFC4pWjp6MTD0NPJk1HinH3KalRlU7vfSevSJ?=
 =?us-ascii?Q?SNciRuQBPSWxC1GcPup/SJW8GpNki3E3EF5Cqnu64dUWhF0jvuPAg2ZrJrGU?=
 =?us-ascii?Q?3FKUg2ooeWcbkOAaTHzcmikTmLFTVXlqGUq7hSdzu5XljdRwO4nBUiu2Fgmz?=
 =?us-ascii?Q?ioYq6580IoiQ/d70NCGC6vBItmGrTeREAZgJMLdE1sbuNsJVGDQTyAGQPvK3?=
 =?us-ascii?Q?WXPRzbjrOUQM2Qa1xmHhZg8EXhxSv67Sgft3XJoH6L20kAQLgTWLxCdi7F7T?=
 =?us-ascii?Q?ufiuia4860ZiNemufPrYA3REo4PYe1ekdQ4OmYBE7QTF0IIRgVogywQUYToX?=
 =?us-ascii?Q?q41hKvS7n9oUS3qnXL7qNT1YafTtm459BecU5rruUT+s3tuNTlXgZVHKSB7a?=
 =?us-ascii?Q?SfMFJP+kG+r72qbCIKsgMdDsvigj3kB8dQZyAuOgWlZx2vegdllm0XBXOeqD?=
 =?us-ascii?Q?GbtL1COKRYh9VaPusJstYExE4ULiGF9UzjhP8h6uPr1SFSiWmbkXTt3rrF1/?=
 =?us-ascii?Q?dKP440Gon4VCXsAOMrf5fmvJ73caAL5bPFD1YtEj3OYejRt2JX40skpaicFG?=
 =?us-ascii?Q?+e9kRTA6SRb5L4eRBsR5lCeaqcUSf/rvghdS+iQYrnvrYJxJ1ThZ6RVmg8Ym?=
 =?us-ascii?Q?NiROCYuCArvqW/35DfnCsruXk/HRXd7NCtvYRP+mNTvmTzCkM90j2Geyy+C4?=
 =?us-ascii?Q?PNe/4yP3fcAhu/eS1bLa0A60SSqXI/9XxzbXAaGtt/Y8d+FS2O0b53xsVMRt?=
 =?us-ascii?Q?bvGqv5BDhWSlBuNL5CnNi+qe0YlD8AnuXPXSh4kCA8YvvoWHq31x5lWirHEM?=
 =?us-ascii?Q?IxsjrXPKEXp+pM68Vmdr/iIFOeE0z45n9rMcCbDW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 505a376d-faf3-4978-7d72-08dac6c7bbbe
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2022 05:10:37.6805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /J4QiEwOBhVwfI75YXFruYHGlZzYANut9rR2OcNhjb5HA203hq6fyH/CBpLIA4GykBRh8PIzydMv2rbkbr02BA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6450
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/8] Enable YCbCr420 for VDSC
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

> > This patch series aims to enable the YCbCr420 format for DSC. Changes
> > are mostly compute params related for hdmi,dp and dsi along with the
> > addition of new rc_tables for native_420 and corresponding changes to
> > macros used to fetch them.
>=20
> Huh, what's the deal with all the series on this sent today?
>=20
Was trying to create a new version of the older series I sent but ended up=
=20
Creating a new link was experimenting around to get it right

Regards,
Suraj Kandpal
> BR,
> Jani.
>=20
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
