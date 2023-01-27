Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBE767E7AB
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 15:01:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39CC810E98C;
	Fri, 27 Jan 2023 14:01:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6C1110E98C
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 14:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674828058; x=1706364058;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=LkT6eVvHVzqxJPOx24yxQlBN6CiyRvDNirjWGOrDkZg=;
 b=miTRBcGdbkD/RCT0mXpTKTdBKdWaoZpkoC/GZ5AvMT9c+v4Hh+/EiQbH
 pwmL0N43cU+mfSFOJBRQ3gjrzWo/T3eHkDppyqEOSBiYohSiEggQViLfu
 FCaeEyLTlHtSyhPxW2qi91rC+BJkmBGHL/twjlqboGp3BjIFwC+iV+//P
 HWNYdc4aQ7wC9lFeaC3XGxbHJRHXuDELUkrhwelhYwC5Cc4ykljjqqBgh
 6+Cp6IoJKo9rOYD1l2xBUqigNej2v5tklYPhCVOtSwBaxMMNcoExbEghi
 TfrlJMq6E2k+seoyfPR/Rt3zdSQeRiZqslpno76Ofv52+kmCSUQKLa5lg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="354388666"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="354388666"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 06:00:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="663270597"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="663270597"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 27 Jan 2023 06:00:19 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 06:00:19 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 06:00:19 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 06:00:19 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 06:00:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KfbQjqeyFiyELjROEngIqG5qKnhNdiUP4RGMFyduOLAc7I2CkcU+Z8iewLSa2gSN/RG6C+KZzSvT9f465khHNRqMLNEnUfezQv4wcf6RprKEJTwoGFDU0yzMdjHHu1yu1pS4+ERDLM2bzvkAz2v33A8bYC/0SX7txMjlfS2wo2DMJBwtwYwIEM0Nz5ypagiLZBoEdX4azNExhKy9MrRABRU3zNxr9TZPi8FaXzQ0UaDfNY3vuxAyygZomo5r7JDFqu+2FeC58lsH4c+aCNyv3+HE1MoF+/EQ+/HiUUdjkK9Ew4GADg9yJu0+0cEsgjFjbApfQ9nOra0z6bFOfSKNfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LkT6eVvHVzqxJPOx24yxQlBN6CiyRvDNirjWGOrDkZg=;
 b=QZzHzUorXleNaFTI/Oy9mKHIRSMYxf5kyrUnwdk54/uhHSDs5ELV46axvcfRHEEcHD/nltkKWlB6DT3m7DKPQZZ2JJkvCwWmsL2LPnD0MzD5abHf9dy1draGap+05xlSVZgvOjPtRbujzQWYJGy0IuEilytANRbK54Wu/02xAZrRVrLQcRnxsRQDyjt5gu4I/zkRfZvK957O0tqQlxGJqWQE3FqY+AyKIZkdHP7SDt25dXQFZNbt7T4eanfUJ6dWpJcSpMn2HLP6AeJsBENhpOJGoxI2GXk6Wg/U7TVtF4cjJPx4+yVac5OhV8QhXtYbOvG6OwYly4Dal+kNgbPh5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by SJ0PR11MB5645.namprd11.prod.outlook.com (2603:10b6:a03:3b9::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.25; Fri, 27 Jan
 2023 14:00:17 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::a11b:8f88:32ed:1828]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::a11b:8f88:32ed:1828%11]) with mapi id 15.20.6043.022; Fri, 27 Jan
 2023 14:00:17 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH v2] drm/i915/psr: Split sel fetch plane configuration
 into arm and noarm
Thread-Index: AQHZMik8/8QMiPkQokSykoYqKSAKm66ySwMA
Date: Fri, 27 Jan 2023 14:00:16 +0000
Message-ID: <9dc8c45ca98138c3226945cbb0440b15afa4a9d4.camel@intel.com>
References: <20230127082702.3460571-1-jouni.hogander@intel.com>
In-Reply-To: <20230127082702.3460571-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|SJ0PR11MB5645:EE_
x-ms-office365-filtering-correlation-id: 97856d92-c7d6-4b57-0062-08db006ed1d0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9RtXJkN2I2xLk8hp83Ecluc4dhH9KtH8qNsjO18C1qsqUSlGg+XONOgnHOqdIQb3jYeYhglr3W11lAG9Naxz7oglc9XBbOaE4Zgta+4E8fwDTvbfz+jA1EF628B3uZOE/H2S2pvUshUVQzAYxPeMcUVjBCiFZZsOuA8ey3wthIUUeBGJ2XoZSSL952tPB5kxlEd/bz7WJjZAM5iwCbj5leP5KP1CmMUMDryE35Q9JLOFknnS0fYjLVTxxpcuIL4iGYUVBgBPA+P5dOHaLEsx9WoNh707wAQ3c+7/Qh4TAbIBNaf8wPrKRdRSiwxbCLWbqx/6F2ECejsNFme40PlvC2dZD2NNtg6DN8W4wgBImKLUQBg7ZxkPxkMB8JrfAx9U03odM7fZhEILdQFbRqYs8NkB1ULEwKujp3zyWwY6MFzn8nw0jOdUobSp/VY2V3hnO27tsfkBDRzUcbAa5sKCXo8ppGDSD51QZTliOlY+aV5WD2RNR4a/WxogiHqL4cVMzbBUjFTXI7i34eIjR1xkiDA9IeVpe9lVfHwjF6gTAaSO5DsVJRl33Dyr8Gk0GRMAla95y8D0H69NewoNdVk3zJtsps1SZKHH3bbFOTEAkQVg3DF8JkVXnTdQHVvK+piTfCGUU4lTbbu6xjaMRE4yKc2pwJMY+pJE4meWV7Iqu+tY6Td39ZBA0ldDSqJ2ZZuCOEEotFm41u6ByQP+Qswqew==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(136003)(39860400002)(396003)(376002)(451199018)(6512007)(186003)(26005)(6506007)(2616005)(6486002)(71200400001)(316002)(54906003)(6636002)(110136005)(66574015)(2906002)(41300700001)(4326008)(8676002)(76116006)(83380400001)(64756008)(66446008)(91956017)(66476007)(66556008)(66946007)(478600001)(5660300002)(8936002)(36756003)(38070700005)(82960400001)(122000001)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QmRxVEtCaFArcjFabmZuaGI3aStZZHlJYzQ2NlNtWll0c3BPMlFXb3BnYlZi?=
 =?utf-8?B?NDM1MW1lSFFYZ1VvbDNEVDJVSVZnOW5Ka1BHUE9BY1RXV1dhNUZtT3pVUlc1?=
 =?utf-8?B?NXpCM3lvSmNGOEc2bG82UlpnNXI4bno1TkRmcE05MnVQWFlvQ2VOcW1KUHV1?=
 =?utf-8?B?ZVA4dGh1NG5GNVFsYWtqTzFZRUx4cW5tdE5CTzVTQTJlV3h0NGRkMmsrUXI0?=
 =?utf-8?B?RGZ2UHQreml3MExNVzBHUXNUQXNVUHFRY2lzN0xYSHpSWlI0SUxnZkR0UGdC?=
 =?utf-8?B?UEVrdCtpaVAzcUg0cXkwVnZHZXFHY0lNSElnU1ZleW81R21PSnlvellCZER0?=
 =?utf-8?B?ZzIvSjdERFRtM0Y0R2Y0eTNhajA2WXZYQk40SGtaQ2RNeTZXOTRDQWI1VFNu?=
 =?utf-8?B?WnAxaDRwK3dxbllmWXUvaWFqbGFHVm5UcW1sVml4RENLN0pKMHhTbTY5Rmw2?=
 =?utf-8?B?RWcyRVoxR3MwTWNVakF6L2JBaWQveUR5SVM3b05uVlFNNGxzSlFWUS95NVBk?=
 =?utf-8?B?UjRYeEIxakVoV3dBSVJaeEwxM0N0ODNWWFYwZFdWdHRxbWk5MGovNnZNQTNI?=
 =?utf-8?B?WXJSK2dkenRLMm1lazNpdG1MaU9yWjBRT1loREZvYjVsT1lvNVYxOWZ2SGVu?=
 =?utf-8?B?a1BJU1BKbkJTNUF4ekJ6Zm1DOC9IMXdQdU1EbTZaWVEwMmNNcWY5NUFqWllK?=
 =?utf-8?B?Sks4cFpNbWhncnFiQW1iWHdPa3duWUZMTG40ektQdkdLU1FTYzJmUnJXN21s?=
 =?utf-8?B?cUdEdEZwYVVhWHZraWpzeHlWZnp2Y0FUN3Z2dWhOYUlrRFdPRDRLSms2WVFF?=
 =?utf-8?B?WVNiMXV0VmRRSGRSZW53NGtvcHQ0dkFRNitoVkJZRFZzNE93NXhRKy9xaFMx?=
 =?utf-8?B?Q1U2SjJtNVQ3UVdXWkJaR3lFb0QvckRsOFhYRzNsTjRGaFV2MGRKM1FPRy90?=
 =?utf-8?B?VEtlbzJjc3Z0eWdCNUVobTR6TXkyUWptVGxVZFhHdlFaRk5Kc0JaUHhPejVM?=
 =?utf-8?B?RTZjRHNzVlJnWnFBMHU0T2dEcXIwSXMzczJKaUp2OWZNZzgwWU50a3JLYndB?=
 =?utf-8?B?bHlWZkpmaHUzK0RJTzdCaHRacUlZOVNkYmR5VVBhcEpYNHdDMHhqeittdS83?=
 =?utf-8?B?bDF2ZEhpMTdvK0hTYjNvdnhhSmNxZlloSUI2NzU2ejdiSW1JdUV4RC8vQjFm?=
 =?utf-8?B?RmNHMk9GTkVkL280TWdtQ3FtbWJ4dGtqMjBPQm0rR0haUFB2NGNXQUUrODVi?=
 =?utf-8?B?NXVBS3gvT1NDZUk1R0ZoNUh6OUNWdERKK3A2dHFJMlFCQmZlNWc1RjdDMXcx?=
 =?utf-8?B?N0pBYURMNkhUV1BwejJGV0l5Wk1ldUZ0K0ZVaVVDWWRoZDlBWjludGJMRUti?=
 =?utf-8?B?S0JkNkx5dkZnSHU4SUgxNkJlRGtBOW9VaThPY1FLRFVDSG1IT0UyZmhsU1Nq?=
 =?utf-8?B?bWZSY053RW5oMXBkMExwTjQwOGJIa2pVVUpFeFNGMk9lVjF4bWMxMUpIVXk3?=
 =?utf-8?B?NnozQWUySGc1Z2lPWk9xWEZaZHRpUTl5Zm1qamw4RXdHT0ZxOUkrbjBQY3NV?=
 =?utf-8?B?VmhXUFhoMGgxUEFNUGVTc1BBU2tpYXdJZXpVdEJ0QytIVHNvKy9wYkM4TSs2?=
 =?utf-8?B?UXlyejcwTkRCSE1QdStFamt5SHorV1QyejBNaFJsZTRVeDNRbVdIdnZRM2E2?=
 =?utf-8?B?YW91NVR4eDM2Y0hBc3I2MGNSZTJoMmtoSlZ4VGZDU2lSTjJGanRDYU9NcDF5?=
 =?utf-8?B?dEVwcldpTEpqRjlNamR1VXByMnhXbVNFb2lKdnp3L2RBcVhuaVZHbDkzbmxs?=
 =?utf-8?B?ZnVhV2hmdEZ0ajViSng3K0NMcmJFZkswWXduTlRoQUxtR3FQcDlNeThpby9z?=
 =?utf-8?B?TTZBeSsyTUpCWGhuVTRTdm0yYjdkMTZWbWEyT25ZNEVGeHJyS09TbmRDNTli?=
 =?utf-8?B?Q0hkRjF3ZGtPUVV1OHlVUy8xS25VZUlyemRHYi9yckxVMXgvU280QlBXbG1s?=
 =?utf-8?B?Tnh3RDJRdUJFWjdPZDBEL0dZSC8yek5JaWlIbktuZDNyTmVTbDV5MFdsc09k?=
 =?utf-8?B?UjVIUGF3M284R2I0emxkUURESXRxWGlzY3pVYlZVWDM4WFVZbG0rdXBSRUhD?=
 =?utf-8?B?OEVrUXVJQlYrZ0RxNXIrT1Zub1AxaDAvanYrL21rRHMxVzlEREU3U3pjWnV1?=
 =?utf-8?B?WGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FD87FE99E5631E48AB478060BCB95B44@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97856d92-c7d6-4b57-0062-08db006ed1d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2023 14:00:16.9060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pfr6iby+VPLs9B/6orpNXFSWNMJdDC+hKZqNct7XjERCrZDwU0nYPQagClR9imqqGVfrgY2vjAfxAGFrNGZOdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5645
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/psr: Split sel fetch plane
 configuration into arm and noarm
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
Cc: "Coelho, Luciano" <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTAxLTI3IGF0IDEwOjI3ICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IFNFTF9GRVRDSF9DVEwgcmVnaXN0ZXJzIGFyZSBhcm1lZCBpbW1lZGlhdGVseSB3aGVuIHBs
YW5lIGlzIGRpc2FibGVkLg0KPiBTRUxfRkVUQ0hfKiBpbnN0YW5jZXMgb2YgcGxhbmUgY29uZmln
dXJhdGlvbiBhcmUgdXNlZCB3aGVuIGRvaW5nDQo+IHNlbGVjdGl2ZSB1cGRhdGUgYW5kIG5vcm1h
bCBwbGFuZSByZWdpc3RlciBpbnN0YW5jZXMgZm9yIGZ1bGwgdXBkYXRlcy4NCj4gQ3VycmVudGx5
IGFsbCBTRUxfRkVUQ0hfKiByZWdpc3RlcnMgYXJlIHdyaXR0ZW4gYXMgYSBwYXJ0IG9mIG5vYXJt
DQo+IHBsYW5lIGNvbmZpZ3VyYXRpb24uIElmIG5vYXJtIGFuZCBhcm0gcGxhbmUgY29uZmlndXJh
dGlvbiBhcmUgbm90DQo+IGhhcHBlbmluZyB3aXRoaW4gc2FtZSB2Ymxhbmsgd2UgbWF5IGVuZCB1
cCBoYXZpbmcgcGxhbmUgYXMgYSBwYXJ0IG9mDQo+IHNlbGVjdGl2ZSB1cGRhdGUgYmVmb3JlIGl0
J3MgUExBTkVfU1VSRiByZWdpc3RlciBpcyB3cml0dGVuLg0KPiANCj4gRml4IHRoaXMgYnkgc3Bs
aXR0aW5nIHBsYW5lIHNlbGVjdGl2ZSBmZXRjaCBjb25maWd1cmF0aW9uIGludG8gYXJtIGFuZA0K
PiBub2FybSB2ZXJzaW9ucyBhbmQgY2FsbCB0aGVtIGFjY29yZGluZ2x5LiBXcml0ZSBTRUxfRkVU
Q0hfQ1RMIGluIGFybQ0KPiB2ZXJzaW9uLg0KDQpEb2VzIHRoaXMgaGVscHMgdG8gcmV2ZXJ0IHRo
ZSBzZXQgb2YgU0ZGIGFuZCBDRkYgYXQgdGhlIHNhbWUgdGltZT8NCg0KPiANCj4gdjI6DQo+ICAt
IGRyb3AgY29sb3JfcGxhbmUgcGFyYW1ldGVyIGZyb20gYXJtIHBhcnQNCj4gIC0gZGV2X3ByaXYg
LT4gaTkxNSBpbiBhcm0gcGFydA0KPiANCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCj4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5j
b20+DQo+IENjOiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVs
LmNvbT4NCj4gQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50
ZWwuY29tPg0KPiBDYzogTHVjYSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNvbT4NCj4g
U2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYyAg
IHwgIDMgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgICAg
ICB8IDI4ICsrKysrKysrKysrKystLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmggICAgICB8ICA2ICsrKy0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L3Nr
bF91bml2ZXJzYWxfcGxhbmUuYyAgICB8ICA0ICsrLQ0KPiAgNCBmaWxlcyBjaGFuZ2VkLCAzMCBp
bnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiBpbmRleCBkMTkwZmEwZDM5M2IuLmFlOWYwYjZj
OTJkYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
dXJzb3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNv
ci5jDQo+IEBAIC01MzIsNyArNTMyLDggQEAgc3RhdGljIHZvaWQgaTl4eF9jdXJzb3JfdXBkYXRl
X2FybShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAgCQlza2xfd3JpdGVfY3Vyc29yX3dt
KHBsYW5lLCBjcnRjX3N0YXRlKTsNCj4gIA0KPiAgCWlmIChwbGFuZV9zdGF0ZSkNCj4gLQkJaW50
ZWxfcHNyMl9wcm9ncmFtX3BsYW5lX3NlbF9mZXRjaChwbGFuZSwgY3J0Y19zdGF0ZSwgcGxhbmVf
c3RhdGUsIDApOw0KPiArCQlpbnRlbF9wc3IyX3Byb2dyYW1fcGxhbmVfc2VsX2ZldGNoX2FybShw
bGFuZSwgY3J0Y19zdGF0ZSwNCj4gKwkJCQkJCSAgICAgICBwbGFuZV9zdGF0ZSk7DQo+ICAJZWxz
ZQ0KPiAgCQlpbnRlbF9wc3IyX2Rpc2FibGVfcGxhbmVfc2VsX2ZldGNoKHBsYW5lLCBjcnRjX3N0
YXRlKTsNCg0KTWlzc2luZyByZW5hbWUgaW50ZWxfcHNyMl9kaXNhYmxlX3BsYW5lX3NlbF9mZXRj
aCgpIHRvIGludGVsX3BzcjJfZGlzYWJsZV9wbGFuZV9zZWxfZmV0Y2hfYXJtKCkuDQoNCldpdGgg
dGhpcyBMR1RNLg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPg0KDQoNCj4gIA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gaW5kZXggN2E3MmUxNWU2ODM2Li5hM2Y0NDUxZWI2NmQgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMTU1OSw3ICsxNTU5
LDI1IEBAIHZvaWQgaW50ZWxfcHNyMl9kaXNhYmxlX3BsYW5lX3NlbF9mZXRjaChzdHJ1Y3QgaW50
ZWxfcGxhbmUgKnBsYW5lLA0KPiAgCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9T
RUxfRkVUQ0hfQ1RMKHBpcGUsIHBsYW5lLT5pZCksIDApOw0KPiAgfQ0KPiAgDQo+IC12b2lkIGlu
dGVsX3BzcjJfcHJvZ3JhbV9wbGFuZV9zZWxfZmV0Y2goc3RydWN0IGludGVsX3BsYW5lICpwbGFu
ZSwNCj4gK3ZvaWQgaW50ZWxfcHNyMl9wcm9ncmFtX3BsYW5lX3NlbF9mZXRjaF9hcm0oc3RydWN0
IGludGVsX3BsYW5lICpwbGFuZSwNCj4gKwkJCQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUsDQo+ICsJCQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAq
cGxhbmVfc3RhdGUpDQo+ICt7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KHBsYW5lLT5iYXNlLmRldik7DQo+ICsJZW51bSBwaXBlIHBpcGUgPSBwbGFuZS0+cGlw
ZTsNCj4gKw0KPiArCWlmICghY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc2VsX2ZldGNoKQ0KPiAr
CQlyZXR1cm47DQo+ICsNCj4gKwlpZiAocGxhbmUtPmlkID09IFBMQU5FX0NVUlNPUikNCj4gKwkJ
aW50ZWxfZGVfd3JpdGVfZncoaTkxNSwgUExBTkVfU0VMX0ZFVENIX0NUTChwaXBlLCBwbGFuZS0+
aWQpLA0KPiArCQkJCSAgcGxhbmVfc3RhdGUtPmN0bCk7DQo+ICsJZWxzZQ0KPiArCQlpbnRlbF9k
ZV93cml0ZV9mdyhpOTE1LCBQTEFORV9TRUxfRkVUQ0hfQ1RMKHBpcGUsIHBsYW5lLT5pZCksDQo+
ICsJCQkJICBQTEFORV9TRUxfRkVUQ0hfQ1RMX0VOQUJMRSk7DQo+ICt9DQo+ICsNCj4gK3ZvaWQg
aW50ZWxfcHNyMl9wcm9ncmFtX3BsYW5lX3NlbF9mZXRjaF9ub2FybShzdHJ1Y3QgaW50ZWxfcGxh
bmUgKnBsYW5lLA0KPiAgCQkJCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwNCj4gIAkJCQkJY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0
ZSwNCj4gIAkJCQkJaW50IGNvbG9yX3BsYW5lKQ0KPiBAQCAtMTU3MywxMSArMTU5MSw4IEBAIHZv
aWQgaW50ZWxfcHNyMl9wcm9ncmFtX3BsYW5lX3NlbF9mZXRjaChzdHJ1Y3QgaW50ZWxfcGxhbmUg
KnBsYW5lLA0KPiAgCWlmICghY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc2VsX2ZldGNoKQ0KPiAg
CQlyZXR1cm47DQo+ICANCj4gLQlpZiAocGxhbmUtPmlkID09IFBMQU5FX0NVUlNPUikgew0KPiAt
CQlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfU0VMX0ZFVENIX0NUTChwaXBlLCBw
bGFuZS0+aWQpLA0KPiAtCQkJCSAgcGxhbmVfc3RhdGUtPmN0bCk7DQo+ICsJaWYgKHBsYW5lLT5p
ZCA9PSBQTEFORV9DVVJTT1IpDQo+ICAJCXJldHVybjsNCj4gLQl9DQo+ICANCj4gIAljbGlwID0g
JnBsYW5lX3N0YXRlLT5wc3IyX3NlbF9mZXRjaF9hcmVhOw0KPiAgDQo+IEBAIC0xNjA1LDkgKzE2
MjAsNiBAQCB2b2lkIGludGVsX3BzcjJfcHJvZ3JhbV9wbGFuZV9zZWxfZmV0Y2goc3RydWN0IGlu
dGVsX3BsYW5lICpwbGFuZSwNCj4gIAl2YWwgPSAoZHJtX3JlY3RfaGVpZ2h0KGNsaXApIC0gMSkg
PDwgMTY7DQo+ICAJdmFsIHw9IChkcm1fcmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPnVhcGkuc3Jj
KSA+PiAxNikgLSAxOw0KPiAgCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9TRUxf
RkVUQ0hfU0laRShwaXBlLCBwbGFuZS0+aWQpLCB2YWwpOw0KPiAtDQo+IC0JaW50ZWxfZGVfd3Jp
dGVfZncoZGV2X3ByaXYsIFBMQU5FX1NFTF9GRVRDSF9DVEwocGlwZSwgcGxhbmUtPmlkKSwNCj4g
LQkJCSAgUExBTkVfU0VMX0ZFVENIX0NUTF9FTkFCTEUpOw0KPiAgfQ0KPiAgDQo+ICB2b2lkIGlu
dGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5oDQo+IGluZGV4IDJhYzNhNDZjY2NjNS4uYzg3YWUyZTZlZTZjIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gQEAgLTQ2LDEwICs0NiwxNCBA
QCBib29sIGludGVsX3Bzcl9lbmFibGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiAg
aW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwNCj4gIAkJCQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+ICB2b2lkIGludGVs
X3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSk7DQo+IC12b2lkIGludGVsX3BzcjJfcHJvZ3JhbV9wbGFuZV9zZWxf
ZmV0Y2goc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gK3ZvaWQgaW50ZWxfcHNyMl9wcm9n
cmFtX3BsYW5lX3NlbF9mZXRjaF9ub2FybShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAg
CQkJCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIAkJCQkJ
Y29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwNCj4gIAkJCQkJaW50
IGNvbG9yX3BsYW5lKTsNCj4gK3ZvaWQgaW50ZWxfcHNyMl9wcm9ncmFtX3BsYW5lX3NlbF9mZXRj
aF9hcm0oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gKwkJCQkJY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICsJCQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9w
bGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpOw0KPiArDQo+ICB2b2lkIGludGVsX3BzcjJfZGlzYWJs
ZV9wbGFuZV9zZWxfZmV0Y2goc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gIAkJCQkJY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiAgdm9pZCBpbnRlbF9w
c3JfcGF1c2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+IGluZGV4IDliMTcy
YTFlOTBkZS4uMjk2ZGE0YmMyOTdjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiBAQCAtMTI2MCw3ICsxMjYwLDcg
QEAgaWNsX3BsYW5lX3VwZGF0ZV9ub2FybShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAg
CWlmIChwbGFuZV9zdGF0ZS0+Zm9yY2VfYmxhY2spDQo+ICAJCWljbF9wbGFuZV9jc2NfbG9hZF9i
bGFjayhwbGFuZSk7DQo+ICANCj4gLQlpbnRlbF9wc3IyX3Byb2dyYW1fcGxhbmVfc2VsX2ZldGNo
KHBsYW5lLCBjcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSwgY29sb3JfcGxhbmUpOw0KPiArCWludGVs
X3BzcjJfcHJvZ3JhbV9wbGFuZV9zZWxfZmV0Y2hfbm9hcm0ocGxhbmUsIGNydGNfc3RhdGUsIHBs
YW5lX3N0YXRlLCBjb2xvcl9wbGFuZSk7DQo+ICB9DQo+ICANCj4gIHN0YXRpYyB2b2lkDQo+IEBA
IC0xMjg3LDYgKzEyODcsOCBAQCBpY2xfcGxhbmVfdXBkYXRlX2FybShzdHJ1Y3QgaW50ZWxfcGxh
bmUgKnBsYW5lLA0KPiAgCWlmIChwbGFuZV9zdGF0ZS0+c2NhbGVyX2lkID49IDApDQo+ICAJCXNr
bF9wcm9ncmFtX3BsYW5lX3NjYWxlcihwbGFuZSwgY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUpOw0K
PiAgDQo+ICsJaW50ZWxfcHNyMl9wcm9ncmFtX3BsYW5lX3NlbF9mZXRjaF9hcm0ocGxhbmUsIGNy
dGNfc3RhdGUsIHBsYW5lX3N0YXRlKTsNCj4gKw0KPiAgCS8qDQo+ICAJICogVGhlIGNvbnRyb2wg
cmVnaXN0ZXIgc2VsZi1hcm1zIGlmIHRoZSBwbGFuZSB3YXMgcHJldmlvdXNseQ0KPiAgCSAqIGRp
c2FibGVkLiBUcnkgdG8gbWFrZSB0aGUgcGxhbmUgZW5hYmxlIGF0b21pYyBieSB3cml0aW5nDQoN
Cg==
