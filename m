Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCeFEcAAzmntkAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 07:38:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A67EA3840AE
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 07:38:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2847410EEBB;
	Thu,  2 Apr 2026 05:38:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="NxKOMbw3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH5PR02CU005.outbound.protection.outlook.com
 (mail-northcentralusazon11012057.outbound.protection.outlook.com
 [40.107.200.57])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11CC410EEBB;
 Thu,  2 Apr 2026 05:38:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xRnV5kHLpL567MsnbGT2ysSQtInp/iEDNc0RzUnP5oWjAO+mxcCzl5h63U+Us6UGY+O9ZbAv7GDA4ZBBVXoWKF3UHzlnCOnVgaUZPO0QHiH79DSZuk7Syi21jGfg3a5CfpcOj6KU4lYufMJEHewwCVyRFTeiDhBIrmjyJW0o96CvDNACxGCvwULT/t3QZuUiAjaGpFxqGfsYlr7nft/TBsGiWojvDg2f1zpvcxeYxnTWHfsXJ/x8SU+VHe2WRIYVQpDSZTWxNAm9SnMmpw1xycSfdWhSDKYku3siGeuGYEM/1+6tZ1NGIRCbXEFQrr1lQcDOYoUSr/DUXtLmVO0FNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P7DAPd/f3vu7lPJGmIW/2+xrDwuxwXn+vQD1ja9z4Wo=;
 b=Vtifb+4mT6hbxalUbUS/Ysb/jvaZGcFEXNX8oI8ffW0lQhRVA8VouE1ayTbJV+0WNe9hDNfn03it1F2MAXRND+JacJhAXEuItU9V5jeRngAE1t0OOuWxJvaFpTbjHP0oLuybk0QSUZV6xNmbvnntNBgN4n//skZFiyD0SN+8TOFwtwjAKbijyJX+6BCzDD1CTqex09CpM2pxHbdZxpqSYHagBNGWtdgHeGjCfuteJZ9B+VI1evOcdgndt4jvoUwwXdY/TjPR7kuRDu52+tlXhbdRbR1FZgdf368v1VOldcJGTDD/wxy4lPuP3WgJglEv+4ZrZQJFYAHgsi39/PVIgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P7DAPd/f3vu7lPJGmIW/2+xrDwuxwXn+vQD1ja9z4Wo=;
 b=NxKOMbw3LMk5SvipzBdU9MP9t7tA7jABIbKWUs/x0MpOkFiUzBazBvlRwWivSCCATM5OQC4yE5D2/1LUkVwrLKpUd4nwGlih5bb+9kM0/6HsBOTeugQg91zgn+AtbQdNmNxV5QVHvPLno5x3OhayY6EMgeQDQTVBufQliVCL1X0/1xQLNXpAKuH7Y/qAnJq1AW/96X37ZtiF58codhnURZPvG32J+J9WUbxqkJ+0jHvM5SymOGkB6xCNUaE3CGvl7jW2AQzthha/4mPDph+NBc1hqCieFCs1ylaMy+PeJR257Z9dnusmK0ZZbNvUypJo9HBBb4X08MJ68al63wZAKA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from BL0PR12MB2353.namprd12.prod.outlook.com (2603:10b6:207:4c::31)
 by DM4PR12MB6302.namprd12.prod.outlook.com (2603:10b6:8:a4::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Thu, 2 Apr
 2026 05:37:56 +0000
Received: from BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0]) by BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0%4]) with mapi id 15.20.9769.017; Thu, 2 Apr 2026
 05:37:56 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 02 Apr 2026 14:37:52 +0900
Message-Id: <DHIFD6N7QSU1.1RGEN0APPDHD8@nvidia.com>
From: "Eliot Courtney" <ecourtney@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>, <linux-kernel@vger.kernel.org>
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
Subject: Re: [PATCH v10 03/21] gpu: nova-core: gsp: Expose total physical
 VRAM end from FB region info
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-4-joelagnelf@nvidia.com>
In-Reply-To: <20260331212048.2229260-4-joelagnelf@nvidia.com>
X-ClientProxiedBy: TYCPR01CA0172.jpnprd01.prod.outlook.com
 (2603:1096:400:2b2::9) To BL0PR12MB2353.namprd12.prod.outlook.com
 (2603:10b6:207:4c::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR12MB2353:EE_|DM4PR12MB6302:EE_
X-MS-Office365-Filtering-Correlation-Id: a1d06e31-16b8-4d00-baf6-08de9079fe09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|7416014|376014|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: L8H9Hl7+p/p1tCH3DLJ3S89ZOKE9D0UurGvU0/SWrFJcsL0L29Rwj/nAyP+I2+sXYOaP6HoWv3RzY85F+JPdgnjyvJFVR+SuemYRUpJif1NrGtfCiu0UTIqk/wwPAq9VYOQGiWgyAKDqWTJfPrHNsIdVjwOI6tdshCiw1LlcEN6N2Q7PojrN66uCIno6hRLKkMXjaCrDwGaL3Hm3XfWy39OoCNF2QapNtz/P1Qe1rLKiSEaghtyxZ2o1XJEK3oZ2ky8uxsE4G7fi1vpEt3fssIWb5pQrMUowykN99Q9ZFJK+2ycriY5RjXfNMJEWiNcm5VeJ5vXQgNWyRUTaYLbmJLf1Y44a+v93xbCjPL5J8gTBBURecUZSYnkAP8S7aTeSdX/myhs1IS2j5351rDA/XYRyPpshUS+i1sqBah4u6qH0frDubLXLIvEqwniHy2v3/70FmUHNCenGbyRrwNsnMmApQytIEslqVcvjbTRbmlUomf7vCwYq2597hWhLBbc6LIGXI4Dp6Bhtm5JvXPBCz4ynnaHe0Y3HD98htkxnMkqptPNjj1bJNcmtShoITcF2KcY8UlkwTqmQy4HK5lEKwdk97Tz3DeQfe+y8SqO3GPtfXb0ZT23kl8Ov2qpclFwRGvQf4ipO84AoD2lD3ITN/9tm/OW7yU7uJixhTXxMVBrPAJ3tg6pJH0gdU3y5kO2FmOPS4NpMC18vluZwV63lyIiqLdJ3Wb2ZMItJn291O2o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR12MB2353.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(7416014)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVAzZ0p3Ung4OFlvZmEybnBLbjN6ZXArRlBIUEtuSmxBaFJMQnBYejQ0d0VJ?=
 =?utf-8?B?UFZtZ1hjNXI4ZWMvb1JjYkFMek1qYnFYOXhBYlpnRjFuZTBkMTg4OTRTY1By?=
 =?utf-8?B?OHQyWFprUkNmb0NxbUNKN1Z1ZTNuUUZPVk5PWFE5VHhCalNlOEZxMDFCVHlu?=
 =?utf-8?B?T2V0UkFydTZZbElVRzZpTHBSSzZoNmpzZ2l3K01EYzJOa1dsbFdBcEwwNi90?=
 =?utf-8?B?QzRSWkx3aFUyRzlyNVZ1SmVZM1FtTXZlYlovQ3J5YmkxSnJFZFB4aWFQeXFB?=
 =?utf-8?B?cTg3VU1tMlI4UEluYW13Ly95VWZzNElZR2VQbmJWeE9MaFBXMEFFckFmWkJH?=
 =?utf-8?B?RkdjVUtyd2ZqWE0rMXJObklRbGFpcStTVWhuQVpMNXpYZW5GVVZOSnpQMUZG?=
 =?utf-8?B?MllmK1d1amw0SnF5SDIwdWw2THVOVkE0TmM1SVR6ZU5zcVpiWHBybWNpMTVn?=
 =?utf-8?B?ODNBc1A1ZEJqYzRYY25vZDN5WS9ZVnNUUDhSS3NUd0FmeEd4UTJLY2YxcU9C?=
 =?utf-8?B?MmkvdUlIcGNYa1lIaUJ4NFI5SUxrL3hYbWRoS0JSZG9nZk5UM2QwNHdrWGww?=
 =?utf-8?B?ZnNpZWJybGRXZ0JBdmRnNlo3Z1JPRVRtdnptR0dMSittcWJUSGxiY2hQYStI?=
 =?utf-8?B?djEzTkxuS0p2RFpabTk4aHVuMGgvRXJydWVJM1FhaTM4elExTzltOVVod2Z4?=
 =?utf-8?B?K3pKdGdTM1ZlVTZPTTY2K00wRndxR3B2dGRpNEMvaE9VQ0JvaG1ObWlrbXdq?=
 =?utf-8?B?QlZtRG9VOEx4L1c0TFpNdndyYWRyOFJGTVZFeXkvb1JycHJVa1Z2SVJibzAz?=
 =?utf-8?B?M1VicHVpL2pja1pGL1ZaLzQ0NGpaOGV4WWVPWVhmRHN0RUFOSXFubzFta3do?=
 =?utf-8?B?bndOd085VFg3MzY0SE9BalUzcFlsbGhzWU80YUU1N3RxSllkLzRQS0tIejFC?=
 =?utf-8?B?NVFLRVVtNlFKYW5sUkVIcDZ2ZER4d1l4NlFMa0crUWh5ZUlIL2tKSVBHVFI2?=
 =?utf-8?B?UGl4Wk1PVnNBQWxvUVF6NllMd0hlQk51QjhPcWJGUVFYYXJoaVVSSVFmWUcw?=
 =?utf-8?B?aE5CMEhyNVM4RFZkUUlJdGJvNlk3L2ZMYlR3ZmFxMW9CdHR5UzV1bzRmL21u?=
 =?utf-8?B?OW1TMWVTMyswSTFRd2F6T0hKK2xEUmdSWi9wWlJGQ1ZvN2hUVzhTZThLUjBw?=
 =?utf-8?B?U2dBczFKSldkaDBtMjZiRUVxcVJObTc1cjU2MzM2azdlbC82L1JoNkNkeUhG?=
 =?utf-8?B?bTFlOU1iaHBkSzBBZGFMcTdDMkhzc3UwbjhUTi9qa1R4Y3JRa0xSN3poNlVT?=
 =?utf-8?B?eUVqVXZoZklYQnd2SUpIMmJDUFMrMjVON3NpUndkMjliZTZyVmJ6OW5TajZK?=
 =?utf-8?B?MHJNNHBna0xjYmtMN3hOLzExci91QmZyTFJkOHYxTHpBeER6cHluZlpBMGxU?=
 =?utf-8?B?eXU4OGtaMCt6SEYrWEx6bkhjSEg5dlpSSTVhSDVEa3R2WTJ5TU1RemZjNnd2?=
 =?utf-8?B?dDd4WWg5VExha1ZlRDVaMTI4OXNnci8weEFLTXlqem1TVUZrb2IzVkxldTNn?=
 =?utf-8?B?bzJIK2RkTnVzWGZXc1J6WGlIUUNYN0tqY3FiYjNuVllFVFZXOGFjd010VzFP?=
 =?utf-8?B?cDM3MVVLUHJLeWZBaE9ycmR0T3o2K3V2cVh6a0ZuTXhGSm80RW1qa2hPbkF0?=
 =?utf-8?B?akNDRkZ6Q3VzVDU4SmJ6V3NOOW10WW9IMGpWdEFFQVVrYzJpSHJVZ2F6bWJX?=
 =?utf-8?B?c1VNbHNvb3h6N0JQb2VEQVkrMXlFRk5LeFZwT3UrMzd3d09EVEdnY3BtZGtp?=
 =?utf-8?B?L1JZbFM4QmdycTc2bEV2RU5iS2lSK1hZU3BPVzFKTDFJZXhjYnMyK3BWcnNU?=
 =?utf-8?B?dkFWWGhBODVXWkFndlZ3RGJCM1Y3alJvcC9iQmdqZVlsbE0xTldWcndMaDdh?=
 =?utf-8?B?eWt1L0lBRWZjazlkUFZweS9XMkRXbWxqVVpiT2tKWG9kdDRpWno1RGRRZUsz?=
 =?utf-8?B?WU12TEhnK0VDZXVzLytGd0FETEVFVVdydHUyQ1NJRUp2YzEva3RqRzdaWUxV?=
 =?utf-8?B?YThkektxS2JBVGY1MXRJa2NHL0RDVVBIZ045czVaem1UN2UzbklsZHNVMU56?=
 =?utf-8?B?N1YzeDRUdzJqS3BGM2h0T0c2UFE2ZXdFd1hIMEd4ZENBdWRiV0IxT3kvVXBR?=
 =?utf-8?B?bjFwb3MwalZoeHA0a0c3RjU0UzNxQUQrQm9IaVh2Uk4xckxXRkllM21SS3hB?=
 =?utf-8?B?U3JjZVYxSzEyNVluWlExN05ZL3dTdGl0amZCWlQ2TVBQM09nNzh1aG5lcFNU?=
 =?utf-8?B?ZmQ4SEFpRE1rV3Zib2xqSjlXU3A2YWZURmk5bXhWbFgrb3YwRVNHb1EyV0tO?=
 =?utf-8?Q?NtxNCUFU4PAOzHj7X11dNLhcCit1YEsOm5Ph3sOdxgukP?=
X-MS-Exchange-AntiSpam-MessageData-1: XYf128piNP87zA==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1d06e31-16b8-4d00-baf6-08de9079fe09
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB2353.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 05:37:56.2799 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PvQPuRHWD1LRDVsrN5lN+ZSVc4PKNIiFnDVe10wtZlEEw1EFBkediapafoWOX2sXFHyjDXxrkQMQfaDb3+903Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6302
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim,nvidia.com:email,nvidia.com:mid]
X-Rspamd-Queue-Id: A67EA3840AE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Apr 1, 2026 at 6:20 AM JST, Joel Fernandes wrote:
> Add `total_fb_end()` to `GspStaticConfigInfo` that computes the
> exclusive end address of the highest valid FB region covering both
> usable and GSP-reserved areas.
>
> This allows callers to know the full physical VRAM extent, not just
> the allocatable portion.
>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---
>  drivers/gpu/nova-core/gsp/commands.rs    | 6 ++++++
>  drivers/gpu/nova-core/gsp/fw/commands.rs | 7 +++++++
>  2 files changed, 13 insertions(+)
>
> diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-cor=
e/gsp/commands.rs
> index 41742c1633c8..5e0649024637 100644
> --- a/drivers/gpu/nova-core/gsp/commands.rs
> +++ b/drivers/gpu/nova-core/gsp/commands.rs
> @@ -196,6 +196,9 @@ pub(crate) struct GetGspStaticInfoReply {
>      /// Usable FB (VRAM) region for driver memory allocation.
>      #[expect(dead_code)]
>      pub(crate) usable_fb_region: Range<u64>,
> +    /// End of VRAM.
> +    #[expect(dead_code)]
> +    pub(crate) total_fb_end: u64,
>  }
> =20
>  impl MessageFromGsp for GetGspStaticInfoReply {
> @@ -209,9 +212,12 @@ fn read(
>      ) -> Result<Self, Self::InitError> {
>          let (base, size) =3D msg.first_usable_fb_region().ok_or(ENODEV)?=
;
> =20
> +        let total_fb_end =3D msg.total_fb_end().ok_or(ENODEV)?;
> +
>          Ok(GetGspStaticInfoReply {
>              gpu_name: msg.gpu_name_str(),
>              usable_fb_region: base..base.saturating_add(size),
> +            total_fb_end,
>          })
>      }
>  }
> diff --git a/drivers/gpu/nova-core/gsp/fw/commands.rs b/drivers/gpu/nova-=
core/gsp/fw/commands.rs
> index 9fffa74d03f9..46932d5c8c1d 100644
> --- a/drivers/gpu/nova-core/gsp/fw/commands.rs
> +++ b/drivers/gpu/nova-core/gsp/fw/commands.rs
> @@ -163,6 +163,13 @@ pub(crate) fn first_usable_fb_region(&self) -> Optio=
n<(u64, u64)> {
>              }
>          })
>      }
> +
> +    /// Compute the end of physical VRAM from all FB regions.
> +    pub(crate) fn total_fb_end(&self) -> Option<u64> {
> +        self.fb_regions()
> +            .map(|reg| reg.limit.saturating_add(1))

I think it would be better to used checked_add here.

> +            .max()
> +    }
>  }
> =20
>  // SAFETY: Padding is explicit and will not contain uninitialized data.

