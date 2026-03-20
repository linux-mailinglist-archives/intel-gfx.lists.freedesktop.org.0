Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOHlKNVFvWkR8gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 14:04:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8112DAA49
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 14:04:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9881E10EAEF;
	Fri, 20 Mar 2026 13:04:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=garyguo.net header.i=@garyguo.net header.b="Ag2aX3k6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CWXP265CU010.outbound.protection.outlook.com
 (mail-ukwestazon11022100.outbound.protection.outlook.com [52.101.101.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAF3B10E0A6;
 Fri, 20 Mar 2026 13:04:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jkEFfybdGRJztWFMH9Lssbl1lsptaUsDR3PpjZtm6VuHbEnXYNY/ZLZk3KglOAeJADE20sTuhRljDoqdtLBBnO6SsYR0d4XWvIGesfmGk4gdSR7eABXdV/ySDDDwKhyhOcMh70SdbiEJ/Q4FhCT9oxKd84DTiAuL257Qd3KpIQChX3gxhrzq2LB9q3/4ON6Sip6Zi/GR3+whAxRq7Da8KqK0jUUBQBy3cMPwcc0Itli/7V4zaiwOXvlzGybrseZoprRpAYwNTTXvGPPwEEuPy2UK0025vntg5011LKEkab2xrNxidtAl2PuvIVDI7nCIgpE0mmBDacye9AK2+M7SWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xwHfwJMJ/BoyqaGSSMonUhFCgp1zLjHqz6u+cp17t1I=;
 b=lS2Ire1/jcpF1fK1OrvncaYG3xc5ExY8v5Ur7TkhRLEeWZnhn8EP5V/6lkc99lnYNL5jGjQUISWhXxpvikIuIIMTLUTWg3PDkF0GkdHiOuRs9BWKIBz7zuSJQvsS+rlskiRHFrKY6F5Ighz3ON32fJ9kYhYPfWOy9ihq602FtsoB4hR2uIfe1FMbR5G2S61VH+PJmsFCcTElpIKiRfcoy7xmxQWJMOYqTt8A7yUNqf7v8djR47XTRMN8aJrJhKnySKXDwhfToW9iMY45t/S2FmQzvUitxjOwEHLjZLBjQVAJWnsLFK4/xDywF+vri3mRy4jkusSFtvLNvoK3nPo9TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xwHfwJMJ/BoyqaGSSMonUhFCgp1zLjHqz6u+cp17t1I=;
 b=Ag2aX3k6m+6SK+9yaijTu2U/9Mzz2xPdUB/23hmvNRtuSuFzPa4cHj9yqe5Q44RMSYoin/lWauZFFTsaiCAd/2UTGE7aeoFmiPTDOpEdXlPFqwDlFZKwMBrIcqI1M8dPuO29T1vV4rhWCFDLTcuFLsQAaB7Ojzeh9TI1Vs75Jlk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=garyguo.net;
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:488::16)
 by CWLP265MB5954.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:1cc::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.23; Fri, 20 Mar
 2026 13:04:12 +0000
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986]) by LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986%5]) with mapi id 15.20.9723.022; Fri, 20 Mar 2026
 13:04:12 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 20 Mar 2026 13:04:10 +0000
Message-Id: <DH7MPTIK5OMK.3GHQAE07J5OO@garyguo.net>
Cc: "Miguel Ojeda" <ojeda@kernel.org>, "Boqun Feng" <boqun@kernel.org>,
 "Gary Guo" <gary@garyguo.net>, =?utf-8?q?Bj=C3=B6rn_Roy_Baron?=
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
 <intel-xe@lists.freedesktop.org>, <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v14 1/2] rust: gpu: Add GPU buddy allocator bindings
From: "Gary Guo" <gary@garyguo.net>
To: "Joel Fernandes" <joelagnelf@nvidia.com>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.21.0
References: <20260320045711.43494-1-joelagnelf@nvidia.com>
 <20260320045711.43494-2-joelagnelf@nvidia.com>
In-Reply-To: <20260320045711.43494-2-joelagnelf@nvidia.com>
X-ClientProxiedBy: LO4P123CA0306.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:196::23) To LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:488::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LOVP265MB8871:EE_|CWLP265MB5954:EE_
X-MS-Office365-Filtering-Correlation-Id: 52ff095a-ee62-482e-1513-08de86812e42
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|7416014|7053199007|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: hc6dYgZaWM/AKhw/VhoRY1RttCE7F8UyS6jDyWVnsgWNhF4IGD/DQYovQ2TmERdUIhYl8DaI4Usi6sqtx3dgErVkDoyyhjPR8J1BYO8l6yS9pj22pPXJ/usy2s6h7qPEoaxNVl6GpMVUXozZOdzurCsdY/HIovxeyiw7ZIes2TLySlDS2NdApEXG4U0dLvac9mJT8j0U/nDUhRj/k2P0sygBCb9qosToJ4suipNU7oQiE89lsyMCWW7zcU91E2ulbSXBmme484KdBQp3rqKdF5s1Eg/QQ2OevrCzd6J6h6FGDDgjI89zTG9k+HT2ocenSFgLm24+6zMfLv1cu9cFRMiibAQoBzvOsXMMQXdS98QEyIcx1K1FKa4sq2SBpgaQdIDA7xc2xWYO0mtne2w9n0hZ9Z3Q7x7BaUWfL+jd1VsrXb6S3N4YBz6v19gJMsEklOA7ryJO6vJf9EIEx5p72zzXBu0QknHjsK54YZoxlfIJ7UCDbB7Il5U9y22i5ZBAy3T8hAbldY63wE+vgSQwcLWnMl1/oPknSIwM3MB1Pl77NBt2ZSVYGOjmMUxOsCb9gtO1JvK90/2xVnIU3lONG8uQBHRlmWPfYqQLQqA+vxHgYtbPV/Acl/+7ZtcI74DGRVxA0vnWHsBfKCVL1AghzGOJTH6oWMif/Hchy87G2K55FACHRAICiUCC5LWdZTaN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(7416014)(7053199007)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MldjdHR6dHdQc3V1NFFhL0ZjL3RINjZDZTBNbHp4VXdMbDFKMVlLU24xR2hx?=
 =?utf-8?B?ajVBRC9rM25oQVE2NzhCemZlTWF2OHppamlEb3ZhNEZCYng4U0FlYTVsVUdK?=
 =?utf-8?B?VlE3bXRHWk02YjZlRWIyb0YyOFA3RVhYQTM1Tkc1WjZhZjYxZy9rUEN3TVFG?=
 =?utf-8?B?QjAycFRpTm8wNklZWVJiNnhFcVJwMXovNTBnZTZEaE5yM1duSTUzemtZemVZ?=
 =?utf-8?B?ZXE5S3NRbzBnUjM5QWdyM0dyVHQveDNiR3VNKzNvVTd1YU9WTXpqa1FqYk1a?=
 =?utf-8?B?QWpuQTRrbDNSaVVoWmJzSkdVSkRKWHZ1OUZRbFY1Z1NhMk8yNFVTYzQ3WjZ4?=
 =?utf-8?B?NUdISnNwN0pLSGtoa1RBak9GVlNuL2xkRTRFSko2dGpQT3ArM1V0dlRqWk83?=
 =?utf-8?B?Z1lJWnFIbkorSXJycVUvZGZOc0FWUkZIZHBDRlM5RkpmNlVkdU0wOUIrbURn?=
 =?utf-8?B?L2puTTE0R3lDQXFTeFFlS0FPU3hiUDcwUS9DcjFQS0FndXVkM2JlQVlJem50?=
 =?utf-8?B?S2JVdGdhMGs5OXRYVm45bXowUFZLYUVsKzJLK01kMEh6WkZUTkVSbzJqWEFU?=
 =?utf-8?B?SlRpMkphYjhwU25qbkc0bHBPekpTMWYwNjVUT1JBdWRDYlRmTDlrWmNSblVl?=
 =?utf-8?B?bytUek9WN296eVlNR3Nhdkl6anEyU25JYzFGR2lNbjVVN3FuR3U3QndaQ3Rs?=
 =?utf-8?B?ZGJsTkg2bE1HeEw4OGdXUGdoeEEzZHdIdGJJcWNtWVdMeDdMbTBOZnpHUWZQ?=
 =?utf-8?B?VnZuM3phZHgvOTJLYlBodllnOUU3VzY2NjNUVmtDdWQxUVVxakc2WWd6OGlP?=
 =?utf-8?B?TjloRTE2ajd5V1dGWDJQemRpRk5NZi9FbVdtT0E2TEhLRnQ2TC9SL0NmRFRY?=
 =?utf-8?B?TVB5V3JOVWRMMUQ2UFlTNzFXZGZFUlgweWdPS21ScDMzM3hWUGRVc1VZVFdI?=
 =?utf-8?B?Mkk0aGpBRUI2WjAxT29lbEVyWDNvWkpWQ1lKQy9JR1NwV2k0eElpY3l3L3hL?=
 =?utf-8?B?WnVod1FBY21icU5KcnBNb1kvQXR2TjlaWG1FaENGTjlrMTdOUG9jdDQrYTdk?=
 =?utf-8?B?YSszTS9VSENmTWpwaFh1Nkw2eEFnU3h5ZnRZSkd3VGVlU0sxK0ZvcTlSeGRB?=
 =?utf-8?B?UUxDMkRabmh2MUs5T2Uyd3V5V3VwZGprVThkZXNFZ1lqaG53UUpubTkrd2dZ?=
 =?utf-8?B?TVNIdFJ2ZERtQ2Y5Ni83SXMvK2JYQitsdThOemV5Lyt2UjZvRWJCelFkVHZD?=
 =?utf-8?B?NzNqRzc0RmFjbVQ4NFgxQ2hRNGR1RUp6QTNaVVg2dkQ0UktzQ2w3Z1hmRWdO?=
 =?utf-8?B?TmFQaTYzWVJuT1Axb0liczVFMi9UWFFTTWFEcXkyamJBT0JUQk5wQWxpYUhk?=
 =?utf-8?B?c1lEcGgvU05XUjA4RVBKcUtobThDNGFqYkp6M1BLWjdGMS9ocTkwbnZPVG5W?=
 =?utf-8?B?UFErWnFaMXQzOE1NeWhOd3RJZERLaEpLaGlLaFJCbDhzRFZjSjkrT2Q0cHpE?=
 =?utf-8?B?V1hQdzVURk9DR2ZCK01yTUZkbERXZmJkRWQ0cUVnZnp2ZE0zUjkzN0lPOFRB?=
 =?utf-8?B?QWFwNDdDNW45eVZURG83ZENoN2paLysxK3N5OEJXaUhITFNrSjU1TlZpdjN0?=
 =?utf-8?B?cis3V3E2eFZTQ2Ridm82M29MQzI4K3J3dkZnU01QcDlXbmZEWWxkTXFYYWtK?=
 =?utf-8?B?djBFaldpb3dBZ0xWeDVRSFpiZVZxcUxubzRsaDJIR0JhQVoyZjFpK2h1czBC?=
 =?utf-8?B?NkcwaTJlWmU0SXVZOHZ6bkRkNGJBeUZxMTVEVE9YOTVzU01VMXA4a2pzNTZm?=
 =?utf-8?B?bXlrcnFpUHZLeVI2VU9hQUpyTEtUUUlmemROcHByZEE1R1oxcWgrNks2c0to?=
 =?utf-8?B?ZlNhTTFYTytZRWZGRzVBSkt6SUt1OVI3aklPMXB5NUgzdzJPNEdBUG5nZjNL?=
 =?utf-8?B?czgwajlOT1hxcWlEWFBBUkIxM3Z4ZDdEQmUxUHFoQnVwdDZVMjJUOFJXU09P?=
 =?utf-8?B?dUE1L203ZVNLd3JFZE1JMFk5ZTJkeFBqd01Ea1pXR0MrMEZvTWY2RlpCcTZ2?=
 =?utf-8?B?NzRZOEtJemtkZXo1NVNCcERVcFpPeWc4akxCMXVaUG95cFQ0WGlpTFlJekR5?=
 =?utf-8?B?UUd6bDk1U1RRbGNidHF3RkhjckZpMGpwbmJoMXRxZkhFWTdQV2Vaa2hzNWpq?=
 =?utf-8?B?V0hjYk1qY0JucmczSE5IZEhTbkpyYktBWkl4K2FvNkc0ZnRzRkdpNXZLUURy?=
 =?utf-8?B?Nk9OUU1wOW4wMUl3TGRmNFFMelVMUzViWkRvU2ZXRWdSTHMvLzZXR0xzQkxT?=
 =?utf-8?B?WmhZL0IxdTBYMFZCcFMrRDBwNWVrcUhVVlduTnZyU0NhVVovelZYUT09?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 52ff095a-ee62-482e-1513-08de86812e42
X-MS-Exchange-CrossTenant-AuthSource: LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 13:04:11.9450 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nVkYvFtazanLN3fSC+NcajCkvZO30MCpkBfeD8lE1RyGo3iyaJ+z1a8xFx8J3MSRnoj0XFgc4UkxPUvulY4DUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWLP265MB5954
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
	FROM_NEQ_ENVFROM(0.00)[gary@garyguo.net,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[garyguo.net:+];
	NEURAL_HAM(-0.00)[-0.992];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,nvidia.com:email]
X-Rspamd-Queue-Id: CD8112DAA49
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri Mar 20, 2026 at 4:57 AM GMT, Joel Fernandes wrote:
> Add safe Rust abstractions over the Linux kernel's GPU buddy
> allocator for physical memory management. The GPU buddy allocator
> implements a binary buddy system useful for GPU physical memory
> allocation. nova-core will use it for physical memory allocation.
>
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---
>  MAINTAINERS                     |   6 +
>  rust/bindings/bindings_helper.h |  11 +
>  rust/helpers/gpu.c              |  23 ++
>  rust/helpers/helpers.c          |   1 +
>  rust/kernel/gpu.rs              |   6 +
>  rust/kernel/gpu/buddy.rs        | 613 ++++++++++++++++++++++++++++++++
>  rust/kernel/lib.rs              |   2 +
>  7 files changed, 662 insertions(+)
>  create mode 100644 rust/helpers/gpu.c
>  create mode 100644 rust/kernel/gpu.rs
>  create mode 100644 rust/kernel/gpu/buddy.rs
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e847099efcc2..cd9505d3be60 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -8531,7 +8531,10 @@ T:	git https://gitlab.freedesktop.org/drm/rust/ker=
nel.git
>  F:	drivers/gpu/drm/nova/
>  F:	drivers/gpu/drm/tyr/
>  F:	drivers/gpu/nova-core/
> +F:	rust/helpers/gpu.c
>  F:	rust/kernel/drm/
> +F:	rust/kernel/gpu.rs
> +F:	rust/kernel/gpu/
> =20
>  DRM DRIVERS FOR ALLWINNER A10
>  M:	Chen-Yu Tsai <wens@kernel.org>
> @@ -8952,6 +8955,9 @@ F:	drivers/gpu/drm/drm_buddy.c
>  F:	drivers/gpu/tests/gpu_buddy_test.c
>  F:	include/drm/drm_buddy.h
>  F:	include/linux/gpu_buddy.h
> +F:	rust/helpers/gpu.c
> +F:	rust/kernel/gpu.rs
> +F:	rust/kernel/gpu/
> =20
>  DRM AUTOMATED TESTING
>  M:	Helen Koike <helen.fornazier@gmail.com>
> diff --git a/rust/bindings/bindings_helper.h b/rust/bindings/bindings_hel=
per.h
> index 083cc44aa952..dbb765a9fdbd 100644
> --- a/rust/bindings/bindings_helper.h
> +++ b/rust/bindings/bindings_helper.h
> @@ -29,6 +29,7 @@
>  #include <linux/hrtimer_types.h>
> =20
>  #include <linux/acpi.h>
> +#include <linux/gpu_buddy.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_file.h>
> @@ -146,6 +147,16 @@ const vm_flags_t RUST_CONST_HELPER_VM_MIXEDMAP =3D V=
M_MIXEDMAP;
>  const vm_flags_t RUST_CONST_HELPER_VM_HUGEPAGE =3D VM_HUGEPAGE;
>  const vm_flags_t RUST_CONST_HELPER_VM_NOHUGEPAGE =3D VM_NOHUGEPAGE;
> =20
> +#if IS_ENABLED(CONFIG_GPU_BUDDY)
> +const unsigned long RUST_CONST_HELPER_GPU_BUDDY_RANGE_ALLOCATION =3D GPU=
_BUDDY_RANGE_ALLOCATION;
> +const unsigned long RUST_CONST_HELPER_GPU_BUDDY_TOPDOWN_ALLOCATION =3D G=
PU_BUDDY_TOPDOWN_ALLOCATION;
> +const unsigned long RUST_CONST_HELPER_GPU_BUDDY_CONTIGUOUS_ALLOCATION =
=3D
> +								GPU_BUDDY_CONTIGUOUS_ALLOCATION;
> +const unsigned long RUST_CONST_HELPER_GPU_BUDDY_CLEAR_ALLOCATION =3D GPU=
_BUDDY_CLEAR_ALLOCATION;
> +const unsigned long RUST_CONST_HELPER_GPU_BUDDY_CLEARED =3D GPU_BUDDY_CL=
EARED;
> +const unsigned long RUST_CONST_HELPER_GPU_BUDDY_TRIM_DISABLE =3D GPU_BUD=
DY_TRIM_DISABLE;
> +#endif
> +
>  #if IS_ENABLED(CONFIG_ANDROID_BINDER_IPC_RUST)
>  #include "../../drivers/android/binder/rust_binder.h"
>  #include "../../drivers/android/binder/rust_binder_events.h"
> diff --git a/rust/helpers/gpu.c b/rust/helpers/gpu.c
> new file mode 100644
> index 000000000000..38b1a4e6bef8
> --- /dev/null
> +++ b/rust/helpers/gpu.c
> @@ -0,0 +1,23 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <linux/gpu_buddy.h>
> +
> +#ifdef CONFIG_GPU_BUDDY
> +
> +__rust_helper u64 rust_helper_gpu_buddy_block_offset(const struct gpu_bu=
ddy_block *block)
> +{
> +	return gpu_buddy_block_offset(block);
> +}
> +
> +__rust_helper unsigned int rust_helper_gpu_buddy_block_order(struct gpu_=
buddy_block *block)
> +{
> +	return gpu_buddy_block_order(block);
> +}
> +
> +__rust_helper u64 rust_helper_gpu_buddy_block_size(struct gpu_buddy *mm,
> +						   struct gpu_buddy_block *block)
> +{
> +	return gpu_buddy_block_size(mm, block);
> +}

From Sashiko:
https://sashiko.dev/#/patchset/20260320045711.43494-1-joelagnelf%40nvidia.c=
om

    Does the Rust wrapper use this helper? It looks like AllocatedBlock::si=
ze()
    manually duplicates the bitwise logic (chunk_size << order) rather than
    calling this helper, which could create a divergence risk if the underl=
ying C
    allocator implementation changes.

Many other review comments there seem to be false positive, but it might wo=
rth
confirming.

Best,
Gary

> +
> +#endif /* CONFIG_GPU_BUDDY */
> diff --git a/rust/helpers/helpers.c b/rust/helpers/helpers.c
> index 724fcb8240ac..a53929ce52a3 100644
> --- a/rust/helpers/helpers.c
> +++ b/rust/helpers/helpers.c
> @@ -32,6 +32,7 @@
>  #include "err.c"
>  #include "irq.c"
>  #include "fs.c"
> +#include "gpu.c"
>  #include "io.c"
>  #include "jump_label.c"
>  #include "kunit.c"
> diff --git a/rust/kernel/gpu.rs b/rust/kernel/gpu.rs
> new file mode 100644
> index 000000000000..1dc5d0c8c09d
> --- /dev/null
> +++ b/rust/kernel/gpu.rs
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +//! GPU subsystem abstractions.
> +
> +#[cfg(CONFIG_GPU_BUDDY =3D "y")]
> +pub mod buddy;

