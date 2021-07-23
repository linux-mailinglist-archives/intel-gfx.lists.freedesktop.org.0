Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C416E3D3608
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 10:02:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6DD6ECDD;
	Fri, 23 Jul 2021 08:02:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1anam02on2047.outbound.protection.outlook.com [40.107.96.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DAA36E92D;
 Fri, 23 Jul 2021 08:02:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oa1ZwXTUOFGtYYXQeXXSQpxEX1YKwtFKoVDYnt/Y355fNohMdYWEI1LSfqIEOL7RYMiWEXxpUDi1EmbrqYYeVjSLRSL0RvzgHUK0S3rJS+wmDIPbOchfNrSPNUP8PHTE1b1WQjK8JGGV9CtACtLR5pbDvtG4HPSb6V+hgCxuWBFutQv4X3R3nwThFt3W8t8HxzrzkexF2300o3g28WamBwlPI5GfLiPBsKibVDIXML8JG/khAj9kaGaBmW0p7eG2vQP1nSt8xpGlEWk1ohXQTw5K/anh4+fpAZwUys08JavsnVk0uwH0ARDcRBAFJftKz5D9geXVd9MU9PDo0n+YCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vq4+8Lyu2CH41Gi0rrFnDxpytAP//I1r9I/7upBb8o0=;
 b=KEKPiKFbaKpLReW92yxqchYumywj/tRNas+VznG5qNFOxE3G/yK+kx3TAsJ8P5kFYOkjNGZ6JLP1qj5p7g7672Edce30gzo1ZVF0owbbsVMQbSzXEqyXXJbP36B++ikaIvHSAFI8Tn+9h4POQ1YzR9hKOicMVYVwZq4Wa2Ruqu+Aj5Sf0hUw0xPpKxfYmGjw4s6Va+hIncLDouEFqy3ypily3gmAkiFJsjXIUoG07hjvfsY83MXoPgO0A0Zsq7KNb01tAkYj+m/oqM9rrUJe34H82QUODuJq+CRLZ0vlr1y5xF0yqPMBmmTpkbsJh0c+s7t16WIbAESUw2Q0anWZjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vq4+8Lyu2CH41Gi0rrFnDxpytAP//I1r9I/7upBb8o0=;
 b=IGB71ssdK93V65tBQF7HeUuX5iMxx+HnBH75CW7e4cqbaSsXLjY8Q7em+KZybDTv2r31iF0QxhHt7HaHKB7FDrG+J3ofrb2MAAvpBqDj4Trm0qGCOiRm0ADIK3qu88MTB6pPnIpliRzNLzhjMZkfaqVgKZDWSfixbQvCoFCLBak=
Authentication-Results: linux.ie; dkim=none (message not signed)
 header.d=none;linux.ie; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4357.namprd12.prod.outlook.com (2603:10b6:208:262::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.25; Fri, 23 Jul
 2021 08:02:46 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4352.028; Fri, 23 Jul 2021
 08:02:45 +0000
To: Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>
References: <20210713205153.1896059-1-daniel.vetter@ffwll.ch>
 <20210713205153.1896059-4-daniel.vetter@ffwll.ch>
 <0e4eefe0-9282-672c-7678-8d3162de35e3@suse.de>
 <YPpxh0QhILXESykX@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <be56fbe8-5151-ef8d-13cb-0b8a71f4d1e0@amd.com>
Date: Fri, 23 Jul 2021 10:02:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <YPpxh0QhILXESykX@phenom.ffwll.local>
Content-Language: en-US
X-ClientProxiedBy: AM0PR03CA0032.eurprd03.prod.outlook.com
 (2603:10a6:208:14::45) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:b5eb:ae77:ac:3a23]
 (2a02:908:1252:fb60:b5eb:ae77:ac:3a23) by
 AM0PR03CA0032.eurprd03.prod.outlook.com (2603:10a6:208:14::45) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4352.25 via Frontend Transport; Fri, 23 Jul 2021 08:02:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 889af82e-1a7b-47e1-1aa0-08d94db0413b
X-MS-TrafficTypeDiagnostic: MN2PR12MB4357:
X-Microsoft-Antispam-PRVS: <MN2PR12MB43577B5A5F56AD9DEA29821883E59@MN2PR12MB4357.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2043;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tySJ1N3YStAjzwPL54KOpo7Bkj54T5CouzL3cmwhi4mTAvGT30bZywwSvOm/ZtM8YLdnE7Ev2fAC3+iXPulCYMGoVCo/dDMRZp12TIpyG+dr/CqPJYn9mHgezFb4X7/ajgRMBcriq7XX2awUR7s2bGjiQ2pjlxivRBLNSlKDXFucqXwq/7VCrmQmVPh/xXyeFH+UU0ynSrXlfVkCcw9GTDtSCcg7IYbzoLFveCJeLHh+e4MwYxhe5MyW9/FBoA2HbksFhBb6vujlf3Dvp3kf1npZTxq/YMt9fAOIwDsXvNinAg9PxtxGOAotPALY5jVb1Et8Ve3cq4vJSaqU6SddKX85hUDGXueW6ixDXDEcRBOBciE2l7iNRWqYiBCB03bBG2h4q/IFYDcnHG+RFqAUhOEoh/SlXEK2p6YXSod8FyFLDRJvGpoYPUuNYW5Z9C3Y3KD+Z/Nv7tcBd1kGFYX+XqQ6OZtJE9pEJgrnt6Qr3P3Sfe3RR/aExxEr9Hp/qIvt4CgQBBq3ppiqYERDrp1ukijYndtg4S7i9F9Xtiw84qI02Ojp+hZxVcv57CjQLTenXBjoia686gTTZlggnr5Fgx/ym4q+KAKoKFYUuj2LdUhgrmHVa//3C7qMHBoed4J0SwIYBcMnpy0Tu+UWmjJDmoCgwjKbMfYKlGkS1EyWwJBWACznOxRuDBmT97KVMq/kQCPqH/ZrhZJJnj2HfTaGtI1fNEBSiAwoYxBnP5POsDeCbefmS1U0WNjPKb/LsRcC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(39860400002)(366004)(396003)(136003)(36756003)(4326008)(110136005)(66946007)(66574015)(316002)(2616005)(2906002)(8936002)(66556008)(66476007)(54906003)(8676002)(31686004)(6666004)(186003)(31696002)(83380400001)(478600001)(7416002)(5660300002)(6486002)(38100700002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b01NNGxYeStFZDk3Q2U2aml5SGV2ZkJHb1lLNzdSZVJ4cTdQTDB0N3hIYVFi?=
 =?utf-8?B?VTJ3K1dXT2F3Wmt5RnNaTktrcCsrQnpjeGlsWm1qYTBJWEpERWhacFREcy9t?=
 =?utf-8?B?USt3bjh3K1lVS2trV3RJa1g5aDZJa2lrZEkzWWQ3enY1cVN1OE9xNVRVKzkv?=
 =?utf-8?B?M09Wc3VxOUgyYWdCZm14WUVodjZpUFBXZkpBbHpPYzQrZHRLNm9nMG0zSDhP?=
 =?utf-8?B?RXlIazlEK0FrZk9lNGl6VnlGRGg2KzZNSFpxOFdrYSsraGNUaFVJNXdSS1NN?=
 =?utf-8?B?SXozY3J4L0VOUnhuWGNVdGJOWUJlN25mUVJJVjVjNjlxbmNiZHB3dEhzUnJL?=
 =?utf-8?B?Q25mQzZuNXpUT3E0V3VvZGFhSXJDS1hsMjdRNzI3QnJ6NHNQeVEwMFc5bkF0?=
 =?utf-8?B?QytjSzMzc3BJY05pVU9QNlZ2dWpoeHY0OUdEQllGM2J3aWcyMW02eWVtQUQ3?=
 =?utf-8?B?c0hKcDUvUVVBeEkzdmVhd1dTRHN4aWYrZHUrVVlRa1h4ZVNTUG9yQzE1U0p1?=
 =?utf-8?B?VTNGTThoZjNKbUlickxnT1FUREx4QXUxYkVBdmhRWk9XR2Qxa0R6Nmpia1o5?=
 =?utf-8?B?VDRwVUlTNlpBdk1EQ2hnU2JHRC9YU1MrdjlZTiszS2RKMXJTZ2lMTm0vSzA4?=
 =?utf-8?B?Njl6RFkxVlpBR1NVcFNnTWNZaXVOZHQwSkoyUE9ySFFxc1gzcnh2TVhBVnFp?=
 =?utf-8?B?L0M5a0dhNmJTc2F3RVVIZGtXNkJzcG11RnVKSGZvdW5WQlJSNVUzTjk0cmZR?=
 =?utf-8?B?Y211eFNMUTVtZUIwMEczUWplNGJaamowRnM1YUdsQlBhSnhNUC9qd0dnQnFG?=
 =?utf-8?B?R3dLOEIvQ2dkZWFOTTArRjJFTE1HRWR6ajRxTEhLNCtoVXpBQzhYV1JjL2Vz?=
 =?utf-8?B?RmpwVGg4cDhFbnhMeHByRjRlTVBWUmZHZEFNRVEzRm1maEhSS2dDM1ZBc3Ro?=
 =?utf-8?B?bWNGOTAzL1hXOFpSWHhRb2UyOUJGRitCYW9POHpadmNySWVKYWNiQ1orSld2?=
 =?utf-8?B?WWNNUDhrSjczTzlETVFqSWtMZUJpeHNJSEdnM3g4c0h2YUlXcm13MXE3V0F0?=
 =?utf-8?B?Tjd3UWhWYlFMQWkrWjFBaTR6eFJGSzY2aWVCRVF2bGZpM3ZsVXhEdE0xcjB0?=
 =?utf-8?B?cVQyTmVxM0JIYnpaVmZJbVNSRFFwRWFSM05sSHJXTVg0c2lCVGZIZk55MS9P?=
 =?utf-8?B?cHJFRk83TWx5VnZXWjZwRHdkQmpYR1QydXlMWHlWaGZNalRwR0t2Y1gzMlhG?=
 =?utf-8?B?WkZxMTQwYWNSWVZLQkhhUjAxOVhqWDh5Qko3RTViUWpLUU5BVW8xN0FoQ3I3?=
 =?utf-8?B?Ulc4QWxJZ25FWUppeGI4L0trbHZkaVh3USthdjRva1FkZ2JNNHJCSi9yZk1K?=
 =?utf-8?B?SnFscTZiMlJEVCs3VFdGbE83SmJiMFpqdk9oWERmMjg1K2tEUHI5bDRXY3ht?=
 =?utf-8?B?dXdUQ3BkRGtyZ2E1L3lTZ25acXlpQU53SXl4Q0JDL2NDQlo5Z2JQRkhmZmN4?=
 =?utf-8?B?Rmw2QnZGMldlRmN6MnpuYlFObFFLaXJlSmFsbDEwVWJPRU9WZDJwV3lTeFN4?=
 =?utf-8?B?UlNOc3NIS25BLy9FNkF2Y0FNTWJQMFA2QzlmM3RFOWpWVytSWTNIK09XRnBx?=
 =?utf-8?B?elZVQ09oV3ZzcTcxTkFzZWVKWVFvZGZ1VnJneWRNY01iWjlHS01TMXVmY0lv?=
 =?utf-8?B?NFFtR2VodzJRV3A4djF6NXR2a3FldnIyblNFQTVqNUZ0by8zSzBPU0YvOGRP?=
 =?utf-8?B?N2Q0UlpEOVl0bkxkMkRCQVBycVVRRlFsRi95S3d1TzBiOEg2Z0tPc2R2bmhR?=
 =?utf-8?B?R0RDQUVzU2MxZnNNOGpGSGZLVzhFQUt0QjBFZ0RVMnV0bDAvOGtxUFlBSHZC?=
 =?utf-8?Q?Ll6/V+HfZ/u5k?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 889af82e-1a7b-47e1-1aa0-08d94db0413b
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2021 08:02:45.5220 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qrzTCy4nJp6/J5R52J/qaieYYS7yB8PU6NW1Pief3GG671sr2LklViKifMd/VFO8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4357
Subject: Re: [Intel-gfx] [PATCH v4 3/4] drm/shmem-helpers: Allocate wc pages
 on x86
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel.vetter@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjMuMDcuMjEgdW0gMDk6MzYgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFRodSwgSnVs
IDIyLCAyMDIxIGF0IDA4OjQwOjU2UE0gKzAyMDAsIFRob21hcyBaaW1tZXJtYW5uIHdyb3RlOgo+
PiBIaQo+Pgo+PiBBbSAxMy4wNy4yMSB1bSAyMjo1MSBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4+
IFtTTklQXQo+Pj4gKyNpZmRlZiBDT05GSUdfWDg2Cj4+PiArCWlmIChzaG1lbS0+bWFwX3djKQo+
Pj4gKwkJc2V0X3BhZ2VzX2FycmF5X3djKHBhZ2VzLCBvYmotPnNpemUgPj4gUEFHRV9TSElGVCk7
Cj4+PiArI2VuZGlmCj4+IEkgY2Fubm90IGNvbW1lbnQgbXVjaCBvbiB0aGUgdGVjaG5pY2FsIGRl
dGFpbHMgb2YgdGhlIGNhY2hpbmcgb2YgdmFyaW91cwo+PiBhcmNoaXRlY3R1cmVzLiBJZiB0aGlz
IHBhdGNoIGdvZXMgaW4sIHRoZXJlIHNob3VsZCBiZSBhIGxvbmdlciBjb21tZW50IHRoYXQKPj4g
cmVmbGVjdHMgdGhlIGRpc2N1c3Npb24gaW4gdGhpcyB0aHJlYWQuIEl0J3MgYXBwYXJlbnRseSBh
IHdvcmthcm91bmQuCj4+Cj4+IEkgdGhpbmsgdGhlIGNhbGwgaXRzZWxmIHNob3VsZCBiZSBoaWRk
ZW4gYmVoaW5kIGEgRFJNIEFQSSwgd2hpY2ggZGVwZW5kcyBvbgo+PiBDT05GSUdfWDg2LiBTb21l
dGhpbmcgc2ltcGxlIGxpa2UKPj4KPj4gaWZkZWYgQ09ORklHX1g4Ngo+PiBkcm1fc2V0X3BhZ2Vz
X2FycmF5X3djKCkKPj4gewo+PiAJc2V0X3BhZ2VzX2FycmF5X3djKCk7Cj4+IH0KPj4gZWxzZQo+
PiBkcm1fc2V0X3BhZ2VzX2FycmF5X3djKCkKPj4gICB7Cj4+ICAgfQo+PiAjZW5kaWYKPj4KPj4g
TWF5YmUgaW4gZHJtX2NhY2hlLmg/Cj4gV2UgZG8gaGF2ZSBhIGJ1bmNoIG9mIHRoaXMgaW4gZHJt
X2NhY2hlLmggYWxyZWFkeSwgYW5kIGFyY2hpdGVjdHVyZQo+IG1haW50YWluZXJzIGhhdGUgdXMg
Zm9yIGl0LgoKWWVhaCwgZm9yIGdvb2QgcmVhc29ucyA6KQoKPiBUaGUgcmVhbCBmaXggaXMgdG8g
Z2V0IGF0IHRoZSBhcmNoaXRlY3R1cmUtc3BlY2lmaWMgd2MgYWxsb2NhdG9yLCB3aGljaCBpcwo+
IGN1cnJlbnRseSBub3Qgc29tZXRoaW5nIHRoYXQncyBleHBvc2VkLCBidXQgaGlkZGVuIHdpdGhp
biB0aGUgZG1hIGFwaS4gSQo+IHRoaW5rIGhhdmluZyB0aGlzIHN0aWNrIG91dCBsaWtlIHRoaXMg
aXMgYmV0dGVyIHRoYW4gaGlkaW5nIGl0IGJlaGluZCBmYWtlCj4gZ2VuZXJpYyBjb2RlIChsaWtl
IHdlIGRvIHdpdGggZHJtX2NsZmx1c2gsIHdoaWNoIGRlZmFjdG8gYWxzbyBvbmx5IHJlYWxseQo+
IHdvcmtzIG9uIHg4NikuCgpUaGUgRE1BIEFQSSBhbHNvIGRvZXNuJ3QgcmVhbGx5IHRvdWNoIHRo
YXQgc3R1ZmYgYXMgZmFyIGFzIEkga25vdy4KCldoYXQgd2UgcmF0aGVyIGRvIG9uIG90aGVyIGFy
Y2hpdGVjdHVyZXMgaXMgdG8gc2V0IHRoZSBhcHByb3ByaWF0ZSAKY2FjaGluZyBmbGFncyBvbiB0
aGUgQ1BVIG1hcHBpbmdzLCBzZWUgZnVuY3Rpb24gdHRtX3Byb3RfZnJvbV9jYWNoaW5nKCkuCgo+
IEFsc28gbm90ZSB0aGF0IHR0bSBoYXMgdGhlIGV4YWN0IHNhbWUgaWZkZWYgaW4gaXRzIHBhZ2Ug
YWxsb2NhdG9yLCBidXQgaXQKPiBkb2VzIGZhbGwgYmFjayB0byB1c2luZyBkbWFfYWxsb2NfY29o
ZXJlbnQgb24gb3RoZXIgcGxhdGZvcm1zLgoKVGhpcyB3b3JrcyBzdXJwcmlzaW5nbHkgd2VsbCBv
biBub24geDg2IGFyY2hpdGVjdHVyZXMgYXMgd2VsbC4gV2UganVzdCAKZG9uJ3QgbmVjZXNzYXJ5
IHVwZGF0ZSB0aGUga2VybmVsIG1hcHBpbmdzIGV2ZXJ5d2hlcmUgd2hpY2ggbGltaXRzIHRoZSAK
a21hcCB1c2FnZS4KCkluIG90aGVyIHdvcmRzIHJhZGVvbiBhbmQgbm91dmVhdSBzdGlsbCB3b3Jr
IG9uIFBvd2VyUEMgQUdQIHN5c3RlbXMgYXMgCmZhciBhcyBJIGtub3cgZm9yIGV4YW1wbGUuCgpD
aHJpc3RpYW4uCgo+IC1EYW5pZWwKPgo+PiBCZXN0IHJlZ2FyZAo+PiBUaG9tYXMKPj4KPj4+ICsK
Pj4+ICAgIAlzaG1lbS0+cGFnZXMgPSBwYWdlczsKPj4+ICAgIAlyZXR1cm4gMDsKPj4+IEBAIC0y
MDMsNiArMjEyLDExIEBAIHN0YXRpYyB2b2lkIGRybV9nZW1fc2htZW1fcHV0X3BhZ2VzX2xvY2tl
ZChzdHJ1Y3QgZHJtX2dlbV9zaG1lbV9vYmplY3QgKnNobWVtKQo+Pj4gICAgCWlmICgtLXNobWVt
LT5wYWdlc191c2VfY291bnQgPiAwKQo+Pj4gICAgCQlyZXR1cm47Cj4+PiArI2lmZGVmIENPTkZJ
R19YODYKPj4+ICsJaWYgKHNobWVtLT5tYXBfd2MpCj4+PiArCQlzZXRfcGFnZXNfYXJyYXlfd2Io
c2htZW0tPnBhZ2VzLCBvYmotPnNpemUgPj4gUEFHRV9TSElGVCk7Cj4+PiArI2VuZGlmCj4+PiAr
Cj4+PiAgICAJZHJtX2dlbV9wdXRfcGFnZXMob2JqLCBzaG1lbS0+cGFnZXMsCj4+PiAgICAJCQkg
IHNobWVtLT5wYWdlc19tYXJrX2RpcnR5X29uX3B1dCwKPj4+ICAgIAkJCSAgc2htZW0tPnBhZ2Vz
X21hcmtfYWNjZXNzZWRfb25fcHV0KTsKPj4+Cj4+IC0tIAo+PiBUaG9tYXMgWmltbWVybWFubgo+
PiBHcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVyCj4+IFNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdl
cm1hbnkgR21iSAo+PiBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKPj4g
KEhSQiAzNjgwOSwgQUcgTsO8cm5iZXJnKQo+PiBHZXNjaMOkZnRzZsO8aHJlcjogRmVsaXggSW1l
bmTDtnJmZmVyCj4+Cj4KPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
