Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ftp0A3sYI2pNiQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 20:42:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2F364AB21
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 20:42:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Dt7H5c0y;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE09311AA6E;
	Fri,  5 Jun 2026 18:42:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A54B411AA6E;
 Fri,  5 Jun 2026 18:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780684920; x=1812220920;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zDdcvpP9h5a4XoNv/Mjk3thQPkPHJbg7/CeSw9PEWmQ=;
 b=Dt7H5c0y27jSCNdhtZVqc9dg4RBjXWdkRyoo8+ddDRDJfJS/wuOEPUQI
 8xPGUyylr6jtUMcQiGWUUQEWn6JNI2TBHHIFXUx4QFvyyeRa24skgGyAE
 c//6o/pgLuzdCgezvTphm8jDbL2XxuFv1tRz8xX0n0uAYCGi6Mlx/hr/M
 UsXYVE44WRDx1TbmrQDXbRJJhVukr+R2vzZqTEBXc9MGidStUiSBn5Ykf
 d8k0bo2jUzwjBJUm8XSlJFKeVBGaJmJrvAwZpizt3PngFw5UrcT0epRfg
 YV8Zt9rLAVEeeE7Mhr+97zL1atLOrS5QrUCMn6gJHei5tVVeb+M/d+n0h w==;
X-CSE-ConnectionGUID: Nbk8w++8RI+Kpg3oL/WzQQ==
X-CSE-MsgGUID: jVFrghamTYS203ms+1v0vA==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="92093076"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="92093076"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 11:41:58 -0700
X-CSE-ConnectionGUID: wqDQITKOTR6m0TRBsctK1Q==
X-CSE-MsgGUID: WeJhmGwZTAyz0W6xWFM4GA==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 11:41:56 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 11:41:55 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 11:41:55 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.59) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 11:41:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=emKVwTdbjbCzIUj8qDD1YHAp79Mz/6/t+Ru1dwlyiBs/duXDgNLAOmMQ70n9v/C6g3GrXbAoROOyTbIaU3f2QY10D3EIzKi1lPLkU14KYXpHqoOZDkCpVN11ub8kNsQex40y5VtjsS9BbWrQ0HWViyRrMbedAw96ZIOyB65qHXwc6Kku1Z8GA7Pnzk2JYOJhpJZXEb3n+/dpH5okgyYBX58AdDq0hw0FxxqSO8YJhCHHRCrq2aUmR6l8WafX41/Et1bpWNE/x1CNNz3IxSJkV2k/z/WndXm0UTPpu4aiCoFnly+r22eOYddRPGdVq1JXL9l+cYkoUO3+WJ7S8TOFBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kQ6U+rdn/AthknV4MPbveqivxjZ4rVS7INaXLaIWz8A=;
 b=ZIO2lQd3WTKGnUz6IKyMWdMMQovnfidVgPWGF4f1vFAkg6DpWSEQdV8uyPfcC7qTz2tFu0/PWc0q1WR/SthNzlIO2IpYNtwwygf2ZBEKYK2gswXh1lbXGrM6KqYLoafrZ5cMB2tpVdJZsnABAa6pftZ/oyx+gm3AzVy85HzsHMDnCGBjeEe2xWxss+ySCZZIQjkg1UpAnmyiY//6vHzk+znk6Lh0AWdrFTYDpyAn60dyll2w6m1cG8gS4QVWDECyagVv4MSyIuriazUE/zd8ONX0D5nUDbMARFNXtyJ5AoiyyB/Jj4Obg0FdBgHYvFtyXtSXvSHCHGNVRCBwYpFhpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6)
 by PH0PR11MB4839.namprd11.prod.outlook.com (2603:10b6:510:42::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Fri, 5 Jun 2026
 18:41:53 +0000
Received: from MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811]) by MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811%6]) with mapi id 15.21.0092.007; Fri, 5 Jun 2026
 18:41:53 +0000
Message-ID: <309a9de0-339e-4e01-a336-fca7afb4d798@intel.com>
Date: Fri, 5 Jun 2026 20:41:48 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/xe/heci: Use xe print functions in xe_heci_gsc.c
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <saurabhg.gupta@intel.com>, <alex.zuo@intel.com>, <raag.jadav@intel.com>
References: <20260605160444.3833295-1-jonathan.cavitt@intel.com>
 <20260605160444.3833295-3-jonathan.cavitt@intel.com>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20260605160444.3833295-3-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0043.eurprd01.prod.exchangelabs.com
 (2603:10a6:803::20) To MN0PR11MB6011.namprd11.prod.outlook.com
 (2603:10b6:208:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6011:EE_|PH0PR11MB4839:EE_
X-MS-Office365-Filtering-Correlation-Id: 00e3d4db-5469-4b6c-973f-08dec3321ca3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|6133799003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: FGUu9OuK7JcfE6YsWDUYLBppepAy3GVyzQGyUWOZGTQcPZkHd/KUM5TjRxw2FVgBjRpHtmoNNZrR28Po0eCbx9e95gIG0bSyKNNBHR5zcSLAv7OOB5Mngl+d+BesRPIL6gnXa/0afGTEvj33b2SOmeeMtT+QRe3yAlHxLXSWRS3vxrDX1mPKIvISzfs+FUERdL34CpGqbTdOQ2etbLqDGGuFLQjV3VmeEXfvUE5K4kEfSwIvHKI9a75LjNZwEOsKo/WVRhTkiWgs/0An3uMvZqKkSUrHRpkVDg+Ze+qFOHjmYX+2NU5KY//Thb4wSJ7q0XOoLMJMozXLPUN5rZI2+9/QoUBb+XfkucNtmqEhIraru1TnUAiScdnY/NNfkut3NKR5hB8y2Jp6XIALRf04VcY7QDylsjDveX9sLGTUu+HwlfP1P6iJ7OXkKYbmK0NDiItKeEiS6hY3JwueO4H/tAR0rNfFgB57GWQu/tntyurwVwTJjBfTnqp+4ocpu5umwjWlYc1XxfXvFoN16jh9BxRNgCIhp8GGcs73AbCzEE9rJML7mVIJKkrXNyF5zXrN4FJnaNWu7FD7QjMJZcqaxaJF0+F7J6J+2tJn9F6D1+f/UO0ILxIvVxWNPChDL/UT7usASj7AzZ0P+4kQ/ggADjA2VUeVGGJPOgmz0LVSwd+ll+Wh8aaeYqj8CCqiiHXg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6011.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(6133799003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a05raWhQaFF0SzhiS2d6TXpQdU1jeGJWeWJzaFBKT1BLS0xvVVBwbjd4a2dG?=
 =?utf-8?B?YW14Q2FPcnNnNEF3ZzUyMXZVSEJyVTFORkw3S3puenZaZ2lSam0yMHBnZVZY?=
 =?utf-8?B?TU9aVEd1bjMraTB6aW5hbkdXcE0zVGZUZy9iNkcwRVdjNTJFMUxHTndkaHVF?=
 =?utf-8?B?d3VNL3lOSUwyS0N2Skpqa1pxb1NaMFpnUXIzMVhWczQvblRBeFkyWWp6UU9Y?=
 =?utf-8?B?eG0yOWZ2YWNUVHpFRURSUXlTcnpHUHk5aHAyRVFqNFJJcGhBNjRFQm5Ua1ZZ?=
 =?utf-8?B?OVYweVQ5OW96V2NTemlnNlBOcUUvZWdEUFRXWHNybFJNODRMLzBVdVhFSWRC?=
 =?utf-8?B?dVJmUDArSnVlVFBlRFIwZGgxQTNKcm00N3lhTUFIeFVZeDN6WjdlS3ZQSlZD?=
 =?utf-8?B?WTg1QTVKQ1FzY2Fzd3FGdnZvQzcxUFJydkNtb050Skl4NG54U25WWURtYTE4?=
 =?utf-8?B?WVNvM2ZoZy9OYkxCa24rY0kwZnZINFhnQThwaXE3OHBPVVo5dUJoYmtHMEto?=
 =?utf-8?B?OGRRUVNMU2tuQ25uYVI5WW9iQVRpMEoyYkxsWWtwM0pVVzRyMmpIZWxlWEJs?=
 =?utf-8?B?aWFrem9neHRXU05NOUNXSnpmVU9PcWU4N0ZoWkZOQjIySDBYaWlRM1c5eWd3?=
 =?utf-8?B?eUg2QzlwMk04TmVBejNiTFAzcDY4YVoxRVYwSkpPelhSQ0pXZE5uMnoxaEhD?=
 =?utf-8?B?NFUwSGJ4RThGTElGUStLbUlBY29VQTkvMXZwbzFzTzA0ZXhPMU9XOVlJUSta?=
 =?utf-8?B?MFVkY0tWdkJ3RkQzNVd5djhMYWhmRTVxUlJxYzhlUERqOWxOempBZHh5dUVI?=
 =?utf-8?B?cEJhREozT0t4bXVwNE5BLzBUZllwL0hnRW9wM2lxakhxcDZSQTdQVGFRMmtN?=
 =?utf-8?B?VFROV2NSWHV0OXZhWDNGd2VnMXY1L3BvRFJFYUpBN2hRR1pSSVgxRVBJdzgz?=
 =?utf-8?B?RlVqTERGc01kZ2QrMHd4alB6TUpRTXhnL2ZSdDdKdzJ3THdMc3ZURDdlOFdl?=
 =?utf-8?B?RW42RUxCdHU3clBsSDNuWm9uN0owMXlVbXFKdVVrVHFjb251SS9tSTJyUDNx?=
 =?utf-8?B?UlJhdHZuNXV6TWdjdUcxREI4a0Y1TDJOWitaTXAyc0VhdFVHY0hudDlBVXpv?=
 =?utf-8?B?bXo5MWViTVYrejV6SE9PNjZCWmdBN0w0OVdHODVMc0V1MloyalRjYVo2YUVl?=
 =?utf-8?B?dUxMY3ZIREk0ekppZjRXSzNxR3RCR1RaSHFWVnI5cVJ5WVN5OHdUY3lsdGds?=
 =?utf-8?B?V0dsS0pNOWhJSlVoN2lnQmlKcEZTbkRsZnZKb0EzTDEyb1p5REdSK3NxcU1j?=
 =?utf-8?B?Vm92eE05MktmNm0rNGIyOTVYNUE5eGt0TXFDdFQzQzJoaVZqY0s1SDRDc3VK?=
 =?utf-8?B?S3UwR3Y4bllXNlV1TEJvQTBhUUdCaytrVFo4bWx1cXhnWDV3VzhOb0JPRGpm?=
 =?utf-8?B?eFh1NGlPSFhBOXNPRjliZjcwQWsxdGtSaEl0cHkycEJsNlBCTmE4azVYUGtU?=
 =?utf-8?B?RE4vcVJyRmZHM1VSVVVnMHVadWNYZWxYenh0VlYraEZLbm96YUp2UDRkN2tz?=
 =?utf-8?B?NXhHMXBlRC9mZnJFOFNqSkRGSnA0dGRYWWJCMmxWOHFncW4yZ3N5SDA3YTQw?=
 =?utf-8?B?c1dwLzEySXJsTW5GK1pNMk9CSTUzdFdockhmWllNalJvejNKQ2hvN3FmUlQ1?=
 =?utf-8?B?ZnY3bWt1VktuTG1jdkZUUUZOVHBWMjFlNVhVL0xTa3hURnB4NUtTOUE2dVV5?=
 =?utf-8?B?VSt4VVpNUVI1Q1JKV3hTU3hsR2tXbGExeGhiK1EybzJrRGJhMXppWXdleVBF?=
 =?utf-8?B?UW84NEgxNDNJZDdyUVZsL1FFVjR5MDlXcWU4ZzJxZlkzampNZkp0L3VxVHN2?=
 =?utf-8?B?cTVnL0hKZ3pjQmhWb2VSMDFFc2lLaGRUaHpyWXh2L01CaFlac0J6VUtTRnp2?=
 =?utf-8?B?UVQ3TExPNDlRNmVvbmRyeEJocENwdDJ5ci9GaEgwMm1MM1ZWZTFMZW9XZzdS?=
 =?utf-8?B?L2FsNDJkVXJLRFRRSDVBYmFvYmdQUjlONUdocVNGVkRNQXlwOHRMdlJ4MXhI?=
 =?utf-8?B?bjlRRHZEQ3ZVSXo1WktFZzVTRzNwZnN4dG9yQnVCT0NtVzZqbW1yNXp5eWQr?=
 =?utf-8?B?dXJsLzU3MVl3QlRsUzk1ck5UY1NxNUZQSlo4R0pDRVJoakxETkUrREZDSklG?=
 =?utf-8?B?bWlvbmwyMUFpNkczNnRHdldRUTh1UnhHa0doKzRUVHVTYTJiVURBSU40aHow?=
 =?utf-8?B?Q2grY3A2N3NlbzM5VE5Tenhub1dnOEg0dlY4RFR1UVRsSGVRWUZraWc4ZHJp?=
 =?utf-8?B?OHNZK0RQZ2tpelJuSnlVQlAwRjc3L1lsazFHZ1lxdlpKRVJFcS9qdzloazRT?=
 =?utf-8?Q?pUA27H6Gw3/YtKFc=3D?=
X-Exchange-RoutingPolicyChecked: ERnsRK8jG+5QNxdmakK1pEinlC9ywhvXz4+Z/dwpnheIPhpH64WBzzxsGEULkZOavJxxzdEvOeZqFaEtivRHb5LnclBajEAiTEBDdCMk5ddAUe0gS8mGToLKEYr6R0IBbSYLYDGcmvOe8WJpaFz53tqZ2fGHObm1k9Wuc5ChFb5m2ZX6POkZFWiN5zYmO4WDN8bMn1hnVlVXgiJSVCAR8gZydTMuy18YMFcE2MVHoyK2YbU7PS5AuoSDuI5chdknvHYHMsYXLTO88b82v4E8Y+n7ScRO+hogLsqZ17BMsAPXDMSR2yW00p47fyNVQKzaco08RidjNho0rG9eDFe3xg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 00e3d4db-5469-4b6c-973f-08dec3321ca3
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6011.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2026 18:41:53.2510 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OEdj9f+GI0wJ5MQS+cXX8WgpYFmptEObwp1UbIkdyL2FbPKrJ2gz5Yz6caD4YXAWACYKN7apsoOvUuSHbuBcmGzlwLnSv8egYnWjXwyxl7g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4839
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[michal.wajdeczko@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6E2F364AB21



On 6/5/2026 6:04 PM, Jonathan Cavitt wrote:
> Update xe_heci_gsc.c to use the xe error reporting helper functions in
> xe_printk.h instead of directly calling the associated drm print
> functions from drm_print.h
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_heci_gsc.c | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_heci_gsc.c b/drivers/gpu/drm/xe/xe_heci_gsc.c
> index 5af8903e10af..d716371fbbe9 100644
> --- a/drivers/gpu/drm/xe/xe_heci_gsc.c
> +++ b/drivers/gpu/drm/xe/xe_heci_gsc.c
> @@ -8,10 +8,9 @@
>  #include <linux/pci.h>
>  #include <linux/sizes.h>
>  
> -#include <drm/drm_print.h>
> -
>  #include "xe_device_types.h"
>  #include "xe_heci_gsc.h"
> +#include "xe_printk.h"
>  #include "regs/xe_gsc_regs.h"

nit: this one is at wrong place
>  #include "xe_platform_types.h"

and xe_printk.h should be here

>  #include "xe_survivability_mode.h"
> @@ -112,13 +111,13 @@ static int heci_gsc_irq_setup(struct xe_device *xe)
>  
>  	heci_gsc->irq = irq_alloc_desc(0);

nit: what about moving to devm_irq_alloc_desc() first?

>  	if (heci_gsc->irq < 0) {
> -		drm_err(&xe->drm, "gsc irq error %d\n", heci_gsc->irq);
> +		xe_err(xe, "gsc irq error %d\n", heci_gsc->irq);

can we print error code in more friendly way using %pe

and I guess we should use "GSC" name, not "gsc", so maybe:

	xe_err(xe, "GSC: irq allocation failed (%pe)\n", ERR_PTR(..

>  		return heci_gsc->irq;
>  	}
>  
>  	ret = heci_gsc_irq_init(heci_gsc->irq);
>  	if (ret < 0)
> -		drm_err(&xe->drm, "gsc irq init failed %d\n", ret);
> +		xe_err(xe, "gsc irq init failed %d\n", ret);

	xe_err(xe, "GSC: irq initialization failed (%pe)\n", ERR_PTR(..

>  
>  	return ret;
>  }
> @@ -151,7 +150,7 @@ static int heci_gsc_add_device(struct xe_device *xe, const struct heci_gsc_def *
>  
>  	ret = auxiliary_device_init(aux_dev);
>  	if (ret < 0) {
> -		drm_err(&xe->drm, "gsc aux init failed %d\n", ret);
> +		xe_err(xe, "gsc aux init failed %d\n", ret);
>  		kfree(adev);
>  		return ret;
>  	}
> @@ -159,7 +158,7 @@ static int heci_gsc_add_device(struct xe_device *xe, const struct heci_gsc_def *
>  	heci_gsc->adev = adev; /* needed by the notifier */
>  	ret = auxiliary_device_add(aux_dev);
>  	if (ret < 0) {
> -		drm_err(&xe->drm, "gsc aux add failed %d\n", ret);
> +		xe_err(xe, "gsc aux add failed %d\n", ret);
>  		heci_gsc->adev = NULL;
>  
>  		/* adev will be freed with the put_device() and .release sequence */
> @@ -190,7 +189,7 @@ int xe_heci_gsc_init(struct xe_device *xe)
>  	}
>  
>  	if (!def || !def->name) {

missing def looks like our coding error, shouldn't we just use xe_assert()?

missing def->name is also our coding error,
we should have no runtime checks for it (except xe_assert)

> -		drm_warn(&xe->drm, "HECI is not implemented!\n");
> +		xe_warn(xe, "HECI is not implemented!\n");
>  		return 0;
>  	}
>  
> @@ -215,7 +214,7 @@ void xe_heci_gsc_irq_handler(struct xe_device *xe, u32 iir)
>  		return;
>  
>  	if (!xe->info.has_heci_gscfi) {
> -		drm_warn_once(&xe->drm, "GSC irq: not supported");
> +		xe_warn_once(xe, "GSC irq: not supported");

		xe_warn_once(xe, "GSC: unexpected irq %#x\n", iir);

>  		return;
>  	}
>  
> @@ -224,7 +223,7 @@ void xe_heci_gsc_irq_handler(struct xe_device *xe, u32 iir)
>  
>  	ret = generic_handle_irq_safe(xe->heci_gsc.irq);
>  	if (ret)
> -		drm_err_ratelimited(&xe->drm, "error handling GSC irq: %d\n", ret);
> +		xe_err_ratelimited(xe, "error handling GSC irq: %d\n", ret);

		xe_err_ratelimited(xe, "GSC: irq handling failed (%pe)\n", 

>  }
>  
>  void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
> @@ -235,7 +234,7 @@ void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
>  		return;
>  
>  	if (!xe->info.has_heci_cscfi) {
> -		drm_warn_once(&xe->drm, "CSC irq: not supported");
> +		xe_warn_once(xe, "CSC irq: not supported");

		xe_warn_once(xe, "CSC: unexpected irq %#x\n", iir);

>  		return;
>  	}
>  
> @@ -244,5 +243,5 @@ void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
>  
>  	ret = generic_handle_irq_safe(xe->heci_gsc.irq);
>  	if (ret)
> -		drm_err_ratelimited(&xe->drm, "error handling GSC irq: %d\n", ret);
> +		xe_err_ratelimited(xe, "error handling GSC irq: %d\n", ret);

GSC or CSC ? function is 'heci_csc'

>  }

