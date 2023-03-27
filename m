Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 501D86CA2F0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 13:58:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8AC110E396;
	Mon, 27 Mar 2023 11:58:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA6A510E396
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 11:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679918285; x=1711454285;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VbUcZr8OqLEZDbnMcS7B/NfqDxwAlc3sDUAuZTudnv4=;
 b=hVgLevG88FpMXuOek3tqD1/QoZHoTDos/QjYTqkS2UMdG8Y5YtF4zXTQ
 x5sll1z/vERNLEzeSC2dfiXANY9I0EdmcCl08DBuy2nom2h2VZbyt1yhd
 CSaQPABRA2XmSYWqO5N1YXiwx104j6li25ZXUJy3gHHaFUkr/D1U6ta1X
 9LFcGGuOKS876RKp9l+OvpkG+TD/a19AR2SQ+E/zHwrvi+ezXpG3PSQqx
 U9YCJDCG3abwNc+5dvakr4bpmabGI6m+2dW/s0tmjZrRm1nbc4/OO/24T
 mozl5lGxZBNrfapkknQo6cCzrD4QrFM5tVjyrQK3yRfG+CvK7XbpDo3Q4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="367991887"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="367991887"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 04:58:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="660819037"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="660819037"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 27 Mar 2023 04:58:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 04:58:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 04:58:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 04:58:03 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 04:57:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B9JNFGmkCBQGh2br2RpDR6w7J8hclyRrcbsSUgka56KxgfUxwMPSX7l7VFEekMD0+fKpPMFUhOQ0g610EnL7VmFR7J0k3waleIFKDjucg0YeGxo/rH2bnRpU65dq07HhX8B6B9lOgzNjgcoeUhDY4DuBlfIFq+i1sKx3xneXjs/dNBC+kjBi39mP9tjwyU0dZcOrSmtOduIARdPkerEQZmEvNBviZJ6VxJKkDp4hMBjfIvQzMcXIxgwskEQ6aawbVH1UhkkYXuR4siaUxMBaZCj7dllp4dububQ7azoZ1ej8gCTXHOVn1JAr+yWXbDJKJcCVkC1Zuwzjh/p5M4wpdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VbUcZr8OqLEZDbnMcS7B/NfqDxwAlc3sDUAuZTudnv4=;
 b=cwQWm3ioQKc3lD+86yVJENUgPrgOb92eypkodFovMUDGPOq9X821KpD24nGfgxeM+VJ3ztauWKOP2esJ0IVlEyLwqUmM2og14rSoRJVh9Fy6MoQ1RFIqVV7QLByAszTXprr1JVTl8Gd4pfPtvnZ1F0jDBxvHNwGKug2g5UJ/k+5JvhennzRNPXH4zVH3iEpuguczbNgQjhmxkpGMVNm6PsC9VyOzsgkAW5ul4aLHAvw3UJ82g3WHjBgBJHEisiWf7qT0oV9tbHiWWTLUfcJXhPc3tZTTWXS6lWuWbevhT0zrYIk5M6ZfV1I/3ZQP5FHZgmg25YA0rs6/P0iKlFV62g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS0PR11MB7649.namprd11.prod.outlook.com (2603:10b6:8:146::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Mon, 27 Mar
 2023 11:57:48 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%6]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 11:57:47 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 19/29] drm/i915/tc: Add TC PHY hook to get
 the TC-cold blocking power domain
Thread-Index: AQHZXZLRajplwXfTAEeRfwenP8/nl68Oi3HA
Date: Mon, 27 Mar 2023 11:57:47 +0000
Message-ID: <MW4PR11MB7054F92174F349D555FCE4ADEF8B9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-20-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-20-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS0PR11MB7649:EE_
x-ms-office365-filtering-correlation-id: a0b07af0-83ef-4e5b-a686-08db2eba7bca
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t0PgamBU7VOXNrzCWyWGcZzcTeNJgU0he0kgENQ4C6YDYsrB99nOLvLLXacEOY0nTXVqITx4yKKzbXzSnjlL9ZLt3XqoR2562fdVaTELF8NdDKW8hFcVLRucCzAWmgiDINpGIFOwsiQqLEvmqGI1mevexfhn7msH6edA7qqf+o4j2KRMCyMd3PpXossjmbIWG76gKsN/V4yLm28Yq1Z98yBsc+2AnbpOywuoA8bFtr6Rbf4M+eWMnOjhzmHabbH/2btPqRP2Fdmw8GQQO1qMRUgmnR+TUcdIhw5z1vjwdWJB+HBbve3Fo6rJvZ67sk3A+e6IFiXeDE3007nSmHH978nDp71wvDo3lWgvjRzybY7c9g1Qx9oNJVV+2YlsKfOZTx38Uo1q1M/5pV/ILWqOSQLsuK/o8qIKtzNhzHPhCuhhQSDbhHl4ctb15OCWXMZGTcO6f5O4TSoIC7aFWb/zyy/T5RqebirI/Gj40YsYUWOVq1DKg7zceYDBEywogVLi/taQzokODUnDrr3+Ce/g+6dwz5PFBf51Ci8yMZ6h38rsBgYrsyFX3FQwKgXD94ltpOklI21vWEFQxRMu8ROY0ixjxkJt06fiBtfE2mIvd3aZ+ugxKq65pshdXR/LH59Jo1xnj1BG+WkUXIcqjlCYRw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(136003)(376002)(396003)(451199021)(478600001)(71200400001)(7696005)(41300700001)(110136005)(9686003)(316002)(6506007)(55016003)(26005)(53546011)(66446008)(76116006)(66946007)(8676002)(66556008)(66476007)(64756008)(186003)(33656002)(83380400001)(2906002)(52536014)(122000001)(5660300002)(38100700002)(38070700005)(86362001)(8936002)(82960400001)(15583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b2VhNHlCdHJZVjZGUU5zOVNFeXRFem9YSGxjMTU2RTJwYkxpakVRY1VKUThZ?=
 =?utf-8?B?ZHpNQ1JBM3hiSlVJN1Q1bzBZT2t1eDZLb1RwdnQvTk9ORzlaZUZjNDBuWTJ5?=
 =?utf-8?B?bDNyMVo1N0piWUdTbW9SUklvZ3dLWHRkYWRhR2NzczJEYytjYlc0cXN2VmdS?=
 =?utf-8?B?b1gyeDN0cjZ3alJMTFV2ZGJycTU5Um00c3ZEeTJhZk1KUkxRWnN3S2xVOXRP?=
 =?utf-8?B?N2F1d3ZuaWJaZGhWNDlvVTNuYU8xd01OS1VRaVo3NGs1RnBTQVdMUnpkUXNR?=
 =?utf-8?B?Z3g5eDNSaHA3RjZFaS8rWmtJck9HVkhDTTdvdk4wQ2d2TG5RWmY0Z3lDNE5u?=
 =?utf-8?B?UlBEOWJqcWM2Ulhwb0NPZ0VrRFhzanJJdWtsQnRPeGxHbkFqdTRvbjUyRkM1?=
 =?utf-8?B?OFRvQldYODRIeEdvSk5BU3M3L2g1ako3RTUycFBaUCtTNjFoT0w0YjZ4QzRw?=
 =?utf-8?B?R0hKZHNRYjBWNi9WT01BcDVzcTdidTVPbUZCVnIzTlhQclhZaTBXU2pCMmJW?=
 =?utf-8?B?SDVaVjY4dU9BK04yam5DdDZsQXMvQ3RGWXpWdnVOL2MraHpiRm1RdWV3ZWN6?=
 =?utf-8?B?OGUrSXMwNDRVazhJVUduRVZlbnRwVW14d0ZCT1Zwb1ZHMW1FemsvTXRodlNH?=
 =?utf-8?B?aDF1NWVVeWJwdlRHQUpEbXVWcGR6OGlkT3Z1bm9sOWc4cmZURGNYOHdjU3ds?=
 =?utf-8?B?N3kyR2lCVXFVK2lyb2ZDQ1BOYzFUeUs5b2NzTXNYWjk1STVjZDF0RUFhSDJ2?=
 =?utf-8?B?aE1XS2ltK3hEd0Z3RkFXSXp2eUlRRDVuVlVieDJRRWNHWUZhMWZUcXQxOVM3?=
 =?utf-8?B?RG9tamdoM0JacUNobWtKSWZBWUdla3B3OHNnUE5reCsyRUZXdXM5bjQ2SW1E?=
 =?utf-8?B?cVRiSkhZT09WWUsvSGp2RkRUNTRlSWdBazZJblQvZk5zTVVCTkpwdDNxNURZ?=
 =?utf-8?B?Z050VHhLRDdXOWNVTzZBYzhJYWU2UnhPRGx1bld0OExYSERFOG1STHZDcFBV?=
 =?utf-8?B?NXl3bDJ2QlJ6RUpCM0VLdFNhY1NnZnU4eENvTThhWEVGTS9FR0hodlV3Y3Fv?=
 =?utf-8?B?S0RjWi9Gc21VL0hRQUZTYTZtaHlna2dveXVZT25kMEk3NE1xTlBHMmVnTVU1?=
 =?utf-8?B?eGNrZ1RUb0dqdUhsT0dDSW10T0MweUJjdmpueC9oQm82dTZiMkUwN25LNlpy?=
 =?utf-8?B?Z29vQzRoQUNjUVFKdlZ0N2lhZjdHZFU4Q0E2NUhSaFZTU1hzWk9PdGR4WUJs?=
 =?utf-8?B?Vmt0REtxR0VvVmxRdnJ5VWdrNU80aythbWJIM2YzU0hJbjF4V3NIZEJ5TWc3?=
 =?utf-8?B?eS9xWGY3ZFhDcVl0NkUvL3hlWWdTSDlTRzV0TzdoZE56eEtGMTlYdVY4RHVE?=
 =?utf-8?B?Sm0veHFnWk1tN0VCVFZQNzNwZXFhUDVaL0s0ZlQzZUJFeVhZMzJUWktWN1Qw?=
 =?utf-8?B?aEtEbWdOK1IvT0hZNjdKRVQ4T3BFcW1lNTVhTitORFhyTmFtc2tWRGErNXNF?=
 =?utf-8?B?eWxQZjB6d2ZPMDNTTVFacWxIbzhZZFVPZit2Z3dpTXBvNGcrN3pZRWZVd0FT?=
 =?utf-8?B?ZGZvWWN6dkN4VWRJVFZia2pZVVFXdzNxMmZEUjBibWswWi9UdDdxc1ZtR1NH?=
 =?utf-8?B?VUkxLy9BcEZKS1lNOXUvVDRvSGlJdUFQRGlOanhRazdRV0lPT1JnYlIvaHVK?=
 =?utf-8?B?QUlmdTIwVjVIMTl6UzZLbjZVcWVhcklDY1kzNTduam5iRm1VM2V1aHZoanNr?=
 =?utf-8?B?bHd6NnBMRHJycHp3L2pmVDg2cTF2eEUrOEErRW42WS80OTROaCtuK3R1Tzh5?=
 =?utf-8?B?eWI2V0JxYlNjNTEyOUNMMVZXOW12YUZuOFJlSTBhL1hkZ2luMTM2eDB2ZU1a?=
 =?utf-8?B?alowWVRnNlZzWEJUL25rbUtvQkEvNTJMRDRrK0tMRlduRDJmRE9rMHN4c0ZE?=
 =?utf-8?B?UkYxVkdGSHg3cDYrZWtPTGtkS1JzaUNrdDBlaE14NE5VUUpETnQ4c01yRElV?=
 =?utf-8?B?MzV0YmZTU2k2Q0FNM29EZXVRUWVsNnJJRlRMcE5qMFhGWDF5WU5OYzd2VjRh?=
 =?utf-8?B?NmpGNnpaTGRZajB6ckRXTHhEWjJCV0RFWER2dVlmZ0cvUTRjOHlQKzRTN2Qz?=
 =?utf-8?Q?ueVfNBShGOb/rMARaXPDz6cHi?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0b07af0-83ef-4e5b-a686-08db2eba7bca
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 11:57:47.8261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JUdick6hz2xo9yLYPSEbToipnrs/d241k2H5Aky3gxrRhPkV2lk9c6WdFImc19L87mD71S10O0qkbEl1PvvWBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7649
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 19/29] drm/i915/tc: Add TC PHY hook to get
 the TC-cold blocking power domain
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MTkvMjldIGRybS9pOTE1L3RjOiBBZGQgVEMgUEhZIGhvb2sgdG8gZ2V0IHRoZSBUQy0NCj4gY29s
ZCBibG9ja2luZyBwb3dlciBkb21haW4NCj4gDQo+IEluc3RlYWQgb2YgdGhlIGNvcnJlc3BvbmRp
bmcgaWYgbGFkZGVyLCBhZGQgYSBUQyBQSFkgaG9vayB0byBnZXQgdGhlIHBsYXRmb3JtDQo+IGFu
ZCBUQyBtb2RlIHNwZWNpZmljIHBvd2VyIGRvbWFpbiB1c2VkIGZvciBibG9ja2luZyB0aGUgVEMt
Y29sZCBwb3dlciBzdGF0ZS4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5r
YWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFr
QGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmMgfCA3MyArKysrKysrKysrKysrKysrKysrKy0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwg
NTkgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IGluZGV4IDk0MzY2MDA0NGUzN2EuLmU2ODM0NmM1
ZTYwMzYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4g
QEAgLTI1LDYgKzI1LDcgQEAgZW51bSB0Y19wb3J0X21vZGUgew0KPiAgc3RydWN0IGludGVsX3Rj
X3BvcnQ7DQo+IA0KPiAgc3RydWN0IGludGVsX3RjX3BoeV9vcHMgew0KPiArCWVudW0gaW50ZWxf
ZGlzcGxheV9wb3dlcl9kb21haW4gKCpjb2xkX29mZl9kb21haW4pKHN0cnVjdA0KPiAraW50ZWxf
dGNfcG9ydCAqdGMpOw0KPiAgCXUzMiAoKmhwZF9saXZlX3N0YXR1cykoc3RydWN0IGludGVsX3Rj
X3BvcnQgKnRjKTsNCj4gIAlib29sICgqaXNfcmVhZHkpKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0
Yyk7DQo+ICAJYm9vbCAoKmlzX293bmVkKShzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMpOyBAQCAt
NTMsNiArNTQsOCBAQCBzdHJ1Y3QNCj4gaW50ZWxfdGNfcG9ydCB7DQo+ICAJdTggcGh5X2ZpYV9p
ZHg7DQo+ICB9Ow0KPiANCj4gK3N0YXRpYyBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWlu
DQo+ICt0Y19waHlfY29sZF9vZmZfZG9tYWluKHN0cnVjdCBpbnRlbF90Y19wb3J0ICopOw0KPiAg
c3RhdGljIHUzMiB0Y19waHlfaHBkX2xpdmVfc3RhdHVzKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0
Yyk7ICBzdGF0aWMgYm9vbA0KPiB0Y19waHlfaXNfcmVhZHkoc3RydWN0IGludGVsX3RjX3BvcnQg
KnRjKTsgIHN0YXRpYyBib29sDQo+IHRjX3BoeV90YWtlX293bmVyc2hpcChzdHJ1Y3QgaW50ZWxf
dGNfcG9ydCAqdGMsIGJvb2wgdGFrZSk7IEBAIC0xMTMsMjAgKzExNiw4DQo+IEBAIGJvb2wgaW50
ZWxfdGNfY29sZF9yZXF1aXJlc19hdXhfcHcoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGln
X3BvcnQpDQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19w
b3J0LT5iYXNlLmJhc2UuZGV2KTsNCj4gIAlzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMgPSB0b190
Y19wb3J0KGRpZ19wb3J0KTsNCj4gDQo+IC0JcmV0dXJuIChESVNQTEFZX1ZFUihpOTE1KSA9PSAx
MSAmJiB0Yy0+bGVnYWN5X3BvcnQpIHx8DQo+IC0JCUlTX0FMREVSTEFLRV9QKGk5MTUpOw0KPiAt
fQ0KPiAtDQo+IC1zdGF0aWMgZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbg0KPiAtdGNf
cGh5X2NvbGRfb2ZmX2RvbWFpbihzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMpIC17DQo+IC0Jc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0Y190b19pOTE1KHRjKTsNCj4gLQlzdHJ1Y3Qg
aW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IHRjLT5kaWdfcG9ydDsNCj4gLQ0KPiAtCWlm
ICh0Yy0+bW9kZSA9PSBUQ19QT1JUX1RCVF9BTFQgfHwNCj4gIWludGVsX3RjX2NvbGRfcmVxdWly
ZXNfYXV4X3B3KGRpZ19wb3J0KSkNCj4gLQkJcmV0dXJuIFBPV0VSX0RPTUFJTl9UQ19DT0xEX09G
RjsNCj4gLQ0KPiAtCXJldHVybiBpbnRlbF9kaXNwbGF5X3Bvd2VyX2xlZ2FjeV9hdXhfZG9tYWlu
KGk5MTUsIGRpZ19wb3J0LQ0KPiA+YXV4X2NoKTsNCj4gKwlyZXR1cm4gdGNfcGh5X2NvbGRfb2Zm
X2RvbWFpbih0YykgPT0NCj4gKwkgICAgICAgaW50ZWxfZGlzcGxheV9wb3dlcl9sZWdhY3lfYXV4
X2RvbWFpbihpOTE1LCBkaWdfcG9ydC0+YXV4X2NoKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgaW50
ZWxfd2FrZXJlZl90DQo+IEBAIC0zMzQsNiArMzI1LDE4IEBAIHN0YXRpYyB2b2lkIHRjX3BvcnRf
Zml4dXBfbGVnYWN5X2ZsYWcoc3RydWN0DQo+IGludGVsX3RjX3BvcnQgKnRjLA0KPiAgICogSUNM
IFRDIFBIWSBoYW5kbGVycw0KPiAgICogLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAgICovDQo+ICtz
dGF0aWMgZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbg0KPiAraWNsX3RjX3BoeV9jb2xk
X29mZl9kb21haW4oc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKSB7DQo+ICsJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUgPSB0Y190b19pOTE1KHRjKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCA9IHRjLT5kaWdfcG9ydDsNCj4gKw0KPiArCWlmICh0Yy0+bGVn
YWN5X3BvcnQpDQo+ICsJCXJldHVybiBpbnRlbF9kaXNwbGF5X3Bvd2VyX2xlZ2FjeV9hdXhfZG9t
YWluKGk5MTUsIGRpZ19wb3J0LQ0KPiA+YXV4X2NoKTsNCj4gKw0KPiArCXJldHVybiBQT1dFUl9E
T01BSU5fVENfQ09MRF9PRkY7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyB1MzIgaWNsX3RjX3BoeV9o
cGRfbGl2ZV9zdGF0dXMoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKSAgew0KPiAgCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gdGNfdG9faTkxNSh0Yyk7IEBAIC01NDAsNiArNTQzLDI3
DQo+IEBAIHN0YXRpYyB2b2lkIGljbF90Y19waHlfZGlzY29ubmVjdChzdHJ1Y3QgaW50ZWxfdGNf
cG9ydCAqdGMpICB9DQo+IA0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF90Y19waHlfb3Bz
IGljbF90Y19waHlfb3BzID0gew0KPiArCS5jb2xkX29mZl9kb21haW4gPSBpY2xfdGNfcGh5X2Nv
bGRfb2ZmX2RvbWFpbiwNCj4gKwkuaHBkX2xpdmVfc3RhdHVzID0gaWNsX3RjX3BoeV9ocGRfbGl2
ZV9zdGF0dXMsDQo+ICsJLmlzX3JlYWR5ID0gaWNsX3RjX3BoeV9pc19yZWFkeSwNCj4gKwkuaXNf
b3duZWQgPSBpY2xfdGNfcGh5X2lzX293bmVkLA0KPiArCS5nZXRfaHdfc3RhdGUgPSBpY2xfdGNf
cGh5X2dldF9od19zdGF0ZSwNCj4gKwkuY29ubmVjdCA9IGljbF90Y19waHlfY29ubmVjdCwNCj4g
KwkuZGlzY29ubmVjdCA9IGljbF90Y19waHlfZGlzY29ubmVjdCwNCj4gK307DQo+ICsNCj4gKy8q
Kg0KPiArICogVEdMIFRDIFBIWSBoYW5kbGVycw0KPiArICogLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
PiArICovDQo+ICtzdGF0aWMgZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbg0KPiArdGds
X3RjX3BoeV9jb2xkX29mZl9kb21haW4oc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKSB7DQo+ICsJ
cmV0dXJuIFBPV0VSX0RPTUFJTl9UQ19DT0xEX09GRjsNCj4gK30NCj4gKw0KPiArc3RhdGljIGNv
bnN0IHN0cnVjdCBpbnRlbF90Y19waHlfb3BzIHRnbF90Y19waHlfb3BzID0gew0KPiArCS5jb2xk
X29mZl9kb21haW4gPSB0Z2xfdGNfcGh5X2NvbGRfb2ZmX2RvbWFpbiwNCj4gIAkuaHBkX2xpdmVf
c3RhdHVzID0gaWNsX3RjX3BoeV9ocGRfbGl2ZV9zdGF0dXMsDQo+ICAJLmlzX3JlYWR5ID0gaWNs
X3RjX3BoeV9pc19yZWFkeSwNCj4gIAkuaXNfb3duZWQgPSBpY2xfdGNfcGh5X2lzX293bmVkLA0K
PiBAQCAtNTUyLDYgKzU3NiwxOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX3RjX3BoeV9v
cHMgaWNsX3RjX3BoeV9vcHMgPSB7DQo+ICAgKiBBRExQIFRDIFBIWSBoYW5kbGVycw0KPiAgICog
LS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gICAqLw0KPiArc3RhdGljIGVudW0gaW50ZWxfZGlzcGxh
eV9wb3dlcl9kb21haW4NCj4gK2FkbHBfdGNfcGh5X2NvbGRfb2ZmX2RvbWFpbihzdHJ1Y3QgaW50
ZWxfdGNfcG9ydCAqdGMpIHsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRj
X3RvX2k5MTUodGMpOw0KPiArCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0g
dGMtPmRpZ19wb3J0Ow0KPiArDQo+ICsJaWYgKHRjLT5tb2RlICE9IFRDX1BPUlRfVEJUX0FMVCkN
Cj4gKwkJcmV0dXJuIGludGVsX2Rpc3BsYXlfcG93ZXJfbGVnYWN5X2F1eF9kb21haW4oaTkxNSwg
ZGlnX3BvcnQtDQo+ID5hdXhfY2gpOw0KPiArDQo+ICsJcmV0dXJuIFBPV0VSX0RPTUFJTl9UQ19D
T0xEX09GRjsNCj4gK30NCj4gKw0KPiAgc3RhdGljIHUzMiBhZGxwX3RjX3BoeV9ocGRfbGl2ZV9z
dGF0dXMoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKSAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0gdGNfdG9faTkxNSh0Yyk7IEBAIC02MjQsNiArNjYwLDcgQEANCj4gc3Rh
dGljIGJvb2wgYWRscF90Y19waHlfaXNfb3duZWQoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKSAg
fQ0KPiANCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfdGNfcGh5X29wcyBhZGxwX3RjX3Bo
eV9vcHMgPSB7DQo+ICsJLmNvbGRfb2ZmX2RvbWFpbiA9IGFkbHBfdGNfcGh5X2NvbGRfb2ZmX2Rv
bWFpbiwNCj4gIAkuaHBkX2xpdmVfc3RhdHVzID0gYWRscF90Y19waHlfaHBkX2xpdmVfc3RhdHVz
LA0KPiAgCS5pc19yZWFkeSA9IGFkbHBfdGNfcGh5X2lzX3JlYWR5LA0KPiAgCS5pc19vd25lZCA9
IGFkbHBfdGNfcGh5X2lzX293bmVkLA0KPiBAQCAtNjM2LDYgKzY3MywxMiBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGludGVsX3RjX3BoeV9vcHMgYWRscF90Y19waHlfb3BzID0NCj4gew0KPiAgICog
R2VuZXJpYyBUQyBQSFkgaGFuZGxlcnMNCj4gICAqIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+
ICAgKi8NCj4gK3N0YXRpYyBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluDQo+ICt0Y19w
aHlfY29sZF9vZmZfZG9tYWluKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0Yykgew0KPiArCXJldHVy
biB0Yy0+cGh5X29wcy0+Y29sZF9vZmZfZG9tYWluKHRjKTsgfQ0KPiArDQo+ICBzdGF0aWMgdTMy
IHRjX3BoeV9ocGRfbGl2ZV9zdGF0dXMoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKSAgew0KPiAg
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdGNfdG9faTkxNSh0Yyk7IEBAIC0xMjQ2
LDYgKzEyODksOA0KPiBAQCBpbnQgaW50ZWxfdGNfcG9ydF9pbml0KHN0cnVjdCBpbnRlbF9kaWdp
dGFsX3BvcnQgKmRpZ19wb3J0LCBib29sIGlzX2xlZ2FjeSkNCj4gDQo+ICAJaWYgKERJU1BMQVlf
VkVSKGk5MTUpID49IDEzKQ0KPiAgCQl0Yy0+cGh5X29wcyA9ICZhZGxwX3RjX3BoeV9vcHM7DQo+
ICsJZWxzZSBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTIpDQo+ICsJCXRjLT5waHlfb3BzID0g
JnRnbF90Y19waHlfb3BzOw0KPiAgCWVsc2UNCj4gIAkJdGMtPnBoeV9vcHMgPSAmaWNsX3RjX3Bo
eV9vcHM7DQo+IA0KPiAtLQ0KPiAyLjM3LjENCg0K
