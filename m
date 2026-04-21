Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDzHCRSA52k+9gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 15:48:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A7543B814
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 15:48:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBA4510E89C;
	Tue, 21 Apr 2026 13:48:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="oLFdQpg4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH7PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11010066.outbound.protection.outlook.com [52.101.201.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECA0710ECC5;
 Tue, 21 Apr 2026 13:47:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bi4dATKhuQ/olWiPETEdDY0hkn9fQ897SXlmzC93XnvDgpDvF3z3I0/lcW6dTwdwZQbk126+qeZvXNucwBtmR4zKaeGIZ0JB1fXkPGoHRvE6eUbHUCl2ft5GgptGigBZFAHW9DkKk+TO16WwdHQn36GSAsBUFKiZa2JH2BYQtD9WYQt38HDy7+4s2TepG67tv0N4TZTra5N82VOl9OtWAXGw7iihcbyVSTo0Sm6837bZyKhltrecqwau+mlpQ8alB6+krE1xQzYfQXxrkzYIwsiYVXfXZxc4UeiN5t7TB3bOAMMsces8dTGy6I0RNmjaZFN8UAiaOJcuA2gTIZe7tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BANkajuJjAIf2QXm30c6lkUIxkLy27aSZ2YGGINKVHA=;
 b=xlhbc+fO2iTOg6DyKqg17E8s5JDbqZdWLIwtC5tR+/6+pTPOYro6NFTRQJK8hx8Sxxfc28XemmPUAYk3cDyD7wdVUlcOQBI3Zd2VlOIIg7WnmRZ5rPKj/tBcHir+rRf3R/wutaqjFQoXUIXYZHkc5oqQb7Ds5XBh7HcToctrlM6glLbSS1UsF6RijnKnOpUUyVOoqRyWEJrF67+IpfY0l3c3SIZ7QjBy75b8ibOfwOBYDCvZUpo2HJ29a14z0tDMu8/08UL7/jV1n90zJk/l7PZun90NNxv8LyJgB7f2WhOEWucjf3V2FQcoOIhZS/98+nvTqRspE2A0XjSUvb/uiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BANkajuJjAIf2QXm30c6lkUIxkLy27aSZ2YGGINKVHA=;
 b=oLFdQpg4weYaMROR9v9RW0czWLvaLNnCDS94h4HIlGbrGmIgjApV5U6YIFvODlKHURcg6gMRHCMJtfaeKZMrweYJsJ42aZW44GtmQa3+cn8iC6Zl5D7uShEYdONcAQxhsboI5vZXTGe4TMDAnH4PyT5kcIK/PhtDYyNjo1To5Q9CxRPSWuQdffYWOV3FEIXQQ8cObBEu7Bjjh5l0IJazjaHyB0vT7MwwH/Dal9Bp2Mw4lUIfBXS3GGhTkc/AKjwFGDJ/TW36lXsdijlJOQYIhAKQYVYuzhrcvBPwF7xNzqY+9ElfYCuRv0Phf3iBkNDRTF7hWaXNlbgp5ItsQ1UOIQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 MW6PR12MB8836.namprd12.prod.outlook.com (2603:10b6:303:241::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.15; Tue, 21 Apr
 2026 13:47:46 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9846.016; Tue, 21 Apr 2026
 13:47:46 +0000
Message-ID: <9f30b572-04be-4adc-b5f0-a286ea601996@nvidia.com>
Date: Tue, 21 Apr 2026 09:47:39 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 07/20] gpu: nova-core: mm: Add TLB flush support
To: Danilo Krummrich <dakr@kernel.org>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 Bjorn Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin
 <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
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
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa
 <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
 <20260415210548.3776595-7-joelagnelf@nvidia.com>
 <20260416212312.GA667928@joelbox2> <DHUWPQX14ZGZ.26BV7GQCJDZQI@kernel.org>
 <1e3c423e-1cf5-48b1-b012-c4af0eb6b95f@nvidia.com>
 <DHUY5IGHGE49.Z2UVYJ23KX2Y@kernel.org>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <DHUY5IGHGE49.Z2UVYJ23KX2Y@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR01CA0063.prod.exchangelabs.com (2603:10b6:208:23f::32)
 To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|MW6PR12MB8836:EE_
X-MS-Office365-Filtering-Correlation-Id: 88a20582-ec18-4f85-cbfc-08de9fac9177
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: s7bAiRe0k05jLoatk32p9vvwxat9RdbYPaFNc6ahrjsyOdHLOpY2yiJf25T5ZVKZRPTnUDy9td2tsRieO8PJto2txfenHu4ARLkYSOZV0nVsZqDyLv8dGHMi+tMK0btoXpob/ugC5fwhvzy6/2V57HmjfkUhEH+YGNVjpmOij1Fq6G+d6pFk9PPXTRZ3KpfCnTGYOFfjPeXxBQBBBopskBmV8dWD8FYrxw0cl7y4O6Km5VFbEUwQUWimr7iT7LvyesaUpHXDaGPYYvm2GJJ37wZZ/jNw20QORmIsJNR0pVfNZEiemJrtgxP0MMDfMoYEhRxkdy5SxKIQvrjD5Bh4cXImDhNGdODxHrBPgwJgMjwu7JkaiWGo0neTyZJJ1Q+KT8PBc0Uff6hTAfIJtIhdqUiRP6z3J+dZiU9IwjtheZ9L7I8SM0ZFXoKTpgEZP2Dh/f/BbYBA3fJ+LmWnpZ2Ax4MLNuOh6dmO23daUGYx53p87D55Zh26vOBbNu2WDp0w7Adx+1kntry1dl3MeKTev0hAe8W8YF+4D8Tu8OvuiKbDYVwseFE2pkjDbrfGJApVTl04fOD/L4xglDz7l1sznK3JtmSZINGPQlkBTPJ6sBjSkLFfcSyIkLo/GKvVRnxn0jsaOTQy3rogBk54cbyeyJMWGLVyOQURBDl75Aj9vCVfugYTLG4qoP8scqd5fxqdTeate+0lGgP6Ogkojy9fFCwmbaFgVD9rTuF9hPAckTQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHhSZ1ZRaGZWTU1PYWdMTjZDTGlEOFRzRWxxMHFsYVlBM1diT0IvamZkY2F1?=
 =?utf-8?B?SWJJUTJYNkxQMGZPRmVGUEIyYUhpbTcxazRaRXJEckRoSVpRWVk5d3RCdkQ3?=
 =?utf-8?B?T2lseGg4OFpBaGJDd1FZSExWeStQdEFpaUpPZTczc2NDWTNuWW9US2xZSDN4?=
 =?utf-8?B?eWlQaUFMMTNSY0ZOSVRxZ204a0xpQjlMblNhcjlQVTc2ZnNGYWVnUG54b1Fv?=
 =?utf-8?B?TkpCTnl3WVIrZmwrbGtUTGJRUC9jOXdKQjd2TEhTQVNNUm9kQ01aZU1QT3FR?=
 =?utf-8?B?MEYxOFdldTRIZld0SG41blJDb2ZGV0VIM2ZXMVl6ZnlZVUlyQ1poYkdwdGRR?=
 =?utf-8?B?eE9QR0s2OG9HUUhSQ1RDOXhwbFJQWGhtNStiWU1XUWlXQ2Z3QUJSRnVDZFBq?=
 =?utf-8?B?QmFONHRhUFR1Y25FYVNjNGxrOTQ2RnF3aC9oNlJxK0F1Y3JEUGlRUnpmS2dI?=
 =?utf-8?B?Vm5mSEcxRnNxT3F0Kyt2blM4WTlNVlZWb0xsRlUzbkoxYzRZR0hWbGtzQmEx?=
 =?utf-8?B?eEFJN1FLbWFUaEtxdXpEem5JL3lwNWJraXgvOTJISVhHMEl1ekYyN1JiMDVV?=
 =?utf-8?B?bTRReUtlTGlDNDUvRlZneTdqb2pGZFlHOGovTzZrZUNxLzhvRkdTaGVKNEtu?=
 =?utf-8?B?cTE2NkZiNjltNVBKUkFmWmd4OFd1am80eHU4TzRSUm95V0xwckN4U2NFVEs3?=
 =?utf-8?B?MEJxTGQ0VzBKT3owWnViSzhiZ0xEaHpIM2FGQXJKbEE0YW5oVWRjVzNrazZY?=
 =?utf-8?B?S2JKZVpVcXdoZWtEU3ptUzdoVm9HaHdpMTMrRlhBYVZZcVprUUNNcjBkbnZ0?=
 =?utf-8?B?bDZFNkh6bE50eDBiZzVxMC9vTHVRYjU1T05DdWI5MXUvcVhvc0ZHMjJ4UUZK?=
 =?utf-8?B?cTlLMDVxQkl3dUFaaUNyZjVuazk2clR4Y1gwR3IrR25kMDJEUEpYTS96MTBm?=
 =?utf-8?B?R2ZFUDM2VTFGS2k5cGg4aHFNR3dQd0ZGQ3d1cjJLcUpCaW91RXUva3dzaHpk?=
 =?utf-8?B?aVJMUSsva2I2cWVYSWd6ZGY5VW1FNDNtUlR2THFlUmt3WUJmek9TRVhXN2pj?=
 =?utf-8?B?N3dKTW9lbnBmUDEvMndSQkVwYStMcS9yUG9ZcFJQSjFpK0tFdTJqamxZQzdh?=
 =?utf-8?B?M0YvUWpFZWVXMXI0STdMZERGSzJoTzZ5TmcwMDY4R0dOZk9OMHYzTmtqVkM5?=
 =?utf-8?B?ZVFINUVVMmdsR2pjbkdVMFRKM2FDTU40MkRwdGJ2V0NIUXB4VmluekVveXpI?=
 =?utf-8?B?VEtaaWxqVW9lbVNrNDF1UzJFN3g2cXRTN0ZRaXlhdFlrNzZoanZ0Unc2RHYr?=
 =?utf-8?B?dlAzZDErUHNTSUFnKy9rQ2l2S1k3UnVGMkpQZzRITk1qSGRGSkhVZ3czcFRV?=
 =?utf-8?B?TkhTWVJleFFtNkFFWVdEcHBGVW5MUlF1N0drRnB2dUkrOTIrMTcwRjdmMGIz?=
 =?utf-8?B?OWxxQlR3RHFTK0JKS0xxaDFIOFE1VHF4RVFYS3loQW5PSi9KN3ExTyttMzB3?=
 =?utf-8?B?bUR4cjE0MkVnRjd1VE1ZU3BqS2RiMjRmK1NDN0hUeTVaN1M4ZXU1WTh6YXJw?=
 =?utf-8?B?cGZmdU1na1k4eDZvcUpyemVhc3JGOTNZVi8rVjl3Tk1nSWhQL1Fnd1hXWTh2?=
 =?utf-8?B?RHZVWTlBTVpIVFh0ZkxuOG4rbXlVdEdud2UweW01cENOcitlMWJJcWRSdXQ1?=
 =?utf-8?B?WFNzajlIY1JCT1FrbVNMbUlqOWRxbDN0RDQvRTRobktVdnRPVFhWb2pyMjlM?=
 =?utf-8?B?WFFBN21MaHdzMDNTNi9kbHliODMvZWQ4VldvRkZKWjNmMTh0SkFhbUE4WElN?=
 =?utf-8?B?TGx2aTdZTGhPUlFJdlkxNHgrdXlPVHdDekNnMmh2eDVsRzdnLytnSlFjMEZa?=
 =?utf-8?B?TVVQcURlZVA4VVc0UG9qdHM3ZlpPWU91QW9qZG1lVFlJd3hzelZNTUorOGJN?=
 =?utf-8?B?dEpxZm1xY2hGcGJzMGhzTTFZeTh2YXZpNC8xQjBpWjV0M2ZuSllHMit0TUs1?=
 =?utf-8?B?NG5FRjVBdGtOSEpHRmlKWDlMazdaQzJ0OERzbk5yTTlQajFMN2EvOGJJRFR1?=
 =?utf-8?B?OWhpOG5PNW5kUmppTG13NkdQOGkrUURVZVlTYm13dHZ6R05xUTJGMTltWWs5?=
 =?utf-8?B?RG1Gbkg0WnFtNUZUdWRvMUNKTUpqZ0RPL2RGWmI5cmYrLzNWOEZlbVdPaWpt?=
 =?utf-8?B?MUFrRytJcVJtdHJwckpHekpFU21ZK3VzMngrTXRuZ00zMEN4WWZJZEo0L3I5?=
 =?utf-8?B?TEJ3andkZUZabmRvZFJQMUEvVjFwSjV3anVlNzRGRVcrQnpMRHNyVWR4MnBm?=
 =?utf-8?B?aWphLzRuRlNXQTMrb21zckFSMDI1ZHl4NzJMWXNVTCtpSllaVlhiQT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88a20582-ec18-4f85-cbfc-08de9fac9177
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2026 13:47:46.0041 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BlgT4LXriJeAxNHVSSly1Mgo9Lo0EVnFFLby0fYum9Ln3Zb+6wlyxT//ISJ5ly4vluxGBgADgQR47i6fp6dThg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR12MB8836
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
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,Nvidia.com:dkim,pramin.rs:url]
X-Rspamd-Queue-Id: D3A7543B814
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/16/2026 6:53 PM, Danilo Krummrich wrote:
> On Fri Apr 17, 2026 at 12:18 AM CEST, Joel Fernandes wrote:
>> On 4/16/2026 5:45 PM, Danilo Krummrich wrote:
>>> Why do we need the try_access() dance in the first place? I assume this ends up
>>> being called from the BarAccess destructor?
>>
>> BarAccess is different. The try_access() calls here are in tlb.rs and
>> pramin.rs for Bar0.
> 
> Yes, and we shouldn't need them in the first place; we should have a
> &Device<Bound> in all call paths this is called from.
> 
>>> If so, I think this is solvable. Gary and me are currently working on
>>> higher-ranked types and a chained Devres type.
>>
>> Hmm, the issue here is we cannot hold revocable guard while sleeping, but
>> we have read the bar as a condition in the body of the poll.
> 
> No, you should just require a &Device<Bound>; or maybe we can utilize the
> mentioned higher-ranked types and DevresChain once we have it. But in any case
> you shouldn't need try_access() here.
> 
>>> With that, such use-cases should be cleanly solvable without the need for
>>> try_access().
>>>
>>> Besides that, I can't find where BarAccess is ever constructed.
>>
>> BarUser::map() constructs it.
> 
> I'm well aware, but absolutely nothing calls BarUser::map(). :)
> 
>>> It already has a lifetime 'a for &'a Bar1, so I don't see why you can't do the
>>> same for Bar0.>
>>> But again, I don't see this being constructed and I'm not sure the whole
>>> construct works in the first place.
>>
>> BarAccess uses &'a Bar1 because it's a short-lived scoped object. In long
>> lived objects I am trying to avoid this.
> 
> Don't get me wrong, if a lifetime is sufficient -- that's great! But I'm
> suspicious whether it actually is, since BarAccess is never actually constructed
> and hence I can't see how it would be used.

Actually, it is constructed in the self-test. Maybe you missed the
self-test patch?

    #[cfg(CONFIG_NOVA_MM_SELFTESTS)]
    fn run_mm_selftests(self: Pin<&mut Self>, pdev:
&pci::Device<device::Bound>) -> Result {
        // PRAMIN aperture self-tests.
        crate::mm::pramin::run_self_test(pdev.as_ref(), self.mm.pramin())?;

        // BAR1 self-tests.
        let bar1 = Arc::pin_init(pdev.iomap_region(1, c"nova-core/bar1"),
GFP_KERNEL)?;
        let bar1_access = bar1.access(pdev.as_ref())?;

        crate::mm::bar_user::run_self_test(
            pdev.as_ref(),
            &self.mm,
            bar1_access,
            self.gsp_static_info.bar1_pde_base,
            self.spec.chipset,
        )?;

        Ok(())
    }

However, you do raise a good point -- may we cannot assume that BAR1
reference is short lived. One thing though is typically BAR1 size is
limited, so we should not allow anyone to use it for long-lived usecases to
prevent filling up the small BAR1 aperture into VRAM.

The user of the bar1 code is vGPU at the moment, I am sure in the future we
will have other uses of the CPU directly accessing VRAM. Zhi, can you share
any thoughts here? Is BAR1 for vGPU expected to be held long-lived?

I agree with your points about Device<Bound> and I will explore that as well.
