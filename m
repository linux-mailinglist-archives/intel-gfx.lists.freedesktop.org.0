Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95495C2722F
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 23:41:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AD6710E35C;
	Fri, 31 Oct 2025 22:41:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c4TSEd3z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C855110E239;
 Fri, 31 Oct 2025 22:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761950505; x=1793486505;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=AMeNVow4Qv/mWTOLXOkx0I+r2KYBjmGZAc1tZcCuIJc=;
 b=c4TSEd3z4yxSWj7Cs+FtFkIcqYYvK2dSzVDXIHGPNLgwOL3N3ngk9WlR
 /gzB//dj9aSBsZ7RxBL2ZSv37b6DvSEzJup50n+IrbAXCwEV+pUDmnHW/
 XkUaMomKl8vprLx++rL7vOmrnzttSz/6n+/q3CaOx1Jhdts7CozvgzF80
 90pcURFO9KRGYXCyYrUkwkuOPczWvCadkAwoQJZ/dGwkDziVqV69dTEmy
 p0Gp3USV21lFwmEoXfpuq68o09ifSZ12DVvQd86nK1hhedDrb2Tm7K0Mh
 sI6hweBo7oo/AB2fAO3LEulKh//Vq1ak29ustg6tBEb+BmpRsrG4/CTjH A==;
X-CSE-ConnectionGUID: OWdvjF4oRu6hYKbO3tn3bQ==
X-CSE-MsgGUID: 0GVWQ8tGRqKKuQzZNzBYsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="63814982"
X-IronPort-AV: E=Sophos;i="6.19,270,1754982000"; d="scan'208";a="63814982"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 15:41:45 -0700
X-CSE-ConnectionGUID: DQg89KbGQeuyu7FwD7yIFA==
X-CSE-MsgGUID: 7ZBNjGb2QoWxssDvnB+jhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,270,1754982000"; d="scan'208";a="216998076"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 15:41:44 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 31 Oct 2025 15:41:43 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 31 Oct 2025 15:41:43 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.47) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 31 Oct 2025 15:41:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s4k99TwKthSOj8SIz5r1/154WRS9xoxwD+MFmIZJ0dwFbTQTvx2BV9g2m1rVqhg42e+N4WcLTB2ukjGFBzS3aR2ZlCrjm7/vI7Y+zzJSrromwSX6OdhBA+gov9/qzkvrocekn6MyN+dvcvlRrtqqVXiqloVJxkuD2tfhx+DFng+y9+2Ov8LrfBiZHlfHJlS2IBcc8y7epVaYxf5vwrJykdyfdgelEyVwRbghIcK/47xNu0xjpxW4viJ7vzwHiup9WujUBHdW61DkBt5oHmALHCYpNqWlcr+uC8cfuzpcI+93ZkxROZShnJdGEpQRWfkntJDySDJ16z+ioXbPzaDFhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7QnIGWxRqaVym8pvED7E1sBPazU/hDV34+f7ukgnxqo=;
 b=Vs0Qo4wjoXNsypp6bpKr/BjLq/d28dQYAM+os6NO4a3QRuv5EIDqh/0ksTogPkXQF9zqstcjCY6XKJ048VYrOpPzX5UO++2TbWQmyd5+kRZyTbShw00VNQdJzfJ7TUPWCQIyubi7RFrj9Y+Ngtlm1mWjzMk6UaUiFxfK2Fdx71jxDdBt3k+Nkkk93MeiftseVzNax/eJJfwvYh9WTjpDoCoBJYpCFw59RMYgqUt8moTSsgtFK1o8XKVyGQ1MZZTDPjsxm5DDsr2WChcafexW9u7GvoYodMiFwsIaa/K3Xv80OYAdpo3B8BXHqyJdbbXWnol+vJ8HgpSgyoI7UWNfLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB6834.namprd11.prod.outlook.com (2603:10b6:510:1ed::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Fri, 31 Oct
 2025 22:41:41 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9275.013; Fri, 31 Oct 2025
 22:41:40 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251031221723.GB2980942@mdroper-desk1.amr.corp.intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-11-10eae6d655b8@intel.com>
 <20251029205439.GB2806654@mdroper-desk1.amr.corp.intel.com>
 <176186136767.3303.5566189832436852888@intel.com>
 <20251031221723.GB2980942@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH v2 11/32] drm/i915/xe3p_lpd: Underrun debuggability and
 error codes/hints
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Fri, 31 Oct 2025 19:41:36 -0300
Message-ID: <176195049617.3685.2573745712863555892@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0165.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::20) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB6834:EE_
X-MS-Office365-Filtering-Correlation-Id: 7dc87f70-7ea2-4d3a-b243-08de18cea8cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U1BhOXpDWE5pZDNOWjM4amhIcG0wZlhEZFkvblZHOUhSL1V3MUVyaWlCVjNz?=
 =?utf-8?B?SGVNajFmcnh5SzdpOXRFNlJMRnRvWFpQc3FhRTFjaXY0Z1N3QXo0ay9XdkZr?=
 =?utf-8?B?QjBhV2duS2dmTEdUeWpYTmJBcHlZMC9oU2xIN2dDUllDdlk5MDhPRGNYLzI3?=
 =?utf-8?B?QlF4LzdQczIzd3pFcDdMcmpTdi9OSDJacFEwa0RwejNYck5uQitaa2FFcTZZ?=
 =?utf-8?B?UWsvdW5IMWdtdGY2VThyelEwNlBnM0RQSm1lc0gzYjNWZ3Z6a0ZlMUJBSXB3?=
 =?utf-8?B?TCtYTzh3VUJjc3hibUpibDlmMWQ2UDZ1MUNZNldHOU9Ra1M4aVdqVitsQmpw?=
 =?utf-8?B?djVSdEc1emRseTBaMjV6QlJYbjdsNjVWSHNxbmtBQlRTellMR1hULzUySG1z?=
 =?utf-8?B?b0tlelVPUEdrTlI1UGxCRE42SjQ3dkpMV2Y4ZkNpV21mbVV5YTd1NjRtVkM4?=
 =?utf-8?B?UVc5VUJTV3ErZDhyOTlEVzl4dHBKZEhJM0xVdmQ0OEhCemFPbXFkWTJTb3pN?=
 =?utf-8?B?LzJBQjM5YldDdnJmcm8rczU4YVBvL1I4NmNYQ0U2NUpQNVpITEZ5NC9BNjFu?=
 =?utf-8?B?TUJPczVTdTJwbUJ3UWljd0JVYU1kL2R5K2JiMExGSXV4RXlHV3ZTTVMwcEU5?=
 =?utf-8?B?MWhrTUd2cmR1d3VnZThsdE12WFRta3J3YlZhQnE5cXI1YS8vYkRWRXRtR0xH?=
 =?utf-8?B?bVoxcHdJZi9hS3ZzaHgrS0dPSHgrY2laa2lGTXJhaXowMUNnSndQKy9zbUZu?=
 =?utf-8?B?QmxRcHZVbTdwSDF0NmRybzJmT0YzMlBRb3h2eVZtaXRYQWI0OVY3S3B0QlB2?=
 =?utf-8?B?eHJPczlGeHRxVjUrU3hxVjZRbDZyd1pUVTBiazVkbUlOYXlOZVpJQWRFWFZQ?=
 =?utf-8?B?cFpyWnNodUxtVGZsb2ZaNTA2QXFhT2czRnRrZm11TEl0RWU1U3BIKzdEQ05B?=
 =?utf-8?B?RzBaRENJWmlyN29BbWVrZXdLOU5LMFhLcjFJUHp0clJINDZCRW56NWdVSHJ3?=
 =?utf-8?B?QWJZTTVENXlTSGlNMkxrU0d0blhTU0V4aU5rVERxNk9vNng0U0lOQTVUdGYw?=
 =?utf-8?B?NkI4eEc1MXVTM3BwTWdHQ2FmTVRraDFZdnJkWFNQZlBsSFlGWktHMUpNR1hq?=
 =?utf-8?B?MjZQV0dPeG1Rc2s4MW95VUhua3RmQUhhQWx0WFRyT01pWEJqZFJia3ZCcEdy?=
 =?utf-8?B?Rmp2OGx0RVdsb1hKL2FWRElSM3RBL2d0WnVJU25uSHVGOThkc1I4OVV5WVFh?=
 =?utf-8?B?MlowREFHVVVqeGlWTmV5eExGTXVKR3VPRXN3L0ZKdjhnRUFxTEFNdm9BWThl?=
 =?utf-8?B?Vm5jODdwV09NWDdUSGsxQ0dIR0Q0cXRmOEk1cjIyZkxTY2ZGSFF2a242UE9s?=
 =?utf-8?B?c3gzcWVsRHpJMW9CaGh4RGgydnA5QjBvR2l1UzdYQ0pVRS9OSitGajFQSXdU?=
 =?utf-8?B?L2J6RFE4RzFjN3NMdzNsVUswZVpxdnllbTNiU1ZHMEZyV0k1d3BXeVVkdWIy?=
 =?utf-8?B?dGp1ZWxlQVJNaWY0SVhZVnZkT0hkZVRQY0JOYjJDekFWK1BhVFo0aS9wOE5Z?=
 =?utf-8?B?b2kwdTJaWnFERTRTMnVNbFlQQWppNEhYb0t5eHhIdFhUeVVzVGFxUHZqaHlS?=
 =?utf-8?B?NlZHMTlzUVR4N2VZaWptUWlUdXdVK0lVVlVkaS9qM0JiSzJlU3EyVGFJUzE3?=
 =?utf-8?B?UFJMOE53MXFoTDlOWThJdE1TNEd0R0lXd0J5QU5yYnYxZ3pFUHJYNTA4M29U?=
 =?utf-8?B?azFVczVVajhTM0hEWGt1S2FDbWxvcTBHUjh4b0lWcSswT2k0Z2dxMCtYSndJ?=
 =?utf-8?B?K1MrMU5VcHFRUlVrM2ZZYmFJNEhpK3prRE5adHVMbDlvTnYvb0JEdzNGMm5h?=
 =?utf-8?B?Zk5obGtXZkd0NHA0Y240M3UveC93ZENyckVyMW5rdE56ek1yc0d0eStFQmR2?=
 =?utf-8?Q?GOCu+KCPYckRbci/51ESeMUH2tcXMVQ1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UmIzNkVmaCtaeHJ1NElkei9EZlBqZUxJR1FKOVM4ellMQzZTZXpwQi9EMzhp?=
 =?utf-8?B?NXZqOStLUk1GSjRJeDdFeDRGU0pNWGNXTVBtTDN1ekFaeitqNGRkQlpDYUZo?=
 =?utf-8?B?amYwQnlSeFlWWmdBWHpxK0x4WTdITzkwUGdoNVlLNkltek5FZkpQNFNMMVY4?=
 =?utf-8?B?dlFPWHNPVEdabEdxb0VQRGI3MjIyVWpMU3hXbXpIcUZlSHI3TmRoaENreCs0?=
 =?utf-8?B?OTVzTFR5em4zTXh2UVBiNGg0bm9HY05mUGxmSVVNSFBIbCs3SzBTdis4a09l?=
 =?utf-8?B?SHdMT3Jvam05VlFxQkhzUUgwMElqWmFFOTNsTWcra1dsSVhKT1hma2l0U05n?=
 =?utf-8?B?a2hGOXphRG5GelBXUG5QcmVUalh5dDRyTExKc3FxSWtvL1pBNkpyV1R3M1ZD?=
 =?utf-8?B?WmhqWU1jYTVQMUkwSmE4amtjYVA2QVpnLzdZWEJJOWNwa1VkRnFyV0l6aGp6?=
 =?utf-8?B?UWxlRXBLeUJmOVl4NllQVlNVWjJwRUZzNkVHUVJuT0lYU0lVZG9uUFJxTHJS?=
 =?utf-8?B?d1JXVUZKYmp0VEVxaEl2Rnh3UUVYeVgyK2xjOWZsQysrT2RQVTI1OG90K3BJ?=
 =?utf-8?B?cnlrVFpLUGVUME1ZVmhWMmgrbmE0NnpzQjdXUVpmdmdpeUVEcVJMbzIzZFBx?=
 =?utf-8?B?cVJuUzdtOGRISWRtZGczc2tzOG5RT3JKa05XWUpFSUdzaE03MTBzYmJ1aFd0?=
 =?utf-8?B?WHVnS2hrOGF1MlYvV3BpVGRoZGtBeng0MlRQdWx2Ti90R0FzUnFZY2VxOVRW?=
 =?utf-8?B?Ri8wL254akdIcktCWHRta3VYZVl6Mk80RlZuVGQ1Z1piRktBTXRFQ2JEeUpL?=
 =?utf-8?B?NzlrSlhhM1hYYk9GaVNva21aTzM0c1piWWJJY1Bjbm9wMG1peC9VeDRqRDE0?=
 =?utf-8?B?SnJnOXlwZUNaTnlzRGhjUVNaZ3pCb0lqZjk5bS9hZ2p2aStvQ2wraEx2bHI1?=
 =?utf-8?B?RlBoVkNlNkI1TVRnckxDeEIxMFFoSktZU1RjN29uL0JRYnV2cUZzY1hHSUZT?=
 =?utf-8?B?dS9iemJHUjFNL0tOS1pyOHRqRWxOQkdzd2RFck1uRGNZV1VhTWMzelMvc3Bs?=
 =?utf-8?B?TEVaYUMwLyt1eURGSE8yY0szemxvRk5LYnVXRXZvRUxhb3FDRkZ1L3l0OUhE?=
 =?utf-8?B?MkFEUDVnMjlKclJNbWtpYVp6b2lGcE5KcVRQWncyTjFTUndIWC8yVVNEWGIy?=
 =?utf-8?B?cWNQZFcrWTVGNGJkWlJGdEVmRGJzazhZbXFkQ1h0U2NsS0V3ajNYUkdNMmk2?=
 =?utf-8?B?L2xFU2JYN09OT1BkNW4vWnBHNjR5eTR6YTlkQkNFOFNhZVhDMXRqQTdzUlhU?=
 =?utf-8?B?SzdvQ1NOem4xcXFWcVZvUUpJNmdzUHhaUFNLRGZiWFVXdm5zTkFISEpkWlgr?=
 =?utf-8?B?ZENhVTdQS05zMG0xaHh0c3dVamw0eVpGZ3BON3lwTVdmaXpBK0tqYWxrem1k?=
 =?utf-8?B?SkR5QVJ2bCtiVERTeUhhTHZqZUxwTC9ybHFNcXpTWFhuYTlpREplSUpsSCth?=
 =?utf-8?B?VlMrRUZwZDVla1pya05ReHBoNDlIZEtMcjF6TmN1bFV6L3cxV3crc1RLRlcz?=
 =?utf-8?B?OTBKeHhETHhaQjF5YWpHYXYzQjBlZWp6YlkybWZhMjB2aERud2RiTDBpYzRF?=
 =?utf-8?B?TnV5dWRTVjVacytOY0ZYYXc3S04rYnFCcXV1Q2RQT1U1WVhuTjZGWHE3eHRT?=
 =?utf-8?B?V0VLWlByM25DZG5iZGhuQWZsVmZSR3pTa2hWdXE2cVpQdnV5dERQbWJ5dWYz?=
 =?utf-8?B?N1kzaDJQOTJRbDdMcmhZbStNblFZcUxqeUVVMWJJMWp0UVZlMmVpZndrOHV1?=
 =?utf-8?B?SHFoZG1Ua0ZKRDNHai9EUTlLVDllbkFncjhZcWJTT09QaFdBbUJOcmxVZ3NW?=
 =?utf-8?B?TEVXK3RtY3VXaUEvcXBrbFVzdyt6NVpaYWI5clB5ZWxndzVNK3k4c3QyYjF3?=
 =?utf-8?B?Z0N3S1MyM3EwR0NveVRtNnYycEUxdWJCODk0UzFtcU50bXp3QStMdElzbm1p?=
 =?utf-8?B?UnNZYi9nZWsyWVorcUE4bGhRUnFxbVBaTFN3RjcwSVppTkdGcm1jSlRkV2ZF?=
 =?utf-8?B?ZVBFTVczRmhzS2p1SDc1RURQNGpZcVpMWkdSSnU2Z3JyRW4wYXJObVJaczhF?=
 =?utf-8?B?eDl5TFNjM1FISmt2WXRUNGdtNVRhZHVScXRLV01OZDBaOExsSDZqVlBDbkZi?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dc87f70-7ea2-4d3a-b243-08de18cea8cb
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2025 22:41:40.9144 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SiQAr3xTyL2Cy5vAprv9/TqM3ZQ/XmzQ1UwXb5dQFTBIl4eq3uZ64NKXcnHdEsZkm2vs1eGjURuQQPNAWx2A/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6834
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

Quoting Matt Roper (2025-10-31 19:17:23-03:00)
>On Thu, Oct 30, 2025 at 06:56:07PM -0300, Gustavo Sousa wrote:
>> Quoting Matt Roper (2025-10-29 17:54:39-03:00)
>> >On Tue, Oct 21, 2025 at 09:28:36PM -0300, Gustavo Sousa wrote:
>> >> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>> >>=20
>> >> Starting with Xe3p_LPD, we get two new registers and some bits in
>> >> existing registers that expose hardware state information at the time=
 of
>> >> underrun notification that can be relevant to debugging.
>> >>=20
>> >> Add the necessary logic in the driver to print the available debug
>> >> information when an underrun happens.
>> >>=20
>> >> v2:
>> >>   - Use seq_buf to generate planes string. (Jani)
>> >>   - Move definition of FBC_DEBUG_STATUS to intel_fbc_regs.h. (Ville)
>> >>   - Change logic for processing UNDERRUN_DBG1 to use loops and move i=
t
>> >>     to a separate function. (Gustavo)
>> >>   - Always print underrun error message, even if there wouldn't be an=
y
>> >>     debug info associated to the underrun. (Gustavo)
>> >>=20
>> >> Bspec: 69111, 69561, 74411, 74412
>> >> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> >> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>> >> Co-developed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_display_regs.h  | 20 +++++
>> >>  drivers/gpu/drm/i915/display/intel_fbc_regs.h      |  2 +
>> >>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 87 ++++++++++++=
++++++++++
>> >>  3 files changed, 109 insertions(+)
>> >>=20
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/driv=
ers/gpu/drm/i915/display/intel_display_regs.h
>> >> index 9d71e26a4fa2..c9f8b90faa42 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> >> @@ -882,6 +882,25 @@
>> >>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK                REG_GEN=
MASK(2, 0) /* tgl+ */
>> >>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)        REG_FIELD_=
PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
>> >> =20
>> >> +#define _UNDERRUN_DBG1_A                                0x70064
>> >> +#define _UNDERRUN_DBG1_B                                0x71064
>> >> +#define UNDERRUN_DBG1(pipe)                                _MMIO_PIP=
E(pipe, \
>> >> +                                                                   _=
UNDERRUN_DBG1_A, \
>> >> +                                                                   _=
UNDERRUN_DBG1_B)
>> >> +#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK                REG_GENM=
ASK(29, 24)
>> >> +#define   UNDERRUN_DDB_EMPTY_MASK                        REG_GENMASK=
(21, 16)
>> >> +#define   UNDERRUN_DBUF_NOT_FILLED_MASK                        REG_G=
ENMASK(13, 8)
>> >> +#define   UNDERRUN_BELOW_WM0_MASK                        REG_GENMASK=
(5, 0)
>> >> +
>> >> +#define _UNDERRUN_DBG2_A                                0x70068
>> >> +#define _UNDERRUN_DBG2_B                                0x71068
>> >> +#define UNDERRUN_DBG2(pipe)                                _MMIO_PIP=
E(pipe, \
>> >> +                                                                   _=
UNDERRUN_DBG2_A, \
>> >> +                                                                   _=
UNDERRUN_DBG2_B)
>> >> +#define   UNDERRUN_FRAME_LINE_COUNTERS_FROZEN                REG_BIT=
(31)
>> >> +#define   UNDERRUN_PIPE_FRAME_COUNT_MASK                REG_GENMASK(=
30, 20)
>> >> +#define   UNDERRUN_LINE_COUNT_MASK                        REG_GENMAS=
K(19, 0)
>> >> +
>> >>  #define DPINVGTT                                _MMIO(VLV_DISPLAY_BA=
SE + 0x7002c) /* VLV/CHV only */
>> >>  #define   DPINVGTT_EN_MASK_CHV                                REG_GE=
NMASK(27, 16)
>> >>  #define   DPINVGTT_EN_MASK_VLV                                REG_GE=
NMASK(23, 16)
>> >> @@ -1416,6 +1435,7 @@
>> >> =20
>> >>  #define GEN12_DCPR_STATUS_1                                _MMIO(0x4=
6440)
>> >>  #define  XELPDP_PMDEMAND_INFLIGHT_STATUS                REG_BIT(26)
>> >> +#define  XE3P_UNDERRUN_PKGC                                REG_BIT(2=
1)
>> >> =20
>> >>  #define FUSE_STRAP                _MMIO(0x42014)
>> >>  #define   ILK_INTERNAL_GRAPHICS_DISABLE        REG_BIT(31)
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/=
gpu/drm/i915/display/intel_fbc_regs.h
>> >> index b1d0161a3196..272dba7f9695 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> >> @@ -88,6 +88,8 @@
>> >>  #define DPFC_FENCE_YOFF                        _MMIO(0x3218)
>> >>  #define ILK_DPFC_FENCE_YOFF(fbc_id)        _MMIO_PIPE((fbc_id), 0x43=
218, 0x43258)
>> >>  #define DPFC_CHICKEN                        _MMIO(0x3224)
>> >> +#define FBC_DEBUG_STATUS(pipe)                _MMIO_PIPE(pipe, 0x432=
20, 0x43260)
>> >
>> >Is 'pipe' correct here?  Most of the other FBC registers are
>> >parameterized by FBC instance rather than pipe.
>>=20
>> Yeah, I just blindly copy/pasted the definition without realizing that
>> the rest of the file uses fbc_id. I'll change it to use fbc_id as well.
>>=20
>> >
>> >> +#define   FBC_UNDERRUN_DECOMPRESSION                REG_BIT(27)
>> >>  #define ILK_DPFC_CHICKEN(fbc_id)        _MMIO_PIPE((fbc_id), 0x43224=
, 0x43264)
>> >>  #define   DPFC_HT_MODIFY                        REG_BIT(31) /* pre-i=
vb */
>> >>  #define   DPFC_NUKE_ON_ANY_MODIFICATION                REG_BIT(23) /=
* bdw+ */
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/dri=
vers/gpu/drm/i915/display/intel_fifo_underrun.c
>> >> index c2ce8461ac9e..43cf141a59ae 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> >> @@ -25,6 +25,8 @@
>> >>   *
>> >>   */
>> >> =20
>> >> +#include <linux/seq_buf.h>
>> >> +
>> >>  #include <drm/drm_print.h>
>> >> =20
>> >>  #include "i915_reg.h"
>> >> @@ -34,6 +36,7 @@
>> >>  #include "intel_display_trace.h"
>> >>  #include "intel_display_types.h"
>> >>  #include "intel_fbc.h"
>> >> +#include "intel_fbc_regs.h"
>> >>  #include "intel_fifo_underrun.h"
>> >>  #include "intel_pch_display.h"
>> >> =20
>> >> @@ -352,6 +355,87 @@ bool intel_set_pch_fifo_underrun_reporting(struc=
t intel_display *display,
>> >>          return old;
>> >>  }
>> >> =20
>> >> +#define UNDERRUN_DBG1_NUM_PLANES 6
>> >> +
>> >> +static void process_underrun_dbg1(struct intel_display *display,
>> >> +                                  enum pipe pipe)
>> >> +{
>> >> +        struct {
>> >> +                u32 mask;
>> >> +                const char *info;
>> >> +        } info_masks[] =3D {
>> >> +                { UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, "DBUF block no=
t valid" },
>> >> +                { UNDERRUN_DDB_EMPTY_MASK, "DDB empty" },
>> >> +                { UNDERRUN_DBUF_NOT_FILLED_MASK, "DBUF not completel=
y filled" },
>> >> +                { UNDERRUN_BELOW_WM0_MASK, "DBUF below WM0" },
>> >> +        };
>> >> +        DECLARE_SEQ_BUF(planes_desc, 32);
>> >> +        u32 val;
>> >> +
>> >> +        val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>> >> +        intel_de_write(display, UNDERRUN_DBG1(pipe), val);
>> >> +
>> >> +        for (int i =3D 0; i < ARRAY_SIZE(info_masks); i++) {
>> >> +                u32 plane_bits;
>> >> +
>> >> +                plane_bits =3D val & info_masks[i].mask;
>> >> +
>> >> +                if (!plane_bits)
>> >> +                        continue;
>> >> +
>> >> +                plane_bits >>=3D ffs(info_masks[i].mask) - 1;
>> >
>> >Nitpick:  It seems like we're just open-coding REG_FIELD_GET here.  Any
>> >reason not to simplify down to something like this?
>> >
>> >        u32 plane_bits =3D REG_FIELD_GET(info_masks[i].mask, val);
>> >
>> >        if (!plane_bits)
>> >                continue;
>>=20
>> We can't use REG_FIELD_GET() because the mask parameter must be a
>> constant expression. That's why I went with open-coded version.
>
>Oh yeah, I always forget about that restriction.  I'm fine with keeping
>the open-coded version in that case, although you may want to move the
>plane_bits assignment up onto the declaration line.  And maybe use
>__ffs() instead of ffs() to avoid the need to substract 1.

Hehe.  I ended up applying the diff from below to my local v3; it is not
too late to go back to the open-coded version though.  I could go with
either versions, so let me know what you prefer.  :-)

--
Gustavo Sousa

>
>>=20
>> We could change the current patch to use REG_FIELD_GET() with something
>> like below. What do you think?
>>=20
>>     |diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/d=
rivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>     |index 43cf141a59ae..34faedb9799c 100644
>>     |--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>     |+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>     |@@ -360,35 +360,28 @@ bool intel_set_pch_fifo_underrun_reporting(st=
ruct intel_display *display,
>>     | static void process_underrun_dbg1(struct intel_display *display,
>>     |                                   enum pipe pipe)
>>     | {
>>     |+        u32 val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>>     |         struct {
>>     |-                u32 mask;
>>     |+                u32 plane_mask;
>>     |                 const char *info;
>>     |-        } info_masks[] =3D {
>>     |-                { UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, "DBUF block =
not valid" },
>>     |-                { UNDERRUN_DDB_EMPTY_MASK, "DDB empty" },
>>     |-                { UNDERRUN_DBUF_NOT_FILLED_MASK, "DBUF not complet=
ely filled" },
>>     |-                { UNDERRUN_BELOW_WM0_MASK, "DBUF below WM0" },
>>     |+        } masks[] =3D {
>>     |+                { REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK=
, val), "DBUF block not valid" },
>>     |+                { REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, val), "DD=
B empty" },
>>     |+                { REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_MASK, val=
), "DBUF not completely filled" },
>>     |+                { REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, val), "DB=
UF below WM0" },
>>     |         };
>>     |         DECLARE_SEQ_BUF(planes_desc, 32);
>>     |-        u32 val;
>>     |=20
>>     |-        val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>>     |         intel_de_write(display, UNDERRUN_DBG1(pipe), val);
>>     |=20
>>     |-        for (int i =3D 0; i < ARRAY_SIZE(info_masks); i++) {
>>     |-                u32 plane_bits;
>>     |-
>>     |-                plane_bits =3D val & info_masks[i].mask;
>>     |-
>>     |-                if (!plane_bits)
>>     |+        for (int i =3D 0; i < ARRAY_SIZE(masks); i++) {
>>     |+                if (!masks[i].plane_mask)
>>     |                         continue;
>>     |=20
>>     |-                plane_bits >>=3D ffs(info_masks[i].mask) - 1;
>>     |-
>>     |                 seq_buf_clear(&planes_desc);
>>     |=20
>>     |                 for (int j =3D 0; j < UNDERRUN_DBG1_NUM_PLANES; j+=
+) {
>>     |-                        if (!(plane_bits & REG_BIT(j)))
>>     |+                        if (!(masks[i].plane_mask & REG_BIT(j)))
>>     |                                 continue;
>>     |=20
>>     |                         if (j =3D=3D 0)
>>     |@@ -399,7 +392,7 @@ static void process_underrun_dbg1(struct intel_=
display *display,
>>     |=20
>>     |                 drm_err(display->drm,
>>     |                         "Pipe %c FIFO underrun info: %s on planes:=
 %s\n",
>>     |-                        pipe_name(pipe), info_masks[i].info, seq_b=
uf_str(&planes_desc));
>>     |+                        pipe_name(pipe), masks[i].info, seq_buf_st=
r(&planes_desc));
>>     |=20
>>     |                 drm_WARN_ON(display->drm, seq_buf_has_overflowed(&=
planes_desc));
>>     |         }
>>=20
>> >
>> >> +
>> >> +                seq_buf_clear(&planes_desc);
>> >> +
>> >> +                for (int j =3D 0; j < UNDERRUN_DBG1_NUM_PLANES; j++)=
 {
>> >> +                        if (!(plane_bits & REG_BIT(j)))
>> >> +                                continue;
>> >> +
>> >> +                        if (j =3D=3D 0)
>> >> +                                seq_buf_puts(&planes_desc, "[C]");
>> >> +                        else
>> >> +                                seq_buf_printf(&planes_desc, "[%d]",=
 j);
>> >> +                }
>> >> +
>> >> +                drm_err(display->drm,
>> >> +                        "Pipe %c FIFO underrun info: %s on planes: %=
s\n",
>> >> +                        pipe_name(pipe), info_masks[i].info, seq_buf=
_str(&planes_desc));
>> >> +
>> >> +                drm_WARN_ON(display->drm, seq_buf_has_overflowed(&pl=
anes_desc));
>> >> +        }
>> >> +}
>> >> +
>> >> +static void xe3p_lpd_log_underrun(struct intel_display *display,
>> >> +                                  enum pipe pipe)
>> >> +{
>> >> +        u32 val;
>> >> +
>> >> +        process_underrun_dbg1(display, pipe);
>> >> +
>> >> +        val =3D intel_de_read(display, UNDERRUN_DBG2(pipe));
>> >> +        if (val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN) {
>> >> +                intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRU=
N_FRAME_LINE_COUNTERS_FROZEN);
>> >> +                drm_err(display->drm, "Pipe %c FIFO underrun info: F=
rame count: %u, Line count: %u\n",
>> >> +                        pipe_name(pipe),
>> >> +                        REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK=
, val),
>> >> +                        REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, val)=
);
>> >> +        }
>> >> +
>> >> +        val =3D intel_de_read(display, FBC_DEBUG_STATUS(pipe));
>> >> +        if (val & FBC_UNDERRUN_DECOMPRESSION) {
>> >> +                intel_de_write(display, FBC_DEBUG_STATUS(pipe), FBC_=
UNDERRUN_DECOMPRESSION);
>> >> +                drm_err(display->drm, "Pipe %c FIFO underrun info: F=
BC decompression\n",
>> >> +                        pipe_name(pipe));
>> >> +        }
>> >
>> >As noted above, I'm not sure if 'pipe' is technically correct for this
>> >register.  I think it always winds up with a 1:1 relationship on curren=
t
>> >platforms, but would it make more sense to just move this check and
>> >print into intel_fbc_handle_fifo_underrun_irq() where we're already
>> >handling the FBC stuff on a per-FBC unit basis?
>>=20
>> Yeah.  We probably want to check if there is a valid FBC instance
>> respective to this pipe and then read the register.
>>=20
>> I see complications with moving this to
>> intel_fbc_handle_fifo_underrun_irq():
>>=20
>>   1) The function intel_fbc_handle_fifo_underrun_irq() is more about
>>      disabling the FBC on an underrun.  I think reporting that the FBC
>>      was decompressing when the there was an underrun makes more sense
>>      to be grouped together with the other info related to FIFO
>>      underruns.  It could even be useful if, due to some hw/sw bug, FBC
>>      is still doing something after we disabled it (or so we thought)
>>      due to a previous underrun.
>>=20
>>   2) Logging underrun debug info is currently guarded by
>>      intel_set_cpu_fifo_underrun_reporting().  So, we would need to
>>      complicate the implementation a bit to ensure that
>>      intel_fbc_handle_fifo_underrun_irq() would only report when
>>      reporting was enabled.
>>=20
>>=20
>> So, I was thinking about defining a new function
>> intel_fbc_fifo_underrun_log_info() and calling it from
>> xe3p_lpd_log_underrun().  What do you think?
>
>Yeah, that sounds fine to me.
>
>
>Matt
>
>>=20
>> --
>> Gustavo Sousa
>> >
>> >
>> >Matt
>> >
>> >> +
>> >> +        val =3D intel_de_read(display, GEN12_DCPR_STATUS_1);
>> >> +        if (val & XE3P_UNDERRUN_PKGC) {
>> >> +                intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UN=
DERRUN_PKGC);
>> >> +                drm_err(display->drm, "Pipe %c FIFO underrun info: P=
kgc blocking memory\n",
>> >> +                        pipe_name(pipe));
>> >> +        }
>> >> +}
>> >> +
>> >>  /**
>> >>   * intel_cpu_fifo_underrun_irq_handler - handle CPU fifo underrun in=
terrupt
>> >>   * @display: display device instance
>> >> @@ -379,6 +463,9 @@ void intel_cpu_fifo_underrun_irq_handler(struct i=
ntel_display *display,
>> >>                  trace_intel_cpu_fifo_underrun(display, pipe);
>> >> =20
>> >>                  drm_err(display->drm, "CPU pipe %c FIFO underrun\n",=
 pipe_name(pipe));
>> >> +
>> >> +                if (DISPLAY_VER(display) >=3D 35)
>> >> +                        xe3p_lpd_log_underrun(display, pipe);
>> >>          }
>> >> =20
>> >>          intel_fbc_handle_fifo_underrun_irq(display);
>> >>=20
>> >> --=20
>> >> 2.51.0
>> >>=20
>> >
>> >--=20
>> >Matt Roper
>> >Graphics Software Engineer
>> >Linux GPU Platform Enablement
>> >Intel Corporation
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
