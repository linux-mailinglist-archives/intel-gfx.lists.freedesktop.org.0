Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CDB7D5060
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:55:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E16510E38E;
	Tue, 24 Oct 2023 12:55:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AC5810E38F
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698152127; x=1729688127;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ZK1AVyCt1GT/xeigZFMq+iB5wQegpGMyNg2D2CxEZmQ=;
 b=Et0ldWGq6LfH5et2xxUhKFTpAszz94Aczwdz6Mi3/ZAz8ihzHJcM3IMs
 RjLp7lofmAlGMHuwGrTFnVp2bi9WiIeQzSrECEr4jbsmLWukKjQfpG0wu
 F8+ETfDFrTA9rmXiYFJTNqYHAEWHipkhmoTUbskIsU7pYrhuMO38MdPFF
 MYBePr58pAE1Vtw2f1eea6FWtbk+4HhjJO2SVUUv1PtBC2sYZjxOam7H/
 1mcIoDXaSoTdYqQ4AVWe9iU54jSAVFEUa6Fu7Qw+cDHpGf0ZgHhWkJvuk
 kzICEbPmJP30aAUcPYG2OBZb7zuvUwj4gFgggg3fcYMjNZ1A/s69mBKjL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="389896890"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="389896890"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:55:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="1089823694"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="1089823694"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2023 05:55:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 05:55:25 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 05:55:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 24 Oct 2023 05:55:24 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 24 Oct 2023 05:55:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WLYEg8zAzBZEVzLN6sBiAnzzQqTvKkovGk3mw4XRtgtafMNdQPDjwXzfLpyRNQUWm6bv5OGHnFjBjiwjinOOzhPIX/ArAUteqC4ui0/7OilJgizz5TcYspgnvqxzqXytvwpT75/MA/r0BiG08szGzAtt7C+9a3GCGDbB87SF0928BZX64pZ5yUZRQ5dmYmiYesSQ0P7wzSw/3QnUOetRJFof968fKChlRjCsQEFsLaLCaS5vKBZj4/cEme/C0KOoFjGEjfpDNUHvm4lGcQ3QaievcaIeihCtG+PFX2BrTY8XRO49vdG+O/Y78crjldGizkQEYLfDddjkQ3mD1Zq9vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZK1AVyCt1GT/xeigZFMq+iB5wQegpGMyNg2D2CxEZmQ=;
 b=b2cYLmQQslJujR+waX1ihH0N+qyAY074RfDfqTht78m42YBo9SkeVwxe+OUaP83BYJBqnSMO0UG5xcnHqP9PWaUOTWUekPHAsbE+mTfzfhop3HLVePhGSj7KxYqMbT4G4/Gwg56N/1N/LnPiQTKc1BJkmVHrOXIThs8k/qfL6JfdgptlOkNpuuorjmvQGwJqm/ANIgLUFbr2Qb6/aakulgf/E2USMretqwfLVkGxaV24n3G9gdehH8u7FYu/3anU1Y3yTd96Vyaqs234o9lXE2YhskAJxzOtcZSQPcznKtIKI4AV9xR530W8WL4hIx8japu5P74h0V6MsJ7LwacXQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by PH0PR11MB4805.namprd11.prod.outlook.com (2603:10b6:510:32::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.31; Tue, 24 Oct
 2023 12:55:22 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::5c7:6814:f748:f22b]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::5c7:6814:f748:f22b%6]) with mapi id 15.20.6933.019; Tue, 24 Oct 2023
 12:55:22 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 21/23] drm/i915/display: Move
 verbose_state_checks under display
Thread-Index: AQHaBnePOfSyzskpeUOAniFHzsz9trBY5cEA
Date: Tue, 24 Oct 2023 12:55:22 +0000
Message-ID: <4b4222ff7a6c19eb62ab142506faf208a3c24de2.camel@intel.com>
References: <20231024124109.384973-1-jouni.hogander@intel.com>
 <20231024124109.384973-22-jouni.hogander@intel.com>
In-Reply-To: <20231024124109.384973-22-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|PH0PR11MB4805:EE_
x-ms-office365-filtering-correlation-id: 00e5e219-b081-47c0-575c-08dbd4907bfb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WmNSVtaQheav31djvX8ff+74aEjczzuc1TLYwjNiStMvHPJsLTd9Q0TTaE7Z9PpuBCchrUxv4pdyUkxaFVqoqAs1FlsxU9dg3MTmCQKIjW2zcBfPjhZ/S1ngBSEZ35PU6CHQe8ao+WVZdRGsmPkIQaVktTf/HaK8IHTCxVVauVo5zi+zuQLAbl55sf3M4+yjebn34QvkzWPgK38yC+Xm5iTR/ul5p4qoGrKLQQKdvHE9idsjpBJ1Iu19OMYQNjS9PK8S05RKCI0UE4uzWdO23gnzJyBxKotk1paf4GZQ0wQur/Dny5pZo1MeeL2v2szAdH2k8GxW9wUzIu2o5LLFn5ydYbsA58dER9sI2VQ9pOTtIAQk0/BSiDXZ5D7uQg6sOHJuXCxSRQ3A4LcPNBlVdx06K6eya33A4Zc6FuOId6H0nGSbGXOjuoYwxSbYQd62IqLbF7dxY2lUyKm66fpXwuQKuAE+lsx3gDYL+wkWFMWVry9YU5dY+Lo1Zu0G/o3e5ZwYtge4r9nJPW4MUeRDW+gL38vKm7WkZmUqhoPxkYYADbujqf87jtsTPUiHp4Hil/T9BHrukH40j5b5LFME8lR0QPQ2y7GJURpJvIsGcmDXkSPbVPW9PijWbI41MAL4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(376002)(136003)(39860400002)(396003)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(26005)(38070700009)(4001150100001)(38100700002)(2906002)(4744005)(86362001)(36756003)(5660300002)(41300700001)(8936002)(8676002)(4326008)(2616005)(107886003)(71200400001)(82960400001)(6506007)(478600001)(110136005)(91956017)(122000001)(66946007)(66556008)(316002)(6636002)(66446008)(76116006)(64756008)(66476007)(83380400001)(6512007)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MzY3U1ZXb1d5UFYySnptUElWVTNJRlBPK3RDTmdpQzk0M0tyZWdtYWRHQkta?=
 =?utf-8?B?elFKMWs3SUlYKzQ3UXFPNW0rRU5BMHE3eitMeFhMS3BPb1NFM3pIQ3dVQkZT?=
 =?utf-8?B?b0dUSXBNdG1mQ0NXN2VjeFFncjNyWDI0ays1NndOamlZdnVaK1FlcVoxYzhM?=
 =?utf-8?B?MlpuR05FSy91WWhLTm5TU3VaTlprTlVrY1NiTWNDa1Zjb3lsRG5vdHdNVzUr?=
 =?utf-8?B?eDEvMkJBYWlqeHpwNkxQdmUzaXNsVTMxSnV2NTF5YTNndEJValBIU3ZQSlJH?=
 =?utf-8?B?WjZGdmlBVGZPM2JGQloveGgwM1N5V2tGelByYlkvY2U5bGh3MjU5Z1hKa2sx?=
 =?utf-8?B?TzNuc2J6U2haMUJYcW9qVlRvN0YydHdCanArZDRrZmgycU95a1dFcDFXKzhp?=
 =?utf-8?B?VkN3RzRpN0Y5aTVjV2dyNmNlY1k2N0dwUHY4bndrWFNtUE9XYVB0MDZ6dE1B?=
 =?utf-8?B?andEcGxCbUk5WVd2VWc3SFNXSThCZndyRWhPak5BNXhJMmM0dytUL24zdkVy?=
 =?utf-8?B?M3M5OFJaUHZ4VFhOQkR1clJPVE5GM0ptNGRtWkZSWDhyajAxVDNod1hzS1BQ?=
 =?utf-8?B?WXdxQk1uTmM5dHhYUTNDT3N0OWp4OG5NUVF6TTRQSmpHelZOVFc3SFJmMVFV?=
 =?utf-8?B?Mmc2cTFyYnJiRExsM2tSZ0U0RzFLODNVT0dJakp1N2xIajdwZDRuQ2hXaU56?=
 =?utf-8?B?WUhKYjU3Z2tlU056S3FwYVhyVzA2bU53UGRHS0VCOFA2dHFqNVUydC9RYnM4?=
 =?utf-8?B?US9Kd012U0xVZFhia3dqQStlQWtDdzFlN2swYXRMU2xCNUdwSkVnVWltbTl5?=
 =?utf-8?B?QlZ1Z1BoWmlPRm1mOS90aExmQTJWb1VnUHRQdDlyeVQ5TjlZQmNFKzhNL0du?=
 =?utf-8?B?Ti9JT0xWcXd2QXRSYUNZK0ZPbUdJUmN1dmxVaWQwQmM3TzVmRmZ5K2FTREd1?=
 =?utf-8?B?RHBsMCtOcjlBQlJwSWQ3bkE4VENaaEFLeDAwK0Q3bURZeklTQkxLZnlZSSsx?=
 =?utf-8?B?S0pCUDZLUlJuTXQ3em4rc2xSQk5tSloyejB5WWFKeXRMWnFWQ2k0ZVRXNTdh?=
 =?utf-8?B?MWJPckdVenBIeGtOYWJHcVExUWNhM1lFQjB6OGJXVjBic0FleDFWZTFyMnI5?=
 =?utf-8?B?ZlJKZFFvSUpZNmVTdTZaWFc5bkFFUEdGRkVMYWoyMzJwbVh5L3FQWXRubFJY?=
 =?utf-8?B?MkJLREVOeW1keWMvTmJqOGtqdjJERmZxQ09BRTZrS2FiTmFYV0RqVC9iOWZO?=
 =?utf-8?B?MURzUTRmdzVabGZxemJQSjVkUFp1MVdQWEczZ1p5MEhYMDROT2NtQjI4czFo?=
 =?utf-8?B?d3pYRDBHdXhkUUt1bGs0QmlURWxMdFBkWFY4L0RpSm1yZW44TkNDa3FzcHI4?=
 =?utf-8?B?bGoxNFkrTldJNGkrZDNMNVNKS09acEpERERpc093ZGdGWWNVclRsa2N5OFFy?=
 =?utf-8?B?L0xGYUg4cDIyTWpEalkyZXdVWWFnYnlUWEk2dXBrTldlV2VqSDZSK0lYUjhx?=
 =?utf-8?B?SFBjSjVTTnh0ajEwV0lvSFhsOHRyL1YvNTBXTjZvWmlacGtUSk9JN256SU94?=
 =?utf-8?B?RWNMNlRVVm9JQi9MR0x2TXozTTU3VGp0MzMzY2dCd2MzcW5hRTJEbTJtVjJs?=
 =?utf-8?B?RjlSTWRBMTNzWkFDTHFhSG5NV3U3K292Z2FhZXhscndvOXZmT2J4NzhjQWtX?=
 =?utf-8?B?NnQrVUxLa25WRng5RnJUWHdqTTN1ZnVlR2pIVWtVRlhyNm9xRGQ0cWRWaThk?=
 =?utf-8?B?ZCtRdEhaZTRJVzZIbkVHYlNiL2JVRHpOemRXUnJKQnE5dUJVazVBbUZzWTlD?=
 =?utf-8?B?UVI4TFhZbVFTdmxUVWt5Q1ltbFBQU3BQS0FyRCttVTNzbVN6bkltYnRkODRy?=
 =?utf-8?B?cWFoTmxFWE55MDNVY0k1UXJRVlZzR3gxRFlHUTFFUXlsazNMbDNubzJHVlhx?=
 =?utf-8?B?VVBxZG9jYk1SNit1U0xyejRaWVhnYXgyMlp3N1BDK2t2UElGNTJMQk52TzF5?=
 =?utf-8?B?S0JpZkNxODdad2xOTEVoMUVlRDF1eEFLQWtUSExqSlNMT1JnOTlpdnNERytr?=
 =?utf-8?B?ck53Rm82T1JlYmQ5TGNqVFUrK0xQSjJIanh6S3VNVjJVdEZXd0tLVkdOZWh3?=
 =?utf-8?B?aFlNdGdNaEpTNXpDNE04NjIwSU5LL2RudWNJVWZpWndGaHBwWUhSNFZ5eHJ4?=
 =?utf-8?B?VkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <AE4E1DC2559CB440863BC2BA3DBEEB98@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00e5e219-b081-47c0-575c-08dbd4907bfb
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2023 12:55:22.3095 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: drCRIjHNQNZTs1pZQMDeXH23TRCe4TkbBbHOW6DySpPC9ll4lwpgkXeYEkRZVt0KosppkvNyPS2D4SVN5ykTmUxWlloWdgOEzbhNr30wRes=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4805
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 21/23] drm/i915/display: Move
 verbose_state_checks under display
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTEwLTI0IGF0IDE1OjQxICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IHYyOiBDaGFuZ2UgZGV2aWNlIHBhcmFtZXRlciBwZXJtaXNzaW9ucyB0byAwNDAwDQoNCkkg
dGhpbmsgaXQgc2hvdWxkIGJlIHY0IGhlcmU/IEFueXdheSwgSSBkb24ndCBjYXJlLCBJIHRoaW5r
IEkgYWxyZWFkeQ0KZXhwcmVzc2VkIG15IG9waW5pb24gYWdhaW5zdCBoYXZpbmcgdGhlIHBhdGNo
IHJldmlzaW9uIGhpc3RvcnkgaW4gdGhlDQpjb21taXQgbWVzc2FnZSBhdCBhbGwuLi4NCg0KPiAN
Cj4gQ2M6IEx1Y2EgQ29lbGhvIDxsdWNpYW5vLmNvZWxob0BpbnRlbC5jb20+DQo+IENjOiBKYW5p
IE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KDQpSZXZpZXdl
ZC1ieTogTHVjYSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNvbT4NCg0KLS0NCkNoZWVy
cywNCkx1Y2EuDQo=
