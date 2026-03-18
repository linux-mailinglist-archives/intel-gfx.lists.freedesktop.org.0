Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6I/zICf1ummVdQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 19:55:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF97A2C1A8A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 19:55:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F92510E083;
	Wed, 18 Mar 2026 18:55:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="pDYWZy3c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011021.outbound.protection.outlook.com [52.101.62.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7215810E083;
 Wed, 18 Mar 2026 18:55:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mbHyH++QEkdpdLtCjf7hTwamKLoxXn6jVl1zDlmn0J9CpLacX9fi0QOoCKrlOlDeRYHAjBETSB4pxi4dmwL2WcyZPY3+x/BdeKlFe/XrNmc5ei8ZrKMKcSLzr3dmTdA2a5kSfXjl3egiC8YuFFNGbRzqtk0vzKt3KLDYt40eQ/BkP48KO5ol7xeRE1jm2YVp/cEGUsj3GRI/+7aec5lQ8Bi1BwYc8TTcFk5Ty30RHgSKs/oMj4/fJxoe/4U5HWnZ1mJlrXVfMPursahl4kXiH0cSgL7e9pt0WcEGRXQrYnavbYar8+Jt4iJg38zNENJVzWR0bNGEf3VTdeDbaMeARQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6bdteLddc+7br2YpmZBoXQD0YuAtFeUubDHx11rQ0zQ=;
 b=dlN/WjR726rlrP0l1d4u5z9FMaioCr7NYbz6nVDi44Sb7CDj8etJgqeL+rSzZ8KCsR9tvY8RhZ2K2OjyMpSbcavJR7U4yXete6seeC1Ei6hJETfvlBQIOtw/3K/X0irZKwFoe6y10tyq4UPgWQ0Hkz3Xym25lEii/8zUOaDBxxttM9y1k4TjTi6HLyHH4YnEflDK+hs+JILD6xtFwlMg3IS70Kw4+NBUjIIkMWWVrKNXeod4Utm18vQZTs5SzyfQBvwFdPz+PcHbRoq05nopbm/sz6Fjoje3Q0mtzJTaknOUfCAoPGBP8jolgZhqhrybeSenutZwNZgVf21hkPSMNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6bdteLddc+7br2YpmZBoXQD0YuAtFeUubDHx11rQ0zQ=;
 b=pDYWZy3cxvT4+DNYqiW3/HuCgOlkTsl39jGWwAKYWvFVtFteIlc9PmU03uR2BzbL1sU5xr15MN5rYwzTBf3SCHQN5ii73mVsF/JKpay1KtiNj2cg81wDzwAUYc2DrAfRYcde2YYC8+aksJB3Lc8t11otQzCCY4Pu0Be9Z3vhFLI98NeKy7WJJ/E5yBbFusqgrwNQ0OIK+zQFDnmWLyzIuCplR9FKyvvRpygm8k3vUd4z+jBcAMsnxKrmmtqdJGFjJdacvZHRjMoyCaZVbBsyyWZLRWtcxHRuTraAW213aTM2ir2RMrHAgCW18IyJ1RWikJMiQmSLmaHgvxWprHddJg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BL1PR12MB5899.namprd12.prod.outlook.com (2603:10b6:208:397::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Wed, 18 Mar
 2026 18:55:25 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.016; Wed, 18 Mar 2026
 18:55:24 +0000
Message-ID: <a9377b60-a60d-462b-bd66-e7890ee88c60@nvidia.com>
Date: Wed, 18 Mar 2026 14:55:17 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked list
 interface
To: Alice Ryhl <aliceryhl@google.com>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Trevor Gross <tmgross@umich.edu>, Alex Gaynor <alex.gaynor@gmail.com>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 David Airlie <airlied@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Simona Vetter <simona@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, Nikola Djukic
 <ndjukic@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa
 <elle@weathered-steel.dev>, Jonathan Corbet <corbet@lwn.net>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com> <abpr65jD6esHysWO@google.com>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <abpr65jD6esHysWO@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CY5PR04CA0021.namprd04.prod.outlook.com
 (2603:10b6:930:1e::12) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BL1PR12MB5899:EE_
X-MS-Office365-Filtering-Correlation-Id: dcf9434a-ac4d-401e-9ea5-08de851fe947
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|18002099003|22082099003|7053199007|56012099003;
X-Microsoft-Antispam-Message-Info: R56ED/L1VmDaoaSe3ktUvlQqyv7oGLdwt21tHi4lsQ2UQpIySy4P28nag3XPUpNcpNz4lGEo7jGbTrIjz49H/IJEsvsJ1apyx18CzH/sR+pWnyuMdcXx+oTDps+HFY1zgBI2boQ06VImLuAEjszKIl55BLO/OOHotBW/RMHYKcB5xCg0F4jqBz+Heb0Qu8dpKzK2/7w26huEM5u3Kln9eetuBoeIl9bG/kiNVESkFnhADRFkXGptBFemQy2uxVoDcEo5vfMgL7bZg3U4WVQCjag55kezIni8Lk0Cq8eqP1+KQUgJ3FkDcxraCHSjfQUg4Bu3AVHzY4HFWPmcPV/q1hMnO6eK/vnc4Bxn+/9GTN07GPzpo6+rTsmq3TGNGlgtcD6yDlAZ2WnrJbr7Q37JXvFrQBBFV+q1GRFm64edqyqRu7pfG/1w+LDrFx5MesC7hLc+/ySrG0i3gFRDcxNwnJrkcKD0v9mDB9ln4ZiVIaKjslWNf+5UnrnL/yakbjovs6f+BrW6tnWxnFcGh30q3Eft+Cy14jmjsHhIW6fNJ/Q2miyCVAE2eSyQy9wsYgx19FQwzSy9+fnmBWuDbcUTvsabo7BMDcFymil6DhbOf24kblOtt7mJWIUMvJEQ/HCkxfzK/kS4vOXJpxNUUqZio5wTK9RLj/Jijnzg4cI7ntcYwKMX7a6qPZ+RWZY0zmDSs/x3XivLAbWOK6z6a0HDaliwPiWp3khXuy3kON3KXT8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(18002099003)(22082099003)(7053199007)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFdtZ1J1RE9EcDRXOUtubG45UUprK2puajJpY2JTcndOSEtYTmYwR0N3UUFs?=
 =?utf-8?B?RjFHWE01cUQ5WmRYUWp2ZmpsZ0x4TEhxZll2R3ZkNytkbVhPOFZmWjkyNlpL?=
 =?utf-8?B?SWpNUEhTa085Y2VDa2hJOG1kMi9tUVhIdmtEVlExOEZGQnpmOVZ5OUg2OWRa?=
 =?utf-8?B?a0ZGdnhPWGgxZ25yRVFEZklMN0hFTjZUOFpJTURkeXJYYVpQMXBlRUdTU0Ur?=
 =?utf-8?B?a1VETUFOWVpWdzVUbXV0Smx5NHJhZlp4ZzNZam9xL2NmckR0MkRVczJSQ2Qv?=
 =?utf-8?B?NStEdXFCTjNic1hJU3pxejU3WUZUNSthd1N4VklYektPK20wZVlpRTFjUU1q?=
 =?utf-8?B?Vks3NE9sRE9CRHVISmhhR2xJSWtlSUM4eGlmeXJDOVF5SVBpc3ZXUCt1b0lX?=
 =?utf-8?B?WnJxZ09wWlFNNUpSL2FVWDFhY09sV05QcDkydEJOUHkwUVF6bVloaVczZFlS?=
 =?utf-8?B?WVNNeHVoclpHVUI3dUVwdDh0b1NYemYra1pjSjNsdit2elkyNFFuUmo1N3Yw?=
 =?utf-8?B?NWl6UWRHek9ZOXlwa2k0RDJ3bUw2aHdET0laMUZxSFZnN3lLZkY4dFNTeGM4?=
 =?utf-8?B?RmV0ZHpCODhJTGR2L1UyUWVoWU1oVzlyRmZzL3laYmRhQmpCSzJacGo5bFIr?=
 =?utf-8?B?RWhNRHBSQmEyK2VyMlBYTGdmZGNSRDFpNElRcmtkN0xhRm1SL3NRMTVhRVBP?=
 =?utf-8?B?SDA0a0ptcjZqMjl2TWpWRmd1SEZIeHBqbUpHaXgwVnEwcEFOeXNJNEZBM3NM?=
 =?utf-8?B?c1F2RGoybWhXTlZEWnlPQ3hwUG5kS1JwTU9lQTBsZEV3UFl3enVUUUFwbFI4?=
 =?utf-8?B?NHIxem0wdDlHQkdxdFFmV0NBbEhhSi9oWVZDaXZ5OTNpZ0ladVFuQVJFbith?=
 =?utf-8?B?TVVZME44a0EyQllURHhBSEpTOGgvMHM1RzFnS1N0VUh4eTdocHA3bEdqMlp3?=
 =?utf-8?B?cmwxdU5tZVhtekJBdzF0NVFKTGRISnNCR1IzZEwwYVU0czV0RmdvbEM4TVd4?=
 =?utf-8?B?Mm1HK0RRVXhVVHV3d1RkcnlDalFoMmNhaGRyQzhWMzFZUUF5eGc5T29jQ1Rx?=
 =?utf-8?B?VmZ5ZmhiT0gzUWZvcTdNVmtkKzYxenZXcUtVamQ3c1JYbm1pU1VrdGZSVE5m?=
 =?utf-8?B?UVVxTVR1RjZNWmQ3ZU5GaVBmUVZCNlRZQk5vTUtJWjRETHVTdUUvUWxkckdO?=
 =?utf-8?B?bWFUaEN6Umt0THI4ekVXMVNKRTZ4TjhFeHE2UUpBamM5WVlaSVk0V1dUN3VK?=
 =?utf-8?B?aGRDTmxJdnZrdFBUQlZwall1WEVLT0ZXT016bGIvRndtNzRBQ3hXWUl2Tm1N?=
 =?utf-8?B?QnpHaXBsanlRV0I5RHAvS2d0OTlvTlAzUDY3QVc1TTRCaWlpT3Z4ZmFZVFRE?=
 =?utf-8?B?OE5mQUY2am1nMllpb1pya3pLWjRxWlIxeDBIVEN2MmJialo5WXJ3Nk5jMUMx?=
 =?utf-8?B?VHBoUEtuNlE4WHR0bkRreGZLUGtFV2ViSFE4aXJjcUwrLzlTNGhyVnhhYmRn?=
 =?utf-8?B?ZkJwekxQT0t3aXNoaDNsRDBJSm9nV0lCWFFORTgwS0lYbzRodmxrSWxOZlhi?=
 =?utf-8?B?dTRLMWlYbWNNaitzbDQ1Wm96T1FxZ0lMTmxvSVg3dUlFV0E2Sy9EMHdvVDRw?=
 =?utf-8?B?S3U1QjB0NDI3dkdyb28yVko5TW9HYm14OGFQdkxoRklGaTJsS1ZWZUlsNjVa?=
 =?utf-8?B?ZVpJMHBERjY0VmlvcnNLRXV2L1QzRXpxN1d6akdPbkF6WlJiaG5oNFl3TDhn?=
 =?utf-8?B?Y0V2YmhHcVlLWVplUDQ1clZORjltQUw5QVZab1F2MGh6L1pkU1FnUzFHbXR0?=
 =?utf-8?B?VGNJNkNxc054dmswMzRvaUJaU2ZTMzhCUUhNYUdldDViU1Uxb2JGMUpuc3Na?=
 =?utf-8?B?Z0JudWZsazhmeC9SS2N5YUJnS3NsR1U2TzVTYVRnaEl6RVJEZXhmVm9QZ05o?=
 =?utf-8?B?eFhjWkhWTlJ6d1hQMXBxNmdJOW5QVWZTcGtkSnd5cHdPK1AyeEl3NU91WnU2?=
 =?utf-8?B?U1dGbDNvSUp5SHFqbWwwVFhkT1ZQemZvWU4weG9ITVJjODlwSW9MMkVOQkpa?=
 =?utf-8?B?VGNpYzBISzBpUWtXVmE1cnB0WFBqcnJybzBiWDRJVy9ubnJWOFVoZVpnZXQ5?=
 =?utf-8?B?dWs0ODBLR2tTZ05mazJIZEpuTlBXTXViVWRxUFRqbUxJSkp5MStmNnc0WGRw?=
 =?utf-8?B?OXB0NHhhVDBqb1NNOHZjMGNJQksxSWhuak4zZ2VoTyt3aWg3VVUwbTBQbVpY?=
 =?utf-8?B?bVQyUm00bjhHNXg3NzE5QVgra0hjVllFR2tWVU5QVHA5QjBGaEhGQVhkM2JE?=
 =?utf-8?B?VkJuL1licGJLMUJjY2FQcHlpZHIxV2ZSZlNZa3cxZEJKUW5venRGUT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcf9434a-ac4d-401e-9ea5-08de851fe947
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 18:55:24.5374 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x+ZHgSeeSz2SzQl7JFBwm0pfkPkoSy3qIyi1pq63uTq9J+rgEXHdgSrwJ9b/MAjYsEWwUXMD7XPDN0V07e1TvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5899
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
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,nvidia.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[53];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,collabora.com:email,rust-lang.github.io:url,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,garyguo.net:email,mod.rs:url,buddy.rs:url,tracepoint.rs:url]
X-Rspamd-Queue-Id: DF97A2C1A8A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/18/2026 5:10 AM, Alice Ryhl wrote:
> On Tue, Mar 17, 2026 at 04:17:10PM -0400, Joel Fernandes wrote:
>> Add a new module `kernel::interop::list` for working with C's doubly
>> circular linked lists. Provide low-level iteration over list nodes.
>>
>> Typed iteration over actual items is provided with a `clist_create`
>> macro to assist in creation of the `CList` type.
>>
>> Cc: Nikola Djukic <ndjukic@nvidia.com>
>> Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>
>> Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
>> Acked-by: Alexandre Courbot <acourbot@nvidia.com>
>> Acked-by: Gary Guo <gary@garyguo.net>
>> Acked-by: Miguel Ojeda <ojeda@kernel.org>
>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> 
> I have a few nits below. But overall I think this looks ok:
> 
> Reviewed-by: Alice Ryhl <aliceryhl@google.com>
> 
> Please do consider my mod.rs suggestion too, though.

sure.

> 
>> +//! ```
>> +//! use kernel::{
>> +//!     bindings,
>> +//!     clist_create,
> 
> IMO the automatic re-exports of macros at the root shouldn't be used.
> Import it from kernel::interop::list::clist_create instead.
> 
> Note that you need to put a re-export below macro definition to do this.
> 
> 	macro_rules! clist_create {
> 	    (unsafe { $head:ident, $rust_type:ty, $c_type:ty, $($field:tt).+ }) => {{
> 	        // Compile-time check that field path is a `list_head`.
> 	        // SAFETY: `p` is a valid pointer to `$c_type`.
> 	        let _: fn(*const $c_type) -> *const $crate::bindings::list_head =
> 	            |p| unsafe { &raw const (*p).$($field).+ };
> 	
> 	        // Calculate offset and create `CList`.
> 	        const OFFSET: usize = ::core::mem::offset_of!($c_type, $($field).+);
> 	        // SAFETY: The caller of this macro is responsible for ensuring safety.
> 	        unsafe { $crate::interop::list::CList::<$rust_type, OFFSET>::from_raw($head) }
> 	    }};
> 	}
> 	pub use clist_create; // <-- you need this
> 
> See tracepoint.rs or any of the other macros for an example.

Ok.

> 
>> +//! // Create typed [`CList`] from sentinel head.
>> +//! // SAFETY: `head` is valid and initialized, items are `SampleItemC` with
>> +//! // embedded `link` field, and `Item` is `#[repr(transparent)]` over `SampleItemC`.
>> +//! let list = clist_create!(unsafe { head, Item, SampleItemC, link });
> 
> Did you try using this in your real use-case? You require `head` to be
> an :ident, but I think for any 'struct list_head' not stored on the
> stack, accepting an :expr would be easier to use so that you can just
> pass `&raw mut my_c_struct.the_list_head` directly to the macro. Right
> now you have to put the raw pointer in a local variable first.
For buddy.rs usecase, currently we do put it in a local variable so it
works fine. Not doing :ident was causing clippy errors.


warning: this macro expands metavariables in an unsafe block
   --> rust/kernel/interop/list.rs:341:9
    |
341 |         unsafe { $crate::interop::list::CList::<$rust_type,
OFFSET>::from_raw($head) }
    |
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    |
    = note: this allows the user of the macro to write unsafe code outside
of an unsafe block
    = help: consider expanding any metavariables outside of this block,
e.g. by storing them in a variable
    = help: ... or also expand referenced metavariables in a safe context
to require an unsafe block at callsite
    = help: for further information visit
https://rust-lang.github.io/rust-clippy/master/index.html#macro_metavars_in_unsafe
    = note: `-W clippy::macro-metavars-in-unsafe` implied by `-W clippy::all`
    = help: to override `-W clippy::all` add
`#[allow(clippy::macro_metavars_in_unsafe)]`


thanks,

--
Joel Fernandes

