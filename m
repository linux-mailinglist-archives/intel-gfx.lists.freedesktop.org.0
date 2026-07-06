Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rWPTGkqoS2o7YAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 15:06:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CC5711048
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 15:06:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b="Fu/WEdCE";
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2753410E96D;
	Mon,  6 Jul 2026 13:06:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11010017.outbound.protection.outlook.com
 [40.93.198.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 920FE89FD4;
 Mon,  6 Jul 2026 13:06:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E29bh8MaL5LmXqHwu0iQ+KdKvufX9/IyO9s1PAKIPv+c/IOwXB0M7glVu5O4EuNgjKUTL8UcbGAsaXVN6t6GGCNfdY/rn9KB7fNj2TLJ0DaPPRcLlr/pHOGERJAEr/cUMZbdQ+9NVwZZ0mh4PjOZi+aH4CXQH2pchh9524s4h0O1gyCd8VQtg8MOHFcETTH0+NKtvtgwEsEhuTBNMDYSDUze6LqgWDSxXLy7IuOdVGsuz+agfbP+MAGadMXySGxDH4GidTFv0TbTVrerY83f4OJ8SXNWvw0/NmLOp0xxudEbZInjz/trszXhS6hyI52kAIR18Yl8YD2W96NDO/4Scg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8R4qgqZLu8a6eQIwqdmHx+EWBHCSwtMzx2aEWL3+Q0c=;
 b=KJSVSc1ItGorpMCCcVT0ZNWctJCgfqk1HgHjxvxQbQbpRbTC0r8exMyg3FXDNLDxTTddURMHiTOW/Mze6VgW4r3se0x8RN6HgEhUA6fH5XmRmL6IO3yUOZA+HlJACvrzydX3PNupL4inIHO837XEZXLhmCJktPmFjOH+MscksPGCIOvu0zToNjPz6iqwVbNQGUJWVkcy2AOvw1b8NJgYExhXKiaiDqzCKlYe2hw2kAbpCmVVkknduexqaNxwZAJDrf6sRxJM4VCuX16vom8/Pr3OFt3218MJtE3CfHqjZCyJqoJhRnLL+fdRR3r+fMEbhKKJGudbDZpOoFOp6YzkBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8R4qgqZLu8a6eQIwqdmHx+EWBHCSwtMzx2aEWL3+Q0c=;
 b=Fu/WEdCE+Vhr7u4MGl8o2qiArB4QXsl6B+KTRgqnmsZW33wVqDzxLocmfJxgGilV9tGIaBOJVvT1Fip2jsGP7Z9tgASo2O352kcTB/mi9FHS2wqCljcCxx+nDEtJTfPSvM/6+0QMxr2jBIyJBJoTH5BvsBeyGJFalFl/9bxSWiU=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA1PR12MB6824.namprd12.prod.outlook.com (2603:10b6:806:25f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 13:06:03 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 13:06:03 +0000
Message-ID: <be0b18e2-d5c0-40d5-b5ed-01acf6189955@amd.com>
Date: Mon, 6 Jul 2026 15:05:54 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/10] drm/ttm: remove ttm_lru_walk_ops
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Natalie Vock <natalie.vock@gmx.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
 <20260703-ttm_2_drm_exec-v1-3-43685ac1286b@gmx.de>
 <247fece24913008be6d42ab0b6f19da1cb95abe1.camel@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <247fece24913008be6d42ab0b6f19da1cb95abe1.camel@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: YT1PR01CA0057.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2e::26) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA1PR12MB6824:EE_
X-MS-Office365-Filtering-Correlation-Id: b73ba18b-ee73-4ded-3a14-08dedb5f54fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|7416014|366016|1800799024|921020|56012099006|11063799006|18002099003|22082099003|4143699003;
X-Microsoft-Antispam-Message-Info: Pr0bIgSdb2lXFtwIIa3M0Gorx6n2ZRv8fi+8Ibv3yiPDosYUkdEhDh5XqwzYMOI9UZucYArnHRu2CfCmH5lO3M7E5xWXfsC2CJq4JvyS1aY9ZDudP15kyJgGe2wakcQGJHbLNhnvDkBvnoCB7Y8G41b/mU1uCndVtvCNMEPJUjCeau0LIMw5Qi6x++HYnTJV12HVE1xjUdCDeeRPE8/w216kI6qsfcsYkh6RfE2lWUtq5Rt0toHP/qX2ysXeCE6BW8j8i9nqyTwTHBG3qgFYw2019EsL/TedRZlrhB2936tB+s53fRn/9OIkioaVwYgT3FM4uVGp77RUiNRE6IEMA9l5DstkXEHZXLdEwI7g63RbT95JOQfdJ809+J1rkUwwxT8uKGVRj2bAxS1he9EYTRyYmcuUkBvEUXZj3xplErfdh9cCvUhhA9Yyja/41FXSbWME9CAWNCBdrKztjPhyE4qyN0p+ijI9B/xHwpaPLb0hqg7hBPwpz/57ek/xQ74fpxmacEjDETSnUbuDF7S7FOdrPzuwVu//CzhIMRriH2Ujp2REpL2ScNeMD0IijoRHjGWbSMK13RmDC2A80oF2dIj3lYRGwucTvs7Lx9lIldGxWU2Bwzj1JFAev2WAt/VqwqbaSXWVPRrelqKroHuT3M0ogR1pgLFSewi78zl3/SKYycWxmtakbEcSUKJ1+6MlLv2pJihF+9mgMLPtAnCuMg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(7416014)(366016)(1800799024)(921020)(56012099006)(11063799006)(18002099003)(22082099003)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dVhTVkVhbWFnTUVsSFJhbUFRV2N4eTVtWCtxRTc4b084eEphN1VQYVVqcnpG?=
 =?utf-8?B?MFVYRC94V0tKVzYwTW0xUjJrN2dadFEzcFUzcGVuR3IwUFMyaW1aS1ZYVFpl?=
 =?utf-8?B?YjhkdGQxNXpCUHZleWxUa1Z6VHZoaEcwbnlxb3MyQjcwb0Y4MVNKNlZXQzlI?=
 =?utf-8?B?cmRvSUlJcTh6NWd3cXQ4TmpiYkd0dXpLS3l5Z1RLd3lGb3lZTFpNdlpCM3VE?=
 =?utf-8?B?cWtaSGxXYlM5YXVBbjRYS0QyV051dkt2TjBLU0tEaUtGSUk2Nlg5a2dibi94?=
 =?utf-8?B?VWE2RDBPazdJbXhNVjJ4UURTZmVqS1hLS3dzNHcvZG90djg5QXA0NmN4cE5l?=
 =?utf-8?B?eFpWWm5KNzI3ODRTWUtadnhuaEhwdDMxU2VFUzVqRzQzbldxMTdqR3NyQVlI?=
 =?utf-8?B?eXZhVXVtbE4wSG14NUp1dXYxNlJpU3EyYVNsNVI5TTlZdnBmMEF3bGR6c1Ni?=
 =?utf-8?B?Zm4xSUlROGE5S25jdWpYTWZsRlFQSjQwS0VyMHIyMWFITTNDZXdpbjliSGIz?=
 =?utf-8?B?cXVjalBpdFl4NTdJcVdSTEl4TXdHcHdZcWZNMDdMaDg5VkxLZS9hKytxeVNP?=
 =?utf-8?B?dkpzWTNCZ3l4LzYyRmhuR3BiME4rcjhoS2FYSlNOM3VkdVpVdlZBZkwrV08y?=
 =?utf-8?B?c3gzMnE0UDgyM3kvejZCYXhvVW95RUZkVUNxR0cvMVRDWTFnUGdoQWVqYjZm?=
 =?utf-8?B?WGx5S2pZbzZEc0xxZHUxWHJsQjJvanhtckQzcTR4K0g0cmQ3NzV3YUJtV08v?=
 =?utf-8?B?bzI4UjVSVDZhOFVKWVlneC9IQ1dueFE3ektZaGNOa0J4TFlLY1BlNTJvR093?=
 =?utf-8?B?aFl6NG1XWXpXQU1FZ3FRZFl1SkcxWlkrRkZtejBHUHIwcEhWVkF1YzlUVzRI?=
 =?utf-8?B?YWhqQWVZRmRUQkNwN090ckNRa0JTTHRGN1JCVFZZUldCaVYxd21yWEZuTlRM?=
 =?utf-8?B?cE1aZFB5Q1FwNThrYStWck5hTXlCeEVxQ05BK2dBUVlhQUpsSkdMbXdUd2R6?=
 =?utf-8?B?VUNFNVNybEZMOEVPTFJlTW94bEp4eE5NRHZ0MjF2bkI5SFFDL1Z0VlFTdE16?=
 =?utf-8?B?ZGFtYU9xUTJpcnloREhMMkxMQUNBR3VpVjBMRzFTQzZXelUzR2FVVWxwQ1dq?=
 =?utf-8?B?ckdSYlFuS2d5OFFzQ2ozaUFyWkFrenhrVUNmUUM5djhQZHhHMFhOY1dKMm1m?=
 =?utf-8?B?QkdZZytXUmdYYnh5M0pESTJIb2pKRW9zZ0dPdVVWRTgxcTl5eElub0RFQ085?=
 =?utf-8?B?amJrZFU1OWpMdXF1Tnk2NitCTzNQNmFUalVIcUNvS3BXc3JzcElWaWpJc3NE?=
 =?utf-8?B?dUNMYWdiUEhpSzBXWU4vczFtUFJVWFAwRnR3Z0pNL0x5TDhiVDMxT3QzR1g3?=
 =?utf-8?B?Vi9nWE5mZUlvRVcyQUI3S1NGYkxScnY3d01nUXVTa3o1NXIxVVU3d3RSc1hh?=
 =?utf-8?B?dndRQlFXWHJFaU1CcVdaamt6d3k4WDdOT3c4RlFoVEJGUHNJL1Q4ZjJsblJ4?=
 =?utf-8?B?OEdyU3AzUlFsY0VKUjh3NzFpYmhhOFpjcFU1SGRCZnB2YjBOWXhuRmFFUEZp?=
 =?utf-8?B?cXNmdGsyM0ZzSXUzaWJvVFdMaHdmUHdqV2Y1elBnVTBRV1Z3SGNhTUZqMmY0?=
 =?utf-8?B?V3p1RDQyVXlkQy9vSUZVVVhvUzZxSzNrN0w5T2lPRXJzcTB5djlxd1RmU3U1?=
 =?utf-8?B?elVWODk4WkNrUlZqT3drci92eE4zRUsxLzhCQmIzUkRFYS9NalhRUmhvL3py?=
 =?utf-8?B?cnQ3RzduS1o2djdLRDZHUWpGK0UyeXBxVXRXNkVvVE9pS3Erai93SUkwZ3J5?=
 =?utf-8?B?VlZOOWFyZDZ1MXVTLzlLOHJFbmozSzVOcElpSHp5VHBFQTVLdDl0dkhvcTh5?=
 =?utf-8?B?NmNrK0g5cXV1Q0VxOVN0b05LNnBURU9Sa3duRTNZK3N6TCt6NkN6Ni9rUUYv?=
 =?utf-8?B?cWFzY1BRdWh2MWhkQkFVdDJIMVowMTBhYVFBRngzMHk0SlZrVWhId2RqTkJz?=
 =?utf-8?B?RkVuY0lpenRMUHNGZ2JQYTFxellZbTA5YXQ5dFpjYnBPczloMDlUZThJWG8z?=
 =?utf-8?B?Ky83MU5BUTFNcWV6UzJtQUNobjBHYlJNZnZzcGp2c3NqZTFMU2tEY3cyS1Rx?=
 =?utf-8?B?Q2JIVm5ueHlwc2JkUW82RmxQcjZ5VkFjcmx3d1pKdzlQNWNoY1k3Yzc5TVF2?=
 =?utf-8?B?eEFzd2dWNDM0dHZseUcvREtpREtSU0xiSllZUEJRSGZOdE1RQlNGaFY4RHQy?=
 =?utf-8?B?RGJhMVE5YmVOdHpCbk4rYkIwMHpkOGhNTm91SVZvY0JabzErVFFhTTFGSjkx?=
 =?utf-8?B?Vmw3K1h1Z0MveFd0YWpPK3VJVjlzVEJaMFBnMm9YeU9rYkpUQkJkdz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b73ba18b-ee73-4ded-3a14-08dedb5f54fb
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 13:06:02.9230 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: thPI4Q7unD9eOOhJzKr0Ky1l848DQJeviVRG2k8Rrs3ohQHTkSo/PS0PGbMzYEkK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB6824
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,gmx.de,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[amd.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:from_mime,amd.com:email,amd.com:mid,amd.com:dkim,lists.freedesktop.org:from_smtp,gmx.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 16CC5711048

On 7/6/26 14:34, Thomas Hellström wrote:
> Hi,
> 
> On Fri, 2026-07-03 at 18:31 +0200, Natalie Vock wrote:
>> From: Christian König <christian.koenig@amd.com>
>>
>> It's just another layer of indirection.
>>
>> Signed-off-by: Christian König <christian.koenig@amd.com>
>> Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
> 
> Personally I don't have a strong opinion on this, but the reason for
> separating out the ops is that adding function pointers in the walk
> iterator itself was once pushed back on quite forcefully by Linus when
> I tried to do that in mm/pagewalk. Claiming for various reasons the
> standard way of doing that in Linux is using a const ops struct that
> ends up in unmodifiable memory.

Ah! I was already wondering why the extra indirection was used.

I'm perfectly fine to keep it. It just looked a bit odd.

Regards,
Christian.

> 
> /Thomas
> 
> 
>> ---
>>  drivers/gpu/drm/ttm/ttm_bo.c      | 12 ++----------
>>  drivers/gpu/drm/ttm/ttm_bo_util.c |  2 +-
>>  include/drm/ttm/ttm_bo.h          | 34 ++++++++++++++---------------
>> -----
>>  3 files changed, 17 insertions(+), 31 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c
>> b/drivers/gpu/drm/ttm/ttm_bo.c
>> index 2b470c1746f60..1fb8c53da0362 100644
>> --- a/drivers/gpu/drm/ttm/ttm_bo.c
>> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
>> @@ -545,10 +545,6 @@ static s64 ttm_bo_evict_cb(struct ttm_lru_walk
>> *walk, struct ttm_buffer_object *
>>  	return lret;
>>  }
>>  
>> -static const struct ttm_lru_walk_ops ttm_evict_walk_ops = {
>> -	.process_bo = ttm_bo_evict_cb,
>> -};
>> -
>>  static int ttm_bo_evict_alloc(struct ttm_device *bdev,
>>  			      struct ttm_resource_manager *man,
>>  			      const struct ttm_place *place,
>> @@ -560,7 +556,7 @@ static int ttm_bo_evict_alloc(struct ttm_device
>> *bdev,
>>  {
>>  	struct ttm_bo_evict_walk evict_walk = {
>>  		.walk = {
>> -			.ops = &ttm_evict_walk_ops,
>> +			.process_bo = ttm_bo_evict_cb,
>>  			.arg = {
>>  				.ctx = ctx,
>>  				.ticket = ticket,
>> @@ -1187,10 +1183,6 @@ ttm_bo_swapout_cb(struct ttm_lru_walk *walk,
>> struct ttm_buffer_object *bo)
>>  	return ret;
>>  }
>>  
>> -const struct ttm_lru_walk_ops ttm_swap_ops = {
>> -	.process_bo = ttm_bo_swapout_cb,
>> -};
>> -
>>  /**
>>   * ttm_bo_swapout() - Swap out buffer objects on the LRU list to
>> shmem.
>>   * @bdev: The ttm device.
>> @@ -1209,7 +1201,7 @@ s64 ttm_bo_swapout(struct ttm_device *bdev,
>> struct ttm_operation_ctx *ctx,
>>  {
>>  	struct ttm_bo_swapout_walk swapout_walk = {
>>  		.walk = {
>> -			.ops = &ttm_swap_ops,
>> +			.process_bo = ttm_bo_swapout_cb,
>>  			.arg = {
>>  				.ctx = ctx,
>>  				.trylock_only = true,
>> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c
>> b/drivers/gpu/drm/ttm/ttm_bo_util.c
>> index 7ed085adf1c9b..29f068944a972 100644
>> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
>> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
>> @@ -919,7 +919,7 @@ s64 ttm_lru_walk_for_evict(struct ttm_lru_walk
>> *walk, struct ttm_device *bdev,
>>  	s64 lret;
>>  
>>  	ttm_bo_lru_for_each_reserved_guarded(&cursor, man, &walk-
>>> arg, bo) {
>> -		lret = walk->ops->process_bo(walk, bo);
>> +		lret = walk->process_bo(walk, bo);
>>  		if (lret == -EBUSY || lret == -EALREADY)
>>  			lret = 0;
>>  		progress = (lret < 0) ? lret : progress + lret;
>> diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
>> index 1eae9eea5ff32..0fcd5082a7080 100644
>> --- a/include/drm/ttm/ttm_bo.h
>> +++ b/include/drm/ttm/ttm_bo.h
>> @@ -189,24 +189,6 @@ struct ttm_operation_ctx {
>>  	uint64_t bytes_moved;
>>  };
>>  
>> -struct ttm_lru_walk;
>> -
>> -/** struct ttm_lru_walk_ops - Operations for a LRU walk. */
>> -struct ttm_lru_walk_ops {
>> -	/**
>> -	 * process_bo - Process this bo.
>> -	 * @walk: struct ttm_lru_walk describing the walk.
>> -	 * @bo: A locked and referenced buffer object.
>> -	 *
>> -	 * Return: Negative error code on error, User-defined
>> positive value
>> -	 * (typically, but not always, size of the processed bo) on
>> success.
>> -	 * On success, the returned values are summed by the walk
>> and the
>> -	 * walk exits when its target is met.
>> -	 * 0 also indicates success, -EBUSY means this bo was
>> skipped.
>> -	 */
>> -	s64 (*process_bo)(struct ttm_lru_walk *walk, struct
>> ttm_buffer_object *bo);
>> -};
>> -
>>  /**
>>   * struct ttm_lru_walk_arg - Common part for the variants of BO LRU
>> walk.
>>   */
>> @@ -223,8 +205,20 @@ struct ttm_lru_walk_arg {
>>   * struct ttm_lru_walk - Structure describing a LRU walk.
>>   */
>>  struct ttm_lru_walk {
>> -	/** @ops: Pointer to the ops structure. */
>> -	const struct ttm_lru_walk_ops *ops;
>> +	/**
>> +	 * process_bo - Process this bo.
>> +	 * @walk: struct ttm_lru_walk describing the walk.
>> +	 * @bo: A locked and referenced buffer object.
>> +	 *
>> +	 * Return: Negative error code on error, User-defined
>> positive value
>> +	 * (typically, but not always, size of the processed bo) on
>> success.
>> +	 * On success, the returned values are summed by the walk
>> and the
>> +	 * walk exits when its target is met.
>> +	 * 0 also indicates success, -EBUSY means this bo was
>> skipped.
>> +	 */
>> +	s64 (*process_bo)(struct ttm_lru_walk *walk,
>> +			  struct ttm_buffer_object *bo);
>> +
>>  	/** @arg: Common bo LRU walk arguments. */
>>  	struct ttm_lru_walk_arg arg;
>>  };

