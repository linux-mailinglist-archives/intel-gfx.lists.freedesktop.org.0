Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C22D03C6F9A
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 13:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E87D6E07F;
	Tue, 13 Jul 2021 11:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2048.outbound.protection.outlook.com [40.107.223.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14AFC6E07F;
 Tue, 13 Jul 2021 11:20:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nOAISOD1BMDI6wNtSihcIm7PorCdVuMJC0PFVkBrYMWy+BQM36CX7DQQ525G0qmP4YwlpjTg1etc1j0PJcTC8Z9cj/pGHxgfB2eA0/gk4sfO5OQHiNI1zOrP8sCPHLy2ygj3rMzYDuVidiQv/ofC4Cq2r+zrXfd022a8n+YFawveQCjMjT25HGks/a/iuWo4AwioYUMn+PT1AIRlN8HFQLfGcP0f/fJTYg5htVZ2h4gck2+dLOKGDA+nbEEFsPieUCpLWspQsMkMDjMRVyqoc8Z3rkb4CTkVNOMKCZr03+i+iwFge+NwkfZXiSCHt6TdvpfGaur9az0iR7jJ24jLnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UvkUuB468EJ2fWJUUVHy0HuKZVTwjBcJbWOEwfwNWts=;
 b=QUc7gLJSKcGNGZBzYu4e1eLFT6MeB8HML48gdS0OQ8Fs3GGdCHSP3/RflPAwpgJ0W2pJA8lqWYVCLXcaWZEPHypNhqpNXvooUuwpSGtPVCZzEkVcR90TKnQlleC0rYo7WmnU1fokGmIeqxrfMafjm8lIWoaxwveWdjT+Rq7m/yiZFrm89bsKpvhGvgiEg0JBbXsq4gfZcMJpHRH0tuBrSsRdkBqXXSpTFR572tJWvslIMoI9fNb428r/QZCzYn+rwnyPylbKfUqR/MhNw1/G9d41jGWAOyHdIZfNNj7IC0TRhc8RyUV3mqb7Y/RvVO/WKHFXMi4m2F3rrwfMyWBAvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UvkUuB468EJ2fWJUUVHy0HuKZVTwjBcJbWOEwfwNWts=;
 b=F/VFIYUZ7ZfNKvXTMri+epVaSvto6Ke2QAwCFZj9qQKWSVLrJbMgXMc2/GcyYJAuTYaqC/LQ5YSztPa+7NUPCHjILJx0hvJS3vrcKuBdBFccAJfa1NlmRnINA+JAgCDVkUJ6RV11xLGkAeRNTMmw+7u2xZrbszNXkNqrX+UBkT8=
Authentication-Results: collabora.com; dkim=none (message not signed)
 header.d=none;collabora.com; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB4690.namprd12.prod.outlook.com (2603:10b6:208:8e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.20; Tue, 13 Jul
 2021 11:20:08 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4308.027; Tue, 13 Jul 2021
 11:20:08 +0000
To: Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
 <20210712175352.802687-3-daniel.vetter@ffwll.ch>
 <2cd9df9e-08e5-d0bd-d4d3-aed00f699e4a@amd.com>
 <CAKMK7uE3dppw2=sVHRKx1b-ehVfiBphoJNJvpoPjt-=KsPp=Yw@mail.gmail.com>
 <5c5ef6ba-49d0-36cc-b537-e6f9c354f6ac@amd.com>
 <CAKMK7uGXVzaH25_spK5Pp8epx8a+9As6tVMcaj3p6Dedg0FH-w@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <18e74b38-9949-209b-c19b-fc9dbcfd3418@amd.com>
Date: Tue, 13 Jul 2021 13:20:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <CAKMK7uGXVzaH25_spK5Pp8epx8a+9As6tVMcaj3p6Dedg0FH-w@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: FR3P281CA0048.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::20) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:7f5a:cff:4644:b698]
 (2a02:908:1252:fb60:7f5a:cff:4644:b698) by
 FR3P281CA0048.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:4a::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.11 via Frontend Transport; Tue, 13 Jul 2021 11:20:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6126c782-4080-44c5-d705-08d945f02c1d
X-MS-TrafficTypeDiagnostic: BL0PR12MB4690:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BL0PR12MB46907DD7750AB51C4AF83BBF83149@BL0PR12MB4690.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:81;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2G/DCB/x/8g/Rdk96+uU3EEf/P1ycajm4DvyEXysTc0FqrlxANLq1PHcy9Ppfz61daasY/NlwKyPvznlE2blbrsyzKkSaBoXjceLlpcnqcuFqCYADRWBs2rWofOL1dmOXNLu8yR2ShkL8iWtw3ZeMxMYA4sOM+rIdoYKETmZNO1FAQKW3DoFywKfn/sfTle7TwEkZPq4/xbP264PWzhSI3oFJHqRIgSA/28L1xhXis6WEqSHJSjUwh3QOckxFfkCvAemHb3cC//dq4EkBhDmdnanE7J6SdBB9wE6D0a3VQ1QVvKVyCceVcA7AXoUuUVswEAHw30eAaNWFTwzV36aMmvuHvn24A25rAC0mzPTHcXXSt1U34tB5Hdu2cCoVjmRWS8rk+x1eeUWBTleoPQH34wHxWgCFFame70DbhJDR4POCBwUpr2DJU3/Z9SwOZh2SY+5QxJrpSy/8miP+n/y9XAqHZpNm5VY9KJ7D+ziDOtS1pJ4WUlM7QmIYrUuuF26nn2T3VQG+bNWJ3v2zeA+rNeFP9W5lS2F9UyanRRJRclThw+EC3sPZFA7xBxXFJ5+jl+/nUDl3jhsh8TwSDmuhVL3onDfWKr5/2LXaLew+VIUH6zCdpLBBGpXPJEJjxVUtnWQxzAq95kG//IEcBfOJVksLfn0cQIiV/qOOPoU9ROQifK8jcmsI6a1jIYZ9IRiU0jyxISEdVofR8MqZyjkq/acDHjkCAVonW+NxHLtOfFjKq1IaNBAUoAHGNiVSki5NfNV8NpIPx87eQfHZooeDepCcx/tMuLV39dBO0Bs3/mpKDKQryLaI6snlog6q/76btnh6LnYag7pgkaiPsaapYg2M4fVlWRhOhspr7167Jo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(396003)(136003)(39860400002)(346002)(366004)(2906002)(4326008)(6486002)(8936002)(8676002)(54906003)(36756003)(316002)(2616005)(66556008)(6916009)(66574015)(5660300002)(83380400001)(86362001)(31686004)(45080400002)(6666004)(38100700002)(966005)(31696002)(186003)(478600001)(66946007)(66476007)(53546011)(60764002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2cwWXh3ZCt0VUduTUNNLzlTQk0wa281Y2dFWHpKRW9yU25IaFNxWlY2N2lP?=
 =?utf-8?B?KzJRczdxU2pPSGREQ1dNZ01pNnowZkxFRFpTRm41TVQwYXJzUHVmZDlqM0tv?=
 =?utf-8?B?MjZJMHA3WFdzMDlRQXB6aFlHWUNpU3U3ZEtSRUVFek02cG9YcWpBTmRrTnBI?=
 =?utf-8?B?YTVVTUcyMWlNVndMUFVPWEtTYzc0eHJXdTNxby9TcFgzdzRwQmZhRlprN2kz?=
 =?utf-8?B?RE9aR0JBWDZZeDNzUWFwWjNxVTcrNEYvdW1vWWVmZGZZdGtUaWxYTUNZaE1L?=
 =?utf-8?B?ZS85WnRTL3ExTXBhc2dtOFVNSEV3S3ZqNXBkM0pET2w5RG0yS2loUjFhVUJO?=
 =?utf-8?B?MmRuakRXUFNyTTZaL1FWODgrRFo1ZzVZNEZ1SlZZbkF4Z3Jrd3AzT2VORi9L?=
 =?utf-8?B?WlE0WWhIYkw4eFBEODUvOEZpb1JHZTBmR1Z4K3BzSURPZkxOdGRFOEtMelg3?=
 =?utf-8?B?Y1JEOC9NQjhORW9GZlBlcmNMRWFTdGhGZk9Td3loS3h0VjQ5UUwyYlB6bTlL?=
 =?utf-8?B?NU0yNmVoWXhIRTUzVXI0T29iRFd2UWl6WUE0V2JQZjY3a3Rrbnh1c0w5R3Fz?=
 =?utf-8?B?bDE2U1gvR0Q4eXFPYWM5MVVWRlZ2eVd6Q0cyQ2dNaWtVUUdXdzIyMDZTT1dz?=
 =?utf-8?B?OEtXdERaUkpuRjhqc3Bkcit1b1JlMElLeUJRUDRJay8raG12Mjk4YmkweERO?=
 =?utf-8?B?dDdVRDVMUm5CZ3BPd0JiUEg4bkZYV0JBRkNWSXNlMmNrcUV4Tm5PWTlLSkUy?=
 =?utf-8?B?ZlJxQXVSYjZRa25PMWdaMm5oKzNTZXFlN0FCZ2YrNVI2d0F5ejAzVWN2T0pR?=
 =?utf-8?B?YTZNRllYK3NEUnh2dndPc0J2d0RRMjlmbkdDTHBNdm4wOS82OXBpbXFIa2xR?=
 =?utf-8?B?V3dvWjVqL0JPN2RwNXdsNnVHWHNtRWpmSzVXbGdUMmhQM2YySHdqaWFRb3pU?=
 =?utf-8?B?MTc3QzBKUzl2WDJqN09oN1dpSUtwbVhBQjUrSXk5OTlKc01iV0E1MDFlQXYx?=
 =?utf-8?B?d3VzMDdMbmo0L1NZamFrUzdXSnJEV21JZDQ4cUdpbHZSM0RzZmNQeldCUk5M?=
 =?utf-8?B?cy9HR3lYK1ZVRkRTOW5kc3pGNjZyd1k2eFdhNmJMMHBtSEk4b2lPMlFianZY?=
 =?utf-8?B?T1gvN1Fldm5VaUh2TllySnJXbVFlUkFUbTZSSmNPSUhTdGxyZUgwbFBnR2FB?=
 =?utf-8?B?NmVCbU1TdXNRd0diZi9Bclp2SDV5RHlEdlhOUVV5c0dlYkZFOFNmU1R1UTVq?=
 =?utf-8?B?bENsMXdXbkpSNVFzZWVGUzFGUjZEWjdyY3NWZFQ4TEpqR3lINWtGRGpvUzBM?=
 =?utf-8?B?NXEzcUpQWC9IUmphdHczODhDdUNpd0tJbmNDWHVLV3U1bDI4MkRYMFp4V0hG?=
 =?utf-8?B?NzVXSEVLazhFNFM2amhCeFJBUkczWFVsdEhFRzVMOHMyK1BSS2pOZ3NKZWZl?=
 =?utf-8?B?SVFkODdFQkxCcXdyMGNWQ1B3ajFGUUk5KzhtYVp6akVVNURSUkFabjBNNGtZ?=
 =?utf-8?B?VlZmcFAvSnBpdFNWbk5oT2UycWRkZlpneTM2YU1PbHE4TmQxejJDWVo4cndB?=
 =?utf-8?B?TUY1MmtqTE9Nb0YxN0YrRTBlYXdocVdZS0V2bXN3MGg0dTZmdlVaS2xFQU9k?=
 =?utf-8?B?RDJ2MGlnMmZuNEtYc0xFMTJ3bXhETE1xSys4R3JYNVB0aldFR0c5OHEyWDZ4?=
 =?utf-8?B?LzFuaU5KVVhnckY4cmp0c2JaYmkzaFBVYjhCVnZVSGRlS2NyN2pwZjJPZFhO?=
 =?utf-8?B?QzlBZWJlREFaeGxGKzJGQkF2dnB2ZHNYYjZTUEFFdWJJSG1mbUgzc0c2bndL?=
 =?utf-8?B?YmRlRkt4eTZCZ2YyL0Q3U1pVOEovUjFHcHVqYysvZHljT1lQOUR2Z3NtM1JI?=
 =?utf-8?Q?nl0TFmQfucEYA?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6126c782-4080-44c5-d705-08d945f02c1d
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2021 11:20:08.6505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PwRZSgeFdescXaACijSz+HP39jVNhVwFRTIjGlnSaqYctvU2ZF53cbos5AD7AbYz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4690
Subject: Re: [Intel-gfx] [PATCH v4 02/18] drm/sched: Barriers are needed for
 entity->last_scheduled
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Lee Jones <lee.jones@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMTMuMDcuMjEgdW0gMTE6MTAgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFR1ZSwgSnVs
IDEzLCAyMDIxIGF0IDk6MjUgQU0gQ2hyaXN0aWFuIEvDtm5pZwo+IDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+IHdyb3RlOgo+PiBBbSAxMy4wNy4yMSB1bSAwODo1MCBzY2hyaWViIERhbmllbCBW
ZXR0ZXI6Cj4+PiBPbiBUdWUsIEp1bCAxMywgMjAyMSBhdCA4OjM1IEFNIENocmlzdGlhbiBLw7Zu
aWcKPj4+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+Pj4+IEFtIDEyLjA3LjIx
IHVtIDE5OjUzIHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPj4+Pj4gSXQgbWlnaHQgYmUgZ29vZCBl
bm91Z2ggb24geDg2IHdpdGgganVzdCBSRUFEX09OQ0UsIGJ1dCB0aGUgd3JpdGUgc2lkZQo+Pj4+
PiBzaG91bGQgdGhlbiBhdCBsZWFzdCBiZSBXUklURV9PTkNFIGJlY2F1c2UgeDg2IGhhcyB0b3Rh
bCBzdG9yZSBvcmRlci4KPj4+Pj4KPj4+Pj4gSXQncyBkZWZpbml0ZWx5IG5vdCBlbm91Z2ggb24g
YXJtLgo+Pj4+Pgo+Pj4+PiBGaXggdGhpcyBwcm9wbGVyeSwgd2hpY2ggbWVhbnMKPj4+Pj4gLSBl
eHBsYWluIHRoZSBuZWVkIGZvciB0aGUgYmFycmllciBpbiBib3RoIHBsYWNlcwo+Pj4+PiAtIHBv
aW50IGF0IHRoZSBvdGhlciBzaWRlIGluIGVhY2ggY29tbWVudAo+Pj4+Pgo+Pj4+PiBBbHNvIHB1
bGwgb3V0IHRoZSAhc2NoZWRfbGlzdCBjYXNlIGFzIHRoZSBmaXJzdCBjaGVjaywgc28gdGhhdCB0
aGUKPj4+Pj4gY29kZSBmbG93IGlzIGNsZWFyZXIuCj4+Pj4+Cj4+Pj4+IFdoaWxlIGF0IGl0IHNw
cmlua2xlIHNvbWUgY29tbWVudHMgYXJvdW5kIGJlY2F1c2UgaXQgd2FzIHZlcnkKPj4+Pj4gbm9u
LW9idmlvdXMgdG8gbWUgd2hhdCdzIGFjdHVhbGx5IGdvaW5nIG9uIGhlcmUgYW5kIHdoeS4KPj4+
Pj4KPj4+Pj4gTm90ZSB0aGF0IHdlIHJlYWxseSBuZWVkIGZ1bGwgYmFycmllcnMgaGVyZSwgYXQg
Zmlyc3QgSSB0aG91Z2h0Cj4+Pj4+IHN0b3JlLXJlbGVhc2UgYW5kIGxvYWQtYWNxdWlyZSBvbiAt
Pmxhc3Rfc2NoZWR1bGVkIHdvdWxkIGJlIGVub3VnaCwKPj4+Pj4gYnV0IHdlIGFjdHVhbGx5IHJl
cXVpcmluZyBvcmRlcmluZyBiZXR3ZWVuIHRoYXQgYW5kIHRoZSBxdWV1ZSBzdGF0ZS4KPj4+Pj4K
Pj4+Pj4gdjI6IFB1dCBzbXBfcm1wKCkgaW4gdGhlIHJpZ2h0IHBsYWNlIGFuZCBmaXggdXAgY29t
bWVudCAoQW5kcmV5KQo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGludGVsLmNvbT4KPj4+Pj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+Pj4+PiBDYzogU3RldmVuIFByaWNlIDxzdGV2ZW4ucHJp
Y2VAYXJtLmNvbT4KPj4+Pj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwu
Y2g+Cj4+Pj4+IENjOiBBbmRyZXkgR3JvZHpvdnNreSA8YW5kcmV5Lmdyb2R6b3Zza3lAYW1kLmNv
bT4KPj4+Pj4gQ2M6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4+Pj4+IENjOiBC
b3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+Pj4+PiAtLS0K
Pj4+Pj4gICAgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMgfCAyNyAr
KysrKysrKysrKysrKysrKysrKysrLS0KPj4+Pj4gICAgIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hl
ZHVsZXIvc2NoZWRfZW50aXR5LmMKPj4+Pj4gaW5kZXggZjczNDdjMjg0ODg2Li44OWUzZjZlYWY1
MTkgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50
aXR5LmMKPj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHku
Ywo+Pj4+PiBAQCAtNDM5LDggKzQzOSwxNiBAQCBzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqZHJtX3Nj
aGVkX2VudGl0eV9wb3Bfam9iKHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICplbnRpdHkpCj4+Pj4+
ICAgICAgICAgICAgICAgICBkbWFfZmVuY2Vfc2V0X2Vycm9yKCZzY2hlZF9qb2ItPnNfZmVuY2Ut
PmZpbmlzaGVkLCAtRUNBTkNFTEVEKTsKPj4+Pj4KPj4+Pj4gICAgICAgICBkbWFfZmVuY2VfcHV0
KGVudGl0eS0+bGFzdF9zY2hlZHVsZWQpOwo+Pj4+PiArCj4+Pj4+ICAgICAgICAgZW50aXR5LT5s
YXN0X3NjaGVkdWxlZCA9IGRtYV9mZW5jZV9nZXQoJnNjaGVkX2pvYi0+c19mZW5jZS0+ZmluaXNo
ZWQpOwo+Pj4+Pgo+Pj4+PiArICAgICAvKgo+Pj4+PiArICAgICAgKiBJZiB0aGUgcXVldWUgaXMg
ZW1wdHkgd2UgYWxsb3cgZHJtX3NjaGVkX2VudGl0eV9zZWxlY3RfcnEoKSB0bwo+Pj4+PiArICAg
ICAgKiBsb2NrbGVzc2x5IGFjY2VzcyAtPmxhc3Rfc2NoZWR1bGVkLiBUaGlzIG9ubHkgd29ya3Mg
aWYgd2Ugc2V0IHRoZQo+Pj4+PiArICAgICAgKiBwb2ludGVyIGJlZm9yZSB3ZSBkZXF1ZXVlIGFu
ZCBpZiB3ZSBhIHdyaXRlIGJhcnJpZXIgaGVyZS4KPj4+Pj4gKyAgICAgICovCj4+Pj4+ICsgICAg
IHNtcF93bWIoKTsKPj4+Pj4gKwo+Pj4+IEFnYWluLCBjb25jZXB0dWFsIHRob3NlIGJhcnJpZXJz
IHNob3VsZCBiZSBwYXJ0IG9mIHRoZSBzcHNjX3F1ZXVlCj4+Pj4gY29udGFpbmVyIGFuZCBub3Qg
ZXh0ZXJuYWxseS4KPj4+IFRoYXQgd291bGQgYmUgZXh0cmVtZWx5IHVudXN1YWwgYXBpLiBMZXQn
cyBhc3N1bWUgdGhhdCB5b3VyIHF1ZXVlIGlzCj4+PiB2ZXJ5IGR1bWIsIGFuZCBwcm90ZWN0ZWQg
YnkgYSBzaW1wbGUgbG9jay4gVGhhdCdzIGFib3V0IHRoZSBtYXhpbXVtCj4+PiBhbnkgdXNlciBj
b3VsZCBleHBlY3QuCj4+Pgo+Pj4gQnV0IHRoZW4geW91IHN0aWxsIG5lZWQgYmFycmllcnMgaGVy
ZSwgYmVjYXVzZSBsaW51eCBsb2NrcyAoc3BpbmxvY2ssCj4+PiBtdXRleCkgYXJlIGRlZmluZWQg
dG8gYmUgb25lLXdheSBiYXJyaWVyczogU3R1ZmYgdGhhdCdzIGluc2lkZSBpcwo+Pj4gZ3VhcmFu
dGVlZCB0byBiZSBkb25lIGluc2luZGUsIGJ1dCBzdHVmZiBvdXRzaWRlIG9mIHRoZSBsb2NrZWQg
cmVnaW9uCj4+PiBjYW4gbGVhayBpbi4gVGhleSdyZSBsb2FkLWFjcXVpcmUvc3RvcmUtcmVsZWFz
ZSBiYXJyaWVycy4gU28gbm90IGdvb2QKPj4+IGVub3VnaC4KPj4+Cj4+PiBZb3UgcmVhbGx5IG5l
ZWQgdG8gaGF2ZSBiYXJyaWVycyBoZXJlLCBhbmQgdGhleSByZWFsbHkgYWxsIG5lZWQgdG8gYmUK
Pj4+IGRvY3VtZW50ZWQgcHJvcGVybHkuIEFuZCB5ZXMgdGhhdCdzIGEgc2hpdC10b24gb2Ygd29y
ayBpbiBkcm0vc2NoZWQsCj4+PiBiZWNhdXNlIGl0J3MgZnVsbCBvZiB5b2xvIGxvY2tsZXNzIHN0
dWZmLgo+Pj4KPj4+IFRoZSBvdGhlciBjYXNlIHlvdSBjb3VsZCBtYWtlIGlzIHRoYXQgdGhpcyB3
b3JrcyBsaWtlIGEgd2FrZXVwIHF1ZXVlLAo+Pj4gb3Igc2ltaWxhci4gVGhlIHJ1bGVzIHRoZXJl
IGFyZToKPj4+IC0gd2FrZV91cCAoaS5lLiBwdXNoaW5nIHNvbWV0aGluZyBpbnRvIHRoZSBxdWV1
ZSkgaXMgYSBzdG9yZS1yZWxlYXNlIGJhcnJpZXIKPj4+IC0gdGhlIHdha2VkIHVwIChpLmUuIHBv
cHBpbmcgYW4gZW50cnkpIGlzIGEgbG9hZCBhY3F1aXJlIGJhcnJpZXIKPj4+IFdoaWNoIGlzIG9i
dml1b3NseSBuZWVkZWQgYmVjYXVzZSBvdGhlcndpc2UgeW91IGRvbid0IGhhdmUgY29oZXJlbmN5
Cj4+PiBmb3IgdGhlIGRhdGEgcXVldWVkIHVwLiBBbmQgYWdhaW4gbm90IHRoZSBiYXJyaWVycyB5
b3UncmUgbG9ja2luZyBmb3IKPj4+IGhlcmUuCj4+IEV4YWN0bHkgdGhhdCB3YXMgdGhlIGlkZWEs
IHllcy4KPj4KPj4+IEVpdGhlciB3YXksIHdlJ2Qgc3RpbGwgbmVlZCB0aGUgY29tbWVudHMsIGJl
Y2F1c2UgaXQncyBzdGlsbCBsb2NrbGVzcwo+Pj4gdHJpY2tlcnksIGFuZCBldmVyeSBzaW5nbGUg
b25lIG9mIHRoYXQgbmVlZHMgdG8gaGF2ZSBhIGNvbW1lbnQgb24gYm90aAo+Pj4gc2lkZXMgdG8g
ZXhwbGFpbiB3aGF0J3MgZ29pbmcgb24uCj4+Pgo+Pj4gRXNzZW50aWFsbHkgcmVwbGFjZSBzcHNj
X3F1ZXVlIHdpdGggYW4gbGxpc3QgdW5kZXJuZWF0aCwgYW5kIHRoYXQncwo+Pj4gdGhlIGFtb3Vu
dCBvZiBiYXJyaWVycyBhIGRhdGEgc3RydWN0dXJlIHNob3VsZCBwcm92aWRlLiBBbnl0aGluZyBl
bHNlCj4+PiBpcyBhc2tpbmcgeW91ciBkYXRhc3RydWN0dXJlIHRvIHBhcGVyIG92ZXIgYnVncyBp
biB5b3VyIHVzZXJzLgo+Pj4KPj4+IFRoaXMgaXMgc2ltaWxhciB0byBob3cgYXRvbWljX3QgaXMg
YnkgZGVmYXVsdCBjb21wbGV0ZWx5IHVub3JkZXJlZCwKPj4+IGFuZCB1c2VycyBuZWVkIHRvIGFk
ZCBiYXJyaWVycyBhcyBuZWVkZWQsIHdpdGggY29tbWVudHMuCj4+IE15IG1haW4gcHJvYmxlbSBp
cyBhcyBhbHdheXMgdGhhdCBrZXJuZWwgYXRvbWljcyB3b3JrIGRpZmZlcmVudCB0aGFuCj4+IHVz
ZXJzcGFjZSBhdG9taWNzLgo+Pgo+Pj4gSSB0aGluayB0aGlzIGlzIGFsbCB0byBtYWtlIHN1cmUg
cGVvcGxlIGRvbid0IGp1c3Qgd3JpdGUgbG9ja2xlc3MgYWxnb3JpdGhtcwo+Pj4gYmVjYXVzZSBp
dCdzIGEgY29vbCBpZGVhLCBidXQgYXJlIGZvcmNlZCB0byB0aGluayB0aGlzIGFsbCB0aHJvdWdo
Lgo+Pj4gV2hpY2ggc2VlbXMgdG8gbm90IGhhdmUgaGFwcGVuZWQgdmVyeSBjb25zaXN0ZW50bHkg
Zm9yIGRybS9zY2hlZCwgc28gSQo+Pj4gZ3Vlc3MgbmVlZHMgdG8gYmUgZml4ZWQuCj4+IFdlbGwg
YXQgbGVhc3QgaW5pdGlhbGx5IHRoYXQgd2FzIGFsbCBwZXJmZWN0bHkgdGhvdWdodCB0aHJvdWdo
LiBUaGUKPj4gcHJvYmxlbSBpcyBub2JvZHkgaXMgcmVhbGx5IG1haW50YWluaW5nIHRoYXQgc3R1
ZmYuCj4+Cj4+PiBJJ20gZGVmaW5pdGVseSBub3QgZ29pbmcgdG8gaGlkZSBhbGwgdGhhdCBieSBt
YWtpbmcgdGhlIHNwc2NfcXVldWUKPj4+IHN0dWZmIHByb3ZpZGUgcmFuZG9tIHVuanVzdGlmaWVk
IGJhcnJpZXJzIGp1c3QgYmVjYXVzZSB0aGF0IHdvdWxkCj4+PiBwYXBlciBvdmVyIGRybS9zY2hl
ZCBidWdzLiBXZSBuZWVkIHRvIGZpeCB0aGUgYWN0dWFsIGJ1Z3MsIGFuZAo+Pj4gcHJlZmVycmFi
bGUgYWxsIG9mIHRoZW0uIEkndmUgZm91bmQgYSBmZXcsIGJ1dCBJIHdhc24ndCBpbnZvbHZlZCBp
bgo+Pj4gZHJtL3NjaGVkIHRodXMgZmFyLCBzbyBiZXN0IEkgY2FuIGRvIGlzIGRpc2NvdmVyIHRo
ZW0gYXMgd2UgZ28uCj4+IEkgZG9uJ3QgdGhpbmsgdGhhdCB0aG9zZSBhcmUgcmFuZG9tIHVuanVz
dGlmaWVkIGJhcnJpZXJzIGF0IGFsbCBhbmQgaXQKPj4gc291bmRzIGxpa2UgeW91IGRpZG4ndCBn
cmlwIHdoYXQgSSBzYWlkIGhlcmUuCj4+Cj4+IFNlZSB0aGUgc3BzYyBxdWV1ZSBtdXN0IGhhdmUg
dGhlIGZvbGxvd2luZyBzZW1hbnRpY3M6Cj4+Cj4+IDEuIFdoZW4geW91IHBvcCBhIGpvYiBhbGwg
Y2hhbmdlcyBtYWRlIGJlZm9yZSB5b3UgcHVzaCB0aGUgam9iIG11c3QgYmUKPj4gdmlzaWJsZS4K
PiBUaGlzIGlzIHRoZSBzdGFuZGFyZCBiYXJyaWVycyB0aGF0IGFsc28gd2FrZS11cCBxdWV1ZXMg
aGF2ZSwgaXQncyBqdXN0Cj4gc3RvcmUtcmVsZWFzZStsb2FkLWFjcXVpcmUuCj4KPj4gMi4gV2hl
biB0aGUgcXVldWUgYmVjb21lcyBlbXB0eSBhbGwgdGhlIGNoYW5nZXMgbWFkZSBiZWZvcmUgeW91
IHBvcCB0aGUKPj4gbGFzdCBqb2IgbXVzdCBiZSB2aXNpYmxlLgo+IFRoaXMgaXMgdmVyeSBtdWNo
IG5vbi1zdGFuZGFyZCBmb3IgYSBxdWV1ZS4gSSBndWVzcyB5b3UgY291bGQgbWFrZQo+IHRoYXQg
cGFydCBvZiB0aGUgc3BzY19xdWV1ZSBhcGkgYmV0d2VlbiBwb3AgYW5kIGlzX2VtcHR5IChyZWFs
bHkgd2UKPiBzaG91bGRuJ3QgZXhwb3NlIHRoZSBfY291bnQoKSBmdW5jdGlvbiBmb3IgdGhpcyks
IGJ1dCB0aGF0J3MgYWxsIHZlcnkKPiBjbGV2ZXIuCgpZZWFoLCBldmVuIGhhdmluZyBjb3VudCBp
cyBzdXBlcmZsdW91cy4gWW91IGNhbiBtdWNoIGVhc2llciBkbyB0aGlzIGJ5IApjaGVja2luZyBp
ZiB0aGUgcG9pbnRlciBpcyBOVUxMIG9yIG5vdC4KCj4KPiBJIHRoaW5rIGhhdmluZyBleHBsaWNp
dCBiYXJyaWVycyBpbiB0aGUgY29kZSwgd2l0aCBjb21tZW50cywgaXMgbXVjaAo+IG1vcmUgcm9i
dXN0LiBCZWNhdXNlIGl0IGZvcmNlcyB5b3UgdG8gdGhpbmsgYWJvdXQgYWxsIHRoaXMsIGFuZAo+
IGRvY3VtZW50IGl0IHByb3Blcmx5LiBCZWNhdXNlIHRoZXJlJ3MgYWxzbyBsb2NrbGVzcyBzdHVm
ZiBsaWtlCj4gZHJtX3NjaGVkLnJlYWR5LCB3aGljaCBkb2Vzbid0IGxvb2sgYXQgYWxsIGxpa2Ug
aXQncyBvcmRlcmVkIHNvbWVob3cuCgpCdXQgdGhlbiB5b3UgaGF2ZSB0byBmaXggZHJtX3NjaGVk
X2VudGl0eV9maW5pKCkgYXMgd2VsbCB3aGljaCBhbHNvIApyZWxpZXMgb24gdGhlIHNhbWUgYmVo
YXZpb3IuCgpSZWdhcmRzLApDaHJpc3RpYW4uCgo+Cj4gRS5nLiB0aGVyZSdzIGFsc28gYW4gcm1i
KCk7IGluIGRybV9zY2hlZF9lbnRpdHlfaXNfaWRsZSgpLCB3aGljaAo+IC0gcHJvYmFibHkgc2hv
dWxkIGJlIGFuIHNtcF9ybWIoKQo+IC0gcmVhbGx5IHNob3VsZCBkb2N1bWVudCB3aGF0IGl0IGFj
dHVhbGx5IHN5bmNocm9uaXplcyBhZ2FpbnN0LCBhbmQKPiB0aGUgbGFjayBvZiBhbiBzbXBfd21i
KCkgc29tZXdoZXJlIGVsc2UgaW5kaWNhdGVzIGl0J3MgcHJvYmFibHkKPiBidXN0ZWQuIFlvdSBh
bHdheXMgbmVlZCB0d28gYmFycmllcnMuCj4KPj4gT3RoZXJ3aXNlIEkgY29tcGxldGVseSBhZ3Jl
ZSB3aXRoIHlvdSB0aGF0IHRoZSB3aG9sZSBzY2hlZHVsZXIgZG9lc24ndAo+PiB3b3JrIGF0IGFs
bCBhbmQgd2UgbmVlZCB0byBhZGQgdG9ucyBvZiBleHRlcm5hbCBiYXJyaWVycy4KPiBJbW8gdGhh
dCdzIHdoYXQgd2UgbmVlZCB0byBkby4gQW5kIHRoZSBtb3N0IGltcG9ydGFudCBwYXJ0IGZvcgo+
IG1haW50YWluYWJpbGl0eSBpcyB0byBwcm9wZXJseSBkb2N1bWVudCB0aGluZyB3aXRoIGNvbW1l
bnRzLCBhbmQgdGhlCj4gbW9zdCBpbXBvcnRhbnQgcGFydCBpbiB0aGF0IGNvbW1lbnQgaXMgcG9p
bnRpbmcgYXQgdGhlIG90aGVyIHNpZGUgb2YgYQo+IGJhcnJpZXIgKHNpbmNlIGEgYmFycmllciBv
biBvbmUgc2lkZSBvbmx5IG9yZGVycyBub3RoaW5nKS4KPgo+IEFsc28sIG9uIHg4NiBhbG1vc3Qg
bm90aGluZyBoZXJlIG1hdHRlcnMsIGJlY2F1c2UgYm90aCBybWIoKSBhbmQgd21iKCkKPiBhcmUg
bm8tb3AuIEFzaWRlIGZyb20gdGhlIGNvbXBpbGVyIGJhcnJpZXIsIHdoaWNoIHRlbmRzIHRvIG5v
dCBiZSB0aGUKPiBiaWdnZXN0IGlzc3VlLiBPbmx5IG1iKCkgZG9lcyBhbnl0aGluZywgYmVjYXVz
ZSB4ODYgaXMgb25seSBhbGxvd2VkIHRvCj4gcmVvcmRlciByZWFkcyBhaGVhZCBvZiB3cml0ZXMu
Cj4KPiBTbyBpbiBwcmFjdGljZSBpdCdzIG5vdCBxdWl0ZSBhcyBiaWcgYSBkaXNhc3RlciwgaW1v
IHRoZSBiaWcgdGhpbmcKPiBoZXJlIGlzIG1haW50YWluYWJpbGl0eSBvZiBhbGwgdGhlc2UgdHJp
Y2tzIGp1c3Qgbm90IGJlaW5nIGRvY3VtZW50ZWQuCj4gLURhbmllbAo+Cj4+IFJlZ2FyZHMsCj4+
IENocmlzdGlhbi4KPj4KPj4+IC1EYW5pZWwKPj4+Cj4+Pgo+Pj4+IFJlZ2FyZHMsCj4+Pj4gQ2hy
aXN0aWFuLgo+Pj4+Cj4+Pj4+ICAgICAgICAgc3BzY19xdWV1ZV9wb3AoJmVudGl0eS0+am9iX3F1
ZXVlKTsKPj4+Pj4gICAgICAgICByZXR1cm4gc2NoZWRfam9iOwo+Pj4+PiAgICAgfQo+Pj4+PiBA
QCAtNDU5LDEwICs0NjcsMjUgQEAgdm9pZCBkcm1fc2NoZWRfZW50aXR5X3NlbGVjdF9ycShzdHJ1
Y3QgZHJtX3NjaGVkX2VudGl0eSAqZW50aXR5KQo+Pj4+PiAgICAgICAgIHN0cnVjdCBkcm1fZ3B1
X3NjaGVkdWxlciAqc2NoZWQ7Cj4+Pj4+ICAgICAgICAgc3RydWN0IGRybV9zY2hlZF9ycSAqcnE7
Cj4+Pj4+Cj4+Pj4+IC0gICAgIGlmIChzcHNjX3F1ZXVlX2NvdW50KCZlbnRpdHktPmpvYl9xdWV1
ZSkgfHwgIWVudGl0eS0+c2NoZWRfbGlzdCkKPj4+Pj4gKyAgICAgLyogc2luZ2xlIHBvc3NpYmxl
IGVuZ2luZSBhbmQgYWxyZWFkeSBzZWxlY3RlZCAqLwo+Pj4+PiArICAgICBpZiAoIWVudGl0eS0+
c2NoZWRfbGlzdCkKPj4+Pj4gKyAgICAgICAgICAgICByZXR1cm47Cj4+Pj4+ICsKPj4+Pj4gKyAg
ICAgLyogcXVldWUgbm9uLWVtcHR5LCBzdGF5IG9uIHRoZSBzYW1lIGVuZ2luZSAqLwo+Pj4+PiAr
ICAgICBpZiAoc3BzY19xdWV1ZV9jb3VudCgmZW50aXR5LT5qb2JfcXVldWUpKQo+Pj4+PiAgICAg
ICAgICAgICAgICAgcmV0dXJuOwo+Pj4+Pgo+Pj4+PiAtICAgICBmZW5jZSA9IFJFQURfT05DRShl
bnRpdHktPmxhc3Rfc2NoZWR1bGVkKTsKPj4+Pj4gKyAgICAgLyoKPj4+Pj4gKyAgICAgICogT25s
eSB3aGVuIHRoZSBxdWV1ZSBpcyBlbXB0eSBhcmUgd2UgZ3VhcmFudGVlZCB0aGF0IHRoZSBzY2hl
ZHVsZXIKPj4+Pj4gKyAgICAgICogdGhyZWFkIGNhbm5vdCBjaGFuZ2UgLT5sYXN0X3NjaGVkdWxl
ZC4gVG8gZW5mb3JjZSBvcmRlcmluZyB3ZSBuZWVkCj4+Pj4+ICsgICAgICAqIGEgcmVhZCBiYXJy
aWVyIGhlcmUuIFNlZSBkcm1fc2NoZWRfZW50aXR5X3BvcF9qb2IoKSBmb3IgdGhlIG90aGVyCj4+
Pj4+ICsgICAgICAqIHNpZGUuCj4+Pj4+ICsgICAgICAqLwo+Pj4+PiArICAgICBzbXBfcm1iKCk7
Cj4+Pj4+ICsKPj4+Pj4gKyAgICAgZmVuY2UgPSBlbnRpdHktPmxhc3Rfc2NoZWR1bGVkOwo+Pj4+
PiArCj4+Pj4+ICsgICAgIC8qIHN0YXkgb24gdGhlIHNhbWUgZW5naW5lIGlmIHRoZSBwcmV2aW91
cyBqb2IgaGFzbid0IGZpbmlzaGVkICovCj4+Pj4+ICAgICAgICAgaWYgKGZlbmNlICYmICFkbWFf
ZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQo+Pj4+PiAgICAgICAgICAgICAgICAgcmV0dXJuOwo+
Pj4+Pgo+Pj4gLS0KPj4+IERhbmllbCBWZXR0ZXIKPj4+IFNvZnR3YXJlIEVuZ2luZWVyLCBJbnRl
bCBDb3Jwb3JhdGlvbgo+Pj4gaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRs
b29rLmNvbS8/dXJsPWh0dHAlM0ElMkYlMkZibG9nLmZmd2xsLmNoJTJGJmFtcDtkYXRhPTA0JTdD
MDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3Q2EyOWE4ZjBiN2RlYTQ2ZDliZTc2MDhk
OTQ1ZGUwNTcwJTdDM2RkODk2MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYz
NzYxNzY0MjE1MDU0MjAwMSU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3
TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MxMDAw
JmFtcDtzZGF0YT1SdiUyRlk4TEtWS3owOUZ1cUMybmVFTTNQczBOTUpxMVNlWjRZMDh3a1VLQkkl
M0QmYW1wO3Jlc2VydmVkPTAKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
