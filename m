Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIC7N0dR3WkFcQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 22:25:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC373F312C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 22:25:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D589E10E107;
	Mon, 13 Apr 2026 20:25:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="KYO1KElx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011071.outbound.protection.outlook.com [52.101.57.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC87810E055;
 Mon, 13 Apr 2026 20:25:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HMzv2bEoWxPSw4qNslew5f6iGQaWWubGj/vOgkxdW84Zak1QSialXZBXWAo2Vm641wijyQgYdc0WOu0T3Zc6qXhuwtVNE6F7F2OFRuXUQ/ymxE3MIxo4PyokggFc4y83b1I6E+oHZhlHyNRRureugAcL6oxHCNUuXMN3PMx90kSg7n9GAnq0Xnzx9o6dgTzwpl7i9ZuTplkxSLhbTZZkgXBXjJWiTzCc3uhqcrD7HjAq9qNqPL8QAUhXLN9M2FmNWAP21apmx0lXnyrMEuOh9GpDzwoNaYZc7YCKob7VRr/RYBT4x1+nKsQ1D/JY7aXjDhK/lqG8IXf2whF493T48g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=akNp3m4Iid1v8cmwjp0ofS8pjXed3gQ9X0aepN2Ddjw=;
 b=qV3DL5CuRxNwTCgM6zg1TYJ+00VOTWfPy1DncbNUk+XT3Y2dEh9Yg3cO5Nq0AQ5GuoFytPhggEIa3UGVSE4TwQKSF7/t/mghllglnu6xW6m2UAlnSnfCBUnqrYBsyeIz97776G3KSE1bvockjWy70lfLLaE2CBooy5A0QKdDZ3Y9wFgwbnC9q8VdhpaITJHbm0OvZU4hRiQAQv0+w7FjcRdH+LMpWTZVYscZYrUXZQbbPcPx6vzFl5eZmsNBcAfSpdwNFixa+d0xZcuFCr8VpUzIxVTF4kO7mKS7goN5Ui1YTCKNJa8ZuXmqx973CSVjgQgNPQLuoj95ryiUbZJbGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=akNp3m4Iid1v8cmwjp0ofS8pjXed3gQ9X0aepN2Ddjw=;
 b=KYO1KElxEf4x2JZyP3s31T9Z/ZEM0xveDAkFllW8ap/1PX0APQc9jc25dIfsh+HejoEk6DHT8381IdpOHDPsvC0aqyKnqqQRnCVyondBbX1h7JXcc1fohtsKsc9lS5c5/aBmQOjxBuBVaes6Q7TENRhCSNAfYPRsMyp/Xi0zF8M/nA9pZjofFxcxppROQcz85UuxBUnBpB0QiK9SSlK/uemKRfCDF9zRnfnZpDAbpf82SGrsa3Lm9UfYe7U89APUR01uuXnJwBtuutESAmadKRzgL3h6cCMQJJ0GZFOPIZy5nDxtu92VGuGSCvaX4Hi3FjkKMNZTCAz7vlOc+dmRUA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BN7PPFA8145BD40.namprd12.prod.outlook.com (2603:10b6:40f:fc02::6de)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Mon, 13 Apr
 2026 20:25:35 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Mon, 13 Apr 2026
 20:25:35 +0000
Message-ID: <a675d5fa-29d2-4420-9b82-18a7027fc769@nvidia.com>
Date: Mon, 13 Apr 2026 16:25:28 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
To: Gary Guo <gary@garyguo.net>, Alexandre Courbot <acourbot@nvidia.com>,
 Eliot Courtney <ecourtney@nvidia.com>, Danilo Krummrich <dakr@kernel.org>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Bjorn Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 joel@joelfernandes.org, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-13-joelagnelf@nvidia.com>
 <DHIFF98P1YQ3.1IXUT02E3TF20@nvidia.com>
 <5db2aab1-4b65-486e-ad9b-27a108bdb0d6@nvidia.com>
 <DHMYSTLVHIFJ.A2BDMPVNZNLS@nvidia.com>
 <537a8c5a-3885-4c47-99f6-963b48ddf87d@nvidia.com>
 <DHNKYBM159T9.2UUQ7CU0RN0BU@nvidia.com>
 <2f004511-61d1-4197-84b6-cddcdd275e55@nvidia.com>
 <DHOKN9XVOTIB.1A4JY7CDJFWPS@garyguo.net>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <DHOKN9XVOTIB.1A4JY7CDJFWPS@garyguo.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BLAPR03CA0074.namprd03.prod.outlook.com
 (2603:10b6:208:329::19) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BN7PPFA8145BD40:EE_
X-MS-Office365-Filtering-Correlation-Id: e32bf791-ea43-472e-9981-08de999ad175
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: ebsYEVVSv+Wiul3uryJ2ty31ggyTwywOZBMEPDjiM4moWtJn29dLWAF8v9+DvI1FHoLdQIn4SSiXYhA6sletpQ2TICsihi0YAtn6M/1QrWPVB9At8MvRPRX3aOPCBD0CetQhGP4GXaOZ82s1nhtqLKCoGY87HiqRv0CNB9uf/Db+yygv7e/WtRgMS6xPnR9DUA0re6g9NjctWQjGc5mwpq0xDRMKcWrPGIFpJhis/itwr3g5ue6bmm6oBTo3Ry2D06ZGdR6lfLrRD+HChjQjEqE0zPF2xiG4IL1gJkwWiszkUSwDmM5HkSzq8R5D7dfRLSMLAOn+FG64TTVufWAjpq96UtYYAMFD0aQjHqGoucOpoFup5/5Cvuo78/rzMdmYAVagu9uizjy7p+s0MjR2RG5IxarZ0ChT31NHI4PLmVJGvuhjCRCN5D12qR7kKHM6bqJgKKHa0McxYU+1F85OkCxXhGzhb0+fMI523HFfDJjzOWcLn4TPdD3sKAg4W6htE90OLEplmbWH8YgrcOuxI6JH6DHDaZuntkLZr3cSg4u5HSnnZEGnghfGfyiw5+4+yDEluDpQm6X9tZqHXHlEiNMZBCcj90/DTb3wU9SDXQJN4qEke6hJn/1PnuGzxXjwnuxT+kn3OM1W3n5kx18KoRnweZu/KUtYdN9ZZhGrqkbw5mk+ne0gknkuxST1mvqUOgjH+/U3RvkYlt947HtoPdYyp+oUQVanOI+HnLdlu9/dc/Jjfw2Ld6R/K1e6GEl7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VUZiUlJjb3BRY1hFcGl0VEtVeFc2d0JEaGVoYUgxUXNoQnBWRnJnWitOd1Jr?=
 =?utf-8?B?bUsvd2J3RmlFN1JGaDZJSUQrUXRSVGZZcUNZWVYybGZEdTZJdEJxeWxkTWJ6?=
 =?utf-8?B?NDhPVHd0REJPaEVHVGZrYjBreXZOTEk0bytDeVBybkVxaDFiVksvR3V4YkpZ?=
 =?utf-8?B?VEVsbEZvUVVhcEE4ZzUxR2p3alRucFk1NjdSYzdBSU85Z0tKb3VlRXY4czdP?=
 =?utf-8?B?YU1XOHJqb3Y1ZEM1WnJ4akZvcDVNTEtRS2RiS3VyWE85SVRDMElxR2dKa01a?=
 =?utf-8?B?b00wSnZNSHFmZ0psRmt0cjE0aVd5Zm8xVTBnUzk1TWxBbGViMVlvR2c3Q3Uv?=
 =?utf-8?B?M2QyMGF2dDc3ZzFPMnI0WFRMZGp5ZmF3K1ZCN25GREZ3clRES1oxRE8xZ05B?=
 =?utf-8?B?K3BmQ3kvYm8vQWFRdHIzeVFRNUV3WjdjQk1OUjUxNWJIL3ZPWFJ3YmlCSkJW?=
 =?utf-8?B?UGZaZEUzMGhGMUo5SGpNdTBQZ0ZjVlJSN21PM3BGbXhSbG5MNzlGT0ovcmdG?=
 =?utf-8?B?S045VHArY1dyejliN2RLSFF3aVQ3eXN6TWtmazdSMUYyVGpYcmhIbTRFTUpz?=
 =?utf-8?B?OVJZTmpueWFyd2ZBZXRmNUpHWUVKcnhYMVlUTXEwcXljQTdCZXkvaGJ0a3FU?=
 =?utf-8?B?emFLNUpZUHcyaHR1TitHM2laMlRydGpPVzlSeTFJZGZKTThWUTRuR3Q5eGRo?=
 =?utf-8?B?MDNpK2FsaS96SHJIc3o2d2VrY214Zjd4dHh1QWJMdEhSL3BJSlYwdmFETlRl?=
 =?utf-8?B?c0NTRk5LNXhaUjY5ZnlkWGpUZiszclVJM2ZsWXdZWmpwQUE5WGE4TnNJbFdq?=
 =?utf-8?B?U0E0OUxTOXpWaVBiQ0RobjZDellkTnpJWG41UFdCYjJVcFVqbjVkRGYvd1E5?=
 =?utf-8?B?MTFJV0ljTytJM0pYWnplS3E4ZWpKd0s0TUNsK3dQTEs3aVdPaE1KK3BZTU9E?=
 =?utf-8?B?eHgvTCtWdTU1RU0xSlpDZllWMk5iM3J1TElzbldjY2RPQWxvbnQrVm1CaEVj?=
 =?utf-8?B?bXZIS002VzhIN2JYdUZuOFVHN2o4aERjdGYvOE5xeG80VnVIakJMOXJ1RUY3?=
 =?utf-8?B?N1d5RzZUTE1FWktxUkVjc080dnFrbTI3dHJRcHVKOVo4UVZoMWFBZnY5L0gw?=
 =?utf-8?B?TFRhR3hvQk9zRlpycmlHWFc2OUVTMzhxaW5XZ00yTlVZWjl4YWoyS1U4YWRm?=
 =?utf-8?B?aElnc2hzMnY4Qm5iTkZNVkxWTkdxdkEvcFh4OExQdTI5WVdHaFZ0YU4wN0s0?=
 =?utf-8?B?VzJNbU1IbEJOaDU0UkY1Vk0wc3BqeWxzZFJPbjJ0RjMzOWVXNXA1WGFpNzZ2?=
 =?utf-8?B?N2ZNSlBJWU1QK213MUczdHRyVFl4ZEZSbWRBcktMZDExMVZJWmhkWjhQTmtz?=
 =?utf-8?B?eHFYMWRGQ0hwQUJnbjFQOVFVWVVnK3FZUThsQXJhSENZQU9zd2JVSGxoTWlq?=
 =?utf-8?B?SERsMHhueTlhRVNPRURBNlZXNnU3dUxuUHBlMkdFZTk1NmRyMmdUdnAzN29I?=
 =?utf-8?B?MzZEWG1LT0p0SVoza0xyMDlTKzNqL25kbzdtS29RanZ1QmFreXV5a3duSW9P?=
 =?utf-8?B?SHQyV3IzZDIvaS9YM1RETG5NUVJqSnhReUtsUkF4a3hJYlo0WldOMUVxOWtk?=
 =?utf-8?B?U3dOMkhvZFcyTjdwam9qV1BYU0xmZzNOdi9PVkJkZG5oajN0c0M1SnRQbWlY?=
 =?utf-8?B?SDlxUHZWM0l1RFdRYUJ3RlgxSFMrZ01FQ2hvQTArUTFGT2MveGVLMTE4TG9h?=
 =?utf-8?B?NldHbnRZclFaK2xBUFFZdVVHankweDJBSWZuQkhrNFAzbmNBVnFML2tPYWZx?=
 =?utf-8?B?ZXNWbmNETzd1S3hoQll0MjFqSmNXdnFoZ2lHb3VYbHY0UExzcVNWbERLbldi?=
 =?utf-8?B?TzcvVVZyMXIrYjBEUVg4WDJVTVFyRnNRMEVZMWJUdWJtQ2I0WXA4K09hOG9G?=
 =?utf-8?B?VW9ZMnZ5YXkyRVFCdGxRam5qd2VGMmc2WHZjT1EyTVllZmhabHlHMHNXUGlG?=
 =?utf-8?B?dUR4cEE4ODFORmdVdGZaMlpjbmhDRTdwemYxRHk5WjcvUmoySmltNDZJUy95?=
 =?utf-8?B?YUVLZUtOYmhJR3JOS2t0MWtsOEoxK3hXU3hYbEZFTGdqVGMwMG05QWk3R09x?=
 =?utf-8?B?aG5RZkJjU1JiNzU5aGtvUmtQSVFXYzNVYmpxb05aSGcrc2NzQng5YnV6L0w5?=
 =?utf-8?B?WFF1Uzdnclh5eWVUUW9yQ1dxaldOaTkvb0t1SlUyZ2lZcFhhOElKRjFDUCty?=
 =?utf-8?B?a0hQSWtZUUdKWGgzQXNHK0dXWWRLSGg5UEY5SC9xYjdTUndDSXVKQWFvWEox?=
 =?utf-8?B?RXFIK0JqSFZKaTFLUjU1OG5PRXJyTWkwTzRtQ2pYd1Azb0lSZ0doZz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e32bf791-ea43-472e-9981-08de999ad175
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 20:25:35.3315 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8uIGpcPvb4DaxWbwDmAcKD+6FM6qpExw6cxO3RDMTxTjSC5gshROq8llCMRMKhsbekUfqcW1JOGBovB9kp45mA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PPFA8145BD40
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
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vmm.rs:url,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:mid,pagetable.rs:url]
X-Rspamd-Queue-Id: 4BC373F312C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/9/2026 7:02 AM, Gary Guo wrote:
> On Wed Apr 8, 2026 at 9:19 PM BST, Joel Fernandes wrote:
>> Hi Alex, Eliot, Danilo,
>>
>> Thanks for taking a look. Let me respond to the specific points below.
>>
>> On Wed, 08 Apr 2026, Alexandre Courbot wrote:
>>> After a quick look I'd say that having a trait here would actually be
>>> *good* for correctness and maintainability.
>>>
>>> The current design implies that every operation on a page table (most
>>> likely using the walker) goes through a branching point. Just looking at
>>> `PtWalk::read_pte_at_level`, there are already at least 6
>>> `if version == 2 { } else { }` branches that all resolve to the same
>>> result. Include walking down the PDEs and you have at least a dozen of
>>> these just to resolve a virtual address. I know CPUs are fast, but this
>>> is still wasted cycles for no good reason.
>>
>> I did some measurements and there is no notieceable difference in both
>> approaches. I ran perf and loaded nova with self-tests running. The extra
>> potential branching is lost in the noise. In both cases, loading nova and
>> running the self-tests has ~119.7M branch instructions on my Ampere. The total
>> instruction count is also identical (~615M).
>>
>> I measured like this:
>> perf stat -e
>> branches,branch-misses,cache-references,cache-misses,instructions,cycles --
>> modprobe nova_core
>>
>> So I think the branching argument is not a strong one. I also did more
>> measurements and the dominant time taken is MMIO. During the map prep and
>> execute, page table walks are done. A TLB flush alone costs ~1.4 microseconds.
>> And PRAMIN BAR0 writes to write the PTE is also about 1 microsecond. Considering
>> this, I don't think the extra branching argument holds (even without branch
>> prediction and speculation).
>>
>> Also some branches cannot be eliminated even with parameterization:
>>
>>     if level == self.mmu_version.dual_pde_level() {
>>         // 128-bit dual PDE read
>>     } else {
>>         // Regular 64-bit PDE read
>>     }
>>
>> This isn't really a version branch -- it's a structural branch that
>> distinguishes between 64-bit PDE and 128-bit dual PDE entries. Any MMU
>> version with a dual PDE level would need this same distinction.
>>
>> I also did code-generation size analysis (see diff of code used below):
>>
>> Code generation analysis:
>>
>>   Module .ko size:   Before: 511,792 bytes   After: 524,464 bytes  (+2.5%)
>>   .text section:     Before: 112,620 bytes   After: 116,628 bytes  (+4,008 bytes)
>>
>>   The +4K .text growth is the monomorphization cost: every generic function
>>   is compiled twice (once for MmuV2, once for MmuV3).
>>
>>> If you use a trait here, and make `PtWalk` generic against it, you can
>>> optimize this away. We had a similar situation when we introduced Turing
>>> support and the v2 ucode header, and tried both approaches: the
>>> trait-based one was slightly shorter, and arguably more readable.
>>
>> Actually I was the one who suggested traits for Falcon ucode descriptor if you
>> see this thread [1]. So basically you and Eliot are telling me to do what I
>> suggested in [1]. :-) However, I disagree that it is the right choice for this code.
>>
>> [1] https://lore.kernel.org/all/20251117231028.GA1095236@joelbox2/
>>
>> I think the two cases are quite different in complexity:
>>
>> The falcon ucode descriptor is essentially a set of flat field accessors
>> and a few params (imem_sec_load_params, dmem_load_params).
>> The trait has ~10 simple getter methods. There's no multi-level hierarchy,
>> no walker, and no generic propagation.
>>
>> The MMU page table case is structurally different. Making PtWalk generic
>> over an Mmu trait would require:
>>
>>   - PtWalk<M: Mmu> (the walker)
>>   - Plus all the associated types: M::Pte, M::Pde, M::DualPde each
>>     needing their own trait bounds
>>
>> And we would also need:
>>   - Vmm<M: Mmu> (which creates PtWalk)
>>   - BarUser<M: Mmu> (which creates Vmm)
>>
>> I am also against making Vmm an enum as Eliot suggested:
>>        enum Vmm {
>>            V2(VmmInner<MmuV2>),
>>            V3(VmmInner<MmuV3>),
>>        }
>>
>> That moves the version complexity up to the reader. Code complexity IMO should
>> decrease as we go up abstractions, making it easier for users (Vmm/Bar).
>>
>> If you look at the the changes in vmm.rs to handle version dispatch there [2]:
>> Added: +109
>> Removed: -28
>>
>> [2]
>> https://github.com/Edgeworth/linux/commit/3627af550b61256184d589e7ec666c1108971f0e
>>
>> The main benefit of my approach is version-specific dispatch complexity is
>> completely isolated inside MmuVersion thus making the code outside of
>> pagetable.rs much more readable, without having to parametrize anything, and
>> without code size increase. I think that is worth considering.
>>
>>> But the main argument to use a trait here IMO is that it enables
>>> associated types and constants. That's particularly critical since some
>>> equivalent fields have different lengths between v2 and v3. An
>>> associated `Bounded` type for these would force the caller to validate
>>> the length of these fields before calling a non-fallible operation,
>>> which is exactly the level of caution that we want when dealing with
>>> page tables.
>>
>> I think Bounded validation is orthogonal to the dispatch model.
>> We can add Bounded to the current design without restructuring
>> into traits. For example:
>>
>>     // In ver2::Pte
>>     pub fn new_vram(pfn: Bounded<Pfn, 25>, writable: bool) -> Self { ... }
>>
>>     // In ver3::Pte
>>     pub fn new_vram(pfn: Bounded<Pfn, 40>, writable: bool) -> Self { ... }
>>
>> The unified Pte enum wrapper already dispatches to the correct
>> version-specific constructor, which would enforce the correct Bounded
>> constraint for that version.
>>
>>> In order to fully benefit from it, we will need the bitfield macro from
>>> the `kernel` crate so the PDE/PTE fields can be `Bounded`, I will try to
>>> make it available quickly in a patch that you can depend on.
>>
>> That would be great, and I'd be happy to integrate Bounded validation once
>> the macro is available. I just don't think we need to restructure the
>> dispatch model in order to benefit from it.
>>
>>> But long story short, and although I need to dive deeper into the code,
>>> this looks like a good candidate for using a trait and associated types.
>>
>> The walker code (walk.rs) is already version-agnostic and reads cleanly.
>> The version dispatch is encapsulated behind method calls, not exposed as
>> inline if/else blocks.
>>
>> Generic propagation (or version-specific dispatch at higher levels) adds more
>> complexity at higher layers.
>>
>> Enclosed below [3] is the diff I used for my testing with the data, I don't
>> really see a net readability win there (IMO, it is a net-loss in readability).
>>
>> [3]
>> https://git.kernel.org/pub/scm/linux/kernel/git/jfern/linux.git/commit/?h=trait-pt-dispatch&id=5eb0e98af11ba608ff4d0f7a06065ee863f5066a
> 
> IMO this diff is quite has got me quite in favour of trait approach.
> 
> I wanted about to purpose something similar (or maybe I had already?) trait
> approach some versions ago but didn't due to the eventual need of `match` like
> dispatch (like you had with `vmm_dispatch`), but your code made that looks not
> as bad as I thought it would be.
> 

That's the drawback right, now vmm_dispatch has to deal with version difference
where as before, the lower layers would. Maybe we can keep the vmm layer the way
it is now, but do the dispatch itself at the lower layers, while still using
traits like in the diff. I'll try that as well. :)

thanks,

--
Joel Fernandes

