Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F19D7F48E3
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 15:25:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDFFB10E638;
	Wed, 22 Nov 2023 14:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8868310E638
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 14:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700663103; x=1732199103;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3GlVXpl+FFQy9khybwQSMNk5Mlxq5aGtRAn1TMjdhQM=;
 b=RJKZTtTnbx1sYr8Vp+fyW/TmGLUR5th64g4VceW2Ww2/5srnTfAH8w9/
 VR1bRRVY0qwEPO/hCa6r45Wln87USs7nt/BDNpmVQHIFvcDj6dspvONG+
 hq+rX6RDWOuPKvLMIPc4AulUMUC7L6rRe/a4RXfE0ntMdLdgBN2djGm5g
 ZbiwlDMyXNDOxcgCyobZA+VfFaheSqojrkP6C/jJ6BwfbXbh1yYOqExsT
 XMnnPrzeS9jlXxvmleSnNP2G9b6E0A67cur6K1HKJsbbCBxkY2Bldrh/J
 EW0HQFOpMWcf+SA2SnaLJKJl9lqa/ooJCcopruZ0OGii2QaNQQxAjjeOf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="10723850"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="10723850"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 06:25:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="837428932"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="837428932"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 06:25:02 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 06:25:02 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 06:25:02 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 06:24:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mBoLxvuDSGYXgAO9XMEs71a0Ug7ttrg7eHa79EwIvkYOjOyWJnpuaBWExQ8cy+qQwrWSV1Ee4DWfdUjLDyQFm1IQQicKvHFt+fZhvrtcyZsbhu3Psl8TObJbZRQQ8cISCjAdZF9UR1bAQblqMf8natqrUlgoiRRa+PLp3vAd3TwwxaLZpdph2vhB1gR1oC5uMOfLrlbaa2PSdvs7biBfiUVbNqpTN9jMDx/pRSS1LiRMYggqAKghQ2Z7vJcdS8fIcL2sqdyughYzngy1vXWwbQteWYM0VsBfsk7mh1V2fKSTiJH2MVMPrQOOnsga3NUUiLFwlL6tDuCSt2YKWxaqbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3GlVXpl+FFQy9khybwQSMNk5Mlxq5aGtRAn1TMjdhQM=;
 b=GIkgqXZkJ3eXn5JJNbLWqmvWCsztk2y+fT0CnOyfkt+cLpP6IzTX9MH8/VXh+DFZOZI/3L/yBFOOabi66/kS7oOyz3YZjagp1zKzwCEbpm4qJC48zEgLy7Fh6o0hZebWpjic2HZiTPf/yLJ95KPSrcVb1O/amkZFw3DfFwxo6mEJ96bIPmFF9ql5AqkViy9w3KHgrcRGvZlh7ZhD61NZHYoINvhNMctTyCUlzyDzYjSTi2WhWZAzVRJAOs1Ef5CuSgjoscxcuPQ3Hm8Yw2vZ3T4hjNU8UQe8mMQLVSf8g6QwtSedTcGMnr8gnYzgMUGKKVlA0z6Blg8FQ7NLOt0fmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB7073.namprd11.prod.outlook.com (2603:10b6:510:20c::5)
 by CH3PR11MB8382.namprd11.prod.outlook.com (2603:10b6:610:173::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.19; Wed, 22 Nov
 2023 14:24:45 +0000
Received: from PH7PR11MB7073.namprd11.prod.outlook.com
 ([fe80::fce1:43e0:d60c:c065]) by PH7PR11MB7073.namprd11.prod.outlook.com
 ([fe80::fce1:43e0:d60c:c065%6]) with mapi id 15.20.7002.026; Wed, 22 Nov 2023
 14:24:45 +0000
From: "Musial, Ewelina" <ewelina.musial@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "Illipilli, TejasreeX"
 <tejasreex.illipilli@intel.com>, LGCI Bug Filing <lgci.bug.filing@intel.com>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9p?=
 =?utf-8?B?OTE1L2RzaTogNHRoIGF0dGVtcHQgdG8gZ2V0IHJpZCBvZiBJT1NGIEdQSU8g?=
 =?utf-8?Q?(rev2)?=
Thread-Index: AQHaHUzAasSAH+UgPUS9hgfwKXfo87CGY+2Q
Date: Wed, 22 Nov 2023 14:24:45 +0000
Message-ID: <PH7PR11MB7073CA66944A34B28EB3629293BAA@PH7PR11MB7073.namprd11.prod.outlook.com>
References: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
 <170013946304.3092.1503824312309598619@emeril.freedesktop.org>
 <87ttplprbw.fsf@intel.com>
 <DM6PR11MB38192A2B1E08611ACB696367F2BBA@DM6PR11MB3819.namprd11.prod.outlook.com>
 <87fs0ym512.fsf@intel.com>
 <PH7PR11MB707320EC146F274263792BF193BAA@PH7PR11MB7073.namprd11.prod.outlook.com>
 <DM8PR11MB5655E859CB8C7AAE16FAB6DCE0BAA@DM8PR11MB5655.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB5655E859CB8C7AAE16FAB6DCE0BAA@DM8PR11MB5655.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB7073:EE_|CH3PR11MB8382:EE_
x-ms-office365-filtering-correlation-id: e1b0abaa-b312-4cab-2112-08dbeb66c6d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5QySRHez2nPSS20J0Uq/AMdVD3mEI9uJQ79KY9m3M8lqCVhVGBUzsfnZ58h/3CnB0QyHQdizANlNW2opsguOkXhKHwcsoCLNR85l+GAJhEBK5CxUQMyr3OfFTorhjqY06vw0eas2KKpc6Gt2vVPMvfAgeguEFHBkyFGTdtNXdqQh90sr/4wNWG3n0a1X7M1SrE3/h0WNLflJUOtiEVcAC6iaAMRWz/1ZfRJFB2JpyZ9Hre6k4bYSYuvqCJSsWrruQXli8uqxcXQWoqquniy3O+TGIA32MxxNWyXRF1BSQwdyz2YuUKQ2GF7nSdT8Eb5ps5RSG7VRuOUzaf6G8pKEJkjV3TYuA02xkUiCc41nYONc00Ut3C2Xav05okt+HVSitRUWngS585Wu5lU/mE1IK+YHiRQBmL8PnXnfNGryjEoymRkrjpvfRigYvFP5V909m06wewEbzwUX0CBb/paBfbaVpY4QoG4RbmULztmGgypkOdPOAxL25h7NQfuSd2/DgmZ+wZvp73Kjkppiv4gIFG7g6P8YWoHd2eqpcl2suU0V9T+u+iW4CC8Dyz/r1ogu5SZt5B3jT2els+8TMQl7xJgRjGXSExf5X6zijtayhFwC/wi0Zbz8TWcz4gIMYTVd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(366004)(39860400002)(396003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(55016003)(38070700009)(66946007)(66556008)(76116006)(66476007)(66446008)(64756008)(110136005)(38100700002)(82960400001)(122000001)(86362001)(33656002)(26005)(7696005)(53546011)(6506007)(9686003)(83380400001)(966005)(2906002)(316002)(478600001)(5660300002)(4326008)(71200400001)(52536014)(8936002)(41300700001)(26583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K1FFYlFpMGRqOHRtbFVtam5BTWs5OEwzb2JDTTN0U1dwMjJMMW4yZ081dkpV?=
 =?utf-8?B?Q1plOHZwVEJSbWlUcWZjQzdzTWtzTDljTjVRTEFvMWFjdysxS01kYnF6SjVq?=
 =?utf-8?B?K1pQc2t1WHQwOTJlYW9LVW50alU2WkRUY2QrV0JxZTBKcTlkK1h2U2lDU2V1?=
 =?utf-8?B?NFRzOWxiTFM3KzljdnVBR2VmYWViWHdXVFdFMFpQOVByNlZqOUZjejU0aStl?=
 =?utf-8?B?VnRvbzlHUUxkeUJETjlxWWxIaEorVXkxRTU2K2M4dDVTbDl0L2d1RmQrMjFR?=
 =?utf-8?B?a3ozcGdFQVhNODRFN2xjanJGUDBkbkphaXQ4ZG5HOTJFZWpabXhCd2ZPajhF?=
 =?utf-8?B?MmR5aDlkK0s1d0RPTkMvS3JIT0ZYaVhub2FMWDdXcStEVEJza2dueVpBdTVq?=
 =?utf-8?B?bEZHa2JmZUFvMWIrdEtmTjIyaTZzVXo5MFFidUxmeE5zWVlEak1XQ3JXNi90?=
 =?utf-8?B?QlBLSDJQOHg4VUQrMDhwSnZVR2xtaXVsZ2RwOSswbG95dm1ZdTdWOGVzWThZ?=
 =?utf-8?B?S1pFclRYejhIdjJUeGZBemYwZHUzTVc5WEpiR1RlVVVmdFE2cUZBRWlKK1dx?=
 =?utf-8?B?Rmk3dmlyL1BhTWR6S3pWa3p6OVJyYWt5eTBLczJucmd5Ujk4Q2VpNkY0RjVH?=
 =?utf-8?B?T1UxZVhNT2FGRS9kaHNuSThMaWc5YU8xT0tUa1Fpd0hiaWtOTnd0Z1VXQm50?=
 =?utf-8?B?aEM4YUltOG9wN0dIR09pYmVzYnh5NzR5aVFJWllkZnJCVS9xMDRhWDJnQjUx?=
 =?utf-8?B?NEJwMUFDSEpzZ0VGa0xFL0ptOWVtTnNRekxEcEJGNGgrQ1RaQVlPanJuSE9z?=
 =?utf-8?B?VjZ3RjBSVnNQR05pWlVRTGJPUG1FckYzbXB5a3AvckdQNTU2MExiekdNSmlD?=
 =?utf-8?B?SUZZWkIvT21HQXJlbk9iZTBsSUE3eHoxQ1hhWENEdElpd3hCOWM1YjlCbk8r?=
 =?utf-8?B?dFJrdXNZbEh6dWwxdzkyaEIzeEU0czB6aGNZcGs4NUlXcHpqLy8xTXVTTkRY?=
 =?utf-8?B?akE3ZGwyM09TRHdsOHRJU3RKdmdveVBTb1Y0MXlZbmZsLzZDZnZnL01oUitj?=
 =?utf-8?B?YmJYa0VBMEhNSFh5YkoxTWprQW5mWDdQVVpJbHNZemhMNHE3VktZNnU0bTVZ?=
 =?utf-8?B?ZlJRRmJzR1kwNGhzRkpadFVXVFAwekpLdVlFMFdUYThHbmxsbEdqQVdacTNQ?=
 =?utf-8?B?dWE0dTlVSzRsQkdzbDBpckI0NU50SEVsdGg3RVRVdGhJODZZNEU3aFdJWlRu?=
 =?utf-8?B?MW1obWxxdy9GTnJYQ204cE15Q3YveEhtTWhFVW5TWSs2Q1hYQkRmS3ZjWnNF?=
 =?utf-8?B?UnpZZk1LWkZjZUZlanVtMkI5R25iSWtWeWRyTTBvQmRUaURvMFUrS1pYL0x0?=
 =?utf-8?B?Qk9rRno4dHVEVWhlVkFEb0pZZVI1alZXSGM5dWlVWXhGV2Rha2htNEFZSU5C?=
 =?utf-8?B?VmVTWVJZNFJDVzJNV3A1WVl0bzFqMTA1SHdJL29BeEVGYUIxd09vUzVCUUNQ?=
 =?utf-8?B?NXBFc0d6M1lucWhCZC84d1BWdlhKV3k2WHJ3NVRpUGF1S3pNa0NncDl3YURG?=
 =?utf-8?B?ZUtveVBhcHpWa09JR1FrSC9nYndFM2F6WDd3NWtiNjV6VmpFcFNPT3ZnQWVo?=
 =?utf-8?B?Z1lBa3QrZ082VUo5VlZ6azdqcHlMeUdKNm1CUGZmbTA5Q1BMSVEvZW5IejlX?=
 =?utf-8?B?WFRYZ1VreUFqSVd5cXFrTXZEZmZNRVRydnJhZityV1FKbkNHWURhUnVBZk5L?=
 =?utf-8?B?VjRVNU9RbFY5MHcrUWM0UGNFa2Q0SEtQaXZNWVlENE9ORlgzRGk2L001djRu?=
 =?utf-8?B?N2dOWWVCVzFENTRIdHFCS0FHVjdQK1BCZmNKV0JLaFkvd0FPVnFub29NSjU3?=
 =?utf-8?B?NGdhVndZWXo0c3JlbWp5MmtHcEdrVVJpZ2lQd2s2R0pyd2F5V1pOL2VKWlAz?=
 =?utf-8?B?bVV4TDcyZDFTaS9ndDNnN2syVEJweG50QmlhMGllWVA2UmZlUjljSzhWUXBr?=
 =?utf-8?B?RG1HUkoxTmRBUFdtRE80RkxESmRXMXE2ZWF0b051akl0b0RWL09RVXBmYzBU?=
 =?utf-8?B?M2tvbzZLUitRWHNDZVlvbEdzTGVpemlhMFBFMy91SDZoZ05YQWxRbkFKZDBG?=
 =?utf-8?Q?LugVdsEzYWxOunkrZyd29wvJb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1b0abaa-b312-4cab-2112-08dbeb66c6d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2023 14:24:45.7576 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xzn5tq+c+fNw4ThGXz/cITA7/KCjp7AlztpdpShIUK1BFyOwOlHXxdHlzQTGS7UHLYaEeoPBcvYSpNTF/J4kFKJjVerxOarhQqp9b+v1Ahg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8382
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_4th_attempt_to_get_rid_of_IOSF_GPIO_=28rev2=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QnV0IHRoaXMgbGlzdCBoYWQgb25seSBzZXJpZXMgd2hpY2ggd2VyZSBpbiBxdWV1ZSBoZXJlIGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy9xdWV1ZS9pbmRleC5odG1sIGFuZCB0b2RheSBJIHdh
cyBjaGVja2luZyBleGFjdGx5IGhvdyBxdWV1ZSBmb3Igc2hhcmRzIGlzIGNyZWF0ZWQgYW5kIHRo
ZXJlIGFyZSBqb2JzIHdoaWNoIGFyZSBub3QgZGlzcGxheWVkIHRoZXJlLiBEaXJlY3RseSBpbiBK
ZW5raW5zIHdlIGRvIGhhdmUgbXVsdGlwbGUgbW9yZSBqb2JzIHRoYW4gaW4gdGhpcyBxdWV1ZSBv
bmx5IGFuZCBJIGFsc28ga2lsbGVkIHRoZW0uIEkgd2FzIGRpc2N1c3NpbmcgZXhhY3RseSB0aGlz
IGNhc2UgdG9kYXkgd2l0aCBNaWNoYcWCIGFuZCBoZSBwb2ludGVkIG91dCB0aGF0IGluIGV4cGxh
bmF0aW9uIGJlbG93IHF1ZXVlcyB3ZSBkbyBoYXZlIGhpZ2hsaWdodGVkOg0KRHVlIHRvIHRlY2hu
aWNhbCBsaW1pdGF0aW9uIHRoaXMgaXMganVzdCBhbiBhcHByb3hpbWF0aW9uIG9mIHRoZSBxdWV1
ZS4gSXQgaXMgZ29vZCBmb3IgYXNzZXNzaW5nIHRoZSBsZW5ndGggb2YgdGhlIHF1ZXVlLCBidXQg
c2hvdWxkIG5vdCBiZSBjb25zaWRlcmVkIGFzIGNvbXBsZXRlbHkgYWNjdXJhdGUuDQoNClJlZ2Fy
ZHMsDQpFd2VsaW5hDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBTYWFyaW5l
biwgSmFuaSA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+IA0KU2VudDogV2VkbmVzZGF5LCBOb3Zl
bWJlciAyMiwgMjAyMyAzOjA0IFBNDQpUbzogTXVzaWFsLCBFd2VsaW5hIDxld2VsaW5hLm11c2lh
bEBpbnRlbC5jb20+OyBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPjsg
SWxsaXBpbGxpLCBUZWphc3JlZVggPHRlamFzcmVleC5pbGxpcGlsbGlAaW50ZWwuY29tPjsgTEdD
SSBCdWcgRmlsaW5nIDxsZ2NpLmJ1Zy5maWxpbmdAaW50ZWwuY29tPjsgQW5keSBTaGV2Y2hlbmtv
IDxhbmRyaXkuc2hldmNoZW5rb0BsaW51eC5pbnRlbC5jb20+DQpDYzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KU3ViamVjdDogUkU6IFtJbnRlbC1nZnhdIOKclyBGaS5DSS5CQVQ6
IGZhaWx1cmUgZm9yIGRybS9pOTE1L2RzaTogNHRoIGF0dGVtcHQgdG8gZ2V0IHJpZCBvZiBJT1NG
IEdQSU8gKHJldjIpDQoNCkhJLCANCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJv
bTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9u
IEJlaGFsZiBPZiANCj4gTXVzaWFsLCBFd2VsaW5hDQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1i
ZXIgMjIsIDIwMjMgMzozOSBQTQ0KPiBUbzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4
LmludGVsLmNvbT47IElsbGlwaWxsaSwgVGVqYXNyZWVYIA0KPiA8dGVqYXNyZWV4LmlsbGlwaWxs
aUBpbnRlbC5jb20+OyBMR0NJIEJ1ZyBGaWxpbmcgDQo+IDxsZ2NpLmJ1Zy5maWxpbmdAaW50ZWwu
Y29tPjsgQW5keSBTaGV2Y2hlbmtvIA0KPiA8YW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwu
Y29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBS
ZTogW0ludGVsLWdmeF0g4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZHNpOiA0
dGggDQo+IGF0dGVtcHQgdG8gZ2V0IHJpZCBvZiBJT1NGIEdQSU8gKHJldjIpDQo+IA0KPiBIaSwg
SSByZXZpZXdlZCB3aGF0IEkgY291bGQsIGFuZCBteSBjb25jbHVzaW9uIGlzIHRoYXQgQ0kuRlVM
TCBmb3IgDQo+IHRoaXMgc2VyaWVzIHdhcyBraWxsZWQgZHVlIHRvIG15IHdvcmsgYXJvdW5kIDEy
NjUyNnY2IC0geWVzdGVyZGF5IEkgDQo+IHdhcyBhc2tlZCB0byBkbyB3aGF0ZXZlciBJIGNhbiB0
byBzcGVlZCB1cCBzaGFyZHMgdGVzdGluZyBmb3IgDQo+IG1lbnRpb25lZCBzZXJpZXMgYW5kIEkg
a2lsbGVkIG11bHRpcGxlIHNlc3Npb25zIHdoaWNoIHdlcmUgaGlnaGVyIGluIA0KPiBxdWV1ZS4g
V2UgZG8gbm90IGhhdmUgb3B0aW9uIHRvIHNpbXBseSBidW1wIHByaW9yaXR5IGZvciBwcmVtZXJn
ZSANCj4gc2VyaWVzIGFuZCB0aGUgb25seSB3YXkgKG5vdCByZWNvbW1lbmRlZCBidXQgc29tZXRp
bWVzIG5lZWRlZCkgaXMgdG8gDQo+IGRyb3AgZXZlcnl0aGluZyB3aGF0IGlzIGhpZ2hlci4gSSd2
ZSBhZGRlZCB0aGlzIHNlcmllcyBiYWNrIHRvIHF1ZXVlLiANCj4gU29ycnkgZm9yIGluY29udmVu
aWVuY2UNCk5vcGUuIEl0IHdhcyBub3QgcGFydCBvZiB0aGF0IGxpc3QuIFdlIGNoZWNrZWQgdGhh
dCB3aXRoIEphbmkgdG9vLiBTZWUgdGhvc2UgcGljdHVyZXMgd2UgZGlzY3Vzc2VkLiANCj4gDQo+
IFJlZ2FyZHMsDQo+IEV3ZWxpbmENCg0KQnIsDQpKYW5pIFMNCg==
