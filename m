Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D79662EF0F
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 09:17:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B300310E1FE;
	Fri, 18 Nov 2022 08:17:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76BCD10E0F0
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 08:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668759447; x=1700295447;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=R2g04CY1F/b9Z61fYzLwQufjzoHqDueM5mEKUCDRqTA=;
 b=NDcFRmjuY9f1mOGKsqhxklYbYHE4VvI9OyINzdZvBc59oDsJFF7pc0Y9
 WCUscmCnQlh8NLPr+17Zxozh8Ad8x1LmR6UQ9P7U89wHh3byQOpHXFUKz
 wr7a1xR7TIsLeg0bXPXyyH2kRyjflX7iCtdWFV25jNArDb5xCFSPUwB2w
 mc923RRmJmRYnU/dTN0/hSfLXM0YswJWMCW5/lINC8ljsHMZ24NJigFjL
 /sMDSfrJW63cYdyEfTusx0TVlv/NcD9VcExpVpeVxJSljdr9HKV3iDHrP
 TayyDN0qsE4KAP8/jYPUD9EGlP0tTzexXZ9Nay5mDvw7qmIqfqJgigor+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="375218313"
X-IronPort-AV: E=Sophos;i="5.96,173,1665471600"; d="scan'208";a="375218313"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 00:17:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="640130989"
X-IronPort-AV: E=Sophos;i="5.96,173,1665471600"; d="scan'208";a="640130989"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 18 Nov 2022 00:17:26 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 00:17:26 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 00:17:26 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 18 Nov 2022 00:17:26 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 18 Nov 2022 00:17:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CNGdWZtIqmp0wG77isssHrP53XfDOVSREhSHkIoylI/HwzjRu/sFYPp0CKJXiqqD+7yWLsFN7aRISgyZgSsEK+l1FHg7W9/Ytlh4VO+Xp2NPdYh4JpqrR7Yg6EY/cvgoC6r0OCUoHWbTg+zTp7gw60hWQKrxp1aiMsuavmvkhrJKN0onzEnEfGzRvcE6gD5QePhfK1/5x+lyBPN7cBI6IbpyV6oKh4nf7QflFo8VNRYtDJd7dYxcj5C3Mx30mjB1azey8C30F9gPrvtRiY2gJ/RPDi7SYkKp4jQz0UK0uRdsJZwYtD59aCipvAOncyw62GQbgaeYYeIhHTPcr8uYWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R2g04CY1F/b9Z61fYzLwQufjzoHqDueM5mEKUCDRqTA=;
 b=YDJ8NQyLZ2EDtIpJHgeiwKC7PQg5ZrHzWmfTF6BZo2wJSd+0T8EGp4PCBRCyXQaTGgdIDigGzIo/IoPDBulOVFJd4egMY278qCyyCf5r5s+KIu+8ohc/u2SEHcImH3CBnWJfALcOd46b6+cLfbuaFRssaKVq9OwJWZ7llUiVNrVXvbt+SX4+ssbGzX86i54EOJpOkhcAY5wfCaAZR9nmZihA6SdyuNY/0VFQMcLuwGIFfTGVNgrkEkWjimW99mgkjt/y3jd+TfnSZ2ugXVKE1F8s3stl1tWYClvMT5FCjxaXakNXFccUvgFRoEX9Rf8YpEUdK5VqG3Ugm5mY+hdk2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB6942.namprd11.prod.outlook.com (2603:10b6:806:2bf::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Fri, 18 Nov
 2022 08:17:24 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488%4]) with mapi id 15.20.5791.022; Fri, 18 Nov 2022
 08:17:24 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 06/20] drm/i915: Fix adl+ degamma LUT size
Thread-Index: AQHY+D8yKB8cR6fszU+bRYGqhpfxma5EW6Ng
Date: Fri, 18 Nov 2022 08:17:23 +0000
Message-ID: <DM4PR11MB6360FDCF3AE74F0568C67F2BF4099@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
 <20221114153732.11773-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20221114153732.11773-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB6942:EE_
x-ms-office365-filtering-correlation-id: 8ec4d920-c2d6-41c2-1734-08dac93d527b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hP/VE2oxwWyP08ZczvdLrS2v49U05yv9MIAOEnmW+XiMVbBgHi8w8V2F/yXn9Uq/dZn5bxxhePT155V6c5eAk3mdpHiqv/qqRsWg7jbflixqDcCjrpM3/EPkEoleIoUUGb2SAxlxHpsSoUuEi4usuxW5IhIxeQjGce5Hl9M0n4AUVj9Ysy9pD+TpDQgHYp1wRMhmGIVL8KgL0IKo2hMOjeypOowauj49ynpkJMMkAHO7n5q6hiTBZwxihTNSk81TRUW0Xj/B/YqxdUFRuv1tOyi8119VY6/EFfy6zMhOQtHagKUamOfS+11e8CuNe+wPPzzbcBbsqD0B3m/A31j5E9ArSPhpGlXJbRjyEJIMsVECH5s1Z3zXaV8FXgFn0uxC0lqIgcQrL2Rt3BI+oliax0rc34eSZ5YxWWbKBs2Os2BOtZpUKnye/5lb9/9BOpj1gJhhYO/PEVA5Wo/PZ1WnCCK01rkKz+tbEM5XH2dKFiYRNxPEw6R+D3dowlMyTq90PI16NV8tlxGPfcckLtrJ5t6uAImnMlwoasO88onKOpYNuKCdjDb7ifVyih0PyV6yQ/h+Upczl8JPIQt/riDzAR+RVGk+khnGX19Av4/F21ndh1kg84+AlRSSJi3YBEgePnutVqHFGVxbwOzStoeGeRwo73dLQtLkmrCYdSATVHjNz+5DFneMN3TK4nGeaXLtRhAr9KETQxFwlp4O1Kiomg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(366004)(346002)(136003)(376002)(451199015)(2906002)(83380400001)(33656002)(55016003)(76116006)(86362001)(66476007)(6506007)(186003)(38100700002)(53546011)(7696005)(110136005)(38070700005)(26005)(82960400001)(122000001)(8936002)(41300700001)(5660300002)(52536014)(8676002)(64756008)(66574015)(66556008)(66946007)(66446008)(316002)(9686003)(71200400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NlhHVXVtTkZ6ankvdTFQRHJjNEt2bUtyV0ZVdFBLczR5RXhMbmgrbHI0clFW?=
 =?utf-8?B?WlFJY1NSaHpqM0FHNlNTL1p1cld4ZUNHaHoxNmdDR3ZSa3pDeU9vbmtOZFFH?=
 =?utf-8?B?Ym15cTFCZlF4OHV0aFpXV1J6M0w2eHhJUVNSbUNwOXV6ZlAxakc3c0VtU2s2?=
 =?utf-8?B?d0JtK3VEQUR5SFpRajJ6djh5Z3RUNnFrQkFkd0h2K0hLd21yMnF6bDgvUFdp?=
 =?utf-8?B?WHBrM2RwY3IvbWU5VndHYW1DUTJsbzVJWnRNRFZEVktpcHR6cml0VDVJdXlT?=
 =?utf-8?B?aEtydkhJMDd1MzkvbEc4Y3ovMVhzYmM4L0RPWTdqUWZDQ1VBSDhyc0JnZ2FS?=
 =?utf-8?B?cEF5YWZFd3oyN0ZVYnM2K0J0YXNpNkxnS2czNlNHL1g4ZUdQcC9BdHdjbUZT?=
 =?utf-8?B?VTRibG42dGNuVWxZblRibWQ3Q29LL0RNS25vcnRLeHhnVWdHK1JBUE1qR3FD?=
 =?utf-8?B?bjNvci9qV2Yxa0ZYdUEzMStNR2Jib1ZDalY1MjJVSXg5YS9zV3lySTdxTVpu?=
 =?utf-8?B?QU05UWx0MS8rbGJNcStaSzVWZG9wR0hIb1Z1V25HTXErU25icWRqN3VVa2pP?=
 =?utf-8?B?QUN4bVpOZWxuZE4zOVVxbFJWQk1OaUx1S29CRC9xWHVFMDlvRGsxeEZzVmFj?=
 =?utf-8?B?blE5MFE5T2J2ajVNQXFTV251Y0dZUk51VDA2NzAveTNXYlNwVlZyaE42MXp2?=
 =?utf-8?B?anV0OGNDZ05lWkRXOG5IaVhqcTJKZ2RVR24zenRkZXdxdWlyNkloVmwvWW0v?=
 =?utf-8?B?ZnRsUW5VT0theE9CQVRvY3ZEV2Ira2VGUjRJNzl1UGpTTnBxY1ZYL2N5aGN4?=
 =?utf-8?B?dEpRanN0SHJnYS9JSnd0RUt3RzJXTFhjU2U5M1BlYnRPbkZUTkZxT0JUY2l3?=
 =?utf-8?B?dFFVRjhqeVhXOWlQS0o1anAzNjZncGNjMDlYN2szOWNvYlhLK0tNbGx6amVk?=
 =?utf-8?B?dEFzS2JZTTZnbGsvR1RsWm1wNkZEaW1BWXZUNWlnb20yQ3NmRC9nR1FnSE5P?=
 =?utf-8?B?VnB3ZkpZRFBodWtucWZWakdnMVlPQWhHM2RUMEhOdDg0eWNwV3c1UVh3MWNY?=
 =?utf-8?B?cjdhWXRJd3MzWkgyT3lrMlJlZDNJVm5nQXJVbGhzVER6RENBZytkNEdJcnZh?=
 =?utf-8?B?ZHdOcDcyKzl4d0lxcDZyWkdxMHByRkNNT0RMOUE1bDRMeVBTOW5Cdzk2Z0Vy?=
 =?utf-8?B?U1NaaDByVzZBVy8wODJ3WG10VmxNVDVHZ2czaFNiM0diRjlaSzB4Zi9TamtJ?=
 =?utf-8?B?eVVNZnhpd2hJdkY5WjhDYSswTnVLTkZLQzV1ZjQ4MjR1aXJrNDU0Y2RrYkN4?=
 =?utf-8?B?WmI4U1p0M2lyMTNiZU5TdDB4Tk0raXdzb3VPUnRNMEFMamJxdkVMeXNNL1B3?=
 =?utf-8?B?eFk5K25QQ0FqTkpjQm1wWkNreHBLZy9GVVhwcDdjUFpEUk84Wng2eC9RYlI2?=
 =?utf-8?B?QkVUSk1GMkFreUpzZUMvTjFnaWJkendHTHV0dDlKTU5vYzJvWGZDZmZqMGhx?=
 =?utf-8?B?NkpBaDdrcVZoYmNzUEdBY3kydklkMW8xeTlEa1UvYUhKQUVSMU1QRGdKVWNU?=
 =?utf-8?B?dkNJQ2IxRnpaYjdpYWJkU0pncmRjcWNGUTlaaE9wNVpLV05aVWNaeG85TVdm?=
 =?utf-8?B?NW5lZGx2MlFlMTJuUFlpNTNlODFkNitXNjErNU9uUkFGVTg1WUd3Tnl5TlJL?=
 =?utf-8?B?alJSdnlqaXBpdkdzUXdZam9KVnNaWUxlTkFmbDFHaUQ2NjRmeGVLYTUyZ1R0?=
 =?utf-8?B?ZTZqQlNVcnVPc2FSWFNET2Z2U3dFdjY1N1NpaVB6cHU4OUxhRFZLTm9tejA5?=
 =?utf-8?B?YlMxcXd3aTVtSjdlZHNVZFRId0lqMjUwUkhnaGpEZ2l1T3l6MmozNnFtSHhj?=
 =?utf-8?B?RG5oNjlkMGE1YlVmUW5CbVpwdlhzTEhuL0ZzdEdPMEdCaFFiVHI4KzYvdHN6?=
 =?utf-8?B?cC9sMklzUHdQL29KbmZUYXl5MGtFVDlJQmZmcm1qRHFZN0p6UlhVMHovdkxF?=
 =?utf-8?B?QXJ0SVFXSks4MEZ3dFI0Y2NmT0RGeTRmbWU2cUdWdjkyRWJON3pxaWlqa1Iy?=
 =?utf-8?B?eWZYdWdlKzArU0tWS0dGcTRPU1hjNVVLY1BTZWNQRWRESkNBZDE0cE5UeHNi?=
 =?utf-8?Q?/VNiW94zU9883ZIGqw/LeqQGk?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ec4d920-c2d6-41c2-1734-08dac93d527b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2022 08:17:23.9864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XGejCxbjU7twi2KRzxoK65TvBoTuD2fur6HMNvoRBaTCJ/4EsZWg5gl2t61F+UJmnE7s6CS9lzmxnYrTNorQEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6942
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 06/20] drm/i915: Fix adl+ degamma LUT size
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMTQsIDIwMjIgOTowNyBQTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBb
UEFUQ0ggdjMgMDYvMjBdIGRybS9pOTE1OiBGaXggYWRsKyBkZWdhbW1hIExVVCBzaXplDQo+IA0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIGRlZ2FtbWEgTFVUIGlzIGludGVycG9sYXRlZCBzbyB3ZSBuZWVkIHRoZSAxMjh0
aCAoPT0xLjApIGVudHJ5IHRvIHJlcHJlc2VudA0KPiB0aGUgZnVsbCA8IDEuMCBpbnB1dCByYW5n
ZS4gT25seSB0aGUgMTI5dGggYW5kIDEzMHRoIGVudHJpZXMgYXJlIHN0cmljdGx5IGZvciB0aGUg
Pj0xLjANCj4gZXh0ZW5kZWQgcmFuZ2UgaW5wdXRzLg0KDQpMb29rcyBHb29kIHRvIG1lLg0KUmV2
aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIHwgMiArLQ0KPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGNpLmMgaW5kZXgNCj4gMjExOTEzYmU0MGNlLi5jNTA4NDFlMzZjNjEgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYw0KPiBAQCAtOTQ4LDcgKzk0OCw3IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gYWRsX3NfaW5mbyA9IHsgICNkZWZpbmUNCj4g
WEVfTFBEX0ZFQVRVUkVTIFwNCj4gIAkuZGlzcGxheS5hYm94X21hc2sgPSBHRU5NQVNLKDEsIDAp
LAkJCQkJXA0KPiAgCS5kaXNwbGF5LmNvbG9yID0gewkJCQkJCQlcDQo+IC0JCS5kZWdhbW1hX2x1
dF9zaXplID0gMTI4LCAuZ2FtbWFfbHV0X3NpemUgPSAxMDI0LAkJXA0KPiArCQkuZGVnYW1tYV9s
dXRfc2l6ZSA9IDEyOSwgLmdhbW1hX2x1dF9zaXplID0gMTAyNCwJCVwNCj4gIAkJLmRlZ2FtbWFf
bHV0X3Rlc3RzID0gRFJNX0NPTE9SX0xVVF9OT05fREVDUkVBU0lORyB8DQo+IAlcDQo+ICAJCQkJ
ICAgICBEUk1fQ09MT1JfTFVUX0VRVUFMX0NIQU5ORUxTLA0KPiAJXA0KPiAgCX0sCQkJCQkJCQkJ
XA0KPiAtLQ0KPiAyLjM3LjQNCg0K
