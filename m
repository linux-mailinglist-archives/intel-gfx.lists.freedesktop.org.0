Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7143918BD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 15:23:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4F346E505;
	Wed, 26 May 2021 13:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam07on2084.outbound.protection.outlook.com [40.107.212.84])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D9286E18E;
 Wed, 26 May 2021 13:23:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gmiuFpYFwLOuLEA1c2DEPnIklE6G1nek7AF1xzcAKFNQKNTJJKJqNNdJZAq07eG9cHLhfzc4OMiqNv1iOZV9u20BazBO2UJZ/0XtX300Y6/JZgySVAcdX8Gp5X8mpaVPaOA+LwY8D2BmkeRiUgN//sc9VLB5+FMDH0ihc5Zo2uIciA6XwckvGskey1zCoXLA0gMV303RmDTdNx2AgJ182RU9ViHhXo2MDG6kwEz2vOlwDG/u1DDiXwrmUyhMJ/hgxgiz5GvHWoCfu2bkK17cAuiTNm3C2IMtaLEJalVpd6tLK/A5n8sF0ckuCrXr6qfwbRzNnCHQiey3hbIE4dk8Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AItQq4iivEZBYhHKUO5I97zYjOCFQBDPhU9xOtHkJ2Y=;
 b=GwT4JRntBgek5WP8jlRLe0yQSG+J4tKQkX6jMzVaaHf9JBC5Ty2Ae7tCGdgOs5QkZl+Mg2l6fCjvbMc9hE2LLlmpXo5ok8N24Sb9WgjcRGXDRIsZfxPEsy3Ko6Ig32G37Zu+FhdWMsQ47jm74l8m5MNrjKLfMbU/rlyv+KmETY9IQbNwOok1jfU8UT13qYJcHjIqC57A26BIorUxFczGMGQ1194bDBSGmTcAl1bhaxIGHTSIHINcN8gkX01E/3tHKJwMi6+BDamqjU9aM6uQxNFeh+Ypn4lSkLmMV8ybJ+uF5Afe55dEfGav/fJN+3qkixtmSuui+WUvEntI33IHBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AItQq4iivEZBYhHKUO5I97zYjOCFQBDPhU9xOtHkJ2Y=;
 b=B6MSNgyafNjFiCGOOgMfoHVXbjWxLmJt5tNNPftJZTJAHL5teBwDqwmw0wrEYU8CsQkbOSstFCIiZB5VIx3Dir3zKi8pj/mVrza6BzPW78b3b45jTaQFvJwGKr4GxQ0Nz3OFd6QDX0usaY8y3QZmxeWPUiFL/KH6z/icIh8hX8Q=
Authentication-Results: ffwll.ch; dkim=none (message not signed)
 header.d=none;ffwll.ch; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4552.namprd12.prod.outlook.com (2603:10b6:208:24f::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.27; Wed, 26 May
 2021 13:23:08 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4150.027; Wed, 26 May 2021
 13:23:08 +0000
To: Daniel Stone <daniel@fooishbar.org>
References: <20210525211753.1086069-1-jason@jlekstrand.net>
 <20210525211753.1086069-6-jason@jlekstrand.net>
 <acc1737c-261d-9da5-7ea7-759063136c56@amd.com>
 <CAPj87rN_7vmmWcL1vqhvM=etaTjwts_L0vYbsgvYF0_qZw83gw@mail.gmail.com>
 <770eb698-1dde-9e46-da83-44911d96abec@amd.com>
 <CAPj87rPdMthO2Wv7QxMGnO__BiZVauMa9HaRk+35Sgvm69QSjw@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <a9de44fc-aa7c-60d7-d7ed-2229d41fb306@amd.com>
Date: Wed, 26 May 2021 15:23:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <CAPj87rPdMthO2Wv7QxMGnO__BiZVauMa9HaRk+35Sgvm69QSjw@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:1950:35e:cae9:5bed]
X-ClientProxiedBy: AM0PR03CA0004.eurprd03.prod.outlook.com
 (2603:10a6:208:14::17) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:1950:35e:cae9:5bed]
 (2a02:908:1252:fb60:1950:35e:cae9:5bed) by
 AM0PR03CA0004.eurprd03.prod.outlook.com (2603:10a6:208:14::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4173.20 via Frontend Transport; Wed, 26 May 2021 13:23:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0aa0a0a2-a0b0-46d4-f285-08d92049666f
X-MS-TrafficTypeDiagnostic: MN2PR12MB4552:
X-Microsoft-Antispam-PRVS: <MN2PR12MB455236749A1945A470933EA283249@MN2PR12MB4552.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uKlppsuHZ2m2FLv51EUzn9bFMiPGVt3rXeiItcwwV+Rs1QFrgiIMLJY4QlaW96u/t38uoTd9AdkMmPBCmSzzmTosHvlh7chT2wwKkjSynmgpkuycD/WHnGFgTwxva4ch0woDvJyGi+iZLQWb3ilTXOwHcnZdebwIQZmplhkdWeJzrE6weUrd4eFScD9BaPrKTDpQ8MEfnVUTKabpjozfDHwjGHK5J1c7o8zgoa+X0tkbz5bpbh6e214WZVEGdEbz8sBJRhKB6kX8eXZrw+zJwim7DChCKbkbRmT7lkb1PuvT4o5hMxUU3B2+blPdQtadJsRiOrJDEX3fzh5zBnp+nwPrTjNePGSp5HLf2Fx1sND+OJoH7FWe7nhOs9POQ/ThxTiGDzTYPlC6kuHSZFHFIYd6CGPOj4nToeS7HcV3clChqfhiUCIaqUZ46384XU/TGqww1GSVuQgCP/BDUj5Ekh6maYFwLw5iONLl/0lGkOh8m/5KruMyuaiye+8Mv67tf1fc8WQid6Qftw25hTEM+HlvEQ60bGAV+1WW8doU5z8CP6JqQlxXVqbIAgumCMziYdHT8ToI03Lma3S8QLElO9XeHtigd/Ll7BZDHvEZklv3bXFf4k0/QY6lhoqBxSg4gNrfKziMjVli0NHMUfO2PSHTpfkd3rYSD9J8Z9F3aUhVyStSCjxNJXgizMPPoLL8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(396003)(366004)(39860400002)(346002)(136003)(2906002)(8676002)(6916009)(8936002)(478600001)(83380400001)(6666004)(31686004)(52116002)(66574015)(38100700002)(5660300002)(54906003)(6486002)(66556008)(4326008)(66946007)(316002)(36756003)(16526019)(186003)(31696002)(86362001)(2616005)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?OWwybXdWN1ozbEJNN1dHL00xNDlsRExGNGxTL1ZTdG96YWpRTS9ZSGl3SEZZ?=
 =?utf-8?B?ZXdEcW15azhlL0NsRFhhc3c1Vmdia2VPTk9nQlZvV295UzA0RU0zNitmcTVv?=
 =?utf-8?B?ZVRZaS9vRnlKNXI5WnNPaGJyQlRvNGVEdzQ0czM0OEtRZGM4QW1FK3N6c2JT?=
 =?utf-8?B?eHM5QVM5Y2E0dCsyM1hucEpZYk9laC9jc2pDYVE0aS9ac2YxbDFxelBrQ1Fk?=
 =?utf-8?B?Y2FqZzBpVDUxR3VCVUxUcHRGb01tU1RRM2EzY0NSSXgxZFMwK2ZTM0VZWFQr?=
 =?utf-8?B?N09qbm5qd3lRb2duOU5GMWFENUVEWlQyTkYwdkRLZ3Zpa1FaMEFiUDBoeXBI?=
 =?utf-8?B?YU0zSHAzYTNEUE4wb2V2ckg2QndmcHlHaTNweHg1Wm41UzY3TXdSTjhwZmFk?=
 =?utf-8?B?cjBLT1g2S3ZxeFFLTUY2TmM3elg2ZHhCdTFZZFVWZkptQ0NvSVAxR2V0WTZ4?=
 =?utf-8?B?d1pyM051VktHSjF1YUpJOElpZ1FCVGpLRVJIb09yamFFVVhDdHUrTnJkYmQw?=
 =?utf-8?B?Mzl3Tk5iVCtQdG5kMnF3SEFSc3VOVHE2eG5Rb2VBdFVaOWJRZk9wb0xmNjhX?=
 =?utf-8?B?N3BDTWxhak5iUkNCK2QzVlZuYVduSnJLZ0JDc2dRK0Z1L1FmcGxROGRyVGJV?=
 =?utf-8?B?UUxxb21ULzhlS1dZcHplT2VEUERMVWxMcGFqUHpWKys5aTNJQUpvdkxFUUk5?=
 =?utf-8?B?alpOZ3ZROEJ1MUJiWmpDT1dnd2JYV2c1V1AyeFdQcUtub2UxdmVXdllqU09V?=
 =?utf-8?B?a2owRWJTTE9LcmZTbWJMK2E3U2M3UE1HYU8xb3FjblFqZWRXUnNRQ21ndDAy?=
 =?utf-8?B?V3NDdm9SbmNEVTQrSVV6YXZCQ1MxOHdMLzY0Ky9jUTdIOW93a3lGN2JSUFNu?=
 =?utf-8?B?ZkNXdk5WOCtjMFgxNUZtYVliQ0FoY2hkR3ZsL2hFQTJsRUdKeE5LVkZaZWZY?=
 =?utf-8?B?SVlMazhRNmdlRDhCZ0VNY0hOb0ZVU2RhKzVUaklVSjlQdjBmTGhiT25FbGtw?=
 =?utf-8?B?WUdXLytnODNKOStyYlpmWEc5RFZVRStBWUpzR04wcnpnME5YRmtZSkdpQy83?=
 =?utf-8?B?cVpHT1dFSHVNU0JCOHR1T1dkQjRqUmhQemFZNzFrLzBjVFpBUlNINlJyN0Jh?=
 =?utf-8?B?bkRFRXhpU1FJY3J1dXlsaDBoMmlGUDN6ZE1BNTU3ZHNKTHB5WFRna2tuUzBm?=
 =?utf-8?B?VUtTZXQwNS8wVk44V2RpZkZndStkK0g4RW5UUHhpRHJjcmxveFpTdHp2cnAy?=
 =?utf-8?B?WU9WTEhNSUwrd01YWGtUSEpjMUZua1pPMXRpdDFUT2djY2kxUU5oZzJLN0dM?=
 =?utf-8?B?QUFvLzNwUzBlSzdTV1NlOHdzQlNJSFJ1aTdYUGFOU0hlWkJncDFoRUJnZDk2?=
 =?utf-8?B?ckphMDZueXlmbGNWeEsrNDQ0NC9oUGltbm01Q0pUaHc4L3JCMTMrMVdGRDZT?=
 =?utf-8?B?S2JiZmNFem92NDhFWFd6dU1jZC9yZlRPQU5ZSjNWYkR3amRtckorbk5tRk5x?=
 =?utf-8?B?eWJhQnI2Z21aandwYUtEbUJBNXVDYzJHRkIzZnlNWENNOVNTT01rMzRCbUdJ?=
 =?utf-8?B?SXBEQjdtU1IxSjk1bHkxRjExb01lSzJVVGJ0OXREWjVWOHR0OFhLYWM2Vk1F?=
 =?utf-8?B?ZndGbVp5a0VLb0QyNFQyY01ja25IRVM3K0duYUNFSXB5eGtPTXc4eXhuTmZE?=
 =?utf-8?B?WFNHdXNaK0J0NVd1dzdZMmF0cTFQcUthYzJLLzhUeDZPclJISklRbVZtcE0v?=
 =?utf-8?B?d1RwM1NxL3AyMWh3d0hhd0o2QlBQMSt2MXg0ZHQ2enR6MnpQZ1N0Q1VtdVQr?=
 =?utf-8?B?aEFMOVJ2M00wWk0zWlJuMnhyN1VPTHRPMGVJUEErQlI4ZmM5K0UycDdweTZR?=
 =?utf-8?Q?ZE5NNhcBNVdy9?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aa0a0a2-a0b0-46d4-f285-08d92049666f
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2021 13:23:08.3164 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gYuzF1P2hcLxCCx0iFhibDm6tEM7yZ6dwUJ6DWlDKIMJfDMu88m0laGv56RsCNY0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4552
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Simon Ser <contact@emersion.fr>,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpBbSAyNi4wNS4yMSB1bSAxNToxMiBzY2hyaWViIERhbmllbCBTdG9uZToKPiBIaSwKPgo+IE9u
IFdlZCwgMjYgTWF5IDIwMjEgYXQgMTM6NDYsIENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4+IEFtIDI2LjA1LjIxIHVtIDEzOjMxIHNjaHJpZWIgRGFu
aWVsIFN0b25lOgo+Pj4gSG93IHdvdWxkIHdlIGluc2VydCBhIHN5bmNvYmordmFsIGludG8gYSBy
ZXN2IHRob3VnaD8gTGlrZSwgaWYgd2UgcGFzcwo+Pj4gYW4gdW5tYXRlcmlhbGlzZWQgc3luY29i
ait2YWwgaGVyZSB0byBpbnNlcnQgaW50byB0aGUgcmVzdiwgdGhlbiBhbgo+Pj4gaW1wbGljaXQt
b25seSBtZWRpYSB1c2VyIChvciBLTVMpIGdvZXMgdG8gc3luYyBhZ2FpbnN0IHRoZSByZXN2LCB3
aGF0Cj4+PiBoYXBwZW5zPwo+PiBXZWxsIHRoaXMgaXMgZm9yIGV4cG9ydGluZywgbm90IGltcG9y
dGluZy4gU28gd2UgZG9uJ3QgbmVlZCB0byB3b3JyeQo+PiBhYm91dCB0aGF0Lgo+Pgo+PiBJdCdz
IGp1c3QgbXkgdGhpbmtpbmcgYmVjYXVzZSB0aGUgZHJtX3N5bmNvYmogaXMgdGhlIGJhY2tpbmcg
b2JqZWN0IG9uCj4+IFZrU2VtYXBob3JlIGltcGxlbWVudGF0aW9ucyB0aGVzZSBkYXlzLCBpc24n
dCBpdD8KPiBZZWFoLCBJIGNhbiBzZWUgdGhhdCB0byBhbiBleHRlbnQuIEJ1dCB0aGVuIGJpbmFy
eSB2cy4gdGltZWxpbmUKPiBzeW5jb2JqcyBhcmUgdmVyeSBkaWZmZXJlbnQgaW4gdXNlICh3aGlj
aCBpcyB1bmZvcnR1bmF0ZSB0YmgpLCBhbmQKPiB0aGVuIHdlIGhhdmUgYW4gYXN5bW1ldHJ5IGJl
dHdlZW4gc3luY29iaiBleHBvcnQgJiBzeW5jX2ZpbGUgaW1wb3J0Lgo+Cj4gWW91J3JlIHJpZ2h0
IHRoYXQgd2UgZG8gd2FudCBhIHN5bmNvYmogdGhvdWdoLiBUaGlzIGlzIHByb2JhYmx5IG5vdAo+
IHByYWN0aWNhbCBkdWUgdG8gc21hc2hpbmcgdUFQSSB0byBiaXRzLCBidXQgaWYgd2UgY291bGQg
d2luZCB0aGUgY2xvY2sKPiBiYWNrIGEgY291cGxlIG9mIHllYXJzLCBJIHN1c3BlY3QgdGhlIGlu
dGVyZmFjZSB3ZSB3YW50IGlzIHRoYXQgZXhwb3J0Cj4gY2FuIGVpdGhlciBleHBvcnQgYSBzeW5j
X2ZpbGUgb3IgYSBiaW5hcnkgc3luY29iaiwgYW5kIGZ1cnRoZXIgdGhhdAo+IGJpbmFyeSBzeW5j
b2JqcyBjb3VsZCB0cmFuc3BhcmVudGx5IGFjdCBhcyB0aW1lbGluZSBzZW1hcGhvcmVzIGJ5Cj4g
bWFwcGluZyBhbnkgdmFsdWUgKGVpdGhlciB3YWl0IG9yIHNpZ25hbCkgdG8gdGhlIGJpbmFyeSBz
aWduYWwuIEluCj4gaGluZHNpZ2h0LCB3ZSBzaG91bGQgcHJvYmFibHkganVzdCBuZXZlciBoYXZl
IGhhZCBiaW5hcnkgc3luY29iai4gT2gKPiB3ZWxsLgoKV2VsbCB0aGUgbGF0ZXIgaXMgdGhlIGNh
c2UgSUlSQy4gRG9uJ3QgYXNrIG1lIGZvciB0aGUgZGV0YWlsIHNlbWFudGljcywgCmJ1dCBpbiBn
ZW5lcmFsIHRoZSBkcm1fc3luY29iaiBpbiB0aW1lbGluZSBtb2RlIGlzIGNvbXBhdGlibGUgdG8g
dGhlIApiaW5hcnkgbW9kZS4KClRoZSBzeW5jX2ZpbGUgaXMgYWxzbyBpbXBvcnQvZXhwb3J0YWJs
ZSB0byBhIGNlcnRhaW4gZHJtX3N5bmNvYmogCnRpbWVsaW5lIHBvaW50IChvciBhcyBiaW5hcnkg
c2lnbmFsKS4gU28gbm8gYmlnIGRlYWwsIHdlIGFyZSBhbGwgCmNvbXBhdGlibGUgaGVyZSA6KQoK
SSBqdXN0IHRob3VnaHQgdGhhdCBpdCBtaWdodCBiZSBtb3JlIGFwcHJvcHJpYXRlIHRvIHJldHVy
biBhIGRybV9zeW5jb2JqIApkaXJlY3RseSBpbnN0ZWFkIG9mIGEgc3luY19maWxlLgoKUmVnYXJk
cywKQ2hyaXN0aWFuLgoKPgo+IENoZWVycywKPiBEYW5pZWwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
