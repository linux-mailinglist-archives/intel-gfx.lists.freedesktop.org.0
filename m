Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFDaMZq3y2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:01:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 358B73693CC
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:01:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A5F110E8D3;
	Tue, 31 Mar 2026 12:01:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RfI0K7gB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A722D10E8CA;
 Tue, 31 Mar 2026 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774958488; x=1806494488;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NnCB/QbV20WP+XMQ792eHyT+q5x46JGY7anI4VT/CcU=;
 b=RfI0K7gBEMgntnkzsPk6qDBJA7I3gyNMuVTM95uzjcBfjqZy3gJ27z8q
 kswDO9gQ74oKfFrLt6SJBvKjqnRf67nTssjcxQspTWw28vEx/v+HyyM6j
 7KwhOQmDp5dWKGK5NbmARMpD1R78MJEvN8rmS6T2pix9SzLlyxEZobfPa
 aDUNN/0i6kXw+/JRw2ewt5Y+47cvpmgZCmqpe3GYQ029xTYytK/OPt2Wx
 hEjADrdYRHo9cKNFaKNFyFpb9X2BCFmvIw7/VCb4+AxcnO0GNWRkXoZLK
 HThwmBn3yy1PsksEuKxTvMPX6DkOo3DtFclOc/4q51lG6OUjdnNeOQX4M w==;
X-CSE-ConnectionGUID: Qvvcyw6/RbKpWuYkyBcZ7g==
X-CSE-MsgGUID: 2/DQ4PppRoGGhJ5r1eAqzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75853522"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="75853522"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:01:27 -0700
X-CSE-ConnectionGUID: OpdP3DlkQ7m8fRmBRtqR9g==
X-CSE-MsgGUID: XfOmZ3smSSmu1QQfpyYoyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="227958893"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:01:27 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 05:01:26 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 05:01:26 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.15) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 05:01:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ObzvSvK39AHAsNnFy5zsjiA/ywoR7xx/my351ID613GDrfE+qx9aMqLsn1u9jSGBuJC2xpsWSVA1WbUgTdVOVay1k/pys+MHHb8CmpRQah9McVF9zBq4b2fVc8XjxMT+YT4via/MF7KCtqz1Ke3BS5YQfcnZTVjRPtFfynZwZrukft25a20clKVadvriMeLB8HxffVNiZ8lqoR6M6O6b/DHIVWx5UIBo6MkhAjmP/SR3KiIE0EaEjE/g3l2nbK7+irsXRjLvdMH6oHLVv8QXWeIKnHK2ZlGnHefHtrInF2QUNj9PvN429IkP/V4ck5tlm672TKezLnFas/AU6wah0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wrOjKs6+ELqB8h0pDQjTQt6z1LpdTWALDCPBNugp6SQ=;
 b=AE2sYc+M7Anx4utwSZgOr9vF/7Kp3u7sD+7/6N0cQerSAjj1ock/RMpSzyCKfIbjoF++P8nKyn1m+DbavtzIa16MXPykJ5mY4fAUjSll7D5RVcrEq7frrDBWmlAr948h5n13/si3QKbVWscPgDpkOH2ehQPC3BLSSIvMF6Nl1vK/n5IViGr6N8Uswtt5iHZK4iys7XPas10czkk0JlWV3BkcIwqBjP8XIb/f2Cop2d4zwE897Da2MMTq6h4GKaOwbuYOWeb31Vush2qVl+Ir5sMiKGdcNRE41Jjl2E3UUMxVvh9VsQl+AY0JYx7I9M6BpTKLujM60BqDy1nWjY7EgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB6965.namprd11.prod.outlook.com (2603:10b6:806:2bf::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 12:01:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Tue, 31 Mar 2026
 12:01:18 +0000
Message-ID: <0713badd-b26d-44b2-92c3-8550923393ff@intel.com>
Date: Tue, 31 Mar 2026 17:31:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/19] drm/i915/dp: Set relevant Downspread Ctrl DPCD bits
 for PR + Auxless ALPM
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-17-ankit.k.nautiyal@intel.com>
 <acrNaac1_mT-V5r7@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <acrNaac1_mT-V5r7@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0269.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1f2::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB6965:EE_
X-MS-Office365-Filtering-Correlation-Id: c962937b-6d18-40e4-481b-08de8f1d3754
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: rsWKrKmTR/Cq+v66UEi+3GMeODj1pLOboWYOJypVpeAXj+/8U+yCz43qyoDHQRIZMhy1PcbXwLGkzSPidC+3GUPtG+dj7hHAh+0rwh2AqkN+rWZceSD2pAUdCkf1jGa7KvCLQAtdyGDQZJvmiJvsdWcwZ48H5gZmtD4Bz8p2lBp5JBvuaHEgT9v0QmMtQULkhZtcNLVF437PmiN3KWksA8JnUzCLbHQ7mb1D4F+4J0p6HvuRDySUgFyoNjouVQrjJwl4kHi3TTLG2clmxjiM7G3t2ppB+6SPsj4NC/TedgOe6PZ4hThosXAJS6I1Xlu/5yvt1Bb9fRwIDtJgmDlVNQ90TaTRNq5ut5bN5GyPFsnDrFxQPbQdJWdTCkBkIWnDj7l1fIJpsVtOIxff73swu9f+9fPcEubYk4KIeEa9UoFLgYpp2rIXb/tKdFTC0jiuTsRrtzCnr62RFGuvw4de/y2041hnASrY0kzIS8Rs+I9dz4p/UYmv2WQX3HxDzdjyAvf7eKaKEfp0mv0n/A5sPXyba0pfVfkCBBnxVejXbwvIuK4wWOI7J0MIIxuIu/XWV2m4EOpirGsQbN6gu8v83sHKWAzua4pzls1mhTPiCsg6YZ6nyEYs+de3ftxFFoYO8qF/xMc0RrpDvd0138KLiY55wZwywHmVe0unkNhDw9elnDuh8rvE2ibwNaEWYsQudUyT0/GVDnwjAQc4c8AsP247T8jKx3H5AMQjzC1aYPc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmE2OFhHSzJKaGpXZjhaNzNSdU01cFIrWDhOSWhLd2ZRWTUzWVE3MmlCdkZW?=
 =?utf-8?B?YmlnNG1OakdUcXRQOTEvUzYrb1liZXJqemJ0N1dBdjFyYURKdUhsRHphYUIv?=
 =?utf-8?B?LzRWTDMvamZDcndHcnZpUUdKamI0YmFIOWVzc1Q1UzlVYUE5R1htWUZOWTcy?=
 =?utf-8?B?bkVlblFtNHFhTDRhREdWR04zY1dVRUQ1R3UxYmc0VDdkUEhxQmVUY3JrQVhP?=
 =?utf-8?B?NU5DbFdQTytVcVhYZDRUMkhwdTZKTG92YUNQTnpZMFAzaFNKS2xEeHk2Zmg0?=
 =?utf-8?B?dEJXb3VoMzByMlJnVUp2czU4dHR2bDBhdDI3SjJibHVzWHNnYjVwMGRrMzV4?=
 =?utf-8?B?NG5UVSt5WWxOcVFaMElIdys1eGtqUmtneCtOb3NJaGx3Z0l2MzZFMTVpRnpz?=
 =?utf-8?B?NENkREhaN3djdVZGS3hDYlZtam5OY1VjeFczT3BZaHlNZE96UHFsM2U5Nmlx?=
 =?utf-8?B?WXd3L3Z4YXMwMGo5Y0U1UTgwSWlHWWFtbCtUSUxoL0F5VmI3MFJiUGQySmdk?=
 =?utf-8?B?QUlRUStJOW1VcUhBMm9VdjRsMHlnUDhaMDJBc0ZQcW9qQ3k3SFVGb0QrNjR3?=
 =?utf-8?B?TjdxTmRiM2x5TGh2eUJxcFFRZ1Y2ZHl1OHd1ZEYxamNZckpxRWFORFVFUEhq?=
 =?utf-8?B?NHJRTXkxSzdUK21qbU9zZ3lqZEpKajBDTlZzUW01aVNPVktnTWdTalYxa21U?=
 =?utf-8?B?OHZDelFnZ0s1L3dScUUzTVlPb3k0WFh0NjNNUVNFTEduc0F2bi90cUFtV1Ex?=
 =?utf-8?B?U1JacU1yRUNRd1dzVW1yQnVnb0dpZURBbFVneFN0UUtUbFJrNTdaaXZLSHFB?=
 =?utf-8?B?Q2JEdWJxOUw2U3c0ak1XaXluL0VIaGNsYVUrR3RhRFdkRFh5cDV6ckxmMW5U?=
 =?utf-8?B?RmQ4VWFQNS9PZmFCQ0hiYWdDVm5nZ2VFVFU4N3hOaTFLdnJ5K1BWazdhdzlD?=
 =?utf-8?B?WUpCWnJvNWJBN2ZkaXIyUFNLdUtJd0pmaXJCT2FOb25YTDhKV2lzU2dIT0lS?=
 =?utf-8?B?bjFweWhHOUlINXozZmRXcGZ1ajI3QVpVYVhNUmYyMjdjQ2lkUXljckw2OGVG?=
 =?utf-8?B?aWxURzhwWFlESE12QndBRWRidnZERVNRb0RyUWtTVk5wVDY0UHhTUkY1REVH?=
 =?utf-8?B?M201aDhicS9HcVpvbUtSZlZEVzNEU1F2WjJDY2JrdnhvaEhldFZYeFZQVnJw?=
 =?utf-8?B?VXU2aGVkdUpmNElQQnpLMkRWZzFYbEJoODFYbkp5TlFORGdReDYxNElKV0Vn?=
 =?utf-8?B?eHdEcUZEZUZNVnB6SDRldUtDNzVDQkJYdzZ2MjAzQVBvN3FwVVRKaTJCVGRa?=
 =?utf-8?B?NTlpMzNmaUJOc2wvdXVkckFJUGcxdzlTMVBveFdvcTdWUGF0VWlWZ2tVSTZh?=
 =?utf-8?B?T21LLy9hWmx1RHVnaE9iZ0s2REhCalNFRlZJS2VXOVNNSHRMd3ZkeXE2KzAy?=
 =?utf-8?B?eXhaOWJxVTRIc1BYSmE0bElhU29xbzB4NllGSXpKdWFyV3lZeVBId0ZrUUxC?=
 =?utf-8?B?WG9iMGhDMUNNSWhMUmwzMm0vSUsvclZIcWNObHFXa1FPSUFDeVVBQ0w3QjJr?=
 =?utf-8?B?ZzQvYmtqcU1iUUI3bUh3Zm1tWkZsWUVSSFZXdWkxcnExWDFWU2JYTWJxUW5u?=
 =?utf-8?B?OGxEMFJYZlFoMmh1TkROcVk2WlJNMHZQaG1JTzI4TG5mT3hWWjNrUVB5UUlZ?=
 =?utf-8?B?V3JIeDVHbVhyMmdramxsY2tVYlk3eXBBb2hnVHV0NGt4cCtqYVhwVGxWR2Fi?=
 =?utf-8?B?QzZGTWRrdzE1V0ZkTFBBQ2NyOTdUREVSVmV5ejFOK0p4N1Y3NjFsQm1jOGpQ?=
 =?utf-8?B?M3NaeG9NZVhtVUtZdVUxS1hYK0l3UStkT3J5Q0YyeWhab0kxUWxtK053TjB4?=
 =?utf-8?B?Mlh3RENMa1d0cU1zVHJ4UFpJZHd0YlFwamxmTjBYeVJsWkZiT1RSSVdIRG4z?=
 =?utf-8?B?Ti9lVlhkbEE3OW1aMGlBT3pxdVJsYnJCaHVrWUkveTZUUnFQK1pEZlpURXpK?=
 =?utf-8?B?UGlOZEtBTVZsaHBvcER1NUoxUVM4TkdnS1F2Qmg5K3JVa0UxY21xWnJCTFdk?=
 =?utf-8?B?U1NabjRvQ3Zhd0Z4ZWdrNW9FNmd6RG9yWkE4enh4SWlkbnVEbUpkSFFlb0dQ?=
 =?utf-8?B?cUdjcVgzWXYyejcwVjNBZ1NsbG14RW5nb0xWQ2lVWjVCS1hyeFcza04xNS9v?=
 =?utf-8?B?eW5wdTMzTnRjRUJoUmVSQW1HOGRuUHVWTzgzdnZpWms0Z3JLSnJqUmNsWTlI?=
 =?utf-8?B?R0piT0IvQ0U5VHNoNnlEaUFpV05OandmUjZ4S3VaUDYreTdSTVZTTkl3TlA3?=
 =?utf-8?B?NnEyVkRJbTRCeFFzZE11YnpOSWFTZGxaNVExbmhVb2hRZnZ5QmRZeW8rNDJU?=
 =?utf-8?Q?ahi6P9IvZNG10ljQ=3D?=
X-Exchange-RoutingPolicyChecked: AN80/Fekhaj3TQ9EEzZ8o+C1d5cY1lVhZLQeIYiFpTr02XXhnWRJq0E5WkiNyDcC+DgDlSxziuqhMMFwHUJO0FnK0y2r919bTmsgftiAG8/mW0acDYPgcrlH9zzRqrSG3mecgyAH4moA/tykd8NP8kFvTc1YCwJ2U9BtIRULu8+JuBrCcBskIIBH76qWg1jip5UOJyLOoLbaXd1CTCdtE4jwhp/r9Z3JcPAiT+XUQcOTw8X4BmHV0Zx5TkuZ5ZfL9Veq3Rco7a7EtEpN6x5wydWvL0k2FAYgZRh0zQ2ZrJjxU+6pcfKAj466oUfm5cQ7T3E14pwrJwsSooDzGTKvtg==
X-MS-Exchange-CrossTenant-Network-Message-Id: c962937b-6d18-40e4-481b-08de8f1d3754
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 12:01:18.2284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sTbxfB2bslCdS2RalTmVLkXRDvO8BmmmAfePDEVKmjcchNVt6FP7bU6zCjOsb1/kQQXd0WWOyf3ZVgvQ2LEOFDJu70Ul5rpdxqKauTF4ko8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6965
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 358B73693CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/31/2026 12:52 AM, Ville Syrjälä wrote:
> On Mon, Mar 30, 2026 at 09:36:53AM +0530, Ankit Nautiyal wrote:
>> To support Panel Replay with Auxless-ALPM, the source must transmit
>> Adaptive-Sync SDPs for video timing synchronization while PR is active.
>> As per the DP spec v2.1, this requires setting DPCD 0x0107[6]
>> (FIXED_VTOTAL_AS_SDP_EN_IN_PR_ACTIVE). This applies whether VRR is enabled
>> (AVT/FAVT) or fixed-timing mode is used.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp_link_training.c | 10 ++++++++--
>>   drivers/gpu/drm/i915/display/intel_dp_link_training.h |  3 ++-
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c           |  2 +-
>>   3 files changed, 11 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> index 54c585c59b90..136cabf06fd9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -27,6 +27,7 @@
>>   #include <drm/display/drm_dp_helper.h>
>>   #include <drm/drm_print.h>
>>   
>> +#include "intel_alpm.h"
>>   #include "intel_display_core.h"
>>   #include "intel_display_jiffies.h"
>>   #include "intel_display_types.h"
>> @@ -710,11 +711,14 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
>>   	return true;
>>   }
>>   
>> -void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, bool is_vrr)
>> +void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate,
>> +				     bool is_vrr,
>> +				     bool is_pr_with_link_off)
>>   {
>>   	u8 link_config[2];
>>   
>>   	link_config[0] = is_vrr ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
>> +	link_config[0] |= is_pr_with_link_off ? DP_FIXED_VTOTAL_AS_SDP_EN_IN_PR_ACTIVE : 0;
> I think we should only set this if we are going to enable the AS SDP.
>
> The bit seems to be perhaps a bit misnamed in the spec because you
> apparently you have to set it even if you suspend AS SDP transmission
> during PR active (when you have a sink with
> DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR == 0). In that
> case it seems to just mean that the sink will grab the coasting vtotal
> from the last AS SDP transmitted prior to PR active.

Hmm. Ok then I think will use:
crtc_state->infoframe_enable & 
intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC)

Also, I have not yet added fields for coasting vtotal. I am thinking to 
add that support and fill these for:
pr_auxless_alpm && 
DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR case.

Thanks,
Ankit


>
>>   	link_config[1] = drm_dp_is_uhbr_rate(link_rate) ?
>>   			 DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
>>   	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
>> @@ -737,7 +741,9 @@ static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
>>   	  * especially on the first real commit when clearing the inherited flag.
>>   	  */
>>   	intel_dp_link_training_set_mode(intel_dp,
>> -					crtc_state->port_clock, crtc_state->vrr.in_range);
>> +					crtc_state->port_clock,
>> +					crtc_state->vrr.in_range,
>> +					intel_alpm_is_alpm_aux_less(intel_dp, crtc_state));
>>   }
>>   
>>   void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
>> index 1ba22ed6db08..3591210f8ee6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
>> @@ -18,7 +18,8 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp);
>>   bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp *intel_dp);
>>   
>>   void intel_dp_link_training_set_mode(struct intel_dp *intel_dp,
>> -				     int link_rate, bool is_vrr);
>> +				     int link_rate, bool is_vrr,
>> +				     bool is_pr_with_link_off);
>>   void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
>>   				   int link_bw, int rate_select, int lane_count,
>>   				   bool enhanced_framing);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index 887b6de14e46..2201cf7ce015 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -2142,7 +2142,7 @@ void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp)
>>   
>>   	intel_dp_compute_rate(intel_dp, link_rate, &link_bw, &rate_select);
>>   
>> -	intel_dp_link_training_set_mode(intel_dp, link_rate, false);
>> +	intel_dp_link_training_set_mode(intel_dp, link_rate, false, false);
>>   	intel_dp_link_training_set_bw(intel_dp, link_bw, rate_select, lane_count,
>>   				      drm_dp_enhanced_frame_cap(intel_dp->dpcd));
>>   
>> -- 
>> 2.45.2
