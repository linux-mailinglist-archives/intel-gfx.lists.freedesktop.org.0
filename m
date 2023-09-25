Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D527AD077
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 08:47:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6819E10E1FE;
	Mon, 25 Sep 2023 06:47:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A6B210E1FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Sep 2023 06:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695624446; x=1727160446;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bIcK0HE/2MqFr0K2/zjp2LO404cR21xOdDVsWQSZ3oc=;
 b=Xz7LSS9UsTzxto6pmZxlfPX7P6AYxdKJk2GOw7GLb1zv+sUcUzq+rcUg
 2RCLtQyj3IWYuWkOmYvera5t1lpD6LkB+JjrI/eLKh10AFYl5eELMZr6u
 3AksDsUObY/ZKa3pxcjcB8aPzmsrbKrZ0IerOkmO4O1k7pL5VPor9gFnr
 CPjJWEmnufmqbI/0B/JMa+CwhddTBsPnJg4WrsAZTNQk+p+SkXVfD51Ac
 ugCyZRuKDb3NGaEiQzS0LpU4uL8NUb5NIWjNyb+u4UcPHnlS119kQeusq
 J41i9eo4MkC3jsepBS8JQ8BM5317QQglNMmkFfvUvT5yKKlftMs8T9Xq1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="383939573"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="383939573"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2023 23:47:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="741809469"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="741809469"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2023 23:47:18 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 24 Sep 2023 23:47:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 24 Sep 2023 23:47:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 24 Sep 2023 23:47:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bDKMVpUzhA/kW5RqGFP+dZXQS0I2wmEYMqtzaZg2ZTyNIjmJ2v0e4ThHtu6mNWTQDH71wmLS8MehNIwE5mnlMH5IXX1L8n74u7si/e00hMHUWZDrvJ7KMXrUkZH/7SGBMi5ZTjkIbrO+y0lpICLDjXpuqwISwJNOhsU1r6DKWLQI973mF7vxLpNCzVUyOGO+WYYZRVSe8829Hctw3kMDgVLVZfDUZk0WD0pT/sR4aUo36lr+lMrdMNbTIZumUvk1fICRxf+pU5rcgheYLOq+lDZJPHUj9K9YPiR9yRPPuJpiFXzA8BYp5TxKNDxtLDYvd9K57R5oemG6EZMNLD3HCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bIcK0HE/2MqFr0K2/zjp2LO404cR21xOdDVsWQSZ3oc=;
 b=NMl1lNYtmdMIBWE3AFSYKo9liofS/uSKvIdkMmqJqP+H/Yp7opvQeAYL8i+zNqAUTdMcy8D/pOx8FqcMDjhKV4A5IUa6wsTTib/9MTWZnhpN7kuYLqD39S12yGIkfG6HTQbFahtGJNUoHwJukOT7SdGJsEkoVnAzy6xqXaOzMTGwNj+BqFrv5wbSJszi51mB6qkzxd0AwGQ39xf3TGKHlUQTFu9u30+bUtKgPW3ank65MDJYb9pHQq0cHEQv9kNuPWZKKsVZ6iu32SaSNNbtVjeIPOe5YoB99/X6OqHVK5XDOiVtIaw7pUNfcTbXn5qd8jCaCS5Rg0FHynbx985Ekw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by DS7PR11MB6221.namprd11.prod.outlook.com (2603:10b6:8:9a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.23; Mon, 25 Sep
 2023 06:47:12 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::47c3:d35d:e598:b83]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::47c3:d35d:e598:b83%4]) with mapi id 15.20.6813.017; Mon, 25 Sep 2023
 06:47:12 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Add a wrapper function for vga decode
 setup
Thread-Index: AQHZ7TO+V+uC71BWvku92pJx2Nzd4rAmkjwAgASLSaA=
Date: Mon, 25 Sep 2023 06:47:12 +0000
Message-ID: <CY5PR11MB6344C620E5A3EFAAA8C65E82F4FCA@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20230922091102.1030418-1-uma.shankar@intel.com>
 <8734z6pnol.fsf@intel.com>
In-Reply-To: <8734z6pnol.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|DS7PR11MB6221:EE_
x-ms-office365-filtering-correlation-id: 8f02ed39-7211-461b-99d0-08dbbd933f61
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JGsROUUW27iTyrbaxN2pqMSMnfPXvufUl77nm/4L4ZnRETdA9Z33RtaPDwLC+zj28RT6IRxYRoOrn1GgRGtMKJRm3jjwiEo9PVaLqYYRk65n05OZ5jZcy7QwfJxSqz9kSwawGqZ2kaoXWic0SVfTwVq0bpXPqOxyLsrj5lIJLAHTzdeN4Mj9xAMtEFnSBCSIsmM9C4UvLmgFrg9eyCV0FM1tlei8hIR+6UtnABFEy34tf1tB/1wkf0ELl4M5Z0ISpvy/4Oet7jibcntbKYGwX+Op91c8JDndAO71Ia9knA9uE9lKmQZT+0795svdzrRweSI0/tUgVaJVzcFyW7H5VoZGiA+QWepR+w0sI6HAJtE2PGax6kfq6SSSmC34GPCXRuw020iOdTeCn+duiyxmurlvqW3H6nAJnHBBwqhGIa3GVkij0qgemNIi16z3Eg/X0crE8auWtt0h5PcOoeTw6FtzNt+86/0huWrPyEkKz2wmgaK6l91mBZOdQHwTS1sxlgDt4GPtwG+bFEd7fo2BfZs61P65QFNTFn4Fi6mqeRlptz9KrrScQHZnjPTFRhOd5ExZoLcUmtfiQ8zowhsjwht8W9TqgziG92UsKEVwQjuFEG4/4Yz9dt2ixPtBA2lo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(396003)(39860400002)(346002)(366004)(230922051799003)(186009)(1800799009)(451199024)(9686003)(55016003)(122000001)(82960400001)(53546011)(7696005)(6506007)(26005)(71200400001)(316002)(66476007)(66946007)(64756008)(110136005)(8936002)(76116006)(33656002)(66446008)(66556008)(2906002)(86362001)(8676002)(5660300002)(52536014)(38100700002)(41300700001)(478600001)(83380400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MzRicUV4L1F0aytZV1FTOVlSVDJ3c0xMS1ZZTW1jMkFncUJyRlR6cm03L0pL?=
 =?utf-8?B?T1NtQ05tYlJtSGRmcGtCUC9OTU5hUjJqbnVKMUJ4QzloZ05CNGtPdXFPZDNj?=
 =?utf-8?B?MG4wbUNPQit6eEs0NWR1L3NZMXJsclRCS2RKY0FJQWxKWHhGSVJjSDN4YkZL?=
 =?utf-8?B?cnN5YlBpYlZpTzlxQTNRb2RNbEo0Zk54TDlBZVJjdm02VEIwaXQ4eVc0TEcz?=
 =?utf-8?B?ZGc1Tko4a3BDMXM2M2Z1bC9IcnYzNm1JVHN2d2U2STltQ0tUVVZ0K3NyU1l4?=
 =?utf-8?B?WWRRQ2ZwTll4eE5adzZQMVdlNHlTQ0tUb2ZaczNxL0o2Y2g2TmQ4MG4wejZw?=
 =?utf-8?B?KzFNWnhjT2Z0ZFUxRFNHdkxEMGZuYUVUYW9uWWYrTEtjN3RFQ1BHWmlMaE96?=
 =?utf-8?B?RUZUTzNFQTdEZHZabzJobFFHZ0pNMWQxRkF1QWdsOEpMdkxHUUhBUjEybkFZ?=
 =?utf-8?B?TmI4QjduOGpVVU41bHowOXpJZUV1K1V0L1NsSy9EeGs0MmF6OTl6SlFEbjJv?=
 =?utf-8?B?aUdSMkFHSVBkYTFxeGxlNFBHanV4SXdTYkhzQjdiclhhL1dUZ2hyejJPS1ZI?=
 =?utf-8?B?RUtwM0N5dHZwNEk4cFVUK0taY0JNRDE0MCsyakJZcmd2aGRsVDBCbUNFREQ1?=
 =?utf-8?B?Mkc3QXp6VXhGZG5WMlFHK05wYjdaamJCYmFxTVFEVlFkUlVtdy9Nb0F4Q0k4?=
 =?utf-8?B?S1d3R3N1ZlhWSzIyY1dmMWZFWGRXeDhoUm8xT1VROVhoRytPNkkzaVNqTGFY?=
 =?utf-8?B?azEyMjVjTWFma1lPRUNudnZiTExnR1lIOWpzWHBCakxVOUJmWUY2dEY5Y1Rj?=
 =?utf-8?B?Z2syNXRYbDF0NEFSZ0JuWlV3QjZjcHhQcnVnWVBGYlhZRXBiU0dEVDhZUFJL?=
 =?utf-8?B?dXpWOEJac2pFS1FkWmVSUVppT09zT3NuYVUvTS81U3VkRFd3bVdSWHNLYmky?=
 =?utf-8?B?SHZndW04Q1FKekQxR0E0RzV3Mk5RRWZVL1pyd091OFZZT3c3czZOeEVQRFZY?=
 =?utf-8?B?RnZpSWN4U2JYSW8wYWRsU1dkbTRtWUZ1dTcvQmJ3dHcyenNudVQrZGlCM0U4?=
 =?utf-8?B?QUdicEF4Ukp4V3FhSStaMG1FTHUrTHJENjBnTWdRSW1GV0NiSEVDL1BkWS9o?=
 =?utf-8?B?V0huSjAyazBCK3lWUmdJY0x4enZFdjl4Zi84U0tOYzNpbGlOL2xab2VVTENY?=
 =?utf-8?B?bzVzUGpGSzE5ZHBjZWpzS0wyM3RqSjRCcTgzMTU4V3hGTXJMZjZvcWVyTmNX?=
 =?utf-8?B?T0g1Rlc0OTlmYnAwczhvYVpMeXMxdWpzdUd6MHlmMHAzWk1ZSGlWaHhWU0hj?=
 =?utf-8?B?cFZkM3RxZmF3OVc0YjBLK0dMU0RMUUFXWGJibzQ4ZTFja29OK3B4VERCVHNa?=
 =?utf-8?B?U2RaV1Y5S1M0YXZLcWN1b2diK2FNdDlabklnbjF3bXZ4dGdvVy9taDVpUGli?=
 =?utf-8?B?WjFBcVNhcXYvSHZSRXVCYXFGamRLbGJrU2xKL3JQK3BiVVUwS1NFL05CbFQy?=
 =?utf-8?B?U3grSXFud05UWHFtQXY3WUhVKzBtMGFVc29UYmNoY1BtQ1AyUkFEME94dU9G?=
 =?utf-8?B?ZElCeDBzRm1iUkliSzhRdytDSzRNY041WVBvVHF1RThOeDY3Mm1QVlpKenNJ?=
 =?utf-8?B?Y1hDUVkrQVU2U2RPNkdEV0hVUWlWSnFVVkhGVUpRQS8zWHV5TWNFeVE0Y2pw?=
 =?utf-8?B?c3Z1N3FQZlVSTDJEcGtiNENzZ3o5OS9aaUYxbEUvMjd3M3RFdWxjSlFTeEYw?=
 =?utf-8?B?ck5oMFRrTDFkVUhiYVBnTjhxWEZ1RWd2VkxXVjhjVDhGZGVCL1lzOHNxbDhx?=
 =?utf-8?B?eHZ6L3VTcmhVam1zV095Tm1iT3FGVTU3eW5QNERPZVFobFFvZVVXb3hKVFdh?=
 =?utf-8?B?dFpsN1cwNUJCTDhnL2FGMXkvSTQvT1JTUGhSVU9KMGIrb2hTeXlITk5GY3lN?=
 =?utf-8?B?cldPaW5FQzI5emgxRHlrSUNubWIrMjczYlZoSUFlbVk2MDlMQXNXdWlSQWhR?=
 =?utf-8?B?ek5vZzdpY0lpNVdNa21JZHBSV3JrNk05TEg5SVhTNDdKaWI1c0UrSnRlVHdU?=
 =?utf-8?B?YUl4L1NFbTNEWFZRNUI2Vng0Z2VhRnh1dlNncldFYU5XUEwxNmlDOVdWcWdM?=
 =?utf-8?Q?zTgLtPM10gGZygP9NkHYwtFRN?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f02ed39-7211-461b-99d0-08dbbd933f61
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2023 06:47:12.4030 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j2z2BCStZZ2Aua3HQ2qELJO0HVVhsOR0HHUd8rvjdyl7fwsvZtr8R9A2DlKSlQds0mNnpFix41z6L0DfiuRFqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6221
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add a wrapper function
 for vga decode setup
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgU2VwdGVtYmVyIDIyLCAyMDIz
IDI6NTMgUE0NCj4gVG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogU2hhbmthciwgVW1hIDx1bWEuc2hh
bmthckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6
IEFkZCBhIHdyYXBwZXIgZnVuY3Rpb24gZm9yIHZnYSBkZWNvZGUNCj4gc2V0dXANCj4gDQo+IE9u
IEZyaSwgMjIgU2VwIDIwMjMsIFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+IHdy
b3RlOg0KPiA+IFNvbWUgb2YgdGhlIFZHQSBmdW5jdGlvbmFsaXR5IGlzIG5vdCBuZWVkZWQgYnkg
dGhlIHByb3Bvc2VkIEludGVsIFhlDQo+ID4gZHJpdmVyLiBBZGRpbmcgYSB3cmFwcGVyIGZ1bmN0
aW9uIGZvciBWR0EgZGVjb2RlIHNldHVwLg0KPiANCj4gVGhpcyBzaG91bGQgYWxzbyB1c2UgaXQg
aW4gaTkxNSwgbm90IGp1c3QgYWRkIGR1cGxpY2F0ZWQgY29kZS4NCj4gDQo+ID4NCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5jIHwgIDMgLS0tDQo+
ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRlbF9nbWNoLmMgICAgfCAxNCArKysrKysr
KysrKysrKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZ21jaC5oICAgIHwg
IDIgKysNCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdmdhLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdh
LmMNCj4gPiBpbmRleCAyODZhMGJkZDI4YzYuLmJmODRkMDEzMzliOSAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuYw0KPiA+IEBAIC0zLDExICszLDgg
QEANCj4gPiAgICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24NCj4gPiAgICov
DQo+ID4NCj4gPiAtI2luY2x1ZGUgPGxpbnV4L3BjaS5oPg0KPiA+ICAjaW5jbHVkZSA8bGludXgv
dmdhYXJiLmg+DQo+ID4gLQ0KPiA+ICAjaW5jbHVkZSA8dmlkZW8vdmdhLmg+DQo+ID4gLQ0KPiAN
Cj4gVGhlcmUgc2hvdWxkIHJlbWFpbiBhIGJsYW5rIGxpbmUgYWZ0ZXIgdGhlIHN5c3RlbSBpbmNs
dWRlcyBhbmQgYmVmb3JlIHRoZSByZXN0Lg0KPiANCj4gPiAgI2luY2x1ZGUgInNvYy9pbnRlbF9n
bWNoLmgiDQo+ID4NCj4gPiAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRlbF9nbWNoLmMNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L3NvYy9pbnRlbF9nbWNoLmMNCj4gPiBpbmRleCA0OWM3ZmIxNmU5MzQuLjgxOGYw
YjdmNjJhMiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxf
Z21jaC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2dtY2guYw0K
PiA+IEBAIC0xMiw2ICsxMiw3IEBADQo+ID4gICNpbmNsdWRlICJpOTE1X2Rydi5oIg0KPiA+ICAj
aW5jbHVkZSAiaW50ZWxfZ21jaC5oIg0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfcGNpX2NvbmZpZy5o
Ig0KPiA+ICsjaW5jbHVkZSA8bGludXgvdmdhYXJiLmg+DQo+IA0KPiA8bGludXgvLi4uPiBhbmQg
PGRybS8uLi4+IGluY2x1ZGVzIGdvIGJlZm9yZSB0aGUgcmVzdC4NCj4gDQo+ID4NCj4gPiAgc3Rh
dGljIHZvaWQgaW50ZWxfZ21jaF9icmlkZ2VfcmVsZWFzZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB2b2lkDQo+ID4gKmJyaWRnZSkgIHsgQEAgLTE2NywzICsxNjgsMTYgQEAgaW50IGludGVsX2dt
Y2hfdmdhX3NldF9zdGF0ZShzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2YXRlICppOTE1LCBib29s
IGVuYWJsZV9kZWNvZGUpDQo+ID4NCj4gPiAgCXJldHVybiAwOw0KPiA+ICB9DQo+ID4gKw0KPiA+
ICt1bnNpZ25lZCBpbnQgaW50ZWxfZ21jaF92Z2Ffc2V0X2RlY29kZShzdHJ1Y3QgcGNpX2RldiAq
cGRldiwgYm9vbA0KPiA+ICtlbmFibGVfZGVjb2RlKSB7DQo+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IHBkZXZfdG9faTkxNShwZGV2KTsNCj4gPiArDQo+ID4gKwlpbnRlbF9n
bWNoX3ZnYV9zZXRfc3RhdGUoaTkxNSwgZW5hYmxlX2RlY29kZSk7DQo+ID4gKw0KPiA+ICsJaWYg
KGVuYWJsZV9kZWNvZGUpDQo+ID4gKwkJcmV0dXJuIFZHQV9SU1JDX0xFR0FDWV9JTyB8IFZHQV9S
U1JDX0xFR0FDWV9NRU0gfA0KPiA+ICsJCSAgICAgICBWR0FfUlNSQ19OT1JNQUxfSU8gfCBWR0Ff
UlNSQ19OT1JNQUxfTUVNOw0KPiA+ICsJZWxzZQ0KPiA+ICsJCXJldHVybiBWR0FfUlNSQ19OT1JN
QUxfSU8gfCBWR0FfUlNSQ19OT1JNQUxfTUVNOyB9DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3NvYy9pbnRlbF9nbWNoLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3NvYy9pbnRlbF9nbWNoLmgNCj4gPiBpbmRleCBkMDEzM2VlZGM3MjAuLjVhYjI1NTJjZWIxYSAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZ21jaC5oDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2dtY2guaA0KPiA+IEBAIC03
LDYgKzcsNyBAQA0KPiA+ICAjZGVmaW5lIF9fSU5URUxfR01DSF9IX18NCj4gPg0KPiA+ICAjaW5j
bHVkZSA8bGludXgvdHlwZXMuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L3BjaS5oPg0KPiANCj4g
WW91IGRvbid0IG5lZWQgdGhhdCwganVzdCBhIGZvcndhcmQgZGVjbGFyYXRpb24gZm9yIHN0cnVj
dCBwY2lfZGV2Lg0KDQpUaGFua3MgSmFuaSBmb3IgdGhlIGlucHV0cy4gRml4ZWQgYW5kIHNlbnQg
YSB2Mi4NCg0KUmVnYXJkcywNClVtYSBTaGFua2FyDQoNCj4gPg0KPiA+ICBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZTsNCj4gPg0KPiA+IEBAIC0xNCw1ICsxNSw2IEBAIGludCBpbnRlbF9nbWNoX2Jy
aWRnZV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICppOTE1KTsgIHZvaWQgaW50
ZWxfZ21jaF9iYXJfc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOw0KPiA+IHZv
aWQgaW50ZWxfZ21jaF9iYXJfdGVhcmRvd24oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
OyAgaW50DQo+ID4gaW50ZWxfZ21jaF92Z2Ffc2V0X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LCBib29sDQo+ID4gZW5hYmxlX2RlY29kZSk7DQo+ID4gK3Vuc2lnbmVkIGludCBp
bnRlbF9nbWNoX3ZnYV9zZXRfZGVjb2RlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBib29sDQo+ID4g
K2VuYWJsZV9kZWNvZGUpOw0KPiA+DQo+ID4gICNlbmRpZiAvKiBfX0lOVEVMX0dNQ0hfSF9fICov
DQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==
