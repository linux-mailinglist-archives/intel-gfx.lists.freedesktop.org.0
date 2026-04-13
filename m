Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGZALGa93GliVwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 11:54:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A403EA144
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 11:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3340488DE5;
	Mon, 13 Apr 2026 09:54:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bBHy57p9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F39A088DE5;
 Mon, 13 Apr 2026 09:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776074083; x=1807610083;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1MHjMkf00AoX5XsYk5QNBHCNrIEIG+8f/eLFN4H0fQ8=;
 b=bBHy57p9Nxl4VPIMchgFgpo8uVDDdrJGKJoVn1ErF3BpwQqqc84MTRGr
 OALpZW8+bRDm7cCHZCQ4pymayN2poUB3jPPYERSD7fHPn9zncJQJ7kVjv
 Wv4YbzFGiWrXJhreK3Pd7KqvPKxoApOVYxDUMFmW/Hpb6EiBSTAlOjAoW
 mnFPTq9BSjnTkJFzp/K3YKCjFRdrvefQq1KZcJdlLDWCAg+30dme6QRGg
 n6yvjnmL0bxCUhXM6Zl6g6ZKCSEjSptS/wUgchkK3brBCw/pWUjnlgSCP
 YCphX6Y80ZYHloMAZAPOhvBBbDOgc1h7zj5N/yblRnhORgiQTtqVonN7M Q==;
X-CSE-ConnectionGUID: /+S9a7k3RY+b9QWvQbtCcw==
X-CSE-MsgGUID: XR40nAc1Qre0IocUVU+ULg==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="76967635"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="76967635"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 02:54:42 -0700
X-CSE-ConnectionGUID: pRkcL6g6TbKVZcheJYV3pg==
X-CSE-MsgGUID: +8u2ze8PSYKMWCIAfJ34MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="223255485"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 02:54:42 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 02:54:41 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 02:54:41 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.6) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 02:54:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MzMUza46ahMhkrxogCWg2gOQ4k81HSpZQbm2MulwUl5fFnOzo5XaEaY7gXJFDoDXK2T50kLMBhmVwxCenX3dYA6v3O0HGKjsJwi3kuV0Ik/cuubSyoaL8E5BWq1POcRz+jVBjd3KHKA9CK9D7vbh5R/hFL1pFjJhrrk7yYglHePwhwy6XgguYYR2GhbWCaFjou4jkHmQlTaDJS6si+Tpu0thxgtTmgQrfzhcs1fPG0YyWI0ENvLYIg5JJDwQndCNklFJjn3kmZPjctESlOjmElmUJbwE1BatHjfu97qp/9Z959UgKQK+IeuoAKTxT3jIBW9Dio4phdwuEK0HPKPZ9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zuMSEvctLVAFTLYjQKG+ETe+e9CedK7nAfZGlY0xADo=;
 b=W4HnfaWdAr6+kxOwAgdRUIjVfwRFevbeczCcvR/nm9axrMObsrJrsKEDAtxGzvva8+vGtf0A+YV/efUrfz1Yf817VIatMDsThNJcKhsjO9/TAD5XKY2CeQM68qjgEBVBhxEcmeU9UET6ZEZn+FrTuF/crD4hDm1SEJRPqrbulWxyEXX0/zAscVq996rHZmXF93NSc37rFg8gE9NHOh+h0BOJYdhosML9gkMZPX7yRxmtJD32XHY6BRbPzN2fBmeAub+uGSrNcMJFLYhA0+1F57cGkFZldSit9v/PSH72eUSCjCgBBKJRbGhHhMbU3/11sWrOhFsZTMq33gw2PYrMcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5082.namprd11.prod.outlook.com (2603:10b6:806:115::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.18; Mon, 13 Apr
 2026 09:54:38 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9818.014; Mon, 13 Apr 2026
 09:54:38 +0000
Message-ID: <00a50371-ab7b-44a2-9261-fc3f8308eb4a@intel.com>
Date: Mon, 13 Apr 2026 15:24:30 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/12] drm/i915/vrr: Add helper to readback EMP_AS_SDP_TL
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <arun.r.murthy@intel.com>
References: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
 <20260413035349.1730312-3-ankit.k.nautiyal@intel.com>
 <ady2etQgkOzYOOA5@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ady2etQgkOzYOOA5@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0012.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5082:EE_
X-MS-Office365-Filtering-Correlation-Id: 32deb13e-f041-4a22-3a23-08de9942acd1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|11006099003|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: /O4wOWog8K2NNImoet3LhTzhzwJDufgrcinw5g0l7ltHhDu/u+NN75+fHZ/A8+0DZGT7aRGqC6kVIbrUf6r/kYB0rE/G+cBcLi92A/LA8ci67pZFsTlNiZ6IzgSp7dHM4QSSLB0uHt/fucCczhixNTeTOByJN/nRXnev2x654VplBD9G6y/LbLnVYc4S187YuHVqkXAo1zy5NLDe5Ebc/kOLYWUHFbHwhQ3tLFkRhPT3KDaN9Qpc+WywF1t1p1ceCHSZN3mBprpaw6o2SfBd1NelPV3eM3T+HVh2fBgmTBVb/AyJ7MSdPcIBfn/FPtLI6g1wG9RyiH+mnRbDSXJ8Lg+G/unRi5J6T8I8aZeSTOaKK4SmyxkAqGlPRuheVt88eP/+xBpX2aUFbB8IjmiHF6lt+h+jmQ7rhPe6iKBeESwmkh9LUJM2rrKzMYaQeDjdIdG340VxzlL/KQzFmCPrMQx2uwO6anL1CGzw0VBjsHSUFzcWKuGYlCAH2P/zRCeQmo02RsUmfrNrvojOZgFYuA/WYhP53KhIMariSm08tf+W9+nziX+VVsJi31q+IhkNV46Eu7IrvK6xS1jWjnVG9mH9cjcyhfWAWP0KhEPho9KGnV/aKYOOFtFw9S2wtt0YwMyT5m86Ul80PshHrKzcoI0TceXn6qFQcUFIF8ZmoGOgXWvvexlCk7qPu7jJnfeq3BcWwZ5/INKloayRF3ULOZjwBNbphqA5Z3xAkvkeBfE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(11006099003)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SkRoV0U5QjJYUHZuMGtMdEpBakFqVjlMOXIrcVFsREkyb3NwTkdOY2VVZ1Za?=
 =?utf-8?B?Q2JzQ1NIOVdKK1hSbjlQRk5xZkpTUzhDMDdqNlh4SzJFMDNhZnRtTTk0MWpR?=
 =?utf-8?B?NWZkdktGTkEwQkU0WTZ6M3A5bHZ1cFRNWFB0ekUveGZXMU9kL3BlQmxJU1Ur?=
 =?utf-8?B?VVRGVjBvSWl1TXM2N3EvcDVzL1pKMjVUcEJNN3p0U0Z1Ty9UQkpTQ0NOSkkw?=
 =?utf-8?B?UGRBYVVMaGhCRUx6akkvK2lSekRDNk83MC9ML3l2a2JkVmFPbUcxcUxyN2hZ?=
 =?utf-8?B?VHNBd2U1VGw3QTFpWFkzWDRnM0FwbzN6Y2xQMU91VlJKTG9YQ1EyY29OcHd6?=
 =?utf-8?B?RVNHZHp5T0Y1b2k2NXJXWmdXYkRnRmd5M2twT2cwYjhtNmVqaitBYVprYlg5?=
 =?utf-8?B?NkJDeVhNanNDMVJuU0d4M01sWndNalhlbkk1OHBkbm5BSVhZUlZWcUlKcDFo?=
 =?utf-8?B?STZCSU9ZeTFtVnMxakQ2TExIQ2llUEFGNFlwS2FGTUpMU1IyNkdKZ0FSZVJ2?=
 =?utf-8?B?QktjUWMvSlZ4VkQveDRhUVQ5TFNOTzV2Y2JoUmxjWWs4THdpdVh2K2RsekhQ?=
 =?utf-8?B?VWdiTUU0bmFPZlM1b01pUjdOVGxrRXFmVFAxY25Ra0JyVGNLLzJpMFd5SU1n?=
 =?utf-8?B?TTZvN3lLL1pNcU84M05Sbk1IS2ZJUk82QTZiZ2RSMG9meVRicnV2WXhPc1Zm?=
 =?utf-8?B?WFNlTFhtNGZZaElIS3RVY2pBTHNCMytNaVdVYTZxOEZ6VHJrNnN6NUhmOHA1?=
 =?utf-8?B?REVVaTRPdVRtaUJvK2FZUjJCVUU0blMvYXFpOFl0LzVFMjVnT3dPRWFGT2xy?=
 =?utf-8?B?R1RuanJqNVUyNHlnV2JkRHlmS241bjZjL2xmR2JFTWE0cUhYTDB3M1JTejhG?=
 =?utf-8?B?djFGNFBjcnVEWHlvZ2d4Ry9uMXdia1gyOW0wcTNTUjdnemJwZkhBdFdYTTJr?=
 =?utf-8?B?RWdrbTRPMnNJUE5aZ3JqSDBEVEQ5VVRzcXQwQ0F1K2R3ZWdIYldFell5UWk4?=
 =?utf-8?B?eGJJdm82YU00bG8rWEFTWGtCTDU3Zzk0THpJb21uN05MbnhFTHJtS1NjcTNy?=
 =?utf-8?B?MGRTajhrVDRwVmlndDZSMnArV1FZaUx3NWpaaFIxRVg3VXQ3bU5tZWRDZWNL?=
 =?utf-8?B?MktBMmFSMk95bFRsM3hIZ1lpTUJxOWZubVllcjFTT3pDbVRIZXpSYmlESnIx?=
 =?utf-8?B?WUZlZGpHeXRNc0VmSWxZN054MXhENUJMOXgzcmRxNVF5NWdOUkFKVERGaWsz?=
 =?utf-8?B?Zk9LU0hYVXZQVTNSU3NqY1g1RmJNSVMrQkxJRHF0TWZZY3UveTVnZGVrdUNv?=
 =?utf-8?B?ZnhacldRV2JZckxuSUt3U1BDR2h0em5ncWthNEpiV1o2RjRIaDJ3WjlMenoz?=
 =?utf-8?B?R09OcXBicEI1NWh4aTc3VzBWcmhGV2ZqTTZ2aUhXZkVxcUdYUmhsOEVOT1kr?=
 =?utf-8?B?dkFmRzV6bEpINmxhaElWWHZaTE15TmQ2aTN0NGFXSjVCUURrQ3hRY3dKN01r?=
 =?utf-8?B?WnEwcHQwUkhKeDhYZG1iYzhBcDFpR0ZKOGR1YWxHckk0TXluR0owSEVqNFFC?=
 =?utf-8?B?cnkyZGFtcW5GTUdIZVpVR0JRaVVpVldldXQvekViMTBRN2JZUk5JRGM2c0ZQ?=
 =?utf-8?B?cGRSN1YzUWhEdXpFQ3loblVteFRpZDcyUUd6Unkyd1Z4ZU9LSncwUVlZNzFK?=
 =?utf-8?B?SlQ4dFh0Wmx0YUtMdHJWc05iTUZoSHNZYXVjeTNmUE5HcGk0WkRBVFFBMnpa?=
 =?utf-8?B?YTVZblI3MFdlZ3grVUhKVUlrd1dNbkRsYWp6eERQczVMMmY0azZhMjdFRkYx?=
 =?utf-8?B?UnpDTmVyLzBONlptOEtPRzhvUVRyQTVCVnR2Q3BQdzduVjE3TFR0VFBaSGUy?=
 =?utf-8?B?UUl5VURBOERxRENHdDBQODBkeHpMS25FbGM1STA4QzdPZmoxVTVDRHFBTS9l?=
 =?utf-8?B?aWFyTHFlU2xRVXVhVFE2SnNUZmtuQzNHc01FYTJrdHlDMVVyT1k4SnI2YWdM?=
 =?utf-8?B?cysrQUJzSmFNTE80dVFldzhPVVJ4REVveTRTc1dqbG5YeVRlbmt2c1M4V1FY?=
 =?utf-8?B?dS90QVBiNUF2L1JIbndnclc0MzZTTzRDRWN6R3BRZEhueGhDSGtqZUVoL0pF?=
 =?utf-8?B?U3dmaW1FMEN5WlBESnFZZGNFVjhpbHU3Z0EwanowNTByUkovVzl2NFNBTGo4?=
 =?utf-8?B?RU1Dc2NVY0ZuSXoxSEczY3R5OFo3UmQrVjcxL1ZIa2U3ang5aGVmTStBQWNs?=
 =?utf-8?B?c0h6VjNpK2V6UUI4bmJDSzkvbSsyQ05IMnoyUFZuM3FiTURaaDg2bmYya3pt?=
 =?utf-8?B?eDRZS0tmc0VKZ2ZKb2x4WUo3djV1NkhLcktsRGVhWkoxWFVmNzBJbW1KUlBF?=
 =?utf-8?Q?Z0cUBTskcIs4oFeY=3D?=
X-Exchange-RoutingPolicyChecked: Hk34ceG5M4SGbyYTTf9B8NqFesgE17/71yY7gMpKRcs9h6vIEtLkO6h3Y5WOFzimfrIG9ib3IXc3J1U2SIrpDPUB4pCQHtm0yyp6SjgGZqR6SFxJvxHxoSbNq4TJeTg1zfotZUY0CRGxhXGhZyvmg6bidyROZ4UTN3QoY3+zwWBBQJyz+Stl3xUZuq14+Jeh+YRQMmLTf7IbwBKtSoPT3jGNx/KaIq/rCiyYgAFxBQ/IGxKtNYbQ0/UAU5S93QOKPufKW2Ag8tjDwacMFua420IoaplfuE/glVAxphes6PhNRXa5FFqDbcB5oCSWB3GUHdDHlIrY9LNOdUAlIFvRwg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 32deb13e-f041-4a22-3a23-08de9942acd1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 09:54:38.3718 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2lBJVpxWosZqTBN9H+GrQWv2EAX0S5twkOUmWQSqI3dWfgOeCCvRcY1ROYv+qoCZ65OlNoStocDBHZS6XuMjKjU4WoZ3DjCywuY6YqHb+ac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5082
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: A2A403EA144
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/13/2026 2:55 PM, Ville Syrjälä wrote:
> On Mon, Apr 13, 2026 at 09:23:39AM +0530, Ankit Nautiyal wrote:
>> EMP_AS_SDP_TL is used to program both DP Adaptive Sync SDP and HDMI
>> Video Timing EMP for VRR operation. Add a helper to read back the
>> programmed transmission line from hardware so VRR code can populate
>> the corresponding CRTC state fields during get_config.
>>
>> This provides a common read-back path for VRR packet transmission
>> line state.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 13 +++++++++++++
>>   drivers/gpu/drm/i915/display/intel_vrr.h |  1 +
>>   2 files changed, 14 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 1fed597439b0..abdae7f1f8a8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -1218,3 +1218,16 @@ int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_st
>>   
>>   	return intel_vrr_vblank_start(crtc_state, VRR_DCB_VMAX(tmp) + 1);
>>   }
>> +
>> +u16 intel_vrr_read_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +	u32 val;
>> +
>> +	if (!HAS_EMP_AS_SDP_TL(display))
>> +		return 0;
>> +
>> +	val = intel_de_read(display, EMP_AS_SDP_TL(display, cpu_transcoder));
>> +	return REG_FIELD_GET(EMP_AS_SDP_DB_TL_MASK, val);
> This stuff really doesn't seem to belong in intel_vrr.c. We probably need
> some kind of infoframe/SDP file where all the relevant stuff lives. Long
> ago I did attempt to extract all the infoframe stuff from intel_hdmi.c
> into intel_dip.c (or something like that), but there were still far too
> many HDMI specifics in the result for my liking.
>
> So I think what's really needed is an effort to distill the core of the
> video DIP implementation (really just the low level buffer read/write
> stuff, and I suspect now also this transmission line stuff) into a new
> file. You could perhaps introduce that new file here, and then we'll
> try to get to extracting the DIP buffer stuff later.
Alright. I can start with a new file for SDP transmission line stuff.

Since we are on the topic, I had a query:
The hsw_infoframe_enable() switch mixes HDMI packet types and DP SDP 
types in a single namespace.
The types currently used don't collide, but I think these might collide 
at some point, (if not already).
Do we need to change this? OR these are guaranteed to be non-overlapping?

Regards,

Ankit


>
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index 4f16ca4af91f..6659a8a53432 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -53,5 +53,6 @@ int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_sta
>>   int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state);
>> +u16 intel_vrr_read_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state);
>>   
>>   #endif /* __INTEL_VRR_H__ */
>> -- 
>> 2.45.2
