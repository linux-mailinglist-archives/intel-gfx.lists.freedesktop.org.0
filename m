Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7726B3D0AF6
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 11:08:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EE5389811;
	Wed, 21 Jul 2021 09:08:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1anam02on2056.outbound.protection.outlook.com [40.107.96.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16DE088D3D;
 Wed, 21 Jul 2021 09:08:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a88/J0GCMYYRFOmFuDKm4CTSAe1fBW6jMoawF9L3UxOFXp7leQSTR5bIZRQDF/MffcyB7KiLkkjvKIxhUPwDaTQmMb9670R237gLl1sq2lJa677+aJeC9Pn+cHISNFcv20pl4j/U8ms46FrDEW7FpgWkplj9aLF+kC3WDJuUg5bYcKuZyUlFP7XGVGS5F5B4rW3HxHHmpE0k2sHaOb1KsPM3ENocHZLoR0hRsJiLxFio6C62tHePNzaRtda6OX38gibw/B/lI3atOirKbi/tRIiP4HKVAhP9DSd8nS5uu7saWddUsmFDH7JxLIp3/WwiB0uTn+3anM0x5t7dZNzyNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v+nSU/iLgP2kIXiJmfYukiZcWDN/K7OuPqHVbJOWCHU=;
 b=jol2+0cYwMo/DhH5S6MD1iofnJeAUzdeuNFOiPUSmsouJeQLVcWYB2oXoihFY8BZba6jZDd2S1601RBD1SIcx4x0mndnXGeMJZxgewQg5swjN3HjoUOXQfDpIymopq4bj13s3SfcKZKi4VVteDogcpZLlYENPfJeHFCJN6A6zYsrBVSRYDCZdU8GLmyHSYDEzDuCosj4urEkAUfcDNuqxfjRuWiC3swYmOcTWm270Ufufrx36RD7FViWb/fllurDAIha3tRnXh8X/RauMadPQviOX5VPqtS0wPGusTkb0uNQhL0N5UhWO+OP0fi2BtDpb4XzFoTCndrxPVhFTwXqmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v+nSU/iLgP2kIXiJmfYukiZcWDN/K7OuPqHVbJOWCHU=;
 b=xWE4+O8Ykyj3c4PhFKqiJW1XzHAUUMW+ORl7nghZ04khq5Hf4GVOZYKCo8MNr9dvy4TMRXi3IaFb/Bfz+EbhRHtR13ZR+eowa3s4w1fwOUNPgtF2LO7u0lsleBdhPT+snvF8O0duYVGLWitQWJ0VEMshvJA6sTaN0KTQ9C18Rj8=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4608.namprd12.prod.outlook.com (2603:10b6:208:fd::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.23; Wed, 21 Jul
 2021 09:08:33 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4331.034; Wed, 21 Jul 2021
 09:08:33 +0000
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210720181357.2760720-1-jason@jlekstrand.net>
 <20210720181357.2760720-5-jason@jlekstrand.net>
 <8c6a14f1-5b42-bca2-ee59-7274667e794c@amd.com>
 <CAKMK7uGjaHes1U+h7-8GTx1rPVBGBJz5dJw7=Nhh5WEUJG1Yqw@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <acfefe81-1eae-af52-c045-1d2c1dcb162a@amd.com>
Date: Wed, 21 Jul 2021 11:08:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <CAKMK7uGjaHes1U+h7-8GTx1rPVBGBJz5dJw7=Nhh5WEUJG1Yqw@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: PR2P264CA0034.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:101:1::22) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:9bcf:837a:d18c:dc66]
 (2a02:908:1252:fb60:9bcf:837a:d18c:dc66) by
 PR2P264CA0034.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101:1::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.21 via Frontend Transport; Wed, 21 Jul 2021 09:08:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 816ab24a-1dcd-46ee-9c1a-08d94c271d94
X-MS-TrafficTypeDiagnostic: MN2PR12MB4608:
X-Microsoft-Antispam-PRVS: <MN2PR12MB460860CDD0AF613AF608F94083E39@MN2PR12MB4608.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sNIsOMAQD4X/c3IbpJMvuhzqwV/pxJqhtYhP7G6RZXXFXfb1z6njjIKGRaVZ8jf8FV4qYhatqCtRCRDI82PU8TMDrepS9+tOPCPBgD5/GqbmTlN9IDTPqMhQr28aooFySPYzZjB43KH3tCYE6OZhBUYZN8SFB0aGXPc21RacqR6q5aRGjH1J5U5SMNLlpEhuQXvTHUlzilJlEzgaAnNKvST4M/yMfdSKSVGpOYPPIStsEfU0QWdPEMxMbUz8NQliKhFHb0PbFhXAPL6DefpJctadaoaGWQMOpE3JOhwnrv/tQi2scGkhdmDltapFAWSmkObEykpAsqPV2XrocJ2hBsMbPelzippgH0Ag/IhiyCtblNcXyQHqHShW2aIhyvaVpF0+4cEKqDeCWdbn2h4RREXXVMRbUs0pLUeTR933hjZzCwKVsUjB8FcsxTG96RzqlDviAlpiFYub3XTDQrCQl7F8lGpFPlQ5j7DWg95u844wgkqUhm/N5hSW+phUDpKsUZ96foGJvCQLs6c+CX+1stePOCpr4abd/vuKXKlQV58lf6w2JN5yosIId7QwwWrcabkrN7zgSPOKUrgMpKxLvZEg2efi064vyg2EBZFTQ97qdAlzs4OPUhLWvt6nizKk7sdN2YIbE5a5tQNP3K37vHVJbsKpFCRmWCrWuLVe6+L8exBEcZpfvAQtejEGQR5O8ZIJwihnH0BKBr5DTyh/QxB3ulpzaYjKwuUwOjQRLxLoy/wTV2JRHmuCQvkVhJug
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(4326008)(186003)(66946007)(8936002)(6916009)(6666004)(66476007)(5660300002)(6486002)(2906002)(8676002)(508600001)(66574015)(86362001)(53546011)(36756003)(31696002)(66556008)(54906003)(966005)(45080400002)(2616005)(38100700002)(31686004)(83380400001)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUdHOTI5ajdiNGwvMTRKY1pVQk50Q3MvZDRvTm5KWTB5b3BHN1AxbVZiWmcx?=
 =?utf-8?B?Z1pFWXVuOUtBZlVMQ0pUMUNLVnloSFFNbHhjUk5GditTQ0FaTUxqaFZkM3VS?=
 =?utf-8?B?WGNrUWFVM3J3ci9ub0JUOW51NlpCRDRPYjRpMGZxekpoQ1kxNjJkT1hvdW8w?=
 =?utf-8?B?Y09HNzlvQ0Jzb3NoNmdVc1ZKcnhnMlk1TGVtdDd5S0VURUlsNndrdTQ5amli?=
 =?utf-8?B?VEZSSlBFQjMrS1JpWkZVVWk0Vk1xaEdrV3RjNWQ2MjZFRWRPTmovVlM0eUp2?=
 =?utf-8?B?NUc1QWpoeGVHSHVWNlFGN09zd29GT0NYbHQyQWN5UUFiaTBFWFNiRjFFbXg3?=
 =?utf-8?B?REg3T1cySjZ2WjRzejkvNTBnZERFTjBHS2Z3UE11czR4Y2FRUmFSV1JQdVpy?=
 =?utf-8?B?b2NPS0tSQU0vTHpzMk96eWV2eW50QWlKS084Nk5uT0Y2eU9GYktMcFhrUnFx?=
 =?utf-8?B?WEt1VDZzZmZEMW9POTgxSFNibWdrWWExelR2dGxaY2xCQmZSSmZEd053Q01a?=
 =?utf-8?B?V2o4Vjc2dXhSME5PbFJjMDYwZ1Q3UHU2L0RvSzRUcFpYcjVjQ2VFcVZ3bWVh?=
 =?utf-8?B?bjYyeFVRUWhUNXQ1Y3Jya3ZZQi9EV3FXcFBlbkxtc0JUQjRpOUI3bCtKT1ZK?=
 =?utf-8?B?aFR4aVFMS2F6VmlVQkxSMVVDM1h4UllONU81NmVtdUh6R0hlaXo3ZHRTajN6?=
 =?utf-8?B?bVRVdUNhU041SDYvdnhZSS9Fb0UvU3NxTlBjRW90RXVHNkhQdTdGTXN0dDBN?=
 =?utf-8?B?eXZHMDdmdEFxd0ZCRHBvbHozVTNtb2NhNFNMQ0Jaem9uMDhIT0tpbTRmTWFu?=
 =?utf-8?B?TktWQkRXV0pGU2RBanVZY1huV2VLclBOQjRQMDhRcHpaWUp1d29sZFFxTXJ3?=
 =?utf-8?B?WjB3ZFFLZXc1QmRBV29PUzJFOEl2ekJsYm0wRkY2Nk1FcWFHTUZTckZIeW9X?=
 =?utf-8?B?L1A1aXdqL2NKYXhaSXBjSkhTbkdwMjJTZnJNVTRRd1k2VTFzSml0T0tvamlJ?=
 =?utf-8?B?dmhvNHE5ZEZEcmJsV3Y3QW80TUt1cEgxVUJuUjhPeUFvM3oyVVR0Z21TQmNw?=
 =?utf-8?B?b0t5c1d1RDZuZE9QUHBScXFzTHhuYkJsem1Gd2dJQU9PR1VmckZielBOL1pV?=
 =?utf-8?B?MERLQVRWa3ZrVjJqWmJJMUhyUGNqOVVFTUtzeDZsNCt1NURSM0h1MXFaUmVP?=
 =?utf-8?B?V052aC82TGplUloyZ3hxajVQaFdlbnAxZDNhSFNOQ1NyenpVL1dKcWJ2aFNK?=
 =?utf-8?B?aW1JUE03ckZGQW8yMnR6MERSTFlpZzJqanV0YXZZK2xkb1dyTzk1V1Y2R01C?=
 =?utf-8?B?WGZkK3cwalhFRUJ4ZnEwY2Nuakl1K3MzSU5tL25yVU90MUUyWlFnNWtiUVV1?=
 =?utf-8?B?cHFTSEI1ZEZyemtkUis3TGJaa2tBbVhETzFPSjBVcDB3cnhEdkNBVzlreDdS?=
 =?utf-8?B?RUQ2ZzY3eWVkZ2RsbFd0WlNldHRzUjVKSndDU2FkSkc1VEtjWFk4UnRDNEs1?=
 =?utf-8?B?RU1PMnVWZkl5dldnc3d6b2pZL1l4SDRiUnY0SlgxODQ5cHVMdFo4NmxJOG1v?=
 =?utf-8?B?QWNYNDZWb1RqdjFQb29XTWx1cGhpbzlIN3FwdnBpZDlXd0kveFdveWJkNFlp?=
 =?utf-8?B?WlJ2YlJKZzBLNm5OUU14b1FwN2s4Rmxya1JYSVpPb3puMURPdUZudVlDcElj?=
 =?utf-8?B?Znc2STQ1U2ZFeTBjSDZIU3dNLzVDU2RRYkp5em4zU0FEMnhhSkRpTWlzNXJ6?=
 =?utf-8?B?M0F6aEREV0hQWUJyVmR0MjF5Q0hHcUNaM0c2eGpHOEpjN2lZWU45T0dMcUxW?=
 =?utf-8?B?MTZVOTRmZGplbkZWai9PaVJLR2NBOEFRRVBRRVFKSHIvRnR0VUUrcXIrM1pI?=
 =?utf-8?Q?plsfEKRLVOQTv?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 816ab24a-1dcd-46ee-9c1a-08d94c271d94
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2021 09:08:33.4919 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xY7zTvIIG3o4s/wKdxAxEcq51CglxBDGoRfY8dA36U7JSl6dhx018U70rtIoTQyJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4608
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/ttm: Force re-init if
 ttm_global_init() fails
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjEuMDcuMjEgdW0gMTE6MDYgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFdlZCwgSnVs
IDIxLCAyMDIxIGF0IDg6MzYgQU0gQ2hyaXN0aWFuIEvDtm5pZwo+IDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+IHdyb3RlOgo+PiBBbSAyMC4wNy4yMSB1bSAyMDoxMyBzY2hyaWViIEphc29uIEVr
c3RyYW5kOgo+Pj4gSWYgd2UgaGF2ZSBhIGZhaWx1cmUsIGRlY3JlbWVudCB0aGUgcmVmZXJlbmNl
IGNvdW50IHNvIHRoYXQgdGhlIG5leHQKPj4+IGNhbGwgdG8gdHRtX2dsb2JhbF9pbml0KCkgd2ls
bCBhY3R1YWxseSBkbyBzb21ldGhpbmcgaW5zdGVhZCBvZiBhc3N1bWUKPj4+IGV2ZXJ5dGhpbmcg
aXMgYWxsIHNldCB1cC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFz
b25Aamxla3N0cmFuZC5uZXQ+Cj4+PiBGaXhlczogNjJiNTNiMzdlNGIxICgiZHJtL3R0bTogdXNl
IGEgc3RhdGljIHR0bV9ib19nbG9iYWwgaW5zdGFuY2UiKQo+Pj4gUmV2aWV3ZWQtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4gSSd2ZSBqdXN0IHB1c2hl
ZCB0aGlzIHRvIGRybS1taXNjLWZpeGVzLgo+IERpZCB5b3Ugc2VlIHBhdGNoIDUvNiBoZXJlIHdo
aWNoIGlzIGFsc28gdG91Y2hpbmcgdHRtPwoKTm9wZSwgbmVpdGhlciB3aXRoIG15IEFNRCBub3Ig
d2l0aCBteSBHTWFpbCBhY2NvdW50LgoKTG9va3MgbGlrZSBzb21ldGhpbmcgaXMgd3Jvbmcgd2l0
aCB0aGUgZGlzdHJpYnV0aW9uIG9mIG1haWxzIG92ZXIgdGhlIAptYWlsaW5nIGxpc3QgZm9yIGEg
ZmV3IGRheXMgbm93LgoKR29pbmcgdG8gZG91YmxlIGNoZWNrIHBhdGNod29yay4KCkNocmlzdGlh
bi4KCj4gLURhbmllbAo+Cj4+IFRoYW5rcywKPj4gQ2hyaXN0aWFuLgo+Pgo+Pj4gLS0tCj4+PiAg
ICBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9kZXZpY2UuYyB8IDIgKysKPj4+ICAgIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3R0bS90dG1fZGV2aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9kZXZpY2UuYwo+
Pj4gaW5kZXggNWYzMWFjZWMzYWQ3Ni4uNTE5ZGVlYThlMzliNyAxMDA2NDQKPj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS90dG0vdHRtX2RldmljZS5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
dHRtL3R0bV9kZXZpY2UuYwo+Pj4gQEAgLTEwMCw2ICsxMDAsOCBAQCBzdGF0aWMgaW50IHR0bV9n
bG9iYWxfaW5pdCh2b2lkKQo+Pj4gICAgICAgIGRlYnVnZnNfY3JlYXRlX2F0b21pY190KCJidWZm
ZXJfb2JqZWN0cyIsIDA0NDQsIHR0bV9kZWJ1Z2ZzX3Jvb3QsCj4+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgJmdsb2ItPmJvX2NvdW50KTsKPj4+ICAgIG91dDoKPj4+ICsgICAgIGlm
IChyZXQpCj4+PiArICAgICAgICAgICAgIC0tdHRtX2dsb2JfdXNlX2NvdW50Owo+Pj4gICAgICAg
IG11dGV4X3VubG9jaygmdHRtX2dsb2JhbF9tdXRleCk7Cj4+PiAgICAgICAgcmV0dXJuIHJldDsK
Pj4+ICAgIH0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4+IGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20v
P3VybD1odHRwcyUzQSUyRiUyRmxpc3RzLmZyZWVkZXNrdG9wLm9yZyUyRm1haWxtYW4lMkZsaXN0
aW5mbyUyRmludGVsLWdmeCZhbXA7ZGF0YT0wNCU3QzAxJTdDY2hyaXN0aWFuLmtvZW5pZyU0MGFt
ZC5jb20lN0MwNWZmMjMzMjczYTU0Yjk4N2I2YjA4ZDk0YzI2ZDBhYyU3QzNkZDg5NjFmZTQ4ODRl
NjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2Mzc2MjQ1NTE4Njc0OTUzNDElN0NVbmtub3du
JTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTENKQlRp
STZJazFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdDMTAwMCZhbXA7c2RhdGE9NzBSWVE0OVE1OFZFRDVq
TXBKJTJGVzlWeTVpbVVuZGdoRlMwdFFXSWVEN2RrJTNEJmFtcDtyZXNlcnZlZD0wCj4KPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
