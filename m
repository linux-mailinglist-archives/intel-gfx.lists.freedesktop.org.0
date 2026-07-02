Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id E4ZzI+bRRWr1FgsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 04:50:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F256F31B9
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 04:50:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="iIXh/Yuv";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18F7310F13F;
	Thu,  2 Jul 2026 02:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9964510F138;
 Thu,  2 Jul 2026 02:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782960609; x=1814496609;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cVcgkkpZzy/2fdWawd80+6N3ZR+wxDh8bSZnLQQYJeQ=;
 b=iIXh/YuvBcQ93Q9OBtZceA7ooCWUo/w/iYoEf/oFjFt2zugZOIMOtF0a
 APIVsE5Mp7xgLiD3yxvRJiHf+UaCRt9uPB3c/+aJQdnWaAkoNZjLYcD2i
 4SE4tC27WirZWsHmZjkFaUd7c4JjSVlbwNcJM0cv4bjAjLCme7l9Dyq55
 9OvYdaOK8XnyyPIt/za1TO61g9wOj1HHPmfeBaaeq3m9Y1UThlgddB8FE
 t74VJCpuoj3MNXbD+GA2cPOpym/xcydmIP9JGi1h21fJwqMlSSxTeSRT6
 inMZwM8FTv7GErKFki5cLd6cm0T8He5/tkGNCbHxOBJzzwOF44fNNd6k+ Q==;
X-CSE-ConnectionGUID: IE/Gs6sHRhKwSSsrNtdSIQ==
X-CSE-MsgGUID: ZzoYaxP+TpmMyDMG0adh7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94355370"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="94355370"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 19:50:09 -0700
X-CSE-ConnectionGUID: UaSu9uFvT+mMMuV35gOBLA==
X-CSE-MsgGUID: Zh7++YQ3QlieRRyy3AyD1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="252295017"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 19:50:09 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 19:50:08 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 19:50:08 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.32) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 19:50:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G6jDla9wVsyqiOQJW3JUIjiH8hy4ZuhLmniIEZZjAssY0mynkDixb+FbP+dEBd6CZCzoj1NN8cGGPCIE35ILts3x9BaFChVepBHh+GJwBI7LNlYzhLKL2PHEAC9dic/WHrteOPtX1OfoZeGZDArZWnHJKF1z8OtIkXH4VNHBdpVBajpzOtgHbneV06kJcT5m4jB2fkH19eTzX0RLLQYt17HEdfRxbGstmjo51SpGfCRWznye4cnus2RsUo8zmMCrwsFrYTZwmG42FveaDhx91dafF0n9hfLbCTOX+DsuRFXTLtaqUd6k6tmOx41cLMtMruuKjVeooCw5NM2DMWgoPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T4saz2GUCfY41CAJNPPIP2hLgV6i2MwCnTCi0QWvpgY=;
 b=gsOCJ3wFO1/4l5fJ9Kp9uLrumgALCV1lx0/vBoagbWckXlLEtUWecDsrn1NJzjNWdTmwi76YOO42P5L0lrE+AI+lxH4rkpdoO2gabMsiK8G3dYvbYe3yq41F8B4ckf9GFzx5H9R1P6SVphwhUmeu6AnGBoOv1wiOCXkSFUOE/JRAjeWSvX4Sy3/trHXAi20yjRXjvGpTO3aXvD2ekj0aq/G7XU5zjoRebV2SV3l10WwJvGYq5sg9sMXNaSTHXTbBpRe4kPIKGk8+2V0oQ9efI7OMcJHi6QOAX5d6hhWyVzHqG55Z+bsDz0A1jxAlrUf6u6N3EgrnDSRZK7ajuR23hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by CH3PR11MB8659.namprd11.prod.outlook.com (2603:10b6:610:1cf::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.18; Thu, 2 Jul
 2026 02:50:06 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0159.016; Thu, 2 Jul 2026
 02:50:06 +0000
Message-ID: <c06a8652-7fc3-4a03-9acc-32b56a562898@intel.com>
Date: Thu, 2 Jul 2026 08:20:00 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] drm/i915/ltphy: Fix SSC Enablement bit in
 PORT_CLOCK_CTL
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20260701091503.1302226-1-suraj.kandpal@intel.com>
 <20260701091503.1302226-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260701091503.1302226-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0051.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d3::16) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|CH3PR11MB8659:EE_
X-MS-Office365-Filtering-Correlation-Id: 23b31d15-2f51-4c8a-a566-08ded7e49f6d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|11063799006|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: dwN3RArGRfIEssWNc+gGKvXvgG18afYSbvwOGfizRnmv7yG5nY9V6I7ELOXFpsITA/QaL9sBFB1y/XqZME3Ne6ZUx09rA6IaVygbJ+syo4rx7XNhq5nS7UWMwglr1hegpQFyyoU8rAgUXa56XD6Upd8MbLjXBfQk7wKU6aCzsLe1znPsIoiZxGpQVLi1Oxh2FYHAYXIiXq8X3U+HQ+lU8J5JoJJwu7+ZZT43vPxV6t0oCpvsMKGswFFUipFTmK4rLVV8GXbw7rSurNaK4wG8b+ZffJRPb0vKKkRyFxOQyAUf4OBvESEeOeo/csUmShIh2Dc3Wo0hXOgE03H9sqXTo87bPdx0BUGFzrF5bhtfhZj52Sl6eYZFSpvgd8oa1PbHwlzZIzYOU3ahrXz6Bb3uGARjy5kes61cdoaJWdOfZXcyS9hWLUdPsOcVEZjyArvD1zbEUq1N+Wk/6xzheeg6KG5W9/8hdJ9Z9oJH56sv1MTexKxUBqRiHAH4OGW4eqqjWpl3kqZQPa0uDVg/JYbuhFnpxcQcQ50f9EdUzqnatCfgWpF4XQmzPRiL4gpn95KuEhBsLWTAc1OZjbFIbAkDbd9N1vgKVPNdcxE7feRb+hH83JEGwesr7Mkr9Lep7FajNbhmZ89gDvCkV9AVXYMRHTBRm5UHBCtza7bB8OzAWuY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YXdCRWVCTE9md3BDYVJ4cXgvUVRDRFowOVFzRFp1SEZzUlpubFUwaGd5b2w0?=
 =?utf-8?B?Vk5vdVI4bHJ2a2x2bDc4NG4yMzJwL2ZrcldpVk5nT0hud2tDYUVBeTFPaTRZ?=
 =?utf-8?B?M0lhbTQ4OGlEMEY3MzFjdlZaMW1wejFxTUtCWUhzU1c3dC9Mc2RQcVZOZGEv?=
 =?utf-8?B?UnB1S2pnMTJjUDdsVlZqQld3aTBZWVZEMjBzcGxnV0FQRVVTNXlXR3VFRnBi?=
 =?utf-8?B?L1VDZWZMbXZIZ1QwcUFrVDJuZ2lzRnd1aTRMaGtsMTJyc0VIS0NhUktqQjdm?=
 =?utf-8?B?VzNDOFFVaFBuc1ZWUjlVWjB2OEw0bUFDRGF3RDdrZ2dXYzJHSzJUeHFzejJw?=
 =?utf-8?B?eWNkVzBQbTJjOTBZWGhXVitPVEE0aHVYZm54WHhaWGQxbXV4QkFHakNSSjBz?=
 =?utf-8?B?bkdIbVNYUVVzc1dSaGVDd0NlMjVZZjJsREFpSjNnSEo0WkZTK2l5NlJveFYz?=
 =?utf-8?B?TWhRNWJ0UkpXUXJ0L093OU1nNUNVRHZ4TGpIeWlBaUoySE82NFdQTmc2Y3hp?=
 =?utf-8?B?VWJ0QmdsOWg0YmYyM3F3dWwrblNPMEFVWituOFg0cmdVcFpLUjFyaE1Td2Ix?=
 =?utf-8?B?empBbTNUYnhIdkEyMVFEcnZNUHhkbnloSG5wdDN4QVRmRUNpUzFVUkg0MTQ5?=
 =?utf-8?B?L2ZUN3c3aDd4OGozTU45TEpRQW5ZUWh3bUd0V2RaKzdtVEM3Ull3akhvYnhq?=
 =?utf-8?B?TzFNemNoc1ZMUmNaZWxBbXhxa2lkODlpMzFXN1FCZFF5dy90L2pWVk5sU09F?=
 =?utf-8?B?Y2xCdyt5NW9oOC82VksrKzhrb2FIcXJVQnZ5b1BYdndRTG5MK254Z3hvR0tP?=
 =?utf-8?B?K0o0V0xDWllqWjhKN2M4ZU1LTjk4NFpCL1hSWXJtREJFLzd3czkzOURWVWdo?=
 =?utf-8?B?NFJFU0FHbXlGcjRHZS9WODYzcnpMZXRBNmV4THMvZnpIcm5Dalh1ZytaVWkx?=
 =?utf-8?B?YzExdkZ5YTQrTGl6SzZaTWo0eWNxL1gwV2ZYNi9POUJiQTU4NG1XNXRyajFX?=
 =?utf-8?B?ZnVkOGFNWjZvcnJYVzMydmxUK2xKRzB3c2V0TloxL3ZVeGluc2FSaGFNTXIy?=
 =?utf-8?B?R3laTmNtQTlSV1g3TTZGclg0VjlpTTZqeDlvN0NGY0ZNa01RbmtXdTRDOERU?=
 =?utf-8?B?bEQ3bkhrUjBaUzU0eTFvaHZiU3BMUDlMcXA3KzdRK2tVOERXeFBValdMOEdL?=
 =?utf-8?B?cGVkSGxIL1pGbEhYTmRJY0haOGxDeTR3K1ViRHpTU3ZGTDNBYm1MWFhpZXAv?=
 =?utf-8?B?WmhCKzFqa0V5Mm8yZi9aQTlqRXNFdm1mREY2dEpiQ0Jpc3VVWlVzenU3cTFS?=
 =?utf-8?B?RGdtb1ZHSkh5Q3p1cCtaSy9XY1ROSWpwTUw5Zm1aeGRkcW1TeWc3cEpxVksy?=
 =?utf-8?B?WHRIQzZmT2RKRW1abGxJa1h6TitNeUIvODJXZFg2T1lQNVpLZUNqMVBqN0NV?=
 =?utf-8?B?cC8vVUZHVzAwNTJQamp5T2VubVk0MFExNHFCWUZNVi9IUHg1dUpia0p0Vkpv?=
 =?utf-8?B?ajhrdWJtWmw3UnhMcmYrWXNUZUFIUmlQRS8xU0xaMnRrWUVZeHV2Y1haRzdT?=
 =?utf-8?B?OS8xbng5Uk96Tm1hNmNjZkhIQnV6RzFJcjBsMGtQTUs1U05TV3ZxZWZnODBz?=
 =?utf-8?B?bHJrRHVQOFdPUWlpbjYxeE9NODVhWnh2V3FQMU9JMmppQURXZW9NeFVTZU43?=
 =?utf-8?B?TnZ6RnM1Vk94UXdpZ3Y3VHNFMENRaVZSVDlLYlk4Q1pIQjNjbnRjV29qdVl5?=
 =?utf-8?B?bUFQWXUxVHk1bTc1TTdqNW56SkFjUytGek5FK1ZSVUpTZlhmQ0dkSHhLTita?=
 =?utf-8?B?SWxYQTRoN3JsMTBRT3I4Z2UvYjBhSFpLTVVQdUdvSFdCUEtWMFhqQ1o0WXRR?=
 =?utf-8?B?ekJ3WElNSEFtenZCTVlMdWRWMlMzN3lsb1NyZG8zZTh5Wm5iMUhqZGlLQXEz?=
 =?utf-8?B?eXozd3dOZHlUMldhbUFvNzdYZERlaDVtY21obFAxa3NsVEFjYm5XTDVQV2cy?=
 =?utf-8?B?dzlXTHJ2MW1VcHRqUkQ1bTJDcGRjOUxGT213YjJCUlN4a21MK0Y2VkczZWJ1?=
 =?utf-8?B?MzM3UkNjS1hDb01nTS9PRmhSTHZNay9Yb21TVlJTZ1h5TGF1UjQ1WWpJZWkr?=
 =?utf-8?B?aWxiZEI3MVVkN3pJeUwxa2lWOExHNkdtbVE3MkQ1TERMRTBYTnZ5WkdQUTJw?=
 =?utf-8?B?RjFDWFZnZkJzTTBkYldFVG5sdjc3NU05Ylc2a2NnK3RUNGkrNzBKQ2RaOHNu?=
 =?utf-8?B?ZkZtSWtSTXRWSUd3Nk1mZThZRFN3VEcvYXN0SnJnNjJSRHJSbHJQSStpa1c3?=
 =?utf-8?B?SWIzVkJMMGNwRy9qY1ArTmk4QnRnbU1zOEJockxZb29iSXdHQ2gxTXlXUUVZ?=
 =?utf-8?Q?9kn5J5oLzz4moh4E=3D?=
X-Exchange-RoutingPolicyChecked: sBwWU8D4LDIAxcKKmUzZVCKO7Z8YJWtCiPKq49/7hSyd4m+qzPEnEQ+WNdsFX6es7Wi8FdiEQKPHJo6UUr/qXiyoJAhevFK20tUZOSNVTsM3LuHuS97y4JxZf92lojohAwt9IIIX6kX6OxovkVXpjtNjE1R/tP3ON6166EDJRBvMSHl8vPsJtX4AxuxiCdFHvUFsgmQj4BMCem65pCsbysUoKS6es6W+yLfXoEhcty7koezfOE/Yt3rCSZ7J5Y1wysUj61yGTY4+WICXzLbjrMlS7ooho+jThu9ASk1l3d+51ZGKyi3RelOJV43hjfx6H26r6i12CHBkCW04fVjJdg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 23b31d15-2f51-4c8a-a566-08ded7e49f6d
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2026 02:50:06.4588 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E3bi1SxyBJQiOYcF2/hgkTSk3iKN19yncnXbIddYWaH2T04lKTncykuMnbB3n+/Zc0eSwPc8+MooEAzyPC4cS65UsWzWpzs/OMUj4KivW04=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8659
X-OriginatorOrg: intel.com
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 88F256F31B9


On 7/1/2026 2:45 PM, Suraj Kandpal wrote:
> According to Bspec we only need to write SSC Enable PLL A bit
> and leave PLL B bit alone in PORT_CLOCK_CTL Register.
>
> Fixes: 3383ba2479f7 ("drm/i915/ltphy: Enable SSC during port clock programming")

Checks out with Bspec: 74667, 74492

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_lt_phy.c | 6 +-----
>   1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 956181f80d35..8fc6d230493f 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1223,11 +1223,7 @@ intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
>   	else
>   		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
>   
> -	 /* DP2.0 10G and 20G rates enable MPLLA*/
> -	if (port_clock == 1000000 || port_clock == 2000000)
> -		val |= XELPDP_SSC_ENABLE_PLLA;
> -	else
> -		val |= ltpll->ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
> +	val |= ltpll->ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
>   
>   	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
>   		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
