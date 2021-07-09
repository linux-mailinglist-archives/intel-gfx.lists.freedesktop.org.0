Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A0B3C1FF6
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 09:23:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECBD36E9C0;
	Fri,  9 Jul 2021 07:23:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2057.outbound.protection.outlook.com [40.107.92.57])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5C766E9C0;
 Fri,  9 Jul 2021 07:23:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LTUbU8JV+kECv30o3HsaUuVKqJ5uW0NpkURsxGnWWYcwdAzdNkmOF6djArqAVoeX7oN0TFBa5WPi6lhof10SZYm4PcgR6156Hz+rS6tBDdivvjb+rXlgDwDD3i8FLeEnwCIWd635UzE0lwFNFDqj/Kxb/QDREM3N99N6OSJisFdr3pKBzy1qg1KcmRiCxGPAMJqPkBGpGMYCXFYUrprl4di8u9kqyYDUbgzSADH5IDxiP0xGGqzdOur+XWg30VWATTkBZlAIYU9q87khJHsGYq9YRKRdDFYk9GPIOEPMRaZ/cPEGZ4U3Wy2Pn61w0ZQHIyZUGlFyExZoyFfBVXkhqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/hpO5SUtDEwP5H4NjyT9NANQHaYGoQqT05dBuYzGs/w=;
 b=E9jxUna0aDg3DSa4NhIKQYE2Qov/b3vaGtU6Z7eFCLT3ePo1nlC0rz6sgzSFHVWjzq+Soko8QHNGX5cGR91y+Le3rqfKeLAOBJc+jtSC6YqEC34jPVwq7gwJMmr3lYnRMGC1/vbvpja/ppf7y0WolDS91rrUF8157Qj34wsisOx9rA70HJK2TRlh9NJP8xassjBCX+7/rOzZ6KZhMYX53Zhdax2eeSmCvuUgoezyA0dJ70yFXy2NgL5GtbaDed7iHLEFFA7gYJxW6FXFi9OznQ/R9BoDglbt8XHwLm+sLem34nEGsGMZalaBHZEfR8fikPZEaOzkVr2jxwZ/7gm26w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/hpO5SUtDEwP5H4NjyT9NANQHaYGoQqT05dBuYzGs/w=;
 b=dvCJvibiyUlLYDvYngLH0Gav+xfwumN8EQKV8FwYHS0KsDIf+i1DfyiCpTv7acmA9auWFqZi76bHL6FNu4qVJ40rICxsfMH6c45ThJcnvbgW5gLqPAdAjPqcYHiv77eR5HUrAMGn2z83HhQdZozsrKr4NkwOJCX3XFhsWgsx3Sw=
Authentication-Results: amd.com; dkim=none (message not signed)
 header.d=none;amd.com; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4222.namprd12.prod.outlook.com (2603:10b6:208:19a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.21; Fri, 9 Jul
 2021 07:23:14 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4308.023; Fri, 9 Jul 2021
 07:23:14 +0000
To: Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
 <20210708173754.3877540-2-daniel.vetter@ffwll.ch>
 <5588d1c3-833b-bd95-69e6-a103f2e8affa@amd.com>
 <CAKMK7uFuqXdbvqDCerXHW5kiT=LUZEoyrjFMgHjkUQdS1eidDw@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <871a4619-8a17-134f-9d9c-40a522473946@amd.com>
Date: Fri, 9 Jul 2021 09:23:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <CAKMK7uFuqXdbvqDCerXHW5kiT=LUZEoyrjFMgHjkUQdS1eidDw@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: AM9P193CA0010.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:20b:21e::15) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:3da0:55de:64af:96f9]
 (2a02:908:1252:fb60:3da0:55de:64af:96f9) by
 AM9P193CA0010.EURP193.PROD.OUTLOOK.COM (2603:10a6:20b:21e::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4308.21 via Frontend Transport; Fri, 9 Jul 2021 07:23:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 522f42af-414b-48e7-b3ce-08d942aa6a3b
X-MS-TrafficTypeDiagnostic: MN2PR12MB4222:
X-LD-Processed: 3dd8961f-e488-4e60-8e11-a82d994e183d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB422203DC9BAF7526BBD6316E83189@MN2PR12MB4222.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W2HRqLLhWJvG/huv2UtJQUB4CmLBHCt0lrI2yXXkimdVxO8vVrlq4A9HTw+rarV4QQHYnW6OOEtCup79u3wC1+W1Bth6lJ3jr4NLohLh7Hdi3axPsuqBm4YZpo0u6XceqvchIjkspqZwC8wRKd83aokh4bc1wGipBxlL0m9yXG2D6JG1lTf/AeWbrjhKjD8dUtjgij87LJEsoobDOykMpKMpTlMPBHSyTNV6zsYpxqIcW85nH+MVRLtlcucz0PfE+/Mtx/LiE6Ee8Qiq7r0ePcHX9o7u03TLPGYMx8ptsOpT2fsI9ocDXZx8Mt5t9Z53fparvddiowrzd2rwuvZZYXB01/4/P41/Sxa8Toe6s+T6BZe/SGc3sPqNxIpi7/dMv/DMdqMiVzcFA0nEApOGUI7UdzaGYQsFyDEbXpdWfZSgV4VdJ/unUNEWLHHdzJoxP6ZIGFDDK4FdLEgTpKA7Nj6XqpyRWq4vZNKu8ruENi33cgSwwI1l6NnrpjEKVT4/U1RNG6FkCNyAAy/Rv3jNnM4kpER2nXI3uB2qEhYIJMaHsnTJQPIl8tbhlmw4xdaIe4LXObtXHB7HLa6NdS3ubzC5sxpV8ftRMWpC3IO8uxxiUS0gz6Qx5C19kfu0sClv7DZdDuswFxMKIxShPmMUtz4dLCRKoFjKAduT2lTsKzL7+CDZ8suVQX3V9S8VvxeRBipDQse93JVoXFsHQeYhvJSM8cqAl2GmLMROvVvTIRU2v5PU0T4r3wuS/dR9ChSk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(366004)(396003)(136003)(376002)(346002)(31686004)(2616005)(316002)(4326008)(6916009)(6486002)(6666004)(53546011)(66574015)(83380400001)(36756003)(2906002)(66476007)(186003)(8676002)(38100700002)(66946007)(31696002)(5660300002)(478600001)(54906003)(8936002)(86362001)(66556008)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RnF2SUNidmptTThHelhnYVJvZ0tMVmtXellnenZHaHNqVlNncXFvdStWZEwv?=
 =?utf-8?B?OEZ1NThHUmc4OVM0R3M4YlBGMXJXN3hzYWlJRStiamFpbWJCQ2RGSGJZM2gv?=
 =?utf-8?B?UTZOZkVaKzVCUFI4YmxyNERjUUxkM3lyckpaMFFHT3VGdzR3eGxmL3hyVkli?=
 =?utf-8?B?czJxV3BWbFZxSFRHVFIrU3BpQkZ2NHkrdFJ2QW5Ib2IvYVVISmVGNHZ2SHMx?=
 =?utf-8?B?UndncEpySXZBcVJTOU55NkZ1MFkxOVVlV0h6UFpVNEJUWk1WVnhFYWd6RlRH?=
 =?utf-8?B?N3o0T09qL3E4MjNtMXFEZUpBNUF1K2hZM0VLWnZBK1dzVENQeWFLSS9USzNj?=
 =?utf-8?B?QStaaVA2WHAzcHN0amdHdlJKckNvSmM3eHFSR253dUFzTjJYMm9WK2pzUW1Z?=
 =?utf-8?B?N2lEZVZ6eHgveFErQ3kxM25EazFjV0MwY3JjRVpxM0pVZHYyKzl3UEZhcjkr?=
 =?utf-8?B?TXJCSUhHMWtMKzRXMmdZOU04NnliRGhibDB5bm9zYXJhNTN6OWVJNEVmc0RH?=
 =?utf-8?B?TC90TWhtM3EzMFN5WXZGNzFVNlVxcDhjalNYdTRJSXNLdmNTbmpaTnZJL3ZV?=
 =?utf-8?B?TG0zMkxCSzl1NTF1TDBHL1o5VThKc2lpem1tNlZNaGdsbjI3bG9rdENDUmpP?=
 =?utf-8?B?dVR3VktGa09UVFFCRGJtM3Fva0VQVldUaCtpbGZ5cndsMVFIVllVeWl2YnZU?=
 =?utf-8?B?L2hhZUZQdzZUbE1oR0FnZTM4aW9La3dKN3VVMFJ6dnZBY0FKYVFOc29XRitP?=
 =?utf-8?B?YW9IODlGQXY0VkUyUVlibkhNWU1vOE1NSXd2QnZsWS9ReDlmbUpGNGR5RW1o?=
 =?utf-8?B?WFRrT0JWMkhuRytNTnptT2lhTkVPZDRxTlRyRkxVN1BiNGV4OXdiKzd6V3RJ?=
 =?utf-8?B?cmgxeUJOUXhmeVY3QUNVRkM3WEI2SXdJbjlPWkh3anRaNjhYTUt1dVlwV3NP?=
 =?utf-8?B?ZmxZSzRXWUpXcHJnVHVoRnlTVFhQRTdKM0M3VEJUWjk0ZkNJWm12bUowazNl?=
 =?utf-8?B?VS9BL1BKZjNja01FUjk1ai91bWxBYnRTRGNpbHFwTlhlMlI5ZEZ6bnRyMnlB?=
 =?utf-8?B?bmdUdDF5aW5DdGVjazN1YWYwQjRhMWhVeUZhaC9CZ2NRcDh0TWQ2cmlnY3ds?=
 =?utf-8?B?Wk05S2tlU2dZbk11MTdodFNLbkxzblJMU0Vhc0MyOVVEV3BsQ2FPL2xKS2VG?=
 =?utf-8?B?MjlFVFQyTmZKcGhMUFo1YXNGRGk1VCsxWTQvby95ckl2cG4raUh2WEljN0dZ?=
 =?utf-8?B?dkV6N08xRFlheXJuRWpjMm5xcXNYc0hiVlIvNDJOVFA2NzBibDd2NU5OUUNR?=
 =?utf-8?B?OFMvTXVRdEdoZGt4VkpjMkQ3dHlBTXIvMjVCQW9jRzBYNkgraEdUN2dtc3Fr?=
 =?utf-8?B?NFNBVnpJVFhFZnRwM25KRjdLcTkzWlh3c1l6Mnp0UkdUakJ1UFJ5U3h5Q2lR?=
 =?utf-8?B?RCtUdDdYazArVW1JRjVncDNuWStTbmMxMFByVTBMV0N1Nk1RUmxWQVdYSlI0?=
 =?utf-8?B?eGhWK01NdFNHU0dyUEs3cE50MCt5NFlyY3lmYzIxQ08xMzF4RVNBd1lyYU1k?=
 =?utf-8?B?c1FRMEpDNklyWHVtSk9lb3lmalFVSjZwNWtYMm1YV3lGWWs2YlJjT2F6Q0FP?=
 =?utf-8?B?UmgycDQyeDRSRW02SkZkVDF2Vkg4YWNKZ0hKejVyN291b0R4Q3lTUHRGdkls?=
 =?utf-8?B?TlBubWZVaEljTENRZmZDYUxsN3dHa0VsREVJeHprOWtLRmJ5Q2xtU2xhcU50?=
 =?utf-8?B?V0xTZU9aUzR5VEF3N3FyQlMyeEhTdG1uaWxTQktnRXNOM0YrbjFsWHFwUzcx?=
 =?utf-8?B?bm1iYkdjVjlFSHVWY1U1b0JMNmN3U1A2NVVnRmlQWWpUM3VFdG1sOWg2Y1Fi?=
 =?utf-8?Q?wvaM7GQ0hD0/u?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 522f42af-414b-48e7-b3ce-08d942aa6a3b
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2021 07:23:14.5765 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vD6JDe2M+kF4PlGVV3Q+SvvoSWuwwhLaq1pqiWIZyOQezip1CB6FqyAArE5FAgIp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4222
Subject: Re: [Intel-gfx] [PATCH v3 01/20] drm/sched: entity->rq selection
 cannot fail
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
Cc: Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Jack Zhang <Jack.Zhang1@amd.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Luben Tuikov <luben.tuikov@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMDkuMDcuMjEgdW0gMDk6MTQgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIEZyaSwgSnVs
IDksIDIwMjEgYXQgODo1MyBBTSBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+IHdyb3RlOgo+PiBBbSAwOC4wNy4yMSB1bSAxOTozNyBzY2hyaWViIERhbmllbCBWZXR0
ZXI6Cj4+PiBJZiBpdCBkb2VzLCBzb21lb25lIG1hbmFnZWQgdG8gc2V0IHVwIGEgc2NoZWRfZW50
aXR5IHdpdGhvdXQKPj4+IHNjaGVkdWxlcnMsIHdoaWNoIGlzIGp1c3QgYSBkcml2ZXIgYnVnLgo+
PiBOQUssIGl0IGlzIHBlcmZlY3RseSB2YWxpZCBmb3IgcnEgc2VsZWN0aW9uIHRvIGZhaWwuCj4g
VGhlcmUgaXNuJ3QgYSBiZXR0ZXIgd2F5IHRvIGV4cGxhaW4gc3R1ZmYgdG8gc29tZW9uZSB3aG8n
cyBuZXcgdG8gdGhlCj4gY29kZSBhbmQgdHJpZXMgdG8gaW1wcm92ZSBpdCB3aXRoIGRvY3MgdGhh
biB0byBOQUsgc3R1ZmYgd2l0aAo+IGluY29tcGxldGUgZXhwbGFuYXRpb25zPwoKV2VsbCBhcyBm
YXIgYXMgSSB1bmRlcnN0YW5kIGl0IGEgTkFLIG1lYW5zIHRoYXQgdGhlIGF1dGhvciBoYXMgbWlz
c2VkIApzb21ldGhpbmcgaW1wb3J0YW50IGFuZCBuZWVkcyB0byByZS1pdGVyYXRlLgoKSXQncyBq
dXN0IHRvIHNheSB0aGF0IHdlIGFic29sdXRlbHkgY2FuJ3QgbWVyZ2UgYSBwYXRjaCBvciBzb21l
dGhpbmcgCndpbGwgYnJlYWsuCgo+PiBTZWUgZHJtX3NjaGVkX3BpY2tfYmVzdCgpOgo+Pgo+PiAg
ICAgICAgICAgICAgICAgICBpZiAoIXNjaGVkLT5yZWFkeSkgewo+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgIERSTV9XQVJOKCJzY2hlZHVsZXIgJXMgaXMgbm90IHJlYWR5LCBza2lwcGluZyIs
Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2NoZWQtPm5hbWUpOwo+PiAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+PiAgICAgICAgICAgICAgICAgICB9
Cj4+Cj4+IFRoaXMgY2FuIGhhcHBlbiB3aGVuIGEgZGV2aWNlIHJlc2V0IGZhaWxzIGZvciBzb21l
IGVuZ2luZS4KPiBXZWxsIHllYWggSSBkaWRuJ3QgZXhwZWN0IGFtZGdwdSB0byBqdXN0IGNoYW5n
ZSB0aGlzIGRpcmVjdGx5LCBzbyBJCj4gZGlkbid0IGZpbmQgaXQuIEdldHRpbmcgYW4gRU5PRU5U
IG9uIGEgaHcgZmFpbHVyZSBpbnN0ZWFkIG9mIGFuIEVJTyBpcwo+IGEgYml0IGludGVyZXN0aW5n
IHNlbWFudGljcyBJIGd1ZXNzLCBhbHNvIHdoYXQgaGFwcGVucyB3aXRoIHRoZSBqb2JzCj4gd2hp
Y2ggcmFjZWQgYWdhaW5zdCB0aGUgc2NoZWR1bGVyIG5vdCBiZWluZyByZWFkeT8gSSdtIG5vdCBz
ZWVpbmcgYW55Cj4gY2hlY2tzIGZvciByZWFkeSBpbiB0aGUgbWFpbiBzY2hlZHVsZXIgbG9naWMg
c28gdGhpcyBhdCBsZWFzdCBsb29rcwo+IHNvbWV3aGF0IGFjY2lkZW50YWwgYXMgYSBzaWRlIGVm
ZmVjdCwgYWxzbyBubyBvdGhlciBkcml2ZXIgdGhhbiBhbWRncHUKPiBjb21tdW5pdGNhdGVzIHRo
YXQgcmVzZXQgZmFpbGVkIGJhY2sgdG8gZHJtL3NjaGVkIGxpa2UgdGhpcy4gVGhleSBzZWVtCj4g
dG8ganVzdCBub3QsIGFuZCBJIGd1ZXNzIHRpbWVvdXQgb24gdGhlIG5leHQgcmVxdWVzdCB3aWxs
IGdldCB1cyBpbnRvCj4gYW4gZW5kbGVzcyByZXNldCBsb29wPwoKQ29ycmVjdC4gS2V5IHBvaW50
IGlzIHRoYXQgdGhlcmUgYXJlbid0IGFueSBqb2JzIHdoaWNoIGFyZSBjdXJyZW50bHkgCnNjaGVk
dWxlZC4KCldoZW4gdGhlIHJlYWR5IGZsYWcgaXMgY2hhbmdlZCB0aGUgc2NoZWR1bGVyIGlzIHBh
dXNlZCwgZS5nLiB0aGUgbWFpbiAKdGhyZWFkIGlzIG5vdCBydW5uaW5nIGFueSBtb3JlLgoKSSdt
IHByZXR0eSBzdXJlIHRoYXQgYWxsIG9mIHRoaXMgaXMgaG9ycmlibGUgcmFjeSwgYnV0IG5vYm9k
eSByZWFsbHkgCmxvb2tlZCBpbnRvIHRoZSBkZXNpZ24gZnJvbSBhIGhpZ2hlciBsZXZlbCBhcyBm
YXIgYXMgSSBrbm93LgoKQ2hyaXN0aWFuLgoKCgo+IC1EYW5pZWwKPgo+Cj4+IFJlZ2FyZHMsCj4+
IENocmlzdGlhbi4KPj4KPj4+IFdlIEJVR19PTigpIGhlcmUgYmVjYXVzZSBpbiB0aGUgbmV4dCBw
YXRjaCBkcm1fc2NoZWRfam9iX2luaXQoKSB3aWxsCj4+PiBiZSBzcGxpdCB1cCwgd2l0aCBkcm1f
c2NoZWRfam9iX2FybSgpIG5ldmVyIGZhaWxpbmcuIEFuZCB0aGF0J3MgdGhlCj4+PiBwYXJ0IHdo
ZXJlIHRoZSBycSBzZWxlY3Rpb24gd2lsbCBlbmQgdXAgaW4uCj4+Pgo+Pj4gTm90ZSB0aGF0IGlm
IGhhdmluZyBhbiBlbXB0eSBzY2hlZF9saXN0IHNldCBvbiBhbiBlbnRpdHkgaXMgaW5kZWVkIGEK
Pj4+IHZhbGlkIHVzZS1jYXNlLCB3ZSBjYW4ga2VlcCB0aGF0IGNoZWNrIGluIGpvYl9pbml0IGV2
ZW4gYWZ0ZXIgdGhlIHNwbGl0Cj4+PiBpbnRvIGpvYl9pbml0L2FybS4KPj4+Cj4+PiBTaWduZWQt
b2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPj4+IENjOiAi
Q2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4+IENjOiBMdWJl
biBUdWlrb3YgPGx1YmVuLnR1aWtvdkBhbWQuY29tPgo+Pj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRh
bmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4+PiBDYzogU3RldmVuIFByaWNlIDxzdGV2ZW4ucHJpY2VA
YXJtLmNvbT4KPj4+IENjOiBBbmRyZXkgR3JvZHpvdnNreSA8YW5kcmV5Lmdyb2R6b3Zza3lAYW1k
LmNvbT4KPj4+IENjOiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEu
Y29tPgo+Pj4gQ2M6IEphY2sgWmhhbmcgPEphY2suWmhhbmcxQGFtZC5jb20+Cj4+PiAtLS0KPj4+
ICAgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMgfCAyICstCj4+PiAg
ICBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyAgIHwgMyArLS0KPj4+ICAg
IDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pj4KPj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jIGIv
ZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYwo+Pj4gaW5kZXggNzk1NTRh
YTRkYmIxLi42ZmMxMTZlZTczMDIgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2No
ZWR1bGVyL3NjaGVkX2VudGl0eS5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVy
L3NjaGVkX2VudGl0eS5jCj4+PiBAQCAtNDUsNyArNDUsNyBAQAo+Pj4gICAgICogQGd1aWx0eTog
YXRvbWljX3Qgc2V0IHRvIDEgd2hlbiBhIGpvYiBvbiB0aGlzIHF1ZXVlCj4+PiAgICAgKiAgICAg
ICAgICBpcyBmb3VuZCB0byBiZSBndWlsdHkgY2F1c2luZyBhIHRpbWVvdXQKPj4+ICAgICAqCj4+
PiAtICogTm90ZTogdGhlIHNjaGVkX2xpc3Qgc2hvdWxkIGhhdmUgYXQgbGVhc3Qgb25lIGVsZW1l
bnQgdG8gc2NoZWR1bGUKPj4+ICsgKiBOb3RlOiB0aGUgc2NoZWRfbGlzdCBtdXN0IGhhdmUgYXQg
bGVhc3Qgb25lIGVsZW1lbnQgdG8gc2NoZWR1bGUKPj4+ICAgICAqICAgICAgIHRoZSBlbnRpdHkK
Pj4+ICAgICAqCj4+PiAgICAgKiBSZXR1cm5zIDAgb24gc3VjY2VzcyBvciBhIG5lZ2F0aXZlIGVy
cm9yIGNvZGUgb24gZmFpbHVyZS4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2No
ZWR1bGVyL3NjaGVkX21haW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFp
bi5jCj4+PiBpbmRleCAzM2M0MTRkNTVmYWIuLjAxZGQ0NzE1NDE4MSAxMDA2NDQKPj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jCj4+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYwo+Pj4gQEAgLTU4Niw4ICs1ODYsNyBAQCBp
bnQgZHJtX3NjaGVkX2pvYl9pbml0KHN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2IsCj4+PiAgICAg
ICAgc3RydWN0IGRybV9ncHVfc2NoZWR1bGVyICpzY2hlZDsKPj4+Cj4+PiAgICAgICAgZHJtX3Nj
aGVkX2VudGl0eV9zZWxlY3RfcnEoZW50aXR5KTsKPj4+IC0gICAgIGlmICghZW50aXR5LT5ycSkK
Pj4+IC0gICAgICAgICAgICAgcmV0dXJuIC1FTk9FTlQ7Cj4+PiArICAgICBCVUdfT04oIWVudGl0
eS0+cnEpOwo+Pj4KPj4+ICAgICAgICBzY2hlZCA9IGVudGl0eS0+cnEtPnNjaGVkOwo+Pj4KPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
