Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJjoKCJFGGr5iAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 15:37:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC62C5F2D63
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 15:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C9F10F1B7;
	Thu, 28 May 2026 13:37:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JBpAak1M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1081310F1B6;
 Thu, 28 May 2026 13:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779975454; x=1811511454;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=h2GRyqedXwqwBbMcz7ycxju533Oz82oeBOSSmQzV7ac=;
 b=JBpAak1MjLVSeGkZaIxgDrORJ6SQBhhOqidMUFoF/s7WjCqeXBu/Dt0I
 x5qH9DDEeiSr4bDJtULVRzwJ37fX3MKqT29xsBWL4w+xkVlzS2+4dXLyE
 m4wCKYNez5Q/vMaJhuAqU5Y6CzPvErVhSYQPtf1213tUcQF8XvxqBWYBg
 xR6K63l6tqxrIbVDAamZb6q/E8m3tyW5TsSjyPv8vjseVoyVf133pelaJ
 /AvR/vcz/a+BwChBzBptLvug1smj40vuhorS4lSCQaUhGl5aL1m57ezxr
 0pG8DYIaWAEwEEPzoyc8BZp4ThxOgdwzbCPsaHrefU2M1u0G+YYc6Vt6d Q==;
X-CSE-ConnectionGUID: roIaTcYVS6mx6MSXE1j0Fg==
X-CSE-MsgGUID: kQTVFk4iR2OWIUxZJJIrwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="91503104"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="91503104"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 06:37:33 -0700
X-CSE-ConnectionGUID: EHCUphdATOuY64i+1CBlTQ==
X-CSE-MsgGUID: 9BVBtTEQQDGKP6IoWfm4KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="247499420"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 06:37:33 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 06:37:32 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 06:37:32 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.17)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 06:37:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M4G+KwVLd4VktiyOlUGVXqq3aa3nE8kvCKPtDgLmNHeOCIJzkMpN99428Bx0iMxSzHo5+6Jkl4/Cz9rQhXyN5mQDByNzNCDFXhAVaestpC3MMMvDlX5+wdr5SLNBZAPWCZr7jSQJXQLG22qmHHeH/efcfd+MOQwpz0BxT5x6iHmq0l+A2d3BXKL/yTOIbdYoHKYumbP4XO43RoRHys0KVbw6RMQ2dHtGGEzszIQa0lVEeMPUlqePCR4NlW+q5BEAUipzwvzAZoBwGgWJjIyLDJbuPtcSl1SpGGEuuIuwhngUzY6vrw0tdHtgA6gDpMuDHQW1INdeW+BsvdurHwM0DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3qwUOOoABab8AdLNQ2c6s1dsSXqX2VUG0G1M3hWVL6g=;
 b=u72ly9zFN9FF3+LBUWP4PjnIDfpTEKWsYw1zPsR8FGBrY2SAzjPm0vhsWlR9rzp/hPQvHQG3bCYbj5oxRYxOaUPaVyNMjrUJvqLim8ewzQoeubX8vzteLS96fNWUfFobohFDNiAEPkMcfa1QI8k9wwGudinKVNKJ6F0Zq2Z7Tx7lWM4lZViqQHg5ve0mgyR+/BVtHA+MTNbZ3gCo2+Q2buOr4of8lfBjohjCb3OnLugfmdMPXm2cOLQX4BtvSzxph3uWVmk50Pe+vWxzHAb8/JffvQBg0xVi95ocvhVW4/Wfos4wT1UQZ8fwczhTeesDpWCR9A751M2DJzrLBTa7aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by DM6PR11MB4530.namprd11.prod.outlook.com (2603:10b6:5:2a4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Thu, 28 May
 2026 13:37:28 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 13:37:27 +0000
Date: Thu, 28 May 2026 09:37:23 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Oded
 Gabbay" <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dim-tools@lists.freedesktop.org>
Subject: [PULL] drm-intel-next
Message-ID: <ahhFE5Co5PdZQKG8@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0340.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::15) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|DM6PR11MB4530:EE_
X-MS-Office365-Filtering-Correlation-Id: 8cc478a5-9823-4dd1-7990-08debcbe4260
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|18002099003|56012099006|3023799007|6133799003|11063799006;
X-Microsoft-Antispam-Message-Info: NBh4tJDGPjloD6EranomJyKJ7BEMDbONDEVvh5yqGvnHj/p671Eiye/xjham+dbqSbe88OR7XTfiTLgB+jSMAETgqJlxH1DWVwPfRvmP4P9r+bUAB6Om98rJ+qLmTVtYnzWpC5OIGQXTA04j+MRRTddTGnAIYERXHMJwHulVs1lAziRKzBtJh2bB8xHNfAQ6xZBMFKZW4BkwN/F8nU9WwQAAxVLCGCfna+9GJJv1rnGHrm6P0K7GjwnLMe0ppmVEjhgtYkjb6XMKjrYzmt0tm/zPiSDD3pHfs4l6UMaywMuChkX646BkARbpp/U8Krp5HKpKqkSNeV3EwoOzjeHQLOVbKDdzBjIfmDB5QTQp1ow4ahp1YgZDrWH2mw/vQSW7zWAUwF3zT7QoX4VZ5NVRhAm+Bw2lJ+H1Ud+lstDYLpOT0yO32jjleN5V6rJFwrsaA88rGWy4lIBuxMm3T5a+j+4KsOrZMvw4EAj8+iuqLrmultSS1SSPNWcUj0lrwgdc2SIvS73tWTfwoqPVALG6f8TmAyr8cpahk0qzAaCsoQIHzNKF4x7g1opbrFn9t93uro0i9enMsnMtPg8l81y7iPp68iLrrxj5ypaVnZ9Vfhfkl/09xmqJZznk/3uFo0BqUv2YokdLOc5S9KtZ8Ah/lw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(18002099003)(56012099006)(3023799007)(6133799003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M2dmT2N5Uy9HYW4wNWp5c29KRzQ4aEtTMzVOU2V1a2h2NU9UZTFRbVE1WjNB?=
 =?utf-8?B?dVp1dEtNcTlyaHZ5STFKTmZKa3VVV0Fuai9qRWhUZldyL0s0T3k1aW9ndHox?=
 =?utf-8?B?UGJ5NFdzZFg4bW1aalkzUkFVOUMwMUpYSkZianBsSzBWUHpqdURwaGNqa0kr?=
 =?utf-8?B?MU94QjZkd2JOaTM3eE5CYnRxa0grTjRxcExKQ29BYldzZlZ5UXJBVkVLYkxr?=
 =?utf-8?B?MmxpZ1FodEZNSExJNG1oeDRGcEE3SVh4U0s3dWZ0QzJucmIwR0tXZ3ZremYx?=
 =?utf-8?B?T0JpOTAvMVdlN1NURDd1ZDc1V3Q1RC82d2dyMW5PWFl5eWx6MkwwTWR4bVBI?=
 =?utf-8?B?N0IyYmxoM2xvZlJJeURvd2w0UzJlNzNoM0tNb1kzU3NrandUYWlQNFA2bG5v?=
 =?utf-8?B?ZjFmb28ybnlGVU9Rc0E5akE2Mkh2cVE3aFhzb3pXQnVrRnRRam1kQXBWcnlt?=
 =?utf-8?B?Qmk0UFRnNzBRNlc1QlMzd1cvL2RaWWdGOXEybUFheTBOSGdQR3hUaVlUQ1Vp?=
 =?utf-8?B?Ykd2b2ZUNjdjZytTMWVnalcwRW9qSm4wdm4wSFVzUlpuNnRLZjFOY0k2SDd2?=
 =?utf-8?B?UlhudXJnYkFSU1RBWXFPU1cyTXRvQXYrMm1mK1l0Q3Z3RWRYUyszRlBBTzhE?=
 =?utf-8?B?ZnBzUnozanZhdVp0VFNMRHhMWG5tWXpsZFY5WnBad25UMzVpM2JJbWpzU0cr?=
 =?utf-8?B?clNQY3kzT2RMRUMrcmpLS2xRZGxhZFVVQ0ZWTjd5Yk5HbUczMVNhYmpzTHAx?=
 =?utf-8?B?NjBLZTB5T3VsWFRmRTdoNkZmMlAzV0Fvc3dXdTJrcG92OG01MWVnUE9nU3oy?=
 =?utf-8?B?d0dtMFJoRHpmSE9vRk5uMzBjNk5MTlpaZ0U5RW8rdzJVb1Q5bnkwL1NmUnlp?=
 =?utf-8?B?L3RvZTRNNHFtMlUrTmtHU2pkZEVjQXFiZCtFWDVuQnpDUU8vb0t3eHZ2UDFT?=
 =?utf-8?B?Z1lLcEl3NXA0MEQyOVlzalFXb250QnVWWVVpZkduNXFJbDQ5OTFDYzBMbnN6?=
 =?utf-8?B?TnlyTkNqWUhGM2F1RTVJdTByclR6QWc4bXhGS3Zwb3RZL09zSzhZa0ZNQWNO?=
 =?utf-8?B?N2Y2UGd1UmxXTGZFVm5UMTN3a1FuSGRabzdXN2ZBdERjc1RmbHc3NkdvQXI2?=
 =?utf-8?B?V0IwUG5JUTVmTkxHbUVxa0UyS3FvY3VvSEh4UnBENjlueU1GUVVuZVdPMWdK?=
 =?utf-8?B?RkM0d3BDdWVSRThsTjBZMG93SUpyNEUycUI4QUlMSzNOaHZBYlFNNStkeXJK?=
 =?utf-8?B?TFpTVG51aWtGbGFwc2RpS09iWnRlUWVnNDZNUmpsTGdCNFpkZ3FzdkhxWlpP?=
 =?utf-8?B?OEJteEpKTkN4UVhkYjByNU90QUtaWjgrN0ZOdHEzcU1aSEE1YWtHYkJOc0ZB?=
 =?utf-8?B?MnJmMDlVZlhCUnRIUVJBcTloK0hra0hMT0VTZ1YwekRHMjd1dUpMNjhDSDRp?=
 =?utf-8?B?OHMzWS85U2M0RWs1OUVaV3BiS2dGdXd1MW91MlBBWHRhUlo1cDhPclc2Q3pU?=
 =?utf-8?B?QXFvZTVBc0hYcTlDcnJKd2YyREVRUzdmV3hveXN4WkRqTE5vS21PdmhzK1NL?=
 =?utf-8?B?U00xdUdONXNGZEdJOGtxTTZHUVhqQzNqT1pJWk9VUUZBTWhWVHMvS0N5eVBC?=
 =?utf-8?B?b3RjcW5TNUFVVXlPc1pZbDV5MFh6Um5tbDg3Umg0Nmc1Lzk0aTd6TjB3djBl?=
 =?utf-8?B?aFRpL2lBb2JZSnQyMjJ6OUNOMVNwOUF1Y3pWcUxzVXZPclN2VzdKbTc2MkRV?=
 =?utf-8?B?YXE1TG9OY1ZCamViK1BMRTVYcVRUWDRqM3JwWnl6aW9ockp1RmNENXA3TzdF?=
 =?utf-8?B?MjM0RkhORnpnbUF1VllCU1YyS1lNT2lNV0haMGFQZjVyOFdzWTRvL3hMUERj?=
 =?utf-8?B?WVFwQXYwdGZkb2ZIUWlpSnhZZVUvNkJaVnFuY3BnY3plMnRzSmdROUdxWTVG?=
 =?utf-8?B?MC9MRTM5b1k0S3pNL2RTWG5xVk11endLeGVLZHVaRnRJWmFCSHZROHlFWHpM?=
 =?utf-8?B?dFhuQkFZV0hnYy9JL3hWRENSREhWNHpSMHRwVVU1OHcwL2JJNW4rbmFXUnFU?=
 =?utf-8?B?TUFBMHV3ZGNOMFJHWllBVDlWaG04UnpMc25vRDFSc08zaVdncVpVcXBQWllz?=
 =?utf-8?B?ZlN5STd2U3k2bmk3Mkp2RWlTQUMrd0RJc0hhVUw2NjdYYmFPOU9Dd0hTaDdN?=
 =?utf-8?B?SHhDYnZMc3pNd00yVDMyalFBR3cxTU4xVXR3d0F1TTVWQk1oak8ydXZDL0NU?=
 =?utf-8?B?VUdwZHo0MVYrUG84Y1JOdDFiNVlNa3FucnJoNHdiaGl2NE12VTNiYkFHY2Rq?=
 =?utf-8?B?WThMYzhpZXlJRUpVbER3Q1Vlc2o0Vk1WdksrVWRyWmxINytBMitSUT09?=
X-Exchange-RoutingPolicyChecked: ADBQollGUhvqwEHd/oOfp++XyOohzaxx7k7KH26xY7A9TMmOvQsmAwvHIky3702E6qvayWbv1ApvzqF/QkE5OFlGgD+Sbr8k6ruReIN3XTslv10/QwYqTypdL3D4lYIqbYbzjLJ1tO4cndU81cgSjZ1ileUYJ6C1wyCKbfOiLqn8JNNwqbaK04lLWsYlZZ0m7MYOxy2MHM9K+Ar7nKOXTwU1X+2Ll1SiFmKi2ZLJ0XUZhiy70Ze8gx7I5z9DgtlZmYRB+gbt1P7Sq/nJlqcmAsDM6THuH9rPrBPNHWW3iQphdeysUK4CVu79lctuQmcc1glBGZroSi2MFx3NefO/Tg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cc478a5-9823-4dd1-7990-08debcbe4260
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 13:37:27.8932 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cUbdKKjwmnIt4EfwDRDAPaQ6u1liYGoCdjTtgIBM2oGSThrZraCltMOS/KgSKwots3nf9ekmi54wfzZhc4AUFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4530
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EC62C5F2D63
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave and Sima,

Here goes our last drm-intel-next towards 7.2.

Thanks,
Rodrigo.

drm-intel-next-2026-05-28:
Xe related:
 - Fix Xe oops in suspend/shutdown when display was disabled (Jani)

Display in general:
 - More general refactor towards display separation (Jani)
 - Preparation for fix Adaptive-Sync SDP for PR with Link ON + Auxless-ALPM (Ankit)
 - PSR related fixes and improvements (Jouni)
 - Use polling when irqs are unavailable (Michal)
 - Split bandwidth params into platform- and display-IP-specific structs (Gustavo)
 - Revert "drm/i915/backlight: Remove try_vesa_interface" (Suraj)
 - Casf & scaler refactoring (Michal)
 - Add support for pipe background color (Maarten)
 - General clean-ups (Maarten)
 - Sanitize DP link capability change handling (Imre)
 - Multiple BW QGV fixes (Ville)
The following changes since commit 1f863fe67343e2f45fc0af75ac94c3705bdf6537:

  Merge tag 'drm-intel-next-2026-05-14' of https://gitlab.freedesktop.org/drm/i915/kernel into drm-next (2026-05-15 15:37:16 +1000)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-next-2026-05-28

for you to fetch changes up to 7185566c3db090aa5e17a17bca92dfcef9656b03:

  drm/i915/dp: Account for AS_SDP guardband only when enabled (2026-05-28 16:48:10 +0530)

----------------------------------------------------------------
Xe related:
 - Fix Xe oops in suspend/shutdown when display was disabled (Jani)

Display in general:
 - More general refactor towards display separation (Jani)
 - Preparation for fix Adaptive-Sync SDP for PR with Link ON + Auxless-ALPM (Ankit)
 - PSR related fixes and improvements (Jouni)
 - Use polling when irqs are unavailable (Michal)
 - Split bandwidth params into platform- and display-IP-specific structs (Gustavo)
 - Revert "drm/i915/backlight: Remove try_vesa_interface" (Suraj)
 - Casf & scaler refactoring (Michal)
 - Add support for pipe background color (Maarten)
 - General clean-ups (Maarten)
 - Sanitize DP link capability change handling (Imre)
 - Multiple BW QGV fixes (Ville)

----------------------------------------------------------------
Ankit Nautiyal (18):
      drm/i915/dp: Fix readback for target_rr in Adaptive Sync SDP
      drm/i915/dp: Use revision field of AS SDP data structure
      drm/i915/dp: Set sdp_type in AS SDP unpack
      drm/i915/dp: Include all relevant AS SDP fields in comparison
      drm/i915/psr: Simplify the conditions for SCL computation
      drm/i915/psr: Allow SCL=0 on platforms with always-on VRR TG
      drm/i915/psr: Add helper to get Async Video timing support in PR active
      drm/i915/dp: Add member to intel_dp to store AS SDP v2 support
      drm/i915/dp: Allow AS SDP only if v2 is supported
      drm/i915/psr: Write the PR config DPCDs in burst mode
      drm/i915/display: Add helper for AS SDP transmission time selection
      drm/i915/psr: Program Panel Replay CONFIG3 using AS SDP transmission time
      drm/i915/dp: Set relevant Downspread Ctrl DPCD bits for PR + Auxless ALPM
      drm/i915/dp: Program AS SDP DB[1:0] for PR with Link off
      drm/i915/dp: Compute and include coasting vtotal for AS SDP
      drm/i915/dp: Compute AS SDP after PSR compute config
      drm/i915/dp: Enable AS SDP whenever VRR is possible or PR !async
      drm/i915/dp: Account for AS_SDP guardband only when enabled

Gustavo Sousa (6):
      drm/i915/bw: Don't call intel_dram_info() too early
      drm/i915/bw: Extract platform-specific parameters
      drm/i915/bw: Deduplicate intel_sa_info instances
      drm/i915/bw: Rename struct intel_sa_info to intel_display_bw_params
      drm/i915/bw: Extract get_display_bw_params()
      drm/i915/dmc_wl: Remove macro HAS_DMC_WAKELOCK()

Imre Deak (4):
      drm/i915/dp: Reset link params after a DPRX capability change
      drm/i915/dp: Add helper to set common link params
      drm/i915/dp: Cache max common lane count
      drm/i915/dp: Detect changes in common link parameters

Jani Nikula (21):
      drm/xe/display: fix oops in suspend/shutdown without display
      drm/i915/irq: deduplicate dg1_de_irq_postinstall() and gen11_de_irq_postinstall()
      drm/i915/irq: constify pipe stats parameters
      drm/i915/irq: add display irq funcs, start with intel_display_irq_reset()
      drm/i915/irq: add intel_display_irq_postinstall() to irq funcs
      drm/i915/irq: add platform specific display irq ack functions
      drm/i915/irq: add platform specific display irq handler functions
      drm/i915/irq: add intel_display_irq_ack() to irq funcs
      drm/i915/irq: add intel_display_irq_handler() to irq funcs
      drm/i915: relocate intel_hpd_cancel_work() call
      drm/{i915, xe}: move xe_display_flush_cleanup_work() to i915 display
      drm/i915/display: switch from drm_for_each_crtc() to for_each_intel_crtc()
      drm/i915/display: always pass display->drm to for_each_intel_crtc*()
      drm/i915/display: pass struct intel_display to all for_each_intel_crtc*() macros
      drm/i915/display: stop passing i to for_each_*_intel_crtc_in_state() macros
      drm/i915/display: stop passing i to for_each_pipe_crtc_modeset_{enable, disable}()
      drm/i915/power: make intel_power_domains_{suspend, resume}() static
      drm/i915/power: rename intel_power_domains_*() to intel_display_power_*()
      drm/i915/power: drop resume parameter from intel_display_power_init_hw()
      drm/i915/power: add "runtime" to intel_display_power_{suspend, resume}() names
      drm/i915: rename intel_runtime_{suspend, resume} to i915_pm_runtime_{suspend, resume}

Jouni Högander (7):
      drm/i915/psr: Add defininitions for INTEL_WA_REGISTER_CAPS DPCD register
      drm/i915/psr: Read Intel DPCD workaround register
      drm/i915/psr: Apply Intel DPCD workaround when SDP on prior line used
      drm/i915/psr: Apply SDP on prior scanline workaround for Xe3p
      drm/i915/psr: Block DC states on vblank enable when Panel Replay supported
      drm/i915/psr: Use DC_OFF wake reference to block DC6 on vblank enable
      drm/i915/display: Handle odd position for planar formats in selective fetch

Maarten Lankhorst (2):
      drm/intel/display: Add support for pipe background color (v4)
      drm/i915: Remove useless comment about MTRR.

Michał Grzelak (10):
      drm/i915/aux: use polling when irqs are unavailable
      drm/i915/casf: fix comment typos
      drm/i915/casf: rename *_coef*() into *_coeff*()
      drm/i915: rename t into tap
      drm/i915/casf: rename sumcoeff into sum_coeff
      drm/i915/scaler: s/i/scaler_id/ where appropriate
      drm/i915/scaler: remove id in favor of scaler_id
      drm/i915/scaler: unloop scaler readout that is run once
      drm/i915/scaler: abstract scaler searching loop
      drm/i915/scaler: eliminate dead code

Pranay Samala (1):
      drm/i915/color: Fix HDR pre-CSC LUT programming loop

Rodrigo Vivi (1):
      Merge drm/drm-next into drm-intel-next

Suraj Kandpal (1):
      Revert "drm/i915/backlight: Remove try_vesa_interface"

Ville Syrjälä (10):
      drm/i915/bw: Fix num_planes handling on TGL+
      drm/i915/bw: Fix DCLK rounding mess
      drm/i915/bw: Fix bw rounding direction
      drm/i915/bw: Fix 'deinterleave' rounding direction
      drm/i915/bw: Fix rounding direction in clperchgroup calculation
      drm/i915/bw: Fix DEPROGBWPCLIMIT handling on BMG
      drm/i915/bw: Fix/unify peakbw calculations
      drm/i915/bw: Round the PM demand bandwidth down
      drm/i915/bw: Remove deinterleave fallback for TGL+
      drm/i915/bw: Do not consider tile4 as tileY

 drivers/gpu/drm/i915/display/i9xx_wm.c             |  32 +--
 drivers/gpu/drm/i915/display/intel_alpm.c          |  20 +-
 drivers/gpu/drm/i915/display/intel_atomic.c        |   3 +-
 drivers/gpu/drm/i915/display/intel_bw.c            | 315 ++++++++++++---------
 drivers/gpu/drm/i915/display/intel_casf.c          |  32 +--
 drivers/gpu/drm/i915/display/intel_cdclk.c         |  14 +-
 drivers/gpu/drm/i915/display/intel_color.c         |  49 ++--
 drivers/gpu/drm/i915/display/intel_color.h         |   3 +
 drivers/gpu/drm/i915/display/intel_crtc.c          |  17 +-
 drivers/gpu/drm/i915/display/intel_dbuf_bw.c       |   7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c           |  10 +-
 drivers/gpu/drm/i915/display/intel_display.c       | 208 +++++++-------
 drivers/gpu/drm/i915/display/intel_display.h       |  84 +++---
 drivers/gpu/drm/i915/display/intel_display_core.h  |   4 +
 .../gpu/drm/i915/display/intel_display_debugfs.c   |  12 +-
 .../gpu/drm/i915/display/intel_display_device.h    |   1 -
 .../gpu/drm/i915/display/intel_display_driver.c    |   8 +-
 drivers/gpu/drm/i915/display/intel_display_irq.c   | 252 ++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display_irq.h   |  37 +--
 drivers/gpu/drm/i915/display/intel_display_power.c |  90 +++---
 drivers/gpu/drm/i915/display/intel_display_power.h |  21 +-
 drivers/gpu/drm/i915/display/intel_display_trace.h |   6 +-
 drivers/gpu/drm/i915/display/intel_display_types.h |   6 +
 drivers/gpu/drm/i915/display/intel_display_wa.c    |   2 +
 drivers/gpu/drm/i915/display/intel_display_wa.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c        |   9 +-
 drivers/gpu/drm/i915/display/intel_dp.c            | 180 ++++++++++--
 drivers/gpu/drm/i915/display/intel_dp.h            |   2 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c        |  20 +-
 .../gpu/drm/i915/display/intel_dp_aux_backlight.c  |  19 +-
 .../gpu/drm/i915/display/intel_dp_link_training.c  |  20 +-
 .../gpu/drm/i915/display/intel_dp_link_training.h  |   3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c        |  13 +-
 drivers/gpu/drm/i915/display/intel_dp_test.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c     |   8 +-
 drivers/gpu/drm/i915/display/intel_dpcd.h          |  15 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_drrs.c          |   4 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c         |   6 +-
 drivers/gpu/drm/i915/display/intel_fdi.c           |   3 +-
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c |   4 +-
 drivers/gpu/drm/i915/display/intel_flipq.c         |   2 +-
 drivers/gpu/drm/i915/display/intel_global_state.c  |   8 +-
 drivers/gpu/drm/i915/display/intel_initial_plane.c |   4 +-
 drivers/gpu/drm/i915/display/intel_link_bw.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_load_detect.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |  36 +--
 drivers/gpu/drm/i915/display/intel_plane.c         |   9 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_psr.c           | 134 ++++++---
 drivers/gpu/drm/i915/display/intel_psr.h           |   1 +
 drivers/gpu/drm/i915/display/intel_tc.c            |   2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c           |   4 +-
 drivers/gpu/drm/i915/display/skl_scaler.c          |  76 ++---
 drivers/gpu/drm/i915/display/skl_universal_plane.c |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c       |  38 ++-
 drivers/gpu/drm/i915/i915_driver.c                 |  32 +--
 drivers/gpu/drm/i915/i915_irq.c                    | 185 ++++--------
 drivers/gpu/drm/i915/intel_runtime_pm.c            |   2 +-
 drivers/gpu/drm/xe/display/xe_display.c            |  64 ++---
 60 files changed, 1284 insertions(+), 869 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dpcd.h
