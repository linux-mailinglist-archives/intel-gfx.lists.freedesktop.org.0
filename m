Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A30A238C77A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 15:09:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C43776E508;
	Fri, 21 May 2021 13:09:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1anam02on2054.outbound.protection.outlook.com [40.107.96.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41A6F6E508;
 Fri, 21 May 2021 13:09:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZBIr3TCNuKUhNilN8hbVyRHWIw83yU5mw7F3RI1UZOParBwixKSOIGYptfrS6RMb3I+T6C6N98rn505aKvUKBcinJ7I28GnwIk2KreS/o2WvQ8N70ROEut1vhw2rgffvRt4NI7gjONIw9xvIEPK1TwD0Ja0uD8O60E9tLLERp4hqxGUirt89wE18w6EVou/CT5tfToT71NnpmqBbdn5qdvF1XR104vMnqwd0WlNSjGkcVCFB1J59cCvFddZN6IJOVqVSQCsOAyA9ZR90nG8kNBE0bmsM+ABIJhWNXc5NNQsgnbewx0fYBIb/qcSF/1ZdONI9UbtvoVgf6KOdH2M7qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FbRZaj/4Jb0idyVSWktJo/xFBoynGW3ld5WSyKFK/IU=;
 b=mBabFsaxPaaOF4w7daqRreTysyYbGhU+rNXUxPBPq7y8QqTiTNYlgkxj7hn8z/+L8Tpmy6AR22kkpoQk6uxz6BXWSuMHccWV6EEScAwJpxQICGEOrgRsdKtF9bNrChIl5pIw+//tkGmOEuj/FIAR34VWq7LGMA9BvfDicG0/Z1CnYg4zkmA7FZm1vBxiGie0+vXkVhQrr/yWcU9BCXnqSWKt5uGfV85f+Z1RlGON3wCcX681A4BYQrcO8n6WSvAOzOJ1enzCCFyW/ewDnUCsRLmU0PVR9+C6JMf6XSxtQ0Xlgi/ybqunX5CNw8Wo/iE/wMAY3I1ASN93GbRQGJS7pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FbRZaj/4Jb0idyVSWktJo/xFBoynGW3ld5WSyKFK/IU=;
 b=jFF8DThRE/RBiItz4D4tI9kjs22y74uFrWwoFFsJSN1VbzItbYazGHFxNrCU/PG0BRFuDGMY//BTxCct7e1Yit2/r8IOgrwVubeJ1T79g2Kc9j/Xn49bNCuo0mh7W+93uUVu8qqgZxmyTUF3o1wiC39wc5uCZe4QfDnQ0yCgX3c=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB4660.namprd12.prod.outlook.com (2603:10b6:207:34::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23; Fri, 21 May
 2021 13:09:19 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4150.023; Fri, 21 May 2021
 13:09:19 +0000
To: Daniel Stone <daniel@fooishbar.org>
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <20210521090959.1663703-4-daniel.vetter@ffwll.ch>
 <CAPj87rMBVRamT+VAVUaUnq3C1KFVqzABi99RKs=1_vyb4YWDnQ@mail.gmail.com>
 <d1ef10e8-b774-06e5-92ab-047c58e1ea41@amd.com>
 <CAPj87rOzV1mC=Nv2zfsYXrD4ARV7cmmJmkUCSwRSw1Ksy0k-aA@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <39aa30e4-2726-a0ba-3537-3be609dbc0b5@amd.com>
Date: Fri, 21 May 2021 15:09:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <CAPj87rOzV1mC=Nv2zfsYXrD4ARV7cmmJmkUCSwRSw1Ksy0k-aA@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:b48f:ff97:fb4c:5b1d]
X-ClientProxiedBy: AM8P190CA0023.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:219::28) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:b48f:ff97:fb4c:5b1d]
 (2a02:908:1252:fb60:b48f:ff97:fb4c:5b1d) by
 AM8P190CA0023.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:219::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4150.23 via Frontend Transport; Fri, 21 May 2021 13:09:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4404f984-66a1-42b3-a129-08d91c59a4f4
X-MS-TrafficTypeDiagnostic: BL0PR12MB4660:
X-Microsoft-Antispam-PRVS: <BL0PR12MB466089DBC5AE41E12717508F83299@BL0PR12MB4660.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nYfAEqb3x+Cp4KTLnCizF8e4qVljuUGAFUHRZ0wAHDptnJK3cdo/coJ0TGIS29p7iufNiI7FFFwTpeaozq+R8AzjtiC3MooSwTS8kUpETKBSk88IUFeW+nBsmIXH79s11myB3vJIDWua2l2psgslOC9+FanNPytxD+GwTE39J6OdX44gti8xCYU4KW8xwuAIbFRebLlyOCq0TzfE84lhw6xmcGODvuc0661u7sv5o3NBWCHd8FOm2a+77Cpj0hPaZU9uY5NXkYt4VWFvCIeqNgnBmHsRc04aYg+sHfcvNn3fNlbQZ6x9XT/GTWt1u0lbLn578mSU6dBNyJctQbcT35s+lqqajyDmxRgghhK4IG2uiKFgyIfkXv735k0ilV9gCM/YK8iFlQbTTeQQDWtj9kc+8fP1kBIQrTjmyclWuTWvFT20U4axBXZFPvwco0rHFLjJq4IyOBD8e7zH0gboIHGoJW78kH/vuSmwBnEo/lh7+nusALNPmcq0MZwMyzVlF01ffL/0uwTrroHg11No9Uq9KwiXyvkuqrmnvScK3z9SxVpvBQXQLDDesPC9dFiStHygLe/C6/6rjLtRAZXwaiq7UVpWmcd5nBd+iRnpCpwDaLB0c8+9qVHD+sfP6WI0ovlF65As8ku8M1NdJ4FWduup/yKa6NMaAzqjSGa5LmdtYgr9LHkK/qlgfhUC6mBW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(376002)(39860400002)(346002)(366004)(83380400001)(66574015)(7416002)(2616005)(16526019)(38100700002)(186003)(6486002)(6916009)(8936002)(6666004)(4326008)(478600001)(54906003)(31686004)(86362001)(31696002)(8676002)(66556008)(66476007)(5660300002)(66946007)(36756003)(52116002)(316002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?dWRkRGVUMEVaOVBuODlqSk1DeE1FRkptZnMwTnUwc0xOZm0xZDBCTFV3T05a?=
 =?utf-8?B?UExPN0xNeGpMZFVaTWVYd2Q4SWZwbmhWdDZ4MDdIbGZDVldKT1lqcGxTQmtL?=
 =?utf-8?B?L1RzdG5VenFNRjFuQ1NaRk5abFhGUE1wMW4rUVl6ZUFNWU5lUkhoQnBCQVBH?=
 =?utf-8?B?OU8zRmRWVjIrdUFCL0o3RFFGQUh5T21xMWhmbTZHRDVaemFLeE95VzlxT1lj?=
 =?utf-8?B?aDZWSVZiVlljRjhoNTRxZ2JRZmR3SGNlN045S3BQUEZFL29uektqM01LbTFh?=
 =?utf-8?B?M3N3eElJMGtCNTA1TURiTFBMSE1yVVp1R0luU1R3aXQzOGlQbUg1emlleTNR?=
 =?utf-8?B?Z0k3STV3eUdGMWY1L29MZ0FZNi9KRzBFUmF2WGpTblZtZ3ZvV0RNK2JaOGlW?=
 =?utf-8?B?bzBDNjZzMm9NNWM3VldUTTZCZ3JtNHUrUWMvc2tjR3BCQVJIdU5uVFBSNHVX?=
 =?utf-8?B?L2ZKS000bWJLc2cwRTQ1Zk96MGN0Y0RFK2hxNGRjdmpRUHg4K3NQRDdYczZD?=
 =?utf-8?B?OFl2dmhHL2lkSzdGbUFSWmNDZWN5TFlxcEttWHJ0TklONzVnYS9wYzhvU0lU?=
 =?utf-8?B?TmFjWktuRkR5L2tqdVhQU2VCT0xHbWJteEVoTGNMem1UMmxZbXJmRnhua1JY?=
 =?utf-8?B?OFp2cUlrREl6VEgvNmU0ZjVhSUd2WXdjbGxpcEtPSTFTWGhFQ2NMSjNSbk1p?=
 =?utf-8?B?bHduaTVYT0tkNSsveGcwN2pySGJvSHhvTUVGZ2M2YzlqSmhtd3hUSlYwa1Bp?=
 =?utf-8?B?c0RaUVpFbjMrL0NLbkhEeCtRZThuSkNWN0MvdEZSK0d6UmpuVmhxdHlxVUZE?=
 =?utf-8?B?YzZ1SnFHYkRRT24vSWNlcVhNUjRER256Uk1LV3I1Vm5LL2F2TXRqallnbmNT?=
 =?utf-8?B?TkR0UzNQNTZadyttemFITnNrVERKNHRoWnd2ZUpBK0FCcVIrSmZPRmNXUmNm?=
 =?utf-8?B?VXJ0UU9kbXB3cnRxbVpFcTV6ZHM0Y2RRRkFGUDdUbkU2Z3lQVExGWkpZVzVC?=
 =?utf-8?B?bFI0b1NlaWw0dVVYdjQ2YzZpL292bEp6ZWtwUTFXUGozbXFaS3VKU1NDSDYx?=
 =?utf-8?B?ajN4b3BuTytiNlpSNlU2bVZCb1Z4T1Z0N2wwRndDamlwSTREL0FSZFZkVW1Y?=
 =?utf-8?B?MStxaUp3TUc0cVZUa1dyS2ZweDlxNkdvRjRaSFRRZ2RudVVjbHZJQ3JNTlFk?=
 =?utf-8?B?N01scHFKelBSWkhmM2d2V3R2KzhJaVFTcmNvMXBKb2pCSFF6eHkrMWRXUG9s?=
 =?utf-8?B?T0MrVXBFSUEzMS9TYUZPTlhITTBYT0doK3dxcGZmNjVRNVA1OTdjeHNWaVRu?=
 =?utf-8?B?VVlIL3NOZXEvOVk1c2R4aEQza2s2UkZ2c2dqY0JLOEtiUmdVTUVMdTd3MWNi?=
 =?utf-8?B?QzZDb1U4V0g3S2NHU1RsNWZyZzE3dDhKQVVNSCtrL2YrOTRDY3ZVcXZQeWti?=
 =?utf-8?B?OWMxUUNOZ3QyWjJUVGI3OGo0WjdvQkg4VGVMMWFtalViSDI3cDFyWDNpK1hQ?=
 =?utf-8?B?V2x4eUtNdXVlL3g1YVB4VGU4QkU0NjBHcFozM2VxQVBMMG4zUE9IOFlaUzBQ?=
 =?utf-8?B?MVEzY1RRdDhxMkF1WnphNFFmTVQ4NXJxemFhSG1tb055d2pzcVRZNHZRUlFH?=
 =?utf-8?B?V3RGdThOLys1ZWRUcG1vcFRGL0Nja0xJdERORzBJV2x5M2pEM3BPYXNmb0JO?=
 =?utf-8?B?UXpKQit0d0NvZE9vUFE3RjIrUFJRaTU1Tys0Nkt2WWxYaXMrOWFyQ21jdkNW?=
 =?utf-8?B?Ny8yR3VPTS9JTWZsZHFBYkkrOEIxNk1hR3ZVQVhWQkJXWlZyOG5WbU5DQkhz?=
 =?utf-8?B?bUlSSytiYkxaZXJiVHRIVjRrY0c1TmVlY2hjejJ3ODE3UFd4TllhekRhV1hZ?=
 =?utf-8?Q?vXYyzgFL5dOK+?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4404f984-66a1-42b3-a129-08d91c59a4f4
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2021 13:09:19.6497 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DEODstndMRQQO+K7AXNs5RacV5SAMsEGroHCHieEoPDvfjfmuzfD+s06BTCUgyH+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4660
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH 04/11] drm/panfrost: Fix
 implicit sync
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
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjEuMDUuMjEgdW0gMTQ6NTQgc2NocmllYiBEYW5pZWwgU3RvbmU6Cj4gT24gRnJpLCAyMSBN
YXkgMjAyMSBhdCAxMzoyOCwgQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPiB3cm90ZToKPj4gQW0gMjEuMDUuMjEgdW0gMTQ6MjIgc2NocmllYiBEYW5pZWwgU3RvbmU6
Cj4+PiBZZWFoLCB0aGUgJ3NlY29uZC1nZW5lcmF0aW9uIFZhbGhhbGwnIEdQVXMgY29taW5nIGxh
dGVyIHRoaXMgeWVhciAvCj4+PiBlYXJseSBuZXh0IHllYXIgYXJlIHN0YXJ0aW5nIHRvIGdldCBw
cmV0dHkgd2VpcmQuIEZpcm13YXJlLW1lZGlhdGVkCj4+PiBqb2Igc2NoZWR1bGluZyBvdXQgb2Yg
bXVsdGlwbGUgcXVldWVzLCB1c2Vyc3BhY2UgaGF2aW5nIGRpcmVjdCBhY2Nlc3MKPj4+IHRvIHRo
ZSBxdWV1ZXMgYW5kIGNhbiBkbyBpbnRlci1xdWV1ZSBzeW5jaHJvbmlzYXRpb24gKGF0IGxlYXN0
IEkgdGhpbmsKPj4+IHNvKSwgZXRjLiBGb3IgYm9udXMgcG9pbnRzLCBzeW5jaHJvbmlzYXRpb24g
aXMgYmFzZWQgb24gJGFkZHIgPSAkdmFsCj4+PiB0byBzaWduYWwgYW5kICRhZGRyID09ICR2YWwg
dG8gd2FpdCwgd2l0aCBhIHNlcGFyYXRlIGZlbmNlIHByaW1pdGl2ZQo+Pj4gYXMgd2VsbC4KPj4g
V2VsbCB0aGF0IHNvdW5kcyBmYW1pbGlhciA6KQo+IEkgbGF1Z2hlZCB3aGVuIEkgZmlyc3Qgc2F3
IGl0LCBiZWNhdXNlIGl0IHdhcyBiZXR0ZXIgdGhhbiBjcnlpbmcgSSBndWVzcy4KCkluIEdlcm1h
bnkgd2Ugc2F5ICJJY2ggZnJldWUgbWljaCBkcmF1ZiB3aWUgYXVmIFphaG5zY2htZXJ6ZW4iLgoK
PiBJZiB5b3UncmUgY3VyaW91cywgdGhlIGludGVyZmFjZSBkZWZpbml0aW9ucyBhcmUgaW4gdGhl
IGNzZi8gZGlyZWN0b3J5Cj4gaW4gdGhlICdCaWZyb3N0IGtlcm5lbCBkcml2ZXInIHIzMHAwIGRv
d25sb2FkIHlvdSBjYW4gZ2V0IGZyb20gdGhlIEFybQo+IGRldmVsb3BlciBzaXRlLiBVbmZvcnR1
bmF0ZWx5IHRoZSBleGFjdCBzZW1hbnRpY3MgYXJlbid0IGNvbXBsZXRlbHkKPiBjbGVhci4KCldl
bGwgaXQgaXMgYWN0dWFsbHkgcmVsYXRpdmVseSBzaW1wbGUuIFRha2UgYSBsb29rIGF0IHRoZSB0
aW1lbGluZSAKc2VtYXBob3JlcyBmcm9tIFZ1bGthbiwgZXZlcnlib2R5IGlzIGJhc2ljYWxseSBp
bXBsZW1lbnRpbmcgdGhlIHNhbWUgCnNlbWFudGljcyBub3cuCgpXaGVuIHlvdSBxdWV1ZWQgdXAg
YSBidW5jaCBvZiBjb21tYW5kcyBvbiB5b3VyIGhhcmR3YXJlLCB0aGUgZmlyc3Qgb25lIAp3aWxs
IHdyaXRlIHZhbHVlIDEgdG8gYSA2NGJpdCBtZW1vcnkgbG9jYXRpb24sIHRoZSBzZWNvbmQgb25l
IHdpbGwgd3JpdGUgCnZhbHVlIDIsIHRoZSB0aGlyZCB2YWx1ZSAzIGFuZCBzbyBvbi4gQWZ0ZXIg
d3JpdGluZyB0aGUgdmFsdWUgdGhlIApoYXJkd2FyZSByYWlzZXMgYW5kIGludGVycnVwdCBzaWdu
YWwgdG8gZXZlcnlib2R5IGludGVyZXN0ZWQuCgpJbiBvdGhlciB3b3JkcyBwcmV0dHkgc3RhbmRh
cmQgbWVtb3J5IGZlbmNlIGJlaGF2aW9yLgoKV2hlbiB5b3Ugbm93IGhhdmUgYSBzZWNvbmQgcXVl
dWUgd2hpY2ggZGVwZW5kcyBvbiB3b3JrIG9mIHRoZSBmaXJzdCBvbmUgCnlvdSBsb29rIGF0IHRo
ZSBtZW1vcnkgbG9jYXRpb24gYW5kIGRvIGEgY29tcGFyZS4gSWYgeW91IGRlcGVuZCBvbiB0aGUg
CnRoaXJkIHN1Ym1pc3Npb24geW91IGp1c3Qgd2FpdCBmb3IgdGhlIHZhbHVlIHRvIGJlID4zIGFu
ZCBhcmUgZG9uZS4KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4KPj4+IE9idmlvdXNseSBBcm0gc2hv
dWxkIGJlIHBhcnQgb2YgdGhpcyBjb252ZXJzYXRpb24gaGVyZSwgYnV0IEkgZ3Vlc3MKPj4+IHdl
J2xsIGhhdmUgdG8gd2FpdCBmb3IgYSB3aGlsZSB5ZXQgdG8gc2VlIGhvdyBldmVyeXRoaW5nJ3Mg
c2hha2VuIG91dAo+Pj4gd2l0aCB0aGlzIG5ldyBnZW4sIGFuZCBob3BlIHRoYXQgd2hhdGV2ZXIn
cyBiZWVuIGRlc2lnbmVkIHVwc3RyZWFtIGluCj4+PiB0aGUgbWVhbnRpbWUgaXMgYWN0dWFsbHkg
dmFndWVseSBjb21wYXRpYmxlIC4uLgo+PiBZZWFoLCBnb2luZyB0byBrZWVwIHlvdSBpbiBDQyB3
aGVuIHdlIHN0YXJ0IHRvIGNvZGUgYW5kIHJldmlldyB1c2VyIGZlbmNlcy4KPiBBd2Vzb21lLCB0
aGFua3MgQ2hyaXN0aWFuLiBBcHByZWNpYXRlIGl0LiA6KQo+Cj4gQ2hlZXJzLAo+IERhbmllbAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
