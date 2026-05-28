Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CONlO38IGGoaawgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 11:18:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2015EF733
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 11:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6EAF10EEB3;
	Thu, 28 May 2026 09:18:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hdOhgYG7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A4D010EEB7;
 Thu, 28 May 2026 09:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779959931; x=1811495931;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LpgyjLU9vGCtlBMYfhDrf9MvV77AhXNZSEdz6VnB9c4=;
 b=hdOhgYG7USvOtbK2btTLJ3Ya+97aI9WFk5nxgL0IemdZDgi8RetFkpAN
 3EVevwI/+6fjXLAf3+GY9teSkePQDD1NxiXwWaJsubW2iLEO2wilV0Rzt
 0kZ9c9RgOC0tFOj25LN0kALvvu/zmdSS0zlWaHg9FWtoOYOYb716kstsG
 ctbou6ADmJhBqJSjwSblcDku3DIxCPnUYa01JA68CeJPYiLRrCNf8+gaI
 s0F8FjXFliSfxj7xqu0hJz7nYo5SGeFxEE8GEBtgGQCIxvyk5An0cIjyZ
 ZUv+nG8KXYBtzoZn/Vov56b9rJUTNsOuqLJpvSY0m/aok2k1gZmCuPBbM Q==;
X-CSE-ConnectionGUID: vubdR7ATRN6+6sxbCsIqAQ==
X-CSE-MsgGUID: zmbOO6LOSCWStdspchqQwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="79948077"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="79948077"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 02:18:51 -0700
X-CSE-ConnectionGUID: 9OXhX/b4SJyKjLqRYvNk6w==
X-CSE-MsgGUID: ZGd2AXiRSHaKwBphWhFjiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="241668121"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 02:18:50 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 02:18:50 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 02:18:50 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 02:18:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BYCdZU1mtWNjg0oC8VipA8+edO9WIctDCbt0YERPGRfsHGUUjSHWnKni5AOjCKYr/39L++8w4FGhFedwwY6GlBovRQ4FOEMGvvKXwUdKmbOMAmL2fp8AhUhiaBxLIGdjUq0Ujqafthn9OMCSPx65W/hA4ii+svjTDjLN18ANJGAb8686uzTr+f6gTQI5pjvKbI7hg8i37XR/zotPN3JG4J5tSZLs1RbM+PGLagBwKfajL361KVZa3/vijygkdW/wI/PBVl7AQjZsEfxRJVcdn+WjCPoDA7z0SZy395nKrDZkjetTNMHWlzvfKFJeI1JZx25BG4ujQPEsNgMlIGMBQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qn0/j2Pd9v5LlppCuy/NJnh/gVSp2GlII/PXuIn3TE4=;
 b=tvnSDlP+fjYxoAk0mi7xsAQbdeMjWXeh4qHD9yRbwmLJBFjBxGl9EVHAXRGfc0uXP05boJhk0xvNCIG+0wwAWoYaQJkSs2yWXu3gUu1ehBqd4vwicjdsuWQhlJhpP2L2m5Hn+IgEJxcwFyx0HC+5spH+nWbLHzZos+kas/NlwMs9CKQp+tx373jumVlXVYxchprO8mIkA8EYDIVL6xs63X9fWfrVIBXaEa+2vqnZxsPnM6+hTqTGbUMjczrn2mw0jdBGmseKjDIIhsjJ+Glpi/L7CGBGwh36445EJ5/fUXUEBGP/4knXATFG8XpCao+KBDfQM6bOZwiZB4uAHxYo6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by MW6PR11MB8437.namprd11.prod.outlook.com (2603:10b6:303:249::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Thu, 28 May
 2026 09:18:42 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 09:18:42 +0000
Message-ID: <34e425d3-a875-4e6a-8cf2-e462aeb05f0f@intel.com>
Date: Thu, 28 May 2026 14:48:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 05/13] drm/i915/display: Add DC3CO support check
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <animesh.manna@intel.com>, <uma.shankar@intel.com>
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-6-dibin.moolakadan.subrahmanian@intel.com>
 <7eb615966dca9c62be035f3270c756bcb49a7b27@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <7eb615966dca9c62be035f3270c756bcb49a7b27@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0011.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:174::17) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|MW6PR11MB8437:EE_
X-MS-Office365-Filtering-Correlation-Id: e93c56ba-8dfd-49c4-1371-08debc9a1c59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|4143699003|11063799006|18002099003|22082099003|56012099006;
X-Microsoft-Antispam-Message-Info: qwsw9a9nyFCl1GjIFKLIGm3BVlHISXAmGgXGyjt0xVPBeEhLQ6GK+h2Yno7r6kDNtgkHGccn24OD3nBbWWiN9XN0zgmokDKq4xDIMYKbGa5OTXbBpxyXNwHQqf5F8u1t099xu3ngKlp6Tnn1UKvKxjM20rntUdtO3pJVYoyHiR4aNVzQCpRWlwVwneHb/pQ99c3LN6Nj+hB1QWNqX9xnsFD6tamRvhf1aflHU21snjHMhQN2lrI+lH81yIYGE8x5H6ngtfh2PGVFAy84wLYTY2+lUXocqdga1X4lTEaHGrBZQBu+XfcBfV8T20IHfnz2IZgEXVl/v6+N1OKvhtBn5gihx53WKIlBQsuMSODToPk0peo8x0J4+DDSelhZrSupnGnqRNIXpeRQCWg4cIdv7HxobwGMMzQ22n/3JsptREm8hKSCxWsNWzLErdUMi1pIe8ChbtaHvcj21LZT89pj+fDpmEgLRkPxiRzw85emXPsKOxXWK7qKd5ze9QXYu9+mJnus7+oJnB5QZ73bcZh2Tb3qmAND16SVvdyx4etT28084z1ltU39ThmpmoLC1rwHHVKXfoXm4Wr1vJr63zocPsZc/kzsRvmCu0Q+iBXYl+Dn4Z+8/e6SVwsJzb9/tV1Rd0ktxPOsPmvhDv2E+r+/8WJJc9L0MbLhARPVtBSPUUtJMB0xyUKeI/x/71KrSq1I
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(4143699003)(11063799006)(18002099003)(22082099003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnNQaXZ2V05FQzdJbjl4Z3BRSGxRdTc4UHVabnR6OUVUeGV2RnN3dlBRQmpG?=
 =?utf-8?B?UXdPeGVqMzE1NTBUcGkvU1o5cGxZckpqT0xJRDNmT2xyY1BKVVA1aTdPNldm?=
 =?utf-8?B?UDQwZGl6VCtYSnllS2YvKzdtNDFTMTBpaTFUaVA3cTA3YWRzNjdBdmM3TGZa?=
 =?utf-8?B?WGdmc01YMWtyYTIvQ2lNd1QvVnhZUE1TdDlNMHlpU0IrRDRZSDhtUVZWb0sv?=
 =?utf-8?B?bG5GYkZOcDI3emRYTnJ5NlBDTUdwZXpqWVN0NWh6NGdEd3BCNWszN0wrUGFD?=
 =?utf-8?B?ZmhreURKaUdsN3paM3dVV2dlQ3dlK1oveE1ZRDFGbnFCcFRyUnc4N0tLbkJQ?=
 =?utf-8?B?R2dLME00TXhUTVhkSnloQlMwYTNyYTc5V3RneFIyOUR4WFE3OTh3bDI1eXpa?=
 =?utf-8?B?VmpwZ3dyN24wMUpLZVlITzMvN0d6UStZNG1VSWllRk9qdzgvc2sydm5GeWdJ?=
 =?utf-8?B?V1hMU2VPd0JkZFpsMjRVTVlPdlNhZnNVMnJoa0pPNkJtbTlOYjE5SngzVmFG?=
 =?utf-8?B?L1htUlhWQ2hieFc3QmZaUURBd2U1RzRSb0VjZVBOYUdpTGFGY0M2ait5bGUv?=
 =?utf-8?B?Nng2UHdwSC9ndGFTL1dDbHIybUxLbkc3YThCRUc5aGZLNldpNW1neXJFR3c0?=
 =?utf-8?B?anBGVkdNZXFaWGxRQXFmNXNFYkNpYzd0R1F3TTJmS3BUeUZPcFpUbTlnUWor?=
 =?utf-8?B?MDZRT1ZuU1FGWGgwQzRWaXJ3UHhnZDUrd1VFVDFkSnZPOTFQN21KSU1BeVpY?=
 =?utf-8?B?eFBwOGRZaklJUkhNWmtEKzRRVkpkYzZoRVd0QTdJWTYxb2F0elNXVE5sWVBY?=
 =?utf-8?B?dnBOeHo1d1p2WFJuQU5pSkFiQVFEVHowREZJL1RCc0NHTVhOa2g2VHZOVHls?=
 =?utf-8?B?REFieFFCM0tsRUwxTXI0d1ZvYlQrdXloc3phcDlsbnZraUk5OTYzbEZ2emtZ?=
 =?utf-8?B?NnpTdXVUZDQwVUl2S2NldzhiRDgxRVlPcU5nRCtSTk15M0dsb2pVUmFoZ3Fr?=
 =?utf-8?B?U2Nnc1J0Wm5kYzg3YzhVclIzZ0xHSWY3YmtoRHR0NlhpKzFKUTNGY1ltV0E0?=
 =?utf-8?B?MGNjMC9OVEFMSEpXQWZrQ2hidC9STEpFRW11SkNPWG5VVnZreloxZURBQTFt?=
 =?utf-8?B?cTVhZ0ZlakhNZGpvakR6WVo5ek5iS044WE9teDFXL0tmZlQwL2J2L0lGRktl?=
 =?utf-8?B?LzRVdlVQcUQzOWtWdkFhbHVlZldEL3NldmYwcVZKeUlucGJMRnNzQk4xdjg1?=
 =?utf-8?B?RzIrUngreG40dWV1VUR6azR3L3FuanhjVVVmeGxUU1lrVm80dmxSa1dVZ3dO?=
 =?utf-8?B?SzNtUm5nTEIrS2pLaHRZOHRwaFdUZTd2RjNTYk1XODZNUi9aNm1wS21zWTN6?=
 =?utf-8?B?MUxGOUJjNHl0aTE4N21TbFAvV3BrdkxYTjRlUEVRSHBwQmcrNENpSzhMRFlE?=
 =?utf-8?B?UkRBeE1PQ0JIYlZVZGVpK2pZRk54aUd0aDFjQzJtRXMzYjI0SExhYmluS1Ft?=
 =?utf-8?B?VXZLZmpEQ3VqUXdwR0czdGdsaDhiSlhhZGx6bEpic3FxR2xmTDNkUkFYbnlK?=
 =?utf-8?B?enA4eVRUWmlwcEFFS2tMcHc3YmtVOWxXa2wvd1hocUp1bUJWSXIwWThZT01I?=
 =?utf-8?B?cmgrZU9uMVFlUGhKRW5zQ1g0ZU9QZHZ3N0JuMithc2tBUWg1SVpMT0FXaFRU?=
 =?utf-8?B?TURVa1JINXFONDNlM3N2MVB6eENlWndJRlZmcHJGVUhZZy9sUWtvRkJXMDhu?=
 =?utf-8?B?aXBKd1praTNVM1g5NkMzR2JFZGdCSitaRVkzTGx0RUVSRGpYOHc0WXZMUlNh?=
 =?utf-8?B?Nm9Fa3VIVU1FZE5la09LZ0pMWlYyYVhPZmhlRFZXWk1JcE1ZdVUvQ2FWUU1H?=
 =?utf-8?B?dmQrNHJtMm1YTjh2bG9nT0ZrRE1FNnRMa1JGUldvZDM5OGgvZWVTTVphSGo5?=
 =?utf-8?B?WFRRNWdOUlRqTktHSDJ0YnYrd2JiM0J4dXFMZVYwQTJQUElMRDFLVEIyajZy?=
 =?utf-8?B?Ky9FdW1OcWwvVWVXZEZBYk84OWZkVFNWSEtnUHFYbWg3R1JTR01aUWgvSkdS?=
 =?utf-8?B?MDk3NUNnV2VPUHNmSzQzSTB0aVJockptYWRaRGw2aTZwSGRlekxCNklwQXZE?=
 =?utf-8?B?Y0kvd1JuWEdTTXlpdGtMUjB2RXFZTXpyTlFKS1lnSkkwWXFQRDV4TExvVHFX?=
 =?utf-8?B?c2tYTVBsOTdrTUJlS1JaNHFPZTZKQjg1Y1hJa2VsT1J4WVQzeEhYWlRheDZL?=
 =?utf-8?B?Y1VBNS9vM0x5ejV0MDN6Wmd0WUgzTXpNaEZTNzRIUFdHWHZBNDBkYm9XTHJk?=
 =?utf-8?B?K05kNElEM282WkFFVTV2ZmFtRFFwUVZjNHFqQ0ZDQ0VsQTJZM1BhWXQ5MXdj?=
 =?utf-8?Q?b3LQWj+8GoOB7999RT3r45romE4qrw01xB5k3?=
X-Exchange-RoutingPolicyChecked: Mb8YOY/JF9FOyCtcguAqAddAYFcnMNzGAmKNom+RsSjwR9L+XUFkBhHKSSUqq3ktYt0RBwSWVS6mFdVgqXtHu8Om+7MeU3O8ypZvMJUg8hsH4oVX9dgI7ktrG2+K5ZNCzV7kD281NKrXN9vj3Tyv9vC2biagM0Mbg6e+n0OhgPWH1fl+ZZv8iLv2y+1fv4oXGtIgGYXk9stREhKPbN3sO31bp5xLZu91c9r4D11HYDvVBLhuyZNxys5lawIOlDZucwFcUIFWxNXpn6o3rimthonmZOaNpOja5DCATfCUqU+INH8h9lU5fZ1xygeqrP8r2BlA4yaBuRsa4DNgrTf2Hg==
X-MS-Exchange-CrossTenant-Network-Message-Id: e93c56ba-8dfd-49c4-1371-08debc9a1c59
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 09:18:42.1768 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sOjiu2jOK8uqnFfMLi18MlhJG3w2XMmDvNCfPsj9eDOJH6gQf+UYk2FlnC4fEzOrW9JKczywpqPzcPiDFqYLhuuCOkp4Bu9uFiKspIWO01iAr0lJvzWBqZjhjbIQJpQt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8437
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5A2015EF733
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 27-05-2026 17:56, Jani Nikula wrote:
> On Wed, 27 May 2026, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>> Add intel_display_power_dc3co_supported() helper to query DC3CO
>> support from allowed_dc_mask.
>>
>> Changes in v2:
>> - Squash "Add helper to check DC3CO support" patch into this patch
>>
>> Changes in v4:
>> - Remove introduced dc state validation,as it may break
>>    fall back mechanism (sashiko)
>>
>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
>>   drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
>>   2 files changed, 9 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index c70971ffd9f0..4b91747b38f1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -302,6 +302,7 @@ void intel_display_power_set_target_dc_state(struct intel_display *display,
>>   	struct i915_power_domains *power_domains = &display->power.domains;
>>   
>>   	mutex_lock(&power_domains->lock);
>> +
> Superfluous.

Thanks for the review.
My bad, will fix it in next revision.

>
>>   	power_well = lookup_power_well(display, SKL_DISP_DC_OFF);
>>   
>>   	if (drm_WARN_ON(display->drm, !power_well))
>> @@ -358,6 +359,13 @@ u32 intel_display_power_get_current_dc_state(struct intel_display *display)
>>   	return current_dc_state;
>>   }
>>   
>> +bool intel_display_power_dc3co_supported(struct intel_display *display)
> This should probably be static. See my other replies in the thread.

Will check the other replies.

>
>> +{
>> +	struct i915_power_domains *power_domains = &display->power.domains;
>> +
>> +	return (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO) == DC_STATE_EN_UPTO_DC3CO;
>> +}
>> +
>>   static void __async_put_domains_mask(struct i915_power_domains *power_domains,
>>   				     struct intel_power_domain_mask *mask)
>>   {
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
>> index d616d5d09cbe..05880e9da89f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> @@ -186,6 +186,7 @@ void intel_display_power_resume(struct intel_display *display);
>>   void intel_display_power_set_target_dc_state(struct intel_display *display,
>>   					     u32 state);
>>   u32 intel_display_power_get_current_dc_state(struct intel_display *display);
>> +bool intel_display_power_dc3co_supported(struct intel_display *display);
>>   
>>   bool intel_display_power_is_enabled(struct intel_display *display,
>>   				    enum intel_display_power_domain domain);
