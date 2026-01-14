Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0ECD20304
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:23:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D24B310E631;
	Wed, 14 Jan 2026 16:23:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q2d1MKec";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6401B10E62B;
 Wed, 14 Jan 2026 16:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768407793; x=1799943793;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=G6UiEPqmjKoEqIscgTKaHvbocnqVRQ3gwEBgV0wH4mU=;
 b=Q2d1MKecbWbrWUfeZV/c086lwPAT6QnIan0YLAg8X6OtZCE2xo8/cfEC
 11OX6iiJr/YSW+v6USRYPJZXghCb7E5tGNn9VlckUy0Ki/JyAfmyILJvz
 c+X4AuvjCcJBr0W7h6+ZCuAkh1+tSlYbj9/gtl+oFtDLKOkG4nVF8A06T
 7D3r7TZhC8o6ZnZIEg8Gece7LIckJOxFzv+54rhdX9vGvXCB3GLtjmR3a
 JDXq/S1rvdo/6uIUuge6flHgyRQdLwxu4XnUndU4bjjpft6vcOGiT30hi
 SZtPT0oS/dirzxv9QjtO9OEtFy6qcMhi/FR4ea+0NSiiagqPUbuIQp49P A==;
X-CSE-ConnectionGUID: SAI2cC/jS7ykhbXvZ2fADg==
X-CSE-MsgGUID: k3HjLx2VSMaO/iDpPd7v5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="81074193"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="81074193"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:12 -0800
X-CSE-ConnectionGUID: 7Sh7rFHqTnyd9fcxAwetiw==
X-CSE-MsgGUID: vA/++RAwS/qQXw33SK3Rog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="204508208"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:13 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:11 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:23:11 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.31) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Peo7/mjMGtH1RbTBOw5F3TqyTRCccD9XL2M/cotPWO1yy1ZLj50LXVyF7su31E7PtyRv//AkkzZoJSYZ+lk+d8PIkBuhBIHoSDd/lxQHQV9eSF2S3D/Wu83FIiqHcXP5sjdyAyradOYhbiKNAuV90Yubs7ncVDQhBS/kzFgiIazfkBUMXOqZUPBXtKDmS3gOZbqi1AcPFC38FZDpsY2wQC5sto5jTzfQsHfnv6pq3841LYhJr50gpGt3dng4olX4jO6ggF8CW61uE/QtQwcO9EuPWov8R+0gOvXUpKHYF4bmoOZLsbu3OGNBjiWMB2JPlhN85eskK0vBpxscBh6hMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ADKG4/2aIqPkbHCxnh9WXVmz5aW5IShBO1KLHr2YvdA=;
 b=o8oIYi2nAhPlTmVLr/njMiMn/i+xs/LEot7iZvhXr8yX0SBWMbCoqbU5uE7n+toWb9r1x8cO++24QUkZGkSHzOMxTuPohpYL1jKhsRqbPWvX9cvSpzpdZ3YYcnwlOIxUir+XP6DrYM1UXUYwKvNcgO23ss5RpJBTD60gdCFGfQXwvWXgQJ5B4vlxXxo0F0w2KVOK8DUvR4PsoHnlf5BhOq2/e/MZDHyVLUsTnkhisGiRlGSpNuV2qM+hGxc3/l9ePA25ndrw1XRqzJm98xJBWDEbjirfaWKmntIKo38l5svOhR0X0eNziCGhJwKdLW2QvbiPhm5GCY9xoci+IOvqwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8017.namprd11.prod.outlook.com (2603:10b6:8:115::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.9; Wed, 14 Jan
 2026 16:23:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 16:23:10 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 13/15] drm/i915/dp: Unify DP and eDP slice count computation
Date: Wed, 14 Jan 2026 18:22:30 +0200
Message-ID: <20260114162232.92731-14-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260114162232.92731-1-imre.deak@intel.com>
References: <20260114162232.92731-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0381.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8017:EE_
X-MS-Office365-Filtering-Correlation-Id: 76ea871f-9e2d-40d2-155e-08de53893514
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aDBZdmJYU1c1UFBIdEY5RWxoQ0hoSHB0eE5WMnJiYkw3L0gyQlhwWGc1QVdh?=
 =?utf-8?B?ZlFvV1ZNYi9YaGo0M2taZWcxRTB3c3VQbVZRQldwcTRuOGJXYjFlYzYzOXZU?=
 =?utf-8?B?U2tmdUxKc1pLaHAwZWxnRnBEaGV4ajNjOGRpbnFLYjNQVER6M2pCMWYzMVpr?=
 =?utf-8?B?WklyUlUrT0R3NmdvaVZTMDFxRG5Ra0U1ajJyYUkrZW1mMyt6d05XTmpKZWE3?=
 =?utf-8?B?ZUxMUXFZTzdUL1lWMFJFZC9VbUYvNm1tMUM5bEQ3UEVka2RBcDlXZnN3SEZs?=
 =?utf-8?B?RzlncE9lRWQ1dTJVb2xkbWNPKzI0SDBwS2Y2ODdRTnpJd2s0ejJLcUdqUFNI?=
 =?utf-8?B?SW9CKzlHMzFZdEszTklWV0hlRnM5NEVxd0J2VHhsbDRwcUh3QjNpbmp6WnFD?=
 =?utf-8?B?NENyR29iV2U3emlka2FaZW1ZSjVjUE9GYUtEenNEeXh0a0pxYVBVYjdkMkYy?=
 =?utf-8?B?QmhTNmpNSzRoNDZLcjhjamRxanlxOFNNWmdUOFZ5U2xZQkQvL3VuY0kzcG01?=
 =?utf-8?B?Z2x4NlZ4NnVNbHZVTXIrbk04aXVENDhNNzN1M25pOXJyR1I1ZlhzUDA4a21Z?=
 =?utf-8?B?VlpERGlkKzZkVEhQM3FEL0FpWDNZaG5lWXQ0TVZTUkovRkMrVXJtR3B6Zlhk?=
 =?utf-8?B?M2ZZcHFCKzFqT0o4LzdMRU1pcjdURmhvVW5HZGZvTjdiN09KWmlpVGhZUDZK?=
 =?utf-8?B?akExZEhJeVdTTlEveUN1QkQ0TTF0UXZ0WnpJRSttYkhyaXpOTFlMZ0M4QkJr?=
 =?utf-8?B?VnJXTjE5QS9xa0lqcExMcFI1N1dOVzk3bFNibnpOSEZ5dXJQUDJ2b0JJeEFs?=
 =?utf-8?B?anB3cmhYb2NNUE0vNVhYYXRMVWJFRVNncHlpNjFxSGdPcEFwVDJrZVlFUEdp?=
 =?utf-8?B?SWRqbkJUb050c0g1OERHbkxtNXZkNy8vcG8xR2lDR2QrbFZaUGVOSEQxTm1P?=
 =?utf-8?B?V2svVHdKTU1MNFZXZ2sxZ0lrcEwvSHBuV3AzWnArekxISVoraVBkaXBoMHBW?=
 =?utf-8?B?N1hrOUZ3Zi9TWVBua29IczlQdXZqZjhaSDloNG1NZDlFNEU1RCtMelNoSWhs?=
 =?utf-8?B?RUJIcWx4L1h0U2liZ3BpTXU2V3lPSmRDK2FVTzNRT2NTME5QMGwwT1J0NTNJ?=
 =?utf-8?B?UXBlVjNVY3BmYzkwb1NmNkxtN3kvaithSHRoMFFBVzMxZk40cFpMUUtOM2pS?=
 =?utf-8?B?MWxSanJNL3dJNmJLUCtCOFVLTVBnNDNWei9ON3VBejN1eGFvR1NVbUs1NWVk?=
 =?utf-8?B?eXlqK1dkR2YweEF2Y3huL3dwbnQ1THlYdFZ5OWw3NFg2N2FNM044SEpPQ2w1?=
 =?utf-8?B?K3pyaGlWd0JleXVYSFZmdXJhVnhmQmNNbmdYNkRIeFNzbHVBWFBuWHZuSHBJ?=
 =?utf-8?B?cmFSKzVEeXdEM1l2SHhFMjFrNG5tVEdNYmVWbTdGWm9tUXpyUmtGa2JvS3dZ?=
 =?utf-8?B?b1RyM2FUSVJjclYvdDlKb3lKWHV3a0ZZbFZQNkhwazhBSFcxZTAwc28wdmE1?=
 =?utf-8?B?N0ZYWUZPcncxM1FjemUzMXFIQmJ2bTA0d2ovVjB4SzV3UFNYeDZJaEQvUVdE?=
 =?utf-8?B?VVY2YVJRR0FCYnhMQUYvenVxa1lQVnN5MVkrY3NMcUY1bU1KR1BXc3YxY0U4?=
 =?utf-8?B?TFd0WFRVTlFNRi9rV1dDN3NqUWU4YjFvTUd6OHZqMzJocVJyLzd3K05YZmpY?=
 =?utf-8?B?OUpIenNIYStvVHRlZVRMaHF0S1lLVHp3eXo0SHJqSXg4YVlBVlJ1ZmRTVGpC?=
 =?utf-8?B?N2Q2KzBMNzQydlVJbHp1RHpKc1liRmxseFNFMjkvU2pWdVg0QnNLNzM0OEJk?=
 =?utf-8?B?ck9CYVFhcjhwcm5yZ3JWVjQveHJ5Q1htL3FBQ3p3dDdqczNwakhRUyttRTlr?=
 =?utf-8?B?cXl6VkZzZEZ2SHhGdEtReXpWMlp6M0psRXhDQ0xjRU9NSTVNSktUR2FuSnUw?=
 =?utf-8?B?aXd5U0c5Zk03amg3aEhYa3dJWkNRaVVUdXZIS2JmZ0JrMmNSL21Fdm1WOFIy?=
 =?utf-8?B?WUhFay8rd3pzS0NySElnL3Jpai92aUVLNnR5eHFESXhZQjR1NTR6VC9kNXNO?=
 =?utf-8?B?L0IwU0F0T3RYZWM0cUhvWGY5NW0xUURPdHJoRDdVUzFwVVQrTTlPOUE2azBx?=
 =?utf-8?Q?gQdM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y1I3ZFREdjNob0dNVnVJWmVkUEIrTVpxQ3I2eXFuRUJhT21mODJYTWErYWUr?=
 =?utf-8?B?WVVQR09GU2IrRXpuYjhRaGtON29nSkNPNG1IT0NOeDlJMWt3YW5GK2RnU0Rq?=
 =?utf-8?B?U3JEWWsrY2VCdzFZWmhqV0FhbXd4dEVTQy9JcjNiYlQvMUZFVTdvMytOVmgz?=
 =?utf-8?B?TEk4ZG4yYVBwNndlZUd1b1I1UVYyMDNoYkR4QlpMZ3g5aWZLdGg3ekIzS1oy?=
 =?utf-8?B?S1had1JWTDN1SFhsb3NMeXdwODRmK2Z0aGpjNlNVenlVSVI3M2I3TlJIWU1h?=
 =?utf-8?B?UEhlRTlkSmQrK2lIR2JSa3pKR2ZOa2M3a24xU1UzV2ErYUdOV2xSaWZETkQ1?=
 =?utf-8?B?eHAzVDBLR2pHWTJwQnJnMnljYmJ5M2hONE9RU2Q2TzdIblBLd1lCSlpSZW5F?=
 =?utf-8?B?dk1SNVlGZnpwOG0rTUEvWmJ6d0hwYUpwYi9MY3FFazBHcGNlNEdSZ0ErZXZE?=
 =?utf-8?B?eTdVSFlMSm9ybldYSUJHeXZpY1g1NWs0TmVITGNucUdueGJrVm1MUUZTblN2?=
 =?utf-8?B?dHZuWmJ0VFlkYXRmMHlHTlBTNUd2SWduZ0ZRcnNGeUYyc0FrWnBpUFFmTjZ1?=
 =?utf-8?B?NWtmaUY5dnIzWHdHbnY1MnZzaGRpMlRkVC9MdnJQRVdGWGdTaElKRlEveXJV?=
 =?utf-8?B?RlNEL2ZSZGt2dlBLZXVGaVhLWFVZTjRJMmV6K0lJQ09ON24rS0h3ckxXc21i?=
 =?utf-8?B?clMxYzhlL2ZJUHRmUVR0Y0FYSnZyelF5QlFBQ2xpZFA0VTNHVHdublE0WHJS?=
 =?utf-8?B?SGJlbnpYN3RzZUhiZ2QwUE9DUDg3cTFEU1NWUE9zaVlzZU1oc2ZYNEZqdzFv?=
 =?utf-8?B?WXFoNWhGMmM3ak1VME5OR0ZjYWNmT1QxUXU0c2tRVTFaUGRTTDB2TlhCSXMy?=
 =?utf-8?B?YlpFYmJyVExYcU1JVksxeFNmWHI3ck1nTEpidzZoNFR0NFhFZGs4M2VjLzVk?=
 =?utf-8?B?aE9tRk1KTU9ZM1hKTHA0VE9hYjVhOWd0ejdvZlpGTWR6cXVqUEw2RGpLWURO?=
 =?utf-8?B?ckZoNWdWdXJ2QjZ1ZVAzcS91M28vUFlvVGl4NXVHQ3YwNFFmUmVoYWFWNVVS?=
 =?utf-8?B?Q0NsK2pwallBRFZtTXg1Y2puQjB2eG42Rmx2Q0Zmd1BOeUhpSm5INUdXNGNM?=
 =?utf-8?B?elo1RG9TS0FVeUdKc3M2a1l3VUd1blRPUm1VQTh2bGRiUmxobVVudGtqVUFr?=
 =?utf-8?B?dDFpbkVCL2c5RU9JQjFTREd0RGZrd3E3cjBKTlJWeXdEWGlqZWxVVWFNTFNH?=
 =?utf-8?B?UnBVcUNFdmJKUElCcU9ZS2xXa2VLUFlJWTlsazdNQmtBUC9yQVNhMzRsSi9U?=
 =?utf-8?B?aGs3ekVHRHNmNC9FUDRaa05mbHlPVUhvcEJXaEN5NXZxdHVOTlJRSU1keGpi?=
 =?utf-8?B?ckpCK0d0UHR6UU1EK3Q0YlhpeWtMSHI0bTBLN0FsSmlWcFp5NHZtTHBQWnlJ?=
 =?utf-8?B?R1kwVzgveFhJUHZCa2RyQmRYR1ZJeDRxUEZmZjMyL055Tm1Gb2J4ZFdSd2ho?=
 =?utf-8?B?bzNJL2ROT2cvOHd4UnA4MW1UV3Zyc1hzWWp1Y2xySGU1NjFUZEZkejBQbEsw?=
 =?utf-8?B?VzJhOTAvYkowQzUyV05qZDNEcWdoSU9ST2VTNSt0TjByWlhET0UzVkJlRThn?=
 =?utf-8?B?Vk1RY0FpYk5MZWR5K2I3R21IK1Zna0xwQVlqbFZEdkRYanIwdEdTdG9NU1pL?=
 =?utf-8?B?WVZhY056SHliNitmZnlYb0FsODIyUm5OM3hiVFJ2eUtsQmROZGtraFdJOWNQ?=
 =?utf-8?B?Q1FMcXhaYVBZaDFLT3JrZVlFUDkraXVRRFU4aEU1SG51bkorSS9WZmV5Umx5?=
 =?utf-8?B?YmxhUk02dkpIcSsyVk5pUXplTUR5YVNWQVdFL1NlS29tTWR3UEtlUUI3dTRY?=
 =?utf-8?B?aWlTTjdSbWxOMUNBVXM3UEFnY25HcWJjcjFYSFFISEpobENrc0NJN1FrSzR5?=
 =?utf-8?B?OGRTVWRVaWYwSWo3ZDBUbWtKVU1mR3RBU1c3TDg2aXlDZ3M5dnI4Qm41NGRw?=
 =?utf-8?B?S1FiS0swbTJOQ3Q2bDRHdXVQTnRLbnJUTnNiQU9wYmN4MENDWHFDc0s4RE9k?=
 =?utf-8?B?YkRxeERZUktVUnMvbXpWalVrbWcweDFEWnBlSGpucENyYWwzaFRRb0FndEZC?=
 =?utf-8?B?aDhvQUV3a2ZNMXF2T3RQaXZiK0kvaEZGZ3pTSWRUU1RUN09rcmtZRjBmUFVU?=
 =?utf-8?B?eDZ5emdxK1lleFlvelBxTS9DQ3lMQk55WkF0RlJ5VStoUXRYU2Y4QStpcGtI?=
 =?utf-8?B?R1FBOGNPMnJHMEZzb3ZBM1hjVmhPdzBLa0FXTkhZN09MMUFNQVp5VVY3emRD?=
 =?utf-8?B?bER3YWNPMzBFN051QVRkMXV6bkZhT1lSd1J6Ymk4bDlORmY2cTdBN0dnT0px?=
 =?utf-8?Q?H9q2kihnZhHbAqWm3cwZPkjofnIxKuBD30VWqBSaCcokN?=
X-MS-Exchange-AntiSpam-MessageData-1: 2XnoXxwiDkuD7Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 76ea871f-9e2d-40d2-155e-08de53893514
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:23:10.0982 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qwdPUELoTYgCDXweTg4sGtQnf68pSoygBS7alGKfOnhn63BNV2Uxa3hSxHpGAFQv5IaxQVdevwituVaAGTukvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8017
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

Unify the DP and eDP slices-per-line computation. Atm eDP simply returns
the maximum slices-per-line value supported by the sink, but using the
same helper function for both cases still makes sense, since a follow-up
change will compute the detailed slice config for both cases.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 50 ++++++++++++-------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1d6009b994977..2c50e380fb396 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -949,11 +949,20 @@ static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
 					int mode_clock, int mode_hdisplay)
 {
 	struct intel_display *display = to_intel_display(connector);
+	bool is_edp =
+		connector->base.connector_type == DRM_MODE_CONNECTOR_eDP;
 	int min_slice_count;
 	int max_slice_width;
 	int tp_rgb_yuv444;
 	int tp_yuv422_420;
 
+	/*
+	 * TODO: allow using less than the maximum number of slices
+	 * supported by the eDP sink, to allow using fewer DSC engines.
+	 */
+	if (is_edp)
+		return drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, true);
+
 	/*
 	 * TODO: Use the throughput value specific to the actual RGB/YUV
 	 * format of the output.
@@ -1017,8 +1026,10 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 	struct intel_display *display = to_intel_display(connector);
 	int min_slice_count =
 		intel_dp_dsc_min_slice_count(connector, mode_clock, mode_hdisplay);
+	bool is_edp =
+		connector->base.connector_type == DRM_MODE_CONNECTOR_eDP;
 	u32 sink_slice_count_mask =
-		drm_dp_dsc_sink_slice_count_mask(connector->dp.dsc_dpcd, false);
+		drm_dp_dsc_sink_slice_count_mask(connector->dp.dsc_dpcd, is_edp);
 	int slices_per_pipe;
 
 	/*
@@ -1471,9 +1482,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		if (intel_dp_is_edp(intel_dp)) {
 			dsc_max_compressed_bpp =
 				drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
+
 			dsc_slice_count =
-				drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd,
-								true);
+				intel_dp_dsc_get_slice_count(connector,
+							     target_clock,
+							     mode->hdisplay,
+							     num_joined_pipes);
+
 			dsc = dsc_max_compressed_bpp && dsc_slice_count;
 		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
 			unsigned long bw_overhead_flags = 0;
@@ -2381,28 +2396,13 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	}
 
 	/* Calculate Slice count */
-	if (intel_dp_is_edp(intel_dp)) {
-		slices_per_line =
-			drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd,
-							true);
-		if (!slices_per_line) {
-			drm_dbg_kms(display->drm,
-				    "Unsupported Slice Count %d\n",
-				    slices_per_line);
-			return -EINVAL;
-		}
-	} else {
-		slices_per_line =
-			intel_dp_dsc_get_slice_count(connector,
-						     adjusted_mode->crtc_clock,
-						     adjusted_mode->crtc_hdisplay,
-						     num_joined_pipes);
-		if (!slices_per_line) {
-			drm_dbg_kms(display->drm,
-				    "Compressed Slice Count not supported\n");
-			return -EINVAL;
-		}
-	}
+	slices_per_line = intel_dp_dsc_get_slice_count(connector,
+						       adjusted_mode->crtc_clock,
+						       adjusted_mode->crtc_hdisplay,
+						       num_joined_pipes);
+	if (!slices_per_line)
+		return -EINVAL;
+
 	/*
 	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
 	 * is greater than the maximum Cdclock and if slice count is even
-- 
2.49.1

