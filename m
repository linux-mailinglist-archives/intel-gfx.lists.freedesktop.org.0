Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6853B15E5
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 10:31:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8DF86E85D;
	Wed, 23 Jun 2021 08:31:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2089.outbound.protection.outlook.com [40.107.223.89])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E519E89D5F;
 Wed, 23 Jun 2021 08:31:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mdXeO4l14+scon0W0CgT/xY5nP5Z0bFgWIVscrS5kttGhRv64nVIWIpoPkMa2R6JbTLVV+IR6xT/GUTsG5s6XWRPi0THet/q3UllZmrT/xHqvlt9iVtEH7Dj0vXGwJQyLsCBqGNZ5c+gala0ScmnSqxtvPMymJk5xtiFn7OKnKLbefE/aJAh2u0wVQejmGH0K75qKoNRJKPtDbs5H9/7gp47rZpnJDjV+88GPQfmHjde++rlK3mjPUk7PrvdS9Gs3FFxycY6ALINRYUCaQIr0NOS5YKK3/t2QjmH0OZCQiTyU7X13CEdpPhBQK8XKYKN41SlfNWEwE3OfZalTU4bEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fmDm4vZf/BRPSTLKEmz8gq8XAOrwNVDoEmcRZxNyVxg=;
 b=mGmJrM4fsb/y8wgZ2ndDGjwB0+qbdOIA/kGs8lIYTDxQF3He8s8QYNcRSL/rxM+6ejKa2VJAZlEYXL/ZyFJQC3TpIQWvoPh61FvmHUyS8+F9K3vjjQHiYB5kbU2Qzr8wD4mqlqhxm10iDk68cOWpGgAJMUGGhX6fN8QYkG8LyEE/g1MbLD4NJ8tBqhjG4qviwAdtxvGHW6R5mn5nJOmbUKdexytkVZ3iYxOzGmlmWb20uU2fqzgnUYdABiYCxO5cmKNbU5tNAy0wGbHVIRZenqjVfA8ypF30R8HlECLB4W96zX2beUinHMvGlD/pEcH/+1fr8eljk7oD7fSHZ4Fw2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fmDm4vZf/BRPSTLKEmz8gq8XAOrwNVDoEmcRZxNyVxg=;
 b=ZgKkk+/tGWyH5owTfLX47gg64kex+4wLf9oWqeHAcm9HXNEwTZVBf1oLG1FDVWGWMxlTis17dxHn5N6AcveSHBf13TAIgWvAZq7LLF5bqdIQ+HQTNkbyTCRYGSlKwOUsLwYdZew0Bz1LYtWT01gU9ENF7c6Io8ezguxOH1KGST0=
Authentication-Results: lists.linaro.org; dkim=none (message not signed)
 header.d=none;lists.linaro.org; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4206.namprd12.prod.outlook.com (2603:10b6:208:1d5::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.18; Wed, 23 Jun
 2021 08:31:24 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4242.024; Wed, 23 Jun 2021
 08:31:24 +0000
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
 <20210622165511.3169559-2-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <87f6529c-caf0-6e4b-6506-b0e2d1a0f9e0@amd.com>
Date: Wed, 23 Jun 2021 10:31:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210622165511.3169559-2-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:69e4:a619:aa86:4e9c]
X-ClientProxiedBy: PR1P264CA0029.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:19f::16) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:69e4:a619:aa86:4e9c]
 (2a02:908:1252:fb60:69e4:a619:aa86:4e9c) by
 PR1P264CA0029.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:19f::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4264.18 via Frontend Transport; Wed, 23 Jun 2021 08:31:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fdb3b35e-8249-4034-34b9-08d936214954
X-MS-TrafficTypeDiagnostic: MN2PR12MB4206:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4206899FA7969C83A0A070FE83089@MN2PR12MB4206.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:182;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Mf2jgdQOV77uxHz+PFxGzk5Q6R+sx+sTENWLSM7BbmNT7M+uMeofG9VJ4OGIu2/fyLlHZC2cbIhdIwhS+UgGnTvESCS2Y1k0lOxhWo51cLhS+oKquc3CKOJ8uOaiRnVEWMn94QR6g5ukBS8QUrdnxnzhb1rexReWU7li4syjBEHNqacPvUU+Eyd1HvSKvDeLLLrvaffmMcp38aHTFoIVSI4XjhId0/Ao+TiicZVIPPWnFBIHRxLy82Fi7pK5h4+00TIyaqS05HFqd/4CsPMgs9R/3JXxWF0L6wIFf97lzhVITvpvUzYFTbr4wfHrZWD98/jqVrjGq1RxjW5gnF11v4OF/nwzXxAKbr35T+PaqHI3xWp9hdgeYd/StR+UFZ3LHOwy+mtGr1tnC/uOgHWna78YMq6ZUvQjJwRs5Ma4Gx2AxZAWgr3rTlRUyXOhljAt9XZBcRl+9e/WM9H4MQCQf1kJ3y823OKyTwB+NfJR1dXLG92OxIlhPu7qN4NvYlVqrJ+ziNy9fkD4Oo/jnZBFTBMgjdmysppGx1dQ1dw4L+4G0Qj8vTckQxAX0irLdcjO5u+8bzt1m/0JisneCy1SBtDTOutVQLcQF1kYQSgAvdS7BV45piVnkkM6Ya/NiebqlwzReAqfccMCtN0gCd6caZlDxgHjAoqCgD0uD+MXKfeP3jahYlWCz5nxduJfnDyG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(396003)(346002)(366004)(376002)(2906002)(2616005)(86362001)(83380400001)(8676002)(6666004)(478600001)(4326008)(66574015)(186003)(16526019)(316002)(31686004)(5660300002)(38100700002)(66946007)(66476007)(8936002)(6486002)(66556008)(36756003)(31696002)(54906003)(110136005)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUJrY1FXbE1YL1Z3S1N4Q2pDNHFIankwLytsdU5haW5za0U3TDlZUUVGemJ5?=
 =?utf-8?B?ZWRqSE1MMHNwckdqRXlqd1UvVXJTRGhHZkpBYXNUZ0RRTGhSMEV3cEN3YTY4?=
 =?utf-8?B?ZEYrZE1uamVCRGR3T2hqRm00ZDhOWk9GTHVYY0dNZDBJV3Y5V2dFWmxWbFVD?=
 =?utf-8?B?V1dtN3N3aHNtTCtQRHJtclRCZWFBRlJNQnMrcG0vMHF6cnlCZENzUTNpZ0dy?=
 =?utf-8?B?V2l2VGNKQzB2Lzgzb00zZzFlRy9lRWFZL3ZNT2t2TVI4YTJIVVlUNzZ5VFY5?=
 =?utf-8?B?QXZQZEt4eHh4NHI4R1NHTnZJLzBtVnBXWHh5SmlMZnNaNWt2T0xwOVRkN2tx?=
 =?utf-8?B?NnJjNVRaODFyWG9xS0VScFA1QjJRNHp5SW56Q0ttNGNXM2dScktyeGxlcWds?=
 =?utf-8?B?NWJSd3QybnFteVM4OERpUnBoNngwV1hiSEF6STJrTUg4TVo3RGRzbWZ5eThH?=
 =?utf-8?B?dVd5dmRldm4xSGlyWW16MGVWYVJaWUthaWtFOHhpbG1VMHZSTG9YRHE1NGpu?=
 =?utf-8?B?WUJQN2crYWtEZk9MdnZKUjBWVE9VRGFSVHpTbFcrY3VNVnRhdkRPOFdtNk5F?=
 =?utf-8?B?QTljVDhQdDZrZWwyc0dhRmpRUi9CMXJraExSM1k0MjVWS2JrSlZmNlVKcWhu?=
 =?utf-8?B?UG5mYS82cE9JR0gxMmNES2p6RTloQkhINlUwSUQyN01PdXJaUDNPZXRIMzFE?=
 =?utf-8?B?WmVNdVc1MXJEaVZTQ0hVbVVxUVdsRGppVkxTSXVJTmxOck01Vi9FbFlJZlQ0?=
 =?utf-8?B?dVpGczZaci9nb3VYNGxGdWQ4VHJyZW9MeVFSUW1BM2p4SWhwOXpWdnIzajEx?=
 =?utf-8?B?Y2ptcFJxVGlmQkxGdWxBeHg1QmdYTkIwU2hNTHZiQllVZVJJZ1NBY0xxYno5?=
 =?utf-8?B?TXZpRmtmRi9yNnR5cXpuajJnUWdwZVE4OURXN1RPeWZCUzFYdmZQWVZLOHFC?=
 =?utf-8?B?R3dVT0xmYnNUNHk5b2x6MDdwc1BlMWlBMStoaVpta1VTOUIxbG1FVFYvbW5H?=
 =?utf-8?B?YzgrQ3c4ZzBGUU1MbXI3T1hsZWZ1Z0s0QVFCTlVzTVhDbHRNNlhycVorU1pV?=
 =?utf-8?B?ZlFLZlllai9WYmZtWE9teXFmU3drS1FQRGcyZjM3Wm94dHJmYlFrZjhrTE9m?=
 =?utf-8?B?bUJrT2k2KytXSFBuT2ZTTndYMzZzRXJDbjUvNEx4c0Q1QXIxd2hPSHN5S2ND?=
 =?utf-8?B?djM2MWlBd2doQ3VBZWc2ajRrMzRLZkFYWnVmUXArdVIxbWxVZC9LZ2E5ei9M?=
 =?utf-8?B?TFNkb0FnMFFIa0M3NVhKK1hocllLZ3Ywc1pXQXV4NHJ5aTlFUm1Md295eDZk?=
 =?utf-8?B?aDQ0N2dPclRLeUMzNGZNWVRiSm0wb0htWVlBZmtqcElxZUh0NVRDeUxiZlU2?=
 =?utf-8?B?V0UvcmdNV0J2UVA4eDNjK09TZUtId2pHVTF6VHJhQzZkT0hYVXdmdEN1dm1V?=
 =?utf-8?B?Q1lGWk9RL1hJanAyU1ltMGhSbExGUm1KcVZ5QmdmRHNaUlo5UVNBY01ya1Zp?=
 =?utf-8?B?U3dIc2Q5WC9aYTVERjlMQVozSEVhRG84Uk5FRDZDV3NyNjBVRWxteisxUVhE?=
 =?utf-8?B?dmo0RldGaXZ3bzkwQUM1OEkvRlQ1ck1TRVE0b2JMcnprOXRBQ0NEY0Yrd1BC?=
 =?utf-8?B?dksybnhBSkNIMkhPRU1OYVhrb2w2UzZMd0tJYlZwdWREYUVld2dYQnZCZWNO?=
 =?utf-8?B?eDNWRXhTTThrYnYrUGxQempYOFRVaVNIY1RGZmxobzJ0Uk5acURrU2NZZWxz?=
 =?utf-8?B?RXZBdnVwZ3dzYjNvNG5aOEFUUWdveFJ0WUtSN0N3cmk5dm9XdTBNQkdKbUdO?=
 =?utf-8?B?V3NnOWFOSlZLNEwrTC95Vkw2YnNOOVBCdFVnNWtPNjVRNWgxNEI5bkFTaU03?=
 =?utf-8?Q?zwdaOddiz9oru?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdb3b35e-8249-4034-34b9-08d936214954
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2021 08:31:24.3500 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q6wuOL8z8Y3ZDyaXIdkEqCDA007o09QqNmLsUWImaumIXhwAHP/yyRXJgXySsAAQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4206
Subject: Re: [Intel-gfx] [PATCH 01/15] dma-resv: Fix kerneldoc
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
Cc: linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjIuMDYuMjEgdW0gMTg6NTQgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE92ZXJzaWdodCBm
cm9tCj4KPiBjb21taXQgNmVkYmQ2YWJiNzgzZDU0ZjZhYzRjM2VkNWNkOWU1MGNmZjZjMTVlOQo+
IEF1dGhvcjogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IERh
dGU6ICAgTW9uIE1heSAxMCAxNjoxNDowOSAyMDIxICswMjAwCj4KPiAgICAgIGRtYS1idWY6IHJl
bmFtZSBhbmQgY2xlYW51cCBkbWFfcmVzdl9nZXRfZXhjbCB2Mwo+Cj4gU2lnbmVkLW9mZi1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gQ2M6IFN1bWl0IFNlbXdh
bCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcK
PiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCgpSZXZpZXdlZC1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgoKPiAtLS0KPiAgIGluY2x1ZGUv
bGludXgvZG1hLXJlc3YuaCB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3Yu
aCBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAo+IGluZGV4IDU2MmI4ODVjZjljMy4uZTFjYTIw
ODBhMWZmIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAo+ICsrKyBiL2lu
Y2x1ZGUvbGludXgvZG1hLXJlc3YuaAo+IEBAIC0yMTIsNyArMjEyLDcgQEAgc3RhdGljIGlubGlu
ZSB2b2lkIGRtYV9yZXN2X3VubG9jayhzdHJ1Y3QgZG1hX3Jlc3YgKm9iaikKPiAgIH0KPiAgIAo+
ICAgLyoqCj4gLSAqIGRtYV9yZXN2X2V4Y2x1c2l2ZSAtIHJldHVybiB0aGUgb2JqZWN0J3MgZXhj
bHVzaXZlIGZlbmNlCj4gKyAqIGRtYV9yZXN2X2V4Y2xfZmVuY2UgLSByZXR1cm4gdGhlIG9iamVj
dCdzIGV4Y2x1c2l2ZSBmZW5jZQo+ICAgICogQG9iajogdGhlIHJlc2VydmF0aW9uIG9iamVjdAo+
ICAgICoKPiAgICAqIFJldHVybnMgdGhlIGV4Y2x1c2l2ZSBmZW5jZSAoaWYgYW55KS4gQ2FsbGVy
IG11c3QgZWl0aGVyIGhvbGQgdGhlIG9iamVjdHMKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
