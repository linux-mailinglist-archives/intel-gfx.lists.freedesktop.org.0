Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAC239327C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 17:32:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C40A86F416;
	Thu, 27 May 2021 15:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2089.outbound.protection.outlook.com [40.107.223.89])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED0546F418;
 Thu, 27 May 2021 15:32:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gaVL83REzUV43FTJ1/b8YRzx4rokilYAL9wdgNcDxAtlMT/X1A+ypSs6uh3P8koPJrPpk5soEbsx7iSq9R2C8WZ8Gv5kfArELQQV83VAApNmvFpohShic4SI+ClkprkveOOvY/IIG5lb0lOPHvAEZK3IGcESj5mJsp47H0Sr3WOYR7QZZ0ZC8eGLwP9mzlthO7FcZ7lW42Q/Rw9Wxh9SOvR/pjH5rqzaPKjXWIgyuYqWRdqjpaiExhQKv/PJjotWJNfsJVCDTe/bq8d5aKvKDNrmmNtjnyVGhJzvVO8FgM9AXeJ7aU144fl5CYY9WtFYAg/AfNiuZOPpsnYv7U0nQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LL8xwPQaEACGiMjx44OLXumA6V1vR6xoiXkT+ZukONg=;
 b=ERujyIAOIfAiFPCqDj4qceR2a0GrZjhc9d5BzKuWYT0YLbTQVaHursM53woFyUWnAUt3nJcaAL3b8Go+/Bl1ppwVn/Jy4VCzlrGccbtfzNXjJeCts207CZWvdU7qXPrO8oRE5GVwfYTM0FOgonWNjVXK3SosvzKWGRnq9Yt9znzrcYRymITN7LTrEOqloIFC4s1Jy6DkjsNIfd3F5OBlw2vFTyH3YiWwHBGugtQBW2DoFJCxyEqCZp7vK6xHepN1z1LlMVQBTkWKomeK4molMtlBFoH/9ytWd2/HSGJdzSidQMJfPU+BF8v9rvAMtR7PszF6YbRG2bzPM7OFlv0yfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LL8xwPQaEACGiMjx44OLXumA6V1vR6xoiXkT+ZukONg=;
 b=tzD0sma9ccMrUwGLHJX9/35F+wW97YSG2LmNNkHXYfNDXBaG3GjJc5v005KIreu6R6TuW/bt6uZVsG1NlahXKKNz/0e32+NYr+y6uwIvyMWwN5PSmwJFqLc4Gb+ulhzWC6ecHJH4ilZgbS3kmo2jQi9W3btoV6JNvcOs5ULwaOY=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4334.namprd12.prod.outlook.com (2603:10b6:208:1d1::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20; Thu, 27 May
 2021 15:32:10 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4173.024; Thu, 27 May 2021
 15:32:10 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210527141923.1962350-1-thomas.hellstrom@linux.intel.com>
 <883eab20-4326-d14a-2eb0-5e95f174a0d9@amd.com>
 <8b3382726763050334a6cb214f7ba560eebf8f28.camel@linux.intel.com>
 <e594a1d45b22e92e052d1070beadc5928e5c0ba1.camel@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <17037c04-603c-44c8-84a2-bce49c0e4f0c@amd.com>
Date: Thu, 27 May 2021 17:32:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <e594a1d45b22e92e052d1070beadc5928e5c0ba1.camel@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:ffcf:5811:6cd5:8a3f]
X-ClientProxiedBy: PR1P264CA0003.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:19e::8) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:ffcf:5811:6cd5:8a3f]
 (2a02:908:1252:fb60:ffcf:5811:6cd5:8a3f) by
 PR1P264CA0003.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:19e::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4173.20 via Frontend Transport; Thu, 27 May 2021 15:32:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4445428d-e156-4f3e-f4f9-08d921249806
X-MS-TrafficTypeDiagnostic: MN2PR12MB4334:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4334F7853408BC98B47F13B883239@MN2PR12MB4334.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1hmpQpFUPlR3BzKZLCGIHCwhhGGDnj46QsM963q/1pqduDGQjOPlMJrWhT6M6aPbdNmEX6DuXQa9zjlyecfgSqD2wS8xqAtzGTO0w5LawK0/TirF6HAyvF83B2JBMjPinMNhyHFWdIZmEf6RnbXlF9w0BEmlcPvJQjQb1pzpg37PKodtjPtmOhHuo3K6fBmOA8+PUL4VVC1arKOzck1V2lUnKJiYv7WHwzkUY8Rtk/VLF9LFjhJ9ENp+4trujOfiw8/XTicIcwNDWErcCRVuSVMVI0H7KVvwZZ6nuJWV0xDUhmECthGWg32vq3eIIVneJ2iBgW1JXk6lru4KrPeWY+gC/oHf0KNVhcgS6BLE7AHVpceuMThCNA5c4bIAmxzQy4EWWHsZNayEtBzrp5JZPgvfFVfZq8ReLTNijqVwDDw8tMa4x0wr/bLE/AIM3I1crkqDqtYdiM00mXiUl9kAmqu855oDeKURdQo+Wx+/NHF+6KNYWUPKAJJhZu7dbpLAz/qGBx0INRwpSadhuEZqOyEUHE90M1oriaHyYWoE9aekf23IUc0wLe4SEBvfI9vZNpfD3JlhxXeyHPjMhGeSE2zn97hX3/ZW+q6LCqI8Jg3n1Q0XiU0fEzZgF53jGwsvB5ukwiOWWbH3I8oVH1+ZK2wIdBjLUpKgWGLQscFaL7NdzmvziQYavd3WSIHLRuKJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(346002)(396003)(136003)(366004)(478600001)(52116002)(2906002)(186003)(2616005)(16526019)(5660300002)(8936002)(38100700002)(66574015)(66556008)(316002)(8676002)(6486002)(86362001)(66946007)(36756003)(31686004)(66476007)(6666004)(31696002)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?TENQb2l0RlI5emVXaWo4aEV3VHBSMk0vSkJaeU1IWFdKMnJRdHhRV3pKdkhR?=
 =?utf-8?B?ZjBYcW5Ec1hWYVlCSlJPbEdXTWRsVE56djFVb2dLaWRHOTNJRkluZnJYMXE3?=
 =?utf-8?B?ZkR6WlRTdWpvMWFkTFVpZGY0NmJoSG5kQytSZkNwRTlER2pkMnNqdzB4MFhG?=
 =?utf-8?B?OWsxbDFwU0wrbkFvSFF3TkxidDUyNzJSTkxHQS9CWUFXaFpCbmVPVE1yR2Ur?=
 =?utf-8?B?OVFuK1c1U2tJeUNpeWV5VnIrVWdrcFFLd2tBQUZZNk5tV1NvdWFJZlNXdlh0?=
 =?utf-8?B?a2pmWEhxZjMzQ045eVNxSkNNMjJ5WXB3NzlSWlo2OExwOU9SKzVBRW1xbVc1?=
 =?utf-8?B?dDJEbVBUeFBJZDcrNEF0ZmVKMm52MkoxQXlSMG5QeDJmYXBYVGp3eTVBYTRY?=
 =?utf-8?B?U0RYK0trN2ZJNXV3RTZ4YXJVN2diRzdQSjFUU1lTK1o4T09QVHkwdVl4Ym0w?=
 =?utf-8?B?UkV4THVKbWhTV0VnRU43MitBQjYvbm1PSjZXSHJZWmUxNkRTYW9SMk8vYnV6?=
 =?utf-8?B?cGhXS3M4aTBhR1VGSDd1aHlwUmJPNExBd0N3UXZYemw0ZzlLdnorT1FFR0h3?=
 =?utf-8?B?dTBwaTBVdlVRa1dISTVpdWtZSVd5TklpQ0NLWWJ6THpKWlZHak05ejFTNjMr?=
 =?utf-8?B?RGNsODZqNktXWDRTN2xDZSsxaE9xV2s4RzNMcnA3NSt6cHk4QmptOTNVK21i?=
 =?utf-8?B?dkxkVVBFZFRFcy91dXJoTkxjTVI2ZGpMaVZyV0ZEQ2x4WGNXam9lRG9mcDFL?=
 =?utf-8?B?dEdkdk9WVHJGdUhvYklEcXNXVkhwaVRVNDhJRzZtdGdNQ0duc25iU3VyT05a?=
 =?utf-8?B?RlpMMFRHV0dVL1MzZGlTLzE3ODFnUy95Y0lWdi91aXluMGVSZ29qZkpzR04z?=
 =?utf-8?B?Zm4wbTBqblZWN2g3SU5vaTQ5d1Z4S2FIMEZhMlNDWDk2c092SXdWT3pNSldF?=
 =?utf-8?B?UVAza2REYmY2S1dpMmpTcjRFMmVrQWRIeFI0V2JxbFlQUzl2cHpFb0lOSzgw?=
 =?utf-8?B?SS9WbDRUQ1k4ckFOckpGYXR1S0h1Si9RY2dBZnoraS9mWjV6a2lkcU5FSHUw?=
 =?utf-8?B?bUluK0hPM2R1L3hMYzVPUitUbHhOb3FTRitLaDVjdkc5L3N1MTRlemx1U2Zu?=
 =?utf-8?B?bHNCS1NIZEg2ZkhGeDlRSmc5UmtUR1pXeS9lVy9zYW1xY1lmeHVUS1ZOLzZp?=
 =?utf-8?B?WGZZVU1vRWNrZ1hvaHBVMjJ2SEw4YVB5RklBbm5DY2lhYlk0OWsyZlZBYVFK?=
 =?utf-8?B?N2h3bGIwNmVIUkFFeFZRTzFnVG95U2E2ejNZZ1Z5ZUpJek4wSnZQR1FEc2I3?=
 =?utf-8?B?UG1JRnEzQ21HTWJ3dk9oT0txTkVtbzc2RHZBQ1hha0RQZUJrV0Nnc2dQb08r?=
 =?utf-8?B?WGZmQWt6NmMyQ1NUWElpaEpyV3lDMExQWTZCUjdMeFRuczFkejAxK2MyZm9r?=
 =?utf-8?B?OWdmc0lwYmZES3NsRStxNjNUM28wMVo0RFhwenFjcDBvV001TVVoVkcyZDMz?=
 =?utf-8?B?VEVJbTFZSzl1L1ZmdVpXdkV3UStraDBTTUwxWGhLUDBFUWhVVzJaL2Jiellj?=
 =?utf-8?B?KzMzcmxpeGNvNlR5Rm51ZklEcjltMUh0RGZDT3c1eHhvMXR1czlqeDQ5OU1F?=
 =?utf-8?B?MkQzWFdSTVl6d3l5YnQ5b0dCdVBBejlzTWFVVHdyWGNBWCs2UU5lYWxESFgx?=
 =?utf-8?B?ZUUzR2Y4S0Q4a2RXcXpUaDZ0MXZSUEZDb0FZVk1PYVduZStoUHZ3SkVINzFD?=
 =?utf-8?B?MkU2SEJsaVYvaG1uemp5WnRaWThLZVdqZFlwWnJ5bVZ5ZXkrNGRkSERuSXow?=
 =?utf-8?B?LzRDQUszRXZjYlJDY2dJLzFIMTd0QkRZM2hYcmV6RHZSTUM5OU5NYjUxUXlU?=
 =?utf-8?Q?8OcpmZxs4PVvZ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4445428d-e156-4f3e-f4f9-08d921249806
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2021 15:32:10.4147 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Up1WKANx+6+ADHPwlqTl0zFOBdsmiYDMQcD65G3DPpPa2ISQL8CufoeA8yRQEBz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4334
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

QW0gMjcuMDUuMjEgdW0gMTc6MDUgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBPbiBUaHUs
IDIwMjEtMDUtMjcgYXQgMTc6MDEgKzAyMDAsIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+PiBP
biBUaHUsIDIwMjEtMDUtMjcgYXQgMTY6NTQgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
Cj4+PiBBbSAyNy4wNS4yMSB1bSAxNjoxOSBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4+
IFRoZSBzd2FwcGluZyBjb2RlIHdhcyBkZXJlZmVyZW5jZSBiby0+dHRtIHBvaW50ZXJzIHdpdGhv
dXQgaGF2aW5nCj4+Pj4gdGhlCj4+Pj4gZG1hLXJlc3YgbG9jayBoZWxkLiBBbHNvIGl0IG1pZ2h0
IHRyeSB0byBzd2FwIG91dCB1bnBvcHVsYXRlZAo+Pj4+IGJvcy4KPj4+Pgo+Pj4+IEZpeCB0aGlz
IGJ5IG1vdmluZyB0aGUgYm8tPnR0bSBkZXJlZmVyZW5jZSB1bnRpbCB3ZSBoYXZlIHRoZQo+Pj4+
IHJlc2VydmF0aW9uCj4+Pj4gbG9jay4gQ2hlY2sgdGhhdCB0aGUgdHRtX3R0IGlzIHBvcHVsYXRl
ZCBhZnRlciB0aGUgc3dhcF9ub3RpZnkKPj4+PiBjYWxsYmFjay4KPj4+Pgo+Pj4+IFNpZ25lZC1v
ZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtCj4+Pj4gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50
ZWwuY29tPgo+Pj4+IC0tLQo+Pj4+ICDCoCBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jwqDC
oMKgwqAgfCAxNiArKysrKysrKysrKysrKystCj4+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS90dG0v
dHRtX2RldmljZS5jIHzCoCA4ICsrKy0tLS0tCj4+Pj4gIMKgIDIgZmlsZXMgY2hhbmdlZCwgMTgg
aW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9i
by5jCj4+Pj4gaW5kZXggOWY1MzUwNmE4MmZjLi44NjIxM2QzNzY1N2IgMTAwNjQ0Cj4+Pj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS90dG0vdHRtX2JvLmMKPj4+PiBAQCAtMTE2Myw2ICsxMTYzLDE2IEBAIGludCB0dG1fYm9fc3dh
cG91dChzdHJ1Y3QKPj4+PiB0dG1fYnVmZmVyX29iamVjdAo+Pj4+ICpibywgc3RydWN0IHR0bV9v
cGVyYXRpb25fY3R4ICpjdHgsCj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqBpZiAoIXR0bV9ib19ldmlj
dF9zd2Fwb3V0X2FsbG93YWJsZShibywgY3R4LCAmcGxhY2UsCj4+Pj4gJmxvY2tlZCwgTlVMTCkp
Cj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FQlVTWTsKPj4+
PiAgICAKPj4+PiArwqDCoMKgwqDCoMKgwqBkbWFfcmVzdl9hc3NlcnRfaGVsZChiby0+YmFzZS5y
ZXN2KTsKPj4+PiArCj4+Pj4gK8KgwqDCoMKgwqDCoMKgaWYgKCFiby0+dHRtIHx8Cj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgIGJvLT50dG0tPnBhZ2VfZmxhZ3MgJiBUVE1fUEFHRV9GTEFHX1NH
IHx8Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIGJvLT50dG0tPnBhZ2VfZmxhZ3MgJiBUVE1f
UEFHRV9GTEFHX1NXQVBQRUQpIHsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aWYgKGxvY2tlZCkKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGRtYV9yZXN2X3VubG9jayhiby0+YmFzZS5yZXN2KTsKPj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FQlVTWTsKPj4+PiArwqDCoMKgwqDCoMKgwqB9Cj4+
Pj4gKwo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgaWYgKCF0dG1fYm9fZ2V0X3VubGVzc196ZXJvKGJv
KSkgewo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChsb2NrZWQpCj4+
Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRtYV9y
ZXN2X3VubG9jayhiby0+YmFzZS5yZXN2KTsKPj4+PiBAQCAtMTIxNSw3ICsxMjI1LDggQEAgaW50
IHR0bV9ib19zd2Fwb3V0KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdAo+Pj4+ICpibywgc3RydWN0
IHR0bV9vcGVyYXRpb25fY3R4ICpjdHgsCj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqBpZiAoYm8tPmJk
ZXYtPmZ1bmNzLT5zd2FwX25vdGlmeSkKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBiby0+YmRldi0+ZnVuY3MtPnN3YXBfbm90aWZ5KGJvKTsKPj4+PiAgICAKPj4+PiAtwqDC
oMKgwqDCoMKgwqByZXQgPSB0dG1fdHRfc3dhcG91dChiby0+YmRldiwgYm8tPnR0bSwgZ2ZwX2Zs
YWdzKTsKPj4+PiArwqDCoMKgwqDCoMKgwqBpZiAodHRtX3R0X2lzX3BvcHVsYXRlZChiby0+dHRt
KSkKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gdHRtX3R0X3N3YXBv
dXQoYm8tPmJkZXYsIGJvLT50dG0sCj4+Pj4gZ2ZwX2ZsYWdzKTsKPj4+IEV4YWN0bHkgdGhhdCBp
cyB3aGF0IEkgd29uJ3QgcmVjb21tZW5kLiBXZSB3b3VsZCB0cnkgdG8gc3dhcCBvdXQKPj4+IHRo
ZQo+Pj4gc2FtZSBCTyBvdmVyIGFuZCBvdmVyIGFnYWluIHdpdGggdGhhdC4KPj4gQnV0IHdlIHdv
dWxkbid0IHNpbmNlIHRoZSBCTyBpcyB0YWtlbiBvZmYgdGhlIExSVSBhbmQgbmV2ZXIgcmUtYWRk
ZWQsCj4+Cj4+Cj4gSW4gZmFjdCwgd2UnZCBwcm9iYWJseSBtaWdodCB3YW50IHRvIHRha2UgdGhl
ICFiby0+dHRtIGJvcyBvZmYgdGhlIExSVQo+IGFzIHdlbGwuLgoKTm8sIHdlIGRvbid0IHdhbnQg
dG8gdGFrZSBhbnkgQk9zIG9mIHRoZSBMUlUgdW5sZXNzIHRoZXkgYXJlIHBpbm5lZC4KCkFkZGlu
ZyBhIFRUIG9iamVjdCBvciBwb3B1bGF0aW5nIGl0IGRvZXNuJ3QgbmVjZXNzYXJpbHkgcHV0IHRo
ZSBCTyBiYWNrIAp0byB0aGUgTFJVLgoKQ2hyaXN0aWFuLgoKPgo+IC9UaG9tYXMKPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
