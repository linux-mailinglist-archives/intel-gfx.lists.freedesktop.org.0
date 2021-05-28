Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A71D393D92
	for <lists+intel-gfx@lfdr.de>; Fri, 28 May 2021 09:16:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F42236F580;
	Fri, 28 May 2021 07:16:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2049.outbound.protection.outlook.com [40.107.237.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 522096F580;
 Fri, 28 May 2021 07:16:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gaBkO9IQfahyiiwcE8SnKpd7eLPL3nYBq5cSa6TYuaNy9yKfXUjSgWePbLKXW5Il0ZR0HWXPQkJYC2SiKoTvcAvFat+fWk0fBdUp/5Q1OvGn6/FkUhP/EQlAnyQsigZQXY+l7weu9iVQFGB17kvqNY8Ntnmk6X5LDREZAN0st+qpmLXW9yytbOiylceD6/htiU1KJGAxQiey8BqvGqlPJ+5hNcbgJ5FnO1NzkOg6lxTKVtQMIZN/TJGcmV51hQnzh+m1EWrBQ+1nVRV8oTIM/Jry26EgSZu0EY5wfcNJ5z25eh54SE6wBAi5YeeR7XFATKCHuOJhp1lFUALvVgQw3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Erw6+7NRaoY9U7yiW6sSmRJ614zuI9D35RzFKbjSEAM=;
 b=eK4nywo7SWikv1KpWgypUaM7tNcb25mB6sm3mR8N93awYBM9hK+jGNVR+Yzqb4KqptGpODazkrNsDmH8rdF9qtTO5dnMhdiJUxdOT7EvBkbrdawn+mvo99bh99/r8diniQBRGZgDOH0bbTJnpQHXr9jqwtxLz5NJV3CpAK8ztC1ElsQ2Ib5LIWMDDit7g4L7g/vkETRi5wRLeWvr3u9O7Jv1K7820mbjOo1lIFfNCcRSdM/4h2CkSWtHvkXJpOHu1xaecexM7NpZ5EWlTu+DLc90fUbE1zS/dfClsSLIaUIcf8OkmrljSvaN0oId7RPgsQWjshMf7yPz1TdrD44xkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Erw6+7NRaoY9U7yiW6sSmRJ614zuI9D35RzFKbjSEAM=;
 b=IhRLkBYDEtClqKYVHTb2a+CxKr7mJqQ86wO6ojByWW2n17wq8Ys3fGpMhpY9l62yja6C+7iinWZvv/4aP5rPCMNiuXpFTL9gwbwzd8BkZJDub2XQGQK8ls8FJyjtjgmuzdGmqoo6MrQkJJaacBh9PHRO5wpSKMpu1pajnD3+54c=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4062.namprd12.prod.outlook.com (2603:10b6:208:1d0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.24; Fri, 28 May
 2021 07:16:14 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4173.024; Fri, 28 May 2021
 07:16:14 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210527141923.1962350-1-thomas.hellstrom@linux.intel.com>
 <883eab20-4326-d14a-2eb0-5e95f174a0d9@amd.com>
 <8b3382726763050334a6cb214f7ba560eebf8f28.camel@linux.intel.com>
 <e594a1d45b22e92e052d1070beadc5928e5c0ba1.camel@linux.intel.com>
 <17037c04-603c-44c8-84a2-bce49c0e4f0c@amd.com>
 <97b0903d941c05a8877579749c6a2ea6ec107d0b.camel@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <1dffe27a-bfc6-075e-f198-0c47cd282638@amd.com>
Date: Fri, 28 May 2021 09:16:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <97b0903d941c05a8877579749c6a2ea6ec107d0b.camel@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:2960:4608:1392:c6ae]
X-ClientProxiedBy: FR0P281CA0089.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::11) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:2960:4608:1392:c6ae]
 (2a02:908:1252:fb60:2960:4608:1392:c6ae) by
 FR0P281CA0089.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:1e::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4195.9 via Frontend Transport; Fri, 28 May 2021 07:16:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fdb4eee7-b3fd-46bf-0346-08d921a87a77
X-MS-TrafficTypeDiagnostic: MN2PR12MB4062:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4062B598A32210996476E43383229@MN2PR12MB4062.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FPV6B8Ldu0GZ7enpC/tprmHoQI0vFs15tPuTweQF3RMt7Wdx/3Hu9ZigaIyI07dBQi/UfPy4tjJuBVV2XU+raFnflF8v8jtmOWYJc5sIODGHLxlk3cXhvzM4Cf3HU1bPsMNclcD/17Oz8dsriGbUATo1xSgNWcKL+XzteiWD0sw81c7YdwEY/NcPByTeE3BnwYpyXODFq95AAF9eAO5dtuliSPpOpluZKJ+4tuml6MV/ncKtOX1KYL4fvSeJlobcccL0g+W78xIUkmHP1pT6FakZkj1xHreBomK1ATaP+/tzFVc9S9WIXRVH/L36uuYDIRfQWHAolg1CmceA3ADF2b3xHg/Tb05TBsaCnRwiCrNxkwFcI41eJxvN5WTjc5GhPjuvkpwgSTnY0cDHWWdmripZhOlJDiWvIauksK8j+tD20FZKiCHrQeSSlQKRz7dB6B75NvfZcAjeNL29PCy6g/VJNI+0S4NWGHo7ZTi7yf2pJvycgVsrxhDoCU6H2mS8E5SQ2yr7dkSbXXswq49vUrKoPP6z4B0I0henvFYOTyGRKZ16quxmYk1K4qWBjLjdyk4QHnST4nMEC4gV68GV/bDz++XVuxD/EhMCIp5ojYbmKnizHYzuX+Tz1ISj09jXMFYps+3HUoqPPrzG9uKY7PMR2azCETm1PZnw7eAqhS/3srxbzIb9qx/ml/viksHu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(136003)(376002)(39860400002)(346002)(31686004)(36756003)(6486002)(478600001)(83380400001)(316002)(66946007)(6666004)(66574015)(8676002)(66556008)(66476007)(8936002)(5660300002)(2616005)(31696002)(2906002)(86362001)(16526019)(38100700002)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?TjNjNnFnaEh1Q1I0UytIUUNqU1hCdGtZUlNwOWJkNWZJOWFoK0UwR3FwY0Vn?=
 =?utf-8?B?Qk5vZ0lUeCsrakFTN2xRMVhXc3B1dUJ3N1NJVkl5VjY0bjlPdG1OdnhsOGl4?=
 =?utf-8?B?M3RUUjE4clppL3FuVU5rOTRSckROd1FnNHgwa0o4M2ZvbmdIWHAwc3JzNStv?=
 =?utf-8?B?Znp5bzFkSDNiS1JhU3RuNHlTaDI3S1Z2YStma1d0eVRXQXdGVHhMcmNKODlR?=
 =?utf-8?B?S1pzaGRkYWM4UzlCazBDZTUxZ2c1ZHBua2d1dHVjeHRzU3pqTWp6VXg1S01N?=
 =?utf-8?B?U1Z1TW9yajF0K093LzN1OEVCQytOWklIWnczNzNIKyt3M3dJdWp1eUh3ZE53?=
 =?utf-8?B?Snd5dUk3RXRucDlzR0ErQmppckZQdCtSL2x6MC9RR05KalhDQUN1Y29HTkJE?=
 =?utf-8?B?Q2RodW1FRU04NEtpV3F3SVQ4ajBLQVVLY0JtK3o5QmVvcWZ3NU11T0hKbTFv?=
 =?utf-8?B?TGpvc3JYV1lZVVg4T214WUcvSk5xMHFpSGJBVlI0UnRUY1hFVUVNUkFXODJZ?=
 =?utf-8?B?MHZ0YUcveDZIMUVvVmZuTUprVmxOTk9XRjQ2MllIRFQvbUpyaWR0SU5Rc1h4?=
 =?utf-8?B?a0t1dzFZdGNlR3JxRlY5amJOR0lmVVZvMzErdWZDZnkwQ1BOT1U2ZEl4bVpR?=
 =?utf-8?B?MUxHUndtY1ZQNVNBdndlbE1iT0V3VGZIYU11QXU0MjBaUnJraTBua0VKODBa?=
 =?utf-8?B?SzdXODI1MUN1b3V3L0l1dEo5L0NseTE0OXI3YzlrSHc4V2xYN205YnB4a2Yr?=
 =?utf-8?B?SU82Wjdrc0MwZHg5bWVyRkxJR3BWR3JMR1pxT0lNRTR5ZTFWR2lDS2FPaTYx?=
 =?utf-8?B?MVFQaU52TUpFdTJKM1JhUzVvT0RJOEpIWEluRlZ6ZFBzMHY1bzRpQTVpamRN?=
 =?utf-8?B?Wm41V3Y5aXJLYWt0Q0NFb0dWTGRwbThmbHVuZ2hRQXZBdVBxdzF3WUFpM2xp?=
 =?utf-8?B?QTRJb2RVR3ZFbFdOZWthOUNLaCtnejA3VEFXV2F5VzRJTjM1NzRvWHg3Szlm?=
 =?utf-8?B?QXdhWEh1NmgrTThwclhtUmUwcVFBNS9SU0RISG5xbThLZjl0T3YvNTF2ZVFU?=
 =?utf-8?B?ZUdZbmh0eVYzWjAwYnVLYk5FVllTR1lsVlBmaXg1QmZiU1NIdUhQU1dXOTZR?=
 =?utf-8?B?UVIzdFl2Rk5WN0JnRmd5L0RYY3grK080L1lSeU40a1RXQXllUmEwZ2o3QWhB?=
 =?utf-8?B?VE92eTROdUZMODZkT2hmWWFuRFFvNHU4TDFYbkoyK3RRMWJtV3QyUWlQOG1H?=
 =?utf-8?B?RGdJZFRKOWt2aGNIaU15anl0Rk0rbm1ZSlQ3MTlIQVdxQ01aK2FiM29FaEtq?=
 =?utf-8?B?VzhNR0VMQmQyVTRENmJtOVpNT2I2dlNwNUVzMHZCNDYvTW94QXFIWTV5c1Bo?=
 =?utf-8?B?ZXlTWkc1aGVrRktueUxZbVBwQWEzdGd1Z2hyU0Jnak5EWlpDS3lHdzExR3Fz?=
 =?utf-8?B?QUNzNk9CS05TaHd2M29VN0RjYVNLbXFoKzVFdTJrNW12SzYvUGNmMWtZU0pH?=
 =?utf-8?B?YmhMTUNhbXRlb2s1L2ZXZDB5QWpFUEFXWUJQRTlycW1lTmdJSU9qU1NVNFc1?=
 =?utf-8?B?bHo3VjZTbUZDcmU3V2xVaHJhT0hYU1dyQ3lMVTRKZ2drNEI0RXFTZTBQODFY?=
 =?utf-8?B?bWFmQ2FZbUcrb1g0eld4Z1BScExwZkRSZGhuMFpWaktXN0pTVkppZHRlQ0Vn?=
 =?utf-8?B?NzVzR1BzTC94eVRLSjcwcUN0eUVoekNpNEZTYXBKUHZoUW9WempnOTY4ai91?=
 =?utf-8?B?NjdublkzcFNTK1VHS2QyOFpQdnhPNnZaTXZJRFVJbGRHMEw4dGVlRzZrUk1D?=
 =?utf-8?B?OTZkSTNKZnhVM1h4VjNjNWhRTHBEdG0raTB3VEg4TWFFSmlQVTdPNjc2Kzls?=
 =?utf-8?Q?wW87DcN68EMuA?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdb4eee7-b3fd-46bf-0346-08d921a87a77
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2021 07:16:14.4007 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vNuybHaebcAPjHbFlgCZfaaSVZog2kn+R2IaWthPvDpio4w7fIHK9XY3FJm4Crsb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4062
Subject: Re: [Intel-gfx] [RFC PATCH] drm/ttm: Fix swapping dereferences of
 freed memory
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjcuMDUuMjEgdW0gMTc6NTEgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBPbiBUaHUs
IDIwMjEtMDUtMjcgYXQgMTc6MzIgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IEFt
IDI3LjA1LjIxIHVtIDE3OjA1IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+PiBPbiBUaHUs
IDIwMjEtMDUtMjcgYXQgMTc6MDEgKzAyMDAsIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+Pj4+
IE9uIFRodSwgMjAyMS0wNS0yNyBhdCAxNjo1NCArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90
ZToKPj4+Pj4gQW0gMjcuMDUuMjEgdW0gMTY6MTkgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToK
Pj4+Pj4+IFRoZSBzd2FwcGluZyBjb2RlIHdhcyBkZXJlZmVyZW5jZSBiby0+dHRtIHBvaW50ZXJz
IHdpdGhvdXQKPj4+Pj4+IGhhdmluZwo+Pj4+Pj4gdGhlCj4+Pj4+PiBkbWEtcmVzdiBsb2NrIGhl
bGQuIEFsc28gaXQgbWlnaHQgdHJ5IHRvIHN3YXAgb3V0IHVucG9wdWxhdGVkCj4+Pj4+PiBib3Mu
Cj4+Pj4+Pgo+Pj4+Pj4gRml4IHRoaXMgYnkgbW92aW5nIHRoZSBiby0+dHRtIGRlcmVmZXJlbmNl
IHVudGlsIHdlIGhhdmUgdGhlCj4+Pj4+PiByZXNlcnZhdGlvbgo+Pj4+Pj4gbG9jay4gQ2hlY2sg
dGhhdCB0aGUgdHRtX3R0IGlzIHBvcHVsYXRlZCBhZnRlciB0aGUKPj4+Pj4+IHN3YXBfbm90aWZ5
Cj4+Pj4+PiBjYWxsYmFjay4KPj4+Pj4+Cj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVs
bHN0csO2bQo+Pj4+Pj4gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+Pj4+Pj4g
LS0tCj4+Pj4+PiAgwqDCoCBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jwqDCoMKgwqAgfCAx
NiArKysrKysrKysrKysrKystCj4+Pj4+PiAgwqDCoCBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9k
ZXZpY2UuYyB8wqAgOCArKystLS0tLQo+Pj4+Pj4gIMKgwqAgMiBmaWxlcyBjaGFuZ2VkLCAxOCBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Pj4+Pj4KPj4+Pj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCj4+Pj4+PiBiL2RyaXZlcnMvZ3B1L2RybS90dG0v
dHRtX2JvLmMKPj4+Pj4+IGluZGV4IDlmNTM1MDZhODJmYy4uODYyMTNkMzc2NTdiIDEwMDY0NAo+
Pj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+Pj4+Pj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+Pj4+Pj4gQEAgLTExNjMsNiArMTE2MywxNiBAQCBp
bnQgdHRtX2JvX3N3YXBvdXQoc3RydWN0Cj4+Pj4+PiB0dG1fYnVmZmVyX29iamVjdAo+Pj4+Pj4g
KmJvLCBzdHJ1Y3QgdHRtX29wZXJhdGlvbl9jdHggKmN0eCwKPj4+Pj4+ICDCoMKgwqDCoMKgwqDC
oMKgwqBpZiAoIXR0bV9ib19ldmljdF9zd2Fwb3V0X2FsbG93YWJsZShibywgY3R4LCAmcGxhY2Us
Cj4+Pj4+PiAmbG9ja2VkLCBOVUxMKSkKPj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgcmV0dXJuIC1FQlVTWTsKPj4+Pj4+ICAgICAKPj4+Pj4+ICvCoMKgwqDCoMKgwqDC
oGRtYV9yZXN2X2Fzc2VydF9oZWxkKGJvLT5iYXNlLnJlc3YpOwo+Pj4+Pj4gKwo+Pj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgaWYgKCFiby0+dHRtIHx8Cj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Ym8tPnR0bS0+cGFnZV9mbGFncyAmIFRUTV9QQUdFX0ZMQUdfU0cgfHwKPj4+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoCBiby0+dHRtLT5wYWdlX2ZsYWdzICYgVFRNX1BBR0VfRkxBR19TV0FQUEVE
KSB7Cj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGxvY2tlZCkKPj4+
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZG1hX3Jl
c3ZfdW5sb2NrKGJvLT5iYXNlLnJlc3YpOwo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHJldHVybiAtRUJVU1k7Cj4+Pj4+PiArwqDCoMKgwqDCoMKgwqB9Cj4+Pj4+PiArCj4+
Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCF0dG1fYm9fZ2V0X3VubGVzc196ZXJvKGJvKSkg
ewo+Pj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAobG9ja2VkKQo+
Pj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ZG1hX3Jlc3ZfdW5sb2NrKGJvLT5iYXNlLnJlc3YpOwo+Pj4+Pj4gQEAgLTEyMTUsNyArMTIyNSw4
IEBAIGludCB0dG1fYm9fc3dhcG91dChzdHJ1Y3QKPj4+Pj4+IHR0bV9idWZmZXJfb2JqZWN0Cj4+
Pj4+PiAqYm8sIHN0cnVjdCB0dG1fb3BlcmF0aW9uX2N0eCAqY3R4LAo+Pj4+Pj4gIMKgwqDCoMKg
wqDCoMKgwqDCoGlmIChiby0+YmRldi0+ZnVuY3MtPnN3YXBfbm90aWZ5KQo+Pj4+Pj4gIMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBiby0+YmRldi0+ZnVuY3MtPnN3YXBfbm90aWZ5
KGJvKTsKPj4+Pj4+ICAgICAKPj4+Pj4+IC3CoMKgwqDCoMKgwqDCoHJldCA9IHR0bV90dF9zd2Fw
b3V0KGJvLT5iZGV2LCBiby0+dHRtLCBnZnBfZmxhZ3MpOwo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKg
aWYgKHR0bV90dF9pc19wb3B1bGF0ZWQoYm8tPnR0bSkpCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmV0ID0gdHRtX3R0X3N3YXBvdXQoYm8tPmJkZXYsIGJvLT50dG0sCj4+
Pj4+PiBnZnBfZmxhZ3MpOwo+Pj4+PiBFeGFjdGx5IHRoYXQgaXMgd2hhdCBJIHdvbid0IHJlY29t
bWVuZC4gV2Ugd291bGQgdHJ5IHRvIHN3YXAKPj4+Pj4gb3V0Cj4+Pj4+IHRoZQo+Pj4+PiBzYW1l
IEJPIG92ZXIgYW5kIG92ZXIgYWdhaW4gd2l0aCB0aGF0Lgo+Pj4+IEJ1dCB3ZSB3b3VsZG4ndCBz
aW5jZSB0aGUgQk8gaXMgdGFrZW4gb2ZmIHRoZSBMUlUgYW5kIG5ldmVyIHJlLQo+Pj4+IGFkZGVk
LAo+Pj4+Cj4+Pj4KPj4+IEluIGZhY3QsIHdlJ2QgcHJvYmFibHkgbWlnaHQgd2FudCB0byB0YWtl
IHRoZSAhYm8tPnR0bSBib3Mgb2ZmIHRoZQo+Pj4gTFJVCj4+PiBhcyB3ZWxsLi4KPj4gTm8sIHdl
IGRvbid0IHdhbnQgdG8gdGFrZSBhbnkgQk9zIG9mIHRoZSBMUlUgdW5sZXNzIHRoZXkgYXJlIHBp
bm5lZC4KPj4KPj4gQWRkaW5nIGEgVFQgb2JqZWN0IG9yIHBvcHVsYXRpbmcgaXQgZG9lc24ndCBu
ZWNlc3NhcmlseSBwdXQgdGhlIEJPCj4+IGJhY2sKPj4gdG8gdGhlIExSVS4KPiBPSywgYnV0IHN3
YXBwZWQgYm9zIGFyZSBhbHNvIHRha2VuIG9mZiB0aGUgTFJVIGxpc3Qgc28gdGhlc2UKPiB1bnBv
cHVsYXRlZCBib3MgYXJlIGp1c3QgdGFraW5nIHRoZSBzYW1lIHBhdGguIE9ubHkgZGlmZmVyZW5j
ZSB0bwo+IHN3YXBwZWQgaXMgdGhhdCB0aGV5IGRvbid0IGdldCByZWFkIGJhY2sgb24gcmUtcG9w
dWxhdGUsIGJ1dCB0eXBpY2FsbHkKPiBjbGVhcmVkLgo+Cj4gQnV0IHdoYXQgd291bGQgYmUgdGhl
IHBvaW50IG9mIGtlZXBpbmcgc3dhcHBlZC1vdXQgYm9zIG9uIHRoZSBMUlUKPiBsaXN0PywgcGFy
dGljdWxhcmx5IHdoZW4gd2UncmUgaXRlcmF0aW5nIHVuZGVyIGEgc3BpbmxvY2s/Cj4gU2hvdWxk
bid0IHdlIHRyeSB0byByZS1hZGQgdG8gTFJVIChpZiBub3QgYWxyZWFkeSBvbiBhbiBMUlUpIGp1
c3QKPiBiZWZvcmUgcG9wdWxhdGluZz8gVGhlcmUgYXJlbid0IHJlYWxseSB0aGF0IG1hbnkgY2Fs
bHMgaW4gY29yZSBUVE0uCgpJIHdhbnQgdG8gYXZvaWQgcmVtb3ZpbmcgQk9zIGZyb20gdGhlIExS
VSBhcyBtdWNoIGFzIHBvc3NpYmxlIHNpbmNlIHdlIApmb3Jnb3Qgb24gbXVsdGlwbGUgcGxhY2Vz
IHRoYXQgd2Ugd2FudCB0byByZS1hZGQgdGhlbS4KCkNvbmNlcHR1YWwgSSB0aGluayB0aGUgc3dh
cHBlZCBCT3Mgc2hvdWxkIGhhdmUgYSBzZXBhcmF0ZSBtZW1vcnkgZG9tYWluLCAKdGhpcyB3YXkg
d2UgY2FuIGlnbm9yZSB0aGVtIGNsZWFubHkgd2hlbiBzd2FwcGluZyB0aGluZ3Mgb3V0LgoKR29p
bmcgdG8gcGljayB0aGlzIHBhdGNoIHVwLCBtb2RpZnlpbmcgaXQgYSBiaXQgbW9yZSBhbmQgdGhl
biBwdXNoaW5nIGl0IAp0byBkcm0tbWlzYy1maXhlcyBmb3IgdXBzdHJlYW1pbmcuCgpUaGFua3Ms
CkNocmlzdGlhbi4KCj4KPiAvVGhvbWFzCj4KPgo+Cj4KPgo+PiBDaHJpc3RpYW4uCj4+Cj4+PiAv
VGhvbWFzCj4+Pgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
