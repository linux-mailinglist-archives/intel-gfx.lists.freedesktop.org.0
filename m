Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD90B1403A
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 18:25:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4202D10E0B0;
	Mon, 28 Jul 2025 16:25:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ohz+JpZH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB3AF10E0B0;
 Mon, 28 Jul 2025 16:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753719915; x=1785255915;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cmEDqPtJtDjdzjhw2fgr8FPrxXjsvugRWbN0sk0uxX4=;
 b=Ohz+JpZHqHZaeD2BRpuHOev/GCY/DkLYpOCissE3Xz9piwW0SyEZ75IO
 OMWgXR/QsN6bTWos5SHJDP+i6+bTAy9GKhDv0GXsNWOnmben8msVS3npx
 v48KIPgzdznvDxv0OE4S9vszNPABLrvumgZ5Kun0aQc6dnjlzSRppDxQc
 eDJ0OckJ04wlctFBr15fHwDCoqPmnRyBR6JoC8TnNFlaRSGp1TzbBIgM8
 Mj7J578ZIE2OdMTb4ec/Nj18cn5FN1OOv4n9uFlgtfph4htNHQEB3ltjE
 EmYQuWSYNyw43WD6S5ssJlmh+sIGUWG1L1d+rFqp7LpU4qm6T3QbuJz8V Q==;
X-CSE-ConnectionGUID: 9NK2JLbjT7K5gxV6GORPWw==
X-CSE-MsgGUID: l2ig7HeARIuBWM5T5py4UA==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="56053812"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="56053812"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 09:25:13 -0700
X-CSE-ConnectionGUID: sphwHT6dR6un+y28JfOc2w==
X-CSE-MsgGUID: 5If+LwZaSj2uB9EPKHwRMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="167772583"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 09:25:10 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 09:25:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 28 Jul 2025 09:25:09 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.89) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 09:25:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XcjeSEbVhYkNmaAMJX+l/GrlJG636PNMt7UAsel2qP279ruC12UxoBD6qfwRl2sc5paU+BiqxekTvwdIIm2fUQ7j4y5CmgxyClwttISHLoO7TpVHS7WYglHL6ShjeVpKt6NWn53Rz371kmpVXmiGAixXOnuimi13ZIC2+lrfyLBxxCLWhZGvNwbIVL88Q7sHNTB76oEAWKP+P61rgkeNJ+fume2/IDLe2DbRXzRe6s35VCHghoViXH/XiEME9YekTOpI8u0pTy5ZBAX15uHxreIHbXW4NMP0XcITF4FKuA1AuL4oBA+dc/6p6tOQZSUHX0W0aUkJGJzaLNEkUMWZDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XKu7K93eQBbCYxDVBOcbvCH7JFGbxzv47S5+ZoATDqU=;
 b=SZufdtEDoufVieAWR/mfxWZO7kFd4qK1Wioit8pC54Xs76HgKPCGSahc9Kxjygp2yedktwcgKlgQXxapWGsbRW3b+R0GQTvRMesY5s7BtLhemrp6No4PLQucuDz5N1j8TYYQXAI1Rait7RUM5rZXXt8ePYlqZF5bqWcy/TJFydMplpYB1cX8G3FytEECG1Bs6mJZeLCFT4sUrBMgIGSSpIijCmiZvff3FrNx7okitoO/ftXwkj+fTzA28aBwtAOb9eE9LjObKPZIbG62wyJ27tpd8NFDgc0deI2fS4jbAgvg3S8vId3r4vWV9KtuOf2LrJcjiFukKDKQ5gjwUsc7xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA1PR11MB6289.namprd11.prod.outlook.com (2603:10b6:208:3e7::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.24; Mon, 28 Jul
 2025 16:25:01 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.8964.025; Mon, 28 Jul 2025
 16:25:01 +0000
Message-ID: <d34d122f-2ef8-44f1-83c9-92c7b9e83b6e@intel.com>
Date: Mon, 28 Jul 2025 21:54:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20250708)
To: Damien Le Moal <dlemoal@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 <linux-ide@vger.kernel.org>, <mika.westerberg@intel.com>,
 <anshuman.gupta@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 <lucas.demarchi@intel.com>
References: <07563042-6576-41cd-9a95-de83cfc95de1@intel.com>
 <f3f779e3-e269-4ac9-9bed-042859d98a83@kernel.org>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <f3f779e3-e269-4ac9-9bed-042859d98a83@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0024.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::14) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|IA1PR11MB6289:EE_
X-MS-Office365-Filtering-Correlation-Id: 74ca029e-5dc5-41b9-67f0-08ddcdf34d55
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MnNGQnBhL1VENEZwam00S2xsSElUdVJVUU90c3NZK3BGUjlncW9xbnlZRndM?=
 =?utf-8?B?dkcvZ3dmUlFaTzJpNk9hL2xiY0xWd2tYWmFGaXpSTTI2L1NFVlNOT25QWnFq?=
 =?utf-8?B?NzIxWnY3ajNjdEtwZm5QcjdoWFNRNFBFbFZ1TFlKTVI4czJDSCttOW9TME5p?=
 =?utf-8?B?aVprYmRPS2lkUWJ4UENVWW9RMkxzZ3RlSURUZkVJMWJzNmNKaXkvK3FZb05u?=
 =?utf-8?B?SGczSXJZdHYyK1NnZ1JCNWFTT2xpQjhoMWpHM28yU2xEeWN6T1g1d0dIa3pE?=
 =?utf-8?B?Ynl2YitaMjlJaHpvQ3lEblNaeFpEcjlSUGpud1lSdWVPQXdnM1RoNTBBUmI5?=
 =?utf-8?B?YVFNTWdQVVlFMWxMM1FWLzg1Q3VpcVNJcVlIc0FCZ1paQzR3TzBjdDNabGdz?=
 =?utf-8?B?TlRWcjBHbXlxTzF0R1Q0bS9vU0NZZy83V3dMaitHdUNsR2xvR3NDa1BOMWF5?=
 =?utf-8?B?Ukc3amR4eWtnUzYwdGtLVTQzWlNKRFNTYzF1SG03cVZJNjQzRFJkSStKanda?=
 =?utf-8?B?aUNBVjExVFFDdlZqZzJGKzhYOFU4RnFWV1F0MGVYRTBaWEVQb251Z3pzS0sv?=
 =?utf-8?B?ZFRWemNmSm1HbHNZWndlWTVrdGJ2bWVidHBEZGozUXZwNGpaVUJVUll6WDht?=
 =?utf-8?B?cjVmNHQwaGd5WVFyaGpPQVdsL0hOQTNPL3ZydU1GMUc2ZjNtbTVOTndUbTMv?=
 =?utf-8?B?WXRpK0FjZ2FadTRUTVA5MFNSQkJ1dXRTRjhDb0NOcXZaYml2RThhd1gyTGd1?=
 =?utf-8?B?NEsyaHdBeDByV1duUHFTK2RQY25LSGl0VWF4akNUT1lzdkQyN0t3anFoeDRs?=
 =?utf-8?B?RDFuRmVYYmNBS1NEL0p3SzFHdnRmNzVFVVd4Q0h3c0JxRlVvT2IzN05LY3Jz?=
 =?utf-8?B?dlJKdWNKZlV0NWdTNlQwVUN3MTArOTB1ZTNkRitiWnR4SGNwMGhwVUwxaE12?=
 =?utf-8?B?UEcvUlVER095aXpVdDRCZmJOcklneERSc21ZT3NHVTVENytkdVI0bSt3ODBx?=
 =?utf-8?B?Tk9zT0wzRVdrN1c1R041TUlZSGY3RjZQaTlYM1pYL1VVcE52ekFFTUp2N2ZF?=
 =?utf-8?B?VGswZ2puVGdEZHl1bUtwVU02ZEVZcjJ5SVB1eDl1YXl2dWt5SWYrTXlpYjFK?=
 =?utf-8?B?bXM2bytqSU1idTJHU0VpV2JlZkMvWWNkT3dLK3NPamhYWVpzdWR3bGgzWDBV?=
 =?utf-8?B?T1RqODYxWkFGWEFUQTFxbEEvc0ZWOSthZCtaMnYxSm83UWtrUVVRSTRVN3BO?=
 =?utf-8?B?V2xjZTZrckx3UjdGdmIvUkUwZ3paaVlKWURJZ21ScEVjM2phaXY1VGpJd1RH?=
 =?utf-8?B?ZnljZG5WR1RHTEhRSmQwVkszOHN2U2Ezb2Y0TElFT292VHhST3E4ZWFCdVZp?=
 =?utf-8?B?REwvVmxzckdlZ29XSVB6Y0JWSS9DU3N2YVlRR0RMbVNRSUJITTNBb3lPMllB?=
 =?utf-8?B?Z2IrbGh0dFcwUmx5a1p1bXFhUEc2QTVSVnFnM2JuN1BjQ0FwajN0L043S0ZH?=
 =?utf-8?B?emRSVjdZU2pNQWxnRnppUTFpMEkxeGZNQ0NRWEhkRjZoV0M2ZUVpU3dBT3lZ?=
 =?utf-8?B?dHBQLzNYbjlBWklmZXlYeVk2UG1DaGVMdWxQK1RVRXVwM3czemJiUWdjY1NR?=
 =?utf-8?B?SG1FVHV2WEZ1Ky9hZHp4MXNaSjRMVXk0d1RNWUhyaXdrMm93cWtJUXYxM2RV?=
 =?utf-8?B?SmFLYUc1WjU2cHFwL0VjVDV2TE9saXFxNnNHUGN5UlcxSVhNRThRRE0xUXRT?=
 =?utf-8?B?aGFTY0IvMmV3Q2dWSW5jNGJwdStPSHBMWjlUYnFqQktPZzR6RENIYkpiYkF0?=
 =?utf-8?B?S1BBYnI3M2Y5N1NEUVZwQTU5Y2V5OTY5c0lZaTJWY3loWG1FTytEYzk3d0RJ?=
 =?utf-8?B?cmZQMXZqLzJSSG4rRzZZdk04MlNGZG9DTG00MXhMRldLREFCTXdLVTdEb3hP?=
 =?utf-8?Q?F51x/T8TFIw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWlGaU5SeEJBcXJ3bEpJdGVYbHROODdxNHo0OFFoSlNuclhnVzNGNDlZKzBP?=
 =?utf-8?B?YnF3WDU1NkJNN1VaNGhrdW5MY2t6L1R4clBodzloTzZkamxvL1hZWHl6Nng1?=
 =?utf-8?B?K1VFVCt1RVRQZzJHTTZqWFRJaFIyYkwzZmxWanNoYk5ITDgvWGxKMkM4Vm5Z?=
 =?utf-8?B?aU15SDhCSlBrdmdESGQ5VnpXbmpMS0Q1WmNzc2RtbjJGdnN5UmxIbytONk10?=
 =?utf-8?B?MVVhZnNoY1dnVFBTQVhWM0lhYk0vdnJiTndLVVJGbUNubUp0eFJkemc4N0N2?=
 =?utf-8?B?bFVKbGxUSXFjVVJRNG96cGZ1bDl4SjBFOHJ6WHg5MS9BbXZ5REdadThKcWlC?=
 =?utf-8?B?UW85Njc1WkdxU2ZZV0MycGZGeU1lV2JBaHRTdFp0U0NJUXhsTzJwRVE0VkdV?=
 =?utf-8?B?bXhxK3UzRWhRN25jZ0kvc09wdldLN0xVeXo1amcwRXc1bXd4Si9XRjdTMm5Z?=
 =?utf-8?B?NzAwcVhCVXNaQ2dybFRoRENnajlMUFhTcCtlZW5uOWpnSmpFdEl2L3FFb3pz?=
 =?utf-8?B?dEpSc1pnTy95U3V2UUJzMC95OFFKZ0M5MFZEejRJOHVCWmlRNGZzY29UV2xt?=
 =?utf-8?B?VVdKS3NDUEhOeDd5Y2hnRnQ2L1dyQWhQYXhoNnVkSy9ZWWprenR4WDFPQk9L?=
 =?utf-8?B?TVZQNG9ReEVKVFI2M2M2VWYrZmhTMmZVV0FTNERPRWhwVnlpQ3BuUk9PNmxt?=
 =?utf-8?B?SjM1TktzazZVNDQreWdIR3p1cjRYUjE3eXdIb1RobVJPeXFJbG1SUTlzSEJD?=
 =?utf-8?B?NkcxOXNSQ0pkNkQ0cFluanFnR0ZXRTBIVlBDVWEzKzhsSjRCVjhwbEZlMS82?=
 =?utf-8?B?SEVza0p4MUxUejdzZzFoZGVLS0NMdHAyNWFvaGVtN0hoRVQyNG9IMGo2eUR6?=
 =?utf-8?B?M1RJdHVlOHZGSzh5Y3pFaGsrNG9lMlF3b1EzYW9QQzJvdkczZ1dHN0NXc2xn?=
 =?utf-8?B?NU1yMDVLYXBzZUdKWGVucnZWMFVzVDhHVnA4ZkpmTS9rYUhTajRNWHJOdGxh?=
 =?utf-8?B?UzBRODBlQW1WS2NMT3JNd2NHK0ZGSU84cjZLbElLR0FteUt6bkl1RFhVdTNQ?=
 =?utf-8?B?U0xoWWtPYmM3NkhxeDljU1VzM0pPc3gveWQ4S3p4NEV0TG9EMWFQNGZUN21R?=
 =?utf-8?B?UUppcWNaOFpvdE9paG5aT3V5eEhQOXhMNGd6VXBpTXRUVzczZXdWdHZlMC9k?=
 =?utf-8?B?V1htbjBRcFMwMzZtWkdyTW93RWMwQjlXeFU0VEZMcTYwRFYvQm04amlpQXh4?=
 =?utf-8?B?QnBJc2xpUUhjcURmUUxhY01Bai9wZll4anVYa1NXcDlLMmdna0JIcGVFa0dh?=
 =?utf-8?B?MDFuOWxhYWY4UW5SQ3E2NFM3dExNSWlyMmx0bDh6NzRWQW9Rem5ZQ1lBM0RK?=
 =?utf-8?B?alhrQy9zdHUvL3NURW5aNFpPamp0bDc3MzhGa3o3M0UrUU85cEdRYzdJN0Zq?=
 =?utf-8?B?dk5aK3dqWEV3Yi81VDhLZFkvbHo1dmdLWVA5T1hlOG8vUFFuVDZtQSs4eW1K?=
 =?utf-8?B?UXFvdGdMbG9yTytXVVpDbzN5VzhpNEJHWVNNSVNGY3AvV21HbDRwU2YyZXh0?=
 =?utf-8?B?Y2M2bGNoazJ2Q3k1cmNZRDVIR21BeThadWNJcit4NnJUUDZHTUREcHFLS3Rs?=
 =?utf-8?B?L243L0ZwVTZEU2pEbnE5QzVITmtvQ0NMSmtuc1Uxc3hIeGxtNjllR3kxNERP?=
 =?utf-8?B?K0k1azR4TUQ0VUhnUE9jSU5WeHZzWVhxNVJMdU1OQVpQM1dkNW9DdVIvVW1X?=
 =?utf-8?B?eSt5VWU4ZnY2MzJjWkx2QVRrUlc5UlovZ24yVUtRcU9NVnRMdWU4eS81azUw?=
 =?utf-8?B?SFJwalU5bHlmMVFwNHp3Vk41MElTdE4vaW02aUdmZEhOdnpQODVJU0xsV0R1?=
 =?utf-8?B?N0NaZlhtcDRvRVNnZklFSlhSTXpKVmJkazAwZkNvUTFaZXZjaGlUWnpmbnAw?=
 =?utf-8?B?U0pBampveXd2ZEd6cXBRcFZyZ0JycmExekMrRm5ESlkxZTRUTXZEMjc0dm83?=
 =?utf-8?B?dTMycEhTOElIQ0hxbytPMm9lUnlmTmlaZWpES2RXSkZvN0VDVGZCWHV5bGwy?=
 =?utf-8?B?OGdmM0xrNloycitxd00xWHV1Y1dRTVhveW5lcjRPdU8vTHdKa01iZWJMNDhY?=
 =?utf-8?B?WktzRktLTTdDY084NXB0b2ZCQytCYWl3Wis4QnYrQ2NUbFFESVNCNkJCZllj?=
 =?utf-8?Q?ih/QZbZrtkguXPges4Gg0yY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 74ca029e-5dc5-41b9-67f0-08ddcdf34d55
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2025 16:25:01.7934 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QXdQOGJYIlheHULvVAYBz7ri30fwN0w24hrY36cu4Xi6Xkm7NGX5I5+Xmi7xDBy25kN1xE6qxAx7HsEXIROtWEwfunAf7wroXuyJihlQ6XM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6289
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



On 7/28/2025 9:41 AM, Damien Le Moal wrote:
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
> The attached patch adds the "link_power_management_supported" sysfs device
> attribute for drives connected to AHCI. Would that work for you ?
> 

Yes this could work. I quickly hacked the test to ignore writing policy 
if this file returns 0.

Here is the state of the machine I am testing on.

/sys/class/scsi_host/host0/link_power_management_supported: 0
/sys/class/scsi_host/host1/link_power_management_supported: 0
/sys/class/scsi_host/host2/link_power_management_supported: 0
/sys/class/scsi_host/host3/link_power_management_supported: 0
/sys/class/scsi_host/host4/link_power_management_supported: 1
/sys/class/scsi_host/host5/link_power_management_supported: 1
/sys/class/scsi_host/host6/link_power_management_supported: 1
/sys/class/scsi_host/host7/link_power_management_supported: 1

Regards

Chaitanya

> diff --git a/drivers/ata/ata_piix.c b/drivers/ata/ata_piix.c
> index 229429ba5027..495fa096dd65 100644
> --- a/drivers/ata/ata_piix.c
> +++ b/drivers/ata/ata_piix.c
> @@ -1089,6 +1089,7 @@ static struct ata_port_operations ich_pata_ops = {
>   };
> 
>   static struct attribute *piix_sidpr_shost_attrs[] = {
> +       &dev_attr_link_power_management_supported.attr,
>          &dev_attr_link_power_management_policy.attr,
>          NULL
>   };
> diff --git a/drivers/ata/libahci.c b/drivers/ata/libahci.c
> index b335fb7e5cb4..c79abdfcd7a9 100644
> --- a/drivers/ata/libahci.c
> +++ b/drivers/ata/libahci.c
> @@ -111,6 +111,7 @@ static DEVICE_ATTR(em_buffer, S_IWUSR | S_IRUGO,
>   static DEVICE_ATTR(em_message_supported, S_IRUGO, ahci_show_em_supported, NULL);
> 
>   static struct attribute *ahci_shost_attrs[] = {
> +       &dev_attr_link_power_management_supported.attr,
>          &dev_attr_link_power_management_policy.attr,
>          &dev_attr_em_message_type.attr,
>          &dev_attr_em_message.attr,
> diff --git a/drivers/ata/libata-sata.c b/drivers/ata/libata-sata.c
> index 0708686ca58a..82a1a72e47bf 100644
> --- a/drivers/ata/libata-sata.c
> +++ b/drivers/ata/libata-sata.c
> @@ -900,6 +900,18 @@ static const char *ata_lpm_policy_names[] = {
>          [ATA_LPM_MIN_POWER]             = "min_power",
>   };
> 
> +static ssize_t ata_scsi_lpm_supported_show(struct device *dev,
> +                                struct device_attribute *attr, char *buf)
> +{
> +       struct Scsi_Host *shost = class_to_shost(dev);
> +       struct ata_port *ap = ata_shost_to_port(shost);
> +
> +       return sysfs_emit(buf, "%d\n", !(ap->flags & ATA_FLAG_NO_LPM));
> +}
> +DEVICE_ATTR(link_power_management_supported, S_IRUGO,
> +           ata_scsi_lpm_supported_show, NULL);
> +EXPORT_SYMBOL_GPL(dev_attr_link_power_management_supported);
> +
>   static ssize_t ata_scsi_lpm_store(struct device *device,
>                                    struct device_attribute *attr,
>                                    const char *buf, size_t count)
> diff --git a/include/linux/libata.h b/include/linux/libata.h
> index 1c0580627dbb..e9a6f37bd7f9 100644
> --- a/include/linux/libata.h
> +++ b/include/linux/libata.h
> @@ -547,6 +547,7 @@ typedef void (*ata_postreset_fn_t)(struct ata_link *link,
> unsigned int *classes)
> 
>   extern struct device_attribute dev_attr_unload_heads;
>   #ifdef CONFIG_SATA_HOST
> +extern struct device_attribute dev_attr_link_power_management_supported;
>   extern struct device_attribute dev_attr_link_power_management_policy;
>   extern struct device_attribute dev_attr_ncq_prio_supported;
>   extern struct device_attribute dev_attr_ncq_prio_enable;
> 
> 

