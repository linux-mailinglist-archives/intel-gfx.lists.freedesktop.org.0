Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B20EA3943E3
	for <lists+intel-gfx@lfdr.de>; Fri, 28 May 2021 16:10:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCD616F5C7;
	Fri, 28 May 2021 14:10:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2068.outbound.protection.outlook.com [40.107.243.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0E886F5C5;
 Fri, 28 May 2021 14:10:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B2/glN4E6/185F7YZFD+P2XC4a8Vkg0IkNeBqj+VzbdKga6pAaOUo5YlkUE3LyqEH+xYAzrMov55nSRXOI5KNxkjEripndST6XNVMW1eZpb1ww4Klt8PN+DNb88/zXd5UjHXhhsC+/uP8/jHB1swxgQ/HWERr2E2MetGeDx1JA+yos9VeaCvnlyW9hhXoeuitN+X+WpSgXj2t1hxlKihh3WmP5HXVcGUQka4cEtJCy3HreRDfHRAh91hGsms24UPqBTKHR9a3E9Jk6OI9MrZkk08RBe+CMPj8Jeir1aw6tYIQ6TVVNFcg5gJZisMTSs3DgVOWybvNh5YXFOw6WJKYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LWHDrv8+e16qENmDN6IJaUIfLm96Nl2swzcYOtHXSnw=;
 b=dVMdrsMZVeJSQ5vE61O9U6b6pLSNMY3xEZmhfhC8GLQVA1IEbYUYuOW7HszTCWTuvM8mbr3AhA8MzZQfHIg7j5VBX7vpJlNYd9HBss1wfFFwf4Dlk5b91CkBhy3XQFfJYdl2PGn9SHHr2GZZkTYIxsq+nuZDv7/ILzoQg23PbTY4HQ/mFUEDZLUgAeRefPPm2n8ROLs8EnA3LNaUK3SfYtDoPmXoGKk6UsabiVfiTRct7cFmGQbdx1hazXPjMYxlzh4THg4yxT25uTLNb2CTrJSqd0tvhGcMP0RNvHiKgmztCOoDK1QBVRXTXMIoyxkLysd8pcxc69CYrF9h8iR1gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LWHDrv8+e16qENmDN6IJaUIfLm96Nl2swzcYOtHXSnw=;
 b=axaIpsniG5/q+BCRaX0MBwWyT+y4Mdpt6tPCpQmXLxAxhIPiFc96kfmS7s5N6mfKjYaIuJvCbu+UsdD9kCxgNhAkuHriCsQuhsi6koP9CJpXz3+L+JPEK9tpvMpDGK0pbKZkgJ7EztfwP/w/p4DV28bMmrf1Ke0N51FvbA6n4aY=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB2548.namprd12.prod.outlook.com (2603:10b6:207:41::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.21; Fri, 28 May
 2021 14:10:40 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4173.024; Fri, 28 May 2021
 14:10:40 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210527141923.1962350-1-thomas.hellstrom@linux.intel.com>
 <883eab20-4326-d14a-2eb0-5e95f174a0d9@amd.com>
 <8b3382726763050334a6cb214f7ba560eebf8f28.camel@linux.intel.com>
 <e594a1d45b22e92e052d1070beadc5928e5c0ba1.camel@linux.intel.com>
 <17037c04-603c-44c8-84a2-bce49c0e4f0c@amd.com>
 <97b0903d941c05a8877579749c6a2ea6ec107d0b.camel@linux.intel.com>
 <1dffe27a-bfc6-075e-f198-0c47cd282638@amd.com>
 <169de7a9af59135d1b63278b3b69a892ecfd4549.camel@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <37dacfad-b557-b210-02f0-7afa202bac51@amd.com>
Date: Fri, 28 May 2021 16:10:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <169de7a9af59135d1b63278b3b69a892ecfd4549.camel@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:a878:922a:f147:ebc]
X-ClientProxiedBy: AM8P190CA0030.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:219::35) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:a878:922a:f147:ebc]
 (2a02:908:1252:fb60:a878:922a:f147:ebc) by
 AM8P190CA0030.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:219::35) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4173.20 via Frontend Transport; Fri, 28 May 2021 14:10:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2dd85f67-34a0-4363-1aa4-08d921e25f77
X-MS-TrafficTypeDiagnostic: BL0PR12MB2548:
X-Microsoft-Antispam-PRVS: <BL0PR12MB2548792367A02A10E4599E9383229@BL0PR12MB2548.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EYxIUIrYZJ/HLOc4HFmp8bHMyN0KvHGjgdK3Ep/StKy2jEUqNEU8g6vBFX0L+5z3NjYM8gonJTThZz1OORSyCN0K4/I48Ys5CL0LGYSGvkfhfPTv7WhVNazzF2DpKyXPnKOFHG7ux6rWoPaWrSxPpXHCWAVLHb6fJnJLN4yYC+bDOMfri8gXIWUgKfM0MkNpWpq2fGIDqGZjECEGLMGEuBsFnei63N9wzhtZCbE3tUZYIaxeXef/Tkps74FKL89Xow6rvML+frum1y9uiRFKpES74VGeI4aUTLoSfaijTtxEiNHG2UqgHOSJGUPaxGi8i9oqPUsHRR8di1bCuN9eN0usuiwv/axuVdqApLuNbHRqKu2Do8egRrKaO0W8ravlBT9pfgmdy0bKTSB5Y6n6ylLzxoYqkZhtN3iVZOr9boQZKCDaU2rKcy5bBWw9jxqyFC6+WoLEt6WERUAnk+P4qAR7dHCW8irL9QY+CLev722jPRnnBXg11BuDuDMCIlMqcCHbPMlks83qs3b/cZogrr84HasCYoIWXMatFnaK43Df5YJZSofQjv2mDY6wS8x5K9zH929RTeRFR1+f6Q/P99enF6NFVIJ9GsAkARprFhzFL9MQCg50bKZpQOFddu0+i77RYLs4hnaXy7sg0daxxqAbr0/lY3aUz678qh088Zkm6JNq1dWQ6R0wA+/m18sf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39850400004)(366004)(136003)(396003)(376002)(2906002)(66946007)(478600001)(83380400001)(66574015)(86362001)(2616005)(66556008)(66476007)(316002)(6486002)(5660300002)(8676002)(16526019)(186003)(8936002)(6666004)(31686004)(31696002)(38100700002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?UEVYbmdPaUVzMG1rTEU0VG12dU9OVmljeHBhK3NvRzlta3JyMXNzbzJhc1Bx?=
 =?utf-8?B?QVJyWUpzb1pCME4ralhab2NuZUJnbWk5OSt0eGZDQktieE55TUw0dUxkbkFi?=
 =?utf-8?B?eTFwS3BnZ2JEZm9VeXRzUkdLWTJPS1JFN1NYaTZncEx5dXhYU25IV1NyWTdY?=
 =?utf-8?B?cVA4T0xIVEJJM0FGSWQrZ0xJZzFyOVJ3WW40K0FVOVVCT0s5SDNpV2VWblB1?=
 =?utf-8?B?NFpXb2laU3ZBM3ZwbXVDSnpybmNvVk9sZGlpTDFQaE53aGVrSFlXQ0hQK1dY?=
 =?utf-8?B?amFjWkcxME5YYWVxSkFOQ1U3Yzkya0ZxWEVXQzFtSlptWnhZeDBqQ29aU1VD?=
 =?utf-8?B?c2pMMUVqbC9uZ3QwMzRhT0N5ZE5CNEI5eGJyam1CVW9hR2VTRC9PMmZKaWcx?=
 =?utf-8?B?KzN4ejJVL3RMblhSamlLYk1HK3M4eVdSMHVKcEhnQWszSklzRjFMLzlUY1Rk?=
 =?utf-8?B?aDB4YU9zT3hmTDJPSEhWRVpXSERtczhzazFMV1V3UWsySncvSEw4bU9NZnhU?=
 =?utf-8?B?MUJLL20vL29pMVZUcGQ1Y1BrRkQzdkZTQnUxNHUyMVBNZ2RlWDBtZ2dMYW9T?=
 =?utf-8?B?SXpQYWk1TFhtSkxkQmFsdDhxdVU0eXJubG5scGpORWdQNnBFQ3pyazl2THRx?=
 =?utf-8?B?SDdNdTRqdzBPZElSUENQZ3VzY2p0azdCc2hIZUlGaGIvYXovY1ExUGg1SmY3?=
 =?utf-8?B?TFZzc25MUTlaSzkyUUNyRUlnTHhrS3NKU3p6L01lWTgxZm9sSGpGdjcvbHJ4?=
 =?utf-8?B?SDlCaUYvL2lyN2hPTE9wM1pZQ0ZxL21HNVBjV1loeVVyRDIyTlU1emQ5OTcy?=
 =?utf-8?B?bTJ3Y3Z4aUVPTnIrL1FBcHNxQ2pZbFlJdVFvQWhJcjljNzcwN1dWRG5uQ3pP?=
 =?utf-8?B?eTZyZ2wrbmx0OW9VNVV3QUZVUnpyN2QzeFQwZ1hqbjJSSjVxU3NTenFIUkhN?=
 =?utf-8?B?aVdFSW1DZW1CYmJ4ZG5RS1BSeWU3UTkwSHY2Q1ZlMXNXdDZCcThDSWxjTVI2?=
 =?utf-8?B?SExKd3hvYlpxcGZlWWxvemYvTzRoWmxxSm8ySlpXaldUQTVwYVd3OURHN3J4?=
 =?utf-8?B?RlNYaEV6S1BJUGMwTllCcVZRcDRSRmN3d0FMTExqOXE3MlFQL0RZTTN1SkNI?=
 =?utf-8?B?SEt3RVhXMlNyTTI3ODVPTmlRQTdtMlZad2lYNnM1bHRibnpab20xcisxNmMw?=
 =?utf-8?B?ck05elBEQVpPbFNodk9mZkc4dUNUbWpSWGFxWVFxQTg4azZuUDBheWRIZkFk?=
 =?utf-8?B?dmc3ck5kUmlqNlUvbmNVNXlMcEVCbDcyckZCSGZRSnE3VERnVnhwM3hjVDhl?=
 =?utf-8?B?amxrTjVoeHZLUmhpQ0VyKzlSaE0zVkQrR094bG8yNWZOSkw2ejlLR3JQdmg2?=
 =?utf-8?B?dW5vTDNha0dSSnhvZkdpT3pVeTJ0WWxsK0hwQVlKTWdaT1diZ3JDbzFhZjVm?=
 =?utf-8?B?bEpwNy9jdi9zR0NpL1hLYTQ3cWVsVGpGQkN4b3NIdVBkblpxNDVDd2tLS0Zk?=
 =?utf-8?B?dkVxMXR4U0FnakkzcjY3ZGt4bU5iK2JrSWVBSEtCU3dpUUZ1R0toWnM4RTBO?=
 =?utf-8?B?TWZla2ZMVlNaOHYxWGdGQlR2b1l4TzZ5YTQvZjRWUFNEcmJEQi8yUnlIcVFx?=
 =?utf-8?B?ZzdjN09QRk5LdlkzanRXKzJVcUtxZm85dVo2aS9nWWQzcDZRSGNLU3VBYmhX?=
 =?utf-8?B?dE8wT0I0QmV2TlZVKzNyMTlIYW9EL1dwdXNKazBzekIvcHpVM1gxVnQzdTJ0?=
 =?utf-8?B?YzcwVFNISG9Qb29rRnNuY0UwOS9OeWExdDB6eGxtZ1Z5bkYxb3VQLzE5V3E2?=
 =?utf-8?B?MXVxWk05QUNmb3ZJRkNCZ3NhQVcrWWdrckZPZDJYV2R5c0xiRlp0ZGlMZHI4?=
 =?utf-8?Q?a6vR3BEBEPBdP?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dd85f67-34a0-4363-1aa4-08d921e25f77
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2021 14:10:39.9721 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w0WnkUOtC/oHkolFXrC8d6O/sI4bo6XluKHZR4e3ZOCKtP+1b0zarrh3ikN95aN9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2548
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

QW0gMjguMDUuMjEgdW0gMDk6MzMgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBPbiBGcmks
IDIwMjEtMDUtMjggYXQgMDk6MTYgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IEFt
IDI3LjA1LjIxIHVtIDE3OjUxIHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+PiBPbiBUaHUs
IDIwMjEtMDUtMjcgYXQgMTc6MzIgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Pj4g
QW0gMjcuMDUuMjEgdW0gMTc6MDUgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Pj4gT24g
VGh1LCAyMDIxLTA1LTI3IGF0IDE3OjAxICswMjAwLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToK
Pj4+Pj4+IE9uIFRodSwgMjAyMS0wNS0yNyBhdCAxNjo1NCArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPj4+Pj4+PiBBbSAyNy4wNS4yMSB1bSAxNjoxOSBzY2hyaWViIFRob21hcyBIZWxs
c3Ryw7ZtOgo+Pj4+Pj4+PiBUaGUgc3dhcHBpbmcgY29kZSB3YXMgZGVyZWZlcmVuY2UgYm8tPnR0
bSBwb2ludGVycwo+Pj4+Pj4+PiB3aXRob3V0Cj4+Pj4+Pj4+IGhhdmluZwo+Pj4+Pj4+PiB0aGUK
Pj4+Pj4+Pj4gZG1hLXJlc3YgbG9jayBoZWxkLiBBbHNvIGl0IG1pZ2h0IHRyeSB0byBzd2FwIG91
dAo+Pj4+Pj4+PiB1bnBvcHVsYXRlZAo+Pj4+Pj4+PiBib3MuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEZp
eCB0aGlzIGJ5IG1vdmluZyB0aGUgYm8tPnR0bSBkZXJlZmVyZW5jZSB1bnRpbCB3ZSBoYXZlCj4+
Pj4+Pj4+IHRoZQo+Pj4+Pj4+PiByZXNlcnZhdGlvbgo+Pj4+Pj4+PiBsb2NrLiBDaGVjayB0aGF0
IHRoZSB0dG1fdHQgaXMgcG9wdWxhdGVkIGFmdGVyIHRoZQo+Pj4+Pj4+PiBzd2FwX25vdGlmeQo+
Pj4+Pj4+PiBjYWxsYmFjay4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogVGhvbWFz
IEhlbGxzdHLDtm0KPj4+Pj4+Pj4gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+
Pj4+Pj4+PiAtLS0KPj4+Pj4+Pj4gIMKgwqDCoCBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5j
wqDCoMKgwqAgfCAxNgo+Pj4+Pj4+PiArKysrKysrKysrKysrKystCj4+Pj4+Pj4+ICDCoMKgwqAg
ZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fZGV2aWNlLmMgfMKgIDggKysrLS0tLS0KPj4+Pj4+Pj4g
IMKgwqDCoCAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0p
Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9i
by5jCj4+Pj4+Pj4+IGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+Pj4+Pj4+PiBpbmRl
eCA5ZjUzNTA2YTgyZmMuLjg2MjEzZDM3NjU3YiAxMDA2NDQKPj4+Pj4+Pj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+Pj4+Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRt
L3R0bV9iby5jCj4+Pj4+Pj4+IEBAIC0xMTYzLDYgKzExNjMsMTYgQEAgaW50IHR0bV9ib19zd2Fw
b3V0KHN0cnVjdAo+Pj4+Pj4+PiB0dG1fYnVmZmVyX29iamVjdAo+Pj4+Pj4+PiAqYm8sIHN0cnVj
dCB0dG1fb3BlcmF0aW9uX2N0eCAqY3R4LAo+Pj4+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
ZiAoIXR0bV9ib19ldmljdF9zd2Fwb3V0X2FsbG93YWJsZShibywgY3R4LAo+Pj4+Pj4+PiAmcGxh
Y2UsCj4+Pj4+Pj4+ICZsb2NrZWQsIE5VTEwpKQo+Pj4+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FQlVTWTsKPj4+Pj4+Pj4gICAgICAKPj4+Pj4+Pj4g
K8KgwqDCoMKgwqDCoMKgZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoYm8tPmJhc2UucmVzdik7Cj4+Pj4+
Pj4+ICsKPj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgaWYgKCFiby0+dHRtIHx8Cj4+Pj4+Pj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoCBiby0+dHRtLT5wYWdlX2ZsYWdzICYgVFRNX1BBR0VfRkxBR19T
RyB8fAo+Pj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm8tPnR0bS0+cGFnZV9mbGFncyAm
IFRUTV9QQUdFX0ZMQUdfU1dBUFBFRCkKPj4+Pj4+Pj4gewo+Pj4+Pj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgaWYgKGxvY2tlZCkKPj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWFfcmVzdl91bmxvY2soYm8tPmJhc2UucmVz
dik7Cj4+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gLUVCVVNZ
Owo+Pj4+Pj4+PiArwqDCoMKgwqDCoMKgwqB9Cj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgaWYgKCF0dG1fYm9fZ2V0X3VubGVzc196ZXJvKGJvKSkgewo+Pj4+Pj4+PiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGxvY2tlZCkKPj4+Pj4+Pj4g
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWFf
cmVzdl91bmxvY2soYm8tPmJhc2UucmVzdik7Cj4+Pj4+Pj4+IEBAIC0xMjE1LDcgKzEyMjUsOCBA
QCBpbnQgdHRtX2JvX3N3YXBvdXQoc3RydWN0Cj4+Pj4+Pj4+IHR0bV9idWZmZXJfb2JqZWN0Cj4+
Pj4+Pj4+ICpibywgc3RydWN0IHR0bV9vcGVyYXRpb25fY3R4ICpjdHgsCj4+Pj4+Pj4+ICDCoMKg
wqDCoMKgwqDCoMKgwqDCoGlmIChiby0+YmRldi0+ZnVuY3MtPnN3YXBfbm90aWZ5KQo+Pj4+Pj4+
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYm8tPmJkZXYtPmZ1bmNzLT5z
d2FwX25vdGlmeShibyk7Cj4+Pj4+Pj4+ICAgICAgCj4+Pj4+Pj4+IC3CoMKgwqDCoMKgwqDCoHJl
dCA9IHR0bV90dF9zd2Fwb3V0KGJvLT5iZGV2LCBiby0+dHRtLAo+Pj4+Pj4+PiBnZnBfZmxhZ3Mp
Owo+Pj4+Pj4+PiArwqDCoMKgwqDCoMKgwqBpZiAodHRtX3R0X2lzX3BvcHVsYXRlZChiby0+dHRt
KSkKPj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldCA9IHR0bV90dF9z
d2Fwb3V0KGJvLT5iZGV2LCBiby0+dHRtLAo+Pj4+Pj4+PiBnZnBfZmxhZ3MpOwo+Pj4+Pj4+IEV4
YWN0bHkgdGhhdCBpcyB3aGF0IEkgd29uJ3QgcmVjb21tZW5kLiBXZSB3b3VsZCB0cnkgdG8KPj4+
Pj4+PiBzd2FwCj4+Pj4+Pj4gb3V0Cj4+Pj4+Pj4gdGhlCj4+Pj4+Pj4gc2FtZSBCTyBvdmVyIGFu
ZCBvdmVyIGFnYWluIHdpdGggdGhhdC4KPj4+Pj4+IEJ1dCB3ZSB3b3VsZG4ndCBzaW5jZSB0aGUg
Qk8gaXMgdGFrZW4gb2ZmIHRoZSBMUlUgYW5kIG5ldmVyCj4+Pj4+PiByZS0KPj4+Pj4+IGFkZGVk
LAo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+IEluIGZhY3QsIHdlJ2QgcHJvYmFibHkgbWlnaHQgd2FudCB0
byB0YWtlIHRoZSAhYm8tPnR0bSBib3Mgb2ZmCj4+Pj4+IHRoZQo+Pj4+PiBMUlUKPj4+Pj4gYXMg
d2VsbC4uCj4+Pj4gTm8sIHdlIGRvbid0IHdhbnQgdG8gdGFrZSBhbnkgQk9zIG9mIHRoZSBMUlUg
dW5sZXNzIHRoZXkgYXJlCj4+Pj4gcGlubmVkLgo+Pj4+Cj4+Pj4gQWRkaW5nIGEgVFQgb2JqZWN0
IG9yIHBvcHVsYXRpbmcgaXQgZG9lc24ndCBuZWNlc3NhcmlseSBwdXQgdGhlCj4+Pj4gQk8KPj4+
PiBiYWNrCj4+Pj4gdG8gdGhlIExSVS4KPj4+IE9LLCBidXQgc3dhcHBlZCBib3MgYXJlIGFsc28g
dGFrZW4gb2ZmIHRoZSBMUlUgbGlzdCBzbyB0aGVzZQo+Pj4gdW5wb3B1bGF0ZWQgYm9zIGFyZSBq
dXN0IHRha2luZyB0aGUgc2FtZSBwYXRoLiBPbmx5IGRpZmZlcmVuY2UgdG8KPj4+IHN3YXBwZWQg
aXMgdGhhdCB0aGV5IGRvbid0IGdldCByZWFkIGJhY2sgb24gcmUtcG9wdWxhdGUsIGJ1dAo+Pj4g
dHlwaWNhbGx5Cj4+PiBjbGVhcmVkLgo+Pj4KPj4+IEJ1dCB3aGF0IHdvdWxkIGJlIHRoZSBwb2lu
dCBvZiBrZWVwaW5nIHN3YXBwZWQtb3V0IGJvcyBvbiB0aGUgTFJVCj4+PiBsaXN0PywgcGFydGlj
dWxhcmx5IHdoZW4gd2UncmUgaXRlcmF0aW5nIHVuZGVyIGEgc3BpbmxvY2s/Cj4+PiBTaG91bGRu
J3Qgd2UgdHJ5IHRvIHJlLWFkZCB0byBMUlUgKGlmIG5vdCBhbHJlYWR5IG9uIGFuIExSVSkganVz
dAo+Pj4gYmVmb3JlIHBvcHVsYXRpbmc/IFRoZXJlIGFyZW4ndCByZWFsbHkgdGhhdCBtYW55IGNh
bGxzIGluIGNvcmUgVFRNLgo+PiBJIHdhbnQgdG8gYXZvaWQgcmVtb3ZpbmcgQk9zIGZyb20gdGhl
IExSVSBhcyBtdWNoIGFzIHBvc3NpYmxlIHNpbmNlCj4+IHdlCj4+IGZvcmdvdCBvbiBtdWx0aXBs
ZSBwbGFjZXMgdGhhdCB3ZSB3YW50IHRvIHJlLWFkZCB0aGVtLgo+Pgo+PiBDb25jZXB0dWFsIEkg
dGhpbmsgdGhlIHN3YXBwZWQgQk9zIHNob3VsZCBoYXZlIGEgc2VwYXJhdGUgbWVtb3J5Cj4+IGRv
bWFpbiwKPj4gdGhpcyB3YXkgd2UgY2FuIGlnbm9yZSB0aGVtIGNsZWFubHkgd2hlbiBzd2FwcGlu
ZyB0aGluZ3Mgb3V0Lgo+IFllcywgdGhhdCB3b3VsZCBvZiBjb3Vyc2Ugd29yayBhcyB3ZWxsLiBL
ZWVwaW5nIHRoZW0gb24gdGhlIHN5c3RlbSBMUlUKPiBpcyBJTU8gaGlnaGx5IHVuZGVzaXJhYmxl
Lgo+Cj4+IEdvaW5nIHRvIHBpY2sgdGhpcyBwYXRjaCB1cCwgbW9kaWZ5aW5nIGl0IGEgYml0IG1v
cmUgYW5kIHRoZW4gcHVzaGluZwo+PiBpdAo+PiB0byBkcm0tbWlzYy1maXhlcyBmb3IgdXBzdHJl
YW1pbmcuCj4gT0ssIEkgZHJvcHBlZCB0aGUgVFRNIGZpeCBmb3IgdGhlIHB1cmdlLWluLXN3YXAt
bm90aWZ5IGZyb20gdGhlIGk5MTUKPiBzZXJpZXMsIGhvcGluZyB0aGF0IHRoZSByZXdvcmtlZCB2
YXJpYW50IG9mIHRoaXMgcGF0Y2ggbGFuZHMgZmlyc3QuCgpZb3Ugd2lsbCBzdGlsbCBuZWVkIHRv
IGFkZCB0aGUgc2Vjb25kIHR0bV90dF9wb3B1bGF0ZWQoKSBjaGVjayBzaW5jZSBJIApkcm9wcGVk
IHRoYXQgZm9yIHRoZSBiYWNrIHdoaWNoIEkgd2FudCB0byBwdXNoIHRvIC1maXhlcy4KClJlZ2Fy
ZHMsCkNocmlzdGlhbi4KCj4KPiBUaGFua3MsCj4gVGhvbWFzCj4KPj4gVGhhbmtzLAo+PiBDaHJp
c3RpYW4uCj4+Cj4+PiAvVGhvbWFzCj4+Pgo+Pj4KPj4+Cj4+Pgo+Pj4KPj4+PiBDaHJpc3RpYW4u
Cj4+Pj4KPj4+Pj4gL1Rob21hcwo+Pj4+Pgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
