Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B28B508E9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Sep 2025 00:37:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E62310E814;
	Tue,  9 Sep 2025 22:37:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IJ8Ve0Bt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8668410E814
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757457454; x=1788993454;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lc/WBClitBmjHlANpD/9ZoSF/gzvU4IMXwGz6xTbBHw=;
 b=IJ8Ve0BtLGn6Cz+m8nty9k2EVT1W8H9xblYaHDA99Vz9QkcK9sMfenCS
 coDbU7uvlxn/lWIFzM1hlNsDm3Uq+6B1aO0XG2OGRifJUp/jguKGE8S4j
 XrKYNv/PJGFDFHgKnFDTgHNIprqFujm7R8OGGnNJeAqCkpzkawmsQPvAQ
 eW+4G3E1yk849U5foXevrrezJl0ePjIj0r7nbFLxE9OqS2KvKsM8gD8fr
 /jZ+hn2lEieHJA8uTfvYzi0mE3XmUV1eBdNXSba4pBBb8waPhDWeArhTl
 9nlADq96exv1JEiLA67mjnwyulSAXD2xG3/9oY0ap07NFs1l8EO5gz1aG A==;
X-CSE-ConnectionGUID: 0ycYjX7/Ty2lorZJQ6Fhbg==
X-CSE-MsgGUID: JHvcRY7rRoe1XDeU0W9usg==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="47330185"
X-IronPort-AV: E=Sophos;i="6.18,252,1751266800"; d="scan'208";a="47330185"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 15:37:33 -0700
X-CSE-ConnectionGUID: ZZLwiYL7Ro+kzpfDIihfkQ==
X-CSE-MsgGUID: OjG2ow1FTtqCda/BByJcTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,252,1751266800"; d="scan'208";a="173312413"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 15:37:33 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 15:37:32 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 15:37:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.86)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 15:37:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lzv3vK4swhOhLP4TGfXuIA9CFUx0cXiuxKok2ho0SFyQgDSLB72dOKUOuKRLmWm1FWsGILMkrNLfWWvYI8mnDhPL8fSqe1gJy83ccJ8ILMdxbHzfddRSC3UfwCNr92VkSKWHw12ax8tIpdVORaCcBq6w3hVzoB1byaT+uiYC59xCofynQiw4L/6DAxwa8Ev7LE3s5SbWvMiAHQyOiWzFg2fs+gEnDt1LOyh4y1IjTN4sWZmzk7EjfpT+yFNvQWDoWTj7W3o7kF0HGShKSa1OHRsxV470xbYkREv7ympZx943xW08NAI4akdgFZX86jPtp+YbGHk7dNKso5gqoEkqcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1aslmsSy4gh4ddhaC4LwBHjt9+rUUpnr8ak/vCGKcaU=;
 b=Ol17bkeqXCPLi2MgvxP5bLDjyybHbrKD8HlIuBK7kIYrK7HSs+2n4tf4NF/dUSOmIb1Q45UqBaMfMZxV5iHmv+bK48xpFS7oMkyxUXyG+ffvwuuDF/yttnJhO0i2kkocGUT0EaxeZPcX3GPMXAcSX66CzTBwaTqjCOVkE3aULW7Z4DJqrLx2nLIPtCM78G5XCJKisbXK1ZHRdlo9ujOXolhSitNGy+DiZreUbwtEOXurnFg5EbTIj4HngAji5Wa0aIZ8UnzPNtwwbBkdjq6f7XGeZS2ER92GaIAqAsmLRdlQwds/0h6jNY5cSQc49JzNJ0VuhTw3yc5CTnFcz8PXXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by IA1PR11MB6540.namprd11.prod.outlook.com (2603:10b6:208:3a0::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 22:37:29 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%2]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 22:37:29 +0000
Message-ID: <3971a679-1bf4-401a-9df6-9632c596de41@intel.com>
Date: Tue, 9 Sep 2025 15:37:27 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/slpc: Update min_freq_softlimit when
 ignore_eff_freq is enabled
To: Sk Anirban <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <badal.nilawar@intel.com>,
 <riana.tauro@intel.com>, <karthik.poosa@intel.com>, <raag.jadav@intel.com>
References: <20250909132808.1708812-2-sk.anirban@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20250909132808.1708812-2-sk.anirban@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0060.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::35) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|IA1PR11MB6540:EE_
X-MS-Office365-Filtering-Correlation-Id: 174ca27f-448e-4999-84e7-08ddeff17579
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N3hRNjdNUUxNVGhndXE1WmsyVXVPS2pDekE2M2orRUtsOGg3QUxqak5ZcEJv?=
 =?utf-8?B?UFZuVW1kMnEybzRmZHZIaCtMcldGa3JYMVlRdVpGbU9JTzc4OVRjMGxDYnAw?=
 =?utf-8?B?NmVnbncyUFZWbGJxc2o1YXI3aXdDbXZQbmc2aUxZUU9JaHJxZ2VBRHArTjlQ?=
 =?utf-8?B?SmlZVmxqbnJHSzNRUW5zaEViYmJWclVlR3hXZ0MxRXRKL1BFNmg2TzJ4dGNP?=
 =?utf-8?B?bXRGYXdzK1MrNzRXeTVRdmE1TnJRaUttT0l4cVh3Rk5NUS9SZ0NvMHFTQWVY?=
 =?utf-8?B?Rm05MEUwbWpWSUk5TzhsNm5vU0VBRk1CZmpwcHEvdXg4Si9zaWZ5UjhUbUdD?=
 =?utf-8?B?N2xLeW9SRDFYQ3pOc2daemttOG1kU3VncnlkS3RUTlpvS1B4RWphNHhleEh2?=
 =?utf-8?B?cGRzaHhHV0d4R0lLcUhHVi9XenRDb3NDMTFscVFZWHJFbml3MjByM1BsNTJR?=
 =?utf-8?B?UG5INDJhT21ScXJKNUF0WnlMUHlyN2JCWlk1YmM0aGxyZ2FPSnIzYWp5bytY?=
 =?utf-8?B?bTd4T3grRGpVSk1EcUFpT3JHU29Lb1NuU1orNEpFTStObkIxYTgvSm93QXMr?=
 =?utf-8?B?bHBtOFRCQ3NWTmFlb1JYaEkrTVZsZUtzaDQvWFJJZ0ZiOHRvaHpiZGtiVmUw?=
 =?utf-8?B?c21HMnVVT1RuaTJPdXUyMDZ1bXhiS1daSzlGQ05HY1VpWUlpZW9FaFNNbmRq?=
 =?utf-8?B?WkNCMHJkWGozNTRuT1k5MU9qa1pQOWVkWVJnaXBYb0ZQTExZNk1YTTdMamNn?=
 =?utf-8?B?eHRpS01hTXVNbkhqb3QxMUxPNFJKQmRpRFpxQlhZMDBNdURnMnNOMFdXZEE2?=
 =?utf-8?B?WnNIMldVbEhRcmFDWlRVbzJHOWY5TDJrT0ZUWDRucGRMN0VZdHRUdVphVlZt?=
 =?utf-8?B?UlBRc0hzbnNZSWNraGM2b3JqUnRDTDlTMlluQlFUNGVpUTZrQ2dBbzZYUUUv?=
 =?utf-8?B?eDNEbGw4NEN2UHArUCttMlQ2UDdlekticG1ldVo0TmFUd0Y3Y1JpZ1dvTkZS?=
 =?utf-8?B?Y0J3U0Z4R1FOY0x6Y00xYlNCTFc4S2d4WUt3UEZxQ1BpVC8vUXQ2SHpoa0hz?=
 =?utf-8?B?S3dsZGNPWnJrV2N4dVJYV1pWMGF5NHMrSGpVcHNTcDJ1TzUxT3N2U2J3Wko2?=
 =?utf-8?B?NEZHVUlPLzJqMEJDRGZvRVQvUFU0MXp3aFZLYnpQOXhyS3lsNGdlOVVzSXpz?=
 =?utf-8?B?TUVXZFE5bFVjd0FBZDRpMWVOaC9oWjh5ZGdFc0R5eEpxMkVRVS9MVFp5WGZT?=
 =?utf-8?B?NHRHNXNCMHp0WGxBSDNOdVRIOUdkd20wa3o4bThPMkdLL2tjUzJ3U0pQYlQx?=
 =?utf-8?B?OWt6bW9GVWJIVHAwQ3NXZ2hmMm9jakZNK0VMVmQzYTgraFR3cGFicnQ0dU5h?=
 =?utf-8?B?WVA3Z2QyYjNXSER2NGlLcU9OYUxISHF3Q3FMd2x6Y2JlMklsbW9NejVrS2tu?=
 =?utf-8?B?VU8wRjI4SElnZk41bUU0Z1Nib2ZIOGVBMk5zcndtOElIUlErN08wTjJhVUVO?=
 =?utf-8?B?Y0NoUGYwNWtqekZmT2pBVDZScXJLNUs0NFo4OGoxTlNlYkFaTHplRm0yZU9P?=
 =?utf-8?B?b2ZCNzcwQ0hMUmkvd2JxQkErQXV6cFM4Tm54eTRaYkRtUUZPcGVsZUdqdWIv?=
 =?utf-8?B?bWFQR082V1pVQ1RUQ3lLZGZnMGd6cklDVjRJVG5RNlNvZXN1eHA4aTJ5QlpF?=
 =?utf-8?B?b1pBS3cxU1hhQ0xEa3l5c1pkV3pMWGYwQWZsQWY0NHozejMrR2ozMUxTazhJ?=
 =?utf-8?B?Q29NWGJNV1huVzFnRno2VDQ2WUlZaG4rdHBGRGJVczVycmQ0TDV6WE9rTStL?=
 =?utf-8?B?MHZjejRJYW96ME8zcU10QytGamxKM3hJc3ppZGMxUWdrUkJjL1d2RzB6MXpp?=
 =?utf-8?B?RUFGL0FxRXZjZ2JRUzUrSGFnc2pRMzFQbFlVbXU2T1NUSjhhTDkvdzB5elI5?=
 =?utf-8?Q?PFE+ZiB7Jyc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nmo5TWRtZWRicjBBT2V3anN4RnJjaTNjK0x0bEYwb2FndXpVTnVEdFJlRklB?=
 =?utf-8?B?UHpPdmN5NjQySTd2ZG96OFJDZGs0eEkzY0dyRm9nNmdNU3BhZzBJY09HV1Bz?=
 =?utf-8?B?Y0JpTjJlcUEwU2h5TXVwYStQS2crc3BrS2VHa3hDTWM0dWVNNFlZdUV4NzBq?=
 =?utf-8?B?YzdxaWZJQWlYUHQxWDJMblpFU21nN1pFaWVzdGJsRmVHL1lBZG4rUHNkT1dG?=
 =?utf-8?B?QmZOSi9sMThVMjhZUGZwY0dNbENoL3g5eHVTZXN2a0thbkxtbHNnSTlRSC9N?=
 =?utf-8?B?SmZoUUFGcHErTUFrWWYwMTl2eTRub3V4ZDduU0NaQTloODllYWJidUpEWFpo?=
 =?utf-8?B?OUQ2VlNRTEpSRVI5bTlHajlpdGhFaUVDeVI5T1V1NmhieVJYV1AzUXlQNmxW?=
 =?utf-8?B?L1ZwTzVFczI3ZWVObmg3djRIYjhodFVOVDh0bGRNTU9XL2NYUHUrVTFvZ01V?=
 =?utf-8?B?MjFJTDU0UFRQMFhaYXVTQjRiZkhiM1JTbkxYWTZPZ1VLSTRRRG8rNE9yL21w?=
 =?utf-8?B?WlJ2ZHU3SzRLVmJFMWhsblI5b202RlJBVS94TEFyR0VrVWYvZnVVU0RVWEpL?=
 =?utf-8?B?QU9TZWpxdWJiSWhxTWY0bE1hakVrOC9RSDVGMHVaVWpqZXBnVXZHSG5za0k2?=
 =?utf-8?B?WlYvZm02V1piWUl6S1hEM2xhblpvYnZNNUZ3WmN1MTJ3NGlaYyttUnpmdFcr?=
 =?utf-8?B?Q0JVM1FkTldsalB6MkYyNy9ydFpFbDd0a0J0ZHNpdFdGY0RZQ1AycFBkOVcw?=
 =?utf-8?B?VXNvOEFITHNycm1aV1VZbXI5cy9ENTZmcTh2dXJXaTd0NjM1c0oyYzUyN2NR?=
 =?utf-8?B?OGs2eU5qTG15aWxzVC9vNGtwbVA3OTdRWjRJRVRWUmpycFVoN2tPZzB0ZTdq?=
 =?utf-8?B?b1ppNWFGUTdwcktGUFJkRHdpMlJxZ0RabmNuZjFjNnNiSmNRTmtrM1VNcHZy?=
 =?utf-8?B?eW1ZZVFLL0kyWnBvS1JVSVptcmxZcVRiL0drSXVMSENpWFZlb0pBL2N0SkJL?=
 =?utf-8?B?VU9pM2RFN0RlV3psMFFjaGt0c1QzSGEyU3VhV0xwMExhTmo4MzVrK3p2WUFY?=
 =?utf-8?B?SkpxbDdWRU1rVksyVHFKT2d0RVZUUHg0Y3cyblUxc0xXcUlzNjhUSTZYbVZs?=
 =?utf-8?B?Wm5JSDNjcXB5R01YOFpWdjRKUUZ3bG91alpBQldTK21hYnVMQWVxRWJEL3U3?=
 =?utf-8?B?SDJPMzE2czVic0lZN0lLS0pLd3lRaDFwY1dDR1BXSWt4aHIyUU92TU5GbUNS?=
 =?utf-8?B?NFk2b3UrcG1ObHlCKzVzMVQra2dsK0JBMlQyTnV6eS9HUHNxRjhGajAzVHlT?=
 =?utf-8?B?WC9aZ1JTY0xYa3c5NXIwNU5MREhVWkxMNFBwQ3pBS3plNkhmeTBlVjFtR3VB?=
 =?utf-8?B?dUxJbGZTcm84WkpndVA4dTFWaGgxaFhHWFg3Qlh1WktVYys4b0hZUDEvbExJ?=
 =?utf-8?B?bTl5aWluVnVxOU9pV3pJU2dIZEQ5MlB5U05FaHAvOThmWGU0WnQ0VlBaS2pu?=
 =?utf-8?B?YUJxTklrRVppd1E2RWVHU2VCWXB1K09PTk5PYStodzNaU1hzYmtoR3Z3Nlg5?=
 =?utf-8?B?b0lxRHJ0UnVKWHVpUWNLdjMycUtTMC9XQTVwL2QwbXlDRGw5cklkMW5SVTZn?=
 =?utf-8?B?anZqNWZva0FwZGdMNDkrdWg5ZlNKV2MzbXo3MUY1RWpUcXNzUk9ZTUlrSUgy?=
 =?utf-8?B?aWVOK2tlYm1LUGpWNU1lWW8zVkpwTllvZjhUVXlkOGYxQ0pvcSt1eFhzcU9G?=
 =?utf-8?B?aVYwWWd6WDh1cmVwWENPZGVVN3JnWWRQMDBqTS9sekFOQmxaNmczMGhWTmtl?=
 =?utf-8?B?dW8xQm1OQTkzcVdSRVlaL3hab2h5dnRPWnl1dFFkQ2xCUkNUaUpCQ0NmcXMy?=
 =?utf-8?B?S0QvRzFyQ2hsS3kyc1RLTk9RNForVGdxZllQeUZQRjdxMTNzN3QrT3B4RGxj?=
 =?utf-8?B?bTVGUHdaN2VtMmFodEs3YkZmdDdVd0VtUWNVM3NuU0lSOFlIeXR1dWJ4cVBm?=
 =?utf-8?B?UXpxem5YWXVUaGhMTERJb2NwaE4wN2lueXJvMzVxSmNsNnZUcDN2U3NWMUsx?=
 =?utf-8?B?anJnYnZzUHJKZWJpMnVWT0pxZkNOL09KRlJXbW5uTWJCSGhYZ29lNUozSXhQ?=
 =?utf-8?B?QldqWWxhVzdTeEVHL0lrbzJIZ1VFbUtYMi9CWDJaQkNsZzNubmRpdks2OWZU?=
 =?utf-8?B?S2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 174ca27f-448e-4999-84e7-08ddeff17579
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 22:37:29.5092 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cqUHsztoO7+fHNa4YwxEW1FwbNtWvcsqAB5ecdIHx/bCfw70HFDuF00KMu/Td/FcPTFMztfsGdn0xOgToiYaBAWQ/6ODlmZmdDy5dGs1jaM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6540
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


On 9/9/2025 6:28 AM, Sk Anirban wrote:
> When slpc_ignore_eff_freq is enabled, min frequency is set to RPn but
> min_freq_softlimit is not updated, causing sysfs to show stale
> values.

sysfs(get_min_freq) does a query_task_state and then displays the min 
freq. That shouldn't be stale info. Within slpc code, we are using 
min_freq_softlimit to track user changes to min freq. We shouldn't be 
overwriting this when efficient freq is toggled.

Thanks,

Vinay.

>
> Update min freq softlimit when ignore_eff_freq is successfully enabled.
>
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index d5ee6e5e1443..07fa0423b1a3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -495,10 +495,13 @@ int intel_guc_slpc_set_ignore_eff_freq(struct intel_guc_slpc *slpc, bool val)
>   		slpc->ignore_eff_freq = val;
>   
>   		/* Set min to RPn when we disable efficient freq */
> -		if (val)
> +		if (val) {
>   			ret = slpc_set_param(slpc,
>   					     SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,
>   					     slpc->min_freq);
> +			if (!ret)
> +				slpc->min_freq_softlimit = slpc->min_freq;
> +		}
>   	}
>   
>   	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
