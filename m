Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6DDB01AA9
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 13:37:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD3F210EA23;
	Fri, 11 Jul 2025 11:37:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mbS6m7Bv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2F0610E278;
 Fri, 11 Jul 2025 11:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752233844; x=1783769844;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=D73UdgvSSOCY3nu2XLi/WZ07gsNyV8MgRQIv2CKBx80=;
 b=mbS6m7BvzmOqwgb2XuleAQPlqIj4HjFli46wM3l2lRDRQJz6SXje1i8J
 NYqrVG//eCVi2Tz7h5m0UHNatG+Bpng4PMnDi9ZfsFE7P9sqsIFbx7tMj
 8w9kWw6FeesaYVaHbYJe3WYPidJuFIJvduC/2c+lCJDVSSdgDTslMhWU9
 Q72mBzUnhUd3vwbXh1F7molFLtCISURGr4L/E/YBlhQMSJhoVnm0iLGxh
 tHPS+P19Uo4drTw1PHr9U4cV2wJsg+nkBIo1KMdPAt5z2hZvq76LAgQ5K
 Xe577JJpw7R8D9l7a2w8is0ELqihLajPBmCMSFMJGhXq3aid87e2zV9JF A==;
X-CSE-ConnectionGUID: 7+2O2ZXrRoGHKXgap09ZxQ==
X-CSE-MsgGUID: ONdzA16RQeW3jogq8JnfTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="77075055"
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="77075055"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 04:37:24 -0700
X-CSE-ConnectionGUID: XuSl8nUgTBWv10EzDYQk8Q==
X-CSE-MsgGUID: B1BkRg91Rv+uniE3uxHahg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="155765625"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 04:37:24 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 04:37:23 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 11 Jul 2025 04:37:23 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.41) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 04:37:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dPjFTB4dO9YtTbR5UQprzlIOMPuXVfA3DYI1MeFP/lwOjQ5BUiQ2hwPIjz3w6rMS2T2ILIgx711LY2r7WYfessAuYY4EeYAj1qjsBydLUbTXd7lMuLvpBcih5cYvRztweGaN7HU0ESW/rE8jhU3Te+dT5RYG547A+Q3Dq50W6Nbk2KeKuf7yAb0ir285jCyo5ckQBuiz4J1Gvvti39TnXWz0lWn6mpJKfxog17z9vs1qssENhTiLyQe7O9UZhIju87iMEJq0AiVWCtCq6wuRCtOS26q27jO80RbVk6L60jxgttQxJmtwyaU09RLT/V+dp1vDcp/+4XnvGV+d55zFHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o048liWYzFKL0yxJcBC9+DcR74EzMaBmLBuTBUGFL4k=;
 b=PHK3WfpwGL9MyeZCNonrhZjUjVV5xXWYo9bOKRJHmWEBNwYLNwa4PkJj7M8u9QBpMuJJNHuOF+Dy+IAwrEox+J1Al5OHVyRMbjSGf4rMoRqurWfgpaa1h9SJ/4MQsk1jT1aeUSUX+VonbVIDXXktkLiOO15/HySX5+l/+A3gbyRvI6ZTYhx+ZYTTl1MhzaChui6lb0wTDula/hJVIX5qKW8kVkV4nwITQMtar66MHAlYREiCyso+p5L/bJJCoxA/6HNgiVEpWza4TxyBYQ/ewwDkjJhH1zjvcTgenrltW5yHhDezRRboBKpqZz/78FX5JMepUuVUCdKFmY+plxqwuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH8PR11MB6878.namprd11.prod.outlook.com (2603:10b6:510:22a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.27; Fri, 11 Jul
 2025 11:37:20 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Fri, 11 Jul 2025
 11:37:20 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250711041901.1607823-3-ankit.k.nautiyal@intel.com>
References: <20250711041901.1607823-1-ankit.k.nautiyal@intel.com>
 <20250711041901.1607823-3-ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/gmbus: Add Wa_16025573575 for PTL/WCL for
 bit-bashing
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <lucas.demarchi@intel.com>,
 <ville.syrjala@linux.intel.com>, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 11 Jul 2025 08:37:15 -0300
Message-ID: <175223383564.2061.3827139948808540740@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW2PR16CA0058.namprd16.prod.outlook.com
 (2603:10b6:907:1::35) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH8PR11MB6878:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ad63143-eb3b-4310-7ebe-08ddc06f4be0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aXJkRk1QUlluY2lvMmo2Z0s1T0ZkWlpjaG4yajR4aHBOTzRxQU1uZ2s3UzRl?=
 =?utf-8?B?M09HMjlUYU10UDBaNWhoTkFMWTR0UGZyTnQrbUZ0NlEybGQ0U0RJUGxTTkhj?=
 =?utf-8?B?OHBoZDhmdWtzWEdaeHQ4MDEvdnZCdGV5L0tmWjZBOXFJK0ZRWDU3MThGUVdK?=
 =?utf-8?B?NVFDcG1xTXFCVDFCQkNZOEU3MVBuRzVYczdhRjBhbDdoVUR5NzdLaVQyVmpu?=
 =?utf-8?B?V0MvcDhyV29iSGF2OGdZd3p6clpIRGwxZ0tQalNsMisxdUxBVjFNTzVMQThk?=
 =?utf-8?B?eXhDYkMvbEs1OWpIWkJHQ2JlVE9rbDBMT0cvUVpEVmRPclBWM3I5Z0F1aVYz?=
 =?utf-8?B?U0c5WUJoSUk1ajNHY2lreEFlR3prMkhYeUxycit3ZzZGQTJpcElzMFpFM0V5?=
 =?utf-8?B?VFlJcm0vaWFuQ0VtVmhacnJ0NzduZmZ1UTRvVGJtZkZ3aStDMXJNUVl1YzZr?=
 =?utf-8?B?M1FpY3JxZ214ckorb0h0blhXZGExTVFFck52b3lrUzZObjNBUVMvbUNLZE1E?=
 =?utf-8?B?eFpmcmNpc0wvSXJ0bXZaSEdwM1dGc2FTNk1KeGN5ZVg3SU9BeTBWRnFlaWI3?=
 =?utf-8?B?blNsNldGZGw5Wm9HbHV0eCtTNk11VG1xa0FyU3VPNkVIeG1HcFFWQnhaVUFh?=
 =?utf-8?B?Ky9DdUl3ckpEVnc4U0pma2RkQytWL0ppQ3J3RUFuajE1R0JCY2FHdmFraEkr?=
 =?utf-8?B?NTBiNWhQQytJQ0IzcWxXa2Zxb3pMcG81Ykg2NlkzV1NLOGw5ckZvT3RraDMr?=
 =?utf-8?B?bEtobXRjQnNIM2V4MmlvelhMOG9qTzI5YmU5TjFwTmIvVGt3RjM2THhLa3Jk?=
 =?utf-8?B?ZWcrNGxQdWw1WXhqK3FJcExnYUFKbkR1MVVXS1R1Wk94aU9Remp5d0dmZXRt?=
 =?utf-8?B?TXhXMGVpVTdFM1hmOHg2bTZLNjFuRG5DK0hYVFBHRmZaZzNMVzZaZk5RWlpL?=
 =?utf-8?B?OGZ4OWQ1SXBSbmpYSFVpWnFHaU0zaHUxQ3ZRKzlSTndRWmhYOXMrQTFzQ3Z2?=
 =?utf-8?B?bzlST0l6NE5MTVZHbUJXcWRWVExSVFptcW9RMmgvRW9nVk9tNkNpKzZKQkFH?=
 =?utf-8?B?cVJJNW1TdG95RjY2OE9sR0NVM3E0aUtuUjZoMCtwc3g1TU5QcisxbkQ4VEJt?=
 =?utf-8?B?SjBPajRma0hwS3gxSy9hOWJHT1ZaMXhhK3pzdUY2aVJxSTlLUHJhZFV5Q0ZF?=
 =?utf-8?B?WU1STVM5RStHMHBiSU1rSFVabFpkR0NoVkd3bWM2U3ZMWnBmTTBTK3F0clRi?=
 =?utf-8?B?bktPVGUzYisweHdPcFdpK2tCdGVtcHFGZ2YxNVdoVFIzdFBWZm9xTktyNDFI?=
 =?utf-8?B?S3dGdEpYRTF3MWNrWUpKZUNmWitFdnptK2FsZnRUeUp5c1FEQWd1M3pRb3VI?=
 =?utf-8?B?amh4eXNJcENBK2VHUnh1VVJ2KzBBRlFXbVQ5Z01aczVCbUIxVXBXc214MnM1?=
 =?utf-8?B?VTFBNWRVR2x5SEFWbmpvSWhGRitaMXo2UndNSDlLdm4yMDFoMzBMT2lDaDVS?=
 =?utf-8?B?SlZXRFg1bjhBNmI5b2JyRlROZTYzKzUrTk85ZmxaRERFQ25xN3puUjc2dEdo?=
 =?utf-8?B?aGVJRS9ram9YTGtKZHVkaFhhckdzSjArYmNpOWhvNEhWUldyU1N1ZHZJbVlQ?=
 =?utf-8?B?bng0c3p0SUNSRWJMTGN1YlFlWHBkZDBFdUFUajRwanBXcXRFQVlSWmIwc2Zt?=
 =?utf-8?B?eGNUNjFWRFBBQjNUSFZRMU9lbVVFblZsODdwUjMyUmNiWFdrblBoWXVnWlFK?=
 =?utf-8?B?VzVZcXJaRlZ2eFBBNG5ad3FJNTJYT1RMNWp5YW9CRUh4K21ZczgrM3ppRmtQ?=
 =?utf-8?B?ckRqckNwdmtjRGM0VElvckUwY0Q1bXdXaEVGR1h4bW13dUhSWU9vLy9lNEcr?=
 =?utf-8?B?eXgrMlVyWXNpWjRxd1ZhUzdFbFhXeXRMaGN4RlRtZVh6M3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVhHMEtCc0x4eDI5MU05VUFQemQrVG93TEhLNXlhb3VuWitlaTZob2NKS25V?=
 =?utf-8?B?TVBtUU8zaEN0alJmQW9mYkZNcGxtdFhncVFaTmRnN0lDQ0h4V2R1MTlWdU5t?=
 =?utf-8?B?NjBQVkFPTHB6eVM5SHl6MEpFcXdRYXh4ZkVXSi9oYXpFT0kwOFFlZ2pSeSs2?=
 =?utf-8?B?ODBLTEttckVSUVk5Y2JxcFhnRVJxY3ZIK1M5L2FPNFlnZml1b25iRlN4SmlJ?=
 =?utf-8?B?R0tzeVVaZnordmhoUFpLWGlxeWpFNWMvL05JM3FFRjJjYXFmcGNRbFFMcFpo?=
 =?utf-8?B?a3N0MExhMUR5MTFNbk92TE5icCtOOFEybmwrZkdOQ3hBRE0vWUl0V2I0S0pB?=
 =?utf-8?B?OWduZWNwL3RDT040T05oWCs3L2pRUHpHeGhjaUxLWHJhWmFHeEFTOGF1S0lJ?=
 =?utf-8?B?MEVnQjA0amtMZnNuckdKRjJBYVRTNXhJQ3JvSk8xNEcrYVZNT21odUJDUzJO?=
 =?utf-8?B?L000M2IxR29qb0J0L2t3M1FqMmp2bEVoV0V1c3JOV3Y3MDNuNXRyYUFhSnhB?=
 =?utf-8?B?bE90a05lV1VuZ3dOWE15Z3I0QmRkMVQyaklxTk51U0FiRXpPN0FMTGRRLzlE?=
 =?utf-8?B?cXduTlBtUUcwRW9BR0JqeWMwQTdxRkpIZTVkbTYxWGtaRnllaE05STFudlBY?=
 =?utf-8?B?NkhSR0lCelUyZ0hMQ210WW0zUEZCeWc5T0hCbi9nQzdXZ2lPUmVvaTdDVmFR?=
 =?utf-8?B?ZHFWQWxQeDBJazY5RzE1eHpybk9xMkZQWkg5QnJPMzM4Sy9HTmVkNGJJSGZC?=
 =?utf-8?B?cTF0WFczd0VuVXNpZm00cU5Qdk0vOXZiQVo1eVpxdHVKRkxGUG9jWSsrUytP?=
 =?utf-8?B?eDNNUWlYVmtBRHFXbGIzVmI5K25WRzR1Ty9yRUxpWHhHR0prT0VSemhTeUdq?=
 =?utf-8?B?Smticms3VUhzanNZdHo5bzVCbW9Yd0hubUNZNThkY21Gem82c3RmUFpEMzc4?=
 =?utf-8?B?Z0tEcndzSkhwbVB5SWtUcVJ0MUVzK3ZWL3lTUlRlS2FqY1ljd3RqWkRNa1l2?=
 =?utf-8?B?VC9NVnBUSVVnOXVVQ2Rram4rMlpOL3hTbWVoZEo1M3ZlZTBHcjNyL2tyV3dZ?=
 =?utf-8?B?eC9vQUxFalAxOW80dDhvYllWYWUyNlZZRXZtOVNNMGhFZUFvay91RXhZdEh4?=
 =?utf-8?B?WFZBclJOVStETjNBWGwyOUNCOVVXMTBIaTdsa0dqamxYYUZzSW9GUXdDSWtN?=
 =?utf-8?B?M3JtVm5zV2M1dnZqL1FEclV0MWdQWXBQRng0Sks1MVVkQlFkNUVtdUgwV3pq?=
 =?utf-8?B?czVpVmxmQVY5bGY0d0padUE1Mno0YmVVZ0dURnllVWh2azF0bWpuWnB0RjhD?=
 =?utf-8?B?ZWdOaVpNY2tsQ2FnUG9JZmt6MGwwbTZLT2NaQlNBKzQrbDU5ZVExSEZJNVVH?=
 =?utf-8?B?UUUxYzhqcGhpcy84cVJxZXVoT0NiR1pxNTM3TW5PSzVLdWpIazdIbU9hZkN2?=
 =?utf-8?B?TU15YzlPN0UvUEhtYnV0R2RlVm4wSjVPSlppdFQrVm9RZkZsVTE2WVg4TUhv?=
 =?utf-8?B?QmlRVlppNWdjOFpqRjErcmdhS3VJQlZXc1E3WjhDRDQyUVUrKzB4K0JaaWZa?=
 =?utf-8?B?NnRqYTlIeUZCREFSTWxoZnFUNk11dEpsbFBIaEZLNEtsditSTVJBOVVLUXkw?=
 =?utf-8?B?ZjFMc2JxbEp5UHpybXNIY2JYQ01DeXJBeW40bXNjYjBBMWxGOFY0RnR5OVov?=
 =?utf-8?B?Y1NsQXltMnZPcEJVSWRadUJ0ZEdBZ2dCWnpjTldzQ3YrUTVKd05UQjZBNEZn?=
 =?utf-8?B?QzVaeU5GTHZPajlJd1Q4L0xyRnB0WTJpN0NNSXVZSXBBZjlEcHk2bDNyK09P?=
 =?utf-8?B?S3lnWXpKQWpQdVQwWEsxRlNvdVhqVkduQ2JHMlUzSGVnMytKRTFiV3hSQkxN?=
 =?utf-8?B?aXZMT3JsblNDeXF6dUJ6SkppaVRlditxbmtHYU1FUk9PUmwzL1RBd0x0M014?=
 =?utf-8?B?SzhUKzV4R2oyUEpCTEhwRmNBSlVOL2FQdnBVeDIzOXZja0ZhcFNqRWFMOVU1?=
 =?utf-8?B?VVNSajZObnBBTFdDMmxkVlE3U0pMMk9PcURTZXdwaG9pV1puSS9YMzlMN2Zu?=
 =?utf-8?B?dGFVN1ZxRStnVndwK1RUNGJBRkhFdHdCN0Q5VXV3emNzRXJ1TFpLeGxOYkJ3?=
 =?utf-8?B?VEtWR2tndE1Ja09MYXA1NHJ6Q0I2eHV5bmg5UXFVSWpjZnp3SWN1Und0K2JC?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ad63143-eb3b-4310-7ebe-08ddc06f4be0
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 11:37:20.5146 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6+ZjWo+J82D6Kkk2YVu7ATJuRYO1nEU7Z7kjqQeOycfKd1kBWA5x32pSHME7fm6NSQ6oaMTGslTBkqxUJJFRlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6878
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

Quoting Ankit Nautiyal (2025-07-11 01:19:00-03:00)
>As per Wa_16025573575 for PTL/WCL, set the GPIO masks bit before starting
>bit-bashing and maintain value through the bit-bashing sequence. After the
>bit-bashing sequence is done, clear the GPIO masks bits.
>
>v2:
>-Use new helper for display workarounds. (Jani)
>-Use a separate if-block for the workaround. (Gustavo)
>
>v3:
>-Document the workaround details in intel_display_wa.c
>-Extend the workaround to WCL too. (Gustavo)
>
>Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>---
> .../gpu/drm/i915/display/intel_display_wa.c   | 12 +++++++
> .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
> drivers/gpu/drm/i915/display/intel_gmbus.c    | 34 +++++++++++++++++--
> 3 files changed, 45 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu=
/drm/i915/display/intel_display_wa.c
>index 32719e2c6025..0dbcc1d272c7 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>@@ -42,11 +42,23 @@ void intel_display_wa_apply(struct intel_display *disp=
lay)
>                 gen11_display_wa_apply(display);
> }
>=20
>+/*
>+ * Wa_16025573575:
>+ * Fixes: Issue with bitbashing on Xe3 based platforms.
>+ * Workaround: Set masks bits in GPIO CTL and preserve it during bitbashi=
ng sequence.
>+ */
>+static bool intel_display_needs_wa_16025573575(struct intel_display *disp=
lay)
>+{
>+        return DISPLAY_VER(display) =3D=3D 30 || DISPLAY_VERx100(display)=
 =3D=3D 3002;

Using DISPLAY_VER(display) =3D=3D 30 would match any verx100 between 3000
and 3099. If in the future we come up with another variation of display
version 30 that does not need the workaround, we would endup applying
unnecessarily. So I think we should replace DISPLAY_VER(display) =3D=3D 30
with DISPLAY_VERx100(display) =3D=3D 3000.

>+}
>+
> bool __intel_display_wa(struct intel_display *display, enum intel_display=
_wa wa, const char *name)
> {
>         switch (wa) {
>         case INTEL_DISPLAY_WA_16023588340:
>                 return intel_display_needs_wa_16023588340(display);
>+        case INTEL_DISPLAY_WA_16025573575:
>+                return intel_display_needs_wa_16025573575(display);
>         default:
>                 drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name=
);
>                 break;
>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu=
/drm/i915/display/intel_display_wa.h
>index 8319e16eb460..aedea4cfa3ce 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>@@ -23,6 +23,7 @@ bool intel_display_needs_wa_16023588340(struct intel_dis=
play *display);
>=20
> enum intel_display_wa {
>         INTEL_DISPLAY_WA_16023588340,
>+        INTEL_DISPLAY_WA_16025573575,
> };
>=20
> bool __intel_display_wa(struct intel_display *display, enum intel_display=
_wa wa, const char *name);
>diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/=
i915/display/intel_gmbus.c
>index 0d73f32fe7f1..6d6c3611d6c1 100644
>--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>@@ -39,6 +39,7 @@
> #include "intel_de.h"
> #include "intel_display_regs.h"
> #include "intel_display_types.h"
>+#include "intel_display_wa.h"
> #include "intel_gmbus.h"
> #include "intel_gmbus_regs.h"
>=20
>@@ -241,11 +242,18 @@ static u32 get_reserved(struct intel_gmbus *bus)
> {
>         struct intel_display *display =3D bus->display;
>         u32 reserved =3D 0;
>+        u32 preserve_bits =3D 0;
>=20
>         /* On most chips, these bits must be preserved in software. */
>         if (!display->platform.i830 && !display->platform.i845g)
>-                reserved =3D intel_de_read_notrace(display, bus->gpio_reg=
) &
>-                        (GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DIS=
ABLE);
>+                preserve_bits |=3D GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_=
PULLUP_DISABLE;
>+
>+        /* Wa_16025573575: the masks bits need to be preserved through ou=
t */
>+        if (intel_display_wa(display, 16025573575))
>+                preserve_bits |=3D GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_M=
ASK |
>+                                 GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
>+
>+        reserved =3D intel_de_read_notrace(display, bus->gpio_reg) & pres=
erve_bits;

Maybe we can skip a register read if preserve_bits is zero?

--
Gustavo Sousa

>=20
>         return reserved;
> }
>@@ -308,6 +316,22 @@ static void set_data(void *data, int state_high)
>         intel_de_posting_read(display, bus->gpio_reg);
> }
>=20
>+static void
>+ptl_handle_mask_bits(struct intel_gmbus *bus, bool set)
>+{
>+        struct intel_display *display =3D bus->display;
>+        u32 reg_val =3D intel_de_read_notrace(display, bus->gpio_reg);
>+        u32 mask_bits =3D GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
>+                        GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
>+        if (set)
>+                reg_val |=3D mask_bits;
>+        else
>+                reg_val &=3D ~mask_bits;
>+
>+        intel_de_write_notrace(display, bus->gpio_reg, reg_val);
>+        intel_de_posting_read(display, bus->gpio_reg);
>+}
>+
> static int
> intel_gpio_pre_xfer(struct i2c_adapter *adapter)
> {
>@@ -319,6 +343,9 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>         if (display->platform.pineview)
>                 pnv_gmbus_clock_gating(display, false);
>=20
>+        if (intel_display_wa(display, 16025573575))
>+                ptl_handle_mask_bits(bus, true);
>+
>         set_data(bus, 1);
>         set_clock(bus, 1);
>         udelay(I2C_RISEFALL_TIME);
>@@ -336,6 +363,9 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
>=20
>         if (display->platform.pineview)
>                 pnv_gmbus_clock_gating(display, true);
>+
>+        if (intel_display_wa(display, 16025573575))
>+                ptl_handle_mask_bits(bus, false);
> }
>=20
> static void
>--=20
>2.45.2
>
