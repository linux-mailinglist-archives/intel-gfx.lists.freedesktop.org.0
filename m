Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A2BB00AF8
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 20:02:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9231A10E93D;
	Thu, 10 Jul 2025 18:02:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bASgCFSy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D774E10E93D
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jul 2025 18:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752170569; x=1783706569;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Ik1sVDLhMSECoPYdXNZBMjNuE4nI6wW/hblpjxJbxgQ=;
 b=bASgCFSyhQhQiLCvO7kxgAw3lYns4dMvaevNlkr/uWb481DgpYSD7zqh
 +OwKvyramX+IBkvlG3Dpuh+s+CWVU/d7SbEeIdG1fNF66hhZQBdtjFreT
 vq+RnqG/JWQQMQRo2JKGb9zsijTM1TU58+uhEYffodFkJansWDclPvTCw
 Y2+2lHUNzbHgliOIZ1Wm4ZtyQHuunTJ81Bu4jqIjgcYJ0YXTg1vpqUl4m
 8v5QSZjReeT+iv2PVPWpDn+Iz8jvPRgZtk+EbDFxLUyt1lIKDFU1oiFXu
 Fa2fvNET1cjdSAj9N3Za6gTKmCDz9gHc2A7GbyHM9d9ghRkXLsHZrdSFd g==;
X-CSE-ConnectionGUID: va/rzhh4TRa7knIdKjCj7A==
X-CSE-MsgGUID: ASArwo6ZR/us5UhMzAxjdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54337468"
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="54337468"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 11:02:48 -0700
X-CSE-ConnectionGUID: ngPW+W5rRNGov63Kvu+YEA==
X-CSE-MsgGUID: B0FebgLdR82TJ3+ylaiRQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="179854035"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 11:02:47 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 11:02:43 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 10 Jul 2025 11:02:43 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.45)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 11:02:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RqUUkPNLp97klWc4fov+zyYGJE8WkKnh6iHAG6Iw7SpznFbFiFGY4E7Abf3J93xWMXEIl1PoJeg52HbYwRCuzFRRdFkCq8Clb07/HXwnjXj325D/vLnJvYk6EUZJWvWe1ZBco+O9cYPl758kYxCrKe1MNcdVC7nuAqBR8JbfY5bvhifsIRzeTRZYuATFYpMXLbzFSA6sMm0qwq1A2rXmE6H9a9fQyhk5OdLK3LJ7Y5CIYeZMk6inytrSZ4sA3VUCL38HHrEBkU5sT8Hy1LE/fEptfG4V5wHdG26uib7G4exQKYYKY2vK/AnHxLoeVditACXJTZ/hMEL4Cg2NSQdKqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KivQXaApkXKV9sP8zxkEf7RpBZDXsHMgnTnWPkr942c=;
 b=de2XTP9XMBteGBHwXjhSRSVMoDuWZYkLYP8k9Bo/uQx/+KlR6nSkl/b7EOcFxAdXoo4dwF7421OkbripJMF5Wr38PjGdPFsSt7PA8QfQCdNmJgBztPzB0h/+TeZb4kPYILzJskfUt/7zs4XMPy/gv1//ytTWR5MyhSdgpU+3/yEmYj55dI0Zq3DNDwvMOwX7xbnr001dQQbI0TU/qfQrMRrNemD5fmemW8stcDkD/I8IWtRQCg6fMWjN9ootUk15kM1q3jsYMTsnD+rWIFjNmnjSNfKwmqRa3LsdTwdz//1dc0mrYRCRbqxba01opTSbU8CnghLwNgQPIoLD6ROihQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by DS7PR11MB7691.namprd11.prod.outlook.com (2603:10b6:8:e4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.29; Thu, 10 Jul
 2025 18:02:38 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%5]) with mapi id 15.20.8901.024; Thu, 10 Jul 2025
 18:02:38 +0000
Date: Thu, 10 Jul 2025 11:04:22 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Ben Hutchings
 <ben@decadent.org.uk>, <linux-rt-users@vger.kernel.org>,
 <intel-gfx@lists.freedesktop.org>, Debian kernel maintainers
 <debian-kernel@lists.debian.org>
Subject: Re: PREEMPT_RT vs i915
Message-ID: <aHAApgP2xdDSsjV4@lstrano-desk.jf.intel.com>
References: <7c42fe5a6158445e150e7d63991767e44fc36d3d.camel@decadent.org.uk>
 <aG6nMhimN1lWKAEP@intel.com>
 <20250709194443.lkevdn6m@linutronix.de>
 <aG7MckLkTuzZ5LBe@intel.com>
 <aG7na/6m/IcrJ3xx@lstrano-desk.jf.intel.com>
 <aG_aZYhDxGVZXVDa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aG_aZYhDxGVZXVDa@intel.com>
X-ClientProxiedBy: MW4PR03CA0095.namprd03.prod.outlook.com
 (2603:10b6:303:b7::10) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|DS7PR11MB7691:EE_
X-MS-Office365-Filtering-Correlation-Id: f40c8226-875d-443e-cab3-08ddbfdbf4b6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UlM3RFB5UmN1R0FyeVl5NmNqVUFvUU4rN3N1TUtNSFFYRVo1LzB4WHNMekJW?=
 =?utf-8?B?TEpHbTNoUkhjLzRsTG5CNEZxMDNYQzgrQW05Qi80YTljSllZNi9ZVWpuMEU3?=
 =?utf-8?B?OEErQTNoaTB6TUh6QWZNS2Vtd2lwMWRVN0tNcnphb3k3d2ZyYnVrcS9xRVNO?=
 =?utf-8?B?UWloai9KVGZsSXJmcEl2MGszT2xlMXJDSThRSmNzVU5NK3lHVVNySWRnZjlr?=
 =?utf-8?B?WDNqaGxnSnJUNTVBSk45V0pVZUZZa3dOTTJzUk5SblRwdk1LMDVGdWRLL1Ev?=
 =?utf-8?B?WWphSlBSUDd4NmgxTlBSUUJlUVNOTmV5WDA1VHhCWTRFbStIQXBRanBrMDFY?=
 =?utf-8?B?OXR4cEIyWllkdEtDR2cwN0V0QXBxdVJ2b2JqNG1VcjhON2twWjRtMDFld3I5?=
 =?utf-8?B?cUo3cGprTFJTYjdPYU9ZcjVRTC9kdUxFenpTTXRTUHJNNTZzWlpwc3BkWjdK?=
 =?utf-8?B?YytSMm0yb0pIeCtINTVhbzNGdGR1bHRHcFB4MzBFR3kxRWZjNXcwMWpNWm5L?=
 =?utf-8?B?VDFEblRwTWNhb3BhSFZsVkVuSmR6UWV6THF5LzcvbkYwSldEQmpvb01kQTYr?=
 =?utf-8?B?cUtxRWpER0RLREdPK3VuYWdtdlczdWZkNUR2Yk1GMi82b1YwRUtuVEdRL0xD?=
 =?utf-8?B?NWkycUhOblVsVEZyVDd1cXpQbVdURVp3UTFuWkRiUHcycVdvL090b0VMRDEx?=
 =?utf-8?B?aDZrWGdDK25RRzJ1Q3BaN3dXdUlLZFYxNCs1Wk9taW5rcVhYZ0RWOTJGQXp5?=
 =?utf-8?B?SlkwdWU3dUk5Ti94UUVBN29RUFdkOEJ0Ymgrb3NGaEcwSW5BdkRaaVV3eTJi?=
 =?utf-8?B?czlKMnd6bTlkQ2pBVEoxU29PYXkzVisrZlRBT2h6UFQ4Y2VHSEptdlNSMkYx?=
 =?utf-8?B?cUFnK2J6MkMvL1FEd3pEam95SHlNL0I4SVlYVG1EWHRQSnpGL05MdmRzandu?=
 =?utf-8?B?Q0hNenhyT1ozbjEyS3JpSm9rZm9CTXorLzlwekZqckJvODVEd3dHR3FGV29B?=
 =?utf-8?B?L2xjYzljNCs5WFdjUEZvSUxvVCtkVUxSRXpObDlmdFArMUZFL3FjNVFwZmU4?=
 =?utf-8?B?cG03QTU3dlRKY2R1aVIyM3g1dHZiREt6cndpZmErU1ZLNFlocG9tUm9VQmRo?=
 =?utf-8?B?elBpbjJGOWxGaytYRERiUFVDeFNhSUlSTzZLckpvR0ViTlJqSzlXU0F5d1Jh?=
 =?utf-8?B?NkYzZDFzMnVkME9qamhiMnQ1V1BDV21keWFDZm5DcnlSTkVYQzBuSzNnb1ZU?=
 =?utf-8?B?V1hsZUxsSEJHV3ZBVWh5RHpxZHcrQURVSGRmVEdFOUlnVVVoU0czdUJDb0xR?=
 =?utf-8?B?ZmY1SHpvek1LazJGbGlEbFRrVkwyNG45RzdXd2dWM2cvSEFKbE90ODNqSWsr?=
 =?utf-8?B?OFFJd0lkMnhuY1dNNk55RmdHaHlGVWw2WVl4eHpLc1crMmZreWkwTitRbUxX?=
 =?utf-8?B?ZzNLUE80TExBeS92WTJGdklPRSs0aHV2SCs4N1BaZG82QUhvdGJRVVhDaDVK?=
 =?utf-8?B?SEw3ayt5ZUFRK1hJVjdkcTdObGFHRUVOSEtrcW1kZENWNUMvMFRncUkyS0h2?=
 =?utf-8?B?ZWNYNldzZGptZ0k2SXk0N1hWNDdyMHlON0h5U0lqcklwMW12M1A1Q0tRMkQ0?=
 =?utf-8?B?Y2QzY3ltWDdCckF0RVU2TDFmMVM4WUJlblJEeFBZSEI4RXB2bkl5VGdJNitw?=
 =?utf-8?B?RDkyVEQ2VEtMVmNkNFhwVnpjNHNKT1pMU1h2SU41dzdPeDRxVjg3Qi9valEv?=
 =?utf-8?B?d3FwSmpQandtNVI1QlhJTDhsb29DczhPWXlaR25HNW1UU3VJUWZGS1NnMmRD?=
 =?utf-8?B?OUdmM1JocThSWG83SzV6YXdYRXR5aXFlVXlLSWQzRExvVHB1eWg5V05wdGhN?=
 =?utf-8?B?QWZ1ZHUvaVdCSkwwWTJhZ2gzVWp6OG54RUxFUmQ2WUVNTzEzWmJNTGF2SFhC?=
 =?utf-8?Q?yEiWCEDFA1M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UnB4KzRMUUp2VkFxbGlIaUtTSHpsL2RFWlBxSVAzVjF6ZkJvcW5TZDl6YXVq?=
 =?utf-8?B?cDk0NG45djlwQmxidUxobkhWVXVVamtEeE9pajVwZEE4WjI1WDRJdW1FdDRr?=
 =?utf-8?B?aUZjdGJZUEJ4Y3FPSmRMaTFNS2xUS0lWREZlR0JsbE1ZWU9rQ3NEcTlsejB4?=
 =?utf-8?B?eGRhNTh3UEpWa0syUEdqNmRNbmk2aElaTitkR2ptdUlzbEhpTGlLK0dVS0h0?=
 =?utf-8?B?SkNQcEQ4OVdVR2gyYTdnWW4xY1EwdjY1TUl3S3ZUb0hva3pQVUlsdENqSm1W?=
 =?utf-8?B?UHNodmdiME1MVjBzTW9MRE9UaVBpMTdTVnQ3dExydUlhRVV4VEhPSGp1YUNX?=
 =?utf-8?B?L29XalFocElRaFdEbVZNaXlUSlIwUi9VRUxOU1gySk9sVnJhbE9ONE0vdDRM?=
 =?utf-8?B?OXFETi9oQjZYQ1g3eDd4eVQ1ZlkwT0Z2dVd3MlQzd3hxem0zOVVWYmdrdVdS?=
 =?utf-8?B?WnhFM0hVeFBRcmg4WlAvZXlEK3lyK0tQbnFpaHZEakJsVXV2UG5WclkvYWpL?=
 =?utf-8?B?WklLWmhMbHNJYnBvS2VibSsydXM3dlBXMXhLUk1aZU1VR2dUR0lad24zQ3FC?=
 =?utf-8?B?ZnJvN0pTbXFlMVRSUDZhMGRIYXBSam11c0VWbzFLMU1LUWpQZnhXY3BTRkJn?=
 =?utf-8?B?WTZYcGFsMmlvTDRicXlIRDVLQXFyaUxqNjBHakNnZ2lScGdwRENMZ2FaUGJZ?=
 =?utf-8?B?TktGMTFsdEhPRTRZNVZ0SGwxMkNWclN0emtrTWFHaDExSEhFVEJKakgvSExI?=
 =?utf-8?B?RCtpL0RiM002YXF3RW5IWmR4SVE0K0FTOTIyN2hRUDc3c3FmMlpnYUxXYUZp?=
 =?utf-8?B?ZTNxZ0ltbTkzSm9hWnZGRGppZEtEOW9hK1M4WkdTWGg4WlloWUFwOXFEV1RI?=
 =?utf-8?B?Y21aTU93MlcxMXRJMnZWdHZ1MVFBWjdzUW9ER3ZCazk2U3VjWDNxdHRlcmNY?=
 =?utf-8?B?YXYyM2NnN2s1V2s4dEFxWktJTDFsYjJyV2IxMjhzNEREalM3N0VmTndRMURz?=
 =?utf-8?B?RUNZNXhZTWhSYmJwcXlnWERsdUJZbEdza2lpVUE3TnhyMWZMNlFwYjU2SGdy?=
 =?utf-8?B?NWlPbEZ2Uzhoa0JCQUE2aU9aZTl6U0FiV3RKN2J0RDVYOTQyUEZTb3EzeDlF?=
 =?utf-8?B?QTQ1N09wR1pCaGJpcHFFeThUTVRjdndhWDZwcWtlc1Q0Um5qSUF1a25YaFBr?=
 =?utf-8?B?eUVZREJBUTViUzQ4aXhLZVZUeENNSUtnREU3TGl5RCtoZ210SjdXZEdGdERO?=
 =?utf-8?B?SE5wOFJtQWVJVWRlblVVZ1d2MmdiSHl5azlobStCREFOMG9JWllSU2VEaXh2?=
 =?utf-8?B?UDY0SjdycXpka0dCSEFCSDA1bG51MEw4T2xGOFZ2ZDVxVmtGVVA2TENObUJa?=
 =?utf-8?B?bUFZbTkrdzhzOW0yUEdPMjMzT0JSTjJhWjlOV3ZJRHJubHREYlAvbTN4Yk9x?=
 =?utf-8?B?YXJMTngrRUgwQTBMaFhteWU5MkluTUVLWkNJZmhpTVM3aTEyUW1DeWdrV2pl?=
 =?utf-8?B?WEN0VS9rOGNVYVhtSXNSbXNoeW1ZbFZIRFlLd3NlWEROaXdPWUo2Wk1QcWl3?=
 =?utf-8?B?bUNROE5QWFVJRHpCNGVJMXZyeGxRdE5RWHAxRzl4RTkwTWRmUmNiZzNnSUta?=
 =?utf-8?B?aEpaL3lxVUxxaUFvNmpNZ0oxY2JPN2NJMG5MZHg4OGliRXZ4SEIxWHI0SmRq?=
 =?utf-8?B?eFY3M0FORU1sbFFRSkVweEtWVlMwK1lPYnA4aHJrMkNPVFZ0ZkdwV3VuSkZ1?=
 =?utf-8?B?ZmRMRklBS005Z1FvNHFkNHBneDNEVmszaGhja1F4UktvVWYwOHg1aDlpQ29P?=
 =?utf-8?B?b201R1FHaklYcWgzZ1NBYk90M0hhK0J4YUtENXN6SmxUQXordlh6Qjg5NGVq?=
 =?utf-8?B?V3hLczhzSXZHOU1YcmxlRkY2Z1NNOXIwU1RHZXVUNmtkMTByNUUrbnZKN0Nr?=
 =?utf-8?B?WUxNeTU5SHoxRDc0cDRrRkdZcCtPdzFud25Ea0t5bzQxQWhmWVo2V2w3c0R3?=
 =?utf-8?B?M1MyMDJsZFVSazljakMrVVNBa29jRDB0L084U0hoR2xUSk05VjE3NWhySHRF?=
 =?utf-8?B?Vis3eUo1MWxiQnNnbTlUY3Ztc1UrZk5LMS8xZVMxMGZ6eC9GTmk0ODY0Wnpu?=
 =?utf-8?B?VExkbDFZUVY0T1ZqUWtQMkRDMDJtS3cyVHBpUnNpU096NUpzK0F6Vncwemxs?=
 =?utf-8?B?NWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f40c8226-875d-443e-cab3-08ddbfdbf4b6
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2025 18:02:38.2757 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5+kJaFocIEUDTaWmVH2rTUabsU5W8hxujBrqPIVD2akAJlbL3CrHAFCG/L0FHH/QBIKyn+u0IzOq0QY7OJvGdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7691
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

On Thu, Jul 10, 2025 at 06:21:09PM +0300, Ville Syrjälä wrote:
> On Wed, Jul 09, 2025 at 03:04:27PM -0700, Matthew Brost wrote:
> > On Wed, Jul 09, 2025 at 11:09:22PM +0300, Ville Syrjälä wrote:
> > > On Wed, Jul 09, 2025 at 09:44:43PM +0200, Sebastian Andrzej Siewior wrote:
> > > > On 2025-07-09 20:30:26 [+0300], Ville Syrjälä wrote:
> > > > > > 
> > > > > > It seems like the critical uncore lock is currently held in a lot of
> > > > > > places and potentially for a long time.
> > > > > 
> > > > > It shouldn't be held for that long. I think it should just be
> > > > > a raw spinlock.
> > > > 
> > > > What about I resubmit the series and we look again? I don't think the
> > > > lock should be made raw just to be done with it.
> > > 
> > > Until someone actually does the work to confirm the thing is working
> > > reliably there's no point in posting anything.
> > > 
> > > And IIRC the other remaining problem with RT was the spinlocks used
> > > inside tracepoints (which is uncore lock, and probably some vblank
> > > locks). So that too needs some kind of solution because it's going to
> > > very hard to debug the timing sensitive parts without the tracepoints.
> > 
> > A bit of a drive-by comment, but taking locks inside tracepoints seems
> > like a pretty horrible idea in general. We've managed to write an entire
> > driver (Xe) from scratch and bring it up without doing this.
> 
> For xe gt stuff specifically the one reason for needing a lock
> could be forcewake. Ie. if you read a register that needs

Yes, we don't forcewake on demand in Xe; instead, we expect the upper
layers to hold these.

> forcewake from a tracepoint you might need some kind of protection
> against concurrent access. But xe lacks any kind of forcewake
> sanity checker, so no one would likely even know if you get that

We do have some asserts to catch missing forcewake—see
xe_force_wake_assert_held—but this is incomplete compared to the i915
checker.

> wrong. Unless they notice a bogus register value in the
> trace that is. But maybe xe doesn't use such registers in its
> tracepoints atm, who knows.
> 

I just audited the Xe tracepoints. We mostly just assign values from
software state, or in some cases, read memory from the VRAM BAR. The
latter again doesn't require any locks—just asserts that the device is
awake.

> And speaking for hardware in general, indexed registers aren't
> exactly an uncommon thing. So the tracing stuff really should
> have a sane standard way to deal with them...
> 
> > I'd be very
> > surprised if this is truly necessary in i915.
> 
> The most fundemental reason is the hardware issue present on
> some platforms which can hang the machine if you access the
> same cacheline from multiple threads simultaneously.
> 

Ooo, yeah—yikes.

One novel solution here: move the MMIO reads out of the tracepoint code
and into the caller, passing the values as arguments to the tracepoint.
Then, just assign the values inside the tracepoint. I think that would
work and be functionally equivalent.

Matt

> The other reason is that some machines lack the hardware
> frame counter so we have to cook one up based on cpu side
> timestamps, and that involves the vblank machinery locks.
> 
> -- 
> Ville Syrjälä
> Intel
