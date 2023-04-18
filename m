Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D866E6616
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 15:38:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9815B10E138;
	Tue, 18 Apr 2023 13:38:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B89AA10E138
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 13:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681825111; x=1713361111;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=c5wtqrCEBc3htbM6Yiq9LY4EJb2Ikz3RxcucAfFh/aY=;
 b=UXn5E33FZ+E6jhKe1AqhKcQCOlt6JhX7o1bFhQxF5VQD+xGdsG5x8rGa
 ejcfgdzUtK50NzdNvgXAUmvmCZDqLha4HP1mfKYvJ34kaHU9SmlYcjXCC
 UkyqsBnlQSGUgAqVa1zNsXJT/SX1LoQOFIaujpn0ab3pIiH+IGDLuwLnr
 OlC6AOrpbx6cOKluzTzM55esvjcylmq2JG6AXT/ksXooUnq9qsR7W1/jk
 QqVOxA+v0IfzHZCuz9qQRgytc0CI9EIj8upuXIqKbxAtQ4X5TsIpK2gX8
 k/bwmfvooJN/T2FFPLqBJvwh5ubbJ6OE/A0AzfzFrwS+soUyQYvz4zOiU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="410391859"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="410391859"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 06:38:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="721513345"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="721513345"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 18 Apr 2023 06:38:30 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 06:38:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 06:38:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 06:38:30 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 06:38:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G3sUtDZmznw71pInW0RpLmlMY1rBYfIgNKc6gYi7w5vvAWQKwUo/jq0OgW0K0BdYohetd82YyhOahEyYW2aynaifYkRoWuG2RYmUv8bOZEyeoPkQVDoKyc7kxFi1LilCnVORGQU8+Kws7Xkhax5xG/ztuwoYerC/4QANiQof1JdlOSMcdpS+gG96ZHp0Rw7vuqaHksj3ydnuAiv/mqcq9ITwmJDNvrf8XPWII/4+kV4WjWUWg1srGCY4DAD7IH/irCCyHscKffdIldPBSd+60ap7WuOYRnkbr48VfHtvTeytpqmGfQ8zM3FsjX3FFBGpXSSU0xfb6nq/brMdkS79nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c5wtqrCEBc3htbM6Yiq9LY4EJb2Ikz3RxcucAfFh/aY=;
 b=G+64AbIpZRoWjV8Wy6jIh6Bb0HDzEG6A7PIbYM1vAkin6K3Ez7ZsJcPs2V4pCrtkWDMU3aQx0rYqYpGOHWClxriFoVqyBDD+bHMkXRG73gxYFiz1fy2I77nf2ZgqIIjuk+V7mIUFQOyOfO/yihRMyagoYuTrN3GoTM7WPV2StebV8ndSZRlP0RfflntecuRT6VHjmwcI6ud1yGrVcCFpJmPBOUoPGO6GrGvooh9xP2rqT2y3yHiBEZzuQLZHmsF0HJiL16tI3OzRamTLlcMUkljxz1h8ZSMTDVkUhacR0P/d1aEdMiwxJdM/S2LGtqsIe3NE+J2eeJW6wgralbu1kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SJ0PR11MB4798.namprd11.prod.outlook.com (2603:10b6:a03:2d5::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 13:38:28 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::c845:cafb:c99b:c889]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::c845:cafb:c99b:c889%5]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 13:38:28 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dp_mst: Fix active port PLL selection for
 secondary MST streams
Thread-Index: AQHZbvfhRMa0f8dY60S1JNMDe/liMK8xGBhg
Date: Tue, 18 Apr 2023 13:38:27 +0000
Message-ID: <MW4PR11MB705407BDC7A22FF39ECC9072EF9D9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230414173800.590790-1-imre.deak@intel.com>
In-Reply-To: <20230414173800.590790-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SJ0PR11MB4798:EE_
x-ms-office365-filtering-correlation-id: 8f89420a-8d77-4670-ffd6-08db40123113
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: papVOlsHxsyM8HA+9c7MAik25ns6Me2xi7W01kdH2yvjOq5MtoiLbqzhBggisCZmTX1bx6bEamjgCFRaiJW+WQlPUQYe3jRMMgX1/P0vaaYDKlFFvM7hartoFirhicbXZqGb5jFVTnxWpTAGZvzP7Jfc1NA2apgniq93vZm7Q/BHwRAN+aXOQ96uEeuOd2JqIFB5hUNye/ozivR/eaZ4EBi15Xn/+LDlG4XZil6GrdTkMJsPjfQTAro/ySmIfCwmbUhkW37/b9hGXHq19BSou78mXvE70EP03P5x/j08NuXnj8IiJtaKd0GBHaRIXOaerpUitX+t/rQkZxy1kaj+r0RQVBYvQKjj0ZDyFqlhpCJOSLqXW8gbaBjj7lTFGv32xksFgQi3KFjkyBQeeKNkZUJ0f2km9PMEJcATAQ7TbsA80qZ58/wurwb23EuCYOwElMccHJsrEoMco0GyquB2H+g6xr+XRMw+nqAEJgfzLXYrR+mH2GT1VRMgWS/huXe0WitkeTf/Iq7hUXCP9dJCmzdOYI+f4Vf1GyB/t3P6As6W/Va3Y1PJUDPUkQK8xLHG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(376002)(39860400002)(396003)(451199021)(38100700002)(8936002)(8676002)(122000001)(38070700005)(5660300002)(2906002)(33656002)(86362001)(52536014)(55016003)(478600001)(7696005)(71200400001)(110136005)(186003)(966005)(9686003)(66946007)(53546011)(6506007)(76116006)(66476007)(66446008)(26005)(41300700001)(82960400001)(316002)(83380400001)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cjMxanhiUTlLUkpWUm4waW50TnNLcHMvRzBnbTF6TlJQWlVHSUhtaEQxU2Nh?=
 =?utf-8?B?Y21KUDgwcDJuK1E1WWVBbldQSThNaWd0eFdPQXRqeVlMTW9NRlNlZW5laG1P?=
 =?utf-8?B?T3M1ZEJZaWNKU2crWjFtS20wWWRtekdSUTZKUUNDRGJLYm1RTDRnTTdIaXNz?=
 =?utf-8?B?VUpTcVlhek1UNWQ2U2djSmRkQm5ueEFNR1NqRjRGL2JZOEFTUFpzSXI1MTdC?=
 =?utf-8?B?R3U0QVhpTkpaWFhOWWZ5OGFBdDlrU0d3c2ZqTGcvdGlrQ1g2aTV2R3MrZkp2?=
 =?utf-8?B?TGxqYTFFUXFEOHJPektGVjJ5YU5xbEswOHNpT09WdTNnWHlITndXZ1ZXQ2Jk?=
 =?utf-8?B?MTVCTFpkS09oWkFnRm0yVFBnU2thdGVKTWdITGhxb05QbWZkN2krbFk5dFox?=
 =?utf-8?B?UWhjamlSYWlIYTBMTDVwTXhSa2N6SlA3UzMvZlcvMWR5Y3ZjS1RtdHY0NEp2?=
 =?utf-8?B?SWF5TXBaazZrN0VGRTVMcFExczdmQmhWeGdNS2VFNU05aGxLZlovRGVwVjNs?=
 =?utf-8?B?aWVBZHdTcFZ6dU1UMEZKeGJIMUlud0t4R3d0bVpCYWh4Y1hCM1prd1Y3SzR4?=
 =?utf-8?B?UWQ3anV6ell6WURIK0lKeXNjQW1ZbFZDMGNvejU0SXVQQkE5UjdrT1FRWUsx?=
 =?utf-8?B?emZzQTE5RGRZc3N3ejBaN00wZ25iMlZrajB2cjdCeG1pVjBYTXRxSVNUWDRR?=
 =?utf-8?B?RzNOMWRyUnlmUEVyMHRFZ1RBTlhIOEdlOW9VTXNoTnVOOXE3cm1LaVl5RFJv?=
 =?utf-8?B?a3V6NFFNdVBMRWNRTGYrVkhjUDhRck1INWlxc3ByRnNsSDFJVlRlenVRY3lj?=
 =?utf-8?B?d2dYK00xanlVaXljNnErYkJZS2toelRPS1M5QXRlWndTTUE2d2pNTjhqS3Vr?=
 =?utf-8?B?MnUrVWgvUWRqb1BjbkowZEZWb21udTV3b0gvZXU5NjlwOWpWQS9WSkhTQXhi?=
 =?utf-8?B?c1ltSEloNFpwN2pyOVB6R2UwUG4rMmFWblIwamRzZFRWZFBBWmJwMnZ3WUhK?=
 =?utf-8?B?akhoK0RVTHRVYUxYd2lxT0Fzd1JGT1B5QUhJb05XT3lWdGJXYXFZd1hDV2h3?=
 =?utf-8?B?cTJZNkNMK00vZ3NUbUpRY3N1Nk9mTU50S054M1BESVd1SmpEaytJbWcvT3hO?=
 =?utf-8?B?TDAxdUV4U3pNUXZIUGd2K2hQdFlGM2NoZ1QwSVZrem5wNzJveDI4UFpjYUZM?=
 =?utf-8?B?ZW4zVS8zdXJEYWVFbENYS2dzL1BxUkRkd2pLdUtBSGxPdUdtSzliMjR5K0Q2?=
 =?utf-8?B?T3daaFNPL3dpaDFrWjRVUDYzdC9STUx5UnplT0xPRUJDRHRoU2VQWjY3SlBJ?=
 =?utf-8?B?SXhhM3hXeUJhZWZRL1FNZC8vQ3ZZTEpuYjkxUDVYN3A0R0x3eFE5L3V0TkRs?=
 =?utf-8?B?OWNqQ3NpTUtvdlVBSk9qb2M1TXhCWEF1WVhkNm43MEx5ZXZlenl6SGFXVTRv?=
 =?utf-8?B?S1R4UWt6RFpiTXFYdjBKZXhHTnF3S0U1ckpqVldzNlYrR1Q1ODlwQml5QnZN?=
 =?utf-8?B?VWxHQ0F2U2t5V25mS3cwVHJqOUNjTFk1L3RmSGpzT0kzaWNLWjQ3NzFBN3ox?=
 =?utf-8?B?aVcybXpyRzhmTFhsT3NhT2J6Si83a1RwWmtnNWdmb3NIVkxMMHZiTzI4SjhF?=
 =?utf-8?B?M0NOUWlUeUFIMTRadDhZQUdVYnR5bjlGcWE4czBMNHpnZ280VndKU0RWSzRG?=
 =?utf-8?B?M0llbjFCOFJqa3FiN2ZINW43L0VwMy9PQjd5aHN0Z1UvdVNSQ3ZyOHlGa3Jl?=
 =?utf-8?B?UVBqOW92dWpTRHRYUDY5WlJrb1orV2Z1MHpZY1ZvY2VHS3NRbHhQUTZPY2FB?=
 =?utf-8?B?cGF6a2p5TG1ybnM5eEZad2VGbFQ3N091aGlNK3NTRldGazVpSW9WTndQS090?=
 =?utf-8?B?ejRRcHh5NHpsUFdNaGpiQ0NORWlHUitNaHpvT2NFVWFMcDFCWUtjVXdmMXM4?=
 =?utf-8?B?enNya2dXa2xFWWM5NjJhbVpuQzlZMDlSRWVJN3Yzd0s1eDdjc2RDYkR6NWJn?=
 =?utf-8?B?SEd1VS95WVVRdnQ4emNsV2RMYmEwZVFPM2tqcGZhTVR4VFhSRmlTK2hUKzVD?=
 =?utf-8?B?ME9uREp4SGY5bW1aa25WdGJLeFJRRmt3Vi9tbFIwUFBWVzVFakxmMW5mbFdV?=
 =?utf-8?Q?3GhrjpMADDMD0tmCaysS8wZ43?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f89420a-8d77-4670-ffd6-08db40123113
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2023 13:38:27.9491 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kg7ZlROvCPSOV+TC/+2ioaMwXPAsSDweGeb7Otv6glqcLNfqw2cWgrfowIrpYegRsiPsMEMSX7L5T//DmiMz4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4798
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp_mst: Fix active port PLL
 selection for secondary MST streams
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZWFrLCBJbXJlIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIEFwcmlsIDE0LCAyMDIzIDg6MzggUE0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEthaG9sYSwgTWlrYSA8
bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L2RwX21z
dDogRml4IGFjdGl2ZSBwb3J0IFBMTCBzZWxlY3Rpb24gZm9yIHNlY29uZGFyeQ0KPiBNU1Qgc3Ry
ZWFtcw0KPiANCj4gVGhlIHBvcnQgUExMIHNlbGVjdGlvbiBuZWVkcyB0byBiZSB1cC10by1kYXRl
IGluIHRoZSBDUlRDIHN0YXRlIG9mIGJvdGggdGhlDQo+IHByaW1hcnkgYW5kIGFsbCBzZWNvbmRh
cnkgTVNUIHN0cmVhbXMuIFRoZSBjb21taXQgcmVtb3ZpbmcgdGhlIGVuY29kZXINCj4gdXBkYXRl
X3ByZXBhcmUvY29tcGxldGUgaG9va3MgKHNlZSBGaXhlczogYmVsb3cpLCBzdG9wcGVkIGRvaW5n
IHRoaXMgZm9yDQo+IHNlY29uZGFyeSBzdHJlYW1zLCBmaXggdGhpcyB1cC4NCj4gDQo+IEZpeGVz
OiAwZjc1MmIyMTc4YzkgKCJkcm0vaTkxNTogUmVtb3ZlIHRoZSBlbmNvZGVyDQo+IHVwZGF0ZV9w
cmVwYXJlKCkvY29tcGxldGUoKSBob29rcyIpDQo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy84MzM2DQo+IENjOiBNaWthIEthaG9sYSA8
bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eu
a2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVh
a0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYyAgICB8IDI3ICsrKysrKysrKysrKysrKy0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuaCAgICB8ICAzICsrKw0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyB8ICA3ICsrKysrKw0KPiAgMyBmaWxlcyBjaGFu
Z2VkLCAzMCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IGluZGV4IGVhMDEyZDdmMzc4ZjMuLjI5
ZTRiZmFiNDYzNTggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYw0KPiBAQCAtMzM0OSw2ICszMzQ5LDI1IEBAIHZvaWQgaW50ZWxfZGRpX3VwZGF0ZV9waXBl
KHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCWludGVsX2hkY3BfdXBk
YXRlX3BpcGUoc3RhdGUsIGVuY29kZXIsIGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpOyAgfQ0KPiAN
Cj4gK3ZvaWQgaW50ZWxfZGRpX3VwZGF0ZV9hY3RpdmVfZHBsbChzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwNCj4gKwkJCQkgIHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0K
PiArCQkJCSAgc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+ICt7DQo+ICsJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsNCj4gKwlzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+ICsJCWludGVsX2F0b21pY19nZXRf
bmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiArCXN0cnVjdCBpbnRlbF9jcnRjICpzbGF2
ZV9jcnRjOw0KPiArCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGk5MTUsIGVuY29k
ZXItPnBvcnQpOw0KPiArDQo+ICsJaWYgKCFpbnRlbF9waHlfaXNfdGMoaTkxNSwgcGh5KSkNCj4g
KwkJcmV0dXJuOw0KPiArDQo+ICsJaW50ZWxfdXBkYXRlX2FjdGl2ZV9kcGxsKHN0YXRlLCBjcnRj
LCBlbmNvZGVyKTsNCj4gKwlmb3JfZWFjaF9pbnRlbF9jcnRjX2luX3BpcGVfbWFzaygmaTkxNS0+
ZHJtLCBzbGF2ZV9jcnRjLA0KPiArDQo+IGludGVsX2NydGNfYmlnam9pbmVyX3NsYXZlX3BpcGVz
KGNydGNfc3RhdGUpKQ0KPiArCQlpbnRlbF91cGRhdGVfYWN0aXZlX2RwbGwoc3RhdGUsIHNsYXZl
X2NydGMsIGVuY29kZXIpOyB9DQo+ICsNCj4gIHN0YXRpYyB2b2lkDQo+ICBpbnRlbF9kZGlfcHJl
X3BsbF9lbmFibGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkgc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+IEBAIC0zMzYzLDE1ICszMzgyLDkgQEAgaW50
ZWxfZGRpX3ByZV9wbGxfZW5hYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gKnN0YXRl
LA0KPiAgCWlmIChpc190Y19wb3J0KSB7DQo+ICAJCXN0cnVjdCBpbnRlbF9jcnRjICptYXN0ZXJf
Y3J0YyA9DQo+ICAJCQl0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+IC0J
CXN0cnVjdCBpbnRlbF9jcnRjICpzbGF2ZV9jcnRjOw0KPiANCj4gIAkJaW50ZWxfdGNfcG9ydF9n
ZXRfbGluayhkaWdfcG9ydCwgY3J0Y19zdGF0ZS0+bGFuZV9jb3VudCk7DQo+IC0NCj4gLQkJaW50
ZWxfdXBkYXRlX2FjdGl2ZV9kcGxsKHN0YXRlLCBtYXN0ZXJfY3J0YywgZW5jb2Rlcik7DQo+IC0N
Cj4gLQkJZm9yX2VhY2hfaW50ZWxfY3J0Y19pbl9waXBlX21hc2soJmRldl9wcml2LT5kcm0sIHNs
YXZlX2NydGMsDQo+IC0NCj4gaW50ZWxfY3J0Y19iaWdqb2luZXJfc2xhdmVfcGlwZXMoY3J0Y19z
dGF0ZSkpDQo+IC0JCQlpbnRlbF91cGRhdGVfYWN0aXZlX2RwbGwoc3RhdGUsIHNsYXZlX2NydGMs
IGVuY29kZXIpOw0KPiArCQlpbnRlbF9kZGlfdXBkYXRlX2FjdGl2ZV9kcGxsKHN0YXRlLCBlbmNv
ZGVyLCBtYXN0ZXJfY3J0Yyk7DQo+ICAJfQ0KPiANCj4gIAltYWluX2xpbmtfYXV4X3Bvd2VyX2Rv
bWFpbl9nZXQoZGlnX3BvcnQsIGNydGNfc3RhdGUpOyBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmgNCj4gaW5kZXggYzg1ZTc0YWU2OGU0ZC4uMmJjMDM0MDQyYTkz
NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
aA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5oDQo+IEBA
IC03Miw1ICs3Miw4IEBAIHZvaWQgaW50ZWxfZGRpX3Nhbml0aXplX2VuY29kZXJfcGxsX21hcHBp
bmcoc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIpOyAgaW50IGludGVsX2RkaV9sZXZl
bChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAkJICAgIGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAgCQkgICAgaW50IGxhbmUpOw0KPiArdm9p
ZCBpbnRlbF9kZGlfdXBkYXRlX2FjdGl2ZV9kcGxsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiArCQkJCSAgc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICsJCQkJ
ICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+IA0KPiAgI2VuZGlmIC8qIF9fSU5URUxfRERJ
X0hfXyAqLw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9tc3QuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0
LmMNCj4gaW5kZXggYTg4Yjg1MmM0MzdjNC4uMmM0OWQ5YWI4NmEyYSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IEBAIC02NzQsNiArNjc0
LDEzIEBAIHN0YXRpYyB2b2lkIGludGVsX21zdF9wcmVfcGxsX2VuYWJsZV9kcChzdHJ1Y3QNCj4g
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAlpZiAoaW50ZWxfZHAtPmFjdGl2ZV9tc3Rf
bGlua3MgPT0gMCkNCj4gIAkJZGlnX3BvcnQtPmJhc2UucHJlX3BsbF9lbmFibGUoc3RhdGUsICZk
aWdfcG9ydC0+YmFzZSwNCj4gIAkJCQkJCSAgICBwaXBlX2NvbmZpZywgTlVMTCk7DQo+ICsJZWxz
ZQ0KPiArCQkvKg0KPiArCQkgKiBUaGUgcG9ydCBQTEwgc3RhdGUgbmVlZHMgdG8gZ2V0IHVwZGF0
ZWQgZm9yIHNlY29uZGFyeQ0KPiArCQkgKiBzdHJlYW1zIGFzIGZvciB0aGUgcHJpbWFyeSBzdHJl
YW0uDQo+ICsJCSAqLw0KPiArCQlpbnRlbF9kZGlfdXBkYXRlX2FjdGl2ZV9kcGxsKHN0YXRlLCAm
ZGlnX3BvcnQtPmJhc2UsDQo+ICsJCQkJCSAgICAgdG9faW50ZWxfY3J0YyhwaXBlX2NvbmZpZy0N
Cj4gPnVhcGkuY3J0YykpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIGludGVsX21zdF9wcmVf
ZW5hYmxlX2RwKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAtLQ0KPiAyLjM3
LjINCg0K
