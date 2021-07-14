Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 057303C84E6
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 14:58:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5370A89C2C;
	Wed, 14 Jul 2021 12:58:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2049.outbound.protection.outlook.com [40.107.236.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA9A089971;
 Wed, 14 Jul 2021 12:58:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X8V0+DttWIkg28DB7WNWL1Oj5eCrciDg7fYG+zcn1mgTbDDR0jJgOGckALJZl3QiwbkemeYruo+DKFhyY+FPDWsQQGMBiY8ktZ0vlzlPupDYkrkIDFh5ne4wGbkC8GQc0+LHTlasdYLHRW7A6gIcriMkKr2EJqQoI5UdHYIlbNH1vjuOedglw9YWllNi3y2tYc89LONy2RxNEyQ2MhcqioL09Xo7T5GRikGN3rDTeOXdIfyzCxj+EzOGXfWIaxV+NmbWPn/FVppfRRLAo0AmFHQVCkVgclYzCnOE6HzTLkwy0fi/DhIHfU7DrD3aV8Ka334r0iliZenZ7oPtxvmemQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SYYQtKm5dkRRogF9ic3g/jzJ/wKczdydkIKSDBA8Kn0=;
 b=gqT/J4hR6M4+cO7KEhbpOTeLfCmPBQ1/0sSkE89Q94qTkpeE0gGWEXGvKkS0mANg1oea3u/Rn7DlzxRyH0Gb3Xi+ZX2DVnYtnz5bw/ijx6MifwmWitbQvrSmUYT/dMDpUl74dR0ALmmEOZAkRBA0wrDX2pKJ4HDYi5eVD8eFq3pxs3OB2Uy+Yr+DlyOh+OeuK5zRv+be52dOJeV7cJyIkurRFjUb5iPEZfmdNJXQLEXsqOSfvfr6UL7p0N2hh8RtIGAchQJywtBm3dgMM+ZhsoZjIOSSu2uRuj0yOMXmqbR3VcWnxMoDbyxJMV2lt93KYmK//TaQ5hgTi3T08cqBZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SYYQtKm5dkRRogF9ic3g/jzJ/wKczdydkIKSDBA8Kn0=;
 b=Q3zI/QulZ7MBhqGE7Ts8XUhgkN4kKBjU1M/z/lrUqA+TAaJ2YwsAvXzo3+Z083fnIRDP83DXb3K9U1mXPNBRdHl7rG+6RqzHV1aZvagFFznCfBb0vY7xvqYDVar1g3dl81quSuUSiNPkUy+mlLNXfCKbBu+xh+khQqtNiiD9rUM=
Authentication-Results: linux.ie; dkim=none (message not signed)
 header.d=none;linux.ie; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB4755.namprd12.prod.outlook.com (2603:10b6:208:82::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.22; Wed, 14 Jul
 2021 12:58:33 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4308.027; Wed, 14 Jul 2021
 12:58:33 +0000
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210713205153.1896059-1-daniel.vetter@ffwll.ch>
 <20210713205153.1896059-4-daniel.vetter@ffwll.ch>
 <4626a7d7-95ca-104c-753a-07a9d83b0b28@amd.com>
 <YO7dKP2l9n0rLjDV@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <31608068-97ba-70e7-b496-650bac88e0db@amd.com>
Date: Wed, 14 Jul 2021 14:58:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <YO7dKP2l9n0rLjDV@phenom.ffwll.local>
Content-Language: en-US
X-ClientProxiedBy: AM0PR04CA0052.eurprd04.prod.outlook.com
 (2603:10a6:208:1::29) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:fe2b:fec6:eeb5:c7dc]
 (2a02:908:1252:fb60:fe2b:fec6:eeb5:c7dc) by
 AM0PR04CA0052.eurprd04.prod.outlook.com (2603:10a6:208:1::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.21 via Frontend Transport; Wed, 14 Jul 2021 12:58:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f5f70d9b-267c-43c5-720d-08d946c715ee
X-MS-TrafficTypeDiagnostic: BL0PR12MB4755:
X-Microsoft-Antispam-PRVS: <BL0PR12MB4755B93891AB55BE5BCA337E83139@BL0PR12MB4755.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2QIvF9vSM+fU88zvGSmYy8+a5ve9DiOX5K9p5V8nc/6s/D1oQUIChyIpdqwYvRL7z8lGqEicOTXZYvOMKKNwSE2u01uexIUnfDn/s64jPT1mNx1V9ji+115mR7lmVpwd7mofXxCyJwiruTrwBX0L9DcPKDqD6iJdr+TIKCLxwUbR/h0RW4RBH/rzPf9V30wj4NzJRTygSmTAIffn/jd43gQFqHSluY32ng9H5XX09UM7YslYjUZ3wBA1qd8g4bFwB8txkl4Hq58wo24Kk1J9Z9eY6k8U9PElFNDtTV0bjCJHZ0pcCB9R5DHy5d4Ce/xYO3hwc/m2AMsP9ajTctBM0PGiLTM2sHzBqrkV4UwS3MKYOAIWrDUXVXlzoYiVoodKHt4C1l72lq9gptyLyoNRSFJTZYaElSRyWo1jNt9RRBFLkWTTR7ieeV4Ilc7bsyCitfNPqsirYBRd6ALbx+w8wFQn7Nim65xaBeuqR5i8tik93lLl3Qx9RtBVRm0W2mDsAeUXu43v+YG05S8OmfHsDfslTB7m6UIWZyWuZR2OC7elMwPUclyfvN2B9gxqNM6GjRnmLLUxiDAZilMkVvckVgGKVYDAY7jvLc3gz8lQU80dK25SFQAQHLrDg8rk5BzdvlvnGhVrATZAeNl8LAdsVr/6VemqLHTXL89AheOx9M9+yTYg+Fu1XEuYTV4W8Mvx96dtn8H44JFUSQxyLc+bp4Ul8Q2KtEbY/P8Tbl4oj1k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(376002)(39850400004)(396003)(346002)(136003)(4326008)(83380400001)(31686004)(186003)(6486002)(54906003)(2616005)(31696002)(6666004)(2906002)(66476007)(8936002)(8676002)(66946007)(7416002)(66574015)(478600001)(6916009)(316002)(66556008)(36756003)(38100700002)(5660300002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3JNQVZiS042MVdRYkZCb29lUjZQZUxVemV3dE85ZWhJR2FrNEtrWUM4Y0hr?=
 =?utf-8?B?dC9LaGNoSDdPTEhtQmNaLzZubmN0dzVmRlB4MStpeHhLZVhXZmVCRWV1SGR4?=
 =?utf-8?B?cHF2Y3pvQkhIdHdOWi9Td2laTER0NGFSNjlUZTg5ODNVZ09PMkUzUDFubTRP?=
 =?utf-8?B?Rzg1RE54M2pSdFFnNTdXU3ArYitDU25KOUw2a2ZvUFIyK0ZUd1ZYcVo3c1B6?=
 =?utf-8?B?VGFBQzcxM1BKbHNMT3VXcDF6S2l5ZDBYR3RWRzlIOXBnaC9oNHdmcFBKS0ly?=
 =?utf-8?B?bC9tWmFaSkRYbXhka09IMzlSckprb1laTlIzUjY1SFQzNjl3NzFURWFzbjd5?=
 =?utf-8?B?RVJ2MVNHV3BWa1VWQmNpREpKa21tVjNtZThFam4xN0ZZT0dxbDEvSHdWWHBn?=
 =?utf-8?B?Q1U0K0tvS1BYRmI5WHFNaVlWcVF4LzFrOEgyS2FBSkx2dzUxUFdEVmVSQ29D?=
 =?utf-8?B?ZjBiK2h2RHRPMzlYOUNMb1dqV1NhMEVZcFNMR3g3V2E5TnZnck9JSXZvUUFQ?=
 =?utf-8?B?d01jeGwzOUZPcm9Mc0MyY0tET0FhSmtESm1IQmVBeEZDd3NnZTY3U0Rub0k2?=
 =?utf-8?B?NVMwUXByM1lNb29mVTBQZmV6ODhnakVZQkdENC9WMWV4RTZFMDJuL3ZEamRW?=
 =?utf-8?B?NlJqeCtIbm1aVTRCMG8zbGJmYU5lSDlQcE1LM1JIQ2RpN0VEQ1JLTXlyNy9q?=
 =?utf-8?B?endIQ1dUVHFSVWVjUUx2RUhBYTJJN3hUUWRwK1NVVVhzR1Y4d2pxNW1kWWZN?=
 =?utf-8?B?RjBIOTU2a1ZQbmJrc1NtSHU1TXRnNDE1U1VlZWQ1OGNzMzd6cHdrSEhUN2oy?=
 =?utf-8?B?QmJmTThNQ1kvWENEUFh5TFU0VmZtSWd1OHp6QVU0b3gxOW94NjdYQVFlRk5R?=
 =?utf-8?B?UTg0RXlPNjBzSW52WVRQdC9qMzN1Q3JiMEJQNmlzTlpKMGErZHgxYms4ajZj?=
 =?utf-8?B?eXBPZTJzSU50eHlrdVJoeGNoMG5jdm4yTnVneXZlV004WjFMVjFlTFNsRjIw?=
 =?utf-8?B?UU5nNU1JSTcwaVljdmxuVVVSMlB4NlNNVyt5ZWVYNzlOQTZ6NE05cCsrWVZu?=
 =?utf-8?B?bnkwZk9CT0FTNUR3U3dsUmhTdGo0bE5PYzdJTkw2VGxQUVBJZ2U5V0F2TldP?=
 =?utf-8?B?YVBwbzZlY1pPTXlxWnl4cGltSk9hWlBUcS9NdGtqT2R6OUlEbStsWnpBbVZs?=
 =?utf-8?B?ZWpSR0pVZGVPVklNN1kyZGRETllDazZyU20yOFM1QU9ydVFsd1BieDhMUGlQ?=
 =?utf-8?B?MEFwOUlRSnNKR1pNV3V2YmhVb2txSlE4SFFNSzhrR0UvS2wydzdpNElwVThs?=
 =?utf-8?B?SXgzWW0wdDE1SFdMMncyWCswQUM1ZHk1cUdzUTZPbk84VzREckxleEhIWU5i?=
 =?utf-8?B?NFcyTkNsekY0Q0Z4RU1UWHZVQ1lkaHBhTUVDOHM5enBra0tia1R6N21SNUtF?=
 =?utf-8?B?RFVPc2haVmNiVm9DeklmazVVRkxXSzdZYkFMc1BkYjU5TUFacStPcmtKSWpZ?=
 =?utf-8?B?VkU4dnZXVG5ZT0xzRExSNjlLWkFtd1JmWk4xMThGUXExQ1BMRjNKYkJ6MGZF?=
 =?utf-8?B?TFpUWGlzaHE5QkNWYWlOUWllVE9CS3lzeHg1eTBTbGQrTWtPMERnY0ZQNXdX?=
 =?utf-8?B?ci8xVlZBc2c0UCs1d1ZlTWZPZmxLZ0xPYWRjS0k2dlFDLysvc1ZmR1RMUEJ3?=
 =?utf-8?B?WS9jOXpSUkEzcnpOVmo4NjJLWWwzRTRGY1k5QXEralJWUG1vVjArdmRTT0or?=
 =?utf-8?B?aHRxU0h1ampuNmUzbTRyNUQ0L3YxaWM3SEpkYVMvU3J4cW5WNEE5emtqTUt4?=
 =?utf-8?B?VDVXUFJmeDk1RVpnaGVUQVdrbk0wMnhWNTRjVVJoVU9HVjJrUDZaUUFWVUNk?=
 =?utf-8?Q?3Gg7s24J7ETVc?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5f70d9b-267c-43c5-720d-08d946c715ee
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2021 12:58:33.1719 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9jSdJaIV6NpnrTmFbR+PGYXgSH3aZ8P7A+ecb6noXiutwOmi2Bcz/nhvGMFRadgO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4755
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
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMTQuMDcuMjEgdW0gMTQ6NDggc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFdlZCwgSnVs
IDE0LCAyMDIxIGF0IDAxOjU0OjUwUE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IEFtIDEzLjA3LjIxIHVtIDIyOjUxIHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPj4+IGludGVsLWdm
eC1jaSByZWFsaXplZCB0aGF0IHNvbWV0aGluZyBpcyBub3QgcXVpdGUgY29oZXJlbnQgYW55bW9y
ZSBvbgo+Pj4gc29tZSBwbGF0Zm9ybXMgZm9yIG91ciBpOTE1K3ZnZW0gdGVzdHMsIHdoZW4gSSB0
cmllZCB0byBzd2l0Y2ggdmdlbQo+Pj4gb3ZlciB0byBzaG1lbSBoZWxwZXJzLgo+Pj4KPj4+IEFm
dGVyIGxvdHMgb2YgaGVhZC1zY3JhdGNoaW5nIEkgcmVhbGl6ZWQgdGhhdCBJJ3ZlIHJlbW92ZWQg
Y2FsbHMgdG8KPj4+IGRybV9jbGZsdXNoLiBBbmQgd2UgbmVlZCB0aG9zZS4gVG8gbWFrZSB0aGlz
IGEgYml0IGNsZWFuZXIgdXNlIHRoZQo+Pj4gc2FtZSBwYWdlIGFsbG9jYXRpb24gdG9vbGluZyBh
cyB0dG0sIHdoaWNoIGRvZXMgaW50ZXJuYWxseSBjbGZsdXNoCj4+PiAoYW5kIG1vcmUsIGFzIG5l
ZWVkZWQgb24gYW55IHBsYXRmb3JtIGluc3RlYWQgb2YganVzdCB0aGUgaW50ZWwgeDg2Cj4+PiBj
cHVzIGk5MTUgY2FuIGJlIGNvbWJpbmVkIHdpdGgpLgo+Pj4KPj4+IFVuZm9ydHVuYXRlbHkgdGhp
cyBkb2Vzbid0IGV4aXN0IG9uIGFybSwgb3IgYXMgYSBnZW5lcmljIGZlYXR1cmUuIEZvcgo+Pj4g
dGhhdCBJIHRoaW5rIG9ubHkgdGhlIGRtYS1hcGkgY2FuIGdldCBhdCB3YyBtZW1vcnkgcmVsaWFi
bHksIHNvIG1heWJlCj4+PiB3ZSdkIG5lZWQgc29tZSBraW5kIG9mIEdGUF9XQyBmbGFnIHRvIGRv
IHRoaXMgcHJvcGVybHkuCj4+IFRoZSBwcm9ibGVtIGlzIHRoYXQgdGhpcyBzdHVmZiBpcyBleHRy
ZW1lbHkgYXJjaGl0ZWN0dXJlIHNwZWNpZmljLiBTbyBHRlBfV0MKPj4gYW5kIEdGUF9VTkNBQ0hF
RCBhcmUgcmVhbGx5IHdoYXQgd2Ugc2hvdWxkIGFpbSBmb3IgaW4gdGhlIGxvbmcgdGVybS4KPj4K
Pj4gQW5kIGFzIGZhciBhcyBJIGtub3cgd2UgaGF2ZSBhdCBsZWFzdCB0aGUgZm9sbG93aW5nIHBv
c3NpYmlsaXRpZXMgaG93IGl0IGlzCj4+IGltcGxlbWVudGVkOgo+Pgo+PiAqIEEgZml4ZWQgYW1v
dW50IG9mIHJlZ2lzdGVycyB3aGljaCB0ZWxscyB0aGUgQ1BVIHRoZSBjYWNoaW5nIGJlaGF2aW9y
IGZvciBhCj4+IG1lbW9yeSByZWdpb24sIGUuZy4gTVRSUi4KPj4gKiBTb21lIGJpdHMgb2YgdGhl
IG1lbW9yeSBwb2ludGVycyB1c2VkLCBlLmcuIHlvdSBzZWUgdGhlIHNhbWUgbWVtb3J5IGF0Cj4+
IGRpZmZlcmVudCBsb2NhdGlvbnMgd2l0aCBkaWZmZXJlbnQgY2FjaGluZyBhdHRyaWJ1dGVzLgo+
PiAqIFNvbWUgYml0cyBpbiB0aGUgQ1BVcyBwYWdlIHRhYmxlLgo+PiAqIFNvbWUgYml0cyBpbiBh
IHNlcGFyYXRlIHBhZ2UgdGFibGUuCj4+Cj4+IE9uIHRvcCBvZiB0aGF0IHRoZXJlIGlzIHRoZSBQ
Q0llIHNwZWNpZmljYXRpb24gd2hpY2ggZGVmaW5lcyBub24tY2FjaGUKPj4gc25vb3BpbmcgYWNj
ZXNzIGFzIGFuIGV4dGVuc2lvbi4KPiBZZWFoIGRtYS1idWYgaXMgZXh0cmVtZWx5IGlsbC1kZWZp
bmVkIGV2ZW4gb24geDg2IGlmIHlvdSBjb21iaW5lIHRoZXNlCj4gYWxsLiBXZSBqdXN0IHBsYXkg
YSBnYW1lIG9mIHdoYWNrLWEtbW9sZSB3aXRoIHRoZSBjYWNoZWxpbmUgZGlydCB1bnRpbAo+IGl0
J3MgZ29uZS4KPgo+IFRoYXQncyB0aGUgb3RoZXIgcGllY2UgaGVyZSwgaG93IGRvIHlvdSBldmVu
IG1ha2Ugc3VyZSB0aGF0IHRoZSBwYWdlIGlzCj4gcHJvcGVybHkgZmx1c2hlZCBhbmQgcmVhZHkg
Zm9yIHdjIGFjY2VzczoKPiAtIGVhc3kgY2FzZSBpcyB4ODYgd2l0aCBjbGZsdXNoIGF2YWlsYWJs
ZSBwcmV0dHkgbXVjaCBldmVyeXdoZXJlIChzaW5jZQo+ICAgIDEwKyB5ZWFycyBhdCBsZWFzdCkK
PiAtIG5leHQgYXJlIGNwdXMgd2hpY2ggaGF2ZSBzb21lIGNhY2hlIGZsdXNoIGluc3RydWN0aW9u
cywgYnV0IGl0J3MgaGlnaGx5Cj4gICAgY3B1IG1vZGVsIHNwZWNpZmljCj4gLSBuZXh0IHVwIGlz
IHRoZSBzYW1lLCBidXQgeW91IGFic29sdXRlbHkgaGF2ZSB0byBtYWtlIHN1cmUgdGhlcmUncyBu
bwo+ICAgIG90aGVyIG1hcHBpbmcgYXJvdW5kIGFueW1vcmUgb3IgdGhlIGNvaGVyZW5jeSBmYWJy
aWMganVzdCBkaWVzCj4gLSBhbmQgSSdtIHByZXR0eSBzdXJlIHRoZXJlJ3Mgd29yc2Ugc3R1ZmYg
d2hlcmUgeW91IGRlZmFjdG8gY2FuIG9ubHkKPiAgICBhbGxvY2F0ZSB3YyBtZW1vcnkgdGhhdCdz
IHNldCBhc2lkZSBhdCBib290LXVwIGFuZCB0aGF0J3MgYWxsIHlvdSBldmVyCj4gICAgZ2V0LgoK
V2VsbCBsb25nIHN0b3J5IHNob3J0IHlvdSBkb24ndCBtYWtlIHN1cmUgdGhhdCB0aGUgcGFnZSBp
cyBmbHVzaGVkIGF0IGFsbC4KCldoYXQgeW91IGRvIGlzIHRvIGFsbG9jYXRlIHRoZSBwYWdlIGFz
IFdDIGluIHRoZSBmaXJzdCBwbGFjZSwgaWYgeW91IApmYWlsIHRvIGRvIHRoaXMgeW91IGNhbid0
IHVzZSBpdC4KClRoZSB3aG9sZSBpZGVhIFRUTSB0cnkgdG8gc2VsbCB1bnRpbCBhIHdoaWxlIGFn
byB0aGF0IHlvdSBjYW4gYWN0dWFsbHkgCmNoYW5nZSB0aGF0IG9uIHRoZSBmbHkgb25seSB3b3Jr
cyBvbiB4ODYgYW5kIGV2ZW4gdGhlcmUgb25seSB2ZXJ5IHZlcnkgCmxpbWl0ZWQuCgpDaGVlcnMs
CkNocmlzdGlhbi4KCj4KPiBDaGVlcnMsIERhbmllbAo+Cj4+IE1peGluZyB0aGF0IHdpdGggdGhl
IENQVSBjYWNoaW5nIGJlaGF2aW9yIGdldHMgeW91IHNvbWUgcmVhbGx5IG5pY2Ugd2F5cyB0bwo+
PiBicmVhayBhIGRyaXZlci4gSW4gZ2VuZXJhbCB4ODYgc2VlbXMgdG8gYmUgcmF0aGVyIGdyYWNl
ZnVsLCBidXQgYXJtIGFuZAo+PiBQb3dlclBDIGFyZSBlYXNpbHkgcGlzc2VkIGlmIHlvdSBtZXNz
IHRoYXQgdXAuCj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGludGVsLmNvbT4KPj4+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+Cj4+PiBDYzogIlRob21hcyBIZWxsc3Ryw7ZtIiA8dGhvbWFzLmhlbGxzdHJvbUBs
aW51eC5pbnRlbC5jb20+Cj4+PiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4KPj4+IENjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5l
bC5vcmc+Cj4+PiBDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+Cj4+
PiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+Pj4gQ2M6IERhbmllbCBWZXR0
ZXIgPGRhbmllbEBmZndsbC5jaD4KPj4gQWNrZWQtYnk6IENocmlzdGlhbiBrw7ZuaWcgPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4KPj4gUmVnYXJkcywKPj4gQ2hyaXN0aWFuLgo+Pgo+Pj4g
LS0tCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYyB8IDE0ICsr
KysrKysrKysrKysrCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQo+Pj4K
Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jCj4+PiBpbmRleCAyOTZhYjFi
N2MwN2YuLjY1N2QyNDkwYWFhNSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
Z2VtX3NobWVtX2hlbHBlci5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1l
bV9oZWxwZXIuYwo+Pj4gQEAgLTEwLDYgKzEwLDEwIEBACj4+PiAgICAjaW5jbHVkZSA8bGludXgv
c2xhYi5oPgo+Pj4gICAgI2luY2x1ZGUgPGxpbnV4L3ZtYWxsb2MuaD4KPj4+ICsjaWZkZWYgQ09O
RklHX1g4Ngo+Pj4gKyNpbmNsdWRlIDxhc20vc2V0X21lbW9yeS5oPgo+Pj4gKyNlbmRpZgo+Pj4g
Kwo+Pj4gICAgI2luY2x1ZGUgPGRybS9kcm0uaD4KPj4+ICAgICNpbmNsdWRlIDxkcm0vZHJtX2Rl
dmljZS5oPgo+Pj4gICAgI2luY2x1ZGUgPGRybS9kcm1fZHJ2Lmg+Cj4+PiBAQCAtMTYyLDYgKzE2
NiwxMSBAQCBzdGF0aWMgaW50IGRybV9nZW1fc2htZW1fZ2V0X3BhZ2VzX2xvY2tlZChzdHJ1Y3Qg
ZHJtX2dlbV9zaG1lbV9vYmplY3QgKnNobWVtKQo+Pj4gICAgCQlyZXR1cm4gUFRSX0VSUihwYWdl
cyk7Cj4+PiAgICAJfQo+Pj4gKyNpZmRlZiBDT05GSUdfWDg2Cj4+PiArCWlmIChzaG1lbS0+bWFw
X3djKQo+Pj4gKwkJc2V0X3BhZ2VzX2FycmF5X3djKHBhZ2VzLCBvYmotPnNpemUgPj4gUEFHRV9T
SElGVCk7Cj4+PiArI2VuZGlmCj4+PiArCj4+PiAgICAJc2htZW0tPnBhZ2VzID0gcGFnZXM7Cj4+
PiAgICAJcmV0dXJuIDA7Cj4+PiBAQCAtMjAzLDYgKzIxMiwxMSBAQCBzdGF0aWMgdm9pZCBkcm1f
Z2VtX3NobWVtX3B1dF9wYWdlc19sb2NrZWQoc3RydWN0IGRybV9nZW1fc2htZW1fb2JqZWN0ICpz
aG1lbSkKPj4+ICAgIAlpZiAoLS1zaG1lbS0+cGFnZXNfdXNlX2NvdW50ID4gMCkKPj4+ICAgIAkJ
cmV0dXJuOwo+Pj4gKyNpZmRlZiBDT05GSUdfWDg2Cj4+PiArCWlmIChzaG1lbS0+bWFwX3djKQo+
Pj4gKwkJc2V0X3BhZ2VzX2FycmF5X3diKHNobWVtLT5wYWdlcywgb2JqLT5zaXplID4+IFBBR0Vf
U0hJRlQpOwo+Pj4gKyNlbmRpZgo+Pj4gKwo+Pj4gICAgCWRybV9nZW1fcHV0X3BhZ2VzKG9iaiwg
c2htZW0tPnBhZ2VzLAo+Pj4gICAgCQkJICBzaG1lbS0+cGFnZXNfbWFya19kaXJ0eV9vbl9wdXQs
Cj4+PiAgICAJCQkgIHNobWVtLT5wYWdlc19tYXJrX2FjY2Vzc2VkX29uX3B1dCk7CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
