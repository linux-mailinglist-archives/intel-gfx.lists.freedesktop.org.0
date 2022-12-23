Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72380654D8A
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 09:37:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 922FF10E16E;
	Fri, 23 Dec 2022 08:36:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAAE510E16E
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 08:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671784598; x=1703320598;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=lv2bQT18nV4c4MUPYQ2OqOnu+ECzBG+VFtEn/sngvho=;
 b=d+PXO+cSkS5yXYVoH11b7phyE9LqKMxlBuyHHXzRWghft+ipe3/w7Q2V
 JGVo+kwyXBk6GRvoxcTld3Ie0r95UiEj0ZS9U1wos/8F4jidEti6n9hqK
 ZNg6qpOnx/4aEZ3mvUbaceJUBoj/73jJPozXfSK3jAof+vPQUAPCoclKH
 xtdu79gD5jk2vGrNkk56zipst0YsTNkfY+xGY/GK2Jng+x53nbHnIl2kv
 2FNaPkpyBUMzzJbMYZv6vy67A/AoDVJ9pMod9a3ev5Z628+eD6EFzs5dj
 zBkY/+ERhvgxMYCkUeIxS1BCNW2bsrBsgj9eMb3dtPDlIGW7fiev5W3vr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="303770739"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="303770739"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 00:36:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="826244310"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="826244310"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 23 Dec 2022 00:36:38 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 00:36:37 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 00:36:37 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 23 Dec 2022 00:36:37 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 23 Dec 2022 00:36:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xd/dwEf/Z63syZ8NH7x/RGsq7It2DeWtzDwsjpT3bQN8flplpGMZkt37R+5gDRwHdfXql47wYTdZkjjh8iHD+qhk0pJ0BGfhVHJ4anH/+EqTsPz4IEUj0WvK+6FBXhzeEFbqwI4lSmywtWYIY6Qel7HLlXc9vrsSfE7Nd3PrJdfcRBE4dmwTpgi5fhr/0MiBzCFqPGiIdD7I+G+nSm5l7oQTZpgDI0pX3Z+QvURksB2nYtXo7ECo994p7knR0M1JhTpoKj59cE0zsTo7C//UeJcFrSz3NlUM0GDcCYb+2oxcLgebGlT5Asnit7NCseZQtmYO7PntH1XFULP3pfBgbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lv2bQT18nV4c4MUPYQ2OqOnu+ECzBG+VFtEn/sngvho=;
 b=XEjJfAK4lyNsG0fOSQ5jixxTDxfWkf+fgA/ZNkEuK0CzW+DYssNpwxl5MrMvJEodAOuH6j/xNBAf2ZTYIHjsmFaSvtbQ3O5QMzc0hs0z36k8D3jPVHO0TUBZEm31WuSUvgGenkd+z7g4+46ArKXuO6Zgjry3w1eMro9xNPULUrnmj5D5tnnHoUKlpglWH32E3MZ57RPzJ4aS0INmyWtFW7peWqq6Zya18eHltZ5FspAZJv5h6CkT9ttSRt/K3H6BVREShjFGaHvcYGcERPBn627LedGwDTTW/HXlzChrS3RrLPGXal3HANioUqNKNEJ2T8floiLpfJm1W05BxyxYFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BN9PR11MB5307.namprd11.prod.outlook.com (2603:10b6:408:118::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5924.16; Fri, 23 Dec 2022 08:36:35 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c%5]) with mapi id 15.20.5924.016; Fri, 23 Dec 2022
 08:36:35 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 1/7] drm/i915/gsc: Create GSC request submission
 mechanism
Thread-Index: AQHZFdDtYxSpesEDfkqitk+e7sdksK57KH2A
Date: Fri, 23 Dec 2022 08:36:35 +0000
Message-ID: <3a5a0963a53fefd26a3764c1401d1b7cbafea85f.camel@intel.com>
References: <20221222064355.3642557-1-suraj.kandpal@intel.com>
 <20221222064355.3642557-2-suraj.kandpal@intel.com>
In-Reply-To: <20221222064355.3642557-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|BN9PR11MB5307:EE_
x-ms-office365-filtering-correlation-id: 9d8c046c-4996-4fe3-11f4-08dae4c0cd36
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HKiWL5XcDFG/OWTi+rRHg4P7sNvUFt7kz2yWgM5WTf7uHgoTk3QvU58UW2koqNZHMWjsGln3J0Em9lC0tPkJAAyUCu4fI5GCVAIv4Dq7GCbTU7l1OBB9bXLuP5Ut2sqKcnUeHWLE2QUMNQmKaAk0dr1akfZU9MqwPyWYbcf2/ji/5foCHWY7tw7BFnepXl5iHAvWyuBFMEHqpQrwu2zRmYT4IukK+OqMdZWViZXpCF3WM6G8RPCbBODXEC+Nzn7djK8b/7e8BAjJz60vScIwGKLBySZFAMLlAfN9nDo3OXpOKR5sJHdHL6R6zaWOAERAnXyTRE3851Rpyilv6PrgGwe7/EXcoeC8cLV0pB1lw/FWeEQmPTQpJen0V4NNFJmnGKsJ1ERRdPpsmBlT7HzPwX5flRubGRSSvegVf3SsEPbR45ZthgRjJvCMkwZSIZMKvOFUhKdsEi9vSq9pbSzCwILDaC/wSCL3ep00OEM45GG9MDuFc4jOQoDfXAzaZnGWOcd+sJZwVvGvdGpgRCUBIZDJtfRh4a+c8kvCvGjwKDrB0RrioaXVTXSBQFT+O+omi1n1VnvDfAivL3NTLKcBVGhxPGUD3mhDRH2K+/nzhaZK17d86ao+viX+9D/xC8/Qa6/6gZfI1R5K18QXoN2y7ndWm8uTnb0CtMslh0Ky7omT0eeVcb0+FxUeBdupwYZGe01kvWNk+JqePs6T1VUmWsQ9FBRzXgY5YlcEvdbVWtyXt8gfC6TOyGhpCfWV5lLo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(396003)(346002)(136003)(376002)(451199015)(4001150100001)(2906002)(122000001)(107886003)(38100700002)(82960400001)(4744005)(5660300002)(38070700005)(8936002)(41300700001)(66556008)(66946007)(76116006)(91956017)(86362001)(2616005)(478600001)(66476007)(64756008)(4326008)(8676002)(66446008)(316002)(110136005)(54906003)(71200400001)(26005)(186003)(36756003)(6486002)(6512007)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q29ZazFObnlGb3FwVUJ0N3VoWEIrNy9XT1VZYW5zT2tiMGkwdjJxcDFQNlIy?=
 =?utf-8?B?cyt3SHdHMWJSNVJaa3g2ZDBHa3c4OXQ2Q2Mrb3VNWFlrYzA0VnNWeHY5K1hQ?=
 =?utf-8?B?eXhxOTE5QXBRVGZmTndkZDFQdHNuQ2h1SVZmbUtpYmdyL0JNQ2VlN3RQbitr?=
 =?utf-8?B?WnkveXZCajlyaEU0aFJSRUdrSStacUZOMUlYZmVmdml1bUNyUWVOU1l4aDl0?=
 =?utf-8?B?NmhTbFp0TVdaTVJFSVFaem9yWFBOWUJUWlhGZGhhOXY2OWwrSkJUWFJLS2gx?=
 =?utf-8?B?SFpvVnJiZHpyOEV0dFhQMUh3dzFLR3Frek1Ubm1EblF6UUxlQ1B0Y01lYnlB?=
 =?utf-8?B?b2hWSFMwQnpDQVlsY2FObjhpV2U3dkF0VUIrVXhqeXdXZ1l5MUdINnE5YjJI?=
 =?utf-8?B?bHhNZzFFQXJHcm5kemI3VjR5dHAvdGQ2K2FNQ3ZSNDFoVVVGMkdib1YwZXJR?=
 =?utf-8?B?MnZ5MlBVMG5nTUVWUnhGaGdkNHErWUlsQlZEMnZUUEVhcVNNbGhvYjhwdUQ4?=
 =?utf-8?B?Y1Z6L05uWU44dm1nZVNIOTJtaVpxZGxCSTJqOFRsd1ZJbTdaTHNkTS9wZkxz?=
 =?utf-8?B?d1Yra2FuckF5azcxSVM4SnlsaUc3QXI4bWFIajFFR1pER1BXRlljb05ieEE3?=
 =?utf-8?B?NHZwZ1Izd25HZ084U0tnWkZPdG9haHFwWmFDS1dRS2VvMUtpMm80R0VLcGNr?=
 =?utf-8?B?eXN4NS96b2taSWdPdGovM2lqSEovWndPL3hjeW9LTzZlVXpudU9pSG9QR3V2?=
 =?utf-8?B?RGhvMTIwZUhqK2MrcDBCRE9qRmJxeHp0SVJPcXNDUytsK3M0VjFTVGhWajFq?=
 =?utf-8?B?ZDdTM2t5bFJ4RXZDV1hYQkxBSWQ2UFJ5cGdubWZoeTBORldiQnFuMzhVUkli?=
 =?utf-8?B?eXg3MUdQM1pWTlMxcVg0MjJvMWYwSEpINFljcWc5bHBTeWU3ZzN6Tjk3cDBF?=
 =?utf-8?B?RmlBSU82OGJ6KzNsTllJWk9MQVlmWTQrRUNOZzJGS2EwV01VQTlwVDd4MmVt?=
 =?utf-8?B?eWFjLzlvR1UzNXZPUmZRT2F3dWFZOEg0cVRqbnIwS1A4a0NsSlQ0dVlHamtD?=
 =?utf-8?B?eWFTYTNzbjEvK3hoRkZsODk3b0dpdGFFUmJIN2RYdTVMYkh1WDllUWxQRS9w?=
 =?utf-8?B?N1VkQWRhR2J5SkFYVm4yREdsZmNOTlNNbmJISG00NEdNazNkOHhrNk91aDYz?=
 =?utf-8?B?a1dqdnpzcWUySTBZTnZ3YVVueWNhb0FqUnFRaThvMUpOaXNLQVViZlRYdUhM?=
 =?utf-8?B?aU11VXFUcjhGMGtjbkV6MTFIMDNHcHhFYmhubG9QZnRRMmdKTkhZK0NPYlF2?=
 =?utf-8?B?VDlXbDlFV0huUnhjMCtrckdBbnJBUnJvWVZ2OHJXNTQ0V3haeGxGdXV3VVB4?=
 =?utf-8?B?WHk1eVN2UDdENW9OT29ycXRVdGJCQ253RDN4OFZORThtbTZyTTdJKzZwQUdi?=
 =?utf-8?B?YStsS2lmWk9WSzc3cmpiT3BSZUhHWkhIa0pnVTBpaENScWdLSzRJMHBKdHVk?=
 =?utf-8?B?bUc2NHB2UjJPcHBNVUh2R1JDeGV4UlE5RVRnY1p5YjFyRktPT3oxWmZyOEhO?=
 =?utf-8?B?ZGQyckZuV1p5SU82UDdNOFhMMnZVajlhU3BtNnM5NFA3RjlUbDRZMjlnTHZB?=
 =?utf-8?B?akg5ai9pZEE5cEJ1VjhnOWZUaFVDd3ZZdGpIYVZzYVpoT29Xakc2UVZhcGwy?=
 =?utf-8?B?N0tQVjdSNm83QndLdEM4VzI5M3ZMVzBoamVRSnR4bzlxdzB4YmdSL0xLVllD?=
 =?utf-8?B?YXpsMW52QzdRK3FXVTRJQkdaZ3NSRUxIV2sxOXNpK3dLcVNUUU13WXdVM05u?=
 =?utf-8?B?a0VjTnJyMXRVRVNKNkpYR2Exd1h0YXF4bGdZSS9TWDhEWkl0cUF5Um9wNytQ?=
 =?utf-8?B?QnVJSUhmRlZvYUw2bU9JWnRBdUJhblJ5NDNHanhUMTF1VlpiWDBFVVQwdmg1?=
 =?utf-8?B?cVo3czQrUTFvZ3pPeXdLTjhSWW1Ebm1CandHU2dpaW5HR0pncm1RL2Z4ZVZN?=
 =?utf-8?B?NG4rMFdiRjNjTGNoWkV1Ly9VS0FsaHNva1NnYlhEcTdYRGM3NnBmenRPSW41?=
 =?utf-8?B?VldmYkJTUSs2b2Mra2xWcWJwNm8rR2xUSThPUEpiaURoMVRsdEt1anR3NGEz?=
 =?utf-8?B?TUcxZFMvWk5abFZHNzFYcHNqWjdaKzBqZUJ5YWwrL25hR0YwYzYyNTNlUUVD?=
 =?utf-8?Q?Ts3dc41/vIWxEQpj5WxJj9o=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <85DBA5951F6897419381505A761ED569@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d8c046c-4996-4fe3-11f4-08dae4c0cd36
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2022 08:36:35.3604 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IKmBaKgRznulwgFPDaFmokgFuSUtZqfINQjzTnRNl3PkW2grvEX7AksqGuWEdn3BQWLjsvhAKJ/ZgMzyCSjioKr3t+oln49S8OE7XmoV461iTsJJqDYcsoRSiafBGHWq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5307
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/7] drm/i915/gsc: Create GSC request
 submission mechanism
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TEdUTToNClJldmlld2VkLWJ5OiBBbGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVyZXMuYWxleGlz
QGludGVsLmNvbT4NCg0KT24gVGh1LCAyMDIyLTEyLTIyIGF0IDEyOjEzICswNTMwLCBLYW5kcGFs
LCBTdXJhaiB3cm90ZToNCj4gSERDUCBhbmQgUFhQIHdpbGwgcmVxdWlyZSBhIGNvbW1vbiBmdW5j
dGlvbiB0byBhbGxvdyBpdCB0bw0KPiBzdWJtaXQgY29tbWFuZHMgdG8gdGhlIGdzYyBjcy4gQWxz
byBhZGRpbmcgdGhlIGdzYyBtdGwgaGVhZGVyDQo+IHRoYXQgbmVlZHMgdG8gYmUgYWRkZWQgb24g
dG8gdGhlIGV4aXN0aW5nIHBheWxvYWRzIG9mIEhEQ1ANCj4gYW5kIFBYUC4NCj4gDQo+IC0tdjQN
Cj4gLVNlcHJhdGUgZ3NjIGxvYWQgYW5kIGhlY2kgY21kIHN1Ym1pc3Npb24gaW50byBkaWZmZXJl
bnQNCj4gZnVuY3Rpb25zIGluIGRpZmZlcmVudCBmaWxlcyBmb3IgYmV0dGVyIHNjYWxhYmlsaXR5
IFtBbGFuXQ0KPiAtUmVuYW1lIGdzYyBhZGRyZXNzIGZpZWxkIFtBbGFuXQ0KPiANCj4gQ2M6IERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+DQo+
IENjOiBBbGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVyZXMuYWxleGlzQGludGVsLmNvbT4NCj4g
U2lnbmVkLW9mZi1ieTogU3VyYWogS2FuZHBhbDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4g
LS0tDQoNCg==
