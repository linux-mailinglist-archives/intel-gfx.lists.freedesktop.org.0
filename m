Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBkeLPdt3WlNeAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 00:28:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19ECC3F3D68
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 00:28:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7D0E10E53B;
	Mon, 13 Apr 2026 22:28:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="EDpQxQUu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010043.outbound.protection.outlook.com
 [40.93.198.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B9C010E124;
 Mon, 13 Apr 2026 22:28:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QJfDszZXgL9Tvbq9lutsiBC5OEK8CYLYEZSlKr1HVwBPJPnTkhLQBXAmxXIwZaFT3CvVPDA7K7ukW3OkYn/kH/TyOJdpJyHJt6U8W0c1dtJljulr/Qj7ki+CVWdxuZM3v9YnfWI1nb2dNVOsE9iD1YRP3NpET7NlX1Q+qJQqpvwKk3JLFM/nQdNO6pXi+3/kwhh2eXkpAn0owYieKit5WyMaNYs5lQb0PYKG+FZoObMNrgbL0BfuHX97hhiYj4QbJWNGYSwDUmsCQ/C/e3AYm9RcMskvf6QhuTqwrTcl1w35LXOt0oRBvWIfsbrfhuLWC6TmNvdqb21T5IhtQi3a5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=47E08eQaTBiv4ZRU6nvH++4pNOwp6LsLQRffwJgPtYU=;
 b=yTqwmyDnGWAEp15+u8pkiF6jbkGAhXZfeIUD48MLMHY15uLno9/zi9rY3SxPJoiKQxl/alHd3bTqwFQeHhCxYvO6HVxbKITHlzR/wVBYEl5spAT/mB06We6YnRlwFdOT/5YsK5RjnGhtZzTegu7IH7FvNlTbQBdcLxn+tg2wzpWCND0f2NnHoK2Lffd9bGNCgugEX5vaK39aURgql0ENCkeqbMlycmUJfAQ3JJsdMWf/DXEyt5qIWNyAj7uViH832/nyoO6DCoe0Ne5EX+B2o5LbtzdXTngSmgE5Z+1gJXTyk5bGZMwMfIy2nKKxJDRPeJIrAgRbzXoJyz4ym7pt5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=47E08eQaTBiv4ZRU6nvH++4pNOwp6LsLQRffwJgPtYU=;
 b=EDpQxQUu5vsd9QsWZ7V0/oFEMUiqpX0oTWXUPZKUtpA84ST9tDaBB7/jtcDuMCe8NHkFDWil6pD1YwgRlLyWoyD52WHFAzH8mOy0oSd5SRx75f2mAPL1g3sjwcVFQajHrZfhXdJLroxqpF2uNT7TNtxj++8mJgyLE1WJrYWwcJcqFQv6jwE5qXHfBFioC1GlTb9TswFqxavUES3tzdLfbKwlUEgaZ/Tx+8OPi9ZhCjmXG5wK13Je2uncsOO67ILAnY/7HqbeLbCAP1VF1bBwsyRI7blVCj1KZOx5SeCjXMIt3/cN0+4sNlyKnDzBBPePz8H/nPcbmi8n5kIUDYk7Cw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 CH1PPF2EB7CF87B.namprd12.prod.outlook.com (2603:10b6:61f:fc00::60b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Mon, 13 Apr
 2026 22:27:55 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Mon, 13 Apr 2026
 22:27:55 +0000
Message-ID: <56526b93-72a3-4b07-9aa7-7822bd561cd5@nvidia.com>
Date: Mon, 13 Apr 2026 18:27:49 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
From: Joel Fernandes <joelagnelf@nvidia.com>
To: Danilo Krummrich <dakr@kernel.org>
Cc: John Hubbard <jhubbard@nvidia.com>, Eliot Courtney
 <ecourtney@nvidia.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, Bjorn Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Dave Airlie <airlied@redhat.com>,
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
 <1775730646.3752.4760@nvidia.com> <DHOKLTRRIX2Z.1YA9X0D0X21K@kernel.org>
 <acd38f51-3acc-4dbf-9929-50187dccec82@nvidia.com>
Content-Language: en-US
In-Reply-To: <acd38f51-3acc-4dbf-9929-50187dccec82@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR13CA0025.namprd13.prod.outlook.com
 (2603:10b6:208:160::38) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|CH1PPF2EB7CF87B:EE_
X-MS-Office365-Filtering-Correlation-Id: c73e5370-4fb6-44e3-d7a9-08de99abe88d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|18096099003|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: KqUI640PH+lnDTjfipz2GuhNHJ0PFaEduReAHVlQnxWFKdCm+29qcZmkdFLeub2DzcFroaeRaxKxnp9zWhdU/mdPNb2P8sEZIdse9VuxJBML6FhaN4O4Fk7MfM0reODXCph7ivLgdIKiKwQFRWx1tLE3cJBlvNdIVMODn02fVNwSvUtN41qYsIHxtd7KNLK+TXp8b16A/hzZUcjGfj+6ZxcFjjS11ZOib6fKqGV8P/X8q6C6J7vjaMyTjhVogDpUIEkbAWwTZIZ5DhvzRLimvY8jwOzijfdCOj9RxLHRr1kcR0d8lVGEOz31MlTKhvDKM2Kanq36L9prGZHrBSbC+xUBFmrZI4pY42wVk9y1dGl243ZOTMkvQbcE/qrbgWdfhRlnGfLPowzeYxd/nHFZ5tKdJ+kelibXwWqnLbK+RojjYHIso8tyUNvJOx4rQEIF+nsNSNVaMQWF+hWAHpWP8vusI7PslhYGhaSwJtO/maK60+RCmCQ8nu4yrNzDSUHqmPkkAp+sBzpbvYfAIOaGoPESRpJXnXr8K87WfCnq/b59bQbDH/WvsArweMO48hbKTP/XkmI1QGwj94id1D8zoISTH+9vH6KxuAIMHZqqZUgWef2JBDrV6v/U1JUgoO/5/VIfXPomRbalMxRj54uzkIBLlfxusFVMK+G9ZM6+kthTceteQAp1sBLMqG4l1ND6D76ceqsae9FsDNDAVaYHE6H2kEeoCMJWEDyMCdNjgJo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(18096099003)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Yng5blhMQUF1T0k3K28xd1hIdEU4WkY5Q1VCTDErdVYxZlByR3NHaGMveURx?=
 =?utf-8?B?bldGNllkUjMyUnRFTHVkV3lWWXhqMG04cGZmdFI5UmtrcDdXNktMWkZoamF3?=
 =?utf-8?B?bGt3VFQxaWVKMWhkUVp3NVduSDlMMlhSWVlZMzhWSmh3U3REcjZGcDNydTM1?=
 =?utf-8?B?cHc0OXVhTE1RYm9yS09YaG0yZElCZkRjZWtONjBUOFNGb1J4RHVMSDM3SzRz?=
 =?utf-8?B?WXRyUWhzdEQ0T2xKZjEreFMrZFU1L2RaVldsUktGQWM0Znh0ek9IOW84SmI1?=
 =?utf-8?B?NmxhVE1Va1lvUWcvMzZ4UjM5QXRnK0psRDJZNEIydGJOdFVWNWs0WTNvZStY?=
 =?utf-8?B?eWJZVGNjdjBDSFZpaERJV3JKdGt2bTZoanlPaFNGcmlEamRHQ1U4SjVKdDg2?=
 =?utf-8?B?ckVUcDZ0N0hPRGdhQk1IZHNlMUlyeTdHMW9IOFVjTzUxOC9jYVZrRVdPSGEx?=
 =?utf-8?B?YWJzbTQyNDNoditaUklIODg1MXpnbUVUMFZKV0wxVUZsUFNHTWQ0R0k1YWVm?=
 =?utf-8?B?QnJ0L1ArQVpOZ3l6aDd1bnhiWDAzaTFITnpvanZ2c2kvak5yandNbmRGdmdk?=
 =?utf-8?B?YldwL2lyeVlMRjVqK2VpR3VPZTg2c0docDdmQWttWjhnK21abW03RkhUbklm?=
 =?utf-8?B?eVZONW5nYXJMdEZDRVpUc0NzbytiMVFzbzBza0cvek94TWJzWS9BUzZKZitz?=
 =?utf-8?B?bUpNOWFLeWlyblA1dC9oWWNFQk5GTGF6L2JIQTlWRHB4OUZ1dDZpQTA1RjAw?=
 =?utf-8?B?U1FXanlhWldsUFhnMDA0RnpVOFo3WEQ1RVVZZ3R6SVJhNlpvRFoyUGFzaE1N?=
 =?utf-8?B?OWtyZE5keDNXNlM3MlVXZFMzdVRKa0tIbzFZYTFob1pMenpwQVpCcHlZb3M3?=
 =?utf-8?B?MnNTc3lENEF3SzA0YllPZ2pBeTY5djJBUklCR210NWpGaDhBcEYzNmlIdkdn?=
 =?utf-8?B?Y1B6MUNQNUVNU0kxc3Z3K1ZjTXVDSDRqTU1LdzhRSHpEbGtBdG1FRmc3bUVQ?=
 =?utf-8?B?NFpmaXVnZE5qRS9CaUdETHhNZ1QrK2lqbG41Wmtzb0Y1dGNNTWE0ZHE0MHNK?=
 =?utf-8?B?UFFpSDhJY1h3c0ZOTjhCWFk0SXhBR1p5TnBlVkMzUDVNcmp4RzR5T2dSK1JW?=
 =?utf-8?B?b2JncnpvWUVQRzBFUi8xZWJCRU1yN3ozZ0Q2di90WTgxdXRrc3U2SjBTVzNp?=
 =?utf-8?B?OE1sRXkxa1dzd2UvTzBEUGJNTW8zV3lJNEN2Y2Z6ODlyaEJJSHpjN0hjek83?=
 =?utf-8?B?RXh1N2x0aE9tZ3dwQXQxdzdEelhPVkxFc243N2Q3eFIzNlJ0ZmRvQmtwTE0w?=
 =?utf-8?B?Y0dtSUFJYytRZll6QkVsTGpRZEwwQUdDWFhVZ0dtUjJKT2VON1hOSksvWnF4?=
 =?utf-8?B?NGdnTW5wdDlyMUNMNHB3UDY3dTBCWEc3M0U4ZUtRekFNemlUL0tiN3lEc1FX?=
 =?utf-8?B?cmxNVmJmU0hXOFlHajYyNk0zNzY3eEhQODJuY2QyZjVlMzhrcWdaK1UxaURC?=
 =?utf-8?B?S1NEckY2WFdTT2hhRW40cW9EZW02MEQyeVphZWE3VExzTDltc2trL1h6b1p0?=
 =?utf-8?B?ZGJjYWFZUGEwUk5VcHV2ZlFVZ3pBbk1xcmlyWG1WZHh1Sm1yZThINHQ3dXJZ?=
 =?utf-8?B?OUt0NTNmdWpwdzJncWRNV2M4djI2WkFFN2R2OHJrVGtpN3FnVTA1TDgwaVJV?=
 =?utf-8?B?bXFvNURKUXNsNW1XZkp2SnlzUkFVY0pNNmszaHhHTG9MR2haVzhES2pmR05n?=
 =?utf-8?B?bFVudW9QQnhZUFp1cTZuMVlYS2VLN2dJMU9YaUQzeFliTnl5KytvZnFxOTZU?=
 =?utf-8?B?L1VINlRhQlNnam5KTzNpT3ZkU2FFVlpEZkg2RW9qQzYvNnR5ZlVIUGZhRitN?=
 =?utf-8?B?ZE53WktKT2R4RmlEblN1ajEyc0VseU9YcFJpUm4xODBZSERlTWhIUEsvMVZT?=
 =?utf-8?B?d3BDWFE4b1o3YUtjWGMxVmx1RDJMVzdlRFlNalBadXpyRGV2ZXIvL0dVSmZS?=
 =?utf-8?B?bFdmR2Mzclg4Y002UmNYZTZlaWZtZVZxSUFoQVZKbXczdFFvZFErY29TR2JN?=
 =?utf-8?B?VGZvYXg2VXlTUlFPMTRRQ0lOSVhsdUlnU1pRT3hCOEtBZFR1dHFZQyt0QkpR?=
 =?utf-8?B?M0tpc0Fwc3pWd2RuUzNBK3Nod0ZNMUREbFAzSldZSnYyR0xZSGZTeUtzTFpP?=
 =?utf-8?B?Qmsrdk1GWWt2Ty82WGdNaVo3RTRpREFMSm44VkFhN3pEUmxMNFZJc3cyNExm?=
 =?utf-8?B?WmltbklDVnBlZU5VQlZSYXhuWm85USt1M0lBaksvWU1zVE5oZkVwS25pUjIy?=
 =?utf-8?B?Y1dFQmZoekR2OFZ1VDJ5RVJ0UXRpS21pOTFkbXFZODBZc0xUTUNiUT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c73e5370-4fb6-44e3-d7a9-08de99abe88d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 22:27:55.4884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fLXnO9ZZeDocrMVU7VODdVxEQeXON5ZFhijlzCTBaCTyZghWxxGe2NdfglXZb5DXPoitV1dpGSxe48SRvs4qrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH1PPF2EB7CF87B
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
	FREEMAIL_CC(0.00)[nvidia.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 19ECC3F3D68
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/13/2026 4:10 PM, Joel Fernandes wrote:
> Hi Danilo,
> 
> On 4/9/2026 7:00 AM, Danilo Krummrich wrote:
>> On Thu Apr 9, 2026 at 12:33 PM CEST, Joel Fernandes wrote:
>>> Since it is 3 against 1 here, I rest my case :-).
>>
>> That's not how I'd view it. :)
>>
>> Anyways, in case I'm included in "3", that's not my position. My point was to
>> ensure we keep discussing advantages and disadvantages on their merits, as I
>> think you both have good points.
> 
> Heh, yes I actually *did not* include you in the 3 since you sounded to be open
> to both. ;-)
> 
>>
>>> I am still in disagreement since I do not see much benefit (that is why I said
>>> pointless above).
>>
>> That is fair -- in this case please explain why the advantages pointed out by
>> others are not worth it, propose something that picks up the best of both
>> worlds, etc.
>>
>> You can also turn it around and ask people whether they can tweak their counter
>> proposal to get rid of specific parts you dislike for a reason.
>>
>> IOW, keep the ball rolling, so we can come up with the best possible solution.
> 
> Good advice, thanks! I will try to come up with something that is acceptable to
> everyone and we can further debate pros/cons on v11.
> 
> There are some merits on the alternative proposal from Eliot/Alex that I'd like
> to explore while seeing if I can keep some of the merits in mine as well.
I think I found a nice approach. IMO the MMU version dispatch does not belong in
Vmm/BarUser layers. Those are version-independent code. However I agree that
doing version dispatch at every low-level page table operation is a bit heavy on
matches (if we put the MMIO overhead counter-argument aside).

So how about the following approach?

PtWalk, PtMap and everything below it are monomorphized. Vmm and BarUser are
not. Version dispatch is handled on PtWalk and PtMap entry points.

I think it makes it cleaner and splits the code up better too and the
organizations makes sense because the version differences are related to page
tables, not to generic concepts like Vmm and Bar.

Thoughts? Here is a preview:
https://git.kernel.org/pub/scm/linux/kernel/git/jfern/linux.git/commit/?h=pt-traits-v2&id=ff22ba64f729f9f73258777231763a7b9804123b

thanks,

--
Joel Fernandes





