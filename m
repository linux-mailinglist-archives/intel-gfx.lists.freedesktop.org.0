Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AB151755A
	for <lists+intel-gfx@lfdr.de>; Mon,  2 May 2022 19:06:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1375E10EB3F;
	Mon,  2 May 2022 17:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 747F010EB3D
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 17:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651511169; x=1683047169;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ezFX4rX3XIPEsYqvVhiUC3e3rKNfrUUOazu9moaigOo=;
 b=deKyV85okQ8g63dIY5k+Vw/G+/8x1xK1l//+7JbrqqCNAF2DHRi8jnSL
 fl+4AjIAjxmV9DlUxn1CTqXpzhXCkcmcUbGCPUp0FxBetNRaUs/UyUJ8y
 ewNXOql+TX53YiSpA79j+FLSZnNxQTs+MUmc3pSJniIGTT74eSx2CCrhA
 EWUhZCMpOLnX/IDByQiTQ7V6JKkW5ZUf9556rBnlAG/ILZ4gy3s26UUOJ
 WsI8dzhxQQPR1SPsBzpLdsmvsHzuHBv9t0Cc2mXkZw3Z4LqHb/P4Ki21w
 fXEncDFVERyzm1J/kBZHSsGdO9wgkTNeTi84pBY70mFutugAxqlNqpDbt w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="254725974"
X-IronPort-AV: E=Sophos;i="5.91,192,1647327600"; d="scan'208";a="254725974"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 10:06:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,192,1647327600"; d="scan'208";a="733526091"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 02 May 2022 10:06:08 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 2 May 2022 10:06:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 2 May 2022 10:06:08 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 2 May 2022 10:06:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D4GPrxNp4Hey+fhIOVpSSFsw8RRBrdQZRVn72SJwN/DpmTxnh2OrBHIBm5Y4l1ve8vDTSMrzb26obXasg9q1jUzMMo1YyGtM7E4RFrELJksroKVPQNcC5a4b3+Ufd65xiurDqK/c+LOohrieD9afnT69tcDyLYA/vDHGgYq4ek5WELx/wC63dyjFj+meRGTqQtc3ivaaOYsabkQzgjyZob4Ll+OinConjNDRw+NQagLuqlLIyo00GZANyU723qCrGBH+dDzd1/Z3n0K8StYj+kk+saxMoVmjubpsJwL5XLOAI6ci53WWHScBcjYOg+ngJG+4fmXxlzNkzfea8kSUow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ezFX4rX3XIPEsYqvVhiUC3e3rKNfrUUOazu9moaigOo=;
 b=ZYluzoIrUl4bGhuufGoRSzYNr2YZJnf9O2qzXfRxmIfJmhH686QhnE/phhZu30yI3Yp9qFZ31oZwmJSD1aod5N4cInoBrQR8IaqweHAKbCNH362jqMZt31c/44k6UShhrvYikRMkRHnhBWfrg/kNWNYYZdJJEKF4GMHp35Iy/ozZOEvXQzvWiq1QcXhW+M7zsbTfDLxWoREi6FE/gt0n4eij9KsQ8yjpDjiTd5XxxdOoLxcBsXaMYcI/Q9pR4Ph4A1P9et/popyj847Uq5kBZ3jHD+3cGxk8dySrc9fmTFIILXvjJnQUe576RAIuO1VX1t3A14SjHNGGZsI0MG7nvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by CO1PR11MB4804.namprd11.prod.outlook.com (2603:10b6:303:6f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.12; Mon, 2 May
 2022 17:06:07 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::ec95:b7c:857b:120c]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::ec95:b7c:857b:120c%5]) with mapi id 15.20.5206.014; Mon, 2 May 2022
 17:06:07 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "tjaalton@ubuntu.com" <tjaalton@ubuntu.com>, "Srivatsa, Anusha"
 <anusha.srivatsa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [CI] PR for DG2 DMC v2.06
Thread-Index: AQHYPuMJhsBSxygKoUWrPZ6ke5oRfqztyi0AgB4PbwCAADZvgA==
Date: Mon, 2 May 2022 17:06:06 +0000
Message-ID: <514c206eb15c2dbbb62f37b90234887ca490f249.camel@intel.com>
References: <2ebce4dd176208e368ba13d0c2f3d4591bf230e9.camel@intel.com>
 <e90b14fc-ad86-6687-956c-5d413e1032f9@ubuntu.com>
 <0057d5a0-9c71-5d53-d102-ce49f2ab5c15@ubuntu.com>
In-Reply-To: <0057d5a0-9c71-5d53-d102-ce49f2ab5c15@ubuntu.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.4 (3.42.4-2.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 690b216a-e5a8-4e58-ced6-08da2c5e0c34
x-ms-traffictypediagnostic: CO1PR11MB4804:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CO1PR11MB4804896C3FA4DE162DF6E0C6C7C19@CO1PR11MB4804.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LkgIOB4hlAgKjrSWAPvb2Me3S1ttbLycYZfqA1rtCR3kK+te4RuDTCxylmyUqwXY5c0dLrVmYgukgPGcYB2MW+qei50ZOXtcNSED/I93/FeoespgBs7unDWawB5BvFBwtpmOyAhEs6XeXBDe+W50TnKUX9D0fkaAcXO1wmSK+sTC3jUlX6Y6yL+Y/uC7ONMsW09B9T80BGe9Y8oMQqn0CeTLveW8guiND8ajnOICsaoIeivRPaqWP0Ugvl/+lpr4PpRAf4vjXj0WwX53b8sLQLcvYUIGz8HHs+21a4wZ48TtJwkchxZUinVLpxiMY3pZbVZDBsYMYy9EAg1cWHNc0ZX+1jhmMinjwg5QKBZ13iutzRDM3KGPQgg9WtIQcC5lgGk3Z1sZ5mDXD83gnt5fXMjv3mHr88L6xpUMIS19kYr3AZ6xwCIEpk4NMV9XwpiSmKWr7phdm+TSv+LYI0SIPDepMwAkvjBiylFIHquyuO68feubhx0oTwaVXWtugnE/+TV3tgF5Jnk3e3X/1YMTy3zkBhkL6qJT4jBE5lf8jbFLEFzJJA4SauDDJWCRrno1tqm+vs3cwATsfVELKd/OYBBo9tuBKfu9Y0nl94eg18JntwvFPj92v4kkUt0PQ+6q3Y/lc761ZIs/8UBYrKKmMtPSDZXJXSQWw35IaV65gF+WTb6FnguMs1cEplpoq3R1kHAHHlMA+LaNLqlVmqQI4w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6486002)(82960400001)(36756003)(122000001)(186003)(110136005)(508600001)(91956017)(2616005)(86362001)(64756008)(66946007)(71200400001)(5660300002)(8676002)(66556008)(66446008)(66476007)(38070700005)(38100700002)(316002)(26005)(2906002)(6512007)(83380400001)(6506007)(8936002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y1RpVkpVSUo5QXpHVUhadzlWT1dVeGthM2YwYTJTeUVncGQrVWVHZ0dadDhj?=
 =?utf-8?B?N1hTcytRMkRnSE55cWMyMWZMSGR0VkxJVERSZGlBTEtUSXhXTUQ3NWtZNW1B?=
 =?utf-8?B?MGRlVHdHWFlrZDlMLzZkQkdVOStvTmJqM0NvUG5hWHN4OXJyZ1VBeWdmWW1v?=
 =?utf-8?B?Y0lxLythZWNsTVhNbFYwbXRudU1jcW1ldTRIUmtSVDdKRWxiVk5kSm54TUpp?=
 =?utf-8?B?UXlVOWwxQ2hzUGJvOStRWmE2dFhHY3RJNXhLVldxM1NjYmdLOE5KeklRTE9x?=
 =?utf-8?B?WkM3Sm92cDRPbUJFVHg5MVdkWFZSK1JsMndUV00rd2N0QVJTQUJVaWJYeTg2?=
 =?utf-8?B?TXhKVGpQN2ZyTEdGOXZtWUtIU3ZuaG1QbHRHRjFYQmVCb1VuYTZKVHBtOEJB?=
 =?utf-8?B?aUlOMzVrSXIwNGQvbzdXL3RHL1NEYnJMMWQ0NjRMd0RudDk4aFF4b1p0S3p1?=
 =?utf-8?B?bS9EYTQ4YmFZRFVnU1ZEeWZkUGE0ZlFuUEtKc2NSN2EzTGh2MS9uWllMRFlj?=
 =?utf-8?B?SDVpajZWOVFFYU1mRVRpS253N1BjVmhxcW1NY2p0QmtJcHhQaG10RjNzNXBm?=
 =?utf-8?B?RGQrUmV0UE4vQmFSaTQxNFh0aTAyeFRSbHMrbXI2T3pRSDBvMUVSMkwwOExk?=
 =?utf-8?B?TnRhK1J4bzU3azhjUDE1V1BuRUJWWHMwQUFEamtmZkZSS3lscVpCV2VRcldM?=
 =?utf-8?B?eEFCV2kyZk5LMlAzazR2MWQ1bXdkNjZaR1VnWTJ6SDY2VHhLTWxEYlpYRHM0?=
 =?utf-8?B?Q3Q3VGhyQ3FJVXpIZ2xwZWYvWVdHZGp1UjROZWt5YVN3M0VJaXE2dVVyMVhW?=
 =?utf-8?B?bmNFL0VxT3JDNVA0V2F1bWMxUkNZT0ZzNjNWVVNtLy83d2NXWjA2QnBQeFFC?=
 =?utf-8?B?QVJUcVNyaEVZU0RYcHNUeDV5ckw2Q3MzSHhMZGtpbXYrSEJsMEc5blJxU0Nn?=
 =?utf-8?B?cDI5YklLeVhqRkJLZ0hDY0FhR1VEVGhQbGJjMWY2UE9CeDR1dGZPOSt0Skxm?=
 =?utf-8?B?eCtuSG5jUTRYY0ZRblVHTWZ0OVB1WGJhd201Q2Nsb25sWWU2R3dZU0g4WEhY?=
 =?utf-8?B?a1JJYUFCOGdaUDl5dWtIaW9xQmFRWmpBSTEvdFI1aHoxZitEb1FydGF4RU5j?=
 =?utf-8?B?SXdKaWJVaDFzS0dFUE5WTFBMejdEbkNrM2FMSVZiU1NoVHFmMTBJNVd6UG1y?=
 =?utf-8?B?N2NmNmUxWC9sWUVIZlAzcTRYMDVzdVBFR2YwYkFCdThTWUQ1T05tc2NxT0lj?=
 =?utf-8?B?d2I0bzZJcExtOVQ0bXlpSzVNdlAvdGpWTXpZcjNBbzQ4MEpSZnlWOHN4cytp?=
 =?utf-8?B?L2pjY2VQTWR2a0RyZUhhallUNlJpWU44bEZZeUs2bE4yamNyRmFuUy80am1P?=
 =?utf-8?B?dDEvR2I4MElLZE95eUM5cDI3R2dlNklkQUZLbmNqNVpoVnNoUUZybWNlOXBM?=
 =?utf-8?B?ZU4rNzg3ZWZLSUlXSTI1Qzlwc3dFVEJlRVRxQUxGckNoQVN2SVNnSWx4SWlu?=
 =?utf-8?B?QWk4K3lnVU1tOGNRdGdPa1hpck1NM1dCNTdCdGRJUGNiUzZ6eHpsUG9ZTkU5?=
 =?utf-8?B?cWJsd3lxcVBaaysranE3NGgvZzJtbFpQK2UxK0NBR1ZWSlpwTEREWU5mUXll?=
 =?utf-8?B?N2w3T2ZzVEhGVGY0dEl6ek1KR3FUOXN0aGNycHEzOE1qTG9EbDJDb3VsaHVQ?=
 =?utf-8?B?ekxxREI0QVZYL3U4ZjBqVGo2bmFzK1RsdDJuR2RyRTZydlNhQmZwdENoS1dD?=
 =?utf-8?B?Um5sM0s1UG9SUzZudVEzcmdUQUtiOWRsSHExdWxZZGJCd1NVWGR3V1I1UXZX?=
 =?utf-8?B?NFRteTVNSE02TC9hei9CMWp0Q3JEbGVGcFRoWVNNcytGWlFsR1RpeFFIa1Uv?=
 =?utf-8?B?VjdWQlQrZzJRZmIxSjlHREVZaEJrdnVqRUNPSFovZElsWVhEZ2NCanJEcTdm?=
 =?utf-8?B?YzdhTWkrbEVqUm96dlJYSXpKZHkyY1lrbm44eFRGZVRyenAyK1lXcDlZODZx?=
 =?utf-8?B?TVpyMHRGTEI4bndpU00wVlh5N3hsQkFYZEpUcmROSVBYMUd1anpJdXJkeGsw?=
 =?utf-8?B?RlVNRzAvRzk5Q2txL3gyditYQ2FYMnFQUUtDbmdHOFNiUmJERHc0MnJMU05L?=
 =?utf-8?B?Z0JXUE9GR0hKbXZSNGZkdklFSEJnM1Z1NURmQytKcFVKQ2l2bGJZM3haazky?=
 =?utf-8?B?bEZLWTZtYytOb3o0aXBkZ2J0VVQ2dXlIZkt6a3puSTRqYmlOOEhvaHozTHZr?=
 =?utf-8?B?VDdqazBOdGF1eTRPMit3NGpMM2dkNzdMcnBVbjlraEc2MkdRYlo0djFUNnNs?=
 =?utf-8?B?RDYrMmJmNWI0VGIwOFJmeHBPOHNWLzVKTFJaazdUZmR4TnZPaEVRSXh2MmJH?=
 =?utf-8?Q?DdVK+jd3pHU1AlqLDYTh+7ldJbh3vIY6yD69dCH2/ZJcw?=
x-ms-exchange-antispam-messagedata-1: B5S7zZYPZra8QQ==
Content-Type: text/plain; charset="utf-8"
Content-ID: <D92DE63DCBAC1842A34E28BA2FA93035@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 690b216a-e5a8-4e58-ced6-08da2c5e0c34
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2022 17:06:06.9369 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x2lgSdQNwJibfVUMz5MKUIy4I4zWYFzU72/pSae0TFSiC7xaEIbwgovMOFwFJ3/eBkGHNpPfbIHS/XYgdIngECxMfha4kKz7CEMLouW18BeD6SSgTRACwa+vjw5ERXVJa2Qnnv7YEgiOuMLb2P/h+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4804
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [CI] PR for DG2 DMC v2.06
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

SGkgVGltbywNCg0KU2luY2VyZSBhcG9sb2dpZXMhIFRoaXMgc2xpcHBlZCB0aHJvdWdoIHRoZSBj
cmFja3MsIEknbGwgYmUgc2VuZGluZyANCnRoZSBQUiByZXF1ZXN0IHRvIGxpbnV4LWZpcm13YXJl
IGluIHRoZSBuZXh0IGNvdXBsZSBvZiBtaW51dGVzLg0KDQpUaGFua3MsDQotIE1hZGh1bWl0aGEN
Cg0KT24gTW9uLCAyMDIyLTA1LTAyIGF0IDE2OjUxICswMzAwLCBUaW1vIEFhbHRvbmVuIHdyb3Rl
Og0KPiBUaW1vIEFhbHRvbmVuIGtpcmpvaXR0aSAxMy40LjIwMjIga2xvIDEzLjQ4Og0KPiA+IFRv
bGFrYW5haGFsbGkgUHJhZGVlcCwgTWFkaHVtaXRoYSBraXJqb2l0dGkgMjMuMy4yMDIyIGtsbyAy
MC4yMzoNCj4gPiA+IFRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQNCj4gPiA+IDY4
MTI4MWU0OWZiNjc3ODgzMTM3MGU1ZDk0ZTZlMWQ5N2YwNzUyZDY6DQo+ID4gPiANCj4gPiA+IMKg
wqAgYW1kZ3B1OiB1cGRhdGUgUFNQIDEzLjAuOCBmaXJtd2FyZSAoMjAyMi0wMy0xOCAwNzozNTo1
NCAtMDQwMCkNCj4gPiA+IA0KPiA+ID4gYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRv
cnkgYXQ6DQo+ID4gPiANCj4gPiA+IMKgwqAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
ZHJtL2RybS1maXJtd2FyZSBkZzJfZG1jX3YyLjA2DQo+ID4gPiANCj4gPiA+IGZvciB5b3UgdG8g
ZmV0Y2ggY2hhbmdlcyB1cCB0bw0KPiA+ID4gZWNjMjgwNzBlYTVlZGQ0NzMzYjc4NTUwMzI2YzFk
NTY4NTgxODFhZjoNCj4gPiA+IA0KPiA+ID4gwqDCoCBpOTE1OiBBZGQgRE1DIHYyLjA2IGZvciBE
RzIgKDIwMjItMDMtMjMgMTE6MTU6MTIgLTA3MDApDQo+ID4gPiANCj4gPiA+IC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4g
PiA+IE1hZGh1bWl0aGEgVG9sYWthbmFoYWxsaSBQcmFkZWVwICgxKToNCj4gPiA+IMKgwqDCoMKg
wqDCoCBpOTE1OiBBZGQgRE1DIHYyLjA2IGZvciBERzINCj4gPiA+IA0KPiA+ID4gwqAgV0hFTkNF
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDMgKysrDQo+ID4gPiDC
oCBpOTE1L2RnMl9kbWNfdmVyMl8wNi5iaW4gfCBCaW4gMCAtPiAyMjQxNiBieXRlcw0KPiA+ID4g
wqAgMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4gPiA+IMKgIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBpOTE1L2RnMl9kbWNfdmVyMl8wNi5iaW4NCj4gPiA+IA0KPiA+IA0KPiA+IEhpLCB3
aGVuIHdpbGwgdGhpcyBiZSBzZW50IHVwc3RyZWFtPw0KPiA+IA0KPiA+IA0KPiANCj4gUGluZz8g
R3VDIGdvdCBhcHBsaWVkIHRoZXJlLCB3aGF0J3MgYmxvY2tpbmcgRE1DIGZvciBERzI/DQo+IA0K
PiANCj4gDQoNCg==
