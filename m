Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E23C5C00018
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 10:50:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58C1710E8EE;
	Thu, 23 Oct 2025 08:50:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jPoV+YXd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1998B10E09B;
 Thu, 23 Oct 2025 08:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761209409; x=1792745409;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Iwluqu+PIGqJfsUjJ4c/1chnji/6J89j+efLfoqj0eE=;
 b=jPoV+YXdkCOXeRJxYbrbpgV0tY/tqKlilPYpIOKa+m7bBHo8DRMrtOMS
 Y6Clft7eatd6UBvO2VROl5L315i0pQm9SV9ysZF/t44evL9yELS8phUMj
 Vsz+12GF5Gf+jX83LupT9pgdKs/kVhKsGX0jza8ljjZCyO6eJ3b/mRIVy
 VY1kZGQPGvSzxAmlKmOYor4N1Zic2u4dd+HROOEP/mi5mlJlhjP4sVIK6
 SYxdIge4j+jIYg6Xdqyts/G3h/v5+mEeAszkHBRv3rYfIMcjU989nxvB/
 KeAoW1ky7gfVUUcL20YX/hdlcX/zuNK3/QIVpf5afKPLHXWdg/oJgzYLc A==;
X-CSE-ConnectionGUID: vdh8az33Shm+ofPvAMG6qw==
X-CSE-MsgGUID: +l5FCminQjak+W0WS9rNUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67239270"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="67239270"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 01:50:09 -0700
X-CSE-ConnectionGUID: yixRhbsHQWW8p6XBU2W0QQ==
X-CSE-MsgGUID: 68+eoQCVRfueAAqUzxZUGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="183801774"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 01:50:08 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 01:50:08 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 01:50:08 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.57) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 01:50:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KeOFkFvSCZ7zBAdT7zjXAPklxpO+9tzr1XbXkgiujwKZ6WXJN20FBR2igiQ6QMOnkNgeQGO0ZgnsrSa0kHeBpK1xH7b90J7SD5FYAncvfZLrnWOMHlDB7iifcpeiqyLhfliIzVWfT1KAuvpsJhzX187DyZJvy8rfW0o6SJX5Vhl1GYs53YKlYdC1eRPC/kg79RWitYceLQp96OaSAiygg/sdDmJY9oiJR1mjcZB+GKSUv97bXY71F2mBxmG7XnIm/y73AwJRv8DFQ4ewSlyAYFACnXsg2nyrZLDpATGcMZbqtvW+GRVhL3MwpjYu/aF8hPJLtRU14VcK6ucAfkEMUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=diwr7X4KnOrU2hJQy7Q4bJrm9T/YOjGkIue3IldOGmE=;
 b=s6MK2b7PxBJgrvk7ETDak+I3cdPsLe0GJjQbycE9KeAsxbpnb17dbuRFG9/OFpJpTDIfUKLO7jw+UOm6qJbcSbCSpqbb3kzpRV8aw42efIC/MwEjUzpxy7hXh01ecHO72QnICZ8m478Btv+eKxoRGTpPT4045Udx/yGlldHLF3usgx415gTkV1vUHWNLijfHdFo1zWj4Z33AiEhl3P9qsqdV4lXuVBzsSHTCS6iYXBZVB7JXSHuawuxStoRQWC+DmLbJzbazcwyuHHHm5/uFUaBv5wqtAN/vpBmGa8gbr/Imafi1XeeqMgDo9cbLkFCQlcoX6CEjCO1x/7uVL0lcpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Thu, 23 Oct
 2025 08:50:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.009; Thu, 23 Oct 2025
 08:50:05 +0000
Message-ID: <8d760f7f-8f56-4ad2-9211-8d742655ed8b@intel.com>
Date: Thu, 23 Oct 2025 14:19:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/display: Take into account AS SDP in
 intel_dp_sdp_min_guardband
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20251023043140.961104-1-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251023043140.961104-1-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0068.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b7::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7777:EE_
X-MS-Office365-Filtering-Correlation-Id: 7108d770-6cae-4c3e-34cc-08de1211293e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UUR0Um9vUE8wRnVjS2JieXhDRkE0dUdHQk9aWjczYitWSjZNZWVHL1NDYkJE?=
 =?utf-8?B?emlzQmFFbTJ1YjdYTVdDZXdqZ1VMK0JPZEU3Z1Zzb01GYmVlV3dMQUZBd3E5?=
 =?utf-8?B?N0VCZys5ck0yUGdHY21zNW52aHNkMk45c25XY25nNjltaGJNVjFXSVFHV1Vo?=
 =?utf-8?B?SHhPczF1RFBIUUFRYWZlYmNRdkhvMklGbHYvZ0lKcGRyc1BhS0JJM2tGanow?=
 =?utf-8?B?WWszUkl0bHZWSDdaNC9oVzZkaENtTHNMT0xpTnZRamJhOTZSWW1uNU9QTUN2?=
 =?utf-8?B?Q0VMVXpQNkUzUDBFMXZVUXU0dkdjbnFNVXZka0UrMXBkTkpSTXZZWTMwMUdO?=
 =?utf-8?B?QVdNOS9CUVhoeWlCWlAxV1BhRm9pR1lXNXJkM1VIeVE3RHMzdE5pZDlxeHlv?=
 =?utf-8?B?TmYwT3ZFcDNPN1YzSnY0QlQ1S2dMeVlPMFhyUldGTHZPcTYrcmkzcW5ickJo?=
 =?utf-8?B?TERpYTN3dUM3SFQ0RUxvTENiQ0xKam5KQTYvSlN2cEpBQ1ExV21RNjVrdFF6?=
 =?utf-8?B?Nlk2QjJOTUZxUkR1cHBGWmVxN2EwU20ycE5mSlZHL25wc2lzY0Q3Tys5bm1a?=
 =?utf-8?B?a3Vja2dLV2gzaVZ4d1pocDdaQzNVRFhhVmd6VnBrcFVSQ0hBQTUxcDhxWFJR?=
 =?utf-8?B?ODVyU3k2QXlqZ0VGUUJVMzBBN3VVMjB0MjFpTCtNUG01NU5JMTBGUnZMTkZz?=
 =?utf-8?B?SEVZaEZwNXFPdHM0V1dFbk1LZTdENHZmZWpZYWdOYUNSMFdzUlh4RzQyak5V?=
 =?utf-8?B?eWZWVUExa096QWEweXpMMFRQOG1RUmVuWncyT1hvWjB3cXFRYnBibUdZOG5C?=
 =?utf-8?B?NGhtQjBZYitvaGRtMUx3YzBRSVFpa2F2ME9Fb0I0bExnTkl3VGNzUXZhUUV5?=
 =?utf-8?B?SHQwd3BqTUJFbFVaY3BtTnFNUUdtdVpHZ1JYYzVaVWVOclNpUzg4ZDR4TTJx?=
 =?utf-8?B?VkpWbWRiZ3dWL1Q5WFJmY2pUek9SZlhqbHlRcU9ZanB6TU5sUlRmTURPUndk?=
 =?utf-8?B?ZHl6YW1YZENTOXRRQWxmbmIzTFhoZFIzS2ZCeDdMU0NPRUVnNmNMdVJTYnNF?=
 =?utf-8?B?OWl4ZXp4S0FBSWZwV3JZZHAzN0d3OXBROWFvT1VjMHVsbjNpUG1zUERFaEZI?=
 =?utf-8?B?U1VpQWlvbjFVbG1uTHhhK1k2d0owZWNWb1lZODhkc0NmM2t3Q2lQSDdqTTNk?=
 =?utf-8?B?TnppWFNYZlJRcnJ4UjMxSEJtclZjZHdHWVpvQ1lLd090dEVkV1BaWnpNemJz?=
 =?utf-8?B?dzhvYW5CSU1nWWxHR253Ymd3aUNtTzVuSkpIRDZjZUcwUElRNHBKaSthdDdK?=
 =?utf-8?B?YW15OW4yaUYxMFBlSEdGR0VVbXNnaU9tSU03T09kVFFnMCs1SjhmT0E2RW9Y?=
 =?utf-8?B?V0JteVpmUE1mOXVscUhYTUVrYXhHVUt6MHdOdTFSUzFDd0J1STAzeVg1anRO?=
 =?utf-8?B?d3ZQN1ZFd0lpRVEveXdUK2cyVS9xTFlveS9Xai9na2xrWVY1cDVYRXkzWGcx?=
 =?utf-8?B?eWg3Wnk3aVFGMmN3N3IvK2pCZ2dlOXR4dzVjTVdqUE5ZS3RjVGxOdjZEdlNF?=
 =?utf-8?B?RzBFVXdieFF4NmlpSG1tSnFoMWYrVkRSeUpMc3VGUko1WnVXZEdPYlVPeFRH?=
 =?utf-8?B?QTZORkJvUUtINlgyNG9DNGZLVmlEM0liZWpBNTQ5TW1nT1FCMkc3cWduVEtv?=
 =?utf-8?B?ZjJGeTUxcXMveXJ1UmJ2NU5QMGVzbkpDTFNoZXZRY1FUZVBTWmFwNUZ5OXlV?=
 =?utf-8?B?cFZISG0zU0VPZHdtSS9FcTZlRFlnV1RHd25zcHhWSDJLYzFQYUZKUTNsdWVx?=
 =?utf-8?B?d1NyZ2Zna0JzOVZBVm5GVzc3VnpHaUJ0bnpYTFVjYnZmcVBQOXlVK2tyd0Yw?=
 =?utf-8?B?RHo2d2l4KytnNmFYdGV6bkNzVm1oNnQxb2FCWGpkSFdtRWc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VXpwNm9jUUE4dzdYYnFBQkF1M2FFTFdkUlJZYUZIc3NTM1F3TjlIVXljWEhW?=
 =?utf-8?B?VFFiK3lnSm9SRE9kSGZLaE53aUt5UDZTb3RvZ2Z6Y2Q5U1MvTnNSemFjRWJR?=
 =?utf-8?B?aEd4VWgwbE5pcWpuci9JOER6OHNzQTRpZVpHVWZqRHRDbWkyRTB3OWVjeXFx?=
 =?utf-8?B?Z2VBNlNtMnRNb2JnRFM2RjA4OWdGL2Q0SURMQjVXUUhVSnkrait0b1E3TjVo?=
 =?utf-8?B?U2pjcExsMDVYSHpLVlRiRC9JSUV6bEhOOXErMGxWM0hTRVJsbEluZmRkcEhT?=
 =?utf-8?B?dEVYSmNoM2RNZTJvSS9OZ05kaEFibDltZVVBYlVTa2JCR21oMDZEZUQ4RFYr?=
 =?utf-8?B?RU5JVWVuNHh0bE16L2w1eE4wdzBXY1NoVEo2RU42eEpvODdaamdjRHhhS3NT?=
 =?utf-8?B?TFVZYzhKeWJOeFY1enllNkNHRkVOdnhqQ09UcUt5cHR3cWp6RVBzbDN3N1Vw?=
 =?utf-8?B?ZE1rWkJ3TTVmaEx5ZjMzRitlMW1ZTGNsZzYrUXA2c0x4bEthbC9sZVNjMWRW?=
 =?utf-8?B?clArKzErV2RUSlFzTGt0bitMYVNrWHBTWUF1RmFXSXZ3QnZWZmRJbTJuK1Fk?=
 =?utf-8?B?WVNBM2VRdWxGb0V4TzhKc3BybHllSkEyenF4dXJLV2lUb1Bub2FjdmExaVpm?=
 =?utf-8?B?WEJxdlc2aDdEOTdCZ2tCdnloMUdocUlURVU5ekJITW1VeG4veUFQU2hhbWJz?=
 =?utf-8?B?eURrQndvTy9kYW5vRkxOd0NUYWRka2NLWExqM1dtNW90KzdBYnV1V3hSY3J0?=
 =?utf-8?B?Z1ZCVk8waUx5TWFiMFp5c3hKQmlMSGtzOC9TN1BPWWYzUkR0aDNUcTJZbmwr?=
 =?utf-8?B?R3BUZXVnbUdKcXc0dkdvanNWS3BZa3FKTW1kTTdtZFU2VTNqZGlFUk00aXRX?=
 =?utf-8?B?YVRoaWw5eEJhYVNLeWVJSzkwVVord3kzaUlyOVo0NnAzeFFoTkdaYS9xVWN3?=
 =?utf-8?B?VnZNcU04bTdWdFVZbXczZkROTlU3elFvSW02R2hTTVloZWlSL3hKYlZLMlN3?=
 =?utf-8?B?dWpLMEVQWWpRVHNKbThpR0NrRFhwYnQwek9mTnQ3RjJGQUQ0QjJ0dDErbnRw?=
 =?utf-8?B?YVlROWFVUlNJSlZKVTBkN3lFTWpYU2JuUlBONnk3TlN0Uk5WT01zekxLUHdN?=
 =?utf-8?B?Y0E2eDQ3TWZMb1ZhOWhTSUtqYndMU0o0VXcrRmtXUVNiVlEyT3ZRUFVxc2Iy?=
 =?utf-8?B?NmcrNjJETStxVStBOU9aMlFxU2I5a2ptSXFMcllSbVJiN0JObUFlVjFCd0xn?=
 =?utf-8?B?eFJCa2hORDFhYi81UE5rSUdGZEVKWEhIYmJLVXVPRXRxUHlXTEYzWUxpWG1H?=
 =?utf-8?B?UHhCMnFLWGM0RWN5UWthWVRRMmZqU2FBZVdQOHhXbHAybVUyVWhOMkdzMVVQ?=
 =?utf-8?B?MmdRaEhqZG5Ha0dwbko1dWtMTEV1WFJNbFI4ZnpDaHZsR3dRV21vL1FWYTBn?=
 =?utf-8?B?NXpDc0xyQjVNbFVORnhWMEpzVWEvSG5XRUhrd1d0MkxaSG04T2FuUFBIMDJ3?=
 =?utf-8?B?emdRTmZSYWE4bkF2d25mZGNNOWFyemhZZUE4dENzUlluR1UwK1RUekRLTVdT?=
 =?utf-8?B?MUJsb1hSZGZHQXIrRU1mbTcwblJNdVd4c2NpaDBhY3pDMFFtdUF5Wk5UOHFB?=
 =?utf-8?B?ZGFZOUxzcGt6UUlaU0NlV0RGMUpYUDBGdjVCM0lQUVB0alZWUFBROGVBMW9q?=
 =?utf-8?B?SGdzbEU4RFVUTkJyaTU3S0llSC91aGdzaUYydThJSmovTi9qdlFMQTliNHpv?=
 =?utf-8?B?dGhMd3A3VnZ1aHBVc1ZBTFRQbEtKRVV4bkN4VitReE9VTkhUeUx4VU5GbVhz?=
 =?utf-8?B?L3FIdHkxdGdMT0gvREI4RWJCUjhqcVRiN2NxNzNpREc0eERiSzdvYUgyWVZJ?=
 =?utf-8?B?RlY4N3hnL1lRZW4rc09ZM0hZL1ZrZGZJZW1HcXVMdjN2TTNMTU13M09UUTR6?=
 =?utf-8?B?NjB6ajF2b1drekxjNkRVR1FPZmpiZHFiRGNRVURrTC9LVmhtUGtzZEdNamwx?=
 =?utf-8?B?OTBIeVVpM2pYY2xzRURzejVrVUtoSS9oTGRabFRHOTBrdmVHUis1U0g4cUtX?=
 =?utf-8?B?LzByTXNtcHJKVHNrTlRTS0E3c3ViN0FsWDNvSitMUWpxTU1udW1ZMVkrTFM2?=
 =?utf-8?B?ZTRDVzMzcXQ2WUpnaC80VW81aHp6MkM4amZGYWNkaWl5MTZzdFR1eE01cUpC?=
 =?utf-8?B?Snc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7108d770-6cae-4c3e-34cc-08de1211293e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2025 08:50:05.2711 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5suk4sqKjYWpla/zrSxDaSDUTK3ugXBQiF9+71VLYTIcnO/+B166tWPVDQ18j1jBePZLICa7MqtJObLFog6YBaZugpue4M3Roa8wqJorsWM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7777
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


On 10/23/2025 10:01 AM, Jouni Högander wrote:
> We started seeing "[drm] *ERROR* Timed out waiting PSR idle state" after
> taking optimized guardband into use. These are seen because VSC SDPs are
> sent on same line as AS SDPs when AS SDP is enabled. AS SDP is sent on line
> configured in EMP_AS_SDP_TL register. We are configuring
> crtc_state->vrr.vsync_start into that register.
>
> Fix this by ensuring AS SDP is sent on line which is within
> guardband. From the bspec:
>
> EMP_AS_SDP_TL < SCL + Guardband
>
> v2: check HAS_AS_SDP
>
> Bspec: 71197
> Fixes: 52ecd48b8d3f ("drm/i915/dp: Add helper to get min sdp guardband")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 16 +++++++++++++---
>   1 file changed, 13 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 475518b4048b7..a3391b17571cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7023,7 +7023,7 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
>   }
>   
>   static
> -int intel_dp_get_lines_for_sdp(u32 type)
> +int intel_dp_get_lines_for_sdp(const struct intel_crtc_state *crtc_state, u32 type)
>   {
>   	switch (type) {
>   	case DP_SDP_VSC_EXT_VESA:
> @@ -7033,6 +7033,8 @@ int intel_dp_get_lines_for_sdp(u32 type)
>   		return 8;
>   	case DP_SDP_PPS:
>   		return 7;
> +	case DP_SDP_ADAPTIVE_SYNC:
> +		return crtc_state->vrr.vsync_start + 1;


Hmm.. currently vrr.vsync_start is (vtotal - mode->vsync_start), 
returning this will effectively make the guardband as full vblank length.

So we will not have optimized guardband any more.

The issue as highlighted in commit message is the problem with 
EMP_AS_SDP_TL which is set to vrr.vsync_start.

This was working when guardband was full vblank length, but with 
optimized guardband the transmission line is no more in (SCL + 
guardband) region.

I have sent a patch to fix the transmission line : 
https://patchwork.freedesktop.org/patch/683034/?series=156411&rev=1


Regards,

Ankit

>   	default:
>   		break;
>   	}
> @@ -7043,17 +7045,25 @@ int intel_dp_get_lines_for_sdp(u32 type)
>   int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
>   			       bool assume_all_enabled)
>   {
> +	struct intel_display *display = to_intel_display(crtc_state);
>   	int sdp_guardband = 0;
>   
>   	if (assume_all_enabled ||
>   	    crtc_state->infoframes.enable &
>   	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
>   		sdp_guardband = max(sdp_guardband,
> -				    intel_dp_get_lines_for_sdp(HDMI_PACKET_TYPE_GAMUT_METADATA));
> +				    intel_dp_get_lines_for_sdp(crtc_state,
> +							       HDMI_PACKET_TYPE_GAMUT_METADATA));
>   
>   	if (assume_all_enabled ||
>   	    crtc_state->dsc.compression_enable)
> -		sdp_guardband = max(sdp_guardband, intel_dp_get_lines_for_sdp(DP_SDP_PPS));
> +		sdp_guardband = max(sdp_guardband,
> +				    intel_dp_get_lines_for_sdp(crtc_state, DP_SDP_PPS));
> +
> +	if ((assume_all_enabled && HAS_AS_SDP(display)) ||
> +	    crtc_state->infoframes.enable & intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC))
> +		sdp_guardband = max(sdp_guardband,
> +				    intel_dp_get_lines_for_sdp(crtc_state, DP_SDP_ADAPTIVE_SYNC));
>   
>   	return sdp_guardband;
>   }
