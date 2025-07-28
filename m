Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A551AB1405D
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 18:34:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD4A510E549;
	Mon, 28 Jul 2025 16:34:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bQzP/jj8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE32210E545;
 Mon, 28 Jul 2025 16:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753720471; x=1785256471;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qwibm1wvS1fcTpGRY0fbg6IFGgFUhLu/J3QjBxe10IA=;
 b=bQzP/jj8WZ24Op/Dkw3T1/2WNo2l8ySVtuOrsHJZg6ZskPlcDcvUcehm
 8CTx32/Ailu8NmjWb6Mu2oH0pNnROuet43RTaoibjGBZKkDW+7jso62it
 q4anjOxrsLcULoPJdMxIcgOROH1CmgDJy6ksi/NyElENq+b7wnoXaN+lC
 HQ7VP43ETfXfPHVqDzbxW063n4b0rzxAS9UVLK6iSEbn4UTmYMhPqW5yf
 1KFyLN2IDCKIvTn0Yn49hdlMrZQnpgbHdFOph6Y7brPI6vZUV7SCzTRdO
 ObzlU0ATAMDUcn/LNWNw3uWx0T3nVlbkhG2SD0LWvAHENg1PYiPdOR5Nh A==;
X-CSE-ConnectionGUID: 6KEu850hQ/KHkK0m9vJX9Q==
X-CSE-MsgGUID: edWwmPRJQs6Ant9EOCz13A==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="59797415"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="59797415"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 09:34:20 -0700
X-CSE-ConnectionGUID: GCN9Lso1RAGE/MiPlys3+w==
X-CSE-MsgGUID: YGGIDla2T+aj+0DiTsZEZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="166946852"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 09:34:20 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 09:34:19 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 28 Jul 2025 09:34:19 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.49) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 09:34:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=llM8npFmHZBw/Q/1Po9HOB5narbEIkPu5qpN80UPCHoMa6pyM/7D8abDNEiWhjaJNzqyXhUyXoLRhcCQC5PKeGItZeDDDp66RgFS0k1LUMafQ7qyfgrFLuKekx6YeOwyoGEtMvqEdI/xp650WjwmemqCzTZNc1mMBi83MvyBk2OLxI1tybtqX2fNfaS5jbkoGbxU3E6aca4DYjP/tKXc64R41NUyOQH3arB4NXbWSu10GRroVW5tuDYI3nZ6Uan+9qZ/6C9+W2ernoB15oPKW2ym+WYa6wJ31ciywpFZ05SyuY96LqBHs6Ad/JtDH+/SVYV0GodlqsOCeAzZMbgkdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/sJocnTGPwOoGdeYtzcVSY1L0busOjOvIvNo1uaAdtQ=;
 b=OWU/XoA5q8QdWAqaBYGiP/U5HYKx0Emwfq5qJB42sbppo8xfwEb73RLUV3uVw0vv1IyTgOeg1Y7kU6HzT9m/wBbxVqAnE7PoiUj2gHzVedmi64O6bkFSct+WicghxNx+v7icU0ZiouIm5C2AcLLy2bOJhjacWMFigaLja9+CNNkVnkBw6E4wb4WROcyU0z5KqjU45EHxB/ggRd0MS1RXKc9uGkVQDDTkiKou1DvSp1fNcOLWLSEsAMwT03OLxq0KD4KzlgcFS8jvZefONhdNkdnJvsdXpNS4Kup4Eo1CoXgnT+G3gqFXFyUh/hToO7SU5k09xqfIRgodQscBOri03w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CO1PR11MB4898.namprd11.prod.outlook.com (2603:10b6:303:92::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Mon, 28 Jul
 2025 16:33:35 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.8964.025; Mon, 28 Jul 2025
 16:33:35 +0000
Message-ID: <8f37fcfd-300c-42df-a65b-57c10f185287@intel.com>
Date: Mon, 28 Jul 2025 22:03:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20250708)
Content-Language: en-GB
To: Damien Le Moal <dlemoal@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 <linux-ide@vger.kernel.org>, <mika.westerberg@intel.com>,
 <anshuman.gupta@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 <lucas.demarchi@intel.com>
References: <07563042-6576-41cd-9a95-de83cfc95de1@intel.com>
 <f4f147cd-5847-4efd-8dd3-9a00e129e133@kernel.org>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <f4f147cd-5847-4efd-8dd3-9a00e129e133@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0004.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:174::6) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|CO1PR11MB4898:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c121c52-8b9d-4680-d72b-08ddcdf47f97
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZnE5NnBWbkRSUnF4ZHM3YU1aKzk0UlRhc2V3N1REejhIYWk3eTF1UmthbFN3?=
 =?utf-8?B?dk1IMjhJNXBzRjI2VE4wTjZDd0NyMnNZU0dMc3BHRFgzSXFiZ2lRL0RPZU9j?=
 =?utf-8?B?Ujh5QkRMMDJDeGIwNkdxY1RxTTlvUFFZZFcwUXM2NHdpcURzam52UEpTeTBK?=
 =?utf-8?B?WXFrMkpoOEZydklKRE05dUsrWUNuaXdlQlhHNS9ZTFRlVEdueXVQamNHeDlu?=
 =?utf-8?B?L2tNaHFSKzl5QnJhWnhLcXYxSVpYNWRTY2NmSlIvRDNWYjhlbW1vMXR3SmNx?=
 =?utf-8?B?WmJEeWkyMTdNazhrVTNjblJMZlNrSC94MDBmU0VlWXlXTnBKc3M0THdyMGpr?=
 =?utf-8?B?aVN3cTE2S01uVHlDWUVmd0JVU1l0ZEpaUlluN2ZlK2RKR0JkeWltWWwvNFdQ?=
 =?utf-8?B?aktNNmxKNlRlNU94OTBTa0EvMjhEdVU0VG9GVFlOVmFlaFlCc2ZDZzQreUlU?=
 =?utf-8?B?L2o4NzVZTFNIbHFqbkZwejk0YnpROXE5NGdWZnZ0TzF4S25qZFhXVUo5a2lm?=
 =?utf-8?B?MkxaVkNCZi9NMmZXaG03NDhaL3lMMFE0Q3hrenhYOXBIM2dVMUJ6bWVMVi8x?=
 =?utf-8?B?K0txeHJoYjhJUVdUejNvRVhDeVo1S3hjanozdDAwVFA2QXNyN3RLNGZPNVQ0?=
 =?utf-8?B?YklndFM5RUl3aTVEN2pCYXAvRHNtSU1HU3UxUFNIVEpqbDhYYUdpdFNuR3RI?=
 =?utf-8?B?Q3RhejBaSHJoSnlDZno5N1NlS2Q3Q1N5azZPZTJ2dHM5ZFRjYXdYdms4WEJt?=
 =?utf-8?B?SStnOTkrOC9KVWRHaE1FSFVoOHYwNWRxUVdaNWRsOHZLNDR5Z1Evd1Zzaloz?=
 =?utf-8?B?S3c0Vkg1WVNuWmlxMGt6U3pmWDRxaTBiOGNoMWh3bEthWHpwSGpjSitsbG8y?=
 =?utf-8?B?SjlodkJTYmFDSVBIbWNlSlVWOHlaY1dLdnZBZkVySWlKQXc0QmxtWXpkVmdD?=
 =?utf-8?B?dWFnSUQvTjBOMmMwVmg3eG1Scy9UTVhZejN1TGhoUzhwTVM2cHh4ZXo2ZXhl?=
 =?utf-8?B?Y25YTEU3Tlh6bTlFQytzQk1XWkN1djdPZ1J1Zmp6U1VqM0JwT0g4NTE1N3p4?=
 =?utf-8?B?ckpkQ1c4MWIxUXZsTTZHTkxUMHBhMzFmWFgwbHBBbTRrWEhKaTI1TXBNRlFy?=
 =?utf-8?B?dGphc21mYWc4T3JLTWlMMzMvZXptOC9UZnVyMTQ5QlhONmhIV3lsZmVSaEhI?=
 =?utf-8?B?WGY4QitnbUZKdzBXbTN5MTI3VTR4Z0tPUGJpbW5uMklENlhKSkRKenZQTlJT?=
 =?utf-8?B?SHBQVGpadld1VUhjcFFVTHo4YjgvV0FER3VCMU9uZVVYcVJpVHJZaWpFcFVK?=
 =?utf-8?B?dVRIK1hzY2E4NjZYQXVYTkxWeU5HS0MwcVpwVFRWa3g1TTZ1OTBXazdmSy83?=
 =?utf-8?B?WUJZM1RIZkVSRGs1bWZrMDR6VmpLYUVOUXdPYSsyOSs0M1ZvcnA4eEJ0MlJL?=
 =?utf-8?B?eDZWSHNITzJRZGZ2RDJJUmhVeVMxOCtrOXJEVU9lRkMxck9ReGFhaTZJZ0NX?=
 =?utf-8?B?VzBQeVZMNGNPaXdOTVBYNEEvajF1dDdoZFh6Ny9oTzFlaG1vd1JNNzhRQjBy?=
 =?utf-8?B?Mi9ucHZQTEFLc0ZlRnZnc0d5cG9Ib2pLaC9uM2tHa1pTVkN1bDkzcTBIRWdx?=
 =?utf-8?B?VEh4V2IvVXFka1RTTGFVWkpSbnFjcTR4MWl5NkhWYTBaV0lUVmF6Q2NYZFZL?=
 =?utf-8?B?Tml0ZWtiWktCbFJMV2RDL3BSRVhNN21ER0pkRXVZbHJIWmJhVkV0eTVqVlZN?=
 =?utf-8?B?VEdFeHRzNjl2bS9QaldBRWJYZHNvd3NLQjV1bUYyWnBUNjQ3bFNZNVZOa3JY?=
 =?utf-8?B?QnMrWkFEZGF6V0FYU2M0R2VSVldwbld3U252NmU0dlRjS1NPQVNUQ1hzakhj?=
 =?utf-8?B?MEdlNTZxVE4zQ0lMdDBGdmZPaTBpdmNoZUlCWmVSSEx5VFFaSHRNbG9HR0Rp?=
 =?utf-8?Q?ZOn1FS9R+ak=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1Rtd1lIRzZQYW1zTGdiMmd4M2pVNlhFR1JGTzNCNUg0c3plQTY2QU9ETEdk?=
 =?utf-8?B?ckEweTY4SWpKVy96MWxET1lGNE1NQlI5WWR2N0ZlWUFFVzBEaWtSalI1ZWpo?=
 =?utf-8?B?QUpJRmdvek5zNXNRUmRJNzVYSHB6Z2NJTTJsMHlBRlV0ZVRGWkoyWXp6MW9u?=
 =?utf-8?B?dGxzOFJSN1Y3ZThPTFJ4YVhnL3lRckdEZ1dxQldqZXRvWEptTkpuUTNMNEJ5?=
 =?utf-8?B?a3RscVdYejZPRzdPK1FSYWozaTZISWhwa09kOUsvTGxqZkZtS0RodEw2Qk9i?=
 =?utf-8?B?Smh3V3FVVThXOXZRaEJuTXB4MGI1UkkvcXNweVp6UkVtYmFGS3ZRekszSWMx?=
 =?utf-8?B?OVlpZnRhb2J1LzBld0lSNlhoeG52M1J5YjRDeGMrRVV0M0kxdnZMeVNhUkps?=
 =?utf-8?B?Rm9qVVQ1cklFeUF2bmxnR1pvN2F5Y25Cd2NPNVF5KzMzclVOdWwyVjd6VzNU?=
 =?utf-8?B?cG45cVUyczNKL0E1TmxtVmlZcG5zbWR2RWxxQ0VJb3pUU0g3azZOSDdneTdO?=
 =?utf-8?B?ZmwzZzJUMFBjcWoya3YvbHRvcmc2NzdOY2VRVFo2bjJvNUJRdHFPMXVER21t?=
 =?utf-8?B?QWp0bDg2cjNOamM3N1hVdTJCaDZRN1N0ZlFhQzk4RzVkeVJnTTJNc09Dbk1S?=
 =?utf-8?B?dDhMU1IwYmFxNWlZRjAxWHdqMGxvNXlPc2J4endjRTB0cjBzbVlTajZpMDhj?=
 =?utf-8?B?MDJiaU9jMWVxZGJUSnZSbk41czJoUkEzZjRCYXBDZlNtYWpPYjE3eDdNamw1?=
 =?utf-8?B?azJWekNJc0s3MzU0YXVnNFhwcDVmemsxU21wWHBqamx0eUdaT01YSmZQanpy?=
 =?utf-8?B?dkV2ZnAzUzJ6WDBGbU0rTTQ3OUgwRVdtV1RxOEZKbUtnZy9iWWpmNkthdWJO?=
 =?utf-8?B?MU5hOEJ6SHlSTmlWMzhRQ1ZKcXBJZmRWNTdheVJ4NFRpL3NmeFJNcmdkMVZX?=
 =?utf-8?B?bVpWdUtRMU5HM3JvbFhoY0g2bTJxMS9NYzRpNHFaOGpZVEwrOFdtWkxPcG1u?=
 =?utf-8?B?Slo4Ukw3b2R6MUZ6RXhzSTQySFVvd2FJTlY0cEZnM1RKSzBHRit6WWtPanI0?=
 =?utf-8?B?OWI4QWl1RGxwbERwZXdtSWl0ZG5KRzczclc1VmwzUmVrYXhZUEREU1FPSDdL?=
 =?utf-8?B?M1VoazV0Yk5OOHNrNHZBekZIN3ZvbnAwZHZHbG40VVNWYjdsZWpSaXN4bC9s?=
 =?utf-8?B?aWpKUHB1ekZEdjVZUGRsWDBhZ2t3SlJMckhVM1ltNzIrMitCb3BkNlZwMXoz?=
 =?utf-8?B?ZEF1UUNOQmRmaUN6TUlKQmt6c3hpR0VUdVR5aFVZMGExS2JpY3FveW54VGxa?=
 =?utf-8?B?Ym1DTmdWRjJja3QxSFprUlZMZ2dqWmg3TU1pdTFOSUtyNDNLZGFndjdhenJH?=
 =?utf-8?B?cTJuK1ZwSGtNOVZnTk5IVk1kRGwxNE5pbmp3Y29mM3VJcUJYRDlKMTlEdEc4?=
 =?utf-8?B?RWFjeEVFNUZmRFJ4RkJpdStlRkVSWFF0RElwSEpvTVRaWW94RE1TVGVMK0lP?=
 =?utf-8?B?YjhzWEF3a3B5WEhUL1A3dWJzSGhGUGFXVTZQOGpqbTZ6ZFZ3cUR0TURCbE5C?=
 =?utf-8?B?NVNESTZJcERadVh4WVZxZHkxa2Nqc3JYbGNueXJEOHBwT21uY3BsNTNCMzJY?=
 =?utf-8?B?azJ0b3FFMkh5RXR3dW9lNVZLblM5SmdXK29WN3VuTVh1NDNCZzlIemoraFRu?=
 =?utf-8?B?QjFXYkhreWpReXNPbnRreXZLSlZjNWQ0S0hLczMyc0oraFBXTzhIU2Q3UHVP?=
 =?utf-8?B?YVlFY25MUndRMVVZbjlYdCtFRmN6aTFaNndNQ1hJSEhyd0dhbnpYelZmVXFB?=
 =?utf-8?B?UnJ3WWpCd0dVV3VaaVBNT2RkVnNDTFZvRjh0V0dQVW53THlXbGpkTkdMaWps?=
 =?utf-8?B?M0k1ekpWQW1abkdoaWtrNEd2Qlg3Y0E4SkF3NFZBV2hxUDJGT2VxTHdpNUw3?=
 =?utf-8?B?eis4Q1hXRi9DMUdZYTcyNVoyLzR2Y1lKelh1UlJNa1k3SWNrK2JzdzJBUXFM?=
 =?utf-8?B?Vjh0NzN0MGhSRW5ZMGxZdzN4VzJsRW4zVXNNd3IzcGpweXEwWERVRFlOTWs3?=
 =?utf-8?B?cExSM3k5Q0l4SEZ1eUQ2N1hadkVueXMwM0VDemtGbjlvQmZ6QWR3UkJrOW13?=
 =?utf-8?B?Qi82V2psczJqQ2NuakR1M2JTNEZROFVybWVjdDNRS2JMaVk3SE1WeVJIc1pF?=
 =?utf-8?Q?WsL8HGHar8siRT2VVgM5TUY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c121c52-8b9d-4680-d72b-08ddcdf47f97
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2025 16:33:35.6170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H/27ePEV2gvfYasQZ+c32K2xinSs+js2Ep23chlS/GJiKwEWA/NEQa416OBHpxRnLgAYAodjOJ9p6rK9YUvRs5RKCezHsuNVSbUh1LU3Tu0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4898
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



On 7/28/2025 11:01 AM, Damien Le Moal wrote:
> On 7/25/25 3:43 PM, Borah, Chaitanya Kumar wrote:
>> For some context in our kms_pm_rpm tests, we enable min_power policy for SATA
>> so that we can reach deep runtime power states and restore the original policy
>> after finishing. [5][6]
>>
>> IIUC, the above change is based on spec and not something which can be
>> reverted. So as I see it, we have to drop this code path for external ports.
>> However I am not sure if we can achieve deep power states without enforcing it
>> through the sysfs entry.
>>
>> Atleast for the basic-rte subtest, the test passes if we comment out the
>> functions controlling the SATA ports. We will need more testing to determine if
>> this approach work. Any thoughts on it?
>>
>> Also, are there other ways to detect a port is external other than receiving
>> EOPNOTSUPP on the sysfs write?
> 
> I completely forgot to mention one important thing: please check your test
> machine BIOS settings and see if you have "hotplug support" set to enable for
> SATA ports. If it is, set that BIOS setting to disable and you will see the
> SATA port as a regular one, not as an external port. So LPM support will be
> back and your test program will not need changes.
> 
> Not all BIOSes have such setting though. Most of the machine I have do have it
> though and I checked that it does affect how the ahci driver sees the port
> (external or regular with LPM).
> 
> 

Found a "Hot Plug" setting (thanks to Mika!) in our testing device's 
BIOS but it does not seem to have any effect.

We also have an option called "External", toggling that did not help either.

There is another configuration which was *readonly*.

"Configured as eSATA" -> "Hot Plug supported"

Not sure if it is relevant to our discussion.

Regards

Chaitanya


