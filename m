Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CB8CEDFF5
	for <lists+intel-gfx@lfdr.de>; Fri, 02 Jan 2026 08:57:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E17610E083;
	Fri,  2 Jan 2026 07:57:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cdomLeg7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 655FE10E083
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jan 2026 07:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767340648; x=1798876648;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UWSl93WQ0zg5Ath2Lzl8JdsZYxQcHbNagmxZURdWS5g=;
 b=cdomLeg7mYyg+UC7/OWSIDS5Y0VIdTZ+OIN0NECnO+8IlUbff9Ea4bZO
 xQpgUFbLLzg9WTcYxKtsU69tgYkGAGkNPnp8lMZfKM2PcBIbdaaNdhDDo
 byxp4m2kodEffJuX3E42IdtFH8WPMDf64RqgcEA/iWum/O6tAR7VKJ3/7
 LFm7/vWsO+Fru0LFK+folESAK3OMevK9/WNEFs6QVCjWXAng6iPyMrbV0
 wn6P7JOCtTzOV3oW60iltVhowEgi4Dqp7EimQtTtZApOxu6meTV94xdX3
 qSm0qAm5Y/Q5koZvDlRzarL4L358BSviWB7AUBrXPEcEVJ5pBThlhYiro w==;
X-CSE-ConnectionGUID: +I9VyEtRTNqLwOh9xqDrLg==
X-CSE-MsgGUID: XVgnbZd/SkyJcErFFnvIPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11658"; a="79957886"
X-IronPort-AV: E=Sophos;i="6.21,196,1763452800"; d="scan'208";a="79957886"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2026 23:57:28 -0800
X-CSE-ConnectionGUID: ss1rYYQNQ+68N94+B7WBhQ==
X-CSE-MsgGUID: R9cJP96NTl6KUDanZhS4+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,196,1763452800"; d="scan'208";a="206266132"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2026 23:57:28 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 1 Jan 2026 23:57:27 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 1 Jan 2026 23:57:27 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.29) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 1 Jan 2026 23:57:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ML7vAGpSX+16189yBJkkZ6L+o5QqaJJceWl0MYCb4j4a+O065XeCRKfI/GvABOguPvwm4er+Xi89VuHRyzIoByDTzTZjs65xlYesaw9BkBBor192nQM49mMOIt2l9hKHzeje5P7v7NAYg2ZtCDSiV9Gv84/UU9xGpmPH5wst4AcNoGDW9knB1Kd/4/TDmltlgu17B+hrfLiSs5sWO8eamwCPhMmvXqIydB7gGknKKCiZBn/j+kuaRoPoDDKsxog5QUcXXQYjOMr85MtRD4SrrDYDr5/NXMjFQ0cKeaanMq/gRNjCso1rPLelw+h/26eewAt/VUx7akb3uV5TSMQ1SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h9yd7Qb4VoIRSOKUdL/1/Z4jIyW2qbv68XV3jvWELvY=;
 b=N5o1lgLKU6Ec8yek/ad5jx1bCEz8YuQyX9f7lo69h2oW8NF3ZTG+6Hp6tHhVPDFSC843syyTaSaKXbD9WjZYKQwOLSWiVzrrU8elRrVxwTcjgUdPmbZxaIn3xcx0yhvI4E6xykPOlkI7AL4ZD/zkGYc6IazVruet/u8PAj/sys9s5GaPR9bmNaeHqwIJjG0zc5/qGIJtYLqalxdc2yPBRtBNVwD1YCf6ZzjrSD4MAeJbpGdtW4g6KcVP7fi33H0jQGBWJ+A0mkq9RtcWL1rBxJiNdkKuC0RmKA5OPeV75kUp3hLWW1Cka3M15pjF932qLaOC7905h+f8fZHlsvbf+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH3PPF4324011F4.namprd11.prod.outlook.com (2603:10b6:518:1::d1a) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Fri, 2 Jan
 2026 07:57:24 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9478.004; Fri, 2 Jan 2026
 07:57:24 +0000
Message-ID: <cc653a5c-5078-4c3e-bc67-21c1123ff73e@intel.com>
Date: Fri, 2 Jan 2026 13:27:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/i915/gvt: sort and group include directives
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1767180318.git.jani.nikula@intel.com>
 <c9f2b5a7367671965a7f5fa4f22b94ce9b980cfd.1767180318.git.jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <c9f2b5a7367671965a7f5fa4f22b94ce9b980cfd.1767180318.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0035.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:178::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH3PPF4324011F4:EE_
X-MS-Office365-Filtering-Correlation-Id: b9ba56ea-1cc5-4254-7efa-08de49d49098
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UFBVRE9iUlhOSmdVUmpDYm81TFVvdTdjWnJUMEo0dnhicGZ1dVdEOWlQSTAw?=
 =?utf-8?B?M1lZb3U0Q05BZVFUNG83WXA1VVllSEk0MWtsR1d2amJpaUh1WWorL2NVa3l3?=
 =?utf-8?B?T2g4bVZFU1lWWTRlSzY1TnhkT0pDOFAvSnJMVjdCcm13NlBRMVVZaGhHQVNw?=
 =?utf-8?B?R1dXWkRMd2FJbCtzS3VWYW54SUdhSzVCUCtCaDd5ZUMwTStwQ09rNDVjMDh6?=
 =?utf-8?B?cVlrb2d3TkllM1VIRjZyTWxzOEI2bDNiSW1OUGZpSkRxTFJNT003bm84eEtx?=
 =?utf-8?B?ZGJob25vZ2I2N0J1dCs0cEFMU3Z1NHJIejdSM3VIN2VHNUtNdG9NQnFtZXVB?=
 =?utf-8?B?M0ZNdCtySjlSemtSeVExWm9yeEE2Y01uRVZOUnhNU2wwWGdabFZja0hSdU1L?=
 =?utf-8?B?M3hmU1I3ZzlobzZqbjRuK0REeHdOZ1BBeE1Vb1RoUEhFOXpzS01QVEJVRU0r?=
 =?utf-8?B?MmZscXVUTSszeE93STcxbitIMEl2Q1o4KzNhcTZWMXluNnRNRzdxQ3dQUzBp?=
 =?utf-8?B?ZDFXRFBQSzN3bS9mNFAydmZFYlM0S0xNT2ZtbVJtN3VndERHSW02Q1lTYmRO?=
 =?utf-8?B?VCtqWlZPdUtQQktCZ0VuSFpnTlgyQ3FOdFA1Y1hqQk9IY01pZ3J1OWhjM3dw?=
 =?utf-8?B?WEphL1dVaG5Zb3Z0d3Q4TnZycnhyMlZGTmFtRU9zZnQ4Yk1ISTBuc2l3YStn?=
 =?utf-8?B?TjF6TzZqUWZRT21Nb2wvMENnMkxVSEprdFAzaExQREM5VG1UWDJ1RWxnbHpj?=
 =?utf-8?B?dnduYnpmeWloVkJ4TVJMVUNKTVRFd25lYmZITytyT290NWdSRlFMaGJmeDRo?=
 =?utf-8?B?dThkT1pRbmhIdmhJN2U3TXN1WG5PZi9ORElrVmZuNnQxQkhkZzRQMklFVU9o?=
 =?utf-8?B?b0tHVjlCMGRJRndtRjB5RE1WT2x3cXl5VUQ0N24zbDJUcGVLTXAzWDlqQ1FI?=
 =?utf-8?B?ZDF2KzByZTJpcU5ESmUyOWFoWDVhNDBsK0pwUVlWRGNjUjNJeWg1L2lXYmRS?=
 =?utf-8?B?T0lzL0hibm8xV1RrMjMvS3R0UlR2QkkwcHAwRWZ1c3BLYm8xOU9LZzljaENo?=
 =?utf-8?B?YVFjbXpUZXAxRjQ2eUJhL0tqK2RhbDNhSi9xay9SempleWpuSkwyZ1p2Z2FX?=
 =?utf-8?B?K0F2YVIvYXJIbXZtZjFYaUVMWG13NlBxMVlubUVtTzVuWFpBa2x1aGFlZ0RC?=
 =?utf-8?B?RFpkajAwUCtQcE9pR1ZDRWtkT3N5alZuTUJ1MUhLQUhyUmxlSFZmanFuUE5p?=
 =?utf-8?B?bFFqaC9WZGc3dmNlbnpiM01UWVhwZkdkdXpWQ1NEejV5ejZYaEY2ekRIeUtJ?=
 =?utf-8?B?RS9nVkVoY1NjTnhMaHY2ajB0aUdTZ2tOYWpreEtrUi80TnNXYnl0aXlBVGV6?=
 =?utf-8?B?SFZGaXMrdmtvR2F2YTR0akR0NitMd2EzaWViQ3JMbVMrWGZ5YTUwbmFKakdO?=
 =?utf-8?B?MmwzdUNWZ3lGaDh5eE5icERodDl5dUlsQzdiV2Nic2tXZ1p3c21MS0R4QUlO?=
 =?utf-8?B?QVN2MTdNaGxSMGROdVhubG1qak9XMlVpeEY3elkzbWw2bVdrT2w4dnplc0NY?=
 =?utf-8?B?ZUxzSjVUUmJSRTRWOU4rNW5sS25pa3BYUDFUQTZKUXgvVlQzdDdnaWFnNllm?=
 =?utf-8?B?eCs2cW5CRzVNMmFFaEo3SXp0Z0RSdmVYM1hnZVR4YnVySDYxT0ZaT0t5WVhE?=
 =?utf-8?B?elJpNjNqelBrYTZMOEk1cDJxSCtxeCs1eXVqeG5Cb3pxcmMvL0M1VXVheVNM?=
 =?utf-8?B?aE5ZRDBRSncyUjRqTkwxMmlhMHdvcE4xTkk2TDVBeFZvWnpacFJRTXo3RmFo?=
 =?utf-8?B?NTd4MzlGUElYSEN1cXl3SmdlMEkvc2REU2I5Mk1DdU5wM2lkdHVTN2FhbkQw?=
 =?utf-8?B?VXdBWUFjaFZWTm81R2p5ZkoxYi9yRlJrY0c5Z3loM0ZvdWdRKzFldGFRMzha?=
 =?utf-8?Q?REl0zmJX3mUq58vLFJwFO/ETam144rkO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkxmTS84WTRFdjgrVlJNWUlPdEJ3MEdjbE1aREJPREczL0Y3ZXMyYmErSkRZ?=
 =?utf-8?B?UVZLd1Q2SVA0Tjc3Snc3K3MvOE9CaUdON1JCQnpqU01BMHg5bmNyVmpNRlNZ?=
 =?utf-8?B?MEMzVjJjbHVTVnJCSC9vTlRpSmxaeGt4OE9aQjRuOUR2VkplVm5yTVVzYVpk?=
 =?utf-8?B?UG5wMTlUcEVVRWU2QnBZVW1hcmprdVhMOS91Y04zSm9sOWw1eDR1VDB4UGRj?=
 =?utf-8?B?ZUVQeEhjaThHbUoweW5icGdQMTluMnhnMmZRM1V4VmEyU2tHWUxlMTBrS2w0?=
 =?utf-8?B?ZTJoYVd5SGRVa0xQVVR5MnhLbWdoL1d5aDVOQVRSN0NLTEt6aUxvVktiY0xh?=
 =?utf-8?B?TURwNHZiM2ZiMjFBQzY5MmJUcHRxYUd1VVRjOFhOVWc0N3UwWDZYM013VDBJ?=
 =?utf-8?B?MUVPaDZSQmprN1NUMnZabmRwSTJ0d1pMbDJLb2VmWjExMFVlTXg5d3ZyMlB0?=
 =?utf-8?B?UmFFYXRWTU0rT2M1cXFCb1ZVTEFFOVN4dWRTbFpUMElUUEQ4R1ZXY2dUOUlx?=
 =?utf-8?B?b01CaFpYaDdDSlkzR1N4anpjb1FUMUxWdGRYN3J4M0FTU08zR2hBSWRsUWdv?=
 =?utf-8?B?b2VlVlNOSStENVN0aFR1SzBzT24wenV4L0RHUmJ5Mm9nbUk1cWdxVEMyZDBI?=
 =?utf-8?B?M3o2bGJCb04wdTBTamRDNGh3bEV1aHI0MEdWRy9LZmlUend3QTNMVHhLdjRn?=
 =?utf-8?B?WVplY1N3RVFPSlJKUjVoRXVXTlE3YTlBcVRZcEMxRTJmWitTeXVnaUVrWEhU?=
 =?utf-8?B?Tlc1dy9JZHUvbFNUMm5Dc3VSdU5WdlRpU0R4UDBMaXFoekp2Ky9BVUNSUVJJ?=
 =?utf-8?B?bG14RHl4U3JVUkRGRjYvVnM2K1pxRHJQTkk5eWVrT2dUWDErRjI0L0pNOG5L?=
 =?utf-8?B?Qmh0d1JaS2tyZE1pWkprbmRSZ1FZMkJ0Zmw3R3lUdEREdjRZZUp2VWtsWG5L?=
 =?utf-8?B?VkJsaHRXTnZCUzBXd3VHRVJ6NTlFOXlGYTAyU3FCeExmTGIxRVlrVFJsWE5T?=
 =?utf-8?B?RFF5Q1Q3MXkvMTR2SXNrY01aL2ZVcVFqVWVYNmNjZjg1K1ZxNXJCTERmZm1M?=
 =?utf-8?B?QzBuM2JSYzZmT2w4RWd2NXRWTUk4MzcyZ29iV3ZOcGl3azdrd1M3YXBDM3My?=
 =?utf-8?B?dGhjNExHdnQ4MGNmUGJ2NGZIditGRE5GWXl5MkZhZnNhekFyWkZJMnkvUTZz?=
 =?utf-8?B?K3F1SDl4bjFmVmRVYkJXdVY0ZGw5cm92UmR2OVhEbGh5TG9ZbXhWdGNoajRn?=
 =?utf-8?B?RWdiWXVNckZzR2N4TmlRdzU3SktEZlpnVTNVdWM1ZnNnZ1VqNnFYbjdkLzdo?=
 =?utf-8?B?ajB2b1dHUEk4QUVIQUNQRUl3R1ErSlFRT1M3M2hOVk9uTjhvOGtMQUJmYkl5?=
 =?utf-8?B?d3JYb3ljYnVuWklaV3pwaWNrWUpDVDFneWY2bXdXamNTaEZPMUVYcWlUYnYz?=
 =?utf-8?B?eFRLTS8vTTVpQWhzcm1NdmduRXkyQW5Ib3dqMy9Fd1ZWWExCbWc3anRuKzRU?=
 =?utf-8?B?L0FzRzEwdVFMdGh4eEgwTUNTTFVnUWZySGhpU3lBakMvWnRqdUVFZ25mUmpG?=
 =?utf-8?B?WmhVRlVRaXpGYkd4eWtMeS9kakkrQ2IraE41RDNhWWJkK0szM2ZlQUExcWxY?=
 =?utf-8?B?VWxxR2JRby91RnMrUjI0UjFjemVCV2xEMFBld1VHTFV2VGY1STFVa1ErR3JI?=
 =?utf-8?B?bGJMcVdKWU00Tm92V2ljbEJ2bEdnSERLS1ZJUEdpdjRSYy96YVZVM0psWW04?=
 =?utf-8?B?SUxrMFlaWWlnSHlTVlJPU3RHS2ZEU2NNZDlEMGFTSnR0N2hKRUkxTVc0RUYy?=
 =?utf-8?B?Vm9HdldNZm5SZnJKNUdscTVsaEpsSUlUc050ZTI4RXZhKzh0Q09uYWR1NmN4?=
 =?utf-8?B?VnNkVS9aU0VBd1N5T0MweUZqVlREN0JmTVAzbEFqSGhMc2FreGRHWHA4Ykly?=
 =?utf-8?B?Q0F0YTBMaFNpdy9CT1VKd0RKbVFkVm9xdjkyOEZ6Q3J3aFd3djRFYlEyUU5T?=
 =?utf-8?B?SVhJa29BSmt0UmU4THd0NSt3ZUlZNjBNTFJrNFRzZWM2OGRReUF6OTliNm5N?=
 =?utf-8?B?RG1hTVpQaHFpMkpuWWhCR0JDdEtPa0N6WDZLekJKaU00V3hYK0ZjMk54WG5x?=
 =?utf-8?B?ZEEyL2RKTVFlRmhZbTVMeDdydXdwcWQzb0tUVWtpZTU5OWRFY3VzclRFRVhU?=
 =?utf-8?B?NnZESHJ1Q2lqNk5MUUYxSmZNNUowRWpxZkxKYWluZ2thdWdaQTE2eVZLYzhM?=
 =?utf-8?B?cm5DUU9HQzk1TXhLMmpGZjRFV1JVejVWMHB5UGhja2R5WVpzYmMvZG5XMjR4?=
 =?utf-8?B?RjVYbmJOREJURlBycUhVYWlmRkJ1WGV4TnQybGRNWGNtZkJtUCt5RUJuYkhl?=
 =?utf-8?Q?ss66r/3OyFIfcc5o=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9ba56ea-1cc5-4254-7efa-08de49d49098
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2026 07:57:24.2810 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ItOkmq6YW1WO/Aa+cHeyjcFwPt/kyxGkIuSShb0lMze3b1LZ0Q+vyuvVTwpwIoWwWuxkjBbRlgjqDR8QqL5vf0bCuavYJlCP+E3KdG5+5tY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF4324011F4
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


On 12/31/2025 4:56 PM, Jani Nikula wrote:
> The include directives are a bit of a mess in gvt. Sort and group them
> to make them easier to deal with.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/gvt/aperture_gm.c      |  5 +++--
>   drivers/gpu/drm/i915/gvt/cfg_space.c        |  2 +-
>   drivers/gpu/drm/i915/gvt/cmd_parser.c       | 22 +++++++++++---------
>   drivers/gpu/drm/i915/gvt/debugfs.c          |  4 +++-
>   drivers/gpu/drm/i915/gvt/display.c          | 12 +++++------
>   drivers/gpu/drm/i915/gvt/display.h          |  2 +-
>   drivers/gpu/drm/i915/gvt/dmabuf.c           |  6 +++---
>   drivers/gpu/drm/i915/gvt/dmabuf.h           |  1 +
>   drivers/gpu/drm/i915/gvt/edid.c             |  1 +
>   drivers/gpu/drm/i915/gvt/execlist.c         |  2 +-
>   drivers/gpu/drm/i915/gvt/fb_decoder.c       | 12 +++++------
>   drivers/gpu/drm/i915/gvt/firmware.c         |  4 ++--
>   drivers/gpu/drm/i915/gvt/gtt.c              |  9 ++++----
>   drivers/gpu/drm/i915/gvt/gvt.h              | 23 ++++++++++-----------
>   drivers/gpu/drm/i915/gvt/handlers.c         | 17 ++++++++-------
>   drivers/gpu/drm/i915/gvt/interrupt.c        |  5 +++--
>   drivers/gpu/drm/i915/gvt/kvmgt.c            | 17 +++++++--------
>   drivers/gpu/drm/i915/gvt/mmio.c             | 11 +++++-----
>   drivers/gpu/drm/i915/gvt/opregion.c         |  3 ++-
>   drivers/gpu/drm/i915/gvt/page_track.c       |  3 ++-
>   drivers/gpu/drm/i915/gvt/sched_policy.c     |  2 +-
>   drivers/gpu/drm/i915/gvt/scheduler.c        |  3 ++-
>   drivers/gpu/drm/i915/gvt/trace.h            |  2 +-
>   drivers/gpu/drm/i915/gvt/trace_points.c     |  2 ++
>   drivers/gpu/drm/i915/gvt/vgpu.c             |  5 +++--
>   drivers/gpu/drm/i915/intel_gvt.c            | 11 ++++++----
>   drivers/gpu/drm/i915/intel_gvt_mmio_table.c |  4 +++-
>   27 files changed, 106 insertions(+), 84 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gvt/aperture_gm.c b/drivers/gpu/drm/i915/gvt/aperture_gm.c
> index 8cc6e712b0f7..253b41789be9 100644
> --- a/drivers/gpu/drm/i915/gvt/aperture_gm.c
> +++ b/drivers/gpu/drm/i915/gvt/aperture_gm.c
> @@ -36,10 +36,11 @@
>   
>   #include <drm/drm_print.h>
>   
> -#include "i915_drv.h"
> -#include "i915_reg.h"
>   #include "gt/intel_ggtt_fencing.h"
> +
>   #include "gvt.h"
> +#include "i915_drv.h"
> +#include "i915_reg.h"
>   
>   static int alloc_gm(struct intel_vgpu *vgpu, bool high_gm)
>   {
> diff --git a/drivers/gpu/drm/i915/gvt/cfg_space.c b/drivers/gpu/drm/i915/gvt/cfg_space.c
> index 295a7b5e1d7c..1937e04d3791 100644
> --- a/drivers/gpu/drm/i915/gvt/cfg_space.c
> +++ b/drivers/gpu/drm/i915/gvt/cfg_space.c
> @@ -33,8 +33,8 @@
>   
>   #include <drm/drm_print.h>
>   
> -#include "i915_drv.h"
>   #include "gvt.h"
> +#include "i915_drv.h"
>   #include "intel_pci_config.h"
>   
>   enum {
> diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> index e5301733f4e4..bf7c3d3f5f8a 100644
> --- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
> +++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> @@ -38,27 +38,29 @@
>   
>   #include <drm/drm_print.h>
>   
> -#include "i915_drv.h"
> -#include "i915_reg.h"
> +#include "display/i9xx_plane_regs.h"
>   #include "display/intel_display_regs.h"
> +#include "display/intel_sprite_regs.h"
> +
> +#include "gem/i915_gem_context.h"
> +#include "gem/i915_gem_pm.h"
> +
> +#include "gt/intel_context.h"
>   #include "gt/intel_engine_regs.h"
>   #include "gt/intel_gpu_commands.h"
>   #include "gt/intel_gt_regs.h"
> +#include "gt/intel_gt_requests.h"
>   #include "gt/intel_lrc.h"
>   #include "gt/intel_ring.h"
> -#include "gt/intel_gt_requests.h"
>   #include "gt/shmem_utils.h"
> +
> +#include "display_helpers.h"
>   #include "gvt.h"
> +#include "i915_drv.h"
>   #include "i915_pvinfo.h"
> +#include "i915_reg.h"
>   #include "trace.h"
>   
> -#include "display/i9xx_plane_regs.h"
> -#include "display/intel_sprite_regs.h"
> -#include "gem/i915_gem_context.h"
> -#include "gem/i915_gem_pm.h"
> -#include "gt/intel_context.h"
> -#include "display_helpers.h"
> -
>   #define INVALID_OP    (~0U)
>   
>   #define OP_LEN_MI           9
> diff --git a/drivers/gpu/drm/i915/gvt/debugfs.c b/drivers/gpu/drm/i915/gvt/debugfs.c
> index 415422b5943c..ae3fd2c3cd23 100644
> --- a/drivers/gpu/drm/i915/gvt/debugfs.c
> +++ b/drivers/gpu/drm/i915/gvt/debugfs.c
> @@ -20,10 +20,12 @@
>    * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
>    * SOFTWARE.
>    */
> +
>   #include <linux/debugfs.h>
>   #include <linux/list_sort.h>
> -#include "i915_drv.h"
> +
>   #include "gvt.h"
> +#include "i915_drv.h"
>   
>   struct mmio_diff_param {
>   	struct intel_vgpu *vgpu;
> diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
> index f230b07a12ae..21341842c0a9 100644
> --- a/drivers/gpu/drm/i915/gvt/display.c
> +++ b/drivers/gpu/drm/i915/gvt/display.c
> @@ -35,21 +35,21 @@
>   #include <drm/display/drm_dp.h>
>   #include <drm/drm_print.h>
>   
> -#include "i915_drv.h"
> -#include "i915_reg.h"
> -#include "display/intel_display_regs.h"
> -#include "gvt.h"
> -
>   #include "display/bxt_dpio_phy_regs.h"
>   #include "display/i9xx_plane_regs.h"
>   #include "display/intel_crt_regs.h"
>   #include "display/intel_cursor_regs.h"
>   #include "display/intel_display.h"
> -#include "display_helpers.h"
> +#include "display/intel_display_regs.h"
>   #include "display/intel_dpio_phy.h"
>   #include "display/intel_dpll_mgr.h"
>   #include "display/intel_sprite_regs.h"
>   
> +#include "display_helpers.h"
> +#include "gvt.h"
> +#include "i915_drv.h"
> +#include "i915_reg.h"
> +
>   static int get_edp_pipe(struct intel_vgpu *vgpu)
>   {
>   	u32 data = vgpu_vreg(vgpu, _TRANS_DDI_FUNC_CTL_EDP);
> diff --git a/drivers/gpu/drm/i915/gvt/display.h b/drivers/gpu/drm/i915/gvt/display.h
> index bc7f05f9a271..41a3b053663a 100644
> --- a/drivers/gpu/drm/i915/gvt/display.h
> +++ b/drivers/gpu/drm/i915/gvt/display.h
> @@ -35,8 +35,8 @@
>   #ifndef _GVT_DISPLAY_H_
>   #define _GVT_DISPLAY_H_
>   
> -#include <linux/types.h>
>   #include <linux/hrtimer.h>
> +#include <linux/types.h>
>   
>   struct intel_gvt;
>   struct intel_vgpu;
> diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.c b/drivers/gpu/drm/i915/gvt/dmabuf.c
> index 92506c80322d..8e76869b352c 100644
> --- a/drivers/gpu/drm/i915/gvt/dmabuf.c
> +++ b/drivers/gpu/drm/i915/gvt/dmabuf.c
> @@ -35,12 +35,12 @@
>   #include <drm/drm_plane.h>
>   #include <drm/drm_print.h>
>   
> +#include "display/skl_universal_plane_regs.h"
> +
>   #include "gem/i915_gem_dmabuf.h"
>   
> -#include "i915_drv.h"
>   #include "gvt.h"
> -
> -#include "display/skl_universal_plane_regs.h"
> +#include "i915_drv.h"
>   
>   #define GEN8_DECODE_PTE(pte) (pte & GENMASK_ULL(63, 12))
>   
> diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.h b/drivers/gpu/drm/i915/gvt/dmabuf.h
> index 3dcdb6570eda..06445e1cf3cf 100644
> --- a/drivers/gpu/drm/i915/gvt/dmabuf.h
> +++ b/drivers/gpu/drm/i915/gvt/dmabuf.h
> @@ -30,6 +30,7 @@
>   
>   #ifndef _GVT_DMABUF_H_
>   #define _GVT_DMABUF_H_
> +
>   #include <linux/vfio.h>
>   
>   struct intel_vgpu_fb_info {
> diff --git a/drivers/gpu/drm/i915/gvt/edid.c b/drivers/gpu/drm/i915/gvt/edid.c
> index 30e414381af3..021afff1cd5d 100644
> --- a/drivers/gpu/drm/i915/gvt/edid.c
> +++ b/drivers/gpu/drm/i915/gvt/edid.c
> @@ -38,6 +38,7 @@
>   #include "display/intel_dp_aux_regs.h"
>   #include "display/intel_gmbus.h"
>   #include "display/intel_gmbus_regs.h"
> +
>   #include "gvt.h"
>   #include "i915_drv.h"
>   #include "i915_reg.h"
> diff --git a/drivers/gpu/drm/i915/gvt/execlist.c b/drivers/gpu/drm/i915/gvt/execlist.c
> index 274c6ef42400..29147a9f162e 100644
> --- a/drivers/gpu/drm/i915/gvt/execlist.c
> +++ b/drivers/gpu/drm/i915/gvt/execlist.c
> @@ -32,8 +32,8 @@
>    *
>    */
>   
> -#include "i915_drv.h"
>   #include "gvt.h"
> +#include "i915_drv.h"
>   
>   #define _EL_OFFSET_STATUS       0x234
>   #define _EL_OFFSET_STATUS_BUF   0x370
> diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
> index 3d1a7e5c8cd3..d7abf38df532 100644
> --- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
> +++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
> @@ -35,17 +35,17 @@
>   
>   #include <uapi/drm/drm_fourcc.h>
>   
> -#include "gvt.h"
> -#include "i915_drv.h"
> -#include "i915_pvinfo.h"
> -#include "i915_reg.h"
> -#include "display/intel_display_regs.h"
> -
>   #include "display/i9xx_plane_regs.h"
>   #include "display/intel_cursor_regs.h"
> +#include "display/intel_display_regs.h"
>   #include "display/intel_sprite_regs.h"
>   #include "display/skl_universal_plane_regs.h"
> +
>   #include "display_helpers.h"
> +#include "gvt.h"
> +#include "i915_drv.h"
> +#include "i915_pvinfo.h"
> +#include "i915_reg.h"
>   
>   #define PRIMARY_FORMAT_NUM	16
>   struct pixel_format {
> diff --git a/drivers/gpu/drm/i915/gvt/firmware.c b/drivers/gpu/drm/i915/gvt/firmware.c
> index 221a3ae81baf..e452298991be 100644
> --- a/drivers/gpu/drm/i915/gvt/firmware.c
> +++ b/drivers/gpu/drm/i915/gvt/firmware.c
> @@ -28,12 +28,12 @@
>    *
>    */
>   
> -#include <linux/firmware.h>
>   #include <linux/crc32.h>
> +#include <linux/firmware.h>
>   #include <linux/vmalloc.h>
>   
> -#include "i915_drv.h"
>   #include "gvt.h"
> +#include "i915_drv.h"
>   #include "i915_pvinfo.h"
>   
>   #define FIRMWARE_VERSION (0x0)
> diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
> index 076d9139edc6..49028e7ef1e0 100644
> --- a/drivers/gpu/drm/i915/gvt/gtt.c
> +++ b/drivers/gpu/drm/i915/gvt/gtt.c
> @@ -33,16 +33,17 @@
>    *
>    */
>   
> +#include <linux/vmalloc.h>
> +
>   #include <drm/drm_print.h>
>   
> -#include "i915_drv.h"
> +#include "gt/intel_gt_regs.h"
> +
>   #include "gvt.h"
> +#include "i915_drv.h"
>   #include "i915_pvinfo.h"
>   #include "trace.h"
>   
> -#include "gt/intel_gt_regs.h"
> -#include <linux/vmalloc.h>
> -
>   #if defined(VERBOSE_DEBUG)
>   #define gvt_vdbg_mm(fmt, args...) gvt_dbg_mm(fmt, ##args)
>   #else
> diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
> index 1d10c16e6465..965d94610d56 100644
> --- a/drivers/gpu/drm/i915/gvt/gvt.h
> +++ b/drivers/gpu/drm/i915/gvt/gvt.h
> @@ -34,29 +34,28 @@
>   #define _GVT_H_
>   
>   #include <uapi/linux/pci_regs.h>
> -#include <linux/vfio.h>
>   #include <linux/mdev.h>
> -
> +#include <linux/vfio.h>
>   #include <asm/kvm_page_track.h>
>   
>   #include "gt/intel_gt.h"
> -#include "intel_gvt.h"
>   
> +#include "cmd_parser.h"
>   #include "debug.h"
> -#include "mmio.h"
> -#include "reg.h"
> -#include "interrupt.h"
> -#include "gtt.h"
>   #include "display.h"
> +#include "dmabuf.h"
>   #include "edid.h"
>   #include "execlist.h"
> -#include "scheduler.h"
> -#include "sched_policy.h"
> -#include "mmio_context.h"
> -#include "cmd_parser.h"
>   #include "fb_decoder.h"
> -#include "dmabuf.h"
> +#include "gtt.h"
> +#include "intel_gvt.h"
> +#include "interrupt.h"
> +#include "mmio.h"
> +#include "mmio_context.h"
>   #include "page_track.h"
> +#include "reg.h"
> +#include "sched_policy.h"
> +#include "scheduler.h"
>   
>   #define GVT_MAX_VGPU 8
>   
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index 7063d3c77562..04cfe0997cde 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -36,19 +36,16 @@
>   
>    */
>   
> +#include <linux/vmalloc.h>
> +
>   #include <drm/display/drm_dp.h>
>   #include <drm/drm_print.h>
>   
> -#include "i915_drv.h"
> -#include "i915_reg.h"
> -#include "display/intel_display_regs.h"
> -#include "gvt.h"
> -#include "i915_pvinfo.h"
> -#include "intel_mchbar_regs.h"
>   #include "display/bxt_dpio_phy_regs.h"
>   #include "display/i9xx_plane_regs.h"
>   #include "display/intel_crt_regs.h"
>   #include "display/intel_cursor_regs.h"
> +#include "display/intel_display_regs.h"
>   #include "display/intel_display_types.h"
>   #include "display/intel_dmc_regs.h"
>   #include "display/intel_dp_aux_regs.h"
> @@ -63,9 +60,15 @@
>   #include "display/skl_universal_plane_regs.h"
>   #include "display/skl_watermark_regs.h"
>   #include "display/vlv_dsi_pll_regs.h"
> +
>   #include "gt/intel_gt_regs.h"
> -#include <linux/vmalloc.h>
> +
>   #include "display_helpers.h"
> +#include "gvt.h"
> +#include "i915_drv.h"
> +#include "i915_pvinfo.h"
> +#include "i915_reg.h"
> +#include "intel_mchbar_regs.h"
>   
>   /* XXX FIXME i915 has changed PP_XXX definition */
>   #define PCH_PP_STATUS  _MMIO(0xc7200)
> diff --git a/drivers/gpu/drm/i915/gvt/interrupt.c b/drivers/gpu/drm/i915/gvt/interrupt.c
> index 3e66269bc4ee..91d22b1c62e2 100644
> --- a/drivers/gpu/drm/i915/gvt/interrupt.c
> +++ b/drivers/gpu/drm/i915/gvt/interrupt.c
> @@ -33,10 +33,11 @@
>   
>   #include <drm/drm_print.h>
>   
> -#include "i915_drv.h"
> -#include "i915_reg.h"
>   #include "display/intel_display_regs.h"
> +
>   #include "gvt.h"
> +#include "i915_drv.h"
> +#include "i915_reg.h"
>   #include "trace.h"
>   
>   struct intel_gvt_irq_info {
> diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
> index 3abc9206f1a8..b3739c9fcc48 100644
> --- a/drivers/gpu/drm/i915/gvt/kvmgt.c
> +++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
> @@ -33,26 +33,25 @@
>    *    Zhi Wang <zhi.a.wang@intel.com>
>    */
>   
> +#include <linux/debugfs.h>
> +#include <linux/eventfd.h>
>   #include <linux/init.h>
> -#include <linux/mm.h>
>   #include <linux/kthread.h>
> -#include <linux/sched/mm.h>
> -#include <linux/types.h>
>   #include <linux/list.h>
> -#include <linux/rbtree.h>
> -#include <linux/spinlock.h>
> -#include <linux/eventfd.h>
>   #include <linux/mdev.h>
> -#include <linux/debugfs.h>
> -
> +#include <linux/mm.h>
>   #include <linux/nospec.h>
> +#include <linux/rbtree.h>
> +#include <linux/sched/mm.h>
> +#include <linux/spinlock.h>
> +#include <linux/types.h>
>   
>   #include <drm/drm_edid.h>
>   #include <drm/drm_print.h>
>   
> +#include "gvt.h"
>   #include "i915_drv.h"
>   #include "intel_gvt.h"
> -#include "gvt.h"
>   
>   MODULE_IMPORT_NS("DMA_BUF");
>   MODULE_IMPORT_NS("I915_GVT");
> diff --git a/drivers/gpu/drm/i915/gvt/mmio.c b/drivers/gpu/drm/i915/gvt/mmio.c
> index 214eb7effa31..9e98db2d4f67 100644
> --- a/drivers/gpu/drm/i915/gvt/mmio.c
> +++ b/drivers/gpu/drm/i915/gvt/mmio.c
> @@ -37,15 +37,16 @@
>   
>   #include <drm/drm_print.h>
>   
> -#include "i915_drv.h"
> -#include "i915_reg.h"
> -#include "display/intel_display_regs.h"
> -#include "gvt.h"
> -
>   #include "display/bxt_dpio_phy_regs.h"
> +#include "display/intel_display_regs.h"
>   #include "display/intel_dpio_phy.h"
> +
>   #include "gt/intel_gt_regs.h"
>   
> +#include "gvt.h"
> +#include "i915_drv.h"
> +#include "i915_reg.h"
> +
>   /**
>    * intel_vgpu_gpa_to_mmio_offset - translate a GPA to MMIO offset
>    * @vgpu: a vGPU
> diff --git a/drivers/gpu/drm/i915/gvt/opregion.c b/drivers/gpu/drm/i915/gvt/opregion.c
> index dbad4d853d3a..d6e76ba31d60 100644
> --- a/drivers/gpu/drm/i915/gvt/opregion.c
> +++ b/drivers/gpu/drm/i915/gvt/opregion.c
> @@ -22,8 +22,9 @@
>    */
>   
>   #include <linux/acpi.h>
> -#include "i915_drv.h"
> +
>   #include "gvt.h"
> +#include "i915_drv.h"
>   
>   /*
>    * Note: Only for GVT-g virtual VBT generation, other usage must
> diff --git a/drivers/gpu/drm/i915/gvt/page_track.c b/drivers/gpu/drm/i915/gvt/page_track.c
> index 20c3cd807488..b22ef801963e 100644
> --- a/drivers/gpu/drm/i915/gvt/page_track.c
> +++ b/drivers/gpu/drm/i915/gvt/page_track.c
> @@ -20,8 +20,9 @@
>    * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
>    * SOFTWARE.
>    */
> -#include "i915_drv.h"
> +
>   #include "gvt.h"
> +#include "i915_drv.h"
>   
>   /**
>    * intel_vgpu_find_page_track - find page track rcord of guest page
> diff --git a/drivers/gpu/drm/i915/gvt/sched_policy.c b/drivers/gpu/drm/i915/gvt/sched_policy.c
> index 6c2d68e88266..df787472b1cf 100644
> --- a/drivers/gpu/drm/i915/gvt/sched_policy.c
> +++ b/drivers/gpu/drm/i915/gvt/sched_policy.c
> @@ -31,8 +31,8 @@
>    *
>    */
>   
> -#include "i915_drv.h"
>   #include "gvt.h"
> +#include "i915_drv.h"
>   
>   static bool vgpu_has_pending_workload(struct intel_vgpu *vgpu)
>   {
> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
> index 63ad1fed525a..a91accfd371d 100644
> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> @@ -38,16 +38,17 @@
>   #include <drm/drm_print.h>
>   
>   #include "gem/i915_gem_pm.h"
> +
>   #include "gt/intel_context.h"
>   #include "gt/intel_execlists_submission.h"
>   #include "gt/intel_gt_regs.h"
>   #include "gt/intel_lrc.h"
>   #include "gt/intel_ring.h"
>   
> +#include "gvt.h"
>   #include "i915_drv.h"
>   #include "i915_gem_gtt.h"
>   #include "i915_perf_oa_regs.h"
> -#include "gvt.h"
>   
>   #define RING_CTX_OFF(x) \
>   	offsetof(struct execlist_ring_context, x)
> diff --git a/drivers/gpu/drm/i915/gvt/trace.h b/drivers/gpu/drm/i915/gvt/trace.h
> index 63874d385c6f..8cd0601e478f 100644
> --- a/drivers/gpu/drm/i915/gvt/trace.h
> +++ b/drivers/gpu/drm/i915/gvt/trace.h
> @@ -31,9 +31,9 @@
>   #if !defined(_GVT_TRACE_H_) || defined(TRACE_HEADER_MULTI_READ)
>   #define _GVT_TRACE_H_
>   
> -#include <linux/types.h>
>   #include <linux/stringify.h>
>   #include <linux/tracepoint.h>
> +#include <linux/types.h>
>   #include <asm/tsc.h>
>   
>   #undef TRACE_SYSTEM
> diff --git a/drivers/gpu/drm/i915/gvt/trace_points.c b/drivers/gpu/drm/i915/gvt/trace_points.c
> index fe552e877e09..79b75356d622 100644
> --- a/drivers/gpu/drm/i915/gvt/trace_points.c
> +++ b/drivers/gpu/drm/i915/gvt/trace_points.c
> @@ -30,5 +30,7 @@
>   
>   #ifndef __CHECKER__
>   #define CREATE_TRACE_POINTS
> +
>   #include "trace.h"
> +
>   #endif
> diff --git a/drivers/gpu/drm/i915/gvt/vgpu.c b/drivers/gpu/drm/i915/gvt/vgpu.c
> index c49e4bf95a30..a12011410874 100644
> --- a/drivers/gpu/drm/i915/gvt/vgpu.c
> +++ b/drivers/gpu/drm/i915/gvt/vgpu.c
> @@ -31,12 +31,13 @@
>    *
>    */
>   
> +#include <linux/vmalloc.h>
> +
>   #include <drm/drm_print.h>
>   
> -#include "i915_drv.h"
>   #include "gvt.h"
> +#include "i915_drv.h"
>   #include "i915_pvinfo.h"
> -#include <linux/vmalloc.h>
>   
>   void populate_pvinfo_page(struct intel_vgpu *vgpu)
>   {
> diff --git a/drivers/gpu/drm/i915/intel_gvt.c b/drivers/gpu/drm/i915/intel_gvt.c
> index 5f615ec0e580..6b43713899b8 100644
> --- a/drivers/gpu/drm/i915/intel_gvt.c
> +++ b/drivers/gpu/drm/i915/intel_gvt.c
> @@ -21,16 +21,19 @@
>    * SOFTWARE.
>    */
>   
> +#include <linux/vmalloc.h>
> +
>   #include <drm/drm_print.h>
>   
> -#include "i915_drv.h"
> -#include "i915_vgpu.h"
> -#include "intel_gvt.h"
>   #include "gem/i915_gem_dmabuf.h"
> +
>   #include "gt/intel_context.h"
>   #include "gt/intel_ring.h"
>   #include "gt/shmem_utils.h"
> -#include <linux/vmalloc.h>
> +
> +#include "i915_drv.h"
> +#include "i915_vgpu.h"
> +#include "intel_gvt.h"
>   
>   /**
>    * DOC: Intel GVT-g host support
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index ca57a3dd3148..478d00f89a4b 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -12,6 +12,7 @@
>   #include "display/intel_crt_regs.h"
>   #include "display/intel_cursor_regs.h"
>   #include "display/intel_display_core.h"
> +#include "display/intel_display_regs.h"
>   #include "display/intel_display_types.h"
>   #include "display/intel_dmc_regs.h"
>   #include "display/intel_dp_aux_regs.h"
> @@ -27,14 +28,15 @@
>   #include "display/skl_universal_plane_regs.h"
>   #include "display/skl_watermark_regs.h"
>   #include "display/vlv_dsi_pll_regs.h"
> +
>   #include "gt/intel_engine_regs.h"
>   #include "gt/intel_gt_regs.h"
> +
>   #include "gvt/reg.h"
>   
>   #include "i915_drv.h"
>   #include "i915_pvinfo.h"
>   #include "i915_reg.h"
> -#include "display/intel_display_regs.h"
>   #include "intel_gvt.h"
>   #include "intel_mchbar_regs.h"
>   
