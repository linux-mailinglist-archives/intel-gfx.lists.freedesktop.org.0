Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D76A2846ED9
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 12:22:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EFDF10F03E;
	Fri,  2 Feb 2024 11:22:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cm7+C/q9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2B0110F044
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 11:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706872950; x=1738408950;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=k8Va5kW/TLUThaSr9DtBHCKrSlDMHU5NzltAENECUBI=;
 b=Cm7+C/q9cL/7UlAFi06c6Hy7FvJDmDzLmquUTW0+qCSP8b/zgPUjQwzV
 R2S8lohZmyqHN4OQvGR6fzyrb1Ew75vX3mYbRVXLbwR5MD7dwqn9R6euh
 GUi6S7i3eeAaHDWGd8XhXNZNVCnPewtt2KOZf7tcxGAjIZuFVi17UaQjO
 KnxEnJPKwBKZUwM7WXzULlzB45vFwgSpKgY0VXRcifwjCpkouOw+iNU+4
 5C/v23L9QO+1CwykLQOHNerHp6PTK1OR7wzA7+Xr0aU82Wi07seK8/pDo
 0//b08h/1P6Rmpf1kau7e5Z1bOdjFr1F8nKHyBo5Hztt1xKkWsFihZqUM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="435278378"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="435278378"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 03:22:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="908545472"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="908545472"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 03:22:30 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 03:22:30 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 03:22:29 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 03:22:29 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 03:22:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AakSZMW6fwgxCcyoXkv3aIEYkihZ1BhvKEQS02QSEbgSTkPUhPrQY8NkVZOfNkOLXVm911k4YaeKUnG26gZbYpi1Xka4GVV5Jo1bwd9Kne2dqJh97ELhaEB/Blwhh0v1c5w1OygQ2/szXSBqc4N/YrFaStbV2E6VzZp52S1z7d2avrbjMs9BscGGg5h3hePGa3nPc4WMdijDhBOo5WS3xFQaqMRrNZKcOgaU2PR33rL/AMpxP3nt6bnRsNAEXtYDVSnp1a6r5bBy9lxpGr479mbQF35xBhzq7Tjdw9ak+jm36+ciGNOHjydUem9PR9aNq3fbez68oYQxdLSko4fBXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k8Va5kW/TLUThaSr9DtBHCKrSlDMHU5NzltAENECUBI=;
 b=d8WYHw8BMw2pFM+PTrjWwLinNeRyKKcIfPdJfJfK478GEP9ZZhrBcgNSRL6d2wjvHNCYbRsvCGB1Iw/2j0y0qr5ZDPz1hBrh/Qtp5tblgXK/Xt3HOSbeJL8/fCzDEMlXicyjZKr3+cAKENojvtXzgxD95aYZdRIotbjtyu+Lq0n9Ij6ZUIpOftkQIBcrek1yMI5GPAwpk2fg2FaVvNNRDFDyZkXCXURz9dSiY4K89YveTkMsY7abeA15YOZWyUa2W/oIipZlnEhIulVt4SK86j8EIKMACFGkZaa++44kFDih/u/gl8GEipdYDeWhBFiQySv+UGlh6XvjkPc0E2Zncw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MW4PR11MB5798.namprd11.prod.outlook.com (2603:10b6:303:185::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.24; Fri, 2 Feb
 2024 11:22:27 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 11:22:27 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 10/21] drm/i915/psr: Rename has_psr2 as has_sel_update
Thread-Topic: [PATCH v3 10/21] drm/i915/psr: Rename has_psr2 as has_sel_update
Thread-Index: AQHaSr/TW+meNneSukisEW6/UR6SobD2/ojw
Date: Fri, 2 Feb 2024 11:22:27 +0000
Message-ID: <PH7PR11MB598101454DE15F581884612AF9422@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-11-jouni.hogander@intel.com>
In-Reply-To: <20240119101024.1060812-11-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|MW4PR11MB5798:EE_
x-ms-office365-filtering-correlation-id: e988d483-d7eb-4ccf-36b6-08dc23e13d01
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VWdnxUbudLciDspB3Ek37PMBr3TFUdV6He+pBm0dYlgIKTC/2anZ9QRaou2o+8cuJ5RNfrBGtGN+6UI534mN6lTEkh3QiQOs4z8AD/boAXc4mkepiPshfsVFzO+6/9o5UbfwmvrmHbuJXbw0eqBlyliO7+DVckMav2K0g3k4zYTOeiyJfTrL4Wsln3+NDdMrGh60Gq4VRZ9g2nEXBWk4/zapVIG8U+xu+PU9HlBLJXpv1wqIAjsPbJg5leikhAfCv2ugbz464n1sv5CczLs1BCEA0NhyNXNCGk4NfTQ3JZfl/XcdoXoyUM0KJJt+s3gHb4p56IWZvudmTcApdSLSECQHp2XMWhq626N8z8F+tW3MxnkoqIBfPxLh5nNMsmY7UKUwtvhqlR3pfVHJJ76m6saXl/rmrywhnAenS4B+NF3JCvmLpgTwfmUZ0juE/41HJF29vPC4QXujRA1H6zm6GRFfuJBkdkVrA84MPkL9yVbfP5OlE5/g1EhdM1wMHTtfpRTq74dK/b3EuYSaIAr2NnfeNIO2mFN7147D8K0eJ6iLOGeAHYG2FH8TAEHmxCBUZsdBXlQIjFE8Xf3P5kv/4xvKrIKELg+EzGle+t0MBAHGIlpkj5duMaQa/mYvsmkq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(366004)(346002)(39860400002)(396003)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(41300700001)(33656002)(66476007)(66446008)(5660300002)(52536014)(8936002)(8676002)(76116006)(2906002)(66556008)(86362001)(110136005)(66946007)(316002)(38070700009)(64756008)(7696005)(38100700002)(82960400001)(122000001)(478600001)(9686003)(53546011)(83380400001)(6506007)(71200400001)(66574015)(55016003)(26005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cWRRM1djWkJZdE0reTArNERCQ08reVVScVFuTmhVUzF0VDRNV1cwcVFtR3Ju?=
 =?utf-8?B?TnhVd0NtbjYyd0JvZk84d1g5MWRQL2RWc0haQU05bEtkdDc3cmtiL3NpMnVZ?=
 =?utf-8?B?cFpZeWEvTnE3NmRjc0kzSU9Vb2RUNVQ0dHQ0VzRzK1ZRd1JBTkRUbFNXZi9H?=
 =?utf-8?B?NmtMOWVXbnJvTnE4MmVZMFNmNW9kUk5rcmVZdmhTTGdzcVBiejA3aklFdGpC?=
 =?utf-8?B?WkgrZDhUYTZXaXpaNXRDem05cE9OeUZVL0djK284R2k0NzVnMDJSQ0EvOFds?=
 =?utf-8?B?RzFMdmFucHk0OSsveG5zMUxKNlhxZW0yU21FZU1vSjdqQmZOSms4WW0zQnJr?=
 =?utf-8?B?a2k5MGIxbW1ONDlFMlFDbitpcWE4bkwvcUtkdDhPWlhVS284WGJ5Rk5YN09n?=
 =?utf-8?B?SFgxZkNsMDZvS1NkZi9yY0F6bTdDVjJ5by9Eb3ZiZmdTK1RDTkM5ZC9JaExp?=
 =?utf-8?B?OFFTdm9zcFFGaVhZckh5czh0Y1kvUURrSkVVSkhxbjFHcVF0eTBtN25zbWIr?=
 =?utf-8?B?ZnBuVjcrTnpiY3FXQnFYYVdXOGJOTE8zczJkVWwyQ1hiOUlQaGp4b280d0U0?=
 =?utf-8?B?S0hEWWVZWFJCdzZZUjhFSmNxdTVmeFhOakNvc3RJZjRMeGF1SHBnTXB3cnVU?=
 =?utf-8?B?emFYSWl4VnBCR3p3cjd1WHVSR1hEVm1DQUhPSStlOFRYVkRGYjBVaFVVRXh1?=
 =?utf-8?B?UGFzdnpkU0ZOMFQyNnFaVlk2c0RzUWl3Wmk4T2xKNDc1aUllV1hGWUNOdld0?=
 =?utf-8?B?K3Z1di9zSkhHZXhUOW9KUU9sZlc4VmlDdUVTUWlvWGlVemRoOFBGN1ZsQzZB?=
 =?utf-8?B?aUxlSUZFbFpwT1BpVnBtMEI2ME93TWpLUGc4T0R2WTVuUEtyNlNpbU9GNWpB?=
 =?utf-8?B?K0JkUFNQenhLTnVBRHE2ZnVPTXd5aVQrKzdmcWJuMDNtU3M0V1lSWU9sN3l2?=
 =?utf-8?B?czRCUitPN2EwZ0ZzdUU3L0NXRGtSRUJJYWgyVzIrQy9RdnNVQVNqWDQ4QjZS?=
 =?utf-8?B?L1JkMGdGL3pDbTFRVXVJbHR5SDVManZHWlNkOU54WkZpVXhsQklrRWI5Qmho?=
 =?utf-8?B?b1lWMGdObjNVeTZuR0d0Tlo1OVBjdldpTUNuV3JDbjNRdUJtRC9POVVyRGlu?=
 =?utf-8?B?VHJ3Qklkc2ZTNVlGM3hHWW1NZzZ0VXZndkJtSHJmeU1WNGZZZWZEVk1QSWVW?=
 =?utf-8?B?blE3WFhOVGFSV1dCQ24veTYxclprOEdOb2FURFgxVys1WVV3YlJLb1FRK2V3?=
 =?utf-8?B?WWRGeVkwMW1EbTV6S1FkR3RTZjBCMkUyMnc0Mk5hbldxNW80RVRYZmJ0MlhM?=
 =?utf-8?B?YzJISkxCTkF6SnZSY2Z6dU1sU2FTWkRBbnh4RmFZWkNuTFAzSjdkRDN5VVk1?=
 =?utf-8?B?MlQ3WTBaOEM0YVEzcENOTlp3cGw1SEtuSi9jcjVGbUc0b0pZbzdlQXoyeS9H?=
 =?utf-8?B?ZVRFV0w0bDVoN0xSMXBwY0lsdS9ScUZjSHNPcVJlL1ZkYTIxSHB0Z0R4b0lX?=
 =?utf-8?B?MngrRldEN3ZkUUVlMW5ZZk5hVjZJK1FBbW1qTG91VU83K3NqajZUTllrUzNZ?=
 =?utf-8?B?N016b1ZhUnUyVHg2MFBiWTl5d1U0QWd1dGlxNTcyOXdhbEhsTk4ydzNZMEdE?=
 =?utf-8?B?emkyd0xJVFNLUXEvMkp5dWlmZ0M5bGJxMVY3M1lxMEhDQXFPMkdDU0h0VzBB?=
 =?utf-8?B?UFowYVhlb1VHWEs2VGtXdVNndCtHbXRaanM1UXAzYXlJVFpKWDdicG5mNFZ4?=
 =?utf-8?B?UlFldDd2dmYrV3JLa3pjSjV4bmViaFhtMm05Vmw5NHJPM2dweDFQMkFRY2Zw?=
 =?utf-8?B?RzNOU0lDRnZNQ3hNWllWaUJ5anRKQ1l2dDg3RWJMU2VPWjZCZDhTaEFaN1lJ?=
 =?utf-8?B?UGk1eXNScFFKck9IZWJMdmdXQ3pVY3kwbGw1V2M4RXY4bGR1aytlOGRNZkVS?=
 =?utf-8?B?MTIyZFJySXJmdnNBeFpLRkV0VVRGdjFtR2lJN1MzTEFNTFZyUXV6WVRwSlNt?=
 =?utf-8?B?eGpDbGd4QzJsKytkUmduK2JaYWlKa04vT0NBMWhNcXJ5dTdtZ1NaMTllUTZk?=
 =?utf-8?B?bHBjRkRZdGVUOStmaEF3WmFON0tscEZvdTBjdGZjaVpUZTVYU3h3UE5YdG5C?=
 =?utf-8?Q?/RbMImdAVAKFP8HAiloDYYEd1?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e988d483-d7eb-4ccf-36b6-08dc23e13d01
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 11:22:27.7672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jTRAbpwLG5Kl2Dngl7K1NnF72lUrRtC0vjCLztdleflLP0KfKG1oXLaFyy9oq6AAyIOoX6IWRKT7mETnfww6pw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5798
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAxOSwg
MjAyNCAzOjQwIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDEw
LzIxXSBkcm0vaTkxNS9wc3I6IFJlbmFtZSBoYXNfcHNyMiBhcw0KPiBoYXNfc2VsX3VwZGF0ZQ0K
PiANCj4gV2UgYXJlIGdvaW5nIHRvIHJldXNlIGhhc19wc3IyIGZvciBwYW5lbF9yZXBsYXkgYXMg
d2VsbC4gUmVuYW1lIGl0IGFzDQo+IGhhc19zZWxfdXBkYXRlIHRvIGF2b2lkIGNvbmZ1c2lvbi4N
Cj4gDQo+IHYyOiBSZWJhc2UNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8
YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NydGNfc3RhdGVfZHVtcC5jIHwgIDUgKysrLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICAgICAgICAgfCAgMiArLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICB8ICAy
ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgICAg
ICAgIHwgIDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMg
ICAgICAgICAgICAgfCAgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyAgICAgICAgICAgICB8IDEwICsrKysrLS0tLS0NCj4gIDYgZmlsZXMgY2hhbmdlZCwg
MTIgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjX3N0YXRlX2R1bXAuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Y19zdGF0ZV9kdW1wLmMNCj4gaW5k
ZXggNDlmZDEwMGVjOThhLi41ZWRiYzliM2Q3NjYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Y19zdGF0ZV9kdW1wLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjX3N0YXRlX2R1bXAuYw0KPiBAQCAtMjY2
LDkgKzI2NiwxMCBAQCB2b2lkIGludGVsX2NydGNfc3RhdGVfZHVtcChjb25zdCBzdHJ1Y3QNCj4g
aW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcsDQo+ICAJCWRybV9kYmdfa21zKCZpOTE1LT5k
cm0sICJzZHAgc3BsaXQ6ICVzXG4iLA0KPiAgCQkJICAgIHN0cl9lbmFibGVkX2Rpc2FibGVkKHBp
cGVfY29uZmlnLQ0KPiA+c2RwX3NwbGl0X2VuYWJsZSkpOw0KPiANCj4gLQkJZHJtX2RiZ19rbXMo
Jmk5MTUtPmRybSwgInBzcjogJXMsIHBzcjI6ICVzLCBwYW5lbCByZXBsYXk6DQo+ICVzLCBzZWxl
Y3RpdmUgZmV0Y2g6ICVzXG4iLA0KPiArCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiArCQkJ
ICAgICJwc3I6ICVzLCBzZWxlY3RpdmUgdXBkYXRlOiAlcywgcGFuZWwgcmVwbGF5OiAlcywNCj4g
c2VsZWN0aXZlDQo+ICtmZXRjaDogJXNcbiIsDQo+ICAJCQkgICAgc3RyX2VuYWJsZWRfZGlzYWJs
ZWQocGlwZV9jb25maWctPmhhc19wc3IpLA0KPiAtCQkJICAgIHN0cl9lbmFibGVkX2Rpc2FibGVk
KHBpcGVfY29uZmlnLT5oYXNfcHNyMiksDQo+ICsJCQkgICAgc3RyX2VuYWJsZWRfZGlzYWJsZWQo
cGlwZV9jb25maWctDQo+ID5oYXNfc2VsX3VwZGF0ZSksDQo+ICAJCQkgICAgc3RyX2VuYWJsZWRf
ZGlzYWJsZWQocGlwZV9jb25maWctDQo+ID5oYXNfcGFuZWxfcmVwbGF5KSwNCj4gIAkJCSAgICBz
dHJfZW5hYmxlZF9kaXNhYmxlZChwaXBlX2NvbmZpZy0NCj4gPmVuYWJsZV9wc3IyX3NlbF9mZXRj
aCkpOw0KPiAgCX0NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gaW5kZXggYjdlNWIyNzc0ZjJlLi44YmYxYmEzMGIzZmMgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC01MjIw
LDcgKzUyMjAsNyBAQCBpbnRlbF9waXBlX2NvbmZpZ19jb21wYXJlKGNvbnN0IHN0cnVjdA0KPiBp
bnRlbF9jcnRjX3N0YXRlICpjdXJyZW50X2NvbmZpZywNCj4gIAkgKi8NCj4gIAlpZiAoY3VycmVu
dF9jb25maWctPmhhc19wYW5lbF9yZXBsYXkgfHwgcGlwZV9jb25maWctDQo+ID5oYXNfcGFuZWxf
cmVwbGF5KSB7DQo+ICAJCVBJUEVfQ09ORl9DSEVDS19CT09MKGhhc19wc3IpOw0KPiAtCQlQSVBF
X0NPTkZfQ0hFQ0tfQk9PTChoYXNfcHNyMik7DQo+ICsJCVBJUEVfQ09ORl9DSEVDS19CT09MKGhh
c19zZWxfdXBkYXRlKTsNCj4gIAkJUElQRV9DT05GX0NIRUNLX0JPT0woZW5hYmxlX3BzcjJfc2Vs
X2ZldGNoKTsNCj4gIAkJUElQRV9DT05GX0NIRUNLX0JPT0woZW5hYmxlX3BzcjJfc3VfcmVnaW9u
X2V0KTsNCj4gIAkJUElQRV9DT05GX0NIRUNLX0JPT0woaGFzX3BhbmVsX3JlcGxheSk7DQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oDQo+IGluZGV4IGFlMmU4Y2ZmOWQ2OS4uNTg5MGZlZjg2NTQ3IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBA
QCAtMTIxMSw3ICsxMjExLDcgQEAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgew0KPiANCj4gIAkv
KiBQU1IgaXMgc3VwcG9ydGVkIGJ1dCBtaWdodCBub3QgYmUgZW5hYmxlZCBkdWUgdGhlIGxhY2sg
b2YgZW5hYmxlZA0KPiBwbGFuZXMgKi8NCj4gIAlib29sIGhhc19wc3I7DQo+IC0JYm9vbCBoYXNf
cHNyMjsNCj4gKwlib29sIGhhc19zZWxfdXBkYXRlOw0KPiAgCWJvb2wgZW5hYmxlX3BzcjJfc2Vs
X2ZldGNoOw0KPiAgCWJvb2wgZW5hYmxlX3BzcjJfc3VfcmVnaW9uX2V0Ow0KPiAgCWJvb2wgcmVx
X3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+IGluZGV4IDExMTQzZmI5YjBmMC4uNGUwMTE4MjY2MmZmIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC0yNjMzLDcgKzI2
MzMsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9jb21wdXRlX3ZzY19zZHAoc3RydWN0DQo+IGlu
dGVsX2RwICppbnRlbF9kcCwNCj4gIAlpZiAoaW50ZWxfZHBfbmVlZHNfdnNjX3NkcChjcnRjX3N0
YXRlLCBjb25uX3N0YXRlKSkgew0KPiAgCQlpbnRlbF9kcF9jb21wdXRlX3ZzY19jb2xvcmltZXRy
eShjcnRjX3N0YXRlLCBjb25uX3N0YXRlLA0KPiAgCQkJCQkJIHZzYyk7DQo+IC0JfSBlbHNlIGlm
IChjcnRjX3N0YXRlLT5oYXNfcHNyMikgew0KPiArCX0gZWxzZSBpZiAoY3J0Y19zdGF0ZS0+aGFz
X3BzciAmJiBjcnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZSkgew0KPiAgCQkvKg0KPiAgCQkgKiBb
UFNSMiB3aXRob3V0IGNvbG9yaW1ldHJ5XQ0KPiAgCQkgKiBQcmVwYXJlIFZTQyBIZWFkZXIgZm9y
IFNVIGFzIHBlciBlRFAgMS40IHNwZWMsIFRhYmxlIDYtMTENCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGluZGV4IGYxN2ExYWZiNDkyOS4uNjQ3ZGQxYjU2
MDczIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4g
QEAgLTEyMzUsNyArMTIzNSw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfZmJjX2NoZWNrX3BsYW5lKHN0
cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCSAqIFJlY29tbWVuZGF0aW9u
IGlzIHRvIGtlZXAgdGhpcyBjb21iaW5hdGlvbiBkaXNhYmxlZA0KPiAgCSAqIEJzcGVjOiA1MDQy
MiBIU0Q6IDE0MDEwMjYwMDAyDQo+ICAJICovDQo+IC0JaWYgKElTX0RJU1BMQVlfVkVSKGk5MTUs
IDEyLCAxNCkgJiYgY3J0Y19zdGF0ZS0+aGFzX3BzcjIpIHsNCj4gKwlpZiAoSVNfRElTUExBWV9W
RVIoaTkxNSwgMTIsIDE0KSAmJiBjcnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZSkgew0KPiAgCQlw
bGFuZV9zdGF0ZS0+bm9fZmJjX3JlYXNvbiA9ICJQU1IyIGVuYWJsZWQiOw0KPiAgCQlyZXR1cm4g
MDsNCj4gIAl9DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiBpbmRleCAyNGE4MGY0N2I4NGYuLmUzMjhiZWY4OTE2ZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC02NTEsNyArNjUxLDcgQEAgdm9pZCBp
bnRlbF9wc3JfZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4g
IAl1OCBkcGNkX3ZhbCA9IERQX1BTUl9FTkFCTEU7DQo+IA0KPiAtCWlmIChjcnRjX3N0YXRlLT5o
YXNfcHNyMikgew0KPiArCWlmIChjcnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZSkgew0KPiAgCQkv
KiBFbmFibGUgQUxQTSBhdCBzaW5rIGZvciBwc3IyICovDQo+ICAJCWlmICghY3J0Y19zdGF0ZS0+
aGFzX3BhbmVsX3JlcGxheSkNCj4gIAkJCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1
eCwNCj4gQEAgLTE0MzMsNyArMTQzMyw3IEBAIHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmln
KHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+ICAJaWYgKCFjcnRjX3N0YXRlLT5oYXNf
cHNyKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAtCWNydGNfc3RhdGUtPmhhc19wc3IyID0gaW50ZWxf
cHNyMl9jb25maWdfdmFsaWQoaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiArCWNydGNfc3RhdGUt
Pmhhc19zZWxfdXBkYXRlID0gaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoaW50ZWxfZHAsDQo+ICtj
cnRjX3N0YXRlKTsNCj4gIH0NCj4gDQo+ICB2b2lkIGludGVsX3Bzcl9nZXRfY29uZmlnKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLCBAQCAtMTQ2Niw3DQo+ICsxNDY2LDcgQEAgdm9pZCBp
bnRlbF9wc3JfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAkJ
cGlwZV9jb25maWctPmhhc19wc3IgPSB0cnVlOw0KPiAgCX0NCj4gDQo+IC0JcGlwZV9jb25maWct
Pmhhc19wc3IyID0gaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQ7DQo+ICsJcGlwZV9jb25maWct
Pmhhc19zZWxfdXBkYXRlID0gaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQ7DQo+ICAJcGlwZV9j
b25maWctPmluZm9mcmFtZXMuZW5hYmxlIHw9DQo+IGludGVsX2hkbWlfaW5mb2ZyYW1lX2VuYWJs
ZShEUF9TRFBfVlNDKTsNCj4gDQo+ICAJaWYgKCFpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZCkN
Cj4gQEAgLTE2OTEsNyArMTY5MSw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfbG9j
a2VkKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IA0KPiAgCWRybV9XQVJOX09OKCZk
ZXZfcHJpdi0+ZHJtLCBpbnRlbF9kcC0+cHNyLmVuYWJsZWQpOw0KPiANCj4gLQlpbnRlbF9kcC0+
cHNyLnBzcjJfZW5hYmxlZCA9IGNydGNfc3RhdGUtPmhhc19wc3IyOw0KPiArCWludGVsX2RwLT5w
c3IucHNyMl9lbmFibGVkID0gY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGU7DQo+ICAJaW50ZWxf
ZHAtPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCA9IGNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBs
YXk7DQo+ICAJaW50ZWxfZHAtPnBzci5idXN5X2Zyb250YnVmZmVyX2JpdHMgPSAwOw0KPiAgCWlu
dGVsX2RwLT5wc3IucGlwZSA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKS0+
cGlwZTsNCj4gQEAgLTIzNjgsNyArMjM2OCw3IEBAIHZvaWQgaW50ZWxfcHNyX3ByZV9wbGFuZV91
cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCW5lZWRzX3Rv
X2Rpc2FibGUgfD0NCj4gaW50ZWxfY3J0Y19uZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKTsN
Cj4gIAkJbmVlZHNfdG9fZGlzYWJsZSB8PSAhbmV3X2NydGNfc3RhdGUtPmhhc19wc3I7DQo+ICAJ
CW5lZWRzX3RvX2Rpc2FibGUgfD0gIW5ld19jcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzOw0KPiAt
CQluZWVkc190b19kaXNhYmxlIHw9IG5ld19jcnRjX3N0YXRlLT5oYXNfcHNyMiAhPSBwc3ItDQo+
ID5wc3IyX2VuYWJsZWQ7DQo+ICsJCW5lZWRzX3RvX2Rpc2FibGUgfD0gbmV3X2NydGNfc3RhdGUt
Pmhhc19zZWxfdXBkYXRlICE9DQo+ICtwc3ItPnBzcjJfZW5hYmxlZDsNCj4gIAkJbmVlZHNfdG9f
ZGlzYWJsZSB8PSBESVNQTEFZX1ZFUihpOTE1KSA8IDExICYmDQo+ICAJCQluZXdfY3J0Y19zdGF0
ZS0+d21fbGV2ZWxfZGlzYWJsZWQ7DQo+IA0KPiAtLQ0KPiAyLjM0LjENCg0K
