Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Rxo5H5eYS2rlWAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:59:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9927102C5
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:59:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=O4WBZXeQ;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8FF010E37E;
	Mon,  6 Jul 2026 11:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58E2210E0A9;
 Mon,  6 Jul 2026 11:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783339156; x=1814875156;
 h=message-id:date:from:subject:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4q2pYTFwp+bgbE9vAWb3FsGoMvgIXQc2aT/4DGEBdlY=;
 b=O4WBZXeQ/CyfoDXGNUaZUS2auSVk+Uud2tDtw1lg07PUXIdeiXzleIpE
 5LLhg7n0q6cjjwpEyMomeufX8g7rmgmR2rQNczeJ6tVvBaGab7qIS7h/l
 o+Nd1FD4NO6f4cxfdTadtmjVIjrctMhNU2H5GXce1agm+VgRcoaDatyfI
 UObmQb8YZPFWuEl0OUBECm1AMI5XVcJZO1JnWgmxh6lIvq3BG2f963eLE
 JYz9hFJrq5aeEtUeQZCwTL3zWnOee2+tfgCB9cieUSmx7XM2R5ZtEwbTG
 q5l2M4SjaDoeoL2l8/BkTy27u4zFOWXDOXsN1P38IkFj+vt4HKtSjEZMB g==;
X-CSE-ConnectionGUID: rDGY0ggBRzuho5tK1jV1Nw==
X-CSE-MsgGUID: jT39UYWPRNKZcwTW4NaXBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="87650789"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="87650789"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 04:59:15 -0700
X-CSE-ConnectionGUID: aarB2sc8S4Cdye1DS9XhbQ==
X-CSE-MsgGUID: gsuHx72GST2ZhZ7t4Yw8Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="257280330"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 04:59:15 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 04:59:14 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 04:59:14 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 04:59:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=go/4QJvnSmF0x2/r+NINpN6/zNU88pSrjc8XS9lvuRqsFzuxz5toTPt0xpofbtvgY9gV5OzxFfY1UPulFBFUM+NlhMfMTuBL/O+MDRhzucLYihpruA/yoNVoEwuIovYKZ6/LqjKk48h/RzrfxDzapF7ZxOYdod1WmM1ZQlOjOJDhUtK+5vYp/LjHcCuhdJjVGqV1jxoP8j0CFsCx/hT/RgmUl2E7lADGYzlzIw105UKlFyapJ0KOT2rkAmeJI1OiSvYqQXJTJHePCb4TotnlTX5cf9MapdC3CCf8sbB6TzOJOR2akQOQShufUX6+9SoShxeJq2lvH4tQFKPZiBYexw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pZ21U8FHzLevRH51m+QNXoLrKz+nRLD2aQ1Ir1gvx1U=;
 b=SmL1Ml11vl5i5gzA24c8m4aBziMSjgHU9L4IPEFKVT9jPful2+W3i3oM5WNYNxt6RLUfIcdsoQBpVU2dt7Aaf2ynqcDPdAj6K3sWZwL65bHoQURhCOzud5tI8N6yds90yTuc5+eRubEvLtQsAtyR/jHGc4PVI+/O3yaldUSF0ZRODDM5iJa/FzI0ed9QwOSUzzGWUgRaM9QwXbG374tKgAcqhMPcAmwjc5jDhf1RSqp+2Q0m9g6z1VWzUdNcwrYEKho76LHu93CLYB3l416EG8B26O9bjfhqYi+46ssMddgee+e7y43PiHgoONWIXBRBl5WGynVzw6xlGE8iQD7rgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by IA1PR11MB6370.namprd11.prod.outlook.com (2603:10b6:208:3ae::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 11:59:11 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 11:59:11 +0000
Message-ID: <1466c65a-a1e4-4a23-b8c8-0d1db262a6f8@intel.com>
Date: Mon, 6 Jul 2026 17:29:04 +0530
User-Agent: Mozilla Thunderbird
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH v2 01/11] drm/i915/vrr: add per-CRTC vrr/cmrr debugfs
 control
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ankit.k.nautiyal@intel.com>
References: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260616144233.832276-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-GB
In-Reply-To: <20260616144233.832276-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0159.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1cf::9) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|IA1PR11MB6370:EE_
X-MS-Office365-Filtering-Correlation-Id: 939d82e1-4300-4b9d-ee2e-08dedb55fdc3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|376014|1800799024|4143699003|11063799006|56012099006|3023799007|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: qS/QC55tDnlAvIYc7pGq9HJpRUnvLyhWZ+C5iBS5q3TUTwcoGJNNuWGK1GYly4VpSXqQlw+hn5v7IdcqfCsQju8ftHZUImujKpr57UZ9GV7zBipT5KPJz3obek/tagwwltleRJwZ5DK+wknoZJKUP/nSvSnDyGS+Au5dBsP7LN4qMD4Qgy6T3J9WZskm5fIwg/krKAEAKa2l4ZTo3mmmmu2Sbc09UmBQ9IiUxmx3LfBZzgxEjIDQzEt2/Aui9fqZWoWIT7bXV0lwwbs8c0SBOeZ6nxlO6P86ar2TtDaWc5ofybQtFtHfNtWIvTAeGaRaOxCLzMZRBaM6nT99yHTlWly4rVYJR61dae917tUEpGsbg/asL8Er3JjmGY/6/Eu3NBfXg9dmxPsum+osk2gzt4BbxP1bYEyM0IFWM+2iz4k9a115yY3h/qQ5mVSGEd5OkAdk/Q/iP8CygFHxEBipLVmrBJu8VzQrIK5Ok8/UNm0WhwKnkmGPPMYs7oEc5QKUn5XDb26xNdDx6EC1Tc8E28yZgweI1FKyhdv02+9m7mWvZQGw2ApycyGVf/T+BZjWs6CPJ+8dLHgugfH/2fNRevuacAskumtIJdM3VpgneC26jYV8wcRd1zqTwU1pJkI5CDZ/bS/MuQ2puE9e2QE7ICyU9xvxJopXT7Km+BQOuS0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(376014)(1800799024)(4143699003)(11063799006)(56012099006)(3023799007)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VTNBbkxRUHNzU0RMWkFkcnlZRGp1MWtPT0ltZXdVbXV0TnRTZHA4L2Y1ays5?=
 =?utf-8?B?MjdWcmpyMmw4RTM2N3F1aVBpZW4wNnM1U1ZBMlNlQ3lsbkdQQ3ZiNThqNnBo?=
 =?utf-8?B?TzRjTTMvTWhpMFN5dzlaQ0k0RmhjOXVTQlJ5eS84WlhpbzhGQ1VOeGtRbU5X?=
 =?utf-8?B?L2dlK0FMRFh6SUZsdzRlTmdpUGYvbWl1bE5xODJZUEFkb3dCRHRBdDRtOVNu?=
 =?utf-8?B?SzAxRyszaHoxQVRTblJNZndYaUZpTUFvbG1oeHdFMk8xYXVDMTNnaXBQOERl?=
 =?utf-8?B?UVQwMER1blQ3SEtCajN3VzcvOWYwVVpNSzh0enBGVGJ6dWxseVZ2WHpnOUQx?=
 =?utf-8?B?YnJVckVrbHV3L3UyY3ppQyt1bW1ncUtsdDY5MzJzQnh5eTNmcldUTmlYWWFn?=
 =?utf-8?B?T2t2ZEgzL0tsK0Nrb1ZwZHBmZjE5RWpVYUs5dkRGYUdFcGkvQXk1R1VSdk5F?=
 =?utf-8?B?Z1RrNUVkWjVTUE1qWmxoWUo0bHZ4NVppTTdQOVE5ZzNjakw1ZmZoWmxQaGNr?=
 =?utf-8?B?U0FmZURxS0RqSjJtbjdHWWEzM1VWMGtDUmY3QklBd2NjM2V2bFJISHlNVlB4?=
 =?utf-8?B?L05tYSs3Z0R0cGZQSmJCNFBoSmZqNEpPL0pqeWdBbkF6aDQ3bUVQNG5rNmda?=
 =?utf-8?B?RmZGd2ZSUE9IY2VNMVp4M09qbU9sblB3R0g4TVNkcWc3aHdLdWlRQlQyWEti?=
 =?utf-8?B?YkpSSDNvU3JTOGRhUndyYkJPMmJsOGdBM1pEN0p3aDF6T0FYV1YvSU1Xb1FX?=
 =?utf-8?B?NFkvb00yRkQzZWFYR1JoSG5hdnMxNnI1WjVZRUpYSlNyZGh2MHVBa0lQY09x?=
 =?utf-8?B?NzJVRytDMGpPcjlQQmdReXRvaStkSWVIbDBwK0FLQXN0NWRLNy9uR3BxbmhR?=
 =?utf-8?B?cCtpMG1QWVNTMkJBV2FYT0tRY1pTNWY1alRmQmNyYy8rZVBEVWdickVYUUxK?=
 =?utf-8?B?Q3VSWXU1RklFaVFJSXEvaTdsWUlOZXZiQ3NOSTN1ZThlQkgzVnhYSTM5N0J6?=
 =?utf-8?B?VU1RTS93OUdkN0RlSldnNVBUUGR5Y2pyUDIydWN2OTV2S3RjSUNlV1JubDhk?=
 =?utf-8?B?bC9PRHFZYk1YSzdPNzczTTBvNjgyYlhmYXhzQW1TK01KKzNUaXVNYnZMN1pw?=
 =?utf-8?B?YUI0cDNxcXZFVGtFdUJZZGhac3FLKzNUdTRqYnNFdnhSbmJYUGJVWjdEcFFx?=
 =?utf-8?B?UVFheTRYMWE4cDFDR2wzRHAvWFdRRnR5bzBMalI4MzUrUlI4QVh5WE5tRFpW?=
 =?utf-8?B?cVo3QUljMlV2cWxXa2ZyWEdSQy9HemExK2dSdGgvbWhObHlLQ05GVW5DT1lm?=
 =?utf-8?B?QmRZeUw1QTBDalg1bHdqWGlHbmxRNkI0TnhZRzEycXVObTIwaGU1Mis1bWYw?=
 =?utf-8?B?cE5pMGRZN2JybnNQdW1VVDBlWktJOHZnWmxLcmp6WURBWko5cU5Wd2NqQ28z?=
 =?utf-8?B?VHp4dXh2LzA5Ymh3T3djYTY0MlRSSVNUS1Z0aDZ3RUR1MWNLZk1yVk1IWURv?=
 =?utf-8?B?ZXZOVkdKbWtuSE5nckZOQXVZeUwxcjV4bUExTjRwYTZKSHFObG0wNEwwRzM1?=
 =?utf-8?B?SEkycVB4RTh3WXUrdndkWkp1OERMMGp6MTRPdUpiNDdsbnFJeWs4MjFpdWhy?=
 =?utf-8?B?cEVsKyt1Z3ZuOWZ3UWgwem12RWg4eGV1ZTZiaHhNS3NWYlFHa3VwOEpXOURv?=
 =?utf-8?B?SS9UZ0QraVh5STJkckM2eEJMbWVPK2FKMk9kU0hhT3F0YTJQd2liWER6OGNk?=
 =?utf-8?B?QkYyU2E1RDE0OGM3WmU4SkRLWm5OdVdyZC9uWjZZTDA3WHE5MmZrUEwvLzdU?=
 =?utf-8?B?Q2U1NWpDeUxoNkJvcFJHd1ZxUHE3NGx6NkQzTlBsdjJJUUhSKzBrOC8wVFlH?=
 =?utf-8?B?TGJqWXBxT0tuSk90Z09zOElrNmNHQXpnZ3hPdERXU2xNWGdZR3JtbmpXOVVU?=
 =?utf-8?B?ZnFMSlN0bExJOEJ1a2JSTCt4ZkxqRXlQbDFVMnRqbEtQNHlGV0ZGSmUxajVS?=
 =?utf-8?B?YXpuRTlyZWNlWm5ScE9wZER0UFpERnRGNnhNV0lZRnZrdWpJWmJJSWpzOFRH?=
 =?utf-8?B?VUFpZFo0Tnp3dVVqS0ZSUnFBWXduQzRQNGI3S2V5b2Z2T251OTBhUVFqdncw?=
 =?utf-8?B?RnM2Tk44RHp4eC9ITnNLQy9welBVY0RUUTRoYkZnNGVldi9MWENzNVdrRnRu?=
 =?utf-8?B?K2M3VnlDL3JBZ0Z5RzB1VlJlNmkrYzJIZUNCeTRxbGdzdTdncXZKWU9WUXBC?=
 =?utf-8?B?OE1NOWdrVk5WZFllMTNtdnJRZlR1ZWdZMmd1NTkxdFVQUk0zN1pLZHA0Mm00?=
 =?utf-8?B?dG1mZjhlcHplNGozZTVjQTZzcE5mME5kZG5yQjU3Qk01L2lPK29xRVIyeHRW?=
 =?utf-8?Q?HReJ3pCO0unPosCI=3D?=
X-Exchange-RoutingPolicyChecked: LO98fo4Y4k4ma63Mka380i0PALTLISwH641CIcs5H467RyjYewBzNvV3Wt64p1M56P+oQJm9tCybfeJUUG8Lj/Xg+aMdFVh3wTS4i6FlTrlfRO5cwS15UmfvWo2m7LCg6ZDzIoYfyb8KGCX/r8e0wCHRsWB5Fw9FMR1xFaWSHmfVxk9gcAz0rhb7ZcUvk1ecwiRUrJ/13lSx6/adYGDcvHqwyywFPffM/hN5/9FzsUK+eIOcaoHujA67tWqhli95xc14wtAk5LoqdOhBwYV2z/f6exGKwJuaM3gAx7eVFFLnUtYxocC6j36mvaBJq1XFTuZz3a94Bd7UA+3LLZghQw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 939d82e1-4300-4b9d-ee2e-08dedb55fdc3
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 11:59:11.3162 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KNkSZOY200uSE7806rtGJWnEShZ5TgOglwMtihJV+hSBBT9uMQEpAq0Lbfb4h1fBYRdC4f6788WYIk+ucorLKdrZtO+c19me4iTjCA3ok0M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6370
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CE9927102C5



On 6/16/2026 8:12 PM, Mitul Golani wrote:
> Add a per-CRTC debugfs entry 'vrr/cmrr' and a debugfs file
> (numerator/denominator) that indicates user intended target
> refresh rate and video mode requirement.
> 

Please add more details regarding the semantics of the debugfs entry.

> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   .../drm/i915/display/intel_display_debugfs.c  |   2 +
>   .../drm/i915/display/intel_display_types.h    |   5 +
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 105 ++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h      |   2 +
>   4 files changed, 114 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 08004c1ba03f..1ce6e73ec83c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -48,6 +48,7 @@
>   #include "intel_psr.h"
>   #include "intel_psr_regs.h"
>   #include "intel_vdsc.h"
> +#include "intel_vrr.h"
>   #include "intel_wm.h"
>   #include "intel_tc.h"
>   
> @@ -1393,6 +1394,7 @@ void intel_crtc_debugfs_add(struct intel_crtc *crtc)
>   	intel_drrs_crtc_debugfs_add(crtc);
>   	intel_fbc_crtc_debugfs_add(crtc);
>   	hsw_ips_crtc_debugfs_add(crtc);
> +	intel_vrr_crtc_debugfs_add(crtc);
>   
>   	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
>   			    &i915_current_bpc_fops);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 6cd102a3b610..897a1ffd7b79 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1545,6 +1545,11 @@ struct intel_crtc {
>   		u64 flip_count;
>   	} dc_balance;
>   
> +	struct {
> +		u32 numerator;
> +		u32 denominator;
> +	} cmrr;
> +

Please make it explicity that these are use to force CMRR refresh rates.

Something like *force_cmrr* would work better.

>   	int scanline_offset;
>   
>   	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index cd380fe8fd01..41118883b845 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -4,6 +4,10 @@
>    *
>    */
>   
> +#include <linux/debugfs.h>
> +#include <linux/seq_file.h>
> +#include <linux/string.h>
> +
>   #include <drm/drm_print.h>
>   
>   #include "intel_alpm.h"
> @@ -1231,3 +1235,104 @@ int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_st
>   
>   	return intel_vrr_vblank_start(crtc_state, VRR_DCB_VMAX(tmp) + 1);
>   }
> +
> +static int cmrr_parse_ratio(char *str, u32 *numerator, u32 *denominator)
> +{
> +	char *sep;
> +	int ret;
> +
> +	/*
> +	 * Parse a "numerator/denominator" CMRR ratio string. The numerator
> +	 * is the requested refresh rate in KHz

incorrect it is milli-Hz

For 60Hz, numerator will be 60000.

(refresh rate in Hz * 1000)
> +	 * and the denominator selects the timing: 1000 for a 1:1 ratio
> +	 * (no video timing) or 1001 for the 1000/1001 video timing.
> +	 */
> +
> +	sep = strchr(str, '/');
> +	if (!sep)
> +		return -EINVAL;
> +
> +	*sep = '\0';
> +
> +	ret = kstrtou32(strim(str), 10, numerator);
> +	if (ret)
> +		return ret;
> +
> +	ret = kstrtou32(strim(sep + 1), 10, denominator);
> +	if (ret)
> +		return ret;
> +
> +	if (*numerator == 0)
> +		return -EINVAL;
> +
> +	if (*denominator != 1000 && *denominator != 1001)
> +		return -EINVAL;

We could use some check for the numerator too. Perhaps some common 
refresh rates or the ones that we expect IGTs to be written or valid 
once from the edid. Check could be either here or in compute_config.

> +
> +	return 0;
> +}
> +
> +static int intel_vrr_cmrr_show(struct seq_file *m, void *data)
> +{
> +	struct intel_crtc *crtc = m->private;
> +
> +	seq_printf(m, "%u/%u\n", crtc->cmrr.numerator, crtc->cmrr.denominator);
> +
> +	return 0;
> +}
> +
> +static int intel_vrr_cmrr_open(struct inode *inode, struct file *file)
> +{
> +	return single_open(file, intel_vrr_cmrr_show, inode->i_private);
> +}
> +
> +static ssize_t intel_vrr_cmrr_write(struct file *file, const char __user *ubuf,
> +				    size_t len, loff_t *offp)
> +{
> +	struct seq_file *m = file->private_data;
> +	struct intel_crtc *crtc = m->private;
> +	u32 numerator, denominator;
> +	char kbuf[32];
> +	int ret;
> +
> +	if (len >= sizeof(kbuf))
> +		return -EINVAL;
> +
> +	if (copy_from_user(kbuf, ubuf, len))
> +		return -EFAULT;
> +
> +	kbuf[len] = '\0';
> +
> +	ret = cmrr_parse_ratio(kbuf, &numerator, &denominator);
> +	if (ret)
> +		return ret;
> +
> +	crtc->cmrr.numerator = numerator;
> +	crtc->cmrr.denominator = denominator;
> +
> +	return len;
> +}
> +

Please add *_debugfs_* to the function (that explicitly handles the 
debugfs) that are missing it.

> +static const struct file_operations intel_vrr_cmrr_fops = {
> +	.owner = THIS_MODULE,
> +	.open = intel_vrr_cmrr_open,
> +	.read = seq_read,
> +	.llseek = seq_lseek,
> +	.release = single_release,
> +	.write = intel_vrr_cmrr_write,
> +};
> +
> +void intel_vrr_crtc_debugfs_add(struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(crtc);
> +	struct dentry *vrr_dir;
> +
> +	if (!HAS_VRR(display))
> +		return;
> +
> +	vrr_dir = debugfs_create_dir("vrr", crtc->base.debugfs_entry);
> +
> +	if (HAS_CMRR(display))
> +		debugfs_create_file("cmrr", 0600, vrr_dir, crtc,
> +				    &intel_vrr_cmrr_fops);
> +}
> +
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 55e9c429f579..19c7990be1b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -56,4 +56,6 @@ int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_sta
>   int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state);
>   
> +void intel_vrr_crtc_debugfs_add(struct intel_crtc *crtc);
> +
>   #endif /* __INTEL_VRR_H__ */

