Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eE3PAagEzml+kQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 07:54:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2DC38436C
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 07:54:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9848D10EF1F;
	Thu,  2 Apr 2026 05:54:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="rSqZ9TlZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY3PR05CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11013055.outbound.protection.outlook.com
 [40.93.201.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FE1310E294;
 Thu,  2 Apr 2026 05:54:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ahgNxq1nD4niwqYu2mZJhMq5cJf3j6sZiLy/shmjIhnd05YNW423dcUIclhXVvUO9vAHHev4EGCMfhnKzDaHODwiYbRfxDmu+pCVnJTcfAmvCRDhPKhAT9dOKXn3+LT0Y51C/KZKAN2j5jHf9hxjcNE8y/89s+brE912bvjzPS0jvzdRz0N4bhS4UukmIE6bOqKorm0Wn+m6wfYHW+lg22i9ui7aeLtllQJeeTnATYf1Nbk2/bxirTpXqODICD2/TnaNbI6+rjjUGlIxxRuUpXvOgwVP+955g8rk21uU5Jvb0f1vQnbwpea0Rf+fw/0/0sYLztqts8So9CrMuRJTPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pcROgsUVfRT9ikIWrSHQcCQGr2vObC9YFEKjWrGnEF8=;
 b=rEvQAG6npjsCmGpgaMY3+7RBLj+alSOQrWNhtPD30KDBD+SeWG+CrDeGKWqWFc62fixDbRdU5Xc81dGRCMScYjaYviBp91dKrf8Ugceyv4UVLhM5RDw4petZkdeOR53RBYMC3Wu+LXsQWSM/vP3UzfemwKJOXirMyb7QF3ZzIkOe74QRW2ngJWKbW3PtFrGJjgb5IUlnpYazc7aYhuLgaMLgBMydalP2Ul4puSl6xuJ5dYLtCN8BPSuGH52N6A1rCHtBC+4zuBZcsnsb8D4fLedLvbzb1FW946F11E3Ac01eYRxhYGrsKEZmKaVP+BmpurELcrRizKPnelrbmtvE6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pcROgsUVfRT9ikIWrSHQcCQGr2vObC9YFEKjWrGnEF8=;
 b=rSqZ9TlZI3FpnsMxrW2IWvyJUQB9QnTno2QQxpSq/MfTLPhInsqrPoKGZ2dDR+QO7cHDsfgER5Tx67y3NiNLQmO/d4RP6AyuWkubmsXrg6KvgL0Hevl+Lx1Iml+UaA5ms32I0Bc+rl00fSE+HsPDhzQaBB0k2Y90UqfPHDcn2bjNIX28yoJpEowyRYUuo2hnhrSzzC8TNGycSc4hzI1KghJg83V1DsNQN3BpsamzzVAevyoQAHk+U8AHmmbuocPUrHAEw+grNW5FGwdoYho7hIw8sJ+r3QGWgqoOl8WmVJudTi+as98toTx4PLYuxw1JKd7+o1ZCFlTBeh3f2l1geg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from BL0PR12MB2353.namprd12.prod.outlook.com (2603:10b6:207:4c::31)
 by SJ5PPF1394451C7.namprd12.prod.outlook.com
 (2603:10b6:a0f:fc02::98b) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.10; Thu, 2 Apr
 2026 05:54:38 +0000
Received: from BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0]) by BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0%4]) with mapi id 15.20.9769.017; Thu, 2 Apr 2026
 05:54:37 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 02 Apr 2026 14:54:30 +0900
Message-Id: <DHIFPXAGCWU7.300NRYPR06KDG@nvidia.com>
Cc: "Miguel Ojeda" <ojeda@kernel.org>, "Boqun Feng" <boqun@kernel.org>,
 "Gary Guo" <gary@garyguo.net>, "Bjorn Roy Baron"
 <bjorn3_gh@protonmail.com>, "Benno Lossin" <lossin@kernel.org>, "Andreas
 Hindborg" <a.hindborg@kernel.org>, "Alice Ryhl" <aliceryhl@google.com>,
 "Trevor Gross" <tmgross@umich.edu>, "Danilo Krummrich" <dakr@kernel.org>,
 "Dave Airlie" <airlied@redhat.com>, "Daniel Almeida"
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
 <epeer@nvidia.com>, "Alexandre Courbot" <acourbot@nvidia.com>, "Andrea
 Righi" <arighi@nvidia.com>, "Andy Ritger" <aritger@nvidia.com>, "Zhi Wang"
 <zhiw@nvidia.com>, "Balbir Singh" <balbirs@nvidia.com>, "Philipp Stanner"
 <phasta@kernel.org>, "Elle Rhumsaa" <elle@weathered-steel.dev>,
 <alexeyi@nvidia.com>, "Eliot Courtney" <ecourtney@nvidia.com>,
 <joel@joelfernandes.org>, <linux-doc@vger.kernel.org>,
 <amd-gfx@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v10 21/21] gpu: nova-core: Use runtime BAR1 size instead
 of hardcoded 256MB
From: "Eliot Courtney" <ecourtney@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-22-joelagnelf@nvidia.com>
In-Reply-To: <20260331212048.2229260-22-joelagnelf@nvidia.com>
X-ClientProxiedBy: DB9PR06CA0013.eurprd06.prod.outlook.com
 (2603:10a6:10:1db::18) To SN1PR12MB2368.namprd12.prod.outlook.com
 (2603:10b6:802:32::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR12MB2353:EE_|SJ5PPF1394451C7:EE_
X-MS-Office365-Filtering-Correlation-Id: 98931cf0-b373-4859-a084-08de907c5239
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|10070799003|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: Y3+s+PY7WzmWHgZxXXAmOqPTYT/H0pAMSrHqESyvEP68gSUgyMNRkXhwUkCVZIkcQmGIQneUbVj54SDB+c/reuaU+0Em53PJXHhU6JjZiGcz2y6gPen7kMxyVUohL1PspTj3uaAIDqCQYunmNfdPAKGjkqr4KTmUv5cLh98tZL6yzvcqzcWllZ6Ryl8/ft8M65vz+BHJV+xFZxDKih7z6kpoC66Qiir0Vm8UxjauyA+k9IemUXEbeqg6sYg9NWapgb5TVoajJei5AcS/RvbaOLFXp/YBT2nMQxjihJM0vlGpL4IeC2lqYXKHZQ5XwWHWjhgOhiAw3j3gAbwCnMNhxO6683ylTTbQZ+QxI8SVuNStpxy05Ywbu07xgdXvYVaCHlgit6B7FsMx+Dh9I3I68bNQMkV3wkNuYMrb5GpZ4mQMwcmCuAIIqXGu5MwhcccictQSBmL4zot2h7uArgG+/Gx7xoTz4IDY8Lt+LaWxG7cF5QYm8tQ43g1nxoPEg24QhXTbk9z0G8sGU2xAtrk0B3BePwKYN6vy67aQQjra7i5AP+hI9P0Cw1bqol8zovIat7qudoGMIXPKYves9AjOdHdccR29cgTFs3gd3U8u4FfRmugP/VSmGlDUFsugHop4zaVQw3UxTiN3dbC0MgpFcoPGHfNGm8x4d1lIAGbkIYKO2qnMi7dMMrBQmKCDODCZdEV3lRSJPw86z7aBzuWiZIYu14rN/9HPN7iXpnz/498=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR12MB2353.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(10070799003)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHRwTFhZbThsTmFxNXd3ODQ0dXBPcjRVS2E2Z3FURDR6YUxKclk5c3lsSEJi?=
 =?utf-8?B?aS9rbkorRmtXSmo3T1ZHSkdPTW5zdW02K1hzSHJFZ0RNTzVoelhJcFU4U3cr?=
 =?utf-8?B?c1V4S2hRWDRSS0M5MzNXUS9nSEZIVUJOZWNDQ3hFRkprUjczejBIbU9SZnl6?=
 =?utf-8?B?WXRBdjhqTzB1WVE1SnRabU8wMmVHM2ljTDhCcW11WW56cm93VGl0OU5IcUdm?=
 =?utf-8?B?S282ZWtRbTQvNzd3MjRZL2l2eTNyZDhLdXIxV01MRDhrZW4zQ3MwNFlzTEYy?=
 =?utf-8?B?M3BYL0lIbG9FVVh0U2RwcUE3N004UjZBOGdxUGREOGljaUpFSTE5Q1daSmhU?=
 =?utf-8?B?YkV2OG1KUGMzTkoyVVRiVFRUS3RzZEkrdE81MTNrZkl5VFRkbGczSzB5Z2Ra?=
 =?utf-8?B?YU1CRHo2WXJWcG9uVG9MYjdZektaVVM1bHJpbTJ0c21DMC9mS0pzbkxFdzV0?=
 =?utf-8?B?dWdZOWZXTUs0YUVMengzNStXUXJMZkY0QlZ1Y0pZeDhJSDZITit5RXBVZFhL?=
 =?utf-8?B?U0UrdW1naHFVd3diQU5TUzZyd3JWd1pYMlZXLzhQNVdVMnc2dEdBRVlYMXBx?=
 =?utf-8?B?aWV4NXhQVXU5engxdGJSSi9RVzFsUXRNT3dROUdCRWxra3lvUG9VQXFyL0dL?=
 =?utf-8?B?aFRWaFhRN0xYWkcxS2hMWEdod1pVdDdVYSs1eVVMbnRHS3E3RW9IeDRkWm1O?=
 =?utf-8?B?S1FFMGxrdXVVeWNJcDhtdWZXNzVob1pqZDJTWmNpRXFKYytkSkt4ZCsyMHpJ?=
 =?utf-8?B?NHNweXhLamNCc3RIcDQzZ01nRTBMVFpOb2RXeHpYWTM3NHllYW1FdFRqQ0dr?=
 =?utf-8?B?NUhWWEY4eHpjYU9WZ21tNmdnQm8zRHJIOHdtR1lRaHBvYUY1amRTaUtSTWJ6?=
 =?utf-8?B?VnhaeDJ3QVg1QWZSQlZrSm1EM2xjNDllYXpqaVNISnJ4TnMwbkVSMUFPdUVk?=
 =?utf-8?B?aVhCZXFHNThqV2dmQXBEU3Z2YmpPdEFNdUJObjVkMXVGRTdSWDg0TVVnZWNn?=
 =?utf-8?B?SWVybFJ5NGFIVnFlVXNGNDk4bEVtNFp4MGM2RHhMZzNwb3FzbjByYzMyTyt1?=
 =?utf-8?B?cHY3eVluQ1dXRUkyRHVLT0hzbUVPakdrdGczSW82bWxDdEU5dzBKM0NxZEFk?=
 =?utf-8?B?c1gwd2RwamNNMFBGRjFMQ3hiQ3dOaDNEQVZPUGtNNUk2SElrRmJwckk0YURt?=
 =?utf-8?B?UG5aQUFnOFEvR3J5dlhEZmxZb2pNNWo0T0x5b0VvUDJMU3M0ODJHeXJwRGxT?=
 =?utf-8?B?Y05LMzU2UE9EcTgwYzFxMmNneVVCVVhsOXBBdldnNlRSWTlIb0tWRThESU1E?=
 =?utf-8?B?TEQ4SWg2MDVPVFZiL3RRc0RkVWthbmkyK2Z4dnlwQmo0MTFQWDJmcWRxQWF3?=
 =?utf-8?B?d3U1M1V5RDlhekNWTnkyMS9ZOFNhaWlrTEUrMlovNWM0OWowMnZScHNEaDVK?=
 =?utf-8?B?QzJkMnJ2eTZORS82Nmh4ODJJUzlOWncxUXRna21TZ1lIa0w1SjF5MWw5UUNW?=
 =?utf-8?B?ZUNnVFFPNXRPQ0RVWGFMeFd0K3RVUWNIb1JmNzhYOUw4NThrZjFpU0lsbDVN?=
 =?utf-8?B?b1lYUEdPZFVFc3Z1STFLbkFxZzl5NlpmOUJ1RFRVZzB2bUVGdms4WUVWbWts?=
 =?utf-8?B?dWRhRmVzNGErV3FuWTBCZUpCUDY5amRydW5Bcm11Sk1TRzFNU0NNOUQ4RFJB?=
 =?utf-8?B?azJNYjlkYmx1dlhmQUkrZFR0NUpnRDA4TGdmT0p1aDhBVW54SnlUMDJrMjda?=
 =?utf-8?B?aFFjc1hzMWd2WHlyTWVpOEtsY1BMWlBlTHdFa0lwTUh1UCtNTDBtdGF0aUFL?=
 =?utf-8?B?a25xZHU4OHFkUUFGNUpiaUpqWGJraUg5S0V0TXhTOGlhQno5VFVSK0IweHpY?=
 =?utf-8?B?dWF1UXRLVlhBSTVWVURaNE1SRi9lcWt0bTYwclRZdjROdSs3b24yaXR0WVR6?=
 =?utf-8?B?TldZbFkyb1RhNFJrUDVjakVCVDQ3ell4cXU4c21JanM4L0FSbDB3UGxpRVpD?=
 =?utf-8?B?TVRwY0V1T0NVR2VSZ01UOU9uOGdCL24yOHozSU1GUnFaaktQY2o5UDRBU3Vo?=
 =?utf-8?B?ajlMRWU5WGFvYTZlUG9aelgwbDFyRi9ZZ29QYTM0TWlUbElQZnJ1cG9GUTY2?=
 =?utf-8?B?L2NFYkF2bkQyS0l4YlpDa1NORkNkd21UMkpDWlp5VDBGOHRYbTBtcm1rMzJR?=
 =?utf-8?B?Uy85cE9NdGJZakdGU0UwWTJPeDZEMTBBZFI0SUNHMU41MjIvL2FEdmlXNFJk?=
 =?utf-8?B?WkVyRTI5RHQyNjQweFp6U3NGNGRTRyt1ZURtV0hvQ21mSmVNdXhxZ1g0RlU3?=
 =?utf-8?B?aktVUWpuMlJqTm1GM1NycSt3djRCWHcxdEgrSGdhcjhPMXZLbm5RMDE0cmFG?=
 =?utf-8?Q?4k/Tf2oz0XLZ9of6PUqrpi2r3h9yHEOpWcuhiE4l2faLQ?=
X-MS-Exchange-AntiSpam-MessageData-1: 9/ZFM1F4hbjEmQ==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98931cf0-b373-4859-a084-08de907c5239
X-MS-Exchange-CrossTenant-AuthSource: SN1PR12MB2368.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 05:54:37.8257 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mCAzH50A9sl4V/LJ7A5YgKOWSMo+1z/cJ2N7a/VWUEwWQDkDOrnRPRObI7S2sQJJq0ZVw/K8NUVBACqEn/O6xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF1394451C7
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
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,vger.kernel.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[56];
	FROM_NEQ_ENVFROM(0.00)[ecourtney@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,Nvidia.com:dkim]
X-Rspamd-Queue-Id: AC2DC38436C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Apr 1, 2026 at 6:20 AM JST, Joel Fernandes wrote:
> From: Zhi Wang <zhiw@nvidia.com>
>
> Remove the hardcoded BAR1_SIZE =3D SZ_256M constant. On GPUs like L40 the
> BAR1 aperture is larger than 256MB; using a hardcoded size prevents large
> BAR1 from working and mapping it would fail.
>
> Signed-off-by: Zhi Wang <zhiw@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---
>  drivers/gpu/nova-core/driver.rs | 8 ++------
>  drivers/gpu/nova-core/gpu.rs    | 7 +------
>  2 files changed, 3 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/nova-core/driver.rs b/drivers/gpu/nova-core/driv=
er.rs
> index b1aafaff0cee..6f95f8672158 100644
> --- a/drivers/gpu/nova-core/driver.rs
> +++ b/drivers/gpu/nova-core/driver.rs
> @@ -13,10 +13,7 @@
>          Vendor, //
>      },
>      prelude::*,
> -    sizes::{
> -        SZ_16M,
> -        SZ_256M, //
> -    },
> +    sizes::SZ_16M,
>      sync::{
>          atomic::{
>              Atomic,
> @@ -40,7 +37,6 @@ pub(crate) struct NovaCore {
>  }
> =20
>  const BAR0_SIZE: usize =3D SZ_16M;
> -pub(crate) const BAR1_SIZE: usize =3D SZ_256M;
> =20
>  // For now we only support Ampere which can use up to 47-bit DMA address=
es.
>  //
> @@ -51,7 +47,7 @@ pub(crate) struct NovaCore {
>  const GPU_DMA_BITS: u32 =3D 47;
> =20
>  pub(crate) type Bar0 =3D pci::Bar<BAR0_SIZE>;
> -pub(crate) type Bar1 =3D pci::Bar<BAR1_SIZE>;
> +pub(crate) type Bar1 =3D pci::Bar;
> =20
>  kernel::pci_device_table!(
>      PCI_TABLE,
> diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
> index 8206ec015b26..ba6f1f6f0485 100644
> --- a/drivers/gpu/nova-core/gpu.rs
> +++ b/drivers/gpu/nova-core/gpu.rs
> @@ -353,16 +353,11 @@ pub(crate) fn run_selftests(
> =20
>      #[cfg(CONFIG_NOVA_MM_SELFTESTS)]
>      fn run_mm_selftests(self: Pin<&mut Self>, pdev: &pci::Device<device:=
:Bound>) -> Result {
> -        use crate::driver::BAR1_SIZE;
> -
>          // PRAMIN aperture self-tests.
>          crate::mm::pramin::run_self_test(pdev.as_ref(), self.mm.pramin()=
, self.spec.chipset)?;
> =20
>          // BAR1 self-tests.
> -        let bar1 =3D Arc::pin_init(
> -            pdev.iomap_region_sized::<BAR1_SIZE>(1, c"nova-core/bar1"),
> -            GFP_KERNEL,
> -        )?;
> +        let bar1 =3D Arc::pin_init(pdev.iomap_region(1, c"nova-core/bar1=
"), GFP_KERNEL)?;
>          let bar1_access =3D bar1.access(pdev.as_ref())?;
> =20
>          crate::mm::bar_user::run_self_test(

Can we move this directly after patch 17 which adds the fixed bar1? Or
alternatively fold it in while preserving Zhi's attribution (I am not
sure what the conventional method for this is).
