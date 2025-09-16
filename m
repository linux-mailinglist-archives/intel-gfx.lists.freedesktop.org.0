Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD04B58E75
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 08:32:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F12FF10E06F;
	Tue, 16 Sep 2025 06:32:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z9/+ltuI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09FC810E06F
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 06:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758004353; x=1789540353;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=sTmM96sBbwnQnmFpmIIpls93Krrp29o/PYf2K5gibGk=;
 b=Z9/+ltuI91sipnawR4u+Ycjrms/rj4rKdNPkO8nO6XMpFxJc/uPFaUTH
 FZWWgdDS9v0Lo0SiSOgvAHJz8zQsgKu6s/0X0ikJhUMzzdOx9mnC78J/S
 cepoT5qAAZNAbwJ6iRkC29aNzS0Q1d7EnQjz4wGnm5oX3CoQymiPFGf7s
 2Sgx4fMC/WwoNFCT+628K/GDVdjFyQUclYfUoi3Z5QCml4Zimw4NEiM73
 DYXibu7MrPxB1ftApK+or2v8AlRWVnZ/OqI2i6DLyHyRo+TNz65/mjEtk
 z2kNilfj+rNx6fWKD5EnbqfGQb3B7XOeUvPV9cr/cDoKE91Z9/JG+B73v A==;
X-CSE-ConnectionGUID: U72GleoWQKWiGEPSCOZakA==
X-CSE-MsgGUID: 0zpICWdIQtWSXIDtXL3waA==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="59970531"
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="59970531"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 23:32:33 -0700
X-CSE-ConnectionGUID: Qc9HeD7RTDynKo6kOcnERA==
X-CSE-MsgGUID: LHPwGZm1Tieh8yxUfKbRbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="174405200"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 23:32:33 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 23:32:32 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 23:32:32 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.67)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 23:32:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eMOLSUS7138npXbTBGWq+aideB5xom4/Yhm+3EvDGbUkshw8eC8pqMeh2xBIzL1jj7Dq49MJI1WUQ1WJNa7WIWxwlwGlsgaV+8+NXb5TSpCVkJTJIlxlYLQ4hZX4j6najmQxyWPgf0I34P74JVQLOPdVropjf0xqznxDXq+AE5lCHR4E2LipzmVtVT8wfHq4qdsAM3C1wysVJJfvGgqjHPkZcjOmU+AG7xqxOcT+xD+verhsP/K85/mThmmeUq/upkiVAokrbf9gs3b3IgGcxVHPrLRZ4KtC4jf/T9ibyW9L2HWKBjMj0pH6jDqUVgib/ToIckZaXk/Sqy1fQLkcsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KlUX5TPCeZjwt5A8V1rRXH9i3drhG9j36KVtSSRGb3o=;
 b=fIK78grNkY0ZFC4ebxTPgPGzCbW+mqiEsOHZx/HR3uRqN60hcXjt7s2DgK2tok3fwsbLe1Hx7SqOc3i105pPEbnfAbq+N6yk+58+jb0C1Qo6Ss1taxAJO89w5oQgtymEu8Wf7rz2e88LcEgX+c1Hgha5j73H4/k46QHKskBjJsLsldAWj38+J38Y3u2WG3Esy4ibQgXbOtPN3eIT4WNar1YewgePPS32rlc0JptA6qGNtsRcdt+ejYzXVf2wuiWs2PP09HImZh8ZwG4zRfvtDWukPhzynpjnOetNuv52znNYfo/8ofvyTIVh1FqNSAo+GgCAYCGfkIRIEZDHzGFOqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW4PR11MB5823.namprd11.prod.outlook.com (2603:10b6:303:186::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Tue, 16 Sep
 2025 06:32:30 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 06:32:29 +0000
Date: Tue, 16 Sep 2025 06:32:21 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v3 0/5] drm: Miscellaneous fixes in drm code
Message-ID: <cover.1757576103.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: DUZP191CA0070.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4fa::20) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW4PR11MB5823:EE_
X-MS-Office365-Filtering-Correlation-Id: 8dfcddd3-386f-4bb8-15ed-08ddf4eacf2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cUp4b1RnSXRFT09ic2drU3lYcVdBR3FuM0JUZVA1eXlpR3EyTDgrN3dzTlFj?=
 =?utf-8?B?T2Fqb2diT0ExWWYwakdYTzJnejRWVUVadG4zYWJEU2x1cXREN09LUFFMRDJZ?=
 =?utf-8?B?QTVrWi9nNkR5elRGV3g3MFovaEJVSmNhTTBaTTlsQzVibWROQjZsOWpURk5X?=
 =?utf-8?B?b2c4cUxqeGxXdG12L3FQQnd6RlQ5RmRUOEtEUkNCVGRVWHovWHJrUDQ2OURq?=
 =?utf-8?B?c0dJdVoxbE9HQnVuL3ZQaG5OTXlpcDZ4dFZNdkt4RFllcUV5amg3NXRGWHdB?=
 =?utf-8?B?RStUbHBCOGtFN0JkSmI1TTdtdWIwbHkxSkQzU0VZNnI5RTBGL1JtLzNKb0M5?=
 =?utf-8?B?em96OUNCQ3hqUnpmaTMvc0FMaU9VNnc3MktoYXdMRnorRldtSkpMWDg0U3V3?=
 =?utf-8?B?czg1dW5MMVdBUVB5clAxWEdWMllTaUZvMlY3c0E3OFYrZ05uYmxvL2p4aTJF?=
 =?utf-8?B?Y2hZWmpQYXVRR3pFdThVcEduTWhWVGlMK003aU9Ra0dYWUlWQmhrdmRxaGty?=
 =?utf-8?B?U0twV0xGOHR3WVdIVzUrUWZwamFacHBDaEZyNzJJd3NsSWlBSHRuSzdlRUQ5?=
 =?utf-8?B?cW1NaVorK2MwVHZVZmpIdjQxUjFxNnBWRHl3V1Z4cTBkcFZzK3p3d250RjBK?=
 =?utf-8?B?OFJ5ZGVZVVVkYnJtWStkalFwMU9BNENYZlpSS2MwUWdHWXB4N2lVZmNRMnNJ?=
 =?utf-8?B?L2pLVi84Slk1K09KM1AvMDlNOTZ5ankwNHYyNVJMNmxuQ1BvdSt5Q1hCQWo1?=
 =?utf-8?B?RjgxbGJtbStKUzZhQ1FBWmlkUG0rZXVwaXR0NncrRVNNeXNPVFVWMmR3cGJX?=
 =?utf-8?B?RkdCZGJCcURjZFUrNWNpcmdFRE1ySlZTQURMTVU4VEdxZkVtYUdRekpGeldM?=
 =?utf-8?B?WGRTWE5wc1c2M1U4SWV4ZVgyaHZMT1FwOTNPS3J2SDRrd1NIZXFnM00wQ3c2?=
 =?utf-8?B?ajY5MHlGR3d4SEI3bVJ3L2w1WFFacE9YWndlTnFXQjJjK0NEc01HL29DVWxU?=
 =?utf-8?B?V3p3U0ZlejZ1NkJZdHl4RHAzOW5pTXBJa29zR2VDSjlXZ1YwRzlLeERteFBZ?=
 =?utf-8?B?blRRRFZqTE8rdkFzS08rWlY0anhzRmVLQjhkbkFHWDJWWmVVT1Z3NllYSlgx?=
 =?utf-8?B?SVlQUGZFUEJvZktYZjRMZGMzLytWRDBjaW1MQTBCTEhyeEE3R3A4TXFBamRk?=
 =?utf-8?B?RnhPNFkrZldKZW5qWjluU21aRld6VUtwSXBPcjB0bi82ZjlPV2JYMlFCTnIw?=
 =?utf-8?B?TVpvZ25UZEVBbXpSak1VNGZMb1E0WDJyUlFqNU42c0s2U21EMjExRlZxcVZs?=
 =?utf-8?B?MTBBUklvdGJnRjZ1bDBOcjBQODhxWlJpbGVUNFBmZ1NDLyt1VnJmWjViOWQ1?=
 =?utf-8?B?Z2FnWmJIbUZEZitvU05jUkZnSDhtc2tFNTkwaEc2UVBwbU01V2NobFRIT2JX?=
 =?utf-8?B?ZDFJOUFpZThyWmdwS2ZaSWVSKzR4cEhVYUplS0lHMTd6R3JadUVmdDcxZm1y?=
 =?utf-8?B?WkZSK0NTNGVZV2RyYUs4Rk0zRGFkdnVXc0g1R0ozWmdIMExxWEJsSU5DNE9q?=
 =?utf-8?B?anFhUkhkOGR4WDRQejVkYnpqVkdFVkVaMTZ3RVdqRkF4M3JBckZuTG1hZVFw?=
 =?utf-8?B?Z3VpRzBsYmJNaTNkWEY4dWFEeDFhTkJFTFduMFFsMDZEV3JmcXhoOHhLWEQ1?=
 =?utf-8?B?NHBjQVFDWXVCSGUza2dxNWFaTzJSQjZoUHZCR2F4bnlWL2xucEJtWU9RTlZw?=
 =?utf-8?B?NWNMaXNTSnJWaVlnNnVFSFkwSFpVRjRGNnJkazE3NlRIUDI1T3pBQ0xmWWxk?=
 =?utf-8?B?Mk1RZ1huTWYvR1pzRkZabk9xWjRQckpCeGh3VVNJTzV2QTJQM0FwVnJFQjVs?=
 =?utf-8?B?R1J0YVlXVTQ1UHZQWmwvb3c4Zlk5NUZLYW5zNXpIcmsyZ3N0b2ZrQmx4cWVj?=
 =?utf-8?Q?Lbb4AhLLLnY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzRRVDlZR2U2dGNpWGdhOXlnU2grbk4yZncwTldYclc1WE5xUU9IaGdPblBJ?=
 =?utf-8?B?L1VqWW5TdTdQbG5jUWY2a3ZZWlh4bkEwUVptMGZsUVVQb0pvbytJUy9DSGJI?=
 =?utf-8?B?bTJneWNQRkgvVnA5cWhJeEdwK1Z4aU9kMzRUOTF6dUxGZDFlUXJYVWs2OUUw?=
 =?utf-8?B?Q2VPUzJwSVFiTHFDYVBTbDhoZGZucTBweEJDWW5GU2dvdmRwOC8zVEZiK2kw?=
 =?utf-8?B?ejBlMDJCcFJrckNDWVlyV0VzSXQ2TThIMnpiQmpGNmQ0KzNnb1ZFUXRKNGRq?=
 =?utf-8?B?ZUdGdWZPTFFONVZ1Wi9LQ0Z2WnlhOXA1WVowaXJzREJNRlhWM3pLNUxDclFZ?=
 =?utf-8?B?UDlEOUNGR3VoNkFSUXhPRDhOL3UrMFNmd3Z0OE04YVN0TXRvTy84RzRkL1JV?=
 =?utf-8?B?MTVmYlpIWWRaOFRDY2xWUXpzUzFLNTNncGt0a2g5VFVKNy9hQmFDNFNJdXg1?=
 =?utf-8?B?cXVaeFF0STR2MzRBaXVoWDYwaTJ0ZEVFTE1TeFRpUGdPemNoRTB1R0p3aXcv?=
 =?utf-8?B?VGFlelZGdlEzTm94cHZsd1hEU3doSmZJZHI3citRMU1WVEpMK3N1dzBxVUpa?=
 =?utf-8?B?MG8xd2pobTdZdkpVaUxGMzUzUlBWM0dJM1lmaWtyK2tHZ3VKN25zd0VvVzZF?=
 =?utf-8?B?Z0FKTzc3a2dBRXdURWE5clZCM1BrRk5mb04vNytpajhidGRVSEdXaUwzcFZR?=
 =?utf-8?B?enNYR3FSaXFVdzVlMGcwZlRJaU5jZmZBUmVBQXU2QVJQM3dIeFJHRXNvMFlX?=
 =?utf-8?B?VTJHV3Z3UlM1cFJXakZEaS9IWjlHRkhLSnRhM0dnRlBudlkxVUk0b3ZhM1Nx?=
 =?utf-8?B?dFl4YWMreFpiVUZCOS9ObTJUNWcxVTlMRnh2djlwOTZJeWt4L3NQNmJyTTVV?=
 =?utf-8?B?ZWtqdVRlMXovZlhyWVhJUFFOWGdrZm5jVlJ6MGJpc000VTRVeXZHSm1FNm5U?=
 =?utf-8?B?bE5UNENFY3U3WnhDWXc3MFFMUGhuSlNOWVY2UlpENXZiSjBFS2ltbklQN3Jh?=
 =?utf-8?B?MUY1YzdPVFgxYThvRGZ2bTFScjUza0VDT3JBbFp0Z25BZkpyeks1ZERQQjRI?=
 =?utf-8?B?Z0FDYWhuTmdMTHR2K3h0OWtqZnYzN3F1dUlUQnNuSGd6eGVMZko5MERSSlhx?=
 =?utf-8?B?cDB6RW5VZnBpanFCKzh3ZGtJdnB6SVJLNTVISXNOaGxUVWplMHJTWGhZZXFl?=
 =?utf-8?B?Tm1UTjBBQ2wveStaczg5VFE1SitYRm9ZVGZNNWU4a1d4RS80enZvbXhIek81?=
 =?utf-8?B?Vzdja0lFRUpHK2dLeUFQbUJUaWR1WUdNb2xZMGFyNjBoZnNDWXFQNUd5cjd2?=
 =?utf-8?B?QzE3S2dVK2FmYlMrd0k3WGNUWWlzMlNUKzk2MUxsR2FLcWdFSmxxMmxtYmVJ?=
 =?utf-8?B?UVMwdGVoVkJKNDdVVEZmOGtkN3h1ZEtLSzZiRHhFR1E3S0x5UEpkU1JkSlF1?=
 =?utf-8?B?ZVhUSzJvUVBNRFhXWFVjV1E1MU82YXdGa2lpRENRMkthYXZ4ang1dXlzcUcz?=
 =?utf-8?B?VU5jaENMUjVtZzFycTFxSzdrVkJzcFg1TWx6Yk5xS2piejhSSVBOcWpQN1hS?=
 =?utf-8?B?bjNnM052ajNJRXR5VVZNRTF5RVZ1ZTJ5eHpvd0tJV3NYQjlEUlRKSktGTXJS?=
 =?utf-8?B?aE1jQmdIa2pvYzJ3Wmx6bnRXMzhvYlkvcTliQ0xRZWFuS21iTThqTXcvYVdh?=
 =?utf-8?B?dW1HOFp1cXBFS2t2STJpQ1l1eURSbU9DVWE5a1o5VVgxaDJhY0JXd0d3a0wr?=
 =?utf-8?B?Z2djK3dZR0ZscDJCTThMTEVlaHZHNFJZM0FUU2xXTnBOTmdxWDVrTldwU0RC?=
 =?utf-8?B?YTExVjhtUjc4YndRdzBLQjJJTmFlbXFuSU5zc3FWdUpzNmkrV1UzalNlTzlB?=
 =?utf-8?B?NmFHT3p5UlpRQUppUEoxaE4rekxzckhUbUcrQVBVM3FoWUEzeklvajk3SDFI?=
 =?utf-8?B?bUFJd2xMb1daWko5MTN2czFGbVpFMjZHMVA4T1lhR0NkOGI5MWc3dkpUeWxr?=
 =?utf-8?B?QytLaFdqeVhBV0RsNlBERkFVb3piQ28yVWFPVHJKRHppa1U0NzJHYUxFb0xt?=
 =?utf-8?B?WFduOEExSzNHejJuakp3b1VzWkhBcUNycVV1emEwQjJJUEZLYVV3TXd1amJn?=
 =?utf-8?B?MTA4a2l1MlVnaXRhY3ByUnllM2ZoQW9vUU9lOUFHdUtjdkpXamFmMmJxNGhm?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dfcddd3-386f-4bb8-15ed-08ddf4eacf2a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2025 06:32:29.3047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0bDnuLDuQqPgU9oNiIzo5bl/uWhRiOwKewCc13v7bYJJ8X43faCH+NFl9yurfAuIRZEBAJcfwpiRlxEDZmHz2JscnMnQ3ogP5EonrbV3i8Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5823
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

v3:
 * Change the casts in the last patch in the series.

v2 (Jani Nikula):
 * Remove i915 patches from drm series.
 * Split the last patch into 3 separate changes.

Krzysztof Karas (5):
  drm: Avoid suspicious operations in drm_fb_dma_get_gem_addr()
  drm: Do not attempt to round_up() zeros in drm_suballoc_try_alloc()
  drm: Avoid undefined behavior on u16 multiplication in 
    drm_vram_helper_mode_valid_internal()
  drm: Avoid undefined behavior on u16 multiplication  in
    mipi_dbi_dev_init()
  drm: Avoid undefined behavior on u16 multiplication in 
    drm_crtc_vblank_helper_get_vblank_timestamp_internal()

 drivers/gpu/drm/drm_fb_dma_helper.c   | 7 +++++--
 drivers/gpu/drm/drm_gem_vram_helper.c | 2 +-
 drivers/gpu/drm/drm_mipi_dbi.c        | 2 +-
 drivers/gpu/drm/drm_suballoc.c        | 6 ++++--
 drivers/gpu/drm/drm_vblank.c          | 2 +-
 5 files changed, 12 insertions(+), 7 deletions(-)

-- 
2.34.1


-- 
Best Regards,
Krzysztof
