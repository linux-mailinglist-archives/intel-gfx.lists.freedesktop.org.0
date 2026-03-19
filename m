Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPnXJZTgu2lXpQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 12:40:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D26D12CA6E3
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 12:40:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B7FD10E867;
	Thu, 19 Mar 2026 11:40:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=garyguo.net header.i=@garyguo.net header.b="gy/gBzx6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CWXP265CU008.outbound.protection.outlook.com
 (mail-ukwestazon11020142.outbound.protection.outlook.com [52.101.195.142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2399210E867;
 Thu, 19 Mar 2026 11:40:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DN0aa/S2WCl6eWslOshkdTkCuuX5QvvwMLeNaWhCyCnP0YwkJTsOlaWuxPhwJ2TQ5AbPnciBh7sB3sWiESCC/p8F54FtHmElfH8kggDEYIfDnj63SG5yY4K148QVL6yMBc82fBulE15gOIcCrVZlR4o3laesyjWhnC/+9dBd4vDYhAgEoq4PDY8lKLXZfKTM8ef7achWdqXfjayIg15+so/OcbIBnobzCF5uByUlp9fEf2QFp3j68DN3nIZM2ZZfbZ8Bi/OGEZmX4hjX+iIyocg3CU4d7h2gO0jTt4ytsd4A3KpLKANeIqbtZbjpN1kjHb8hjBy1W3tIaboASFxazQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gl3L1QjF+kTy/gkSiItt0dDU/qdj9xcElaHgQGuLCjA=;
 b=btiKHkNArmJTDqllnbJvQshPzLEy4BgOY0WAiS64hYq6nSiHxF/M2CcFUxYV54NtNRpC7t7pJ+OTQNJ9tusPh+6W4ccW0q/Ikus8L9WR2Y76DEv+KyCuoGk2eVI2nkXzCxmfO2s2fGm9gdjyc4sErWoKELIGEeXlLWa0vhfp3tNj5t68TpG0K9KlV+sDLxOspIi+WGpMiXvf3LryQXvIDPUOdnJ2O/0+3wwZnRZRHzbF1SUGjRF3C/nDYdRmJmq6foYITr1txBsgAAWSz2qSJm0rLuVtc21G1Wrf67R6d0OhgaVrycFKB05d+X+uEnLY/mKeQKPfnk0Osiu7mwamng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gl3L1QjF+kTy/gkSiItt0dDU/qdj9xcElaHgQGuLCjA=;
 b=gy/gBzx66P/e2mOjjph28F+emkNj92lKIbO/tUQVjmA15j2nZ0sNEldTqwtldPrnw5VY3TEEvKZ2z15n8/3eoUXiBlgIgKgZ54P7IM9HhhUwlhiadpXd+cB2QDefR+LMtvqGhN3CA/0dvHXluIIXVZ0sZf5jqUz6Da3+rItidiA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=garyguo.net;
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:488::16)
 by LOYP265MB2176.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:11f::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 19 Mar
 2026 11:39:55 +0000
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986]) by LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986%5]) with mapi id 15.20.9723.018; Thu, 19 Mar 2026
 11:39:55 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 19 Mar 2026 11:39:54 +0000
Message-Id: <DH6QAR1HHXRV.1Y7IZ22HC9FZ3@garyguo.net>
Cc: "Miguel Ojeda" <ojeda@kernel.org>, "Boqun Feng" <boqun@kernel.org>,
 "Gary Guo" <gary@garyguo.net>, =?utf-8?q?Bj=C3=B6rn_Roy_Baron?=
 <bjorn3_gh@protonmail.com>, "Benno Lossin" <lossin@kernel.org>, "Andreas
 Hindborg" <a.hindborg@kernel.org>, "Alice Ryhl" <aliceryhl@google.com>,
 "Trevor Gross" <tmgross@umich.edu>, "Alex Gaynor" <alex.gaynor@gmail.com>,
 "Danilo Krummrich" <dakr@kernel.org>, "Dave Airlie" <airlied@redhat.com>,
 "David Airlie" <airlied@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "Simona Vetter"
 <simona@ffwll.ch>, "Daniel Almeida" <daniel.almeida@collabora.com>, "Koen
 Koning" <koen.koning@linux.intel.com>, "Nikola Djukic"
 <ndjukic@nvidia.com>, "Alexandre Courbot" <acourbot@nvidia.com>, "Philipp
 Stanner" <phasta@kernel.org>, "Elle Rhumsaa" <elle@weathered-steel.dev>,
 "Jonathan Corbet" <corbet@lwn.net>, "Alex Deucher"
 <alexander.deucher@amd.com>, =?utf-8?q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, "Jani Nikula" <jani.nikula@linux.intel.com>,
 "Joonas Lahtinen" <joonas.lahtinen@linux.intel.com>, "Rodrigo Vivi"
 <rodrigo.vivi@intel.com>, "Tvrtko Ursulin" <tursulin@ursulin.net>, "Huang
 Rui" <ray.huang@amd.com>, "Matthew Auld" <matthew.auld@intel.com>, "Matthew
 Brost" <matthew.brost@intel.com>, "Lucas De Marchi"
 <lucas.demarchi@intel.com>, =?utf-8?q?Thomas_Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, "Helge Deller" <deller@gmx.de>, "John
 Hubbard" <jhubbard@nvidia.com>, "Alistair Popple" <apopple@nvidia.com>,
 "Timur Tabi" <ttabi@nvidia.com>, "Edwin Peer" <epeer@nvidia.com>, "Andrea
 Righi" <arighi@nvidia.com>, "Andy Ritger" <aritger@nvidia.com>, "Zhi Wang"
 <zhiw@nvidia.com>, "Balbir Singh" <balbirs@nvidia.com>,
 <alexeyi@nvidia.com>, "Eliot Courtney" <ecourtney@nvidia.com>,
 <dri-devel@lists.freedesktop.org>, <rust-for-linux@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked
 list interface
From: "Gary Guo" <gary@garyguo.net>
To: "Joel Fernandes" <joelagnelf@nvidia.com>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.21.0
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com>
In-Reply-To: <20260317201710.934932-2-joelagnelf@nvidia.com>
X-ClientProxiedBy: LO2P265CA0081.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8::21) To LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:488::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LOVP265MB8871:EE_|LOYP265MB2176:EE_
X-MS-Office365-Filtering-Correlation-Id: 20b83634-9607-478b-f95b-08de85ac3e26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|1800799024|376014|366016|10070799003|7053199007|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: vpwER8soRUOOaPEAR0lU9YuZNmyo/nH6XdSrVjTzGWmZHTeCe5D6wI1mUp1GBZSKabAi9cKtPSDewJp40JcXBZGlHZTgHRTj/5ZHnq2IVINsY9EzVfRhox+6VKP4pb9HYTNnf7yyVtobJeI4fEsHshV6D0WzY6v/3PL+Ed2noxU2WJqZBIzNsAuKc0lqJL9Nj3LHb9bdMnmve8hbvO5p5hE2IkNEZ5BOUcchsa5WFyYL/PCwiXXKMB+P9WuCrZZtIiEX+iyRl72z1p7+CFnsDmmNT4/Kg/qjA6wh+fdUggTw4XvtK0o7J2tLWZtyPM+QetZefv2Atu50vfshWjeUXkIBx8nXujb46kAVvGWhx7l064cEXOOT35W+SLfXlFuH60qcYLVe40RqTjAv9hACzdXxbrNheaaQlVUEoZhaxXG46buiqMFJXX5PaQjtjNByKCnoVeo8BIDiU41nuIlu7ey76YxVG4Y4tS4G6Je1rH6mBWKGV5HBXPNI+yogxXfD58PGsMDRth9YomUY5ioI3SSz9P/Sc508dpxnCwX1pVCGcnYzs4yB7otwMpYA9EOyTdpgV/5G4TVdvckwxqLOPrzSzD6Aysq+fmJmyIZrdSR0cpcgpAj6Of3mPz9TskzHEi+5TPeuks46MZKGdTusMvSDKP/iddLF/8ZwFnxTQQ16JJh9TMf1b676s1q5xwmtuBVwkDjIWOTNNbAuLQeHnvbvuQkzseOU2yUlNBfnTf4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016)(10070799003)(7053199007)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUN5N0pmaTlEeFc3TUZUMHRtSHpTa093SndGcURqODFYS2QvQWdmNWhoS2pB?=
 =?utf-8?B?cW9XKzFZSXJXWGQxUHQ0UU03eXZUdzlLWmdwNUxEeTNTR2Q5SzdHYk13VHlr?=
 =?utf-8?B?UFlHV293b0ljNnIxM0h6TkhFYkZhOU5HMlFSNFBkL2ZQQ2s5cUs2azZlK2dj?=
 =?utf-8?B?VGo5OXFhVzhvUmp1dUwvWGxRYUtVVUNPVHdRd1NIdHgyR211bVdaekE4WXo1?=
 =?utf-8?B?aEFISTJLTmJvaUg1SnFJOEdGNWVDUFYrQ0hscVJILzh2Mm9lSWF3NEY0R0xn?=
 =?utf-8?B?alFmN0hvNHQxbHo1UW1lWVYxU3VSbld0TWtBcUZ5UDZxcm9HeXZxRjVENjJ5?=
 =?utf-8?B?Yy94SGFSUlBYWm5GNE5OQUxDbGV3OWxOdXB6cHZwTmJlYlVWMDZmN3JtQ1lu?=
 =?utf-8?B?Nko3QUhNVUZOODN3WWZDeTlhY05wMjErYlpkL3cwcDVrRHR2ZEU5VjlxMlBT?=
 =?utf-8?B?NjA2eitYZTZQQmxVT25JbXFQWUZNM210anFDeVRlaGltb0J4ZFVReGdnaTVu?=
 =?utf-8?B?aHJ3QXBhZGI2cDM0aEdaeGlOKzRObXVhak5tRmlyQ0psamRlN0xTZzBTOE5G?=
 =?utf-8?B?REQyYTN1Y1F4UXpnVDlBWlUwbHFyeElmOTE4ODBkZTNXN3dUWnBndzQ3K0VZ?=
 =?utf-8?B?b2kvVFd5S1hLdFB4YXBlODdScndOZ3lWVHpmQnRhRWwveTMybDdzY0ZHUzJr?=
 =?utf-8?B?K2g0ZmFQQzViS0tlMlp2TlN2THJ3YVFUK0N4RGlqSkdoU2IvYVdiNDdPRklN?=
 =?utf-8?B?SWJUcjRyR2pFWDR1YytNZVJZWG9hT1pycW4yK3M2alZTb1JwaXVnYzgvTlpU?=
 =?utf-8?B?WGhIZzRpWUw3U1VZZUJrMlVsdjIvNnRsTFEzbDErUVk1S3hsRUhPSy9FUzJh?=
 =?utf-8?B?a1ozRFVaNlFZUXFvQXdBelpqSGJrd0cwMkdQM3htSURLVWh2T3MvNXFTOFd0?=
 =?utf-8?B?dzZHTlFyTTZWY0dvZDVrbDFJampiRk9BUDEzVlFyYVlmRG9wRXdrRjlhNWpK?=
 =?utf-8?B?TzNCcEVoTTM0SzVldHhBdzBURmp4Myt3Nmt3M3ZCNVp1MGxlbWt1dnRuR3Br?=
 =?utf-8?B?Ry92WURiSkFnSmZIZlNJT050RDFheDlINlN4VEUza05vcnIvVEwxbDRTckRq?=
 =?utf-8?B?RytDZHpGdmY2aXpRa3ZqckdnWlBEYkFaUFkxSW1RdUhvbmFxQmtXcmVOY0hB?=
 =?utf-8?B?RHlCQW9UTmhUaEY3eGhDeDVCNGxRL2xkQ01EckMyMnoxai9UeGJ2RTAzL29y?=
 =?utf-8?B?R3FQb0RpQnNqdmM0SHZ4eEtqd0YwVzlhZHA1VHpNaXFBOFlYbmw4NW9ZRis3?=
 =?utf-8?B?aWJ2anI0Rklsa0ZOT2ZWVWIxVlBrQzVuNEpjYUQ4VzFwdUc1eS96OEpGeGpo?=
 =?utf-8?B?NWVwcHg4dS94dzFoaGZXNGhVSitpMmJXNXdGN2ZPd0Nhc1NOZys3TGN2dTk2?=
 =?utf-8?B?VmpaK1RIU2ZXM0ZTQ2dLLzRGRVhzSWd6ZnFFdURuVnc3cWk2ZEVldG8vanB2?=
 =?utf-8?B?aktEVEdROCtTbVhFa2FWZHNJQy9DeTVvK0dwVzI2SUJCN1ZzYnVFcnRGMU05?=
 =?utf-8?B?MU93UlQ2UW1vQ3E1dkxGSHNsMml0bEIySU1RQTM4ak9zM2dRNFFNN3RQTDhN?=
 =?utf-8?B?RG9sckFSNXBmUTRBL1BjSU1RczhUZlFNZTB4ZVZ0Y2U3ZGJ6NVBmSVJUYzZz?=
 =?utf-8?B?TEsvZ2lpZnh0ZzdpcndIVWxldThlb2pPb0dmdk1pMVpiRVdrbzA5VlhaZ1RN?=
 =?utf-8?B?S1cxbFdwSW1MbS9RZmhBUEFoWTFDVW5KK1ZqNWFYbXdYbDM5V3JPSFBZYmdB?=
 =?utf-8?B?RnJrUk9jb2tUcjVlY3h4Vm05SDRMUm0rM3JzUHErdVZ2YXJQZ0hwaGlYdzI4?=
 =?utf-8?B?M29NMUdpUGN0em05VjltVU9OSGEzUkFmbk1JSys0M0NiSVRqa2g2OHNUMFAv?=
 =?utf-8?B?UkZoN28zb3o3Z2diWjVZc0dSc0NrZG1rNTZ3T2JKV0djOEU4VkZDTksrZThn?=
 =?utf-8?B?ck04VHAzazUybkdSemZLcTVhSFE3R1B1V1hvV2UyU3YrL1NVOFNHOU9vUHBO?=
 =?utf-8?B?R3BVRTF3QXBBUlBSS3JmaWk4Tm5LQzlRNEhRSzVvNmpjNVVUc2w0NVZIMzA3?=
 =?utf-8?B?Z0tTT1RleXJsQTAreHF2RWorbGFtRjR2YmpkTHoxK3dPNlZkMTZjVUR2MDda?=
 =?utf-8?B?anNPMjNrZ1hINVl0R1RLZU5FSUlmNmtYTnRiS0ZvQS9FcGlWYkZZUHNKdUhk?=
 =?utf-8?B?UzcrT1NJNVlOZk1jdmhrVW52L3dESExsb2MwU2ZkR1RCNVRPQVl5ZVRSWlhK?=
 =?utf-8?B?QTIxUnplQ2xiKzdhRGtEeStobG1YU0p2a0Y1WEZ0N0dzVTFkMnMrQT09?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 20b83634-9607-478b-f95b-08de85ac3e26
X-MS-Exchange-CrossTenant-AuthSource: LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2026 11:39:55.8229 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xLxBoePccVpNlqqGktuIU87BKHOMxGn/YHRulmBaqLXY4ahRyqJ58fBogDV0h5yRvVvr9ZGDv77iYw7FA3bvTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LOYP265MB2176
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
	DMARC_POLICY_ALLOW(-0.50)[garyguo.net,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[garyguo.net:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,nvidia.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_NEQ_ENVFROM(0.00)[gary@garyguo.net,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[garyguo.net:+];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,collabora.com:email]
X-Rspamd-Queue-Id: D26D12CA6E3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue Mar 17, 2026 at 8:17 PM GMT, Joel Fernandes wrote:
> Add a new module `kernel::interop::list` for working with C's doubly
> circular linked lists. Provide low-level iteration over list nodes.
>
> Typed iteration over actual items is provided with a `clist_create`
> macro to assist in creation of the `CList` type.
>
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>
> Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
> Acked-by: Alexandre Courbot <acourbot@nvidia.com>
> Acked-by: Gary Guo <gary@garyguo.net>
> Acked-by: Miguel Ojeda <ojeda@kernel.org>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---
>  MAINTAINERS                 |   8 +
>  rust/helpers/helpers.c      |   1 +
>  rust/helpers/list.c         |  17 ++
>  rust/kernel/interop.rs      |   9 +
>  rust/kernel/interop/list.rs | 342 ++++++++++++++++++++++++++++++++++++
>  rust/kernel/lib.rs          |   2 +
>  6 files changed, 379 insertions(+)
>  create mode 100644 rust/helpers/list.c
>  create mode 100644 rust/kernel/interop.rs
>  create mode 100644 rust/kernel/interop/list.rs
>
> +/// Create a C doubly-circular linked list interface [`CList`] from a ra=
w `list_head` pointer.
> +///
> +/// This macro creates a `CList<T, OFFSET>` that can iterate over items =
of type `$rust_type`
> +/// linked via the `$field` field in the underlying C struct `$c_type`.
> +///
> +/// # Arguments
> +///
> +/// - `$head`: Raw pointer to the sentinel `list_head` object (`*mut bin=
dings::list_head`).
> +/// - `$rust_type`: Each item's rust wrapper type.
> +/// - `$c_type`: Each item's C struct type that contains the embedded `l=
ist_head`.
> +/// - `$field`: The name of the `list_head` field within the C struct.
> +///
> +/// # Safety
> +///
> +/// The caller must ensure:
> +///
> +/// - `$head` is a valid, initialized sentinel `list_head` (e.g. via `IN=
IT_LIST_HEAD()`)
> +///   pointing to a list that is not concurrently modified for the lifet=
ime of the [`CList`].
> +/// - The list contains items of type `$c_type` linked via an embedded `=
$field`.
> +/// - `$rust_type` is `#[repr(transparent)]` over `$c_type` or has compa=
tible layout.
> +///
> +/// # Examples
> +///
> +/// Refer to the examples in the [`crate::interop::list`] module documen=
tation.
> +#[macro_export]
> +macro_rules! clist_create {
> +    (unsafe { $head:ident, $rust_type:ty, $c_type:ty, $($field:tt).+ }) =
=3D> {{
> +        // Compile-time check that field path is a `list_head`.
> +        // SAFETY: `p` is a valid pointer to `$c_type`.
> +        let _: fn(*const $c_type) -> *const $crate::bindings::list_head =
=3D
> +            |p| unsafe { &raw const (*p).$($field).+ };

Actually, this check is insufficient, you should create a reference instead
(just in case people put this inside `repr(packed)`.

This could be something like

    let _ =3D |p: &$c_type| { _ =3D &p.$($field).+ }

?

> +
> +        // Calculate offset and create `CList`.
> +        const OFFSET: usize =3D ::core::mem::offset_of!($c_type, $($fiel=
d).+);
> +        // SAFETY: The caller of this macro is responsible for ensuring =
safety.
> +        unsafe { $crate::interop::list::CList::<$rust_type, OFFSET>::fro=
m_raw($head) }

Given that this is unsafe, I am not sure why the macro should have unsafe
keyword in it, rather than just being `clist_create(a, b, c, d)` and just h=
ave
user write unsafe.

The offset could probably benefit from similar strategies we used for other
embedded data structure like Rust list and work items. Boqun has a series
unifying these and clist could probably use it, too. (As a follow-up)

Best,
Gary

> +    }};
> +}
> diff --git a/rust/kernel/lib.rs b/rust/kernel/lib.rs
> index d93292d47420..bdcf632050ee 100644
> --- a/rust/kernel/lib.rs
> +++ b/rust/kernel/lib.rs
> @@ -29,6 +29,7 @@
>  #![feature(lint_reasons)]
>  //
>  // Stable since Rust 1.82.0.
> +#![feature(offset_of_nested)]
>  #![feature(raw_ref_op)]
>  //
>  // Stable since Rust 1.83.0.
> @@ -107,6 +108,7 @@
>  #[doc(hidden)]
>  pub mod impl_flags;
>  pub mod init;
> +pub mod interop;
>  pub mod io;
>  pub mod ioctl;
>  pub mod iommu;
G
