Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 865E77DE16E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 14:21:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7ABD10E6D2;
	Wed,  1 Nov 2023 13:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76A4E10E6D2
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 13:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698844911; x=1730380911;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=d7/pNDHv1RFyT90eks2MMz2IPvLFdwHJyuzXzKYLgqk=;
 b=kd0iLj3xZvtkVKMRiA1NhcF8isaVMbqeXQOE/QtH1xP4RdwnyHJ8hy/B
 v8qDj+OwHQHlnXgt6yv/KW1VAAqITsWDtC/wTBscbfZcONwWsEBLBk90u
 gjNp3lWxIBSfiKOLjvLTVyKbI35s0rOBZZ9f1KMSUUrX3VONU1sw7idgu
 wGIOwsoml2iSG31QgZtBTfDTIhcyNPyh4VwZXqhsPKIEgD5zjrmdUtPG3
 apWYMGmigsX2QBOSptlKqhqENFivW+hWzue6Wc6+2v+lpU03ybTs7xxvG
 sRhB/QeOyx8yvOJgnl0cZezYQ9oTm3BpRUu8U9tpnSdvaUu8lHffTlYow A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="367836242"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="367836242"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 06:21:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="710784964"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="710784964"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Nov 2023 06:21:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 1 Nov 2023 06:21:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 1 Nov 2023 06:21:49 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 1 Nov 2023 06:21:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PIEgcQQnvyEAsy3t0Nl/Bnv6JLxbuYuMrgV9IU8JVbzQjaEl0OUublY34R1ZJ9lSb5GeBLC4SHoXTVSKS/Wo3FMi0djGrVTCOrw5PP+ZGiUAGBuGKBFSHB4QiHov0zTIwP2xy2nCOmvv1JhZ94DFFWukIrJOwFqJ3zwus5hx2/dl8F6R74eHBn5bvJ9OPu7KdTzOIOzlGmYtr8cxG7YeKUky4HTEIUH96AofUNX1A9PnLPmZIIcoZh6XaRXmxnf6vuez8J1UrqawSioIws06YP0Rd80c6OUg4dta8cyPUGtTeWMcMos72dj0Lh9Vk4L5gl3pojmx2Agxl7WJ4zosjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d7/pNDHv1RFyT90eks2MMz2IPvLFdwHJyuzXzKYLgqk=;
 b=nJvzNvcd6svUh1tkTqN6kBSUwbmo1ui3Lb4uaH1dBG+MeD2DrnrvUQgbcsieq2XMV/Chyj9YzxfqLvvCTcLeSIFmwFDaom2W3dXWZvgiPCa7T5Z3Wxlazz/Jc4bahpgX7fCw4lHhHlOjf97zyfR8Vmqq12ekLtpcicpXJPLEox78UVSO8o6yL1cn9B3geJEBcFcLsVQA4IQmRUhhSTXBP59oKgsDt2RbP+foM2W+7ZnzoAaonFfJ0n8xYUElNEyMAzN+u7f+sHFDpWnqAz3wKD87Kzq6rc7waYZPVUVRvAGaavyNYuA6E5NjdBsF+fklzX2RN4DQmJZsbPZMVUU8Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SJ1PR11MB6105.namprd11.prod.outlook.com (2603:10b6:a03:48c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.28; Wed, 1 Nov
 2023 13:21:44 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca35:a0cf:9a74:f348]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca35:a0cf:9a74:f348%6]) with mapi id 15.20.6954.019; Wed, 1 Nov 2023
 13:21:44 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Clear possible sticky bits on
 PICA message bus
Thread-Index: AQHaDK6J1tnoTORVwUCs0fN8gaWC47BlSUsAgAAaYYA=
Date: Wed, 1 Nov 2023 13:21:43 +0000
Message-ID: <MW4PR11MB7054BCFC5126D3B0B38333ACEFA7A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231101103101.156505-1-mika.kahola@intel.com>
 <87o7gd4uhr.fsf@intel.com>
In-Reply-To: <87o7gd4uhr.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SJ1PR11MB6105:EE_
x-ms-office365-filtering-correlation-id: dce92657-be92-4a92-9086-08dbdadd7e0b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OZypqHXxcBCk0HEQyg+ztS19OMGP47LEzwr6CBl0QhacSTZibZzOq3jKYQ3bHlLlPi9opMuxMNCIaUHSNqT7rv5vhoWa+F8nS6e2vQhNhP30H/xsGj8IvIo1z2RNj+G4Ma4u7Ql8FDMWdKpGJ73P70VVjwnDywvnjHPl5eeJZVANnkfEMi4OM2eYOtu3Eq+mm5kh9sTrZPJBihOprQbs0OqXpLFDy7rggTuE00/AI8n4JY/f7k1bCgfzgHNamO5APXNAYy9jCy2CqvBSUP5FyxFQsbH34GP4lINWT1Nhibo3waB4Kn30yAuGhGFzYXlBuM7va0DnH+l/B2t4l8o2QOGwJG4ZiIpQo+i05nMofswwby/3GTL3eZVzSAnMTCgtfx/BMZbZMIJsvFzVVIqs85onwKKdhsuGzWvVPQbSNyqsNaz7Zh1hLmMcApO3ewNCd4/jAaKF7jARULS4WiM8B4IwgqBOla+wkIc4tFfo/2OoqPINhE7Gk2AqtrApE7n2vr3LNR6OXLnem3sIjhBUZIFZtF1dyGvEPwg+Y089KRdxYwwZ6CJWgKm/4odT1ra9aKD6xGNA4+EyemaMoQZ/R8m/xRRnRX6qfPz0nG63ZI5S0YAf2yat9Q8Yy1nTNy/J
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(39860400002)(396003)(366004)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(26005)(53546011)(6506007)(7696005)(55016003)(9686003)(82960400001)(122000001)(38070700009)(33656002)(38100700002)(86362001)(110136005)(83380400001)(64756008)(41300700001)(66946007)(66446008)(316002)(66556008)(76116006)(66476007)(52536014)(15650500001)(8676002)(8936002)(5660300002)(2906002)(478600001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dE9abmt5bXhVQVR5Qm5xcUt1bmVSdzdjL3Fvdkwwa1ZCRUowR0R4dmNTY0RO?=
 =?utf-8?B?Vjc3SDBlVHpWdytMbjhudm9FSnozSmdpVDJJNklTSVQ1WjlaZVdCY1dvMUoy?=
 =?utf-8?B?SnJuOVNIUGFyQmF5cHFaSzNNSnYrc0piSnRVSHZOODhFQkhOUGNmWjdEMGNR?=
 =?utf-8?B?ZCsvZ1Bpc1lMN0N3dDRya0Q1Y093TjEraUxtYUt2VEt5akNOZXQzKzA4cVFW?=
 =?utf-8?B?VW1qNnk5UGt0NXJEZ0tJajAwUUhqYVBTQWtsUnhVRThyY1pwamJBV2J5SVB5?=
 =?utf-8?B?YTJ0Mm5JTGM1R3FMeGVKb0Y1eUIwMkhsaytFNDQ2NHBkMUJraEdTdTJjSWVh?=
 =?utf-8?B?TkdEekVrbTRoUE1kRjJrQ010YnQ3WHd3SUdjYndnRXhxY1NCOXJiV1BvVWpt?=
 =?utf-8?B?Rkl2Z2ZPdSs2ZVZJbUgxTlFrditsN1E5WUJXam91bTJ3ZFdlNm5mNlllY2hX?=
 =?utf-8?B?R003bWs4MzY2UHBuN3NDTkJuOUNpOCtTMjJIR1h5My80cjB0U0dENkNFUXFV?=
 =?utf-8?B?c0hhditSRi9oUkMwbW96RzltbUtJTGJhR2pXMWV1aGtJNXpKRUR2QnUwakp5?=
 =?utf-8?B?S1JOYXZBbVhIek1ZT1daeDJuZXVpclZyRllYa1VRK3gxc0ZMNlV0WkQ0OE5M?=
 =?utf-8?B?MFFYbVdQbGJiaGRFUjJrczZCVWdNUTc5dDRqUUh3M1dVcHgwOTZxTEJBYVBm?=
 =?utf-8?B?MXljajJSQmdYTlY0dmcxc280SU1lbzI5cHBIV0VwVFEvUEFYRXN4SEx4aEQx?=
 =?utf-8?B?N1cxcXBVcXE4VEZneE94UXBTZlBEY0IzRVVaa2NFc2Z4cCswNktMa0tFQ0xE?=
 =?utf-8?B?YjNkZFAyblg1S1d5VlpXci9lTjVUTlRPYlZFbXNObEFyS3o4cnlLUml6bFJL?=
 =?utf-8?B?aHo2dTVkWU1LRTIvR2N4Z3lsbFVzeFNGVkJETGkyci9mVWY2N0xFbTBnRGY0?=
 =?utf-8?B?NndXV2VnT050MkN2T25jd1ZWdkZ4WS9VdXZ2UGFydS9mcml5WGo0VnZLWXRR?=
 =?utf-8?B?Skd6TWxCbmo0V3l1bE1WT3ZTWHkzY3NzYUluWHo0ZDhJNDcvQzUwdFlHOU1N?=
 =?utf-8?B?TElXTnAvOW5sUFR5MU1LMmc2ZlhhMlhzRFRablRVek9tVmh5Yjc3c1RENHpN?=
 =?utf-8?B?QzlUa3ZDMnNYdDZPNGxhWTdRY3pTVlYxaEk2c3l4L1ZpZnh1bW9UVDZtemts?=
 =?utf-8?B?Nm90dkJjWG9qTkFLMlB0RUtCajJueisyYjA4T09Ma0tFWjJtcURVZFdDMHNu?=
 =?utf-8?B?NE54RU1jc3JDeEorR0VxY3p0aURBK3ZhTk9KL1NnVVl6bndMWThlNzBqUHVP?=
 =?utf-8?B?YUxXNmdPQWpoR05zd2Y3VmVSSUV6YytGMFJyazg0ZHNocjltWXNmUWloK1Ay?=
 =?utf-8?B?eTZ1ZUU2eGx2OUdva2trVnRDR3lxckhuc1ZWWCttSUw5Uk9iKzIvMkQxNHU0?=
 =?utf-8?B?ZEVTU0hLeDI4SXpVUEQ0SXpYMFM5YzhUTVpKclBnTndJNVRIT0dxNTN5RVdw?=
 =?utf-8?B?NWI2SlJSblJzMmMwRTYzOFNzZWllZXFieUY4aG1oN2NpaFNVdjUxdE5nNjN1?=
 =?utf-8?B?U3R6TjVuRVNVeThwci9oY3BUV3BNRlRPeXAzblVDNDF2ZTZCcm1hSjhTLzlW?=
 =?utf-8?B?c29iZ0kyTnFNK25aeVFSR1V3UHUyTlN1SWRkU0dQckVXU2VKZEtUV3YxVElx?=
 =?utf-8?B?NkpJdUlFRXZwYVpZb3VENmlIT2Z6VTlocEIvbDQ1MzhTRDN6dkdPY21nMXNi?=
 =?utf-8?B?MDh4d3o0R0RtL2s5cFZPZzBxdTBYQXR6TEQyZEgrNWxmZjJvWE5rVGhsVXdW?=
 =?utf-8?B?NGZFNnREMXF0NHV3SUNTeXdYZURlUmsxNnN1MU1oSWdIYzd6V0lHS1BMVENS?=
 =?utf-8?B?VXZxT0o5Zk0xQUFleEh5UWJUelF0b2FvTVpTNkdYK3Fja2R0NlB1NTlad1JI?=
 =?utf-8?B?ZzFoeXZHUkJ0MTBIZjE0Uk5FQ2VRQVNjVW9XTkp2UDVmQmJCYTBNdzIycStN?=
 =?utf-8?B?VmU1bUNVZktBc1hZRzVGN0xtVnRvU0QvWlhqUnBBU1lxc2x4SWdodllLRjBx?=
 =?utf-8?B?N3E5Y3RacEI2Y1lRc3VibW1tQUhTc3RmVkVkSHNsNXJWUUtwSGtlbW9QZEI3?=
 =?utf-8?Q?WUDGVIR6xVj5APtxy6hHcK4Qz?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dce92657-be92-4a92-9086-08dbdadd7e0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2023 13:21:44.0069 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vbC6dlZh9aRHMJrK78Y5IMJIHyyQI9uuQHKcs+4iftuEgSx1gIzZ4LvXwL+epP/5iRZYF5iGJkgUsIijNAxlQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6105
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Clear possible sticky bits on
 PICA message bus
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE5vdmVtYmVyIDEsIDIw
MjMgMTI6NTEgUE0NCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsg
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdm
eF0gW1BBVENIXSBkcm0vaTkxNS9tdGw6IENsZWFyIHBvc3NpYmxlIHN0aWNreSBiaXRzIG9uIFBJ
Q0EgbWVzc2FnZSBidXMNCj4gDQo+IE9uIFdlZCwgMDEgTm92IDIwMjMsIE1pa2EgS2Fob2xhIDxt
aWthLmthaG9sYUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IEl0IGlzIHBvc3NpYmxlIHRoYXQgc3Rp
Y2t5IGJpdHMgb3IgZXJyb3IgYml0cyBhcmUgbGVmdCBvbiBtZXNzYWdlIGJ1cw0KPiA+IHN0YXR1
cyByZWdpc3Rlci4gUmVhZGluZyBhbmQgdGhlbiB3cml0aW5nIHRoZSB2YWx1ZSBiYWNrIHRvIG1l
c3NhZ2VidXMNCj4gPiBzdGF0dXMgcmVnaXN0ZXIgY2xlYXJzIGFsbCBwb3NzaWJsZSBzdGlja3kg
Yml0cyBhbmQgZXJyb3JzLg0KPiANCj4gTm90ZSB0aGF0IEkgZG9uJ3Qga25vdyBpZiB0aGlzIGlz
IHRoZSByaWdodCB0aGluZyB0byBkbywgb3IgdGhlIHJpZ2h0IHBsYWNlIHRvIGRvIHRoaXMsIGJ1
dCBJJ2xsIGp1c3QgY29tbWVudCBvbiB0aGUgKmltcGxlbWVudGF0aW9uKiwNCj4gaS5lLiBwbGVh
c2Ugd2FpdCBmb3IgcHJvcGVyIHJldmlldyBiZWZvcmUgYWRkcmVzc2luZyBteSBjb21tZW50cy4N
Cj4gDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2N4MF9waHkuYyB8IDE0ICsrKysrKysrKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBp
bnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gaW5kZXggYjJhZDRjNjE3MmY2Li5mNDM5ZjBjN2I0MDAg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBf
cGh5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9w
aHkuYw0KPiA+IEBAIC0xOTUsNiArMTk1LDEzIEBAIHN0YXRpYyBpbnQgX19pbnRlbF9jeDBfcmVh
ZF9vbmNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBlbnVtIHBvcnQgcG9ydCwNCj4g
PiAgCQlyZXR1cm4gLUVUSU1FRE9VVDsNCj4gPiAgCX0NCj4gPg0KPiA+ICsJLyoNCj4gPiArCSAq
IHdyaXRlIFhFTFBEUF9QT1JUX1AyTV9NU0dCVVNfU1RBVFVTIHJlZ2lzdGVyIGFmdGVyIHJlYWQg
dG8gY2xlYXINCj4gPiArCSAqIGFueSBlcnJvciBzdGlja3kgYml0cyBzZXQgZnJvbSBwcmV2aW91
cyB0cmFuc2FjdGlvbnMNCj4gPiArCSAqLw0KPiA+ICsJdmFsID0gaW50ZWxfZGVfcmVhZChpOTE1
LCBYRUxQRFBfUE9SVF9QMk1fTVNHQlVTX1NUQVRVUyhwb3J0LCBsYW5lKSk7DQo+ID4gKwlpbnRl
bF9kZV93cml0ZShpOTE1LCBYRUxQRFBfUE9SVF9QMk1fTVNHQlVTX1NUQVRVUyhwb3J0LCBsYW5l
KSwNCj4gPiArdmFsKTsNCj4gDQo+IEkgdGhpbmsgaXQncyBzbGlnaHRseSBjb25mdXNpbmcgdG8g
dXNlIHZhbCBoZXJlLCBhcyBpdCdzIHRoZW4gcGFzc2VkIG9uIHRvIGludGVsX2N4MF93YWl0X2Zv
cl9hY2soKSBhbmQgeW91J3JlIGxlZnQgd29uZGVyaW5nIGlmIHRoYXQncw0KPiByZXF1aXJlZCBv
ciBqdXN0IHJldXNlIG9mIHRoZSB2YWwgdmFyaWFibGUuDQoNClRoaXMgaXMgYSBiaXQgY29udHJv
dmVyc2lhbCBwYXRjaC4gSSBoYXZlIHNlZW4gInJlZmVyZW5jZSIgaW1wbGVtZW50YXRpb24gd2hp
Y2ggZG9lcyBzaW1pbGFyIHRoaW5nLiBGcm9tIEJTcGVjIDY1MTAxIFBPUlRfUDJNX01TR0JVU19T
VEFUVVMgYml0MzEgIlJlc3BvbnNlIFJlYWR5IiB0aGUgYml0IGlzIHNldCBieSBIVyBvbiByZWFk
IGNvbXBsZXRpb24gb3Igd2hlbiB3cml0ZSBhY2sgaXMgcmVjZWl2ZWQgYnkgU1cgYWZ0ZXIgcmVh
ZC4gVGhpcyBtZWFucyB0aGF0IHdlIGVpdGhlciBoYXZlIHJlc3BvbnNlIHBlbmRpbmcgb3Igbm90
LiBOb3csIHRoZSB3aG9sZSBpZGVhIHRvIGZsb2F0IHBhdGNoIHdhcyB0byBzcGFyayBkaXNjdXNz
aW9uIGlmIHRoaXMgaXMgdGhlIHdheSB3ZSBzaG91bGQgZG8gdGhpcy4gDQoNClRoZXJlIGlzIGFu
IGlzc3VlIG9mIHNwb3JhZGljYWxseSBmYWlsIHJlYWRpbmcgb3Igd3JpdGluZyB0byB0aGUgUElD
QSBtZXNzYWdlIGJ1cy4gVGhpcyBleHRyYSBzdGVwIG1pZ2h0IGJlIHNvbWV0aGluZyB0aGF0IHdl
IG5lZWQgKGxvY2FsbHkgSSBjb3VsZG4ndCB0cmlnZ2VyIHRoZSB0aGUgZmFpbHVyZSB3aXRoIHRo
aXMpLiBPbmUgY2FuIGludGVycHJldCB0aGUgc3BlYyBpbiB0d28gd2F5cy4gT25lIGlzIHRoYXQg
dGhlIGh3IGNsZWFycyB0aGVzZSBiaXRzIHdoZW4gZXhlY3V0aW5nIHJlYWQgY29tbWFuZCBhbmQg
aGVuY2Ugd2UgY291bGQgd3JpdGUgdGhlIHZhbHVlIGJhY2sgYXMgc3VjaC4gVGhlIG90aGVyIG9u
ZSBpcyB0aGF0IHdlIG5lZWQgdG8gcmVhZCB0aGUgcmVnaXN0ZXIgYW5kIGNsZWFyIHRoZSBiaXRz
IGxpa2Ugd2UgYWxyZWFkeSBkbyB3aXRoIGludGVsX2NsZWFyX3Jlc3BvbnNlX3JlYWR5X2ZsYWco
KSBmdW5jdGlvbi4NCg0KT25lIHNpZGVub3RlIGlzIHRoYXQgSSBjb3VsZG4ndCBmaW5kIHRoaXMg
ZXh0cmEgc3RlcCBmcm9tIHRoZSBzcGVjLiBNYXliZSBuZWVkIGZvciBzb21ldGhpbmcgbGlrZSB0
aGlzIHdhcyBkaXNjb3ZlcmVkIGxhdGVyPw0KDQotTWlrYS0NCg0KPiANCj4gVGhpcyBzaG91bGQg
ZG8gdGhlIHNhbWUgdGhpbmcgaW4gb25lIGxpbmUsIHdpdGhvdXQgcmV1c2luZyB2YWw6DQo+IA0K
PiAJaW50ZWxfZGVfcm13KGk5MTUsIFhFTFBEUF9QT1JUX1AyTV9NU0dCVVNfU1RBVFVTKHBvcnQs
IGxhbmUpLCAwLCAwKTsNCj4gDQo+ID4gKw0KPiA+ICAJaW50ZWxfZGVfd3JpdGUoaTkxNSwgWEVM
UERQX1BPUlRfTTJQX01TR0JVU19DVEwocG9ydCwgbGFuZSksDQo+ID4gIAkJICAgICAgIFhFTFBE
UF9QT1JUX00yUF9UUkFOU0FDVElPTl9QRU5ESU5HIHwNCj4gPiAgCQkgICAgICAgWEVMUERQX1BP
UlRfTTJQX0NPTU1BTkRfUkVBRCB8IEBAIC0yNjIsNiArMjY5LDEzIEBAIHN0YXRpYw0KPiA+IGlu
dCBfX2ludGVsX2N4MF93cml0ZV9vbmNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBl
bnVtIHBvcnQgcG9ydCwNCj4gPiAgCQlyZXR1cm4gLUVUSU1FRE9VVDsNCj4gPiAgCX0NCj4gPg0K
PiA+ICsJLyoNCj4gPiArCSAqIHdyaXRlIFhFTFBEUF9QT1JUX1AyTV9NU0dCVVNfU1RBVFVTIHJl
Z2lzdGVyIGFmdGVyIHJlYWQgdG8gY2xlYXINCj4gPiArCSAqIGFueSBlcnJvciBzdGlja3kgYml0
cyBzZXQgZnJvbSBwcmV2aW91cyB0cmFuc2FjdGlvbnMNCj4gPiArCSAqLw0KPiA+ICsJdmFsID0g
aW50ZWxfZGVfcmVhZChpOTE1LCBYRUxQRFBfUE9SVF9QMk1fTVNHQlVTX1NUQVRVUyhwb3J0LCBs
YW5lKSk7DQo+ID4gKwlpbnRlbF9kZV93cml0ZShpOTE1LCBYRUxQRFBfUE9SVF9QMk1fTVNHQlVT
X1NUQVRVUyhwb3J0LCBsYW5lKSwNCj4gPiArdmFsKTsNCj4gPiArDQo+ID4gIAlpbnRlbF9kZV93
cml0ZShpOTE1LCBYRUxQRFBfUE9SVF9NMlBfTVNHQlVTX0NUTChwb3J0LCBsYW5lKSwNCj4gPiAg
CQkgICAgICAgWEVMUERQX1BPUlRfTTJQX1RSQU5TQUNUSU9OX1BFTkRJTkcgfA0KPiA+ICAJCSAg
ICAgICAoY29tbWl0dGVkID8gWEVMUERQX1BPUlRfTTJQX0NPTU1BTkRfV1JJVEVfQ09NTUlUVEVE
IDoNCj4gDQo+IC0tDQo+IEphbmkgTmlrdWxhLCBJbnRlbA0K
