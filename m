Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D70F36B321C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 00:38:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 602AE10E2B6;
	Thu,  9 Mar 2023 23:38:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E793510E2B6
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 23:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678405082; x=1709941082;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=C5yA2ifF47LmDxHQl1GordtKkhFParHcLgVzoSf6ER4=;
 b=jElsySktUx49pDnZHe1Pso5GXw7IktkvLgTjBk4RWVsxtuXrjkumS0kr
 hqKFj9sfRFLnQnSQrWRChJ3uZ1qMK4vrcBT0n0Qh9VMA2tc3iE5mywnDF
 qDIMnjevCvktTItFBpl1cgVWVW9+RLx/7lmIxj6yofB/Fw7r+APcKUcqJ
 OwaQGI3tbueT6w/Ez7GgFkFxm9yvJtvb3ZDPciij8xIc/jLs9RG2hZEur
 +3HU8TBgL6EPqRG9pgk6WmoksqAGVQbbxapIFyn8g6Ca/vUceYZgUW/ri
 kRrNVs2j8TEAyzi/Hs4HrMjPGI7UbhWJBvtOmw5siVSAKYG51DJl9s7z9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="338154526"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="338154526"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 15:38:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="787792993"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="787792993"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 09 Mar 2023 15:38:02 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 15:38:01 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 15:38:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 15:38:01 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 15:38:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cOum4Ps2XD8r3S2d8GnLDnqs8SsyX7mwxyuf1tGW3dvjcRSVIJFc5ko6fRImdjeaLbMU+yEIem5nSWTY2ZZwh6pxaokWaZ3yiyldpCw5CEnPOId8ClRyoFhA3ilEU06JNbboQS38tW3ByeQKi4l9wSf/FXc4PSn0Nw2oR3z0HMCd3uNs52Q23955X8VnZpKL/SNxKbfrk8TIYQve7OCo4E4pbQUR33NKp+mCn9pxUKEHpo7wlBAcDUOlvAe8LXaNEsYpeUGRP38TrQPdcAyvpqlThxGyVeSfWgvxcwJKR9v/1s7F/ZLjH7VFQe4EcHy9146gqczBtLf3W1a2AyhcGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C5yA2ifF47LmDxHQl1GordtKkhFParHcLgVzoSf6ER4=;
 b=HW9LfIQXecrVfvI1N04fPPhc1AqY5y/I8DItDVsiuWugYF7SwQkohXVFnWBDJekBZdNwLDMHfBjBIJRWlZMYKbBfRqC77Xif6aEX8bPJLZZLt834LzOfvm7twTsTy4JeENm+H2WAh8UTOaQYGG5BmJoPhGqNWTK9Xdh0QZqtc9rG4KUBAgZFF+BG6ZoLq8qMFXzyhKQis6XlaBjC+BmoC7Z7juI3H3O7vTkSwutlez2LMbckpVy+idx/VdQd3N3R14Lkv9gWIHWejgrp4InA1mKPfEF6kqAPxoWk/0E8zstu6tKTtArTsppaO2VPitPjPN7knuKrxkB32BXEWO750A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SJ0PR11MB6717.namprd11.prod.outlook.com (2603:10b6:a03:44f::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.19; Thu, 9 Mar 2023 23:37:59 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::4cdb:78a7:917e:88e5]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::4cdb:78a7:917e:88e5%9]) with mapi id 15.20.6178.019; Thu, 9 Mar 2023
 23:37:58 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 5/5] drm/i915/guc: Move guc_log_relay_chan
 debugfs path to uc
Thread-Index: AQHZCVPEU447bPjaWk2EdxJ0riUh3a5irt0AgJD+1oA=
Date: Thu, 9 Mar 2023 23:37:58 +0000
Message-ID: <f3a957f02bb137d9eb2363470334458d63ffcba7.camel@intel.com>
References: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
 <20221206092100.274195-6-alan.previn.teres.alexis@intel.com>
 <87pmcvcek3.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87pmcvcek3.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SJ0PR11MB6717:EE_
x-ms-office365-filtering-correlation-id: c5c1fbdf-79ff-4614-80d6-08db20f750d2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LAN/JbDtvV9SfNE9kdr70/qTAbBFsuYioGrcFp6yqBVx0Hv9y6QdG3DNE7O5bsT3b39+qHwO3XsTSmXJSppRPf0nZpCVMLTB3FUTON7reSVN/+oZLE6SqpVitdCM2aW6+MoxkYO7u+hnMxwj8qpE8QRwEAJIzfggJxFFeHZb0Oaxze++gdzE3nJ/1T23LlYKpHGgP6ffqT69ZQ7S81CLtpzlQVpJ+zRxb+drf96AxIB5yH9kygPlkuJ1+lRiQn0dwX4hg+Yr8tCCye5mvLG56RVdbFvMotBYD8KTB+tECCNkVd+T4eteLVi508d1ugwoX1MUK4JCI6FNza2P7xCdsHXYAx6rj9PHfYCVC+17PEChknCBagBMSOf8DFxNEt1YoIXGBfV2ufthsAKtqGGA7kVKYQdMAISpAap9qjMlgWghtG3oSN1yypvly7BZEb7l9W63IIUw/O1ZuMmAa0EqHdac2ZymV+fSuBKpKVxq16oEuI8sDj+/By3J4tNpw34srIaIErr1nldKRhn2n3RJ36qXdRNJCkKvOYzUuOmpGu/1MpjuNdN5FHxDJuadZ44Lolq/i29Ca9WE7OoyEcBuovWJLeDh4XEL0Oqr3RNGKgcjlVw+x2XdLsQSOLh6BIGFxxbERfVGeaBgop7j1q1vcROsFk/vwtHMqY059U2ZK7afML/wu62299aSpeehTNMYnbc/hXQouQv3fK3Xa0EBxg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(346002)(136003)(396003)(376002)(366004)(451199018)(38070700005)(66946007)(2906002)(5660300002)(26005)(8676002)(6862004)(36756003)(4744005)(8936002)(4326008)(66446008)(66556008)(66476007)(64756008)(37006003)(76116006)(91956017)(316002)(6636002)(86362001)(71200400001)(478600001)(6486002)(122000001)(38100700002)(82960400001)(6506007)(41300700001)(6512007)(2616005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TGxPemJpTkJaaW9BM2ZzKzdMSmswN1Z2WVJqd1NiWHBRQWpWdUxiMmkvRFVk?=
 =?utf-8?B?ZnFxT29yNVdaZWlCV1hCeTEyNzY2cTZ2TCszdzQ2bWdVd3gyMVQrVDVyTXBa?=
 =?utf-8?B?YmFyRWFLdGJML0RFb24vMEZ1N2Nud0g1MmU0c1hEZnZGOTdjZ2xlVFp1cFBq?=
 =?utf-8?B?U3RRNG9QRklPMzZocGtSR3pCcUdFOEp0SCtHVVJ6UEJTaGdpOVl6cUNSR3Ft?=
 =?utf-8?B?ZGUvYzFaeVF3QmtDYmRTNW5hdlM5SFZyUUREdWtNRmhDOCtQaURlZk9Hb2dC?=
 =?utf-8?B?V2xMYUptRXFsaTUyYm9zTGhBU0VsYzNGSVJYdWN3VzRmanA2K2llK2VHTFBM?=
 =?utf-8?B?MFFTQ2ViYitlSklDWGxDUDZZV2dSdHdwZWdKdVcyZGU2ckhGN284bVJqeEV4?=
 =?utf-8?B?QmswVHVpS1FQd2ZhaVlIUXVadWhGeDFHc01WUHpYa1dIYjZDdDJKRGRNVkd3?=
 =?utf-8?B?UG00aG9RNDhSS2xTVVR3NXlaOC81bmpKcGM2WnF2VW42Qnc3N1FheUI3NVdK?=
 =?utf-8?B?MGtuWmorRDV5VXZ3RmlTTS9UZERnS2FONWRTMHo1cER0WUt0NURyblcrRWFq?=
 =?utf-8?B?THRMWms5bXg0K3dVZTZmZHpFVzlKVnZyaDJDUStKUnZNS01jYk54L3Y1YVJD?=
 =?utf-8?B?bklSSWtoRFlpODNsb2JCejJFd0N2UzNnaWRVdUZPN0hEVXhNTmdBTTd4NElI?=
 =?utf-8?B?S3poVXBIeG44MVFJTHZmbXdPL3JHZ3I4Ty9EWHluMUV4NXYrY0RHN0VqSnA3?=
 =?utf-8?B?OXhwZldySmpYbnREcml2bWhNWUgyTUZoSlljTjgzd2RkNnFlcVFZdlM0RHJ5?=
 =?utf-8?B?UEgzclFFUjZvMk1ab3RtNkJNemQ4NzhKQ2wyOVR4OTliQ2tWL3c5ZW9YdlJ1?=
 =?utf-8?B?aERVbzY1UkNDMlR0S2JpRnBSeVdsYnRKeHFZOUZyQ3hHV1AyQXVwaW1CMVFX?=
 =?utf-8?B?emRlUlBGcTFqYUwrZGdocHdRZm9zdDIyWmNLNEVUR2c4ZUxxdEJoUEZnblp1?=
 =?utf-8?B?RTBRYjV4RWRlVFQxWkpYdGlra3FXQmNmbWQwdUJCTm5jYVoyWnJaMHdKTnhR?=
 =?utf-8?B?Uk1vWlErcStlYVUwTEcvV0JtcVdSNDJpR2Y0Um9PNHBZbVVyUlRjWHNZOThI?=
 =?utf-8?B?K2w4eFQzcnRJUUIzblIraytjem1yZ2dsOWtJV0MrRy9XSnRXVEhpejA2YUQ2?=
 =?utf-8?B?YUwzQ0VQUFg2VnR5ZHRUMHZBSWhWdXZBN3hIRjJlajU3MVVBUjAyNjZLZmlr?=
 =?utf-8?B?Z05xL2JiZ1hXY3FWa0hDMWlhWEFuN1RaY094SFhuMEhJYnN2V04rT2RHU0FJ?=
 =?utf-8?B?cmpQak1iRi9hMTRPNVJKMVF6aUk1OFlCa1hZMkh3bFVkTGJLNU1uWmJiMW9J?=
 =?utf-8?B?R3dFTExLS05aSlUrUk5TSzQxRE9zME9KTTFYend5a2xFYlBvdHgxQUh4YVNy?=
 =?utf-8?B?bjVHV1I5V2JDdG5GSm5mUUFtRTNQSlJ4eHJnVjZ4Y2cwMHNuQ0wvQTBaWmor?=
 =?utf-8?B?RHJyMkVkUjNVdGwrZ3RqbjRVMWt5RktwRmVCTzVXUUN1d2hHRkoxajE5bDZR?=
 =?utf-8?B?endiUCtVSXF3RWEwQ3dNUURsdGIxbDN5c2UxbjNtWFRtU1podlc2VWFKeHl3?=
 =?utf-8?B?QWs1eEFhTzc0UlM0c3RQRVUxL01ENFNmVHR4b1JOc1ZBZ2JFUEZleW9lYUdt?=
 =?utf-8?B?NWtZeVlQdm10S1ZBQWZYQk5WMk9MZ3dFVzJnM1cyc3lQQ2h4cmwzbFdmbFFD?=
 =?utf-8?B?TWRpRW5ETFE0dEU5Qy8xNnQ5aG02ZzdYM21SV3pzZXlaNE0zRzhlREtHL0hZ?=
 =?utf-8?B?SnVhaDk4VDBmeFFyOTkwWEtLZXZSYzRMSkw3bmNCb0pMYk1aUVhPNkpIWDJu?=
 =?utf-8?B?K2x3Tll4Tmc0Y2RqZkNxbmRSem1TMjJMSlFQZGo4MzZEdVB1WHpHR21GbzM5?=
 =?utf-8?B?OU54V2ZpcnNycmMrL1Z4NzArWUlSUHBOSXhhOVZJcHBkWDhxSC9UcmIxL3BK?=
 =?utf-8?B?NXdrWi9qQTJWb2RoZjczRDludTZFaXBZSTh1NEpkbGpoM0huRTFhWjFMVkt6?=
 =?utf-8?B?NjFiQVNDRFdQT1RoYUZ3bTF5WEU1M1REVVk1NWh2bHdDRHlLdk55Y0dPeGY3?=
 =?utf-8?B?OTlvYWQwNitnVW5ZR1Y3WDZ6T2QxYmg4MktoR1dhZkxESThIdW4vWWlOQ1lK?=
 =?utf-8?Q?FAMxHLDWQFVcDxdI3q3ZgLO/+CbMYib+5RW0ZCIPptHo?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <03D7B34217884648AA97450F31728D28@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5c1fbdf-79ff-4614-80d6-08db20f750d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2023 23:37:58.7729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M3415VwPmQ197e+eh5br/44jBMLrpveD0ESO2P9c/DRulSlOHHcwHZFqn3OxgBZXHNsZd4rfx8jwXCKezKnOh5EKK+Pv+gBV+QUKcBFMhviHiwo/qCZS2+k/jn+s2YzF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6717
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 5/5] drm/i915/guc: Move
 guc_log_relay_chan debugfs path to uc
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

T24gV2VkLCAyMDIyLTEyLTA3IGF0IDA5OjI0IC0wODAwLCBEaXhpdCwgQXNodXRvc2ggd3JvdGU6
DQo+IE9uIFR1ZSwgMDYgRGVjIDIwMjIgMDE6MjE6MDAgLTA4MDAsIEFsYW4gUHJldmluIHdyb3Rl
Og0KPiA+IA0KPiA+IA0KYWxhbjogc25pcA0KDQo+ID4gCWludGVsX2d0X2RlYnVnZnNfcmVnaXN0
ZXJfZmlsZXMocm9vdCwgZmlsZXMsIEFSUkFZX1NJWkUoZmlsZXMpLCB1Yyk7DQo+ID4gDQo+ID4g
CWludGVsX2d1Y19kZWJ1Z2ZzX3JlZ2lzdGVyKCZ1Yy0+Z3VjLCByb290KTsNCj4gDQo+IEFmdGVy
IG1vdmluZyB0aGUgbGluZSBhYm92ZSB0byBpbnRlbF9ndWNfZGVidWdmc19yZWdpc3RlciwgdGhp
cyBpczoNCj4gDQo+IFJldmlld2VkLWJ5OiBBc2h1dG9zaCBEaXhpdCA8YXNodXRvc2guZGl4aXRA
aW50ZWwuY29tPg0KDQphbGFuOiBUaGFua3MgQXNodXRvc2ggLSB3aWxsIGZpeCB0aGlzIGFjY29y
ZGluZ2x5Lg0K
