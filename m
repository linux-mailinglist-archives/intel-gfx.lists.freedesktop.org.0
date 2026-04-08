Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFIdOej91Wn4/gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 09:04:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 209413B7D88
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 09:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2030610E53A;
	Wed,  8 Apr 2026 07:04:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="YR2gWBZl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL0PR03CU003.outbound.protection.outlook.com
 (mail-eastusazon11012015.outbound.protection.outlook.com [52.101.53.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 996D110E530;
 Wed,  8 Apr 2026 07:04:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OuXzxHarW9Usyz2Y42gL5dLB4D8TSDVWMyYpz4o5lhe1u8OHJOvNHbsljLbIPMS3zPdJGWWRNJ1lmeK4Vk289RfzuO5lRx62zBR9j5Vcfxh9/AFmfya1XICaUbru92RPw6fHMoSmfMc6paBHX7EkroRQ25AyJamq1+MvujUffkUAvekua5wqGVTOriXt9P517znBtA6mTq78FswwXim7cjPfKxLiJ/rb7dCfzroNdVr13ZiBUdbwMVvX5llnFtKICb7PtSCgWYW5PPfXTZaf2v4atunGxP4OYoH4dng7t/x1jiZQMDGXoTtMEpI+T8dNaR5njB62rmO0EGRdcG+PlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QutQ3CdynSj67ZC1105GCYUZGUGuk4BvqWikYEe2YQw=;
 b=LJr33xsj8Ggl39A8jVGzGCewhnjEZzg4dNAmLsOEmz5LLraMfZSTH5/jr1BYDi+8O+m7RgV0vsu/x2aJHhZ20iFvK4ERFz/8n3zApZ/J4IcfeLYqY1rnxiSoW4K79t6ewbcX3gBGmwAZwBXIqIEKVwkC2gi47KTiYYwEjPoiMJh6BW8XG0xmfD0y2Mm3say2QosWqayO4t9kCkT7VnYj3Kp5RjJPntSJiH4x4v8yJfHDm+1a1FFfCx0mtwkTyQif3t3XpOYU5CrV8io/OZjTYwQjAy0yG9gbLw+asNDcY0jBXYdqwbdjMYKKLUTNOtp05qoYf79ze2CupRQGc7ErtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QutQ3CdynSj67ZC1105GCYUZGUGuk4BvqWikYEe2YQw=;
 b=YR2gWBZlY96RtUZKYda0UoWAX/o3zRtl6naMNUSIAnXTR/g5EvaNGfyTdkJQ9bLsTMtFsv3LMRZAiU2siO0Y3xYDYtWfeNBeAmhxxpstcfERQfgtzrLm0lDzbgd4apGJXtY0zhVe/ujmmyFRpJgkMsDe8De5yrpK0HKSJHcCX4gSj++c+SFkUb3Uf4TSzZ5+jAkmMgcAhQ3bfxY0b271FwKEPrqG1JTSzsdJzWpIrsiANGPEX9dvHHRUH5cmBNfV8rc9ZvDWPR2XBczYhnqut33K2IYFqngJ2S5Kqfxe6Oo5UusN4kOwzVQJzC00aX4tV7+DHZH42ahM3V2Wmjo31w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by PH7PR12MB8055.namprd12.prod.outlook.com (2603:10b6:510:268::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.21; Wed, 8 Apr
 2026 07:03:59 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%4]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 07:03:59 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 08 Apr 2026 16:03:54 +0900
Message-Id: <DHNKYBM159T9.2UUQ7CU0RN0BU@nvidia.com>
From: "Alexandre Courbot" <acourbot@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>
Cc: "Eliot Courtney" <ecourtney@nvidia.com>, <linux-kernel@vger.kernel.org>,
 "Miguel Ojeda" <ojeda@kernel.org>, "Boqun Feng" <boqun@kernel.org>, "Gary
 Guo" <gary@garyguo.net>, "Bjorn Roy Baron" <bjorn3_gh@protonmail.com>,
 "Benno Lossin" <lossin@kernel.org>, "Andreas Hindborg"
 <a.hindborg@kernel.org>, "Alice Ryhl" <aliceryhl@google.com>, "Trevor
 Gross" <tmgross@umich.edu>, "Danilo Krummrich" <dakr@kernel.org>, "Dave
 Airlie" <airlied@redhat.com>, "Daniel Almeida"
 <daniel.almeida@collabora.com>, "Koen Koning"
 <koen.koning@linux.intel.com>, <dri-devel@lists.freedesktop.org>,
 <rust-for-linux@vger.kernel.org>, "Nikola Djukic" <ndjukic@nvidia.com>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Jonathan
 Corbet" <corbet@lwn.net>, "Alex Deucher" <alexander.deucher@amd.com>,
 "Christian Koenig" <christian.koenig@amd.com>, "Jani Nikula"
 <jani.nikula@linux.intel.com>, "Joonas Lahtinen"
 <joonas.lahtinen@linux.intel.com>, "Rodrigo Vivi" <rodrigo.vivi@intel.com>,
 "Tvrtko Ursulin" <tursulin@ursulin.net>, "Huang Rui" <ray.huang@amd.com>,
 "Matthew Auld" <matthew.auld@intel.com>, "Matthew Brost"
 <matthew.brost@intel.com>, "Lucas De Marchi" <lucas.demarchi@intel.com>,
 "Thomas Hellstrom" <thomas.hellstrom@linux.intel.com>, "Helge Deller"
 <deller@gmx.de>, "Alex Gaynor" <alex.gaynor@gmail.com>, "Boqun Feng"
 <boqun.feng@gmail.com>, "John Hubbard" <jhubbard@nvidia.com>, "Alistair
 Popple" <apopple@nvidia.com>, "Timur Tabi" <ttabi@nvidia.com>, "Edwin Peer"
 <epeer@nvidia.com>, "Andrea Righi" <arighi@nvidia.com>, "Andy Ritger"
 <aritger@nvidia.com>, "Zhi Wang" <zhiw@nvidia.com>, "Balbir Singh"
 <balbirs@nvidia.com>, "Philipp Stanner" <phasta@kernel.org>, "Elle Rhumsaa"
 <elle@weathered-steel.dev>, <alexeyi@nvidia.com>, <joel@joelfernandes.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-13-joelagnelf@nvidia.com>
 <DHIFF98P1YQ3.1IXUT02E3TF20@nvidia.com>
 <5db2aab1-4b65-486e-ad9b-27a108bdb0d6@nvidia.com>
 <DHMYSTLVHIFJ.A2BDMPVNZNLS@nvidia.com>
 <537a8c5a-3885-4c47-99f6-963b48ddf87d@nvidia.com>
In-Reply-To: <537a8c5a-3885-4c47-99f6-963b48ddf87d@nvidia.com>
X-ClientProxiedBy: OS7PR01CA0153.jpnprd01.prod.outlook.com
 (2603:1096:604:24d::7) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|PH7PR12MB8055:EE_
X-MS-Office365-Filtering-Correlation-Id: 383e0f28-834d-4218-de67-08de953d0188
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|10070799003|7416014|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: rzFS6rTZvqUDpiwWHXi2W0V3uh5PEOT9ZgsX3+WqkdExvTDntSp7C13ImQ56PsO//qyTtnZ4joYnO7jncP9k0BkdPJ5RLMX6E49V8F9+2+Jepi+C8kldXniy4WVMnYExmLEV5M06G3Ru9f2Syjw1mqpkk40gPBBu2LOc6OQf2fJrWJ5SKaDTlkhA5mvrLt+XtsRPwxW5IJ93uZI8d47S6unVHM3658XIMIJA4BiJiylhYTOB2W54FWObkGc9YFLSfxX4dDDtiTojDceE2f8amuwHaa/OaqDjO2KUttjpnYllQ5KQs1eEH/P+VpnJBIXUp+ivgyXGZTJJD3Dv4NKXtn0UgN34lsCNNd4MVwn0BH0EvmHiHYHj/Zy1w2ysBzatAl0OuG6m590z55OMqn11eZQrRGVd/Nx/yBf/Ymnii3KsibsrEzO3ctKg4ZRIeJF3NukpcXMKonf+1DeOeb9RcSdFHsDc7KNqWdXjgrfsBedeYNI9CaQrWOgySP/n8l0A4cRDqI9UfyisGEVfekSwbq6i8oJ640e55KhSDSJA27YnLCbDnjMMWxQKNFF+nQiK76c95sQP5aVSQIew+lGw6c1vZX5OQsdfKaqDTN/eKVKDqwhmL0d4PjBSI19pQuocXZyrMzXz7D09Vow35eDEYKgh89kyeAV4wzHOrD1jUaQ/qvuVt1keCRLD58W7GV5JB6oUIHPGlPzbjHzlOtuv8i19Ihyic5pRod0XnOUX5ds=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3990.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(7416014)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXFiQnAwTnpBYVEwT0EwOTlTcHNWUmNpYm5QaUVYSVNWbTlib1RQZCs1V0tO?=
 =?utf-8?B?bWQ1ME0veWJ6VnJpOTdiSFlrSW9waEZyZmpXSTZVbDdZeEhNSGhXcnVrYUho?=
 =?utf-8?B?M2pycDlCTXJROU5vUzVkZk9PV0xXclJ5VzUrNjU3YThBT0FHditad04yaS9H?=
 =?utf-8?B?TklBdDNiM1JXZzBWb1dUNWNpZkRMcXNvUlZiUDlGeUt1UVNldnpGNWN3WVdW?=
 =?utf-8?B?bnFWNTFYbkRocXI4WnhNdS8xNUQzSlZGTEs5OVVYWEk2SUNZZE93ekRtVjVO?=
 =?utf-8?B?cmdxeXh4WFdRWWNCVVkyay9LSHpLS0NmbENvRkJnWXF6NDNFSjE3MGlJRTA4?=
 =?utf-8?B?WmlEWHlLVS9MRlVXOHFyNlM5cWsvSEJwS2NLWnpYSGw5K05kOUllWW8reDBh?=
 =?utf-8?B?cG56OXhnb1hlWk5SODRCOE01NGN2b3FML2I4WFlwUXl4WE5qQUxhS1JodkJJ?=
 =?utf-8?B?RVFjQTdMTGVjZ3doRzIxNmp2SkoyaEd4b1RRNFBUaUNKckZDbzNsbWVJcHRV?=
 =?utf-8?B?akFkRlBwdFdHVlFUSXNoVlpTZXVieVlLTkppMTRWdUlaOVBLRkNqMnZxOFVQ?=
 =?utf-8?B?dnhKRkRQOGtEdG0xSXl4QUZFUjY5WkwzQ002YWxEZzBndGF6TmwzaGt3L3VV?=
 =?utf-8?B?Sytpejk4aUhZaWdQeHVpaWIvczAvWnpTSWEyd1FxZmNTNlo2WHBSdEc1bm5F?=
 =?utf-8?B?MnlMRFBZNUVUT2N1OFpaR21DMkZTQXI0WEVrRzl5c0FUZ3lFckJXOGtUdTV4?=
 =?utf-8?B?WkxyRW9seENrZzcvbHdxZEpTUlIzcjY1SmtCQkl0YVQvbzR6SGFoQS9lamFz?=
 =?utf-8?B?S0h4VlZpQWhPWXFmcTNHQUhmV3F6RHFoM1dhaGYwbitZaWNlRjh0VnpJQW5C?=
 =?utf-8?B?SGVNWEZ0eUtRbWVhOURjYmhJSUpseEdiaHNHVUF1djRvelRIYzFVT01jV3VZ?=
 =?utf-8?B?ZjdDWXdrZzNDQ0w4cnN6cDlNWEFGVkpqTkwwUi9HdGR5dUgwOGlwdVZjL2ZK?=
 =?utf-8?B?eW84bkFLRzBUbGhBazV5RzZYaU92S0NCQ0hhdml6bmJBTEhZckIzUUI4Q2hN?=
 =?utf-8?B?blFrL0FLVFd6ck9ZcVhFam9GNzVUeFJubUtZTXAzL1NKMldYNEJCbk1ZWTk2?=
 =?utf-8?B?Q2UxT0RsVzMvK2Z5UjlGQjh1UW90Y3FVREx3TXdHQVcvMHlmMmJYNTRrTWw1?=
 =?utf-8?B?TzNyT0FEU2pzMlB0WUt0WHZQampYWUhMbjJKNGdPY0ZvNU5tRW1RZXJRUFM4?=
 =?utf-8?B?RWZSOE1VRDE3QXJmcUdxOWtBeDFmTklVc1U3dHNqMGhGQUV2R0FQMXhvc0VO?=
 =?utf-8?B?VFY5TGo3bU02TmMwVXljZ3pIQUVRTGhPNzJmSXgrQWVOYnQxQVo0Tmc0VStB?=
 =?utf-8?B?NDVzTW5SNzIwNDlOb01SRmhsTk5yblpiL25yMUxjdFhYem54bWJzWWs5ejFr?=
 =?utf-8?B?a0hLeTdBRnI5OEJuSURkSjU4TW9GdXFzMkJ2U212WDl6WmNKQ24xUXBqcHpG?=
 =?utf-8?B?QjZHd3JpU2k2Y3VCOTIxdXB5Z29CdjRmU2JMaWRWN0ROZjROUWIzOWhSWEtp?=
 =?utf-8?B?NmZjc2dUelNpUndOcTJQcTcrbjhyRWlXSjJYSEdXcmVGS2RBaUpPTktnaG4v?=
 =?utf-8?B?V2ZRWkY5clFORFV6VFhVNXdobm96QXgwTXJMNkp3ck5XelN1WHlLTkZ2SGVt?=
 =?utf-8?B?Q1VNWEpjM3JGSEozTlNXWGdYTnIwTjRtbXBKR0laa3N2SjhHSzY2VUhBME51?=
 =?utf-8?B?Vmc1bE91Zm9DKzlBZHlTSVIvY2NaNnNCS0xsYi9UUWtLZEJqcEgwVTRUT0pO?=
 =?utf-8?B?bTExaHBERjI2M3Zob2FZdTJMempPY3gvdGVzYmhlQjYzcHZUazFITzJBSHRQ?=
 =?utf-8?B?dE9uWml6bkFPSjRabWMwTjcxb2hDZmJkWWxTN0xIcXJMQkVzQ0FuYndURGhz?=
 =?utf-8?B?T0xnSHdyaHFKaVdDdEtJMzhuYnIvRlJWano0UkUyS01TQTgyS3BrUWZyQWcy?=
 =?utf-8?B?Z1hscGpiT3F0RmE4TUx6S3UvRTVodUU0Sys3MjVnTDUyQzBRbWtna1dFUFk0?=
 =?utf-8?B?VzNVMW9hWko0eVhhVXhDMGR6UG9PQ2YzNm56bDF6L2lkVGNja2hlN20yazFB?=
 =?utf-8?B?cEd1aGlkZk5BcVpmQlBuaUowUVc5RE1ZUUtsNm85RUhzY2dsRERSbTdmMXNG?=
 =?utf-8?B?ZUM5eC9mVnRLT0NCcHpvdEU1VUtoR1RCT0RpSU03L2tzNkNqZmZoTFV6VDZj?=
 =?utf-8?B?SGpUUjZSR2ZFcURQM28zWmFDcEMydk9Xdzl2VXkxbW5uZmU5VUc2aEpMYXVh?=
 =?utf-8?B?anZ4RGJOUm1vUjA4MlNHS1hoeXBlak1hTENmaGFndUtDZEhKNCtvOXRlUnpU?=
 =?utf-8?Q?Q9PcPYau7wCRIs4fuh3bvmfqGtCWfzGDlLHRQZQ9lfisB?=
X-MS-Exchange-AntiSpam-MessageData-1: gItelP6aPABccg==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 383e0f28-834d-4218-de67-08de953d0188
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 07:03:58.9146 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5SV7SQfyl2ZUWI0I7leiMrt3jnb1RZEk98TyxNDXjA66n6KoDRoRJwadQqvOTL2wEqHWqa5es+9TsECkAYH2VQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB8055
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[nvidia.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 209413B7D88
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue Apr 7, 2026 at 10:59 PM JST, Joel Fernandes wrote:
> Hi Eliot,
>
> On 4/7/2026 9:42 AM, Eliot Courtney wrote:
>> On Tue Apr 7, 2026 at 6:55 AM JST, Joel Fernandes wrote:
>>>>> +    /// Compute upper bound on page table pages needed for `num_virt=
_pages`.
>>>>> +    ///
>>>>> +    /// Walks from PTE level up through PDE levels, accumulating the=
 tree.
>>>>> +    pub(crate) fn pt_pages_upper_bound(&self, num_virt_pages: usize)=
 -> usize {
>>>>> +        let mut total =3D 0;
>>>>> +
>>>>> +        // PTE pages at the leaf level.
>>>>> +        let pte_epp =3D self.entries_per_page(self.pte_level());
>>>>> +        let mut pages_at_level =3D num_virt_pages.div_ceil(pte_epp);
>>>>> +        total +=3D pages_at_level;
>>>>> +
>>>>> +        // Walk PDE levels bottom-up (reverse of pde_levels()).
>>>>> +        for &level in self.pde_levels().iter().rev() {
>>>>> +            let epp =3D self.entries_per_page(level);
>>>>> +
>>>>> +            // How many pages at this level do we need to point to
>>>>> +            // the previous pages_at_level?
>>>>> +            pages_at_level =3D pages_at_level.div_ceil(epp);
>>>>> +            total +=3D pages_at_level;
>>>>> +        }
>>>>> +
>>>>> +        total
>>>>> +    }
>>>>> +}
>>>>> +
>>>>
>>>> We have a lot of matches on the MMU version here (and below in Pte, Pd=
e,
>>>> DualPde). What about making MmuVersion into a trait (e.g. Mmu) with
>>>> associated types for Pte, Pde, DualPde which can implement traits
>>>> defining their common operations too?
>>>
>>> I coded this up and it did not look pretty, there's not much LOC saving=
s and the
>>> code becomes harder to read because of parametrization of several funct=
ions. Also:
>>=20
>> Thanks for looking into it. Sorry to be a bother, but would you have a
>> branch around with the code? I'm curious what didn't look good about it.
>
> Sorry but I already mentioned that above, the parameterizing of dozens of
> function call sites, 3-4 new traits (because each struct like
> Pte/Pde/DualPde etc each need their own trait which different MMU version=
s
> implement) etc. The code because hard to read and readability is the top
> critical criteria for me - I am personally strictly against "Lets use shi=
ny
> features in language at the cost of making code unreadable". Because that
> translates into bugs and nightmare for maintainability.

After a quick look I'd say that having a trait here would actually be
*good* for correctness and maintainability.

The current design implies that every operation on a page table (most
likely using the walker) goes through a branching point. Just looking at
`PtWalk::read_pte_at_level`, there are already at least 6
`if version =3D=3D 2 { } else { }` branches that all resolve to the same
result. Include walking down the PDEs and you have at least a dozen of
these just to resolve a virtual address. I know CPUs are fast, but this
is still wasted cycles for no good reason.

If you use a trait here, and make `PtWalk` generic against it, you can
optimize this away. We had a similar situation when we introduced Turing
support and the v2 ucode header, and tried both approaches: the
trait-based one was slightly shorter, and arguably more readable.

But the main argument to use a trait here IMO is that it enables
associated types and constants. That's particularly critical since some
equivalent fields have different lengths between v2 and v3. An
associated `Bounded` type for these would force the caller to validate
the length of these fields before calling a non-fallible operation,
which is exactly the level of caution that we want when dealing with
page tables.

In order to fully benefit from it, we will need the bitfield macro from
the `kernel` crate so the PDE/PTE fields can be `Bounded`, I will try to
make it available quickly in a patch that you can depend on.

But long story short, and although I need to dive deeper into the code,
this looks like a good candidate for using a trait and associated types.
