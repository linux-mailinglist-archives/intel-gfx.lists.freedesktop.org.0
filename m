Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25231B95846
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 12:52:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B57A210E149;
	Tue, 23 Sep 2025 10:52:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mSwSluOp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB84E10E5E5;
 Tue, 23 Sep 2025 10:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758624734; x=1790160734;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JaycRcG+hv127ZrSMOyM/AzdA358d5MgqjP7keOtzpM=;
 b=mSwSluOp6MZFp+b/6VO4W0tYQKUztIsUyVPIxmA5MgxTiFtYbpQ8vEBr
 E8B/JmYac4tDwHiXoflm4vUvNpz/KJEza88H2aCusJyd2V9wSMtHxCv3f
 Pg3oVM6dQKxEl6aU4JNKEW2dzy3bYroTzWgLnB50JxQVaWQpbSYDQVntL
 Nvc2jU/OGozBq/42O1xC8e1A1DQCPnlGfJ46PV66gtVlfxFgW4/Q+/3aP
 JMD+oIssD1JVKldlJ0zzqBNhgFKFNIAGWqEpAuSYhH16mZohHtBH8Jnzl
 bY16FBS8X+QJxY2vLkoVxMbwCMKJ5ayTREV5LbsvHj7GdiC70PgDSnHZ2 w==;
X-CSE-ConnectionGUID: tWHMXNa+RTinyeqngZgoNg==
X-CSE-MsgGUID: MnrDfQoNQIqIrnSaGjXDAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60952578"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60952578"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 03:52:13 -0700
X-CSE-ConnectionGUID: uEEPafZqQxyGzlSvlGBg+w==
X-CSE-MsgGUID: 1Vd49iosSV+o/Dl3uXU+1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,287,1751266800"; d="scan'208";a="175865021"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 03:52:12 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 03:52:11 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 23 Sep 2025 03:52:10 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.22) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 03:52:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iS6rUXhSOGN/lC4I5Dc+XCKBAo411J52ukojxwqQXb5fLMcOJEVg6A+sWs+WORu/JefWJevoUEt4ATVJnhtM2qujTnPNdN+jY0NmFNuM3yJBJYFNLCArHFa9ejfcqOEn2whHyr+JR2FWa23xojPN0OJ3req4MVI95ffXR6IwiTjxNgJVUgXRjAi9lwgBkk0F8CCNOJkYFRRm3yX1BJBKLcgk1RHbQKXFqIHVU+BSsNVnaIkwAfS+NuS83yf9xYJWcxNFgG7sra+Sv0QJuIkaKCpHYSBpytYEJMuJuhb4UCpjUvFudzSN5cYUaB6ksoqAxB3NBwcvxJPvw26SaQD6GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mQw0Yxd4QlP5Di2MaITjPjVaSYccUDJ6clh9e5+wwSo=;
 b=QxigOab1jVg9eoBimf9iMIbmW7X70izKs8QXOZRgy64z70stmgdo518KUhKwTsSUnxRejJrTVgVeUQgkrBRnmLdUNe1sMlic3BKHWn9g/Ujx6dUv/NVxryuG2NFkoXvE0wmx6qSOoqo7VP2R/DWSrfdxoM3oVSIWoQFD+6b+bhjwTFIkt9AaOhlYR+qpFazHbkQvBbr6iaw5Rv0SUQnuc0myA0WcrOzOjxNGQvwf/jsSV5MukL6617tAiBZtqnCL+OjJ3xhsRJEDAHIX45JUL6l3yn8mTN5ZGH6s8gL2lNIninne0tJzFb2rJUm6UrZvnmLNz61jn/hIbH85OjBmxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB5991.namprd11.prod.outlook.com (2603:10b6:8:72::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.20; Tue, 23 Sep
 2025 10:52:09 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9137.018; Tue, 23 Sep 2025
 10:52:09 +0000
Message-ID: <a5ea91e1-d6e5-4c5e-8251-928ea66e1d4a@intel.com>
Date: Tue, 23 Sep 2025 16:22:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/9] drm/i915/dsb:
 s/intel_dsb_wait_vblank_delay/intel_dsb_wait_for_scl_lines
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-8-ankit.k.nautiyal@intel.com>
 <aNElyOcbD6F8h7It@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aNElyOcbD6F8h7It@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0010.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:174::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB5991:EE_
X-MS-Office365-Filtering-Correlation-Id: f27f3ff1-ae1f-4fbe-04f2-08ddfa8f3e18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aGwwUDMyZUxxZFJrdkdGUTM5YVlFOVZnRC9nT3NzbVhYQUhiMyswb3Zkd1Jv?=
 =?utf-8?B?aXMxU29ncVQ2cXNBMTRpMUllK2NLQ2Y3NlJlNDlSRXRnODE5bmxWcHF6bmFB?=
 =?utf-8?B?cW55cnZwcFJGeUVhLzJ6VTdHTVMzK0l1eFgrSWh4U3pNaHBjWUFadkhuK0NR?=
 =?utf-8?B?dHRpbVprL2tIWE1keDJhTmk1WEtiMkFDaHdhT1U0ME8yak5VaGxSU3ZiSDZ6?=
 =?utf-8?B?TE95OUg2VzhZWGFyN3ZseWJRa1ZOcnRHdDVMdjAxK3lsNHFBQ000WkNZV09C?=
 =?utf-8?B?WWVjS3A2bmlQUlhXbm52dGxjbEFobjVxSjlIRGR6Zlg3NGdWTHpzVlYxWTc3?=
 =?utf-8?B?anh6UHJnUC9DS01MaGRONXkvdmQ1OFYrRStQT1U4OGRka0gvNCtrT0ZwNjd5?=
 =?utf-8?B?N0prbUlKQ2YwdGovaENTK2wxcFJxWktNQ2U5dEtET2czdHJkOW0wVWtacTBv?=
 =?utf-8?B?OFIrOWlKcGl6eVZuMzZVNVRvaU1aV0JvNjRYU0Q0NWtLSEh1Y0FhVUx6RVR3?=
 =?utf-8?B?WUlMZjZnVzMzalRPTGNJb3ZaTWRCRFl3NnJwd2VYSlJRNzkxQ3lxTVJIeWFJ?=
 =?utf-8?B?UUNOZnUwU29wUVQ5M3F6UnpPVVFBOENtYXIwTVZiYjBWM1BBdThnUTFuMGxM?=
 =?utf-8?B?UkFHc3hpSzRnQlBuZnNuSnJqMmhCZ0g3V1c1emJtbStaSWNmRTI4Rnk3OWYw?=
 =?utf-8?B?VnVRbXl0WFFaR0VMUzVCYlZPajZRRS9SaTFtem4ySGpXNUtCanlBRVdOa2ZF?=
 =?utf-8?B?Ri9zZlRkalZPSGM2SjNrVnNGcStCV1RaUi90bWk4aUN3UzFneDRuVzgwRVZN?=
 =?utf-8?B?OWxLYm9INGdac0JOSm9VN3JXUk44aGhLRkxxK0tWOGR5Q05BS3Z0N250OXFv?=
 =?utf-8?B?STlWMmZnUk9DTDcvdk56NUt3TUJzRnBMeWlTMTZIYXRPRVZCSVlucjdDRzRC?=
 =?utf-8?B?NFZrVTUxcXNoZXNxVERGd1JZYTdPdTRDUUd6TzFVdFpvYi9iRmVVeU5aY0U4?=
 =?utf-8?B?cTVkVmhLWHc5K1JTWWUwVUdNZFVETFBmeWc1MnFHKzJOWHdwZ0RhMXlvQkJB?=
 =?utf-8?B?U0FoTG5uVzJFU0F4UHNBVUQyUldPWTl6VXg4L3N2MVpCUllxYUk0dTZ3Tndl?=
 =?utf-8?B?M0txWXpBcFhoei9WelN1QWxVaWkwODBpODljNzE0eGt3ZjZMYTlqbzFYUDBP?=
 =?utf-8?B?OW9VenR0QStBdXIzblNYSzlQeGZwNlZENExXWUExd2FlaFpmTUowM3kyUDZY?=
 =?utf-8?B?QTJGREFBZG1XMTRyY05XNWhsRzJNbk56K2xSN1hBTTdRRDl5TTNxWk9uYkJ1?=
 =?utf-8?B?Ri9JdlF0emsvdlRFQm5rdWRSeWVtS3U5TlBKZnNoQ0Q5OVlUTXdIRU9IWVB4?=
 =?utf-8?B?MWdNZzhPOU9CNVZSeXIxeUFqM0p1OCtnMXlQOXcxb3V0S2EvYjVtMzF2Qlhr?=
 =?utf-8?B?NVZnL3dFUE5NdnhFRVVjN1BTakpoMTJPUjVYN0hwK2JVTzZpVkVrRjEzU0ZL?=
 =?utf-8?B?cW83SU1mekxyNmdHdHNUMnJWZHd0d3N6TlcwS2Q4bjIrZFExc2s3WTZFUXUv?=
 =?utf-8?B?VXhyUjJzTHgvUXA4UUVnOHJUWnFPeG0xb291N29XRHBYQmlldjNQYnBPQVA0?=
 =?utf-8?B?V3IxNEYzT1NTU1NwRk9GVVAwYnFRRTFiZ3BIazJqRTZHaWNPWTNQcERna3VC?=
 =?utf-8?B?SlF4YlhkYVJmdUpFaEw1TDRZRnBta29rdDNmd3hWemtZZGJPU0szVkhHLzZ1?=
 =?utf-8?B?UGZFZFJTRisrcENvQllicG1QdzlnaFlPekprWVhDZTY2bWpaeHZPYTdLdnl4?=
 =?utf-8?B?QTlPU0RObEF0NVRSTFNoYlBwWXBQRVJSUU5pQkxZM1NON1gzYW1YUUpGeWYw?=
 =?utf-8?B?RXZBNzdRaE5jTDE1djgySG8wRngxU1N4R1BzUEFobmNSUVc0VS85dHlVMjdM?=
 =?utf-8?Q?q+sXjf5/SIc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RzNDZ3Q4L1JraXBrcDVINUNSMTZTb0VxZURSTndpSHlWYWtTNnFpclE1OHVZ?=
 =?utf-8?B?WXNzZFpXcVNEUEIwa1hkSmZhTGptdEFFb0JqdXVST2tSTWVDaThLeXNDSk1G?=
 =?utf-8?B?MzJvMUVBVHBORGttYnFJQ1ZTWWY4M2xINEUyNW1mVzczRzRERk1vMXY1RzlD?=
 =?utf-8?B?OHlDK005YmFzMVZUV2hlZzBJTU8xTG5GZHpWWXY2eGtrY1JDVXFuWG13M0Rm?=
 =?utf-8?B?eFNmSWRKcVovL2lDWC80ZkRlQlpPcEpNZVJKdmMydEtweTdHSmhIK2RvSTI5?=
 =?utf-8?B?KzJzaXdoZHgzSDVzdnp2QlRjOUxYbndMMWh5UFVKOWRLcVN3SnBTblpLcFpM?=
 =?utf-8?B?ZXpuck5hT25tUWhaQlF0cGxNUzhyQi9UTENiYis1emtXQ29pbEozM0dvbzQy?=
 =?utf-8?B?cGZZV0FOQzB3YnlsSzdHRmtkWEpxS2VLM3BuL0FrdUI3Vm1wNU8zU0R3ZXYx?=
 =?utf-8?B?MGNCR2R1cFpPTi82bWh2N1M2ZU9XbXJHNDYwTUtuSnVGN28zWWE2VWRTcHRY?=
 =?utf-8?B?TGxyanA5QXc0bTVLM29Fbm9BcWZhQ0xsa2ltemRvbzIxRGdOQVpXWk1XSWRO?=
 =?utf-8?B?b1JvWTR2UXBXOUhjRjlRTEpjTkRNT0V4M2F6NDZWQytFemNQaFdwV2l5OWpO?=
 =?utf-8?B?WFFoTjlmUTh2cWhNSzV6UTVkNjhZQzVPLzlJaVpHSmxnYVJ2cDhaTzg0WklX?=
 =?utf-8?B?UGxZTWczS3M3dEhhbE42TTRYNXpsbGUzaHlYUWR3a1FoT2ZNbGpMUTVYUVNF?=
 =?utf-8?B?TE5hTWRhYWo3bDZrVlhPWUo3djkyT2crRFc2Rld3UDJ6d2k1dk5Md0llaGtS?=
 =?utf-8?B?N3pnT0dST3ppeVArY093bWc5eDVBUHo1d3pQSUE2ZjhpeVFVYndmbUdnOWp5?=
 =?utf-8?B?Ui9IL2ZnYUpaZGgzTUZCTE5Ka1FpaVU3QmlKZ1U1NDY0cHJGSWZ2TStXdnlR?=
 =?utf-8?B?Wlh1SWNpSVhmYk5iL2ZJSDRvRVpFRU4zQVU5UlZucUpPbGZJakhpU3RrSjlO?=
 =?utf-8?B?cnFnUm1nMkZGclZkZDVUUnQ4K3ZOTVZwam83QUxEMS9aWENkYnNEN05XUkp3?=
 =?utf-8?B?R2tseFROZ0dzU2p6cWovcWlERTlLSkVkd1hzbGFudGRnaEg5NG1wMzFrQzJ1?=
 =?utf-8?B?cTRPeTk0YVp6TlhGTW83QW9YVnRjSU42V1NodnhTS29JdHBlNmM5OWdxWDBF?=
 =?utf-8?B?Z0VyRUlCbUxhZVNndEwrcFFuQ25BbjJRVHlmb1pTQldVck14Rm9SdVV6R1pj?=
 =?utf-8?B?TjR1b2gzcE1TSzVsTGxJQlVDN3VkWjN5Vk91V1hqU1QvZEhlY0xQZjRtQkh0?=
 =?utf-8?B?K3ZqTjlOYTRKRmRaMTYzSnRJbzBlcllxemFlY2hDZzgrOCs4MEY3Q1RxRUZj?=
 =?utf-8?B?ZVBDN0lGQ3ZETm9DZCtwdWJzdXFiK1N1R0szUTdtbml3R1EzSFA4bUVJWFF0?=
 =?utf-8?B?NEg3enRxSDZCemRNeTdPVkdRTGd4SVEwZnFPeE8rS3pMYzlwM0FudFBoRFFp?=
 =?utf-8?B?Vy9Bbi9KRkYyTGhLQWVpVktTSm1BT0RlV3dpUU5LWjAzL1UxRGhyV2JCdEs5?=
 =?utf-8?B?ZEZoYi94MEl5SkVzalcyazlNQUZsbGZNdmVJT2dNZUtZMG1HR1NlWFA2ME5L?=
 =?utf-8?B?d0tnNTFhZmF4MFNmVEhHOVNSUC93U2lyQVFwK2ZndVVPZDV1ZnlabFpNa0o3?=
 =?utf-8?B?ZUVsZEx2Vmsvb0pMV0hqcG41T0NPSUlKemtLZ2N2RjZtd05vTVVNRjdlV2pn?=
 =?utf-8?B?cGtjR2F3YlNuTHMwSHZoY0p1Zk9IbjB1Z0NIM1ROSkhUVjZuQ3dIVm5OWURQ?=
 =?utf-8?B?eUEyTk80UE5kSmg0MXNRUEFCUzFvckZoZFRKL1N4WjVtZE1oN3laemVIYUsr?=
 =?utf-8?B?aEhkZXRiSE1mQXBsNzFqOS9VVnRxU1J1WHptZGRXcmFmdWxVUzd3YWxieVRU?=
 =?utf-8?B?SUVUbmRNV1JyVUJVYzNtMFIrQW5WaEtBZ2h3ZVpsT3d6TksvVkVBY0JlRHdQ?=
 =?utf-8?B?ekRzeDJieTZDN050b3F5SGJSSnBBcTFrcms1d1VlVnlyU0wxclpoRFkwRjJh?=
 =?utf-8?B?YUlhT2JQTUplRG5kVEZmSDhMR0R1eVBYWHNJdnFPMlkzM016d2pvMDE2V29a?=
 =?utf-8?B?eHpEL3lsZS96V1dadUFoU1ZJdnpOcW9HMFNTcXhRWHBMbFROQzdYVTlFNy9L?=
 =?utf-8?B?bmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f27f3ff1-ae1f-4fbe-04f2-08ddfa8f3e18
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 10:52:09.0673 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nnY7GJqexN7im7LxsXEw9SZFN+1NxSSuaq4F0oEHCceT7HTdCFNgrAQWqPofQLOEQyixvwzykRRdrHMjqqZz145aVQ8l9ZRBVdePLudDps0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5991
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


On 9/22/2025 4:02 PM, Ville Syrjälä wrote:
> On Sun, Sep 21, 2025 at 10:05:33AM +0530, Ankit Nautiyal wrote:
>> The helper intel_dsb_wait_vblank_delay() is used in DSB to wait for SCL
>> lines after the send push operation. Rename it to
>> intel_dsb_wait_for_scl_lines() to align with the semantics.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_color.c   |  2 +-
>>   drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>>   drivers/gpu/drm/i915/display/intel_dsb.c     | 11 +++++------
>>   drivers/gpu/drm/i915/display/intel_dsb.h     |  4 ++--
>>   4 files changed, 9 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
>> index 671db6926e4c..4defd2425837 100644
>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>> @@ -2013,7 +2013,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
>>   
>>   	if (crtc_state->use_dsb && intel_color_uses_chained_dsb(crtc_state)) {
>>   		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
>> -		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color);
>> +		intel_dsb_wait_for_scl_lines(state, crtc_state->dsb_color);
>>   		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
>>   		intel_dsb_interrupt(crtc_state->dsb_color);
>>   	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 455bbebb50a5..bfeec3706f35 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -7268,7 +7268,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>>   		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
>>   
>>   		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
>> -		intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
>> +		intel_dsb_wait_for_scl_lines(state, new_crtc_state->dsb_commit);
>>   		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
>>   					  new_crtc_state);
>>   		intel_dsb_interrupt(new_crtc_state->dsb_commit);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
>> index dfe928aefdcd..400dcc87a992 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> @@ -115,8 +115,8 @@ static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
>>   	return old_crtc_state->vrr.enable && !intel_crtc_vrr_disabling(state, crtc);
>>   }
>>   
>> -static int dsb_vblank_delay(struct intel_atomic_state *state,
>> -			    struct intel_crtc *crtc)
>> +static int dsb_scl_delay(struct intel_atomic_state *state,
>> +			 struct intel_crtc *crtc)
>>   {
>>   	const struct intel_crtc_state *crtc_state =
>>   		intel_pre_commit_crtc_state(state, crtc);
>> @@ -815,15 +815,14 @@ void intel_dsb_chain(struct intel_atomic_state *state,
>>   			 wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0);
>>   }
>>   
>> -void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
>> -				 struct intel_dsb *dsb)
>> +void intel_dsb_wait_for_scl_lines(struct intel_atomic_state *state,
>> +				  struct intel_dsb *dsb)
> I'd leave this name as is for now. Or perhaps we should call it
> intel_dsb_wait_for_delayed_vblank().
>
> The actual behaviour of this will need to be slightly different between
> the different timings generators/refresh rate modes so it can't just
> wait for SCL lines in all the cases.


intel_dsb_wait_for_delayed_vblank does make sense in that case.

Will drop the scl semantics and just rename to 
intel_dsb_wait_for_delayed_vblank()

Regards,

Ankit

>
>
>>   {
>>   	struct intel_crtc *crtc = dsb->crtc;
>>   	const struct intel_crtc_state *crtc_state =
>>   		intel_pre_commit_crtc_state(state, crtc);
>>   	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
>> -					     dsb_vblank_delay(state, crtc));
>> -
>> +					     dsb_scl_delay(state, crtc));
>>   	intel_dsb_wait_usec(dsb, usecs);
>>   }
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
>> index c8f4499916eb..1cb5ba1a0534 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
>> @@ -48,8 +48,8 @@ void intel_dsb_nonpost_end(struct intel_dsb *dsb);
>>   void intel_dsb_interrupt(struct intel_dsb *dsb);
>>   void intel_dsb_wait_usec(struct intel_dsb *dsb, int count);
>>   void intel_dsb_wait_vblanks(struct intel_dsb *dsb, int count);
>> -void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
>> -				 struct intel_dsb *dsb);
>> +void intel_dsb_wait_for_scl_lines(struct intel_atomic_state *state,
>> +				  struct intel_dsb *dsb);
>>   void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
>>   				struct intel_dsb *dsb,
>>   				int lower, int upper);
>> -- 
>> 2.45.2
