Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NNdEtXp12msUggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 20:03:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE683CE67B
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 20:03:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38A7810E859;
	Thu,  9 Apr 2026 18:02:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="oTKIrmY4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN1PR04CU002.outbound.protection.outlook.com
 (mail-eastus2azon11010046.outbound.protection.outlook.com [52.101.56.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 071BD10E859;
 Thu,  9 Apr 2026 18:02:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f+VVhBnh/gSE5orknkPhF/gb+BoeACmuWboCKyJ/RLSzy+eMRg2I0AO51jZICdzAeYcgYVTl+RAGrCjCVtrCFsVgSpy7vwNFbX+jPDF7f4bKsjbOsQ/uuPAW3BgTqgWUh/2pOJ8JwmtkNjVMBOAfbRlavA5ZR2S77xYx+dt3dzIq+gukdvOuiPVtyoo70j29UXtS9Tq0U2AUZFExB8K6/pzCBoi/4L1PaI0/irX9+MySGyBGy/xmncmSiIJAf2b8yNc/ldi9kbAWasTMaRpRTjXcNlmIVNL/boZhbybdmOesYVYy/H4M4c4AJWn0OcQGZkufVTpgF9+g9TInZLI9mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oq/4YySi3atnMQACYwqM5uyElZTSA6yoG4z9G9fCl7k=;
 b=Hr/bTmN2m12w8ZMcLpfIBjl3TdNn+a193XUYjx//l/5X90OukcNqrwX494RS4//tANReTr5EtRpYbs0/Q2xFpvkWQxvML8ClylBxkLQdlNnZ2OuazPCErilwfaTGcs23CxC37RnwMDDSEOI8f+Ux2cqT8q0WwVoMdrbMsi6i7/LWgOL6o+fRpxT/Q2GDdUooCuh0cyZLfzGcp2WcxjImt/Pj0qcUtmMIX5SPQR8ZG1ng/1l4qsujVaokFJBR9k0fIvaxrhmSEs1YYTrwpLdWItMJY6XR9vDoZJqqOhNQppOJ7aS4NJsU1AmaFX+jjIvj/FRxM/sHBKl3j8flj9tWag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oq/4YySi3atnMQACYwqM5uyElZTSA6yoG4z9G9fCl7k=;
 b=oTKIrmY492juoLUiXjmRsjQlcxrA564r5kE9BhwCdQygQtRVxI3AyqGls7HTQWc9pN9vYhq9mKMkzvZL3zrzjmVDBDU95eHQwsqzOB0buWDNTUDB2pWuR3Jgk8H3j8lXLb1VgpXE3+qAWxk+6ebtJcesOQ25knlajniQJrRhaML8xqdouChcaLkF9DTsvMy23Hx9DCx8SOPpenpv/S/1MgBlZ1W+7dwlr/J2gPK+/UWiRu//vYaIf7kPwNdXlQ22Rfc1T0eak1abmJyEiXh3i5KQbGVgGheWRu+eVIDbJ+p3uh/1U5vEJAjojPC82Mlk1Y5tFBTDDHmMx0IoZq3+8g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DM3PR12MB9416.namprd12.prod.outlook.com (2603:10b6:0:4b::8) by
 SJ0PR12MB5674.namprd12.prod.outlook.com (2603:10b6:a03:42c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9791.33; Thu, 9 Apr 2026 18:02:51 +0000
Received: from DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8]) by DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8%5]) with mapi id 15.20.9769.020; Thu, 9 Apr 2026
 18:02:50 +0000
Message-ID: <387064d2-8c6b-4b26-93e3-cab88d41dca3@nvidia.com>
Date: Thu, 9 Apr 2026 11:02:47 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
To: Joel Fernandes <joelagnelf@nvidia.com>
Cc: Eliot Courtney <ecourtney@nvidia.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, Bjorn Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
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
 Vivi Rodrigo <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Rui Huang <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, Alistair Popple <apopple@nvidia.com>,
 Timur Tabi <ttabi@nvidia.com>, Edwin Peer <epeer@nvidia.com>,
 Alexandre Courbot <acourbot@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, Alexey Ivanov <alexeyi@nvidia.com>,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <42dd707f-e23a-4725-8b6f-08ca346b0143@nvidia.com>
 <1775730646.3752.4760@nvidia.com>
Content-Language: en-US
From: John Hubbard <jhubbard@nvidia.com>
In-Reply-To: <1775730646.3752.4760@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY3PR05CA0018.namprd05.prod.outlook.com
 (2603:10b6:a03:254::23) To DM3PR12MB9416.namprd12.prod.outlook.com
 (2603:10b6:0:4b::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PR12MB9416:EE_|SJ0PR12MB5674:EE_
X-MS-Office365-Filtering-Correlation-Id: 400d31ce-b3f4-47ae-93a6-08de966236e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: kj9SYVST2FGXw3/Gx4LVjn5NoTo3Fgnw0cjHOABTkR3mDBWReAlej3zSrfmbXw0ATfAO46j3uo5Fpyqn1JPwKW7LEqqVGXEthPPb03g8fHxWf8FUTgevOIgYOxwg1KkDxwyetPGbfpMnjjfOT0xWKsoHkkzcrpFMrKH6sYjtbcqLQRbzs9d0/Kc/FJ7gX7297bbsJaOF3MZb3USiuOGGu+VwtssObaYrLx856j2fwhsbnDCoay5M5fyNxpCiQBTGiPw/ahLnp4ifDdZ1W4yV6+ScNQGvDMhKmY82uEkpn6tdhvpSegDz0AeqkwoctyW8NSKGj3GubaR89MC9vu6TMvN7q5whjh3143B18fLNYVKhbm8BEaxffpIc9Y7Mn1TER5NyZYrY1ovhcjh/TlmAI5r2O1981uTDO97Cv569++h5XyaAclj4Q9IWlmqkkmQfR7TnqMye9jjQdoyWm6llaz9mTf102oLj3nPUERFWC2JrEcZq2EIQ2irRvKwaarUJquAh9eFgVEH8mk93mj3/NlEHl38lsbBZJmQQQhB1+IwuMXaSIRi0m3HsxrdSqSrxV1mOrWQ5m+EfO1IgePkUUzKxWYP61xY490EcKoFobexUaL8parlk67iwzlb+fK8cKmgd1RmhH8bEaiAORwjgS7HFUxxW1gO5QVLzDuaCRC7B8c1sQpWPUZlGd/WWcFUvrIqwC3Y+23cX2kaEm+ta31eksZ0toi4N2U/zEiJYd4M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PR12MB9416.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1lGSFFZTFdrUVZEeVBLSlFyTkZVNmxaYTBUOUZ1UGpucjBBR05rTFJVVDZp?=
 =?utf-8?B?bitsMjlBeXpodmZpQXRmR0JkVUFRck9MYkJsdEp4ZnFwbjZqSnpWbTJBeGlO?=
 =?utf-8?B?dmR2UEVteFpBMHNnM0pjRklXWmJmeDRRZVprbmRsaWRoS1JBbWNRcHdMc0dw?=
 =?utf-8?B?MTNiZ1ZxakkwT2pXTEEwbXRudm45cCtiN2FnNnlBNElVTEFIYTZjY2F0dDlK?=
 =?utf-8?B?dzM5d2xJbE9BdldCaGQ2bENaOVhuaG5CTzAzRU0xRUlJeHE0U3VMem5WLzU4?=
 =?utf-8?B?Z2VVMk1lUFFHUHNSK2kwY1VsMDcrZU5CNmF4bWFtWGtTU1U5eGlyRXc2SEZ5?=
 =?utf-8?B?TU81ZTJIdmtUL21EL1N0NmhOVmVjU3lHNC9taDVsNG5RYXVVMGU0S0dGMjda?=
 =?utf-8?B?U2lJblhLSnptM0ExbFZSOUQxL1dEcERsbjlwWDl6Vmt4VmkrWFVTMkl1SE1K?=
 =?utf-8?B?aExKdGhvK3kxNDlsaGJrNjBZUVJEaU5BM0M1MmlYa0xNUmJGNDgxOVRpUkFF?=
 =?utf-8?B?Nk14NmFSQU1jOXhNV1E1ZVMvTWhIYkpYNEYwakJmenYzU0loUHRQOVNjZkN5?=
 =?utf-8?B?Sm9IaUxzcEI2ZW5IT0tkdGtIYjBqWExHbkFYR0oyaGVYdHROMlF3aGRnT0JK?=
 =?utf-8?B?dXhWRk12ck9FVHYwalFlTG9PQ0tyZ1ZqS0F0SHlNaXJPRjlGckd4SFpFbHhr?=
 =?utf-8?B?RmI5cHdodDl1U3QyYlF3WGdmTUxYLzgzZlFsSHY1U1U4NEJ1eWNXcWQ1Slp3?=
 =?utf-8?B?STIyQWFvT0pCUms4NWxaTlZtZU80MC9qQVhrbEwzVXcyb2hWT2E4cnVLemY1?=
 =?utf-8?B?VzBkUWI2TUF5aGJwRDExbXdMMk9WWVNPUmJoUjdOcHVjbDlkaUhQc3dNQ0xU?=
 =?utf-8?B?UHFLcDdFbXZvbiszMTRiOVUzOFpqU3MzWHBVNiszZ0t4MXVVVXE2VFJMUXdH?=
 =?utf-8?B?TEZEWCtZVGI5bUpSSDhBblpFQTdpVGtkV2F3YVRQSjNicXB0d2NoN1ZZZ1p4?=
 =?utf-8?B?TnM3dUQzZmxpTU9DdklwRTNrYkRIUDRzdG11bVNVVEhFUVg1QnptcDB2UXZE?=
 =?utf-8?B?TmpBNjdOQVNxRzZWbVpvRmg1NENVa1VZemZHUVVvcHowK0ZRWkk4clc0YUd6?=
 =?utf-8?B?K2ZVeERCdFI4RVhkY2JiMm9BYUxIeWc4S1Nrc2xuMlZTRVcxNVkzbzdHQlVy?=
 =?utf-8?B?NW5sVmVFdmR6Yyt0VldWczRYc3BoVkVqZlQzR050WlQyR1BTeXE3djk1d0M0?=
 =?utf-8?B?b0tiV2NEa1Y5ek1VcUJnS1J2ZlR2RmEvaHg5RUx2NFhhaUllQ2tCbm1zUFc4?=
 =?utf-8?B?RjJ4eTBpamJGd2dxR0I2eGhuWk5pd3Z3SGczWk5KaEM3dFZibGsxMzhEdWpv?=
 =?utf-8?B?TkZCYVVkSFVpZ2Nlb0ROQmc5SVNTU2NEbm9oN0l6cGpEaUp5dERXRUhYcmla?=
 =?utf-8?B?VGV2dlh0VVZXUms4bDNqaDNsL09PeFU3aE5XNloraW4xVmQ3NVIxTVdFeE16?=
 =?utf-8?B?OE5iZFA4cVNVYXVrV3IweTF4QVE4NWJTdkloelhHT3I5WHZ2UlZPR2VITThG?=
 =?utf-8?B?eDdBRC9SamR3b3Y0bklGL0t4MGNGTW9hRWJuTDhVMVRucjlmckZaQjJnNGpu?=
 =?utf-8?B?R2ZCMUZTKytsYkZxTldpMS85NFk1VlNFa05JbEtVTUNuWm44bWpwd3k2TkQ0?=
 =?utf-8?B?Zmp2TTYrZ1ZMY2JUMmJMMW1QbmdiaFdKUEVuNGZDZExKcnUzMzVmK1FQOHI5?=
 =?utf-8?B?cFBHU3M4TzZrWTUzV0FzZUYwdUtkOGd5a2V1T3JJcC9KK3I0cDdWN1NCTzE3?=
 =?utf-8?B?MUExc1c5WmhoS1ZRS3owc2htbXh0a3hhUTd3TWRncHBKZkFlcnJhcm82Rjlq?=
 =?utf-8?B?UVJFQ280Vnd0c3l5UHM5cUV3U1FETlJNK0RGZTdxUWVFeVozdEdJL2wwUUZ4?=
 =?utf-8?B?dGFiQzBlK1FlR1NxV1lDdVJCOGpXRDA1RHNIaWs3SUVFeUZTSENoQWg0clpQ?=
 =?utf-8?B?b1JUQ2F4WFhnYTlNTkFNMm01TmpMVTl2aklxTzNmaSttRWZ2UzVjVHppcm5x?=
 =?utf-8?B?ZTlIYUF6RlQ5WURTcVlzZ2orSXBzTHE3YTI3VTRPcysrbGdmZ2lOZjVsSjBn?=
 =?utf-8?B?b3V3eHdHaFowSUJFUEVuc1lZN1lXZ0RzalRXVzFBa1I0ZFpQYmJqSHZHWTFx?=
 =?utf-8?B?cmlmTFFZUVFTV1p1TmJWQUFxYTdPakFrOW9PeXJjSmRHbU1yaHQwOGlhOVh0?=
 =?utf-8?B?QW1KTnlOd3ptU2k3aitTUjhEVk52TTlUVnZLNy8rVm40SVJud3M5QTNyNGtS?=
 =?utf-8?B?UHZqTGxPN0UxOFZPdjVZZmtzZjZtTEI1QThOdWNwY25PSVBWVnRsQT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 400d31ce-b3f4-47ae-93a6-08de966236e7
X-MS-Exchange-CrossTenant-AuthSource: DM3PR12MB9416.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 18:02:50.7930 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C5sFpG9fRg+sZOCpn2TH1B9iNmeetx5Uqc6pFozRK1XNmvjQndL65KUutjHs+GL4ohBZfQ+585Jg1SZwi7AD5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB5674
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[nvidia.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_NEQ_ENVFROM(0.00)[jhubbard@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: AAE683CE67B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/9/26 3:33 AM, Joel Fernandes wrote:
...
> Since it is 3 against 1 here, I rest my case :-). I am still in

As Danilo points out, we want to foster healthy debate and land
on whatever comes out of that. Not just by counting noses. :)

> disagreement since I do not see much benefit (that is why I said
> pointless above). Actually it is not even about readability, that is
> subjective (and I haven’t heard most people say parametrizing code for
> the sake of it makes it more readable anyway). It is that the code gen
> is worse, and the complexity is just moved to a higher level in the
> code, not removed. So what are we getting out of this really, other than
> more boiler plate in higher layers of the code that did not exist
> before? Not performance, not better generated code. Really nothing. See
> all the data points in my previous reply.

Alex's latest response[1] does a *much* better job than mine, in
explicitly highlighting what we get out of this. (It arrived a bit after
your response here.) Please take a very close look at that response and
see what you think.

The patterns in these page tables are not a new thing, and Rust has
language features to help express them. 

[1] https://lore.kernel.org/DHOKJ3MJNO5P.SXKOAYKX13JL@nvidia.com

thanks,
-- 
John Hubbard

