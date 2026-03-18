Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDspEvHxumkBdQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 19:41:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E58B2C177D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 19:41:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A94EC10E70F;
	Wed, 18 Mar 2026 18:41:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="LX/9DqbT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH1PR05CU001.outbound.protection.outlook.com
 (mail-northcentralusazon11010055.outbound.protection.outlook.com
 [52.101.193.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BDF810E481;
 Wed, 18 Mar 2026 18:41:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kNOv4BCpnsqtIAdEpOkYXuNXAQlYEOM5CiQTT4OuNRjFMt1/T5QtzKYOKhSFMwKwWp36+6IpgQ498AIyS1+xepsCRokpWnxDbuRMA1LiXyrfzo08hMwKMz4yNOdFZmSQSQIqBAPxmcmKvkclcumLkjvwTKKXD9mL2KdHJ1IgWQoxzwTDMA1DahWThaWJKDn0t7gLpWYYLNXgTR7tWX81dF9g8fHr334zqNVzAA6RPKxenI7OzLotOQBa7kneWkW1bxiAfdNu5jMIiTyQ27dRfbjRed/L03lbKM4zhero6J/W3FIZbRTzocHXtpxxQX7g5dDyvP0ztBroNYyLqhAtkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SgOMMfV0JkfCwI6jVFYMxIRV1sDwHZpDpr3YqwgVf7Q=;
 b=FlLw2klUs/2cOGw1duHVUoXhaCrQ03igJv7C8bUX0jEsPw472XGQl4xuD6pQedd10AO6ggUJ0GnkQ33KZhbfdVwejOsEWIn9mdiP5404Y6HWkcBDWNvwJjESzCkVvdrtO1LTAih8gQeZc2tUBIol0Qtf87g/o4DP32Hd2VU/ixIXXjsK0Ze2ryyR+FF0BUpH72CwZxZ5tlOdhmRqG9PVQTng7aAalZiYS5UuqbWSFVZYlWZ826qz/3V+P/Lr5q5hrgpPa4EHyvvNX6kLzxlh1BA5UfUizZnd8hekEmZFJxL3WTbkuPmza4thlAa50AEcOCPGMLn6kPibEic9ORp/DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SgOMMfV0JkfCwI6jVFYMxIRV1sDwHZpDpr3YqwgVf7Q=;
 b=LX/9DqbTpEePL2fW0LaDOf25vrrqRWZrn7GrGG6v7VykvPUAuVXFnsT8t8JagmPwDV0+FGOtg6gTGFbowObtGLz/TtFNwTmCDfYEsVbbVXGOaSIOtihzCUZsNhXFVqKz2wEUzMNcvTECluKBUKWX90i8O/YwZBEBxSzi/ydYl7rbrRX3knUhEtr/mLU0pjAhKqxWN8ieUzhop97mhdzO9Yeqrl7zG9WcWuewSQlb8ryR32Xi1t2OgtERPrh/W4ka3MExPBfhPpeGrl1B/uLhqqwfBbiTrhD8Hc/SBvPfMi/RBJFBYyCFoTvHUnuF9yGR/fx/oQkEd9/sohCuxyjIzQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SN7PR12MB7227.namprd12.prod.outlook.com (2603:10b6:806:2aa::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Wed, 18 Mar
 2026 18:41:42 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.016; Wed, 18 Mar 2026
 18:41:41 +0000
Message-ID: <16127b94-7597-4760-aefc-52586ea03902@nvidia.com>
Date: Wed, 18 Mar 2026 14:41:36 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 1/2] rust: gpu: Add GPU buddy allocator bindings
To: linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?=
 <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>,
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>,
 Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>,
 Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, Nikola Djukic <ndjukic@nvidia.com>,
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
References: <20260308180407.3988286-1-joelagnelf@nvidia.com>
 <20260317220323.1909618-1-joelagnelf@nvidia.com>
 <20260317220323.1909618-2-joelagnelf@nvidia.com>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <20260317220323.1909618-2-joelagnelf@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BN9PR03CA0524.namprd03.prod.outlook.com
 (2603:10b6:408:131::19) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SN7PR12MB7227:EE_
X-MS-Office365-Filtering-Correlation-Id: 027352b9-8bd5-428a-359c-08de851dfec8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 8hCislo8HpVpaSdyYrepQAO3CqFE1IuI+FSKG4b251KJ6nSOybQyX1J4fHYllcmLj7a8w9RtVICEP0dH8pSF9LFKsi+xlOP7LqIsX3F9YDYVenM4kG1/wzVWCUvGrpFa5KpQRGAQ95wluunLg6RJxwwTqHTIGnxjvrrZXupQsi69Teh9FVrzn+qEKgOvLN/poXu4/dliyGN43eI3rLQGg/zanc0nwArIaVK/O2j8TnhvJUK2n3qjECrYUa9bIi/906/CAEGTCEzQo/hP89bXO4i9YTKk4+u477qVITMML3rE5bYkLkOYzaxlDO0L4BF8XwEmoBp55BKBS6tcq5N5hcvWl6c1thq8rx9mK5qSwz8ihQLUgl9lXFgHlYqI4cIfYTsaWVwRA2L9ia+ZGeRCvf12yLUYha+ggr4f5QzLMsa0gcDcUqb7RQKtnCht1kCvvsRZ6i5pgOwqCwpBtDC6IhHgUmVxEb1iq7BiCFqdYO5KUZDLmekc035GbDHSnEhwEDf+Pk2d2l0SyW/4sZEjLNPM+ZsyLbYOyJQLDqcBGLXRLRDTYISsc217k4Cs6FaheV3SbjspWzGqPHlDxsXeiyHy4KhhhH0iab0j8X45+6mzo+GmmAmJ9L7W14iPicLtmXbFOLt1WUvgt+7f9SMjyk8HvIIVgdCN3BgtuG7yYGyOEc2+sM6iDFrLQgaFIP2OeWfrBpndbN4vEXOPEma2QmORSSXDqAsFBYdcIt1L0Rg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1E1VW5NYWxVeFhZOXB6Q2VvYjlFT0orZDBzNkllVXlwSlRXNlZVeTFKZGhx?=
 =?utf-8?B?eVBFSExrSVBCWVMyMTd5ZElPMSs5cVAyK2JWa0MwRFRPWEhpaFRUZEVjWG96?=
 =?utf-8?B?MWZsRzdqWWs1Y0g5cm45ay9UNUZ6Ukl5b2t0RCt6aHYvc2oydjJ1eWs5OGs0?=
 =?utf-8?B?QnBEYXhGK2FkWStnWkdmN3JiYVlkSGFwNW13a29ibU9xbFUzSjd5RVBmVFVm?=
 =?utf-8?B?RjI0ak54bFFBamh5YmY2R0hjci9GdEhSNlFlbEZ5WU94ZE9VajcvQlZlU3dJ?=
 =?utf-8?B?MmV0MVlhMnhJNXV5emowdERaVk1oMXhzMkd2anBWZGxFbmdZY0RDL3Y0U0x0?=
 =?utf-8?B?UW5NS3JHMEd3MjBhSVNhL0xueFh1VGVna2RuRmdZNjhHVmlqaWFYdG5xcjVZ?=
 =?utf-8?B?ZUM0RzJmV2ZXajRVZVZvTnMxV1RzTFgwczJpeHVPdFMrVGhTckl1c1UyV2sr?=
 =?utf-8?B?Zmp6K3VtZHlWa05vSERDbnN1c0s4RzFvZ1ozQnlDTXdGWXd3c1Rpb3BjNTJp?=
 =?utf-8?B?MjdOQTJWT2doeXdrV1BiTFJXNEhrbVBDZVpBVTNvYUlrRnZJdzY0VS9xMmlt?=
 =?utf-8?B?d0lncFVvWWlOMTFwMllqUldvbzJvQnBxdmFNamVWOHk3d2tlaTQyNUtmd0s2?=
 =?utf-8?B?S3FMdHJNSmJHN0o3c0Vwcm1MeGROYytaT1BVbTFYcFFRRDNmRDlycFp4VHc0?=
 =?utf-8?B?c2VzcENlcTZJRmxXNzhRTDA2dmthSXl1c2Nhd2VqNkx1VFdyQldqMTlGMTVS?=
 =?utf-8?B?S2tPeHV3UXNUSnR4d0lYbGJ5b2kxMzVyQW81ZVkvem1DQUx4ckVEQk1xVVBN?=
 =?utf-8?B?L1lZSm5hS3VncWZIY2NiejJWTjlqa2tZbG9LZ3NhWGt4cVNiLzVBelo1YzN3?=
 =?utf-8?B?MDM0cGhJKzlpeFMvZW1YWVdNTzRTVVpOYjZEK1R4Vzdwa1lWR29aNlpSMTNR?=
 =?utf-8?B?cUlDZXY5cUR4djErYzBVeEpIT1drK3gxd2l1RzRiVSthN0dpbWJDdm9OWndS?=
 =?utf-8?B?N3hyL0F0MVJOM1JkQjRHdWJTT1hYRld1bDhTYmRHZEpBUVc4SXlQbklaKzlO?=
 =?utf-8?B?RTVmdUNMQk50R2xaamZnSFN1SUJXSVZJMkxDa1hIOW9NQi9VMXZhVWVNV1No?=
 =?utf-8?B?STR5NW02ZnI5b2ZldHlWZWdsZ3MwRXZjS243TVhMYTRsSS9yUFFDbGZTUlVO?=
 =?utf-8?B?UndMeFpVQS9oYlQ4R21weVZqZDErTmdwUWhWRmtpKzJpdjdZTk5KSTlVZUU0?=
 =?utf-8?B?aVdNbWlQN3haSlZDbmlVT2xWdmFrRW9lcEp5bEIyM1FMcGhpM2IrS0FpaXFU?=
 =?utf-8?B?WWs4MUFURnBxcGZnb2QyMm5wdStWWjJteGFWOTBnWjZSSS9CaTlNWkFBL3Z2?=
 =?utf-8?B?aUFBNnJ4Q1JOT0NOS2xOM1R3d2FFYzZWVVpma0NhdGVsM2VXaVQ5SHBYTXQ2?=
 =?utf-8?B?ZFJNcjN5alc3NlBUQkpDc215YWwyRmVZSFVyNjAwL0YvSitRUWx4TmplK3RJ?=
 =?utf-8?B?ZGUwWkszajMwZXQ3YU9ReFZVak9EK2dWTms4L2FNT2VpcVJhWk1JTUovSXVs?=
 =?utf-8?B?MW9FN1krRHBYcUdOUG1sMndON3oraEhLOUdjNnBGazRTK0FUTXpBTlVNTnh3?=
 =?utf-8?B?dFhjcnNDNm1WTmRCSmF6QlpsR3ZnSDFTY3NtcUhwZG1lWUlaNW9laFJIVFlt?=
 =?utf-8?B?ZkRsZGdhTURNa0p5QkNFMmxqTXREZkNpektxSnFnSWlyWXgxeXV1ZmhhV3hy?=
 =?utf-8?B?MVF4WklWUWFIVnd6VUJBRFQ0T1pTTzFuWUZleVlIcXE1NmtIWHc4Y1FIdHg2?=
 =?utf-8?B?cEVOQnVwSHRzVEZDbm5TWTdvQkhQem9nY1VGeDNSUWNxZUJxSi9raWZZa3BY?=
 =?utf-8?B?UzdDSGhmakZrUU1nOHkyV1pabVQvT3RUM0EyWStaOHU2bDMzL25aRlZpQnQ5?=
 =?utf-8?B?UHlMRi9lWkRpNTllR0VsS2ExTGJ4U0cwbUhGZmtRUnRZTGlMdVFsZkk0R1ZJ?=
 =?utf-8?B?d3RDb2ZNTHNCamM2RHVRNEdkd2xPMnh6QzBjVitkYjdpVXFOY3pZKzc2MkRT?=
 =?utf-8?B?cFpzWVB0T3NFa1VNWDFTK3k3MmJOMVl2dG5jQzl2YktKdmovYjdCSDdvSndt?=
 =?utf-8?B?Q2M4VU5NVENkNi90S2lNZmEvWE9rdERHUVkwa3k1MDYxZi9lTzNPaGlrZmNt?=
 =?utf-8?B?YUhsY29rR0p0U0wxTC9SanJGS3JYMmVsUDR2b0c1RW10SzR5NE96Z3lWOXlM?=
 =?utf-8?B?OEJxUDU2cWdJWnJFWkx3K1VsNmt4UE1nYjJMR2EzMDg5Um1NMHgxclk1OGx1?=
 =?utf-8?B?NjNoTEJaa2dIMzZKZUFBd2ZNVnBFaWpvSzhrME1WSEI5QjBvMXNQUT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 027352b9-8bd5-428a-359c-08de851dfec8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 18:41:41.5033 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MLu3c/52vHRT/gsPkAdSUUEAePn3590Xmz5HGPKz4egR7ZQ1RJDf500iafYiUhzKi+xhwCaWJY7lTaVaVWbaYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7227
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
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,vger.kernel.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 9E58B2C177D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/17/2026 6:03 PM, Joel Fernandes wrote:
> +impl AllocatedBlocks {
> +    /// Check if the block list is empty.
> +    pub fn is_empty(&self) -> bool {
> +        // An empty list head points to itself.
> +        !self.list.is_linked()
> +    }
> +
> +    /// Iterate over allocated blocks.
> +    ///
> +    /// Returns an iterator yielding [`AllocatedBlock`] values. Each [`AllocatedBlock`]
> +    /// borrows `self` and is only valid for the duration of that borrow.
> +    pub fn iter(&self) -> impl Iterator<Item = AllocatedBlock<'_>> + '_ {
> +        // SAFETY:
> +        // - Per the type invariant, `list` is an initialized sentinel `list_head`

Sorry that there is a clippy error here, this SAFETY needs to be SAFETY* per:
https://lore.kernel.org/all/CANiq72kEnDyUpnWMZmheJytjioeiJUK_C-yQJk77dPid89LExw@mail.gmail.com/
https://lore.kernel.org/all/71b6a115-98f1-4b09-9c04-a99349f51e49@nvidia.com/

here is a fixup:
https://git.kernel.org/pub/scm/linux/kernel/git/jfern/linux.git/commit/?h=nova/mm&id=8ee92de5549324cba602c0e7a491596056f55153


