Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7165D3C841F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 13:55:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 171AF6E222;
	Wed, 14 Jul 2021 11:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2044.outbound.protection.outlook.com [40.107.94.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AA946E221;
 Wed, 14 Jul 2021 11:54:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hv9z9e1b05Z4RTOpX8JFQ3+nCuTRbaz7CnYNBjWHm59Bfg+jp3RJXxVL2PvdmYtDr4T4nddOp8s4oOqg7ga41XrXoxxx4e7lZ8L51QCnEwpdbcI5idLA7Z7w0jt8NSILqYPxpOJYt7eM27qshQ/LFahmcEiIY4JgKMURSd/mDXlrcX3Oc8q0EsGG04/yE/7xea1citvJEVozcPk8AQf0/8RFuogESOa10grcsfCFVwSk4E8D+jyMbdy6/Fj/QJnQqv1IDDFwj5V2xkh2J6jfHSydvesi2dxkd5LROCToe1VoI8u6hnDw+6kdm8PrF3npjfOlFgeGET5LD8oLk5afJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XVyKwJ0Rj/bHHCmlz995TBjDsZS0uJHErjSnfbvP5ko=;
 b=oaS7diGWZm33AM29F2JYrnbhE5qweFCg+wGgIAI/YmN42mL/Kbcc8zzZ1Mo/E79kU0QQ5BhM6onKvhGZ3IOLRrgD1euMxjmdvES//eIw9we9S2G5mXBaCEOvSLMhc+imbDQY39vZ7A/FKKjd5c38j6gG3yn/aOmiLYA/l7sSHys8P8YNay+OVmbbTPIuICeONA0CHhK5krrgraPv1Dttzt6ijyiSkcDbW7SD9qCIDI4boupCsmMlJo7lSOVdidWI8m8R4njaPrhv1nR2GKeoAHAOq1/pmVcenrd1NOtobmM1VNEeRPkaFi4NE71pZVzaWsLkKI6dBAxfYdK9h91Feg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XVyKwJ0Rj/bHHCmlz995TBjDsZS0uJHErjSnfbvP5ko=;
 b=Zfb6n7o3jogkdLGiIn3in98rd85YjvHuDVD3MB26+hA0V+eiLmAI/b1ShBqXUjNe2wmFQSr6Vbqtx0ZjG8MjnTXn0Iq+rU1I74ssv1SPkWBtSTAocVMA4y64//qRGgWsX1e1bceiT0qLkDMUeAhfpDSeW66sBhIwbfRB5tRQANc=
Authentication-Results: ffwll.ch; dkim=none (message not signed)
 header.d=none;ffwll.ch; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4159.namprd12.prod.outlook.com (2603:10b6:208:1da::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.22; Wed, 14 Jul
 2021 11:54:55 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4308.027; Wed, 14 Jul 2021
 11:54:55 +0000
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20210713205153.1896059-1-daniel.vetter@ffwll.ch>
 <20210713205153.1896059-4-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <4626a7d7-95ca-104c-753a-07a9d83b0b28@amd.com>
Date: Wed, 14 Jul 2021 13:54:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210713205153.1896059-4-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-ClientProxiedBy: PR3P189CA0076.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:b4::21) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:fe2b:fec6:eeb5:c7dc]
 (2a02:908:1252:fb60:fe2b:fec6:eeb5:c7dc) by
 PR3P189CA0076.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:b4::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.21 via Frontend Transport; Wed, 14 Jul 2021 11:54:53 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e57d3497-b21f-4389-d2c7-08d946be323a
X-MS-TrafficTypeDiagnostic: MN2PR12MB4159:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4159EECE9148F1AF706A256383139@MN2PR12MB4159.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 837bu30NRfe9FF7wFah/v3JkQaLftLSO1axIbysS/kIZIjDTBOjjdoCEQsFO98XiHJSS+dGq2E6/GSeTMVRAfRw+9Yt6qEqrxzljWo/kXp8VVXSuz6TSPQ95ab9UM2pWzrF9o0ExbbhvqThhWVlnr7Mz1ptiQJpr5jqqrrNe/G9KwS8dHR91gMFWjt4a20end9Sg78W7fj5j+o6TdLbHUrRaBnfu6veKelcEbqJREP1lMyL/4uz9W4qzxIbMoX4P7O++h0d+u1Gh300zagzcQd5a3Z2gUzMxITJaP0Rt/56yZBEQwp9/xn0RiaK/yVHPkE+ywk2RIvTXS06K22eHN9Y21F8EOoeFK6ZKZ8kmh/SDkVDzOTQCiJkn9eZFCJfmSdhixoaXh19zjrF4GvqIFRlq2f5HvcOM8TzqAtmgVX6CwByAbNdU9r18XmKWrjVaryZdDSuwhjowpJhHa6yls/0l+NqUlU46goeOwDQhjiXMTQ2kv/pdYGHYdQG94nR2VD2Re1HyXCSpo+qJkpt144RnLlYxAzv1DWikbhY4XfNp4a44D0B7fD5bozuihhb4ThJWtk/mBEZJBETSbfrNHo2WwcpAdojP8T7tcBT23RHGGN8+peo9IDTQlRmKSOnzHketzhp72WusktCMdQDGkOQSBSFZBzvlisPvIjKKVmA/wkygA6CXh06b3uI1B7x8PEnehDNeeSg5E2Mjm9KUe5B80p22RdbxLB1NIJ8GA0HTFxcY7ORPZQ/KI9JRppzU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(396003)(346002)(366004)(376002)(66556008)(6486002)(186003)(66946007)(66476007)(4326008)(110136005)(54906003)(316002)(2616005)(8936002)(8676002)(2906002)(31686004)(7416002)(36756003)(31696002)(86362001)(5660300002)(478600001)(66574015)(83380400001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L2dwc2lLaEh6T3FNUzJmcVdLL2JMU080QURzMFMvZzRkQ1hJclMvTm4wa0Fs?=
 =?utf-8?B?aENHcmhhYlYyNWFTTHNpZjNmMG9zU1kvUTZTTFlwREFGT0EvZFVRUmNKWEdU?=
 =?utf-8?B?S2lRUkE2b2RPdkpObDF6dGhTYTB5enRFVG5kdmFaaVBFMyszRml3aTBScVh2?=
 =?utf-8?B?K0RIUk9aSEl6blYvd004WmRmR1FCUlFUR05lUkFUVy9kS3FzU2dCVjg3cGlX?=
 =?utf-8?B?eTdVclJoMkowYkpTaWNmS250Z3F1RGZWSnhwUlh4Nmg4ODRYMHAyRHBEUU45?=
 =?utf-8?B?VHZWaUk4Wk12ek5zN2cveEVYbEppa3pxMkFTSkNwV2hpRU51eFBsZ3NRNHox?=
 =?utf-8?B?NE85dHZ1UXkxckRmMEwwc0NJUnE2Y0U4U3FIR21tTDU0czhlaHY5cG0vL3A2?=
 =?utf-8?B?L0pmd1JOTVJIOXdLY2ZsYXBVaVRMekF0VVFRQWNpZ3YvN29SVnpmNHVIbHF5?=
 =?utf-8?B?QjhBZk1lb0VHSGtjeUN6ZDVaSkdQNDdhZWl1OEU2TWV0VzNhbmg3eDhoUis1?=
 =?utf-8?B?M3N0TUhoZzBXMDUvcks0UE05MWpwVXBiZWpDZ1YycGdiU0ZwYzFrckNwdVJh?=
 =?utf-8?B?cTEzaEUvMDFCWmFuZHl2VGs3UjBhSzFYdDlvZTY3TndWdkI1M3ZwYTkzRjV4?=
 =?utf-8?B?RkdPM09PbEpoSXVuMWFzRFZwNFQzQzE4Q08rOWM0STNCWm1sTyt4ZVF0K1hj?=
 =?utf-8?B?NjNweitUZkZGQUE0U0xicTR6RVhJZ0pzS3k3bS9kOVZJSzVHa3NtNFhwSmFk?=
 =?utf-8?B?dWNUK1B1Q0JlMUwrbUZLQmdiYWl4c21oMVU4VkxnejdYS3pwWDE4UERaWmQy?=
 =?utf-8?B?Z2J5emc4Qkc3ZWpnZ1kyQXhpQ2ltRWdDTDZOWFFuNXJjajZjWnMvdThkUE1E?=
 =?utf-8?B?cXZmVThCMzBOMWQ5R1AxMmJlOThmRkhlVk5pdUV3RlpRbjNCa09vVmVRNEU0?=
 =?utf-8?B?TCtpTjFDZ2JKbnlUN2VtRDFQblIxL0wxMU9VU0pUaStya0JtTzFkWnp1T3I1?=
 =?utf-8?B?dUJ2V3ZJNFFhdGU1dVBSaXZ2aFJ6QWRuTEhmdHY3MDZRQ0QwNFNETVRYZDFR?=
 =?utf-8?B?Ymh2VVlqSGNnYmVXY2NMQm9qWWRvZUZIQVhUNTdIRlFrOWFWMUlFSFl6NVhz?=
 =?utf-8?B?OXRwUmd3MDhZd1Z5N2YvaWZTRDlPY1RTbFNzN2dROWNHSWJkczl5dC9xMjdi?=
 =?utf-8?B?NWR0U3ZmaVNKdlQzK3l5TGhMc2d2aXk4dXNsdkxMWGpEN2lXbFFLMHJlMUN4?=
 =?utf-8?B?VXJJOGhRMERiZ2FpTG1xcHV1UGdjKzRZQmo1TTFOQzNyVStyc2gybDVQbEdo?=
 =?utf-8?B?YUZPem91UXdoVzE2cUErUUh3a3Nndklya3FzOEE5cmdxTXRrS3R3d2ZYNUZI?=
 =?utf-8?B?M1RiNGVDb0ZuVExqTUNKU0w4RUlUL2wwZGlWc01tMmJzVG9icXJiVkZTTFI2?=
 =?utf-8?B?M1NzVzRLVTc1dmVvbFp5QnV4TXF4RVlLNFp4d2dhL2ZZeC9IVkE3dDgyQ3Iw?=
 =?utf-8?B?cS9qYVpWa1NBY1Y2aDg2QnpaK2t3ekFMOU9EOVg3YmJjbHZWZkpJZlJ2UkRk?=
 =?utf-8?B?UlBIdHdDS3M0Wk44eE1HOUZndFVzYis4MU1kVWZFSXZJK2Q1cWEwczE0Skow?=
 =?utf-8?B?R0NZeUNVdnYvamNtb044SllHM09UNnk4anNxM1hyUXJLczVveEUvWkJaUmMw?=
 =?utf-8?B?VWVsYUxuSnQxblFTeHVPMFp4WnlrWUZYUXRSeDZBYjdHSS90OGdKK1ZkSy9i?=
 =?utf-8?B?WW9CRUIrMjU5ekNPdFpKY3FHTWpvOU05Y09JUVhad1JqTVNzR1JIZU83cW04?=
 =?utf-8?B?ZDFvT3VjYkpnYVhuSzVkdWhFRWlqT2pHZW0zakgwdGIzcmJvSm5KaUVsMDZV?=
 =?utf-8?Q?/Fp/mM4E6df9f?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e57d3497-b21f-4389-d2c7-08d946be323a
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2021 11:54:55.4049 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H4tJC6JWSpGCl0GcOXs0NQUvqXdbBfEY+XV4HUtnpil7tGmYWs2IlxLH3RtCj8d9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4159
Subject: Re: [Intel-gfx] [PATCH v4 3/4] drm/shmem-helpers: Allocate wc pages
 on x86
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Maxime Ripard <mripard@kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMTMuMDcuMjEgdW0gMjI6NTEgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IGludGVsLWdmeC1j
aSByZWFsaXplZCB0aGF0IHNvbWV0aGluZyBpcyBub3QgcXVpdGUgY29oZXJlbnQgYW55bW9yZSBv
bgo+IHNvbWUgcGxhdGZvcm1zIGZvciBvdXIgaTkxNSt2Z2VtIHRlc3RzLCB3aGVuIEkgdHJpZWQg
dG8gc3dpdGNoIHZnZW0KPiBvdmVyIHRvIHNobWVtIGhlbHBlcnMuCj4KPiBBZnRlciBsb3RzIG9m
IGhlYWQtc2NyYXRjaGluZyBJIHJlYWxpemVkIHRoYXQgSSd2ZSByZW1vdmVkIGNhbGxzIHRvCj4g
ZHJtX2NsZmx1c2guIEFuZCB3ZSBuZWVkIHRob3NlLiBUbyBtYWtlIHRoaXMgYSBiaXQgY2xlYW5l
ciB1c2UgdGhlCj4gc2FtZSBwYWdlIGFsbG9jYXRpb24gdG9vbGluZyBhcyB0dG0sIHdoaWNoIGRv
ZXMgaW50ZXJuYWxseSBjbGZsdXNoCj4gKGFuZCBtb3JlLCBhcyBuZWVlZGVkIG9uIGFueSBwbGF0
Zm9ybSBpbnN0ZWFkIG9mIGp1c3QgdGhlIGludGVsIHg4Ngo+IGNwdXMgaTkxNSBjYW4gYmUgY29t
YmluZWQgd2l0aCkuCj4KPiBVbmZvcnR1bmF0ZWx5IHRoaXMgZG9lc24ndCBleGlzdCBvbiBhcm0s
IG9yIGFzIGEgZ2VuZXJpYyBmZWF0dXJlLiBGb3IKPiB0aGF0IEkgdGhpbmsgb25seSB0aGUgZG1h
LWFwaSBjYW4gZ2V0IGF0IHdjIG1lbW9yeSByZWxpYWJseSwgc28gbWF5YmUKPiB3ZSdkIG5lZWQg
c29tZSBraW5kIG9mIEdGUF9XQyBmbGFnIHRvIGRvIHRoaXMgcHJvcGVybHkuCgpUaGUgcHJvYmxl
bSBpcyB0aGF0IHRoaXMgc3R1ZmYgaXMgZXh0cmVtZWx5IGFyY2hpdGVjdHVyZSBzcGVjaWZpYy4g
U28gCkdGUF9XQyBhbmQgR0ZQX1VOQ0FDSEVEIGFyZSByZWFsbHkgd2hhdCB3ZSBzaG91bGQgYWlt
IGZvciBpbiB0aGUgbG9uZyB0ZXJtLgoKQW5kIGFzIGZhciBhcyBJIGtub3cgd2UgaGF2ZSBhdCBs
ZWFzdCB0aGUgZm9sbG93aW5nIHBvc3NpYmlsaXRpZXMgaG93IGl0IAppcyBpbXBsZW1lbnRlZDoK
CiogQSBmaXhlZCBhbW91bnQgb2YgcmVnaXN0ZXJzIHdoaWNoIHRlbGxzIHRoZSBDUFUgdGhlIGNh
Y2hpbmcgYmVoYXZpb3IgCmZvciBhIG1lbW9yeSByZWdpb24sIGUuZy4gTVRSUi4KKiBTb21lIGJp
dHMgb2YgdGhlIG1lbW9yeSBwb2ludGVycyB1c2VkLCBlLmcuIHlvdSBzZWUgdGhlIHNhbWUgbWVt
b3J5IGF0IApkaWZmZXJlbnQgbG9jYXRpb25zIHdpdGggZGlmZmVyZW50IGNhY2hpbmcgYXR0cmli
dXRlcy4KKiBTb21lIGJpdHMgaW4gdGhlIENQVXMgcGFnZSB0YWJsZS4KKiBTb21lIGJpdHMgaW4g
YSBzZXBhcmF0ZSBwYWdlIHRhYmxlLgoKT24gdG9wIG9mIHRoYXQgdGhlcmUgaXMgdGhlIFBDSWUg
c3BlY2lmaWNhdGlvbiB3aGljaCBkZWZpbmVzIG5vbi1jYWNoZSAKc25vb3BpbmcgYWNjZXNzIGFz
IGFuIGV4dGVuc2lvbi4KCk1peGluZyB0aGF0IHdpdGggdGhlIENQVSBjYWNoaW5nIGJlaGF2aW9y
IGdldHMgeW91IHNvbWUgcmVhbGx5IG5pY2Ugd2F5cyAKdG8gYnJlYWsgYSBkcml2ZXIuIEluIGdl
bmVyYWwgeDg2IHNlZW1zIHRvIGJlIHJhdGhlciBncmFjZWZ1bCwgYnV0IGFybSAKYW5kIFBvd2Vy
UEMgYXJlIGVhc2lseSBwaXNzZWQgaWYgeW91IG1lc3MgdGhhdCB1cC4KCj4gU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gQ2M6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBDYzogIlRob21hcyBIZWxsc3Ry
w7ZtIiA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1hYXJ0ZW4gTGFu
a2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1heGltZSBS
aXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KPiBDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1t
ZXJtYW5uQHN1c2UuZGU+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBD
YzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgoKQWNrZWQtYnk6IENocmlzdGlhbiBr
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4g
LS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYyB8IDE0ICsrKysr
KysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMKPiBpbmRleCAyOTZhYjFiN2MwN2YuLjY1N2Qy
NDkwYWFhNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxw
ZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jCj4gQEAg
LTEwLDYgKzEwLDEwIEBACj4gICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+ICAgI2luY2x1ZGUg
PGxpbnV4L3ZtYWxsb2MuaD4KPiAgIAo+ICsjaWZkZWYgQ09ORklHX1g4Ngo+ICsjaW5jbHVkZSA8
YXNtL3NldF9tZW1vcnkuaD4KPiArI2VuZGlmCj4gKwo+ICAgI2luY2x1ZGUgPGRybS9kcm0uaD4K
PiAgICNpbmNsdWRlIDxkcm0vZHJtX2RldmljZS5oPgo+ICAgI2luY2x1ZGUgPGRybS9kcm1fZHJ2
Lmg+Cj4gQEAgLTE2Miw2ICsxNjYsMTEgQEAgc3RhdGljIGludCBkcm1fZ2VtX3NobWVtX2dldF9w
YWdlc19sb2NrZWQoc3RydWN0IGRybV9nZW1fc2htZW1fb2JqZWN0ICpzaG1lbSkKPiAgIAkJcmV0
dXJuIFBUUl9FUlIocGFnZXMpOwo+ICAgCX0KPiAgIAo+ICsjaWZkZWYgQ09ORklHX1g4Ngo+ICsJ
aWYgKHNobWVtLT5tYXBfd2MpCj4gKwkJc2V0X3BhZ2VzX2FycmF5X3djKHBhZ2VzLCBvYmotPnNp
emUgPj4gUEFHRV9TSElGVCk7Cj4gKyNlbmRpZgo+ICsKPiAgIAlzaG1lbS0+cGFnZXMgPSBwYWdl
czsKPiAgIAo+ICAgCXJldHVybiAwOwo+IEBAIC0yMDMsNiArMjEyLDExIEBAIHN0YXRpYyB2b2lk
IGRybV9nZW1fc2htZW1fcHV0X3BhZ2VzX2xvY2tlZChzdHJ1Y3QgZHJtX2dlbV9zaG1lbV9vYmpl
Y3QgKnNobWVtKQo+ICAgCWlmICgtLXNobWVtLT5wYWdlc191c2VfY291bnQgPiAwKQo+ICAgCQly
ZXR1cm47Cj4gICAKPiArI2lmZGVmIENPTkZJR19YODYKPiArCWlmIChzaG1lbS0+bWFwX3djKQo+
ICsJCXNldF9wYWdlc19hcnJheV93YihzaG1lbS0+cGFnZXMsIG9iai0+c2l6ZSA+PiBQQUdFX1NI
SUZUKTsKPiArI2VuZGlmCj4gKwo+ICAgCWRybV9nZW1fcHV0X3BhZ2VzKG9iaiwgc2htZW0tPnBh
Z2VzLAo+ICAgCQkJICBzaG1lbS0+cGFnZXNfbWFya19kaXJ0eV9vbl9wdXQsCj4gICAJCQkgIHNo
bWVtLT5wYWdlc19tYXJrX2FjY2Vzc2VkX29uX3B1dCk7CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
