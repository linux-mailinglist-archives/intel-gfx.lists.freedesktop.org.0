Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2A9388BDC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 12:43:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C23346E2D7;
	Wed, 19 May 2021 10:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2063.outbound.protection.outlook.com [40.107.92.63])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C4BB6E296;
 Wed, 19 May 2021 10:43:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YIoVAVxjL5Tv8mYGQwt2YQJ6/4w7lJ17P9/MHJB5PEl9ylw0HhnPf3ZRC1RCBJJ7FUkhgU2qUpTlQl/rmhw3+sw4fDLBc6cntg+NVcsxHiFhkEIC7H+pZoSNkZVAYAOKqmGD/8h+2Wj1ZipDoCN1w7vQMiIYRn6mWkxEvdr+zuk8UYt4vba1xhEehNFDcOiwAj+SILnlpeH33Y7XoJww6x3p8a4Ufd4MEKysTsxjTxUzXNHCIJsSqObEM+7f+m3XzWPaPh6fl6HvfOpsuwG/d3iCT/I3FYBYDArAZrF6lEvDspQqvNjK6l7OcLr5VBbP8YGaZOEo6C/HvYveFYve1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DCKG8Ghq7Ieeoyqxo4aU7bzkXq0IFkxIVx3h843EhQw=;
 b=LYLG3/E8nmvPGrHnewK8PQ6a138Jty38aVOA/6T8c7NJUiMXJimXqfFHmifzdlexAKZD3XflyzeDnMZwLbr1X6MTY77KiX5pGXy6cmw5iYG6njYdQkCsYCW7OA98lPyWblhWuDm9YbEMJqC4B2YIHTrDH42vVd5CfyDOT2+55cgpbwIWcc878/uH2S8UFpHjmZlysE9wYHyvpIA/jE5sNjykOB9pis4OEKXM/JNuRxOj2lWVpeSvaNjZHctjpqEKsILrE3J17uW4BeD8w96LIsXp1sHpbJizYjoLEeOgza+u2l38pNNaH5JkWNr8s9fQYPHzYXwzqsmy2K9Gz9rdzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DCKG8Ghq7Ieeoyqxo4aU7bzkXq0IFkxIVx3h843EhQw=;
 b=soYjzms/dyw6xAc999oQCyP3pAI6V4UxbXqQDFJnN0LJWbsuZ790yW+dxx2+FoZa8cdr8ifKZxa75kIxAUyeLh1MU4mK3uPjCKYI3ZxtdQq4zzLwT0mxDgZ4HKBdmTTFgepKstrI7kv84mHy1D+ZkdglEtq+Oa8ekhmvJ45M/u0=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4551.namprd12.prod.outlook.com (2603:10b6:208:263::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Wed, 19 May
 2021 10:43:18 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4129.032; Wed, 19 May 2021
 10:43:18 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-10-thomas.hellstrom@linux.intel.com>
 <c4cd4843-c3aa-1f01-fc73-bc9144fa478f@linux.intel.com>
 <60276369-dbfd-e0dc-548b-a9419ff4c7eb@amd.com>
 <471d8fd5-379f-e95a-4973-c50fadace7cb@linux.intel.com>
 <b909db91-5c61-4af5-135d-aa62d5e4b481@amd.com>
 <f5c008cb-5047-7cbf-0361-e4e58e38d6e0@linux.intel.com>
 <fb9a4898-5844-c1e5-7a24-cb50a9ad6df7@amd.com>
 <334dc2d2-2053-9e42-62be-58784e4256aa@linux.intel.com>
 <a627f340-492e-c2cd-f805-8fafdca8eb60@amd.com>
 <1be54cd2-5e50-c967-17a8-4b6d86fe71b1@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <a4e4c072-4041-c2a4-beb6-d9ed8cb15761@amd.com>
Date: Wed, 19 May 2021 12:43:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <1be54cd2-5e50-c967-17a8-4b6d86fe71b1@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:8e28:1d3:41f3:e15a]
X-ClientProxiedBy: PR0P264CA0124.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1a::16) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:8e28:1d3:41f3:e15a]
 (2a02:908:1252:fb60:8e28:1d3:41f3:e15a) by
 PR0P264CA0124.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1a::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4129.33 via Frontend Transport; Wed, 19 May 2021 10:43:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 766fef52-8c49-4fc1-d4b1-08d91ab2e9e1
X-MS-TrafficTypeDiagnostic: MN2PR12MB4551:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4551C5DB75652FACA90A5D47832B9@MN2PR12MB4551.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C2cTiCOcmm3oVZJSr2hQ3UkgL0+dcbzvjoGyY90BGN7yoCCFhJwaJE+dI+WmJMv8rSDfRBhYt7umXR/ZAtGlH4EuCc/AcREorlWoDAgG+JwKktulPV9gcTDujSLFd+lG3YdhoDpyauD5pr2oZnlBmmq4v6wv8/58327ZCoETVP8nnXgqafoktiXTiXIC0qBj5GLw8310DthgwXePIPw5+uGM315mGOOl+CUKqLxWJoTHIWrbkO+792CwDZYtvE9WFCOibmb3q3vB3GVLlCkZ9R3gdaUqzpHPSImTPyMiq8zdoPQ6km5Q3JGQFDrEVbkKcsxsdqBvuumRCUYr6hgRUCIsY6TDF1CdJC6LITes06HK2AFJeySmdIpThAs1rpZXvAm8xtKEXJBYkVc2DqwjkeQ3a1nSpfActB3aKe+oRKr4nX9dmzJGwsxzT9U9+x0x+Ov4PvxgRrXG1jJ3uyMqVk3XZ8JIp/c6FJYnDVO45wDxxT4wmen90VlpBBIom18CmKOcI7K4/ks3Z6w3GpPwOSa4OuZSqWI5NkV8lp48WW44ErsXA3/BKM4bCZtBJ0+u4HQxLpagIFxayI23B8PFmgAGamzi1O+t+AayQ+shd/XkxpjaMl6dLZ0NpgNzDGwzNZFFh3BQAHhvl1ubWW8GpVTtYOYYychC/gxBR+7jWVsRp/Zl3pCClzjQV8d/dsZg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(39860400002)(376002)(396003)(346002)(186003)(8676002)(316002)(2616005)(16526019)(8936002)(2906002)(6486002)(36756003)(66556008)(38100700002)(66476007)(5660300002)(66574015)(31686004)(31696002)(6666004)(53546011)(86362001)(52116002)(83380400001)(478600001)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?SnRtOXVlR0tmRlpLNUovSEZBcUZ5N21nRFE0MTd1ZmRmWlZJdU5PRC9QME9P?=
 =?utf-8?B?S3JjVTVvWmZDYXdTU3RLMjZHWjFSSlFWWVBjbE81aklza0pMbXRKZnM0VVBp?=
 =?utf-8?B?ZW5OOVZBWnJRQ2JyeDVnd01OanJPUmxQaVNPbWNFUTNmM2pRNEsxcFRJWVpS?=
 =?utf-8?B?UHBVRU5Mc1k0Q1AvK25oTm5XYnpxZ1JReEx0cTFtUWU3S1Q5eVg3c01JRlJR?=
 =?utf-8?B?bzVUaEIwMWVmbyt2OUx2YithUDZzQTVLUGZtMTd0ZEgxVDk3K3A3dTkxS21U?=
 =?utf-8?B?K2p2SUREai9uU3Q1MlArVFMwQ2lwT0pmWTZ4ZzdQUDZxdGZBZVpVME1HdEtr?=
 =?utf-8?B?djNCUHgyVDlLWWtnRHNieTczczhXRm9UdVl5YTNLRitVeEw4WHNGMGhjek5i?=
 =?utf-8?B?cjNLeTVnMm11a1p6NTJUSzlWdkVCekRQUUtZMDJ6czVZODVpcVhaQzBySzEv?=
 =?utf-8?B?QkVqYWVuUEpLMHFBYWRvU0FMNkVCQXZVbmU2V2lmTWxnUXI0QXhwZEJ0cGt0?=
 =?utf-8?B?c1ZMVU5OUmpZc1FHYXRkeWVUOEtNeXVRaVM0akZPdUtUMUwwWGlaM1lkd2Fy?=
 =?utf-8?B?alFqNmlPNTlpN2F1UmFBZEtTZnQwRXY4OW9mZjR1T1B4Y3BqTy9ldHpZS2RH?=
 =?utf-8?B?ZXBQdHVxQVpPbk1zcDYyNElOdFZjVWo0dXBlTEpocGt3ZVE4cEt6SzN3Uyt6?=
 =?utf-8?B?c1V3MGp5L2x2S3JyaFZRcThhakIyQTFnbjhPWlNpYTNFY2dOL1lVVVZGVFJ1?=
 =?utf-8?B?cDlsVFNxQ2xSZWxUazc4ZG1NUC9QaFg2a0svdGp4MmlqT1Y2YWtWTm5wcHBZ?=
 =?utf-8?B?RXZzZ3NJYkdlQU40RVQrcmE5ZVNqQmI0bC84c2pKdHZiS0dUcGdOeXR5YVkv?=
 =?utf-8?B?SGljaUN2ZGF6RDFRNXR2b28wZ3ZRc3ZrcGIyV2Q4UDBxaDAyWUdBdGF3QmNr?=
 =?utf-8?B?WDQvd3VDSGxGRTdIbDlEcE5PdThaT29BL2JFb05JcGFvY3BuVlBqVTRVYURM?=
 =?utf-8?B?VWtjcUVHRzYxSDZEWnhodGdzRnlUQ3FIRjhoMGxkY1VESmZlbnBHRGQ0b3E1?=
 =?utf-8?B?NHBYbUNrcWJDZ3dIQVFmMFBqOTE1eVlTWCs5ZnBrUUtvWHZrNC9TVFVqc1Iy?=
 =?utf-8?B?cG9LamoyS2JiTW5pdDlJcmhPZUZneDhVeDhjQ3V3QjNuNjZzZVQ3eUczYlNE?=
 =?utf-8?B?Wk0yRFR5SHFFVlNodUV3Z3BxL213dWtpNUJ1WE04cFhvMjJFa21YR2d1STNk?=
 =?utf-8?B?enByZGROV2JJQ3lPTjNiWDJ5NXk5bEF0NXlldkFFdmZMTUMrY0dWWi84SUR3?=
 =?utf-8?B?TCtwNUUySHZzellJMm1QNnJldmNXMkhUY2FJRksrU240aDNIZ0ZrRlI3Snlv?=
 =?utf-8?B?RUhNb1RFQmdSYmlCdjN4bmcrdVNqZngweHhpYnA0eEFsbHIzTklyZzhKekxi?=
 =?utf-8?B?cUxaV1dtN0VSSHBRSUlNMTQ5MWZIM2tRcDNybVpoVlhqNnVFVkJEcjM2a2ZR?=
 =?utf-8?B?K0VlL3BhRzMwekhLcDgxRUVMSit3UFpraktsSUd6Z3pIYlVHNGdRMTJidmE0?=
 =?utf-8?B?bFRxaXExV1Fvdms4RnVIQ3E3cEhHVzJVOHdkWnFiVm11U2R1MU5DZFFOREE2?=
 =?utf-8?B?UU1xSmJEWUlLUk5Fb3dRNmNYeU9aK1JSYmRiNlRCUU0vUDd1T0ZyUnQ5ZXVB?=
 =?utf-8?B?aUpXRzBWeDdHQ0tkS3hSREZ5eUhUYWMxYW5MempIVHVtME9pamVsOUxyYmJM?=
 =?utf-8?B?OWdXeGtPZHZWaVFFeEpDY3B2OEY1K2dqdnpTaGx5cUVvZUVvaGRYZGJsV0ts?=
 =?utf-8?B?aWtWY2x1TkhYSzE5NitqekpYYVRxS1RrYm95OGNtQWVDbGNYWVBkQXBsSHJD?=
 =?utf-8?Q?8TF9thyBHBbw4?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 766fef52-8c49-4fc1-d4b1-08d91ab2e9e1
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2021 10:43:18.1167 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EgsfCVXGFvIb58v/vA0sH+FO1sDOaL/eJRCjoW9yicRuGDZr40trxNYN8mHqz2Qd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4551
Subject: Re: [Intel-gfx] [PATCH v2 09/15] drm/ttm,
 drm/amdgpu: Allow the driver some control over swapping
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

QW0gMTkuMDUuMjEgdW0gMDg6Mjcgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPgo+IE9uIDUv
MTgvMjEgNjozMCBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4gQW0gMTguMDUuMjEgdW0g
MTg6MDcgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Cj4+PiBPbiA1LzE4LzIxIDU6NDIg
UE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Pj4gQW0gMTguMDUuMjEgdW0gMTc6Mzggc2No
cmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Pj4KPj4+Pj4gT24gNS8xOC8yMSA1OjI4IFBNLCBD
aHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4+Pj4gQW0gMTguMDUuMjEgdW0gMTc6MjAgc2Nocmll
YiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Pj4+Pgo+Pj4+Pj4+IE9uIDUvMTgvMjEgNToxOCBQTSwg
Q2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gQW0gMTgu
MDUuMjEgdW0gMTc6MTUgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Pj4+Pj4+Cj4+Pj4+
Pj4+PiBPbiA1LzE4LzIxIDEwOjI2IEFNLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToKPj4+Pj4+
Pj4+PiBXZSBhcmUgY2FsbGluZyB0aGUgZXZpY3Rpb25fdmFsdWFibGUgZHJpdmVyIGNhbGxiYWNr
IGF0IAo+Pj4+Pj4+Pj4+IGV2aWN0aW9uIHRpbWUgdG8KPj4+Pj4+Pj4+PiBkZXRlcm1pbmUgd2hl
dGhlciB3ZSBhY3R1YWxseSBjYW4gZXZpY3QgYSBidWZmZXIgb2JqZWN0Lgo+Pj4+Pj4+Pj4+IFRo
ZSB1cGNvbWluZyBpOTE1IFRUTSBiYWNrZW5kIG5lZWRzIHRoZSBzYW1lIGZ1bmN0aW9uYWxpdHkg
Cj4+Pj4+Pj4+Pj4gZm9yIHN3YXBvdXQsCj4+Pj4+Pj4+Pj4gYW5kIHRoYXQgbWlnaHQgYWN0dWFs
bHkgYmUgYmVuZWZpY2lhbCB0byBvdGhlciBkcml2ZXJzIGFzIHdlbGwuCj4+Pj4+Pj4+Pj4KPj4+
Pj4+Pj4+PiBBZGQgYW4gZXZpY3Rpb25fdmFsdWFibGUgY2FsbCBhbHNvIGluIHRoZSBzd2Fwb3V0
IHBhdGguIFRyeSAKPj4+Pj4+Pj4+PiB0byBrZWVwIHRoZQo+Pj4+Pj4+Pj4+IGN1cnJlbnQgYmVo
YXZpb3VyIGZvciBhbGwgZHJpdmVycyBieSByZXR1cm5pbmcgdHJ1ZSBpZiB0aGUgCj4+Pj4+Pj4+
Pj4gYnVmZmVyIG9iamVjdAo+Pj4+Pj4+Pj4+IGlzIGFscmVhZHkgaW4gdGhlIFRUTV9QTF9TWVNU
RU0gcGxhY2VtZW50LiBXZSBjaGFuZ2UgCj4+Pj4+Pj4+Pj4gYmVoYXZpb3VyIGZvciB0aGUKPj4+
Pj4+Pj4+PiBjYXNlIHdoZXJlIGEgYnVmZmVyIG9iamVjdCBpcyBpbiBhIFRUIGJhY2tlZCBwbGFj
ZW1lbnQgd2hlbiAKPj4+Pj4+Pj4+PiBzd2FwcGVkIG91dCwKPj4+Pj4+Pj4+PiBpbiB3aGljaCBj
YXNlIHRoZSBkcml2ZXJzIG5vcm1hbCBldmljdGlvbl92YWx1YWJsZSBwYXRoIGlzIHJ1bi4KPj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IEZpbmFsbHkgZXhwb3J0IHR0bV90dF91bnBvcHVsYXRlKCkgYW5k
IGRvbid0IHN3YXAgb3V0IGJvcwo+Pj4+Pj4+Pj4+IHRoYXQgYXJlIG5vdCBwb3B1bGF0ZWQuIFRo
aXMgYWxsb3dzIGEgZHJpdmVyIHRvIHB1cmdlIGEgYm8gYXQKPj4+Pj4+Pj4+PiBzd2Fwb3V0IHRp
bWUgaWYgaXRzIGNvbnRlbnQgaXMgbm8gbG9uZ2VyIHZhbHVhYmxlIHJhdGhlciB0aGFuIHRvCj4+
Pj4+Pj4+Pj4gaGF2ZSBUVE0gc3dhcCB0aGUgY29udGVudHMgb3V0Lgo+Pj4+Pj4+Pj4+Cj4+Pj4+
Pj4+Pj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4+
Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSAKPj4+Pj4+Pj4+PiA8dGhv
bWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gQ2hyaXN0
aWFuLAo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEhlcmUgd2UgaGF2ZSBhIHR0bV90dF91bnBvcHVsYXRl
KCkgZXhwb3J0IGFzIHdlbGwgYXQgdGhlIGVuZC4gCj4+Pj4+Pj4+PiBJIGZpZ3VyZSB5b3Ugd2ls
bCBwdXNoIGJhY2sgb24gdGhhdCBvbmUuIFdoYXQgd2UgcmVhbGx5IG5lZWQgCj4+Pj4+Pj4+PiBp
cyBhIGZ1bmN0aW9uYWxpdHkgdG8ganVzdCBkcm9wIHRoZSBibyBjb250ZW50cyBhbmQgZW5kIHVw
IGluIAo+Pj4+Pj4+Pj4gc3lzdGVtIG1lbW9yeSB1bnBvcHVsYXRlZC4gU2hvdWxkIEkgcGVyaGFw
cyBhZGQgYSB1dGlsaXR5IAo+Pj4+Pj4+Pj4gZnVuY3Rpb24gdG8gZG8gdGhhdCBpbnN0ZWFkPyBs
aWtlIHR0bV9ib19wdXJnZSgpPwo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBXZSBhbHJlYWR5IGhhdmUgdGhh
dC4gSnVzdCBjYWxsIHR0bV9ib192YWxpZGF0ZSgpIHdpdGhvdXQgYW55IAo+Pj4+Pj4+PiBwbGFj
ZSB0byBwdXQgdGhlIGJ1ZmZlci4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gU2VlIGhvdyB0dG1fYm9fcGlw
ZWxpbmVfZ3V0dGluZygpIGlzIHVzZWQuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IENocmlzdGlhbi4KPj4+
Pj4+Pgo+Pj4+Pj4+IE9LLCBzbyBpcyB0aGF0IHJlZW50cmFudCBmcm9tIHRoZSBtb3ZlKCkgb3Ig
c3dhcF9ub3RpZnkoKSBjYWxsYmFjay4KPj4+Pj4+Cj4+Pj4+PiBUaGF0IHNvdW5kcyBsaWtlIGEg
ZGVzaWduIGJ1ZyB0byBtZSBzaW5jZSB5b3Ugc2hvdWxkIG5ldmVyIG5lZWQgCj4+Pj4+PiB0byBk
byB0aGlzLgo+Pj4+Pj4KPj4+Pj4+IFdoZW4geW91IHdhbnQgdG8gZGVzdHJveSB0aGUgYmFja2lu
ZyBzdG9yZSBvZiBhIGJ1ZmZlciBkdXJpbmcgCj4+Pj4+PiBldmljdGlvbiB5b3Ugc2hvdWxkIGp1
c3QgZG8gdGhpcyBieSByZXR1cm5pbmcgYW4gZW1wdHkgcGxhY2VtZW50IAo+Pj4+Pj4gZnJvbSB0
aGUgZXZpY3RfZmxhZ3MgY2FsbGJhY2suCj4+Pj4+Cj4+Pj4+IFNvIHRoaXMgaXMgZm9yIHRoZSBm
dW5jdGlvbmFsaXR5IHdoZXJlIHRoZSB1c2VyIGhhcyBpbmRpY2F0ZWQgdGhhdCAKPj4+Pj4gdGhl
IGNvbnRlbnRzIGlzIG5vIGxvbmdlciBvZiB2YWx1ZSwgYnV0IHRoZSBidWZmZXIgaXRzZWxmCj4+
Pj4+IGlzIGNhY2hlZCB1bnRpbCBldmljdGVkIG9yIHN3YXBwZWQgb3V0IGZvciBwZXJmb3JtYW5j
ZSByZWFzb25zLiBTbyAKPj4+Pj4gdGhlIGFib3ZlIHdvdWxkIHdvcmsgZm9yIGV2aWN0aW9uLCBi
dXQgd2hhdCBhYm91dCBzd2Fwb3V0LiBDb3VsZCAKPj4+Pj4gd2UgYWRkIHNvbWUgc2ltaWxhciBm
dW5jdGlvbmFsaXR5IHRoZXJlPwo+Pj4+Cj4+Pj4gQW1kZ3B1IGhhcyB0aGUgc2FtZSBmdW5jdGlv
bmFsaXR5IGFuZCB5b3UgZG9uJ3QgbmVlZCB0byBoYW5kbGUgc3dhcCAKPj4+PiBhdCBhbGwuCj4+
Pj4KPj4+PiBKdXN0IHJldHVybiBmcm9tIHRoZSBldmljdF9mbGFncyB0aGF0IHlvdSB3YW50IHRv
IGRyb3AgdGhlIGJhY2tpbmcgCj4+Pj4gc3RvcmUgYXMgc29vbiBhcyB0aGUgQk8gbGVhdmVzIHRo
ZSBHVFQgZG9tYWluLgo+Pj4KPj4+IEhtbSwgdGhlIHBpcGVsaW5lX2d1dHRpbmcgZnVuY3Rpb24g
c2VlbXMgb2ssIGJ1dCBvdmVybHkgY29tcGxleCBpZiAKPj4+IHRoZSBibyBpcyBhbHJlYWR5IGlk
bGUsIEFtIEkgYWxsb3dlZCB0byBvcHRpbWl6ZSBpdCBzbGlnaHRseSBmb3IgdGhlIAo+Pj4gbGF0
dGVyIGNhc2U/Cj4+Cj4+IFllYWgsIHN1cmUuIFdlIGp1c3QgbmV2ZXIgaGF0IHRoYXQgdXNlIGNh
c2Ugc28gZmFyLgo+Cj4gT25lIHRoaW5nIGFib3V0IHRoZSBjb2RlIGhlcmUgdGhhdCBtYWtlcyBt
ZSB3b3JyaWVkIGlzIHRoYXQgdGhlIAo+ICJkZXN0aW5hdGlvbiIgdHRtX3R0IGlzIGFsbG9jYXRl
ZCAqYWZ0ZXIqIHBpcGVsaW5lX2d1dHRpbmcuIFdlJ3JlIG5vdCAKPiByZWFsbHkgYWxsb3dlZCB0
byBmYWlsIGhlcmUgYmVjYXVzZSB0aGF0IHdvdWxkIGxlYXZlIHRoZSBCTyBpbiBhIHN0YXRlIAo+
IHdoZXJlIGNvZGVwYXRocyAoZmF1bHQgZm9yIGV4YW1wbGUpIHRyeSB0byBhY2Nlc3MgYSBOVUxM
IHR0bV90dC4gV2hpbGUgCj4gdGhlIGlkbGUgY2FzZSBjYW4gZ2V0IGF3YXkgd2l0aCB0dG1fdHRf
dW5wb3B1bGF0ZSwgZm9yIHRoZSBhc3luYyBjYXNlLCAKPiB0dG1fdHQgcmVhbGx5IG5lZWRzIHRv
IGJlIHByZS1hbGxvY2F0ZWQsIHNvIHRoYXQgd2UgY2FuIGxlYXZlIHRoZSBibyAKPiBpbiBhIGNv
bnNpc3RlbnQgc3RhdGUuCgpXZWxsIHRoZSBvcmlnaW5hbCBwbGFuIHdhcyB0byBtYWtlIHR0IGFs
bG9jYXRpb24gcHVyZWx5IG9wdGlvbmFsLgoKQnV0IEkgZGlkbid0IGhhZCB0aGUgdGltZSBzbyBm
YXIgdG8gYWN0dWFsbHkgZml4IHRoYXQuCgpDaHJpc3RpYW4uCgo+Cj4gL1Rob21hcwo+Cj4KPj4K
Pj4gQ2hyaXN0aWFuLgo+Pgo+Pj4KPj4+IC9UaG9tYXMKPj4+Cj4+Pgo+Pj4+Cj4+Pj4gQ2hyaXN0
aWFuLgo+Pj4+Cj4+Pj4+Cj4+Pj4+IC9UaG9tYXMKPj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBSZWdhcmRz
LAo+Pj4+Pj4gQ2hyaXN0aWFuLgo+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IC9UaG9tYXMKPj4+Pj4+
Pgo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBUaGFua3MsCj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gVGhvbWFzCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+
Pj4+Cj4+Pj4KPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
