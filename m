Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 257947BD2B8
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 07:11:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B718A10E0A9;
	Mon,  9 Oct 2023 05:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 637C510E0A9
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 05:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696828256; x=1728364256;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kDZAH0lte3nVD98Lo1kxI48lKxjK7rWkoJgkRvVDTWY=;
 b=VEGG0KbL7CK3aegazLao/7wchocUTrr1jz0VSIE7z/KsWtIES7NF8xk6
 e7ZpWdajIo+HtvoYfJ/vbO+6kn8IgJHXtdgksVNvw9+ZADxcoYN/Drt5Z
 A3TdeKmE7yy8KJsICNCV8GECEb5ItG5Ttd48SVDMyPo+LvO59BfBOyX6S
 x23KrQkQ+2s02863eW+UYub98IH3hz5SGAE8x/hs3zMnz2rOoxSJ1pwrq
 lSrNNel7Iv0NT5pvr9mpEmzagQRl+/kBL0pdqVwxGfDnaAHpZuO4hClfM
 4jC5/X2g8HoNqSLsWbnBjzK9/XB9vLsScElq8XrC8bJVsvgEXmCvuf9RB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="383948327"
X-IronPort-AV: E=Sophos;i="6.03,209,1694761200"; d="scan'208";a="383948327"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2023 22:10:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="702765506"
X-IronPort-AV: E=Sophos;i="6.03,209,1694761200"; d="scan'208";a="702765506"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2023 22:10:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 8 Oct 2023 22:10:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 8 Oct 2023 22:10:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 8 Oct 2023 22:10:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 8 Oct 2023 22:10:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oAtdU/gJFQKMUI0/XuB5N9La/6E+RWlh0cLp+B29PEUzCgZxou/IYbhNzN9Bhq763DA5qFzVvvdGOtJLus0RTGU1YPGrK9hjQrqpmnS2jK+e0JUfpmactWVyc3fptSUgCEVt5kzgqOEcP39d80PoL45ta7AcXMMkX3UMdHgSuhxHsAmKP3jOtWjk4Kfh+eoRLAIxlMwOvGIhGlLrltClNLuIyYE/2umvbtD4xgkrt2eSwYe9fV7wOhk1xbPn61JdMO/wXzF+PNoc5ovzeOvovcAIinzjVw2mDw/y0uKOhdpl1XmIcCXezRf20/TYz7QPVham8tAYDAKFEt/bxmlVQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kDZAH0lte3nVD98Lo1kxI48lKxjK7rWkoJgkRvVDTWY=;
 b=d9Yub1Y+HClENjgZ0nq3VGTU3ShI9OTGyj0m3RYTKnmOwtegd4NA2OVQmkt6+a37NOcH4XMyXGUtQomklQOfwL9WIsJ39cz9/kyj9UDX8KA1pTRkiuCsb++6Y4vLTw0JsixTbW/tyo1Sr2DxUOKKDNx0KEOHz26+Z57Hjl1f6HiiirejZ8+OVA7xty0pY1UGwfmSkQ22yL/pDell03u1CWeMxc3NOhkgVIizm8gBKzqGypYsqspjxVp3UP8cSW8cWwHGzo2ahUTSEwqr1KgotUbhu3PrF/H7IzwiZRlUyxiONP43WyweSxSdMEwDRX9KNuSjCmHSIgYCFjzU7Fz2Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA2PR11MB5162.namprd11.prod.outlook.com (2603:10b6:806:114::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.41; Mon, 9 Oct
 2023 05:10:52 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5%7]) with mapi id 15.20.6838.040; Mon, 9 Oct 2023
 05:10:52 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>
Thread-Topic: Regression in linux-next
Thread-Index: Adn3o7Bh7SaOGGjsReCgQdslYEN8VAA8EQeAAHaxKSA=
Date: Mon, 9 Oct 2023 05:10:51 +0000
Message-ID: <SJ1PR11MB6129C8B2AFEDD2399227698DB9CEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <27bf7758-61e0-2587-1800-5aa4be42fffe@intel.com>
In-Reply-To: <27bf7758-61e0-2587-1800-5aa4be42fffe@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA2PR11MB5162:EE_
x-ms-office365-filtering-correlation-id: b30943e7-5eed-461f-5fb3-08dbc8861bb4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: szOHDcwNVOM0DhmqSsPmrxDrjrq7JV/RWWjmkjZsXeb3mfXe774WqT+Ox4eMcieKiQayShNjPIfIb8pL6oVL9/BNiUlCPgR6uVyt+tXZ5pZafsHwJNpxPYl/G1bs1cYAzF4BYWo+whvEz2HssM+iWGJNx/E8rKNznv4XAZUgUgcsRjkT/fhu3mundiGCspLjQhY+tnYG6iXtqX8eaPFFnu10bwWCQgp+rlkJZBx7e8VW0JgqrbghpHKpqNsAdP/qsG84s9UrFcDUFq+ia2qVI8gl6EXaTenx6IuhSXOzsd2GD6dWLztUjQsdlWcbWZW6NmcLEmuwdg35C+E9032T09pgIuajyOs/5lJxTRKIYashVKgrduumgWgAkgaFq10OAwzp3y1YRFQ8WDU38O5c7BDf3AHnZsk4FyQAKyzuOzCl2KGtMyHRkU5lMm9TtYE/nKHU3IWFdqvfeFCA+rZmxNaPv5jOUY+vnry/1+xQwohX4BHdO9cyuX1P38hKPo2jDAjBDtFDHM+O2/A8LaZ5tqNMrWY1uekmvKi7+npja7KutC/jDJUrupxCeoPNeubxrvuSDpV8jGRtk9qOuQf8dCPbPMVW/ksxZmCONj5jrI6+rimAfqccxYU/58oZtR+w
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(136003)(396003)(366004)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(5660300002)(8936002)(9686003)(2906002)(7696005)(6506007)(41300700001)(53546011)(54906003)(6636002)(64756008)(66556008)(66446008)(76116006)(66946007)(66476007)(82960400001)(4326008)(45080400002)(8676002)(6862004)(478600001)(966005)(86362001)(71200400001)(26005)(52536014)(38070700005)(33656002)(55016003)(122000001)(83380400001)(107886003)(316002)(38100700002)(3480700007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SGhFTUtKdVB5djlqNjZTR25sSGpBZE85VFdNSm9GeGtuMHk4Z1hWMld4UGFY?=
 =?utf-8?B?aTJBcGRKQ01UOHJSYW03UzhFaGlKdE1udi9oUGVYY0lJcEZFU2xsM01aekoz?=
 =?utf-8?B?dG05Y2RKNEFiK01yYjhhNmhqVlJNR3E4ZTZZa1dwRXc2UzNheUlvRDRZRmxV?=
 =?utf-8?B?VGpqN3hpSTkwZGpBczR2Ulg5eDJzVytkN2kyc3FPc0tFalJKaVFTdlRuWjc2?=
 =?utf-8?B?L0ZKME05SngzSzR1anhqN2lsT2tQbTlvVlNBVW8zS2xpOFdjbmJQSDFJNm52?=
 =?utf-8?B?ZEx6cGEvM2pqUE9RazV2eFZCbS8yZjRYMkZIU2lWSkVUckRGNDZZckhxbzZn?=
 =?utf-8?B?OUhSalVyY29UZm5XRjhZTXFLUjExcFNMSGlra0lYR1JRQ2NOK2IzSFZjWnNn?=
 =?utf-8?B?NmtxY2tTcG5vbDJqUWxvdHJLUnFtc2NrVFNkWnF6Y1JZb3NFWWU4ekNsU2Zr?=
 =?utf-8?B?dTlpMHY1aXhXKzFMV3F0N1pvc3hSM1JSWEpoL2o1dHhDazJUYWVuVTUrajZz?=
 =?utf-8?B?VmY4bmR4bm96bGtuY1Y4MVlGVk54cG14dFJkVWw3bHArQXQxdXNVT0ZUTjJs?=
 =?utf-8?B?ZkZscHFURzFNRWJyNXVwMGdTYTJaYVJNVkxLYmlQaUh2WXhBSXpkMExiU0p5?=
 =?utf-8?B?UGJIYktqdjZFbmxyanVqZWQ2WWMvSHlCL01vZDVWYXNrQmU3YStOWWFHencz?=
 =?utf-8?B?UW05MlMyeEZDT0crNGdXQ3Ywdi9maHl4OGU1d3cwWGo4REd6TGgrNGxkOU5u?=
 =?utf-8?B?WVlNWGtRQThlNFg4OG9ZdEFObFRPWS82aERJcy9XNFdNcnlsZ2VEbldyMHBn?=
 =?utf-8?B?T2REandUZENSYm5RajRwdU9seHp4YlJ3TVM5V3ArRWN5TW55dmpZNXV2cHZS?=
 =?utf-8?B?ZGRmSG1ZK2FoVU1JNGZTdHJUT0JkSlBjM1JrTytLWk5nZTJsdSs3dzgxZy91?=
 =?utf-8?B?OHRIT3lUYklhSmNCRnByeTJ0OG9YUHZjT0owTjhTT3l1UHFzbmtpMTZZblFm?=
 =?utf-8?B?WTFqVFVvMVhwZHovdUJGeDdoT01jTkpTY1hVb0trOUc4c3RQeXdiVFdnUlNr?=
 =?utf-8?B?c2ZDUFl2VHphZFJSbUxCZVJoSWdUc1huL3pTdjZ5ZGRqZUkwS0FiRmFVK0VX?=
 =?utf-8?B?dENDK09Ya1FmcjRnckRuRHcwL0E0MVdKbUNRRGc3b053VG1HYXlHYUVRQVFh?=
 =?utf-8?B?alhQUU5OOVo2THNxUExNdTFweWplaVVGdkN2alJkdHZSSnFFSGVJQ3ZOellw?=
 =?utf-8?B?dUJEWHhFR2tNeEpZdStGUEY2T0g4K0lQakpOUDFKbHZ6VHhLMmJmdmZIbUYy?=
 =?utf-8?B?amFEV0o2VFRud3BpbVlyTXVmcWNYamFMS1p0SHhKaS9HRnpJdlIzRmQ5R1Fy?=
 =?utf-8?B?NHJFdGkrcnJGK0hZWEk4TEJiNU5GbE9maE9pMndUbnNQdmwrV0JJYkdJYnVm?=
 =?utf-8?B?RTZ2WVFPK1l5eDhSamVsaHNEMUlDMUlDSUlSa1RWUHRLNlZqaG5YQ0VUV2RX?=
 =?utf-8?B?L3Z5QzRUVDRCM2d1aFNtZEhEaXpqclVVaDYyNDFJQjdxdVdENGRsK0hXL0cv?=
 =?utf-8?B?WGhZTFhuZU9oTnN3Z0ZXRHpFQ1JmWFVoTDRtY1c0VVlubVQrOUdlNWJtWmJP?=
 =?utf-8?B?WXZHMTI1VGtBYTQvdEdQejJXSkJ5UGxQcDlQWW93R0VQSnl5c0JHYStYMFdo?=
 =?utf-8?B?eXNSY3Z3TzJnNG0ya3NQN2RINURHNFVBL2ZmUzJZZlprQzd2ZDJYVk5ORXND?=
 =?utf-8?B?dXZKSWd2V1did3JPOWg4N1NMcmQzUU5xN0FZaGFDWVpIYzdZYmZzV0JGZ3F2?=
 =?utf-8?B?bkhOczRWWEpuVlVQU0RyamRyOUdCeW0yMUpDM08wbUFJVXR5SmM0aE5qYXlQ?=
 =?utf-8?B?OHNQZk5qb3VoNUx0R0J0YmFyeHhWdkgwWGlSdW5pNU53R0tSMkhjbDY4eTYx?=
 =?utf-8?B?T0prY0ZrMDhoek5iNDkzcUhETnNWTHRscmhCallvQ0o0Y1k3c2tNcVYwZnUz?=
 =?utf-8?B?WFcvYm9ySG16aGpqdFVWdmthWm9sOGZNMW8rckU2MFVmMnJPT1F1RTFNTFpy?=
 =?utf-8?B?bk0wWmhZOUVaRzBWZG5LMzFxYzkrN0kyY3YxRkUwbkxucHduMit3VExKV0U1?=
 =?utf-8?B?WGlURE1xclF4QTZ3cGFTMldkTUFvc0g5anNSMUtyV0hjb1NPQnY3TzRacjNo?=
 =?utf-8?B?a2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b30943e7-5eed-461f-5fb3-08dbc8861bb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2023 05:10:51.9032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: opEGWuErUEEJ87HiuOq9E+69+B8cLzZ135MN2xtJ0rQzinK1e/3Lam3wknwF7pp2NFtxRT0H8Xv4bGWMSOUoqEYeO17NyvuNAZs9JLj1d6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5162
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Regression in linux-next
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGVsbG8gUmFmYWVsDQoNCj5UaGFua3MgZm9yIHRoZSByZXBvcnQsIEkgdGhpbmsgdGhhdCB0aGlz
IGlzIGEgbG9ja2RlcCBhc3NlcnRpb24gZmFpbGluZy4NCj5JZiB0aGF0IGlzIGNvcnJlY3QsIGl0
IHNob3VsZCBiZSBzdHJhaWdodGZvcndhcmQgdG8gZml4Lg0KPkknbGwgdGFrZSBjYXJlIG9mIHRo
aXMgZWFybHkgbmV4dCB3ZWVrLg0KPlRoYW5rcyENCg0KVGhhbmsgeW91IGZvciB5b3VyIHJlc3Bv
bnNlLiAgUGxlYXNlIGxldCB1cyBrbm93IHdoZW4gYSBmaXggaXMgYXZhaWxhYmxlLg0KDQpSZWdh
cmRzDQoNCkNoYWl0YW55YQ0KDQpGcm9tOiBXeXNvY2tpLCBSYWZhZWwgSiA8cmFmYWVsLmoud3lz
b2NraUBpbnRlbC5jb20+IA0KU2VudDogU2F0dXJkYXksIE9jdG9iZXIgNywgMjAyMyAyOjAxIEFN
DQpUbzogQm9yYWgsIENoYWl0YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVs
LmNvbT4NCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBLdXJtaSwgU3VyZXNo
IEt1bWFyIDxzdXJlc2gua3VtYXIua3VybWlAaW50ZWwuY29tPjsgU2FhcmluZW4sIEphbmkgPGph
bmkuc2FhcmluZW5AaW50ZWwuY29tPg0KU3ViamVjdDogUmU6IFJlZ3Jlc3Npb24gaW4gbGludXgt
bmV4dA0KDQpIaSwNCk9uIDEwLzUvMjAyMyA1OjU4IFBNLCBCb3JhaCwgQ2hhaXRhbnlhIEt1bWFy
IHdyb3RlOg0KSGVsbG8gUmFmYWVsLA0KwqANCkhvcGUgeW91IGFyZSBkb2luZyB3ZWxsLiBJIGFt
IENoYWl0YW55YSBmcm9tIHRoZSBsaW51eCBncmFwaGljcyB0ZWFtIGluIEludGVsLg0KVGhpcyBt
YWlsIGlzIHJlZ2FyZGluZyBhIHJlZ3Jlc3Npb24gd2UgYXJlIHNlZWluZyBpbiBvdXIgQ0kgcnVu
c1sxXSBvbiBsaW51eC1uZXh0IHJlcG9zaXRvcnkuDQrCoA0KVGhhbmtzIGZvciB0aGUgcmVwb3J0
LCBJIHRoaW5rIHRoYXQgdGhpcyBpcyBhIGxvY2tkZXAgYXNzZXJ0aW9uIGZhaWxpbmcuDQpJZiB0
aGF0IGlzIGNvcnJlY3QsIGl0IHNob3VsZCBiZSBzdHJhaWdodGZvcndhcmQgdG8gZml4Lg0KSSds
bCB0YWtlIGNhcmUgb2YgdGhpcyBlYXJseSBuZXh0IHdlZWsuDQpUaGFua3MhDQoNCk9uIG5leHQt
MjAyMzEwMDMgWzJdLCB3ZSBhcmUgc2VlaW5nIHRoZSBmb2xsb3dpbmcgZXJyb3INCsKgDQpgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgDQo8ND5bwqDCoCAxNC4wOTMwNzVdIC0tLS0tLS0tLS0tLVsgY3V0
IGhlcmUgXS0tLS0tLS0tLS0tLQ0KPDQ+W8KgwqAgMTQuMDk3NjY0XSBXQVJOSU5HOiBDUFU6IDAg
UElEOiAxIGF0IGRyaXZlcnMvdGhlcm1hbC90aGVybWFsX3RyaXAuYzoxOCBmb3JfZWFjaF90aGVy
bWFsX3RyaXArMHg4My8weDkwDQo8ND5bwqDCoCAxNC4xMDY5NzddIE1vZHVsZXMgbGlua2VkIGlu
Og0KPDQ+W8KgwqAgMTQuMTEwMDE3XSBDUFU6IDAgUElEOiAxIENvbW06IHN3YXBwZXIvMCBUYWlu
dGVkOiBHwqDCoMKgwqDCoMKgwqAgV8KgwqDCoCDCoMKgwqDCoMKgwqA2LjYuMC1yYzQtbmV4dC0y
MDIzMTAwMy1uZXh0LTIwMjMxMDAzLWdjOWYyYmFhYTE4YjUrICMxDQo8ND5bwqDCoCAxNC4xMjEz
MDVdIEhhcmR3YXJlIG5hbWU6IEludGVsIENvcnBvcmF0aW9uIE1ldGVvciBMYWtlIENsaWVudCBQ
bGF0Zm9ybS9NVEwtUCBERFI1IFNPRElNTSBTQlMgUlZQLCBCSU9TIE1UTFBGV0kxLlIwMC4zMzIz
LkQ4OS4yMzA5MTEwNTI5IDA5LzExLzIwMjMNCjw0PlvCoMKgIDE0LjEzNDQ3OF0gUklQOiAwMDEw
OmZvcl9lYWNoX3RoZXJtYWxfdHJpcCsweDgzLzB4OTANCjw0PlvCoMKgIDE0LjEzOTQ5Nl0gQ29k
ZTogNWMgNDEgNWQgYzMgY2MgY2MgY2MgY2MgNWIgMzEgYzAgNWQgNDEgNWMgNDEgNWQgYzMgY2Mg
Y2MgY2MgY2MgNDggOGQgYmYgZjAgMDUgMDAgMDAgYmUgZmYgZmYgZmYgZmYgZTggMjEgYTIgMmQg
MDAgODUgYzAgNzUgOWEgPDBmPiAwYiBlYiA5NiA2NiAwZiAxZiA4NCAwMCAwMCAwMCAwMCAwMCA5
MCA5MCA5MCA5MCA5MCA5MCA5MCA5MCA5MA0KwqANCkRldGFpbHMgbG9nIGNhbiBiZSBmb3VuZCBp
biBbM10uDQrCoA0KQWZ0ZXIgYmlzZWN0aW5nIHRoZSB0cmVlLCB0aGUgZm9sbG93aW5nIHBhdGNo
IFs0XSBzZWVtcyB0byBiZSBjYXVzaW5nIHRoZSByZWdyZXNzaW9uLg0KwqANCmNvbW1pdCBkNWVh
ODg5MjQ2YjExMmUyMjg0MzNhNWYyN2Y1N2FmOTBjYTBjMWZiDQpBdXRob3I6IFJhZmFlbCBKLiBX
eXNvY2tpIG1haWx0bzpyYWZhZWwuai53eXNvY2tpQGludGVsLmNvbQ0KRGF0ZTrCoMKgIFRodSBT
ZXAgMjEgMjA6MDI6NTkgMjAyMyArMDIwMA0KwqANCsKgwqDCoCBBQ1BJOiB0aGVybWFsOiBEbyBu
b3QgdXNlIHRyaXAgaW5kaWNlcyBmb3IgY29vbGluZyBkZXZpY2UgYmluZGluZw0KwqANCsKgwqDC
oCBSZWFycmFuZ2UgdGhlIEFDUEkgdGhlcm1hbCBkcml2ZXIncyBjYWxsYmFjayBmdW5jdGlvbnMg
dXNlZCBmb3IgY29vbGluZw0KwqDCoMKgIGRldmljZSBiaW5kaW5nIGFuZCB1bmJpbmRpbmcsIGFj
cGlfdGhlcm1hbF9iaW5kX2Nvb2xpbmdfZGV2aWNlKCkgYW5kDQrCoMKgwqAgYWNwaV90aGVybWFs
X3VuYmluZF9jb29saW5nX2RldmljZSgpLCByZXNwZWN0aXZlbHksIHNvIHRoYXQgdGhleSB1c2Ug
dHJpcA0KwqDCoMKgIHBvaW50ZXJzIGluc3RlYWQgb2YgdHJpcCBpbmRpY2VzIHdoaWNoIGlzIG1v
cmUgc3RyYWlnaHRmb3J3YXJkIGFuZCBhbGxvd3MNCsKgwqDCoCB0aGUgZHJpdmVyIHRvIGJlY29t
ZSBpbmRlcGVuZGVudCBvZiB0aGUgb3JkZXJpbmcgb2YgdHJpcHMgaW4gdGhlIHRoZXJtYWwNCsKg
wqDCoCB6b25lIHN0cnVjdHVyZS4NCsKgDQrCoMKgwqAgVGhlIGdlbmVyYWwgZnVuY3Rpb25hbGl0
eSBpcyBub3QgZXhwZWN0ZWQgdG8gYmUgY2hhbmdlZC4NCsKgDQrCoMKgwqAgU2lnbmVkLW9mZi1i
eTogUmFmYWVsIEouIFd5c29ja2kgbWFpbHRvOnJhZmFlbC5qLnd5c29ja2lAaW50ZWwuY29tDQrC
oMKgwqAgUmV2aWV3ZWQtYnk6IERhbmllbCBMZXpjYW5vIG1haWx0bzpkYW5pZWwubGV6Y2Fub0Bs
aW5hcm8ub3JnDQrCoA0KV2UgYWxzbyB2ZXJpZmllZCBieSBtb3ZpbmcgdGhlIGhlYWQgb2YgdGhl
IHRyZWUgdG8gdGhlIHByZXZpb3VzIGNvbW1pdC4NCsKgDQpDb3VsZCB5b3UgcGxlYXNlIGNoZWNr
IHdoeSB0aGlzIHBhdGNoIGNhdXNlcyB0aGUgcmVncmVzc2lvbiBhbmQgaWYgd2UgY2FuIGZpbmQg
YSBzb2x1dGlvbiBmb3IgaXQgc29vbj8NCsKgDQpbMV0gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvbGludXgtbmV4dC9jb21iaW5lZC1hbHQuaHRtbD8NClsyXSBodHRwczovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5leHQuZ2l0L2Nv
bW1pdC8/aD1uZXh0LTIwMjMxMDAzDQpbM10gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvbGludXgtbmV4dC9uZXh0LTIwMjMxMDAzL2JhdC1tdGxwLTYvYm9vdDAudHh0DQpbNF0gaHR0
cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbmV4dC9saW51eC1u
ZXh0LmdpdC9jb21taXQvP2g9bmV4dC0yMDIzMTAwMyZpZD1kNWVhODg5MjQ2YjExMmUyMjg0MzNh
NWYyN2Y1N2FmOTBjYTBjMWZiDQo=
