Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6224EB12C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 18:00:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA0E189805;
	Tue, 29 Mar 2022 16:00:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E8CC89805
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 16:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648569602; x=1680105602;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4txoiyl3W7Wdrv3U3+R8tAqdbONq1eNUySWnx1kxPSM=;
 b=DOSbniJcKdLU8F1in/2z7vfhSIV9rwxhKT6zxRqax59s4ZfjGcZvs/tp
 WlSyVe5aGHyWKOmB9RZ5fcZG7Trr6ZZ4Zq/T0kwsX7KFr+Wt86vo+Xe7M
 Nvkmg4M/XkEOBwBlr1WZVlSoTDgPzCCDogGXUFf4h4vBuzE7lgVGNTU4X
 6y8VVsxmgbgTOczplk2GyzrSWqSSPlk0J8OauF/OFUIlkjcs7kRh3lGIk
 ItWDkM1cEazGVJJsRskY6S87NhIz8yCyRd3iPGPcFhIqfRrhsqZCC9x8i
 2Pn2PyNjaNyOOlx2DbBQvqEdC+zTrxXlb6WcRLRkM2W69WIdAUNFEMgr7 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="246774559"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="246774559"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:00:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="564732077"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 29 Mar 2022 09:00:01 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 29 Mar 2022 09:00:00 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 29 Mar 2022 09:00:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 29 Mar 2022 09:00:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 29 Mar 2022 08:59:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jjAu80xDhjumjvLAvRSHZ8tlfd9C6wF3PRN10lN5LNKbJLX0Lww1nmq5sTLOz3u1Px8H/9BRRTgWzPlAJ/Vu+Alf5KN1tS/6bLxfuZadCOYmQsJC+F+AJNkQqMijlW88QACHiVm5hpPNyFXIkpli2gIicz+an2yiH2eh+ryzNnDl4aOxdFgstz1AA9DLIW8/34CHPVtn6Q8KYLaIQgENQg4e+jRg5KVaq7vnmXEsVUdnwvJZoEEPVDhNN97epSwYHD2kI4K7LDFz+Pb4wkP9Hp4n9yiz/AkVagQ38UUnrJbIIJEoSkdj2u5ib/mFT7uP/0fjTEKlJuzXsBumhMjiXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4txoiyl3W7Wdrv3U3+R8tAqdbONq1eNUySWnx1kxPSM=;
 b=UEjw+LuY8Klw22O5jIvBGEjMIaO48Q/KSnHNl9dKLjb/7e5WSumxtNuur/205zTn9bQUVwVmlgkUmO1tXd/6RR86vlOYkyMuEr1ZPJQbmiV+arplPfRydZvlrxYegVfJKFc5k6yoInfW9OBBpwa0kfi/6LQtpVRWN/0u+Mq7X8ehUqnD1QbXH4+L8zL1AjOAI1lue0mw7LY8he9Tl0mNZ0ifhU5fZ5sP2Pa5FPEZZ5NATEJtzfPdBxfZblchRSQkepuGIHrme8qO/qe1wUNANBayrHd6jMr68F+I5aMOo12BXuEGzNUWcFQtkE1XFDlrinmQFjXtihB9+17vcGoQKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2567.namprd11.prod.outlook.com (2603:10b6:a02:c5::32)
 by CH2PR11MB4390.namprd11.prod.outlook.com (2603:10b6:610:3d::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.19; Tue, 29 Mar
 2022 15:59:58 +0000
Received: from BYAPR11MB2567.namprd11.prod.outlook.com
 ([fe80::f1ed:9074:5f82:150d]) by BYAPR11MB2567.namprd11.prod.outlook.com
 ([fe80::f1ed:9074:5f82:150d%7]) with mapi id 15.20.5102.023; Tue, 29 Mar 2022
 15:59:58 +0000
From: "Yang, Fei" <fei.yang@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Patchwork <patchwork@emeril.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJtL2k5?=
 =?utf-8?B?MTU6IGF2b2lkIGNvbmN1cnJlbnQgd3JpdGVzIHRvIGF1eF9pbnYgKHJldjEw?=
 =?utf-8?Q?)?=
Thread-Index: AQHYQxUAax6xO4BUX0a76cPQMz+UBqzV/laAgAByBWA=
Date: Tue, 29 Mar 2022 15:59:58 +0000
Message-ID: <BYAPR11MB2567D70146A33C6FD4D6BCB59A1E9@BYAPR11MB2567.namprd11.prod.outlook.com>
References: <20220328171650.1900674-1-fei.yang@intel.com>
 <164852101313.5798.13575790930450522054@emeril.freedesktop.org>
 <10e046ca-6da2-8a2c-96e3-d5edf4267da7@linux.intel.com>
In-Reply-To: <10e046ca-6da2-8a2c-96e3-d5edf4267da7@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7c796995-4479-45ef-3e32-08da119d2cba
x-ms-traffictypediagnostic: CH2PR11MB4390:EE_
x-microsoft-antispam-prvs: <CH2PR11MB439088B2768EB94003B251B69A1E9@CH2PR11MB4390.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CuhyFImJUbPlmJuHJUSGfBJWJy/w5hY3WUmG458YAYZvBmJ7TEmIont6ZDlS1A0/EgDdGzRH++kiSKL+PqFgUT2bP9e4FRwhuipD5gpgmUHAXdyHXK71jI8J85kZmwZJyArehWHbt5nUnW7BzmrTSLbdQNpQ/hPEjbiVWm76IoZota4SqpI4saz+uAwcJ2hl8fZH/KaE3anPYdEGBK5SFXXIgePpV4a/XvBBzgv6y5hMtuezLczIZOse2AFKb9Ovfqjrt+ZTThyvIkE6FSdWjt/aw4iCnFe85UBP1t5/PiBPTD91jgpolqCDoD/Ce0ei4IykZfmkb77Wd7Bf9QYyUvIbhIVWnQCfpiE6U9hyre5cbmGoOZ7yf+m3s/mYz6V379LifFrPAKznLfdNNa8TSQI+2ke+TxFxyrIi+9lfpcIkhsdhKaG68rXUH3c6rvmNnjjmeQ2tKEGWXlvaPNNJAc/+PIMxUbfg2L1E55wE7YnzpxznWIQNY5kkHYCPnrBFm3KiZu6RMXiT8eepbuDWrmelbBzdPwX0oy3UfIFGPw7RN1gyYBMV4I2k8msrG3wLXZnRfHpyNYngyrPys1HqY/vGgtIh5/q2PM0zPMAOHb3pEHxEw7GKIS0E5A1ODwRC/59AfRvE/e4V95I1VG/d9YlLYHziSYxW0DylFAlzhOITSVGlP02f4fPU1Z3FZ18MV/Be9xQET4ju4TfxYroXxf0dr0H07IPbVZM0VkOopU65NVAZGuwT7eMv3en/NkgxdtQ21kPOenx7RZL1YGcFuXfLGWdP/E8oANUPbyvfyQY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2567.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(316002)(38100700002)(66446008)(110136005)(52536014)(86362001)(5660300002)(8936002)(4744005)(66946007)(64756008)(66476007)(122000001)(66556008)(38070700005)(71200400001)(82960400001)(26005)(186003)(76116006)(508600001)(6506007)(966005)(53546011)(9686003)(7696005)(33656002)(55016003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VWFvRnpHT05mOGJxcVV0bkJubURldVdHUGRmdG9xSitzc2xkejEwQzVnNVhH?=
 =?utf-8?B?RWtpM3JmcTdzbEVzaFFkWmh0TzNreWNaWkI1SkdhZnRQZFVvdEM3TGlwT3Vn?=
 =?utf-8?B?eVhqd3AvWDFieHpLSzYvWVBOVytVWGxrdEdoN0VDbXJnbjFxbVRnaW5lbFhW?=
 =?utf-8?B?OHN4OXN3b294MWdsMFIrRGljUmpxaXI4UW8zeStkNWdFS0pwbnUzWTRKcTJC?=
 =?utf-8?B?SktmdGU0Q1hCZDB5b3BQUzNUYUlEcHF5VHd2cXM5T1IvRUJFVzF6MGtpUGV5?=
 =?utf-8?B?YW5UMGJNTXI2Smh5Z2NTbnlpQTV5cllsZmpnQVFEdWJuV0JvSXM0YkVEWmZK?=
 =?utf-8?B?TW1laURkRGVJZ0NBcENoV1FJQVBtTUF3RzUyLzJiVjRnVXdhdkNHa2F3Z1Fz?=
 =?utf-8?B?TUZsa2pzY2hiYUFxUFhDSjVOOFAxczNoZkpYVXB6NEphajl2SG84NmRVOFRH?=
 =?utf-8?B?alUrYWg4M0hCM05FMEIycjRNL0NHeEJjVTJaeC9sTjJTcllnTUFYMTZqY1ds?=
 =?utf-8?B?RUVuckVXc1VETEhtNWtPZHVYL3FFUkRVZnBtdHRXQVNZTkVFc3c0VXJMMXcz?=
 =?utf-8?B?TlpHekw1TGNlR05UQmRyYVhhQzJsMUF3Y3B3Q3JhRllQY0RDWkZtOEFhT0hr?=
 =?utf-8?B?dEtkdGlSRy9heVB0VWhmUHY4SlFmYjBBNHpGSlZ1WFNuOEdNM2x6Q0xnQWp5?=
 =?utf-8?B?NHJVcHpTUk43OS9HOTNEQ2VwaXpiZml1ZDJueFBaeGdpc3NxalpBZUtITEdL?=
 =?utf-8?B?SmlSL2VyKzl6ekROTFhuQlZ3RGczL2crSVRBbkVuTUE1Zk9pUHM1V2llV1Rn?=
 =?utf-8?B?RHFDdTdMQTlMZXZ2RlB6bVFhTkVQZkNjM0VYbG4wZFVTbStWMWpPRjRSYk55?=
 =?utf-8?B?SERjR3VFS0Q3QzhsNWZFQzNTVUVaU1orL0ErQkt5ZEhtZFZKTDVFT3NmeGtG?=
 =?utf-8?B?NmVKNHMrODhZUDZPM1BMQUN3alU1UTg2SXI0TG1GVFdSck9BeFVBUFdqUmtG?=
 =?utf-8?B?U0UzVkFzVUlWNGthUThsNDFUN2h3UktjdmNhbFhsWWFzeGFBNFlMQ25oc3F3?=
 =?utf-8?B?NStlaER6V2RlUFF1aDhvem15bENod2hzTzJQeHVyQ2s4eTljTE9vTEJpamg3?=
 =?utf-8?B?Mjg1d2tUQVRMb0JxdHlCWGZldXBES3hqYVJ4bkwvYXRwRW80aCs3bjB6SHlT?=
 =?utf-8?B?Tm9wT1VQY2wzdTlqY2VuRThVeDhKZjh6MVRldFF6TVJtbkZlbzdyd0Z4TmtZ?=
 =?utf-8?B?ZEJVOHdMcHNpZ3BJRFFWMXMzdjQ5N1ZlS3VHdXZ1c2xzUGtqU3pXamdNdzZF?=
 =?utf-8?B?Y0tKNlRNVHdIWVk1VjJXZEtJc2h2dkc2b1NyWitiQ1JGSmZ5UURPSW9yUUI2?=
 =?utf-8?B?aDJQTGRCanY1TWNVT2QwMS8zWTVjQWxCblFiWkkzOFY0SjB4N3pUdElUNFhF?=
 =?utf-8?B?cE1lOCt4eFlFcGoxOXpzODU2UnJNRXN3a3lEZWczVG8xZitNV05XSjdWeW9K?=
 =?utf-8?B?TU1KQzJaeUZaRk5wSmRWdUNOUkpRMEN3bGhJRDk4VmhXTmhhMWxITDRCNmx0?=
 =?utf-8?B?ZVFTOEhkSVRmZWVpa2tlUnVVRkR6UGd3QklUV09RVDZsbXo0NTh1ZnQ1Zks2?=
 =?utf-8?B?Q1FlOHp4SzN5WE9MRUdXWG4wdVAzcjA0MEtibkpTaTJYaWhScklEbXVja0RM?=
 =?utf-8?B?TlNmT3dyamZPaVRHTWIwdGR2U3FpUzUrV2QzUzh5d2ZBaFRET2VpRGF3a2d2?=
 =?utf-8?B?dmY5dStzRnloUzg2Wnc5L01mWFphNGRqYlR4SkZ6Ujh5em12TTFqMDZCZisy?=
 =?utf-8?B?RUZWZTkrU3JlL3p4TDFaOVlKczJjWmtEekplOEIzK1JJUERwNkE0eWkxd0ZV?=
 =?utf-8?B?N3JGb0pKMnF2TWNOYWxjOUhaQTl3QW1DUkk0RndOK21jalcyT2QwclNrRjMx?=
 =?utf-8?B?eFBaYUJZWTlQSTgvbGpOclhScXJIOHNDRGpBS0lEZkd6cEFNVFFOc05XV3J1?=
 =?utf-8?B?eFpxTE9JS2xWTWIzN0ZqVDZ3M1d6ZXU4UC8zeXlGNEFXbUZjWGsyaUZ0cmlv?=
 =?utf-8?B?WjNXdDUyaC9ZcE1rdFVGbG9CQ21DR3dHL0h1eUhiYy8raTJYdGpjZzZ5S3Fx?=
 =?utf-8?B?dE1XNElPWXRJbmExTHRHUEJVTFVKMXRhVDd2SC94L0JnWkUwMTNYTzgrT1hz?=
 =?utf-8?B?bUNoRmJqRjFleXhva1pTcWcrN3JsOU9HMVdjOTZaWk5oay9GTG52MmtweE9m?=
 =?utf-8?B?ek4rNXROUXZzUE5vZkhNcUNEU3cwYmp1MFQ1MDFoT3JZbnpjWERtMTZoT0lw?=
 =?utf-8?B?NWdhRjhXWVdiT0crNHg3a0Vua0VuUVprc2RQY01aVi9MVGhoanRzUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2567.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c796995-4479-45ef-3e32-08da119d2cba
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2022 15:59:58.3193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F7eVK96EL1g4D7iY5/ORlRR5EjuLeStXBRAiA7U/2ReXS40ZvtCz5ZvFeIwZsC6n1L/lonMI29XKuphdsNYkew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4390
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_avoid_concurrent_writes_to_aux=5Finv_=28rev10=29?=
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

PiBPbiAyOS8wMy8yMDIyIDAzOjMwLCBQYXRjaHdvcmsgd3JvdGU6DQo+PiAqUGF0Y2ggRGV0YWls
cyoNCj4+ICpTZXJpZXM6Kglkcm0vaTkxNTogYXZvaWQgY29uY3VycmVudCB3cml0ZXMgdG8gYXV4
X2ludiAocmV2MTApDQo+PiAqVVJMOioJaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy8xMDA3NzIvIA0KPj4gPGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvMTAwNzcyLz4NCj4+ICpTdGF0ZToqCXN1Y2Nlc3MNCj4+ICpEZXRhaWxzOioNCj4+IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzIyNzA0L2lu
ZGV4Lmh0bWwNCj4+IDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18yMjcwNC9pbmRleC5odG1sPg0KPj4gDQo+PiANCj4+ICAgQ0kgQnVnIExvZyAtIGNo
YW5nZXMgZnJvbSBDSV9EUk1fMTE0MTVfZnVsbCAtPiBQYXRjaHdvcmtfMjI3MDRfZnVsbA0KPj4g
DQo+PiANCj4+ICAgICBTdW1tYXJ5DQo+PiANCj4+ICpTVUNDRVNTKg0KPj4gDQo+PiBObyByZWdy
ZXNzaW9ucyBmb3VuZC4NCj4NCj4gQW5kIHB1c2hlZC4NClRoYW5rIHlvdSBzbyBtdWNoLg0KDQo+
DQo+IERvZXMgdGhpcyBoYXZlIGFueSBjaGFuY2Ugb2YgZml4aW5nIGhhbmdzIGluIG11bHRpcGxl
IHNpbXVsdGFuZW91cyBtZWRpYSB3b3JrbG9hZHM/DQpJIGhvcGUgc28uIFRoZSBoYW5nIGZpeGVk
IGJ5IHRoaXMgcGF0Y2ggaXMgcHJldHR5IGVhc3kgdG8gcmVwcm9kdWNlIG9uIFRHTCB3aXRoIHR3
byBwYXJhbGxlbCB2aWRlbyBkZWNvZGluZyBwcm9jZXNzZXMuDQoNCi1GZWkNCg0KPiBSZWdhcmRz
LA0KPg0KPiBUdnJ0a28NCg0K
