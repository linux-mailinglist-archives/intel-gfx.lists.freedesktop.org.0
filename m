Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OZVFLiWw2myrwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 09:03:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D0C321164
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 09:03:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 684FA10E80B;
	Wed, 25 Mar 2026 08:03:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GfBpOq3h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CCB810E80B;
 Wed, 25 Mar 2026 08:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774425781; x=1805961781;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pXusm8ApSk9f/vi4IZekbRwzRYeQbRWM8qQCV+GTl1E=;
 b=GfBpOq3hovypv6sNTnrsa3gPffgaIAveJcSgK+/xHrYYFVk+VPtdiXDN
 9m4PYYC0/sBNRyJ0cJqi1myWoKmdWCs+AMk4expOAYSl0xnmyFGa6ExZl
 wOLjCNTUAARbJvIYlyiZ6yG3YvhwC+pdpf/IT7MKRLGxBtbc4u1zmQ9so
 MUqqnbwBoZvPSZTPCOAx3MNTEeycPRHwcHTDBXc/RwyiROv3jqqTOL/CS
 OoLT8dvOY54iXls4hBvPTRP+BN0PxStRd77e4XMHFvxRvHwmTE5pQj/qJ
 UMcRiyNnE7Eut+w2hEbSPsN5YQzkz4HByuqod/Hf4StD9SQbJV56n8nl8 Q==;
X-CSE-ConnectionGUID: N2lQD0u9Ql+uRC3ebVUwMQ==
X-CSE-MsgGUID: 2R+pd2pfQrOOrGDFxCVhiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86071214"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86071214"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 01:03:00 -0700
X-CSE-ConnectionGUID: +GvdupsKQ4WwvKCrdtAYXQ==
X-CSE-MsgGUID: 33aHgf6rSy6GYX/k9bE2qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224867103"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 01:03:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 01:02:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 01:02:59 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 01:02:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fzkb+wLpIDjdaP6Bl4DhYkEGmgO46RRcC0QncPiLND+6IiLFP0mAp/HyBcCqrZ5C/FZopLYSXIUelG4pZUWFdlg1WMbgj+/96Bah/SnRLs14qsMllpb23enOeY9peAnQ1bJ0+EgI2ai6tm9L0z4QuU86dEuvT7MZftlRiHlsboIN202nArycW9vweqWzUKbWDHdbZJrOgUeQd08IrAGsGjq94JwT0yHzN0x68aOpBB3vrzi7QXHgxyJdCERRxUoHfB+7tX1vfoR3YGKMQqwFFTEgLJbsCK/YDI3vyWOdPUAgStEijV8N2q6if8b6W9Uk6JW6XTVdU99+DQXC22eCoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EQQZAZU1YsXSv+/Af//TrJaVMu4nFlwk6RkpzYuGFco=;
 b=SiB7CT4i9ZRwxl8yucmwMjnS7oGMH0O8v62xvxOm1SfXo3HprqXnII6zScHdzxvtA0NlsWHW2curAksCMOHkj28HsscO/AAXoW1KKM7HQF7E6AGqRXS7jogu2qNcn0O4D2ywDLP4NMAD9Zt6LdW/VHpLBpWfogwyU4p0Ar14h9F6eyFdJyL3myWFQ1G55xAonkHpFIXvaTZ/Y22g6mas3pkvM4B1EovzySW61l2UNuOEDqu1xEsH2gL7cxhn8UIY+7J1DrFa1zdA0BzXfKDmGtC+Cf1M/JUu6OL6uQ/O1cxjy0BV0vAwGmNIu7hCxeD/nEJmtKZWCT+ImBNnq82eXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA4PR11MB9084.namprd11.prod.outlook.com (2603:10b6:208:562::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Wed, 25 Mar
 2026 08:02:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Wed, 25 Mar 2026
 08:02:56 +0000
Message-ID: <48463fe5-dddc-41fa-b705-7ca3323b7abf@intel.com>
Date: Wed, 25 Mar 2026 13:32:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/19] drm/i915/dp: Add member to intel_dp to store AS SDP
 v2 support
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-12-ankit.k.nautiyal@intel.com>
 <abQDnyVJ-Ps1p7wp@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <abQDnyVJ-Ps1p7wp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0016.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:177::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA4PR11MB9084:EE_
X-MS-Office365-Filtering-Correlation-Id: e9501e11-e795-47d5-7463-08de8a44ec20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: /lXxG8c1XaWF1L2fgfGmX5Xm/q0G0K0KzzbcLu3uc6ls8dcKGZeWE6xG+UDcy4HFNxwZcgxOPh1njtkOo+vt6c/6OvqX2DXfzb4CMLmzZFnXLnGhjdXhzO4yVd73g1r943qlgBO4KkoVKMTaFXu2ezEcjsOCN1W/UUlxPFuAuy17xfpNv0ZHN854+xl6rRXx590RBtn9Rr6krJ/ApflbJjs+dFvI/meFUwT+fQgjxI4bgbfs5sdzXhJ+5tVWTR/HBs6Gs4JfR6tYprPtWje+PmTFORyK6HHQhv2uM9aeyqaqCtW9FmCXio9ziNLC2viHrKuP1CMN7q62U1aV/bEQlH6az1AImIX7JYyArZLyNQCx+YHsd0G45D5U18awXi/Pf33nhnS5ToKWq9xScPeBJEIrFzh23MU75D+/zUbrrIr6sPZfjyOWgfcg658khwc8lvj1u2LdXq4ehc9XPIRsd+vhhZ6KHIqi6l2/HV4GBmtxtboMNCtuBmkxGVRfsjXCi8nr6pnF/0mI5lC8mIEGLeMEDoLMFrb5xGzW3dpO/YzBOUI8dSkFfPsAtAz2hXNx3vmznXABCQJu7TcHEhDtkdSdmZH94v2GIpEz4Y1HPChvstvvwK91KJLNq+35ifke48+OcK/8MMctZSWQQ3yI6eP4RFl/Bq36ZMlygRMTuLZ2VTTQ48gQayCm3P53vmtNJeHvlpTZUKo+aKDt3y5wxoK6R4Cc61RVr7SWs48tHBk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWl0UDRCVG8rNTdSb0lYRnJCUklOWE5IYVkrM0orall0VWlDL1pDVUNjRU84?=
 =?utf-8?B?Nk9iYytrWEZ6NmhNUW5zSGVjQlBTOE90V09NUnhQYnF1V2VVd2drVXZBbTlz?=
 =?utf-8?B?NEtLZDRZdWgvcFlSTGcwVkNlSEJGOVJzc2ZGS2ZocmsyVk41ZGk0QVVQZGtp?=
 =?utf-8?B?dXM4VzU3Ty9hZlFsY0JGOGpqNkcxSnIzTkxtWnhuT1F2cVlWcUNCcmhUZFg1?=
 =?utf-8?B?SUpsaUQ0czRZOFBJaC9YUjgzQUpFMDFabEttNHNnVHh5QTA4SkpOOW50QmlN?=
 =?utf-8?B?ZnZpMUdhemI2REw0OWg5TjlQZ1RUdkFwRGFiK2gyU05Xa044UFRsa21HYldB?=
 =?utf-8?B?cjdOVFc5US9tdHIwbW1Rb21KN2Q1STAxWkFLR3RQM1hyd3BlLytWVXBhWEho?=
 =?utf-8?B?WEV5a1BSeFhKQVIvb3JXckZZZUpPZkgxUU0zWnJzQlZDTFBzeFVkRDFoVHlF?=
 =?utf-8?B?QUIrL1lxbDUzT2dMZXZHVUk3REtVYndDaldrZDdKd1VJQVROYnJaZVFoT01Z?=
 =?utf-8?B?M0pnSWZVNkRUVldOdTBSSUpualVvU253WGgwekxrOS83NHkxbDU1OGlGVDZ5?=
 =?utf-8?B?Z1dMVW1MemR4TnFGVDFjVDU3ZkRBYnRTQlc4K3FYVGdkL2ZOclBwTnZFTlVD?=
 =?utf-8?B?MFFVR0JrejB5cGFwRks2aXM4MnRJN0NjUFhnWThHcktST2d4OFk3VUJKd3RG?=
 =?utf-8?B?ZWhCZVNlQUFDM1Z0b20wOGN6K3lOZ0Fqdk8vY2ZhSzI2WFdyd0ZlWDd1L1Nt?=
 =?utf-8?B?eVp0YmZYUDhUU3g2Yk1mZ1BrRHVjQzdDcUlUMVp4K2R3MlJCcnkvT0haTWx3?=
 =?utf-8?B?V0VabVljck5FY0E3RHVnaktqcVFHbzl1NTBxYUdVSU1maS81TTVSZzZzRnhF?=
 =?utf-8?B?dVNkVHJ0T1ZZbVVEYXZxNVJ2T0FocEFveUh0MjVsUWp4TS9lV3hyTlZLckgw?=
 =?utf-8?B?aTFuTEZxUURCaGhxajFIeHZHaDlDMVNXUHI3ZUVDRFJENzRBMnpaajFDaVE1?=
 =?utf-8?B?OHVlTERZdUpxRVMzOWhSS2dGbmNNL0RIRTM5ZEgrSkRqeUc0RVU2SXorbzdy?=
 =?utf-8?B?ektDVklhWlplSytHa2QwLzBMRW1lbVNWakErelBpOWdaQU1oWnhJWjhEK29D?=
 =?utf-8?B?U0JMOGhKWXR6T1ljbm9ERmxmcjFlcjFWbDVPdVRkVm1Vb2JGd3ZWL2R1bEti?=
 =?utf-8?B?WmVRekcwdk1CQmNZSnBHaWFrSDBoelBpVks0ZE95STN4U05id01kUWRXYmEv?=
 =?utf-8?B?RC8rQVFVT1c3b0EycWZxYWJTK04yV0NJWEpBV09jcXFSMDVqK1p3VXNKY20r?=
 =?utf-8?B?M0pOS21OT0ZYMFVrTmhFSjlWOW4wTXpJNFZYSjZPWUx5a0RvNk9keXVWUVBi?=
 =?utf-8?B?c20yT3hJUHZ5TWlQV0tyd05ZbEpLYXNQMWxyQU5Rc1lHeVVicTVBc1ZmUi9W?=
 =?utf-8?B?TU9HQ2I2WHNSODZab2lONzRxRkdUY3NQUXpRQzRybGloeFdDS3IzdEdTbmRo?=
 =?utf-8?B?QnYyK0RVbi9JZkdHTTl0ZUZHb2g0cXBTY3loc2JHTnJONXF5bndtZUo3eVpn?=
 =?utf-8?B?VkhodmVGYy82SVNmTXNJdWdiczNpUkxTVkJ5MHNDZ2FrNXd1dDhuVCsvVERa?=
 =?utf-8?B?RW5ZUHZLVWxMeEpPM0lFaWk0SDFabHFOc09SZnc3WUJpb1plODV0TFdzdjkx?=
 =?utf-8?B?eWNZVUNLblBjYlk3ZmwwTWhYR25pa25kWjFqS21VRDN3R0g4eDZ3QXNyYVVJ?=
 =?utf-8?B?T24zSkJCb0hJdERiWEp1aUlxaUlTdjAzU0o5TnlCaGtKUVJhekRsY1lwQUVO?=
 =?utf-8?B?U1dsbzEycUhZcVFXMEcxRDRDSnVhY0ltMzdQZENqY3NnMnBmeDlHbGx2dHNR?=
 =?utf-8?B?eGFmeENWWGJSNTlhRnJ1MHEvSGJub0N2MTVIRmJ3VWx0WDhvYmlUdnFnaW50?=
 =?utf-8?B?VXpnWFRCUHUvS29YTW9Gd3FoelZkMUdFUEZ4SDFUY2JpRjVXRWNDWGk1dk9u?=
 =?utf-8?B?SmJvZ2FjalRGWDRGNC80VzdEZGw4ckZFRzZIQ1RqNWdkcXNKbTdPREI5VWdH?=
 =?utf-8?B?Z215RncxL3RiYlpXd0ZvSHRuUXJLdHRPTXJpSUpBYlQrcTRnT0RvajJLZXZI?=
 =?utf-8?B?RXFGbkJpcmNwY0NyVitrM016QVM3VkF1bDhNbWt0U25HTFJHRmF0WEJiRllv?=
 =?utf-8?B?RXVpZzZjZDJTMk4vZXpwYjB3cWFhR0NQaEhkMVJCLy95cTk2V1NDdUx4TDgy?=
 =?utf-8?B?MVlZdlVTNkJCakhKcVdyaWw0OUpTd20rUld0LzNtYXV1WFhUb3NKdEIvaW9K?=
 =?utf-8?B?dVZES1hKUWRVL3daL0tTV09JYlpuZ1BpNnQwMHhkaGk2a1ZOYnpzODFoY2Fv?=
 =?utf-8?Q?JZycAEosx+J3WhT0=3D?=
X-Exchange-RoutingPolicyChecked: sXDUSw5wmCaB/sZWnY1yYRoV3D9RxSCGHlL4RU+MksE6fj+vIlN4yi4v/FP7uUaEHkk9P8jn+7L8flL5cxSZ+N18pRi2QyyguiPXSfPf/kgM+TKekQReUtqU0HEg2mOSp1huaA5SRvTb0ok251wj6v1qRktqD7F+6gXDKk/oFQBFSTlcQW//xv4mzASxEZ+FNCLk+KZHf+Jugr74ZQCuEA2vXIYR6be8/sfuaQSPhyAqbHzizr+1pqjPOthgqfBf91rhJxfrEo5rV6Wf+hcmxT2JHEGhPL2DNqblPQP3MkSflzLln9SXg4Lj4YEUUQZkZMOOcvWg5SuLvlRKwRvC/g==
X-MS-Exchange-CrossTenant-Network-Message-Id: e9501e11-e795-47d5-7463-08de8a44ec20
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2026 08:02:56.2501 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qzdqmE/r3tqaa+atAXKPUTvTCkguM6B6PnJ1NVomO4YHPswbJ/SUs+qMvy1bqGpUanbdp/0vntxLTOU3mwjrgnKibltOTd4UMPSVgwmwBuw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9084
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
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
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
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D9D0C321164
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/13/2026 6:01 PM, Ville Syrjälä wrote:
> On Wed, Mar 11, 2026 at 05:06:03PM +0530, Ankit Nautiyal wrote:
>> DP v2.1 mentions support for FAVT payload fields parsing in DPCD 0x2214
>> Bit 2. This essentially signals the support for AS SDP version 2, that
>> allows source to set the version in HB2[4:0] and the payload length in
>> HB3[5:0] of the AS SDP header.
>>
>> Read this bit and store the AS SDP v2 capability in intel_dp.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   .../drm/i915/display/intel_display_types.h    |  1 +
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 21 +++++++++++++++++++
>>   2 files changed, 22 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index e189f8c39ccb..d783cea06aed 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1870,6 +1870,7 @@ struct intel_dp {
>>   	/* connector directly attached - won't be use for modeset in mst world */
>>   	struct intel_connector *attached_connector;
>>   	bool as_sdp_supported;
>> +	bool as_sdp_v2_supported;
>>   
>>   	struct drm_dp_tunnel *tunnel;
>>   	bool tunnel_suspended:1;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 0d2403d48528..e6148e7f0ebc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -6291,6 +6291,24 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
>>   					       false);
>>   }
>>   
>> +static bool
>> +intel_dp_sink_supports_as_sdp_v2(struct intel_dp *intel_dp)
>> +{
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +	u8 rx_features;
>> +
>> +	if (drm_dp_dpcd_read_byte(&intel_dp->aux,
>> +				  DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1,
>> +				  &rx_features) < 0) {
>> +		drm_dbg_kms(display->drm,
>> +			    "Failed to read DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1\n");
>> +
>> +		return false;
>> +	}
>> +
>> +	return rx_features & DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED;
> Hmm. So the name seems to imply it's only about the FAVT stuff.
> But even when running in AVT mode some of the payload bytes
> can still be valid. Dunno how much the other stuff actually matters
> for VRR itself, but I think for PR the coasting vtotal would at
> least be important if we don't send AS SDP while in PR active
> state.
>
> The problematic case would be if we have to send the AS SDP
> for VRR purposes, but want to suspend it during PR active
> for power savings, assuming the sink has the
> !ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR capability.
>
> So I suppose we might want to also check for PR+ALPM here,
> in case some of those don't also set the
> DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED bit.


Thanks for pointing it out. I will have a look and consider these bits 
as well.

As you have rightly said, we are just guessing based on what is 
implicitly implied in the description and behaviour of these bits.

Regards,

Ankit


>
> Sadly there doesn't seem to be a proper AS SDP v2 supported
> bit anywhere. We just have to guess based on other capabilities :(
>
>> +}
>> +
>>   static void
>>   intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
>>   {
>> @@ -6298,6 +6316,9 @@ intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
>>   
>>   	intel_dp->as_sdp_supported = HAS_AS_SDP(display) &&
>>   		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
>> +
>> +	intel_dp->as_sdp_v2_supported = intel_dp->as_sdp_supported &&
>> +					intel_dp_sink_supports_as_sdp_v2(intel_dp);
>>   }
>>   
>>   static bool intel_dp_needs_dpcd_probe(struct intel_dp *intel_dp, bool force_on_external)
>> -- 
>> 2.45.2
