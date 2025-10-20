Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 638D3BF2704
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 18:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A06110E2B0;
	Mon, 20 Oct 2025 16:32:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l3xI8Ug5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FB8510E2AF;
 Mon, 20 Oct 2025 16:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760977929; x=1792513929;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=eVWbKccUDKKcVfkkBQ2ERi7zboGdOvDHXxggRZ7RrGE=;
 b=l3xI8Ug5gJcWDBw//+fGXGDFjiCfrbLkigVy19TU1yONvfjvs6+pupvb
 j6+6KKbGEkaS9VMVrdPBpYZHewfIfN2Yivo+NIrT8m8x7CypZYSpN2NZN
 nl1HN0J+GZ9qqKC7Pp3/AG3DAfPRnR9pRDdCSggG0QkE63JMCX6d21PC9
 gt9nhyugH9IaHVeNTAYyD1wdJP89Xg3vgk2xsCM6fj/dXHH1botbjFyzS
 8j3hny7sh0UNbJybWMo35VQnlnw/Z4MMS51HiuFp+pG+sY7oN7+TK0Leq
 22STIGppIeDzswKncoaFhY8N78sdMd1NxD6gEGC5bxtQTknC4HCl9ZnS+ A==;
X-CSE-ConnectionGUID: vQwZbHdJQpWGFUzyRbQ7pQ==
X-CSE-MsgGUID: DvcsgrCfQeuyWlRwMioD7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="65711833"
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="65711833"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 09:32:08 -0700
X-CSE-ConnectionGUID: UpRdUmbRTF+a5vrVGDtgOQ==
X-CSE-MsgGUID: Nf2m9ITLRF2NdGjuZzRfuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="184139901"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 09:32:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 09:32:07 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 20 Oct 2025 09:32:07 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.56) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 09:32:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QXmkdRwGtCKuXwLPPZY8IxUDGoql9qa+xvshJfdBQ4Ptw677th36PpkuOR71TElYxjb6RKKPWnxAdGL7s0vhdkHkdbtUDbsCxDhOtvLXRWbgJFYskoK5L6R7f4plnXDR1xiYoQ8VTLZNjBg4llsh4fdfnueq245KMo+jN/eRX8rFoYXgrTn6eYn3TPkWEDQ9Tr2XJMezeDkqAXaS3BolVAjPybXjfSVdCobVC5vfK1IDuKqZWAaGyKHvBcphnz1UscI6oHl9imc3UneLne5d+GewCkFhBStjuAsDj0hMRDebZxtPiioyPbMc+9561kXd3bBM9Np+/ECyj5NhR8mYFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rTHrR3kvBIRfMQMAV4AsJOjOKmD4JLtHadcVrZyYJNU=;
 b=N96aFFTMNUHnJJX0XkPV2fqd7IN9VjgZDxPHDE75G2UP+ssDkYy3XFLsVadrPjr8RHtZCuSKXbbUuVpPzwqr1PMK3PS1+nQi+l09xnpAeJZTYqXWPfmksfLozPkIYIg65fYQzsuhDk+OF1t71vOSBPPkC/XMiIfeTuaGXbhXYvdHX4Su93JhafuXCL+/ozn33yFXrv53dkoY/UWmmpmx/y5r/Y6yOp5DWEba+S3FQqWgFHTDL+daUxa33/T2G7YZ5UTHPYUOOjx7HT/rDH4JFs5cEHMz3XQT+cJ+rAqK+vhYXvxAntqPr2ZKUVKyFggU0n2ShiQuw31BB4SVZUiS3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7134.namprd11.prod.outlook.com (2603:10b6:930:62::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.16; Mon, 20 Oct
 2025 16:32:04 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9228.015; Mon, 20 Oct 2025
 16:32:04 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251016131517.2032684-1-dnyaneshwar.bhadane@intel.com>
References: <20251016131517.2032684-1-dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH] drm/i915/xe3lpd: Load DMC for xe3lpd 3002
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 20 Oct 2025 13:32:00 -0300
Message-ID: <176097792051.3231.1938203199334716073@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR05CA0124.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::9) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7134:EE_
X-MS-Office365-Filtering-Correlation-Id: b20c63d3-a73b-4314-67af-08de0ff63431
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q0I2OXAxcXd0OTYxTlE1bHp6NGY5MXk2cDhPSHNKeTZmQUptQkkzdldCdmlW?=
 =?utf-8?B?SkIwM3gvTU8wVFdERlBraTVOQklWUEtOM0tUUTNNU2dFRzJBeHB5UWF6WEJm?=
 =?utf-8?B?Nnk2UFY5RHBCT1ZndzI3L0FxcmlQUUtDZTd4RWZ6bmsyTTduWlhLenBham54?=
 =?utf-8?B?bTBMcXRBY2JrdWdHN3RjRDFmMUZoSERjN1NhRjJ6elI3djJNN0dsbU1STTZU?=
 =?utf-8?B?WkJWTFZjN1ROVlU3cjFhRTcvNE8vMy9OTW1wN2RqN09ZajFVYkVXNFIwbWVO?=
 =?utf-8?B?clN4VncxcUU2bmFCdFFyMURia21xbnQwektpenl4MDdiRGdVTU9YazJpRGRS?=
 =?utf-8?B?VWRKbVdWd3B1L3N4Tm1hUWlvNmZ4UVFFUXhrdHVSVnBUdUgyYzBpVjlkZGlB?=
 =?utf-8?B?SWZ3eE96K2lkQXp0VHFOL1c5Q21qaGVmZEx4b01QUUxWaFljcHdZdk5QVGdR?=
 =?utf-8?B?VmMrNUpnMnBSUHg5dllwZDduZXIxU3lienVmbkZySm43OWt6VE5vOVZ1TEk1?=
 =?utf-8?B?SXZaQ0x0bXRLS1JzWWk5Y25pZmFBOGwxeUFkZSswYTl2K0YxQm5HTDEwd0hK?=
 =?utf-8?B?Y0VpNDJlTzcyeHpQZGpGcjhhNHhyek1LM0hLanViYTViM0hKbWwzZi9VK0hP?=
 =?utf-8?B?cFhqTGE4VlpINlMyd2Zqd2N3VkxCTjdmZlhscjZuQ2ZoVGx1Z2F6aktHb3Iv?=
 =?utf-8?B?UVdyakM2NitjWWEvbzVSMkxXelNlanNjUVRxTUlxSnpVZGYyMU1rbHlHREpC?=
 =?utf-8?B?K1I5YUplWGhKREljYnViV0tpRTRycWRCS0JZOW95d1lrcUw1bFRoR2V4QlU0?=
 =?utf-8?B?WVdQMXZQWFpsNnI1Q3JPeXVYRW9wQ1VORWQ0aEUyRENjM2s1TkN5QU13cU9R?=
 =?utf-8?B?bnh1Y1FhZkZJUTRVZ1JqSFY1ZDk2aHd3ai9rNGx1Wm1FYWF5NG9sN3dHa2NG?=
 =?utf-8?B?RW9jWjJWMFUyckFjSWxOK1lKR1V2RVFYMzBYQU9Ha2lLTjFoa0ErS1FadTds?=
 =?utf-8?B?TEpNQ2R2WGh4Q013SUJGUDVORnRyYjd5RFQwZlN0SDd1Z05FOXRWYmYzK0Rn?=
 =?utf-8?B?aWJWSjdOR3daV2MwUXFhMWNxQmtsVGZFZHorT0dPRnZ0K2kzaVlyS1huRWw0?=
 =?utf-8?B?enZGYk90cmljUDZIM2FvbkRoK1dOYnExa1FFeG1yYVlEdmFaYjhKV0ZjdEZq?=
 =?utf-8?B?cEFsVWRXQmUxU040Uzlqa2FpN3MzR3JmTVQzTGpoNmxtN0MvQ3VYYUlubHZI?=
 =?utf-8?B?aEFZTzlmWW1kL0VRZCtsSzJCZ29OcWNpNUx0M3hPTFF4QnNRekhXN1RaRmVX?=
 =?utf-8?B?Q2NET3NGeWlpVHdjektWWHF2STdqRklGT1dacG95ZVkyTUtMRVowSjJmb2k5?=
 =?utf-8?B?Z1h4N3pBb1lFWm5PS0dXTU5DcHphQzA2SlVEdXd5WFhXQ2hkZEhxblFJSzNY?=
 =?utf-8?B?cnl0eU1lTUVvYTlJdUpvVU5RMk1wWGphdFBCWldPWDVpL0x1Smx1d2tTRVpx?=
 =?utf-8?B?Q3QvOC9CTy9HUVplUlVzQ0lGUEVhN0V3Sm05Q05XMmYvOGdxVllSOEx5VGhK?=
 =?utf-8?B?WGtPUURESGpjeGdMSW5RNkc4bU5WeUNnSEx1SFNleGlOVmcrVm1qbWFZMExG?=
 =?utf-8?B?WWtIVkJhem5VMkliY3dYYytZa0ZPUlYrY3JxOXJuM2dqLzZwaGQzZ25xZEZ5?=
 =?utf-8?B?VVFycTAyTjRNbmd6Szgwb083MHpPV0lJOXEvSURiNWl1QkllbW9Idi9MRHBs?=
 =?utf-8?B?cTQ5VVpraDNsUTBkNG1iZVdhVHFlNDhlQjJNLzhBZGFieUxpNjdjOTJ4MEVL?=
 =?utf-8?B?WEtpZ0NiV2E5ZUlVOVFWMzZxQ3lTRVU0WWxEbkEvN3RoZU1GOXZmRmcwL0xV?=
 =?utf-8?B?NnpJTUR1OGRveXVpRkxnaWVFVTZtOUcwQlBDTDZCNTRpd3ltR3lDQWlrUkls?=
 =?utf-8?Q?oaFQTYKESuwrlTsMpiXd2MsbOB8WtZKh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2dPSnRmZi9QdG1jN3pWczRnbjZSNjlWTnc3Y0IvTzdBNFhwVS9qQllDQWdG?=
 =?utf-8?B?cXgvWFU5MmhYdWpLQXBFQ1k1VTlPOHoyMlE3OFZ6TkVudzhBOW9vcFc1dWlN?=
 =?utf-8?B?cEQyQk9selA4UkFpem5TR01yLzAvcXZLalllcnhQa1BSOXk0cjVOUGxPSHoz?=
 =?utf-8?B?cE5zWmdQZFVab3ZraVVmaHZyaExtK3RTcWlGcUVTYWZTd2x6V2c3QStWSlEy?=
 =?utf-8?B?M3NrVHlGVUhaNWM5blhTU3BqbUpTN2N2QkJCR0lmYW9MNFB0bzJoakF1M0Vn?=
 =?utf-8?B?VGpxMWNCOU1OQnN1b0RvbTZ0SkdDSmlKUi9ETVVxdkxoVGlVS3lGRnllNWU1?=
 =?utf-8?B?ZUtKRThNZ0ZkQjNZMU11QmVEc2tQcnlXZVcyYlZQOWg3MENGZjJLRDZXU2VM?=
 =?utf-8?B?Z1lFWnA2c1BTbmJJRjg2Q0QyRTlHRzU4RVlTYzNheGhvbWVSTW1QYzlVSm1r?=
 =?utf-8?B?Ykx4T25SRWtDUjlQTTlESnM2cWFYaDlHNlZhMDR2U1NCY0xzRnFaQjRZdE9X?=
 =?utf-8?B?UXZ2NDFBdWF0Wm91bjVJM3VEY1ZUejZtUGtVb1VCT3ByN3NwNklMVkFnelJL?=
 =?utf-8?B?eUlMbnJNQkdEcUVtVG9QUFRZMVdyejhxeTY4dUJpRENTclovekRLcEhoOW55?=
 =?utf-8?B?ZFU4Z21XMC9aTHI2eGdwNHZDMVhVNzJoMnBHU2FubHdCVTFtekRMSGdNaC83?=
 =?utf-8?B?aVRKTEJRczN3akVRTlpiVFh0bWMrMXU5VEtpZ1NDeVdzeVhsSXNiUFoxSjVj?=
 =?utf-8?B?d0t4aEFrZEJlVXFEMGxoV2poWFJzRXNqdlZ4NkRwM01UQUNqVm1FdTlHTkFL?=
 =?utf-8?B?MVBrWHNJMU8xTEtSMEhGL1FoaVNtbUtuYTZZNmprYXhLTlRCOFpkNnZPbDYr?=
 =?utf-8?B?Y0lEUVVleHVwdGRBSi84b2dIMmJZb0hUM0RUQmI4bFRHWWhxbmlaOUJTaFdE?=
 =?utf-8?B?cjNEY3o3VUUzN3pvbWt5blpVblRLeGJhQmZFSUhLQ2xJSkNySWRVemZTc0NI?=
 =?utf-8?B?NXdCZG5yTmZiSVFwRXBZZ3F3eVpxQnd0QWFvaHRPNUxJV1FtNUlJTkhTTFRo?=
 =?utf-8?B?NkZNOXNjMUFGMTdOREZTYlU2ZldjSEZkdk5YNzgyZHc4R3RvRzlwQUowRlVT?=
 =?utf-8?B?YUJ2RXJvK3F5UG1RNm4wdEJFY0gwNEpVYnYxYkhONzJMU2tFN3lueHVmTS9H?=
 =?utf-8?B?MXo2bDk1Ykg4UEloUnZXZWRzbWZiZHJuUjdKK2pkS1VxYSs5YzlkNk8xZURM?=
 =?utf-8?B?RVVCK0JaclBOMlgvalFZSHZEdnRSWUtrbmFUNFNNSFRJNlhTaTNXNW4ralN0?=
 =?utf-8?B?bGFFUmdMRkFmZWpjRUQ0b0ZQdUpFVkVvZWYyM1RqSzd1a3ZRS2FVK1N4Slgy?=
 =?utf-8?B?cnJZOXBpY3VXZ2YreEhtSVkrWHRES3plUTNyNDcxYnRFY1ZFdHRnVDFIM3Rs?=
 =?utf-8?B?QmRqVG1zRmNrVDBHUVJTSUdsckhSU05GcTNHN1paTFBNcmxJK2hxbVY5RzNj?=
 =?utf-8?B?SSt2cGtTUWRneFdmYTl2SVhpcjFyQ2k5WkFJS3IxbjV3enpvWEFPTC9pZEQv?=
 =?utf-8?B?VVBIWHFGenJmcUpodWx2VkRybVoxcEcxNG9ZNDdMQ21KQVNKL1M0amNWRGRv?=
 =?utf-8?B?anhkU01BOTlLWTVxcE02SXR6RzdMOHVjU3grTzYrVUZvclFXOUkrVjg4NWpx?=
 =?utf-8?B?bUFXaFlQUFNNZlVsV2s0d2pmTHFsb2dWSkVtVmpudVNMYVdsQzhNUXFNV0lJ?=
 =?utf-8?B?OUExTHZkTk5TVWJTM1BkYS9TdmVRTXVGWHRsQjFiTUIrbnNMazB3eTlWR1di?=
 =?utf-8?B?c3V3MWdOcXlFQUp6ZkkrZjdydkpEdGFRZWExS1RWRFE4OEs1YlBNUXoxc0lj?=
 =?utf-8?B?cEJ5Z0Y1S1FjYXg1azBuUHo4VUFTcUZpd25VcjA1ZnMxTFUvREhMTDUvZ1Fh?=
 =?utf-8?B?ZG1BYTNKUEN3c2hGd2ovSWdRVzhvWHExNisveGpvL3ZyNmttVWh5RGM1b3dQ?=
 =?utf-8?B?dFhERFJDT3RTcFJxTERWemR0dU9McEYxYzBxWW5RaVk1RU9LSWpNZDZuQlFZ?=
 =?utf-8?B?Q3pHZDlxVG5Mc3c2SzdzMTFySWNYRHBIRWk1TEFVY2Iyek5zYUEySXp1cld0?=
 =?utf-8?B?NzFCWGQ1VmRaQXlKc3pzVWZqM2hFcm5Qd3NibTA1R3NxRDNQQWtGaFQzQnc0?=
 =?utf-8?B?aFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b20c63d3-a73b-4314-67af-08de0ff63431
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2025 16:32:04.7052 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rlwy8/icgPrDlfxqNsGWCB64+ysOERrBpad8KRbRGJROx7RAAdrW+Rq9NJRBSwz3kIiyYiHBuUGeQhG8zgVudQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7134
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

Quoting Dnyaneshwar Bhadane (2025-10-16 10:15:17-03:00)
>Load the DMC for Xe3LPD for display version 3002.
>

I think it would be better to use the dotted syntax for the IP version
in commit messages, i.e. 30.02. I'll reword the commit message and
apply.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 10 +++++++---
> 1 file changed, 7 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i9=
15/display/intel_dmc.c
>index 77a0199f9ea5..f3f10f97a573 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -127,6 +127,9 @@ static bool dmc_firmware_param_disabled(struct intel_d=
isplay *display)
> #define DISPLAY_VER13_DMC_MAX_FW_SIZE        0x20000
> #define DISPLAY_VER12_DMC_MAX_FW_SIZE        ICL_DMC_MAX_FW_SIZE
>=20
>+#define XE3LPD_3002_DMC_PATH                DMC_PATH(xe3lpd_3002)
>+MODULE_FIRMWARE(XE3LPD_3002_DMC_PATH);
>+
> #define XE3LPD_DMC_PATH                        DMC_PATH(xe3lpd)
> MODULE_FIRMWARE(XE3LPD_DMC_PATH);
>=20
>@@ -183,9 +186,10 @@ static const char *dmc_firmware_default(struct intel_=
display *display, u32 *size
> {
>         const char *fw_path =3D NULL;
>         u32 max_fw_size =3D 0;
>-
>-        if (DISPLAY_VERx100(display) =3D=3D 3002 ||
>-            DISPLAY_VERx100(display) =3D=3D 3000) {
>+        if (DISPLAY_VERx100(display) =3D=3D 3002) {
>+                fw_path =3D XE3LPD_3002_DMC_PATH;
>+                max_fw_size =3D XE2LPD_DMC_MAX_FW_SIZE;
>+        } else if (DISPLAY_VERx100(display) =3D=3D 3000) {
>                 fw_path =3D XE3LPD_DMC_PATH;
>                 max_fw_size =3D XE2LPD_DMC_MAX_FW_SIZE;
>         } else if (DISPLAY_VERx100(display) =3D=3D 2000) {
>--=20
>2.51.0
>
