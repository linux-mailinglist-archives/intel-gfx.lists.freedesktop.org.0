Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D533C1F90
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 08:53:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D32E66E9BE;
	Fri,  9 Jul 2021 06:53:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2081.outbound.protection.outlook.com [40.107.243.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94FAE6E982;
 Fri,  9 Jul 2021 06:53:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VDkqoFpRUHDwDWIH/PKXBsUkAQbM5nAUTY1E1x1SaDyuXYQLWqvd+l1D1hCkXWYn9V0OZYfqoAFzVtYE56Yakd34ZmUxile8IUymkYX3ZUEW7CeYyM+5BtWnO1HtsLfABnilhsZZdtK5sWWqEQ9jHgNFrsGGscruKEgUvvKvbMWZAi77Ye90UMNTCTuDsQ7RBCrwZVad/bgkiu66UPbQNqYNU3dWm5n87okSYcZY45fEUN6Fyfd3KCYmyvhvzDl2T7t6ErfDMKzeMsfzAGyVOBRlGVT81HOm0HHsQryO0SsryC4Q+KdxwNOsIxMcIMpXBf04xHz0i1oacb+Vqhevbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MCqJveBHj8aJeGUTMducIBuvq6+4kkTk0vNvmt1nvZ4=;
 b=fRwpADVYf+GCzF0pkec2Vr7IgY70UQ8WhTMwj8sZ+t958vbgCvvUryOo6VZB5fWHokvq0/GzJG9YQ/biyS6pJ1q8rKPmdfXh0IEQZWCk1ygmb/m1NInVPVFh7RsPcqphoczp7BmogOMx1XMiBS96e9DBFmaFgrnBqEO9CXcg0bkEXvYtEDtogYCPdO2MTgR/14cW4ZTxBAwL1A5QYNBRgbzKqH3kTiSHDLzSpeCDHWWONNUGlYYFoQgLVsdd7TiL3LDksHw6Oxa+NyYhlRr4+kU+m8gieFpjE59jgOqWA/3cgDnjh4DGM/o1KZn15KyDPeLAiKnL7P4zpDxFCf4Qtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MCqJveBHj8aJeGUTMducIBuvq6+4kkTk0vNvmt1nvZ4=;
 b=1+GmSXQWgAjS9Tf8Uu89QMSMOVciAjhqrc/BC68mKA6PKd6WiuXW4Y3RMSPp9e5zScUNseM2wro6oKUZxx4+ElDZXQzN48r3DPdRQOXwHv1TrnBFrr9viHC4qS1H7BXr2EpId4GznhdQOhgtm80Rejztjw0B4W5dorCPCKzRdcY=
Authentication-Results: amd.com; dkim=none (message not signed)
 header.d=none;amd.com; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB2420.namprd12.prod.outlook.com (2603:10b6:207:4c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.24; Fri, 9 Jul
 2021 06:53:23 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4308.023; Fri, 9 Jul 2021
 06:53:23 +0000
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
 <20210708173754.3877540-2-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <5588d1c3-833b-bd95-69e6-a103f2e8affa@amd.com>
Date: Fri, 9 Jul 2021 08:53:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210708173754.3877540-2-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-ClientProxiedBy: PR3P193CA0027.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:102:50::32) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:3da0:55de:64af:96f9]
 (2a02:908:1252:fb60:3da0:55de:64af:96f9) by
 PR3P193CA0027.EURP193.PROD.OUTLOOK.COM (2603:10a6:102:50::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4308.19 via Frontend Transport; Fri, 9 Jul 2021 06:53:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 07e94b2e-9869-4b59-5b5c-08d942a63e15
X-MS-TrafficTypeDiagnostic: BL0PR12MB2420:
X-LD-Processed: 3dd8961f-e488-4e60-8e11-a82d994e183d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BL0PR12MB2420C064FE064EF5D66984D583189@BL0PR12MB2420.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hdFHA944mkXEQ/nK06w+wNqFiyErQW6WbOTb/hP091fRyc9Giwmx6VwuMcnwUdHFZ1Jxe85kRHQqmNWizEvtlQVWXbFEbcj2V++90J+RxldEKGEsOAnQ9VlcB8sGlDDlAwdg5SO3alA3It0ae8YRoQIpuWVBhhutOP0pS1OfLM4nJdkeSIy6KXqMPZK61ngOtAmbibYeXSm13l5emJSh+boII95HXoNd853S6woXYnUsf2bYqycl57GU8NDQl/v4jpGL+9tEyveXUooWOz/Qjm8DiySrVl8FlO/IIxKSpw+PJvbVEwDc5EqkkmcVJRBOfZk1sMOjsF/lvHmXx0sSL5r1wKQVTkZtRh1GaOS2EB0O71Sit5H2myMEIB4QXQ5eIdb5HI4btk5wcUIr5tGw/GF/458zXeKwSuWp2K6QFzFp0hIloC69zfOqxWPFOOHHkE5c+m2yzoYKwivoNtf29v2gwwk4b1F0Xkg2v/7vZTXuENFAgnYUR6gFwQ3fzKtvCiW4c7IcwzAWCeFYrEtCdLHO2I+NQMsrGp4jysYdNXEsCFxew5+giPrhqzJK68h7IjmEmgRHjO0+SdjCiKPXzj81azshC3Ch9ywAeeAJ6+LoeLdW/fCQjQQ2gA2vnwu4j/W8Gv3f+7ue/DfWIu4vd1bjm8DM7KQiHANmgHaObumOlqOo6ybdcn7bkhhxVhyP+jM+bdiVy/kph/rscbUXlQK9XeCB9WGPPICBxu1zY7I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(376002)(136003)(366004)(396003)(2616005)(6486002)(4326008)(31686004)(5660300002)(66556008)(8676002)(83380400001)(478600001)(2906002)(8936002)(36756003)(316002)(54906003)(38100700002)(31696002)(66574015)(186003)(6666004)(86362001)(66476007)(110136005)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVdnc2NuajNJSFVNWDdaVUxZejBuVkg4NzBRZnFkblQ0M3dMZ0hVOWR3ZzZH?=
 =?utf-8?B?ZzlHd1NvdHptbGlmMDlqbVAybkIra3VJYWNVb0hXa0M5K0NMVmJXcmJCZTAr?=
 =?utf-8?B?enBXU1pnaWhELzBKUjNxZEtFZ2JvM3ZNdEVrMXZpQmt0UFBEeTZ3ci9UQjNL?=
 =?utf-8?B?ZkpBRkpmaEFIZkQwRmRadC84cWZPT0Zhc3VydE1FSUdicEpkM2piOHhPaE41?=
 =?utf-8?B?WUVDRHRBNlYwRmhBMVhyVjl0b1I0ZEwvaGptY25LUFlqbFR6RGFXQmtCUzY1?=
 =?utf-8?B?elRSVnZXbkZ3UHFNa1JCeXRPVFBydS9VWlk4OElaSER2VVF2Tld3V3NQRkpi?=
 =?utf-8?B?aHdDZ012Z2FDK1ZwaFo3QWpVdVMrVFhoaVFKdVdWQWo0TlpyUHFrN2lSanhl?=
 =?utf-8?B?QXJEd0dmM3h1SXdPYWFUUVJWcnVBY1ZYZzNHU3BnaGgySDF3TUlxWU5tWm9S?=
 =?utf-8?B?aGhSR1k1bzJhSWhOaHE0dnBsUXo0OTduenBUeERDaDB6emx6cE13RTkzUXha?=
 =?utf-8?B?T2xEVjFPUFc3ZGQvUlZmZEYrN0JsVkMrZUFFeUFNc3d2YnhGdWc4TzI3bURD?=
 =?utf-8?B?T20wdklZQTJuUEVJV0huNmFFWGFtQWsvTkdyZ1I2aHZkZFZMUEZlNG5rWEpq?=
 =?utf-8?B?K2R3NVZ5VjNmQjlDYnBXRUdEbFJTcmpRRC8wOFRTUzE5QlNua05mZjZGUlZv?=
 =?utf-8?B?ZXIxNTk2VkJYck5PSi9BYk5vMitnWHlRVXZYdC8zUE0zUFlwSGExb2dNcTJV?=
 =?utf-8?B?RnFjVGlWWTlqNTk4U3JTN0xld213eTJjb1NRQTRZVDl4K21EYjI1cHozc1Rt?=
 =?utf-8?B?WGQ1MmIwTXF0ZEJSSUJhWEhvN05sV3ZaN2MvbHNKbXFZckxQcWY0K1BTRmZE?=
 =?utf-8?B?bFU5TjF2L2dEOVVJcGtQbTBLRlFUUGJBR3Rqei9NNkUxVEx5S3VQRWlla3hL?=
 =?utf-8?B?b3hDYS9WZmY5ejBFbXF0WitteUpKbEE4QldSdHBiVlhDSk1udTdSbzdnSjNv?=
 =?utf-8?B?MFRuVTVRWTU2a2U0OEloblZUaHhqMFZDTUh3LzJRai9DSHY1MUhKLzhiNDFG?=
 =?utf-8?B?aitSL1gxWW9oOVV0M3NIQUU5cGtFR25HOFdVYmZvZmg5ZU5KQVlkR2JlWUZF?=
 =?utf-8?B?dlJwckVjbmV6dEdpQ1NoSWcxM05MS2pUOUY5ajZqSCtuL2dVdER2V3ZwaEc5?=
 =?utf-8?B?Q1E5RUg1aElydHBBTkhnMTZHQkx3Ulg5eU5KUGwyZ04xV0RxbEN5djFCb051?=
 =?utf-8?B?ZWpHaDJzUmZXbkRtVHNSd0NTM0FOMXdjZnZ6dTVoWEZmaE9Eak1EaE9DdzUz?=
 =?utf-8?B?eXZjNzhuaTVKdjY1VVZlSDRtYUtrTE5nVDBMODFVdXZvN09sYUhjaE5pakd3?=
 =?utf-8?B?Zk5wTUhaTGZ6MDVBRXFpRXE3aXY3YWxHS2NIMU0rMm8xMEFpaHVWaUJoR09S?=
 =?utf-8?B?OTFGSm5LQ0ViOXE4RDlLSnRhQnB5Y1lOSnh4TmxwZ2prakNMNVRrUnFZdDlH?=
 =?utf-8?B?U0g0RXhHRUF0MTNXNXV1cHpmeUdpc3hUVEM3VXJ1Ym9Vdi92VnM3UFlqQ0Vn?=
 =?utf-8?B?SUErckh5RmhvZE1vZWtueUJsSzVkOStYZ1VjTmVpdkpCL2Y2RkJtbGFqY2ZP?=
 =?utf-8?B?VERjOExxZVFTeDVoeFFpY0RFUHV1eWU5SVZZb2pjK2gxc0lPRTMydVN4VW1C?=
 =?utf-8?B?M01NOHZXeWM3WVd6STdwOXRvbFNKQXV2T2Y4akdYNXpOaGdCVGE0L29mNVNZ?=
 =?utf-8?B?Z2Z1a0dNOUJHWDNKRktUTVAvNVhkcmVxUGkraFF6bWljdzhDNHlpTUZ0ZG4w?=
 =?utf-8?B?N21NUUVnT1hrRHU2bGtaaCtsRW5ZS0xRWGhZanU2eW9wNm9wS2Zxd0NUUlZT?=
 =?utf-8?Q?wQiEIvdRSmbs9?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07e94b2e-9869-4b59-5b5c-08d942a63e15
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2021 06:53:22.8564 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rQAG036auN1rTj4y7ASMzCMUnYgkZy4acTAWyjYHvbQ9BoPQn7R6z/FpNjmwKDnR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2420
Subject: Re: [Intel-gfx] [PATCH v3 01/20] drm/sched: entity->rq selection
 cannot fail
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
 Jack Zhang <Jack.Zhang1@amd.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Luben Tuikov <luben.tuikov@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMDguMDcuMjEgdW0gMTk6Mzcgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IElmIGl0IGRvZXMs
IHNvbWVvbmUgbWFuYWdlZCB0byBzZXQgdXAgYSBzY2hlZF9lbnRpdHkgd2l0aG91dAo+IHNjaGVk
dWxlcnMsIHdoaWNoIGlzIGp1c3QgYSBkcml2ZXIgYnVnLgoKTkFLLCBpdCBpcyBwZXJmZWN0bHkg
dmFsaWQgZm9yIHJxIHNlbGVjdGlvbiB0byBmYWlsLgoKU2VlIGRybV9zY2hlZF9waWNrX2Jlc3Qo
KToKCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKCFzY2hlZC0+cmVhZHkpIHsK
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFJNX1dBUk4o
InNjaGVkdWxlciAlcyBpcyBub3QgcmVhZHksIHNraXBwaW5nIiwKIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2NoZWQtPm5h
bWUpOwogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250
aW51ZTsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9CgpUaGlzIGNhbiBoYXBwZW4g
d2hlbiBhIGRldmljZSByZXNldCBmYWlscyBmb3Igc29tZSBlbmdpbmUuCgpSZWdhcmRzLApDaHJp
c3RpYW4uCgo+Cj4gV2UgQlVHX09OKCkgaGVyZSBiZWNhdXNlIGluIHRoZSBuZXh0IHBhdGNoIGRy
bV9zY2hlZF9qb2JfaW5pdCgpIHdpbGwKPiBiZSBzcGxpdCB1cCwgd2l0aCBkcm1fc2NoZWRfam9i
X2FybSgpIG5ldmVyIGZhaWxpbmcuIEFuZCB0aGF0J3MgdGhlCj4gcGFydCB3aGVyZSB0aGUgcnEg
c2VsZWN0aW9uIHdpbGwgZW5kIHVwIGluLgo+Cj4gTm90ZSB0aGF0IGlmIGhhdmluZyBhbiBlbXB0
eSBzY2hlZF9saXN0IHNldCBvbiBhbiBlbnRpdHkgaXMgaW5kZWVkIGEKPiB2YWxpZCB1c2UtY2Fz
ZSwgd2UgY2FuIGtlZXAgdGhhdCBjaGVjayBpbiBqb2JfaW5pdCBldmVuIGFmdGVyIHRoZSBzcGxp
dAo+IGludG8gam9iX2luaXQvYXJtLgo+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBMdWJlbiBUdWlrb3YgPGx1YmVuLnR1aWtvdkBhbWQu
Y29tPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IENjOiBT
dGV2ZW4gUHJpY2UgPHN0ZXZlbi5wcmljZUBhcm0uY29tPgo+IENjOiBBbmRyZXkgR3JvZHpvdnNr
eSA8YW5kcmV5Lmdyb2R6b3Zza3lAYW1kLmNvbT4KPiBDYzogQm9yaXMgQnJlemlsbG9uIDxib3Jp
cy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4KPiBDYzogSmFjayBaaGFuZyA8SmFjay5aaGFuZzFA
YW1kLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5
LmMgfCAyICstCj4gICBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyAgIHwg
MyArLS0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5
LmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jCj4gaW5kZXggNzk1
NTRhYTRkYmIxLi42ZmMxMTZlZTczMDIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Nj
aGVkdWxlci9zY2hlZF9lbnRpdHkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIv
c2NoZWRfZW50aXR5LmMKPiBAQCAtNDUsNyArNDUsNyBAQAo+ICAgICogQGd1aWx0eTogYXRvbWlj
X3Qgc2V0IHRvIDEgd2hlbiBhIGpvYiBvbiB0aGlzIHF1ZXVlCj4gICAgKiAgICAgICAgICBpcyBm
b3VuZCB0byBiZSBndWlsdHkgY2F1c2luZyBhIHRpbWVvdXQKPiAgICAqCj4gLSAqIE5vdGU6IHRo
ZSBzY2hlZF9saXN0IHNob3VsZCBoYXZlIGF0IGxlYXN0IG9uZSBlbGVtZW50IHRvIHNjaGVkdWxl
Cj4gKyAqIE5vdGU6IHRoZSBzY2hlZF9saXN0IG11c3QgaGF2ZSBhdCBsZWFzdCBvbmUgZWxlbWVu
dCB0byBzY2hlZHVsZQo+ICAgICogICAgICAgdGhlIGVudGl0eQo+ICAgICoKPiAgICAqIFJldHVy
bnMgMCBvbiBzdWNjZXNzIG9yIGEgbmVnYXRpdmUgZXJyb3IgY29kZSBvbiBmYWlsdXJlLgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyBiL2RyaXZl
cnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jCj4gaW5kZXggMzNjNDE0ZDU1ZmFiLi4w
MWRkNDcxNTQxODEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hl
ZF9tYWluLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYwo+
IEBAIC01ODYsOCArNTg2LDcgQEAgaW50IGRybV9zY2hlZF9qb2JfaW5pdChzdHJ1Y3QgZHJtX3Nj
aGVkX2pvYiAqam9iLAo+ICAgCXN0cnVjdCBkcm1fZ3B1X3NjaGVkdWxlciAqc2NoZWQ7Cj4gICAK
PiAgIAlkcm1fc2NoZWRfZW50aXR5X3NlbGVjdF9ycShlbnRpdHkpOwo+IC0JaWYgKCFlbnRpdHkt
PnJxKQo+IC0JCXJldHVybiAtRU5PRU5UOwo+ICsJQlVHX09OKCFlbnRpdHktPnJxKTsKPiAgIAo+
ICAgCXNjaGVkID0gZW50aXR5LT5ycS0+c2NoZWQ7Cj4gICAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
