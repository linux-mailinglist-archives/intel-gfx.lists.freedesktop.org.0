Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCD455F56C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 06:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC0C311AF05;
	Wed, 29 Jun 2022 04:56:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B42311B012
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 04:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656478600; x=1688014600;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Y0hVjkKtpOlzp4DWK3/thA4qhDQI7l2c3R8CmUpEaCk=;
 b=Gs/PEF9MvvJmZ/lQ8XV/7Ij/+a6MOvNSdN87ayuSqP4IMFMXNfkgvfIu
 s92BnHKKtU3Or9pJo1SARQxIVCflFM4TudrVNPXSBpOpwJSqaZ3Ol+5SW
 w+wEOnk2+C4+JgO2bWhXsp5x6xuxXR0Za1+LRFtCevhSYnZv7HlUj/YgL
 /y2ALzgCPJkvA7+W2IUmFBrsdcirOg8LpUBQRZ3cQkLWV/2fY281T4bYE
 nLLXCzb7m4s3itiqRIQwnX9TreYJWiPpkzHlEcESoN3q5S8WNT3cZ8Z5n
 hEw6HXaOGjQ2HnDfJPNN2oikb1hL++dUOBsCYG7RgB4Jw58qXHTzQotof A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="270685745"
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="270685745"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 21:56:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="680347262"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Jun 2022 21:56:39 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 21:56:39 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 21:56:39 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 21:56:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N6+nQJhJtKSYuxRyS4z/LkOFbxoWnP7d4ktiUL4FrgG+3SUWMtE2RIETbX7vxWNsvPW6aSQ6+V/uZKP5RApmUkzFLKUArHZ3rrXX05azzHAHs3E77PiKRoJ7prGw5Q5RWU43VL2xDrp18saQhS3kPgkjCtbDLkIrlSaUjijcNpYqq34LipE5jlqq8C8zR6DfR8CTNPxSCwJQG8IFcUsmRfseqKmf5gdvk+3AmoW1c0ZDqDLv2hJzQxClruXEBzw6GNbLxKJoqaVIDOOuPYfV833My2I5qEIoO10nQrzQQ2/FEKRXCXDtHPaQRdMObAGGr+fWIHKpkEI+c48BV5zFJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y0hVjkKtpOlzp4DWK3/thA4qhDQI7l2c3R8CmUpEaCk=;
 b=Bi0XH2ecQtIto5a45bvHM2e8iq/thb7Qd1T9ftKV5eBCTDyFFP4XWv/93+3XkfZIMYlDovdhfyAi40EKBK03i86nQ5wYEwRPBl/UbwmelLD9o7NyXcKZXhC+fYBj8BDN5KTv1K2TouJ37+1Eh3b9g1VWmoVCLSyhwl76O2nSh9wT4ofw5hmUP8doPMYkmR089UOwOjAW6pilxGFNGdzfuk/a/Ywu+/PpjcB4vGRE96djl8ECfI/7Zu6BlSzEjOgzGjWoNKD9ch850T7D6NGipLLUXspDGNcolBCuftSG/oEmcSJoVUOzbz+wpSgW9ygLmRMxXZR6ul9mrwQxWyYpSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BL0PR11MB3331.namprd11.prod.outlook.com (2603:10b6:208:65::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5373.18; Wed, 29 Jun 2022 04:56:37 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5373.018; Wed, 29 Jun 2022
 04:56:37 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: Check for Low voltage IO only
 for eDP
Thread-Index: AQHYh30yqYhQgYZElUORZCNvXZ07zK1lv53ggAAXg4CAAAKY4A==
Date: Wed, 29 Jun 2022 04:56:37 +0000
Message-ID: <DM6PR11MB31778CC92D8D5B2D482DA603BABB9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220624034631.533690-1-ankit.k.nautiyal@intel.com>
 <DM6PR11MB31771D6FC2961EB03EC7C2CFBABB9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <a202b003-c306-9737-0254-1415e971a951@intel.com>
In-Reply-To: <a202b003-c306-9737-0254-1415e971a951@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fad75dab-ad18-4373-e218-08da598bbf60
x-ms-traffictypediagnostic: BL0PR11MB3331:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2z8ONIydu3UQJhmz58tAvTgDJlu5rO2twDk33NWiAxXM81ftquwnAT3D2qlgEQgY/AOeaNeQsYfiFh96knUI0OjYA/5QtQNAAvpQoqphQqKpKSqamJEqcJGP8TsRaibIo0DmsCwQLbWum/uy4KW1weLG9q3SvUYq0++6UAst0ttvJCw05gXb9RoaWIKpRCZWf1qf9BuUydtPzcVHLwSFUZVfSaRxWI4DdzO9FZx93vdyJ3KH+517qrApbi9vCKIOnBT5vby4bMkrC7DrNs347ihtArCaCOuZVgfCeSIZJWc1GszAYJBzsqcxjHPTgVaf5l1uqo1tb/A25wmug+QKAknPQua9vruwVnHAgw5ATJblNnv3GWgI/XrxL6j5m23UTZGTbEZT7uHoavtKDCpM/NO88JXoO7GKwMDQc91g5I460wJV+5EqmmPAjIrNnQLzxv25IPvNc2CERH+KkyZoBXkEPJw1VvBTZguactd3vQ+gwOzBgoRoh/1N1qzSE5pubE4A9abGn4ibeGBOUNNwdVxYoyH+bUZLU2co0USuWvjxa1za/twKJI+K4irFSu7EqDfSaF+aeA0SbV5Zl/znCMlylBPW/e8DMjv7mDHJV+rMPnuwJak5gliTbrazP1oHl3tqqq/YnOdm4KnqXGIG427z97VSWLhDX9VH/LRZn7t0s8SEmV3rzrELtDNNcMJRcFD1/3zekxMzhE5pduYxnm8FBB4s+/6UYtgrmE2AZ+QOLer9KACu0B42r3Smsg0ReLAwGSePc1MctAwR1jz24UpB53oBZ1/UP3huS9fBvJE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(376002)(39860400002)(396003)(346002)(5660300002)(55016003)(4744005)(186003)(2906002)(71200400001)(86362001)(66946007)(66476007)(66556008)(66446008)(52536014)(64756008)(76116006)(82960400001)(122000001)(38070700005)(8676002)(316002)(110136005)(38100700002)(8936002)(55236004)(6506007)(53546011)(33656002)(7696005)(26005)(9686003)(478600001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0FnSUVZb2dSY0pqRm01RFhScnpSbkM0V29DRXRXYm5jd3NBZkFTQ01BeHFy?=
 =?utf-8?B?Ly9VbDJZUWdJWHNJK1FIYnhOYmtxM2pYT3FlR1JyekdvM0pPcjNLdE9mOUNG?=
 =?utf-8?B?S2ZyMmIvSE92MHo0VE9BSVVrY0N3bUlyVllsWTdVdzRsSkl5U01IM0NhT1hW?=
 =?utf-8?B?WUdQZ0swRlQyYS9GOEdXaVBTa2NvVFJhcTRtVHNIS2djTzkzZVZETGdDNmx3?=
 =?utf-8?B?T3NqUHhKdjE5Yk93WGpYR2VJWTQxS0NKR1RxSmUra0kweENWbzlBZUJncERT?=
 =?utf-8?B?RTJaYS9RS0NKSEIwR0pNbWVJNDlFNWpMamV2RkMxd1M5cFlYRlhNazIvbUdh?=
 =?utf-8?B?SXJxb2hDNjdxejd5alMrL0V0SFlzVUhDVlZVQ2VQRkNhdmVFenRxczFSaW9F?=
 =?utf-8?B?TGdMc1duMDhwcU44cnhYS2Z0WHdQdUZGRWpNRS91M1VFdStaV3ZEWnV5R1Rm?=
 =?utf-8?B?c21zRnh5YVhtU0JjMWI2am5FYmU3SVltaVNOc0ZRR0x0SVVMaUxnWWk0RDZE?=
 =?utf-8?B?L1lnOWZZYy82cmJDVWNQc3NwQmIya2E1VTNhYlA5VHNtQ1pOckdmQjRRYzFB?=
 =?utf-8?B?VVpiUEFGNjRJUG9Oa0UrWW9GZUtKcHQ1azBSV09CNVFyZStFeCs4ZkN2Z3Ju?=
 =?utf-8?B?VGNPWURsbk1rYit0VTJyZU44RHpmNEZpNGJrNStydDZFbE1tSFhWVll5REV2?=
 =?utf-8?B?QkllZmJJOEpUeml6NlFZM3I5bnJaUGEyL3NJNG1xYU1TV0ZtRnRsa2hkNmNo?=
 =?utf-8?B?eUQ1dTg5a3VJOWdtQ25SMW9RS05zN3NsNWkzNjhSS1pCaWVoSkFsUFJsb0RG?=
 =?utf-8?B?cDhLZlFHM1htNm51R0FBL2xOb0VFZmtBVVhkOWhGeGtEWUM3RU5wY2xqaU5W?=
 =?utf-8?B?VkQ3cVJYZG81T0JNeVRkQkNNbmlPNDJoNEtLWnhHcW0yVE5SUFdpcWZYbHRF?=
 =?utf-8?B?V3BLWk5CVGxHY0pjV0xCTllHSzVqekZKRFZkeHc5cnUxUkpSU3E2ekVOTlpL?=
 =?utf-8?B?M2hlUXNLQnJjMUhWdVJPNnhnZjkveEVVd3pXZ2V3c0Zrbkk1OTZNb0FQd0RI?=
 =?utf-8?B?bE1zUW1pKzdRMVBLVEdvUzI4c2FTWHFXY2JySkp1N2xuYWVDMEUvUnlMczVq?=
 =?utf-8?B?S2hscU1MbGE2c3dBT1ZZZ1VzcENuTThWUjIxSVREOGlKYVQyOTdBSWFaNW1C?=
 =?utf-8?B?Rjh6eVhsZEN5R2pCOUpRTnhmWUxBNFYyY055dkQ4SG1pc0Q5S3M5UW9HWnhx?=
 =?utf-8?B?SHRubGw5eTJOODM1Y0hxWndoTm5vamJxc0VtWDJUUXB0YnlUd2lJaDBRYnNv?=
 =?utf-8?B?ZThMeXVBV1RyK0hlK3ZzVUtEbW9kd0VkTVprQmtpR1ErRzNuYmFwQ21xNmp4?=
 =?utf-8?B?WTk3SDZSY1l3ZC9yZEwrMGtDZFNYdzR4ZVkwNURzbU4vS1ZGb2VqelJDcFdR?=
 =?utf-8?B?Mk5ZSHBVem5PaUd6OWRSL0pYbFRnc0F6L2lpM0hMRWZ5WU5nOTYwNnQvb284?=
 =?utf-8?B?dGZaVFoyTTYvYkVFQVgxOWRXclRFdzZ6SzlxZzNoeW51Yll2MFNOR2xkTisy?=
 =?utf-8?B?SkFYSEtETWppdlg1M2w4U0hYc2ZUUUZtYzN4b1REV2I0VjdycDhTUWZ3WTl4?=
 =?utf-8?B?SWEzT0RWeDJvZWtjSVBpeXVuZFJra2RnTThhTVJiTGo5aVNIdjZONW5yN0lq?=
 =?utf-8?B?bzJVcVVZREExUGJ5azFESWV2anFPZnZ1K0VhTU9kSUYxY05nYnd5d1ZxeUk2?=
 =?utf-8?B?YnErM3ZkTHJuUTZVdC91bFF5VmFSc2owYlpwS0JIUXpEOHNkQzJzSnQ5K0w3?=
 =?utf-8?B?b21UWVNLRi9RU2RJanVrVkIwUkpjTTBjSWgyTG5xZGFYbFozRjBzWXVaTGs0?=
 =?utf-8?B?akZiSDEvYUV2aVcwRnN6VUFtUUJMNmVzTGdPeVY5YkhxeUkxKzZMelhMYnAx?=
 =?utf-8?B?cjlXQVNxbmxETWI3aVVuM29sRkxNZmxhZk5IK09sTmZYVHB0eGJNaHNIc1pz?=
 =?utf-8?B?d1hxWndub05jVjRURWpKMFdMa0xMRkpKMjFkSnRyay9wSFJnV0tCbStQeGhR?=
 =?utf-8?B?ZmtJSkJwZC9rTjRCVzBWN3pMZE1OTHpDZGR5VFlnanhJcGVhZVlaMHl0Yitp?=
 =?utf-8?Q?SYTR8zEjNIhuzpKlyYGaRwMto?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fad75dab-ad18-4373-e218-08da598bbf60
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2022 04:56:37.2001 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CY6+k4mJ9cKI804ppLWN2OZWV0z2L2vyFxDE++d5eEDjPyuzq+LJxUSETyZSVRXjh3h+FcKkOL8MM+UfC6Fg5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3331
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Check for Low voltage IO only
 for eDP
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

PiBPbiA2LzI5LzIwMjIgODo1NSBBTSwgTXVydGh5LCBBcnVuIFIgd3JvdGU6DQo+ID4+IC0JaWYg
KGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgfHwgaXNfbG93X3ZvbHRhZ2Vfc2t1KGRldl9wcml2
LCBwaHkpKQ0KPiA+PiArCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiA+PiAgIAkJ
cmV0dXJuIDU0MDAwMDsNCj4gPiBTaG91bGRuJ3QgdGhlIGxvdyB2b2x0YWdlIGNoZWNrIGJlIGZv
ciBib3RoIGVEUCBhbmQgaXMgbG93IHZvbHRhZ2Ugc2t1Pw0KPiANCj4gRm9yIEpTUC9FSEwgdGhl
cmUgaXMgU09DIFBIWSByZXN0cmljdGlvbiBmb3IgQ29tbyBwaHkgcG9ydCB3aXRoIGVEUCB0bw0K
PiBzdXBwb3J0IG9ubHkgSEJSMiwgNS40R0h6Lg0KPiANCj4gQnV0IHRoZSBEUCBjYW4gc3VwcG9y
dCBIQlIzIDguMSBHSHouIEJzcGVjOiAzMjI0Nw0KPiANCj4gU28gZm9yIGVEUCBmb3IgdGhpcyBw
bGF0Zm9ybSB3ZSBkbyBub3QgY2hlY2sgZm9yIGxvdyB2b2x0YWdlIElPIHBvcnQuDQo+IA0KSXRz
IGJldHRlciB0byBhZGQgdGhpcyBhcyBhIGNvbW1lbnQgaW4gdGhlIGNvZGUuDQpVcG9uIGFkZGlu
ZyB0aGlzIGluIGNvbW1lbnRzDQpSZXZpZXdlZC1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5yLm11
cnRoeUBpbnRlbC5jb20+DQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0t
LS0tLS0tLS0tLS0tLS0tLS0tDQo=
