Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B4A3915A9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 13:02:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025DA6EC7C;
	Wed, 26 May 2021 11:02:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2055.outbound.protection.outlook.com [40.107.94.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77D1F6EC7B;
 Wed, 26 May 2021 11:02:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P8k+x2AD78WvK12zuH6IBOAVjm+DBO/afynmV24ELXcDod68VHzXw/mRvOzcfCx9vHVcMPXSLXqP3KoWKy3OkDoRmf6tH2jVzbCNHCYElWhG7FPjSUp8og5HNjIKPSmlwfsifHLOkWQkFMX6vQ8aJr7/5FtyLw86bEVKEWObqe7KPfv7lyztmKDLpWe6er32nhsKKnxhByLMh2VxNz88sMir8Nj93R4stotZh0YYoW4BgaRf4mBiR98YZZwW+v64aIwDdiAJGIKEMWPx/xlYc5W0kMrr3HMGznZuyCYiGuc0hcSr2Jx4KRi9vggEHaULVBslMvgKayP9BTl80JQPFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ulTTGLhFo2VIXzdRQaCbFiO3XmDCqAVYzJmK16hUo8M=;
 b=KSKDaDXxQScK0cJVs4X/++qQ/5cPu+4WZZ2Ur8PKNFm0f4og9VhxaNhaVnckmvdb8L3CB0tIApOyC5um35J1XlNpf12oN/EEABAB9vd/7mmFPBP3K/UTvfiZcl7FyfVM8dciHYMGzvGdtcaobdeUBy05ndZJpZQEpXi8+zl2H1GlsUO7sfFLA7boD9e+VPdvrD0N5KbyF3bVMu7fi+3awPjypxOaTy1MwLDr0nd0P4/rpfDKE9RPK0FPffAStHWPYfbQ4YuPeDM/dWGoMLqK2UgKVGZfXtkG4Q6IoXeN8Apeeb2xbSQfRnBSsvmiqInei8BVaFFcLELz00xn6guBug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ulTTGLhFo2VIXzdRQaCbFiO3XmDCqAVYzJmK16hUo8M=;
 b=t1YvJiqzMiAR7/FaIm8zNWYzDINUqJk1ArMh/kqdsB6MyqGPX0sOW2Z85TL4fEticNecB0q2GhMDtN1s4rLRHwXXGzvaiDdzTqXyVDvgTPpg8jiZuoOQ2zb+2GxqfnS/Dtekr28mVvclDd2/qoQ+UDiCNuPrTs0sMfLid9IXQgU=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4343.namprd12.prod.outlook.com (2603:10b6:208:26f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23; Wed, 26 May
 2021 11:02:16 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4150.027; Wed, 26 May 2021
 11:02:16 +0000
To: Jason Ekstrand <jason@jlekstrand.net>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
References: <20210525211753.1086069-1-jason@jlekstrand.net>
 <20210525211753.1086069-6-jason@jlekstrand.net>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <acc1737c-261d-9da5-7ea7-759063136c56@amd.com>
Date: Wed, 26 May 2021 13:02:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <20210525211753.1086069-6-jason@jlekstrand.net>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:7216:94bf:3812:bd88]
X-ClientProxiedBy: FR0P281CA0003.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::8) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:7216:94bf:3812:bd88]
 (2a02:908:1252:fb60:7216:94bf:3812:bd88) by
 FR0P281CA0003.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:15::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4173.12 via Frontend Transport; Wed, 26 May 2021 11:02:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fb92eb9e-e025-4954-af25-08d92035b96a
X-MS-TrafficTypeDiagnostic: MN2PR12MB4343:
X-Microsoft-Antispam-PRVS: <MN2PR12MB43437B491850331CE71193CF83249@MN2PR12MB4343.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:619;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nRt/ZWPh8xPdhMvi3OfP5P4Q58e7Z5wzJVcaa5uBXlya0rr1ATewrFfR27lqP2ajEPEF2Iz4WgPn+1ND6PkWnQ4aH5GQns2AF6m1gj1oeQ/bls9PWN1BQxaCCN5qb248Pqo9FOauXT3qSQsCzosyxwFoAgbQ4f3gu2YaGPbTmdaPw338+m2ZdSg6mxpoh1tw9M5ymOSZwwLXA/bN/RloszLqUxY2eZuU6Qs+gnGyMI8MOPelimjN6SDWkgP9REh4h90k9Z3B3gEltHZArMeSP/aZKWdwA2HM8P19uuNLE3jZlAf8lVw0mrc176TFkTZkkhbPxTGaeWBVRpPQsW4P/SxPfFE7rFqOFgskVHWy1ZWqF98O5pkC8MfJXo16kV/gY6FB6KBWdpAe+nljgke27wjTwmYcev1pKcZdPcSM2Rloi88dSBbgLLrZtvDiufEOWs6u0SNxcU/oGq4E+KBcEkmG4QZFQHKm8GBDy7GIjN8ssyXCiyGBiHTlftsayCJviakv9ifNZaeCRNaY0xIx/ScLosXzwVbc8FobrHXrA2Z3W08YX17LhOattBiqQWR2x6YYu3Lnam12PL4A7NGZjsdLtSSYLMoGxVuk4nsi3AZDtRvyb0TisEWRnUMxHPzEhsBEiBXw/5fJD81gAoIQ3bRShBmTmKncBhrxf7435p8LzXjcLKZqOzPAyrHKVvWo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(39860400002)(396003)(376002)(366004)(186003)(6486002)(38100700002)(2906002)(4326008)(16526019)(478600001)(66556008)(66574015)(66946007)(54906003)(31686004)(66476007)(8676002)(52116002)(83380400001)(8936002)(5660300002)(31696002)(86362001)(316002)(6666004)(2616005)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?Tk5XdmpHK05NcGJRUTd6WDZ5UGtndkpkVzB3WHVwUjgyVVlmWkJkK2NGRGlu?=
 =?utf-8?B?eEhwMktnMWw5ZFY1VnFBZTU4WXl2SWtrZ1c3OWE4QktPM1RnNmlWVmRmeE5p?=
 =?utf-8?B?YmludlpSUnU1bExWTTNZMmVXRnhMMWI2VU1aSCt6a0pDTTB6QXRaMUlhZkhr?=
 =?utf-8?B?MVdXTmk0ZVVnZ25oWU1zRmVMVFhpdXc0am96MzhqdDlKZjZvNzZhYm01UnQz?=
 =?utf-8?B?SHlJbWZoU3RZaUlBVTlNczM5UDZnUFNoSy9uNjdJdkZqMUpzZ3NWWmJPTmY4?=
 =?utf-8?B?VnJ2dWJMNjdWZC9ITTd5V1JHcEFsOUpBUVdzTjd1SFpBeWVCVVNGUkNYNDVF?=
 =?utf-8?B?VjE3ckhranpOWlNmbEVMc0Nyamp4eWlNUmhwOFB3Z2xJNFlYdUlIS0kyVkNm?=
 =?utf-8?B?NXdCQzkwaTQyeCsxL0tFRU00dUpFUG1uVE83TDd4eDE1TWpncHhsVDhVWHNx?=
 =?utf-8?B?TVBBeXROc241aVBoUVd5T1FqN0lRRjVmZWZ5NWRUbGt1bE9IWHgyR0VCL2hj?=
 =?utf-8?B?NlZ4SFpoY0NIOVBzbFUzM21NUWlUeStOTFplbHh4Skg2aU5Hbjg4U1lHVWZx?=
 =?utf-8?B?L3ZuNXhXZEo5TjEwWm9JbjJFVUtVd3FLWlc0dUZkbmxRdkFMT2drdzljdkN4?=
 =?utf-8?B?OFhtbkk4Yy9iUXVFUUVUMVgzTk9pNzVjZ2hoZUJoaFlyaTVJcU50OUNFTkQ4?=
 =?utf-8?B?aDFTRmRBMWVUKzlVS0U5UHVXaWZLbk93eDNTZlFmcldIWGhZZ0gxbS8wek16?=
 =?utf-8?B?blNRZm1kdUVITHpIWWp1TmpXak5oaENoV0pPSEJpdDdzbjNqME5pMnhiOE0x?=
 =?utf-8?B?cDVCQ1BMWXBDT2g0aEV4K3JlTWxHWENBekNiTGUrRHhZelJObHNiRjFLZDFJ?=
 =?utf-8?B?ZmtRNkNoY01aU0crZWVsYlYvcTc2QS9ycllNaCtMUk05NnpDZzJBT2U0UVQ3?=
 =?utf-8?B?d0FHYW1iaW9xK1hzb0M3L2lUUysyZ1MxSjNUZzVPaC9OS3lGZEdrZG5oWHR2?=
 =?utf-8?B?MlZoeUxQZ2UwZ0w4SFRGZ3JvSGU1QzlTbTBzMldtNHlJU01Tb3IwamJaUWhi?=
 =?utf-8?B?cFFBbStiMk8zS0ZRa3pmMDNjOUg2K1N2bEhMMzgwbzR4NTVUcnhtb2N5V052?=
 =?utf-8?B?N1kyK3F6K1lHMW5XbU5mR2d6S21RelAydGpLUnJIbDcyWDJITjZ0TlRycDRl?=
 =?utf-8?B?MXZzOENDS1A5ZG00cHE2VHg3d2piRXYrblhzMEhTV3J6d0ZOU2FpSVoxbjg3?=
 =?utf-8?B?M21XM3dTZDBBcUpoRmJ6eGdtQklCOHB4MGpCOXlZMmNvc0R1b0haVmVsUHll?=
 =?utf-8?B?NEZNMHJOWjhOeTVJSUZuVkF2bUZmQmQwb1V0L3VqdmpoWElpVUtQMkVOa3VB?=
 =?utf-8?B?UDBsek84L1pSQllyQXZLNzZZYkNhZlp1d2hzNXB5cHBFaHJnZG5NRXJBeitw?=
 =?utf-8?B?ZFo5UTJrSnp6TTFhekUzeWFPbHE2R0lzT2xacmNmdlc5N1pGSm52QVVBc3dk?=
 =?utf-8?B?OW90NlFqWUZNRWpFLzAwOU5BSWsrZStjT1U1L01WUXlLNU0xWW5iWTZXNmhr?=
 =?utf-8?B?bzBNMEdMVU5yOTNRRU1uYmNiaHc2a3M5UXFQR2JIVytXaStxYnZqa21aU0pN?=
 =?utf-8?B?amxTbmNaeEwxVXRtVjlMMWtQc0xZTFZBZEloakJzOS9GRGcrcWl2WkloRXlO?=
 =?utf-8?B?UlF2S25sUHpYSllxZDloQzJYa2UwUStSeGxiVitoVXBTTHdmVW1QSzY1emJ1?=
 =?utf-8?B?YWQyL3ZmSUM2N2JlNzJnYTkyTndYdzZ6b1dMQ09JRWQ3OEpvU1hUNE9rNGpu?=
 =?utf-8?B?czZndnVVZGNlUXZiZG5tOUkwWCt6RUFiS1A1NGtVTUEwMzJzYmh0Uks4WnVU?=
 =?utf-8?Q?mjNJ6SJ5uG8Ue?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb92eb9e-e025-4954-af25-08d92035b96a
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2021 11:02:16.7497 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ++imsC5OkPRYV1COb0i2Rt1kFC1VK3B9zHo+T/D44K1nMiMKjoro4WjL+kbxar6V
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4343
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
Cc: Simon Ser <contact@emersion.fr>, Sumit Semwal <sumit.semwal@linaro.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjUuMDUuMjEgdW0gMjM6MTcgc2NocmllYiBKYXNvbiBFa3N0cmFuZDoKPiBNb2Rlcm4gdXNl
cnNwYWNlIEFQSXMgbGlrZSBWdWxrYW4gYXJlIGJ1aWx0IG9uIGFuIGV4cGxpY2l0Cj4gc3luY2hy
b25pemF0aW9uIG1vZGVsLiAgVGhpcyBkb2Vzbid0IGFsd2F5cyBwbGF5IG5pY2VseSB3aXRoIHRo
ZQo+IGltcGxpY2l0IHN5bmNocm9uaXphdGlvbiB1c2VkIGluIHRoZSBrZXJuZWwgYW5kIGFzc3Vt
ZWQgYnkgWDExIGFuZAo+IFdheWxhbmQuICBUaGUgY2xpZW50IC0+IGNvbXBvc2l0b3IgaGFsZiBv
ZiB0aGUgc3luY2hyb25pemF0aW9uIGlzbid0IHRvbwo+IGJhZCwgYXQgbGVhc3Qgb24gaW50ZWws
IGJlY2F1c2Ugd2UgY2FuIGNvbnRyb2wgd2hldGhlciBvciBub3QgaTkxNQo+IHN5bmNocm9uaXpl
cyBvbiB0aGUgYnVmZmVyIGFuZCB3aGV0aGVyIG9yIG5vdCBpdCdzIGNvbnNpZGVyZWQgd3JpdHRl
bi4KPgo+IFRoZSBoYXJkZXIgcGFydCBpcyB0aGUgY29tcG9zaXRvciAtPiBjbGllbnQgc3luY2hy
b25pemF0aW9uIHdoZW4gd2UgZ2V0Cj4gdGhlIGJ1ZmZlciBiYWNrIGZyb20gdGhlIGNvbXBvc2l0
b3IuICBXZSdyZSByZXF1aXJlZCB0byBiZSBhYmxlIHRvCj4gcHJvdmlkZSB0aGUgY2xpZW50IHdp
dGggYSBWa1NlbWFwaG9yZSBhbmQgVmtGZW5jZSByZXByZXNlbnRpbmcgdGhlIHBvaW50Cj4gaW4g
dGltZSB3aGVyZSB0aGUgd2luZG93IHN5c3RlbSAoY29tcG9zaXRvciBhbmQvb3IgZGlzcGxheSkg
ZmluaXNoZWQKPiB1c2luZyB0aGUgYnVmZmVyLiAgV2l0aCBjdXJyZW50IEFQSXMsIGl0J3MgdmVy
eSBoYXJkIHRvIGRvIHRoaXMgaW4gc3VjaAo+IGEgd2F5IHRoYXQgd2UgZG9uJ3QgZ2V0IGNvbmZ1
c2VkIGJ5IHRoZSBWdWxrYW4gZHJpdmVyJ3MgYWNjZXNzIG9mIHRoZQo+IGJ1ZmZlci4gIEluIHBh
cnRpY3VsYXIsIG9uY2Ugd2UgdGVsbCB0aGUga2VybmVsIHRoYXQgd2UncmUgcmVuZGVyaW5nIHRv
Cj4gdGhlIGJ1ZmZlciBhZ2FpbiwgYW55IENQVSB3YWl0cyBvbiB0aGUgYnVmZmVyIG9yIEdQVSBk
ZXBlbmRlbmNpZXMgd2lsbAo+IHdhaXQgb24gc29tZSBvZiB0aGUgY2xpZW50IHJlbmRlcmluZyBh
bmQgbm90IGp1c3QgdGhlIGNvbXBvc2l0b3IuCj4KPiBUaGlzIG5ldyBJT0NUTCBzb2x2ZXMgdGhp
cyBwcm9ibGVtIGJ5IGFsbG93aW5nIHVzIHRvIGdldCBhIHNuYXBzaG90IG9mCj4gdGhlIGltcGxp
Y2l0IHN5bmNocm9uaXphdGlvbiBzdGF0ZSBvZiBhIGdpdmVuIGRtYS1idWYgaW4gdGhlIGZvcm0g
b2YgYQo+IHN5bmMgZmlsZS4gIEl0J3MgZWZmZWN0aXZlbHkgdGhlIHNhbWUgYXMgYSBwb2xsKCkg
b3IgSTkxNV9HRU1fV0FJVCBvbmx5LAo+IGluc3RlYWQgb2YgQ1BVIHdhaXRpbmcgZGlyZWN0bHks
IGl0IGVuY2Fwc3VsYXRlcyB0aGUgd2FpdCBvcGVyYXRpb24sIGF0Cj4gdGhlIGN1cnJlbnQgbW9t
ZW50IGluIHRpbWUsIGluIGEgc3luY19maWxlIHNvIHdlIGNhbiBjaGVjay93YWl0IG9uIGl0Cj4g
bGF0ZXIuICBBcyBsb25nIGFzIHRoZSBWdWxrYW4gZHJpdmVyIGRvZXMgdGhlIHN5bmNfZmlsZSBl
eHBvcnQgZnJvbSB0aGUKPiBkbWEtYnVmIGJlZm9yZSB3ZSByZS1pbnRyb2R1Y2UgaXQgZm9yIHJl
bmRlcmluZywgaXQgd2lsbCBvbmx5IGNvbnRhaW4KPiBmZW5jZXMgZnJvbSB0aGUgY29tcG9zaXRv
ciBvciBkaXNwbGF5LiAgVGhpcyBhbGxvd3MgdG8gYWNjdXJhdGVseSB0dXJuCj4gaXQgaW50byBh
IFZrRmVuY2Ugb3IgVmtTZW1hcGhvcmUgd2l0aG91dCBhbnkgb3Zlci0gc3luY2hyb25pemF0aW9u
LgoKUmVnYXJkaW5nIHRoYXQsIHdoeSBkbyB3ZSBhY3R1YWxseSB1c2UgYSBzeW5jZmlsZSBhbmQg
bm90IGEgZHJtX3N5bmNvYmogCmhlcmU/CgpUaGUgbGF0ZXIgc2hvdWxkIGJlIG11Y2ggY2xvc2Vy
IHRvIGEgVnVsa2FuIHRpbWVsaW5lIHNlbWFwaG9yZS4KCkNocmlzdGlhbi4KCj4KPiB2MiAoSmFz
b24gRWtzdHJhbmQpOgo+ICAgLSBVc2UgYSB3cmFwcGVyIGRtYV9mZW5jZV9hcnJheSBvZiBhbGwg
ZmVuY2VzIGluY2x1ZGluZyB0aGUgbmV3IG9uZQo+ICAgICB3aGVuIGltcG9ydGluZyBhbiBleGNs
dXNpdmUgZmVuY2UuCj4KPiB2MyAoSmFzb24gRWtzdHJhbmQpOgo+ICAgLSBMb2NrIGFyb3VuZCBz
ZXR0aW5nIHNoYXJlZCBmZW5jZXMgYXMgd2VsbCBhcyBleGNsdXNpdmUKPiAgIC0gTWFyayBTSUdO
QUxfU1lOQ19GSUxFIGFzIGEgcmVhZC13cml0ZSBpb2N0bC4KPiAgIC0gSW5pdGlhbGl6ZSByZXQg
dG8gMCBpbiBkbWFfYnVmX3dhaXRfc3luY19maWxlCj4KPiB2NCAoSmFzb24gRWtzdHJhbmQpOgo+
ICAgLSBVc2UgdGhlIG5ldyBkbWFfcmVzdl9nZXRfc2luZ2xldG9uIGhlbHBlcgo+Cj4gdjUgKEph
c29uIEVrc3RyYW5kKToKPiAgIC0gUmVuYW1lIHRoZSBJT0NUTHMgdG8gaW1wb3J0L2V4cG9ydCBy
YXRoZXIgdGhhbiB3YWl0L3NpZ25hbAo+ICAgLSBEcm9wIHRoZSBXUklURSBmbGFnIGFuZCBhbHdh
eXMgZ2V0L3NldCB0aGUgZXhjbHVzaXZlIGZlbmNlCj4KPiB2NiAoSmFzb24gRWtzdHJhbmQpOgo+
ICAgLSBEcm9wIHRoZSBzeW5jX2ZpbGUgaW1wb3J0IGFzIGl0IHdhcyBhbGwtYXJvdW5kIHNrZXRj
aHkgYW5kIG5vdCBuZWFybHkKPiAgICAgYXMgdXNlZnVsIGFzIGltcG9ydC4KPiAgIC0gUmUtaW50
cm9kdWNlIFJFQUQvV1JJVEUgZmxhZyBzdXBwb3J0IGZvciBleHBvcnQKPiAgIC0gUmV3b3JrIHRo
ZSBjb21taXQgbWVzc2FnZQo+Cj4gdjcgKEphc29uIEVrc3RyYW5kKToKPiAgIC0gUmVxdWlyZSBh
dCBsZWFzdCBvbmUgc3luYyBmbGFnCj4gICAtIEZpeCBhIHJlZmNvdW50aW5nIGJ1ZzogZG1hX3Jl
c3ZfZ2V0X2V4Y2woKSBkb2Vzbid0IHRha2UgYSByZWZlcmVuY2UKPiAgIC0gVXNlIF9yY3UgaGVs
cGVycyBzaW5jZSB3ZSdyZSBhY2Nlc3NpbmcgdGhlIGRtYV9yZXN2IHJlYWQtb25seQo+Cj4gdjgg
KEphc29uIEVrc3RyYW5kKToKPiAgIC0gUmV0dXJuIC1FTk9NRU0gaWYgdGhlIHN5bmNfZmlsZV9j
cmVhdGUgZmFpbHMKPiAgIC0gUHJlZGljYXRlIHN1cHBvcnQgb24gSVNfRU5BQkxFRChDT05GSUdf
U1lOQ19GSUxFKQo+Cj4gdjkgKEphc29uIEVrc3RyYW5kKToKPiAgIC0gQWRkIGRvY3VtZW50YXRp
b24gZm9yIHRoZSBuZXcgaW9jdGwKPgo+IHYxMCAoSmFzb24gRWtzdHJhbmQpOgo+ICAgLSBHbyBi
YWNrIHRvIGRtYV9idWZfc3luY19maWxlIGFzIHRoZSBpb2N0bCBzdHJ1Y3QgbmFtZQo+Cj4gdjEx
IChEYW5pZWwgVmV0dGVyKToKPiAgIC0gR28gYmFjayB0byBkbWFfYnVmX2V4cG9ydF9zeW5jX2Zp
bGUgYXMgdGhlIGlvY3RsIHN0cnVjdCBuYW1lCj4gICAtIEJldHRlciBrZXJuZWxkb2MgZGVzY3Jp
YmluZyB3aGF0IHRoZSByZWFkL3dyaXRlIGZsYWdzIGRvCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYXNv
biBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Cj4gQWNrZWQtYnk6IFNpbW9uIFNlciA8
Y29udGFjdEBlbWVyc2lvbi5mcj4KPiBBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPgo+IFJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwu
dmV0dGVyQGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8u
b3JnPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50
ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyAgICB8IDY3ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAgaW5jbHVkZS91YXBpL2xpbnV4L2Rt
YS1idWYuaCB8IDM1ICsrKysrKysrKysrKysrKysrKysKPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTAy
IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+IGluZGV4IGVkNjQ1MWQ1NWQ2NjMuLjY1YTk1
NzRlZTA0ZWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ICsrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiBAQCAtMjAsNiArMjAsNyBAQAo+ICAgI2luY2x1
ZGUgPGxpbnV4L2RlYnVnZnMuaD4KPiAgICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiAgICNp
bmNsdWRlIDxsaW51eC9zZXFfZmlsZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvc3luY19maWxlLmg+
Cj4gICAjaW5jbHVkZSA8bGludXgvcG9sbC5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L2RtYS1yZXN2
Lmg+Cj4gICAjaW5jbHVkZSA8bGludXgvbW0uaD4KPiBAQCAtMTkxLDYgKzE5Miw5IEBAIHN0YXRp
YyBsb2ZmX3QgZG1hX2J1Zl9sbHNlZWsoc3RydWN0IGZpbGUgKmZpbGUsIGxvZmZfdCBvZmZzZXQs
IGludCB3aGVuY2UpCj4gICAgKiBOb3RlIHRoYXQgdGhpcyBvbmx5IHNpZ25hbHMgdGhlIGNvbXBs
ZXRpb24gb2YgdGhlIHJlc3BlY3RpdmUgZmVuY2VzLCBpLmUuIHRoZQo+ICAgICogRE1BIHRyYW5z
ZmVycyBhcmUgY29tcGxldGUuIENhY2hlIGZsdXNoaW5nIGFuZCBhbnkgb3RoZXIgbmVjZXNzYXJ5
Cj4gICAgKiBwcmVwYXJhdGlvbnMgYmVmb3JlIENQVSBhY2Nlc3MgY2FuIGJlZ2luIHN0aWxsIG5l
ZWQgdG8gaGFwcGVuLgo+ICsgKgo+ICsgKiBBcyBhbiBhbHRlcm5hdGl2ZSB0byBwb2xsKCksIHRo
ZSBzZXQgb2YgZmVuY2VzIG9uIERNQSBidWZmZXIgY2FuIGJlCj4gKyAqIGV4cG9ydGVkIGFzIGEg
JnN5bmNfZmlsZSB1c2luZyAmZG1hX2J1Zl9zeW5jX2ZpbGVfZXhwb3J0Lgo+ICAgICovCj4gICAK
PiAgIHN0YXRpYyB2b2lkIGRtYV9idWZfcG9sbF9jYihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwg
c3RydWN0IGRtYV9mZW5jZV9jYiAqY2IpCj4gQEAgLTM2Miw2ICszNjYsNjQgQEAgc3RhdGljIGxv
bmcgZG1hX2J1Zl9zZXRfbmFtZShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBjb25zdCBjaGFyIF9f
dXNlciAqYnVmKQo+ICAgCXJldHVybiByZXQ7Cj4gICB9Cj4gICAKPiArI2lmIElTX0VOQUJMRUQo
Q09ORklHX1NZTkNfRklMRSkKPiArc3RhdGljIGxvbmcgZG1hX2J1Zl9leHBvcnRfc3luY19maWxl
KHN0cnVjdCBkbWFfYnVmICpkbWFidWYsCj4gKwkJCQkgICAgIHZvaWQgX191c2VyICp1c2VyX2Rh
dGEpCj4gK3sKPiArCXN0cnVjdCBkbWFfYnVmX2V4cG9ydF9zeW5jX2ZpbGUgYXJnOwo+ICsJc3Ry
dWN0IGRtYV9mZW5jZSAqZmVuY2UgPSBOVUxMOwo+ICsJc3RydWN0IHN5bmNfZmlsZSAqc3luY19m
aWxlOwo+ICsJaW50IGZkLCByZXQ7Cj4gKwo+ICsJaWYgKGNvcHlfZnJvbV91c2VyKCZhcmcsIHVz
ZXJfZGF0YSwgc2l6ZW9mKGFyZykpKQo+ICsJCXJldHVybiAtRUZBVUxUOwo+ICsKPiArCWlmIChh
cmcuZmxhZ3MgJiB+RE1BX0JVRl9TWU5DX1JXKQo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsKPiAr
CWlmICgoYXJnLmZsYWdzICYgRE1BX0JVRl9TWU5DX1JXKSA9PSAwKQo+ICsJCXJldHVybiAtRUlO
VkFMOwo+ICsKPiArCWZkID0gZ2V0X3VudXNlZF9mZF9mbGFncyhPX0NMT0VYRUMpOwo+ICsJaWYg
KGZkIDwgMCkKPiArCQlyZXR1cm4gZmQ7Cj4gKwo+ICsJaWYgKGFyZy5mbGFncyAmIERNQV9CVUZf
U1lOQ19XUklURSkgewo+ICsJCWZlbmNlID0gZG1hX3Jlc3ZfZ2V0X3NpbmdsZXRvbl91bmxvY2tl
ZChkbWFidWYtPnJlc3YpOwo+ICsJCWlmIChJU19FUlIoZmVuY2UpKSB7Cj4gKwkJCXJldCA9IFBU
Ul9FUlIoZmVuY2UpOwo+ICsJCQlnb3RvIGVycl9wdXRfZmQ7Cj4gKwkJfQo+ICsJfSBlbHNlIGlm
IChhcmcuZmxhZ3MgJiBETUFfQlVGX1NZTkNfUkVBRCkgewo+ICsJCWZlbmNlID0gZG1hX3Jlc3Zf
Z2V0X2V4Y2xfdW5sb2NrZWQoZG1hYnVmLT5yZXN2KTsKPiArCX0KPiArCj4gKwlpZiAoIWZlbmNl
KQo+ICsJCWZlbmNlID0gZG1hX2ZlbmNlX2dldF9zdHViKCk7Cj4gKwo+ICsJc3luY19maWxlID0g
c3luY19maWxlX2NyZWF0ZShmZW5jZSk7Cj4gKwo+ICsJZG1hX2ZlbmNlX3B1dChmZW5jZSk7Cj4g
Kwo+ICsJaWYgKCFzeW5jX2ZpbGUpIHsKPiArCQlyZXQgPSAtRU5PTUVNOwo+ICsJCWdvdG8gZXJy
X3B1dF9mZDsKPiArCX0KPiArCj4gKwlmZF9pbnN0YWxsKGZkLCBzeW5jX2ZpbGUtPmZpbGUpOwo+
ICsKPiArCWFyZy5mZCA9IGZkOwo+ICsJaWYgKGNvcHlfdG9fdXNlcih1c2VyX2RhdGEsICZhcmcs
IHNpemVvZihhcmcpKSkKPiArCQlyZXR1cm4gLUVGQVVMVDsKPiArCj4gKwlyZXR1cm4gMDsKPiAr
Cj4gK2Vycl9wdXRfZmQ6Cj4gKwlwdXRfdW51c2VkX2ZkKGZkKTsKPiArCXJldHVybiByZXQ7Cj4g
K30KPiArI2VuZGlmCj4gKwo+ICAgc3RhdGljIGxvbmcgZG1hX2J1Zl9pb2N0bChzdHJ1Y3QgZmls
ZSAqZmlsZSwKPiAgIAkJCSAgdW5zaWduZWQgaW50IGNtZCwgdW5zaWduZWQgbG9uZyBhcmcpCj4g
ICB7Cj4gQEAgLTQwNSw2ICs0NjcsMTEgQEAgc3RhdGljIGxvbmcgZG1hX2J1Zl9pb2N0bChzdHJ1
Y3QgZmlsZSAqZmlsZSwKPiAgIAljYXNlIERNQV9CVUZfU0VUX05BTUVfQjoKPiAgIAkJcmV0dXJu
IGRtYV9idWZfc2V0X25hbWUoZG1hYnVmLCAoY29uc3QgY2hhciBfX3VzZXIgKilhcmcpOwo+ICAg
Cj4gKyNpZiBJU19FTkFCTEVEKENPTkZJR19TWU5DX0ZJTEUpCj4gKwljYXNlIERNQV9CVUZfSU9D
VExfRVhQT1JUX1NZTkNfRklMRToKPiArCQlyZXR1cm4gZG1hX2J1Zl9leHBvcnRfc3luY19maWxl
KGRtYWJ1ZiwgKHZvaWQgX191c2VyICopYXJnKTsKPiArI2VuZGlmCj4gKwo+ICAgCWRlZmF1bHQ6
Cj4gICAJCXJldHVybiAtRU5PVFRZOwo+ICAgCX0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBp
L2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9kbWEtYnVmLmgKPiBpbmRleCAx
ZjY3Y2VkODUzYjE0Li5hZWJhNDUxODBiMDI4IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvdWFwaS9s
aW51eC9kbWEtYnVmLmgKPiArKysgYi9pbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oCj4gQEAg
LTY3LDYgKzY3LDQwIEBAIHN0cnVjdCBkbWFfYnVmX3N5bmMgewo+ICAgCj4gICAjZGVmaW5lIERN
QV9CVUZfTkFNRV9MRU4JMzIKPiAgIAo+ICsvKioKPiArICogc3RydWN0IGRtYV9idWZfZXhwb3J0
X3N5bmNfZmlsZSAtIEdldCBhIHN5bmNfZmlsZSBmcm9tIGEgZG1hLWJ1Zgo+ICsgKgo+ICsgKiBV
c2Vyc3BhY2UgY2FuIHBlcmZvcm0gYSBETUFfQlVGX0lPQ1RMX0VYUE9SVF9TWU5DX0ZJTEUgdG8g
cmV0cmlldmUgdGhlCj4gKyAqIGN1cnJlbnQgc2V0IG9mIGZlbmNlcyBvbiBhIGRtYS1idWYgZmls
ZSBkZXNjcmlwdG9yIGFzIGEgc3luY19maWxlLiAgQ1BVCj4gKyAqIHdhaXRzIHZpYSBwb2xsKCkg
b3Igb3RoZXIgZHJpdmVyLXNwZWNpZmljIG1lY2hhbmlzbXMgdHlwaWNhbGx5IHdhaXQgb24KPiAr
ICogd2hhdGV2ZXIgZmVuY2VzIGFyZSBvbiB0aGUgZG1hLWJ1ZiBhdCB0aGUgdGltZSB0aGUgd2Fp
dCBiZWdpbnMuICBUaGlzCj4gKyAqIGlzIHNpbWlsYXIgZXhjZXB0IHRoYXQgaXQgdGFrZXMgYSBz
bmFwc2hvdCBvZiB0aGUgY3VycmVudCBmZW5jZXMgb24gdGhlCj4gKyAqIGRtYS1idWYgZm9yIHdh
aXRpbmcgbGF0ZXIgaW5zdGVhZCBvZiB3YWl0aW5nIGltbWVkaWF0ZWx5LiAgVGhpcyBpcwo+ICsg
KiB1c2VmdWwgZm9yIG1vZGVybiBncmFwaGljcyBBUElzIHN1Y2ggYXMgVnVsa2FuIHdoaWNoIGFz
c3VtZSBhbiBleHBsaWNpdAo+ICsgKiBzeW5jaHJvbml6YXRpb24gbW9kZWwgYnV0IHN0aWxsIG5l
ZWQgdG8gaW50ZXItb3BlcmF0ZSB3aXRoIGRtYS1idWYuCj4gKyAqLwo+ICtzdHJ1Y3QgZG1hX2J1
Zl9leHBvcnRfc3luY19maWxlIHsKPiArCS8qKgo+ICsJICogQGZsYWdzOiBSZWFkL3dyaXRlIGZs
YWdzCj4gKwkgKgo+ICsJICogTXVzdCBiZSBETUFfQlVGX1NZTkNfUkVBRCwgRE1BX0JVRl9TWU5D
X1dSSVRFLCBvciBib3RoLgo+ICsJICoKPiArCSAqIElmIERNQV9CVUZfU1lOQ19SRUFEIGlzIHNl
dCBhbmQgRE1BX0JVRl9TWU5DX1dSSVRFIGlzIG5vdCBzZXQsCj4gKwkgKiB0aGUgcmV0dXJuZWQg
c3luYyBmaWxlIHdhaXRzIG9uIGFueSB3cml0ZXJzIG9mIHRoZSBkbWEtYnVmIHRvCj4gKwkgKiBj
b21wbGV0ZS4gIFdhaXRpbmcgb24gdGhlIHJldHVybmVkIHN5bmMgZmlsZSBpcyBlcXVpdmFsZW50
IHRvCj4gKwkgKiBwb2xsKCkgd2l0aCBQT0xMSU4uCj4gKwkgKgo+ICsJICogSWYgRE1BX0JVRl9T
WU5DX1dSSVRFIGlzIHNldCwgdGhlIHJldHVybmVkIHN5bmMgZmlsZSB3YWl0cyBvbgo+ICsJICog
YW55IHVzZXJzIG9mIHRoZSBkbWEtYnVmIChyZWFkIG9yIHdyaXRlKSB0byBjb21wbGV0ZS4gIFdh
aXRpbmcKPiArCSAqIG9uIHRoZSByZXR1cm5lZCBzeW5jIGZpbGUgaXMgZXF1aXZhbGVudCB0byBw
b2xsKCkgd2l0aCBQT0xMT1VULgo+ICsJICogSWYgYm90aCBETUFfQlVGX1NZTkNfV1JJVEUgYW5k
IERNQV9CVUZfU1lOQ19SRUFEIGFyZSBzZXQsIHRoaXMKPiArCSAqIGlzIGVxdWl2YWxlbnQgdG8g
anVzdCBETUFfQlVGX1NZTkNfV1JJVEUuCj4gKwkgKi8KPiArCV9fdTMyIGZsYWdzOwo+ICsJLyoq
IEBmZDogUmV0dXJuZWQgc3luYyBmaWxlIGRlc2NyaXB0b3IgKi8KPiArCV9fczMyIGZkOwo+ICt9
Owo+ICsKPiAgICNkZWZpbmUgRE1BX0JVRl9CQVNFCQknYicKPiAgICNkZWZpbmUgRE1BX0JVRl9J
T0NUTF9TWU5DCV9JT1coRE1BX0JVRl9CQVNFLCAwLCBzdHJ1Y3QgZG1hX2J1Zl9zeW5jKQo+ICAg
Cj4gQEAgLTc2LDUgKzExMCw2IEBAIHN0cnVjdCBkbWFfYnVmX3N5bmMgewo+ICAgI2RlZmluZSBE
TUFfQlVGX1NFVF9OQU1FCV9JT1coRE1BX0JVRl9CQVNFLCAxLCBjb25zdCBjaGFyICopCj4gICAj
ZGVmaW5lIERNQV9CVUZfU0VUX05BTUVfQQlfSU9XKERNQV9CVUZfQkFTRSwgMSwgdTMyKQo+ICAg
I2RlZmluZSBETUFfQlVGX1NFVF9OQU1FX0IJX0lPVyhETUFfQlVGX0JBU0UsIDEsIHU2NCkKPiAr
I2RlZmluZSBETUFfQlVGX0lPQ1RMX0VYUE9SVF9TWU5DX0ZJTEUJX0lPV1IoRE1BX0JVRl9CQVNF
LCAyLCBzdHJ1Y3QgZG1hX2J1Zl9leHBvcnRfc3luY19maWxlKQo+ICAgCj4gICAjZW5kaWYKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
