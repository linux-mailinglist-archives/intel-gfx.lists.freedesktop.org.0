Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF5A392D69
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 14:01:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 162136EE9B;
	Thu, 27 May 2021 12:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM02-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam07on2082.outbound.protection.outlook.com [40.107.95.82])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B49D66E81A;
 Thu, 27 May 2021 12:01:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=apBy0Aq6ZmtUufCpQCg9xkB/WHmuZApg/imQhFXSlpLT8GslpvhuUCBFN3DZKSLVm1YmenDQAwPkyxiHGJAWocVPH+/9rgsVgOP4wF49Yj8dPc/5i3vhSqkmGXRMsyUVdnZq5g5KGDIi0I+2VytwySVpwQKDoWADyIptB/vBf3kKLNb5Yl37xe/KeaOjK4hqRpYJGDhSVgpmuLrJDBu+r+FRRioYLxnVJVRt5+gZnSw3IevH+AsGg5B8qdryNGlqB7KkC5lYgF+KhQNMp0y0CUel4Nfg4w/BVJkEYHSzEg0YJc6qMeMHHdcnt46PR7nA4nzt12t+7s4ozFCw7M3pyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M3EBiMe18KjfBrMmJKvOt4aDIhBIP3Unr/HX5rcVQT0=;
 b=oHxFk9BZpi/rWgtXRXLGRMDX1LX8BVmjPNJiYAmMBnMNtjMspKwqufEmY74+iweplqD1FbvPHLY1AilpBAPh2Poo5LLvLe6bnrJQmji45dFNe8daRWOmjxYFWVjXuD0io+owjZk9rdRNQd/D267mE5BZE/KT9MUnqBntNJGIKmGNUSgXsmxSHrJ9mevjKjiRkGgBAI+z4t1sz7D71F0quep2C9Wk/ADkU6HR7EYZDcVuOnaNsDzV+6Anr74r7lbsKpms4ubB/F/p5MdF/osNQw58nZl+iZL9MuMjYNdDdbwOTI/so9ajTHIAkiQaAeLteVJc7vrRHeNAsxpjDY4Vdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M3EBiMe18KjfBrMmJKvOt4aDIhBIP3Unr/HX5rcVQT0=;
 b=5elWv1X98GpvCp3zZ/yhwpsCjjcvNugkgNYKpuepU/Df8VJsuM0mJwZqWokrV0Alfaos8AcM9hOSEWP0C9h7/sNbN2ZRsDdez+WAnK8fCPDR03IZSWI8Jimf0yHFpCINOu9jbnz4qYRsk89FfUrXL5m3Ye0ERqYO3o6lickuMOQ=
Authentication-Results: ffwll.ch; dkim=none (message not signed)
 header.d=none;ffwll.ch; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4061.namprd12.prod.outlook.com (2603:10b6:208:19a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.22; Thu, 27 May
 2021 12:01:09 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4173.024; Thu, 27 May 2021
 12:01:09 +0000
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210525211753.1086069-1-jason@jlekstrand.net>
 <20210525211753.1086069-6-jason@jlekstrand.net>
 <acc1737c-261d-9da5-7ea7-759063136c56@amd.com>
 <CAPj87rN_7vmmWcL1vqhvM=etaTjwts_L0vYbsgvYF0_qZw83gw@mail.gmail.com>
 <770eb698-1dde-9e46-da83-44911d96abec@amd.com>
 <CAPj87rPdMthO2Wv7QxMGnO__BiZVauMa9HaRk+35Sgvm69QSjw@mail.gmail.com>
 <a9de44fc-aa7c-60d7-d7ed-2229d41fb306@amd.com>
 <YK91kB0ikqxurHN1@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <38153a21-cd0f-f8fd-10dd-340d46b36a82@amd.com>
Date: Thu, 27 May 2021 14:01:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <YK91kB0ikqxurHN1@phenom.ffwll.local>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:e531:3aa1:4782:878a]
X-ClientProxiedBy: AM0PR10CA0091.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:15::44) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:e531:3aa1:4782:878a]
 (2a02:908:1252:fb60:e531:3aa1:4782:878a) by
 AM0PR10CA0091.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:15::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4173.21 via Frontend Transport; Thu, 27 May 2021 12:01:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c554128e-fbdc-44d3-f830-08d921071d8a
X-MS-TrafficTypeDiagnostic: MN2PR12MB4061:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4061DE7F2ED1550BA93CEDBA83239@MN2PR12MB4061.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fCelih9sZsFfcfPm/ZAeQfqIYaljyr71qXBf8Zl+TIZNnxXZGCSGIhzBK6ZFrZdXH0SnFqzga/dQkxDVzms33OnRon3G5jGOsHc4yj9TOuyPpDbubuHKdMCHz7wfpOCd67FAUltQTRh2Qs1loxu5xRAWlRJoaXd13U+sMANDXjJ18Oek8dFWP+kLLjhtifw47BJ98TmENC3os1u01SlQWIdb1jbILcdqccwsPRRSuZVjawFEBpCSSKYtfB+3RS8S0iSaxnJNZ5H+z6hzO9KDwWvKT2/stxQzB+9yMIIY2X2pxevnww9VnIkBqo3PJFkyip76wbIOjALKmOokLZ3VVRW4d/GtPPkIbXaQOjA0qg0Z9F1lqPAdRmbugLJfWn7fSEQUITvUuqFBalWd5ysG3ZVtRl/Ox5+sTUZN5YxKH7y3NvjSrc1hQmjeXooyVGBg6Hb0uolciSACqZqZpA/MkG4nH72qrKeYx7SZYJXVb9OcjlgHgxGkhBrwftbNPlBSaxq837DZsoB0eO59jm9qQb16FA1VKfE8aZY7gxLoto7uA/9SFOZ/SyUBjnPX+zne/ULFNCJuD36Qd5+QbpZ9vK8Tr5r90lNF73cqYUPq1Fa/rnF753XubyvzZH2+K11Q8KPk8CWErr1FIxU0wDE2ykH/EEHWbZD0czZ6E+W8NVLPvkTHym3Dcf9w5GbjKYbA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(376002)(366004)(39850400004)(136003)(66574015)(478600001)(186003)(16526019)(36756003)(316002)(4326008)(6916009)(31696002)(8676002)(54906003)(38100700002)(2906002)(8936002)(6666004)(66556008)(66476007)(66946007)(31686004)(6486002)(52116002)(86362001)(83380400001)(5660300002)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?Nm5xK2toWTQrdThBTHNnOXV2dFQ3blVXQldFckJHVElGY0hnZGlZNUxuOWhn?=
 =?utf-8?B?NmljMExzWmlnalhESlRqUVg4cGZwMU42ZWczcTdjVEd2b2lSSjZGa1FNSjc0?=
 =?utf-8?B?SllIZTNGeHVQd0RUNmZ4UUxRcFNlS29pTkx4b1hCRVZlVHJFaDRYOGxhOW9s?=
 =?utf-8?B?aGVjV01pelBURU9RR3ZkTysvd1RhbFZVbFRiOGZ6SGtsR1NZckdCNDM4TUVm?=
 =?utf-8?B?VDJ6WTkwYStVR2p4cmZtcG1Ed3pQUDlsamdFSnBGZGh2ZHVweW5PT1NkMWZj?=
 =?utf-8?B?WUlYUGpiR2R4Sm9yYk5kRDU2MHZubEcvU1R6Y3IyOTFPUVkyWnp1bTN1STZE?=
 =?utf-8?B?bUdQRTdKeU5hc1BzSU9hbGNWYlFaNmgrWEhCQ3ZpWDZEZXljTGdxckFIci8z?=
 =?utf-8?B?clcxeHZybVZOSVVrYVl5Q0hwUi92c2twa0liR080UlgyZGQ1eG0vWDZTWW02?=
 =?utf-8?B?bWhPS0ZOWUF3MWEyRzVDWUoyN1VxdERHUS82YXpsYitIQ2dtbDVMWFpOVkZ5?=
 =?utf-8?B?djZ6ZXI3RHFGaUVYQzB4WTluZ3ZDWTlnZFZQUkh2d051RmNhRHFDOUpmQjdo?=
 =?utf-8?B?ZUhCVFFxTDd3QnR2bXIyeFFsVkFnRFczSkNCL083Nko1MEN4U2haK25XUm82?=
 =?utf-8?B?S1F4dHlXVk0xTlBUVUpwaHY1VGVIUHYybnUvYmZFL2NHcTIybk1ydGV6Uitq?=
 =?utf-8?B?M2FLaTN0ekhoYUpIYVg4bnVPazNQRXhWdjJVUW1mUm1mVllFK2RneWRWWTEr?=
 =?utf-8?B?R1RmeXU2cmVXUUtpOExldXgwZkd0clIxM254WkRrSFFwNStjVjEwNmZSaUlJ?=
 =?utf-8?B?ZCtxbHZxRjNnOTdlTUdtVHhVT2N5eFFYc1Z6OVc5dkhiWk9XaHNCZ2pmWWVh?=
 =?utf-8?B?c0oybzBhbUdsMGpSOXlCSXM0dnVsNlczL2Fra2txbjRsbUpZR01Fa0czTTBJ?=
 =?utf-8?B?RTZuWmpEaUw3dmRNMG9SWjhRd01SMHhvTENIaFhtL2RSczQzVzI4dGl6QnBK?=
 =?utf-8?B?aE4vc1NTNk81dk4wRnZ6amdKSGI5NWNhem03SHFNbFBMMzNSL2EzVllHbE02?=
 =?utf-8?B?NEhnN2d1R1ZFWEtGM204NFRrcHM3bm50OHZ5KzVXSmNJYzNlZEVLeDhIOEdw?=
 =?utf-8?B?bVJtYldOcnJMLzdRamZHeTl4SUYxZ3pOQTJsSUFtYzI2Q3pkTnI3R0xyTmZw?=
 =?utf-8?B?aGNkRUJsMWJLZTZuU2NNYUZFcmdXVFRUYjRjR3JZdmlZWlFvQTlXNzJESHpY?=
 =?utf-8?B?dkZBcDZPek16RG1TTWttd0Z3TnN1cEdIQkcvaEQzcmd2ejhRUkw1TGlHZC9h?=
 =?utf-8?B?WUlnbzBKOUQyQzRmRGo5QWRVNHBJMXdjT2xpdUYzU1doaXZTaDJIdFRCRDVU?=
 =?utf-8?B?WThnRVFKR1RkdVZZRk1OWGsxeGJPS0RrdndQNjYwNjJtRGZtWmYwWksvUTdX?=
 =?utf-8?B?SHZZQkxpT0VDYkpUL3htREdWYWQ0d3B3ZnM0NWFkTHkrSk9saFNhWGRtQWVq?=
 =?utf-8?B?MDJhQVpPTis2UnVKcnI1M1FZMnBUUE5Qa3QrL21pRHdYN3VrM0N3RGZnaVZw?=
 =?utf-8?B?Ylp6UzU3TVBuRjVvMDZiT1p2MDNtRFRzbVRVS0d4TitHUE5RVG1OaUhrV3hk?=
 =?utf-8?B?bHB3NWRUdHRGSm84TjRKalJ0NURzaWdoY292ZnIvSjNEcXJqdDRoSDFvNUxD?=
 =?utf-8?B?RnNBYmFGVjRCTE1ObENBN2NUeW5OMTljcWFLUGMxZWxndkNIcWR6djk5WmNj?=
 =?utf-8?B?aXk1anFxUTNyRXRaa3ZIcEo1QWRpTWoxVlFXQ21QZy9mSW1Lam1EeGxXaUt1?=
 =?utf-8?B?dXBWd0dWK3pBQXFjTWRpSnJJUytUZzRRNHNyMkVYRVZMSXBQeGM1OVBVMWpv?=
 =?utf-8?Q?MvrBRbrKlYSLG?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c554128e-fbdc-44d3-f830-08d921071d8a
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2021 12:01:09.5149 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IpzgexLOERFU0rGHaPoy+uTyyux8vlJi5PNlZ7EniXg6uJFaSLzdKNCv+Jvy5D4W
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4061
Subject: Re: [Intel-gfx] [PATCH 5/7] dma-buf: Add an API for exporting sync
 files (v11)
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
Cc: Simon Ser <contact@emersion.fr>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjcuMDUuMjEgdW0gMTI6MzMgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFdlZCwgTWF5
IDI2LCAyMDIxIGF0IDAzOjIzOjAxUE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
Cj4+IEFtIDI2LjA1LjIxIHVtIDE1OjEyIHNjaHJpZWIgRGFuaWVsIFN0b25lOgo+Pj4gSGksCj4+
Pgo+Pj4gT24gV2VkLCAyNiBNYXkgMjAyMSBhdCAxMzo0NiwgQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPj4+PiBBbSAyNi4wNS4yMSB1bSAxMzozMSBz
Y2hyaWViIERhbmllbCBTdG9uZToKPj4+Pj4gSG93IHdvdWxkIHdlIGluc2VydCBhIHN5bmNvYmor
dmFsIGludG8gYSByZXN2IHRob3VnaD8gTGlrZSwgaWYgd2UgcGFzcwo+Pj4+PiBhbiB1bm1hdGVy
aWFsaXNlZCBzeW5jb2JqK3ZhbCBoZXJlIHRvIGluc2VydCBpbnRvIHRoZSByZXN2LCB0aGVuIGFu
Cj4+Pj4+IGltcGxpY2l0LW9ubHkgbWVkaWEgdXNlciAob3IgS01TKSBnb2VzIHRvIHN5bmMgYWdh
aW5zdCB0aGUgcmVzdiwgd2hhdAo+Pj4+PiBoYXBwZW5zPwo+Pj4+IFdlbGwgdGhpcyBpcyBmb3Ig
ZXhwb3J0aW5nLCBub3QgaW1wb3J0aW5nLiBTbyB3ZSBkb24ndCBuZWVkIHRvIHdvcnJ5Cj4+Pj4g
YWJvdXQgdGhhdC4KPj4+Pgo+Pj4+IEl0J3MganVzdCBteSB0aGlua2luZyBiZWNhdXNlIHRoZSBk
cm1fc3luY29iaiBpcyB0aGUgYmFja2luZyBvYmplY3Qgb24KPj4+PiBWa1NlbWFwaG9yZSBpbXBs
ZW1lbnRhdGlvbnMgdGhlc2UgZGF5cywgaXNuJ3QgaXQ/Cj4+PiBZZWFoLCBJIGNhbiBzZWUgdGhh
dCB0byBhbiBleHRlbnQuIEJ1dCB0aGVuIGJpbmFyeSB2cy4gdGltZWxpbmUKPj4+IHN5bmNvYmpz
IGFyZSB2ZXJ5IGRpZmZlcmVudCBpbiB1c2UgKHdoaWNoIGlzIHVuZm9ydHVuYXRlIHRiaCksIGFu
ZAo+Pj4gdGhlbiB3ZSBoYXZlIGFuIGFzeW1tZXRyeSBiZXR3ZWVuIHN5bmNvYmogZXhwb3J0ICYg
c3luY19maWxlIGltcG9ydC4KPj4+Cj4+PiBZb3UncmUgcmlnaHQgdGhhdCB3ZSBkbyB3YW50IGEg
c3luY29iaiB0aG91Z2guIFRoaXMgaXMgcHJvYmFibHkgbm90Cj4+PiBwcmFjdGljYWwgZHVlIHRv
IHNtYXNoaW5nIHVBUEkgdG8gYml0cywgYnV0IGlmIHdlIGNvdWxkIHdpbmQgdGhlIGNsb2NrCj4+
PiBiYWNrIGEgY291cGxlIG9mIHllYXJzLCBJIHN1c3BlY3QgdGhlIGludGVyZmFjZSB3ZSB3YW50
IGlzIHRoYXQgZXhwb3J0Cj4+PiBjYW4gZWl0aGVyIGV4cG9ydCBhIHN5bmNfZmlsZSBvciBhIGJp
bmFyeSBzeW5jb2JqLCBhbmQgZnVydGhlciB0aGF0Cj4+PiBiaW5hcnkgc3luY29ianMgY291bGQg
dHJhbnNwYXJlbnRseSBhY3QgYXMgdGltZWxpbmUgc2VtYXBob3JlcyBieQo+Pj4gbWFwcGluZyBh
bnkgdmFsdWUgKGVpdGhlciB3YWl0IG9yIHNpZ25hbCkgdG8gdGhlIGJpbmFyeSBzaWduYWwuIElu
Cj4+PiBoaW5kc2lnaHQsIHdlIHNob3VsZCBwcm9iYWJseSBqdXN0IG5ldmVyIGhhdmUgaGFkIGJp
bmFyeSBzeW5jb2JqLiBPaAo+Pj4gd2VsbC4KPj4gV2VsbCB0aGUgbGF0ZXIgaXMgdGhlIGNhc2Ug
SUlSQy4gRG9uJ3QgYXNrIG1lIGZvciB0aGUgZGV0YWlsIHNlbWFudGljcywgYnV0Cj4+IGluIGdl
bmVyYWwgdGhlIGRybV9zeW5jb2JqIGluIHRpbWVsaW5lIG1vZGUgaXMgY29tcGF0aWJsZSB0byB0
aGUgYmluYXJ5Cj4+IG1vZGUuCj4+Cj4+IFRoZSBzeW5jX2ZpbGUgaXMgYWxzbyBpbXBvcnQvZXhw
b3J0YWJsZSB0byBhIGNlcnRhaW4gZHJtX3N5bmNvYmogdGltZWxpbmUKPj4gcG9pbnQgKG9yIGFz
IGJpbmFyeSBzaWduYWwpLiBTbyBubyBiaWcgZGVhbCwgd2UgYXJlIGFsbCBjb21wYXRpYmxlIGhl
cmUgOikKPj4KPj4gSSBqdXN0IHRob3VnaHQgdGhhdCBpdCBtaWdodCBiZSBtb3JlIGFwcHJvcHJp
YXRlIHRvIHJldHVybiBhIGRybV9zeW5jb2JqCj4+IGRpcmVjdGx5IGluc3RlYWQgb2YgYSBzeW5j
X2ZpbGUuCj4gSSB0aGluayBhbm90aGVyIGJpZyBwb3RlbnRpYWwgdXNlciBmb3IgdGhpcyBpcyBh
IHZrLWJhc2VkIGNvbXBvc2l0b3Igd2hpY2gKPiBuZWVkcyB0byBpbnRlcmFjdC9zdXBwb3J0IGlt
cGxpY2l0IHN5bmNlZCBjbGllbnRzLiBBbmQgY29tcG9zaXRvciB3b3JsZCBJCj4gdGhpbmsgaXMg
cmlnaHQgbm93IHN0aWxsIG1vcmUgc3luY19maWxlIChiZWNhdXNlIHRoYXQncyB3aGVyZSB3ZSBz
dGFydGVkCj4gd2l0aCBhdG9taWMga21zIGlvY3RsKS4KPgo+IFRoZSBvdGhlciBzbGlnaHQgbnVk
Z2UgaXMgdGhhdCBkcm1fc3luY29iaiBpcyBhIGRybSB0aGluZywgc28gd2UnZCBmaXJzdAo+IG5l
ZWQgdG8gbGlmdCBpdCBvdXQgaW50byBkcml2ZXJzL2RtYS1idWYgKGFuZCBoYW5kLXdhdmUgdGhl
IERSTSBwcmVmaXgKPiBhd2F5KSBmb3IgaXQgdG8gYmUgYSBub24tYXdrd2FyZCBmaXQgZm9yIGRt
YS1idWYuCj4KPiBQbHVzIHlvdSBjYW4gY29udmVydCB0aGVtIHRvIHRoZSBvdGhlciBmb3JtIGFu
eXdheSwgc28gcmVhbGx5IGRvZXNuJ3QKPiBtYXR0ZXIgbXVjaC4gQnV0IGZvciB0aGUgYWJvdmUg
cmVhc29ucyBJJ20gbGVhbmluZyBzbGlnaHRseSB0b3dhcmRzCj4gc3luY19maWxlLiBFeGNlcHQg
aWYgY29tcG9zaXRvciBmb2xrcyB0ZWxsIG1lIEknbSBhIGZvb2wgYW5kIHdoeSA6LSkKClllYWgg
YXMgZGlzY3Vzc2VkIHdpdGggYSBKYXNvbiBhbHJlYWR5IHRoYXQgZHJtX3N5bmNvYmogaXMgRFJN
IHNwZWNpZmljIAppcyB0aGUga2lsbGVyIGFyZ3VtZW50IGhlcmUuIFNvIHN5bmNfZmlsZSBpcyBm
aW5lIHdpdGggbWUuCgpDaHJpc3RpYW4uCgo+IC1EYW5pZWwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
