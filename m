Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A27D0AF77EA
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 16:44:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC0510E865;
	Thu,  3 Jul 2025 14:44:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k0jpodYm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0019D10E171;
 Thu,  3 Jul 2025 14:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751553892; x=1783089892;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=UZIg0H43clQUqKD5oU4ce8kBVJ3wxDLkncLbrAMOrKM=;
 b=k0jpodYm/ooAMvAXgHla99GCN+SDNTK5h8qiT9QlCVWs9fT0dp+VhFCq
 4F5mlyVa20TOmaFCwVZylXp9128/m9qNkoZt1YbJyP7kVCaVbLQJbCkyU
 +wbPL4xENwU38cYpVDIH5/W5cR8P4XmxIkOVojT7QJMWW8LilUCrgPWg9
 szOHnv8Ytd9Uu+D9yI+lKbIOTR/F/8UTw0S8VH6qPl1SYkNvp6mWhMsyc
 lMiuQTFb7svA4gpJbHBnmKnoWGLAIqhCw3iXiOfPpEdN887EmOyHdN/Za
 8SxW1yAZJd9EdO0i8ya2cUDiojVgqvCts2LIEMH0BLx1Yol6/ywba58iz A==;
X-CSE-ConnectionGUID: AvBsrjs4SKCXpKPjJQuvKQ==
X-CSE-MsgGUID: Z4R/FxOXSDiZSugljuGjKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="41507807"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="41507807"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 07:44:51 -0700
X-CSE-ConnectionGUID: QSrqjh2ETSuJCTKpOXk2ZQ==
X-CSE-MsgGUID: vUt3l/W0QYCCONQ35X3K4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="154516245"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 07:44:52 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 07:44:51 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 3 Jul 2025 07:44:51 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.66)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 07:44:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SdT37Ms5aqn41tc03Cf7ivqFPSzWj1PZUYgytjGrxp8u5EYevHmkBAWBU46Irv2F/DtJBmpIDnmyuyOT8nxZclyaIUzE6QlyCwb3QD+3pow1yBELPm724LRRc8eSINWPgbNyKh87bQSr5sGGgED/OvJ7vQNNsJdelISV959Zmp6G7sM4elEd9AG6Hht4PmtfIasR7cA7bu9dcrZ7GrGFvaPiVaEIaE1yDNlRNRaaWxCsSR8Pcuv+FDElEoqNLAIOQKuiaXnrRuH3mAEDs7W4mWnUKb8m3Ju/keUewW2Vr++9O2OADzixxf1sJobm1OPaepOsZtIGCVG0h8EvY5cLIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NDdIFaFAJJjOQXx5bI2ByNKaxyNHsJKlzRziz6soXQk=;
 b=MLsvV7U/fW7tFrbhoW0PHjt62nZ/9EAFlis6P/PBUh0bDYMz3COoef30T3qrosuGjzhTM4UnU3mrCp1eGDOS9wjtSjvhLgc5OLS4QVuW8qJYp5Jbx9/LvlZ8T/rBcKHIhXFQOFJrOW0xtjFCTYCP7e1UjtqsYEKSviaPqnqfGwavp5C+y1KUdRLcEiIRc/bpGhcwxEz16VPLENpCG+H+1XFPH66JGs7pcksZ1gcr6e+ItaQztAe3e0Pf6ZdVWy1v/mJ9+xhlGJI1eoTfeIWhS3M+7NyuN9b9UvNZzhogx3W0Zb4dMq7Qma7f9YyGYvf36KRgkPyA8/7KCK0+SXVp9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS7PR11MB7806.namprd11.prod.outlook.com (2603:10b6:8:db::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.23; Thu, 3 Jul
 2025 14:44:21 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Thu, 3 Jul 2025
 14:44:20 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <cybzm346vxee26pw45xyezdh4m34cagd5iifdtqbymoourg5e5@2ay6gznj5m32>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
 <aGWLMinfzWd9IkFJ@intel.com>
 <fsyfxqbrzc5zogoyqew6xs7frdosjeewl4wj43yrduaetzdtlf@wm5utoxy2xeh>
 <aGWkwQZB_hSsjgQ4@intel.com> <aGWpag7dGRUAVZfU@intel.com>
 <175154453451.3748.4465804540019858511@intel.com>
 <cybzm346vxee26pw45xyezdh4m34cagd5iifdtqbymoourg5e5@2ay6gznj5m32>
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Ankit
 Nautiyal" <ankit.k.nautiyal@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <jani.nikula@linux.intel.com>, Jani Nikula
 <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Date: Thu, 3 Jul 2025 11:44:14 -0300
Message-ID: <175155385475.3748.2971855407105502441@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4P220CA0021.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::26) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS7PR11MB7806:EE_
X-MS-Office365-Filtering-Correlation-Id: 18c73ccb-8448-4c26-7ca4-08ddba4017f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a2h3d0RyZW5WZVhYZWJEMTZubE5JUUNPd0VxSVlLdVdId3Yzc256alpvenlC?=
 =?utf-8?B?cFZwUDZpVE9GdUoraW9HaEl1SmFhWlV6c1c3YzNLR2RiSmdhcDh0K2pPV0tW?=
 =?utf-8?B?SWUyRDhlOEVnZlZFS1hiR0ZUeHRPMWJMa0FFOEp6VkMyaFZPMWYxN3k0bGR2?=
 =?utf-8?B?cXdOOHJhRWZzS3I5TFpCRmZkaDJGbzZYaER6a1NMWFlramRoZ1lUZWxWWmU5?=
 =?utf-8?B?Mk5YOWpKMklXcCtMekJsVm8wUlE5OS9JM3V0UElWRDJrMkFEQlFZY3NzVXdJ?=
 =?utf-8?B?NXJISkJqMzlmYVRjenJscEFQMVZQb3pGMWp0UVk2TDZQYWFsbEE2a1JHT3hZ?=
 =?utf-8?B?aTBoamhRb1NPdit0ZGY0NC95KzBtMzQvT1pNeEF5YWtkTHpxYzBiQjdjam5B?=
 =?utf-8?B?dEp2OWNObHpQZVkwMlNZRG9lSkRJV2Y4TGp5aUhHN1JvMmV2OHNWZERXak1P?=
 =?utf-8?B?OG5zUEE3L0c2U2hkd2RDdElQaytPeXdnUmRvaE5sckdEVE01WjhKOHJXL2dP?=
 =?utf-8?B?SEpJZm1sVldTNUVPZlpvdW1XUkRqNjdrWjlvekoraWdJQ2JJaEU0UE1xcWFr?=
 =?utf-8?B?ZmpIOWVRUWFzSGN6WCtuWjJ2ejNabW4wM3NkRWdDWmhWMDdDUWdVUGM5U0Zn?=
 =?utf-8?B?N3o4anZjRW5veXdlUnRjckFwMXB1WnFia0RVT1ZjT3RUY0pmZUh0R1I4K3pi?=
 =?utf-8?B?WFU0clZRYzhGWkU2cnFaNDhOVC9GRWl5cGljUnk5NDA4dTZ0YWpqTzFYNklX?=
 =?utf-8?B?NjZpVFNPRlNFOWdzWEFUYi9md3FVRnN1aWVmY1M2SnU5c2pGQ3BFZTE5RmdU?=
 =?utf-8?B?RlUwOUhlZUtrUk5KdS9OVGJLNUY5S1RIRzZpZmRvS09vRzRFUVdrYUpXNzY5?=
 =?utf-8?B?S09NTDk3Tlh5TU5GaGVDckJyeXl4MHhPTDY4UVBNMVpFS3IxYU56MCs1VjUx?=
 =?utf-8?B?Ykl5MjNoQVZzb3RJamlGeUYveDI4VllsdnIrM0cvNmt0T2Q0VkV5dGV0SHR4?=
 =?utf-8?B?L1BKdmo0Z0NxMzg2ai8wOXN5YUM5VW9QL2tITlBkeDZ1VTRGZXI3Vlc3R1BY?=
 =?utf-8?B?MEd2dU5JU3lJSm1BcERGb1FNbXhrSktOWlVPSW9MVWNBME14N0ZYN3JDQkRy?=
 =?utf-8?B?ejFKZVRsRzlMbFZHK1RIRzZYVVNZc3oremtMSDUyRGtGTml2VDUzUUh3Y0FC?=
 =?utf-8?B?ZXI5UHB0ZDhDd2ovRDNQaEFJWFo1S29ib01TbFVDYXo3Y21VazVYM0FMSFFy?=
 =?utf-8?B?VnFGSS9pVEk1R1hDTmdFYjNiVXBHdDExMWtNVnBqRm9VbWVUa21RMmlsaE84?=
 =?utf-8?B?UERBVzFWNnp0L3dBb2hoYU1ZSTRSU2FiWmpaN1V0MjBGVDdrWWlLcWQ3MGhU?=
 =?utf-8?B?UFRNY3hRcnBzWC9odjVwUjJFeFNSQ2tHL0kzYnJoZzRsVmZESk1ZOE5LZC9Z?=
 =?utf-8?B?MXVudW1jWWpqTGdhbHUzbTJBdGtaV3F0UFptVjBoZW1BL2RobENrV3BWWExp?=
 =?utf-8?B?MVFoL3ZaUXZpMUJwSEZTeEt1K1BWY24zdE15dDhOOG0renFWWVRyY3VHQWkv?=
 =?utf-8?B?ZXpEK0E1dzRiWVlXT3hxOVNDVDRJV1diSktsN2lrdGR6WFArRU8yeFQ1cXpR?=
 =?utf-8?B?eVFDcmZ6RlM4UVI4N1JnR1pmcDF6bkJObDRvZ2I3aGtTM2p2dUNKR1Z0bjMx?=
 =?utf-8?B?Zi81aDN5UVJCQVUyZGNRUHlPdllhNFd4dUJVYlVZdiszdi9tdkJCTmhhLzNZ?=
 =?utf-8?B?bDNmL1g0MU85aGpYOXRmTnJDNGJLWWpIUC9uZXFqN0tvVkZ0SEtKQUpIa1Zu?=
 =?utf-8?B?Qk8ycFFBQktrdXV6LzdZWTU2OWx3SmpWajNWY3ZTQmFvUGVGREs5OWI5RVBI?=
 =?utf-8?B?LzhJNXM1d1NTZmhqWXd4NVdaSEpYN3FPK3FKM3MreGFERjRDNW4xWktWQVVk?=
 =?utf-8?Q?pmZyaYq9SKo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WTBZWDhJQWNOWnplNjZGVDF0Vm15OGN6UDBTa2hjNDkwbE5aTGFFMU5ZSjhv?=
 =?utf-8?B?a0Ixa0FETHFDZDVnUWcxL1Y2ejYvS0p1a3VDeWljbzVRNy8vQWd3UVliL0E3?=
 =?utf-8?B?YzZEbm8yNFRhbFEyajVBMnpFNDJnazcvZ3k2UFcyaDZTbUd0bFpSd3h6RzV0?=
 =?utf-8?B?V0YzSHd2MlFMUCttYXZYRzJYSFliRzNzc3YwZi9yYlQ1bC9KYkFlQ1I2VzEz?=
 =?utf-8?B?aVduSzBLOFYyWEhZbk42QVVtVko5azJaS1lBclNKRXlJTEhrSGZKdXZwZ1hi?=
 =?utf-8?B?WUd5SmxyclFpMDc4dUMrMDhmWEZZT211V2g1ZXdpYWhDdWdLUXpsbWZ6WlFN?=
 =?utf-8?B?dHhMb09vUUExL2lRQW1URFRENno4cHI5aTY5bDVneWY5aklUZ0x1cSswdzRE?=
 =?utf-8?B?eVBXWE5tdGpja2dyaFdHUzNzRWVCeEJpN25UTmcvckFCSWVDNzMzbllkWjBP?=
 =?utf-8?B?OXJoNndNUklUS0Q1ZUMrQk9uUVVxK1hqdUxsNlVwM0pNSi85aXdURWdSZ0NE?=
 =?utf-8?B?Z282OHdzWUYvVjIzRGh6cGltNW5ZOUhnS1pGazg3V00zVmV5cS80dytYTjJr?=
 =?utf-8?B?TWlTeElKT0I2Y0dNRkk5a1RmU1VHbTlTTE1YQ01RaW9xVC90SDRFMXlFZm01?=
 =?utf-8?B?OHFXWHB2MGhYY25IK1FUU1BhRXBDUTk3Q0dRaWp5bDFrWktacXh6eVh5MXZv?=
 =?utf-8?B?UG55OTNXOVZrQzc2Q3kyS1dvQnVVWHBiTGxvRHdxSnd0aDF0cCsxQWdFcndD?=
 =?utf-8?B?SXVEanJDQjBhVTh6QnAxa3dMQkVsTUJTV09zdlFsZUtVcUY3dk96SVNTVm9U?=
 =?utf-8?B?U3B3T0RmWVQrKzhlYU16WW9ydlpFRElwZGovUFY4eWJZQWVNc2V4OGJWOEhm?=
 =?utf-8?B?WUh5cXFML051Vzk3cExteWZXWTR6SHI1Z2hlYXZvTk5yV25TMEUvZmNyMk5s?=
 =?utf-8?B?cC8wU0xneHNoNE9MUzRyUy9yTm5BK0MvWDQwZDFoSkE4WXgrQVRpN0JES055?=
 =?utf-8?B?UHp6ZWUvY0JpQUZYS3NmSjFqaWdYVi9DY09Cc3Z1cisxQXl3NzNUUStjZUZH?=
 =?utf-8?B?a2o4WXdtR00rUG9VZkcrZ001UWdRVWlCYU11c1IrYm4vMVQwU2t3ckZOcWZ4?=
 =?utf-8?B?SEErUzMvWDFzNVpURlY2dGYyV1grdVduVFBPdWovSklGZSs2RFpiTnFCWTcw?=
 =?utf-8?B?OXVRb1lYNkhkRDZsenlwN1g0VHhsMjBwdlZsU2krWFUrVjlqVTdzQTlnSXAv?=
 =?utf-8?B?My9NMkhpVjhuNXpaUlNNODArRVBjcS9rdWRTNWg0V2RRR1duSHFJZm1GZFcr?=
 =?utf-8?B?V0xvcnV4b1VvcmJMSDUwcTJwVjlzMm1oMFRWK3R1THVxdmowYmpvYmgzMEpS?=
 =?utf-8?B?aEFzUmx5VHA3eWlWSk5pU2hkeVFReVlNc1NuTzdNNWJ0SUdXcGFuWjIyNXJp?=
 =?utf-8?B?VytFS3poMTU4YndCYmJlZ3NoOGRyTFpCUWtyekZQM1B3V0dKaFlSWGNvcEdH?=
 =?utf-8?B?WklCTVY5QkJnQm9UQzdacnRFcHRoaG92UUkrUWlQeUszRmFjS1ptay9ZamNE?=
 =?utf-8?B?QjJSZFBxMFhueU93UE1YYkVkSUxGbXEwaDlGMEJXclZadnlISDNQVyt1bWw4?=
 =?utf-8?B?emdPMlNjRk9xRDhNN2FJRFl5Z2Z1ZGtMb0JEUXFRbWNnZVhBUlJuMVBjR1JW?=
 =?utf-8?B?b0Joc0pSMjVWVTd3TGQwN3JPcFI5bnNjTFVIR2EzVFVOcWNPT1UzQzV0WGQ3?=
 =?utf-8?B?UWtjK1NYUitlYVRYTjN1YUJmanFVb3pHclB1SlBmOW1BRE9XNnh4WWh5UjZ0?=
 =?utf-8?B?WVp2bUVQMGZXdnB0Y09HNXdXZnVCNGxFK2dUanZYWHkwR05DL1RoSEhpRTVN?=
 =?utf-8?B?VWhVUzhVWVVGYkVQYnhNV2trSEppTlpMbDUxdElicDlBMmo4UkJERFUyNUpw?=
 =?utf-8?B?R2dUZk1zRFovNGRXejBUVlVjYUVtckZLbzNHajgydnlucEJ0Q2Q1a3JtcE0w?=
 =?utf-8?B?TjZraithdThUK3dZWUM1NzRIaXJuTDYybVlhRTRxVFJVL3B0aDhyWXdjeEd4?=
 =?utf-8?B?SVlNQ3FteW45MWdTUGIrNmlYd0V3aFZVNXZSUllkMDhOMjNlMTBuY29zZmZU?=
 =?utf-8?B?eHFVL2NzTWRyQTFXRkxkS0RmQ2hmNE9YRFM1QTFkVXpHdzVBd3VHR3RQSzdW?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 18c73ccb-8448-4c26-7ca4-08ddba4017f8
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 14:44:20.2558 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g4hXV2QoINBDCpeaoo/weCEvN1p8Esp/vlL5M7G/9f8J3DtqbLVJw0mWNcVuNkkiyoWukFHYMOjqtMv/iEf7Ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7806
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

Quoting Lucas De Marchi (2025-07-03 10:55:07-03:00)
>On Thu, Jul 03, 2025 at 09:08:54AM -0300, Gustavo Sousa wrote:
>>Quoting Ville Syrj=C3=A4l=C3=A4 (2025-07-02 18:49:30-03:00)
>>>On Thu, Jul 03, 2025 at 12:29:37AM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>>>> On Wed, Jul 02, 2025 at 03:25:21PM -0500, Lucas De Marchi wrote:
>>>> > On Wed, Jul 02, 2025 at 10:40:34PM +0300, Ville Syrj=C3=A4l=C3=A4 wr=
ote:
>>>> > >On Wed, Jul 02, 2025 at 02:16:18PM +0530, Ankit Nautiyal wrote:
>>>> > >> Introduce a generic helper to check display workarounds using an =
enum.
>>>> > >>
>>>> > >> Convert Wa_16023588340 to use the new interface, simplifying WA c=
hecks
>>>> > >> and making future additions easier.
>>>> > >>
>>>> > >> v2: Use drm_WARN instead of MISSING_CASE and simplify intel_displ=
ay_wa
>>>> > >> macro. (Jani)
>>>> > >>
>>>> > >> Suggested-by: Jani Nikula <jani.nikula@intel.com>
>>>> > >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> > >> ---
>>>> > >>  drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++=
++++
>>>> > >>  drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
>>>> > >>  drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
>>>> > >>  3 files changed, 25 insertions(+), 1 deletion(-)
>>>> > >>
>>>> > >> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/dr=
ivers/gpu/drm/i915/display/intel_display_wa.c
>>>> > >> index f57280e9d041..f5e8d58d9a68 100644
>>>> > >> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>>>> > >> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>>>> > >> @@ -3,6 +3,8 @@
>>>> > >>   * Copyright =C2=A9 2023 Intel Corporation
>>>> > >>   */
>>>> > >>
>>>> > >> +#include "drm/drm_print.h"
>>>> > >> +
>>>> > >>  #include "i915_reg.h"
>>>> > >>  #include "intel_de.h"
>>>> > >>  #include "intel_display_core.h"
>>>> > >> @@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_displ=
ay *display)
>>>> > >>          else if (DISPLAY_VER(display) =3D=3D 11)
>>>> > >>                  gen11_display_wa_apply(display);
>>>> > >>  }
>>>> > >> +
>>>> > >> +bool __intel_display_wa(struct intel_display *display, enum inte=
l_display_wa wa)
>>>> > >> +{
>>>> > >> +        switch (wa) {
>>>> > >> +        case INTEL_DISPLAY_WA_16023588340:
>>>> > >> +                return intel_display_needs_wa_16023588340(displa=
y);
>>>> > >> +        default:
>>>> > >> +                drm_WARN(display->drm, 1, "Missing Wa number: %d=
\n", wa);
>>>> > >> +                break;
>>>> > >> +        }
>>>> > >> +
>>>> > >> +        return false;
>>>> > >> +}
>>>> > >> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/dr=
ivers/gpu/drm/i915/display/intel_display_wa.h
>>>> > >> index babd9d16603d..146ee70d66f7 100644
>>>> > >> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>>>> > >> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>>>> > >> @@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_1602=
3588340(struct intel_display *disp
>>>> > >>  bool intel_display_needs_wa_16023588340(struct intel_display *di=
splay);
>>>> > >>  #endif
>>>> > >>
>>>> > >> +enum intel_display_wa {
>>>> > >> +        INTEL_DISPLAY_WA_16023588340,
>>>> > >
>>>> > >How is anyone supposed to keep track of these random numbers
>>>> > >and what they mean?
>>>> >
>>>> > they mean there's a h/w workaround that requires that and this is th=
e id
>>>> > if you need to find more details about it or what platforms/IPs use
>>>> > that.
>>>>
>>>> I don't want to go look up all the details in the common case.
>>>> I just want to read the code and see that it generally makes
>>>> sense without having to trawl through the spec/hsd for an
>>>> hour every time.
>>>>
>>>> >
>>>> > >
>>>> > >The only time I want to see these numbers is if I really have to
>>>> > >open the spec/hsd for it to double check some details. Othwerwise
>>>> > >it just seems like pointless noise that makes it harder to follow
>>>> > >the code/figure out what the heck is going on.
>>>> >
>>>> > what is the alternative? The current status quo checking by platform
>>>> > and/or IP version, dissociated from the WA numbers?
>>>>
>>>> I find it easiest if everything is in one place. I think every
>>>> w/a generally should have these:
>>>> - which hardware is affected
>>>> - what other runtime conditions are required to hit the issue
>>>> - what is being done to avoid the issue
>>>> - a short human readable explanation of the issue
>>>> - the w/a number for looking up futher details
>>>>
>>>> Splitting it all up into random bits and pieces just means more
>>>> jumping around all the time, which I find annoying at best.
>>>
>>>I suppose one could argue for a more formal thing for these three:
>>>- which hardware is affected
>>>- a short human readable explanation of the issue
>>>- the w/a number for looking up futher details
>>>
>>>Might be still a real pain to deal with that due to having to jump
>>>around, but at least it could be used to force people to document
>>>each w/a a bit better.
>>>
>>>Basically anything that avoids having to wait for the spec/hsd to
>>>load is a good thing in my book.
>>>
>>>There's also the question of what to do with duplicates, as in often
>>>it seems the same issue is present on multiple platforms under different
>>>w/a numbers.
>>
>>With regard to this last paragraph, in my experience, I have seen two
>>types of situation:
>>
>>1. Usually we have a single w/a number that is shared accross different
>>   platforms/IPs, which is what we call the lineage number in our
>>   database. What happens sometimes is that people, by mistake, use the
>>   platform specific ticket number instead of the w/a number.
>>
>>2. Another thing that happens sometimes is that we might have different
>>   hw bugs that have the same workaround implementation. That is the
>>   legitimate case of having our code mapping two or more w/a numbers to
>>   the same implementation.
>
>well... but this is the same mitigation for different bugs. They are not
>duplicate bugs. It could be that the platforms affected are even
>different. We should mark both as implemented to be able to cross check
>what we have implemented in the drivers vs the list of workarounds.

Yep, that way I mentioned that case (2) is a legitimate one.

--
Gustavo Sousa
