Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13590393243
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 17:17:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C6A66F40E;
	Thu, 27 May 2021 15:17:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2042.outbound.protection.outlook.com [40.107.243.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 941D86F40C;
 Thu, 27 May 2021 15:17:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AieqRCnZ/hgWpZyeLEM2W42s05wqVAbnuHg3/3V3U0LY2ciEV9Nl3SNWPgF0PnkxltGlUH7JytstyKMOp1KS0L7n8McWHmwPuThYg3cLEK8ZU3IkXxB0nupeTYvMxJfF98AeXt+V3z4jbeYssPNukAcK0Mq/XqlOUlP0r1r+5bBqE3D+/EXvVEqZl22IDRrjWe7X3+RIM7X7Jge6Ci5JuloD0V8okJTssOKK4whFGwHJvPXzfjUJs8VBp74j6BSiWd9oSB36DIAKpW8BFj/bnXV9avKdf8Lsacind/ijJDETLzZ2ZJEPzG1GCKqArBKKmgSIoJxbI6nba5gVFJezLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IXFDzsxntW/NCn6GT3LG0gCFpT+w5Hij/KkQSGKsl6o=;
 b=goox7310KhehPLnQwmLRKtEzdx6I5QR6CpiF/ZPOnGFaoCgEqM83bzJBKWh2LKq+xHs2UUYRIS5N87C8caZFJ44y0+R59O3jKnnPkmmylwX3iOT3BCMhvamlf6OMiQRjEnazdBT2JgWFDFUf24uvcMwsUfvhhFJYFOwY6xUkd9osEpzLGj0JWXkE1pNRrtbSa0J3qCXAmG8NMF72Ly42lP6RqI6aOaat3/a66iRHwWBbL/3kEBiT8xHRkR49KWHRRopE/ydMBSGBJ8SHdIQaejoWVOMwKU477o5x8E1XWpwDRvYGzJS2CHwcgR2+46XyYVR9iqXVehJE3sc5pyFQoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IXFDzsxntW/NCn6GT3LG0gCFpT+w5Hij/KkQSGKsl6o=;
 b=XGi0OglyZVtokh9F6Ot8hhQsQcX6qoIi91iHKl5Mbd6Dwq2jIYG97lNctH0lZ16PUG4n5pZsXvbrfXWJTJJpqZ2KJgQ5f1ZOdWC7gX0oayTxPCFoZJmo3qaMAgKd5q+H92TbUn/OA6ip9ndPIPiZZnIFp8/ticXTFp8sl4fj6DY=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4237.namprd12.prod.outlook.com (2603:10b6:208:1d6::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20; Thu, 27 May
 2021 15:17:07 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4173.024; Thu, 27 May 2021
 15:17:07 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210527141923.1962350-1-thomas.hellstrom@linux.intel.com>
 <883eab20-4326-d14a-2eb0-5e95f174a0d9@amd.com>
 <8b3382726763050334a6cb214f7ba560eebf8f28.camel@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <aa797cfe-cb48-6f8e-37fa-0e2f69b30e33@amd.com>
Date: Thu, 27 May 2021 17:17:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <8b3382726763050334a6cb214f7ba560eebf8f28.camel@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:ffcf:5811:6cd5:8a3f]
X-ClientProxiedBy: PR3P193CA0023.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:102:50::28) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:ffcf:5811:6cd5:8a3f]
 (2a02:908:1252:fb60:ffcf:5811:6cd5:8a3f) by
 PR3P193CA0023.EURP193.PROD.OUTLOOK.COM (2603:10a6:102:50::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4173.20 via Frontend Transport; Thu, 27 May 2021 15:17:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cf241f62-cb4b-4b98-1ff5-08d921227dda
X-MS-TrafficTypeDiagnostic: MN2PR12MB4237:
X-Microsoft-Antispam-PRVS: <MN2PR12MB42378D8F3604C9AF5C1487B683239@MN2PR12MB4237.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ooep8O7AHfgvqseInnBUVIed7R/1jRr9OK7smWd1xfWunRWJRFTAMl/H+w9dEGzt8lHMzqZRAZ3VdAShiUTyiUj2fFmq6MvdCWv5bTxyC2t5jj+GXCruxIjSAKt4DWm78DvC9LDaoKXhdvGPimjMvTDgLBAw7uv8vyk3D3jvtgHGQV4dwtjGUiaq/4h3+cI+ZolKqHpWZpEOQVk83LZx85s8TuAHXE0tn9VbyKGECgHKtCBCkDxD4WaOTxgACMCkI42naSFCtTmC5pR/wDP8pMMi6ZUJfI38+ZwlyIrXTb7IvQsImLixkwgTMi4Vhh+P0qbWmVuoNyd0JkD1I+kCUYsvbP/YuL04lw5Yy8sBapLrYtuzJ4csGOAxaLbLpqZ71C7c3cbxR/oS5dmA7ZuFjJvzUk6VaVsc4cQnQnmaZP1/ALiAVCuEQIpIDy3uKQSGWajXsM/P0gDOWsQBTjukV+qbmc/apndc98kGcwWVNUmSnfGOsdeNWpaAHVL+hEfiwac9pokclHZJ9cxv3U6YNYOo6GSlsOdOlXMHBwkIRCF7ijzmWisOPt9ILrBSMNolbBbIlL4ZILPpiBr15LzJPCJXfljnRRoqy4Ago80W5V2bYU1QLGHMI9SH4gYeu2WLUtUv0PXLwxcWBTbWmhJID6FfjQd9YHp0oX+hFPndp/yZ4pug4HqyhvDYZ50Y7SMl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(136003)(396003)(346002)(39860400002)(86362001)(2906002)(38100700002)(83380400001)(31696002)(6486002)(31686004)(5660300002)(6666004)(316002)(36756003)(8676002)(52116002)(2616005)(66946007)(478600001)(66574015)(186003)(8936002)(16526019)(66476007)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?YmRZNUdNOHoveUtGL1JaZTJUK1QzcmtSem01Y0p4S0xWcjU5VFZ2NEloRm5W?=
 =?utf-8?B?eXlnYnJDOFJ5NU5XYTNHeGN2ZitONHZDZ1Fuam1rUE9IOUMzSmV1a1RYS1BY?=
 =?utf-8?B?K2xBcXlKZUxJbVkwdDQ5Q0dnbC9MeXhhTFVDVXVRazJYemE0OXZ4M1Jqa0hR?=
 =?utf-8?B?UHQ1azRBcXdPR2tuOFJoVkRrMDdSSjdha3J1Z25GeWZEM0NmWnpGRm5RMkZu?=
 =?utf-8?B?dy94eVh6dFpaMHQ1UTV4QWx6aFdNL0FmcnRWamM3M1k1aHNCaGJnaVhRVkhz?=
 =?utf-8?B?Um14ZXRubDdHZnRMZ1c2ZFZtaUR0ZHNxUWFGSjE3UHpiSzllSGVRbTl5TGhI?=
 =?utf-8?B?Mjk1cnBEdk9rdzFXSnhNak9iZjR0bENuUEZZU092WjdaVG9MeHB5L3dnNWZW?=
 =?utf-8?B?WVpZVktycjJLS2x0Sm1xMTBLa2xmNTFUZDQ0MktTTmRCVmdTTzh1R0JkMWtM?=
 =?utf-8?B?RjRMR2F6bVVjWXM4SXlJUVJscSszQUpRdXllMWtQUUxNcUxLZktuK2dzWGdE?=
 =?utf-8?B?YmY5KzloTEFCRnpuQnBoVVp1UWpDZ3QzUGw0UUpuZ1lWSkw0UUY1bXlFMzBX?=
 =?utf-8?B?UUNuaXY3MXpBU3hzSjdERXdML1o2b0hLd1FJQ3pORWNXU2RDWEZUSjc0L084?=
 =?utf-8?B?WldyWStRVVpycEJxZEk5QTBXRXJ5cWhrZnhRZ000N0krWjRxTmF5UTQweFhJ?=
 =?utf-8?B?VW1tcDJoaDFDVlkxd2Q2Njhsckhlek85UWxTdW9vSldmeVFDWDVSYTl6MWtl?=
 =?utf-8?B?Uk93bGIyWDkzbzNmOEZ1WHVQWTZBVXJpMEg0L3E4cnpXVTdQd2tzeitlM25p?=
 =?utf-8?B?Q0xVQkR1elpjaHlNUFgrdkhBM1YrM2lzRXgyajJraWZnUVpJRnlETHNaTjl1?=
 =?utf-8?B?ZXRadk1IaXNyb1dYc1NSRFpRcW95VWJtVStSTW96czZ6UXIxeXJLL2J0N01L?=
 =?utf-8?B?cE1IZXBVOUtqZXRxRG9FVnVCK3pJN0Y4RUJlQVRjUmx0OXhXaWZOWW4wK1hx?=
 =?utf-8?B?U3I4L2xHYnZDTGZTWXROVzBKbjA2Qzd4OTZJUjVmMXU2aUxKcDcvNW5RUnc0?=
 =?utf-8?B?bnRZcnc3WnhOZGNqMzg2cTZOUTZWSkhIZnU4cDZodklPK1FkaTVIWnVrRkdB?=
 =?utf-8?B?TzVpNkozUUxuZjY0SmFNK2ZRNGN4ZVdXS2IxUVR4YUdxdU9WNmtQem9Fanl1?=
 =?utf-8?B?UTl6a2QycFNOZ3pnNDhwMExtbndBRlRiUlNwOWp1WDZKMDhDcW1jWFNRbmVj?=
 =?utf-8?B?TW8yeEdLSWJTTlcwcnlYMW4zOTFRZXZnNnR0YURaaTh1aFJUeUR6bUVoOHdK?=
 =?utf-8?B?QTVpdzBySTNlUTVnSDkyTXJpR2VsRnJSVXdMRC9mUXVucUhITEFNUFZuRTN4?=
 =?utf-8?B?QUU2a2RDalM1c3A0TGVGcTVFMUtrcEZpR0lmakQ5bFJDZEFxSU85OE5NNkJv?=
 =?utf-8?B?dURoOE10Tyt5TXNqVGdSZ0pxbk92cUxQV2VSUWozZUVaUC9GdGc3NG9abjl5?=
 =?utf-8?B?a2xlOWhMSzJEcWdKVThCSWphZ1Joa2JsYUlJTzRISC8vdHgrZThVeFhwYjVk?=
 =?utf-8?B?SHl1N3VlZzFhVm5RUVpHc3lhbWNvWGNRaEZSTjREaExuUmVXcmVwYVplYmxp?=
 =?utf-8?B?SThUL0tKazRZMFpmMEVoaGhhM1prR3ptL1ZhZy9OckJCd25hYW5rWi9leTN2?=
 =?utf-8?B?RmN4WWlYMDkyOG9PR0gxQmM4eUgrN2ZCLzRmVkdicHgrcDErbTZoUy8wR1RH?=
 =?utf-8?B?YWJBZXY2UmVRSEVsOUxXeU1Wa1k2VEVIaGRpSmtWZFlpdTBMclZRYlVSVEZa?=
 =?utf-8?B?MGtVc3ZZZ3ZhODdZNk41QWZObmtmazBYdjM3VHhtVkRLSWFQWG9pSTEwc29Q?=
 =?utf-8?Q?HSLIU69syd2TO?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf241f62-cb4b-4b98-1ff5-08d921227dda
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2021 15:17:07.4617 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DTvkprJxL+4Woby80doT+PONtjxk1vr+soH2xexY8BBxHEIXF9arRGma0cz0qUhi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4237
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

QW0gMjcuMDUuMjEgdW0gMTc6MDEgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBPbiBUaHUs
IDIwMjEtMDUtMjcgYXQgMTY6NTQgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IEFt
IDI3LjA1LjIxIHVtIDE2OjE5IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+PiBUaGUgc3dh
cHBpbmcgY29kZSB3YXMgZGVyZWZlcmVuY2UgYm8tPnR0bSBwb2ludGVycyB3aXRob3V0IGhhdmlu
Zwo+Pj4gdGhlCj4+PiBkbWEtcmVzdiBsb2NrIGhlbGQuIEFsc28gaXQgbWlnaHQgdHJ5IHRvIHN3
YXAgb3V0IHVucG9wdWxhdGVkIGJvcy4KPj4+Cj4+PiBGaXggdGhpcyBieSBtb3ZpbmcgdGhlIGJv
LT50dG0gZGVyZWZlcmVuY2UgdW50aWwgd2UgaGF2ZSB0aGUKPj4+IHJlc2VydmF0aW9uCj4+PiBs
b2NrLiBDaGVjayB0aGF0IHRoZSB0dG1fdHQgaXMgcG9wdWxhdGVkIGFmdGVyIHRoZSBzd2FwX25v
dGlmeQo+Pj4gY2FsbGJhY2suCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLD
tm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+Pj4gLS0tCj4+PiAgwqAgZHJp
dmVycy9ncHUvZHJtL3R0bS90dG1fYm8uY8KgwqDCoMKgIHwgMTYgKysrKysrKysrKysrKysrLQo+
Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2RldmljZS5jIHzCoCA4ICsrKy0tLS0tCj4+
PiAgwqAgMiBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+
Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCj4+PiBiL2Ry
aXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKPj4+IGluZGV4IDlmNTM1MDZhODJmYy4uODYyMTNk
Mzc2NTdiIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+Pj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+Pj4gQEAgLTExNjMsNiArMTE2Mywx
NiBAQCBpbnQgdHRtX2JvX3N3YXBvdXQoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0Cj4+PiAqYm8s
IHN0cnVjdCB0dG1fb3BlcmF0aW9uX2N0eCAqY3R4LAo+Pj4gIMKgwqDCoMKgwqDCoMKgwqBpZiAo
IXR0bV9ib19ldmljdF9zd2Fwb3V0X2FsbG93YWJsZShibywgY3R4LCAmcGxhY2UsCj4+PiAmbG9j
a2VkLCBOVUxMKSkKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAt
RUJVU1k7Cj4+PiAgICAKPj4+ICvCoMKgwqDCoMKgwqDCoGRtYV9yZXN2X2Fzc2VydF9oZWxkKGJv
LT5iYXNlLnJlc3YpOwo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgaWYgKCFiby0+dHRtIHx8Cj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm8tPnR0bS0+cGFnZV9mbGFncyAmIFRUTV9QQUdFX0ZM
QUdfU0cgfHwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBiby0+dHRtLT5wYWdlX2ZsYWdzICYg
VFRNX1BBR0VfRkxBR19TV0FQUEVEKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgaWYgKGxvY2tlZCkKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZG1hX3Jlc3ZfdW5sb2NrKGJvLT5iYXNlLnJlc3YpOwo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAtRUJVU1k7Cj4+PiArwqDCoMKgwqDCoMKgwqB9Cj4+
PiArCj4+PiAgwqDCoMKgwqDCoMKgwqDCoGlmICghdHRtX2JvX2dldF91bmxlc3NfemVybyhibykp
IHsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChsb2NrZWQpCj4+PiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZG1hX3Jlc3Zf
dW5sb2NrKGJvLT5iYXNlLnJlc3YpOwo+Pj4gQEAgLTEyMTUsNyArMTIyNSw4IEBAIGludCB0dG1f
Ym9fc3dhcG91dChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QKPj4+ICpibywgc3RydWN0IHR0bV9v
cGVyYXRpb25fY3R4ICpjdHgsCj4+PiAgwqDCoMKgwqDCoMKgwqDCoGlmIChiby0+YmRldi0+ZnVu
Y3MtPnN3YXBfbm90aWZ5KQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYm8t
PmJkZXYtPmZ1bmNzLT5zd2FwX25vdGlmeShibyk7Cj4+PiAgICAKPj4+IC3CoMKgwqDCoMKgwqDC
oHJldCA9IHR0bV90dF9zd2Fwb3V0KGJvLT5iZGV2LCBiby0+dHRtLCBnZnBfZmxhZ3MpOwo+Pj4g
K8KgwqDCoMKgwqDCoMKgaWYgKHR0bV90dF9pc19wb3B1bGF0ZWQoYm8tPnR0bSkpCj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gdHRtX3R0X3N3YXBvdXQoYm8tPmJkZXYs
IGJvLT50dG0sIGdmcF9mbGFncyk7Cj4+IEV4YWN0bHkgdGhhdCBpcyB3aGF0IEkgd29uJ3QgcmVj
b21tZW5kLiBXZSB3b3VsZCB0cnkgdG8gc3dhcCBvdXQgdGhlCj4+IHNhbWUgQk8gb3ZlciBhbmQg
b3ZlciBhZ2FpbiB3aXRoIHRoYXQuCj4gQnV0IHdlIHdvdWxkbid0IHNpbmNlIHRoZSBCTyBpcyB0
YWtlbiBvZmYgdGhlIExSVSBhbmQgbmV2ZXIgcmUtYWRkZWQsCgpXZWxsIHRoZW4gdGhhdCB3b3Vs
ZCBiZSBhIGJ1ZyBpbiBpdHNlbGYuCgo+PiBXaHkgbm90IG1vdmUgdGhhdCB0byB0aGUgY2hlY2sg
YWJvdmUgYXMgd2VsbD8KPiBCZWNhdXNlIHRoZSBCTyBtYXkgYmVjb21lIHVucG9wdWxhdGVkIGlu
IHN3YXBfbm90aWZ5KCksIGk5MTUsIGxpa2UKPiB2bXdnZngsIHNvbWV0aW1lcyBzZXRzIHVwIGdw
dSBiaW5kaW5ncyBmcm9tIHN5c3RlbSwgYW5kIHdoZW4gd2UgZ2V0IGEKPiBub3RpZmljYXRpb24g
ZnJvbSB1c2VyLXNwYWNlIHRoYXQgdGhvc2UgYXJlIHB1cmdlYWJsZSwgd2UgZG9uJ3Qgd2FudCB0
bwo+IHB1cmdlIGltbWVkaWF0ZWx5IGJ1dCB3YWl0IGZvciBhIHBvdGVudGlhbCBzd2Fwb3V0LgoK
VWZmLCBnb29kIHBvaW50LiBCdXQgdGhlbiB3ZSBuZWVkIHRvIGNoZWNrIHRoYXQgYXQgYm90aCBs
b2NhdGlvbnMgSSB0aGluay4KCkJlY2F1c2UgcG9wdWxhdGluZyB0aGUgVFQgb2JqZWN0IGN1cnJl
bnRseSBkb2Vzbid0IHB1dCB0aGUgQk8gYmFjayBvbiAKdGhlIExSVSBldmVudHVhbGx5LgoKQ2hy
aXN0aWFuLgoKPgo+IC9UaG9tYXMKPgo+Cj4+IENocmlzdGlhbi4KPj4KPj4+ICDCoCBvdXQ6Cj4+
PiAgICAKPj4+ICDCoMKgwqDCoMKgwqDCoMKgLyoKPj4+IEBAIC0xMjI1LDYgKzEyMzYsOSBAQCBp
bnQgdHRtX2JvX3N3YXBvdXQoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0Cj4+PiAqYm8sIHN0cnVj
dCB0dG1fb3BlcmF0aW9uX2N0eCAqY3R4LAo+Pj4gIMKgwqDCoMKgwqDCoMKgwqBpZiAobG9ja2Vk
KQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZG1hX3Jlc3ZfdW5sb2NrKGJv
LT5iYXNlLnJlc3YpOwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqB0dG1fYm9fcHV0KGJvKTsKPj4+ICsK
Pj4+ICvCoMKgwqDCoMKgwqDCoC8qIERvbid0IGJyZWFrIGxvY2tpbmcgcnVsZXMuICovCj4+PiAr
wqDCoMKgwqDCoMKgwqBXQVJOX09OKHJldCA9PSAtRUJVU1kpOwo+Pj4gIMKgwqDCoMKgwqDCoMKg
wqByZXR1cm4gcmV0Owo+Pj4gIMKgIH0KPj4+ICAgIAo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS90dG0vdHRtX2RldmljZS5jCj4+PiBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2Rl
dmljZS5jCj4+PiBpbmRleCA0NjA5NTNkY2FkMTEuLmVhYTc0ODdhZTQwNCAxMDA2NDQKPj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2RldmljZS5jCj4+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vdHRtL3R0bV9kZXZpY2UuYwo+Pj4gQEAgLTE0MywxNCArMTQzLDEyIEBAIGludCB0dG1f
ZGV2aWNlX3N3YXBvdXQoc3RydWN0IHR0bV9kZXZpY2UKPj4+ICpiZGV2LCBzdHJ1Y3QgdHRtX29w
ZXJhdGlvbl9jdHggKmN0eCwKPj4+ICAgIAo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgZm9yIChqID0gMDsgaiA8IFRUTV9NQVhfQk9fUFJJT1JJVFk7ICsraikgewo+Pj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxpc3RfZm9yX2Vh
Y2hfZW50cnkoYm8sICZtYW4tPmxydVtqXSwgbHJ1KQo+Pj4gewo+Pj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdWludDMyX3Qg
bnVtX3BhZ2VzOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcGdvZmZfdCBudW1fcGFnZXM7Cj4+PiAgICAKPj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGlmICghYm8tPnR0bSB8fAo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJvLT50dG0tPnBhZ2VfZmxhZ3MgJgo+
Pj4gVFRNX1BBR0VfRkxBR19TRyB8fAo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJvLT50dG0tPnBhZ2VfZmxh
Z3MgJgo+Pj4gVFRNX1BBR0VfRkxBR19TV0FQUEVEKQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFSRUFEX09OQ0Uo
Ym8tPnR0bSkpCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb250aW51ZTsKPj4+ICAgIAo+
Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgbnVtX3BhZ2VzID0gYm8tPnR0bS0+bnVtX3BhZ2VzOwo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbnVtX3Bh
Z2VzID0gYm8tPmJhc2Uuc2l6ZSA+Pgo+Pj4gUEFHRV9TSElGVDsKPj4+ICDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0ID0g
dHRtX2JvX3N3YXBvdXQoYm8sIGN0eCwKPj4+IGdmcF9mbGFncyk7Cj4+PiAgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIHR0
bV9ib19zd2Fwb3V0IGhhcyBkcm9wcGVkIHRoZQo+Pj4gbHJ1X2xvY2sgKi8KPj4+ICDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aWYgKCFyZXQpCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
