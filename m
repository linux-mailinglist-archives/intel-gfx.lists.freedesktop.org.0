Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JxUjD3TENGoXggYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 06:24:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2D86A3C97
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 06:24:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VIO1YmN7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 486EE10E031;
	Fri, 19 Jun 2026 04:24:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BB8310E021;
 Fri, 19 Jun 2026 04:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781843054; x=1813379054;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f4eZWdLQXrxLlvKi7SeoKmjUUUVR5UN84HR6BOiFL0k=;
 b=VIO1YmN7Mn0xUuRvyayh6XP2VAJrT7PnonSO/fbzY+meUHLXZRUCd4A/
 TC4gvW8EK3M2NaJKGxVETEjWiL092eF7ONQTeL5qAvaKsxZ5w+HH2vTiV
 9h4FO5MOhJ0VCVGTFNDbz53phCoLwZbPUgMOY/X/i1B31uEAs556uV6vX
 P/1ISk11b8LS02p7aWE2YWPiW84EI4hvhUycFHCuuKEIg6txWFzTEcclP
 +hxez2If0Wftx/RfKqQhzNt7bmmHoiecqiP+x79DkcEOo+DpFlZxT0Gnk
 9iwzGjqUPY7Lavac0Rl33US43LZ1ihJpCsaRWk9m5zKqJdQoKZ3X8tE1k Q==;
X-CSE-ConnectionGUID: 0ELyNt5dTYCnMyT5yfT1Tw==
X-CSE-MsgGUID: 9ux3i+o/TQa38ilTgFA1VQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11821"; a="100122831"
X-IronPort-AV: E=Sophos;i="6.24,212,1774335600"; d="scan'208";a="100122831"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 21:24:13 -0700
X-CSE-ConnectionGUID: Cs5YplIaQs+odQK6k/W7jQ==
X-CSE-MsgGUID: RXQjRwSrQtK3Cg/NmMkAVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,212,1774335600"; d="scan'208";a="242166513"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 21:24:13 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 21:24:12 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 18 Jun 2026 21:24:12 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.58) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 21:24:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=INmIkVSCxhbBB0QK88C4OwpFvQKFTyhpwHiLIaF+lQBjSS8ZOxmDOZy4XveXJ/uvkhPBOdqaWyyAOTpe1vJjUG7dDfGKbOhmTeiolOkehFvBIDQvy6kbZCdfwnNmHpVyPus0AZYFQg4cVMHEAEyipMQciS5IM0UFZFPdJSevVhJel9PBxLmdTzHhdcgPxP6CKPzvdv/HuJyC3aFCTpQYoaTImA7AyjQoCOH58nCQFXJ2an7XY6qIQ8DjG23xFtbjNxlKKlia5oAbCkAQt/ShcpRWwL95kMd1Khglmb3mu6L/EUTM8jFiLDvPZVAJJfzotsF3drCPIhEjE1x21Bf5nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MTksDUEM6itC5OXYzPj5jZ0CcwvI7JrjOYDiSAZm10o=;
 b=lkMUXOtX1flNb694sts4GIf45V8NY29SHC52OqKKb0lJRCyPWy3BbyBU8TWkkNCsjqa2C1fvhaWe9u/Svt737Wc0H9wjrjJvFFABIgIKl8k8o3160KETd3iMjDwQS+8n9XvER/gY1yt9loOvs4TOqLN7U9lYP7II18EUjY3teWuHI6jLkAXJm5CJ3rAS6VBSgYpiR3DDKjWtgBqxCHl0iHVGep8rPNZHMf9Q9XeF+COkY7hZYIw/Tuv+rW/ijMSsfwC0/K/TlMC/zvZa+p9lL2x+I/DFYZy7RkI+rjzAF63f+xs2hQo8lwQbK1hzwFofSnPYdtTkSpQS9IOXbrSeGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by SAWPR11MB9736.namprd11.prod.outlook.com (2603:10b6:806:4cb::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Fri, 19 Jun
 2026 04:24:10 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0113.015; Fri, 19 Jun 2026
 04:24:10 +0000
Message-ID: <2e291fb7-3b99-4c81-81ca-17051fdf2311@intel.com>
Date: Fri, 19 Jun 2026 09:54:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] drm/i915/panel: Attempt VRR based refresh rate change
 for !allow_modeset
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>
References: <20260612144203.31715-1-ville.syrjala@linux.intel.com>
 <20260612144203.31715-5-ville.syrjala@linux.intel.com>
 <e7414943-3902-4209-b372-3cddce601d78@intel.com> <ajRCkjh-kHwg56V4@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ajRCkjh-kHwg56V4@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0208.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ab::13) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|SAWPR11MB9736:EE_
X-MS-Office365-Filtering-Correlation-Id: 33d9b475-94f0-49a8-fa9a-08decdba9c00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|18002099003|22082099003|11063799006|56012099006|4143699003;
X-Microsoft-Antispam-Message-Info: BEaD3HIE+xCoGnnsxN/0lUqwR+erblma5B7S1bdeBsUoAZNPN/X7KVDIgcfl/TKh4xgf1eizy8HAl4AhpfsdtQooT/0Lv3s8lne1IOmlycgMgDnWX+vkvyjOK/9LXstN2E3Kyijt/ZOvuXai0XN8fOe01bq6Y9f/C1r/jHHecco6/9BLY0iXB7yZDVy6br7Hf3yMuybQDM11pLDvYPfxDY7Ska5p7D4BYZCQYNLQOTBxUmEn7nIayzFvqjiEfWp3mhMLuIcnIXUG2+Udo5sXSMqvCZygHVCVut5FcxX4IXJzZU4egadP81whrr2AEcBkMw1G+OH1eqJux+hoZ9CrOmY7uAWJhYoDrM0t1E3n7t21CTApXAUANYYR0P+/o6iu8v7VUbpVnJQ3XIxMaLC+4wQuQb5oLCrXWioCoaOnIT9u9n0oGmQdAoSp4xmXqYQy3LHYRw8hxcFa8e/bBqqISpqB+okLbQwlGtwm4WVJlZeuUD7Kw33esH+E5byPLpDPKE5xQvH3GQbB8LJOrJmtuQCseKApP80V18u4w6i87yAXnuxZd/U+OAG2bM4zXg8OBu+FgQkbOmY6j6kkDN0SVP8uwmxOFNVLR7ZMIUjm2ij6ewDyEzZ5LRIzG4IT4YvkBYbaeJaeRSGdfN50hJPUCQpsKBErhPuQlahs5sN6YRs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(18002099003)(22082099003)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2liRXlmNk5YTXhLbjl0eHAwQWZYNk4xc1FXQVRlYXZXNSthWGE2c1l4dGZP?=
 =?utf-8?B?cmdMNG5tQVRTVmJHNjUxNzFsRi92amV3V0lnNTFqbld6a0phS1VTZHpsdjVR?=
 =?utf-8?B?Q0ZoQzdEYVRpN0RwbnNOQ1RPZSs1bmFLSnhGN01hRkRsSUlaczVYcmUwa1h5?=
 =?utf-8?B?Rko2WW51aFdDT2VYN1BOZ3pqWUY3T0dIS0F6VmtvRXlQK1RULzZTZkZsV2lh?=
 =?utf-8?B?ODY0aW9mSlBrNGd1VDRMNDFaSTd3cGJkOEJwWFRLU3cwTlpxVzJac3liVXUr?=
 =?utf-8?B?TFAxV2tPWkNZaERUZ0g0SHhGN0laMGNra3I4aW82VlZxSlJpTHk0bGdNVGdY?=
 =?utf-8?B?S0x1WTVOdlVyTzFYVlBWWXk0MEdUV0NMK0pQdDlaeDF3ODFTOWZJVzVvSWFZ?=
 =?utf-8?B?SmhjcHFXQjJJcmhPa1krV0k4TGR4dTVheGlpNGpja2VyWElQc0w5Uk40bG9y?=
 =?utf-8?B?ZnByR2ZNa2hwQWY5WlNpUDRXSWhtcmxoR21VUTdQZVZQU2JIUUdpNjBVS2hm?=
 =?utf-8?B?MWpQTjNVNnlXdU40NE5QQUJUQjgzK0QzSTc3THBhbHppcXNhWG5Kcmp0dmho?=
 =?utf-8?B?SHNVVmdyNnhsRmM1cnE4c3R0UFFrUTdsbWRObVdVVmZQUldka0xLQXJNY3Nh?=
 =?utf-8?B?eFV0RzVyT2tna0swdFRQN0R4UkxWdzZyRGIyMVFKL1UzRm1lb1NDNldRT3NP?=
 =?utf-8?B?NVRzZVpsOGh1dWRxUlQ0c3p6MEgvMUxZVjNWZFNZY3RBM2hPdHVNbTNZVGdt?=
 =?utf-8?B?Tkt1bVdFaWFSL21iUFJlRk9hdURES01ybnJra3dOdVhPZGNyWDQyMkVIc3V3?=
 =?utf-8?B?Qk5ZemZzSG1OdnNham4yR1J1YmpQMlNqekd3aGdxbW5sVkhzOFNHczRUUHRo?=
 =?utf-8?B?Ti9RU1ZpTmpVU3ZxdG1qL096VEd1TTNqRnRCc2czTXN1T3djWkdBV1d5MWcy?=
 =?utf-8?B?TFUzOG9PU3pNVWZQYW1laDZwaTBjam1QaUxFRnNwQXlyOVNhWmFNa0t0R3ZJ?=
 =?utf-8?B?UVpmNXhZSUhIaGpJckFzM2Y4V28zUGVFVHZBU1NHWm85ejgrYmhZb3dzQ3Zr?=
 =?utf-8?B?Ui9WWDhnTUFrV1U3OVV0K0lLaStLczF5ODllWjZQWnVCTTRHU1ZSTFlQaXFW?=
 =?utf-8?B?VklJd0RKd3prRTV6WldJWjdzSDA4VTIvZXg1d1NhN3Ftd21iZml6VDhNM0lL?=
 =?utf-8?B?MjR0ZFNpNXk5UkN2bXc3S2w5bGFFREttWmxwZTlPOUp4ZUVldld4YWZkSENB?=
 =?utf-8?B?eWVGMVZLbEg4aGZOZDBYYWxjcHJmWlpRWG1DUzkwUWNQaENuelh4N3ZOYmxm?=
 =?utf-8?B?Q3I3alhhQmY5MmNvM1JtaUtDbTBqc0VKV3htOWhheHF5RWR2QkNqQjBRSUJ3?=
 =?utf-8?B?Rnh6dTBUQjUranUxYXhyeEd5WUZvS0NwMmhmdmw3Z0FzdERqTlZtb0ttRFBk?=
 =?utf-8?B?am9DQ29BcWRsa0c5UTlBS0hPaS9MVEZOOUNxY0F1anJLZmhSYWFWVjZvbkZW?=
 =?utf-8?B?OWNnRVRyQm5nbHduWUlHRmVKWDJDMjAxTFpFZHVxU2dGMmJXKy9IRXlobjNI?=
 =?utf-8?B?ODBhSDU2UnVVY2pqRXBqN3RGazltL3F3TUZjMUpYbE1xZ0dpTVlwVEJpL1dv?=
 =?utf-8?B?ZlRlcWRmMmlmQW5iVTRHOWJ2V1JyOGo2ek90b3g1d2Zjc2JjV3dic1pJN0hh?=
 =?utf-8?B?MGUrWUIzTVRvanovNUtGZUdRcU8zTnRRZVBuSzE0eWNIdTIreUJVM3RwQVlQ?=
 =?utf-8?B?TWVRbEMwSDVrc2wwNWN3cXlJVnR5clF4bkJoU2NDQXpXdjR0SHIyTE1hUEN2?=
 =?utf-8?B?bGFGZWM4bzhaN3lSNHYwTGxTTVFZQkZob1ByNEtvaDRkZW5YcTh6NXlYdklk?=
 =?utf-8?B?WDgyRzlLdjQ0UmlYN3lMNlJxZHhacE9lVVphSnZKVEsvQVN6NXlrbjdWT25t?=
 =?utf-8?B?N3NRMkpMaGhYbmZzUlgyNkhtcWVQN0g3UlhPczVrS21tUVpISHlKWGRVemxV?=
 =?utf-8?B?aktkclBPQ3pUZ2c5Mk5lOURYVzJhT2FURWtWQk51K3VrQjhzM2JjcE5yUXJr?=
 =?utf-8?B?U3B1ak8vem53U2EwU3FxMW9LZDRMYkNRUkQ3c3AxbEtObHlONStaY2RIR1dE?=
 =?utf-8?B?T2dyeXhoNGFENkVsUnpYekVBZDYwRm5NcGdBZm9hR0FmcXpNY2cwbitCVDBM?=
 =?utf-8?B?WG1OZGQ4bGQyUGJmWjhpMlFYeHo3Mkt4U0liWHd2RGpDZ3dxNzBOWWdEZHQ3?=
 =?utf-8?B?aUlUQk9LY0tsS2FEVHNNL01zNFVwQ21jZTZ0NDNjbEQ0NGV1Ti9lZnptM0Nz?=
 =?utf-8?B?aHFXN1ZTMk51Si9sUEZ1QmlTOXNiRjFYWi9pSTBxRnVSSmp5Q3pTWVdIV0FR?=
 =?utf-8?Q?k8G4HxBKLNVlt7KM=3D?=
X-Exchange-RoutingPolicyChecked: DzhyZkm8q3nC7vrHt7qcICtasNtTCZuUK6CwyiNnFlTb2KgQFmuNgEtco9sATlHBxaVei+pabIk3blQDsWBInmjbgJ3+w+QcQkh/Y0pK+lUDrUHvN98wufMn5rB56AxwUA1J3ZHzeOhPGhATgA0aJt5M26gh4wpc4V7Cxn1MhhfpcjKihzR1XfS8uYC8nghD5+COy66ZTtAE0Rqrxf122NmYTHvsCl5EtEI7YQfeijXBRrNtGFO3bWzsUMkMNrcn8vWjuRd2DpQqqopl1sJ1GLFuvlmuSLIo4sTXp/hVdseEadz+ojYhnnh9q9ilh3GWmwzQP9rx0ww/asThKvIN5w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 33d9b475-94f0-49a8-fa9a-08decdba9c00
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2026 04:24:10.1302 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: icy6JeH9FaIdGTO1jjtbnEadujGsUJqiNff98r6JZeKLGsVroxSXaTVTMpC/EYJsYMeJx38r+GfG7tOAebo5/MsqNaZvzC1KsxwvnIfiPAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9736
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0F2D86A3C97


On 6/19/2026 12:40 AM, Ville Syrjälä wrote:
> On Mon, Jun 15, 2026 at 10:47:10AM +0530, Nautiyal, Ankit K wrote:
>> On 6/12/2026 8:12 PM, Ville Syrjala wrote:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> Adjust the panel fixed mode selection algorithm to only consider
>>> fixed modes that are "VRR compatible" with the old fixed mode
>>> when userspace doesn't want to allow full modesets. This will
>>> allow a VRR based refresh rate changes (ie. just a change in
>>> the vblank length) via the fastset path.
>>>
>>> When full modesets are allowed, we still use the original algorithm
>>> as that may pick a fixed mode with a more optimal dotclock, potentially
>>> leading to reduced power consumption.
>>>
>>> This approach works as long as userspace does the initial
>>> allow_modeset=true commit using the highest refresh rate it will
>>> want to use. Subsequent commits with allow_modeset=false can then
>>> switch between lower refresh rates without blinks.
>>>
>>> One remaining hurdle we may need to solve is the guardband length.
>>> Assuming the highest refresh rate vblank is too short for
>>> intel_vrr_compute_optimized_guardband() the intitial guardband will
>>> match the highest refresh rate vblank. A subsequent switch to a lower
>>> refresh rate will then recompute the guardband and select a value
>>> that is higher (since the vblank will be longer). The mismatch in
>>> guardband lengths will prevent the fastset. We may either have to
>>> preserve the original (sub-optimal) guardband,
>> I think preserving the original (sub-optimal) guardband makes sense for
>> the seamless case, but we will lose out on enabling some power saving
>> features like PSR/LOBF for which the sub-otimal guardband would not be
>> sufficient.
>> So this really comes down to how we want to interpret the
>> DRM_MODE_ALLOW_MODESET(state->allow_modeset).
>>
>> If a lower RR mode is set with allow_modeset = true, then doing a full
>> modeset sounds fine.
>> In that case we can recompute the guardband and enable the additional
>> power saving features (PSR/LOBF) if they are supported.
>>
>> If the same transition is done without allow_modeset, then we should try
>> to keep it seamless.
>> In that case using the sub-optimal guardband to avoid a full modeset
>> seems like the better choice, even if that means power saving features
>> may or may not be enabled, despite being supported at the new RR.
>>
>> So effectively:
>> with allow_modeset -> recompute and get optimal behavior
>> without it -> keep things stable, even if sub-optimal
>>
>> IMO this will make the behavior predictable and lets userspace decide
>> when it wants to pay the cost to get those benefits.
>>
>>
>>>    or we'll have to
>>> revisit the idea of changing the guardband without a full modeset.
>>>
>>> Note that I'm not 100% happy with this solution because
>>> intel_panel_fixed_mode() is no longer fully idempotent, but I wasn't
>>> able to come up with anything truly better either :/ The simple
>>> solution would be just to always pick the fixed mode with the highest
>>> dotclock, but that could lead to increased power consumption even
>>> when high refresh rates are never used.
>>>
>>> Perhaps the proper solution would be to just deprecate this
>>> idea of taking in random modes for internal panels and then
>>> cooking up a compatible fixed modes. Life would be easier if
>>> userspace was required to provide the desired fixed mode directly.
>>> But in order to do that we'd need to introduce new uapi properties
>>> to control the pfit aspect of this, and we'd probably need a new
>>> client cap to select between the old and new userspace behaviour.
>>> Something to consider in the future...
>>>
>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_panel.c | 55 ++++++++++++++++++++--
>>>    1 file changed, 50 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
>>> index af59fc946fcb..a5fcac1318da 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>>> @@ -82,16 +82,37 @@ static bool is_best_fixed_mode(struct intel_connector *connector,
>>>    		abs(drm_mode_vrefresh(best_mode) - vrefresh);
>>>    }
>>>    
>>> -const struct drm_display_mode *
>>> -intel_panel_fixed_mode(struct intel_connector *connector,
>>> -		       const struct drm_display_mode *mode)
>>> +static bool is_vrr_compatible(const struct drm_display_mode *mode1,
>>> +			      const struct drm_display_mode *mode2)
>>> +{
>>> +	return drm_mode_match(mode1, mode2,
>>> +			      DRM_MODE_MATCH_CLOCK |
>>> +			      DRM_MODE_MATCH_TIMINGS_VRR |
>>> +			      DRM_MODE_MATCH_FLAGS |
>>> +			      DRM_MODE_MATCH_3D_FLAGS);
>>> +}
>>> +
>>> +static const struct drm_display_mode *
>>> +_intel_panel_fixed_mode(struct intel_connector *connector,
>>> +			const struct drm_display_mode *mode,
>>> +			const struct drm_display_mode *vrr_ref_mode)
>>>    {
>>>    	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
>>>    	int vrefresh = drm_mode_vrefresh(mode);
>>>    
>>> +	if (vrr_ref_mode &&
>>> +	    (!intel_vrr_is_in_range(connector, vrefresh) ||
>>> +	     !intel_vrr_is_in_range(connector, drm_mode_vrefresh(vrr_ref_mode))))
>>> +		return NULL;
>>> +
>>>    	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
>>>    		int fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
>>>    
>>> +		if (vrr_ref_mode &&
>>> +		    (!intel_vrr_is_in_range(connector, fixed_mode_vrefresh) ||
>>> +		     !is_vrr_compatible(fixed_mode, vrr_ref_mode)))
>>> +			continue;
>>> +
>>>    		if (is_best_fixed_mode(connector, vrefresh,
>>>    				       fixed_mode_vrefresh, best_mode))
>> This works for all practical purposes, but if we take a hypothetical
>> case below, it would not work as expected.
>>
>> 2 fixed modes:
>> with lower RR rate with same clock being first in the modelist:
>>
>> "3840x2400": 60 1199280 3840 3848 3880 4004 2400 4968 4976 4992
>> "3840x2400": 120 1199280 3840 3848 3880 4004 2400 2472 2480 2496
>>
>> vrr range : 120-40Hz
>>
>> Scenario: 120Hz is set we want to switch to 80 Hz.
>>
>> iteration 1
>>       fixed mode = 60Hz
>>       best mode = 60 Hz
>>
>> iteration 2
>>       fixed mode = 120Hz -> 80 is nearer to 60 than to 120 so best mode
>> remains 60
>>       best mode = 60Hz
>>
>> We will end up selecting 60Hz mode and try to stretch vtotal based on
>> this mode.
> I'm thinking that should actually work since it shouldn't really matter
> if we end up stretching or shrinking the vblank. But it would feel saner
> if we make sure the selected fixed mode does have a higher refresh rate
> than the target (ie. final vblank should always end up being >= the
> original vblank).

Hmm. Perhaps you are right, even if we are picking lower RR mode, we 
should be able to get it right.

My impression was that we should always end up picking the higher RR 
fixed mode, but actually that shouldn't matter.

Since the is_vrr_compatible() also matches the vsync offsets and we are 
also preserving the these, we should be able to stretch it and it will 
work fine.

So we can ignore my hypothetical case.

>
> is_best_fixed_mode() does kinda attempt to do that, but badly. I suppose
> the correct answer here might be to split the current fixed mode search
> to a VRR vs. non-VRR variants, and try the VRR one first. But I think
> I'll have to give this one a bit more thought before I can decide if
> that approach has any downsides...
>
>> So perhaps we should make is_best_fixed_mode() such that the order of
>> modes should not affect our fixed mode selection algorithm.
> Yeah, I suppose that would be nice. Hmm, perhaps we could just sort the
> fixed mode list based on the vrefresh. The actual userspace visible
> mode list will anyway be sorted by drm_mode_sort() so it shouldn't
> matter for anyone else which order we keep on the fixed modes list.


Agree, having is_best_fixed_mode() always return the higher RR mode for 
the VRR case (or just sorting the fixed_modes list as you suggested) 
would be cleaner.
But I think we can take that up as a follow-up, no need to block this 
patch on it.

Reviewed-by: Ankit Nautiyal ankit.k.nautiyal@intel.com

Regards,
Ankit

>
>> Note:
>>
>> 1) As I have mentioned, this is hypothetical case which I have cooked up
>> by changing the modes from a real panel, which has highest mode as
>> preferred mode and 120 Hz mode being preferred mode.
>>
>> fixed modes:
>>
>>                   "3840x2400": 120 1199280 3840 3848 3880 4004 2400 2472
>> 2480 2496 0x48 0xa
>>
>>                   "3840x2400": 60 1199280 3840 3848 3880 4004 2400 4968
>> 4976 4992 0x40 0xa
>>
>> 2) This issue will also not be seen with VRR panels when the clocks are
>> different but Vtotals are same, the patch should work perfectly in that
>> case too.
>>
>>
>> Regards,
>>
>> Ankit
>>
>>
>>>    			best_mode = fixed_mode;
>>> @@ -100,6 +121,13 @@ intel_panel_fixed_mode(struct intel_connector *connector,
>>>    	return best_mode;
>>>    }
>>>    
>>> +const struct drm_display_mode *
>>> +intel_panel_fixed_mode(struct intel_connector *connector,
>>> +		       const struct drm_display_mode *mode)
>>> +{
>>> +	return _intel_panel_fixed_mode(connector, mode, NULL);
>>> +}
>>> +
>>>    static bool is_alt_drrs_mode(const struct drm_display_mode *mode,
>>>    			     const struct drm_display_mode *preferred_mode)
>>>    {
>>> @@ -202,11 +230,28 @@ int intel_panel_compute_config(struct intel_atomic_state *state,
>>>    			       struct intel_connector *connector)
>>>    {
>>>    	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>> -	const struct drm_display_mode *fixed_mode =
>>> -		intel_panel_fixed_mode(connector, adjusted_mode);
>>> +	const struct drm_display_mode *fixed_mode = NULL;
>>>    	int vrefresh, fixed_mode_vrefresh;
>>>    	bool is_vrr;
>>>    
>>> +	/*
>>> +	 * Attempt a VRR based refresh rate change if possible
>>> +	 * when userspace has forbidden a full modeset.
>>> +	 */
>>> +	if (!state->base.allow_modeset) {
>>> +		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>> +		const struct intel_crtc_state *old_crtc_state =
>>> +			intel_atomic_get_old_crtc_state(state, crtc);
>>> +
>>> +		if (old_crtc_state->hw.enable &&
>>> +		    old_crtc_state->uapi.encoder_mask == crtc_state->uapi.encoder_mask)
>>> +			fixed_mode = _intel_panel_fixed_mode(connector, adjusted_mode,
>>> +							     &old_crtc_state->hw.adjusted_mode);
>>> +	}
>>> +
>>> +	if (!fixed_mode)
>>> +		fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
>>> +
>>>    	if (!fixed_mode)
>>>    		return 0;
>>>    
