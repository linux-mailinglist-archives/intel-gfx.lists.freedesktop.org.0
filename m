Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id De1lMVzWHmquVgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 15:10:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E139B62E50E
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 15:10:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FhmJINix;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F7E10F0C4;
	Tue,  2 Jun 2026 13:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 553A31139E8
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2026 13:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780405848; x=1811941848;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dFXW2+LDWiN8hB2RaeDaK1z83tGjH07V/KKOWf8Phq0=;
 b=FhmJINixg2amh50h9tZbYMVS1GDahjc0ZT4AkeKjdLA2Ym3RzxiRD03I
 LBp6s29eB6LVQOvy3WrPksemSj0zswJ5RZpCjTYkypthxyU0GQNNlC31y
 XFgH2llE2wsOP0YhJvT9MM9BpnST/a66TqUKtA2VYZ7V65DAQ8W9iys5H
 3Pu/ECc+BENF20gpRmuHxLayJKDPunqtlAr6NRpZuoKzWelVejmoV6SFk
 TAEQ9wUe9fkIljiHKiCR0bzT02sBXafg+HQTj83qdyo3OMJhZmv4CeTDS
 A3hJcK9KlouH0LQYNrnnzI3KRdw9uo6ztFEdg+03GNpS+2HDE3jRELiYm g==;
X-CSE-ConnectionGUID: GHCS9mhYStC+aerAuqi9ig==
X-CSE-MsgGUID: VeTB5oJDTq2oi7cQujqmyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="81370402"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="81370402"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 06:10:47 -0700
X-CSE-ConnectionGUID: 1b8Etgw5QtaahJC23HdecQ==
X-CSE-MsgGUID: duOqzpSWTTaJLeRlyG0Xww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="237553447"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 06:10:47 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 06:10:47 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 06:10:47 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.59) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 06:10:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RXHe9Fm7iLeDueK04SVEMaihLVED/WwT8LdmNfgB0E09AFxfq0Yvk124fmPTo5dR+6AzPASadqW4LJEgT0pq1qCbGQ9bhZEezZquaHxzlZIaZhYyaBkBfVdq4e20d8ShCAhUXUnF7xZE7lIysJL/NUlBsVwFA8OrIY89VJCcGvwOTNneuV56c4iIG+l4txBbOVJejMv5vXbPms+LH6ktW1aAyYWxG6FgrC8dxQdktkB+8B2qciY/rgOyVjnNZiv1l+yRASoM0x7poq5fK2P+6i2D4weaHhPe7GOIyokyoxU0sbZD8v2XblrQcmKhlm6/TfPMwAUACt6oP8GiL+F11A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nd5t7twsuYqU4Fta59zQ8u+n0CMCQSnBsDoBWmiboTU=;
 b=ZM4IjVTYQimaBS/03NjmjEKALmeIFj6iVWsUyfeXLIIX463gNyoByYy6waW6YyLr78CT/ip9GEQ9L0qJV2kE6CMhK1aJrlUjeujp4pN4xpvToTZmK3xs53NrosFG0vwr8Ub3wxbLNe/Z1gqUWxVI0AQLA3SnAHE4oo97a8b0OuCYT94wJRkMYhpXrYtbgqf2Zu3KVEyXJkNdq7gHM1U9MNiaY7eTpjzcAZGwbBruFtqvBU/0lf26rQOpxI05tUBNSARmGvKju5Mk3HHrktzqXFdZrTAD5R6FF4xBk2kX583OlDj7Sm4dUcwC1241ytDorRIbAjxPZkFbJ7/RcUYwrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 MW3PR11MB4651.namprd11.prod.outlook.com (2603:10b6:303:2c::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.71.17; Tue, 2 Jun 2026 13:10:35 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a%7]) with mapi id 15.21.0071.011; Tue, 2 Jun 2026
 13:10:35 +0000
Message-ID: <4925dcec-d45f-438c-b129-fe8cec348a01@intel.com>
Date: Tue, 2 Jun 2026 18:40:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/8] drm/i915/display: Introduce CMRR fraction level to
 vrr crtc state
Content-Language: en-GB
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <ville.syrjala@linux.intel.com>
References: <20260519050322.3677451-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260519050322.3677451-4-mitulkumar.ajitkumar.golani@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260519050322.3677451-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0214.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ab::10) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|MW3PR11MB4651:EE_
X-MS-Office365-Filtering-Correlation-Id: 7fa94255-4ea1-41c5-5283-08dec0a8550d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|6133799003|56012099006|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info: 6VrgpIOpe4GWa38X3aXL+ZYjxX6/IEIUSKjrIGuKgQGzJ4KOksgCCx8hAYQPSTWhyWNoTE0BGleJNZyh6F15JM9b8h/03Go36VXLQ+9qz6zrMpXt4+3w7DnckvwbBVsebeWX8Qq2HiPiviBJZeWnCPY9H1lI5CLK5PYoKVZtSDl/Q9ooRLBBKpbRuUVP7tDWz581PndFSwHpTf6n+Koldu2qeUaOXpe9n2d+NcKWjhtr5bitc9TaY+dltayNOnUiDHkyqg5U2xPism/KSt+9VmpX7GFIn6Z0F7dIBuqJW0f+2wFkXcn7cub1YuLAOcKAv9tei/lXVYXzzwDR4VA5JgLcYe54lLNV2sfLfyfAHn1Pp4MtEGomCZpDH/lsFVNq+Zk0yBNq5TAWCjlEQgfUw99yB/yRfOeR9Ha+jEmy1cLmLKR0NjfN6ifJV2hxLpkjr/jydZa51Zf0JS8RrRad6VqeVF/IqTv6NiLPc8ku4SkMIUXpMXLjHaN6CZ0qIS92oXS/7yE6CRY9fSlD1osFQ9GdF34KaUlP+s6OdSigxiyMPYHRYusIeET0iHffChD0x6cOHQm8aaNbxyrLeVxrAZFBUr2atMr+YvuKKrxdJ85EhD7/Vunqi5c8vmBG7rMWo3kzSABCCFbWayTjJJLhZw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(6133799003)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3RyR0dEaTluS1daVVFPZm5wejdxUDVhbnU0SjYxVERRaGVvZXZWN1VLdzhB?=
 =?utf-8?B?YllRc1NHZlN1cGIzaVpWSCs3NVZaZEZaV21JQ0FFeE52VER5OXl0WmpEc1lx?=
 =?utf-8?B?ZDVVSUU1Vkd6V1pNblBxZGdDSmRBZXVOdEQ0Y21zYzhleCtERm5iTUZpK2VC?=
 =?utf-8?B?a1V4MTFMWVJ5Q1QrOVp4MlI5dVY0dDh1b1AyVlVYb3YxQW14RDU3Q0xyMEQ4?=
 =?utf-8?B?SmI2b3lYS0tsL2dHMm55clZaMHAwVFQxOCtTdjNNNUJxSmVjL0l6OFlQTGMr?=
 =?utf-8?B?c1ZWbUxLakM1NzZ4djk3UStCd3pBbWw5aFlYZWdPWFdxK3BraXI0dEwySHB0?=
 =?utf-8?B?am92UUVRdnZaV3FycjhxQUNRdlQwcTVEL3A1UVhZdkg4V0xHZk1NTW9QcUQ3?=
 =?utf-8?B?SkQrUWt0UmJXUitYYXZzZEFiVFUrTzZ2enJZV0llMUk2TkV6bTBhZVVTK1hW?=
 =?utf-8?B?MnlwNzAzSGhrK1lxc2RQR05pS1B3RHNDcm5CYXBwa09LK3loMForbU5yN2Mv?=
 =?utf-8?B?MHpKTnJDbHZKdWpnSnhWWlJZYkppZzRhcW9TMkxZdkUzNXJrWkxRS09WWnVh?=
 =?utf-8?B?U3ArcTJteVVYVnFJYURtWnRlNTR1YktLSlgzaklQV0NiOVVmd3RnMlZYZjVy?=
 =?utf-8?B?bGd3RjZwaTRyRHNSOGpyVTcrNEVQcDdQTzFjSGo0dEZSN2E5MnFzWmNpKy9H?=
 =?utf-8?B?aUNSUWc5VXhrazJaSUxOR2RJZzBnRlg3ZkplWTdJeGJsY3I2YjM1cHFGaEVt?=
 =?utf-8?B?RFdlSEVqWkhQTHhqMUpSM3l3Ung1MU1lL2NpeXZEMkdSNW5qVVFzOWFha2VI?=
 =?utf-8?B?N3J4eXNHTm5KSlhqM1liT0tVY3oyODh6b3g1QVNGeEdaaXpSYVRjM3ZCWlJ6?=
 =?utf-8?B?VlhCaWQ5ckZEZ3hscFR3bjZzWXRhZ1lrakNDemFydXdWQ3phLzNpOHhkYWtF?=
 =?utf-8?B?VzVSMmQ3eUlGcy9reG16WHMrVTEyMThOeVpqSVFkbkdJMW5aWi9BSThoN1Ar?=
 =?utf-8?B?dGZoZlBJTEQ3M3ovQXZPa2NaZlZIVU5samRyRmorWDNOSHErR2VENFZ5VWdB?=
 =?utf-8?B?WGZjenV0aGlBRlRxblhzNWJqa2RHK202dk8zLzJuUFNObmNKSlh1ZXdyNEtN?=
 =?utf-8?B?VGJlRkh2c0lFS0ZRU20xUUVXWVRuZTgvOWpoUkxzMzBkcmVwdk5sdEhNZVA3?=
 =?utf-8?B?QkhJbEpmYXF4YUU2OXRTR3hsSlZyYzR4eU1pMUpSNEhXd3lQQnVJTTRvemVK?=
 =?utf-8?B?eHJJdlRVQ01WSVhoN3pVZFE5WEd0VUN1amZweTN5dVB2U0RIdGxBYXYxdjh2?=
 =?utf-8?B?YWtPZVErWkJ4YWpFek4xS3NxeDE4QVZMQ1JvdzI5VGJmdlRDWEhaYnpjMWc3?=
 =?utf-8?B?MGxLM1p4Y0RYSFIrYnI3bkdKZzlLUWlHMk04MEgybklxSHlkTDNpTHZlZldE?=
 =?utf-8?B?b3hxMk44OWlZODdQWTFlTEtwUkFUVFZLcmVJQVdxWERTcEIvc0NUejc3RFFZ?=
 =?utf-8?B?MEFPYytYOUc4b3MwaXd6bFl3SGpzSTVpbi94ZnNSaHBmUkJSREtlR0t4YmpE?=
 =?utf-8?B?VmNXSzBiL2d2VG9WMjJCaFo1SzRrL2RZK2UxT2xXVExoQ1dmODVaeFpRWmFx?=
 =?utf-8?B?SGVISEdHbk82TW16ditRKzJndEZVNDRleE9ySDFvbjFpQzgxQ2kzVWN3TXZx?=
 =?utf-8?B?NDloSkJMMG5ZMHNpYjcxUVpGZ1JFMm93THdZRUt0N1JqbTJpZmt0M1luWEp5?=
 =?utf-8?B?K0l1NGpZWVAwRElvUHJuQnFpMDhldjFhYzNJaTgvdFQ2ZFB6cmU4Q3RLemV6?=
 =?utf-8?B?RHBNQlEvVmZpK2tGTlRUMURjNWRteFpVZUpucUcxYTVVczArT05vQmU1Vmha?=
 =?utf-8?B?Z2ZtMXBhWXhwZHBKTTBhVUJ3by9aZW12ZWNvaVpuQWFOT1FJYmxoK3Jud0gv?=
 =?utf-8?B?Nm9tdjZ2TU9uUmxvQkxyYVc4NllsVmk2UlUySEI5SENwUllQWkxxNnYza2hC?=
 =?utf-8?B?QmsvZHkyZk5ySVFXY0M2VXQ0cEFrTU5Yc1F3ZHdrdUNSNVVyeWtDT3I4aWtt?=
 =?utf-8?B?c25LbXkyZ1VLY2xCRE1XNVBuakdTaTIzUldFWjhUNUF4dTlnSGpwV3pqbXdz?=
 =?utf-8?B?VnY3R0tVREpjRDVkYVorWWkrd0JFMzZ2V2pwWXJpenFETDBEWHB6SHlSQ0Nt?=
 =?utf-8?B?N1lBK1JTTWxzbjJadTRsOUdNbGF3b0VoaEZIeXZKRHhHaHVhQ0xtVHVTTVY3?=
 =?utf-8?B?Lys4ZjZMNms1TUlJUkk0bWVsU2o4TXhLNE1hUXlmenRSK0VLazBtZGlkT3ZC?=
 =?utf-8?B?Y0hPOE0zQy9RbTRaKy9MRjR5RzU3MkN4MDc5WUQrTm9xNE10dmF4OThLV25s?=
 =?utf-8?Q?NDlRCaU/1dSMWOEE=3D?=
X-Exchange-RoutingPolicyChecked: KZcHYn5Nrz8AlOMu4juBNC6desZOOvcE/VF/J3G76vsH22FlXvvzfxIBPKOvHX6JP+sHvcpqxHGn641i2XWc61e/lVqcsL1SeGSN+sb6bbKBdD3YbktJix8zBDfs1HWHKmdYwDokM6ePy13Tze9qPo6g9FmfgZQ3cLWjDQBGYbpSMWNCKAmMTuBhcT6eVJ7ZtilIn5Hof9F3tNTdMuqak8mgOVxLZwFQx0ZBgTSyf6buGH5Qq7RLJlA+6T7pHOGKE26BMStuGvMRMAEKrwPmyAhxH3FUZKoiXTkNY8xQB6c+JuVoiP4T/7/6SnAF+WLkaWlDrGqNzBZV7ZbWcJMA0A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fa94255-4ea1-41c5-5283-08dec0a8550d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 13:10:35.0582 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: roIAWtDJGvrxBCZpdS89Oqs3MA7gv8BN/Sqs3fXgAyilOQsLoB9KXohDYutRK5N/IPoa38u+EccUnkCx7tJtN6N6qamgV1blX5KQLes6VWk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4651
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mitulkumar.ajitkumar.golani@intel.com,m:ankit.k.nautiyal@intel.com,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gitlab.freedesktop.org:url];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E139B62E50E



On 5/19/2026 10:33 AM, Mitul Golani wrote:
> CMRR (Content Match Refresh Rate) requires fractional multipliers
> applied to vtotal to precisely match the target refresh rate. Introduce
> enum cmrr_level to encode three distinct fraction cases:
> 
>    CMRR_DEFAULT: No fractional adjustment; use the fixed refresh rate
>                  timings as-is.
> 
>    CMRR_HIGH:    Apply a 1001/1000 multiplier to vtotal, targeting a
>                  slightly higher effective refresh rate (e.g. 60.06 Hz
>                  for a 60 Hz mode). Used for video content playback.
> 

Looking at BSpec-68925, the ratio 1001/1000 is never mentioned.
My understanding is that CMRR always dithers *down* the actual refresh 
rate (defined by the edid) to a a desired refresh rate of the content.

Looking at the use-case of CVT RB3 4K, the refresh rate calculated from
the edid timings would be 60.021Hz which can be brought to either a 
integer rate of 60Hz(Desktop use-cases) or video rate of 60/1.001 Hz.

The spec also mentions CVT RB2, which apparently has a rounded down 
pixel clock that results in a refresh rate of 59.99Hz, I guess in that 
case we can only accurately support video modes (60/1.001) using CMRR
and not exact 60Hz.

Few other things to support this claim.

1. The algorithm in the BSpec only defines one set of fraction (for 
video modes)

         refresh_rate_muliplier = 1000;
         refresh_rate_divider = 1001;

2. There is only one bit (BIT[5]) to represent "Target Refresh Rate 
Divider" in DB4 of Adaptive Sync SDP which is documented as

	0 = 1.000 (Nominal RR)
	1 = 1.001 (Nominal RR / 1.001)

Also, I could not really find a standard that defines the multiplier of 
1001/1000.

Any reason/use-case, you found to dither up the RR?

Coming to the API interface the series choses, It does not really work 
for the CVT RB3 timings that was mentioned above. Since the idea is to 
dither down 60.021Hz to 60Hz or 60/1.001 Hz, the assumption that you 
will always apply a multiplier of 1000/1001 on the refresh rate derived 
from edid to bring down the refresh rate, does not fit.

Therefore, I think even for the debugfs implementation we should try to 
incorporate the uAPI design (or a version of it) proposed during the 
Display Hackfest.[1]

==
Chaitanya

[1] 
https://gitlab.freedesktop.org/-/project/2891/uploads/9db8886701e2598271a8c4c6dc4dc2b1/display_next_hackfest_2026.pdf

>    CMRR_LOW:     Apply a 1000/1001 multiplier to vtotal, targeting a
>                  slightly lower effective refresh rate. Used when the
>                  pixel clock needs to be pulled down to match content.
> 
> Add the level field to the vrr.cmrr crtc state and state dump so it
> can be tracked.
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_types.h |  7 +++++++
>   drivers/gpu/drm/i915/display/intel_vrr.c           | 12 ++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h           |  2 ++
>   3 files changed, 21 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ce280349622b..1d5aee13afb1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -999,6 +999,12 @@ struct intel_casf {
>   	bool enable;
>   };
>   
> +enum cmrr_level {
> +	CMRR_DEFAULT,
> +	CMRR_LOW,
> +	CMRR_HIGH,
> +};
> +
>   struct intel_crtc_state {
>   	/*
>   	 * uapi (drm) state. This is the software state shown to userspace.
> @@ -1400,6 +1406,7 @@ struct intel_crtc_state {
>   		struct {
>   			bool enable;
>   			u64 cmrr_n, cmrr_m;
> +			enum cmrr_level level;
>   		} cmrr;
>   	} vrr;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 87d52b206bdb..8d79d289378b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -1228,3 +1228,15 @@ int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_st
>   
>   	return intel_vrr_vblank_start(crtc_state, VRR_DCB_VMAX(tmp) + 1);
>   }
> +
> +char *intel_vrr_cmrr_level_to_string(enum cmrr_level level)
> +{
> +	switch (level) {
> +	case CMRR_LOW:
> +		return "Low";
> +	case CMRR_HIGH:
> +		return "High";
> +	default:
> +		return "Default";
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 4f16ca4af91f..86707b8af2e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -7,6 +7,7 @@
>   #define __INTEL_VRR_H__
>   
>   #include <linux/types.h>
> +#include "intel_display_types.h"
>   
>   struct drm_connector_state;
>   struct intel_atomic_state;
> @@ -53,5 +54,6 @@ int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_sta
>   int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state);
> +char *intel_vrr_cmrr_level_to_string(enum cmrr_level level);
>   
>   #endif /* __INTEL_VRR_H__ */

