Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9016ABF29A0
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 19:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81D2410E48D;
	Mon, 20 Oct 2025 17:05:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oDnyhrxF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC6AC10E48D;
 Mon, 20 Oct 2025 17:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760979937; x=1792515937;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=VgX6jW/tpvNK3iheEe+t6NFNjtoqVDGhY64SY/0Ni8E=;
 b=oDnyhrxFm4/g2G8PTS9b4PPX8JH9QGmk5eEjS5Jfrpw3NbwKg4WRyZXw
 3E0/KGRWBMO5fY1kFRnGZU7s7kweHRoiwkn1xVH9tBwPjfS2s6/G5FIYH
 9HJEN4sn0DbCDQ1ueu4FOv6jG6SEQWsiOpKpe/+5X7jsNzB9Z12vHIlz2
 bJOChn1ZptARyalMDFKVTqNYbgsiyH5ep0ivQJUihE1rrgZOuiUdbe4tJ
 4xKz5sB7dKhoNRVJoJX723CjnIp6rzNja21w/3mSOlRErnJJDyHmCMyC5
 4wvfvwfFsKMEnaxaKWXd+Sm9t1OQvmYbVICx4tkhn0ApJ1u+I6ilEmn0T w==;
X-CSE-ConnectionGUID: Wjk0GTsXT3eziKiKvScbQw==
X-CSE-MsgGUID: MvZalepgQ/OFSDBqvokS3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74442418"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="74442418"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 10:05:37 -0700
X-CSE-ConnectionGUID: wZdyMycDRSqZZ/k/fZaqvQ==
X-CSE-MsgGUID: xewokbMBRcePOl/SPf3anA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="183078501"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 10:05:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 10:05:36 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 20 Oct 2025 10:05:36 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.50) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 10:05:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Poj/cRIFh03a8xUeVUTx7hSFHl3rG+Q4BugGvEUdxAvfXYfzHcbs3AX+DMQrF5fqOasqSz/s5zoZ0alugs2Ja+5Hgq2Wb3RgHLDeGCNYEShA+V0oxST/0po8KZKiS73O6Bbn5G3y4ePSlTYWLRH+E+l+JDkes+ofdlGEaBcCFpHJkta5kgD5ITV4g6JqAhrUxsEaDjdJwKsVKfPgq9GwduYRoQZPuIxUmdSOi4o5pAE9wD8PiYyLbTr/gKTdb+NyN2M7F0pht8mzIN8p7xBXNb8NoBQhf//rqtXxtzzb+6PwBuJGR7yHGOq1Tw3k78ze2sdqFrccSxxWYzalqfjruQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nefpo0NWQGKd+OAMaPuF2P7Me155XduUUbALebG60l8=;
 b=ql50PlkWJ2VX+XCh3YkSw1+02wSVu2BKpSBRzt2f5bWPqpKx32tV6jVB8YI2qh7uv+vVcZ3UjnC5zz6APUZd/y41vZUoAdMn0H06MUrkes69Qgfoql+sZM4IcnGbIMs4rlDxJ4I0fC0FpQpfA1MIgZ68thxRaOKA0daYkDLaw8HoIhfc2yLSedi0zw2aXg5crvljs1UjFYj63nTdQGMWqUJ6+CYg2HybakQ1OcKJx/SdqWwCLKUeeMU1tLmCNA4KEbv1D+ib5CPJOQg/9mvhf8NinEzL6/JcYWd7KGqE9Q4a+zCLIjnV7q64bmRqCMJczbGLsb3un3vpJJZG/jb6rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW3PR11MB4588.namprd11.prod.outlook.com (2603:10b6:303:54::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.17; Mon, 20 Oct
 2025 17:05:34 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9228.015; Mon, 20 Oct 2025
 17:05:34 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <176097792051.3231.1938203199334716073@intel.com>
References: <20251016131517.2032684-1-dnyaneshwar.bhadane@intel.com>
 <176097792051.3231.1938203199334716073@intel.com>
Subject: Re: [PATCH] drm/i915/xe3lpd: Load DMC for xe3lpd 3002
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 20 Oct 2025 14:05:30 -0300
Message-ID: <176097993001.3231.11696796781314845270@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0045.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::20) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW3PR11MB4588:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bf957a6-2c3f-408b-a794-08de0ffae1ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WVo2V1NjUThQcnpRN0h1SFNONUFMSDZGTWdVN09lTFZ4MUxoUzhucWpUajU4?=
 =?utf-8?B?KzhLN3VtM2FTajZSaS9sZ3R2SFY0Q1Zwanh4eFJwSVMyTkNNRE1aeVpiZHVa?=
 =?utf-8?B?SUJSVkhjNThOeFducmFjLytrWEF0VjFsOXdscWhCak44THR3dmtzRW5COERm?=
 =?utf-8?B?SXFiR0xXbXV2WDhETFZtbkdsRkVTWnFlSVV4QUcrR0VOeWs2TUJmNEJ0bGZ3?=
 =?utf-8?B?bHB2YmdHQk43eElWb2RQKzFQYTFndk9GVjJIdm4zN2E1WXBvcisveVlaQmp2?=
 =?utf-8?B?dXFZdXQzKytiWHZSd3hYUTlGUDZKZm5qR1RoVjZBalJ5dWNtUnlSbUZ4Zkx3?=
 =?utf-8?B?amtsbDZZcDZlUVJ4MHcvS2o3QklkdDhDYjlmUXNnYUloOThGaU1HbzZHYnQ0?=
 =?utf-8?B?V0JSTTVId2xraExRemhUVlkzekcrb0FZS0lYd01vQzBFUmdPbmMxcloyNHRw?=
 =?utf-8?B?Z1dOOGkrbC9ZSlhNMGlUZDI2dlk1MVE4Snh6REVYM2lLTTRaTk5RUlI2QmlF?=
 =?utf-8?B?ZEtCb2RRbWg2ODh5Zm0zdmdKM1FQZTZlVWlTVkJFUXp2QjZxMGNyVG9YdEFQ?=
 =?utf-8?B?SHd3eUhFMkZsMmFJQnV6d3FFUVYzOWxkZU5ZOW9USVhQT1pCUEU4NXhZcmc2?=
 =?utf-8?B?RHZ2c212cnhGcHRNTFFhSGp4MUwxMU14d3VjMllkVlQ1eHZsTGtqdTdsaXpi?=
 =?utf-8?B?MjFLdFEyL09ZZjZZaVZiTHZtWDZMNDdMVGNqNE1vTVRlR0ZmV2FiQisxUmhq?=
 =?utf-8?B?NzZJckYvNUk4QTdlMCs1Qjltd1RHYnB3RGhQMXl4SkRRZlFvRDRrY2RJK0Zv?=
 =?utf-8?B?UHRVNVRjR0J3Z0p1aWx5eTVjSXRMbnEyTUNvZHBCSDNyQUtZVWg1VkRHZjZ4?=
 =?utf-8?B?azlUOHhacFJzYS9RbmZGd3lDWGVSRmlKVXZqb0VBQzJWN2RIOWJOL1V6U05t?=
 =?utf-8?B?YmRISnBGWi9wRGVEMEkxd25mQ2MycnBDQTlpSzdtSmU4MEttUWdoTTNyNGFs?=
 =?utf-8?B?RmZUQXRBRFJrTXVxV3Z6NmlaYzA1TmhVZGpHMUk0c3RRZFlTcjdnT2tIRFBJ?=
 =?utf-8?B?OEU4WjFIRXZwalYyNnh5emdmKzNiL1NrT09LVmdsbFVWNldyL2swMFZmL2FH?=
 =?utf-8?B?UVNSS3N1T3dxMmxRRzBVSU41Z2pDNElkNFdXQ0phT2hGNzBzNFhSRGJkemR4?=
 =?utf-8?B?SXBrNHZaQTF1RWJTdEVmUGNiSTFhMGUySjdWMURSTFZqL2V6TmFzVTlienJF?=
 =?utf-8?B?dkxxOVVvd2N5bDRobzNDdDBzSDJKVXRGdTZTY25rVlVJOStFZjFuQXVETUdt?=
 =?utf-8?B?VlEvR1NmZzZOU2pRM0J2dzNiSWgxRDBrSENJbVlWVjBOUElqOHI2Wk5PYWl3?=
 =?utf-8?B?UEVBTjUrMXVlWks1ckIzSUZzeG5uZVZuYlFFYXlaZyswd2lZS0dRQ2EvQXNZ?=
 =?utf-8?B?NUozQjZtL0ZnYWt0NkgwYmFNZ29GemFJdU8vNXRxdzZGNnBaY1hLSFZFcHRI?=
 =?utf-8?B?TVUyRUh4ajdWNDBPNS96ZlRMZW00WmdYVEVNUFluUnFlb2oxWkxhVFZQeURs?=
 =?utf-8?B?WkZMR2pUNkxFLzV2eEM0anhrWkNCMWoyRlh3d3Y2b1RDU1RlMjhjYi9IT0w1?=
 =?utf-8?B?SWF1T0RXNEF1cm5LVGZWMTZlQWVsa0ROcUM1cmVsazFxQ0UrQjgwSElyUXdl?=
 =?utf-8?B?UUI0RlFKMk5kTVNjUVRaWGZjWVVoZkRxL2dYc0tMV0NwNEhRZU1QUitRV2VZ?=
 =?utf-8?B?RzNId1N5VE1aNDNwN0RlcFZyU3pmS1NPYUNhQVp4ZHF2dmFYcUhaRkFFMWRz?=
 =?utf-8?B?SVB5VnZoQzNMc2pqS1BXR083aklYcld6VTM3clY3SDlXbGFRL0cxYVUvdHJo?=
 =?utf-8?B?QlJiOGpsaEdHclRENndmU0JrSUtHbndDWlBUN2NrVTB5bnpxQU5MQUE2S0x2?=
 =?utf-8?Q?SzPHkG+kEjlWDh2qgnvQD6oqac/9cOkJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZlJWV2hGWDlUNGpSMzhCbkJnRW54OE43dTlyZHZXOFA0ellnOXpaVHpiL3p6?=
 =?utf-8?B?ODVjUmZRdDNBQm4zdUU2enNDNnVNMVM3UTVJMERhRmlNYk0rSUNpZGVabTBW?=
 =?utf-8?B?QzNqVWpnVXc5bC9iaFBuOWJQZUhTWlJQZkdBbVpML2dpcnRUeDdYcFg3Vkoy?=
 =?utf-8?B?UkhhQnBvaGhLSjJNVWV3T0ZFN3IvTlFLV1JHNVhuRCtORkd5VkJ0T2FRRE1p?=
 =?utf-8?B?VVNEQVJBT3MxV2htQVZtcEdpTTEvUDNjT3dnSFZoSnEvc05lemFMR0YwVXZD?=
 =?utf-8?B?UDc1ZDhLZHZjK2F1Szc3V3pzUzdaaFlKQXZVREkyZ2ZWa0xMTWVONUtKUzY5?=
 =?utf-8?B?NjRsZGU1cWVnS0dZdllZU1VmT1VzTGJUOEpLSEY0TjBWNS9UdTAyd20rSUZn?=
 =?utf-8?B?SEQwanBSOExLTVdpL1VuajY0aDN1S0tHN21lZTBIdFAzelluWmxFQ090WEZi?=
 =?utf-8?B?QzJTejlJbzFqWlJmZCt4bjZkMzJTUTlRQ0tmWjJCcFA0V25yeWlRVVFEaGNm?=
 =?utf-8?B?WGtna1A4WHIxbUxWUEFWS21rWDVKS2RyVldTKzZxNkZ0TUx1eEVoby9YUXl1?=
 =?utf-8?B?UjQ5bkUvaGNZVUlkMEgvdkZ3YWxCSTNrTS9wSDJZc3NyRnhNRG9mUTFmaUpT?=
 =?utf-8?B?YjB5cFBIWDlhWWtKUzZhKzZVankvZUlJSGQyYnRuVjdaZzJnbGlnTlR6T2Z4?=
 =?utf-8?B?VStyOEczWUVrUkFuKzFBcW96RksvdVFEa3pjN0ZvdUtmUTNrd29CalV5WFh0?=
 =?utf-8?B?S3JOMlQxVGlCZGVUSkhwemZSeE40OFF0UmlzcTV1dWZoOXZhODRwQ093N0FT?=
 =?utf-8?B?VDUvOGdrZHFGSWwwYjBldm5BOU9DTkFWOUVRL29TZ0RjVmFHd29KL1VJeHl3?=
 =?utf-8?B?S2VDUmh2WU9WNFdwY0tGbGgrMlFtb29JYjNtbEswZVd6aEZBaEVaTzZJVDQz?=
 =?utf-8?B?cDFvYXhtejFPb3BLRlAvSTZGMVV3eEdHeHAwRndpbW1kNVZvR1ZqZHRka3cx?=
 =?utf-8?B?T0QxZXZ3ZmdyLzV2TVZhRmZUaW95YnlGQWlzYUg0Q1paM0o1VVZVVEdZZzlK?=
 =?utf-8?B?azNFRVhnaU5ZSENBVGpJOFd5WW5JYnhGMnAwL3dGTnF6Ykh4cUlYSWNOQ21k?=
 =?utf-8?B?VGgvbVdpWnR1VFplNnNPUnQ5b1pKWUlyUGg4YkovM1FmakZ4Zi9GcGxqcklI?=
 =?utf-8?B?dFhsbEtGcnFDeFhwSkJSZ0t4Ykh5T3prSkxjR09BeG56dXRZOThCa2ZlSFFF?=
 =?utf-8?B?c1NNYWdzaXVpTU96cFZhTnFMUWlQY1ljWmdXWGVGTVBxRlZMeDBxQjJOQll6?=
 =?utf-8?B?d0hIOERKempDOThMREMweWFTODRwKzFmTjBaWndrSEF0SDNubDM0VzlPUHMy?=
 =?utf-8?B?MFduQ2hzNE5idWpyeUFzUUlhWVcrUmNLZklyazlwODcrRjlkcHphbjFrczhy?=
 =?utf-8?B?TzR3YjVxQWwwVFd3WGJ5TFNGM1E1bFkzWVRkTU5SSlpadmF1SU94NGY2bnNt?=
 =?utf-8?B?Z0RSQ1ZUVEQyamVDTDBySFVndllLTlhscmxDVC9uSVl3M0F2c2pvclpoU2xk?=
 =?utf-8?B?ZldhVVVEczdCbUcyOSsza00yMi9ZaG5FZWhOK2s3Ump3bE9WQXFaSlJMVmNy?=
 =?utf-8?B?Z1I3eDJtdnVLb1d0dzRiRERvWmFxTG5tcGY5cFJxcGtuMEJPdC9KejRCeDVQ?=
 =?utf-8?B?dFNtek9zTHpJamR5YVNqLzY0L29FS3hRMktjT2VhRlJkR1E0NTA1cmJ3TWZZ?=
 =?utf-8?B?V0JGd3kwMDRPaUNHMVhOM3p6OEdXMmRxeU9SYnB5R1FRSjg2VkhBWW9PTHZB?=
 =?utf-8?B?SEFhdGJLTzJKMXR6WVR6RlRCVzZDK3E2RkVVSDg2aTFxLzdGNEg5S2dudHli?=
 =?utf-8?B?eVFXRmdjNVVqL05KL3ZuM3pLZjBIelRSVk5INTJZSDRLOTlGczhvWlZMUnc5?=
 =?utf-8?B?MUk0c0NMWnEvOVBpTjNQRHpLRm50YnVYNDY2QS9pOVhLWWNQSlFUTjJ2cmRE?=
 =?utf-8?B?UzhBQTU1VXdnSFFBWGtqMWJid3dHVUkzQ2JKT3pCNGtCVmxaTlJuciswSW01?=
 =?utf-8?B?NDhjcWdKVFJKcFFhdC9kRVBNVkpyODh2eGk2N1p3Unh6NTliOGhqSHdqUlpn?=
 =?utf-8?B?SVVjcFpYcmRKVUx6K0RmOStuU0lKKzh1TVRYMEYxQ3BDK3Fpd1p6T3NCcllN?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bf957a6-2c3f-408b-a794-08de0ffae1ec
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2025 17:05:34.1015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7govHd3T35j8iNHXOf6REbLQb60Hd0h99ovfbz3bSUoWj6g2SdlrCGHkLQW5Dv9y+hFHDdh+meOMh0RtUnthvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4588
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

Quoting Gustavo Sousa (2025-10-20 13:32:00-03:00)
>Quoting Dnyaneshwar Bhadane (2025-10-16 10:15:17-03:00)
>>Load the DMC for Xe3LPD for display version 3002.
>>
>
>I think it would be better to use the dotted syntax for the IP version
>in commit messages, i.e. 30.02. I'll reword the commit message and
>apply.
>
>Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

And pushed to drm-intel-next. Thanks for the patch and review.

--
Gustavo Sousa

>
>>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_dmc.c | 10 +++++++---
>> 1 file changed, 7 insertions(+), 3 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i=
915/display/intel_dmc.c
>>index 77a0199f9ea5..f3f10f97a573 100644
>>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>@@ -127,6 +127,9 @@ static bool dmc_firmware_param_disabled(struct intel_=
display *display)
>> #define DISPLAY_VER13_DMC_MAX_FW_SIZE        0x20000
>> #define DISPLAY_VER12_DMC_MAX_FW_SIZE        ICL_DMC_MAX_FW_SIZE
>>=20
>>+#define XE3LPD_3002_DMC_PATH                DMC_PATH(xe3lpd_3002)
>>+MODULE_FIRMWARE(XE3LPD_3002_DMC_PATH);
>>+
>> #define XE3LPD_DMC_PATH                        DMC_PATH(xe3lpd)
>> MODULE_FIRMWARE(XE3LPD_DMC_PATH);
>>=20
>>@@ -183,9 +186,10 @@ static const char *dmc_firmware_default(struct intel=
_display *display, u32 *size
>> {
>>         const char *fw_path =3D NULL;
>>         u32 max_fw_size =3D 0;
>>-
>>-        if (DISPLAY_VERx100(display) =3D=3D 3002 ||
>>-            DISPLAY_VERx100(display) =3D=3D 3000) {
>>+        if (DISPLAY_VERx100(display) =3D=3D 3002) {
>>+                fw_path =3D XE3LPD_3002_DMC_PATH;
>>+                max_fw_size =3D XE2LPD_DMC_MAX_FW_SIZE;
>>+        } else if (DISPLAY_VERx100(display) =3D=3D 3000) {
>>                 fw_path =3D XE3LPD_DMC_PATH;
>>                 max_fw_size =3D XE2LPD_DMC_MAX_FW_SIZE;
>>         } else if (DISPLAY_VERx100(display) =3D=3D 2000) {
>>--=20
>>2.51.0
>>
