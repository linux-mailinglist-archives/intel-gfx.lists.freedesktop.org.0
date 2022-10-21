Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEB4607FCA
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 22:31:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3407F10E66C;
	Fri, 21 Oct 2022 20:31:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD70310E66C
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 20:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666384285; x=1697920285;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+6A1LmT+sAXgIHZq7nRGwlNugIjRiVfXgQsU58sufaM=;
 b=DOMkQMVGQLJ/WNnAMm6WBCZZs9ZDAjziLWpu242JNlZ9OfNu+Qp9KUbQ
 PZvbMmhSfRWCZFzs47kEg/hN2cIbmtg90UdYA2rKFIYtKODXYZ7vRwaEL
 NwYLL89lxPg6zpXMK55pply1CZ2N+XYE714J5CvfoiKap7jD6GW0tgZWf
 814UEPXYzZyuoECzRVf8aBzESiDGAH/1fmSemN0Hq1/xOAvRR/QcF7++R
 uvdkI1VN7S9QXwCwO/6MkAaSG1znFzAky0vSP1AgmdL4EgKIimsMSzl6m
 DrhkG0tT/zdbB7QwhVOb9BnO1CmO4n/DVf93t3LSVIbXYcpeadOS+ptKq A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="294496798"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="294496798"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 13:31:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="699492841"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="699492841"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 21 Oct 2022 13:31:24 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 13:31:24 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 13:31:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 21 Oct 2022 13:31:23 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 21 Oct 2022 13:31:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bOgKmBfJTJr+4HEel5jdq8UyMMI3WawuCswoOBQ3S8Zy80hdsXsStp+IQP71nNQk2JVrK2oh+467hRxy34eDvtXbAYkJEgwoY1J4iAmQbgKxktqJNoxO0ogmyhRcgxcsE7z/XOhjKxNlkW47n6A8dhQosKRS29NkCrjNeYS+3xkn/1/mufcT69llbSUSg4SpkNcWI8hb8gSoyrtIcVegy56DH9eYPaMO+lEdWFWkd/96zEtj17P/JjN4aAkoM0WfYrXEiMoWG9FPuofoQzfnL1b7nLzv8QgT4+s34h1uI2kJHk77X5oWPdBRrpQvVYTVK/VoX7FHdwmtOPfaeuB6AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+6A1LmT+sAXgIHZq7nRGwlNugIjRiVfXgQsU58sufaM=;
 b=cvutylecOqJshnj7ZL0SGFGBEfCGZCpaVuxFykaC9pHIjkUty9KxRNGXZncMt7gaFxr/WpTq/uij24gK0zjdVqXPfAMGMIfUancl2kW1+/WmsqCPPEEyF2K3S1f+07FOEdL7/16O50O13ddDeOPTkO1lGvzJFlrcca2Fj4LCzVg4WUdP+8YIXHrxcvGX9Lup69ovFhJtC4T7jYxm/ZHUHlIQqKhV6fDCzZRIHbBguNXx/CVeFxB26amPT94LMXFSrvZckxgzrvqRTULMcfglRC9o7folKmqAQypRmdzFTJUQS6NBV+2Jtk26zv+thkFGUyt15tv3hPX5L5jLIUnJUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by DS0PR11MB7631.namprd11.prod.outlook.com
 (2603:10b6:8:14e::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Fri, 21 Oct
 2022 20:31:22 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5723.033; Fri, 21 Oct 2022
 20:31:22 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/4] drm/i915/display: Move squash_ctl
 register programming to its own function
Thread-Index: AQHY5OL0QSv67T9RqEOeWVCxi7jIcK4YiAuAgADFmZA=
Date: Fri, 21 Oct 2022 20:31:21 +0000
Message-ID: <CY4PR1101MB2166074200E1FC14C24567FCF82D9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221021002024.390052-1-anusha.srivatsa@intel.com>
 <20221021002024.390052-5-anusha.srivatsa@intel.com>
 <87sfjhfu14.fsf@intel.com>
In-Reply-To: <87sfjhfu14.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|DS0PR11MB7631:EE_
x-ms-office365-filtering-correlation-id: cdebcffe-a71c-4d57-f057-08dab3a33799
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XiZuv5aJ4p6nmJuDLuM/eTWuTaue6jgJpvjnrcdUYUwjmnKME/ibvfVGBC6/ZGn/tB54j5IbFZf4NvRlE/s9R3QP/enC4EQ45V3AE5s+J5ADKfzGxA6HoMrh3bVl3+8SKE//SfbG+hdOlEq9SxlB+tqLVv4CVGIfSoKhedOwQHU6X8Hn/RsGsp0Cet5ek3uPB5WnozexNwDcTbeXZ8R0o61fTAgdRuXhF+SQUSvsQ6i6VinCy8sA4cJtMPkhq+J4NHPAnIycSs+j/OzuN0ETon0I1ufmb4ltFu3o4pSRG1+cXlqdC+X9/k3MEINMz3W+m9E7SKwfhfnMbtOpq56GE/81B8CfVNOde3pbBVNYR1wKSeXdnuwDA5dNDO5dX1e2cMEd3q5zCoozdUJ53oWTenflxeIJ3fWOvF8mF9FkaSBEXQhjD4kpx64xuTIG7Sv3xTo5DX9e2z4Be4xZT9wm3jNm5g0JFUgMi5+0LPGqwcUcK0lYftarJutBOwra/UDnYYBRvd3/s/hbntdxZUd0scwhQ525azc9fWm2hDUK1wLllHHep7R2NudvWpG6IiChn7RlDsrs+K0ExNYYlzU0K87LViEp7LVN1AvF1AfM2NO81zIRiSOB4o+KjbImsTCa7BVP4LkLyFobkbAx0S4t+9UMe6srbZFntU633ixcz4fFoQOLKqirXDC1UB3xL1TmBDx0jI1SJzEnHyziUwi06ylHlrhj6j4/V8jMkKZ8pkXOKeI7Cn4FCYf6+BNhN0CRtEzbAdZ7z1HTsVqEtH64Ow==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(366004)(136003)(346002)(451199015)(33656002)(7696005)(9686003)(2906002)(186003)(316002)(38100700002)(83380400001)(86362001)(122000001)(38070700005)(82960400001)(8676002)(55016003)(66556008)(66476007)(52536014)(110136005)(64756008)(66946007)(41300700001)(4326008)(66446008)(8936002)(5660300002)(71200400001)(76116006)(478600001)(26005)(53546011)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WEV0NVBDekJlM0NsaTZOa0pGUTFrL1gxSnFmYVNRRTNBelA4WDVrSlE4WlY0?=
 =?utf-8?B?NU8wU3QwNVBpTjFRMlJTUjN0dFhZdUNsRlN4M2ZoV2czQjBCY2JzNWh4Tlgw?=
 =?utf-8?B?VUNIcVowSnQyUlYxQlNqL1FEOWxrMDdzMnNhSXZIUU1DcGJaalVYd1JzT3Bq?=
 =?utf-8?B?WTN0Q250NmUwYThlT0liZjVTUnJ0NUxGczI5RXpSbzNicEdzUmVWOC8zRDhO?=
 =?utf-8?B?TU1qWWxXWFFGNjZTd3FGTVRTSmgxb2dENmVyN2VseTZwdys0Sm0xcWUvaVlh?=
 =?utf-8?B?blhYR0JsdGVoVlJtSG50YnA0RDRaZytScjJnYTF0SHRsR3g5dkdydEdyYm9J?=
 =?utf-8?B?Rjdra0V2YzFPazFLeVBZMGVyTkxpYWdsT09jUTA5bkFwMUI1bWNJVUs1RDNi?=
 =?utf-8?B?UVZaTWJEcjh4MHJqTXNHUENLWDVkV1pnNUd6bVA5Z29qWWo4bzJpYjBIUGdR?=
 =?utf-8?B?UklkSXQ5SklJa0NXdVhiV1NVUmRMNTM4N2tremh4SDAwdml5eEpwQ1RwdWVx?=
 =?utf-8?B?MDYrMWg4NzB5eDZRM09wQUhvWEtMMXZ3UTFickI4ZVRPb2twYUw2Y0dYTDdN?=
 =?utf-8?B?blJhREFIM2lHVGtKNDBRbVlBVGs1Q0l0c1BIbzlSZzI1YUt0MDVCb3hlZVpQ?=
 =?utf-8?B?Y1gvaW5uaEdLMFJ4TmVzYlRZbUw1aUNwMU5DaER3bXA4aFlLMWxta1VSL1B3?=
 =?utf-8?B?ZmhuQlI2bW1DVFRCOTVERjNTWTUwb1gwLzZrU1BlZFA0eWlremV2N05OOWdZ?=
 =?utf-8?B?dXlpWk0zRzhZbWI1cm5tekNmbHdVakNCZWp2cklmS1Q0bzdvS2VMLzJJRmo2?=
 =?utf-8?B?NUxnQlpMWTI0YjUxT0ZxdmJPbU8yaS9qZWdwQnpoY1BMcExhVW5WV3dpcVp5?=
 =?utf-8?B?UzE3TWZKYkY5MUlaQzZMeitrZDF2ZU9lM1hySnNZa2dUeEx4Zkc5dkZKZWlU?=
 =?utf-8?B?N2I2bmlsLzZldUEyVUpTdS9aTUNFL0QrSE1BdnpGTGVYWGtKVlpDY0dUZEZ2?=
 =?utf-8?B?RTIxMDBpWXprcXRoTTlsaGdFNWJsOEZCc1RPbUpTcDA1bk13M3JRaTJrR0xr?=
 =?utf-8?B?azh0SlRtc2RudnR3NHdxR2JGTFF3K3lERzRuSUpvWHVFMEpBdmJ0ZUcwQjY2?=
 =?utf-8?B?RFZCTzAyTUhIbUMvcTJsQXRiNVIwblQ1QlpRbWdZcC9NVG9mRy9QUTJyMjkx?=
 =?utf-8?B?RzgvdXE3VjJIRDVYVVc5eWpFUmpLQVV6cjlTRFhlWEFkWGJNUnRXNzhpeHpn?=
 =?utf-8?B?VDMyV1V2WE15ZVVUWWRQeXB1QTBpQ3VTd3JwcDlGMHd5K1JjMzNvOTVoSVRM?=
 =?utf-8?B?RUIwOUVmUW5obTVGSHd1aWd0RFdEbGxsOVlnWDd4dHRCcHpFY2JZczRHYThF?=
 =?utf-8?B?V21GeDA0dVJ6NkJJaVpkWTBvK09YdVF0cFkyNDVlVk5lMHFRZ2RsNktWMTIv?=
 =?utf-8?B?Y1pWRDBsZ0VWeW1sTFNseVVUM25PampRYlJ6aXpYQ1V5MHo4SDRNZUJCa1dV?=
 =?utf-8?B?VU1YZHFDems2b0ZyaXcwSVpKL3BPT0NWd01MTm51TDdFLzFTa05rZTdKa3pE?=
 =?utf-8?B?dFcrUzRodHc5eVhvVHVJUmxqU3dxUi9BUFZzN0pVWHFxdEVkaXI3Y2liUzBj?=
 =?utf-8?B?VlVFb0lscU5TdU4zWVdaZC9BVmhDM3dESktNOUE2WUU2eisyM2kyMkVNTmpT?=
 =?utf-8?B?allUYkc4UzUvVklVeHh3YWcyRTl2bnNRajdXLzdPQWJlREhsUXRPOUxFMGFy?=
 =?utf-8?B?T1d3QVNhZWs1VHF4WjhEOU85NTg1Q1NZbWNIemxnNlNZc0EwNzN0bjYreHhw?=
 =?utf-8?B?NWR6dnIrVXhXaVZlWHQ5NFR2WXFmY1ZLU1FmY0J0TUh6K200TkZISnZmWVhr?=
 =?utf-8?B?d2w3dkJ4c1B0Q3NYME1YVktRcWxYamoxZStVZlNRNDBvc3lGNnNvNmlWcHEw?=
 =?utf-8?B?K3diYW51YWcydlpkOWlaa1Vtb2hpVzl6T1NPVnFNSUFMZXp1WEpZNnd2aXpk?=
 =?utf-8?B?d0pONFBjUktxR20wdkR6aUcwRWZBdXIrSFpzdy91K2dGQVBlL2JMbjNrcHhp?=
 =?utf-8?B?UDJEcjU4QUhmdkJOeHVyNjl5UGsxZk9MWmJ3QU12NFJOdnpueEllS0l6WHJF?=
 =?utf-8?B?MnpxVEtPbGp3b0Nzb01jellCRHdoK3VQa3VFZ2hQYzBDcW54NHdaN1VRRDhY?=
 =?utf-8?B?c1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdebcffe-a71c-4d57-f057-08dab3a33799
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2022 20:31:21.9754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8MecN5WDlGx8v5uFop9GXUidaEXkKAGByXyeEXivoaohXx0stFzO6yXS//YM6EgnbY2zUPoXg/n4LGNdWijxHjPqlU8H113xnKmua8tRKd8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7631
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/display: Move squash_ctl
 register programming to its own function
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
Cc: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBPY3RvYmVyIDIxLCAy
MDIyIDE6NDEgQU0NCj4gVG86IFNyaXZhdHNhLCBBbnVzaGEgPGFudXNoYS5zcml2YXRzYUBpbnRl
bC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogVml2ZWth
bmFuZGFuLCBCYWxhc3VicmFtYW5pDQo+IDxiYWxhc3VicmFtYW5pLnZpdmVrYW5hbmRhbkBpbnRl
bC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggNC80XSBkcm0vaTkxNS9k
aXNwbGF5OiBNb3ZlIHNxdWFzaF9jdGwNCj4gcmVnaXN0ZXIgcHJvZ3JhbW1pbmcgdG8gaXRzIG93
biBmdW5jdGlvbg0KPiANCj4gT24gVGh1LCAyMCBPY3QgMjAyMiwgQW51c2hhIFNyaXZhdHNhIDxh
bnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPiB3cm90ZToNCj4gPiBObyBmdW5jdGlvbmFsIGNoYW5n
ZS4gSW50cm9kdWNlIGRnMl9jZGNsa19zcXVhc2hfcHJvZ3JhbW1pbmcgYW5kDQo+IG1vdmUNCj4g
PiBzcXVhc2hfY3RsIHJlZ2lzdGVyIHByb2dyYW1taW5nIGJpdHMgdG8gdGhpcy4NCj4gPg0KPiA+
IENjOiBCYWxhc3VicmFtYW5pIFZpdmVrYW5hbmRhbg0KPiA8YmFsYXN1YnJhbWFuaS52aXZla2Fu
YW5kYW5AaW50ZWwuY29tPg0KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51
c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMjMNCj4gPiArKysrKysrKysrKysrLS0tLS0tLS0t
DQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0K
PiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y2RjbGsuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5j
DQo+ID4gaW5kZXggODcwMTc5Njc4OGUzLi5iNjkyMTg2YzhmMDIgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gQEAgLTE3MDUsNiAr
MTcwNSwxOCBAQCBzdGF0aWMgdm9pZCBieHRfY2RjbGtfcGxsKHN0cnVjdA0KPiA+IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsIGludCB2Y28pDQo+ID4NCj4gPiAgfQ0KPiA+DQo+ID4gK3N0YXRpYyB2
b2lkIGRnMl9jZGNsa19zcXVhc2hfcHJvZ3JhbW1pbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUN
Cj4gKmk5MTUsDQo+ID4gKwkJCQkJIHUxNiB3YXZlZm9ybSkNCj4gDQo+IEZ1bmN0aW9uIG5hbWVz
IHRoYXQgYXJlIHZlcmJzIHNob3VsZCBwcmVmZXJyYWJseSB1c2UgdGhlIGltcGVyYXRpdmUgbW9v
ZCwNCj4gaS5lLiBwcm9ncmFtKCkgaW5zdGVhZCBvZiBwcm9ncmFtbWVkKCksIHByb2dyYW1zKCkg
b3IgcHJvZ3JhbW1pbmcoKS4NCj4gDQo+IEknbSBhbHNvIG5vdCBzdXJlICJwcm9ncmFtbWluZyIg
b3IgInByb2dyYW0iIGlzIGEgdmVyeSBkZXNjcmlwdGl2ZSB0aGluZzsNCj4gYWxtb3N0IGV2ZXJ5
dGhpbmcgaGVyZSBpcyBhYm91dCAicHJvZ3JhbW1pbmciIHNvbWV0aGluZyBvciBvdGhlci4NCg0K
TWFrZXMgc2Vuc2UuIERpZG7igJl0IGhhdmUgYSBnb29kIGZlZWxpbmcgYWJvdXQgdGhlIG5hbWUg
aW4gdGhlIGZpcnN0IHBsYWNlLiBUaGFua3MgZm9yIHRoZSB2YWxpZGF0aW9uLg0KDQpBbnVzaGEN
Cj4gQlIsDQo+IEphbmkuDQo+IA0KPiANCj4gPiArew0KPiA+ICsJdTMyIHNxdWFzaF9jdGwgPSAw
Ow0KPiA+ICsNCj4gPiArCWlmICh3YXZlZm9ybSkNCj4gPiArCQlzcXVhc2hfY3RsID0gQ0RDTEtf
U1FVQVNIX0VOQUJMRSB8DQo+ID4gKwkJCSAgICAgQ0RDTEtfU1FVQVNIX1dJTkRPV19TSVpFKDB4
ZikgfCB3YXZlZm9ybTsNCj4gPiArDQo+ID4gKwlpbnRlbF9kZV93cml0ZShpOTE1LCBDRENMS19T
UVVBU0hfQ1RMLCBzcXVhc2hfY3RsKTsgfQ0KPiA+ICsNCj4gPiAgc3RhdGljIHZvaWQgYnh0X3Nl
dF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gIAkJCSAgY29u
c3Qgc3RydWN0IGludGVsX2NkY2xrX2NvbmZpZyAqY2RjbGtfY29uZmlnLA0KPiA+ICAJCQkgIGVu
dW0gcGlwZSBwaXBlKQ0KPiA+IEBAIC0xNzUyLDE1ICsxNzY0LDggQEAgc3RhdGljIHZvaWQgYnh0
X3NldF9jZGNsayhzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gIAll
bHNlDQo+ID4gIAkJY2xvY2sgPSBjZGNsazsNCj4gPg0KPiA+IC0JaWYgKEhBU19DRENMS19TUVVB
U0goZGV2X3ByaXYpKSB7DQo+ID4gLQkJdTMyIHNxdWFzaF9jdGwgPSAwOw0KPiA+IC0NCj4gPiAt
CQlpZiAod2F2ZWZvcm0pDQo+ID4gLQkJCXNxdWFzaF9jdGwgPSBDRENMS19TUVVBU0hfRU5BQkxF
IHwNCj4gPiAtCQkJCUNEQ0xLX1NRVUFTSF9XSU5ET1dfU0laRSgweGYpIHwNCj4gd2F2ZWZvcm07
DQo+ID4gLQ0KPiA+IC0JCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBDRENMS19TUVVBU0hfQ1RM
LCBzcXVhc2hfY3RsKTsNCj4gPiAtCX0NCj4gPiArCWlmIChIQVNfQ0RDTEtfU1FVQVNIKGRldl9w
cml2KSkNCj4gPiArCQlkZzJfY2RjbGtfc3F1YXNoX3Byb2dyYW1taW5nKGRldl9wcml2LCB3YXZl
Zm9ybSk7DQo+ID4NCj4gPiAgCXZhbCA9IGJ4dF9jZGNsa19jZDJ4X2Rpdl9zZWwoZGV2X3ByaXYs
IGNsb2NrLCB2Y28pIHwNCj4gPiAgCQlieHRfY2RjbGtfY2QyeF9waXBlKGRldl9wcml2LCBwaXBl
KSB8DQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3Mg
Q2VudGVyDQo=
