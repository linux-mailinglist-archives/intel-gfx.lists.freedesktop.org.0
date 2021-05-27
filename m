Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B56E4393186
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 16:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CDBD6F3F9;
	Thu, 27 May 2021 14:54:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1anam02on2063.outbound.protection.outlook.com [40.107.96.63])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 051AB6F3ED;
 Thu, 27 May 2021 14:54:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DZ7clSb9elcyP2e31L/wG8KYuCnHZ0QozwJQjmchP2ToUje4YP7yQXLvfGn3Fqc0okOOMfermBZ5CukCY3DYXJw7pw+UVMRwZwdN6Dh51UuR6hOx5rOx49p/bRCCrGhdlYfVaViWcapAf0CgZf+0ZaZA7lxk8JAa/QJTXENZFNdiIBMNO36sM7UQkqLCBXlM1i4LANqM1jYjZHIpvBa3IIM2VdGzpANHQSsu5fuuLKKuQW/DfS3eUiP6OVWvglTtZpldWylQ1MoHgQ3pbW1WOYfxVtxCR5i6F9kZ6U0+JVFNitVFb3Fq3diBMNDXa5lDT1JpBR1PrpR4TvIZrV61CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GGCOHGTiSrpJXiiyMFujaePfzf1PBNUOr0BSrZoA/YM=;
 b=E3H/FacIkYc1Oa2WTFIdklIe7DTC27FfcnDpeXJrqOb0bkf7lTyJnYrbhB33q3PLJFcQFel+TQfAbTrQ2eM2c88uKEMKl8qU3yK6Jzyh+g/DGkyugOeEefDDZ60riFGRbnIRQfJj0VLEUgLZ+xdonQCJzt6o4+QLlhm1KDX7O/fz5dBSQ5SLgRIKXDM79DT8uEur9r6zXehf2Tiy5D1sJ606VkZnESc94VJHjs8ENEhSkQ5DzPE/VHLJKjMPXj7StyB1oxNCRzV/YD8myoxW/wsLt1Kk4NtPUseosskKZU7am6FVpl8+F1bohHegBCjN9WtXsamQyaelyepcjQhiww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GGCOHGTiSrpJXiiyMFujaePfzf1PBNUOr0BSrZoA/YM=;
 b=aT6dn6E/4YUKdktJZuidCYaNMCskSmWmDmRL/84jprMWIXd7V5N4yi5pFvTpchkCQmaZ4lRwI7/b3C5KIot+CPM1TO1iaqizwy6xEalsUrRC2DUxF8dwDGgWOYsORWAngQ2RPe9WPzUz84hYI36mQ+afSrPk78PPMVW3QcUjc1c=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB4756.namprd12.prod.outlook.com (2603:10b6:208:8d::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.27; Thu, 27 May
 2021 14:54:29 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4173.024; Thu, 27 May 2021
 14:54:29 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210527141923.1962350-1-thomas.hellstrom@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <883eab20-4326-d14a-2eb0-5e95f174a0d9@amd.com>
Date: Thu, 27 May 2021 16:54:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <20210527141923.1962350-1-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:ffcf:5811:6cd5:8a3f]
X-ClientProxiedBy: AM3PR03CA0070.eurprd03.prod.outlook.com
 (2603:10a6:207:5::28) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:ffcf:5811:6cd5:8a3f]
 (2a02:908:1252:fb60:ffcf:5811:6cd5:8a3f) by
 AM3PR03CA0070.eurprd03.prod.outlook.com (2603:10a6:207:5::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4173.20 via Frontend Transport; Thu, 27 May 2021 14:54:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c12d6eba-ed2f-405a-b254-08d9211f5490
X-MS-TrafficTypeDiagnostic: BL0PR12MB4756:
X-Microsoft-Antispam-PRVS: <BL0PR12MB475682548DC710DD3D43DEEF83239@BL0PR12MB4756.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EbRtcdHIEvu2LEyoEMbECZsQVgCDyyQtTsUYxmJfxjJ0c7bo0s/s+U7h3P5NWgkgVsWi4KyPItrzqutPaE2UrsTBpZt+K/154xbFQ3ROk5BOvdG3/wpO1mh0TvvvcXwrjITcV5vNcVYmRhbtw7PHYzN89IC3WENV/+ncWO4iiXGM2LmiGKOTJcjnCqnyfXnAxIhUmHte5uOnGkLDgNWgIfjV30h8dHldCv2s49huy3Ejb+liXfLE0FYvJxNFfg7pAnkEJ/Gp2J3+LCJld1qvV6nrs+KqxiNJQ8a8Bl6MLi9y7GE7qgQHv5QP6ieyRxfYwuEh1uWkjYxEhJToe6o8FRmniGn+wUbGvjW0eIgdAcP3Yh0L0rx+wMFB3CR2lZcVgkcbZAXshJFx0mnnfr8DhOrFB5WqmxLjmjNZzp+S72N/Ej5STC8ULDsDO1K0wJjyu1iS85A3k8RrtH6Q1Yhz+xH9VU6p0R1UVkP1r5XKswC2gulEkhPfFb/mXQxuS2l+6IbKtlIC5hq53l8oFTBmwOqJrolwKT9Zqo/1/8Nsxrn83BVdwHQJa365PJhxa8j+5Rioa04PfbP8AmK3Hrhd/z0toP/9mOW4pFthGM5U4LjxLp+8GrS98BuNF/BQo1MOyM02BOLXBBrPuHz9e2SWKtdkvxzW+84cQ4EOzXLrM2+5UPDA1mRLYLvmujIrZaTl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(376002)(136003)(346002)(366004)(2906002)(8676002)(36756003)(6486002)(66574015)(83380400001)(478600001)(316002)(38100700002)(186003)(31686004)(16526019)(52116002)(66556008)(8936002)(2616005)(5660300002)(66476007)(86362001)(66946007)(31696002)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?aFNlT3M0NVZpTXlxMFlzbHR0NjFZWm9HWk1MVmwzR1o1UnlkZlpPTzFYYUov?=
 =?utf-8?B?dmRHRnJDQUdtYXBnRDFsYUpnT29RMU1NS3NMaE9INzNMRWM2UGdhU3FoOEZ6?=
 =?utf-8?B?T3BONTBHclNaMUhCeFpLWTNiYWxVZnVaQ21pankyaUUwUlNjaTA0bHlyVGxy?=
 =?utf-8?B?Q2FLNWZzaDFtSEZsM3V6L0xNdFZ5c3JUTUFHTVpZdzZaWUdjTHFSN2Q5aVpF?=
 =?utf-8?B?N1FZWjBKMUhZaGh0N1dkaUJ0UzJRMm1CUW5JMks0V2xBWkx6SHpWMVI1ZWZ4?=
 =?utf-8?B?Z2lIRHkra0UxSUFOY0ZZMVc4UlJSTGVPNWVSVjJOK3dTeXhnaTdrbGZjMnBy?=
 =?utf-8?B?cUptYWl1NGd2eFNDaXJvNEhnM29tbUtlUVBoN21UbUEyMVN5WDl0bjlwWDN3?=
 =?utf-8?B?MGJFRFVmYyt0Z3l2TlRIM1FiQ05JL2FSMEJoT1g3VXNEcUxpS3dFZ2hHN25C?=
 =?utf-8?B?RHBMQnpwV0ZKTFdhTUU2K0xNZnhrUlVSd2c2bllmSU1yVkVMbGc5MEhlUmox?=
 =?utf-8?B?MlN0ZGtDczZ3WFlYVGR2bFFKbUlpbVZyN2Zsdysyc0s3Q0VaRENZVWJJaVVk?=
 =?utf-8?B?UGMxNjFKdmp2c0ljR3lFWHdMaVBLbXdIdDRYVk1LUUxoQmY3VWJJSXh4NlBl?=
 =?utf-8?B?Y1Rua0ppMFVFY0laYjV4KzJsNWZuODJOSUw3L21Vb1o0TmdzdWN2YmpPOGpJ?=
 =?utf-8?B?RDhNL0Z3SlFzdmFPVUNZb1BiaGFuR2JUQ1pKR2VZT1pNQTVrbnUzYk9kN0ht?=
 =?utf-8?B?Y2FIR281cnAzN29ONFRaZzZEbWRZaEdOTEVPa29LNm9wUmtVNjlibVh6U25a?=
 =?utf-8?B?VkRtOUVkTlI3V0xvMlpDcW1EazJiaitqMGVncExLYm1Kd1ZodjRFK1BJUzJw?=
 =?utf-8?B?Z292cTBoUU5FSlF0NEFrM0N4WUl2VmpmRHVIVUFBTVJkYkRJNmxmVURQQmxp?=
 =?utf-8?B?Y3dLeDBJQzVVTDhlTWVDbmtIbnFiS25mZHYyc28zSWY5aDZzanZSZDBtQ0Zr?=
 =?utf-8?B?ZUdDZDBXT3l1eTFDNzlMSllva1pNVDh4a3BvOTc3Sk1ldURTbE0yY2p3KzBo?=
 =?utf-8?B?M2pRYlB6WGlsT2FzeVA5NTFBUktzYzVTbkk0blplSDNwamJiMm9hdEJ0RGFB?=
 =?utf-8?B?Ti8wRFJCNU9nREhqckI0bUZ2T3VBQVJwSzZrR3pJNjkwakZVUi9RVTA0cEFJ?=
 =?utf-8?B?ck9XRTYrOFR6NDc1T2xZUXg3VWVhOWZFZm1HMkpaR0lEZktwTnhtMHEwdTU5?=
 =?utf-8?B?MVNvdzk3MVRwTkFUTkhsWGc4V3N3akdta09IeWpXUnlJQXREclRHQVJ0aFMz?=
 =?utf-8?B?Q2FtU0QrdFdERXhmSnEySnRSUHdtNXh4Y2FXZkFyRHY0bVRMbFJiRlU0NzBX?=
 =?utf-8?B?L1RRMHBtNWc5eFZiOGtXOEY4VzMzMHUwQTE2Qzg2ZmdMT2phOU11S3k5TnEz?=
 =?utf-8?B?K2c1TWJCL0ozSkZlRU1IYWdPVzNTOG1yNEpES2dGaCttV1dpWUpNeDA4a2J4?=
 =?utf-8?B?WXFKTHVTQm5FWmNYNzhSa1NSVnRGb203VEdVaGRGQmsrNElOaU9IS0dUNEQ1?=
 =?utf-8?B?bGQ1clRqdGl5K3FkaTFyVHcxRzM5a2VNalJEa0FKVTRJbHgyZlV5K3UySk05?=
 =?utf-8?B?ZUd5RDloSCsvT2hEcTBkMVlZbDh2K3NFbUZqa2grcDRhVllvNFhETjN4OHlZ?=
 =?utf-8?B?MFF2d0JEaldFK2FiS0RXeWpvandmNENybksyQ0RWVUxuUTB2NW1mQXpIdC9D?=
 =?utf-8?B?WG12TWh3K1JmYkdjY0NhWnF4bnQvQ3FkWURzUEQ5WXF5VnB3ZUtBbSt5L0tE?=
 =?utf-8?B?NHFKNWdaTC9Jb3pWbUdnTkUyczR4d1Bnb1dMYTJWa3VSS3QzRU5aNEk4N1Az?=
 =?utf-8?Q?GJOWkTv54JcgK?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c12d6eba-ed2f-405a-b254-08d9211f5490
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2021 14:54:29.7546 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wFxrUKEBaouY/FX/bTblrtnz44EDB7c/qppMf6dCBYvYOpEdAx3TaqYct/945PTs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4756
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

QW0gMjcuMDUuMjEgdW0gMTY6MTkgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBUaGUgc3dh
cHBpbmcgY29kZSB3YXMgZGVyZWZlcmVuY2UgYm8tPnR0bSBwb2ludGVycyB3aXRob3V0IGhhdmlu
ZyB0aGUKPiBkbWEtcmVzdiBsb2NrIGhlbGQuIEFsc28gaXQgbWlnaHQgdHJ5IHRvIHN3YXAgb3V0
IHVucG9wdWxhdGVkIGJvcy4KPgo+IEZpeCB0aGlzIGJ5IG1vdmluZyB0aGUgYm8tPnR0bSBkZXJl
ZmVyZW5jZSB1bnRpbCB3ZSBoYXZlIHRoZSByZXNlcnZhdGlvbgo+IGxvY2suIENoZWNrIHRoYXQg
dGhlIHR0bV90dCBpcyBwb3B1bGF0ZWQgYWZ0ZXIgdGhlIHN3YXBfbm90aWZ5IGNhbGxiYWNrLgo+
Cj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGlu
dXguaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYyAgICAg
fCAxNiArKysrKysrKysrKysrKystCj4gICBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9kZXZpY2Uu
YyB8ICA4ICsrKy0tLS0tCj4gICAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8u
YyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKPiBpbmRleCA5ZjUzNTA2YTgyZmMuLjg2
MjEzZDM3NjU3YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+IEBAIC0xMTYzLDYgKzExNjMsMTYg
QEAgaW50IHR0bV9ib19zd2Fwb3V0KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sIHN0cnVj
dCB0dG1fb3BlcmF0aW9uX2N0eCAqY3R4LAo+ICAgCWlmICghdHRtX2JvX2V2aWN0X3N3YXBvdXRf
YWxsb3dhYmxlKGJvLCBjdHgsICZwbGFjZSwgJmxvY2tlZCwgTlVMTCkpCj4gICAJCXJldHVybiAt
RUJVU1k7Cj4gICAKPiArCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGJvLT5iYXNlLnJlc3YpOwo+ICsK
PiArCWlmICghYm8tPnR0bSB8fAo+ICsJICAgIGJvLT50dG0tPnBhZ2VfZmxhZ3MgJiBUVE1fUEFH
RV9GTEFHX1NHIHx8Cj4gKwkgICAgYm8tPnR0bS0+cGFnZV9mbGFncyAmIFRUTV9QQUdFX0ZMQUdf
U1dBUFBFRCkgewo+ICsJCWlmIChsb2NrZWQpCj4gKwkJCWRtYV9yZXN2X3VubG9jayhiby0+YmFz
ZS5yZXN2KTsKPiArCQlyZXR1cm4gLUVCVVNZOwo+ICsJfQo+ICsKPiAgIAlpZiAoIXR0bV9ib19n
ZXRfdW5sZXNzX3plcm8oYm8pKSB7Cj4gICAJCWlmIChsb2NrZWQpCj4gICAJCQlkbWFfcmVzdl91
bmxvY2soYm8tPmJhc2UucmVzdik7Cj4gQEAgLTEyMTUsNyArMTIyNSw4IEBAIGludCB0dG1fYm9f
c3dhcG91dChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLCBzdHJ1Y3QgdHRtX29wZXJhdGlv
bl9jdHggKmN0eCwKPiAgIAlpZiAoYm8tPmJkZXYtPmZ1bmNzLT5zd2FwX25vdGlmeSkKPiAgIAkJ
Ym8tPmJkZXYtPmZ1bmNzLT5zd2FwX25vdGlmeShibyk7Cj4gICAKPiAtCXJldCA9IHR0bV90dF9z
d2Fwb3V0KGJvLT5iZGV2LCBiby0+dHRtLCBnZnBfZmxhZ3MpOwo+ICsJaWYgKHR0bV90dF9pc19w
b3B1bGF0ZWQoYm8tPnR0bSkpCj4gKwkJcmV0ID0gdHRtX3R0X3N3YXBvdXQoYm8tPmJkZXYsIGJv
LT50dG0sIGdmcF9mbGFncyk7CgpFeGFjdGx5IHRoYXQgaXMgd2hhdCBJIHdvbid0IHJlY29tbWVu
ZC4gV2Ugd291bGQgdHJ5IHRvIHN3YXAgb3V0IHRoZSAKc2FtZSBCTyBvdmVyIGFuZCBvdmVyIGFn
YWluIHdpdGggdGhhdC4KCldoeSBub3QgbW92ZSB0aGF0IHRvIHRoZSBjaGVjayBhYm92ZSBhcyB3
ZWxsPwoKQ2hyaXN0aWFuLgoKPiAgIG91dDoKPiAgIAo+ICAgCS8qCj4gQEAgLTEyMjUsNiArMTIz
Niw5IEBAIGludCB0dG1fYm9fc3dhcG91dChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLCBz
dHJ1Y3QgdHRtX29wZXJhdGlvbl9jdHggKmN0eCwKPiAgIAlpZiAobG9ja2VkKQo+ICAgCQlkbWFf
cmVzdl91bmxvY2soYm8tPmJhc2UucmVzdik7Cj4gICAJdHRtX2JvX3B1dChibyk7Cj4gKwo+ICsJ
LyogRG9uJ3QgYnJlYWsgbG9ja2luZyBydWxlcy4gKi8KPiArCVdBUk5fT04ocmV0ID09IC1FQlVT
WSk7Cj4gICAJcmV0dXJuIHJldDsKPiAgIH0KPiAgIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vdHRtL3R0bV9kZXZpY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2RldmljZS5j
Cj4gaW5kZXggNDYwOTUzZGNhZDExLi5lYWE3NDg3YWU0MDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3R0bS90dG1fZGV2aWNlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0
bV9kZXZpY2UuYwo+IEBAIC0xNDMsMTQgKzE0MywxMiBAQCBpbnQgdHRtX2RldmljZV9zd2Fwb3V0
KHN0cnVjdCB0dG1fZGV2aWNlICpiZGV2LCBzdHJ1Y3QgdHRtX29wZXJhdGlvbl9jdHggKmN0eCwK
PiAgIAo+ICAgCQlmb3IgKGogPSAwOyBqIDwgVFRNX01BWF9CT19QUklPUklUWTsgKytqKSB7Cj4g
ICAJCQlsaXN0X2Zvcl9lYWNoX2VudHJ5KGJvLCAmbWFuLT5scnVbal0sIGxydSkgewo+IC0JCQkJ
dWludDMyX3QgbnVtX3BhZ2VzOwo+ICsJCQkJcGdvZmZfdCBudW1fcGFnZXM7Cj4gICAKPiAtCQkJ
CWlmICghYm8tPnR0bSB8fAo+IC0JCQkJICAgIGJvLT50dG0tPnBhZ2VfZmxhZ3MgJiBUVE1fUEFH
RV9GTEFHX1NHIHx8Cj4gLQkJCQkgICAgYm8tPnR0bS0+cGFnZV9mbGFncyAmIFRUTV9QQUdFX0ZM
QUdfU1dBUFBFRCkKPiArCQkJCWlmICghUkVBRF9PTkNFKGJvLT50dG0pKQo+ICAgCQkJCQljb250
aW51ZTsKPiAgIAo+IC0JCQkJbnVtX3BhZ2VzID0gYm8tPnR0bS0+bnVtX3BhZ2VzOwo+ICsJCQkJ
bnVtX3BhZ2VzID0gYm8tPmJhc2Uuc2l6ZSA+PiBQQUdFX1NISUZUOwo+ICAgCQkJCXJldCA9IHR0
bV9ib19zd2Fwb3V0KGJvLCBjdHgsIGdmcF9mbGFncyk7Cj4gICAJCQkJLyogdHRtX2JvX3N3YXBv
dXQgaGFzIGRyb3BwZWQgdGhlIGxydV9sb2NrICovCj4gICAJCQkJaWYgKCFyZXQpCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
