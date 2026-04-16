Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qETXGE1T4Wl5rwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 23:23:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBB8414E67
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 23:23:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 895A510E221;
	Thu, 16 Apr 2026 21:23:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="itfUGja2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL2PR02CU003.outbound.protection.outlook.com
 (mail-eastusazon11011013.outbound.protection.outlook.com [52.101.52.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B85910E221;
 Thu, 16 Apr 2026 21:23:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jw/dSJnKsVu0T0IEZS8hoTooWjD6E5cZ8YBNp2fXc21HdCm8WgMw6XkTX6czbQEFx1ph0+KIxKx5co6dkBvnrMivKl/0lJTTvoHKdXDxk31qxFRekfdc1tZFdfEMyHKzwzazeCYELj/MHkhXE1vAt7XRaqfPhP5GgUNZJL5EJz8ZOfx3QGGykhmXW3Urqx5WohIYQhIyAbTfDOt4vHNo7i9PXFbAfzG3lXVQhemji2UOArSk+yLW9QD1JTfT4HiEhJLRhSb2i+a9E/VXeuiFSidMjhNpDGIKaiCAkLJa4L/NXCgvGmiWrqpCtGl/4Z8uuA7kAqDkNln8uB9/MaVMEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tu88I+bH4hWUfaZSIkJgl6CWpzFe9Hhn9EaaSwdsHyA=;
 b=xsSPEPTLo1fyGbicy8LsU0HFEntpr4c41c9itBiUWxiteOymSVCRM3yVHQIWMOhFHG24S8j9iO2mYWQWj2WafQBOmTXWdKxK0lnXFTlq4BbsChnr8ya5uQlBuXuh1gHQGdUptNoLmWxp1ZHO1qA5ENTBjloUCV+T9x6+WGn/D9UeIpShMRi3/c1Kpn80ggSCjNBPQ7kZVW/Nk9nRbHR9BMYgrVzP8qBsh6igjB6sENJCqQ8/emgXlsxYkhZEzWnfWh4Y2gKDuZ3JrfI77XhKHtuisLCrZOhutGsbLZDPA5qF9OhLx3Y6M3FXzVSsFX6vIXwIdNH7AMx5uOgfOK/TsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tu88I+bH4hWUfaZSIkJgl6CWpzFe9Hhn9EaaSwdsHyA=;
 b=itfUGja29xYOL9e0bbb7YWDtHMV7fcevZLUW5O1+//YfUITlHrJz63XrpKea7ATKGqp/l8EhppdrN5/pLRfgiRork/94IQFxcr5Sca2vu+LZSiHcW9GLA4seWfYCVoHn6jcjTIrFqFU15INyskXNCOU4Awe1c907rUSIjQOi85DX35zBQy7PUVTDzb501ZcI6fnLG/TALcB7QJbkMlvP4+Yixo/sir2G0y4ufeRaEbNKkh8vVFxwynSXNaW/WipmD36WzlYTEzXg+v77hnmkbtg22n2bZ0J2HIg7HQnGHXMlUlHNc9ML7PP/09pYbP/lr6i8/0cYN/IWRwR7Mk+0Sg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 IA0PPF7646FEBB5.namprd12.prod.outlook.com (2603:10b6:20f:fc04::bd3)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Thu, 16 Apr
 2026 21:23:15 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Thu, 16 Apr 2026
 21:23:15 +0000
Date: Thu, 16 Apr 2026 17:23:12 -0400
From: Joel Fernandes <joelagnelf@nvidia.com>
To: linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, Bjorn Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>,
 dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
 Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
Subject: Re: [PATCH v11 07/20] gpu: nova-core: mm: Add TLB flush support
Message-ID: <20260416212312.GA667928@joelbox2>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
 <20260415210548.3776595-7-joelagnelf@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260415210548.3776595-7-joelagnelf@nvidia.com>
X-ClientProxiedBy: CY5P221CA0159.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:930:6a::26) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|IA0PPF7646FEBB5:EE_
X-MS-Office365-Filtering-Correlation-Id: e06277b4-e971-4b5f-947b-08de9bfe5f10
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: yfCIBwh9DdKWJ8CnWKSf/TvrBQFaysplXIVmcY8b1Br2FGECyfeq66rGAkJEdCrU+ixQZfXCQc+0aP4U130KseWz6Lp08RPp636CZYGlm0Q0OMIznTHxiONzhkG/477PcpBFyuLyGaRY6Dtk/PEOsEZqyTOjcxJhxs8FoEI8wLhFOj6gPOCV0LFKp9Q12waMfm06yG+D7GM/qcRWf9ETvrUI1g78wZGp749oZtgwoNOddFrNmCjZTAR+IiE6zq0qxKGQQ+JVXaEzkyhGJWD7T7ahDG8KWAP85M235l81Vzb6YakK7Noswqojq9MmjRTOPLSeXnBhrG2OT5Ez8gOSgw/NnzWgoIBDFD61DqyvKwJ6Ylz9r+1dnIHudqRJ9CpLwJPRg3HaEQvGEzXV5r1P/WIWXB/HtM6joX6lzBaXHr5JNYJvWUu2pN2l6Hhw2JHCpCPQNWHPxdQZKYprLWn3stR7Ajf5J53EFUsPWZSiiT6GJlNMOoMfglNzGAW2X8JDFIowCqCEQJc+QTs1X8FL3iJPOftKE6JkRIn5Mtbf5gNVBqEv2pdqQoYQZTIbv8OnEtI4CIzI07HkXLg7vhDUHOl/s8uATK6iIyU7kZtGGGxKhVbGtkVNBhxsLm6Z9GhEJYokLuYH/O12GSagM2McE/Xu1AkXgu3XbUWQV7KUkandNtVh0NriOhNJxvhZ5sNDuJLf7g1lXq9KDdXyLUqhy7cvAuwu7v1/B6Sh5ore3ag=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmdCc2JZQXdiNTNHd090ZmNOWkdlUm1ZQ3NONWV6azIrZ2k4bDFnOWFqV3BQ?=
 =?utf-8?B?M0tFMTF4SWZ1dmljcG9xRkJrZVd2dWh0SE9ydjg0N2gvZ0ptY01iUnRXYXh3?=
 =?utf-8?B?MmVYSzV5ZzBVQytheGpIMnptOXE3b2N6RElMYzZYNExqZ0NsRHFOandwMExG?=
 =?utf-8?B?QlpJc0lBN0NyNEV4SkViSE5pbHpFRUlheEtEMmJ1WkVzeVprNk9qd2hnSTJE?=
 =?utf-8?B?cGttMzM1TzdPYkUzY05CajFETko3NENzenBVaWRuN0V0blU2cFh5cEViZnRt?=
 =?utf-8?B?dTJrR2ZpMzkrRlVqa1QxVWZ5QktiTXZTUDBETHFiWTdMMUVtUWpYRXgxbkVu?=
 =?utf-8?B?SE05aEQ3YTkxNDJZT0RreG1KT0hFUWJUOTc2Q0ViWUFsa0ZJUEtIZHUxbUVL?=
 =?utf-8?B?Tk5kVXN6S0tJN3FVbWpzOXozN2IyZ2xBUlJNeXh1cTNHVnJjcENBVjMwUTNB?=
 =?utf-8?B?QWZpR1Y1ZnAxb2lXSDFkTThBaFpDdVlXZmZyTVhkaWVoRGR3a0EyUExyVDRS?=
 =?utf-8?B?ZkNoL1ZuODF5K0FaUnhmSE9qMGVRZmdXdUlzeXZMYVUzNEFmMHN0U3NqZlE5?=
 =?utf-8?B?Q21menF5QnhqUVppaXJVMFM1emJSR2g2My8zTFdlRVRMc1VOTWFQWktKTXFS?=
 =?utf-8?B?QnpuSDJQZ2EyaWhZWWo0Z0xCT01PQTM5OFNMaDh2OVRoY2xES0FwVitPWnE5?=
 =?utf-8?B?dW5HdFlHcGQxemEzNFFhMStHN1MzUHlXd0hrLzRTSzJxdTRmNit2Y2pUZ01H?=
 =?utf-8?B?VkI2eGMreGhPVjZtWklnVTVJRVhYL1drVTE5Mk03cFNIVmtqYnR2T2dVL2o3?=
 =?utf-8?B?WlU5MTB4QTFnYW9OWXVnNFlTd2ErQS9CMFNrekh2dmlsUWlzRWFsMFpLdFJm?=
 =?utf-8?B?dkJEUmxuL3k0ZzM1RjUvVHN6RGlCQVBRL0JRZFcycHFzQVY4ZVVxS3A0MHJO?=
 =?utf-8?B?clRuZDI1Z085ZjZ2QWpCbkc1Qm56U2tPRTBteWVVU1N5eDBkRklpZ1VFaStk?=
 =?utf-8?B?cWVlenFObm01bXB1TENoKzdjMFNkSDU3V05VWXNJeU9Sa3lma3BoTm9RM0lo?=
 =?utf-8?B?bTFkUE13SE5GYWx3YWNDMFJwQXN4UHJDLzRIMlBLaUV4MFJmbi9VbGJ6aDJu?=
 =?utf-8?B?bm9rYjV2bUZiWXh6RXpQbTRhS09mVWZFQThQTlVQS2JLN25ZcXF3OGVac1ds?=
 =?utf-8?B?K01MZXBjUlpSYW1xVUo5WXA5MkxyaXJ0NzNmSlRpMUxKcmFsOWxKTHpWQlBX?=
 =?utf-8?B?VjBnaW94NldQYjJQeC9kbmJrbU53ZzF6L1JhOVNzSGQ3U2YrQTZkVmV6YVNJ?=
 =?utf-8?B?SDU3bm5Nd1VQS1lVZ0Rna211bGthb3hTS3FEeDBKbU93Yk95UndqMDFpWWcw?=
 =?utf-8?B?dGViQ0VaS3dYWFF4R3AzVGNXckpGTVlYQWNKMDRIeVVLUllPOFhVa0N2Y1B0?=
 =?utf-8?B?NnhxbWtCR05ndTVVQkk4R0hRSWc0c0wvZ01xRHNXMzEyVlZRelpvalA0ZzFB?=
 =?utf-8?B?cEZMNFhydzRPTk9KU2JSZXh2Rys3WTNFTnNzcmUwK21NSlQ0ZG1aVzBRV1Bu?=
 =?utf-8?B?RlVOd1ZGM0cxd3JOK083RmRvbnQ4b1RadmNEcURBTzE5NzhVelhNSndISVdY?=
 =?utf-8?B?OGd1a1diTWFidWFTYWhMNXJYWmo2WTRGaUVrWGJMdFZ3bi9qcXN1MjBLaTA1?=
 =?utf-8?B?RkNPalZmT2tFRU53UW05a1ZXemdFSzlRdENqRk9VdFRzMms4SG85dmpOeVM1?=
 =?utf-8?B?d3I2OVlDN2pyaGJWSWZpam42VDM4ZGIrTzZXa0IzUFZYQXp6VmVmenVTaFJ3?=
 =?utf-8?B?bEhkTkVIcXNIcmN2TVVmWGtxUHBiQVYyMUZlQm9QU1c2emdubGxjQ1l6akxJ?=
 =?utf-8?B?d09leVY5czYzU0s5aFNIaEc3cHRNMFNOK2pMT3lkRGw2QklHdy9QYVhsamRW?=
 =?utf-8?B?djFuWGxWc01Ud3ZoNmVqMEM1MGNvNTBIUEZtdE9Sd2tXY1FJejdyOUNmc0NN?=
 =?utf-8?B?MUdkOFZlbWVaWVlFeTYvenNIL0J6VUxTVHBWSW0yUzllYVhOUVpEL01NWFg2?=
 =?utf-8?B?Ni8ybTh4aGhnVlpZR2F4b3dIZzBxNDFHd0tNWXBGZXBhUmI2Tkk4WDlVcDkv?=
 =?utf-8?B?bGRCMTlFS3Y4enY5WGZNVUhHVDJ2UDFqaGFRUU1Rb2JvK24zVTVSNS9EY0E5?=
 =?utf-8?B?ZTV3dFRsL1k3OWxxL1lQU0U4Q1hQeHErMzVzM1EvcWVDTHZ2NHQySlBiSm9y?=
 =?utf-8?B?YmFmaWRvVldIUjVYKzVCWTdpVVZ2bGUwY2pET3BRWFFXSUt1TWNUUlhjSmlk?=
 =?utf-8?B?MENmNlJwUEc3OUxuc09aWGNpVTZhWU41alkrenpmdVZmUzlzNHd6Zz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e06277b4-e971-4b5f-947b-08de9bfe5f10
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2026 21:23:15.4019 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0B7pgPbpj6b0b1w2AB497zbKy5vZSNRxpzJ9AHhMzJERmYu4QWFH1ZDTgDxdanil6GYWARRJ3+NmAFZv1tfnNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PPF7646FEBB5
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,vger.kernel.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,Nvidia.com:dkim]
X-Rspamd-Queue-Id: AFBB8414E67
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 15, 2026 at 05:05:34PM -0400, Joel Fernandes wrote:
> Add TLB (Translation Lookaside Buffer) flush support for GPU MMU.
> 
> After modifying page table entries, the GPU's TLB must be invalidated
> to ensure the new mappings take effect. The Tlb struct provides flush
> functionality through BAR0 registers.
> 
> The flush operation writes the page directory base address and triggers
> an invalidation, polling for completion with a 2 second timeout matching
> the Nouveau driver.
> 
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---
>  drivers/gpu/nova-core/mm.rs     |  1 +
>  drivers/gpu/nova-core/mm/tlb.rs | 97 +++++++++++++++++++++++++++++++++
>  drivers/gpu/nova-core/regs.rs   | 44 +++++++++++++++
>  3 files changed, 142 insertions(+)
>  create mode 100644 drivers/gpu/nova-core/mm/tlb.rs
> 
> diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
> index fa29f525f282..314d660d898b 100644
> --- a/drivers/gpu/nova-core/mm.rs
> +++ b/drivers/gpu/nova-core/mm.rs
> @@ -25,6 +25,7 @@ fn from(pfn: Pfn) -> Self {
>  }
>  
>  pub(crate) mod pramin;
> +pub(super) mod tlb;
>  
>  use kernel::{
>      bitfield,
> diff --git a/drivers/gpu/nova-core/mm/tlb.rs b/drivers/gpu/nova-core/mm/tlb.rs
> new file mode 100644
> index 000000000000..6d384f447635
> --- /dev/null
> +++ b/drivers/gpu/nova-core/mm/tlb.rs
> @@ -0,0 +1,97 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +//! TLB (Translation Lookaside Buffer) flush support for GPU MMU.
> +//!
> +//! After modifying page table entries, the GPU's TLB must be flushed to
> +//! ensure the new mappings take effect. This module provides TLB flush
> +//! functionality for virtual memory managers.
> +//!
> +//! # Examples
> +//!
> +//! ```ignore
> +//! use crate::mm::tlb::Tlb;
> +//!
> +//! fn page_table_update(tlb: &Tlb, pdb_addr: VramAddress) -> Result<()> {
> +//!     // ... modify page tables ...
> +//!
> +//!     // Flush TLB to make changes visible (polls for completion).
> +//!     tlb.flush(pdb_addr)?;
> +//!
> +//!     Ok(())
> +//! }
> +//! ```
> +
> +use kernel::{
> +    devres::Devres,
> +    io::poll::read_poll_timeout,
> +    io::Io,
> +    new_mutex,
> +    prelude::*,
> +    sync::{
> +        Arc,
> +        Mutex, //
> +    },
> +    time::Delta, //
> +};
> +
> +use crate::{
> +    driver::Bar0,
> +    mm::VramAddress,
> +    regs, //
> +};
> +
> +/// TLB manager for GPU translation buffer operations.
> +#[pin_data]
> +pub(crate) struct Tlb {
> +    bar: Arc<Devres<Bar0>>,
> +    /// TLB flush serialization lock: This lock is designed to be acquired during
> +    /// the DMA fence signalling critical path. It should NEVER be held across any
> +    /// reclaimable CPU memory allocations because the memory reclaim path can
> +    /// call `dma_fence_wait()` (when implemented), which would deadlock if lock held.
> +    #[pin]
> +    lock: Mutex<()>,
> +}
> +
> +impl Tlb {
> +    /// Create a new TLB manager.
> +    pub(super) fn new(bar: Arc<Devres<Bar0>>) -> impl PinInit<Self> {
> +        pin_init!(Self {
> +            bar,
> +            lock <- new_mutex!((), "tlb_flush"),
> +        })
> +    }
> +
> +    /// Flush the GPU TLB for a specific page directory base.
> +    ///
> +    /// This invalidates all TLB entries associated with the given PDB address.
> +    /// Must be called after modifying page table entries to ensure the GPU sees
> +    /// the updated mappings.
> +    pub(super) fn flush(&self, pdb_addr: VramAddress) -> Result {
> +        let _guard = self.lock.lock();
> +
> +        let bar = self.bar.try_access().ok_or(ENODEV)?;
> +
> +        // Write PDB address.
> +        bar.write_reg(regs::NV_TLB_FLUSH_PDB_LO::from_pdb_addr(pdb_addr.raw_u64()));
> +        bar.write_reg(regs::NV_TLB_FLUSH_PDB_HI::from_pdb_addr(pdb_addr.raw_u64()));
> +
> +        // Trigger flush: invalidate all pages, require global acknowledgment
> +        // from all engines before completion.
> +        bar.write_reg(
> +            regs::NV_TLB_FLUSH_CTRL::zeroed()
> +                .with_page_all(true)
> +                .with_ack_globally(true)
> +                .with_enable(true),
> +        );
> +
> +        // Poll for completion - enable bit clears when flush is done.
> +        read_poll_timeout(
> +            || Ok(bar.read(regs::NV_TLB_FLUSH_CTRL)),
> +            |ctrl: &regs::NV_TLB_FLUSH_CTRL| !ctrl.enable(),
> +            Delta::ZERO,
> +            Delta::from_secs(2),
> +        )?;
> +
> +        Ok(())
> +    }
> +}

Btw, I changed this to doing it in 2 phases to avoid holding the RCU readlock
across read_poll_timeout, which can sleep. Will squash it in for v12.

---8<-----------------------

diff --git a/drivers/gpu/nova-core/mm/tlb.rs b/drivers/gpu/nova-core/mm/tlb.rs
index 6d384f447635..3a65db7d9a1a 100644
--- a/drivers/gpu/nova-core/mm/tlb.rs
+++ b/drivers/gpu/nova-core/mm/tlb.rs
@@ -69,24 +69,35 @@ pub(super) fn new(bar: Arc<Devres<Bar0>>) -> impl PinInit<Self> {
     pub(super) fn flush(&self, pdb_addr: VramAddress) -> Result {
         let _guard = self.lock.lock();
 
-        let bar = self.bar.try_access().ok_or(ENODEV)?;
+        // Broken into 2 phases with scopes (Write and Poll) to avoid holding
+        // RevecablableGuard (and hence RCU read-side critical section) across
+        // the read_poll_timeout() call that can sleep.
 
-        // Write PDB address.
-        bar.write_reg(regs::NV_TLB_FLUSH_PDB_LO::from_pdb_addr(pdb_addr.raw_u64()));
-        bar.write_reg(regs::NV_TLB_FLUSH_PDB_HI::from_pdb_addr(pdb_addr.raw_u64()));
+        // Write phase — hold bar access briefly for register writes only.
+        {
+            let bar = self.bar.try_access().ok_or(ENODEV)?;
 
-        // Trigger flush: invalidate all pages, require global acknowledgment
-        // from all engines before completion.
-        bar.write_reg(
-            regs::NV_TLB_FLUSH_CTRL::zeroed()
-                .with_page_all(true)
-                .with_ack_globally(true)
-                .with_enable(true),
-        );
+            // Write PDB address.
+            bar.write_reg(regs::NV_TLB_FLUSH_PDB_LO::from_pdb_addr(pdb_addr.raw_u64()));
+            bar.write_reg(regs::NV_TLB_FLUSH_PDB_HI::from_pdb_addr(pdb_addr.raw_u64()));
 
-        // Poll for completion - enable bit clears when flush is done.
+            // Trigger flush: invalidate all pages, require global acknowledgment
+            // from all engines before completion.
+            bar.write_reg(
+                regs::NV_TLB_FLUSH_CTRL::zeroed()
+                    .with_page_all(true)
+                    .with_ack_globally(true)
+                    .with_enable(true),
+            );
+        }
+
+        // Poll for completion — re-acquire bar access each iteration to avoid
+        // holding the RCU read-side lock (via RevocableGuard) across sleep.
         read_poll_timeout(
-            || Ok(bar.read(regs::NV_TLB_FLUSH_CTRL)),
+            || {
+                let bar = self.bar.try_access().ok_or(ENODEV)?;
+                Ok(bar.read(regs::NV_TLB_FLUSH_CTRL))
+            },
             |ctrl: &regs::NV_TLB_FLUSH_CTRL| !ctrl.enable(),
             Delta::ZERO,
             Delta::from_secs(2),
-- 
2.34.1

