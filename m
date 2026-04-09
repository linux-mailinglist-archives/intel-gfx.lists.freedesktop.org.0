Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKiFEXmG12mwPAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:59:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A405D3C95A6
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:59:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F115A10E79E;
	Thu,  9 Apr 2026 10:59:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f7v20d2Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E67A910E79C;
 Thu,  9 Apr 2026 10:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775732342; x=1807268342;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rCZ1Jk4JmKFMY8g/rkdQ5FkO65ROTbZzW/zs5lPxu4M=;
 b=f7v20d2QxO3bqVjgQ5cGyw5T15TSekXZCpZDvGckLYaUtjfobaO0PmDo
 yBsQ6guRqmRAhiiAO64VtI7kk9WONH1wmlyvYzEGktMAClUej8orMgOO6
 KwiHO14D9Gj03qGsczNVp4AiUiG2GC5lKI4fGnWbV1jdxlhPSpsyvNGEX
 oav/5RIx3VtYYqrkleN9PpWJJxw+kiIKWcAbYLrn7bWQryBlnqm0i7KVw
 D3muf1hbCca1JrNHjA4q4VRP3oJyPWxT4LZDWLT2TzXG8pBg01K1TMKby
 5mAZUFfMoyAByU+FzSL5K8iq3Dhszl1+0hHwzAiu9RPiIy97wZSRofJKl g==;
X-CSE-ConnectionGUID: SX3QZfOASlOpcezgJ/+Z+w==
X-CSE-MsgGUID: U9WMprg0Soq7ZIzOoXwHBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="102185499"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="102185499"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:59:01 -0700
X-CSE-ConnectionGUID: 9wnN3vUKSI+qRRgQZrcEkA==
X-CSE-MsgGUID: XT30yvABQ/W+vjPgEslylA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="225577181"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:59:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:59:01 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 03:59:01 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.8) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:58:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DI5/zlCcuczNikzVTMNsR2GvRUBcA0stcOiJOAKYuhGPtp0+UCVfccMFDBlrtor6H3h/PfINcaohZHE2GmeCDCcx8RZgnrqH4BJCUh0lDM+uxVZT8sydM+xov6nEU4zSrThqUfBCHPxsk7bO6WWfVbCSITwjfI7Dmy2spJdpNpSRLvp9CvgLgfb/KFYzEmRNWTBDGlF9+L3IzZda4PsT9vI2XGHPw2Rol/5Hid0qpu8QMJCIiiJzUpu7wcZPnoQFHaHX5x8+E3VNbs6fyQzdMeW0+JZ2jvS4kHHy67wQGYHJMxmkuaWzg0L5cjcpi1Rn1XeqZiIbc2umKLfM05+Y3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gmLkvrn3yPjHlzFcypUeocxlbuwbfh/O0vhYAiNa3kQ=;
 b=VB9pdEF9gNG2UDyeyyzHGNfsudtHXP3/bR+VyrOCIxGzjPv/u5PlsX4cwIoBbfPNMVNl9Wwhmi3MmgLheCz3u4P24cgNCI29NHS2FYrKg1kljKztu0/v4LfEPT51JmHHpX+oEXAO15cxBDzF79DaJY6YIPsocp6Hh+5gFr1xekSgqkURYBI2YNnq6JjjaQdmb4bqd9AoLAJ2SDONwF3C2ck8qK8+4fetKUoV5/qmdChDFZicSOIx9OwsBRwj4lbB87FouzGrCo71SUFQGEeao5DSjw7EsBPhE7mYkt22oGDHJH6ub1PNsR2z3QIpEzj44LXI+zMVRVATzbNkggj1kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL3PR11MB6507.namprd11.prod.outlook.com (2603:10b6:208:38e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.42; Thu, 9 Apr
 2026 10:58:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Thu, 9 Apr 2026
 10:58:51 +0000
Message-ID: <a6530c8a-8748-4faf-9b31-584820096516@intel.com>
Date: Thu, 9 Apr 2026 16:28:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/9] drm/i915/dp: Validate "4:2:0 also" modes twice
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>
References: <20260409101539.22032-1-ville.syrjala@linux.intel.com>
 <20260409101539.22032-6-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260409101539.22032-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0142.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b9::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL3PR11MB6507:EE_
X-MS-Office365-Filtering-Correlation-Id: 3984f276-5d5a-4a7c-9e4c-08de9626fc16
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: MIVVDzcv5u0m6ndu+8cvTlZ+kzAP7WmMKc2ST5nMlkgdL08rRoaV7B666I7H6v0b+xrQ4ch8KBk2Cq9qJ+0ooDzmVIDF2ZuIsG1wlaLAXy68jAuPguGeY/tpJYjaV1/lvNPeKtjqzjbG6zdV8hno/97b7hMK/5hQXJCArRXtonPKaHSGNtrwWoRQ4s65Xts0svdCAXUkptLqJxW5f2S5ZqRfZ0EfeRA7wvIhD0nZnCRjqmYSgeCxSrz/xJrGeuyaPqL3SU11/seYz6Bl6aDPDXNTto820J5kGxxepB5KNVeai3cg2jFZeYhHq0JdpwJz/JS9H/L7/vvsZ+g0Lk3cO5lece7z3UrGovxwU1zRqfdpaBT8cxsYsu8y3HNU8yZXIPbl47ROl53VshFmejn/QTe57NKqXy3IDvF5g/kZr4YliUs4JzR2udZeuODbChhlbDRj0oj8CePUvTtXBlOp6eeEwuhvnSPkIbMN3Z25wr3HErfHwVgVee91m+aKBfJt+H4aiDVix6e79EqErbsWhJF3MJm9tjeO7nd7d5ML4zKadFV0Id14DoOguVMUf0yBYzbOHUYiRqno1Xhgo12ez99NEeri95gY6Td4pfMPDqZ+6cIj4BJ9avELKWtxyLN8VcNP3nAKblhp/W8TRTmo2tjIUeGI4XdZJjWN12rB0EuBa/6VoyjiGqQVJVcZd7fBK2c1eh5OcDWxsW4kpLK2SLVzIVRRlOCN4XEeW5BQQdE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?czJGUi9ORUR1YmZkOG1FblU1NWRJYmplWjNjdnVSQTlpVDk1ZEtYVlk0YXIx?=
 =?utf-8?B?ZlBpNlNMcG5TY05EWWhaY1RkbFRtbm9FeWlxMHkyM2hHMzlybGx3K0lyV1U1?=
 =?utf-8?B?VGFnL3dhVU9GMlg1RzR5VmtnYUwvUi96NDR6NjMrZ2t0WGYvVEdQTEgyeUNk?=
 =?utf-8?B?cXQ3cTJQWm1EZDBOU25uNmpkTU5oRjNJRkcyak8rWENCbEowZUJJUkRFRGtM?=
 =?utf-8?B?UFVSZ2YyL1FJQlhWcS91YjdRSjg0YzkwNDY5TXE3b0J1dC8yc0dONHBHQjJX?=
 =?utf-8?B?NHVGUk43ckE4NXJGRDZTbjRESjcrb1RxMFZUV3hpMytTU1RxNEdzekxTYVBa?=
 =?utf-8?B?WXFrdHhZUHY3NkRkcEFPYVdZbzl6TU5SbEV6VUpZbmRXV2dZTzc3UmFCeERq?=
 =?utf-8?B?VG5KdVJwM3UvV3cxN0FDZUVrVVBxTFNxMGlzWlhNVDQ1eGhINXQrRXp3cTRv?=
 =?utf-8?B?TklnSGhBQldETjNKTzUzUjEwWWNJWVorNGpEVHFqcVBWNzdNaG40NU1GWElQ?=
 =?utf-8?B?WGI1ai9LNVMwbUI4eVArWWNGcHZqWnhhb0pqUjYrcGFvUDJnMjkwMWh6aTc5?=
 =?utf-8?B?N1hIWXRINkFuSVVSdkRLcWwrL1hhRVRMRlZaa2t5dXM3a3pXekkzRDNBQkJ3?=
 =?utf-8?B?ZzFHY2V4WWJRQXBjYjFiczBKNVRVdDVCcEowbHlmV1ltdmVOWm84WE1ubkRL?=
 =?utf-8?B?QU9tOTRjTkVJS1BPRmFBTll0b0haU1BDcHhlU3haQkZScWpPR3huOHlHZ1JK?=
 =?utf-8?B?QkpZU1RKUTFEMzJsa0lTVW1XZEZsa3I2TTI2NldZc3BuLzZXT0RlZVo4YUwv?=
 =?utf-8?B?UkhNUkhQTVcwYWVrWXlrYk1NVkd0U2pBVWlWSmMvazhER0ROcmNaQWVaVk9S?=
 =?utf-8?B?bTRLdVFBUWlpTmJWUURwUlBVWGpXYzdlMXN2SWQ2Ly8yQjVDTDVyTUxINzlE?=
 =?utf-8?B?QUlCcHdpVHhKVFBxbTQ0VGFoK2Q0UE1MTml1OUM5QytuYmxpWCtXOXJQOWNS?=
 =?utf-8?B?RkErTkhaaGdDNnNyOWVMaDluZTJlTHY1eHFHVTZQUjZLNHhOb0FtUEp0d29Z?=
 =?utf-8?B?MjJQYUcrMXEyUVVGeFhTbGI0NGdwVnJaWDFCMFcrTmRoSHIrR2tnZmVOemhT?=
 =?utf-8?B?cU9CNk9aeVJkT2xST3RkTnFHeWUrdS9tenVuTkpmV0JOZmdOL0loeStiQzRQ?=
 =?utf-8?B?Znh5aXdocE1sSW1QMU9MMjJ5TkJDRFUrSGNrUHlYQ0hFSXV5TTIzWkZqVDJW?=
 =?utf-8?B?SXVEU0Y2Q1A3VlZLcFVpMXdNRU5nbXJnTFpSdU5zeUZsWGFFR01mWm56YjhZ?=
 =?utf-8?B?bElkaFg2OGhpSGV1Q0JEaVM5WkNCOWEyK2dnWGlWR3ZsbGtvNGR2NnAyQ1pW?=
 =?utf-8?B?bzEwQmJlb3lhRXI4SkFKOG83THJmSVo1R2d6ZWxHcXpTZGc1OWVCb0N1TXpj?=
 =?utf-8?B?WE5Sajk0VXVwNjFrek04ZzB6SEhYM0JaTmNqRWtSdStGbE1vZm12ejNIZjBm?=
 =?utf-8?B?OG9xc1pwampIbkltQmExc1pzdi9EckI2QkpncnlnUGxGQWwvM09CR2dNbWph?=
 =?utf-8?B?ajB2bm5iVmVIaHg1TnY3dnIzcm5PcUVtOEl2clMyNUlZc0lJNkYwUk05WFIr?=
 =?utf-8?B?RnFOdSt6ei9zb09qYzRtS0VNaHpvQkFOZFIwN2RaQVhzSldoOXNFQVAvSGR0?=
 =?utf-8?B?N2VMYWhFUlFqMmJtMlhCUkF4cHYwdXhGemwzRmdFSVRJWEZWZmYvUXlTbHBp?=
 =?utf-8?B?ZmY3clpuZlRMMWVzb3VpZ2hPdnFqNXFtcXpITG8wNUlMeTZIRGw0S3A4Smdr?=
 =?utf-8?B?em5sQ2J0eWNtYjJGaWp4SUV6R3JPOEw3SVdFZHhtWTFGR25EZlBKcTI1clpF?=
 =?utf-8?B?UGI3N3NMbXBleVgrbmo2b1A2VWxKQlhjTTZEQUlSNURQVFNuZm11alVyOE05?=
 =?utf-8?B?SUEyMkJsMXBpWFIzZGNDbHJadkJQOEswTmsxWk9qSUp6cExnQkRNRWpQd3Nn?=
 =?utf-8?B?V2EwSFg1eWVER0VzTFhCWGE0NXkxdTU3a1ZvSkEwMm1vdnJuakFtUHFQUDY4?=
 =?utf-8?B?S1NIUmw3UUdFWmpjVmhzWXI4ME1RRm54NkVJeVo4V2RPTSt5c3Era2RQOVpt?=
 =?utf-8?B?dDcyNEhqYmc4KzhodVNIMk5FWldXNTRJUVJoVlh3aW5kMzdOTUpEL3Y5dUNo?=
 =?utf-8?B?eGhPbHJPZkZmQXZ0cGwyNW9hSFIwb1pmWXloVEpSNk11bE9KUkNhaGQyNHlo?=
 =?utf-8?B?VG9rRWh5LzJxOGVUckJTYVIrSUtmVnV1NGhKNjBPcWViZG0vNVdka0lMT1FU?=
 =?utf-8?B?Nm15Z1UwYU80ejFCelZjelcxUjJ1QlJnVjI4UUhEbEh0TUJjM3VaeUN0WEps?=
 =?utf-8?Q?w9kUtfTG+NxpO5ws=3D?=
X-Exchange-RoutingPolicyChecked: tLT7yabXjY8XKZQjTG+nBGhw6yasm5bI2nfqMpt4IESm4x26T1l3ERXSURPjRs5/X/+XAz4RYOyRCa3S4n/vBM2l02f9HLgudyUszj/21BEtzGQQiVUwT8Cw3SoctiDLqoDL02fl+UVnfgpYW/UyqAhTK7QwApXKnpbenFFNuDiKX0Ywf1GdbeLMwpqf9sVGA+InmAY3+MGogCLOHewokxKfOWC3QfIYz1peF3F7UWQiX6kfLH7i9D4IcrylBzsP1o59DJLzZgALdC4Telsuhi54vRXPkQfhs/PtEZV+3lbGtxzsc+qAWtpbXTlUX26koJzhe1kJk5NqN26eyr/ggQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3984f276-5d5a-4a7c-9e4c-08de9626fc16
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 10:58:51.8735 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QR0MQRwR3Ua9ygUwCMB/4t66NLdZJvdpOu7oyaWAjn8UzjAqtPS8TTg/LkcSFEiUJ9AAgmWhRld/EAkWwL3fkMurDlA4PIw63wvoY73rCXQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6507
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: A405D3C95A6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/9/2026 3:45 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Currently we only validate "4:2:0 also" modes as RGB. But
> if that fails we could perhaps still use the mode in with
> 4:2:0 output. All we have to do is retry the validation with
> the different sink format.
>
> So far we did the double validation only so far as it affects
> PCON TMDS clock limits. But validating everything twice seems
> a bit more sane.
>
> Note that intel_dp_output_format() might still end up picking
> RGB for the actual output format (and letting PCON deal with
> the YCbCr conversion). So I suppose we could still fail the
> validation due to that, and forcing even the output format
> to 4:2:0 might solve it on a third try. But we'd need the
> same fallback logic in intel_dp_compute_config(). For now
> this seems sufficient.
>
> v2: Pass output_format to intel_dp_mode_min_link_bpp_x16()
>      Add TODO about remaining issues
>      Nuke intel_dp_sink_format()

Thanks, this addresses all the comments on v1.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>
> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 151 ++++++++++++------------
>   1 file changed, 78 insertions(+), 73 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index ed5841f224ee..99672341f43e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1234,28 +1234,11 @@ int intel_dp_output_format_link_bpp_x16(enum intel_output_format output_format,
>   	return fxp_q4_from_int(pipe_bpp);
>   }
>   
> -static enum intel_output_format
> -intel_dp_sink_format(struct intel_connector *connector,
> -		     const struct drm_display_mode *mode)
> -{
> -	const struct drm_display_info *info = &connector->base.display_info;
> -
> -	if (drm_mode_is_420_only(info, mode))
> -		return INTEL_OUTPUT_FORMAT_YCBCR420;
> -
> -	return INTEL_OUTPUT_FORMAT_RGB;
> -}
> -
>   static int
>   intel_dp_mode_min_link_bpp_x16(struct intel_connector *connector,
> -			       const struct drm_display_mode *mode)
> +			       const struct drm_display_mode *mode,
> +			       enum intel_output_format output_format)
>   {
> -	enum intel_output_format output_format, sink_format;
> -
> -	sink_format = intel_dp_sink_format(connector, mode);
> -
> -	output_format = intel_dp_output_format(connector, sink_format);
> -
>   	return intel_dp_output_format_link_bpp_x16(output_format,
>   						   intel_dp_min_bpp(output_format));
>   }
> @@ -1329,14 +1312,10 @@ static int frl_required_bw(int clock, int bpc,
>   static enum drm_mode_status
>   intel_dp_mode_valid_downstream(struct intel_connector *connector,
>   			       const struct drm_display_mode *mode,
> -			       int target_clock)
> +			       int target_clock,
> +			       enum intel_output_format sink_format)
>   {
>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
> -	const struct drm_display_info *info = &connector->base.display_info;
> -	enum drm_mode_status status;
> -	enum intel_output_format sink_format;
> -
> -	sink_format = intel_dp_sink_format(connector, mode);
>   
>   	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
>   	if (intel_dp->dfp.pcon_max_frl_bw) {
> @@ -1361,22 +1340,8 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>   		return MODE_CLOCK_HIGH;
>   
>   	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
> -	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
> -					   8, sink_format, true);
> -
> -	if (status != MODE_OK) {
> -		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> -		    !connector->base.ycbcr_420_allowed ||
> -		    !drm_mode_is_420_also(info, mode))
> -			return status;
> -		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> -		status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
> -						   8, sink_format, true);
> -		if (status != MODE_OK)
> -			return status;
> -	}
> -
> -	return MODE_OK;
> +	return intel_dp_tmds_clock_valid(intel_dp, target_clock,
> +					 8, sink_format, true);
>   }
>   
>   static enum drm_mode_status
> @@ -1472,15 +1437,14 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>   }
>   
>   static enum drm_mode_status
> -intel_dp_mode_valid(struct drm_connector *_connector,
> -		    const struct drm_display_mode *mode)
> +intel_dp_mode_valid_format(struct intel_connector *connector,
> +			   const struct drm_display_mode *mode,
> +			   int target_clock,
> +			   enum intel_output_format sink_format)
>   {
> -	struct intel_display *display = to_intel_display(_connector->dev);
> -	struct intel_connector *connector = to_intel_connector(_connector);
> +	struct intel_display *display = to_intel_display(connector);
>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
> -	enum intel_output_format sink_format, output_format;
> -	const struct drm_display_mode *fixed_mode;
> -	int target_clock = mode->clock;
> +	enum intel_output_format output_format;
>   	int max_rate, mode_rate, max_lanes, max_link_clock;
>   	u16 dsc_max_compressed_bpp = 0;
>   	enum drm_mode_status status;
> @@ -1488,29 +1452,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   	int num_joined_pipes;
>   	int link_bpp_x16;
>   
> -	status = intel_cpu_transcoder_mode_valid(display, mode);
> -	if (status != MODE_OK)
> -		return status;
> -
> -	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> -		return MODE_H_ILLEGAL;
> -
> -	if (mode->clock < 10000)
> -		return MODE_CLOCK_LOW;
> -
> -	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
> -		return MODE_H_ILLEGAL;
> -
> -	fixed_mode = intel_panel_fixed_mode(connector, mode);
> -	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> -		status = intel_panel_mode_valid(connector, mode);
> -		if (status != MODE_OK)
> -			return status;
> -
> -		target_clock = fixed_mode->clock;
> -	}
> -
> -	sink_format = intel_dp_sink_format(connector, mode);
>   	output_format = intel_dp_output_format(connector, sink_format);
>   
>   	max_link_clock = intel_dp_max_link_rate(intel_dp);
> @@ -1518,7 +1459,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   
>   	max_rate = intel_dp_max_link_data_rate(intel_dp, max_link_clock, max_lanes);
>   
> -	link_bpp_x16 = intel_dp_mode_min_link_bpp_x16(connector, mode);
> +	link_bpp_x16 = intel_dp_mode_min_link_bpp_x16(connector, mode,
> +						      output_format);
>   	mode_rate = intel_dp_link_required(max_link_clock, max_lanes,
>   					   target_clock, mode->hdisplay,
>   					   link_bpp_x16, 0);
> @@ -1608,7 +1550,70 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   	if (status != MODE_OK)
>   		return status;
>   
> -	return intel_dp_mode_valid_downstream(connector, mode, target_clock);
> +	return intel_dp_mode_valid_downstream(connector, mode,
> +					      target_clock, sink_format);
> +}
> +
> +static enum drm_mode_status
> +intel_dp_mode_valid(struct drm_connector *_connector,
> +		    const struct drm_display_mode *mode)
> +{
> +	struct intel_display *display = to_intel_display(_connector->dev);
> +	struct intel_connector *connector = to_intel_connector(_connector);
> +	const struct drm_display_info *info = &connector->base.display_info;
> +	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	const struct drm_display_mode *fixed_mode;
> +	int target_clock = mode->clock;
> +	enum drm_mode_status status;
> +
> +	status = intel_cpu_transcoder_mode_valid(display, mode);
> +	if (status != MODE_OK)
> +		return status;
> +
> +	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> +		return MODE_H_ILLEGAL;
> +
> +	if (mode->clock < 10000)
> +		return MODE_CLOCK_LOW;
> +
> +	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
> +		return MODE_H_ILLEGAL;
> +
> +	fixed_mode = intel_panel_fixed_mode(connector, mode);
> +	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> +		status = intel_panel_mode_valid(connector, mode);
> +		if (status != MODE_OK)
> +			return status;
> +
> +		target_clock = fixed_mode->clock;
> +	}
> +
> +	/*
> +	 * TODO: Even when using a 4:2:0 sink_format intel_dp_output_format()
> +	 * will always choose a 4:4:4 output_format if the DFP can do the
> +	 * 4:4:4->4:2:0 conversion for us. Thus a mode may still be rejected
> +	 * if we only have enough DP link bandwidth for 4:2:0 but not for
> +	 * 4:4:4. Another attempt with an explicit 4:2:0 output_format might
> +	 * be needed here. intel_dp_compute_config() would need the same
> +	 * logic, or else the actual modeset would still fail.
> +	 *
> +	 * Also a lot of the checks only depend on output_format but not
> +	 * sink_format, so we are potentially doing redundant work by
> +	 * testing the same output_format for two different sink_formats.
> +	 */
> +	if (drm_mode_is_420_only(info, mode)) {
> +		status = intel_dp_mode_valid_format(connector, mode, target_clock,
> +						    INTEL_OUTPUT_FORMAT_YCBCR420);
> +	} else {
> +		status = intel_dp_mode_valid_format(connector, mode, target_clock,
> +						    INTEL_OUTPUT_FORMAT_RGB);
> +
> +		if (status != MODE_OK && drm_mode_is_420_also(info, mode))
> +			status = intel_dp_mode_valid_format(connector, mode, target_clock,
> +							    INTEL_OUTPUT_FORMAT_YCBCR420);
> +	}
> +
> +	return status;
>   }
>   
>   bool intel_dp_source_supports_tps3(struct intel_display *display)
