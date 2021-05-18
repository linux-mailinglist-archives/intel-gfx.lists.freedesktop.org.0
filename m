Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E68387811
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 13:51:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 614756EB33;
	Tue, 18 May 2021 11:51:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2047.outbound.protection.outlook.com [40.107.243.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A02306E876;
 Tue, 18 May 2021 11:51:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mAQHK059RIbbfYjIT1eVcYjjQBnsUSuNwfsvHipR0fg28ZMPKkmrgdLeLAgL3FrpMKJp1Gtrg+TrDeemLcHeevp2T0X6UPfZkGa9S4hd+oxE90G/6c/H9EVWOKMt4O0A/zz1VFjmhGq4ZylzgoAmhGeAIml2XvVLQfdpP8i0VCa/yyhu/I30q3zqP+SwrVMOvSWQ9mdNDc9/D6pGNAtC04vtbVZH8K/xoOeNDh3nhWOVWTtAknKCxce61j2RYJnD25uFV+LBFW/l7KHyaMVl6onanYptr6OtR/0shWeZHEXKrOmwx7yL24veXlhAFp9qZ7A5hXlH9dyY/Pkm30D6mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=prJOK/AqPH9+opNJx9xqu0eQd6aYBjajUhu4+FDaQ6w=;
 b=IdoK+Fx+E/g0Gq5TKgxhRmGQXYlOaeeGV28JPf8Pkt7Z3vjE/ovoeJhxtMGIt9NHEeM2P1DvPrHMGDLProsn2sftvL+LDs+CHQbCKtxXnc4T4IoB60FONOgRHz1ZFamofbfzkWFFsGoiWvuWUqKLcvZ415+/vDuE4eUh5i5w0iBTbiNx9Lt5UzanNx/irnIrkAkCjYyvD7hWo0Y5cg0t+sEGSJsQfNLXRW+KZvq51voRtLmc0IG3SE1YljIb0/xI/3s4mbHMVYO0rnjBNAnKQAU6tWjzDGYbMJEvHEeTdGvwHCDtL1TV6jUn6ASEidfGDTnxUo7JB2TCisxg0lbvBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=prJOK/AqPH9+opNJx9xqu0eQd6aYBjajUhu4+FDaQ6w=;
 b=buW9uyQrPptASyTvdUIInUZF1MnXb5fYMSdQTWA5jWQ5EbGeOW1W1LxKltnQnBEoapo8kv/i2XPyb5QugJgUeD644t1/ZaRqce2soTyhC4rRynVOej8tYPCGFjWploPLOpYhHgdvgcL7jkYeGdHgs5zYpOEDHTroEySxWjDNEbA=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4639.namprd12.prod.outlook.com (2603:10b6:208:a4::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Tue, 18 May
 2021 11:51:21 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4129.032; Tue, 18 May 2021
 11:51:21 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-5-thomas.hellstrom@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <3feacf02-0854-68d4-f26b-88ed0528e9ff@amd.com>
Date: Tue, 18 May 2021 13:51:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <20210518082701.997251-5-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:8470:36a5:2010:f0c4]
X-ClientProxiedBy: FR3P281CA0054.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::18) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:8470:36a5:2010:f0c4]
 (2a02:908:1252:fb60:8470:36a5:2010:f0c4) by
 FR3P281CA0054.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:4a::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4150.11 via Frontend Transport; Tue, 18 May 2021 11:51:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7febe21e-7a4d-4543-0609-08d919f3410e
X-MS-TrafficTypeDiagnostic: MN2PR12MB4639:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4639436C3F7F52E5C356F20F832C9@MN2PR12MB4639.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P7VqeOBKi0aeCxdtJdBX0ehy3nO7hJaFXNQGBkH4/eO7caogLIuZZjmYCBesDS5Npcl+Kly/ukcD+tje5YjQOz/+bHb/mBqlsQfnYULOmS0lE323o5ZtYb8WTsSrj/USK2H5dJTp21Jvc7JEXfkhkfgz8jBtdEnjZgtDKsLbQfRqaRg9zhMcqKD5vxfr+4Mlsbnl6k3K6TNfH7Ir5KHQ/M5GMgh19zT/tkxxjNDYjqzOKI3yBKQCf7SAtCNVeETBsXUtuYSd+I3hDzmnA3qVMxwr9qDBivIx4tLLOFTbH3T/lpZEhQlAr7ccG0KmrVBKIe0Tics02hG5PgU8z0YCZCQK07s8+sZY3ibiF7BIVkVVMXZapUxiUIUUbilofnu6NaYZbxUYlHyoIYWVw0ior9sTxVEllWslsQXYr8MVsDnEu75DyEB06leAXLdQDIJdQFfqSRR/RKWuVPjRug/Kq3vYQnqSl8RbRWtx4tc5+HCepTTu65V3DI+0GaZFZbUKB69Pv9GUA6sst+XNTgiua5RqvXnazoj/lyXzEUuoX2wtLKUeXt1qMlGDe8xtjhOYzu5QN2zOFuxXrOdJiJHeusLfnfoUt7n1uPRfDQWlinkRfcbbyKUuPhj4KHDbXdrack3TfSOzz/kxEPd9hx3CzP6xusXl+cLGtZEpNF+WqmiJdUw1fqJPHUR+PH/5wMNk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39850400004)(136003)(366004)(346002)(396003)(6486002)(6666004)(38100700002)(66946007)(86362001)(478600001)(83380400001)(66574015)(31686004)(5660300002)(316002)(8936002)(2616005)(52116002)(16526019)(66476007)(186003)(36756003)(31696002)(66556008)(8676002)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?VFNEUGhaOVNNRk1DL3J4djV1VmJQMzRaQ0N3b3JqTk1oejhvZ0RKc3Z4K3RJ?=
 =?utf-8?B?NG85VHhjTDljOEZMeWlrMFVxZmY0SU0vVFBqNHJCS3U3Y3dPRDRSa1FQcy8v?=
 =?utf-8?B?cW5CMTVsZzZnVEFySkVLTkFuNE9kT0w5VXdPTTdmMEdXbERUcElYWWsraGNa?=
 =?utf-8?B?VmgrMVNXRjZ0eEJGZjFmM0tpQ2JhazhCVjVRUXhuU05qOFZXNTFMWjg5eXhm?=
 =?utf-8?B?b3BZRHViODhSMUU2dDZGak1JdDdXaHN6ZHFGeUUrbXZHK256bE9BZG0xSUo0?=
 =?utf-8?B?ZmN6enN2dll6d3ZnVXgvV0Y5b2xnNTYzdGU2SEF2K0RJajJyWloyalhUbEVq?=
 =?utf-8?B?bmhGR2tPQ1MvSjUvMmVLNm1jMFdZRkxvRmpRK3pXVmxDL0hMdG05RU5XNzNr?=
 =?utf-8?B?V1BZU0ZzTldOVGpJSU1ORXV6TnRQWHEwa1JtNktZbHNWYlVuek9PVUM0bmlD?=
 =?utf-8?B?WTBaNnNPdjJ0dm5kbEhKckNNa1FXMndlcTA1ZStaMGtDZ05BNUlISlV5ekJN?=
 =?utf-8?B?ZndpZHptVlB4dUhpVnRxQjNaWHNYYWFUYkdxUjVtaCtXd284WGtyZlI3a3B1?=
 =?utf-8?B?L2JCNVp4SEl4Mnk1WlU1b3JFdmF4N0pSVHJZaWptZzNvbmFKM05wenMybFlR?=
 =?utf-8?B?eWp4VXBaV014dm8wQjBYdUV5dW0wOGVWazRSQ1I2QVRyRVNnbm53N0RYcDdE?=
 =?utf-8?B?ZklaeXZiRytuNlVxZnlXdmloaGxVaFlvSFMwQkdXTW02MmRqZmRhTUZPZEZD?=
 =?utf-8?B?WFVNdEg0UWN4YUw5S0wvb3VOSUZHeDYzemZXYWlWRHovbnpncFZnQ25wRWRa?=
 =?utf-8?B?WnhEeHE3MEdIWFZvNmdxWGdDalAzWFlxYUlDVXpja1NtcG5iOGtpS29wQUhu?=
 =?utf-8?B?S2NxVngzU1djemV6d1cyQXVUTDRocGU2QWRCT2JXOTlFNS9pL0lScWZGRXpJ?=
 =?utf-8?B?T1pSTmExb25ka0tUTWtWSzM4aFBkaTVmQzFUUWxUaDU1UFdLb21wL0pmM0x5?=
 =?utf-8?B?OXRlWUUxT0tSaXpPZGhudFQrMW9OaTdGYmh0K2k0Z2JwYWZDenUwSEt4N09z?=
 =?utf-8?B?SzI5UGtJdmlIYXNGdU96U3U1WWZXK2xGbHIrakthMTJVUnNleGcydzlycGRi?=
 =?utf-8?B?bzhoOHRsalE4eGdicWtyRUtaS20zb1F2QVpnVzRQYVU1SnhyL2VFaEdNU0Qx?=
 =?utf-8?B?NWZ4U0FLcEpVU0NIUy9uSE56THVKZmRUemgzc0pTK0Rkd3pWZWxCdnBabnBR?=
 =?utf-8?B?TVJwaG15SCtOdCtsZHpMODQ1Q1NadnFGUW9HSFVKaEFMUHRtT1ZCdzI1Z2Qz?=
 =?utf-8?B?VEZUL0ZmRlJnWGNoL2FvTDNYUWdnakllSnA3b2ROM1o3cWdMeHJIcVZEZDhl?=
 =?utf-8?B?V3l2aWIyMU5BRGZ1dUN3dHl2UE81M200SWNuTnZVb2VxenVkQ1BzMEhvblNR?=
 =?utf-8?B?MW9lSnFEbU1yZ3J6YXJNVCtLUGRwQWZVcTl1N21WVk5sNkFzQnBCeUFzbkcx?=
 =?utf-8?B?ZGhDYnphSGJTTjJVVWdDakk4Yy9vWHRhOTRHZFNwZkJvVEFmVm4xNHMrUm96?=
 =?utf-8?B?OVMrR0lYdmdDbUp5djVPZFBXemV6azBuY0VBWEpwa2JEbEpoRUpsMFVSYytZ?=
 =?utf-8?B?RkRmL1RRODRPNkRsdG50V2pTb1NrNTJHalB0OFZqR3plcW9TNlZ2ck04S0dG?=
 =?utf-8?B?REY1V0o4eHRJRVhBdVplaWRzdDJMUzdXajdEQmI1dGExTWswTEtVdEd3OTZ1?=
 =?utf-8?B?WlgyeXZJaEo2V0I1OTk0OUtyNm9LQVdFZXV6QnUvZkRXUWRTZnhaQ05DZG5w?=
 =?utf-8?B?SE9KaXJHdXhLS0dlSWZ3bWpwa0gxalR3NFBZRGNPaEpNeGdUVnJYeGJQM0RR?=
 =?utf-8?Q?+FPiJLY+4+kPI?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7febe21e-7a4d-4543-0609-08d919f3410e
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2021 11:51:21.1439 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0WJ1Iir8T5tBkrwtvmpYElUBEKYLSjAuOUKuGp5MmoHV3YxLBGJC9xj8oGBHkBvH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4639
Subject: Re: [Intel-gfx] [PATCH v2 04/15] drm/ttm: Export functions to
 initialize and finalize the ttm range manager standalone
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

QW0gMTguMDUuMjEgdW0gMTA6MjYgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBpOTE1IG1v
Y2sgc2VsZnRlc3RzIGFyZSBydW4gd2l0aG91dCB0aGUgZGV2aWNlIHNldCB1cC4gSW4gb3JkZXIg
dG8gYmUgYWJsZQo+IHRvIHJ1biB0aGUgcmVnaW9uIHJlbGF0ZWQgbW9jayBzZWxmdGVzdHMsIGV4
cG9ydCBmdW5jdGlvbnMgaW4gb3JkZXIgZm9yIHRoZQo+IFRUTSByYW5nZSBtYW5hZ2VyIHRvIGJl
IHNldCB1cCB3aXRob3V0IGEgZGV2aWNlIHRvIGF0dGFjaCBpdCB0by4KCiBGcm9tIHRoZSBjb2Rl
IGl0IGxvb2tzIGdvb2QsIGJ1dCB0byBiZSBob25lc3QgSSBkb24ndCB0aGluayB0aGF0IHRoaXMg
Cm1ha2VzIG11Y2ggc2Vuc2UgZnJvbSB0aGUgb3JnYW5pemF0aW9uYWwgcG9pbnQgb2Ygdmlldy4K
CklmIGEgc2VsZiB0ZXN0IGV4ZXJjaXNlcyBpbnRlcm5hbHMgb2YgVFRNIGl0IHNob3VsZCBiZSBt
b3ZlZCBpbnRvIFRUTSBhcyAKd2VsbC4KCkNocmlzdGlhbi4KCj4KPiBDYzogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBI
ZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgIGRy
aXZlcnMvZ3B1L2RybS90dG0vdHRtX3JhbmdlX21hbmFnZXIuYyB8IDU1ICsrKysrKysrKysrKysr
KysrLS0tLS0tLS0KPiAgIGluY2x1ZGUvZHJtL3R0bS90dG1fYm9fZHJpdmVyLmggICAgICAgICB8
IDIzICsrKysrKysrKysrCj4gICAyIGZpbGVzIGNoYW5nZWQsIDYxIGluc2VydGlvbnMoKyksIDE3
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX3Jh
bmdlX21hbmFnZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX3JhbmdlX21hbmFnZXIuYwo+
IGluZGV4IGI5ZDVkYTZlNmE4MS4uNjk1N2RmYjBjZjVhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS90dG0vdHRtX3JhbmdlX21hbmFnZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90
dG0vdHRtX3JhbmdlX21hbmFnZXIuYwo+IEBAIC0xMjUsNTUgKzEyNSw3NiBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IHR0bV9yZXNvdXJjZV9tYW5hZ2VyX2Z1bmMgdHRtX3JhbmdlX21hbmFnZXJfZnVu
YyA9IHsKPiAgIAkuZGVidWcgPSB0dG1fcmFuZ2VfbWFuX2RlYnVnCj4gICB9Owo+ICAgCj4gLWlu
dCB0dG1fcmFuZ2VfbWFuX2luaXQoc3RydWN0IHR0bV9kZXZpY2UgKmJkZXYsCj4gLQkJICAgICAg
IHVuc2lnbmVkIHR5cGUsIGJvb2wgdXNlX3R0LAo+IC0JCSAgICAgICB1bnNpZ25lZCBsb25nIHBf
c2l6ZSkKPiArc3RydWN0IHR0bV9yZXNvdXJjZV9tYW5hZ2VyICoKPiArdHRtX3JhbmdlX21hbl9p
bml0X3N0YW5kYWxvbmUodW5zaWduZWQgbG9uZyBzaXplLCBib29sIHVzZV90dCkKPiAgIHsKPiAg
IAlzdHJ1Y3QgdHRtX3Jlc291cmNlX21hbmFnZXIgKm1hbjsKPiAgIAlzdHJ1Y3QgdHRtX3Jhbmdl
X21hbmFnZXIgKnJtYW47Cj4gICAKPiAgIAlybWFuID0ga3phbGxvYyhzaXplb2YoKnJtYW4pLCBH
RlBfS0VSTkVMKTsKPiAgIAlpZiAoIXJtYW4pCj4gLQkJcmV0dXJuIC1FTk9NRU07Cj4gKwkJcmV0
dXJuIEVSUl9QVFIoLUVOT01FTSk7Cj4gICAKPiAgIAltYW4gPSAmcm1hbi0+bWFuYWdlcjsKPiAg
IAltYW4tPnVzZV90dCA9IHVzZV90dDsKPiAgIAo+ICAgCW1hbi0+ZnVuYyA9ICZ0dG1fcmFuZ2Vf
bWFuYWdlcl9mdW5jOwo+ICAgCj4gLQl0dG1fcmVzb3VyY2VfbWFuYWdlcl9pbml0KG1hbiwgcF9z
aXplKTsKPiArCXR0bV9yZXNvdXJjZV9tYW5hZ2VyX2luaXQobWFuLCBzaXplKTsKPiAgIAo+IC0J
ZHJtX21tX2luaXQoJnJtYW4tPm1tLCAwLCBwX3NpemUpOwo+ICsJZHJtX21tX2luaXQoJnJtYW4t
Pm1tLCAwLCBzaXplKTsKPiAgIAlzcGluX2xvY2tfaW5pdCgmcm1hbi0+bG9jayk7Cj4gICAKPiAt
CXR0bV9zZXRfZHJpdmVyX21hbmFnZXIoYmRldiwgdHlwZSwgJnJtYW4tPm1hbmFnZXIpOwo+ICsJ
cmV0dXJuIG1hbjsKPiArfQo+ICtFWFBPUlRfU1lNQk9MKHR0bV9yYW5nZV9tYW5faW5pdF9zdGFu
ZGFsb25lKTsKPiArCj4gK2ludCB0dG1fcmFuZ2VfbWFuX2luaXQoc3RydWN0IHR0bV9kZXZpY2Ug
KmJkZXYsCj4gKwkJICAgICAgIHVuc2lnbmVkIGludCB0eXBlLCBib29sIHVzZV90dCwKPiArCQkg
ICAgICAgdW5zaWduZWQgbG9uZyBwX3NpemUpCj4gK3sKPiArCXN0cnVjdCB0dG1fcmVzb3VyY2Vf
bWFuYWdlciAqbWFuOwo+ICsKPiArCW1hbiA9IHR0bV9yYW5nZV9tYW5faW5pdF9zdGFuZGFsb25l
KHBfc2l6ZSwgdXNlX3R0KTsKPiArCWlmIChJU19FUlIobWFuKSkKPiArCQlyZXR1cm4gUFRSX0VS
UihtYW4pOwo+ICsKPiAgIAl0dG1fcmVzb3VyY2VfbWFuYWdlcl9zZXRfdXNlZChtYW4sIHRydWUp
Owo+ICsJdHRtX3NldF9kcml2ZXJfbWFuYWdlcihiZGV2LCB0eXBlLCBtYW4pOwo+ICsKPiAgIAly
ZXR1cm4gMDsKPiAgIH0KPiAgIEVYUE9SVF9TWU1CT0wodHRtX3JhbmdlX21hbl9pbml0KTsKPiAg
IAo+ICt2b2lkIHR0bV9yYW5nZV9tYW5fZmluaV9zdGFuZGFsb25lKHN0cnVjdCB0dG1fcmVzb3Vy
Y2VfbWFuYWdlciAqbWFuKQo+ICt7Cj4gKwlzdHJ1Y3QgdHRtX3JhbmdlX21hbmFnZXIgKnJtYW4g
PSB0b19yYW5nZV9tYW5hZ2VyKG1hbik7Cj4gKwlzdHJ1Y3QgZHJtX21tICptbSA9ICZybWFuLT5t
bTsKPiArCj4gKwlzcGluX2xvY2soJnJtYW4tPmxvY2spOwo+ICsJZHJtX21tX2NsZWFuKG1tKTsK
PiArCWRybV9tbV90YWtlZG93bihtbSk7Cj4gKwlzcGluX3VubG9jaygmcm1hbi0+bG9jayk7Cj4g
Kwo+ICsJdHRtX3Jlc291cmNlX21hbmFnZXJfY2xlYW51cChtYW4pOwo+ICsJa2ZyZWUocm1hbik7
Cj4gK30KPiArRVhQT1JUX1NZTUJPTCh0dG1fcmFuZ2VfbWFuX2Zpbmlfc3RhbmRhbG9uZSk7Cj4g
Kwo+ICAgaW50IHR0bV9yYW5nZV9tYW5fZmluaShzdHJ1Y3QgdHRtX2RldmljZSAqYmRldiwKPiAg
IAkJICAgICAgIHVuc2lnbmVkIHR5cGUpCj4gICB7Cj4gICAJc3RydWN0IHR0bV9yZXNvdXJjZV9t
YW5hZ2VyICptYW4gPSB0dG1fbWFuYWdlcl90eXBlKGJkZXYsIHR5cGUpOwo+IC0Jc3RydWN0IHR0
bV9yYW5nZV9tYW5hZ2VyICpybWFuID0gdG9fcmFuZ2VfbWFuYWdlcihtYW4pOwo+IC0Jc3RydWN0
IGRybV9tbSAqbW0gPSAmcm1hbi0+bW07Cj4gICAJaW50IHJldDsKPiAgIAo+ICAgCXR0bV9yZXNv
dXJjZV9tYW5hZ2VyX3NldF91c2VkKG1hbiwgZmFsc2UpOwo+IC0KPiAgIAlyZXQgPSB0dG1fcmVz
b3VyY2VfbWFuYWdlcl9ldmljdF9hbGwoYmRldiwgbWFuKTsKPiAgIAlpZiAocmV0KQo+ICAgCQly
ZXR1cm4gcmV0Owo+ICAgCj4gLQlzcGluX2xvY2soJnJtYW4tPmxvY2spOwo+IC0JZHJtX21tX2Ns
ZWFuKG1tKTsKPiAtCWRybV9tbV90YWtlZG93bihtbSk7Cj4gLQlzcGluX3VubG9jaygmcm1hbi0+
bG9jayk7Cj4gLQo+IC0JdHRtX3Jlc291cmNlX21hbmFnZXJfY2xlYW51cChtYW4pOwo+ICAgCXR0
bV9zZXRfZHJpdmVyX21hbmFnZXIoYmRldiwgdHlwZSwgTlVMTCk7Cj4gLQlrZnJlZShybWFuKTsK
PiArCXR0bV9yYW5nZV9tYW5fZmluaV9zdGFuZGFsb25lKG1hbik7Cj4gKwo+ICAgCXJldHVybiAw
Owo+ICAgfQo+ICAgRVhQT1JUX1NZTUJPTCh0dG1fcmFuZ2VfbWFuX2ZpbmkpOwo+IGRpZmYgLS1n
aXQgYS9pbmNsdWRlL2RybS90dG0vdHRtX2JvX2RyaXZlci5oIGIvaW5jbHVkZS9kcm0vdHRtL3R0
bV9ib19kcml2ZXIuaAo+IGluZGV4IGRiY2NhYzk1N2Y4Zi4uNzM0YjE3MTJlYTcyIDEwMDY0NAo+
IC0tLSBhL2luY2x1ZGUvZHJtL3R0bS90dG1fYm9fZHJpdmVyLmgKPiArKysgYi9pbmNsdWRlL2Ry
bS90dG0vdHRtX2JvX2RyaXZlci5oCj4gQEAgLTMyMSw2ICszMjEsMjAgQEAgaW50IHR0bV9yYW5n
ZV9tYW5faW5pdChzdHJ1Y3QgdHRtX2RldmljZSAqYmRldiwKPiAgIAkJICAgICAgIHVuc2lnbmVk
IHR5cGUsIGJvb2wgdXNlX3R0LAo+ICAgCQkgICAgICAgdW5zaWduZWQgbG9uZyBwX3NpemUpOwo+
ICAgCj4gKy8qKgo+ICsgKiB0dG1fcmFuZ2VfbWFuX2luaXRfc3RhbmRhbG9uZSAtIEluaXRpYWxp
emUgYSB0dG0gcmFuZ2UgbWFuYWdlciB3aXRob3V0Cj4gKyAqIGRldmljZSBpbnRlcmFjdGlvbi4K
PiArICogQHNpemU6IFNpemUgb2YgdGhlIGFyZWEgdG8gYmUgbWFuYWdlZCBpbiBwYWdlcy4KPiAr
ICogQHVzZV90dDogVGhlIG1lbW9yeSB0eXBlIHJlcXVpcmVzIHR0IGJhY2tpbmcuCj4gKyAqCj4g
KyAqIFRoaXMgZnVuY3Rpb24gaXMgaW50ZW5kZWQgZm9yIHNlbGZ0ZXN0cy4gSXQgaW5pdGlhbGl6
ZXMgYSByYW5nZSBtYW5hZ2VyCj4gKyAqIHdpdGhvdXQgYW55IGRldmljZSBpbnRlcmFjdGlvbi4K
PiArICoKPiArICogUmV0dXJuOiBwb2ludGVyIHRvIGEgcmFuZ2UgbWFuYWdlciBvbiBzdWNjZXNz
LiBFcnJvciBwb2ludGVyIG9uIGZhaWx1cmUuCj4gKyAqLwo+ICtzdHJ1Y3QgdHRtX3Jlc291cmNl
X21hbmFnZXIgKgo+ICt0dG1fcmFuZ2VfbWFuX2luaXRfc3RhbmRhbG9uZSh1bnNpZ25lZCBsb25n
IHNpemUsIGJvb2wgdXNlX3R0KTsKPiArCj4gICAvKioKPiAgICAqIHR0bV9yYW5nZV9tYW5fZmlu
aQo+ICAgICoKPiBAQCAtMzMyLDQgKzM0NiwxMyBAQCBpbnQgdHRtX3JhbmdlX21hbl9pbml0KHN0
cnVjdCB0dG1fZGV2aWNlICpiZGV2LAo+ICAgaW50IHR0bV9yYW5nZV9tYW5fZmluaShzdHJ1Y3Qg
dHRtX2RldmljZSAqYmRldiwKPiAgIAkJICAgICAgIHVuc2lnbmVkIHR5cGUpOwo+ICAgCj4gKy8q
Kgo+ICsgKiB0dG1fcmFuZ2VfbWFuX2Zpbmlfc3RhbmRhbG9uZQo+ICsgKiBAbWFuOiBUaGUgcmFu
Z2UgbWFuYWdlcgo+ICsgKgo+ICsgKiBUZWFyIGRvd24gYSByYW5nZSBtYW5hZ2VyIGluaXRpYWxp
emVkIHdpdGgKPiArICogdHRtX3JhbmdlX21hbmFnZXJfaW5pdF9zdGFuZGFsb25lKCkuCj4gKyAq
Lwo+ICt2b2lkIHR0bV9yYW5nZV9tYW5fZmluaV9zdGFuZGFsb25lKHN0cnVjdCB0dG1fcmVzb3Vy
Y2VfbWFuYWdlciAqbWFuKTsKPiArCj4gICAjZW5kaWYKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
