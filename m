Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1403B3516
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 19:59:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37DDC6EC7E;
	Thu, 24 Jun 2021 17:59:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2064.outbound.protection.outlook.com [40.107.220.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C828E6EC7E;
 Thu, 24 Jun 2021 17:59:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=guUfZBU0qdFYQ+a0kSW1ek6cZYV6F2ad7I7oyHqpg6LYe26KjhT6GPj/NzeGeank5LyLFMqULNkfSmrilwjtc6m/NNR409b07axEUv3kOjSa8SCOU5TnS6uGJ4tSz4TTymg1mM+RGtcIt8yqyaXpIw8lqQTNzkqFVTRiihZdMtWoz6xUWtD3xI8AmByXx6yuZknEF782PdAPg6MxBvBIqq2ewusAStMxH6PV1lQOx1V9RdCMpT6Arc3+ohoGOVjlrK+8KOMNvQ8fYx0oG2NPlz7kjt4LuvM6zAAOf9AodrIH+g2aBvafi0l4WYpHxXW3Mbo/zJ+8qzq0dtxbdGOlTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zpwBcVr0cg14ogkuHJH8Eol5xD1d4Fp+HNq+ekk0xLU=;
 b=LgDKVeaNcKR0l7axhIZHSbM7bWuMXI0EZjpsct0NcOgwyoMhf+lQ1hi6lO7nXn7L+/882CdMqDM4irHPG5xJ1fVAaN0HN1OwtFiEAoUfhQtAIErxcKG5Ik++mw7Urcvob/Po2yoS4BZa26OMYGGAW8ZPPbvtSzhNHA8GfsnPGsfRzar9Ph3UjaCH/JdtStEDFT02/Wwk+RWPeHm1ZzqN0/kLzpqsCl235sd1MnoJ9mxQOnugsoVX31N5rr6NXnEcxppWqp/8IzL5akoTN4gBMnPWPiJxR312lxnd5UKBKvZmzEGSSGIGCMpqifC2T+4XVbUjPmLbl1DzloDvBzd/IQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zpwBcVr0cg14ogkuHJH8Eol5xD1d4Fp+HNq+ekk0xLU=;
 b=PMjlL2Zaw3CrR2PNn5biKdXeEDO3VQgaAtG0NWtK7TUr4Was4LPRLLYGatQ1mv0FGtb0+n7ers/yF2kEcxIiCqHgpdKJKKMq8qo4aFc/5yzS4WWqLLIQUTmFoal9/s3HVvDMG8oRYdQPWOqRrSLHVaDtSzn6PWwbK3ttm3fGWVQ=
Authentication-Results: collabora.co.uk; dkim=none (message not signed)
 header.d=none;collabora.co.uk; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4222.namprd12.prod.outlook.com (2603:10b6:208:19a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Thu, 24 Jun
 2021 17:59:05 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4264.020; Thu, 24 Jun 2021
 17:59:05 +0000
To: Jason Ekstrand <jason@jlekstrand.net>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
References: <20210624174732.1754546-1-jason@jlekstrand.net>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <2b69abeb-7c97-fe6a-384c-2e1f86529dba@amd.com>
Date: Thu, 24 Jun 2021 19:58:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210624174732.1754546-1-jason@jlekstrand.net>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:c089:94ee:b4ef:e121]
X-ClientProxiedBy: PR0P264CA0147.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1b::15) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:c089:94ee:b4ef:e121]
 (2a02:908:1252:fb60:c089:94ee:b4ef:e121) by
 PR0P264CA0147.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1b::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4264.18 via Frontend Transport; Thu, 24 Jun 2021 17:59:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 04d733d1-ee9a-44e8-8f35-08d93739c1fc
X-MS-TrafficTypeDiagnostic: MN2PR12MB4222:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4222EA211EA0F3E958D6708683079@MN2PR12MB4222.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dyz6snTzICKmZVWCM9bgIKkFqIOB7xyzg3HlwMyJCXogdZm/vOBRJRq7nGfl9qVgt0ZlS4d7TmvVXO8hZYc5bEUkV2L+yHMK9wkOB8iD9V/97N+Yy4G3zXOIrPyfyeedVlgOGqTiU5L/Ckm4NgT3dUYRlrau7XhXHOVUCoJ/CBgwq/lJngYWExSzRIChtyQLDaDWpZ0A/Gdbt8HeTeP7NCBjSqoaJAJpd+HAh6N3MvXcjdYBJ9i6m+Bz+y2OBfBFm8FBfmuimwSW6B0X8pLNNuY2voDPDDBurR0H15jVrliVDlhbshnw0JTP3Wb3wLtVpiB/VtyPIhISK/q15J+OnGeN2CghQflAl7BDsgP3XbaS0I2CEC5HfPoUnzMCvBtbWM5Cgnnxiq7Ty8wL6HNnPrbfIHFXQLhKpWhKi/UxLfoHH++eKS1CU2kCNb4SsDV5WvvnFex81DyrM5hjCCXwNQHpTJrRKhcvgQ+FxkqNEAOzLBmxSx8586kBxxcAgB3OTTwNscNzgenmACt3dqQWZz0tMjpX3vRGtksig+p/mClmntgJvTDb0aaSbahnn8oCgFd3dSnFHTGnXEJnwyeTWca7WoaS/dIBPwtOjcbosWGc8S9IXIp7pYNDMY9ESVdiXSH1MBN1Rj4zQQw6/Awg2StK7CSdh0sv/zpZfi85YpXM5RCAwdD0i/jHg5ofFqLCLs7h/YQMz7tDfrg+NZP6yishRzcF0KSx7AxYtjWDGU0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(39860400002)(366004)(346002)(376002)(66574015)(5660300002)(66556008)(66476007)(66946007)(16526019)(186003)(4326008)(2906002)(6666004)(31696002)(86362001)(36756003)(478600001)(316002)(38100700002)(6486002)(83380400001)(8936002)(2616005)(8676002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTVTYVhIZkRnMUtRdDYvQjEwQkZ0MGEyRzZQTGsvQ3pZUnhYS2M0cFYwcmhW?=
 =?utf-8?B?QjExS2tNRFE1TmthcEo1dkdsNUdRYUxlY0ZFSTJhVHNnVVRxOTJoSjk1TjFJ?=
 =?utf-8?B?aWU2MGcvamRMNTdBUzRpLzN6M2VienVmWG9aZndPNVgwUGdzQW5hZnJOY242?=
 =?utf-8?B?aVVIdURMdm54WGprY3VHcXBMSlZ0Z3kwYnp4bHN3MkhCU1JpTHNPanFRZ0tB?=
 =?utf-8?B?VisxeURuNWs1bklRdWR3bCtPYnZIMWVFU1A4d2ZXSDZ6NHlITGdkSzFpT0xE?=
 =?utf-8?B?Z21GNHhEdDR4SHMrd1ZIODduMURDZ2FsdXU4cndVZ3BDRWdJa3VWM2FYdzFx?=
 =?utf-8?B?OVdGSG5ZblBXYUozOTJMS21MK1FrN3pnd0plR0p3NDZsaDc2T25ycjZpakpF?=
 =?utf-8?B?NXRHRmREakFhdkhzeHRHYWdub3g3YjhGNkxCRFQvTlpuek9TR2tWdHF2MkRj?=
 =?utf-8?B?RTh0VW5sNFZaRnhXQXZ0amNuY2xVdWFxSGMxR0hKMVRNMHlrV1R2L1ZMRVQ2?=
 =?utf-8?B?K3ZXaDh2Wm5NUm1seno2LzhKMC9rZFhhRXdvMmtRK3IrbThBS0drRlNRN3hq?=
 =?utf-8?B?aStkTjFnWitnTG9ham55TUtySi9RWHRqWVM0NmdSRlJXWk0yYlpSc25Ta0tL?=
 =?utf-8?B?ajlaazlFUm1kZ0dTNFo0RTAwVUZ4M1FjWVhSaUxqVHhHTHVONXlWNGREWWxr?=
 =?utf-8?B?STFFa2pmTFhUd1h4ZHpvUDI4QzZlc21UbjJVQnk2Wmc4YnJEdkFMT0I5MWg2?=
 =?utf-8?B?cldjT0ZoMDkyWURCanNjcU5zRkU4akZ0Zno3V2c2UXdwWWhMcG9jK0ZNV0RJ?=
 =?utf-8?B?cVYwWkZ3UVFEd1JZTzJoMG5oSzloQ1hvdC9MU2czRVBoTzloTjQzOWt2azcx?=
 =?utf-8?B?N1FFZnptUGZFSUNhbSt4dUl6cVBLa2ZRRlNjeWRPeDZlekFpNFo1SVQvVEEv?=
 =?utf-8?B?dWxtYUFCS2E0M08zRG5lTEcyODlqWW80V1NFR0VUanRUenVNd2JFbW1iSHoz?=
 =?utf-8?B?R2NxNS84RnVmTUFSS2M2U2dwbzJHcFhsR2dHREI2VlR1TzdubHJGa1lyS1Ra?=
 =?utf-8?B?RlF0NmhzZTRESnNlOHVsNVhsaTg3ZXZBcU1IYUtqcnFYQTZNV3VNZDdVYldw?=
 =?utf-8?B?bUxUNjJSRWVsbjZLQzB0dmI3dXpTb1dDd1FlYnVFV3FISEhNUkErbWRWTzhN?=
 =?utf-8?B?USszSVBWNjF0VndxaGV6LytmRVd5QjBaRnJXT2szMUN3Mkk5ZVJQTmRzK0F1?=
 =?utf-8?B?Vmp3K0VMZmZJVEhoREl0MUcvMHJYbkFDQTYwclJTVTBUdVlUNlpDMEVoaUNw?=
 =?utf-8?B?a1kvcGVzaHlWeklVYVREWXJsbXRRV0hKZ1ZkdHVVM1JETVEwTlVndGdDVkRa?=
 =?utf-8?B?RDJGZVphTTZiem51bFZGV2lxdSs2UWRXVlQxTFpRbWNyb3poMGRuRnorT1Nu?=
 =?utf-8?B?MjBaSElBbEtoa045MU5SSVc0cUNmTHYxMEdGbHg0cFlnbmY3U3JsVk1sQmZC?=
 =?utf-8?B?VWNEQkkwbzNiMFgvOUYxNzkwMHlaL010WUpXRW8rc2FXNWtuR0I4Q2RvYzFY?=
 =?utf-8?B?eGkvSGNKb3NnenBkYU9KUit1T044QUFGcFNFRUdnWVFMMGZBMWZka05yVStw?=
 =?utf-8?B?NjdpNURoUVgrL2tDRFpVLzVyQ1F2REFMZTY1aU8wby8xcFF3NVRhbDJtZUo0?=
 =?utf-8?B?SS8vZC9kMEQ5Unk1UnBYSzFUblZkakljVEkrK1piRzVubzErTFFqbjVRWEpX?=
 =?utf-8?B?Um9MOVVYKzR0U0ZNdFVqb0VnUVB4dGY0Zk5CMm5HdHZ1dVluRFJrSG1FOElH?=
 =?utf-8?B?dEdFRmtxZStNRkVJRDFUU255WXQ0U1M4TFllUUJXSExXOHNKTFVsb3R6NEIw?=
 =?utf-8?Q?u/XTK2cRs1dRB?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04d733d1-ee9a-44e8-8f35-08d93739c1fc
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2021 17:59:05.8293 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yBpkZNSe4OsNnqHmtx2qMGhQX8UgkAVL7pHKdWD3UECnBhqn96fv2ZnTTyshcgvh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4222
Subject: Re: [Intel-gfx] [PATCH] dma-buf/sync_file: Don't leak fences on
 merge failure
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
Cc: Gustavo Padovan <gustavo.padovan@collabora.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjQuMDYuMjEgdW0gMTk6NDcgc2NocmllYiBKYXNvbiBFa3N0cmFuZDoKPiBFYWNoIGFkZF9m
ZW5jZSgpIGNhbGwgZG9lcyBhIGRtYV9mZW5jZV9nZXQoKSBvbiB0aGUgcmVsZXZhbnQgZmVuY2Uu
ICBJbgo+IHRoZSBlcnJvciBwYXRoLCB3ZSB3ZXJlbid0IGNhbGxpbmcgZG1hX2ZlbmNlX3B1dCgp
IHNvIGFsbCB0aG9zZSBmZW5jZXMKPiBnb3QgbGVha2VkLiAgQWxzbywgaW4gdGhlIGtyZWFsbG9j
X2FycmF5IGZhaWx1cmUgY2FzZSwgd2Ugd2VyZW4ndAo+IGZyZWVpbmcgdGhlIGZlbmNlcyBhcnJh
eS4gIEluc3RlYWQsIGVuc3VyZSB0aGF0IGkgYW5kIGZlbmNlcyBhcmUgYWx3YXlzCj4gemVyby1p
bml0aWFsaXplZCBhbmQgZG1hX2ZlbmNlX3B1dCgpIGFsbCB0aGUgZmVuY2VzIGFuZCBrZnJlZShm
ZW5jZXMpIG9uCj4gZXZlcnkgZXJyb3IgcGF0aC4KPgo+IFNpZ25lZC1vZmYtYnk6IEphc29uIEVr
c3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KPiBGaXhlczogYTAyYjlkYzkwZDg0ICgiZG1h
LWJ1Zi9zeW5jX2ZpbGU6IHJlZmFjdG9yIGZlbmNlIHN0b3JhZ2UgaW4gc3RydWN0IHN5bmNfZmls
ZSIpCj4gQ2M6IEd1c3Rhdm8gUGFkb3ZhbiA8Z3VzdGF2by5wYWRvdmFuQGNvbGxhYm9yYS5jby51
az4KPiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgoKUmV2
aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KCj4g
LS0tCj4gICBkcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMgfCAxMyArKysrKysrLS0tLS0tCj4g
ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9z
eW5jX2ZpbGUuYwo+IGluZGV4IDIwZDliZGRiYjk4NWIuLjM5NGU2ZTFlOTY4NjAgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVm
L3N5bmNfZmlsZS5jCj4gQEAgLTIxMSw4ICsyMTEsOCBAQCBzdGF0aWMgc3RydWN0IHN5bmNfZmls
ZSAqc3luY19maWxlX21lcmdlKGNvbnN0IGNoYXIgKm5hbWUsIHN0cnVjdCBzeW5jX2ZpbGUgKmEs
Cj4gICAJCQkJCSBzdHJ1Y3Qgc3luY19maWxlICpiKQo+ICAgewo+ICAgCXN0cnVjdCBzeW5jX2Zp
bGUgKnN5bmNfZmlsZTsKPiAtCXN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZXMsICoqbmZlbmNlcywg
KiphX2ZlbmNlcywgKipiX2ZlbmNlczsKPiAtCWludCBpLCBpX2EsIGlfYiwgbnVtX2ZlbmNlcywg
YV9udW1fZmVuY2VzLCBiX251bV9mZW5jZXM7Cj4gKwlzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2Vz
ID0gTlVMTCwgKipuZmVuY2VzLCAqKmFfZmVuY2VzLCAqKmJfZmVuY2VzOwo+ICsJaW50IGkgPSAw
LCBpX2EsIGlfYiwgbnVtX2ZlbmNlcywgYV9udW1fZmVuY2VzLCBiX251bV9mZW5jZXM7Cj4gICAK
PiAgIAlzeW5jX2ZpbGUgPSBzeW5jX2ZpbGVfYWxsb2MoKTsKPiAgIAlpZiAoIXN5bmNfZmlsZSkK
PiBAQCAtMjM2LDcgKzIzNiw3IEBAIHN0YXRpYyBzdHJ1Y3Qgc3luY19maWxlICpzeW5jX2ZpbGVf
bWVyZ2UoY29uc3QgY2hhciAqbmFtZSwgc3RydWN0IHN5bmNfZmlsZSAqYSwKPiAgIAkgKiBJZiBh
IHN5bmNfZmlsZSBjYW4gb25seSBiZSBjcmVhdGVkIHdpdGggc3luY19maWxlX21lcmdlCj4gICAJ
ICogYW5kIHN5bmNfZmlsZV9jcmVhdGUsIHRoaXMgaXMgYSByZWFzb25hYmxlIGFzc3VtcHRpb24u
Cj4gICAJICovCj4gLQlmb3IgKGkgPSBpX2EgPSBpX2IgPSAwOyBpX2EgPCBhX251bV9mZW5jZXMg
JiYgaV9iIDwgYl9udW1fZmVuY2VzOyApIHsKPiArCWZvciAoaV9hID0gaV9iID0gMDsgaV9hIDwg
YV9udW1fZmVuY2VzICYmIGlfYiA8IGJfbnVtX2ZlbmNlczsgKSB7Cj4gICAJCXN0cnVjdCBkbWFf
ZmVuY2UgKnB0X2EgPSBhX2ZlbmNlc1tpX2FdOwo+ICAgCQlzdHJ1Y3QgZG1hX2ZlbmNlICpwdF9i
ID0gYl9mZW5jZXNbaV9iXTsKPiAgIAo+IEBAIC0yNzcsMTUgKzI3NywxNiBAQCBzdGF0aWMgc3Ry
dWN0IHN5bmNfZmlsZSAqc3luY19maWxlX21lcmdlKGNvbnN0IGNoYXIgKm5hbWUsIHN0cnVjdCBz
eW5jX2ZpbGUgKmEsCj4gICAJCWZlbmNlcyA9IG5mZW5jZXM7Cj4gICAJfQo+ICAgCj4gLQlpZiAo
c3luY19maWxlX3NldF9mZW5jZShzeW5jX2ZpbGUsIGZlbmNlcywgaSkgPCAwKSB7Cj4gLQkJa2Zy
ZWUoZmVuY2VzKTsKPiArCWlmIChzeW5jX2ZpbGVfc2V0X2ZlbmNlKHN5bmNfZmlsZSwgZmVuY2Vz
LCBpKSA8IDApCj4gICAJCWdvdG8gZXJyOwo+IC0JfQo+ICAgCj4gICAJc3RybGNweShzeW5jX2Zp
bGUtPnVzZXJfbmFtZSwgbmFtZSwgc2l6ZW9mKHN5bmNfZmlsZS0+dXNlcl9uYW1lKSk7Cj4gICAJ
cmV0dXJuIHN5bmNfZmlsZTsKPiAgIAo+ICAgZXJyOgo+ICsJd2hpbGUgKGkpCj4gKwkJZG1hX2Zl
bmNlX3B1dChmZW5jZXNbLS1pXSk7Cj4gKwlrZnJlZShmZW5jZXMpOwo+ICAgCWZwdXQoc3luY19m
aWxlLT5maWxlKTsKPiAgIAlyZXR1cm4gTlVMTDsKPiAgIAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
