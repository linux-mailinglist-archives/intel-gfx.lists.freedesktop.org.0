Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E8C7245FF
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 16:31:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5334810E131;
	Tue,  6 Jun 2023 14:31:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA2DE10E131
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 14:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686061861; x=1717597861;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=oOL5h0/WxuKnvJsKDSMU9EWZs92/uTTplr+0UhnX9ag=;
 b=Golen5Ynj+PultaFN4ZwCjfSlUKxss1P81OMO7/zBWCzX5JQVnyImRmS
 oHAhorue6URMgBPTOfckCJleNUu5CWdbsW5SIsmQkivAdI29xkLtQp+G4
 R9uBHSA3MQ6n2fQlFRg1bQtHMyHQOR7sy1+U94FoqLlqOVI7Z6s3hDMNG
 OxKWx9xWuycL1H2w87Oe6sLuKLIu75Ir+dmsygurTXpkxbzTAnAVNy69G
 8JYRXUo7ctrESz+jmfUkE1O/Kfzw1ZGGqF+7uAve5z5lwAR43+Ij1nCsX
 tfIqY7mrSI5LKw+nWRha6927Su/xSb4rZizHf1SjogX1O87UAdlUe0BO9 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="341339041"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="341339041"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 07:31:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="774146959"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="774146959"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 06 Jun 2023 07:31:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 07:30:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 07:30:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 07:30:59 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 07:30:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FYyjPLy2YsAfv15Zc19xIx1bmg/hJXqYE5KLDGKXTyAZ0V685Gmdaukgi/adH8U7wPQn6ek8skfWOMtlQPOJuc0knTrbeBUKl74aiaTZNlXVqWnt7hwc1dVKFXtoTpZnccvIbZvTR0/5zkR3WomU/tNifnNj/Bhg3mp9DI4VlmTFE5EW04otUR5QJzQ1SWj16FILRGyOnl8amBIrxjfzy9eY5q0QJqnq9xCbrj5/b9k3n/oRkfK/GtDRldSIsJPBzdGHfKG+XFN8DJBmoFeQ/gw+4fIZ+MxSPyJi4cDpItdPNwhOwqK4x/p72QMq0sjq+0GDZceSBfh/T5Sq3uX4fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oOL5h0/WxuKnvJsKDSMU9EWZs92/uTTplr+0UhnX9ag=;
 b=bS+YghvQNlCpEweWWcE4yjwPukqVXRuuLMnD0i/p6w+IxPHB4gbuP8+NRBZ9AwWU1RTEMo7bAx4eWyQvXp+XhnmORj3Wa661AHmbEsytzkkgWgYNU/UXEAMsoohJkWxmEtouiScagEEF6KlbWgpwPLwRJ7pypqaApEop5IiL96O91ufZDJHqU02ncYFG/izxqltg9U1m6EJxM8RTjtaytd+spEBRWrFlLkDZZ1EL3EG8nzb5JaF0Gk43WsZCEjZR+OLtDi+BcFMchGkeKUuf96aaSCFOjGgwT/gTc7XuITqCISVYna1OkHigw2EheBX49u4kksfrBS5BJoe9K17lvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by MW4PR11MB6714.namprd11.prod.outlook.com (2603:10b6:303:20f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Tue, 6 Jun
 2023 14:30:56 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7c95:e842:18f6:92f9]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7c95:e842:18f6:92f9%7]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 14:30:55 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9p?=
 =?utf-8?Q?915:_implement_internal_workqueues_(rev3)?=
Thread-Index: AQHZmIOAT3UV3PukuUausN8Yz/w0EQ==
Date: Tue, 6 Jun 2023 14:30:55 +0000
Message-ID: <4747e357bfe219f04662707604c4cbaedf0389a1.camel@intel.com>
References: <20230530111534.871403-1-luciano.coelho@intel.com>
 <168551428578.17615.13321848387509410861@emeril.freedesktop.org>
 <87r0qqaqz2.fsf@intel.com>
 <df70861a-a8bf-07cc-90d2-400820b751e8@linux.intel.com>
 <755fa4ba3d28d7be9bff235842ee10934be4c90d.camel@intel.com>
 <f3409beb-3736-f4cd-2036-2b75b81cd4f9@linux.intel.com>
In-Reply-To: <f3409beb-3736-f4cd-2036-2b75b81cd4f9@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|MW4PR11MB6714:EE_
x-ms-office365-filtering-correlation-id: 80289271-aa92-4303-deee-08db669aa382
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pjSKsXwtaLiSqNXnQglSFhuokXIsVF4WHtkoHNK4+kQVDq7Sb4tafZmc26TJ8B9iE5/a+ACKpgIWie1KzHdbw5/OAUtukxk8Lif3mQrpF88SpjEAJiKTBcV0scpa46MVqsL9DWW/wxDzyLIj920yVILrvPiVPgDUvtA2fm1JptB2lVOxwDxQkX5JvdsAkwtN3TODTxIBwv5eqTuLpVnMzeLp+wULFnKLO9Sf2k2HYiedbH0rAIz3No0aL4xXje2OW+eYtDz4b2yNcS9K6bFHZiYDf8VLn3LX9fl+2QaUeLQ7nJwrh1fdjPrVKFJZ8FYFjkSbM4W6YiaGUfwC1VVjqqJ2h+9AxuaCyO46MY2hwlnunw3zwMH9BsGWuB+H0WJyLVQCVnfKQYYCEe2s9WLDrr5edSqekjxcSIuPizXeDKCRNI5QXqPYo2xw5bZaS2SgTBepuDeOjEZ1pu+cthXcdkIrT1kU+73fIiLH1Xrkr6ZU6+jswsYGEAoZTZFDF+r7hx8U2GkcB4tZuD4OgwIFiC0pzBc7rTEd4ScmkV6uRU3DslQp7JnmB6cKVY6geyeHdAnqEL8SZNRdWzZK6uPwAivBqzwQAwAs0X4Y1BlOq0E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(396003)(366004)(136003)(376002)(451199021)(71200400001)(26005)(110136005)(66446008)(91956017)(64756008)(76116006)(66476007)(66556008)(66946007)(82960400001)(4326008)(122000001)(38100700002)(83380400001)(966005)(6486002)(478600001)(2616005)(2906002)(36756003)(53546011)(6506007)(6512007)(41300700001)(38070700005)(316002)(8936002)(5660300002)(86362001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L0Vac1QyMTVvaUNKb3NwbUNnM2dRUHdnTnFWdUxXWGVtclVvby9mY0NpdFov?=
 =?utf-8?B?YVpwakRDYTUrWGpSRjdXZUlpSFFWNVM4SXM4UGsxKzVCZzhFVkdacG9sMzE4?=
 =?utf-8?B?S0RUQjZ1WVhjZWM4TnJNSk5GRDRwTDRLNWJyY3d3S1k1THRaZWJDV0pseVlF?=
 =?utf-8?B?RkFZbU12MC9GZ3FmU2swNmQrVFp1cDl5Y2JNSUdneGFvZFRYUGxuSFdacEtS?=
 =?utf-8?B?UklpaG0rSzJqeFZpelVFcUNLVE1SNnQ2YncrcmllYTRmeFFpWHRHdTVPMkkw?=
 =?utf-8?B?R0ZMcmtIc1dDUnRYWEp1US9UKzg0eEc3VHBNblcvNGtrMXJIZGVOVFBoM21F?=
 =?utf-8?B?dzNRcDZ1RWF5WDJmcS84WHZTNmhzeit6MGlwRTc4M2VlUnhQWXNXVmttYU9P?=
 =?utf-8?B?d3EwZDl0YTFjdkhGWi9nSjNtNkJlbXUxQXBtcDlqK3V1U295VVdXVGFkbGpv?=
 =?utf-8?B?Y0pvblRrSFkvK09BTkh3Z0pCWU9rSVNHazJIdEFPVXFVSmd4a0puNmhEUC92?=
 =?utf-8?B?SklJZmowOFo1eFQvY2lIN1l5RzNXNHVRaUx2blFhZTlxQWJaenZTdGVKcWdk?=
 =?utf-8?B?emxPNDhKSW92bkhtWFVMcWxicmViWEV0M3JvcEkreVpTRk81UTh5R1JzS3gz?=
 =?utf-8?B?NUwwenVNdkJydk1yYkl3Vy85U2pUZHcxNWd4RUJzTks1VUhRSGdkbWlXcVBh?=
 =?utf-8?B?ZEIyWXErd1JGc2ZGUkcyWUE4U3FEbnJ6RTNlV3ZMT0ZZZElSdjBoRlBHMmRy?=
 =?utf-8?B?WWtFZ3dzcU9DelBGMStBRjlabEJrQ09UbnQxeUNNRDBGKzhxM0VLTm5HaWRM?=
 =?utf-8?B?cHkzRk9odTlySFBGT01tTytobDVIRThXOFZpRW11MGVWY2VZUVpaMXh0aDJn?=
 =?utf-8?B?aHBZRHBYd21udm94b2xiNnBaMFBSaFNvRzZQeXgvSzVyNTBZUFduejRFc25U?=
 =?utf-8?B?b3hORTRtaWd0N0pIcE0ra3c4MVErdjRlL2E1a01BczJFNkxIdjdMcVRSYTF2?=
 =?utf-8?B?UnlYWDVnUEl2a2k5bnNDRjE5SzRSdG1GcHFFanVBWURqUjd0VTVCYTNZcXdE?=
 =?utf-8?B?VE1ySkV5RElLQlRTV1pjZmdNeGMycnp0SHUvZkRIWDhyRlc4Y21iMThaOHNQ?=
 =?utf-8?B?anNJOWtIZjg1Yno3clRzS01ZVCtqbWdqdUhLNlhaRHB5cE5FaUJIZzNOYm9W?=
 =?utf-8?B?M0hHQWRraXZJek5VdmNFVzZtN3pLWjVaVWwrOFNpcy9NMG1NcTVOUE9XQWFR?=
 =?utf-8?B?UjFicDNrY2l4L0x2VG5ZV2MrZmFJZHllUG12QUNabDBaT1JkaVk1Q1pRYXZE?=
 =?utf-8?B?cUptQmhWVDNSOWtiSEFvbkRQMDJ0VzB3NHFaeFRzVU8zei8xbUZUU05NcUtm?=
 =?utf-8?B?emdMUEw2MU8rM0J1RVdCOVJRd3RXWUp1UGdxZGoyK0k1RUkxbENKeHlkd3N2?=
 =?utf-8?B?RkdadTZrVWdpemtVQnRGaDVzcTBzc2FzWHJFck1Oc0pCU2VuLytRUk1kZEFU?=
 =?utf-8?B?dHhsVThRN0hUdGFiY1JwKytpbVdPTjg1MlVML3lySkFGRHNCdkJ4WXVvWmRD?=
 =?utf-8?B?SnVHWW5MNDZXWXdobnZJdTJNc1dzVXY1eFBBQVlXd096MURhYWpTeC9yc0J6?=
 =?utf-8?B?OG5WeWhpd3hQZzZiOUk0ajhOWHNNcjk4RWJSYnNML3RiaHpMdThuQ2xFRlo0?=
 =?utf-8?B?UXdvNGdBNnRtakJrOVpWblpaa0NWYWd0WlJqWWx0UGJQeU96T0JpNzlOYUNX?=
 =?utf-8?B?eHJRVW9RZUgvaENaMXk0SFkzZ2pLVU92eVRmTU0vbTkvK0JoUW82Rk5JOEo2?=
 =?utf-8?B?akpiM2NKUGdVdjZPWjVmbFdvWklpNDl1NWVYbm94eFJETlVhaWg4czZJMjM0?=
 =?utf-8?B?WTFMWU1sV1p1UHdOVlRlSlZ0SWJtU2tBSmh2Q3pZTEZjRTZCUTFzYVFUM2Js?=
 =?utf-8?B?M04yRTNRWFFoS1NVcHdrbk96UWlxeTl6K1M4dml0K2dvaGtud3Q3d1kzcksy?=
 =?utf-8?B?bUxmZjR3UmxPNXVCeVFIODVIK0xqRWJINVJ0TVJ3UmhuTHBmVFNubkZMeFpT?=
 =?utf-8?B?blliR2F5c04vQmRWUklOMHpyUHlyZkpXOVYwdFh1QkFEWDd3SHAxd2IvOVdK?=
 =?utf-8?B?U1ZmTUkwdUErWURHRkJyeW82dzR4WmQ4VVNWZ1pnS1FtdUV5VGFPY3dmdWRa?=
 =?utf-8?B?SGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FEBA28E9F02C7043A9BDEBB9F081C631@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80289271-aa92-4303-deee-08db669aa382
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2023 14:30:55.6754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0QiXy0SeULURqSgih/+4bVdafQAa4R0aMbmrT0g28EVDC4+tb/QUIGVilxeiUj/S1XfDAXYpGIcrnGNNAbcXK+X7SyLpqxVAt5Chj4PJnlY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6714
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_implement_internal_workqueues_=28rev3=29?=
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

T24gVHVlLCAyMDIzLTA2LTA2IGF0IDE0OjMzICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMDYvMDYvMjAyMyAxMjowNiwgQ29lbGhvLCBMdWNpYW5vIHdyb3RlOg0KPiA+IE9uIFR1
ZSwgMjAyMy0wNi0wNiBhdCAxMTowNiArMDEwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+ID4g
PiBPbiAwNS8wNi8yMDIzIDE2OjA2LCBKYW5pIE5pa3VsYSB3cm90ZToNCj4gPiA+ID4gT24gV2Vk
LCAzMSBNYXkgMjAyMywgUGF0Y2h3b3JrIDxwYXRjaHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9wLm9y
Zz4gd3JvdGU6DQo+ID4gPiA+ID4gIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjDQo+ID4g
PiA+ID4gDQo+ID4gPiA+ID4gICAgICogaWd0QGdlbV9jbG9zZV9yYWNlQGJhc2ljLXByb2Nlc3M6
DQo+ID4gPiA+ID4gICAgICAgLSBmaS1ibGItZTY4NTA6ICAgICAgIFtQQVNTXVsxXSAtPiBbQUJP
UlRdWzJdDQo+ID4gPiA+ID4gICAgICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzEzMjAzL2ZpLWJsYi1lNjg1MC9pZ3RAZ2VtX2Nsb3NlX3JhY2VA
YmFzaWMtcHJvY2Vzcy5odG1sDQo+ID4gPiA+ID4gICAgICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzExNzYxOHYzL2ZpLWJsYi1lNjg1MC9p
Z3RAZ2VtX2Nsb3NlX3JhY2VAYmFzaWMtcHJvY2Vzcy5odG1sDQo+ID4gPiA+ID4gICAgICAgLSBm
aS1oc3ctNDc3MDogICAgICAgIFtQQVNTXVszXSAtPiBbQUJPUlRdWzRdDQo+ID4gPiA+ID4gICAg
ICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzEz
MjAzL2ZpLWhzdy00NzcwL2lndEBnZW1fY2xvc2VfcmFjZUBiYXNpYy1wcm9jZXNzLmh0bWwNCj4g
PiA+ID4gPiAgICAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTE3NjE4djMvZmktaHN3LTQ3NzAvaWd0QGdlbV9jbG9zZV9yYWNlQGJhc2lj
LXByb2Nlc3MuaHRtbA0KPiA+ID4gPiA+ICAgICAgIC0gZmktZWxrLWU3NTAwOiAgICAgICBbUEFT
U11bNV0gLT4gW0FCT1JUXVs2XQ0KPiA+ID4gPiA+ICAgICAgWzVdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMzIwMy9maS1lbGstZTc1MDAvaWd0QGdl
bV9jbG9zZV9yYWNlQGJhc2ljLXByb2Nlc3MuaHRtbA0KPiA+ID4gPiA+ICAgICAgWzZdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTc2MTh2My9m
aS1lbGstZTc1MDAvaWd0QGdlbV9jbG9zZV9yYWNlQGJhc2ljLXByb2Nlc3MuaHRtbA0KPiA+ID4g
PiA+IA0KPiA+ID4gPiA+ICAgICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZXZpY3Q6DQo+ID4g
PiA+ID4gICAgICAgLSBiYXQtYWRscC05OiAgICAgICAgIFtQQVNTXVs3XSAtPiBbQUJPUlRdWzhd
DQo+ID4gPiA+ID4gICAgICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzEzMjAzL2JhdC1hZGxwLTkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBldmlj
dC5odG1sDQo+ID4gPiA+ID4gICAgICBbOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzExNzYxOHYzL2JhdC1hZGxwLTkvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZUBldmljdC5odG1sDQo+ID4gPiA+ID4gICAgICAgLSBiYXQtcnBscy0yOiAgICAgICAg
IFtQQVNTXVs5XSAtPiBbQUJPUlRdWzEwXQ0KPiA+ID4gPiA+ICAgICAgWzldOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMzIwMy9iYXQtcnBscy0yL2ln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZXZpY3QuaHRtbA0KPiA+ID4gPiA+ICAgICAgWzEwXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTE3NjE4djMv
YmF0LXJwbHMtMi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGV2aWN0Lmh0bWwNCj4gPiA+ID4gPiAg
ICAgICAtIGJhdC1hZGxtLTE6ICAgICAgICAgW1BBU1NdWzExXSAtPiBbQUJPUlRdWzEyXQ0KPiA+
ID4gPiA+ICAgICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fMTMyMDMvYmF0LWFkbG0tMS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGV2aWN0Lmh0
bWwNCj4gPiA+ID4gPiAgICAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzExNzYxOHYzL2JhdC1hZGxtLTEvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZUBldmljdC5odG1sDQo+ID4gPiA+ID4gICAgICAgLSBiYXQtcnBscy0xOiAgICAgICAgIFtQ
QVNTXVsxM10gLT4gW0FCT1JUXVsxNF0NCj4gPiA+ID4gPiAgICAgIFsxM106IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzEzMjAzL2JhdC1ycGxzLTEvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZUBldmljdC5odG1sDQo+ID4gPiA+ID4gICAgICBbMTRdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTc2MTh2My9i
YXQtcnBscy0xL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZXZpY3QuaHRtbA0KPiA+ID4gPiANCj4g
PiA+ID4gVGhpcyBzdGlsbCBmYWlscyBjb25zaXN0ZW50bHksIEkgaGF2ZSBubyBjbHVlIHdoeSwg
YW5kIHRoZSBhYm92ZSBhcmVuJ3QNCj4gPiA+ID4gZXZlbiByZW1vdGVseSByZWxhdGVkIHRvIGRp
c3BsYXkuDQo+ID4gPiA+IA0KPiA+ID4gPiBXaGF0IG5vdz8gVHZydGtvPw0KPiA+ID4gDQo+ID4g
PiBIbW0uLg0KPiA+ID4gDQo+ID4gPiA8ND4gWzQ2Ljc4MjMyMV0gQ2hhaW4gZXhpc3RzIG9mOg0K
PiA+ID4gICAgICh3cV9jb21wbGV0aW9uKWk5MTUgLS0+ICh3b3JrX2NvbXBsZXRpb24pKCZpOTE1
LT5tbS5mcmVlX3dvcmspIC0tPiAmdm0tPm11dGV4DQo+ID4gPiA8ND4gWzQ2Ljc4MjMyOV0gIFBv
c3NpYmxlIHVuc2FmZSBsb2NraW5nIHNjZW5hcmlvOg0KPiA+ID4gPDQ+IFs0Ni43ODIzMzJdICAg
ICAgICBDUFUwICAgICAgICAgICAgICAgICAgICBDUFUxDQo+ID4gPiA8ND4gWzQ2Ljc4MjMzNF0g
ICAgICAgIC0tLS0gICAgICAgICAgICAgICAgICAgIC0tLS0NCj4gPiA+IDw0PiBbNDYuNzgyMzM3
XSAgIGxvY2soJnZtLT5tdXRleCk7DQo+ID4gPiA8ND4gWzQ2Ljc4MjM0MF0gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGxvY2soKHdvcmtfY29tcGxldGlvbikoJmk5MTUtPm1tLmZyZWVf
d29yaykpOw0KPiA+ID4gPDQ+IFs0Ni43ODIzNDRdICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBsb2NrKCZ2bS0+bXV0ZXgpOw0KPiA+ID4gPDQ+IFs0Ni43ODIzNDhdICAgbG9jaygod3Ff
Y29tcGxldGlvbilpOTE1KTsNCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiAiKHdxX2NvbXBsZXRpb24p
aTkxNSINCj4gPiA+IA0KPiA+ID4gU28gaXQncyBub3QgYWJvdXQgdGhlIG5ldyB3cSBldmVuLiBQ
ZXJoYXBzIGl0IGlzIHRoaXMgaHVuazoNCj4gPiA+IA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF93YWtlcmVmLmMNCj4gPiA+IEBAIC03NSw3ICs3NSw3IEBAIHZvaWQgX19pbnRlbF93
YWtlcmVmX3B1dF9sYXN0KHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZiwgdW5zaWduZWQgbG9uZyBm
bGFncykNCj4gPiA+ICAgIA0KPiA+ID4gICAgCS8qIEFzc3VtZSB3ZSBhcmUgbm90IGluIHByb2Nl
c3MgY29udGV4dCBhbmQgc28gY2Fubm90IHNsZWVwLiAqLw0KPiA+ID4gICAgCWlmIChmbGFncyAm
IElOVEVMX1dBS0VSRUZfUFVUX0FTWU5DIHx8ICFtdXRleF90cnlsb2NrKCZ3Zi0+bXV0ZXgpKSB7
DQo+ID4gPiAtCQltb2RfZGVsYXllZF93b3JrKHN5c3RlbV93cSwgJndmLT53b3JrLA0KPiA+ID4g
KwkJbW9kX2RlbGF5ZWRfd29yayh3Zi0+aTkxNS0+d3EsICZ3Zi0+d29yaywNCj4gPiA+IA0KPiA+
ID4gVHJhbnNmb3JtYXRpb24gZnJvbSB0aGlzIHBhdGNoIG90aGVyd2lzZSBpcyBzeXN0ZW1fd3Eg
d2l0aCB0aGUgbmV3IHVub3JkZXJlZCB3cSwgc28gSSdkIHRyeSB0aGF0IGZpcnN0Lg0KPiA+IA0K
PiA+IEluZGVlZCB0aGlzIHNlZW1zIHRvIGJlIGV4YWN0bHkgdGhlIGJsb2NrIHRoYXQgaXMgY2F1
c2luZyB0aGUgaXNzdWUuICBJDQo+ID4gd2FzIHNvcnQgb2YgYmlzZWN0aW5nIHRocm91Z2ggYWxs
IHRoZXNlIGNoYW5nZXMgYW5kIHJldmVydGluZyB0aGlzIG9uZQ0KPiA+IHByZXZlbnRzIHRoZSBs
b2NrZGVwIHNwbGF0IGZyb20gaGFwcGVuaW5nLi4uDQo+ID4gDQo+ID4gU28gdGhlcmUncyBzb21l
dGhpbmcgdGhhdCBuZWVkcyB0byBiZSBzeW5jZWQgd2l0aCB0aGUgc3lzdGVtX3dxIGhlcmUsDQo+
ID4gYnV0IHdoYXQ/IEkgbmVlZCB0byBkaWcgaW50byBpdC4NCj4gDQo+IEFGQUlDVCBpdCBpcyBz
YXlpbmcgdGhhdCBpOTE1LT5tbS5mcmVlX3dvcmsgYW5kIGVuZ2luZS0+d2FrZXJlZi53b3JrIA0K
PiBtdXN0IG5vdCBiZSBvbiB0aGUgc2FtZSBvcmRlcmVkIHdxLiBPdGhlcndpc2UgZXhlY2J1ZiBj
YWxsIHRyYWNlIA0KPiBmbHVzaGluZyB1bmRlciB2bS0+bXV0ZXggY2FuIGRlYWRsb2NrIGFnYWlu
c3QgdGhlIGZyZWUgd29ya2VyIHRyeWluZyB0byANCj4gZ3JhYiB2bS0+bXV0ZXguIElmIGVuZ2lu
ZS0+d2FrZXJlZi53b3JrIGlzIG9uIGEgc2VwYXJhdGUgdW5vcmRlcmVkIHdxIGl0IA0KPiB3b3Vs
ZCBiZSBzYWZlIHNpbmNlIHRoZW4gZXhlY3V0aW9uIHdpbGwgbm90IGJlIHNlcmlhbGl6ZWQgd2l0
aCB0aGUgDQo+IGZyZWVfd29yay4gU28ganVzdCB1c2luZyB0aGUgbmV3IGk5MTUtPnVub3JkZXJl
ZF93cSBmb3IgdGhpcyBodW5rIHNob3VsZCANCj4gd29yay4NCg0KQWgsIGdyZWF0LCB0aGFua3Mg
Zm9yIHRoZSBpbnNpZ2h0ISBJJ2xsIHRyeSBpdCBub3cgYW5kIHNlZSBob3cgaXQgZ29lcy4NCg0K
LS0NCkNoZWVycywNCkx1Y2EuDQo=
