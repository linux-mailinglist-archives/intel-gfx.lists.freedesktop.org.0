Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id u1pqKMRZS2pyPwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 09:31:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F222770D905
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 09:31:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b="T/g06Vhp";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7324810E7BE;
	Mon,  6 Jul 2026 07:31:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AC8B10E7C3;
 Mon,  6 Jul 2026 07:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783323072; x=1814859072;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=In9v7hcdogM5OSwfecFClr0R7mg/SuFNR0xMrWr7w6o=;
 b=T/g06VhpR/JcD58nKLIvlN/Aqa1lQcmZvjf3CR+AtWI6BOOWMOsva05d
 qiYC8mS1653ZSnTPUpXAxNlsL8kE6NastGTPprioc8LLFWmM8RaBZkaH0
 wuMbTANNHlh8+XzrkurNqVYYExPEnfpqFZ8RIGkMX3n3ABPNANdYWwLOM
 Lb76Evz/0eEEL2khUWErNGdj3RlGVnqT5yB6Xq+7xUZDaYQYV8ryEBAzc
 bio2eSDVb7kyyKSQlNyOY2ZtYZE8OeKT4oi7LRvEXmTGAdL1cgsPXHRoP
 MjRnf9Y9O42utbZZfZSgTYVY3rKKxtFASFss7Mw+/ne6OZ3WzFdMtlhS9 Q==;
X-CSE-ConnectionGUID: tvR8ce21QQuES16qazsNUw==
X-CSE-MsgGUID: do4I/bF8SJWJ/7nJaJ722A==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="87861932"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="87861932"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 00:31:12 -0700
X-CSE-ConnectionGUID: LmZsmZt+TDWrZhRQ5Dno6g==
X-CSE-MsgGUID: xm8k4vSeTGuSl6z0ZyOLrw==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 00:31:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 00:31:11 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 00:31:11 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.2) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 00:31:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QU09eJ3D+yJjG4PozMgBWQQlNCVK+e4vR7sJpuBNHP3PO++NF6qoNMiH+LuxESQxQ6Y0i00MqeMmy3CGpf0t6mD2lQUMQavvuqT5m0RVR3BsWXiVsmSr6ow0V58StMHJiSwCmrvfo1xEp1Zk3h/i1bvfz7MOCkIghA3NoOcamDw5tWdctKBanSp6wJjb9uvvlR9F6zcfTVtIZyzQj41e2xnE5yDN3ECDmtVCXhONHfIjV7mrP824izSivNqVN9tW3UZtn7iQuFOGqEnD6zbuPl05QMJnCm4Kz+z8i/imQeN8C6RKND3Mprq4jl2v2J9mmurj0X5gxZOqB0gqShMR5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A9qrSHHnWUbYKfWCsLM7Z3h903i93x/4/TYkIYvYsmY=;
 b=NINjC4cHEXy137J58kC11iYbFL/j/ho/xd157TkeiF/gVHkkaz0Qrn6KgBJdXiAU9E0X/Bm2aFxxHDIpEJO6I8Jn2RcMwrGeq7yvtrR+8cCvwMNhD29ZCkrPkMzsi5jkI3c3jgkXNb04VW+CDbLeJPypo+w65kuBnW+lV5bwpv02e5EZzCrxOf2pSdq1IRBTzDV8yvJ4WPGDlozAqmos4krPJPdwv09Uwfi1sr1jrez95PdMeBUFt+feEqNANVsHuV6pcixoUlakYhGlKoTmW6E8/3aSB5PX+Zj6ynoDGQt8Wa+2cFPSVgIbPKEu5Je7keBCaAwIfpLdy9vXGeTQFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CY8PR11MB7340.namprd11.prod.outlook.com (2603:10b6:930:84::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 07:31:08 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 07:31:08 +0000
Date: Mon, 6 Jul 2026 10:31:03 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 32/34] drm/i915/kunit: DP link: add baseline fixed
 table reference test
Message-ID: <aktZt2Uwuvkv_S9N@ideak-desk.lan>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-33-imre.deak@intel.com>
 <b23a877a-0442-92ee-916f-d1f3873b5892@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b23a877a-0442-92ee-916f-d1f3873b5892@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF00023966.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::335) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CY8PR11MB7340:EE_
X-MS-Office365-Filtering-Correlation-Id: eb30cfb1-7f8b-4b83-4d2c-08dedb308b94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|23010399003|366016|22082099003|18002099003|6133799003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: tx5jCGyHuZQBJIp/I3dQXUMEzWW+IRfOmgycL3TlhmmiY9wTDLKXJO/JnBCLVXmXtchQVA2uWJ+Iho25zoofx0GVRBDOPrKtrYMZIwWH6zz3WNFlAveiDTB+cGk0pBhnRhSoWV0pfN8HTZCkmehMsO10Ku3NkKsP7KSrdP9g7Ez+duG3nbG0RhrntSysl70bWK4gFKQqGHehhIl3MK0qPi0yDAtvUoIzgQuGNwWPf0T24dA8ru7yJz5X2jySyA9lUT9CtT8Yw2MyQnbu11+sOv3luxMiouZKbcCdlmJpYv3YAPhAYDDnaSSNi6cM9iYD848IUzp9AECZYCh1beR3tvHu68IXf6HvxYPsLc/0fyOHGrfGCvnMYoPHaoh53vUjlJ89qa+6Az+LH9o1ziSX0SWgXlZDcSSl2kS/oGGS26GFgPlgtOiM2d8nKWt3kkEOtSDbAEMfN4yaeopEKHajocTHgZVF+XkpQ9MS1OsCdNILoAk+w3hRZXdvnAFhRnB4dXVj6Ta4aykw/9ykvDtVh393Zb5l341k954ap6liFMwRCAcfZjhKlE5KmXDqEKyOPbfhTPMnOXaMBohSNsu08a8Oegui0ru/yb5CHKkKg9wuC/mseGQNqseH8a2KLRCRWSvGrDb6VjgGJ51B4G3Q0a7pPyAe15Ny7mDqbCWag50=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(23010399003)(366016)(22082099003)(18002099003)(6133799003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGxqc05POW1MUHFpZzZBYXFpMmNxeTA0azViUUc1WUhkc1BteWRNLytvanp4?=
 =?utf-8?B?M01UcUJhamV6allRWFlQc1lRSWM3ekRaMFVNZ0p2cHkrVE9uOXlNTE9JS0d3?=
 =?utf-8?B?SE1YVkRCbjd4T1pEbHFDU0REWFI3K0UxVEs5Y3REWDRVNDFkYkxKb2RLcS8r?=
 =?utf-8?B?dnVaTW8vTXhvTEdNWFhMbEdsNzlvSmNVRk0wQzBCaDlZUkRobWl2REREUC95?=
 =?utf-8?B?aFpCRld3amFxaUlETDM2a2ZkQ1FvMVBDbm5zMFdySXFDM3hKbWhoaG5xS2N6?=
 =?utf-8?B?ZHJpNFRpMWwyK0tNdTQ0SDhiNTlDYThVam1TL2R6OW1yT3JrZTJaUHArZVZC?=
 =?utf-8?B?Y3RtNHRFTEwvYUJKNWMzeFJvZ24wNW9qZitncGI4ZWpwaHRraXA3Q1ZXb2hQ?=
 =?utf-8?B?UVpGa1pCeHA3czZ0SS83SWJNazhEbG5yYUR4bWhHOWpTOHh3QkU4UXdQYTgx?=
 =?utf-8?B?UjZDNkI4TkNtV2Z1WW5lNHdQMXZSM0p4Vjc2TmpwcWRYeHVoM2Y4K2RCcHVJ?=
 =?utf-8?B?SFlhSWlyZ0R2VWhVdTJ3Njc0SGJqRjlaYVNMaFlHNTRSUFBmTUExekE5UTNh?=
 =?utf-8?B?Nk0rbkF2RGJEM2ZDaXRKdWFMbDQzajlMcUczWnR6c0p2RjNuTzdFb1FYbUV4?=
 =?utf-8?B?VjU0M1FndGJxQTQzL0xBNGg4N3NsT0s0cUJrbkJmLzllSlRteGpONEJLUHBz?=
 =?utf-8?B?bmxrRXl0STlrdTlteStxekZOVUtKUnJNajE2SWtzQUhWUDV4bE9zRmwzampY?=
 =?utf-8?B?QWx5YWxPaFMxZ2I4ODBDWnluMVV3M1VYNU5yNDcrZGQ2aHhDSS9LUjRDVU5H?=
 =?utf-8?B?WmdURlpENkwzdmlSMW9kNHhmVHdpSk5zb0pjUEFKYlJmTndvdUpLL3dYeVVR?=
 =?utf-8?B?eUVlZk52VXk5eEQrUHJNYnJnUWVXZk95d1lEUFQrRk1hekEzNE1Cdnphc1hr?=
 =?utf-8?B?RTBFVE1seWFNWW1uclFRUzdVaGxGRUJRMmp2Q0pBTTd6R0VPS2ZTa05hblQ3?=
 =?utf-8?B?aGJ1bGpkQUZjNlR5ZFJVQ2hFUkdtN1gxUGZIV1k0TUR2VHBQdStURlBJMGFm?=
 =?utf-8?B?enhqWFhoQXBrb29CdlNyYTJtWmFuWDFmM09nbVlJaWQyMGlsRXR2MEY4VEVV?=
 =?utf-8?B?dnJBM2dJKzFjVUVLYTRXalJoMW9HcTRJYnBOZWVnYUxnRklYNnVWenNRNG9I?=
 =?utf-8?B?eDlVNzJnL3lCeElSU0FhR1A3d1YvRnFmc1BYZHF1VUlmSU8vTk1jbitJamNX?=
 =?utf-8?B?VDBZK2pOcEc2VWJKNFV0WGFzNmtaM2lmc3VHc0NoMUttaUxVTDRpY3NydWpy?=
 =?utf-8?B?eVJpZ29zOHNJaVUvYlN1aHE3Z1ZqWU9iVTlZdzRuMmJVWlVxajY0bUZIY2R2?=
 =?utf-8?B?WjBFQ2FVd2JBZHJLa1RISzN4ZS9qYWxIYlhQb09XNCtaOVRTUWtyRGliaXFz?=
 =?utf-8?B?NEdUc0lhQmZWTXRyQU1VZFVtV25WcWt5eGhoM1lhNnZ0cmI1UnlXUnZpR3Yx?=
 =?utf-8?B?ODhBUk9Sd25wL3g5WWVsUlBUUWptYkFEMVpxOUtLR2x2WDVUMmwxZ3NxVVA5?=
 =?utf-8?B?Mi9pN0p6bzdISmE1RmYzelZrL3Y2WWRUQ2N2eml4RjloZVVlYjltOG5ycld0?=
 =?utf-8?B?Nm9zTHNhbXl3SjhWWkR6WVRkNmQ5YlhWUzNSTVhOWEdFZkF3aytuNVVLZlVo?=
 =?utf-8?B?eDNrNkxKUmVtKzdrZnFqV05hNUhqT3RZdEVOSkdweEpzM2tYaHA2Q0UwV3RE?=
 =?utf-8?B?NEZETUpReG5UdEN0ZXN3MUZmWitmTmNlNDl3SjJub2pBcTVLSE5ERHZFRVFP?=
 =?utf-8?B?ZmRkeE5RMTVPdUlwdWM5S21wNktlMU9OWmVSMTdFRkN4ck1KNno3cUl0citP?=
 =?utf-8?B?QXllaHBRZGlPclZlWEE2TEYwb3pXOC8rUy9BTSsrWHdJVFNMUHRuOHpna2Fj?=
 =?utf-8?B?RGpQcy9wVWliTEFWeW5LRTdiNkpPd0I2bUJBOTUvRU9zK2M2Ry9OeFdaMFZj?=
 =?utf-8?B?bWJ3UFY1ZFRWUHR5YTlydDRJc0tNMExaODl1TVIxVXl3NE0yYk5ZVkhrUHQ3?=
 =?utf-8?B?ZG5ZVlRwOGRuRERzUUNRQ0RzSkR2Mm5BMzR1RDF6SEcydTlseTl6SGNZQ2tr?=
 =?utf-8?B?cGtjSFRWVllYYStEdnBubXBsOHVpaU5UVm9QWGZDdDlDbUdscVlrSUFLdXhB?=
 =?utf-8?B?WTZFRExxRThqc3d5bkNrSUhpTVlLRUZvNGdKdk9qajljN08zbzRDSzNIZWpj?=
 =?utf-8?B?N3lSVWdzYnJPZis4TDFXRWxIQnN0bDduMzhicnhMeXY1dDJaMldiUWpWVUJ5?=
 =?utf-8?B?WTlyVW9sK1Bsc1RSQkJ6RDF0WExTbGdtdktFUjk0YzZaZDNRdjNLZz09?=
X-Exchange-RoutingPolicyChecked: lzN7xOFlqAiyU1zT87SwXf+EsSinfv6z5xl/vNUptf5FyPfFN01iVH5gsBFJkXVpCdyiU5tpQSKOOs8EnKYUm74Ps00EqbpqHtkFxGJf2vZAhuVO4NFIYuSzWX5jku0JYn7Me36wlhRNyd72WOveJ5GidwSIu/sNEOd7Tvxh+nQ/iQRb7bgO+F+BdImkmCT0Wy495Adp4JnUNoixnZSRshQIms93Z7236YyqyNSSDINY7UYJIm6fQkjkQnruDkKd17KYQ7XaAru2j5gsL6wQsiD+gA1giiA7Z024S4qraKAwAmsOiu39jWN4pRQX2QVBjAe1IKvjZS8mRFSQZ8ONBA==
X-MS-Exchange-CrossTenant-Network-Message-Id: eb30cfb1-7f8b-4b83-4d2c-08dedb308b94
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 07:31:08.2618 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DEHHZzpPHMR0iYXxErI6gPCVHfwOKeCyTtp9f1TIVS04jBoHSlWeExxtUEeBJ5IEoG8qXzNLKN6UO3Vlllvumg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7340
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:replyto,intel.com:email];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F222770D905

On Sat, Jul 04, 2026 at 12:51:07PM +0200, Michał Grzelak wrote:
> On Wed, 1 Jul 2026, Imre Deak wrote:
> > Add a simple baseline test for DP link caps iteration using a fixed
> > standard DP configuration table. This provides a minimal validity check,
> > independent of more complex test setups, verifying the iterator returns
> > expected configurations in ascending and descending order.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> > .../i915/display/tests/intel_dp_link_test.c   | 200 ++++++++++++++++++
> > 1 file changed, 200 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> > index b77472e9bbe12..1dc5bf6888990 100644
> > --- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> > +++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> > @@ -7,6 +7,7 @@
> > 
> > #include <linux/compiler.h>
> > #include <linux/device.h>
> > +#include <linux/log2.h>
> > #include <linux/prandom.h>
> > #include <linux/random.h>
> > 
> > @@ -20,6 +21,18 @@
> > #include "intel_dp_link_caps.h"
> > #include "intel_dp_link_training.h"
> > 
> > +#define LINK_TEST_NUM_LANE_CONFIGS(__max_lane_count) \
> > +	(ilog2(__max_lane_count) + 1)
> > +
> > +#define LINK_TEST_NUM_CONFIGS(__num_rates, __max_lane_count) \
> > +	((__num_rates) * LINK_TEST_NUM_LANE_CONFIGS(__max_lane_count))
> > +
> > +#define LINK_TEST_MAX_LANE_COUNT		((u32)4)
> > +#define LINK_TEST_MAX_CONFIGS			LINK_TEST_NUM_CONFIGS(DP_MAX_SUPPORTED_RATES, \
> > +								      LINK_TEST_MAX_LANE_COUNT)
> > +
> > +#define LINK_TEST_NUM_RANDOM_ITERATIONS		50
> > +
> > struct test_ctx {
> > 	struct {
> > 		struct intel_display display;
> > @@ -38,7 +51,194 @@ struct test_ctx {
> > 	struct rnd_state rnd;
> > };
> > 
> > +struct link_rate_set {
> > +	const int *entries;
> > +	int size;
> > +};
> > +
> > +struct link_config_set {
> > +	struct intel_dp_link_config entries[LINK_TEST_MAX_CONFIGS];
> > +	int size;
> > +};
> > +
> > +static const int standard_dp_link_rates[] = {
> > +	162000, 270000, 540000, 810000, 1000000, 1350000, 2000000
> > +};
> > +
> > +#define LINK_TEST_NUM_STANDARD_RATES (ARRAY_SIZE(standard_dp_link_rates))
> > +
> > +static const struct link_config_set standard_dp_link_configs[] = {
> > +	[INTEL_DP_LINK_CAPS_ORDER_KEY_BW] = {                        /* MBps    PBN    */
> > +		.entries = {
> > +			{ .rate =  162000, .lane_count = 1 }, /*  162.0    3.00 */
> > +			{ .rate =  270000, .lane_count = 1 }, /*  270.0    5.00 */
> > +			{ .rate =  162000, .lane_count = 2 }, /*  324.0    6.00 */
> > +			{ .rate =  270000, .lane_count = 2 }, /*  540.0   10.00 */
> > +			{ .rate =  540000, .lane_count = 1 }, /*  540.0   10.00 */
> > +			{ .rate =  162000, .lane_count = 4 }, /*  648.0   12.00 */
> > +			{ .rate =  810000, .lane_count = 1 }, /*  810.0   15.00 */
> > +			{ .rate =  270000, .lane_count = 4 }, /* 1080.0   20.00 */
> > +			{ .rate =  540000, .lane_count = 2 }, /* 1080.0   20.00 */
> > +			{ .rate = 1000000, .lane_count = 1 }, /* 1208.9   22.39 */
> > +			{ .rate =  810000, .lane_count = 2 }, /* 1620.0   30.00 */
> > +			{ .rate = 1350000, .lane_count = 1 }, /* 1632.0   30.22 */
> > +			{ .rate =  540000, .lane_count = 4 }, /* 2160.0   40.00 */
> > +			{ .rate = 1000000, .lane_count = 2 }, /* 2417.8   44.77 */
> > +			{ .rate = 2000000, .lane_count = 1 }, /* 2417.8   44.77 */
> > +			{ .rate =  810000, .lane_count = 4 }, /* 3240.0   60.00 */
> > +			{ .rate = 1350000, .lane_count = 2 }, /* 3264.0   60.44 */
> > +			{ .rate = 1000000, .lane_count = 4 }, /* 4835.6   89.55 */
> > +			{ .rate = 2000000, .lane_count = 2 }, /* 4835.6   89.55 */
> > +			{ .rate = 1350000, .lane_count = 4 }, /* 6527.9  120.89 */
> > +			{ .rate = 2000000, .lane_count = 4 }, /* 9671.1  179.09 */
> > +		},
> > +		.size = LINK_TEST_NUM_CONFIGS(ARRAY_SIZE(standard_dp_link_rates),
> > +					      LINK_TEST_MAX_LANE_COUNT),
> > +	},
> > +	[INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE] = {
> > +		.entries = {
> > +			{ .rate = 162000,  .lane_count = 1 },
> > +			{ .rate = 162000,  .lane_count = 2 },
> > +			{ .rate = 162000,  .lane_count = 4 },
> > +
> > +			{ .rate = 270000,  .lane_count = 1 },
> > +			{ .rate = 270000,  .lane_count = 2 },
> > +			{ .rate = 270000,  .lane_count = 4 },
> > +
> > +			{ .rate = 540000,  .lane_count = 1 },
> > +			{ .rate = 540000,  .lane_count = 2 },
> > +			{ .rate = 540000,  .lane_count = 4 },
> > +
> > +			{ .rate = 810000,  .lane_count = 1 },
> > +			{ .rate = 810000,  .lane_count = 2 },
> > +			{ .rate = 810000,  .lane_count = 4 },
> > +
> > +			{ .rate = 1000000, .lane_count = 1 },
> > +			{ .rate = 1000000, .lane_count = 2 },
> > +			{ .rate = 1000000, .lane_count = 4 },
> > +
> > +			{ .rate = 1350000, .lane_count = 1 },
> > +			{ .rate = 1350000, .lane_count = 2 },
> > +			{ .rate = 1350000, .lane_count = 4 },
> > +
> > +			{ .rate = 2000000, .lane_count = 1 },
> > +			{ .rate = 2000000, .lane_count = 2 },
> > +			{ .rate = 2000000, .lane_count = 4 },
> > +		},
> > +		.size = LINK_TEST_NUM_CONFIGS(ARRAY_SIZE(standard_dp_link_rates),
> > +					      LINK_TEST_MAX_LANE_COUNT),
> > +	},
> > +	[INTEL_DP_LINK_CAPS_ORDER_KEY_LANE_RATE] = {
> > +		.entries = {
> > +			{ .rate = 162000,  .lane_count = 1 },
> > +			{ .rate = 270000,  .lane_count = 1 },
> > +			{ .rate = 540000,  .lane_count = 1 },
> > +			{ .rate = 810000,  .lane_count = 1 },
> > +			{ .rate = 1000000, .lane_count = 1 },
> > +			{ .rate = 1350000, .lane_count = 1 },
> > +			{ .rate = 2000000, .lane_count = 1 },
> > +
> > +			{ .rate = 162000,  .lane_count = 2 },
> > +			{ .rate = 270000,  .lane_count = 2 },
> > +			{ .rate = 540000,  .lane_count = 2 },
> > +			{ .rate = 810000,  .lane_count = 2 },
> > +			{ .rate = 1000000, .lane_count = 2 },
> > +			{ .rate = 1350000, .lane_count = 2 },
> > +			{ .rate = 2000000, .lane_count = 2 },
> > +
> > +			{ .rate = 162000,  .lane_count = 4 },
> > +			{ .rate = 270000,  .lane_count = 4 },
> > +			{ .rate = 540000,  .lane_count = 4 },
> > +			{ .rate = 810000,  .lane_count = 4 },
> > +			{ .rate = 1000000, .lane_count = 4 },
> > +			{ .rate = 1350000, .lane_count = 4 },
> > +			{ .rate = 2000000, .lane_count = 4 },
> > +		},
> > +		.size = LINK_TEST_NUM_CONFIGS(ARRAY_SIZE(standard_dp_link_rates),
> > +					      LINK_TEST_MAX_LANE_COUNT),
> > +	},
> > +};
> > +
> > +static bool link_configs_match(const struct intel_dp_link_config *a,
> > +			       const struct intel_dp_link_config *b)
> > +{
> > +	return a->rate == b->rate && a->lane_count == b->lane_count;
> 
> maybe: s/\<a\>/lc_a/ and s/\<b\>/lc_b/

It's customary to use a/b as pointers for two objects being compared in
simple functions like this.

> 
> > +}
> > +
> > +static const struct intel_dp_link_caps_order config_orders[] = {
> > +	{
> > +		.key = INTEL_DP_LINK_CAPS_ORDER_KEY_BW,
> > +		.dir = INTEL_DP_LINK_CAPS_ORDER_DIR_ASC,
> > +	}, {
> > +		.key = INTEL_DP_LINK_CAPS_ORDER_KEY_BW,
> > +		.dir = INTEL_DP_LINK_CAPS_ORDER_DIR_DESC,
> > +	}, {
> > +		.key = INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE,
> > +		.dir = INTEL_DP_LINK_CAPS_ORDER_DIR_ASC,
> > +	}, {
> > +		.key = INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE,
> > +		.dir = INTEL_DP_LINK_CAPS_ORDER_DIR_DESC,
> > +	}
> > +};
> > +
> > +static const struct link_config_set *
> > +link_caps_config_order_key_to_set(struct kunit *test, enum intel_dp_link_caps_order_key key)
> > +{
> > +	return &standard_dp_link_configs[key];
> > +}
> > +
> > +/*
> > + * TEST: Baseline with fixed reference table
> > + * -----------------------------------------
> 
> Didn't find in other KUnit tests such header, but I think the info
> provided is valuable.

The header describes the group of tests added in this patch, similarly
to the two other group of tests added in the follow-up patches.

> Can we add it to the line below, something like:
> 
> * Verify baseline link_caps config iterator using fixed standard DP config tables.

Not sure, to me the line below describes sufficiently what this test
group does.

> > + * Verify the link_caps config iterator using fixed standard DP config tables.
> > + */
> > +static void baseline_test_for_order(struct kunit *test,
> > +				    struct intel_dp_link_caps *link_caps,
> > +				    struct intel_dp_link_caps_order config_order)
> > +{
> > +	struct test_ctx *ctx = test->priv;
> > +	const struct link_config_set *config_set =
> > +		link_caps_config_order_key_to_set(test, config_order.key);
> > +	const struct intel_dp_link_caps_test_ops *ops = ctx->link_caps_ops;
> > +	struct intel_dp_link_config iter_config;
> > +	struct intel_dp_link_caps_iter iter;
> > +	int pos = 0;
> > +
> > +	ops->iter_start(&iter, link_caps, config_order, INTEL_DP_LINK_CAPS_FILTER_ALL);
> > +	for_each_dp_link_config(&iter, &iter_config) {
> > +		int idx = pos;
> > +
> > +		if (config_order.dir == INTEL_DP_LINK_CAPS_ORDER_DIR_DESC)
> > +			idx = config_set->size - idx - 1;
> > +
> > +		KUNIT_EXPECT_TRUE(test, link_configs_match(&iter_config,
> > +							   &config_set->entries[idx]));
> > +
> > +		pos++;
> > +	}
> > +	ops->iter_end(&iter);
> > +}
> > +
> > +static void intel_dp_link_caps_test_baseline(struct kunit *test)
> > +{
> > +	struct test_ctx *ctx = test->priv;
> > +	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
> > +	const struct intel_dp_link_caps_test_ops *ops =
> > +		ctx->link_caps_ops;
> > +	int i;
> > +
> > +	ops->update(link_caps,
> > +		    standard_dp_link_rates, LINK_TEST_NUM_STANDARD_RATES,
> > +		    LINK_TEST_MAX_LANE_COUNT,
> > +		    true);
> > +
> > +	for (i = 0; i < ARRAY_SIZE(config_orders); i++)
> > +		baseline_test_for_order(test, link_caps, config_orders[i]);
> > +}
> > +
> > static struct kunit_case intel_dp_link_test_cases[] = {
> > +	KUNIT_CASE(intel_dp_link_caps_test_baseline),
> > +
> 
> looks like a superfluous newline.

The newline keeps the {} separate from test entry lines.

> With all that addressed:
> 
> Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
> 
> BR,
> Michał
> 
> > 	{}
> > };
> > 
> > -- 
> > 2.49.1
> > 
> > 

