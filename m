Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lrbLDXe9TGoNpAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 10:48:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C54719579
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 10:48:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=1uHUWjEL;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A9DE10E4A4;
	Tue,  7 Jul 2026 08:48:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CO1PR03CU002.outbound.protection.outlook.com
 (mail-westus2azon11010047.outbound.protection.outlook.com [52.101.46.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4794810E470;
 Tue,  7 Jul 2026 08:48:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZRRAONecZtP6SeL8mydlEcCfjogFUpL7V/b0TjJV51mic/cdHQLD/KsfwQgfHn72kAU/+JfhgO+KEsNPoR04cka3/swCLnOfUij8MCPSVDrBqGFr4s4Cs/etMod4/0hyocvKNZ0e9QZzAVrU8RAmnKY0EdShqnjmyiUpMHv06nZWTtB8XVYbuBrK+sPX7mj1dHu2tigi061bRt2T1bos0UbW4YbApoJ7SvWQ0CA9AN+iQXQ5ja0VSHgecOKKg+r0D/9tWSCev5NMNseEz2W1ZEllntzlRhdOGWRV1B9PhIpvyayFzr+EEdAWPC8EpoUZf+FjWnkXtnvFuaA4kcU2wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FaG3Dy+dreuRgnRQrXDQJLzsmy1YalzjNGe3S4BIevY=;
 b=DFobQwFKDXS2ZCe0gX2NiFB4rPQnmZU4lItdzuQJAk/AbL10GZxcdsbgbSxK29b+g9DmzZEWt/Y3z8I2xGTxR4u2vty1I/C68GPR53jcB8a0HCWiTGhNm30p27/j3aIEb+gYjCptOOhvNIYZBS4SUK/F3+21eFF6GiZMnn0JBEsy+CLna2WrLK5Z4TrsChzRibB/AbbJmO8tFCdV8HT1V/cIWMdZJUJefhdLfnR7VKvYMqnz7ZLxxtuu57Zhx3H/4Uv/qcJTOW9ahWoRVIrlXs99vIS/sWgp6pJQMaJx8WdDx3BNWn8IZe6/7mSwA6Kxnmpoce3pcJyotelfNWhj4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FaG3Dy+dreuRgnRQrXDQJLzsmy1YalzjNGe3S4BIevY=;
 b=1uHUWjELgvoA7nt2OIlVm62wyeipiEKI14en5VSRnXXyrkztZXExg7ZRKV8cGiZVdJA5THkkuqK1sE7VBXHu4oUzifev/xDZgI1TlDVvDpTQTj1WUV3fOVcpBem1rlN+pcSZL2xlxCrxbVty5DCQJUeN9udWtjpzrCW2TEU8DM0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA0PR12MB8376.namprd12.prod.outlook.com (2603:10b6:208:40b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Tue, 7 Jul
 2026 08:48:46 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 08:48:46 +0000
Message-ID: <a67cc4c5-7545-4f8e-aa89-e90b3bee523a@amd.com>
Date: Tue, 7 Jul 2026 10:48:37 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/10] drm/ttm: replace TTMs refcount with the DRM
 refcount v4
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
 <20260703-ttm_2_drm_exec-v1-2-43685ac1286b@gmx.de>
 <b2932c85fee8e4bf89fdd80ada8883c199d823c0.camel@linux.intel.com>
 <88614266-6ee3-4488-9e2f-030ae0266e0e@amd.com>
 <7031c630c987940d814eaef9d1696969be12d81b.camel@linux.intel.com>
 <5d56ec48-b0f0-4f03-8ec2-f8cc34cb3186@amd.com>
 <eebae66784e24f4b2af6e0079ef74d11100d4020.camel@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <eebae66784e24f4b2af6e0079ef74d11100d4020.camel@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BL1P223CA0009.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:208:2c4::14) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA0PR12MB8376:EE_
X-MS-Office365-Filtering-Correlation-Id: e2ceb0d5-364d-4277-367e-08dedc048e57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|7416014|22082099003|18002099003|3023799007|6133799003|56012099006|11063799006|921020|4143699003;
X-Microsoft-Antispam-Message-Info: 6Mxrqi30foD0EtJsGeYBUqihjYwSlpSChRhzJw6v76V0GjR3iLN4GGt/WhKoxZxi8mXhFz4kLlzlh/JmSPZrUWA3fyR0M4SO859OHYSZOasAtDR4a/0tFFgo+KEqPr4bCO39MOaTQ21rlW3eEjsFfXM2H82SMxb2xrrrIfeN8pgsNEybn+RQdy5nq4GaK0nB0zOAgqcCBl+HGRVOFOoPDdWsT6c1E8ai+ZOVwODCW+1CIHEBDtHRNdt4fKapP7AdtvcYyoWBIlxNxioNFHnuZNwtakLQxtgDTGu83Eu/oHDvdiiHdmjOe1OwYIkrCdC82TMHlkTyWWsccDfsiVbPRTyW3BTykPTcAsCMiwwkxFXceUIedgmDAecDDp16SC+mlLcEy1MEPOyDY4EGl68ooeo8jBiwVpcYOBkdwpalEXVN0CKTaUes6777IL3uHyGG0RRQPGNWv+Q0xnWS/jFwFvCr8EsXGGCkSJcsybs5+iGh4TrgpEl+olXhq9bdYahCt1+jBKDb2gfi1fQsOnh8paKkvchaubYoP6rciVdsQebvy5fg3ElFRN1EemFogpDg/PAESfjYzoUd8nqDG5NlP95K5ZUNVaWX5/hRCAUgVC17s/criBLG0tCVh3D379Mww3pbueILGnXBIYXM5hVCG0IZH6k8lJDEC+pkloD1lptOCh3AZkc9ci5iawev4be9n0r2rclOwP7H6gpy12XK0g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(7416014)(22082099003)(18002099003)(3023799007)(6133799003)(56012099006)(11063799006)(921020)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0lZVXZ2Nm9pMDNWbEpnd0ZwOUtWRTZuRExSZUlUZ25oa3BnVGNadGt4Ums5?=
 =?utf-8?B?L1dYd0hvZytkTDc1TUdVT2NzUzZ1VzM4SXllMDJmd1Y5b3BpT0FySVA5TWRu?=
 =?utf-8?B?cmdqdnRFVUwwbi84OWljL0FLZXNCRG1KZWM5ZVo4Q2Jyb0I5YkF1NWZZdlhi?=
 =?utf-8?B?c0FxYzdJMVFDRW56ZHlnY21Dd1NNSnJOV3dPcDNYb3RDeUt3S0QyTVZzelpa?=
 =?utf-8?B?YWdHdXMxVDVaV3BGMno4eWxsT2hJVUlUSzRMZ2pqZUJsSk1IZFV4K2h3U3VV?=
 =?utf-8?B?QVNDeGlzNGkwbTBCVmttaW50UklrK2ZYdnNrbkNhTUZOTnJ1eDFuWmx1NlA1?=
 =?utf-8?B?U3JOMi9pTU9RdmQ3T0FlS3BHaFRjY1pzTm1nbkZrMWNVWVpxRDl3TGRvd09k?=
 =?utf-8?B?eXpKdUZtOUprSjlIU3lHL2JOS3lLMDU4UVh1NFRubUtzKzI3MXJuU1pFY0tm?=
 =?utf-8?B?b0p4MFd0cldKa2dLZmhJVzRhNlVLcktiakJiOWxpNkFUd1g4NVo0cVlGQVZv?=
 =?utf-8?B?WVB0cDZCa1dFbjBFbm9sbkdQeE1GdWRLSE9MQXdYM1FwWUU4QTVSZDY1QWd3?=
 =?utf-8?B?bkF0aEZiME1XUG9GZjhncTFNU0lMTzN6WEJzbldsa1NMdVdhd0hzLzg5U254?=
 =?utf-8?B?bFBRV25QM3F4QU1VMDcvR3J5WXNjaXdxdWtKZ3pNRkFwdVNCbUEvVG5XTStV?=
 =?utf-8?B?dSsvZUVNSGFhcmdqa1dzMUdLaE9xQWl6UVF0ZnM0WUFmaFNQYXl4VFlSQTd0?=
 =?utf-8?B?RVl4c0hzbW4rVzJRdlMvckRWQzhBMVJLUWNXNWJEbnVBWUY0TGlIaHE4UXI4?=
 =?utf-8?B?VUFvM0dJRnZSbEpIQWlrYlN5ZnJpTlNwcHUrU2N1NWg3R3U4aG82b2RZS2hL?=
 =?utf-8?B?bCtHZXhJcU9CTUtCNG1LS0hldUc1bWVvbHQ1bTdBYmZONzkxc0NqYjFlUkVY?=
 =?utf-8?B?YlprM2FocWxrbzJhdVJ6VVFHM2xhOVh6OFByWDdVODNmQXJmMmtweTM4TVg2?=
 =?utf-8?B?ajlNdkdvQnpFUmdDRHBmaDBjcmJOaG5vOTJra1FkKzFtY0J5bFRzMWFIQURx?=
 =?utf-8?B?aGtjcWVmalZOSm5hZUZrKy9PT1JnZktkV240T3VVaVZFdlgvWjJpYmZCbWI5?=
 =?utf-8?B?bVhOTjkvMEtibG1ucFptcDlkTHdqeUVMbG1vbFUreWFDZGdaRXFINmxNL2Uw?=
 =?utf-8?B?YjNOK01IeWlqU1YrZHh2VzlxN1p5RVBMYzJXN3NoNXRCS3ZoQnltT0Z3RHlx?=
 =?utf-8?B?NWhIL01pWjRGQnpIUXBranZZWlpubXJhQUo5dlczSzUzd0tTQllwZDlzNjVT?=
 =?utf-8?B?SEE1VlE5MWQ3dDhxaUd0MC94dEVXWnFVY2VrektmcTdXdURIczR2RHYxemNy?=
 =?utf-8?B?NFR5amNDODM1aHVERnpCY1I4SHNpbVN2bEx1eVpPaGxHTzc5K0kwS1VCUXZU?=
 =?utf-8?B?Zk9zQTZwbklXN3JyMVZYeHpVcDdQNjVFZG9nT1RLVHpxQlBzUS9zRzBhNDJ5?=
 =?utf-8?B?M3lTb3NFeVpraml3eU1GQUYrUCtoYU1rRFZCNjZTNlM1a25TbWVuUm53cWYw?=
 =?utf-8?B?UVNDc3B6Yi9YOWRoZGQrZnlRY2UrYW42aWxpUEJZSDFvVlJGTVBHZTJqY2Zl?=
 =?utf-8?B?Y0VYVDlQT1h0QjE4WEZ4S0pHZDBBN0traGh4ajBkdndrb3I5TnZqeEdxVWY1?=
 =?utf-8?B?VCtOUldJeFliSm1IS1dCSGVxWDBQQTllRm5zWVptdGFtdTYrYmM5eVFHdG1Q?=
 =?utf-8?B?aEZYNnNvZjhBV1dzY0NMRkdYNTgvSkxWVkxtQnpEMFp4R3VWRzFaSGJ4bk5P?=
 =?utf-8?B?YTYrVzRJMndIS1IrOVcxdUM1T094RFFPMnVaYlR6TEcxZEFQYjlrcTE0bG5R?=
 =?utf-8?B?K1dKdjRTZDh0bEJNVTZ1VEQvSnhZNDJXS1lVdEZjV2R6RlQ2SnA5d1htUmYv?=
 =?utf-8?B?TkwwVDZJT2dYOFo0NmdOZCtPcHJyWDU0WThJTzY0SDFGbVg2Yk5WamFyU1M5?=
 =?utf-8?B?YVA3K24yZmY4OTFXVDhvYWtIcnVrTlVMeTJUWHpZRkdQY01sYzlPb0E2TjZM?=
 =?utf-8?B?a0pRZmVuUnlQWW5QOVI0SHhEUVZaOGJZaUZSVDdDWEtZTFl1MmpCdk1FWWZt?=
 =?utf-8?B?bll5NVlDZHRWK1BNRVJvYVp6ZURwTXpJM1VCTUsyelY1c25FTi8yUGdXUzdC?=
 =?utf-8?B?YUdNR1B1clVMalRRUUJydWFiWWlIclgxQXgvTzJRZ2c2RHNIaDhmR0JuNmVB?=
 =?utf-8?B?QXEzeUhZUm1FM2JXbEtQWktXd3NkTFJEdSsrVW94SDV2d1ExclVNNkxMbE81?=
 =?utf-8?Q?7ajVpLb/QTsO9AbEDW?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2ceb0d5-364d-4277-367e-08dedc048e57
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2026 08:48:46.2313 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DOGkTHvlFHLezmpqzvuw8b6rRwN2TT17U3Phl0KgR0g48/ljuPmnB7aTstpwF5tp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8376
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:from_mime,amd.com:email,amd.com:mid,amd.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gmx.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D1C54719579

On 7/7/26 08:56, Thomas Hellström wrote:
> On Mon, 2026-07-06 at 20:23 +0200, Christian König wrote:
>> On 7/6/26 19:01, Thomas Hellström wrote:
...
>>
>> Well, I clearly rejected the idea to wait for the delayed delete
>> worker because that can cause deadlocks no matter how we do it.
>>
>> The only possibility I see is to grab a reference on the next busy
>> fence and wait for that to signal.
>>
>> But that approach still leaves a window open where the cleanup worker
>> has not yet cleaned up the resource before we try to allocate a new
>> one.
>>
>> The only two possibilities I see to close that window are:
>> 1. Resurrect the GEM object.
>> 2. Keep a reference to the GEM object while it is on the LRU.
>>
>> I would really like to do #2 instead, but that requires that we
>> distinct between GEM object referenze and backing store reference.
>>
>> The GEM object does have some kind of backing store reference with
>> the handle_count field, but that unfortunately doesn't have the right
>> semantic (e.g. only goes from 0->1 when you actually create a handle
>> etc..).
> 
> I think putting a struct completion + refcount on the TTM resource
> would work. Or a much simpler variant, wait for anyone to release
> something on the resource manager in question, (although the simpler
> variant would be harder to debug if a deadlock occured).
> 
> Both of these would probably need to come with lockdep annotation so
> that we could annotate the critical sections from ttm_bo_fini() to
> resource_free, similar to the dma-fence signalling annotation.
> 
> At this point, following that previous discussion we know that imported
> dma-bufs are an exception because we grab the shared dma-resv to
> release the attachment. So until we add a way to avoid that in the dma-
> buf code, we need to wake / signal completion before we grab that lock.
> Not a big deal because imported bos will not matter for local reclaim
> anyway.

The problem is that locking the dma_resv object for release is mandatory not only for proper DMA-buf import handling but for tons of other use cases as well. In other words DMA-buf imports, page tables, per process buffers who use the same dma_resv object as the root PD etc...

By now we I don't think we can't avoid locking the dma_resv object in the delete path, so a completeion event or any other method which blocks for resource cleanup without deadlock detection won't work as far as I can see.

The only way forward seems to be to lock the ww_mutex with deadlock avoidance handling and that in turn needs to make sure that the ww_mutex doesn't go away until we eventually have bubbled up the error to the driver and the drm_exec object had the chance to lock the offending ww_mutex before anything else.

>>>>> I fully support removing the ttm refcount, but not if it means
>>>>> resurrecting the gem refcount.
>>>>>
>>>>> If we want to sidestep that problem, in favour of getting the
>>>>> proposed
>>>>> locking functionality in and future proof it, I suggest using
>>>>>
>>>>> https://lore.kernel.org/all/20260605112700.181040-1-thomas.hellstrom@linux.intel.com/
>>>>>
>>>>> And rebase this series on that. This means we can use the ttm
>>>>> refcount
>>>>> for the transaction refcounting, and also that if we add a dma-
>>>>> buf
>>>>> map
>>>>> interface with a dma_resv_txn_obj, we could use that to also
>>>>> have
>>>>> exhaustive eviction that originates from a dma_buf map.
>>>>
>>>> I don't think that this is a good idea. It just adds another
>>>> layer of
>>>> abstraction and doesn't solve the problem in any way possible.
>>>
>>> This comment confuses me. Exactly what problem isn't solved by
>>> this,
>>> and which of the stated benefits/use-cases in the cover-letter do
>>> you
>>> think aren't worthwhile?
>>
>> Of course could the drm_exec object work with different reference
>> counters, but as far as I can see that just complicates the situation
>> and again creates a TTM specific solutions which I clearly want to
>> avoid.
>>
>> I would rather go with the resurrection approach instead, that has
>> less potential for problem I think.
>>
>> Alaternatively we could re-work the whole GEM refcount/GEM handle
>> count/TTM refcount mess, but that has even more potential to break.
> 
> I think looking forward to a "final" solution we're happy with, we
> would have removed the TTM refcount and found a way to deal with zombie
> resources by finding something to wait for.

We should probably nail down the "final" solution now, it's just that way to many ugly workarounds arounds have been proposed so far and I completely agree that resuccertion of zombies is just another one.

Just a random idea we haven't discussed so far: What about making the ww_mutex ref counted?

There are basically just three users in the kernel for the ww_mutex, so that shouldn't be to much trouble.

> I'm also convinced that we want apps with shared bos to fully
> participate so that a process trying to validate / map a shared bo
> doesn't get killed because a trylock-driven eviction failed.

I might not fully understand that, but if you mean that applications should be able to use all resources even if those resources has just recently been released than I'm all with you.

> 
> Since it's a layer violation to pass a drm_exec in an augmented dma-buf
> map we will be needing something at the dma-buf level to handle that,
> and given that, it also makes sense to base the eviction mechanism on
> it.

Well I disagree. The DMA-buf invalidation notification intentionally doesn't have a ww_acquire_ctx.

Background is that when this is called exporters have often already passed the point of no return and the importers just *must* act on the request and can't say 'Na, sorry I can't take the locks I need'.

> The ability to reuse the TTM refcount for now would just be a way to
> separate out the zombie handling from this series until we can do it
> properly. After all this series is about enabling sleeping ww locks.

Well the problem is that I don't see how it should work with the TTM refcount.

This basically means that for each lock operation has an ops table with put/get, in that case it would just easier to make the ww_mutex ref counted.

Regards,
Christian.

> 
> Thanks,
> Thomas
> 
> 
>>
>> Regards,
>> Christian.
>>
>>
>>>
>>> Also for reference: (Section at the end and follow-up messages)
>>> https://lore.kernel.org/all/3716d43462188590743060755b37e3d060f7600f.camel@linux.intel.com/
>>>
>>> Thanks,
>>> Thomas
>>>
>>>
>>>> Regards,
>>>> Christian.
>>>>
>>>>>
>>>>> /Thomas
>>>>>
>>>>>>
>>>>>> Signed-off-by: tChristian König <christian.koenig@amd.com>
>>>>>> Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
>>>>>> ---
>>>>>>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c          |  35 +++--
>>>>>> -
>>>>>>  drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c |   8 +-
>>>>>>  drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c    |   2 -
>>>>>>  drivers/gpu/drm/ttm/ttm_bo.c                     | 135
>>>>>> +++++++++++--
>>>>>> ----------
>>>>>>  drivers/gpu/drm/ttm/ttm_bo_internal.h            |  17 ++-
>>>>>>  drivers/gpu/drm/ttm/ttm_bo_util.c                |  15 ++-
>>>>>>  drivers/gpu/drm/xe/xe_bo.c                       |   2 +-
>>>>>>  include/drm/ttm/ttm_bo.h                         |   9 --
>>>>>>  8 files changed, 111 insertions(+), 112 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>>> index df3fcc2b1248e..642296602de69 100644
>>>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>>> @@ -939,7 +939,7 @@ void i915_ttm_adjust_lru(struct
>>>>>> drm_i915_gem_object *obj)
>>>>>>  	 * Don't manipulate the TTM LRUs while in TTM bo
>>>>>> destruction.
>>>>>>  	 * We're called through
>>>>>> i915_ttm_delete_mem_notify().
>>>>>>  	 */
>>>>>> -	if (!kref_read(&bo->kref))
>>>>>> +	if (!kref_read(&bo->base.refcount))
>>>>>>  		return;
>>>>>>  
>>>>>>  	/*
>>>>>> @@ -957,30 +957,21 @@ void i915_ttm_adjust_lru(struct
>>>>>> drm_i915_gem_object *obj)
>>>>>>  	 *
>>>>>>  	 * TODO: consider maybe also bumping the shrinker
>>>>>> list
>>>>>> here
>>>>>> when we have
>>>>>>  	 * already unpinned it, which should give us
>>>>>> something
>>>>>> more
>>>>>> like an LRU.
>>>>>> -	 *
>>>>>> -	 * TODO: There is a small window of opportunity for
>>>>>> this
>>>>>> function to
>>>>>> -	 * get called from eviction after we've dropped the
>>>>>> last
>>>>>> GEM
>>>>>> refcount,
>>>>>> -	 * but before the TTM deleted flag is set on the
>>>>>> object.
>>>>>> Avoid
>>>>>> -	 * adjusting the shrinker list in such cases, since
>>>>>> the
>>>>>> object is
>>>>>> -	 * not available to the shrinker anyway due to its
>>>>>> zero
>>>>>> refcount.
>>>>>> -	 * To fix this properly we should move to a TTM
>>>>>> shrinker
>>>>>> LRU
>>>>>> list for
>>>>>> -	 * these objects.
>>>>>>  	 */
>>>>>> -	if (kref_get_unless_zero(&obj->base.refcount)) {
>>>>>> -		if (shrinkable != obj->mm.ttm_shrinkable) {
>>>>>> -			if (shrinkable) {
>>>>>> -				if (obj->mm.madv ==
>>>>>> I915_MADV_WILLNEED)
>>>>>> -
>>>>>> 					__i915_gem_object_ma
>>>>>> ke_s
>>>>>> hrinkable(obj);
>>>>>> -				else
>>>>>> -
>>>>>> 					__i915_gem_object_ma
>>>>>> ke_p
>>>>>> urgeable(obj);
>>>>>> -			} else {
>>>>>> -
>>>>>> 				i915_gem_object_make_unshrin
>>>>>> kabl
>>>>>> e(obj);
>>>>>> -			}
>>>>>> -
>>>>>> -			obj->mm.ttm_shrinkable = shrinkable;
>>>>>> +	i915_gem_object_get(obj);
>>>>>> +	if (shrinkable != obj->mm.ttm_shrinkable) {
>>>>>> +		if (shrinkable) {
>>>>>> +			if (obj->mm.madv ==
>>>>>> I915_MADV_WILLNEED)
>>>>>> +				__i915_gem_object_make_shrin
>>>>>> kabl
>>>>>> e(ob
>>>>>> j);
>>>>>> +			else
>>>>>> +				__i915_gem_object_make_purge
>>>>>> able
>>>>>> (obj
>>>>>> );
>>>>>> +		} else {
>>>>>> +			i915_gem_object_make_unshrinkable(ob
>>>>>> j);
>>>>>>  		}
>>>>>> -		i915_gem_object_put(obj);
>>>>>> +
>>>>>> +		obj->mm.ttm_shrinkable = shrinkable;
>>>>>>  	}
>>>>>> +	i915_gem_object_put(obj);
>>>>>>  
>>>>>>  	/*
>>>>>>  	 * Put on the correct LRU list depending on the MADV
>>>>>> status
>>>>>> diff --git a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
>>>>>> b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
>>>>>> index 56ad8ef325840..904cb4da6c9b3 100644
>>>>>> --- a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
>>>>>> +++ b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
>>>>>> @@ -127,7 +127,7 @@ static void
>>>>>> ttm_bo_init_reserved_sys_man(struct
>>>>>> kunit *test)
>>>>>>  	dma_resv_unlock(bo->base.resv);
>>>>>>  
>>>>>>  	KUNIT_EXPECT_EQ(test, err, 0);
>>>>>> -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref), 1);
>>>>>> +	KUNIT_EXPECT_EQ(test, kref_read(&bo->base.refcount),
>>>>>> 1);
>>>>>>  	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv->ttm_dev);
>>>>>>  	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
>>>>>>  	KUNIT_EXPECT_EQ(test, bo->page_alignment,
>>>>>> PAGE_SIZE);
>>>>>> @@ -176,7 +176,7 @@ static void
>>>>>> ttm_bo_init_reserved_mock_man(struct
>>>>>> kunit *test)
>>>>>>  	dma_resv_unlock(bo->base.resv);
>>>>>>  
>>>>>>  	KUNIT_EXPECT_EQ(test, err, 0);
>>>>>> -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref), 1);
>>>>>> +	KUNIT_EXPECT_EQ(test, kref_read(&bo->base.refcount),
>>>>>> 1);
>>>>>>  	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv->ttm_dev);
>>>>>>  	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
>>>>>>  	KUNIT_EXPECT_EQ(test, ctx.bytes_moved, size);
>>>>>> @@ -969,6 +969,8 @@ static void
>>>>>> ttm_bo_validate_allowed_only_evict(struct kunit *test)
>>>>>>  	ttm_mock_manager_fini(priv->ttm_dev, mem_multihop);
>>>>>>  }
>>>>>>  
>>>>>> +extern const struct drm_gem_object_funcs
>>>>>> ttm_deleted_object_funcs;
>>>>>> +
>>>>>>  static void ttm_bo_validate_deleted_evict(struct kunit
>>>>>> *test)
>>>>>>  {
>>>>>>  	struct ttm_operation_ctx ctx_init = { }, ctx_val  =
>>>>>> { };
>>>>>> @@ -999,7 +1001,7 @@ static void
>>>>>> ttm_bo_validate_deleted_evict(struct
>>>>>> kunit *test)
>>>>>>  	KUNIT_EXPECT_EQ(test,
>>>>>> ttm_resource_manager_usage(man),
>>>>>> big);
>>>>>>  
>>>>>>  	dma_resv_unlock(bo_big->base.resv);
>>>>>> -	bo_big->deleted = true;
>>>>>> +	bo_big->base.funcs = &ttm_deleted_object_funcs;
>>>>>>  
>>>>>>  	bo_small = ttm_bo_kunit_init(test, test->priv,
>>>>>> small,
>>>>>> NULL);
>>>>>>  	bo_small->type = bo_type;
>>>>>> diff --git a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
>>>>>> b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
>>>>>> index 5cfe8f3f80d75..b7ab19e0e4b2b 100644
>>>>>> --- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
>>>>>> +++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
>>>>>> @@ -189,8 +189,6 @@ struct ttm_buffer_object
>>>>>> *ttm_bo_kunit_init(struct kunit *test,
>>>>>>  	bo->bdev = devs->ttm_dev;
>>>>>>  	bo->destroy = dummy_ttm_bo_destroy;
>>>>>>  
>>>>>> -	kref_init(&bo->kref);
>>>>>> -
>>>>>>  	return bo;
>>>>>>  }
>>>>>>  EXPORT_SYMBOL_GPL(ttm_bo_kunit_init);
>>>>>> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c
>>>>>> b/drivers/gpu/drm/ttm/ttm_bo.c
>>>>>> index 3980f376e3ba4..2b470c1746f60 100644
>>>>>> --- a/drivers/gpu/drm/ttm/ttm_bo.c
>>>>>> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
>>>>>> @@ -246,88 +246,84 @@ static void
>>>>>> ttm_bo_delayed_delete(struct
>>>>>> work_struct *work)
>>>>>>  	ttm_bo_put(bo);
>>>>>>  }
>>>>>>  
>>>>>> -static void ttm_bo_release(struct kref *kref)
>>>>>> +/*
>>>>>> + * All other callbacks should never ever be called on a
>>>>>> deleted
>>>>>> TTM
>>>>>> object.
>>>>>> + */
>>>>>> +const struct drm_gem_object_funcs ttm_deleted_object_funcs =
>>>>>> {
>>>>>> +	.free = ttm_bo_free
>>>>>> +};
>>>>>> +EXPORT_SYMBOL_FOR_TESTS_ONLY(ttm_deleted_object_funcs);
>>>>>> +
>>>>>> +/* Returns true if the BO is about to get deleted */
>>>>>> +static bool ttm_bo_is_zombie(struct ttm_buffer_object *bo)
>>>>>> +{
>>>>>> +	return bo->base.funcs == &ttm_deleted_object_funcs;
>>>>>> +}
>>>>>> +
>>>>>> +void ttm_bo_fini(struct ttm_buffer_object *bo)
>>>>>>  {
>>>>>> -	struct ttm_buffer_object *bo =
>>>>>> -	    container_of(kref, struct ttm_buffer_object,
>>>>>> kref);
>>>>>>  	struct ttm_device *bdev = bo->bdev;
>>>>>>  	int ret;
>>>>>>  
>>>>>>  	WARN_ON_ONCE(bo->pin_count);
>>>>>>  	WARN_ON_ONCE(bo->bulk_move);
>>>>>>  
>>>>>> -	if (!bo->deleted) {
>>>>>> -		ret = ttm_bo_individualize_resv(bo);
>>>>>> -		if (ret) {
>>>>>> -			/* Last resort, if we fail to
>>>>>> allocate
>>>>>> memory for the
>>>>>> -			 * fences block for the BO to become
>>>>>> idle
>>>>>> -			 */
>>>>>> -			dma_resv_wait_timeout(bo->base.resv,
>>>>>> -					     
>>>>>> DMA_RESV_USAGE_BOOKKEEP, false,
>>>>>> -					      30 * HZ);
>>>>>> -		}
>>>>>> +	ret = ttm_bo_individualize_resv(bo);
>>>>>> +	if (ret) {
>>>>>> +		/* Last resort, if we fail to allocate
>>>>>> memory
>>>>>> for
>>>>>> the
>>>>>> +		 * fences block for the BO to become idle
>>>>>> +		 */
>>>>>> +		dma_resv_wait_timeout(bo->base.resv,
>>>>>> DMA_RESV_USAGE_BOOKKEEP,
>>>>>> +				      false, 30 * HZ);
>>>>>> +	}
>>>>>>  
>>>>>> -		if (bdev->funcs->release_notify)
>>>>>> -			bdev->funcs->release_notify(bo);
>>>>>> +	if (bo->bdev->funcs->release_notify)
>>>>>> +		bo->bdev->funcs->release_notify(bo);
>>>>>>  
>>>>>> -		drm_vma_offset_remove(bdev->vma_manager,
>>>>>> &bo-
>>>>>>> base.vma_node);
>>>>>> -		ttm_mem_io_free(bdev, bo->resource);
>>>>>> +	drm_vma_offset_remove(bdev->vma_manager, &bo-
>>>>>>> base.vma_node);
>>>>>> +	ttm_mem_io_free(bdev, bo->resource);
>>>>>>  
>>>>>> -		if (!dma_resv_test_signaled(&bo->base._resv,
>>>>>> -					   
>>>>>> DMA_RESV_USAGE_BOOKKEEP)
>>>>>>>>
>>>>>> -		    (want_init_on_free() && (bo->ttm !=
>>>>>> NULL))
>>>>>>>>
>>>>>> -		    bo->type == ttm_bo_type_sg ||
>>>>>> -		    !dma_resv_trylock(bo->base.resv)) {
>>>>>> -			/* The BO is not idle, resurrect it
>>>>>> for
>>>>>> delayed destroy */
>>>>>> -			ttm_bo_flush_all_fences(bo);
>>>>>> -			bo->deleted = true;
>>>>>> +	if (!dma_resv_test_signaled(&bo->base._resv,
>>>>>> DMA_RESV_USAGE_BOOKKEEP) ||
>>>>>> +	    (want_init_on_free() && (bo->ttm != NULL)) ||
>>>>>> +	    bo->type == ttm_bo_type_sg ||
>>>>>> +	    !dma_resv_trylock(bo->base.resv)) {
>>>>>> +		/* The BO is not idle, resurrect it for
>>>>>> delayed
>>>>>> destroy */
>>>>>> +		ttm_bo_flush_all_fences(bo);
>>>>>>  
>>>>>> -			spin_lock(&bdev->lru_lock);
>>>>>> -
>>>>>> -			/*
>>>>>> -			 * Make pinned bos immediately
>>>>>> available
>>>>>> to
>>>>>> -			 * shrinkers, now that they are
>>>>>> queued
>>>>>> for
>>>>>> -			 * destruction.
>>>>>> -			 *
>>>>>> -			 * FIXME: QXL is triggering this.
>>>>>> Can be
>>>>>> removed when the
>>>>>> -			 * driver is fixed.
>>>>>> -			 */
>>>>>> -			if (bo->pin_count) {
>>>>>> -				bo->pin_count = 0;
>>>>>> -
>>>>>> 				ttm_resource_move_to_lru_tai
>>>>>> l(bo-
>>>>>>> resource);
>>>>>> -			}
>>>>>> +		spin_lock(&bo->bdev->lru_lock);
>>>>>>  
>>>>>> -			kref_init(&bo->kref);
>>>>>> -			spin_unlock(&bdev->lru_lock);
>>>>>> +		/*
>>>>>> +		 * Make pinned bos immediately available to
>>>>>> +		 * shrinkers, now that they are queued for
>>>>>> +		 * destruction.
>>>>>> +		 *
>>>>>> +		 * FIXME: QXL is triggering this. Can be
>>>>>> removed
>>>>>> when the
>>>>>> +		 * driver is fixed.
>>>>>> +		 */
>>>>>> +		if (bo->pin_count) {
>>>>>> +			bo->pin_count = 0;
>>>>>> +			ttm_resource_move_to_lru_tail(bo-
>>>>>>> resource);
>>>>>> +		}
>>>>>>  
>>>>>> -			INIT_WORK(&bo->delayed_delete,
>>>>>> ttm_bo_delayed_delete);
>>>>>> +		kref_init(&bo->base.refcount);
>>>>>> +		bo->base.funcs = &ttm_deleted_object_funcs;
>>>>>> +		spin_unlock(&bo->bdev->lru_lock);
>>>>>>  
>>>>>> -			/* Schedule the worker on the
>>>>>> closest
>>>>>> NUMA
>>>>>> node. This
>>>>>> -			 * improves performance since system
>>>>>> memory
>>>>>> might be
>>>>>> -			 * cleared on free and that is best
>>>>>> done
>>>>>> on
>>>>>> a CPU core
>>>>>> -			 * close to it.
>>>>>> -			 */
>>>>>> -			queue_work_node(bdev->pool.nid,
>>>>>> bdev-
>>>>>>> wq,
>>>>>> &bo->delayed_delete);
>>>>>> -			return;
>>>>>> -		}
>>>>>> +		INIT_WORK(&bo->delayed_delete,
>>>>>> ttm_bo_delayed_delete);
>>>>>>  
>>>>>> +		/* Schedule the worker on the closest NUMA
>>>>>> node.
>>>>>> This
>>>>>> +		 * improves performance since system memory
>>>>>> might be
>>>>>> +		 * cleared on free and that is best done on
>>>>>> a
>>>>>> CPU
>>>>>> core
>>>>>> +		 * close to it.
>>>>>> +		 */
>>>>>> +		queue_work_node(bdev->pool.nid, bdev->wq,
>>>>>> &bo-
>>>>>>> delayed_delete);
>>>>>> +	} else {
>>>>>>  		ttm_bo_cleanup_memtype_use(bo);
>>>>>>  		dma_resv_unlock(bo->base.resv);
>>>>>> -	}
>>>>>>  
>>>>>> -	atomic_dec(&ttm_glob.bo_count);
>>>>>> -	bo->destroy(bo);
>>>>>> -}
>>>>>> -
>>>>>> -/* TODO: remove! */
>>>>>> -void ttm_bo_put(struct ttm_buffer_object *bo)
>>>>>> -{
>>>>>> -	kref_put(&bo->kref, ttm_bo_release);
>>>>>> -}
>>>>>> -
>>>>>> -void ttm_bo_fini(struct ttm_buffer_object *bo)
>>>>>> -{
>>>>>> -	ttm_bo_put(bo);
>>>>>> +		atomic_dec(&ttm_glob.bo_count);
>>>>>> +		bo->destroy(bo);
>>>>>> +	}
>>>>>>  }
>>>>>>  EXPORT_SYMBOL(ttm_bo_fini);
>>>>>>  
>>>>>> @@ -470,7 +466,7 @@ int ttm_bo_evict_first(struct ttm_device
>>>>>> *bdev,
>>>>>> struct ttm_resource_manager *man
>>>>>>  	if (!bo->resource || bo->resource->mem_type !=
>>>>>> mem_type)
>>>>>>  		goto out_bo_moved;
>>>>>>  
>>>>>> -	if (bo->deleted) {
>>>>>> +	if (ttm_bo_is_zombie(bo)) {
>>>>>>  		ret = ttm_bo_wait_ctx(bo, ctx);
>>>>>>  		if (!ret)
>>>>>>  			ttm_bo_cleanup_memtype_use(bo);
>>>>>> @@ -524,7 +520,7 @@ static s64 ttm_bo_evict_cb(struct
>>>>>> ttm_lru_walk
>>>>>> *walk, struct ttm_buffer_object *
>>>>>>  	if (bo->pin_count || !bo->bdev->funcs-
>>>>>>> eviction_valuable(bo,
>>>>>> evict_walk->place))
>>>>>>  		return 0;
>>>>>>  
>>>>>> -	if (bo->deleted) {
>>>>>> +	if (ttm_bo_is_zombie(bo)) {
>>>>>>  		lret = ttm_bo_wait_ctx(bo, walk->arg.ctx);
>>>>>>  		if (!lret)
>>>>>>  			ttm_bo_cleanup_memtype_use(bo);
>>>>>> @@ -624,7 +620,6 @@ static int ttm_bo_evict_alloc(struct
>>>>>> ttm_device
>>>>>> *bdev,
>>>>>>  void ttm_bo_pin(struct ttm_buffer_object *bo)
>>>>>>  {
>>>>>>  	dma_resv_assert_held(bo->base.resv);
>>>>>> -	WARN_ON_ONCE(!kref_read(&bo->kref));
>>>>>>  	spin_lock(&bo->bdev->lru_lock);
>>>>>>  	if (bo->resource)
>>>>>>  		ttm_resource_del_bulk_move(bo->resource,
>>>>>> bo);
>>>>>> @@ -643,7 +638,6 @@ EXPORT_SYMBOL(ttm_bo_pin);
>>>>>>  void ttm_bo_unpin(struct ttm_buffer_object *bo)
>>>>>>  {
>>>>>>  	dma_resv_assert_held(bo->base.resv);
>>>>>> -	WARN_ON_ONCE(!kref_read(&bo->kref));
>>>>>>  	if (WARN_ON_ONCE(!bo->pin_count))
>>>>>>  		return;
>>>>>>  
>>>>>> @@ -934,7 +928,6 @@ int ttm_bo_init_reserved(struct
>>>>>> ttm_device
>>>>>> *bdev,
>>>>>> struct ttm_buffer_object *bo,
>>>>>>  {
>>>>>>  	int ret;
>>>>>>  
>>>>>> -	kref_init(&bo->kref);
>>>>>>  	bo->bdev = bdev;
>>>>>>  	bo->type = type;
>>>>>>  	bo->page_alignment = alignment;
>>>>>> @@ -1131,8 +1124,8 @@ ttm_bo_swapout_cb(struct ttm_lru_walk
>>>>>> *walk,
>>>>>> struct ttm_buffer_object *bo)
>>>>>>  		goto out;
>>>>>>  	}
>>>>>>  
>>>>>> -	if (bo->deleted) {
>>>>>> -		pgoff_t num_pages = tt->num_pages;
>>>>>> +	if (ttm_bo_is_zombie(bo)) {
>>>>>> +		pgoff_t num_pages = bo->ttm->num_pages;
>>>>>>  
>>>>>>  		ret = ttm_bo_wait_ctx(bo, ctx);
>>>>>>  		if (ret)
>>>>>> diff --git a/drivers/gpu/drm/ttm/ttm_bo_internal.h
>>>>>> b/drivers/gpu/drm/ttm/ttm_bo_internal.h
>>>>>> index e0d48eac74b03..ded2a47be0bcb 100644
>>>>>> --- a/drivers/gpu/drm/ttm/ttm_bo_internal.h
>>>>>> +++ b/drivers/gpu/drm/ttm/ttm_bo_internal.h
>>>>>> @@ -27,6 +27,14 @@
>>>>>>  
>>>>>>  #include <drm/ttm/ttm_bo.h>
>>>>>>  
>>>>>> +static inline void ttm_bo_free(struct drm_gem_object *gobj)
>>>>>> +{
>>>>>> +	struct ttm_buffer_object *bo = container_of(gobj,
>>>>>> typeof(*bo), base);
>>>>>> +
>>>>>> +	atomic_dec(&ttm_glob.bo_count);
>>>>>> +	bo->destroy(bo);
>>>>>> +}
>>>>>> +
>>>>>>  /**
>>>>>>   * ttm_bo_get - reference a struct ttm_buffer_object
>>>>>>   *
>>>>>> @@ -34,7 +42,7 @@
>>>>>>   */
>>>>>>  static inline void ttm_bo_get(struct ttm_buffer_object *bo)
>>>>>>  {
>>>>>> -	kref_get(&bo->kref);
>>>>>> +	drm_gem_object_get(&bo->base);
>>>>>>  }
>>>>>>  
>>>>>>  /**
>>>>>> @@ -50,11 +58,14 @@ static inline void ttm_bo_get(struct
>>>>>> ttm_buffer_object *bo)
>>>>>>  static inline __must_check struct ttm_buffer_object *
>>>>>>  ttm_bo_get_unless_zero(struct ttm_buffer_object *bo)
>>>>>>  {
>>>>>> -	if (!kref_get_unless_zero(&bo->kref))
>>>>>> +	if (!kref_get_unless_zero(&bo->base.refcount))
>>>>>>  		return NULL;
>>>>>>  	return bo;
>>>>>>  }
>>>>>>  
>>>>>> -void ttm_bo_put(struct ttm_buffer_object *bo);
>>>>>> +static inline void ttm_bo_put(struct ttm_buffer_object *bo)
>>>>>> +{
>>>>>> +	drm_gem_object_put(&bo->base);
>>>>>> +}
>>>>>>  
>>>>>>  #endif
>>>>>> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c
>>>>>> b/drivers/gpu/drm/ttm/ttm_bo_util.c
>>>>>> index 3e3c201a02226..7ed085adf1c9b 100644
>>>>>> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
>>>>>> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
>>>>>> @@ -41,6 +41,18 @@
>>>>>>  
>>>>>>  #include "ttm_bo_internal.h"
>>>>>>  
>>>>>> +static void ttm_transfer_object_free(struct drm_gem_object
>>>>>> *obj)
>>>>>> +{
>>>>>> +	struct ttm_buffer_object *bo =
>>>>>> +		container_of(obj, struct ttm_buffer_object,
>>>>>> base);
>>>>>> +
>>>>>> +	ttm_bo_fini(bo);
>>>>>> +}
>>>>>> +
>>>>>> +const struct drm_gem_object_funcs ttm_transfer_object_funcs
>>>>>> = {
>>>>>> +	.free = ttm_transfer_object_free,
>>>>>> +};
>>>>>> +
>>>>>>  struct ttm_transfer_obj {
>>>>>>  	struct ttm_buffer_object base;
>>>>>>  	struct ttm_buffer_object *bo;
>>>>>> @@ -247,7 +259,8 @@ static int
>>>>>> ttm_buffer_object_transfer(struct
>>>>>> ttm_buffer_object *bo,
>>>>>>  	atomic_inc(&ttm_glob.bo_count);
>>>>>>  	drm_vma_node_reset(&fbo->base.base.vma_node);
>>>>>>  
>>>>>> -	kref_init(&fbo->base.kref);
>>>>>> +	kref_init(&fbo->base.base.refcount);
>>>>>> +	fbo->base.base.funcs = &ttm_transfer_object_funcs;
>>>>>>  	fbo->base.destroy = &ttm_transfered_destroy;
>>>>>>  	fbo->base.pin_count = 0;
>>>>>>  	if (bo->type != ttm_bo_type_sg)
>>>>>> diff --git a/drivers/gpu/drm/xe/xe_bo.c
>>>>>> b/drivers/gpu/drm/xe/xe_bo.c
>>>>>> index 85e6d9a0f575b..5843f850339c7 100644
>>>>>> --- a/drivers/gpu/drm/xe/xe_bo.c
>>>>>> +++ b/drivers/gpu/drm/xe/xe_bo.c
>>>>>> @@ -1651,7 +1651,7 @@ static bool
>>>>>> xe_ttm_bo_lock_in_destructor(struct
>>>>>> ttm_buffer_object *ttm_bo)
>>>>>>  	struct xe_device *xe = ttm_to_xe_device(ttm_bo-
>>>>>>> bdev);
>>>>>>  	bool locked;
>>>>>>  
>>>>>> -	xe_assert(xe, !kref_read(&ttm_bo->kref));
>>>>>> +	xe_assert(xe, !kref_read(&ttm_bo->base.refcount));
>>>>>>  
>>>>>>  	/*
>>>>>>  	 * We can typically only race with TTM trylocking
>>>>>> under
>>>>>> the
>>>>>> diff --git a/include/drm/ttm/ttm_bo.h
>>>>>> b/include/drm/ttm/ttm_bo.h
>>>>>> index 8310bc3d55f90..1eae9eea5ff32 100644
>>>>>> --- a/include/drm/ttm/ttm_bo.h
>>>>>> +++ b/include/drm/ttm/ttm_bo.h
>>>>>> @@ -78,11 +78,8 @@ enum ttm_bo_type {
>>>>>>   * @type: The bo type.
>>>>>>   * @page_alignment: Page alignment.
>>>>>>   * @destroy: Destruction function. If NULL, kfree is used.
>>>>>> - * @kref: Reference count of this buffer object. When this
>>>>>> refcount
>>>>>> reaches
>>>>>> - * zero, the object is destroyed or put on the delayed
>>>>>> delete
>>>>>> list.
>>>>>>   * @resource: structure describing current placement.
>>>>>>   * @ttm: TTM structure holding system pages.
>>>>>> - * @deleted: True if the object is only a zombie and already
>>>>>> deleted.
>>>>>>   * @bulk_move: The bulk move object.
>>>>>>   * @priority: Priority for LRU, BOs with lower priority are
>>>>>> evicted
>>>>>> first.
>>>>>>   * @pin_count: Pin count.
>>>>>> @@ -109,17 +106,11 @@ struct ttm_buffer_object {
>>>>>>  	uint32_t page_alignment;
>>>>>>  	void (*destroy) (struct ttm_buffer_object *);
>>>>>>  
>>>>>> -	/*
>>>>>> -	* Members not needing protection.
>>>>>> -	*/
>>>>>> -	struct kref kref;
>>>>>> -
>>>>>>  	/*
>>>>>>  	 * Members protected by the bo::resv::reserved lock.
>>>>>>  	 */
>>>>>>  	struct ttm_resource *resource;
>>>>>>  	struct ttm_tt *ttm;
>>>>>> -	bool deleted;
>>>>>>  	struct ttm_lru_bulk_move *bulk_move;
>>>>>>  	unsigned priority;
>>>>>>  	unsigned pin_count;

