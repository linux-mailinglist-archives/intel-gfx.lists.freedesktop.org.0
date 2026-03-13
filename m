Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEh3H6m1s2l5aAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 07:58:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDD527E6B0
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 07:58:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3AA210E0B4;
	Fri, 13 Mar 2026 06:58:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="fRvBfubD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010027.outbound.protection.outlook.com
 [40.93.198.27])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C78010E0B4;
 Fri, 13 Mar 2026 06:58:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VlfE916cUw9mtK0ftqodWq5hrGcFAaauntGntV4OUMEa1rRn3qQ0ywySlb89utJSiqnuVGHTv+Cupc1xkq9aG94g/jEazgejNJa8P/OszNn7L7R9+sNx7D0YVKUAc+8qzU140hEFwUs4IYmRWCZLgVZYVwQgu3epWDMDS6d+MypKNSkoW9Zv+nTMtEN1knrOw1DEOmm4QIsRkMpvb4mRa3WI7SLp5HN6RqOJVMUYSFMWhDkWmoBD86+9CNbLmnbPIEWx5VpnlKeyu6AFdIvY8CH6GXM3YL2Wm8d+CEhuWooiJHOFT5RIGwzwDO+rU0Ze2b6XgOeVqecolAN5ftxTZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IyAlfp3YyGOy7eo5odhMLDh4nSebm7+tPWnpBhxfiK0=;
 b=tFRXe1g7qF2ed6ksKbANWDAA9y4xIRreStjgeNhaqpXlusxNIXigdUnjFxkp7cIL8TYtl9uKcekifKkzIHuvidowJLUFnMHJ3m/JRxyfi/kKgXstxSclaQyo422Vo91ufolwt+aHKRrv8qrSE61z9SrS76gDtR9MQOXF1xvj0thB61wUIfe0OLSCKE3VMs6zyhyMWjtid0UmD/i7R5SJ0PoNdoAElPQvv5GDOj48ie839RBTar7H8MRnQkSwsbs6+VrgPzENLYT6M4zt/2jWNhinXTbtW3I7MpLL+7Rtu3YLRWbkj6sIBqDfD7l/8gwnVwNlZTY+qHWzBhSmfgXdFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IyAlfp3YyGOy7eo5odhMLDh4nSebm7+tPWnpBhxfiK0=;
 b=fRvBfubDYAuVM68oAf92EDw99H/3+yuJ5YTsAyPfGU+yPjjNtphGBmJagEKBfLLQyu2ZEnHPpyKNTqeom6l43se7Z7bK8n7iSuF3jnlqgQIR4mSrGz0uoqMazhKsjo6XXXUOZLcadZXwM5I5JpBNoavV4w1+jt+N20h5Vn29NZIPAh3oMhrPf7pmShdDncHXE4f3lBoNmRp0gaLC+TG0iwisUH5T4oDfQywGO4/ojevLlDR/+iwiw1I7Wci8k1AmW1Qq5MbXcBr7nLF06W/CCNY+uXIwHzq5Zg9GkA5dlDGiGy5meROSZeFbsF2KtlwhJljPYaDdz/EDRmvebUX0RA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from BL0PR12MB2353.namprd12.prod.outlook.com (2603:10b6:207:4c::31)
 by MW6PR12MB8914.namprd12.prod.outlook.com (2603:10b6:303:244::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.3; Fri, 13 Mar
 2026 06:58:39 +0000
Received: from BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0]) by BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0%4]) with mapi id 15.20.9723.000; Fri, 13 Mar 2026
 06:58:39 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 13 Mar 2026 15:58:35 +0900
Message-Id: <DH1GK30TUB4V.2GR6ANXIZDFFQ@nvidia.com>
From: "Eliot Courtney" <ecourtney@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>, <linux-kernel@vger.kernel.org>
Cc: "Miguel Ojeda" <ojeda@kernel.org>, "Boqun Feng" <boqun@kernel.org>,
 "Gary Guo" <gary@garyguo.net>, =?utf-8?q?Bj=C3=B6rn_Roy_Baron?=
 <bjorn3_gh@protonmail.com>, "Benno Lossin" <lossin@kernel.org>, "Andreas
 Hindborg" <a.hindborg@kernel.org>, "Alice Ryhl" <aliceryhl@google.com>,
 "Trevor Gross" <tmgross@umich.edu>, "Danilo Krummrich" <dakr@kernel.org>,
 "Dave Airlie" <airlied@redhat.com>, "Daniel Almeida"
 <daniel.almeida@collabora.com>, "Koen Koning"
 <koen.koning@linux.intel.com>, <dri-devel@lists.freedesktop.org>,
 <nouveau@lists.freedesktop.org>, <rust-for-linux@vger.kernel.org>, "Nikola
 Djukic" <ndjukic@nvidia.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Jonathan Corbet"
 <corbet@lwn.net>, "Alex Deucher" <alexander.deucher@amd.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Jani Nikula"
 <jani.nikula@linux.intel.com>, "Joonas Lahtinen"
 <joonas.lahtinen@linux.intel.com>, "Rodrigo Vivi" <rodrigo.vivi@intel.com>,
 "Tvrtko Ursulin" <tursulin@ursulin.net>, "Huang Rui" <ray.huang@amd.com>,
 "Matthew Auld" <matthew.auld@intel.com>, "Matthew Brost"
 <matthew.brost@intel.com>, "Lucas De Marchi" <lucas.demarchi@intel.com>,
 =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 "Helge Deller" <deller@gmx.de>, "Alex Gaynor" <alex.gaynor@gmail.com>,
 "Boqun Feng" <boqun.feng@gmail.com>, "John Hubbard" <jhubbard@nvidia.com>,
 "Alistair Popple" <apopple@nvidia.com>, "Timur Tabi" <ttabi@nvidia.com>,
 "Edwin Peer" <epeer@nvidia.com>, "Alexandre Courbot" <acourbot@nvidia.com>,
 "Andrea Righi" <arighi@nvidia.com>, "Andy Ritger" <aritger@nvidia.com>,
 "Zhi Wang" <zhiw@nvidia.com>, "Balbir Singh" <balbirs@nvidia.com>, "Philipp
 Stanner" <phasta@kernel.org>, "Elle Rhumsaa" <elle@weathered-steel.dev>,
 <alexeyi@nvidia.com>, "Eliot Courtney" <ecourtney@nvidia.com>,
 <joel@joelfernandes.org>, <linux-doc@vger.kernel.org>,
 <amd-gfx@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <linux-fbdev@vger.kernel.org>,
 "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
Subject: Re: [PATCH v9 04/23] gpu: nova-core: gsp: Extract usable FB region
 from GSP
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260311004008.2208806-5-joelagnelf@nvidia.com>
In-Reply-To: <20260311004008.2208806-5-joelagnelf@nvidia.com>
X-ClientProxiedBy: TYCP286CA0330.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:3b7::19) To BL0PR12MB2353.namprd12.prod.outlook.com
 (2603:10b6:207:4c::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR12MB2353:EE_|MW6PR12MB8914:EE_
X-MS-Office365-Filtering-Correlation-Id: b60e8643-0059-4548-e6bd-08de80cdf421
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: xOCU095OoSAHXv3IxESNCXfSqDoMiXKMz3DOXmIy8vhX2r6tvATqpsQJeSjHWDyigaktxB8UafaBVnpxUr6WkDpsSrZqPM2EDNwDzaxt5u8AtCrMRvDAKSPKg9zBN5dXRvf7bZRFL9vSew9vV0vI/4GTrsGn7zLA73s0es9hylIawqkQ0lEL+FSENGB71m5S2famExAafdcTL0FRsdI2Y+VRwpsaDJkJWoyiO3l5t3E3yYOOrmUZNIeybOKhr9O4SrWY1RGZ2jGM7kpspotskthW/kPbMBI1VioMaPWmnZySmtecLj5BJaoKGrR2YvY7i8JenBIU7+XN9aoSqOqExEiYAx7+c321nTaGAhPZ+hr0HqYF16byRjbqni+mDfZJUY7Yg4mlzbWaYnqQ288MXlz1A9Qg/Cf1CrKYB8UbZ0ezHSFDtqITRWMEMc6qT57hlLlHOqxWyikMzm1YFjwe7tsbBJBOgHKQiUwtvbVbvbcc5ZI66bmi9eX5zMMu5mHtOeJ4/h9iWhMvtJScthpm0qQZRxmxFDdtyZcujQX7/qbcELbRqOBHThlLVHdyacC6PrKujUQhj5h6kfhQwa54Ds4FJrqgXW9w7KQkbBe1F7rCzQfMd+UgFWSATZJjWzlk621Pvy9I+A2B39HLTwpyDCjFEp6MDjD6EYh8hTokWXfni10K7SGuM4Xnsx1vt3ECXf8xZt5g5FR7LAsqhSsrOpe0Fc8OjfJ1sgeAuss1hiU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR12MB2353.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDJ0VU9wQnM2ZzNhajl5UXRvTnA5bjZqVGMyd24wd2FxaDM0Uy9Eay91cUl3?=
 =?utf-8?B?T3ViSFk0ek42NUZVTXFpV2lqNFFBM1hXM05FUzRnV2JJZlF1am1rL3A5blhC?=
 =?utf-8?B?SFdRc1ZvMlJ3bUh1c2JWUXNQM1BacHBMYUMrSkh4eE5zRmpIL1RhckhhREFs?=
 =?utf-8?B?Z3pUYmduVFZKbG5Hcm9JTDBhY1JmVUJ1QW9lVUZ6QjFKbit4a1Mrbm5TZkUw?=
 =?utf-8?B?Y0VLZTJVV0ZDUFlPQ1FOQ3h2Q0dwOGhjWGpMcndMQnYxQ0lzd2F2QXVRVDRk?=
 =?utf-8?B?bXRqOFdTQ04rbzVDUGtWVm5tb0ZPY2ZPVmJ5VXgya2tYWEJDTDdLTGhBTDlk?=
 =?utf-8?B?clhMeHl1bDRyem85cHVLREFuVWd6dVRVRytLN2l3bm9yT1N0RTNTRzJ3M25U?=
 =?utf-8?B?ZGpwTUpqRktkK0J0MnJld1VpTTNRSk5oTUlPNHZVbStsN3owRFpxa05aQjVE?=
 =?utf-8?B?bzRRM1dQZjhTWTcva1JmcTBxK3FkaDJFRGxoTXN3VHhiblZyaVpweUpEZnll?=
 =?utf-8?B?ZHRwL3NXOFF2WDBFcnZwSThqS1dTb0I5eWNWWGxCckNpbWlsRWgwWXJvVitC?=
 =?utf-8?B?Y2RRQUwybU82TVo1MnhEdnJ2WXVKbXlkRVlZR2RNQ1BTdENkZ1U1SHQ4SGxJ?=
 =?utf-8?B?cmV0NmF4cW53azV2NGVjazhXb3pqM2VmZkZRWGtYQ3BxalZLQllYcnhzTVUv?=
 =?utf-8?B?YkE1MzB2Zml5YXZTUDQwdm1iRmZuNUk1ZnVxQm5GWlh3V1Uxd1BmWFZVQmFI?=
 =?utf-8?B?TEp3eTNtaEpEdkxsb1pUMldDYS9YdzdDSkN6WkEzVmNaUCtkbGdxeEVMcjFH?=
 =?utf-8?B?c0hFNFJ2Y25IZWYxa291c1FTYUdhemgvM0JNck1TMmFmaUlweWVIUjBNYnhG?=
 =?utf-8?B?MDdtdmg1dzlvM1VtMzRxVVVKWGJtQ2p0ODBFYjJCRUlCZGYzK2U1bGk2aSt1?=
 =?utf-8?B?bm81enJ6dEQ2aEQwOVNBZkkrdTltNHhEa2tNN2J4UGdVWjJKdDVMNzRWWU1Q?=
 =?utf-8?B?RlMvYWZselRDSUVtb2lxUnY2YUkwalI0OW9iaGtjZGp5S01sZHlRVEpiZWZv?=
 =?utf-8?B?b0ZBbjVQZlFtTmduWERDNXR4WFU4d1NTMnVpNUorZmZtTDdyYkZ6SCtMNll5?=
 =?utf-8?B?cHF0TVZySTBlMFBUTzk2ZC9FZTl6eXcyN0w4RWQ0SFNwV05DQmlYdXM3ZFNq?=
 =?utf-8?B?YitrS3Q1NWZUbnBwREVPS1lzd25wbkk3SXBCSzhzb2llOEtCVzd0bXBYUE1N?=
 =?utf-8?B?SWdJNEVVOWVvMEl6T3Y2SGxCYS9YNGhOV3VMY0V6TktkbXQ3QjB4Yjg4b3dz?=
 =?utf-8?B?L2pPMStkYjN2QThMRjdtR1ZiVHpJNVpDOWJDNnkwL2ZVUmkzN0V3SWpadGIv?=
 =?utf-8?B?OWlVSHRlOU9TWlRhVkd3YUpGaEZrdzJWS0YwVnBqUXJiZWxkY1I5ZUFqcDNS?=
 =?utf-8?B?ckN4WWVHSGY2cU00QTZCMmFNQzFLQTNsK0IwN3B4MU5FQVFRYi9kWmNFQjJh?=
 =?utf-8?B?NHRLQzAvZklVeUVMUm5UNmVjVmU3TW5qWjFTVE1LL3hTblFBTmQ0aXBreDVU?=
 =?utf-8?B?N2p0RjdQOGNjREF3SjJWTDg1VHNWK0hzM2U4T2NjS1p2QWNYWlUrS0lYQlFU?=
 =?utf-8?B?Tk11ZWlCRXdpREFQZzhsbWNpR2VXRXJDTzdhT0ptNDhrOEs4cmNCZnE0VnRQ?=
 =?utf-8?B?bEtERnhGSXFudDVZSmxoUE5MOEJibWlmOWV2QmpJbDlMbWNKclNsWC9NS2xR?=
 =?utf-8?B?OFpTYW5jL1FQUFVYa0JTcnVDaW44WGpzNXg5d04vNjEwWmc1K291RTBBbXlF?=
 =?utf-8?B?ZEt2U0VCemJDeDZGSjYxcTFGbXN3OWh4TWh0MERPNTRvUnVkY2hLK3c5ai9H?=
 =?utf-8?B?QWxFUUdjQWlSWjkrSGdzZXBSdFVab2pJNFhKbHE3YXJ2UFBQSUhha1pIK0JH?=
 =?utf-8?B?ckt4czFLbUFFdW9ueTNWdzVIR2RmTi9PQjd1VGFkblZOTk5FMGs0a2FmOEov?=
 =?utf-8?B?dVdUT1NYM214N2xKcHpwNDhsYkVGS2pzclRyeCt5VnhCRnlxeTFqZG81NnFo?=
 =?utf-8?B?RnpobEplOU94U0VncitnTlcwclgxcjlvVjQ2enhGd2tPOXhrcDY2dEkwS2lz?=
 =?utf-8?B?VzJKenhOYVA3Y1V3RzZGQ1Y4Y0F6akU2ZGdZcHgraThhc1JUSnFoUmZtNjR6?=
 =?utf-8?B?a2xrc3VaUXNIT1FyT1EvNzVGY3IxS1ZhY3kzZkVXUGNmZFMvTXd4eVJ4Rk94?=
 =?utf-8?B?KzFPWDdNcmFwOERRWEgwam9nekJoOXNGVS9HT3hicFluZmcxTGxoOHVQMndQ?=
 =?utf-8?B?SWtPaWNkd2xlV0g4S1pPNU1sdGd1VFZFV3RlYlFzSjFaV3VyWm5aWlM3eGJn?=
 =?utf-8?Q?DXxfM2kx17ndnqmwcy8skhFvTyu8m2asMOs9RTdmshw9c?=
X-MS-Exchange-AntiSpam-MessageData-1: Z52nq5Abo2TEHg==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b60e8643-0059-4548-e6bd-08de80cdf421
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB2353.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 06:58:38.9472 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8lHSwE8V+ewTHWp1l8YMdT9O4p0C4ZD5283GTvlclvvZUCsXuIY227MGN98+Zipu8EoHTka8REFgXwF+BAxQeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR12MB8914
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
	RCPT_COUNT_GT_50(0.00)[58];
	FROM_NEQ_ENVFROM(0.00)[ecourtney@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,Nvidia.com:dkim]
X-Rspamd-Queue-Id: CCDD527E6B0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Mar 11, 2026 at 9:39 AM JST, Joel Fernandes wrote:
> Add first_usable_fb_region() to GspStaticConfigInfo to extract the first
> usable FB region from GSP's fbRegionInfoParams. Usable regions are those
> that are not reserved or protected.
>
> The extracted region is stored in GetGspStaticInfoReply and exposed via
> usable_fb_region() API for use by the memory subsystem.
>
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---
>  drivers/gpu/nova-core/gsp/commands.rs    | 11 ++++++--
>  drivers/gpu/nova-core/gsp/fw/commands.rs | 32 ++++++++++++++++++++++++
>  2 files changed, 41 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-cor=
e/gsp/commands.rs
> index 8f270eca33be..8d5780d9cace 100644
> --- a/drivers/gpu/nova-core/gsp/commands.rs
> +++ b/drivers/gpu/nova-core/gsp/commands.rs
> @@ -4,6 +4,7 @@
>      array,
>      convert::Infallible,
>      ffi::FromBytesUntilNulError,
> +    ops::Range,
>      str::Utf8Error, //
>  };
> =20
> @@ -186,22 +187,28 @@ fn init(&self) -> impl Init<Self::Command, Self::In=
itError> {
>      }
>  }
> =20
> -/// The reply from the GSP to the [`GetGspInfo`] command.
> +/// The reply from the GSP to the [`GetGspStaticInfo`] command.
>  pub(crate) struct GetGspStaticInfoReply {
>      gpu_name: [u8; 64],
> +    /// Usable FB (VRAM) region for driver memory allocation.
> +    #[expect(dead_code)]
> +    pub(crate) usable_fb_region: Range<u64>,
>  }
> =20
>  impl MessageFromGsp for GetGspStaticInfoReply {
>      const FUNCTION: MsgFunction =3D MsgFunction::GetGspStaticInfo;
>      type Message =3D GspStaticConfigInfo;
> -    type InitError =3D Infallible;
> +    type InitError =3D Error;
> =20
>      fn read(
>          msg: &Self::Message,
>          _sbuffer: &mut SBufferIter<array::IntoIter<&[u8], 2>>,
>      ) -> Result<Self, Self::InitError> {
> +        let (base, size) =3D msg.first_usable_fb_region().ok_or(ENODEV)?=
;
> +
>          Ok(GetGspStaticInfoReply {
>              gpu_name: msg.gpu_name_str(),
> +            usable_fb_region: base..base.saturating_add(size),

We already return a Result here, so why not use checked_add?:
`base..base.checked_add(size).ok_or(EOVERFLOW)?`

>          })
>      }
>  }
> diff --git a/drivers/gpu/nova-core/gsp/fw/commands.rs b/drivers/gpu/nova-=
core/gsp/fw/commands.rs
> index 67f44421fcc3..cef86cab8a12 100644
> --- a/drivers/gpu/nova-core/gsp/fw/commands.rs
> +++ b/drivers/gpu/nova-core/gsp/fw/commands.rs
> @@ -5,6 +5,7 @@
>  use kernel::{device, pci};
> =20
>  use crate::gsp::GSP_PAGE_SIZE;
> +use crate::num::IntoSafeCast;
> =20
>  use super::bindings;
> =20
> @@ -115,6 +116,37 @@ impl GspStaticConfigInfo {
>      pub(crate) fn gpu_name_str(&self) -> [u8; 64] {
>          self.0.gpuNameString
>      }
> +
> +    /// Extract the first usable FB region from GSP firmware data.
> +    ///
> +    /// Returns the first region suitable for driver memory allocation a=
s a `(base, size)` tuple.
> +    /// Usable regions are those that:
> +    /// - Are not reserved for firmware internal use.
> +    /// - Are not protected (hardware-enforced access restrictions).
> +    /// - Support compression (can use GPU memory compression for bandwi=
dth).
> +    /// - Support ISO (isochronous memory for display requiring guarante=
ed bandwidth).

Are the above conditions all required (AND) or any required (OR)?
Might be worth clarifying in the doc.

> +    pub(crate) fn first_usable_fb_region(&self) -> Option<(u64, u64)> {
> +        let fb_info =3D &self.0.fbRegionInfoParams;
> +        for i in 0..fb_info.numFBRegions.into_safe_cast() {
> +            if let Some(reg) =3D fb_info.fbRegion.get(i) {
> +                // Skip malformed regions where limit < base.

Is it normal that it returns a bunch of broken regions?

> +                if reg.limit < reg.base {
> +                    continue;
> +                }
> +
> +                // Filter: not reserved, not protected, supports compres=
sion and ISO.
> +                if reg.reserved =3D=3D 0
> +                    && reg.bProtected =3D=3D 0
> +                    && reg.supportCompressed !=3D 0
> +                    && reg.supportISO !=3D 0
> +                {
> +                    let size =3D reg.limit - reg.base + 1;
> +                    return Some((reg.base, size));

This is identifying a range, so how about returning Option<Range<u64>>
instead? It gets immediately converted into a range anyway.

> +                }
> +            }
> +        }
> +        None
> +    }
>  }
> =20
>  // SAFETY: Padding is explicit and will not contain uninitialized data.

