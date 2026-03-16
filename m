Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LTBD0dRuGmKcAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 19:51:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B5829F4D2
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 19:51:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15DA910E4A7;
	Mon, 16 Mar 2026 18:51:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="D5kY6H4a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BYAPR05CU005.outbound.protection.outlook.com
 (mail-westusazon11010064.outbound.protection.outlook.com [52.101.85.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 937B410E34E;
 Mon, 16 Mar 2026 18:51:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EmXOvNQ/XUhP5CpjNlYsP3MnSy3kGNb94avE2tXZAMthVbKCCMjyCRdbT2J3SpyCVYPI0eXf1H7N1Sknha47XaoU+2Zwkk0DI/PaVbv9AdMsN3oHUDnL6HU5OCMOHP5Dd23uUETxl+plzbWgYhwHIUKbvsDtEcdQDt3O8RPEEFMmAyowERmZxWRiXIkLsw4vpmW2SLrFT3/sZlpaQEfMwDBbwDuuhUy0QhjfMuKtcWLipVU56+0ApCcEYb7QU1n0t0om3+vUi1lFkwW3WJVbmvnHmVmGIVEv6nAzINLKJljapQD5zOoAqF8KN4oUkrPKH7GJGkPHr8n5uyeeVdgNWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a40p37aorfQFfqM2sAf4GszQN2rog8qPXY3HgGEmiSA=;
 b=aODCH2yhmVolANpOAusTmrysBA4+7Fil8Me3wRCIOQhzd6Ocz72/jBc5r6AwyK5jeaZ5aogaMrZxVSHXm00SOP1weH3s8cH6bGy5ilO8c5HYAG9w1YnAI8jqs1ML7shKEXekoOZ5GLu+QApwmEbndmr+tkbG+/lLb5uIAQCKHGJzMqtrElk3UvsPh+hrgOJLF5Yfk8X6fYlH1rXP4g0FeuyGKucKT2dpp8cwCVFvCGJm4sBBZK+QGDlOY+AOm5X2jkZnYePodFmSyquWStvqW86BhvxPOZ/4fpEUB35kcej5y2MFjEwIRXNg/+gHOuD1UEtbPj8hDWf8l6p0ChC7lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a40p37aorfQFfqM2sAf4GszQN2rog8qPXY3HgGEmiSA=;
 b=D5kY6H4aYBGMNfSRZyNrzxa3/OP74kerpdWaC8K1NiyLmKlKet21tIfGuoSPb2pf5kcanXdjmdFvejXqtB0iacsPPuezUdGGShVkTpIJap8ylVvB4wjXPrfNZ7bKl2BnwxHDg19HzBXZuyj2XN9ualMmD4UL3MthTYGaEq1ebpHB+eOnC035wIuFjNMgMeAbPG7f7EVFlTkarlJ3iV0mUpB5rK8uAYwHTzdAllK2lLbN2N98E1mgqiVmxRwkVMblTfriThU+qxKnBGBNHerfBQOnPgAFEPj+hNZBCn8riFpElgb5oHmV4IpI1t9HbKe5FwBmnRrYjpmZ4XV9xP414A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DM3PR12MB9416.namprd12.prod.outlook.com (2603:10b6:0:4b::8) by
 SN7PR12MB6692.namprd12.prod.outlook.com (2603:10b6:806:270::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.14; Mon, 16 Mar
 2026 18:51:42 +0000
Received: from DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8]) by DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8%7]) with mapi id 15.20.9723.016; Mon, 16 Mar 2026
 18:51:42 +0000
Message-ID: <efc10902-2ee9-4cb3-a4cc-442998eef01a@nvidia.com>
Date: Mon, 16 Mar 2026 11:51:38 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12.1 1/1] rust: gpu: Add GPU buddy allocator bindings
To: Alexandre Courbot <acourbot@nvidia.com>,
 Joel Fernandes <joelagnelf@nvidia.com>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
 Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, Alistair Popple <apopple@nvidia.com>,
 Timur Tabi <ttabi@nvidia.com>, Edwin Peer <epeer@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa
 <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <20260308180407.3988286-1-joelagnelf@nvidia.com>
 <20260309135338.3919996-1-joelagnelf@nvidia.com>
 <20260309135338.3919996-2-joelagnelf@nvidia.com>
 <DH48DNAQCE0Z.2EX23VD27CQVX@nvidia.com>
Content-Language: en-US
From: John Hubbard <jhubbard@nvidia.com>
In-Reply-To: <DH48DNAQCE0Z.2EX23VD27CQVX@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0130.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::15) To DM3PR12MB9416.namprd12.prod.outlook.com
 (2603:10b6:0:4b::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PR12MB9416:EE_|SN7PR12MB6692:EE_
X-MS-Office365-Filtering-Correlation-Id: 423d3e59-c917-488d-203f-08de838d101d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|1800799024|376014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: LF0LwqIwrdtlzhbwFrVLo+DT/qaoQvb+S1w7yfX/XfBF5wE3wgxdF4lmmQUM7kGm6mfVOADXEdExvOZqLroTLKDpZR4AJRvmydeyKa1EnDrZOQVygKQ45W7yRLXacn9qTMqrqxDj0qpPzDZ5KXEeSJR6aNnFkRM7MDoSaO2EZebC31XAC+UDNLaViWpTef6MZo+Yfl41XDIKF5WgL0irPbDpSOHH6F3Isd6EG6vDheA85GTD8Xb0MfZDD7APb0iIUSEIwYIlmJLyFR71DLMWHfrmvI0PhJ8uNT9YyiLHLvK305hhiVoCh3LRbNXyD1cMIg2dZhcD/+bEpzoN+wAGsT6OAFc7/uH3XGyCCjKuHXyMnflBWE1plikG7QFaaLcEAQp3qXNEUX2NL0iuiXa2l8HrCwRiTv0sRr6XTGPWao4xNCort4K5Byft81RYTu1i053S44EpZVjeX/TTv4gMgzFgEQqh0qcFwWcKDE/0npFD8/AKiRGKX1fKZw9FAQNiiGnrYFVFJ+mFBdhkWApPSNVrXvflIM42aBVi3c337wz0tz7eDij7wSWyvRIN92IoxBxE3iaZvMIWE0pok1fBVUXPFLuWsrnk76oYR0wGH2qCaTxmwAY3McMArX8Ajd8EflIJGzVekcTIVojyQufdwdMIVyjTS0eSiGTCM9QIwTA87URYya4vh3zyS9CAXit50DuCRnEYIbsnr3LLU5MQVSTdowwcinv/t7eLn1fDqzU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PR12MB9416.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(1800799024)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dktmSGpIWlZRSnRDWVB2Rkh6dDVXSVdFa3lUSVJQU2U5eUxZcGxVbjdYWU5s?=
 =?utf-8?B?cjZlQW5iUUMyUXhKcUdXRjZEOW43RGEyU0FWYXp1SWZiOTExaGhuenF4WUM5?=
 =?utf-8?B?RGRWSVVEUEQ0eEk3R2FPQk1MNFU4Q3haamlydmRKa1ArdThmVWNnZ0Y0ODNB?=
 =?utf-8?B?N0RFZWdVY25yQkFxOXlqRUZFbStuVDNCYmFBNjR0UmFIeDBLYStMUTdMR3o2?=
 =?utf-8?B?SGJwUi9kdUYyNTV3L0JnL3ovUzc4aFVtb1JIamRmNlBkLzZlazZYcU80Rndi?=
 =?utf-8?B?Z0wxUitLTXNPWmdFVlBlV04zQWZWUzBqeE9SY1MyZURDWWtPNDFDN1N3dTlQ?=
 =?utf-8?B?NzRLTzBPN2o4U3dNVU9Za29kc1A4bnJBeHlmOW9wU05wSXZpTDY1a21jbTQ4?=
 =?utf-8?B?SHZhd0IxT0h1aUpPSWJ6NVFvSkNtTkNBMmEyZXNvWGdVTmh2VVR4VE5nNGRo?=
 =?utf-8?B?aHNOK1hzZy9BeUZmR3FJTFhKdE9yNnkrUHM4VG51alBIbXdiWG9oWTlzbzN2?=
 =?utf-8?B?dUFEMDIvK3ZhdWhYWWdOUVI5cjNJQng0Rkl3Q2hjOThFQlhQYWVXcEtEZUdz?=
 =?utf-8?B?Qy9QNFBhbzNFWWloOEhZVEhvck5zSkZQdktFb1pJaVVtbDcrYXFBdEVodGVE?=
 =?utf-8?B?aC9RUXBJcE83V1RvSi9RdHJCSjVPMk1CSEFaQ2xSMnNvanlLS1pJRUxCVmtX?=
 =?utf-8?B?cnJONkgyY1I1dzNDRloxcldkdFBsdGRXUDBuT2JCdUpVdEY4UFFoYXA5QjUz?=
 =?utf-8?B?a2gwOWRZdVU0Mk1XNDJVZDVZdGpwUTZHZ3hKbTFOL0l6VTNQbDZDdW43VENa?=
 =?utf-8?B?ZjFkM2RxTEZoaHF1bEQ5V3Boakg2MVBYL1hEeGdndzRCQ0pjN1dkV3BQT3JT?=
 =?utf-8?B?c1B1V0ZDMnJVaVpPRGlNditVMmlvc21DMTBPM0Y2d0xSRnlYQUh2ZVpkNEpw?=
 =?utf-8?B?KzNVNXdFM01jS1JOMjZyU2xTbU9wYXl6eWplQlpCOUtUcjZ6Wng1QTdmNkli?=
 =?utf-8?B?c2lmdE15Z1llZHVWajhVZitCbk1ENDEzRXppVXNXdmxwNEtuRHp6emorL2Fm?=
 =?utf-8?B?UDBaZGQ0Y1dkSWRpbWhaKzFDeDNFYitRNUNKMjdaUmh2WStnQzNFc0Qzc052?=
 =?utf-8?B?YmQvc05uako5dVEzRVhFelhWVlllbUVkc3lyZ0JBU3FlS0xtWHJXNG9oSENn?=
 =?utf-8?B?K25DeVovS2ZjbkZaZ2tkYXI0cjRSdEZubzh2L1N6NlNxNWhKVFdKNjMwNCs2?=
 =?utf-8?B?Q25GRW9SMC95bFpmMlI3RTMrVFpYY2NZMkdIUXJlazhFekE0MG5TekJQQzdi?=
 =?utf-8?B?SnE3SlFjMXJRZEIrMVBxZlhUMzRxR0w4YStIdThqYWpWR2FPRm11OGMrU1U2?=
 =?utf-8?B?eitGS2pIUHdIWkNKMUhMbmNIUWFYM21ZdzZaaVlWK0ZVeXhRRWJRMjBXTW5M?=
 =?utf-8?B?RkVOMlhONUFXYmc2eHNSTHlQT241Yi9DTklJUVl1SUJRcnRTZWtkQ3VGTWtm?=
 =?utf-8?B?bWcrKzZuYUNxa1R1YzZRWURNcGQ1emwyOU4vT3R3N0V4Zy9UWjJFVGIrM1Zw?=
 =?utf-8?B?cis1TU04UDdTQmxjSXRuSlIrZGJ2Tkx2emp0akREUnhSWmVZbjVOV3VSditF?=
 =?utf-8?B?eCt0WmZRQXlSMVBkL0lpZlpOQ1IrbUxubVVaQUNjZEV2c0lreWZ3L1lDTE1q?=
 =?utf-8?B?dmpLQXlZRU1qL0RBQjgrNEN1QzZiUVkrOHlhOHIyc1hoRXVkbVBvNlZpcVBO?=
 =?utf-8?B?eWQ3ZHRETjQxWmp2RkVHSEJVeERRenpIZlhlWkVIbUZIMmRWYnhsaS8rRFlV?=
 =?utf-8?B?cTNiMEJaczRrRGJoREhpY052aUFIYW5nOXpTSENvSGZEb1F2VmttN214dEdN?=
 =?utf-8?B?Skk0R21EcVB1RkF1VVhxMXA5MnlnSktIOFdlOG1IQng2RXk3S2pmRmgyZnQ2?=
 =?utf-8?B?THpYVmt0Zmt5bnY0em9iSitPQVZhZk10alNQZ25UcmxJNVVFSktoMTRxVW5u?=
 =?utf-8?B?ckdKKzFLdFIySFJQTDM3T0dCVy9WNlV5ZFZHd3M3SDNiRUhtNStUZVdjTWho?=
 =?utf-8?B?OWpNM055UGorM1pWeDhjalVvZ00zUmxmallYaFZkS3ZKS0drcWFyckJkdWpz?=
 =?utf-8?B?a1k3Vm9zUVdZcUt2SzJZVFNlUHRyaHZ5ZTdjcXN3SS9KZVYyTXJrVUZoazlq?=
 =?utf-8?B?eUpOK1dWK3ZnWFdFaEVZVTFyd3dmdi9tNlUxOUNBemtoaEI2SG1YOUNvMW1P?=
 =?utf-8?B?LzlPakozS0c1VS9OS2UwcTgzZmFNbGd5d3V2bjJ2VU5YVk1UN3NML2FVVXp6?=
 =?utf-8?B?S1RuR2ZmNnpWS1JSN29oVWxWakdwMW1PWTZwSk9Cdm43Tm9ObUtRQT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 423d3e59-c917-488d-203f-08de838d101d
X-MS-Exchange-CrossTenant-AuthSource: DM3PR12MB9416.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 18:51:41.9357 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tmyNGhJZnNyZyASZb0vaSFW7eolts6fNf9D0oXlnu4dQ69F9XaGGWwuNGQ081EPAYOVZwFmFTgEP+HPrHAr4CA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6692
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
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[56];
	FROM_NEQ_ENVFROM(0.00)[jhubbard@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: C1B5829F4D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/16/26 6:12 AM, Alexandre Courbot wrote:
> On Mon Mar 9, 2026 at 10:53 PM JST, Joel Fernandes wrote:
...
>> +//! // Create a 1GB buddy allocator with 4KB minimum chunk size.
>> +//! let buddy = GpuBuddy::new(GpuBuddyParams {
>> +//!     base_offset: 0,
>> +//!     physical_memory_size: SZ_1G as u64,
>> +//!     chunk_size: SZ_4K,
> 
> `chunk_size` is an interesting case. The C API uses a `u64`, but I think
> we can reasonably consider that we won't ever need chunks larger than
> 4GB (or can we :O). I'm actually ok with using a `usize` for this one.
> 
> One of the first things the C code does is throwing an error if it is
> not a power of 2, so maybe we can even request an `Alignment`?
> 
> I'm a bit torn as to whether we should use a `u64` to conform with the C
> API, but doing so would mean we cannot use an `Alignment`...

Alex, have you seen my Alignment patch [1], for that? It's sitting 
around with only Miguel having responded, but seems like exactly
what you're talking about here.

[1] https://lore.kernel.org/20260312031507.216709-3-jhubbard@nvidia.com

thanks,
-- 
John Hubbard

