Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0K20DgAOCGpVWwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2026 08:26:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE3355A7A9
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2026 08:26:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03B0610E1DC;
	Sat, 16 May 2026 06:26:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WUPjb79U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3380210E0D4;
 Sat, 16 May 2026 06:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778912763; x=1810448763;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iwdJJu0vBH/NZ0UANolqDGrfuofXAtMSb3zGO67vCfo=;
 b=WUPjb79UevGoWGhh4/OrHJMTuUjaF0525Il0lAcwiYBvii+2hLfjCt7o
 Wwv/qZrCpe/C6NtjSN7dY9SXwK/t0P1fxjA0Rx4BX61wCyRGkgV9s0udF
 o7gcP/qNT2JrAEWfi++QRqDH/dWjfZf4sz7V8IWUr1IKOPowkBF6YhMAT
 Tl+M6jxLUwYeOWlGn4FRBqs/wU1Oo3ECyRfRm/25H1Vk/W3P98u34WxEx
 sCY4Pi9gk5bkQBfjZBpQvpFhTRTxwiAXhbIHpHcObz53Gsx+Y55DiTe8J
 SBw2VQa03qByQ4Px4z5h7PUC5uR3xt1CHtL8AIBPVkXMYW9xMGsubNXcL g==;
X-CSE-ConnectionGUID: C9oHGWDXSp+7jEzdjvOZSw==
X-CSE-MsgGUID: hHgw/oUOSQe73VWDHmmMpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="79901478"
X-IronPort-AV: E=Sophos;i="6.23,237,1770624000"; d="scan'208";a="79901478"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 23:26:02 -0700
X-CSE-ConnectionGUID: ES2+yTHkRyimbg5+gzkcLw==
X-CSE-MsgGUID: kdax9qWVR8yqf2c1nwKZfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,237,1770624000"; d="scan'208";a="243886181"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 23:26:02 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 23:26:01 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 15 May 2026 23:26:01 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.26) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 23:25:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RC6AOa8szJFHLXX8YUrFVC3PavdAEEDYyHRcwAw05LJfZ1MBUx2gQnzgv7sZIV5BQ9p9O1/dXPiDlJ9K8vmMR5oOl4mgitoOKgqCvficTelpJxpmGDVgfd4ndYPJEeVaEyQP26pc7/ijisTd/t8SB5NhuDbI4zIsbWzrb5BEVQ9jKCrPJ9HYDIX8O14ekQnG/PIk02Ljy44OHgRVjwH1mn1bv63xbu3R6FXru1bqa4oQCNKY/LPhaCGjxkayQvxgPZQjY+84vDgrG+YPIN36kLwNb3UAWs8AMr2FQ4u9XbGaazDSUxxeSZHXOdn1wNU5o8xe82h9uuNc6uEJRm1sgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WzYLCA1oibdMufqUtas+Tg0s8Nnaux91XhqIyxzSs+k=;
 b=DW3bh6Ja2Ac9WtWVB+s6/kxHnI6hYjfm9v3vXY3muYkvYVMeAoKVH0oAzpKLHIStG1H8/m907Y+2ui0ym8bKtOym8s31VeHTOnHBkH4YzQHL2SOY/w0z4xxFsNH2HBox0DBPzjGzLvjYE34Ah3AbuRjI57FkupCBmsANQz1aTeRBN5tonSF9sFehcEIzyDfRhw7dyRGZXH3G5pwzdPZXtX9+dMoZnTDXHBb+NOzNdVyNWHaI1cTkRmluLJsoVTkcIRV0Q5jnS5M3EeDlzjKhdAlibtshOcDdXA6L28Mr45TyViLyrrMv5SpER5Gwmzct+2sxWtZupy732xjWes1TsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV0PR11MB9816.namprd11.prod.outlook.com (2603:10b6:408:383::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.21; Sat, 16 May
 2026 06:25:57 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.21.0025.020; Sat, 16 May 2026
 06:25:56 +0000
Message-ID: <90d349fc-0ce8-44c8-89d3-6ba1bdd967e5@intel.com>
Date: Sat, 16 May 2026 11:55:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/psr: Simplify the conditions for SCL
 computation
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jouni.hogander@intel.com>
References: <20260515073616.2794146-1-ankit.k.nautiyal@intel.com>
 <20260515073616.2794146-2-ankit.k.nautiyal@intel.com>
 <5c97667e52e740df76951ffa4f2044372214fc18@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <5c97667e52e740df76951ffa4f2044372214fc18@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0069.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV0PR11MB9816:EE_
X-MS-Office365-Filtering-Correlation-Id: eb4592e4-3a70-4881-96b8-08deb313fce6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|11063799003|56012099003|3023799003|18002099003|4143699003|22082099003;
X-Microsoft-Antispam-Message-Info: uYJNSacLKSrZrkJHdvGBjZZgRl4n20XuSwTsK2hvNlXA71YhZo/YjE51hG8/PAAr7FxzWZMcO/+9q0cs8Q6H3XlsRhh3FVMbIYdlILmcqwYpX/CPq4JEj/qNmF0i+Y0tbEPoSpsHsKl7jKyMX3dO4a1IpgIz8n/o+ggP4zeTsC8fxOAVo+YJup7EfzeK1awKueqOeaKt3MVVTYglUsgi5CF07zmDk9P+v6cpIWldXTUkYxvqh+qZ3lDvn61M5QirVFMr4vL8zuAoFufed4wSy5hEZq+gPGZ8hHjewR5Zm5mmI0Xkw3XVnc9jaOwNWnSpTbvf7TPYxbu1Tzuk/qdYukW8ASh8odmHBTcC4XqXz969hUQX2H9fETvNsvbktG+W6J+UxGgrZskjLaPUNJ1QcSdViUR4PB4V+TKhpEWUL2NdcU0ty2RHeAszpBokH1VWr173EgwE10+btLP5kyjapITrQ0FC/izsDDQuq4UDPnhKkT5L8+5Ngu1tAGn9wQl+Bd2qT8AcyljJcM2lFNX3BEBlk2UJPEpK/tgvpQBoNEJl9iBzxl+tGlfBZ6FShSrsFKgt5wIvJ73USwXSLKUEYm9kcn91YrUbFbqDIkaXZs1r8FTSJwHOMHQoo+7r52xvNjhRGpusixufa77wY39nVXxB36LB/MAsHS+RDz32StjuE3w/1hxbwu1lQPcCaIWE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(11063799003)(56012099003)(3023799003)(18002099003)(4143699003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qk1sR052QmVHbWJhN1NQbHJYc0JBelBwWTRVTHBWUDJXMFR3anFnUHJHNFpF?=
 =?utf-8?B?THh5ZmZQeFVTVHd6d1VjOFdISGRocUYwN3Faanp4cFgwT01vVVkyUVhBWUN4?=
 =?utf-8?B?NEZtMytXSGhjRi9wMkFJT1RCcWNiK1FVMVpmeWZNQU15dG1NYkFnTzgyVktk?=
 =?utf-8?B?OFZYM0dtRkREUWh3bkRvQThxenFqWDNZYldUTVRIRHhYMTdrR29haGgzMFJL?=
 =?utf-8?B?ZU1PaVJNejdlaUxOZEZBbHZicDRtZWhLSGczYkJGRitGeGYvb2FZOXVTTUJ2?=
 =?utf-8?B?V3VMc0RkSm5iYTZZTmJkYStoRW1ZdlNEVzJaSWhVSVVydzlYY1EwMm9KZ1Ez?=
 =?utf-8?B?NUppcDB6WWhiSUxXSzRHdU45UFBNTVJPaTlaZFQ5WUZ1bUdxdDJoazBYWEo1?=
 =?utf-8?B?dHlpNHV2YWI4NHB6aXBDWlcrRDUrcEh0aVRNakNyT2JGRjFpcFNqWkNhQ3Vv?=
 =?utf-8?B?SkhsMzNBcjZRWVlvVXRRWG1qcHZFVy8xTTRrZUVOOVlrQXY2T3ZGZ25FdWxU?=
 =?utf-8?B?aG1wWjE5S29CN0g4Tkt0Y29mOHR0Q0loSjZiQ0ViUTRtanYza1ZvU0lUZ2lx?=
 =?utf-8?B?N01CWk5nWUlheGZ2YTZ0Z3Nockl0azlxdEppM1dNZytTblQwRERqVTdFWHhF?=
 =?utf-8?B?cVd2K1Y0Y0dSRVNBTThVMzBTSURtQVJkMzdsUXFvN1drWkx6Q2EybkRZdkI2?=
 =?utf-8?B?NWVQVEdHTVozY3Nlb25tUGNtQUtMQlRoblI5RS8wSFdrTldSUnI1bU9idVlj?=
 =?utf-8?B?VDlCbE1OalAzeTJhdnd0Unk1VE1aN29wZTBTZzNhQmwrQUpZU2dzZEhNbnRB?=
 =?utf-8?B?cW9WSTNQejM0ZUV1dTdnN2lTR3FqS3dtZTlJTWp1a2VYUmxTUllwc2d0cU1x?=
 =?utf-8?B?ODBSUG54aWMrL1RCMEFvSklhcDhldmpEYWdIMTExaHBEck8vUGE2b0R5ZTNO?=
 =?utf-8?B?ZzBjM1RPSWtxbFNrVHZBenk3VGo4S3JBSWU1T3h6bGhYZFJDM3RtK3RWWmJs?=
 =?utf-8?B?eFF4dUQ0T2xDbzF3dlNDbElrdnBBT1cxRXFDZnlFaXpWTkE5REd3aGRKMFc2?=
 =?utf-8?B?cE1FNVh4ZlJ2ekNzTVc2SUp6V21tZE9rdGdEOHg5bStsdElKOEpkeHVBRjUx?=
 =?utf-8?B?Mm9XeVpTUEtCTDk0MlQvZGp4RFBJSXNmMUhMV045MThGZHFNUllFc1BGWCtE?=
 =?utf-8?B?Y3JZSEdJeEllNlBqM3JnSUN2dEIvNUx5YmFsRHhhS3B6Rmx1aUVWSGljYWY0?=
 =?utf-8?B?eDMrNWhVc1RQM0dZcnJ0RWxOZGcyemFaTlRTVWx4SmYxaGgzTWFCdXdBY3Rh?=
 =?utf-8?B?OCt3NDRrTTFDV1BOczAxV3NwVkNFWG9TMUpyb2hhLzJTYVloZFVqUjBFZnF2?=
 =?utf-8?B?aWVBOEk3UnZwQTJMNXZuUGYvazhkN1FQTGxFZW53eGlEanMvU2wyUFFLc2py?=
 =?utf-8?B?MzVlN2hDUlR2Ym1HZnBpSjU4dVVFdStMZXdSOVRjTWJmRXFrdEdnQzQ1R3Av?=
 =?utf-8?B?R3FUTWVHU1l2VXVEVHJjWFJrRmw4aHdBTUl4eHJCQ2ZyZlVPelRhQndjaGpT?=
 =?utf-8?B?QkRVeWphVVY4SFoyYzFRMU8vSXU3V1lQVVZOY3BBdlRKWDQ4VGFtMDJmQTZk?=
 =?utf-8?B?K2JHOFJVdm1sRjNjWmwwZk5jZllGeW01cnlLWUo3MEwxdnVYQnV6U2E0SDZa?=
 =?utf-8?B?OTh2WGZKUnZlNk1hS1phcXhpWS9Oc2UwK09oaUZCVFdZT0tiekhPVVRrWSt5?=
 =?utf-8?B?blRCRThzaHNpNjllb2xSOHZEZW8vQlR0TXQ4aDN4TzZHcWgxSjJNWGJJOXJB?=
 =?utf-8?B?OXplam9aT1JHVklpdnpRcmgvR3JUK21PU2hNUkNvajNMdjd1dzJSZVpNb3ZO?=
 =?utf-8?B?Qm53dGhJd3l4bkVlV2hnbUFPcXJHWWVFZTl2SFZ0ekRXZWxKaE5Hd2pOM3Vj?=
 =?utf-8?B?Z09wSXl4WFRINjl5WWNjdmxHeWI2OWRFc2x2aDVGQnhCVUcwSTJobUE1N0tz?=
 =?utf-8?B?TnNxZ2ZnVVoyaWxnU1djT0M5R2NjbDVDSmxoYWQwSzY3VDQwbjFnVDE4SVFR?=
 =?utf-8?B?TTZpd25XZEN1WmFMc3BRVU03SmRoanBjdzhNVWxCTFA2NHUrUDFDZFBsSDhF?=
 =?utf-8?B?cGJJbGxZVWordnhFbWJ3WGFPWkJMa1craFV1MFByakI0L3RVaUs1K3BKYVhU?=
 =?utf-8?B?a1I2Z3RVLytmR09lZXRmSDJxdVVzd2xMbkFpQXE1Q09RTTBBcVB1RWY1Wm9U?=
 =?utf-8?B?MmdJY0N3YUE0YjZaVHVrOWJNaXRNTEdxQ1Nyb0twaTR5bm9TSlF2WXo4Rk0w?=
 =?utf-8?B?amd3NWxvRU1WeDY0SlVndEE5VmJScHArQndpdjVtOVZIMWFvVWVNYmVwWkkv?=
 =?utf-8?Q?aXHA8ibmnBDq+VNw=3D?=
X-Exchange-RoutingPolicyChecked: aRxgkFD7oZdYFFF5O2OhnnTLS27H5ZCl+dv/sVMD1Dlv9eqvcBaGOSgYyJDZ+Mjtiflhoqo1YVtwwW8q9guyoBOBsvTXhha92F4kwrcYnhkkxnvMdoJ9fuUS09ytqBLN74gLwRlIdQVObx3YICFctapyj9QIrAb9aN5eMfdfwL+pugYwbtGF0y9J6TD9zRBRbmlc4IN768msLmDbBiyE04eNiswiDDzmE7pjBVmdmFgN1TUg5wQtADLxSA26wZX3ybQbpNUPDGlTYsUVy3Wp93FaunH6j/qosiM4XPnO+LJrwYF/aA9RD7wRCzrsOjdWw4WJ55D6gB1dLVHSRWFjiw==
X-MS-Exchange-CrossTenant-Network-Message-Id: eb4592e4-3a70-4881-96b8-08deb313fce6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2026 06:25:56.4170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T18AUQeyeH+Un/bRV6O7t5fwyBgFCh3kOnEN2DryBqwoertwB7IV+a0wMzwiBTSGlUTh6fwJQBZwKv//923yFnhHOq6XgtXrfXafUrW45w4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV0PR11MB9816
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
X-Rspamd-Queue-Id: 8DE3355A7A9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action


On 5/15/2026 4:00 PM, Jani Nikula wrote:
> On Fri, 15 May 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> The SCL condition checks can be combined into one expression.
>> needs_sel_update is common for both display version branches, so check it
>> once and keep the version specific checks together.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 13 +++++--------
>>   1 file changed, 5 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 8f70b7dcd881..5bf1d782188c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -1477,15 +1477,12 @@ int _intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state
>>   	 * SRD_STATUS is used by PSR1 and Panel Replay DP on LunarLake.
>>   	 */
>>   
>> -	if (DISPLAY_VER(display) >= 30 && (needs_panel_replay ||
>> -					   needs_sel_update))
>> +	if (needs_sel_update ||
>> +	    (DISPLAY_VER(display) >= 30 && needs_panel_replay) ||
>> +	    (DISPLAY_VER(display) < 30 && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)))
>>   		return 0;
>> -	else if (DISPLAY_VER(display) < 30 && (needs_sel_update ||
>> -					       intel_crtc_has_type(crtc_state,
>> -								   INTEL_OUTPUT_EDP)))
>> -		return 0;
>> -	else
>> -		return 1;
> The function has a bunch of simple "if foo return bar" statements.
>
> Please don't combine more stuff together, but rather split them up.
>
> 	if (needs_sel_update)
> 		return 0;
>
> 	if (DISPLAY_VER(display) < 30 && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> 		return 0;
>
> 	if (DISPLAY_VER(display) >= 30 && needs_panel_reply)
> 		return 0;
>
> Please consider which one is easier and faster to read and understand.

Yes, you're absolutely right.

This approach is clearer, aligns better with the rest of the function, 
and improves maintainability.

I'll make the suggested changes and send a new revision.

Regards,
Ankit
>
> BR,
> Jani.
>
>
>> +
>> +	return 1;
>>   }
>>   
>>   static bool _wake_lines_fit_into_vblank(const struct intel_crtc_state *crtc_state,
