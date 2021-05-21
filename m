Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A91E538C169
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 10:10:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C5B66F5CC;
	Fri, 21 May 2021 08:10:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2054.outbound.protection.outlook.com [40.107.244.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 453886F5CC;
 Fri, 21 May 2021 08:10:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mKa35ndoV88aVjYgdwKEWnv9Q03iLO9D631sCD32uzOMT+8gbjZolmP4f7PANRMDA8sj9RJmJXgk7AciY6mu/hH2kLMeU0pXmB7y2tPhyBYknhPUpGuWH9z89K9TfKHGv0FwzH9p+5mBM+MhnyJUZfwhiyz/rf6BM7xrFc62mzWVNcy8ga3gxOCyPzMSo14CvxICWp/r8pl7ne0s62R20E/hN2S+Hb1xmV0lkMBvziG3DF8jI2aYhbC9IVjdP0nDEnsedyoVmDa6LK7ZdHsrlxHrI+bYKFxm+nujNITbOzx212s16tHMOOAlKpzHAXtE9S00uLOJO6ujZu7eg1jl+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=42iKhvNNCXT2e7GyDcZlTRrk2bWy+Brs3bL7AMbwUXk=;
 b=IgGb6+SY6NPrzRNmbjeCFw0t5vPCVg1glxwl98RfFGXqfm6I6dJUqKoiTS83sSp6k3Lwwq/kN/811qY7zLLuw4a8Z+xMjccvqDKf2YS75QpFbt4P3JyEbT3+9AuwhDTtY4nKGX6abY2tv+H1JAxUF+SHZFb5pWXIHnVqOrgL8Reu/2L3vdj1urRlIdbSw32Ck3r7FVDW0pvr817Cyre/VyA7/RNmuDKlnZvS7ta9yMaAOc1uwQ+qx3xo8KHYjhUf/H6i7slaxtPLopRmWhmLIhjvwaEnAWD6WY4SZRhGPm03pRtXaiz0JAmSyTGdqmqazB799k+dETE7abKQMu8qTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=42iKhvNNCXT2e7GyDcZlTRrk2bWy+Brs3bL7AMbwUXk=;
 b=V3ScY6Ry21olbK6iRxL/q8NK89LeUlX7CcoxNQJk1shafx0OOdQHXTsoLWz1i45NG76CpTDcfsh8CpaPmnGiE+ZPRB15Pa5us5ZkJd3E3kwzbUdJZOV4qVMtQZxLW30ZxM9ABWcw4UmV3IVigAcmqsBt0w97rvBXEHePT3hMFAk=
Authentication-Results: ffwll.ch; dkim=none (message not signed)
 header.d=none;ffwll.ch; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB3933.namprd12.prod.outlook.com (2603:10b6:208:162::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.26; Fri, 21 May
 2021 08:10:44 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4150.023; Fri, 21 May 2021
 08:10:44 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210520150947.803891-1-thomas.hellstrom@linux.intel.com>
 <20210520150947.803891-4-thomas.hellstrom@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <f917a62f-0552-e9e2-17d3-8f16c713fa8c@amd.com>
Date: Fri, 21 May 2021 10:10:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <20210520150947.803891-4-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:b48f:ff97:fb4c:5b1d]
X-ClientProxiedBy: FR3P281CA0018.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1d::11) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:b48f:ff97:fb4c:5b1d]
 (2a02:908:1252:fb60:b48f:ff97:fb4c:5b1d) by
 FR3P281CA0018.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:1d::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4173.12 via Frontend Transport; Fri, 21 May 2021 08:10:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bd58ca74-1c81-44e0-b97f-08d91c2fed70
X-MS-TrafficTypeDiagnostic: MN2PR12MB3933:
X-Microsoft-Antispam-PRVS: <MN2PR12MB39338731C944990D5289B3C983299@MN2PR12MB3933.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JOOEVwBSucYl7gEj5h7lz1HruiCh3LqHw16qQmt/Wh2rhjoPK3qNTkKGd4skhyURzi0QBj2CMBDAlNnAsOJZPMUYtjEY/oVgal2LDhUhXlrTQT9/oJXDEoo6IHJh4DiPP+LaAJMrFSZZEcekZxmXQLG9tS+a+in5Y3ZjCBkhzniw5uDMox4967CprG6S44pEfwPPbitU18XeOixOoHppp5bK43yJAFpeV0hbruPP0iAKwdzFFiYMm69VyXqybQa/Hs7AMR02SP1C/wYBoalZ43vVTecuXTnRni8wiG9Q4MT0fghsX8RClOSkCbkZA5P6Y3DkyeP6uAMoX94dGWGh0DzOdogUhj4jh3nCtKsbqH5TPWIWp6JVHkSJIObrF06aCpgnZIdezEpdicHmcF/kyGme5DE8Tjh2iUsMo0APyADn1vcuTYwsI/M0/gAByAxD9GE9zBakdRjRPA5Nq3gF/4QVSxLr+djro+H62MGu1BijMM2NZJd28Rh5oI9oAvDTn6Mb72iRO9ZIeymfPAn0uLIuFBkntJ0/bGmgNs1w+cmoD/cQvdmJSNehw1RLp1nHnbOnf88Hi2uzfgSJ/KFpt3BDcBAQLv/idqH4/Ev+adK8jKM3FzzRdR8RmhB3ZvucW62q8LkqvXUid7jlSYuxGo9DiHvZuGHHgYgH3HmUGM4zGPjUcipUA7Qu/pssMooW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(376002)(396003)(346002)(366004)(478600001)(66946007)(8676002)(8936002)(2906002)(16526019)(186003)(66476007)(66556008)(2616005)(31686004)(54906003)(5660300002)(6486002)(52116002)(316002)(31696002)(36756003)(38100700002)(83380400001)(86362001)(6666004)(66574015)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?MHpUZTh2TStubGs0WjZrc0VqTHQ0QWpCanFmK3ZiQUNhTWZUOEIvZU90S2hq?=
 =?utf-8?B?c0JSZWRRQVJUYzh4RVhYODYvR1JtUGI5WVNpTUZKUW9kZG95aDQ2QnU1aUxS?=
 =?utf-8?B?TDNwa2FLTDNsdzg0RHRXcy8yU0hYZ0Q2dlFjcWQvKzNseDZhQmdjb05jZnNz?=
 =?utf-8?B?bVgwMkFKSklMZVlaZ28vb3dyYkw4Q2Z5bXJQN1c1RE5iUGk5cmlQTHBoTVZ1?=
 =?utf-8?B?MkxxaHEwM29melVPcXNkZFArUFl4N2RTcS9iS0JDUXNRL2ZpK2xaT2Z2d1pE?=
 =?utf-8?B?NzV0UWx0UTYwNndWakZWU3oveHhMK0UxNU9TVjBueVprTmRYSTRVVk41MDlw?=
 =?utf-8?B?eHFxdkF6bzlRV3ZSUTF6bTErS3lQK1ZJT05uVWF2NTRoMnZkNDBZdElOYUtX?=
 =?utf-8?B?Yi8rSjl4MTN5SE9hZ2xNWTVPblg0MG1Na0hmZ0NyNjI2UFRZOE9ESzByMmVi?=
 =?utf-8?B?NjBLMElYRjhiMjZIVFJVQVlLNU94S08rMWQ3SVJZUHlJYmhpdnVxckUwZ2Fq?=
 =?utf-8?B?aXVxTVBZdllvamJ5VDdIdnl5NWw1VzJoS25XeHRtbVptbUNFMWxnT1NqUEJk?=
 =?utf-8?B?RWl6L3Q1dlRhaSt2VnF4NWpGRUlyMVVqM1M2NkYrNlNtWTZjdGpnV2ZhdGJq?=
 =?utf-8?B?b1BVVktLdW1hSXVhNzBkamd5RjhKTXp4RFVnSDFabHQ5bFArZERrcm1HK1pq?=
 =?utf-8?B?YTluNEtWZ25mMEtmcWVRbWFFQ0FOY21ZazZyMmFYdExlS0lpVnJ3Vm4xZGhH?=
 =?utf-8?B?VlFQeFNSNWNaRXRGeTJpbDQ2ZFFiRkxSR1ZSTkRWYmxxaEVSb3JBM2lZNFhD?=
 =?utf-8?B?NWtaU1VBUStaVlhENEdDd0Q5M05nRVFnRnh5RFNNWDFvbHR6dW9lOFFCZkxX?=
 =?utf-8?B?c1NXNzdIWUxEeVZJTTcrVnRmY1NMcG1oSlVzeUlwd2tvU2VqL1VLUTZXSEQy?=
 =?utf-8?B?dmtoQTRoa2ExU21UTGljK1prUm9IckRJNy9FSTBaaHZHMUN2ZUdaYTV0TlNI?=
 =?utf-8?B?Z251Q1dtZFRiQ2ZZS1dIa01leGdQanM3dnUvMjNOcTVzclJMTE5CVFBFS20v?=
 =?utf-8?B?TVViM3R2ZTVYRFBBUFprRWllenJvcUFQWi92b3VwV2IzdUtrTXA3WWVoVUxD?=
 =?utf-8?B?VnJjL3JwejdnMWpkNWliR1QrNkE3TS9QS3pzWFJVYU94YmF0Z3NiWjFzV0Fh?=
 =?utf-8?B?anVEMWdWUC8vSVZEMnlJZmtMc0hpZTdjeWg2M2xDcWZsWWRjVDZpaFVhVGty?=
 =?utf-8?B?QnpqcVcxVjY5Z0pPYjRleGplbE5ETjBuVVZrNkl2dXZneHJNWVFQa2RBQVNv?=
 =?utf-8?B?SjFLOXpxWmZOVWsvRytiZnRSdjBTczZYR3FOaFJDdlFTZGplQmRwUk1nYmln?=
 =?utf-8?B?WXcxbllmVDFnT2lIK1I0bzUyQnhBaHowa1FSdWFCQXNyeEt0Yk1RdHhoOTMy?=
 =?utf-8?B?aFNTVmNRdlk1MWRLZ0dPaTMwTEZTekxTZnJwT2dLR3VrejV2MndCeWdNQVNH?=
 =?utf-8?B?SEY5VUhBeUhVMFBMNGlqNE9CNXNvVmo3ZVhTZndwZHlvdkxqYkZYTGxBVmdi?=
 =?utf-8?B?NXpWcnZtcmw3aE1xQU9tZDA4TTFXUTZ2MWgrQi9TelZoMTBjbXZ5dWxmakdw?=
 =?utf-8?B?cDJuOVVsSG9ueDh3RllYUkRjVDhOQWQ2d1YreUVLOUZ2N1EwNzFVOHZSVjJ4?=
 =?utf-8?B?UUYzeFp2QXcwL3lzTTF3U1lZNytjeVZUZVBZMEsxd21HU1ZOalZ6RzVISTlQ?=
 =?utf-8?B?R04vcnpFMGJoV0IyazhzVzVhYzZjc3Irb3Nrc1VkeFAwUWlKcHJJZHhaZ3Nj?=
 =?utf-8?B?UGtNYllVNGRmMWsyYnMrMU5vYkJhdHpWaU5sd3Frb1g5eUsyVytrdmpMNHp6?=
 =?utf-8?Q?OSkCKAZ9yy48b?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd58ca74-1c81-44e0-b97f-08d91c2fed70
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2021 08:10:43.9284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /o2gMBm0mGNHsTd8r4aAERp7szveZLthqnwySMDPGHwDt8K7ldR5+tovM2ws/EJu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3933
Subject: Re: [Intel-gfx] [RFC PATCH 3/5] drm/ttm: Use drm_memcpy_from_wc for
 TTM bo moves
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjAuMDUuMjEgdW0gMTc6MDkgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBVc2UgZmFz
dCB3YyBtZW1jcHkgZm9yIHJlYWRpbmcgb3V0IG9mIHdjIG1lbW9yeSBmb3IgVFRNIGJvIG1vdmVz
Lgo+Cj4gQ2M6IERhdmUgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4KPiBDYzogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7Zt
IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KCk9oLCB5ZXMgSSByZWFsbHkgd2Fu
dGVkIHRvIGhhdmUgdGhhdCBpbiBUVE0gZm9yIHF1aXRlIHNvbWUgdGltZS4KCkJ1dCBJJ20gd29u
ZGVyaW5nIGlmIHdlIHNob3VsZG4ndCBmaXggdGhlIG1lbXJlbWFwIHN0dWZmIGZpcnN0LgoKQ2hy
aXN0aWFuLgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwuYyB8IDE4
ICsrKysrKysrKysrKysrKysrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9i
b191dGlsLmMgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGlsLmMKPiBpbmRleCBiYWQ5
YjE2ZTk2YmEuLjkxOWVlMDNmN2ViMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRt
L3R0bV9ib191dGlsLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGlsLmMK
PiBAQCAtMzEsNiArMzEsNyBAQAo+ICAgCj4gICAjaW5jbHVkZSA8ZHJtL3R0bS90dG1fYm9fZHJp
dmVyLmg+Cj4gICAjaW5jbHVkZSA8ZHJtL3R0bS90dG1fcGxhY2VtZW50Lmg+Cj4gKyNpbmNsdWRl
IDxkcm0vZHJtX21lbWNweS5oPgo+ICAgI2luY2x1ZGUgPGRybS9kcm1fdm1hX21hbmFnZXIuaD4K
PiAgICNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLW1hcC5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L2lv
Lmg+Cj4gQEAgLTE4NSw2ICsxODYsNyBAQCB2b2lkIHR0bV9tb3ZlX21lbWNweShzdHJ1Y3QgdHRt
X2J1ZmZlcl9vYmplY3QgKmJvLAo+ICAgCXN0cnVjdCB0dG1fcmVzb3VyY2UgKm9sZF9tZW0gPSAm
Ym8tPm1lbTsKPiAgIAlzdHJ1Y3QgdHRtX3Jlc291cmNlX21hbmFnZXIgKm9sZF9tYW4gPSB0dG1f
bWFuYWdlcl90eXBlKGJkZXYsIG9sZF9tZW0tPm1lbV90eXBlKTsKPiAgIAlzdHJ1Y3QgZG1hX2J1
Zl9tYXAgb2xkX21hcCwgbmV3X21hcDsKPiArCWJvb2wgd2NfbWVtY3B5Owo+ICAgCXBnb2ZmX3Qg
aTsKPiAgIAo+ICAgCS8qIFNpbmdsZSBUVE0gbW92ZS4gTk9QICovCj4gQEAgLTIwOCwxMSArMjEw
LDI1IEBAIHZvaWQgdHRtX21vdmVfbWVtY3B5KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8s
Cj4gICAJCXJldHVybjsKPiAgIAl9Cj4gICAKPiArCXdjX21lbWNweSA9ICgoIW9sZF9tYW4tPnVz
ZV90dCB8fCBiby0+dHRtLT5jYWNoaW5nICE9IHR0bV9jYWNoZWQpICYmCj4gKwkJICAgICBkcm1f
aGFzX21lbWNweV9mcm9tX3djKCkpOwo+ICsKPiArCS8qCj4gKwkgKiBXZSB1c2Ugc29tZSBuYXN0
eSBhbGlhc2luZyBmb3IgZHJtX21lbWNweV9mcm9tX3djLCBidXQgYXNzdW1pbmcKPiArCSAqIHRo
YXQgd2UgY2FuIG1vdmUgdG8gbWVtcmVtYXBwaW5nIGluIHRoZSBub3QgdG9vIGRpc3RhbnQgZnV0
dXJlLAo+ICsJICogcmVkdWNlIHRoZSBmcmFnaWxpdHkgZm9yIG5vdyB3aXRoIGEgYnVpbGQgYXNz
ZXJ0Lgo+ICsJICovCj4gKwlCVUlMRF9CVUdfT04ob2Zmc2V0b2YodHlwZW9mKG9sZF9tYXApLCB2
YWRkcikgIT0KPiArCQkgICAgIG9mZnNldG9mKHR5cGVvZihvbGRfbWFwKSwgdmFkZHJfaW9tZW0p
KTsKPiArCj4gICAJZm9yIChpID0gMDsgaSA8IG5ld19tZW0tPm51bV9wYWdlczsgKytpKSB7Cj4g
ICAJCW5ld19pdGVyLT5vcHMtPmttYXBfbG9jYWwobmV3X2l0ZXIsICZuZXdfbWFwLCBpKTsKPiAg
IAkJb2xkX2l0ZXItPm9wcy0+a21hcF9sb2NhbChvbGRfaXRlciwgJm9sZF9tYXAsIGkpOwo+ICAg
Cj4gLQkJaWYgKCFvbGRfbWFwLmlzX2lvbWVtICYmICFuZXdfbWFwLmlzX2lvbWVtKSB7Cj4gKwkJ
aWYgKHdjX21lbWNweSkgewo+ICsJCQlkcm1fbWVtY3B5X2Zyb21fd2MobmV3X21hcC52YWRkciwg
b2xkX21hcC52YWRkciwKPiArCQkJCQkgICBQQUdFX1NJWkUpOwo+ICsJCX0gZWxzZSBpZiAoIW9s
ZF9tYXAuaXNfaW9tZW0gJiYgIW5ld19tYXAuaXNfaW9tZW0pIHsKPiAgIAkJCW1lbWNweShuZXdf
bWFwLnZhZGRyLCBvbGRfbWFwLnZhZGRyLCBQQUdFX1NJWkUpOwo+ICAgCQl9IGVsc2UgaWYgKCFv
bGRfbWFwLmlzX2lvbWVtKSB7Cj4gICAJCQlkbWFfYnVmX21hcF9tZW1jcHlfdG8oJm5ld19tYXAs
IG9sZF9tYXAudmFkZHIsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
