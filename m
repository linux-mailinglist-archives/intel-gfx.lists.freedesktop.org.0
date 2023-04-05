Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A229C6D757B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 09:31:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0656710E83C;
	Wed,  5 Apr 2023 07:31:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 797F010E83C
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 07:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680679884; x=1712215884;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mVr4/0jq9/4HeIuQkky1K4WMlmrQRbReUq/feVV/Eyw=;
 b=WIYzsznQ6/h2oWA4W8gPck+qv16mL09IuKY4NrcG7+Wv/Ek5aUjP4D4r
 Za1gYFXpZ+wAD3dkpRsHC/h//fCBbc62SkrVHXxZ4JC1h7pxn46aElunG
 X4haUBcPlO0Zf/XMd1nS+MKnQEY3wKOy4dTcvLFUy6M48t+Y8R16AqpSy
 R3TcsBB09vzVOK6KDeO5jPud3QFmbzcP3QRkbHMB7lzfuXDo1cRTu8Apf
 EIFnprcwZz9Fs78qj+SkVT60hZngjyKV1eRk1WQoJDB8HltH8MXb1BCeA
 Ihr//JLyI7OXy8bN5ZkLfFd1YFRCpz6mRztPApwH1sgS0UNRj9Y0PxFPg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="330990993"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="330990993"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 00:31:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="636801630"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="636801630"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 05 Apr 2023 00:31:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 5 Apr 2023 00:31:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 5 Apr 2023 00:31:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 5 Apr 2023 00:31:13 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 5 Apr 2023 00:31:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oWGnGqbguuwbmNDK+LXYRDs5WLchBwgrO4LoXRebkGVc9gX1EkZj+7REyCaeGk60K6nYhMYKXbgVcV/m+TLsqdKkgi4+W+GdJZ4PmK+fKOSPTcYwd5boZGFUrAxJRTdeQVbID+5g9OelQI21yGH/PfNa6kO9my2hua6UWRu23sLBnWyruZz3qJraBmGeM957eJkOZ77FL426jdfwjmZ6Mc89TXcU0lZQ2YJE9RGkGQjVWtgK3falihtFbI3tZU63VCavq9WoIs2Shq6ThQPzv6eUHJ/RkA7DMBMCh9ypqL2ofGSTBVE7gzbUrb0WsO6mohcLgb2XFgL1AruG/qLP4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mVr4/0jq9/4HeIuQkky1K4WMlmrQRbReUq/feVV/Eyw=;
 b=XZ4kG6CEtr5ARSSfO14iA05HwJhSFWWPqAO6HOXEps6bwGVzQX7sGJxAUVZwD+pBZ3xodD5pLI+JWZSXvlwQtVrB+QlQpLhitgZgHLjyWwWJM2nPe6/xn8WU9dDlWb0dAZradGsBW6kNVwkxDtn1Jp8avP2EpIM7g/IBuigy4+2h67auW1Z6dwlhjomV8deptSqy0aY/rsd5LMFhZoQM9XViqLNXSdbp0o+xX5HtC+/XvXTq5oT8oXrPdKcsq2nWeTifylmcEa1IT581TLp4TzM/noY7BcE8r7nSg9unMBKfDrqqlxuvugIkYAcerYYF4SRZLd9EiD9lle4SCNktFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by PH8PR11MB7968.namprd11.prod.outlook.com (2603:10b6:510:25f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Wed, 5 Apr
 2023 07:31:11 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f%7]) with mapi id 15.20.6254.035; Wed, 5 Apr 2023
 07:31:11 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/6] drm/i915: Generalize planes_{enabling,
 disabling}()
Thread-Index: AQHZW2texUe1XcZ1b02ooXqrtZLcEa8caixQ
Date: Wed, 5 Apr 2023 07:31:10 +0000
Message-ID: <MWHPR11MB1935CC67941E7A433380CC1EB2909@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
 <20230320203352.19515-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20230320203352.19515-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|PH8PR11MB7968:EE_
x-ms-office365-filtering-correlation-id: 35323cb6-d874-4fc4-a981-08db35a7baa3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gVt2IcdS/bRzc9qczKfKvfMIpCV4IeyjCZI4nfJQUBDFAAlqWcbgAuQP5p6Zz85SojeUCs58hz8ga9W222vVo7EvQCkLvRyfxHp2SoTy7LsyHhvDTEUAweGDO8CNRLmThcF8jtgAeVKhuX4a4MGTsu06ekdLpJ0Wqk6WqA44FVh5f4pMHmkJ0+ta5gujZKF2vE76MSJmGfLCy23zBKdKKMo8FCRSaOnsrzZk51/+n+aXN+WTa9DAsw3HqvDdd2aPStVlt4hQAdCGHOUc1N8G2qW0jwX1oTNE1fqg4yfTdzHHvpTDaufryTBm+PWNfW8srb1uFln2HQdhhATE/aQi/x8FoDboPB++OXUHqpeBm7JfD/lJR+/jqrz9XhZEpIP0uBo05VpLFmZUE0LezoH4DbfEdtJ7Mt5/nbCbYPGYkkcbjmHI8r1AF6umsbxbEthOZHv8M58KaMWwqj9yapdHq2Phz0mS1dJIMDdFO/Q0kpgf3e4lm3kLv2aa05QVoqzqWxvxJFn1JEOz+iu4xPj1z5E+CSck6y/p4S+e3764779QLYQ9fBTzm1XbiRXFLxl2Mq8/7InFua1L2FKVYgJ1Kam9rjIp6TO/nCwK7MUu0XozHRMnLMmCgPOobODZT/h2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(136003)(346002)(376002)(366004)(451199021)(55016003)(4326008)(66556008)(64756008)(66476007)(8676002)(66446008)(76116006)(66946007)(122000001)(6916009)(478600001)(52536014)(316002)(8936002)(5660300002)(41300700001)(38100700002)(82960400001)(186003)(83380400001)(53546011)(66574015)(71200400001)(6506007)(9686003)(86362001)(33656002)(2906002)(38070700005)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SlRZcEUvODA4cU5YZmtuMVpFYW9scXpnWjRRcElqOUZhMFdFV0VKTC9xR3hz?=
 =?utf-8?B?TncyTnZyZ1VPdVBBL29RWDI4K1QwVjFxZ0xaTmUzUmZUTE5YZHUrTDMyT2RH?=
 =?utf-8?B?cWlrQ3BhVlZnK3ozTlcwYjJYRlBWbSttbkt6UzBwL2grWXhnQ1Q2ZEtuN2ZD?=
 =?utf-8?B?STRuQmwvQ2YxT2w1SGNhdis0OS9WWU9lVFNTeFpueno2S3RLSXRRMGc2MzdZ?=
 =?utf-8?B?RkRqbHIxb2lxNk5tVkhTaDI3SitYSkZGdmxCY3lGWkk4dHhZeDFvYnNyL29I?=
 =?utf-8?B?SnB5MTdrck9uMDYyWkk1QWtUTTdnWnQ4ajg5U3FBRkRocG9CNzdDeTlpU2Fn?=
 =?utf-8?B?bkRycm1JMzR6U1lya0J6NmhMUVpNVTFjZ3VncE5XWnc5clFGd210cmd6VHlQ?=
 =?utf-8?B?MHFQdTlhbFlKMDUzYWJwMnRqWHJCMjl3d0swQlVxZzdOY3h5MVUrWDRQWnU2?=
 =?utf-8?B?T25GZHRVbzZWQ3NUd0VZNUw1dGVobWRIazNuSHMwNnNSUTlmU2Z4TWhhNVBx?=
 =?utf-8?B?OTBVNWpDcFN3V0xQZys5TEpvYzRmN0taVGV3T21VajB4RFFRQ2dTVUlGNElP?=
 =?utf-8?B?K1M1SVE1RDRHeFhDOC9xcVl1d3lyRHFlTWVyQzBkaE0vT08yZGJiMFFZTzBO?=
 =?utf-8?B?TWU3Z2E0T3V1Qi9ab05RLzhpQTV3ZW0zbGNyTklqbDJhcDd1TnQ1YStrU2hp?=
 =?utf-8?B?bWV2YWJqRUVBVkk5OVdGWXpqK2NuRGYrQkVROEZpUllqUTM2d1pXUUk3bGRG?=
 =?utf-8?B?RmUwaUlUZWp1VUpWaTlmZGJvNVdXRFd0S0NsQTRqaXlCejByY09lNzBXVWRS?=
 =?utf-8?B?WE5sWGtZaldZKzBVM3FwRUp5VndLekY5dEZJMVQxbXZJMUwzeXFLUzhObERL?=
 =?utf-8?B?aFEzZzNrK1NpSDBjRkRKWHZpSmlHNW9URmx6cmdrVDJIQ3ZqaHdKaEhjWlhV?=
 =?utf-8?B?bUZYYkU4RWtxR1NkQzRZRVN1ZFlZS1oyNGxDN3paa2MvN0g2bzRNdEpzWklz?=
 =?utf-8?B?V1lkRmJvYUFHZHd1dmdxMi9LUnk1eHJlbXFyMFl3YXVVblE2MHN2RE43cHlB?=
 =?utf-8?B?T1RmNVFWcHR0ZzlybUY1WmtsRzljREVOOGFmbXpwL3VSYzZNbTZvYk5ZVmRR?=
 =?utf-8?B?cWl4UFJhR2g3M1hEWCtYT3p0SWZLdVVPdU0yY2NnR3kwbFAzbmlhckl5SVdu?=
 =?utf-8?B?cktmLzlPRnREVWxJUVNCaC9xMWtmS0xxNVF2OVc5Wkc5eWhkQ0w5N0hyQTN0?=
 =?utf-8?B?QVErNlZGcmN2MSs4dGZBZHpqZkVrc3ZWTFNTSktxaVB5ejA5YUxPNXdCUi9w?=
 =?utf-8?B?dU80UWZKSTh3ejg2VDVEL2djdzF4Z3dHekdzWFd5L0hDekt6dVhUL1ZsYUM5?=
 =?utf-8?B?aVd1c1BVVXdQVXdtY1ArdjlkWVFicS9vc1I5SmJaOHFkUDUzc3BkcHErMUFL?=
 =?utf-8?B?dU1VdlZQOGFUVU8wQy9UbnloekszeGxtZDJ3M3hyNEYraE1YajBXekh1NmtS?=
 =?utf-8?B?SEYyOTVLRTg0RzdvdWMxQ3hIdk9kQW9ja3IwaDVLRmN2UmVtZ1BMbURGZ1hn?=
 =?utf-8?B?NGVsb1drMmZVTmhjSWdOOTNKQVZ5K1ZwVzdRRzQyYnNwckZuY1lXdGttcE1W?=
 =?utf-8?B?UElEWTlqaXVpRm12em1XbkFrdzlIQWRRM2dWOXZIUFVHMktkanI4c0ZXSVV2?=
 =?utf-8?B?ajRmTENIKzJQbTFPbVZOVVdCQURBdERoVWNxS3lyR3pFbHBEUzBsdVRFRWl4?=
 =?utf-8?B?NWVVZ0Z6ZU9paDBZbVpwVDlHOXk3V1c4MVpPcjkvckgxRHFyNmFtODBqSzdC?=
 =?utf-8?B?VVZIeXBvUml4TWs5LzJ2cVVOcnJLQkNtU0QycE9MSnpWM0dyRk5nT3RBd2F5?=
 =?utf-8?B?eDI5REI0M2hEQzMrMkhUR2R4Tks5OWhyZnZGanJCS0JEK2FDWU5XTE5OMkZr?=
 =?utf-8?B?S1JFcWlvVnBBdmFhcklJbW5Semx1bXE0ZjFFaFdKYnd5OVM2VFJsUmtNcTVH?=
 =?utf-8?B?RnEwenNLTjJreHV2SE5VY0M3UEp4eW9WdFFWT0UyaUNMeHVhakFCMERESzZQ?=
 =?utf-8?B?ZTRsOFhOd3VlcEx5S0sxUk1LQVcxcWRtOWx1RU1mdGFuUlJ2dGd5WVhReWNU?=
 =?utf-8?B?eHlNMHFsdjFpQlFNSUhqQjNxU1I5NmdNTFpCLytzSE1zRTZPeThXdHVGOGQz?=
 =?utf-8?B?Tk01VjNQSEw5em1sMnRSWnlsZkZsZDJUdnJyOHgrMCs2Smdia1BSckhMRXJw?=
 =?utf-8?Q?yXR35AZqNgIHpE0oXO63g/JA9NhLRJklD37AY9zlqg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35323cb6-d874-4fc4-a981-08db35a7baa3
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2023 07:31:10.9807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W8xQI1lcxyERKOTxGyy+rrAVZekVe8krBY7QoMJBv4JXs4bdxQ0m8zMU6v+C/Y8NSqiME2mrYVCib2UdAdok7uDwSv0Z5cldbWM7VBoFZHDU7lqRChA+0lc6Mxa4e6hT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7968
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Generalize planes_{enabling,
 disabling}()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IDIxIE1hcmNoIDIwMjMgMDI6MDQNCj4gVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDEvNl0g
ZHJtL2k5MTU6IEdlbmVyYWxpemUgcGxhbmVzX3tlbmFibGluZywNCj4gZGlzYWJsaW5nfSgpDQo+
IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiANCj4gSSB3YW50IHRvIHVzZSB0aGUgc2FtZSBsb2dpYyB0aGF0IHBsYW5lc197ZW5hYmxp
bmcsZGlzYWJsaW5nfSgpIGFyZSB1c2luZyBmb3INCj4gb3RoZXIgZmVhdHVyZXMgYXMgd2VsbC4g
R2VuZXJsaXplIHRoZSB0aGluZyBpbnRvIGEgcGFpciBvZiBtYWNyb3MuDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
MTYgKysrKysrKysrKysrLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCAxMjE5OTBiYTJhMjguLjMzNTZiMDcyNGUxZSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
QEAgLTEwNjksMjAgKzEwNjksMjggQEAgc3RhdGljIGJvb2wgbmVlZHNfYXN5bmNfZmxpcF92dGRf
d2EoY29uc3QNCj4gc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJCShE
SVNQTEFZX1ZFUihpOTE1KSA9PSA5IHx8IElTX0JST0FEV0VMTChpOTE1KSB8fA0KPiBJU19IQVNX
RUxMKGk5MTUpKTsgIH0NCj4gDQo+ICsjZGVmaW5lIGlzX2VuYWJsaW5nKGZlYXR1cmUsIG9sZF9j
cnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSkgXA0KPiArCSgoIShvbGRfY3J0Y19zdGF0ZSktPmZl
YXR1cmUgfHwNCj4gaW50ZWxfY3J0Y19uZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkgJiYg
XA0KPiArCSAobmV3X2NydGNfc3RhdGUpLT5mZWF0dXJlKQ0KPiArI2RlZmluZSBpc19kaXNhYmxp
bmcoZmVhdHVyZSwgb2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlKSBcDQo+ICsJKChvbGRf
Y3J0Y19zdGF0ZSktPmZlYXR1cmUgJiYgXA0KPiArCSAoIShuZXdfY3J0Y19zdGF0ZSktPmZlYXR1
cmUgfHwNCj4gK2ludGVsX2NydGNfbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkpKQ0KPiAr
DQo+ICBzdGF0aWMgYm9vbCBwbGFuZXNfZW5hYmxpbmcoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKm9sZF9jcnRjX3N0YXRlLA0KPiAgCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkgIHsNCj4gLQlyZXR1cm4gKCFvbGRfY3J0Y19zdGF0ZS0+
YWN0aXZlX3BsYW5lcyB8fA0KPiBpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQobmV3X2NydGNfc3Rh
dGUpKSAmJg0KPiAtCQluZXdfY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lczsNCj4gKwlyZXR1cm4g
aXNfZW5hYmxpbmcoYWN0aXZlX3BsYW5lcywgb2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRl
KTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgYm9vbCBwbGFuZXNfZGlzYWJsaW5nKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwNCj4gIAkJCSAgICAgY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKSAgew0KPiAtCXJldHVybiBvbGRf
Y3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lcyAmJg0KPiAtCQkoIW5ld19jcnRjX3N0YXRlLT5hY3Rp
dmVfcGxhbmVzIHx8DQo+IGludGVsX2NydGNfbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkp
Ow0KPiArCXJldHVybiBpc19kaXNhYmxpbmcoYWN0aXZlX3BsYW5lcywgb2xkX2NydGNfc3RhdGUs
IG5ld19jcnRjX3N0YXRlKTsNCj4gIH0NCj4gDQo+ICsjdW5kZWYgaXNfZGlzYWJsaW5nDQo+ICsj
dW5kZWYgaXNfZW5hYmxpbmcNCj4gKw0KPiAgc3RhdGljIHZvaWQgaW50ZWxfcG9zdF9wbGFuZV91
cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkJICAgIHN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjKQ0KPiAgew0KPiAtLQ0KPiAyLjM5LjINCg0KY2hhbmdlcyBMR1RN
LiANClRoYW5rcw0KIA0KUmV2aWV3ZWQtYnk6IE1pdHVsIEdvbGFuaSA8bWl0dWxrdW1hci5haml0
a3VtYXIuZ29sYW5pQGludGVsLmNvbT4NCg0K
