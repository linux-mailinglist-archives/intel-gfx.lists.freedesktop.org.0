Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54704998F91
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 20:15:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DAC010E121;
	Thu, 10 Oct 2024 18:15:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DZ7SIwxo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1304710E121
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 18:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728584141; x=1760120141;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uWclqnTCiHk2XbMGXGzrgS3rYupg3T0H8DZ9ZdGDrq0=;
 b=DZ7SIwxo+QGMvmhV7MDDfNMrugnIeylPuHHYFLrgxOuHPra3+EUPIQTl
 G8/w4ds+adR2pc2XBWPMnAm5r9kXMrRp73NIJHXHySjzz1Ju1SPGOfxi+
 WR9Zgw1HQmz97E1s4QaoRzrNxRNoqFLzKLIWIp8qG9KqBn2FJe1OA6aqH
 cC+vuQL2XuGhi1uriNjoNOFjg2XseLE3FOjJ+tWmfJpoRcSrEHEH2aF2G
 zVb9gHQD26/jhV97e+wp1eLeEHe8iOz3ABxOkb0tZfogS+zbWBSJLs1xw
 ScbpmcPhROVtrWOiQu2DgJ9GQ22uaxJqOH5A8bWsv3FCIxRc75QfzfDB3 g==;
X-CSE-ConnectionGUID: Gushf2VNSYCSKGF1r8RKsw==
X-CSE-MsgGUID: 7tkr7Q2OSNG21t/o5o+AWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="15588598"
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="15588598"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 11:15:41 -0700
X-CSE-ConnectionGUID: 38UelW5LSSWDWT3Iam5aFw==
X-CSE-MsgGUID: k7PmNVAXTVmJS4ZMwLL8Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="81269369"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2024 11:15:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 10 Oct 2024 11:15:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 10 Oct 2024 11:15:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 10 Oct 2024 11:15:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T/1SekFvXeXvlIfePjs3R3p8OPYTE9BuQe8qC2cLXZRwet5m5i0lkM2S0K3dFM4ceLqDyP190wnI1b+X9EytRZgxgujlKKGrtmeNQi55h4reS7NtZHjzhoRO19NntYQiatFUzAAObLv7SyxSkKxqj633YEBPVHleiAaCNYzErMSF7uWLlJBHduicPoJnYt6b0UOPWdN+4PjsspCYoSKuU4XcoF1y/rw7kwvPturnJwq5itgUPOAKFx9fTtIQb9l18eyKifML5bkIVdzMZV5/eV/RV9uVD/PCtzMfdove4OkIMZru0gj+s7ITxaRwKT/DZO13USA0Pu4fyL+v/pwa8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WICE1CitRLcxALt2Yy951ZnUQ0j6arQv/k3R/EujM24=;
 b=BxTaGamIeYQMvLrZUrkGRpokNehUKwQIf20kax+uX9Ieim8eFX6nibaRhPQsaTYnVjF91cZ801URAuYjNCArJARaM4avN1vhZ2yI7AKaUIrlBbjmsxNwsK/BtrwNmFq0eKp2LeGwh0lZ28SjhTFiZQG//cGiCXfeoydOxu8XSye9C293P3Xbr+ZlwtyheFoMqmZKKv5tKf5csmKyV0X+KBwXHK10HB9dBIvTxkWO+dHXKdZyLxXKWLFg+EQzJDUcG0yX2+rnup/AVaXwOfGsg8VhA9X7BF2eDrvKRpeChsVUsLeq7rv9J+GZACszfqDVhBkOLyDWPY3kVKfSTpaWOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by CO1PR11MB5124.namprd11.prod.outlook.com (2603:10b6:303:92::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Thu, 10 Oct
 2024 18:15:35 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%3]) with mapi id 15.20.8048.017; Thu, 10 Oct 2024
 18:15:35 +0000
Message-ID: <af9a4f4a-9b8b-4164-a5d6-be58bcdc3e67@intel.com>
Date: Thu, 10 Oct 2024 23:45:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5] drm/i915/selftests: Implement frequency logging for
 energy reading validation
To: Sk Anirban <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <anshuman.gupta@intel.com>
CC: <badal.nilawar@intel.com>, <sai.teja.pottumuttu@intel.com>
References: <20241010173439.2006496-1-sk.anirban@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <20241010173439.2006496-1-sk.anirban@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0066.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::8) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|CO1PR11MB5124:EE_
X-MS-Office365-Filtering-Correlation-Id: fc5bce04-d53f-4735-6454-08dce9578935
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZWVrdmZheWg1SE5rQUJESGgwVVVJR3c0Syt5cDZKd0FnamRSV0Qxcm55QUIw?=
 =?utf-8?B?M2lhRnBSTG40Nk01ODRBb2FCcjdPNUtZWHhsRnJoQ2cyK2ZFNDlEd0tvaHpF?=
 =?utf-8?B?bVRJaHVjTHgwMTllaVh6b09QNitGaFpERnhlekR6K0JtSC83em5LVFF1MFky?=
 =?utf-8?B?eGFRVmZLZ3l6cXB0WDZWR0c5azJuS29uTTRpeDVmRitjR2kzM3FpdU94ZWNs?=
 =?utf-8?B?aExWM1VzQ2VycVhhL0pkdnFUd0tCdUw0bWNSVWtsaGxPS1JRVjY3RElEM3hZ?=
 =?utf-8?B?Nm5YOVdkcytsTmp4dFFZRGRISk5TOGdZd1FkQTg0TVlaeS92dE1YckM3SVFQ?=
 =?utf-8?B?U1lSL1lOM1JuSmkycjNCRUkrVndQc3hCWjZsdlExVUhkaWlKLytYdzJGQWJN?=
 =?utf-8?B?VGlvTlRzalQ5ZGFjeTdrTHM3b1FScExXY2RxZzhTZUFSNkZsaWtseFE2akoy?=
 =?utf-8?B?aTF0dVU0aEV4b3ZJRVdGUTh5OXFxaUs2S3pwRE90UmJFTWdZTUFnZ1ovd1No?=
 =?utf-8?B?S1RVYy9MR3doQmhab0Fja0RaVkNQRHVkTkM2VWx0YWxBWjRYMHNTdGI2MHFm?=
 =?utf-8?B?MStXbDJRQXdrYWJpQksrdkgvMGY1bUcyeWtqYllIZGJ2N3VwNmFtWkZHWTVx?=
 =?utf-8?B?QjM1ZGJuMjZKWXU3QUh3b01MS0JheW5Ka2hwT0NmdzhzOXFLWDhFN1ZiQ1pX?=
 =?utf-8?B?M2V1THcyc2xsQnR6MFhWTlRJU0VVcWFnUjVhZTRXUHB2bkR6WFVXYURUb3FS?=
 =?utf-8?B?b0ZWUkRtSXNxd3RnWHROR0ZtY3RNZGNneERsUTI5ZStvZXh2T1Bad0pKL1c5?=
 =?utf-8?B?L09qVUtWWGx4cHZWVnYwMERtYW1RVEhubzBmMzlneDBtL0lPSmlwYWZpWjhU?=
 =?utf-8?B?OHVFVjBJN0N6TWlvVGIra1dQeHdjMWJpUjY3ankxVXY3UWdVN3JIQ1hJdUs0?=
 =?utf-8?B?VWs1OGxBY3UzdDZyWTFRR1NySkdBeldOR2diRFY3NkZZWWRhbE1VV2F3MEJm?=
 =?utf-8?B?emlSdy94NThDNkZGbmJDUk9nQVIrZFBJLzdwb2hkZ0x1WXR3RnhQby9WOTNk?=
 =?utf-8?B?Y1JkdFNWemIybi9PaitVNzA1VFpSeDlIalliSFpaSUhETVl0ZjVhaFZ5eVUx?=
 =?utf-8?B?NkdwTjVNSkp3TnVacG9KeGs4RlJ1Z2lBTHRoNStTUjNza1R4bzRxdE5HMFQ4?=
 =?utf-8?B?bFRWSXZxUWJZZVpCZGRMbmZDdTVtMnpYaDk1bUxUaDB0bHNsQk5kNUlzUS9B?=
 =?utf-8?B?alo4OGQzWjdxZWRxRjJqamlGSUdWQ2FtVGFoeGNZeWVhNHpYc3ZGWlJ1U3Zz?=
 =?utf-8?B?ZGNxUnRWNitpWUxEZ3BnT2Jkb2FXUUFWaUpTN1lubUUvdTZramYvOEE5VXlF?=
 =?utf-8?B?VmRrSTJTZVEybmM0S0p0bUpYK2Y2MTR4U0JYZklrQVlkb0ZjaUNIN3hldHpn?=
 =?utf-8?B?S2ZHWkU1a3dUNCtZZjdFR0syaWxLSXM1SkxhOWp2dDI4Vm05ZlFTTG5rQXNE?=
 =?utf-8?B?UW9mNUlPa3hCMmRzQU81K2xidXZvUWF4N1hxR3hqTnVBVElmWWp4TTg2dlNO?=
 =?utf-8?B?eFdLSmZxQkdVYU1aSEQ0NkFlVnlKZ1dtUXBVRmc4VmNOOWxkL0RyaDBYVVNM?=
 =?utf-8?B?dE1EamtFMEw1RFY2cmRMejdrVHVEQmJTT0lqVHNsOWY2dmZHcnlLbFdPNlVG?=
 =?utf-8?B?RnNVcXNyUW5XOTc1b3QvTHp5K3JESW9uWmJoSFZZR1dEVjFmeTgxT0ZRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3c0c3hFQnE2NEROUGRPUnEvNXd1dUV0QW1TMUxhTDZEd2gvOGk0bXZCV3Bp?=
 =?utf-8?B?dDIzQUYzbHMwM2pvRmEvMEJGT25WeURGRU5oRi9vS01NYWNxT3BPcXJ5UzhS?=
 =?utf-8?B?WWxyQm16d2h2Mm1xMlhqeE1QWCtTMnBnZDIxZ04zTzRnSmdiQXRMU3FRVHVB?=
 =?utf-8?B?T01RbUs0Qmw5MkZZNUdGQnpacWtISkFFNHFBZnpIbFROVzlTN0lTZ3pmd3Vq?=
 =?utf-8?B?WHVlVnR2Um1oSHRyb05IWUpjVnE3aW5rUWMxSldJYUh2UHBFZzhjY1MyZ0RM?=
 =?utf-8?B?U2srK3YvOEtrQyszTm1YYmRvNjJ3bUhFT2VkSGhLQWNHelllczNWOFUvU0gx?=
 =?utf-8?B?ZVVMNHNKL3gzbmVUSXB2RU01R1pKRnBkbEg4bTZRRzc1RmpQQWQ2VklZWGFy?=
 =?utf-8?B?UlIyV2c0TThESXk3MjFxUVVRZWh3L1hVZDBNbk8ydnBNUnZHeWJjd2t0ME1R?=
 =?utf-8?B?TFlMT0RaeFFYLzVmMFpBbjc4VXlxeFN3UGZ5a3NPZUQvZStITzMyRG1hOWo0?=
 =?utf-8?B?a1J2cm5RS1FXMlpmSUtsbXd3azFseHpRSHkvMHpqRXVuY1RDMzdlZ2UwK21M?=
 =?utf-8?B?bEJOYmFTZjJpZjQ3Tkp5YXNlamhBOFFVdVEyUWRRMUs1Z1VXekdqZ3gxcUFT?=
 =?utf-8?B?T0FrQVJLdzBHRkQ3ZXFnOUJCME5YMUVScVd3ZUdydGE3L05OTmZwcFJ3a2g2?=
 =?utf-8?B?eC9COWQ5NnorNTFkNVFzZjhneVBNTk1RKzhndThwS2YwSmJRQlRGWWZXVXlL?=
 =?utf-8?B?ditEMFFqZmNTcFhPSmFlVGhxT29MUXN0UFRsQ2hDOFF2Nm5wZXU4aVpyR1BZ?=
 =?utf-8?B?QVNITjlLYlo5bDl2Wk10cHdhckYycStyUFZFOGZkRUdqZlRhM1EyUmxnUDkw?=
 =?utf-8?B?OWlnbHRZeWd4SjBROS9BVGtPeFpqOXZVU1A4S1BWYzBGYklOQnVIRXZCelJq?=
 =?utf-8?B?MFVIRGt0cTd2cmRXR0ZWRllMTytMeC9CeXh2MktEdzFweTRwdlVTTEVNK1Ar?=
 =?utf-8?B?dEU3OEdDcFlKMFFyVmErVHpra3dwejhZbWVPcDJ1UG91NmxFS2kzS0d3SlI3?=
 =?utf-8?B?Wm55M2VJakR4UkZRQllkU3VMS0dSL2h3cGIwWG9naS9DZ1BVemptSENQc3pB?=
 =?utf-8?B?VkdWaFdhWUtqSE0wYW9CNlpQaTJlbzRxeSt0aERwbzZWWjh4R0ZyYjNDWG9m?=
 =?utf-8?B?RUkybHRaNGxvSVpDOW9XamRHSmtoYlAzb0RGc3lzeWNJcCtQZi8reDdId3dJ?=
 =?utf-8?B?V2xzSW9idERzWXB0dkx1bGZoWDl5TVVLYXk0bERiM1YwOTZMQXB0WStIUXdP?=
 =?utf-8?B?bDJicnFjMEFnbkp5dmtzS2J3MEdWc2g0UEhLVnR0QjZjNWF2RE1reVZoanlZ?=
 =?utf-8?B?UEN5YVV2MXlSVWdTOXVLbmRJT0VVSW9CQU43Ynl0aEJ4TzVnNHprOEpSQ0I4?=
 =?utf-8?B?OURVc0Fudy9ma1V6MGRvMlZZL2NhdU5ZM0grQS9wUmxvbUlqUUVNWnJVTVA4?=
 =?utf-8?B?SGRZSEJsY3NrQTFwRm5KWkFOR3Z3d0RieGtVTXpHK3EyUHlpVXV6OWNLVHNW?=
 =?utf-8?B?YzZRaXhvem5ZbU0wME8wV2JoNjhWVnlDOUs3ajgxZFZzSThNdlNkRzZhVStX?=
 =?utf-8?B?L3o0dUhBVWRyUkh6Kzk1ajMvWmJMaGs4QWpiWDRha3FrY1BnelMveVJKN3l2?=
 =?utf-8?B?WmZ4WC9veHNRdFVZeE0zYTFjeTEvekpCRXdPSDJKQU9EQmJKZDV1MWJ2WUtj?=
 =?utf-8?B?ZkpJbStFTWxrOW9sSG5ZVmN5eHJWNHBaTzE1MVZwa2hnMTNOc1ZIU3hOZ201?=
 =?utf-8?B?RDJIYWlOeTNLWG1PNEtYdC9oUHk5K1c3Zm1BTVdOTUtUVnVka2o2Q0VWR3JJ?=
 =?utf-8?B?Z1gvM25FSVpjbVN5ZURPWkZNWUlxNWp1RWUybkwxSmhNNEVuZFJ6TExLcEZw?=
 =?utf-8?B?U2FDaHJFNjdTQWF1dGhqT0tseXpvSXpkM0wwYThCQ01mSnNHQmFJWS9URjdr?=
 =?utf-8?B?WEpRSUdTblNGcjQ4VGc5cjYrYnhoUXB1Ukg2REJzMzNaQlBYRUdKTk5kU09r?=
 =?utf-8?B?bzJEU2tFMTIxd3VmR25vc1BPa1VsQXdua2V2SDJkRXpxV0d3c0ErQ3ViUkZj?=
 =?utf-8?B?b3BVK3ovSU9vVlBVaHNad1VRNlBjOUdiK2h5TllkMysrVkp3ekwzaWRhOURH?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc5bce04-d53f-4735-6454-08dce9578935
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2024 18:15:35.6053 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rJRqYtJDQUKKbGBW/7ZFT/mNPGnLMC2lhaCzNmJFWwLxPnFIrWl98wfWuibEK+9kKy/FmUdLWlibw8XpK+jmAHFakGkocBOdfIG9AHN4AlY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5124
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


On 10-10-2024 23:04, Sk Anirban wrote:
> Introduce RC6 & RC0 frequency logging mechanism to ensure accurate
> energy readings aimed at addressing GPU energy leaks and power
> measurement failures.
> This enhancement will help ensure the accuracy of energy readings.
>
> v2:
>    - Improved commit message.
> v3:
>    - Used pr_err log to display frequency (Anshuman)
>    - Sorted headers alphabetically (Sai Teja)
> v4:
>    - Improved commit message
>    - Fix pr_err log (Sai Teja)
> v5:
>    -Add error & debug logging for RC0 power and frequency checks (Anshuman)
>
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_rc6.c | 20 ++++++++++++++++----
>   1 file changed, 16 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index 1aa1446c8fb0..0cf86fed39ca 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -8,6 +8,7 @@
>   #include "intel_gpu_commands.h"
>   #include "intel_gt_requests.h"
>   #include "intel_ring.h"
> +#include "intel_rps.h"
>   #include "selftest_rc6.h"
>   
>   #include "selftests/i915_random.h"
> @@ -38,6 +39,9 @@ int live_rc6_manual(void *arg)
>   	ktime_t dt;
>   	u64 res[2];
>   	int err = 0;
> +	u32 rc0_freq = 0;
> +	u32 rc6_freq = 0;
> +	struct intel_rps *rps = &gt->rps;
>   
>   	/*
>   	 * Our claim is that we can "encourage" the GPU to enter rc6 at will.
> @@ -66,6 +70,7 @@ int live_rc6_manual(void *arg)
>   	rc0_power = librapl_energy_uJ() - rc0_power;
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
> +	rc0_freq = intel_rps_read_actual_frequency(rps);
>   	if ((res[1] - res[0]) >> 10) {
>   		pr_err("RC6 residency increased by %lldus while disabled for 1000ms!\n",
>   		       (res[1] - res[0]) >> 10);
> @@ -77,9 +82,14 @@ int live_rc6_manual(void *arg)
>   		rc0_power = div64_u64(NSEC_PER_SEC * rc0_power,
>   				      ktime_to_ns(dt));
>   		if (!rc0_power) {
> -			pr_err("No power measured while in RC0\n");
> -			err = -EINVAL;
> -			goto out_unlock;
> +			if (rc0_freq)
> +				pr_debug("No power measured while in RC0! GPU Freq: %u in RC0\n",
> +			rc0_freq);
This line is not indented properly.
> +			else {
> +				pr_err("No power and freq measured while in RC0\n");
> +				err = -EINVAL;
> +				goto out_unlock;
AFAIU we should have the EINVAL and goto out_unlock irrespective of 
rc0_freq. Reason being, if rc0_power is not measured then the comparison 
we are doing with rc6_power below becomes invalid so I think we 
shouldn't proceed if rc0_power is not measured and just goto out_unlock 
with EINVAL. Am I missing something?
> +			}
>   		}
>   	}
>   
> @@ -91,6 +101,7 @@ int live_rc6_manual(void *arg)
>   	dt = ktime_get();
>   	rc6_power = librapl_energy_uJ();
>   	msleep(100);
> +	rc6_freq = intel_rps_read_actual_frequency(rps);
>   	rc6_power = librapl_energy_uJ() - rc6_power;
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
> @@ -108,7 +119,8 @@ int live_rc6_manual(void *arg)
>   		pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
>   			rc0_power, rc6_power);
>   		if (2 * rc6_power > rc0_power) {
> -			pr_err("GPU leaked energy while in RC6!\n");
> +			pr_err("GPU leaked energy while in RC6! GPU Freq: %u in RC6 and %u in RC0\n",
> +			       rc6_freq, rc0_freq);
>   			err = -EINVAL;
>   			goto out_unlock;
>   		}
