Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJqrJMR0y2k3HwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:16:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 225DB364EFA
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:16:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86CFC10E629;
	Tue, 31 Mar 2026 07:16:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aNLrnBnn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B44BE10E299;
 Tue, 31 Mar 2026 07:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774941378; x=1806477378;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r3PYDszAGTuiMzuJZAY8RFfj+hKuqf+DaOjYmjAZZuw=;
 b=aNLrnBnnhLdmD/JenFL0G5n+kDoGcoe/j8sWgqg/9H80wKF7PUsz1uKw
 uS3tmN+75u/WZFn8uKiISg+pS137gMFEstwyzpH6OHLoxPyETjAQi01Er
 Tv113D1YqUvRXSTqjlcx0xwLohtT43e2G0XPFHef49rpRGmaC67oOe05r
 u/e9+1fa+0dWWH2dnxjzjxsyuzqi1UWtjug5+KNKXP20raotjt/1WETLI
 2GpC3WI9gAwaIF+iz10XcPI5AXf/GQr7KmWxwLzzxZOytfHQlkm7kWgfM
 qOk9VcYzvCm/PaYCyq+WSajEtx3eir2XUrHZmr6m0XOaXdsX0ofxDZ4u9 w==;
X-CSE-ConnectionGUID: YaMLAfkRTiOz4QKk4pgSCQ==
X-CSE-MsgGUID: mKc9d1NJSiSvpta39nFxYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="78537603"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="78537603"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:16:17 -0700
X-CSE-ConnectionGUID: BXKjlDVZR1qkVAIlx887Nw==
X-CSE-MsgGUID: ZgpW2yXVQsuHrAVs8jsOkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="225453200"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:16:17 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:16:15 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 00:16:15 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.36) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:16:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Eccs5inKpPhivDAFS6b4JZrmwoUcN0s2gBQLvWckUEdDD2dskVjKuxeQwID7kgYOhoFcf6O5F2T545sVpFhOZKi0X5A8eSD75ziqafxX2Si+Bz0GvwlPvmABvt4oUYmvVuc26rapotctBwu0AtOtRK63WR+IbgB5+soBzZPXzUpBE7TZxv/lpk0rKpgO+EF/kmz+c5p+cycfvOm2aVrlthDeJHXjKtEk236UJQMu/JVm6YE/hgBKKzEugEUGLVAAxXtrEd9B5W3K5E65C6tovLF6GdXsIZrCj8UQNgG46YamPqnp7ARSDmF7TY2Mo77AasaTFi7cUgzrvgsllM83Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GKOVZVht4g5DarK8op9L+wV4JT5BvM8qlWL2pdJxUPA=;
 b=e3V8ubcwU1pXpkyRNnrx7II1vKvrUQnkq7871a/EXyUa1mv/Bzb1znHH7SSCC+v5y1jW75+VmKuIQmW942CH+uPhHEtvt1/qOfHBu9MlfBo1eWZYsyAAXzX+TRLvHsEA78rqwLniz0rCbYVQDdl9VpY26D/NFLGK5DQjkPUMwDJjxosvbHe113PSS128+8WKkrLSgtX9eLxCKl4Z3XFQMIo4dlYzCv9NxDkNo0hU5PJRP0N2py/T3H/juQu7iGQF9zsbbzJuCkJH/HIOiuVEafd5i2w9xmPh5sDHJozn3GTNXbqqxw7Fy3Vh000YRxYuKtIVNEMUKQXA1JXsudPMHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 MW5PR11MB5931.namprd11.prod.outlook.com (2603:10b6:303:198::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.15; Tue, 31 Mar 2026 07:16:13 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a%6]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 07:16:13 +0000
Message-ID: <86149d21-231a-4feb-9954-9d3294b6364b@intel.com>
Date: Tue, 31 Mar 2026 12:46:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 15/26] drm/i915/writeback: Add connector atomic check
Content-Language: en-GB
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <sowmiya.s@intel.com>, <uma.shankar@intel.com>, <swati2.sharma@intel.com>, 
 <arun.r.murthy@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-16-suraj.kandpal@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260325110744.1096786-16-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0215.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ab::8) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|MW5PR11MB5931:EE_
X-MS-Office365-Filtering-Correlation-Id: f092035d-9067-48ee-4fea-08de8ef563c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: guoIEDOp4gw+/J6PdPKyuqT8jLTkKH98f0w06emO8eitalGTKCntZjWnYVDLxm3yIZDO/mPfTG9zGVeLCqhosnooO692QfW/4mWqzHb53Vm9uFKAZMD6Eo2mVBDN/iLvlrNG9BK+h4NZ9kUKBEI6Xno9H+yI5XKZObIKJlnmlmmjrKhxc+DJhKhTf60axPs0E0QSVSdgm1NroCGd2YTiE/IIgsBjNLrWg8PEa/N0uvQF6451P7BJZozTmvyLskbBuv9jw8Mc1f9c+5S7Gl0hV458FvbD5IVOXW2uQt0BOM3V0fBmC6RADm9at9jk/62oEHOUgAhhubjTnnrajcXbAFQbJLhQ95WKmQdO9xgnNHFo9yy0YrBKnorgMqGL+OxBWH0Ixj80x1cKfIcXguIysftaN+Th7x3MtWbIIi2+BqhWINvLFqqcgrFSqD6xP+knO1oqzf6cU5Op/5vB33JjLw0BKJ10Pf9FJs2+O94b+savowt/ChQw339BQGBIDzw+7DlieBA3ii3oQn5tD+KFDKYDrw/vDLAl1Rg59+XsJVk5mZKyQH//OeLmyuDtWgOC3BsDUF9NRvqpNdegC1KE4VyzeNvFfMOCiIzo4USuxNdz3jPVyDRpaJABb7wP+Nm4aC5dz9H6w8p8BLiImELwjoJdvlSfubRcMJ4AD+tdRvbltxKWvsqdc6/hTdL1Yk9CTyHeFzshQOZyjjoNwPCvXf+80HafjlbLYDa0cT5JOs8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2Q2U3NsYXVyZmZ5MGZCUCthaEQrNWFaZFY1WHo5aFlOc3JEV2VkOURya294?=
 =?utf-8?B?cXNIdm5kbzNuaDQ4b2xmNkdtVnlRV1VvVndSbThjU2d0eDZKR3M3VFM3Ung3?=
 =?utf-8?B?Tzk4RjR0bk5jYnl2YWlRSUNOcldGcmorVlBWNFZDaFI3ZXl3b3ZoU05iSytq?=
 =?utf-8?B?UktuTW13Q0t0cXU3R0VTMDRIempQZUtoQ29HTkdDb09NS2hmcnlCMmR4cEsz?=
 =?utf-8?B?ZkxqenlpcFc2SmZSMENzczd6YWNCK0lQMmtXd2w4dE03eTI2V0VZcU52eWtN?=
 =?utf-8?B?SUw3KytFVmUwcXhpZWhscVVzQ0dpR2NJTGJZdmpkRDF5b0U3T0FqQU0wS1RU?=
 =?utf-8?B?bTRaYk1FMkF2MC9pWko3Qm5GZm9NU0FDUlNvL1ArYTd0K3Z0aW81a1BUTHJa?=
 =?utf-8?B?Sy85eVAzdFJ6QzBnSGwyMVBPSWM2RWowYTZianpFTTdnZXVWaVh2OU90K1JT?=
 =?utf-8?B?dWlzQXl3KzhyZWZwN0NPeHk3SStDVTY3N3doSEQvcXpBL0lJRnJpNzBhR0tH?=
 =?utf-8?B?SHdSZlh4UDZhL3MrMjVtczltZ0tXSVo1Wi9RMnFkTTQwYnhPczV5R1pSZUhw?=
 =?utf-8?B?bXJhOTk3bklxcUgrTnNvd0EyUFZENnFmMUhJZVNMVnhGcjIvWFcvQjFrbDRL?=
 =?utf-8?B?cTdGNDI2MEhEYll3VG1Lc1pOTjIzZXRYc1E2ZVRLUmt6T3MrL3c4Mkt2aGt4?=
 =?utf-8?B?eFRGVWhDNlYrektlNnF6ZlJYWXRxcUNaVTlsQXR6TDFMWmQ4VjNwTGwyVSs4?=
 =?utf-8?B?TTBIRVg0ZHoreTh3Wm13RHJ6TXBFTmZqcU5MYW9WeG4za1ZSQlZkdVVqaDB5?=
 =?utf-8?B?SVFraE5SRnhtZVVUN2x0S2VYVG1IS0JYdzI5ek1QaHJoTWkydVRTYklWcHpS?=
 =?utf-8?B?b3hvbXdhSC9PVktCWDZ4VFBURkNnRnByS2c4Qlk1VzRPZWk3eHc0RXUxcVIr?=
 =?utf-8?B?T3Nrc3BjMFIxWWQvQUZsY28rWVZIOXhkSTZobEQvMUdXUm9MQjl4bUNyaWhK?=
 =?utf-8?B?ZzBPaVZlSGMyY0E5b091SmJwMnVqcWQxNllmTTMvVHhRMk4rTndUcGxrU1hO?=
 =?utf-8?B?d2gyWWJSd2lmb1QvUjVVR01USlVBUEhDeTlPT3VOMkJZSnZpaDJMQnhOaDNE?=
 =?utf-8?B?T3FFK0JLNTQ1VDd6V0gwOE5OVjl6eFcyVjc3SkVKdDNiMG1FT0pBaGpTU0tL?=
 =?utf-8?B?THg4cG1DOGpyMzl3cG95ZmpsZXRoQUJkdnViQURUS2t1UzAwL1luY1BUWnBV?=
 =?utf-8?B?dDhGc0hVQXFJMGlPVjYwZFU3M2dsMENmcWJ3cmIzTFdQbUwrMW94NUpUYmpy?=
 =?utf-8?B?QXJwZEtzeGYrVmVWS2lpYXo0ajBiTmVvaW1wK0xGbVQvUVo3MHlXK2RDTHhU?=
 =?utf-8?B?NXlxNWpETlhjbVZLREZiT3hrekJOTTFPNFQ4VXc5Y0FmQS9hZVBFTHYwSEdE?=
 =?utf-8?B?bUVhWG9pU3dkUzVaVkpWZUVTVFZhL3QxYytWblZIWjErRERMa0xTUUt3Skl3?=
 =?utf-8?B?c1NjRlpFNGdHSjFsRm1VMkVPQ1FERUFXL0ZwdzViN3M0VlRLTmRpdWVPWHN0?=
 =?utf-8?B?T3VKa21LajJDOG9uK3VBQmFwK0lDbkhodlhOallYdHlJV0dwcXhDRjlYN01T?=
 =?utf-8?B?TzNrQjlPTnpHdjBBYXlqd2UvbUxGbXIrRmhmaG5wTWg1aWJqRGF3QmRaK2Vj?=
 =?utf-8?B?eEkvQy9Hd3hQWDNrMWN2VjVsNFN1U29TNFFReHNGWHgrSUU1VHZzcVFOMmdU?=
 =?utf-8?B?QVhzdndSU2swYjNJY3lZb1IyNm13QnBTbGladEJ1M0dTcE0zZTU4d003K3pH?=
 =?utf-8?B?QUJNcENLSGhSWTJrMnhET090NW1raHpkK2JMT2RtMkpZd3JVQWtsb0xoOGN1?=
 =?utf-8?B?K3F2eUwvakJyZ2NJT28vSWlKL3VyWlAwaGp1SzZZMVFsRktDVDNBVVd2bGEr?=
 =?utf-8?B?RE5RZC9LaDNML0svZkxtNlBtdFhseDUwcWNIWEMvb1NERThyWFJlaG00a1p1?=
 =?utf-8?B?by9zcVhSVUZJU3dLdHN0QWhnZDhvdjliN3JmSkJSSG1ZZUMvd1JKRk5hOHdX?=
 =?utf-8?B?QW9TWkZwTUZ2ZU1ENTlnNzBmQmU0VmUrby8rK0Q5RWxGQ3VCd2JIQ3JDenNx?=
 =?utf-8?B?dExlVUt3YkRSN2tqYVhnZEdvcE5qdnU4MnhtamJVVmx3YUNPSjdDd0V5ello?=
 =?utf-8?B?VTRqanUrY28wYitkaXlHanQ2UHJobm1RVURDTmtTQ3VkdG5TVU05QWliWVFN?=
 =?utf-8?B?YTdzdmZQaDlFVUVnTjRKeFRkZVJOcTRYL2xIbmZGS2JvWHZEN3FPYmoyNTU0?=
 =?utf-8?B?UDVzNGFPY2t3UWZ0TW1jZENMaURhMG9kZXk4ak80WFBqV2Q4ZklGdm01RDI3?=
 =?utf-8?Q?90lrr8g/Vdc9P4kGQhJ15L9ahlVXNmBB99Tqo?=
X-Exchange-RoutingPolicyChecked: GQrXJEVQO/B8P4lKFKOeKmz6xMgyMsiMY34N76lfb5UcCZMKVUNB/e5/fjVtMfuEWXAeViVuEwmXOP9/A3l8TfD4Z+cVt8l/L9HkHz76tYP5cnP9VyZvV8bnpD38wZZkVUHoap1nUk+wyZML5s8Zvbf4BnunPbpZsM+Kh67ZZSjnC2fCAbkYG+V8Cy2ZtwuGmQm66knXkumNIJsmJ10Cn5sgVpervPKAMCHI8N07GyFEFdArMDglGmv9G0KDXQmqPnk08IGGK/fslv7gj5yAmmGiLO1QJ6UNgZK5BY8BfmABl3ZEkU2Oa6JtUFeSwFdqem6/DDCjBzOSfOY2BX0S7A==
X-MS-Exchange-CrossTenant-Network-Message-Id: f092035d-9067-48ee-4fea-08de8ef563c8
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 07:16:13.4117 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cvsv0faH3uB01wURSc3PEYZQXk2LMBiieoeCm6Tup3pvOd6Yk5NfrDl/jfoInbMIwkPpG6hm0Jp7NYR6deNvonx9wY4ghZfjr/UrHeoM8+U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5931
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 225DB364EFA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/25/2026 4:37 PM, Suraj Kandpal wrote:
> Add connector helper function for atomic check which sets the
> mode_changed bit and checks if pixel format of fb is valid or not.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_writeback.c    | 49 +++++++++++++++++++
>   1 file changed, 49 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index 86b53e4603ae..ba4c162847c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -167,6 +167,54 @@ static void intel_writeback_connector_destroy(struct drm_connector *connector)
>   	kfree(connector);
>   }
>   
> +static int intel_writeback_check_format(u32 format)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(writeback_formats); i++) {
> +		if (writeback_formats[i] == format)
> +			return 0;
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +static int intel_writeback_atomic_check(struct drm_connector *connector,
> +					struct drm_atomic_state *state)
> +{
> +	struct drm_connector_state *conn_state =
> +		drm_atomic_get_new_connector_state(state, connector);
> +	struct drm_crtc_state *crtc_state;
> +	struct drm_framebuffer *fb;
> +	int ret;
> +
> +	/* We return 0 since this is called while disabling writeback encoder */
> +	if (!conn_state->crtc)
> +		return 0;

How is it different for other connectors?

> +
> +	/* We do not allow a blank commit when using writeback connector */
> +	if (!conn_state->writeback_job)
> +		return -EINVAL;

What purpose does an empty commit serve in those driver?

> +
> +	fb = conn_state->writeback_job->fb;
> +	if (!fb)
> +		return -EINVAL;
> +
> +	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
> +	if (fb->width != crtc_state->mode.hdisplay ||
> +	    fb->height != crtc_state->mode.vdisplay)
> +		return -EINVAL;
> +
> +	ret = intel_writeback_check_format(fb->format->format);
> +	if (ret) {
> +		drm_dbg_kms(connector->dev,
> +			    "Unsupported drm format sent in writeback job\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
>   static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
>   	.destroy = drm_encoder_cleanup,
>   };
> @@ -182,6 +230,7 @@ const struct drm_connector_funcs conn_funcs = {
>   static const struct drm_connector_helper_funcs conn_helper_funcs = {
>   	.get_modes = intel_writeback_get_modes,
>   	.mode_valid = intel_writeback_mode_valid,
> +	.atomic_check = intel_writeback_atomic_check,
>   	.prepare_writeback_job = intel_writeback_prepare_job,
>   	.cleanup_writeback_job = intel_writeback_cleanup_job,
>   };

