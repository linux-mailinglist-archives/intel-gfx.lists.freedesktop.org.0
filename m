Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCqQLpfWzGnnWwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 10:25:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 671DC376BEF
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 10:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 871D210EF73;
	Wed,  1 Apr 2026 08:25:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="iVyx0UIn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011045.outbound.protection.outlook.com [52.101.62.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DCA810EE5B;
 Wed,  1 Apr 2026 08:25:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=awF9Fy6DEQVeO1kxesYz5ZCGcuLimRPeXRkUvLawoXOdxfcHFPEtqaLjgkOk0HkTczgenPZBk9XEmYus0/K3Qd0CAubY23NTqoLdzsArEWwyNKzBeaQZX/C99qsG/93fbUudBawWCWmK0q+1h/fncgKFkR8Gniuxvyj0Dl++K9TvMFzmJv443S5TCX439kQpYoffmv+ZL05+/8m0B8oEMlhWNISSnlPl2fo+H1iqwVhRU7lXW1TpnFXIoYt8f7mfe57lUMs18Bneyb4wtwvD9vfh5AHQGsUL6Aerg7Vx8QE8JhMVjzqkT5qupf3nHzjO/uW7sGjN5DpTWp0ZqLxOfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6hW8NUE/Z+/LRcDs8Gjx3wbeFadm1gItb/U/sXzu5PI=;
 b=dDOkYa/nyGbMElFqDtMfVxIk+e+nz95OddMQ3r+QqpbrY36d3iDrVIAGZIo05nt9MAUpc+vq97/erH7ZaSUgajYaRAGV5/hGF80OfDFyzzM4E0nMrJ97n9X3sBLVkWfIZqvESxMc0FBlIVde8S31ZGiFIhj/frSIzsmXQrM+LPe02MW4hkX5Bh2MyRF5Z3dmvk2L9WFEdeL3gfFRvsWRw1ALm/24/bIWlaw/Wi9yEM1KCye/NakRbRRh4EBK28SsXceI7WBFDI7Ved16ZFBEL9mpHlxZqMfCaYGXNyt+FCHPdu4eEyIKmvLm/6lw/4wVwels4OrLNyrHphFsLapDIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6hW8NUE/Z+/LRcDs8Gjx3wbeFadm1gItb/U/sXzu5PI=;
 b=iVyx0UIn7xp5cbuu0RcUIuZ0O9PoQqpQsvwmnednh97WSjnw0ligWdz7E+eh/NYhy5MFgGTs+UC45Y9KWruZ515yhX16cdghBTh1//Aez1KRsiskiXGOt2RGTQMgN29VIBUFWYun2VSr4eD/D+6eaUm7ueOKZG0CGG/oqPtX1q1kNAb0psyAWN6yvFB/gx9Oy98f4+Ks8nwOpe3X1Nkw8lAe1BCitmeupz2JS5Mc13gJBcL5gQ+DYnj01UMoA1GqzzVDYd2EkUluoOcLC/98K1g8nPYs2Aucv8q+2EeA2JuiRpAlnj6aA2x+jG7I4etgQBGunA41FiqR0NqVoQgroQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from BL0PR12MB2353.namprd12.prod.outlook.com (2603:10b6:207:4c::31)
 by SA1PR12MB8857.namprd12.prod.outlook.com (2603:10b6:806:38d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Wed, 1 Apr
 2026 08:25:48 +0000
Received: from BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0]) by BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0%4]) with mapi id 15.20.9769.016; Wed, 1 Apr 2026
 08:25:48 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 01 Apr 2026 17:25:44 +0900
Message-Id: <DHHOB5WDWAY7.2VVUKUTI9B5DG@nvidia.com>
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
Subject: Re: [PATCH v10 01/21] gpu: nova-core: gsp: Return GspStaticInfo
 from boot()
From: "Eliot Courtney" <ecourtney@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-2-joelagnelf@nvidia.com>
In-Reply-To: <20260331212048.2229260-2-joelagnelf@nvidia.com>
X-ClientProxiedBy: TYCP286CA0220.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:3c5::20) To SN1PR12MB2368.namprd12.prod.outlook.com
 (2603:10b6:802:32::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR12MB2353:EE_|SA1PR12MB8857:EE_
X-MS-Office365-Filtering-Correlation-Id: 98a1f919-d55e-429c-93c8-08de8fc84674
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|7416014|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: jOeoTE3ljh3nr1ikCbr61CbJRU24I7T3DABJQHNDO0Af14Q9f9KHNwmZpRzu8Rsmn0da4wntW0n9tdW1BiWUF+ZBg1WWLBAU+CSLtFU8YK/GnCG5ZYnT5YhprJiriSGpGHcVvEd5wjfbMng4bMiCtFDTuwS8gHxaxXSyUjH9rPqHEl6bAPxVfB8PIyAQxCYMhkBYUj4JL6TP6sRJ94vDPZttPAgHsPYEIWTc6vGXy5SxpeQEzGTKEWXy53/A+ciQIYJysGOsIcMD9z01yJ2qIfbCaeSbv2Phliahh5JnWIy91oEJqmeOrUKSaQItZiNTgJi/JvbGqzYyGEuKnE4Phi5SWnOn+sR/vWYUHldVMhsFNKDoKSODGqDOJY6R766rY5Vzu+Emc6ftFDa72Y2FoBBaQn5llz/+tCgId9ePCrM1nNnXW+PSDiHt5oY2qjUqKyVI4AddGSFRq6Bwjd6cturd2s6aV0NYTYMI1SzQ+Y+q+0fx96WQPPPslVZ36c2YGa7mOLCUlj1lJxGWrAAbpi7RtqVMrACO+WtgTLnSMKv6CwnJLe2u2Y83gn02XQG2FRX2S+MQMOlYKkSt0eLu1NKKdo6qQ0dGyszD19YimC5EbayZ8vje8Yd4O2Q8WejAMyMqPMLD5s0EHKCVdnRVXVLQy2ar29OfmKvE25LnXa7O9pbX+VOtYw0gA8dCTdSL4kxa7fLH5PMRhLKrJZ27adwMYJYRazMfzqPCdvo8BwA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR12MB2353.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(7416014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnFIWTc4MUNiaTVxQmdxcWhqOHp3OVRiU2xQTUVDZEJENGRBb1ZXRVJXVjZn?=
 =?utf-8?B?R0FiNWJydVJvVFpNT05rNk1NeDNuN3hmeFowYW0wZ1RJN0FTT0RRNTlKVy9y?=
 =?utf-8?B?c2l5VTJJWm1JdDNRaFUvUVduNms3OUF3ZVRNdFU4WDBaS1l2M1krOHQ1eVhS?=
 =?utf-8?B?UkVlKzhpQXZnMkFCRE9HV0JYUFJWa1J2eFlOVVVtbnFzQ0tWOURhQVU5OWpl?=
 =?utf-8?B?WnM1eWhyNklPUjRaZlFoRjRYdWRNeVJWdmJrV2hXcVlGNGxnSlVVZmg1N0RY?=
 =?utf-8?B?OTNGTHJGdzVQcGE2L1lYNjZnTU5CZkthY3o3dllDcnVaeUhZbk5oSXhDcFZ6?=
 =?utf-8?B?c2hNS1NUSVJnMzdMaDgzOHoxcGV5T0I2N1U3eG1RQlZ0Y25BRXd1NFZYcDJY?=
 =?utf-8?B?U1Q1cFNSSWNmSzhabkt5a1hLaS9iYng4MUFxbDFtb3NiU3psQm9INUJnaGhZ?=
 =?utf-8?B?TjhUYWRzMk9PMzQxbUo2cjUxY05wT2hxMXRqUGpVQ3doTDZ3bEZVYUhYd2l2?=
 =?utf-8?B?OGpxTlF1MkgyMTVocThGbVJTWVhnd3JhVURrNkF1Vi9idWJvbmdmSkJGU3hP?=
 =?utf-8?B?cVllRmt6eEtVczk2QWdGSC9YUlVweDFsc1doOHlwd25uaFRlUmVJNTNnUFl3?=
 =?utf-8?B?TUViR2M4ZjE5UGJaa2ZmYnE5cHVoSHlRa1Yxd1UvNDF2S3MyRDFCc3gySENM?=
 =?utf-8?B?YXlNRFd6OCtsb3ozajVpZlV0VkdTMUNKTXFWTnNLR0JYM3NoY0Y0Y1lWblZm?=
 =?utf-8?B?eDhoamhoOUJRVmpYZmN2aE4wdmROa21kc2J0VDJkS1NsSHhvdjhOTG9iRk9s?=
 =?utf-8?B?dFRmaDBDRlFRanR1UjM1eUtTUVF4RGN1SDVKVjNxWEFWdk1XdFkzM1piRkhh?=
 =?utf-8?B?WXhUMEdnWjFMRDFNUzJHWDNJSXYxczZsTEJOWHV1RVA1OFNqQ20waHdmMzlu?=
 =?utf-8?B?V2luTEVZYloraVVtRStUUDhET1pPK25WUE9vL1lRa29OS3dzNzFnVWIveE1n?=
 =?utf-8?B?eFZjaC9rK0EwMlg0enZJanc5ZjF0eXVBK0V4WHNjTDVSVGxnTy9ZVjFoNUVt?=
 =?utf-8?B?dUZhQUM3SVpjUURnNEo1T3BqTklrdUVtWnN5QVVHQTc1MVhvclE1ZlBQVzZ3?=
 =?utf-8?B?aFRCY20zOU16ZXp6MXo5WXpVT05CSUZRblU3R0ZObFRWVnVuODFsRk5UVGd3?=
 =?utf-8?B?cEJVeXZPemhLQkFGa2pJQUlrREJSZzZhWGtwMjAyMTdpa2tvNGFXOXBhenBC?=
 =?utf-8?B?OS84OFM4dnVIK2ZCbW9vMTcxd0tBSzZxUEltZTZmVGt2TkFXcUQ2NHM5QUxw?=
 =?utf-8?B?YmV4Y2xZUEdhSVlPWFdHbHlIZkdJelNjNWNMNm14VlB1VzdoWTNPNmdPRy9n?=
 =?utf-8?B?QURlZ3U4b0FsWHlvQVVqMW9VNDNPMlhiRFRSREljMjVzV2xFNldrN2ZYK0pG?=
 =?utf-8?B?QjlkWUtzaU42VEdHK3VRSVNxdmRiUzJVODZXT1kyL3FwRXJmTk82bEhxSm1v?=
 =?utf-8?B?eUs5NjZycHVmR3Y2VkxvaTZ4QXE3Y3hWcCtlRWZjYjdQc09laDUrYm1wS254?=
 =?utf-8?B?M011RHMvb0lzQUVGcTUvN1ZEWEYzRTdiQjRYTVh4c2dBSFZpZTE5US91WXJ6?=
 =?utf-8?B?NHU1MllsMC9IUVlHcCs1R20yTEFHYnlKbHVhNEJLLzZ0RmRxaHFodHZ5NUlG?=
 =?utf-8?B?Nzc0MjZhVVpyOVBLQlBqSzIwMkowanZJQXZOQUMrcUZrU0FpMEtKcWNYd2xH?=
 =?utf-8?B?dHdaQ0xReXdoMHZOUnZBanFZUUVNUVMzdEtxMFRWYWZxdGNhdVRLYTJZQ3pK?=
 =?utf-8?B?VE1xQjNvR3N3eUdRTFRqakRaL0dkZDZpUHhYalUwdFNDa2E1TGxiK1lkNWRL?=
 =?utf-8?B?SW91VG5zZnNFTTlva0d0SW82cGhPVnFDcXBUVHZ1UmNISVZ3cS9uUWJIWkY0?=
 =?utf-8?B?ZHI4YnlxRndzS1BoWnhxS3pJeUhHQ2FpUitvc2F4WTdGZ1IvK0lUNmNyYVhw?=
 =?utf-8?B?aElHTUg4eW5waE1zTnkyUUNFNHIzcGNmSC9DcUdCLytUUElhVDZyeTdnUjkr?=
 =?utf-8?B?VVdwblVBclNhQ3JleWVCVDQ5OXNXYi9uUXJxM0NTeDFKeDZ3OGtRY2x4RXU3?=
 =?utf-8?B?S2VkdldTRDN0SGRGcHdDTDFXeE83L1AvVmlHejFOQW5TY0dHM2l2SEd3ZFJt?=
 =?utf-8?B?UWZCZkl3UVhHV0kvTmEyeVgwdDFyQ2wrU3NwSXY0bVVOUGxuRWxFTStuODZW?=
 =?utf-8?B?T3J4MDBOcHVVY3B2ZHM2QlRSVjJKdTk0QzdjbWpSd2hFQjZMVkc4VDFPVVhp?=
 =?utf-8?B?dVRzdzM5azJHNTlZYVJQQW51Z0EyYityRjZkN0dmUGNHQzJORjRhK1hTbys1?=
 =?utf-8?Q?Y8AwdcMZTiUp/L3+ER6SJeocXgB+l0V2+PJCQCWuSgMvQ?=
X-MS-Exchange-AntiSpam-MessageData-1: kQ4TDPZ9WxXwRg==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98a1f919-d55e-429c-93c8-08de8fc84674
X-MS-Exchange-CrossTenant-AuthSource: SN1PR12MB2368.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2026 08:25:48.3193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RZ3C3Pszd7Rkix6UrBGFX+HzLu7VczXZuOPwk/0l+T5bdHDAJ6xoUjhwM5S7Wo9YPhW/RedVwpL40n6Lgb3lZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB8857
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
	NEURAL_HAM(-0.00)[-0.980];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 671DC376BEF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Apr 1, 2026 at 6:20 AM JST, Joel Fernandes wrote:
> Refactor the GSP boot function to return only the GspStaticInfo,
> removing the FbLayout from the return tuple.
>
> This enables access required for memory management initialization to:
> - bar1_pde_base: BAR1 page directory base.
> - bar2_pde_base: BAR2 page directory base.
> - usable memory regions in vidmem.
>
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---

Please see my feedback from v9[1] which still applies.

[1]: https://lore.kernel.org/all/DH0LH3D38CZ1.2DK8BN4CMU4FW@nvidia.com/
