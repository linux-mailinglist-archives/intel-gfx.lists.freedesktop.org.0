Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Te3tGNPXHmp4VwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 15:17:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B929762E65B
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 15:17:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=lx9Pp60c;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 568B21139EB;
	Tue,  2 Jun 2026 13:17:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CBD51139EB
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2026 13:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780406224; x=1811942224;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tcl6sWghF+60yPqr/IH0fO713BNWs6hNgDJ1UJuyLI8=;
 b=lx9Pp60cOIestSoGm4XYjlWYP3de6QdOs9C97iFxEs9kHaAb8YwjpTDu
 lXV1F2wNXcI+rxEEy56kdcMQDs4nTqWAnsl4t+YeXVUwqLvjuhS33899i
 qKicvNGXhUGj43uyRw5wOnLADmiq4pHLMopjjeietw8grP/FQyqN3isZ9
 yofF5f0uEC74KISVRlujK3xv7XRRFduEdf4oLpr/zSmSSQ0+hEpNLyBbE
 96dyODjPxHssBxtAfcVhMDrXgfJ23cm4/CFdmhN8d27dqnWql6SKsCcNA
 g58tMdGYcEQQ1PzWejOGXRQ380P4F6gICIkc/pTfxqByDnC8Fwtu4L8Uw w==;
X-CSE-ConnectionGUID: cVqgOkJbRzazMuClISsDeA==
X-CSE-MsgGUID: uo5v6nDzR4qRhuw2omP/Pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="81092907"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="81092907"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 06:17:03 -0700
X-CSE-ConnectionGUID: dzgENIM0RQSVRl7w24vygQ==
X-CSE-MsgGUID: dpFzGXsjQfafK9QoIHP/nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="243744992"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 06:17:04 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 06:17:02 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 06:17:02 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.58)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 06:17:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gJE1iLZA3UoWa685zJUeEjizWitLE6mi7+9EiIDXKTicu3E4EWKNyImX+xR9chFgB+3rNkE2RU1qaK15veAlB0IZjKWotTPMP1xZaZt0aQtmYaAbS6s5yqw3Xf1nQDF/lJNB/HzJJWfo+9ibx2xRonAbBKFjez0YJNu87QlAYXYYVqZWrDCel0XrZWHGwCUsDw4bloX9WGZ1O7dUVBSzlwpgRd19Ug+Gj8PCeycHXMWZ+zkR96oVjsG2G/6ZRLocc1oQI4vgtVacPKm5vWY/3EM/3v3Xu80F2rJKKIV7YP8EkiBFf8xn1xo270F5RLdiKL5YMsVIXaWB4UjrQCylTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HvDSXyyFPtE1fmt1Ja3xHC/MB7U2W2cEW5ZrRPG8aYo=;
 b=OLj3HGNA6gR03JI3r2RbYy8910eaNLqrVR/Z08SFGv3qimP4BuleL0qF3hzSliDfD76I+jM49OJLjpjVrjMu5ReGWbDKurA7lQqoKESL8F4p6mIIRkwxZ8vasDA1TLS6jG0ADnbt7wHYQ2wNIWXg/AEPlqPdmBgU18yo49USy4LWRbk2W1w/0aHEZ0QOwYk0YkZ4ouHEYAn3ULby0srWHh3tCiqZMmHoy3hK563J0j0ybNAuK4Qave0VCZwPGVqbx3chakDcysg9J/Dgd+idp1vlE8/RBUabKpg9VVRamEt4T+ULSix0PU/JUjoTGb7F4tlXuFVlzVU2ApdtJ3Txzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 CYXPR11MB8711.namprd11.prod.outlook.com (2603:10b6:930:d7::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.71.16; Tue, 2 Jun 2026 13:16:59 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a%7]) with mapi id 15.21.0071.011; Tue, 2 Jun 2026
 13:16:59 +0000
Message-ID: <2c28cbaf-99db-439e-b6ac-88a1293f5fa1@intel.com>
Date: Tue, 2 Jun 2026 18:46:52 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 8/8] i915/display/vrr: Enable CMRR
Content-Language: en-GB
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <ville.syrjala@linux.intel.com>
References: <20260519050322.3677451-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260519050322.3677451-9-mitulkumar.ajitkumar.golani@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260519050322.3677451-9-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0291.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:221::14) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|CYXPR11MB8711:EE_
X-MS-Office365-Filtering-Correlation-Id: c388c180-ecc7-4cb8-c93f-08dec0a93a3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|56012099006|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info: vn0HpykH7PTJZbvv0OVYmEmCEfucjRsdH3b5rCN8yydDcRJlgSnT0ow0nazbCXZv7E1mVH3GG6CNUM1pDQJiFI/NeyPdgY1zxBWPOaxOXeHDrxYfxi35ZsAuFydLDP6DyqeisjKZhBy4OjW5cfrWCwgapjIXjljaiW2NjE9+O/3qlWuZ97cNGYZz3jXcPoezIt1GTIalkr0PWFgT8/vVP/reVdTt50Yu2UCvZSP9+n8v1XB4ZGTiU8Y9YWFqpghLHGIaOh3XhUAPKKWiQIGPuaZQplfdMiR8lhvgv059YZFUfRrguDxDJtpo4zEVgvd+gbR5cCpmRRSet/zCoL2CS3AzXbYsOSn+q1WV75VkZD/0MARLiXDo7vgWF1slHy5T8SO5rTbhoLOa/P8Oea30bUOcasByi1vopsq2ur2HBMd/YNRXbc4ctIUtpc9/TxJUnVODtGE+mlVUz/nKcpw321Xa8SC/3ntmX4SIy8o6596FXAKK5WZ/ddI5KdoKTRqfDvTJecxlOXn6ckBkdAJteBmmxFREdKPw0WqoMPCyXOx0MDqBzIzswCrOVy72FCNpjMZfn9I/+5A53dsbPz1kHpmPcM30kXryy7iYSIf9b8hyTLGQVgIcjeLNFhjEwDLOtrabVVVG2sSufUbbvPL3dgmUe/DoQo9yKeYoF3v7Y2Q26Rpl0OCiIb40EpojnMwP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0F1NjBsdTZobkxwRVhUUncxZlQybyt3bGowY2NaZlBUV1ZsTlE3R1lvekxm?=
 =?utf-8?B?am1GLzk3YjUxZVU3a01JaERFSFN3bW91aFd3Vjd5c1VKNkp2K0lSTkFjMndD?=
 =?utf-8?B?N1BSSXM1ZlFSL01lclVqaDRvL1FVSTVOWERpd2VuUFBOU3Eyc0Q2R0VuR1RT?=
 =?utf-8?B?elFsVmc1K21CWGpKazBlQVZLY2V2UTEzSjMrRnY3TThvS0xWLysvL1lxK1Uz?=
 =?utf-8?B?NWMxMnk1ZldDRUNMYWlRRmpIQ0dyUjFtSDN3WFk0dEVwWW1Gdll5VUJoa3pY?=
 =?utf-8?B?cnRYc2V2ZTF0Vm05LzBmeVhXOTRwdVlkcEtOSFgzN25LbjZja3EyWjI3aGxo?=
 =?utf-8?B?elN6NU5TclE2N2taaU5tR2ZQcVJMSm9YSU9TZkUvRWVwN0ZKbjM5b2ZVNktC?=
 =?utf-8?B?RTU3dXFyT2xidVJNTzlnVFpuTlZiY2JSbE5PTittYm5FNlFNS1N2bnpWdmhC?=
 =?utf-8?B?bFhRTTB2M0tLTXgzNENtME9FTkxud0JsMVp6VkdYbk9BMDFNVmZvOUtMcHdr?=
 =?utf-8?B?c21jV0Q2TnVzeE5PeEtoZ2puZVI1SFNJMHg1QlI3NmwwNkFRTmlzT1NVeU9H?=
 =?utf-8?B?a1JxK0RGbTFLakprUE1yTnBiU0k3Z0Z1cTJIMkRaenBMVG10S1E5a0JjMzlK?=
 =?utf-8?B?VElOUGo3TzJJaUlRY1VzTEwyTXQ5NUpLV2dNSE9WdzAyVDhQMUNjalhjSnVs?=
 =?utf-8?B?dDZDS0VvR1lobGxBSTdTak81QWVRWkdXVE1rWWgxNFAzTGRYTWdDcHFZK3Ro?=
 =?utf-8?B?ZXA2bnlFdlpmb3I1R245ekl2b1Y5dUUwS2FiNUM3SGIvY1BpK0plMCtqNklh?=
 =?utf-8?B?Zlg2VFpkendxaGlXYnovd1c2K1VGWHFuOEs2L3NqQkFjNXRacjZVTlJ3K1U1?=
 =?utf-8?B?VGFYb3d4L0FIaE53aTVlSExSdzRzR2tSb3pLTVFNVzRRbndCY2pFZ2ZtbmIx?=
 =?utf-8?B?RDB1T2NDR1hOc3ZsN3RqRCtWSWZ0ZHR1VDdqNUpNaFVCcC9mUHY4dERrSlRT?=
 =?utf-8?B?VVJiRGFhT2dUS0x3cVFqRFV3V1JCTGJnZmhGRlE5N2lIT0VPZUQzNEZ3dDZE?=
 =?utf-8?B?bWZ2MGduaDVvcXQyQWJIbVQwTy9GRFNCMEs3UlU3RjNMTEQxc2M2Nkk4clZ1?=
 =?utf-8?B?ZXhjN2F0NDFyeDBqVGg0aUg5K3dUbjhBOGdtVmhNSWRvRWlPSndoR28yZkRz?=
 =?utf-8?B?bTBFRGhVclZ3ZDNDeUdvMHg1dE1sRUJuL1RhajU1czZWTTBMT00xakxCSFAr?=
 =?utf-8?B?Yis2YTF2ZkNxU082R2RhdWJzWVpES1FXM0s4SGRkcCtsMjg3cHc5SVlXRGNy?=
 =?utf-8?B?K2J5bjR6KzZUdFVmcUdjNURqdWU2VGJMZ3hYWGc2eUZsTTkrdUFNV2pwNDYw?=
 =?utf-8?B?QnZaWFJGYThoNU41R0VVM2dOKzVJN0V2bS90a2VoUVNhUy9WSFU4cWhPRzB2?=
 =?utf-8?B?a3J1ck5KRTBwU1NvcEg5OU96NVUvek5CdDRkOFpyenBGaTU1YUJSUmFKdzBO?=
 =?utf-8?B?TkhqODZFeWJWNzlPVXVNRUhpNnRidFpoL1NEQXMyZTZhTk1LNmFrcE9aNStP?=
 =?utf-8?B?TkliU252S2pINVlVTmRpcURsWFVjclp4cCtCck51MXhsdTUzelhjVHAzTURK?=
 =?utf-8?B?dkNMSkhyNHMwd0tmVjRIOVByelhlSWhnYW41SnM3bHNwdW95WEpzK0t0emZI?=
 =?utf-8?B?V094Rzhoai8yaXB2NUxMejh4dXNmWElORkNLVnR5bVJicFNHViszU1BWdi9D?=
 =?utf-8?B?T0JVMVZoWW1MWStzOG9ka3A3aENNSkRiT1g3czUwdllNL0dMNnI2aExhRStE?=
 =?utf-8?B?MFVOdmZRSk1HM3JSMjIyMklwZW1FMWdJZlVUMVlzTldUK3B6cXlYR1R0Q1Vy?=
 =?utf-8?B?UlhoQ0d6UjZIRDBTQWFSV2huQk5wVUpvVmtiZUxIL2laNTRHbEpRanJ2SEJa?=
 =?utf-8?B?SmtFMVZ6TGhjMlJsWllKUkpCYnBDa3pLN3ZwRFhDSVlZdVNmb0NBcjR2TEQx?=
 =?utf-8?B?OVVsdWh0dFArSklRWWo3TXM1Vjc5blNLeEhLeCtZd3psejBnZTJEMUV3WUI0?=
 =?utf-8?B?cmV3MFp0OTYydld3aFNWeTNFV3U1T1o1b2VMRTJGRTJNUnVhMUlWbVkxU2t1?=
 =?utf-8?B?S0V5NE41QWFpOUdmZWc1SThoZGlZcGd0Tlg2clludDZIamJ5c0IxY3Y3OUlT?=
 =?utf-8?B?N2lRdTRabU9UWTFsaDZrR3lvVU1iczMwNGd6NVVEenRUQURtWTYzM2tHTFlS?=
 =?utf-8?B?bEw1KzNpNGp0eGx2R080RVRPYXY2TWRqODQ2QWtIR0F2NWhiU2F2RHpTb2xF?=
 =?utf-8?B?OW1CTFE5VXRmckx3YWhxZnRVaXZFdDZ4MHE0R1pPbnVqUlB3RFBERldQSS8r?=
 =?utf-8?Q?Qk+eEX+uQYJxaJJ0=3D?=
X-Exchange-RoutingPolicyChecked: tJPBjIJe2z01NrMW6I/oFGY++a3rulUODi21vBUKx2mbQoch7JAYlxc5fZEQy8gMa+/ikY8UVWITaaQRJcLRHDg7bYzeG4yF+0TqwO0AWXRBMUwW46v8g1x1l6qjKx0SIXZEBuxMw+jc9HHrSocbuTvbCVMf7UyN3KbrB07dzD8L+gH81G0h37L3isUtfWu5MtZI0jzvrA4YGibO8bNEgeCC0hVUl6hCdd1SIBM5N4FbdAQPZtwANg0fkVxaVP0pVwWwJMlrCWM83jS8/d9IGSA8aRs8qHPMP1CkcGCgvIc8DpYyxLi3wiCZcnGUOgY4vlXkxLrRyP+q1cv7PLtVQA==
X-MS-Exchange-CrossTenant-Network-Message-Id: c388c180-ecc7-4cb8-c93f-08dec0a93a3e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 13:16:59.3502 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sc7tn+SZzaK+SSV3n9Rl/wN52seFUsUPQ/sDAyFcaQ6SUh8aeGkOd9seOvVRESaDj2LJPGKZegrRcVhqW1pcZP5d4dtfTeUITKHk0+EGNrQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8711
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
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
X-Rspamd-Queue-Id: B929762E65B



On 5/19/2026 10:33 AM, Mitul Golani wrote:
> Compute Enabling of CMRR via crtc state.
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 975c87c4ffbb..43fb6f4aaf56 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -236,6 +236,7 @@ void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state,
>   	if (HAS_CMRR(display) && is_edp) {
>   		/* For CMRR, vmin = vmax = flipline = Dithered Vtotal */
>   		crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state);
> +		crtc_state->vrr.cmrr.enable = true;

This should be enabled only when we actually need CMRR not just on 
HAS_CMRR().

Since this is the patch that finally is supposed to enable CMRR, here 
are some over-arching comments (including on code that is not included 
in this series).

- CMRR is supposed to be mutually exclusive with PSR2, are we taking 
care of it? Right now psr_compute_config seems to only take vrr.enable 
into consideration.

- The CMRR registers are armed by TRANS_CMRR_N_HI and BSpec mandates 
that it should be the last CMRR register to be written. Also, indicated 
by the FIXME comment in intel_vrr_tg_enable()

	/*
	 * FIXME this might be broken as bspec seems to imply that
	 * even VRR_CTL_CMRR_ENABLE is armed by TRANS_CMRR_N_HI
	 * when enabling CMRR (but not when disabling CMRR?).
	 */
  The DB programming might need a re-look.
- The target rr divider bit is always set to true in 
intel_dp_compute_as_sdp(). This is wrong for non-video mode refresh rates.

- Right now the implementation is only limited to eDP, I don't see a 
reason why it can't be enabled for DP as well.

A few things I didn't quite get the time to look into in more detail, 
but they may be worth considering for the next revision.

- There is another TODO comment in intel_vrr_get_config() which might 
need some attention

	/*
	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for 
mode_flags.
	 * Since CMRR is currently disabled, set this flag for VRR for now.
	 * Need to keep this in mind while re-enabling CMRR.
	 */

- When switching from one FAVT (Fixed Average V-Total) to another some 
sinks might need ramping up to the target refresh rate instead of 
directly jumping to the targer refresh rate, indicated by Bit[1:0] in 
DB0 of the AsyncSync SDP. May be we have to spare some thought on that too.

- CMRR is also mutually exclusive with DC balance but I think that is 
already handled.

==
Chaitanya

>   	} else {
>   		/* For fixed rr,  vmin = vmax = flipline */
>   		crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;

