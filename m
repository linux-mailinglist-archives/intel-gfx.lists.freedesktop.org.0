Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id a7ofM1J0KmpOpgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 10:39:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F81266FF17
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 10:39:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=RAn9BM6a;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2771110ED91;
	Thu, 11 Jun 2026 08:39:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL2PR02CU003.outbound.protection.outlook.com
 (mail-eastusazon11011067.outbound.protection.outlook.com [52.101.52.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC7D110ED90;
 Thu, 11 Jun 2026 08:39:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z2iyKkrXtafdg61YvMjO72GWjAIeax6hcfdHKwNdI66/m6JnUzVniHZOT7zpNiWppECVgn5XfiZrX8JBwsPpHfkmO3gFo+XE71fER/6dmsSyGkRmlkiKXvpolt6sZ9SqrFqd+YYP4BjHdZXOHqAocLrCw5BOV2RHs6G9NSuGt+EZNS5k9vySuerSiCmEBM88mP8IddCYns8nGY3o9C4x1vOktU+bGM9d3EpxQpXC7roD+vSdKrGfATN0dn0REo5Wlo89JtQhHT1Xh2vs3YvfHO5SbcL8cCOKBFfrAIhm9IM/tzPjvVlfE8BHYZVyuRzuzNnIxWDv3JOO816YtYYb4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p58uwmBWqwTutDeQdxjhW3HoEXof2262loqjhbeHZSc=;
 b=cPA/iqk3yjaIC03BcQusFOw9ElbLHdJAO0eojxLUEcJ9eeWM3mVWGPJRcDCtyZdO2MEZ0owfasJHnESCxVhGjNkod/yxHWzYH9IIKnlr5W2t9NsGENrlUfyIglbW02KOa2PH3tAv4BtZ7GXBcRothWx9pkMgfwe33d1hY76jSJJebvI/bRVbC4aWabV+SUEv8Rlj3oaaTWf1vVTg+nkAs2gS7Nud9FIymLmB9dIwjLv8UU8T2x/cSxX/Nh50zvTKBnRzbsrVdnKiW6HkEBsCv8gS42RBcZNmUZrw7qHL3yQFkUMIOOsviBM3NpfhYLQHEhr8uxbMQLNZgCqpjC2ISA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p58uwmBWqwTutDeQdxjhW3HoEXof2262loqjhbeHZSc=;
 b=RAn9BM6akuqKzVCas8e3toGMYNaDj3YYj2Diwia4zdLU0ZTW0hgRdEuD2Rln2tzAdzK6TqM03MX81XmsT/XNMaJN9giVsV0xcwL6gHF5DgMxGvhl7dnGaOjX16uFjdTj7JuSOnIyaP/wVPR286mKMDXe8BL44ZHuHTcc0dCXPNo=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH8PR12MB6745.namprd12.prod.outlook.com (2603:10b6:510:1c0::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Thu, 11 Jun
 2026 08:39:33 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0092.006; Thu, 11 Jun 2026
 08:39:33 +0000
Message-ID: <96f9390b-a547-442f-b0a9-99a5ba52c0e1@amd.com>
Date: Thu, 11 Jun 2026 10:39:14 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/14] list: Prepare entry iterators to cache cursor
 state
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Kaitao Cheng <kaitao.cheng@linux.dev>,
 Thierry Reding <thierry.reding@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>,
 Davidlohr Bueso <dave@stgolabs.net>, "Paul E . McKenney"
 <paulmck@kernel.org>, Josh Triplett <josh@joshtriplett.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Eddie James <eajames@linux.ibm.com>, Mark Brown <broonie@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Waiman Long <longman@redhat.com>,
 drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-spi@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, Christian Brauner
 <brauner@kernel.org>, David Howells <dhowells@redhat.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Kaito Cheng <chengkaitao@kylinos.cn>, Muchun Song <muchun.song@linux.dev>,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Lars Ellenberg <lars.ellenberg@linbit.com>,
 =?UTF-8?Q?Christoph_B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>,
 Jens Axboe <axboe@kernel.dk>, Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
References: <20260609061347.93688-1-kaitao.cheng@linux.dev>
 <bd0b7393-8ccb-4d67-8bfc-18c68347122c@amd.com>
 <5152089a-2808-4fe9-b633-b03018105dd2@linux.dev>
 <6b2efdee-95b0-4306-a682-0d0466497ddb@amd.com>
 <2399841f-d834-4652-8285-4a15c7d9a9b9@linux.dev>
 <d974a2ea-6102-45ff-bf36-3b25a2404e40@amd.com>
 <ail8iNvPrJnE7p58@ashevche-desk.local>
 <92683537-8404-47fe-a4ba-160e54870f0b@amd.com>
 <aipx1goKIsk40vrF@ashevche-desk.local>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aipx1goKIsk40vrF@ashevche-desk.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MN2PR01CA0041.prod.exchangelabs.com (2603:10b6:208:23f::10)
 To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH8PR12MB6745:EE_
X-MS-Office365-Filtering-Correlation-Id: f61aad89-bda3-424e-fa1a-08dec794f600
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|7416014|376014|22082099003|18002099003|4143699003|11063799006|5023799004|56012099006;
X-Microsoft-Antispam-Message-Info: EdsaysT4Kc5L+PRmorX9IMzuc338sYsjA0AT/Em4Qcs4KwAMY3mFxqA/E+qMH8k9EeJAz5r/FxAj7mQtXoPez6gztdQEv7dCSRbAduVLjQS7PUYxQ5FWrPuR8pGoJyplKPxg4OUSebvdszbqKh9e3Sc8e2w+AtopU6sSlvBsx5e063g/tSZERR/tflIgBlzVHo0883zuzSyhLbAtLv5KRjhtDT7HRhEO3YrSfUItAha5KN1anW7UocbcOKO0lRahnj3X81awV33ECvzzPXZ81WoQMFt+vHpTUmxy0qMepJHgVlR7zoRXfbShigU11qdbveIICiF3wSBo3DTpWYyy8GNSC44oGUTnpdcOjzs1Dxhx8pe9ncaZm3G0vGy5e8aahXxBy44Y+Odmbhkn2eaapJQuXocSl/YjBmgSo2ZVCOZkwtGpsK8U+0I9kgtbNeNtmrPSCTuWrCpiPEzHSvN5wRRCFg4u8JekUbv47ZGsboXa8L7CygS7b9mbqfY5lmXmpkAQXTurnTgQlmnP2RZbd1comB65H0VZqvhYoLHrT0W8x5aCEEsaSeLIMNyJ8NQq2LOVQplfCIQyxpeRBkNnwzROoydWVduhma1uQzTjNylAeMs0YUSpYos3e1T7Gk7Bhl7Ttfp1RzQNrUUeb5YysAYVN8S+8odXVK/YgLjAceriTRL2zGV9eY/3f/RAA2VAQ9X3jotBGIHHGj7gP/nESA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(7416014)(376014)(22082099003)(18002099003)(4143699003)(11063799006)(5023799004)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RjJMOTZLcjkzbFFzYjh2QWhLZWQ0Q1MzdEZxUXloOVZYamFqQWw2b1dkS3J0?=
 =?utf-8?B?b1ljYkFPY3RiZXBOMXBUWDduaUxlS2JQblNjbTZ2bzQrSk5SZkhEK3o0Sjgz?=
 =?utf-8?B?akxjUkN3eE5aK1VMZUYvVkJ5bHMrZGN2VWJKQ2FEM2lPc0hLSTQ4SWh0RGNE?=
 =?utf-8?B?NFF1ME0rK2pPS1FQaFQvb29iNE94K2xTclFpOWx3UE93QkpoRXNYUGNtaUli?=
 =?utf-8?B?TmpZbCtQYVY1SnQyd0xLSkUvT2VvaTgyTkE3NU5wSnFrTitWRDdKWUw4eG1k?=
 =?utf-8?B?L3FXMU1TVXNWK1A5T21UMkJ0NG1CM2U5SWZCblhLRDVaWldSbFFDenF6UmtI?=
 =?utf-8?B?SGNSTFc5SnVuZ29Nb1JkNGZrQ243TWhoSHVjVVh0dVgwdXYzZzdVNzdMclVS?=
 =?utf-8?B?MC94MHZZWjg0dGNEZTI0ZExKb0FQNzNNM0NnSmcyRFNrTmNKc3MvMzdMYkQr?=
 =?utf-8?B?d3RmbkllbmMrWklzdmFGR2F0dXRXandyZ2lQUGFOQUNYN1llQmZiU3UwNytt?=
 =?utf-8?B?T2lIeENFYllHNHBwSE5nUmorempyUGJrZ3BYQVlsVS95VHlxM0h4TFErNUxM?=
 =?utf-8?B?Y3dHVThPNkJPU01YTkQ3dHNkVE1qbm1Lc0RUazBIRHo1akVzemZwdVc3VDFu?=
 =?utf-8?B?VjFSS1JaOW5WQW0vMW8zTXVTZEtrZFBBZW1MZHQrbThDOFV4NlE4eGNRZDVo?=
 =?utf-8?B?Y2UzRENYK2o0ZlB3K1E3cjFHK09HK3RnK1h1d3cxZkJ2UjZUdWxyRzVvZ09B?=
 =?utf-8?B?bzJHSHdrdEptcEFnSk9NWjM2Z0Vidkt4emdQNmRwUGlDd2dyZ2ZweXJyOFc1?=
 =?utf-8?B?QU14S05QamhrNkpDb1ZjVG5uM2xHN1VHMWxlV1I4WktBWDVrdGdUZFRNM015?=
 =?utf-8?B?alM4N1JpcWp6RkVBaWc4OG5saUJ5cTZuQmNVNUp4NjF5UHNjZVgxbE1UdzQ0?=
 =?utf-8?B?SXRIK3F1Y3RrdDg1UGZ3aDlDOGpRQmh1MGRQbjRjWVRQSE1iYTRFdCtZQkVw?=
 =?utf-8?B?SUNpbWJtRXhVU0dUSDdZRjNUSzEvMjE5am10K3I5eGxaUEtyb1laQ21oSGVD?=
 =?utf-8?B?bW5EN25pUEhsZ3pzcVdISXRGKzdOTm4wUXY1TUlaUzB5YkJBUXhoTVNjb1h6?=
 =?utf-8?B?cVQzZEpBZkIvd0RSSFF1Rnh3MzAvQzVTUHkxQnJkcDQ5VFRJcHVJZVB3NEtr?=
 =?utf-8?B?VWhJOGIxOGxsVHVVS2htSHlnT2RvRXRDSDRySHQzSUhCa05YYkFaVU5IVmJ0?=
 =?utf-8?B?MTIzeHF2L1ZvUzA4K2d0alUwLzZBTTU5bjFYc2U3QTRMb21iQTRMbXpyYUE3?=
 =?utf-8?B?SW8xcU0xczQ5UHhPZHZFbjJHSFM3dlZNQ0JIMXpKNDc3blFOeGtVT29SQmdT?=
 =?utf-8?B?d0o2WVB2dnBhZHM4aXI5cktjcXdvSnY0cTBndjJVcGF0bDJocTQ3TXNFelQw?=
 =?utf-8?B?RllMclJXN09NOGJ4cHNqTXFFaEhSRWRpZDI3V1lDU2NsTjdVQ0hzOWNYb3Nk?=
 =?utf-8?B?OXVWU3UwZ2xVWVFla0ZNZ1U4OHRxSWNsVXFDWTU5WURhaUh0SVB1QVVYNGF0?=
 =?utf-8?B?eTd0bzRkK3RKemxpbG5yOUYwNCsvbGQwY1VaYko2UEo0UW5oaEM0Y2JzZW1h?=
 =?utf-8?B?Vk9adkwzRDFGMEtKRzBWRWlWVUFxT2crdHhRZklKYlhSVTdPWHdYWEtWNDJW?=
 =?utf-8?B?ZEV5bnVycUhZbmVpQXVoeHJkR3hDbUNmZmxrZ1NDcDlMWlNSYm1lOUdKSExW?=
 =?utf-8?B?cUgwak42My92UUI4K2Y1OUJEMHN1K1l2N0V4QUY4SWpweDAvU1lZK0w0U0gv?=
 =?utf-8?B?T1I4enpXaUxTNDdaaXJTcDltWnVNQWlNaGNZYm52U1BwZmVZVXQxcjBTa0U1?=
 =?utf-8?B?K1RJWTZUYVB4UzQ5Zlp1bTh6OHVCd0RUbVFraHFOUkRpUTNZeDlPT20zUXFh?=
 =?utf-8?B?cnJYdEU5RDZkTU1EcWlyakVVaC9UT1lVZEZOMnRUb0oyRkRIUUhCSUhNSmRo?=
 =?utf-8?B?SXlpYWZ2WnFOR212empiNDQvc3JaTTIxUThvTk1NUmIzRHhzWUUrME1IL21Z?=
 =?utf-8?B?cDZqemlkVEdTS1hOM3ljZlhlVWVvb3IxczJ0SUhWbjdSWk1vOHJ3Y01ETHNJ?=
 =?utf-8?B?aHJzYW9HZWNjUURLZGwwanMyOC9nQnhYUlRvazU2RTlvdmlpb2QyVXhwTDVx?=
 =?utf-8?B?Z2dLaGRzS05PSVhJcGFPeDRNV3N0SnRETFpjblRhZWtjdDB2VmlGVC9qM1pZ?=
 =?utf-8?B?WS9ZTUdNRUliR3VOUTZWU2d4OWNXc3pLV1FCOGxXSnE0MDQ0VTFTb29HWCtJ?=
 =?utf-8?Q?Ga2py3ICtnjDm7hfn8?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f61aad89-bda3-424e-fa1a-08dec794f600
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 08:39:33.0985 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VK4Vrg25u8GswaI7/GsPo8VSyT0xUCzzdqkM1rAR+DtrOx/dOOgNdb99UMjZ8CZX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB6745
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linux.dev,kernel.org,nvidia.com,stgolabs.net,joshtriplett.org,infradead.org,redhat.com,gmail.com,linux.intel.com,intel.com,ursulin.net,amd.com,linux.ibm.com,foss.st.com,linaro.org,suse.de,ffwll.ch,ideasonboard.com,kwiboo.se,lists.linbit.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,st-md-mailman.stormreply.com,lists.infradead.org,linux-foundation.org,bootlin.com,kylinos.cn,linbit.com,kernel.dk,sakamocchi.jp,perex.cz,suse.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[62];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[amd.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,amd.com:dkim,amd.com:mid,amd.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5F81266FF17

On 6/11/26 10:29, Andy Shevchenko wrote:
> On Thu, Jun 11, 2026 at 10:01:25AM +0200, Christian König wrote:
>> On 6/10/26 17:02, Andy Shevchenko wrote:
>>> On Wed, Jun 10, 2026 at 11:11:34AM +0200, Christian König wrote:
>>>> On 6/10/26 10:18, Kaitao Cheng wrote:
>>>>> 在 2026/6/10 16:07, Christian König 写道:
> 
> ...
> 
>>>>> Should we revert to v1, or keep list_for_each_entry() and
>>>>> list_for_each_entry_safe() as they are, close this thread, and make no
>>>>> changes?
>>>>>
>>>>> Link to v1:
>>>>> https://lore.kernel.org/all/20260529082149.76764-1-kaitao.cheng@linux.dev/
>>>>>
>>>>> Or do you have any better suggestions?
>>>>
>>>> v1 looks perfectly reasonable to me.
>>>
>>> But why not just hiding that once for all (in case they don't use the temporary
>>> iterator)? Easy to automate, robust — everyone is happy?
>>
>> As far as I can see that is an extremely bad idea.
>>
>> The distinction between the use cases of 'iterating the list' and 'iterating
>> the list while you modify it' is completely intentional.
> 
> What I meant is to keep the name, just drop the parameter (make it hidden and
> being defined inside list_for_each_*_safe() cases).

Ah, sorry I was still thinking the suggestion is to merge list_for_each_entry() and list_for_each_entry_safe().

If the modification is done all at once or in steps doesn't really matter for me as long as the patch can be re-created reproducible.

But I'm wondering if we couldn't improve the name at the same time. The _safe() postfix has caused tons of confusion where especially beginners thought that it is a thread-safe variant, which it clearly isn't.

The _mutable() postfix sounds like a much better description to what happens here.

Regards,
Christian.

> 
>> See the bool type can be implemented by int as well, but it is just a
>> different use case.
> 
>>>> You should just include some patches in the same patch set to actually use
>>>> the new macros.
>>>>
>>>> If you modify the files under drivers/dma-buf or drivers/gpu/drm/amd to use
>>>> the new macro I'm happy to review that.
>>>
>>
> 

