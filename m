Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D550513985
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 18:16:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 741C410E784;
	Thu, 28 Apr 2022 16:16:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D655910E784
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Apr 2022 16:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651162578; x=1682698578;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=nwEaJLD0t1HgTp/nBv8uWNds63SVVgOqTDf9iO2M+Xs=;
 b=LKTmmOYJh/ScUCYAxwpCeOU7K1woRvPWkqqFJIqr2RgGzDppBaM/BhLR
 1z3YSCzTPSY1ri7wLs7ea6WGM8BZGCBd0eaXowRtgZGwesaeOma8/koYW
 yYfSkJWloHzZDDvcCnhilhZaeME5bB1+57FsDcvza6phdpeT05yssLsPw
 SaBl6uNk4LK6loCBxtKn3FHYObnHk1cpWyT4JnsuaVvJwgu7XJPLZ1NIU
 5054L+jGsSEHUNrtzGXngYkWiYzLNYKUINIe2Y5y3wW2p0+XS5+IitUwc
 d47+NxV5ic+qgmXT/V2z3DinSioS76qmG6gG0d9LCXHy6L3r4UAzLdO5h Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="352770602"
X-IronPort-AV: E=Sophos;i="5.91,295,1647327600"; d="scan'208";a="352770602"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 09:14:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,295,1647327600"; d="scan'208";a="661861921"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga002.fm.intel.com with ESMTP; 28 Apr 2022 09:14:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 28 Apr 2022 09:13:59 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 28 Apr 2022 09:13:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 28 Apr 2022 09:13:59 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 28 Apr 2022 09:13:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R3h+518h1KHN3c6mFBtc/9B/GOH+DKJNbpKTbAdyxQAS/IMfSRkIdY30wW5NVOnOKu0qyz2vi1VPvx29FIgQwsgD3cw7lky8BIg4xX5GTiBx8mNMyydos/HQ2nVVlA0+Jn/GBldgpIAmoQ4ctX2iX0SZLPf1+zchpXYyNffqu6Rxcyb0UNXhTzuINggEaQhWff9r9FrXhP1Al0HDwBDsH0Zibm0sp3SX2A/HT2hQlTTnuD0xWtn/AciKlePRR0dLp19tASl2o9fBJt2RXqsrNwCjfuRKWTLFxqnpV1svxHPZRFXGoVofWbFjI4pEbeIs0Ba0PM++ICi2PqyiAgUEOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nwEaJLD0t1HgTp/nBv8uWNds63SVVgOqTDf9iO2M+Xs=;
 b=TzOHmOhgPmLm2Ba7g+IN9XnWxg46oonZPn28u0lA3/rCIwigRUIt0vMITdj4xtTZvCYvIxP4qeByLi4W43dyNceQpMIZkksyXvQsA3zjcjSWCYSNx6zIsVY1xEg/vOwdNB2hn9yPSO8SvJbohFDBg0TVU9uCtQ775eh1fdN9iqHMAAJEc3XRi7Myw//nVRe0R5enil+BjAor5X4ql3O/3BLSgT4Wo8djDJo06FBMmjSYuiFb1/iLVFtw1WcIsGwEuFT/m/nbQEfWCPzvqMWx1horjlHnLz5JaCgoMqDlz8RjYdiWo+z9/NbKbDbXBY0JtIrH8fMe/rSyE46f2uS3ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR11MB1563.namprd11.prod.outlook.com (2603:10b6:4:5::13) by
 CY4PR1101MB2167.namprd11.prod.outlook.com (2603:10b6:910:1b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Thu, 28 Apr
 2022 16:13:57 +0000
Received: from DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::e1f2:1df0:6d94:9294]) by DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::e1f2:1df0:6d94:9294%9]) with mapi id 15.20.5206.013; Thu, 28 Apr 2022
 16:13:57 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>, "Nerlige Ramappa, Umesh"
 <umesh.nerlige.ramappa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, "Brost, Matthew" <matthew.brost@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] i915/guc/reset: Make __guc_reset_context
 aware of guilty engines
Thread-Index: AQHYWQUAwo4HOnkRuEy9tioqxuOmrK0Fg98A
Date: Thu, 28 Apr 2022 16:13:57 +0000
Message-ID: <2c4b2200ee90ec00ad9bccb13b5bd7339001e004.camel@intel.com>
References: <20220426003045.3929439-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20220426003045.3929439-1-umesh.nerlige.ramappa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 55538141-fa9d-4449-c726-08da29321906
x-ms-traffictypediagnostic: CY4PR1101MB2167:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CY4PR1101MB2167B80992EA581BF4E4CE228AFD9@CY4PR1101MB2167.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Nks37yfD0JdZ+z2fbGCQKF5zIyUQjAxPSEO+iT0MBUHnViEZq65JqdCi6Pgl2Vn6Gf60NBRdWxRVIU+m67YKL0F/j+xjK1yhN8FPomZwXLuf5YAf2GeSdbRCWPl9GGa35TO8v9hyas6/Nqkib+Owl4T+mIWmKp4u4nveXXcW8EZeuGoWSo9yNnBztIAdzHA7/96l4LLHy/rsG/SxMcdhwfNnvyc2h7+dntvT//EBYvPpCJ1L/SP3cgcqxapmPOAxXV60noxX/sliaGu7XGtyRgEE3YnufcMaCuc9HR3q3VMiG/+fmzEyGk5fSbaUI4BtT2nsLyXnScVxy9xvMoxVjmjO7K5me0PFgUCfCoUAYMam/m0lojeMfWGTlty5alBYJVYhIPmeMtQCDM/Ubref2NwNKe952lz7uDVd+bPYRNqvp7eW/fiJ8Ie0g21N6++2h8HU8mqJJlYZnWY4Xx/zfuE7CqRrBuv8wE22nrngiQkwdLgaUBBkZl/SQfJPkNC8q9MQvVg/fyf/Mf1wrvGGGRN8N/I+9MuVpDlFYPEvQyuFOa3l78DtGDe8dBnMQ/g8AgP5w3asxwOAckj79OaVGLFULaulUKq5RdR9JItE/XuzGXDQS+ei2tBSQWp52uBC50Wh2qZaO1rWKI9rSZB0wJnztHFrimA7Dl/SyvVhdg/CLBF5VqTxHV1X5STVn7HtP+0drktj2NoeRE6xHPuoaQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1563.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(71200400001)(36756003)(5660300002)(6506007)(6512007)(86362001)(38100700002)(38070700005)(82960400001)(8936002)(26005)(110136005)(316002)(83380400001)(6486002)(508600001)(66946007)(64756008)(8676002)(66446008)(66476007)(66556008)(2616005)(2906002)(122000001)(186003)(6636002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MkF4WktTa2lGZnhjQ1VIajBTZC9ZVXNyZEFsQVpOVStkRWZyZFZWNzdqekwv?=
 =?utf-8?B?SnBOKzZ0YUM3NnNQKzBDSE04bThsT2UxUjNlWTN5Z2FVMVgrL1ErTEUwaElO?=
 =?utf-8?B?RDJMR0ltM1RMbFZCWDdMWCtiSVlJblgzdEI2ZE1oeEtSWnFFaVJmTHFSNUpT?=
 =?utf-8?B?RWhRbStwVzZwUHhIZ2NlbDNxSDZCdENwL2FmLzh2UWlHZ3VlSkZrM3luTVNj?=
 =?utf-8?B?RlVZZGVVQlFtWnF4Z2xteFIxL29YQ0xzS0hRQUZtOVhJTmJPdS9NUmJnOU82?=
 =?utf-8?B?UUhab3o1ekZnZzQrNlg4WWhXdXE0NmNyK2xjRTJWSW0zcU5aWnJJOXJMYWdD?=
 =?utf-8?B?b0NFRnV0QmJ3aGtpWnRLYmZhanRXRFFYS1kwc3N1a3NiM0pqTGRZT3FhMDBv?=
 =?utf-8?B?ZHZKbDRFK0FRQlZFaGxEQ0l5MjEyZDBDTnNkam5KaU5IeXJKWVZhVitTWDNG?=
 =?utf-8?B?NU1TYll1eDd6QlJtL1NoN1MrQWpWMldha0JicTJiTHFxRDJLRERncXg2MWx3?=
 =?utf-8?B?OEVaWWR3T1lyZzQvM1k1QnFaZk9XVGNBVjRjK1IvYzF2RVhBSnBpc0VvWHo3?=
 =?utf-8?B?NXUwNnYyVlpNS3lOSzV3SkJWcmZIbHNGaUNYM0pBQVRjU0Y5akd4Qk93NGk5?=
 =?utf-8?B?SkJYT2FvODRiaXZRQ0paV1psL1hKMmYwSER1TmhJWlJNeHVIdnB1amtXMXlL?=
 =?utf-8?B?emMvL21pVGt3RGpPdi8zMkhXNTVKTG8rR2hLRktzclgrb0ZSUVpTUWx3Ty9F?=
 =?utf-8?B?Zmo4WEVGN1dFVHk0elc0TkZ0TGl4TnpEdmxEdlhIbkozY21JNkUvdVNDTlJU?=
 =?utf-8?B?cmF6MEdoOTd6Y2d1K3RGcVpHbU5sVGowcC84WFhiV2FJV1g0S1ZwRVJPa0x2?=
 =?utf-8?B?QzhGR3N0b21BR2pSOWRrR3ZXSHlGc1lKNGRCUERLcTRlT0IvSVZBY3BwQlJp?=
 =?utf-8?B?blFxZ1JlZHYvWDVXYUVHOXhhQytWT0pxdEhjU2hjRkV2bFh4VVBtZU1NZ2pv?=
 =?utf-8?B?ZG9XYlNBU0pjcHJNUnhKanRUTUlVSmJsU3AwYzZCeDU2TUpNbXYzaVRqTjVP?=
 =?utf-8?B?M1MxNGIvcXoxL0gxajQ0TjE0dktSMnhjenhINFZ1SHZxN1NTUmVOd0paTmhK?=
 =?utf-8?B?d2VoRVdWODFVL0JZSUhHRHNoZm1CU1pIOHJ1cDMvMTcyenYwelVhMURub05G?=
 =?utf-8?B?Rm8zM1RXVDJUQXB2aWJBeWFNWWNVZmdMOFhhTmFOL3hiTnRCdVk1RlBRd0k0?=
 =?utf-8?B?VFp4SEZDWCtKcVA5U2FSMHg0QUE4U1RGQVIxaG5NNmJCdW42WjJnQkwrZHJq?=
 =?utf-8?B?MzB4Z3luOVdVNWtzRmZHWitabFF2NE9PK2t2bVdiT0pZMmxTZ2ZBYXZ1TVRp?=
 =?utf-8?B?eVBDbG5QdWU4QVFkWk4wa1pTdFBLdVc3TWU0VVBvNTBBL2MyNy9yc1FueHlq?=
 =?utf-8?B?Yk5IZ0p4MklsclRSQWh2dk1ZZGJXTisrYjhGZkpYcXRGS2xNTytRSEMxUTVK?=
 =?utf-8?B?b1Y5bmRwYXlTeG01TkFNMS8wOW1FeE5OUEFaVXVZbXFhNW1zTUJHWDBYVitJ?=
 =?utf-8?B?NGtRdWRFcENFS1ZBYW5RMUlYRW9vRzdwZVJPN1BGYUowNkxRajYraStLb2hq?=
 =?utf-8?B?WVVwQVNrOGNhamhnNEoyMTNYU0xTYStiMFo0U0s0M29Zd0xUR0hpMlFCNXhT?=
 =?utf-8?B?QVpnQnZQb3dVQVNVVjN2VTdHcXV3cjV5OFBlenhkRXR4YW8vcUdwSGUwMGRQ?=
 =?utf-8?B?M2piVmZvK3JVYUlFdnRleEkwOWk0NWZ2VXdQM24wekZFbmxERGM0a3hOSkM3?=
 =?utf-8?B?R3BkSHdyMDZ1YTF3anJMamFhaHlrY2VlZXRKTVlnZURtRk1JTCtkbVllY3Ro?=
 =?utf-8?B?TU9TdGZ1NUQ5QTRjVTlaL1lzNlk1RjZTU1ZoTmF5ZlRjLzVCZDRKZ2hRYzgv?=
 =?utf-8?B?WDJRZUpHYThLRXlvd3JMTXVSZUVEUFdIR0d4N2MwWCt6bHFxbEVOV09ZNjda?=
 =?utf-8?B?WS9LK1ppUXBNUWFIRDBNRFRLOG9yQ2lRUG9kVG55MEczVDI5Qmlzdll4cXRW?=
 =?utf-8?B?K0xDdzdUZStHcTZtUXhLbDZjMEpVK0I3Ty9GUWJLQmFCOHJtRVJDL1JSM2ZZ?=
 =?utf-8?B?aXBCZWZDYnNiNTIvRlgzbDJFT3NGN0dDV0VoODJJTGtTN05JVTlSaU9BeTVG?=
 =?utf-8?B?UDR6WHphcllZeCtrT2sxL0lQQ2FDMG5MYU5xekJ2UlVLTktyR0FrVnpWNVBh?=
 =?utf-8?B?dXR3M3NEcEFzRzhLUWU0blM0YkR3azBCNXRyVlRvYnZQWmpNVkF0MEwwQWpM?=
 =?utf-8?B?LzdWejFKODluTjZsbDFhQTdQdkdoaktaNGY1K1cyVE5QRWkvZFJUbkhscnRJ?=
 =?utf-8?Q?OqSSaVPc6Mbi0OKM8dU8P7c8m8B5D4VWxyfhl2cH2mgDh?=
x-ms-exchange-antispam-messagedata-1: lfh6zhdewp2UdA==
Content-Type: text/plain; charset="utf-8"
Content-ID: <CAA0AC76AFEBB442A1CB65ED89DEA5B4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1563.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55538141-fa9d-4449-c726-08da29321906
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2022 16:13:57.0699 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VyvsyOVPz5D9D/mv0bUanofyfyLljZw8tqLJQa/an8/zakgTnrYHP3X6A8++fYi2WL4nQ6N/BFM384VvGZ0sLHvp/jaewrrixAU6B3I7EbTWmO5P8XohJJeowcJVrO+e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2167
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915/guc/reset: Make __guc_reset_context
 aware of guilty engines
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

QXQgYSBoaWdoIGxldmVsLCB0aGlzIGNoYW5nZSBsb29rcyBnb29kIGFuZCBzaW1wbGUuDQpIb3dl
dmVyLCBpbnNpZGUgX19ndWNfcmVzZXRfY29udGV4dCwgaSB0aGluayB0aGVyZSBtaWdodCBiZQ0K
YW4gb2JzZXJ2ZWQgY2hhbmdlIGluIGJlaGF2aW9yIGZvciBwYXJhbGxlbCBzdWJtaXNzaW9uLg0K
KG9yIHBlcmhhcHMgdGhpcyBjaGFuZ2UgaXMgcGFydCB0aGUgaW50ZW50Pyk6DQoNCiAgICAgVW5s
ZXNzIG15IHVuZGVyc3RhbmRpbmcgaXMgaW5jb3JyZWN0LCBhc3N1bWluZyBhDQogICAgIHBhcmFs
bGVsIHN1Ym1pc3Npb24gY29tZXMgaW4gd2l0aCB2aXJ0dWFsIGVuZ2luZXMgdGhhdA0KICAgICBy
ZXBlYXQgdGhlIHNhbWUga2luZHMgb2Ygd29ya2xvYWRzIGFjcm9zcyBtdWx0aXBsZQ0KICAgICBw
aHlzaWNhbCBlbmdpbmVzICh3aGljaCBpIGFzc3VtZSB3b3VsZCBiZSB0aGUgdHlwaWNhbA0KICAg
ICBlbmQtdXNlciB1c2FnZSBvZiB0aGlzIFVBUEkgZmVhdHVyZSksIHdlIHdvdWxkIGVuZCB1cA0K
ICAgICBtYXJraW5nIHRoZSBwYXJlbnQgY29udGVudCAoYW5kIG90aGVyIGNoaWxkcmVuIGNvbnRl
eHRzDQogICAgIHRoYXQgdXNlIHRoZSBzYW1lIGVuZ2luZSkgYXMgZ3VpbHR5IGJ1dCBub3QgY2hp
bGRyZW4NCiAgICAgY29udGV4dHMgdGhhdCBhcmUgcnVubmluZyBvbiBhIGRpZmZlcmVudCBlbmdp
bmUuDQogICAgIEknbSBub3Qgc3VyZSBpZiB0aGlzIHdvdWxkIGJlIGFuIGV4cGVjdGVkIFVBUEkg
cmVzcG9uc2UNCiAgICAgZm9yIHBhcmFsbGVsIHN1Ym1pc3Npb24uIChpLmUuIG9uZSBvciBtb3Jl
IGNoaWxkcmVuDQogICAgIGdldCBhIHJlLXJ1biBvbiBvdGhlciBlbmdpbmVzPyBJIGhhdmVudCBj
aGVja2VkIGlmDQogICAgIHRoZSByZXBsYXkgaXMgcmV2b2tlZCBsYXRlciBpZiB0aGUgcGFyZW50
J3Mgb3Igc2libGluZydzDQogICAgICdyZXF1ZXN0JyB3YXMgcmVzZXQgYW5kIG1hcmtlZCBhcyAt
RUlPIC4uLiB0aGlzIG1hcmtpbmcNCiAgICAgb2YgcmVxLT5mb3JjZV9lcnJvciBhcyAtRUlPIG9y
IC1FQUdBSU4gaXMgcGFydCBvZiB0aGUNCiAgICAgY2FsbCB0byBfX2k5MTVfcmVxdWVzdF9yZXNl
dCB3aGVyZSB0aGUgZ3VpbHR5IHBhcmFtDQogICAgIHZhbHVlIHNlZXMgdGhpcyBjaGFuZ2UgaSBh
bSByZWZlcnJpbmcgdG8pLg0KDQpJcyB0aGlzIGludGVuZGVkIC8gZXhwZWN0ZWQ/DQoNCi4uLmFs
YW4NCg0KDQpPbiBNb24sIDIwMjItMDQtMjUgYXQgMTc6MzAgLTA3MDAsIFVtZXNoIE5lcmxpZ2Ug
UmFtYXBwYSB3cm90ZToNCj4gVGhlcmUgYXJlIDIgd2F5cyBhbiBlbmdpbmUgY2FuIGdldCByZXNl
dCBpbiBpOTE1IGFuZCB0aGUgbWV0aG9kIG9mIHJlc2V0DQo+IGFmZmVjdHMgaG93IEtNRCBsYWJl
bHMgYSBjb250ZXh0IGFzIGd1aWx0eS9pbm5vY2VudC4NCj4gDQo+ICgxKSBHdUMgaW5pdGlhdGVk
IGVuZ2luZS1yZXNldDogR3VDIHJlc2V0cyBhIGh1bmcgZW5naW5lIGFuZCBub3RpZmllcw0KPiBL
TUQuIFRoZSBjb250ZXh0IHRoYXQgaHVuZyBvbiB0aGUgZW5naW5lIGlzIG1hcmtlZCBndWlsdHkg
YW5kIGFsbCBvdGhlcg0KPiBjb250ZXh0cyBhcmUgaW5ub2NlbnQuIFRoZSBpbm5vY2VudCBjb250
ZXh0cyBhcmUgcmVzdWJtaXR0ZWQuDQo+IA0KPiAoMikgR1QgYmFzZWQgcmVzZXQ6IFdoZW4gYW4g
ZW5naW5lIGhlYXJ0YmVhdCBmYWlscyB0byB0aWNrLCBLTUQNCj4gaW5pdGlhdGVzIGEgZ3QvY2hp
cCByZXNldC4gQWxsIGFjdGl2ZSBjb250ZXh0cyBhcmUgbWFya2VkIGFzIGd1aWx0eSBhbmQNCj4g
ZGlzY2FyZGVkLg0KPiANCj4gSW4gb3JkZXIgdG8gY29ycmVjdGx5IG1hcmsgdGhlIGNvbnRleHRz
IGFzIGd1aWx0eS9pbm5vY2VudCwgcGFzcyBhIG1hc2sNCj4gb2YgZW5naW5lcyB0aGF0IHdlcmUg
cmVzZXQgdG8gX19ndWNfcmVzZXRfY29udGV4dC4NCj4gDQo+IEZpeGVzOiBlYjVlN2RhNzM2ZjMg
KCJkcm0vaTkxNS9ndWM6IFJlc2V0IGltcGxlbWVudGF0aW9uIGZvciBuZXcgR3VDIGludGVyZmFj
ZSIpDQo+IFNpZ25lZC1vZmYtYnk6IFVtZXNoIE5lcmxpZ2UgUmFtYXBwYSA8dW1lc2gubmVybGln
ZS5yYW1hcHBhQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yZXNldC5jICAgICAgICAgICAgfCAgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfZ3VjLmggICAgICAgICAgIHwgIDIgKy0NCj4gIC4uLi9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyAgICB8IDE2ICsrKysrKysrLS0tLS0tLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgICAgICAgICAgICB8ICAyICst
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5oICAgICAgICAgICAgfCAg
MiArLQ0KPiAgNSBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNl
dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYw0KPiBpbmRleCA1NDIy
YTNiODRiZDQuLmE1MzM4YzNmZGU3YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmVzZXQuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yZXNldC5jDQo+IEBAIC04MDgsNyArODA4LDcgQEAgc3RhdGljIGludCBndF9yZXNldChzdHJ1
Y3QgaW50ZWxfZ3QgKmd0LCBpbnRlbF9lbmdpbmVfbWFza190IHN0YWxsZWRfbWFzaykNCj4gIAkJ
X19pbnRlbF9lbmdpbmVfcmVzZXQoZW5naW5lLCBzdGFsbGVkX21hc2sgJiBlbmdpbmUtPm1hc2sp
Ow0KPiAgCWxvY2FsX2JoX2VuYWJsZSgpOw0KPiAgDQo+IC0JaW50ZWxfdWNfcmVzZXQoJmd0LT51
YywgdHJ1ZSk7DQo+ICsJaW50ZWxfdWNfcmVzZXQoJmd0LT51YywgQUxMX0VOR0lORVMpOw0KPiAg
DQo+ICAJaW50ZWxfZ2d0dF9yZXN0b3JlX2ZlbmNlcyhndC0+Z2d0dCk7DQo+ICANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgNCj4gaW5kZXggM2YzMzczZjY4MTIzLi45NjZl
NjlhOGIxYzEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2d1Yy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oDQo+
IEBAIC00NDMsNyArNDQzLDcgQEAgaW50IGludGVsX2d1Y19nbG9iYWxfcG9saWNpZXNfdXBkYXRl
KHN0cnVjdCBpbnRlbF9ndWMgKmd1Yyk7DQo+ICB2b2lkIGludGVsX2d1Y19jb250ZXh0X2Jhbihz
dHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKTsNCj4gIA0K
PiAgdm9pZCBpbnRlbF9ndWNfc3VibWlzc2lvbl9yZXNldF9wcmVwYXJlKHN0cnVjdCBpbnRlbF9n
dWMgKmd1Yyk7DQo+IC12b2lkIGludGVsX2d1Y19zdWJtaXNzaW9uX3Jlc2V0KHN0cnVjdCBpbnRl
bF9ndWMgKmd1YywgYm9vbCBzdGFsbGVkKTsNCj4gK3ZvaWQgaW50ZWxfZ3VjX3N1Ym1pc3Npb25f
cmVzZXQoc3RydWN0IGludGVsX2d1YyAqZ3VjLCBpbnRlbF9lbmdpbmVfbWFza190IHN0YWxsZWQp
Ow0KPiAgdm9pZCBpbnRlbF9ndWNfc3VibWlzc2lvbl9yZXNldF9maW5pc2goc3RydWN0IGludGVs
X2d1YyAqZ3VjKTsNCj4gIHZvaWQgaW50ZWxfZ3VjX3N1Ym1pc3Npb25fY2FuY2VsX3JlcXVlc3Rz
KHN0cnVjdCBpbnRlbF9ndWMgKmd1Yyk7DQo+ICANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jDQo+IGluZGV4IDYxYTZmMjQyNGUyNC4u
MWZiZjdiNmMyNzQwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF9ndWNfc3VibWlzc2lvbi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2d1Y19zdWJtaXNzaW9uLmMNCj4gQEAgLTE2NjcsOSArMTY2Nyw5IEBAIF9fdW53aW5k
X2luY29tcGxldGVfcmVxdWVzdHMoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQ0KPiAgCXNwaW5f
dW5sb2NrX2lycXJlc3RvcmUoJnNjaGVkX2VuZ2luZS0+bG9jaywgZmxhZ3MpOw0KPiAgfQ0KPiAg
DQo+IC1zdGF0aWMgdm9pZCBfX2d1Y19yZXNldF9jb250ZXh0KHN0cnVjdCBpbnRlbF9jb250ZXh0
ICpjZSwgYm9vbCBzdGFsbGVkKQ0KPiArc3RhdGljIHZvaWQgX19ndWNfcmVzZXRfY29udGV4dChz
dHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIGludGVsX2VuZ2luZV9tYXNrX3Qgc3RhbGxlZCkNCj4g
IHsNCj4gLQlib29sIGxvY2FsX3N0YWxsZWQ7DQo+ICsJYm9vbCBndWlsdHk7DQo+ICAJc3RydWN0
IGk5MTVfcmVxdWVzdCAqcnE7DQo+ICAJdW5zaWduZWQgbG9uZyBmbGFnczsNCj4gIAl1MzIgaGVh
ZDsNCj4gQEAgLTE2OTcsNyArMTY5Nyw3IEBAIHN0YXRpYyB2b2lkIF9fZ3VjX3Jlc2V0X2NvbnRl
eHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCBib29sIHN0YWxsZWQpDQo+ICAJCWlmICghaW50
ZWxfY29udGV4dF9pc19waW5uZWQoY2UpKQ0KPiAgCQkJZ290byBuZXh0X2NvbnRleHQ7DQo+ICAN
Cj4gLQkJbG9jYWxfc3RhbGxlZCA9IGZhbHNlOw0KPiArCQlndWlsdHkgPSBmYWxzZTsNCj4gIAkJ
cnEgPSBpbnRlbF9jb250ZXh0X2ZpbmRfYWN0aXZlX3JlcXVlc3QoY2UpOw0KPiAgCQlpZiAoIXJx
KSB7DQo+ICAJCQloZWFkID0gY2UtPnJpbmctPnRhaWw7DQo+IEBAIC0xNzA1LDE0ICsxNzA1LDE0
IEBAIHN0YXRpYyB2b2lkIF9fZ3VjX3Jlc2V0X2NvbnRleHQoc3RydWN0IGludGVsX2NvbnRleHQg
KmNlLCBib29sIHN0YWxsZWQpDQo+ICAJCX0NCj4gIA0KPiAgCQlpZiAoaTkxNV9yZXF1ZXN0X3N0
YXJ0ZWQocnEpKQ0KPiAtCQkJbG9jYWxfc3RhbGxlZCA9IHRydWU7DQo+ICsJCQlndWlsdHkgPSBz
dGFsbGVkICYgY2UtPmVuZ2luZS0+bWFzazsNCj4gIA0KPiAgCQlHRU1fQlVHX09OKGk5MTVfYWN0
aXZlX2lzX2lkbGUoJmNlLT5hY3RpdmUpKTsNCj4gIAkJaGVhZCA9IGludGVsX3Jpbmdfd3JhcChj
ZS0+cmluZywgcnEtPmhlYWQpOw0KPiAgDQo+IC0JCV9faTkxNV9yZXF1ZXN0X3Jlc2V0KHJxLCBs
b2NhbF9zdGFsbGVkICYmIHN0YWxsZWQpOw0KPiArCQlfX2k5MTVfcmVxdWVzdF9yZXNldChycSwg
Z3VpbHR5KTsNCj4gIG91dF9yZXBsYXk6DQo+IC0JCWd1Y19yZXNldF9zdGF0ZShjZSwgaGVhZCwg
bG9jYWxfc3RhbGxlZCAmJiBzdGFsbGVkKTsNCj4gKwkJZ3VjX3Jlc2V0X3N0YXRlKGNlLCBoZWFk
LCBndWlsdHkpOw0KPiAgbmV4dF9jb250ZXh0Og0KPiAgCQlpZiAoaSAhPSBudW1iZXJfY2hpbGRy
ZW4pDQo+ICAJCQljZSA9IGxpc3RfbmV4dF9lbnRyeShjZSwgcGFyYWxsZWwuY2hpbGRfbGluayk7
DQo+IEBAIC0xNzIyLDcgKzE3MjIsNyBAQCBzdGF0aWMgdm9pZCBfX2d1Y19yZXNldF9jb250ZXh0
KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgYm9vbCBzdGFsbGVkKQ0KPiAgCWludGVsX2NvbnRl
eHRfcHV0KHBhcmVudCk7DQo+ICB9DQo+ICANCj4gLXZvaWQgaW50ZWxfZ3VjX3N1Ym1pc3Npb25f
cmVzZXQoc3RydWN0IGludGVsX2d1YyAqZ3VjLCBib29sIHN0YWxsZWQpDQo+ICt2b2lkIGludGVs
X2d1Y19zdWJtaXNzaW9uX3Jlc2V0KHN0cnVjdCBpbnRlbF9ndWMgKmd1YywgaW50ZWxfZW5naW5l
X21hc2tfdCBzdGFsbGVkKQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZTsNCj4g
IAl1bnNpZ25lZCBsb25nIGluZGV4Ow0KPiBAQCAtNDIxNyw3ICs0MjE3LDcgQEAgc3RhdGljIHZv
aWQgZ3VjX2NvbnRleHRfcmVwbGF5KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkNCj4gIHsNCj4g
IAlzdHJ1Y3QgaTkxNV9zY2hlZF9lbmdpbmUgKnNjaGVkX2VuZ2luZSA9IGNlLT5lbmdpbmUtPnNj
aGVkX2VuZ2luZTsNCj4gIA0KPiAtCV9fZ3VjX3Jlc2V0X2NvbnRleHQoY2UsIHRydWUpOw0KPiAr
CV9fZ3VjX3Jlc2V0X2NvbnRleHQoY2UsIGNlLT5lbmdpbmUtPm1hc2spOw0KPiAgCXRhc2tsZXRf
aGlfc2NoZWR1bGUoJnNjaGVkX2VuZ2luZS0+dGFza2xldCk7DQo+ICB9DQo+ICANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jDQo+IGluZGV4IDhjOWVmNjkwYWM5ZC4uZThmMDk5
MzYwZTAxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMNCj4gQEAg
LTU5NSw3ICs1OTUsNyBAQCB2b2lkIGludGVsX3VjX3Jlc2V0X3ByZXBhcmUoc3RydWN0IGludGVs
X3VjICp1YykNCj4gIAlfX3VjX3Nhbml0aXplKHVjKTsNCj4gIH0NCj4gIA0KPiAtdm9pZCBpbnRl
bF91Y19yZXNldChzdHJ1Y3QgaW50ZWxfdWMgKnVjLCBib29sIHN0YWxsZWQpDQo+ICt2b2lkIGlu
dGVsX3VjX3Jlc2V0KHN0cnVjdCBpbnRlbF91YyAqdWMsIGludGVsX2VuZ2luZV9tYXNrX3Qgc3Rh
bGxlZCkNCj4gIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZ3VjICpndWMgPSAmdWMtPmd1YzsNCj4gIA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmgNCj4gaW5kZXggODY2YjQ2MjgyMWMw
Li5hOGYzOGMyYzYwZTIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMu
aA0KPiBAQCAtNDIsNyArNDIsNyBAQCB2b2lkIGludGVsX3VjX2RyaXZlcl9sYXRlX3JlbGVhc2Uo
c3RydWN0IGludGVsX3VjICp1Yyk7DQo+ICB2b2lkIGludGVsX3VjX2RyaXZlcl9yZW1vdmUoc3Ry
dWN0IGludGVsX3VjICp1Yyk7DQo+ICB2b2lkIGludGVsX3VjX2luaXRfbW1pbyhzdHJ1Y3QgaW50
ZWxfdWMgKnVjKTsNCj4gIHZvaWQgaW50ZWxfdWNfcmVzZXRfcHJlcGFyZShzdHJ1Y3QgaW50ZWxf
dWMgKnVjKTsNCj4gLXZvaWQgaW50ZWxfdWNfcmVzZXQoc3RydWN0IGludGVsX3VjICp1YywgYm9v
bCBzdGFsbGVkKTsNCj4gK3ZvaWQgaW50ZWxfdWNfcmVzZXQoc3RydWN0IGludGVsX3VjICp1Yywg
aW50ZWxfZW5naW5lX21hc2tfdCBzdGFsbGVkKTsNCj4gIHZvaWQgaW50ZWxfdWNfcmVzZXRfZmlu
aXNoKHN0cnVjdCBpbnRlbF91YyAqdWMpOw0KPiAgdm9pZCBpbnRlbF91Y19jYW5jZWxfcmVxdWVz
dHMoc3RydWN0IGludGVsX3VjICp1Yyk7DQo+ICB2b2lkIGludGVsX3VjX3N1c3BlbmQoc3RydWN0
IGludGVsX3VjICp1Yyk7DQo+IC0tIA0KPiAyLjM1LjENCj4gDQoNCg==
