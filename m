Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 955AB4EC85C
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 17:37:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB97910E910;
	Wed, 30 Mar 2022 15:37:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E7D710E923
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 15:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648654640; x=1680190640;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MOS+mU4G0UeFCxfNro9yrCmL0HBGwYYyR/6eoHHtdZw=;
 b=jhJG68RS1+fN4M6/kkD3Uv4xQSLpDVia6cqLjrSGHFW7o+GjUJnBYAaF
 EFsnw9Mn5JNCA0Akfdst5Bp4KGB477hJSO8W3qSFE4W8RQnw8O49UFaZo
 CdW+3HJEYb9LcM6ksbvVDnZdzJeKT/cRT79kSGUK+Gpr2qS7vTFNIcy9d
 TtC5d0EEqERh0NOjhqIFNkrckrFfkA3+ZlSZ9Yb5QmK7lkzSdn1tT8aSX
 4CiPy3tELW7Ys/N/g2eDeVlBJIbu8yBE+QlIp4QPVJ5HvUVv/4LypjZZl
 LlEF/GLo6vGNLPyVLT2QvN9icsKHIhcORTQRJdlD50p3krhDSPqOe5YSc A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259757494"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="259757494"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 08:37:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="519725337"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga002.jf.intel.com with ESMTP; 30 Mar 2022 08:37:19 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 30 Mar 2022 08:37:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 30 Mar 2022 08:37:19 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 30 Mar 2022 08:37:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SQI6pdE4Q7lmJqrAOtDU+ivcIacah0Fs9o08n5iPGLLH1qelHmPDSfeKChbbAhBGg2QsXNzXOS3RNoGF73Pftlh/7GQsoiOENTTdomv4EtH8KJCZfbePV65Gh64gC64FqkjpzKiaZJ6fSd4EZADtgQZ/hkBJYXx2G34OcmCzyGFDihXiJ/rz82C8XAOQWv9ieMGxgm8a4cG7iGqA4Ct96jSfSfW5dzGwMTjBGQhmgJKB2AvmpVDjx1FuYt6SC9OTlnWbjadxwr6XiXvk+SUwYbaptYbTGsCpM6y2s6wtCaCTtoe5k1I+y0Vn0swxvG+eWtQp8esYKVrxtnBAp7bLNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MOS+mU4G0UeFCxfNro9yrCmL0HBGwYYyR/6eoHHtdZw=;
 b=dpM8jTgpTd6LuWt8ogYwXfVr/3QsFrFDWMLaL/3SkKvAlAKIEKpM6KM6rENRR7DG9X8T8EMNXhWfuTpNRW547u+T5pFE4yTJ4PZk1x8G9ZcW8zg3JkuxSVO3GeTqlymx1+tLYRIBuKJFj9IurbTm/pZdYfJvbo/CCL0JBNclWs5pxHBGmmWIiSOJ+6einSMF5Fsgr2ercdSDpvzAkSiFU2rUVrh68fidsqXFlT1EVgD5t1S+TIWJBEzqfLSVLKqmYbWznRG/VHVR0Fr2fDLwE5np1t2Vzwt4tW3wTfLoBljAvxPysJ5fW4ADtxA4ewAdC3nLV6idMU1htOEndLqRTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2567.namprd11.prod.outlook.com (2603:10b6:a02:c5::32)
 by PH0PR11MB5191.namprd11.prod.outlook.com (2603:10b6:510:3e::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.19; Wed, 30 Mar
 2022 15:37:17 +0000
Received: from BYAPR11MB2567.namprd11.prod.outlook.com
 ([fe80::f1ed:9074:5f82:150d]) by BYAPR11MB2567.namprd11.prod.outlook.com
 ([fe80::f1ed:9074:5f82:150d%7]) with mapi id 15.20.5123.021; Wed, 30 Mar 2022
 15:37:17 +0000
From: "Yang, Fei" <fei.yang@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Patchwork <patchwork@emeril.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJtL2k5?=
 =?utf-8?B?MTU6IGF2b2lkIGNvbmN1cnJlbnQgd3JpdGVzIHRvIGF1eF9pbnYgKHJldjEw?=
 =?utf-8?Q?)?=
Thread-Index: AQHYQxUAax6xO4BUX0a76cPQMz+UBqzV/laAgAByBWCAAZ/0AIAAAHvw
Date: Wed, 30 Mar 2022 15:37:17 +0000
Message-ID: <BYAPR11MB256776655353672056FB64009A1F9@BYAPR11MB2567.namprd11.prod.outlook.com>
References: <20220328171650.1900674-1-fei.yang@intel.com>
 <164852101313.5798.13575790930450522054@emeril.freedesktop.org>
 <10e046ca-6da2-8a2c-96e3-d5edf4267da7@linux.intel.com>
 <BYAPR11MB2567D70146A33C6FD4D6BCB59A1E9@BYAPR11MB2567.namprd11.prod.outlook.com>
 <74aeae6c-6834-f34f-cdfc-54ee72b1e2f2@linux.intel.com>
In-Reply-To: <74aeae6c-6834-f34f-cdfc-54ee72b1e2f2@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f8d62208-11d2-430d-fe6e-08da12632bc1
x-ms-traffictypediagnostic: PH0PR11MB5191:EE_
x-microsoft-antispam-prvs: <PH0PR11MB5191394F44756E102186C14C9A1F9@PH0PR11MB5191.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jPzyiRJPJNuGbQMSlK1Ia8ammZpZxW0L2rqOcXD2UOyhctOm45/NinvvIsVeAvqQi70qEkPdeeXb0/m5E0OoAt/Vk/HJWPAisicd2HFPc3mDp3LD18rJqFgIcyJBXWeBa0TULG8JHMx9HSP+EUWdmJAzC4ydspYYQB0jTa/2WzIReW4bm2k8UKQzSsDsPximwZihXeqbr70cAtNPqovOa4HQpL2jeYi5ZbEOMrXcQPVd8Vu74WjLuV7ZYDqguQnU0og8iDuSV2TL7PLoxpzTGmE4ZG8RDXfvFtYwGxfkyrT3kn8j33vLPFjJTsYcgnC0I4uWU/j/hxJJ93Lq1VNTk3bOha6fRUO2O+p+AZGXdRAeGZjjEpnUmH+7g4pqw+QuI4dtxUy//vucfX6cB2KZkO5MnFmcVKrs9owjYK4jBRPhWNytmyYjqKn3MpIpGqaoXjc97pun8okKLQGkrhpZEchEOcJXnncKIHxQE4a/9xS/Q2NhnN3Om9tbcf4ONYtWCU38WsVBOqjdIQOOI+uJDsS2HsaPHwpSIScKDq5V/N4cfpzwzT9eBE6FVYAZl8XMMPowdGZY6iMXcpLSlQgbnT9fVkdiJ3BXXQgPa9CbZUuU4bc55Z398kUvjGQalRwcIUwzn8DVxNFOSVPZ3QlPfshUS3c2JCYkeKkVQlYncpHzFBBFd/IRx4OterXFMRcj1p7tnUJKvlmXhOyTxq++jncM1bjgPEUSBRhr9UCwKeMW5RX0YO5/S4PvQoSH0PRB3wC7wtMWE0ioUofQKmRYgbAxER7oC9vAxfHPnAPVeQA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2567.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(2906002)(122000001)(6506007)(66946007)(66556008)(64756008)(66446008)(66476007)(76116006)(966005)(7696005)(55016003)(71200400001)(110136005)(508600001)(33656002)(9686003)(26005)(186003)(52536014)(5660300002)(86362001)(38070700005)(316002)(8936002)(4744005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VldNdmh3QTB4bFdGb1ZPMWFaTkdVMHBuUnYweEFoYXFqTDkxK0VaVzhkOUxX?=
 =?utf-8?B?TjdnTFlzcWRVTGxuWmlIaEhzVStORHJ6RjNUblBweVN5TFdBWW9aZmpvVXJV?=
 =?utf-8?B?d3JUSWUwbnRsRDc1cWd5T05ZRU9MNmtGTTlwdHY3OVZjT1gwMXNJZVlYM0FY?=
 =?utf-8?B?aEYwcjNsNTJaOUEzS1dNNU1NcXpUVUIvYVV0eFRDYmI5ZTcwanpjWFR3Q3Vn?=
 =?utf-8?B?SjExcS85b2VIOUVLNzR1bU1tYWNSZ0Y0M0pSVjRhVGZDOE14aXBKL1hrRkt5?=
 =?utf-8?B?ZWd4S0ZxTmVDMVN1eHltVnFXRkpINDBGc2lSMVlkUnJlUStQYnZmSWhQTEU3?=
 =?utf-8?B?cFVYdUtTYTh5L1VHYWRObVpZUk9sY0JwWlZwN3hvVmlPcFVqM0VWQ3VCdTJj?=
 =?utf-8?B?Nzcyb0haV293dU5ka1l4azJVNDZ2bjA0SjRzY2FEN3BOY1V0VDVvRDZaRFlx?=
 =?utf-8?B?dlVTc052SVFsM2xjSXUxYjlkL2RGWnJxYnhBQTgyUnFFV2lyQnlTVmcxMGRU?=
 =?utf-8?B?OUNHMEFCUlRVOHo3NTdqSVBXNG54YWw2M0JTOTlndjZWQzRoU0hDWERzNjJ1?=
 =?utf-8?B?TXBtVVRjeTBQZXVjV0lRdGZQa1JuUFVscVExQ082VGNwOUNsSkhVRmN4Y3hM?=
 =?utf-8?B?d0hrTFBzZmZodHQ3cnIrQ1JHcUNxcWhEMGhMTHFndXZBTE5LRFFoOGxpbytU?=
 =?utf-8?B?Q1hGYUlZR3hCOUl6Umx0ZGx1dG9OYjZNekdEZTdJaW53YjQ1VXV6UGViMXhY?=
 =?utf-8?B?RGFhakdlWDNMZVU2eUZVcTJydVBJVWwyV3BYQlRZMUdxc1JmaDBJSUdRVENP?=
 =?utf-8?B?Um50ekRXWUNiREx4Sy8wamlpWFV6YjFwVnpEdDdSU0dDL250aHVxY0dONjI4?=
 =?utf-8?B?dEFkRzdzS3RXSjhvTExFcjNydWJTSkZZZ0hCZ3U2VnRMTG1LQksycElUa3lz?=
 =?utf-8?B?Tllmbm5KK1hmbGU4dFRObEpQRStZZVBzT1hpL1BHTkJHUFhHWjFSUHFnY096?=
 =?utf-8?B?ZGIrNkc0V01hMEZjTzl4bktHNVI1OVQraGJTRU1uN05zdEpCbjM5N1F4TnlR?=
 =?utf-8?B?TE5TNnNJT3k3TnNmZGtGbndHTnBRZENMeWtsWExpMkdsWHNKVXgrWlVzbG1U?=
 =?utf-8?B?cE1ON21GWTYyYmhMY3ZsODBkRGFaYmlLbWVVWDJKZENROFhYT0JjYnZyaFZR?=
 =?utf-8?B?WTM3cWR0UW9sQjBhbjJJcldHM3Z0d2VXb3lhWU9OblppUVNIckZkZms4ZGdx?=
 =?utf-8?B?MFZCS0xHNnA1YlpYY01EeGN0L3Z3ZjQxVXR2R29ycjVyRnQrZTdzWjdnMmx3?=
 =?utf-8?B?SzFMVXd6MkpYaXpGUzJHNjVtMEUvUDNIOUN2QXI2b2FCRkJIR1Z2dHFyTGRF?=
 =?utf-8?B?eHc5VFhyRUtGK0RTWWFRMk1UbXR6aFhZZm10N1pFK3hWbGR2RkZkSGhwenNy?=
 =?utf-8?B?U2RoajZjY1Exc1hCSFZVY0VwOVhNQnVOZG02Q0JaS3hBWWQ2emhyVlBESi9w?=
 =?utf-8?B?Y2dwZVV5U3VvMDFKOGtrSDd2K1dqK01xcnU1b1p4emxhT1JCMW5kWG9EMzc3?=
 =?utf-8?B?L3h2UEFSLzZyWWx6YmI4SU9hSkhSRWx1NFRqMXJ2L3V2VEdtM2laWkovcWdI?=
 =?utf-8?B?YlpsMmNKRVhnekIyb3c2ZjNIeU5QZVlrOGlQMEVRTWxScjFEcjErWlB3RUV5?=
 =?utf-8?B?UEo3SnJrQjN0WWRtOURMaVozckRURmdzdi95MUd5dHozbytsd25ycnljOG4z?=
 =?utf-8?B?R3FJM1NCTmdJVkVBVmVTU3VaVTg0NG95R0FBTm1ZWlB6RjdOaTJjZWRNZHpK?=
 =?utf-8?B?ZUpSQXIxV3JScFlwMmwwcmFCemg0YWxtbFVOZEtRd2w4MDRVSTFQZ0IvNHJi?=
 =?utf-8?B?VEIrYTkyOEt5dXN4UGxmZlk3T25oakVuZy9CZ0h3N3hkOER0RWM0ejViSGlR?=
 =?utf-8?B?bC9BcVlZdDJpY2psN0J6OGphTlAyN1l1am5QUkxFdlo2aVZmT2VHemFpY3FM?=
 =?utf-8?B?TWNhczkwQVU5clg5NmlFYmZ3WUlEVzhCUHp5SmtNandSRm13VmlXTkFxcHZj?=
 =?utf-8?B?R3hPSGUwVjV4ZTF6K0o2WE5FQTdENnArZEgrV2JPbUZieGNWTDV2N2ptWjlC?=
 =?utf-8?B?a3ZKM1A0Smo1a2FsWHpDeGpSQnR1K2RNbGlMaklTUUVEcnltRCsvWnJRS3pQ?=
 =?utf-8?B?VjA5TUtMNVBIbnlFc1NvSjhLRTRtbmhnUHp6TmFsV2FyS1I0NDNTTFhRa2xa?=
 =?utf-8?B?MitYYU9xTjBCbWFPSFRvdlhlbXpKZXBPcEdsZXF0L29KaTBvNjBpai8yOEJs?=
 =?utf-8?B?OWNGeXV0Wm1FZU9SNzJuRkZPV0hOOXBGNks1WVpXSmkrUldPaW4wQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2567.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8d62208-11d2-430d-fe6e-08da12632bc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2022 15:37:17.0605 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 29H9sxi/rdFVgjmAR7IV/Tg3ZY+mscLycS0/DO8h/2L1y85v61ITjVFjzMaqx/Gh5MFyTYUXqqG+SyAiZrHYMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5191
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_avoid_concurrent_writes_to_aux=5Finv_=28rev10=29?=
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

Pj4+PiAqUGF0Y2ggRGV0YWlscyoNCj4+Pj4gKlNlcmllczoqCWRybS9pOTE1OiBhdm9pZCBjb25j
dXJyZW50IHdyaXRlcyB0byBhdXhfaW52IChyZXYxMCkNCj4+Pj4gKlVSTDoqCWh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTAwNzcyLw0KPj4+PiA8aHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMDA3NzIvPg0KPj4+PiAqU3RhdGU6KglzdWNj
ZXNzDQo+Pj4+ICpEZXRhaWxzOioNCj4+Pj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjI3MDQvaW5kZXguaHRtbA0KPj4+PiA8aHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjI3MDQvaW5kZXguaHRtbA0K
Pj4+PiA+DQo+Pj4+DQo+Pj4+DQo+Pj4+ICAgIENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lf
RFJNXzExNDE1X2Z1bGwgLT4gDQo+Pj4+IFBhdGNod29ya18yMjcwNF9mdWxsDQo+Pj4+DQo+Pj4+
DQo+Pj4+ICAgICAgU3VtbWFyeQ0KPj4+Pg0KPj4+PiAqU1VDQ0VTUyoNCj4+Pj4NCj4+Pj4gTm8g
cmVncmVzc2lvbnMgZm91bmQuDQo+Pj4NCj4+PiBBbmQgcHVzaGVkLg0KPj4gVGhhbmsgeW91IHNv
IG11Y2guDQo+PiANCj4+Pg0KPj4+IERvZXMgdGhpcyBoYXZlIGFueSBjaGFuY2Ugb2YgZml4aW5n
IGhhbmdzIGluIG11bHRpcGxlIHNpbXVsdGFuZW91cyBtZWRpYSB3b3JrbG9hZHM/DQo+PiBJIGhv
cGUgc28uIFRoZSBoYW5nIGZpeGVkIGJ5IHRoaXMgcGF0Y2ggaXMgcHJldHR5IGVhc3kgdG8gcmVw
cm9kdWNlIG9uIFRHTCB3aXRoIHR3byBwYXJhbGxlbCB2aWRlbyBkZWNvZGluZyBwcm9jZXNzZXMu
DQo+IA0KPiBHcmVhdCENCj4NCj4gRG8geW91IHdhbnQgdG8gc2VuZCBpdCB0byBzdGFibGUgaW4g
dGhpcyBjYXNlPyBXb3VsZCBuZWVkIHRvIGxvb2sgaG93IGZhciBiYWNrIGl0IHdvdWxkIGJlIGVh
c3kgdG8gYmFja3BvcnQuDQoNCkhvdyBmYXIgYmFjaz8gVGhlIGNoYW5nZSBpcyBvbmx5IGFwcGxp
Y2FibGUgZm9yIEdFTjEyLCBzbyBJIGJlbGlldmUgdGhpcyB3b24ndCBnbyBmYXJ0aGVyIHRoYW4g
NS40Pw0KDQo+IFJlZ2FyZHMsDQo+IA0KPiBUdnJ0a28NCg==
