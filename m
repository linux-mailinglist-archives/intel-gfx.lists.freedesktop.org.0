Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B796B3210
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 00:29:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD12310E2B0;
	Thu,  9 Mar 2023 23:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59EE510E2B0
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 23:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678404591; x=1709940591;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=rwz1hE21rNi4OLxYAhwbmjbLT9DuwSi4MqT1IWSLx2k=;
 b=MfzjvReXoSTEKNfsOuv5Qkay2F1YYi21LJ53bswhBAzkfqVcLs3LR67s
 IbnPGhS/gvX4MfXLsg/qOW4JnEcTE7HMpqNSJ1vYcCHC5AIiS7EPXYuEl
 wtWzTozcNyB7q2x/xYT9GI5eG95hb/O07mrpzM7ng8Xx4yxBw7WnUiLQE
 p+WxmlCEGKOTPdF/FxobCvJaKXscTI0fhzDH0nXSlWOXpIWd0c23udJ8m
 CeJhzpsZTZ1UjE+OAsRwqiyA/tnpyaQFjHR4yVoOXyEtvkxvsQnaXuen4
 WPs6FxmhRmbsuTjlxW3dsY+JIctNUUKY9jQAnxfbQlAuWJMkGJuScZ/EB Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="401459595"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="401459595"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 15:29:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="766623032"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="766623032"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Mar 2023 15:29:50 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 15:29:50 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 15:29:50 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 15:29:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iYo9ScAKA2RohFY8P6BoKdhxv0FP1WztPOIOuOH0VXTyDuslJAo65GYLMH3Zz4oSSrZdfDiMGrQdO19cPe6cmSC1hX65ddW8EO3xkhKwSjik/619ulZdKJcf+o7ZzvvJzNTUr7e2Kmprs8VnNzM2AtjEol9hlEWspvHa+QEVTxoxBDQQapb+lLs34s9v4Tggn0IFKoOoSXLVx082ZhavyhIoeq67xSueA/YR4gfFdhyOQ3MtqAlDclSG3p9WE7be9nHv3BuVCT2xlgYihiAzzJOQtEhr8BRTU3xd3FMlhXgytvXdSfE67YNQtLuaKx8m/hl534XGJkHhvDU906brHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rwz1hE21rNi4OLxYAhwbmjbLT9DuwSi4MqT1IWSLx2k=;
 b=aA41H1ClHuw5oa3RN6uksAU80xGfReXVURIqMfj0eoKgv5t7ON9aMQhIdGPle39eOzkT/B+zZ45QQ58nfz9Uk+DDazMP5j3VYsTbn0iTnnBqt4WdabthFKNbrzE1GrWu1mxrELUH0ENamBQ2j9eUUkQFetwGldqCAVWjll/1tPdognVjMT+7NXk6U0KD7Xn+33KU0Sy+bYuKNFzFOXyEs5Zb4+df3qrJSsalgJ2BhpO+0v4oSmyyApQVGg6BqWEX0ydAvbdrcKo/ke1k9AGxGXsiPLpoHFxSrgBPLYoGJPyK/N8mLTH5BpNS+mYxnW0I9AB5z1WEvmVqrq80CpfgOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SA0PR11MB4639.namprd11.prod.outlook.com (2603:10b6:806:70::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.19; Thu, 9 Mar 2023 23:29:48 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::4cdb:78a7:917e:88e5]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::4cdb:78a7:917e:88e5%9]) with mapi id 15.20.6178.019; Thu, 9 Mar 2023
 23:29:48 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 3/5] drm/i915/guc: Provide debugfs for log
 relay sub-buf info
Thread-Index: AQHZCVPZsjg1FQjSnkm30aGz8iwQPa5io2YAgJEIAwA=
Date: Thu, 9 Mar 2023 23:29:48 +0000
Message-ID: <1990314c00a789781b40d4ddff1ee647dcf78fb6.camel@intel.com>
References: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
 <20221206092100.274195-4-alan.previn.teres.alexis@intel.com>
 <87tu27cggh.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87tu27cggh.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SA0PR11MB4639:EE_
x-ms-office365-filtering-correlation-id: 04130905-f4aa-4202-06f5-08db20f62c62
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EkdnNQsuQHC3a0NxLL+UYA4cUMBbzW87DOfSr1syCjpxBHLV4LcPB6/zYhBeCy8BaDQu8a5kMlt9g/pxoCjYwxyCLyztHyip4NaAANh37vjZFG2A+SClFm0dFJk/z4It1IJMs7ngF82wCeD0WXLkr/RO4TTx/EKF5WlnIJvdN2khSL3XTzCAnJ4KH2v2UdnNhWQDeq0G5FTO9LTBmJF/2zjcMMSWBxqlJsoVoJD6TTEERGofh9W6/svq6BQa9tz+VVn3BQrCaCTtfN1nTtM4FH3haB3htpmwFPpB6We+1l1vFvcJRkMHVVXg92XjJ/deN6lg7KnXWWzXeBT1ckMRNLjg5qG02Awk0axodJhSu3DMCvORLXeWBr8rtfFQ6SoTFWnIdMyldcfgkGrF2y0YT68IV+4ssYlkqa93Hj/fqcivt/ZkcKRE62DoeNHtnl189vS6l32GVCJchO7ZSUxUsIqRCqlglyjZem7HZb7V+m732TK9FQlghAOhVNiUEyS00hF9O5hj5NOzR78hzagUejBa60rFJn47hxGncQ+/yDIxZuTYbJvGuXu9ZFHLen7NY2EY++vAxhgiZP1n/zCUXURMNGc5B3xGcrYPLlT91/eWBhKXvUcWtEOSbplwuDl9d3yrAcI0PFR9qL/RNhOVW9k2FUweta01AAEpYRFBJZ8ecp9aQ4BlyNrIIQKRZ/FA26EcrEE4vsI35PskzV4uBw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(136003)(396003)(376002)(39860400002)(451199018)(36756003)(186003)(6486002)(71200400001)(82960400001)(41300700001)(83380400001)(6506007)(26005)(6512007)(2616005)(8936002)(66476007)(91956017)(76116006)(4326008)(66446008)(8676002)(64756008)(66946007)(2906002)(66556008)(5660300002)(6862004)(122000001)(316002)(86362001)(6636002)(38100700002)(37006003)(478600001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L2FabThMYzlqVnBEV0Mrb0FZTzZPSE0wR2QvR2RmNXY0VXMwWG80VHEzdHhy?=
 =?utf-8?B?a1VJK1ZVSzlEWDhDdk5NbE0wMU9jOTZwSTAzemwzZ1FQZEoxblVBdHhGVjFq?=
 =?utf-8?B?b1pnUElPckh6bjAzeFRzUVJ6YitSZmV2UHMyVTZzWUFLei8zZzl1YzRUYlpq?=
 =?utf-8?B?dzdvODdjMGtRYWFHUWVzdEcySGNEKzJoWmhtS3ZkQ3pZZjJZTDVaN1VtRmpN?=
 =?utf-8?B?RU4rN3NZeHJVTWVaOTZXTVRMV29uN0hkQXZZWDl0c2twNDRKSDdvZkpaMXNl?=
 =?utf-8?B?RHhBYlJkeHplN2pVaHNmcFlLM2dibzdsL3kvS2RJRjUyTlUxMEdKcURBTzNk?=
 =?utf-8?B?eE1QSC9nUXFWNE9kZzMyZlY0RXRha1I1QWRzZVV6eVJyS3dLQjUvRDIwSGR4?=
 =?utf-8?B?UUdyL2NWTFFpTm9IczZCMWxESTNhaGNqSHNWNUhMQXJTdC84V2JzMnlLT1NX?=
 =?utf-8?B?c0RmbnRwdzhxQitVTXN4S3oxdllrY1kxa2I0UkRQMTJsVk1jMlk5cVdRVWFV?=
 =?utf-8?B?UnZobUFVaUs2eS83L0tEKzZvaGl1cDJ2L2lJR2szQnlxUWpqaDBBaUk0MGk5?=
 =?utf-8?B?Y3ZISTFGdlJIRXl2Tk5OTm1hMHNHTmx2ZkMzU2RaTHFUWlRVNVd4YWNISlZU?=
 =?utf-8?B?enMxQkdyT1pRVndCNnowcGJtckFRM0JFdk1QZkNITWRweHJzK1F1UHlBaTh5?=
 =?utf-8?B?UVVwbVRmNlFQTWN0U2lrWHpFd3d1aXZnN2J5S2kvSmhoTDFpWWg4WFFzRXZj?=
 =?utf-8?B?MzJTbTlyekZEMUkxeUk0YnJFMlFzWGZ0YjAwT0VUUHlBL0crajZoUGdBa05j?=
 =?utf-8?B?ZSs3SnVoMnhQc1cvdmpES1ZKTytSRU1Tbi8vcGNVYmJ6RmxCMWFiUDFFaGpK?=
 =?utf-8?B?RS8vREtxSlZnZGdhSFczMC8xSmR3aGw3czRYVjBQQzlYNno3NFkwcGUyTzVk?=
 =?utf-8?B?K2wzY21lemo0d09Qa1pnSzhiRVMyN3RxMExEYzRrZ3FPdUtzbXRGT3A2Vkhk?=
 =?utf-8?B?blRoRWJzOWpCVnhvcGdRSHhhZE9tSGJtZUEwUHdtNVVXNkhqRzFORmhoSnFy?=
 =?utf-8?B?elNyVXF5Mm5POUplcDR2T0RhMG11Z1U0bzdJZXUvZithOG5DOVVuUkFiWUpV?=
 =?utf-8?B?Z2JiSVFUVGp2VWpUMnZYQmJYNDFUT1FEMmZ5Unc5OElrL2lvd2d4UXZDRkwv?=
 =?utf-8?B?SXprbVFhZzF4MTJqd3hsV0dpZXBydWN5YVFEamVmNmN6Y0NlWHJMcXcvaDZ3?=
 =?utf-8?B?SmI4OUQ5VEhWbVd6OHNWUTJBd1MySXFkRzBiQnh0cGpkYk9oWWdLQlNja25P?=
 =?utf-8?B?Y3lVVUQwWWlhaUJtYTkzODRXblEyVmZLS3N6YnRXN1lnaXI0V01JaTVsZ2lW?=
 =?utf-8?B?U2tqVFVwWGtvTi82a3dIRm5WRk5tL0o3WE5PRGJqK3hrSmdObGIvMjhPMkZX?=
 =?utf-8?B?Y3ErT1ZPNlIzdnZNbnhRdWVJTDdPaWVtZ2lvSGxrSVhSRUpwTEk5cUhnN1Fw?=
 =?utf-8?B?Z3RPSXFGWjVUZUpiUmNYbU01Vy9pQWp3ZTdUMDJIK1ZGa0lZdWVFSWdJWDQv?=
 =?utf-8?B?bzA1K0hGSmhUbklMRTBvM3hENS96YktlNlpiRDkwODNWTk5BS2d0dVN5b1hi?=
 =?utf-8?B?cXh3ZVV5d3FLVnJqdUh0NEsrbHhTWE0xbVBWdUFxVmpPQ1Y1K29YcmdZWDls?=
 =?utf-8?B?Q1RZTUMzNWM3eHcyR212SWxtUUNiaGNCR3J3OU9BZ0FMTElLbCt6bW1ZbHRV?=
 =?utf-8?B?UktjWnlpRFE1YytsUkR5UlVhMm8vQUdvSWFwSHpsWjlhRDk3QVJ6YlhZcXk3?=
 =?utf-8?B?dm9YVytBWi9uaEVNc2tOVnZGU0pTZStWM1JYOW5QcWN6ZnhaQUVmZmVkWFMx?=
 =?utf-8?B?c0NVa3FJWTBWWDdnZndlRUd2eXNiVU1iODFya0xkUnpyelNGZUpwamx2NFFH?=
 =?utf-8?B?Q1g4Q3dXWHRGNW8vbHZlT2RBdmRiZ3pFR2RCbWllU0dNWjc0eG1iR2NBNWpG?=
 =?utf-8?B?WVJRYmZGM2RjYkVQaDJlaXYvMWFjOExJM1NyTU5oQXdQTjFWcVFUejZSL3F1?=
 =?utf-8?B?ZEFXN1JReDdZMWttcXVVRDFGd2x4dWVoTmlqaEpVNTlUOW4wSVVScnoraUxY?=
 =?utf-8?B?eVYxcGZhUkRBVlJKbUp0c0QrbzBucnh5M0JlQlBVUTM3REMybFNlc3JHUzho?=
 =?utf-8?Q?5RpVlgOortpqz4J81LgaY5Z4R9ZzcEWEjV/wCGnSqeEx?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <24C0063694161340AC544EBEABA2492E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04130905-f4aa-4202-06f5-08db20f62c62
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2023 23:29:48.1097 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8/5zA39AfSdsCnYKot9NT60BV/ckm31Etzf8U2dqLrQuBNUl7cVDNQ9c9rc/bqbFaAqFCi0L88IFToN2TTc1f505Niv3CqvBKuLzg+C8geNfzDI8A5MYtzGJ/WrwNOC4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4639
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915/guc: Provide debugfs for
 log relay sub-buf info
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

RmluYWxseSBnb3Qgc29tZSB0aW1lIHRvIHJlbG9vayBhdCB0aGlzIHNlcmllcy4gUmVzcG9uc2Vz
Lg0KSSdsbCByZS1yZXYgdGhpcyBhbmQgcmUtY29ubmVjdCB3aXRoIEFzaHV0b3NoIG9mZmxpbmUg
Y29uc2lkZXJpbmcgaG93IGxvbmcgaSd2ZSBiZWVuIHNpbGVudCBvbiB0aGlzLg0KDQoNCk9uIFdl
ZCwgMjAyMi0xMi0wNyBhdCAwODo0MyAtMDgwMCwgRGl4aXQsIEFzaHV0b3NoIHdyb3RlOg0KPiBP
biBUdWUsIDA2IERlYyAyMDIyIDAxOjIwOjU4IC0wODAwLCBBbGFuIFByZXZpbiB3cm90ZToNCj4g
PiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3Vj
X2xvZ19kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9n
X2RlYnVnZnMuYw0KPiA+IGluZGV4IGRkZmJlMzM0Njg5Zi4uMjc3NTY2NDAzMzhlIDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19sb2dfZGVidWdm
cy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZ19k
ZWJ1Z2ZzLmMNCj4gPiBAQCAtMTA1LDYgKzEwNSwzOCBAQCBERUZJTkVfU0lNUExFX0FUVFJJQlVU
RShndWNfbG9nX2xldmVsX2ZvcHMsDQo+ID4gCQkJZ3VjX2xvZ19sZXZlbF9nZXQsIGd1Y19sb2df
bGV2ZWxfc2V0LA0KPiA+IAkJCSIlbGxkXG4iKTsNCj4gPiANCj4gPiArc3RhdGljIGludCBndWNf
bG9nX3JlbGF5X3N1YmJ1Zl9zaXplX2dldCh2b2lkICpkYXRhLCB1NjQgKnZhbCkNCj4gPiArew0K
PiA+ICsJc3RydWN0IGludGVsX2d1Y19sb2cgKmxvZyA9IGRhdGE7DQo+ID4gKw0KPiA+ICsJaWYg
KCFsb2ctPnZtYSkNCj4gPiArCQlyZXR1cm4gLUVOT0RFVjsNCj4gDQo+IEZvciB0aGUgcmVjb3Jk
LCBmcm9tIHRoZSBvdGhlciBlbWFpbCB0aHJlYWQsIHRoZSBpc3N1ZSBoZXJlIGlzIHdoZXRoZXIg
dGhpcw0KPiBjaGVjayBpcyBuZWVkZWQuDQo+IA0KPiBBbHNvLCB0aGUgaXNzdWUgaXMgd2hhdCBo
YXBwZW5zIGlmIHRoZSByZWxheSBpcyBvcGVuIGFuZCB3ZSB1bmxvYWQgdGhlDQo+IG1vZHVsZSwg
d2hhdCBoYXBwZW5zPw0KPiANCkknbGwgcmV0ZXN0IHRoaXMgLSBidXQgSSBjbGVhcmx5IHJlbWVt
YmVyIHRoYXQgaWYgdGhlIHVzZXIgc3BhY2UgYXBwIHdhcyBzdGlsIGhvbGRpbmcNCm9udG8gdGhl
IGRlYnVnZnMgaGFuZGxlLCB0aGUgaTkxNSB1bmxvYWQgd291bGQgZ28gdGhyb3VnaCBtb3N0IG9m
IHRoZSBkcml2ZXIgdW5sb2FkIC8NCnVucmVnaXN0ZXIgc3RlcHMsIHdoaWxlIHRoZSBhcHAgZG9l
c250IGdldCBhbnkgc2lnbmFscyBidXQgaWYgdGhlIGFwcCB3ZXJlIHRvIGNsb3NlIHRoYXQNCmhh
bmRsZSBhZnRlciB0aGF0LCAoZ3VjX2xvZ19yZWxheV9jdGxfcmVsZWFzZSBnZXRzIGNhbGxlZCks
IHdlIGRvIGdldCBpbnZhbGlkIHB0ciBhY2Nlc3MNCmluIGtlcm5lbC4gVGFrZSBub3RlIHRoZSBs
b2dnZXIgdG9vbCBydW5zIHdpdGggc3Vkby4gVGhhdCBzYWlkIHNvbWV0aGluZyAibGlrZSIgYWJv
dmUgY2hlY2sNCmlzIHJlcXVpcmVkIGJ1dCBwZXJoYXBzIGhhbmdpbmcgb2ZmIGEgc3RpbGwtdmFs
aWQgcHRyIChsaWtlIGk5MTUtPmZvbyAtIG1heWJlIGd0LXN0cnVjdCB2YWxpZGl0eQ0KLSBidXQg
bmVlZHMgc29tZXRoaW5nIHRoYXQgaXMgZXhwbGljaXRseSBjbGVhcmVkIG9uIHVubG9hZCwgbm90
IGxlZnQgYXJvdW5kIHdpdGggc3RhbGUgcHRycy4NCg0KPiANCg0K
