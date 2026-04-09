Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Dw4C6GA12kLPAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:34:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED8A3C92F7
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:34:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7267710E77F;
	Thu,  9 Apr 2026 10:34:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="ROs+sTC1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010052.outbound.protection.outlook.com
 [40.93.198.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F25CC10E77E;
 Thu,  9 Apr 2026 10:34:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Aj41T+MasDm+PckCkTO2FVWfziedezJk/EATK2jgQbJmM8IFy5jnT7vu9VJeM/vkkRFCEdUOY4L3j/M91+Q4ppusUlLVT7XfPwNqnjVS0d8B78Sdkpc+SBf7+G+bRb79YN+W+rv4pLSvWHHkfZo0zhGPYFbMLjKqohfWbk1Fk3Yewri6A3FM9xWMCykrRNxgoQ1C9l3xkBRbtKyIFWcjd4ShO9Z0DnZR+FI/hlWuPjB6ivXqn91diXBylDfmJtfsBCvTOSGwVs/gfQG+QTHUD42HImSl95J+U8bOrFGlxnjU8w1feJzGBTaKu0qV7N4t2vUBd1vIkmBVFQdVMp2FjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IQVke9bmsoOzK9pErtklZWx+xoiN/1OTuXeK2LhlYG0=;
 b=Dluaf5j8f3hn0igmoB4uOGiJeodUCxJeaM78vCQr0316bQPhNvKf90ErsqMC7s2CeNuRc8efHi0RGjQ9Ctp3zl0nsfaBKX8fexIF/CnLKig+XFEsX3O94RSf9XdwlGWst4BGBSzLb6yuEFunCZXCoYHpWW+iC3HaxnrEQWk7DX9763YtmdGfsaCc8QJI88P/xaiakKi4s1cQumlhNH42RGEMQrGtJElvOxYQ3yJa19SlrEyVw1VWJcdLk6mScQsulro7zYT23T4enqfAfOutD+Y7V/82aPDQ+F7Kxs71ytfY2SxA1LNrOaW1Fo33y8aNoRoW5m6R8uTVk1q9ODDXsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IQVke9bmsoOzK9pErtklZWx+xoiN/1OTuXeK2LhlYG0=;
 b=ROs+sTC1xDLMzFebUuPc3dU9C42/1CBdzqZp5h9/KcFGKPhemkjP6TkdcGW1FZIZ9U9uHQEkL/6jXwrgHh1q3h5folDx916Fda2QkDA+uKeiGzRFlR9fcH9hd5zPJomkyLKfS8HERouiZrMIhF7dgnexdeMNmtmevJFlKZBoOYkcAtiOPFeNZz0JXKj1sfOO6Aj3Ek6Hm1gBuh09xFfES51ItfM650MOIAcGeSilHsIHSHTlVuDe1ZjroAKCoj6zwVq5/AnUgudKS6OlaLquxqleo+cygfJ9InwZdEhFWKDBmjICMmGknyFXMr9qI4T3mJnZGLCb/UcD0nDc1fL9QQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 MW6PR12MB8999.namprd12.prod.outlook.com (2603:10b6:303:247::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.17; Thu, 9 Apr 2026 10:34:00 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Thu, 9 Apr 2026
 10:33:59 +0000
Date: Thu, 9 Apr 2026 06:33:57 -0400
From: Joel Fernandes <joelagnelf@nvidia.com>
To: John Hubbard <jhubbard@nvidia.com>
Cc: Joel Fernandes <joelagnelf@nvidia.com>,
 Eliot Courtney <ecourtney@nvidia.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
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
 Vivi Rodrigo <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Rui Huang <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>,
 Alexey Ivanov <alexeyi@nvidia.com>, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
Message-ID: <1775730646.3752.4760@nvidia.com>
References: <42dd707f-e23a-4725-8b6f-08ca346b0143@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <42dd707f-e23a-4725-8b6f-08ca346b0143@nvidia.com>
X-ClientProxiedBy: BL1PR13CA0186.namprd13.prod.outlook.com
 (2603:10b6:208:2be::11) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|MW6PR12MB8999:EE_
X-MS-Office365-Filtering-Correlation-Id: b2538080-24db-47a6-b807-08de9623828b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 6Ou2V8qV0HYf2I55mkKO8pOY9sgFY6Pt7/+tVsl4Y6Knb1Dco0j/CagS3QXqEcUAy1FbLceMNIoO6UrR1zbRtW/oPqLf5cuMzx3Wny42VGJpoCbIFjHUlYN3zHQ/b4WE/RDa0nMidOX9SwFV9GEpJtvM75mT21wp0NoME/8cT6UZtTKU7tOeFrG4XtcdXA/exgKf0c+dbvo031G0YlGUY+q64S+DsEmbOkjtlqjvAY4RwEoIzhxP61Kt1xnpVfx2gFLN8FLxGQvdWosaVilE9DVihQr7Bo3vxhKlu44M3PmC1TVr7T0O0Nwfy3tsuWJbGnbbaAGe2oZowkBNxp4G0Vzrf2BGBen7o6XvVEQj1ytBp4p4wEH5D4vZXCg+5Cjt0jM9ZmXObG4njqWeuyPZMgSxEYiUmL5HJ8eKDSEmLXrkZs7OMA79zzGJ0WJV6g2+bG0nMANfzlNibjgGcKznuC5vO8XaB533jbQKGVARsRZIOA9Nohvw/Gs6zzsPFjOZIwh4U3+FHFMVD0QqqOFZYKHV7WtF6H9qTv1lMk0hs5Tbs0e9zMscrPSANxqxRJJa6ecmeZ6ZN4mjnLDbYH7dIWhfZMK6zrgzgsZwB2xcPVwpNYZ3ovxxvDP28WqVI9bnJy4WrrC3+axVdL1837QAyDDFtmdCLQiNqxJOR/Kg/HmQLDqRD8wMfq6MvoCg+Dgq2yoPpkxZf6uhAm9OxFptcLm2BdSX9WEYmIQxqESdNKg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUhNd2IyMW5yd0N2MmU3VC85d0l4OVlvUWgvZFZKN0VsM1UrUVBFN2g0K0Vp?=
 =?utf-8?B?VS9yWHVHcWw5b1cyTXg4WVZZZlp5NmFiZW5ZSTRDN0VBcm5QSVc1cklRdmsr?=
 =?utf-8?B?SHhlN0tsTU4waStyL2ZoRjg3UytBTStPa2VBUVcveVhFeEt2N0U5dTk1cEdp?=
 =?utf-8?B?WnlwUkxGYXhFcE9UZUNlMkIwMGY2N2NLOWEwZjNNeDFRU0MxYm9oQ0VjeWM1?=
 =?utf-8?B?dUZmanNMNkladVZCTFVNM3BwQzdVbHBydzBIT0N2ZXRLNmJHa3F3N0NTTUgy?=
 =?utf-8?B?MEpNd1JrMDlIZUVqdllPU0NLNENEc28rRG1CZTlVSytSaS91ZDY4ZytWTW5W?=
 =?utf-8?B?WE56U2pqNUlWZHJpZ2NDTGFrc0Y0bWJ0SU9EdzZRZnhhQ3dpa1dzdnVVSzZm?=
 =?utf-8?B?TVJ6NzRVdFp1MnZCNWFDYW5WU09yTUtHd0JIbkI2UDQrS3FEdHJhZ0hQR0lX?=
 =?utf-8?B?K3R4cU1aNkRrVm1pdEIrM2sxR2hSWU1ZTGpSUHBvSGVXQ3VWM3JsL2lsaU5o?=
 =?utf-8?B?OEl5OHAzOG5DbU0wUW9NVG9uaW12SWFqZ2VzTitOMUdtYmpSS1pQdDRIZW9u?=
 =?utf-8?B?RmxVc0liYzdKOVdLTVMvN2dMMnhEVWJWYWNwYlZvVmkxd0hQeUVneSs1dGtK?=
 =?utf-8?B?WTBtRllVL1oreVV6c3Y4VFd6SnFPRUJtczBIREIxbVArditPYXY2TGQwSTlU?=
 =?utf-8?B?M3U0a0FFZlJFRG54SG14QjBDbFVSVHkwWjRJVERxV2laa2Fob3I2TnRrM1U0?=
 =?utf-8?B?NE5RVFZVZXg5NDdHUWhZOGI0NmJuTTNxRnNDekZTVlh2UXJnWG9VbzNaYkRG?=
 =?utf-8?B?VFV3NCtaeUVqQ2txOUdYQk5INGdjc0NiOFUxd0xXdjlJUEF0S2lUVTYxdVhO?=
 =?utf-8?B?Q0JEUVJDSlJDcU0rNVMxRTc2OVhnVHpvTTVLRkNIbDRMdGUzRWh4THovMEJU?=
 =?utf-8?B?dDZseklNRjVsd09Nd1RQUUlsTStaaFBpSDBkRVhlOGliQmhoY3JobENuVlV2?=
 =?utf-8?B?NVBXazJmT09wMGhkTkNhdzRVcmFVZXU5ZWNveUgxSFQ0T0lZT2p2WWVuZE1P?=
 =?utf-8?B?bnZDbUNyeG5GcjcycXFOWURMWXhyNGsxTHNiamlmSjlPSjF5RFpYVkNJTm03?=
 =?utf-8?B?SzgrdFk5SHVMbUY3RlBsbkg5Z0JjdmFEc3cxZzB5V2VvemYvMDgyenBsZ3Vj?=
 =?utf-8?B?RjY2Vm40MEpNRmF1Q3d3WDc0Z2hSVVVYTFF1Smt2bE5nS3RkVEZGaXpBUnI5?=
 =?utf-8?B?Nk9tdnQrUURUeUJUU011UDhiK1dScUsyc0VaSy90dTZ4VEYwK1RQWXpWT2lR?=
 =?utf-8?B?SGVPYXFRWmVjNUh4WEk3VXpKMm9XQWpOZnd3UmFZNEt5empYMHp2STRUMWEv?=
 =?utf-8?B?eDVCNU9vZ1ZoMFdzMkRsVlBHZENFMnFZOWh1VmlkOHNxeWFPK3B0cURIV1FQ?=
 =?utf-8?B?RDZFeUZidm8rTDRMUkViRWIxOUxBMHh3czgrSnBUVlJvMmNoM3Bzbms0eWQr?=
 =?utf-8?B?TDk2eUcwU1lHUEhtT3JodDNERHdHWk9jcnlQbXVFWTFQZmlReHd6eFpuVlNp?=
 =?utf-8?B?NG9mRENmSGFTYnB3QkpmZWl5bXJGUEw1MFcxeEJRTFlCWmNxQktyNU9ycUVP?=
 =?utf-8?B?UUhNRzh3Um9YWW5CZm9VY3ZuclA0WnVwQlVSMy9VZWd4czNqY3RyS3Q4TjlY?=
 =?utf-8?B?L3lLVnA1N0U1NzNzMWhMSXhYRCtLY2ZJbkFEZEU4cFk1cno3UDAzL3RVK0oz?=
 =?utf-8?B?SjB3L3FSaGNrYWtXRkRYNGpoWmJSMmtwR1Ivd0hON1pFSTNGTjZCdllTQXpJ?=
 =?utf-8?B?SUF2VjdaeTI5RlcrYzhMSW5sa0htZDNWRWlremR3YWl0R3JaRHRBM1VpaHkv?=
 =?utf-8?B?dVoyc09sTDIrMDBUcnpLUzcwb3VKemNDMTdkNHNmUjJGbmZMNFBYOWRsWmZy?=
 =?utf-8?B?S2IrZGpyZ3NwNGRoaUZDZWVQMjAzRFNuSFl0Ukw2VkhqMEFSTGJLZC9LdGg2?=
 =?utf-8?B?cWExZGxyNWJDUkh2VVpldk5vTys1YVFoUU11czlMaTZhZXQvS1RMSXo3MENo?=
 =?utf-8?B?SFI4SmErd2I3ZzFOeXZrc3lYV3k5T0REOGl4bEkrVGx2NzRMYUpxeDloVWR6?=
 =?utf-8?B?eHIwUExHem5KOVBVdUxjbExMZ0ZpaUtpQUdpZFl3bnBuQ1BsaHh6RnBYbFpY?=
 =?utf-8?B?cDJCekpncXNzdUZyQWVGdy80QkxRK2VJSmFHOTRCcnZqc1d1QUtkOFpDdVdG?=
 =?utf-8?B?YlQzc2ZJSHQ1NFQzaU5NVkx4T0R3Mm42dW1WdEcxdlo1Mm9NREYxc1VrRnRK?=
 =?utf-8?B?aFI2Q3dVWnAxNjZwYVp1STFoYWR1bFcrV3A5a3UxTXZ1NlA2L1ZUdz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2538080-24db-47a6-b807-08de9623828b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 10:33:59.4428 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mk8zZhOumboQNlAZU95U0lf/nA8l2sZPBw2WKjYU/Xl9MtlMf+bCk5zTajDt7NitviWH5TFioEKYfUyhr8ox1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR12MB8999
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[nvidia.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 5ED8A3C92F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> On Apr 8, 2026, at 7:13 PM, John Hubbard <jhubbard@nvidia.com> wrote:
> 
> ﻿On 4/8/26 9:58 AM, Joel Fernandes wrote:
>>> On 4/8/2026 9:26 AM, Eliot Courtney wrote:
>>> On Tue Apr 7, 2026 at 10:59 PM JST, Joel Fernandes wrote:
>>>> On 4/7/2026 9:42 AM, Eliot Courtney wrote:
>>>>> On Tue Apr 7, 2026 at 6:55 AM JST, Joel Fernandes wrote:
> ...>> [1]: https://github.com/Edgeworth/linux/commits/review/nova-mm-v10/
>> First, thanks for the effort. I looked through this, its pretty much what I
>> had before when I used traits. I don't think it is better to be honest. In
>> fact your version is worse, it adds many new types and things like the
>> following which I did not need before.
> 
> Hi Joel and all,
> 
> I also looked through Eliot's above attempt carefully, and actually
> liked it a lot (sorry! haha):
> 
> * It cleans up the code. The initial working version was readable, but
>  also had lots of noise on the screen: match statements and pairs of
>  v2/v3 statements.
> 
>  And interestingly, the mmu_version was, in effect, sporadically
>  implementing a Trait-based approach. But because it is custom,
>  readers don't benefit as much as they would with Traits, which
>  tell you immediately how things are structured.
> 
> Joel, I am passionately in agreement with your principles: code must
> be readable on the screen.
> 
> In this case, though, Traits make considerably more readable,
> especially if one makes the very reasonable assumption that readers are
> thoroughly accustomed to dealing with Rust traits.
> 
>> 
>> To put it mildly, the following suggestion should not be anywhere near my code:
>> 
> 
> lol I understand, believe me. But this is short and not too bad, really.
> 
>> /// Type-erased MMU-specific [`Vmm`] implementations.
> 
> Type erasure remains a semi-exotic thing, IMHO. As such, another
> sentence to elaborate on this would be a nice touch.
> 
>> enum VmmInner {
>>    /// `Vmm` implementation for MMU v2.
>>    V2(VmmImpl<MmuV2>),
>>    /// `Vmm` implementation for MMU v3.
>>    V3(VmmImpl<MmuV3>),
>> }
>> 
>> /// MMU-specific [`Vmm`] implementation.
>> struct VmmImpl<M: Mmu> {
>> 
>> Seriously, I have to pass on this. :-)
>> 
>> And, you unfortunately seem to have ignored my point about requiring 4 NEW
>> traits (Mmu, PteOps, PdeOps, DualPdeOps etc), which I did not need before.
>> So you're making the code much much worse than before actually. We don't
>> new traits and types pointlessly.
> 
> They are not pointless.
> 
> However! What I think would be nice is: do a new v11 with approximately
> this approach, and then we can beat it into being as readable as
> possible.

Since it is 3 against 1 here, I rest my case :-). I am still in
disagreement since I do not see much benefit (that is why I said
pointless above). Actually it is not even about readability, that is
subjective (and I haven’t heard most people say parametrizing code for
the sake of it makes it more readable anyway). It is that the code gen
is worse, and the complexity is just moved to a higher level in the
code, not removed. So what are we getting out of this really, other than
more boiler plate in higher layers of the code that did not exist
before? Not performance, not better generated code. Really nothing. See
all the data points in my previous reply.

Note that if the mmu version threading bothers everyone so much, we can
also pass down chipset instead and let the walker deal with determining
versioning. Would that be better?

But otherwise and since you guys asked, here comes a parameterized v11... ;-).
  (Coming next week since this week I’m working on IRQ handling).

thanks,

-- 
Joel Fernandes
