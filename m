Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 364CE82938B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 07:05:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C97C10E0FD;
	Wed, 10 Jan 2024 06:05:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31CEF10E0FD
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 06:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704866707; x=1736402707;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=FuXc804GI1h4zRSHxTVJP4B9BWJF3QfOyy84MdW1vcQ=;
 b=Se0ZTBtkfVQwIzkr+cCZNwD9X/BY1SIn6IX+HX5nYbHBRBobhn3xRStm
 wNh2V4hQm2EuN26VKnlOUGtIMBRQdzhiDgQkcwnf25bn+dqgjCKeGm5wS
 AMFJzf6GcfLL+o9U6yRIERFCTcroVKLjPF8LANjdvoNuXZMycd91krD1a
 CVKIeg1jUW52RlASeac5upwBKgHIDHReZVO9LmIq4YVOHVZhf3kSbfdNt
 Vc3kunMyY0lxXtBBZc3N3ruLBeFWtT0CAf5AOqHzlBmLrKYQdjBINg2Xy
 IVr1DizlrifDthiFk6PDGDO0HcywvVca4e4n7n/GGABGdCtuEIOvoC71B Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="5168099"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; 
   d="scan'208";a="5168099"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 22:05:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="731749153"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="731749153"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2024 22:05:05 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Jan 2024 22:05:04 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Jan 2024 22:05:04 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 9 Jan 2024 22:05:04 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 9 Jan 2024 22:05:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aZ94ivVYsGqaSS0LDUSSZr9cAaHdlQAth7Bygw+iWdEolEbqqknUxVcqoSeIvqA2gXAVFxOEaug7BlWvbT0Mg2X4V85pTSl2zS0Uv5YONbHM1zC/0M1k3UkFAoLgqfG1x+FMcMShbrFtuAsQCKKd29beUj8Kxhp27uaNzNdgTQj7HgBznj9fIxgUYkkC5/zL5+UFN1cXiuAF8mEwhp6iaUcEemTeW6v8/WgeqFlHiE/ThyedSy/p2Hcz9HVUn9SHySOd33XJfjZWVvREn/O/T32t1ONlqW8YAghCDzqqDI0iPdG54Y2qIdjc2lJ72lJYZ5oOmnuyVeISWAXxgnPtMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FuXc804GI1h4zRSHxTVJP4B9BWJF3QfOyy84MdW1vcQ=;
 b=YLfkQa23LcHJ51cMoP0OjM/JH9ROYFXsGuH6VC7eDD8BQP+bDx6RsuHmlkKEHQ7eRg90d7YQr6RIv6wLo4/lPaYD2HzTqzwjw1R2kLmQVDYC7KFwgy2BD32mUMW5FPhHnG26sTryDGVs6mXjlTK02014qkXmwKLuNtqqy2JM+cA3/CrxnSJIl7u45lREzElywxrR72HPi5v++rxrAmAVdR4UBaBKQ8S7YQbkVB/z9TAUR3eqe6ezcNCsHvOnLKcxqvHCB2v2ViIewe2m8MNkxPXW+8ueHg//L7pOdEqq2sOObbQ5mreUfvTvCxkv2lQFE5XKBsOeQla6jCTejdvHGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN0PR11MB5988.namprd11.prod.outlook.com (2603:10b6:208:373::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7181.17; Wed, 10 Jan 2024 06:05:02 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7159.020; Wed, 10 Jan 2024
 06:05:02 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 7/7] drm/i915/psr: Disable early transport by default
Thread-Topic: [PATCH 7/7] drm/i915/psr: Disable early transport by default
Thread-Index: AQHaMdq6PkOw9a7pt0u8SEFqP8oIGrDRkzUAgAEe+AA=
Date: Wed, 10 Jan 2024 06:05:02 +0000
Message-ID: <53f8d6a75e8b1f7bb7afe7e235e66460072a3da9.camel@intel.com>
References: <20231218175004.52875-1-jouni.hogander@intel.com>
 <20231218175004.52875-8-jouni.hogander@intel.com>
 <MW4PR11MB70549E84E37783A801873E79EF6A2@MW4PR11MB7054.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB70549E84E37783A801873E79EF6A2@MW4PR11MB7054.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN0PR11MB5988:EE_
x-ms-office365-filtering-correlation-id: ed0c41b2-0f4d-4f73-a004-08dc11a215b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pYCtPXsFfNHeh906hyHI4AVIGE69z7Oxk2DHV0+PXGpYB5OXR6lv8RX39jMZc1cG/y3YkaO9ziOvQv1yTQFUAW6SCv2F8elZEMB+QNPeRsHLKpafNFyiKtv/VCxJvgJxmKWgOC5gnoicaK+OE2xn4QKakxYUIW3bHLc4pz5Hf25pfVFdcI5sw2bH5Est7I2N/CxS9EwDZ6M5djFA1K6ZqY3fT0WK1f6XS/DfR5MqpeUD3DHKyhqNMIzACBz8NwjmO4sONTWxQOGe+eRwiaN8bUF7a4+WjHARmw6sPilAcpKpsOiBHjlvYr4js/G69sXSyWCkzWzIBkQG5C4oqvOfSjL7J1xKUjLKD02iRxnJiF7CEjrNX43KYYxGvDMCkLn9pFEKCfnw/NoVYQcrQdUlIuS0c7jUcjOQPwGSWhZWA+jL5msS5lClzKyGF0pgNkQ7KTiUMhdM8MyRXrNOxoc+UM9Be4n3uPYRHcvvPJVlHOPaBdrmB+zPaOe3s5hElP2uJNl+5hFLxrAnB1v70Gcp8JusImTGK9E8Nqg81j2x2VuJkqFpMj2KaQc1bS3ZRks3TPDBbZhteOCaRvJZloks4eE3Q0kXtsZdQ0kvFC7EX66VO5KMijTEZn1/kt5upu5x
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(136003)(396003)(346002)(376002)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(478600001)(110136005)(64756008)(71200400001)(8936002)(8676002)(316002)(66446008)(91956017)(66946007)(76116006)(66476007)(66556008)(6486002)(2616005)(6512007)(6506007)(53546011)(26005)(83380400001)(2906002)(5660300002)(41300700001)(38070700009)(36756003)(38100700002)(122000001)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bENjbTlWSUxrUnkyV3RSNUNLbUFlMyt0cWZlNnlFcWIzZXZzejg4c3dlZjZ5?=
 =?utf-8?B?aHIvR3piaDR3YjhMNllObG82bnJwaVVTbmNldmJhOVU1SU9kVlljTUJDcmV3?=
 =?utf-8?B?RDdQcEswQnhTYmY4akZDc3dXdGJYRExMaWllMG51aFFIeDBnTDVFNHdqMm8x?=
 =?utf-8?B?eWpweHJpc0I4anBoOHhsWFJ4ejMzT1o4NWFWOW9saFl5U1pVTnpPbEFxcEdM?=
 =?utf-8?B?OTFlcUpNUnp5Q2EzN2RidnRFMlU5cC85YkZ1bzBpQ1JueG1YT3VISk5OTjVo?=
 =?utf-8?B?MXpkaEYweEM3VHBBNWgwUEh5QWlHUklWUW8wL3JueUxHUXRLblF4dlhsTlYv?=
 =?utf-8?B?bXJXeksvNnRGMmN4c3JvQmJDclJwK212TjV4NisrUnRRa2ZCNElQbzloMFlZ?=
 =?utf-8?B?VHhoN2tUbTNaaVc1YkZjR2JwSjRsbUMrWWN4WlNvSFpRdUJRN2ZpT3VXYmtS?=
 =?utf-8?B?MFMvcDZiZUlNdXV4d3lvTm9RVEdRQ2p0VkZDUHFCUDc4OExVYUlMeDFKckdL?=
 =?utf-8?B?dXhySVBsZEJPU3NXOUFuTDI2SE8rVWlEZ3lCaWc0VVdoMEcwMlNEMTVFRlZ1?=
 =?utf-8?B?MWpjK3E2NFdrMGxNY1pLYWdyeVpLYnQ4bUhOS1NNakEwczZCeDdLVWxLeWhT?=
 =?utf-8?B?YzlFZFNGR0d3b0ozS3NOWWVVOEZKdVkrTWk2UFR3b0hMSXBSMGxCS1N3MVhY?=
 =?utf-8?B?NkxlWFJtc2g4N0VGQTk1Mm9nWEVJaE0xMEtwSy9XQjlVQ0Vhamllc09pVy9S?=
 =?utf-8?B?YVVndzNyS0gyYkJnUVVIdktpWVBlaEM0T25NbFRERUc3UmxTTkhQVVV3NURp?=
 =?utf-8?B?bFVFYmYzbHBScXlMVWRvbjA1RjhFYTV5Rm5kZlFEU2pPYnJ4a3pUWHdTWG54?=
 =?utf-8?B?UEtDQjl1RlB6K3dhdmN5dXVWZUN6Y0ZlWEZZVitFVSt4NFJvREx3QTB5Z3Fu?=
 =?utf-8?B?K0lzRVpkVW1hSGZIaHJlVThvNGhpUmltZ0lYVTlNeXFabXFYSDdVeGVRcDdj?=
 =?utf-8?B?bEJkZ0N5eWFCT1FaVFhreUIwSzJaUitydWJxM0w5WnpHSVRYRGo0RWF0NExX?=
 =?utf-8?B?dWxBVWxGSnZXdWtIMU1odG5GcmlnZGgvMzJsRnZycFZ6MnFZUnNaOTJSeGRu?=
 =?utf-8?B?b0FDTERtVEd3Z0tMUm5kMVFxK3oxL2xUSWxGY1VlcDYrN1Q5UVJ1TmlLM0pU?=
 =?utf-8?B?Yit1cGJJRWZSOHJMQWJhSWtZMkRVMmJBZXBWejh6UllPaWNUbU5DdUladUxz?=
 =?utf-8?B?VXM0YkFSTFZQZ0hwRzJ5ak9LM2QwL0N0bW1qY3BJcVREQjNGYkVmNitVdlJl?=
 =?utf-8?B?R3hHQS9zVjFnNXFJMmVBSDNOS3lPQkRNTUZ3SFpSczVaUXlZU3d5dWNQTThZ?=
 =?utf-8?B?Rit0Y2hWUWQ3SHdPRmlzdWUxbkZUWEdMUjA1TWMwdVpTaG00bUZFT0dINTA0?=
 =?utf-8?B?L09aeVo3ZEdUQTl6MjhKWFhXOVBpS0UzQmFCMkxHbU1UTjJGd0VZemdnVFJ4?=
 =?utf-8?B?NythM3RzbnVOaFpSWGV6Nzhrc3dXN1V0M1gvY09nZFhDRE9mR1ZQemkwd2s0?=
 =?utf-8?B?TkNoZ0FQZ1F3cTlIb0xuei9MUDhXWm0zSFE1aFJmWVY5L2FBdlcrSVpTUTBL?=
 =?utf-8?B?aWFEaW9OR1MxaGJhd0w5MGVKQ012aHdpMUNwazNpbWVYT3ZySjFwcy95NmpM?=
 =?utf-8?B?ZjhxS2htUTNoWG1ndkFzcU5XWEpSQjk3MUpuWEwxUGl5TnRkRzlMR3pNOWZa?=
 =?utf-8?B?S3FURW40SWJtWDRCQXVPb011MnNLYko4am91Vk8zUVkvckVmWk1nOExXcUhx?=
 =?utf-8?B?SHFhUE5iOXJjVTAxS3ZSb25kN3o2WDFLSmRPS0hqamQ4RTFrRGNoNDVEdWNF?=
 =?utf-8?B?UnRJUVQwcHdRRHVWdHZvRGx4ZllBemk4MmFXYmVCamE4aVAvcFRQYXhtNnpm?=
 =?utf-8?B?RGJxOWlSaVlITE5nbDh6S0tQd0tDQ1dDbnBtcDRWT3JGSGZtWEh2NVhXSmlQ?=
 =?utf-8?B?YXREYWo4V2YxbXA4MjlhSXJFbDh5Wi83VGZkOUFud3UvenVXTGhNbGg2cG9G?=
 =?utf-8?B?UnhtSytMOHpkcmlPZlpERkpHQXhucTVXeHJrQmJWdXFMVGtUcXRLZE44S0Ja?=
 =?utf-8?B?QnVKY3QzcnV4amxubVY4dVBMUFdWQkcwVEh1UVpHZ2tCQXJUT1JNQzhQR1F4?=
 =?utf-8?B?aFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4294C4C04DBF8849847703AC0C99B432@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed0c41b2-0f4d-4f73-a004-08dc11a215b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2024 06:05:02.6011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H3ZirRy1fSP51dMi2GqLeI1RWbiaNkXRgrjYJpzrM4SxjPN4X+5wcOMRu+GvbpfVNb9YULL8f8T7k/XQxSWpv/k7ekt5CRbsG7wqUAxC8ck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5988
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

T24gVHVlLCAyMDI0LTAxLTA5IGF0IDEyOjU3ICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVs
LWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+ID4gT2YgSm91
bmkgSMO2Z2FuZGVyDQo+ID4gU2VudDogTW9uZGF5LCBEZWNlbWJlciAxOCwgMjAyMyA3OjUwIFBN
DQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBTdWJqZWN0OiBb
UEFUQ0ggNy83XSBkcm0vaTkxNS9wc3I6IERpc2FibGUgZWFybHkgdHJhbnNwb3J0IGJ5DQo+ID4g
ZGVmYXVsdA0KPiA+IA0KPiA+IEVhcmx5IHRyYW5zcG9ydCB2YWxpZGF0aW9uIGlzIGN1cnJlbnRs
eSBpbmNvbXBsZXRlLiBEdWUgdG8gdGhpcw0KPiA+IGRpc2FibGUgdGhlIGZlYXR1cmUgYnkgZGVm
YXVsdC4NCj4gPiANCj4gDQo+IFJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPg0KDQpUaGFuayB5b3UgTWlrYSBmb3IgcmV2aWV3aW5nIG15IHBhdGNoZXMuIFRo
aXMgd2hvbGUgc2V0IGlzIG5vdyBwdXNoZWQNCnRvIGRybS1pbnRlbC1uZXh0Lg0KDQpCUiwNCg0K
Sm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVy
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMyArKysNCj4gPiDCoDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IGMyOWZkNzA4NjA4YS4uNzgzNWFmZWU0MjgzIDEw
MDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4g
QEAgLTI4NTEsNiArMjg1MSw5IEBAIHZvaWQgaW50ZWxfcHNyX2luaXQoc3RydWN0IGludGVsX2Rw
DQo+ID4gKmludGVsX2RwKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqBlbHNlDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+cHNyLnNvdXJjZV9zdXBwb3J0ID0gdHJ1
ZTsNCj4gPiANCj4gPiArwqDCoMKgwqDCoMKgwqAvKiBEaXNhYmxlIGVhcmx5IHRyYW5zcG9ydCBm
b3Igbm93ICovDQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZHAtPnBzci5kZWJ1ZyB8PSBJOTE1
X1BTUl9ERUJVR19TVV9SRUdJT05fRVRfRElTQUJMRTsNCj4gPiArDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoC8qIFNldCBsaW5rX3N0YW5kYnkgeCBsaW5rX29mZiBkZWZhdWx0cyAqLw0KPiA+IMKgwqDC
oMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwgMTIpDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBGb3IgbmV3IHBsYXRmb3JtcyB1cCB0byBUR0wgbGV0
J3MgcmVzcGVjdCBWQlQNCj4gPiBiYWNrIGFnYWluICovDQo+ID4gLS0NCj4gPiAyLjM0LjENCj4g
DQoNCg==
