Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A031FCC2D22
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 13:37:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF8EB10E8E1;
	Tue, 16 Dec 2025 12:36:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G/38oRRK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8892810E6F7;
 Tue, 16 Dec 2025 12:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765888601; x=1797424601;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O4eETC6iCmUsihlzPp0D8CSRWuj1h4qofx/LPEH7Az4=;
 b=G/38oRRKJh2GBcxXZaOkDC53mJ44j0Y2ZnE5SEQIxeuGul8jS4oPZhu8
 5FiD9gxPgHBXyCuhtP8QpJngqZWYokNWJPChZ5X5CLn6WVku4StSSaagL
 JqcEIbmrMNiWUCZrzybEGSZX8YvIRYSPYCKiPecoyEsGXtgoxxDwE/5Mj
 MSr4o5XHtzgJeJtfzzkghkFmMVOvrIIL7hGFV1OqKa0mH4cGlfCcrEw3n
 SU34QQwGaMOc3ulQU7VvbEvNPAVsjI5KOGwSs76cHNOIdOGOiYixWpNAw
 b8qfMNH2K3VoXIQ/B0z9YQf0qL6W314d2vkzsO0hBeQwX48BndAqwDnvJ Q==;
X-CSE-ConnectionGUID: Iwcim4p8Sn2I9xVkQQEomA==
X-CSE-MsgGUID: rPmzhB3cRsyV8KP2VSoVGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71656646"
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="71656646"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 04:36:41 -0800
X-CSE-ConnectionGUID: 9rNW+PJ+T9Oltlp9bb9qww==
X-CSE-MsgGUID: a4OQ1p+MR22S9cFWVQVclA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="197750394"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 04:36:37 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 04:36:36 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 04:36:36 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.2) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 04:36:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I/w0CfYN48elZghnfH3ux3FgIUzYsr3Jb343r++TA/r7rcRqLpOBvyY23Wob2UhH0n2OiNEt/kCejjNky3j0SvjAzO00XSgQz85ekt6h4MQ8ArN2g0neaetsxx6j57eoUreWIs6/8sc8YaGOd+7Is16bmrktUqQYo/ZuU0Lslm1ka9RrFNOX7ZmSRXQJo4+uf0R77Ss7YeWBuphrZIY30nEQBzv/Cx39QSt1k21Zs/c6W7T/sp1gt7+zbdBPf/iZXxlgUSL875hNgZJtxK9YkTVlFjQwbQoLh00emntWOJsSo5JLnv7txfTNUCAFsJK+m8EVEZl0L727fsQ4mj+9cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9O5rwucKbHsIG5JLjY7yit29ss3zO9d44CyicWN/eW8=;
 b=WLkuWQ2i1X2dteSdFNx6Cf83QQW3v8qbyYBxIbrPY+xSpC9hmnGOSlYlYrAfOIyOam5nMtDnZzNWVL6vLFmob7Flm5Hxpqq/jEaPA019vaPrT081sm6Ikisg14BvsMJwZxDQrOQ8DAg9/7T8/KA90stUXxN4obLsukBJA9SBw0eob35lUeZnGtRBKTIBsW6l2dqWgEONhaA2dfvaQ+bGZvnbNkqCPCiNNVXUz3/+SzNNGrrAzQXa5i/k83YDJd30Za4QYecWAJjZMcEg9FNG2C9U9rzIMxt1p2V3bsDmrpEmXSkEMc9bFlFZh/8qBNkb1JrS2KPETUe7NuksLUY6HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM6PR11MB4753.namprd11.prod.outlook.com (2603:10b6:5:2ac::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Tue, 16 Dec
 2025 12:36:34 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9434.001; Tue, 16 Dec 2025
 12:36:33 +0000
Message-ID: <a0939a84-8ecb-431a-9b58-76793fc9b8af@intel.com>
Date: Tue, 16 Dec 2025 18:06:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 16/17] drm/i915/display: Add function to configure
 event for dc balance
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>,
 <uma.shankar@intel.com>, <jani.nikula@intel.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251202073659.926838-17-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251202073659.926838-17-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0197.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1aa::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM6PR11MB4753:EE_
X-MS-Office365-Filtering-Correlation-Id: 5802216d-659a-4c31-809d-08de3c9fbe79
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZkxXaHNsb2ZYdjRWTmptNE4rcXBCclp6N21Ud1FidEJPK01MU2duaEZiZkQ2?=
 =?utf-8?B?RDc3Ty9hMTNEdFVxQU9WU2lqTjZDQVJld0lOOWFYNjJEVkxCYytCRG5TMmlB?=
 =?utf-8?B?K0h6UUxYbDRqdWNFcXJPU1pOeVUxRVBXMjlKNy9nV0FrQVZaZ3h1MkkzaHdi?=
 =?utf-8?B?cy9QL01TTWZleUttUDhnZ3ZIVnk3OSthTG43Z2YxU2xOZmhLQWFZVDhMY1Qz?=
 =?utf-8?B?TXNIdTl5OVEvcFo4QnoxcUZNR1hCV3lrRVpKekdNSGE5RFk1TDdta0NMeUNN?=
 =?utf-8?B?aEorTUFhMWdQSDRZaHUwSngxdEFCRENDZlJyc3dlSzVXQ291WitWbldsZXE0?=
 =?utf-8?B?WkROdUZISTR3cnhyMlMyZHovVVBMdGZVcXJyTjA1Tmk4SEo2SlY3dFBwYlph?=
 =?utf-8?B?ZXh0b3VYcks0a2RWN3Zkd1Y1SUNEbXB0dnZzZFdwdlNCTXNONEkzQ2xlaDBQ?=
 =?utf-8?B?OWVqbCtjSFhyK3EyOVRpbTk5SnVEazdRTXRBLzJOUk15bldxclFlWHAxc0Ju?=
 =?utf-8?B?QlNvUkFXVUdsOCtlZUhiTkh4UkpkQ1FqY1c4eFFTZ0dHS05jZVpkS2toUFV0?=
 =?utf-8?B?S3ZueWFrNllHckJvaW9sSVZMd3orUTNaNWVmblovZjRIak0zdFg4YnFyOStL?=
 =?utf-8?B?Yi9HdUVrL1VkYzFnN2JZZTFDc2pqc3h3Y001QjZia0d5V25KY0daNlFhS0g2?=
 =?utf-8?B?OWJubC9vUEpuVkJiWTB4WVdmZW8zTVExRGlaem1zTXRzejFEWnRHMTVHbGtt?=
 =?utf-8?B?VVVpeENXVlBkZE1Ld1kzL3JWMEJFKyt3Q1YwdlJVR1phbTBPWjM5KzB2Q2J3?=
 =?utf-8?B?ejRxcFlkTlBOeThRaEZ1dnVkTFVBUklMbXU1cDR4R1hoUmdNT3htUjhrWVY0?=
 =?utf-8?B?TU5hRTY4Nnd0bVpDR0pRREt3TGtkY094bHVtcUljWUh5ejRDUy91a3BBa3NJ?=
 =?utf-8?B?b0lxR01jb1l0OCtHWnBmWGg0YWkzZ0lNandDb1IrTzJ5K2ZoNTEwVWUzYnMv?=
 =?utf-8?B?dWFLUHdXVzY5MXlpMmVtZDlweW1vS1BRMGpZTjBQR3BrZ1ZLOHdDb2xJdE8v?=
 =?utf-8?B?bUFsR0ZHYllCYUNWc2RoM1lOREZRME5MV0sxbVdWMWV1MmVMQ0lmWDg1bHdk?=
 =?utf-8?B?eXBTYzdLaUdFeWZBR1RFNlBXWUFOTnladUZXRzJTWmlhMEdOWW1vQXhJUll1?=
 =?utf-8?B?Q1pTN1RWWXkxVmNwTnhXQzV6ZjlZdnlJUTdHWmdBeTd5Mkd1YW5IOXowY0l0?=
 =?utf-8?B?L2JPSVdYS0ZsT2NoQVZHRDZJT0NILzlFSVhaekExVlBsV1JVQWxKWmtibFJk?=
 =?utf-8?B?STVpZC95YWJQb1crU1VoMHJlMVFmWU95eUd5RzJRN3Z5NkpROGJtSE9rekNk?=
 =?utf-8?B?dGlLV1ptMXRlOUFiKzJ2S0RLcXk3WXlQNnA4QkRxSTZWR1pGQXpoMEtkdS9M?=
 =?utf-8?B?NmYvaDUyWFhpc0M0RVBJbTZEczFFNjVZcC8zYjJKS2dZNjVDbU05NmcrYWwr?=
 =?utf-8?B?NG1wOXZmMkNCRDJmaHgxK3FMODdiUGV3emtqNlB2L1orMDREbk1zT3VpN2pM?=
 =?utf-8?B?MEEwSGE3cVl0cGUrYUxzQm1FYlQ3dU11bG1mV0ZVbXpQNVFEdFZIczI1UFQw?=
 =?utf-8?B?YzR2SVR3ekJWanQ1M2tWSXRjZW5jY2xFcGRuQnEyWWtwalYwUDh5aGlUZUFr?=
 =?utf-8?B?MjFOT3J3QTlCYm1CZEhqSlRFMHBkTS9QSWpwY0tTeGU0eG5jbk9kNjFLSjRh?=
 =?utf-8?B?WUlSbk1NcDFGbkN0LzNIMklVREM5MjUvNUZWMjliOWNLb3pIbDB0MFNmRFNr?=
 =?utf-8?B?UE54emFPS1BIN245WmZBRTRZRldEalBxaDhJQWF6ZUNhNUdSOTUvalRScGE2?=
 =?utf-8?B?N1dIcnNVYXc5Umdpc3VEanA4Z3owaytOeUxRS2xidTdkMk9OakhZRjVySVYv?=
 =?utf-8?Q?mmSdxn+zSxa4L57finuauXbMBojLnwix?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L2VkSllicXREWWs4THpCaW1Udmtsd0hUOUl4Wk9wVkNtcnFzUnFBVzlZZWxk?=
 =?utf-8?B?K0JvRFhDRzhyTmp5S3JTTndZNXo5K1l0YlZlNSsyZUp5RmtTNVlmMHpzd0hi?=
 =?utf-8?B?a2IySlJycU0vNmw2S0JSUnF1M3RDTFpxYlg4VXpUOEFONnFGakxnd0pXSE1p?=
 =?utf-8?B?TGdickJ4Mm92TEZpR1J5VEVpamtIMWtwMDVhd01sU3JzWnBGWjJtUURGS0xV?=
 =?utf-8?B?L2ZtV2FUVGVsUE02K0UzYlMzNHZRYVhrOUFrcHc1dzhSZEhJRzQzQjRvd2xv?=
 =?utf-8?B?NGh0UTNUZVRXN21vVFl3WWhQeERWNHRuZU55UEk0dTBNOGNCRzh5eDJEMy94?=
 =?utf-8?B?OEhkTXhuNW92R05BNVBxaWkzRmxKSGxXS3VuNWxNYklYd2REaDF0QlhodHJ0?=
 =?utf-8?B?cmJXNGtndHpSTkRJRzZ3dzg5MkdOQXpwaU1lMUpkeHZOTE5XZFlVbzcrWXFj?=
 =?utf-8?B?NmcvdGE0UWtqK0ZKcjNmUEt4WVpDd3AraWVRYUlMYWNyUlRvQ2Z5bFQ5UWdy?=
 =?utf-8?B?ZWRBT3cxalNuUnRtUStvV3RpRmRwZ0grd3hQbWljNkRlQ0JOWGtVcVl6KzNz?=
 =?utf-8?B?NGZsSjMzeHVqVnZBaUwvMTZJWkcwdEMzNWRaMEI4R3c2Uk14Y1BGbXk5bUEr?=
 =?utf-8?B?bCtvS2ZaSmhKeVZnVU1VVm1PQmhjR2tNQWJhRmNZd1c2a2JoNUNqMFZlb0J6?=
 =?utf-8?B?d3liRHBKaDB0SXlzaGtvQVcxdDNuTktxMTdxc0VlbGtIQ1NUMzhqMFdGNmZD?=
 =?utf-8?B?dE1ZazRjdzR3UlpLK2tjNGJMc1FFcTVOYmxONVV6VkNuNTJpUkd1UlNobzMy?=
 =?utf-8?B?WkNXWEVieWxjSGN0MmNlcTlmcTEyTGlZRGlmalFBRjA0MXFOK2xTTjMwTGcr?=
 =?utf-8?B?OGVDSzNmU2FyalhFYURESW51Smg2SjcrYVAzTEoxR09CbUQzSXd1dnd3c1lv?=
 =?utf-8?B?aGllOXB4N0F0bTlRQ1prdy8xNmNmTEh3bHdaMHlYUHNUVjRDeFhZaXBqdWhC?=
 =?utf-8?B?VzZHdWJ5aXU4SjFNREdSaDUxQkNJNG03bWFTMDFkaFJWdlVPTU5UQWN0Q1RY?=
 =?utf-8?B?SDdLVE1LU3RHbTZFQVNqMWlYTUo3RDdlbCtzNlQybVdWMlpkNFEyWWx0OUgy?=
 =?utf-8?B?bmEvLzh5WmJWTms0S2ZRbVluU0NnZmM3Z0gydkROWVY3SThoSUlIMEpyNVc1?=
 =?utf-8?B?MytFdlNxL0x5K3NVd2traHRPaDgzQmVua2QxaWg0WUF4WjZxWSt0Q29JS2Mx?=
 =?utf-8?B?aWZJUXlFY01XTHBsbDF6aW9IRDk4cWhYZUE4bU1JWDV1TlhDYitQbjNKU3BP?=
 =?utf-8?B?RzNmZ0ZFdk1XQUtBU2MrQm1wK3YraWltMlB2MEJpZGd3Yllidk9uSGx6ZzlE?=
 =?utf-8?B?V1dLL2c4OTltVHZTREduMDVSSFM4bG52RUtGc1RwNGEvRFhZTUhTZVk0cEtX?=
 =?utf-8?B?c1RZZDNiL0pCMExaRG90YnAvWEZ1Y3FMa2FxelFRL0VwQ3ZlMXRlYkM0MjBw?=
 =?utf-8?B?cmVUbmFQTW9KQ3o2YmQ4L1NuUy9lMm9iUGEvR2FadTU1ck4xUTNSSWlrUmxk?=
 =?utf-8?B?bkdaeGl1eWFTYjhEb0Y0b24wc1hYVWJiT2VIZnNmbFpUcGMvS1NDRWg5UENw?=
 =?utf-8?B?eXdueW9TNWNmQ3kzalJpTXlxOXhrM0ZZczZxREk1bk1zanVKb1Y0dGN2RjZM?=
 =?utf-8?B?N3dmcWwxY2xVa3dxaS9JM242NkQrTnUyVGJUWTJHaVVwVGRCS25RT3diRUFQ?=
 =?utf-8?B?Qy9NZVVIV3Myb2JaclQzc09wOURqTUNWQzBXdTIxV3hhdlVrbHV3bkR3MUtE?=
 =?utf-8?B?RkxwMVFld29nNFdHZkNuNDdjTjRoKzRveW9xQ2VrNEU2dm5rTDZCc2pIcThB?=
 =?utf-8?B?cXJ2aGNsRkJWbXpvbGVwUjAyZ1Y1bjkwMWV5YXdPaCtnYzZMNFp1dUZydnlq?=
 =?utf-8?B?NWZMcFpnVXBtZktWRU1ZL3B5NG5jVGM2Q2R2U0lpcFJhVnd5aXlFcTZpbWJo?=
 =?utf-8?B?Q1VUZGlHNWVheVFxVXNwaE5oNCs1OHZFV0lSalRyMktGUFl5MDhRZGYxVHNR?=
 =?utf-8?B?SU8yMDQxcEY1dnplUGEraThKaXBOOTN6WC9KenpYOU8ybDYyeUVqV1Y0Ykhy?=
 =?utf-8?B?YmV6REZNelNrOHVjZzNheG1aZWI3RWpJcjM3UDlsYW5iaGV6RjlOSkhyVXFU?=
 =?utf-8?B?NEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5802216d-659a-4c31-809d-08de3c9fbe79
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2025 12:36:33.1519 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1p6d7XrTSd9yw0GBk4ojAQMJZkYRTdMmtEDNsNpJZBIQ6t60uuxAthBkvlRjPvtoaQAAj5aF0wHD/Pufn7cBNQF4bFW10xgwS9yl8DCxqHs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4753
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


On 12/2/2025 1:06 PM, Mitul Golani wrote:
> Configure pipe dmc event for dc balance enable/disable.
>
> --v2:
> - Keeping function and removing unnecessary comments. (Jani, Nikula)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dmc.c | 8 ++++++++
>   drivers/gpu/drm/i915/display/intel_dmc.h | 2 ++
>   drivers/gpu/drm/i915/display/intel_vrr.c | 2 ++
>   3 files changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index e076ba7e0f28..1182bc9a2e6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -859,6 +859,14 @@ static void dmc_configure_event(struct intel_display *display,
>   		      dmc_id, num_handlers, event_id);
>   }
>   
> +void intel_dmc_configure_dc_balance_event(struct intel_display *display,
> +					  enum pipe pipe, bool enable)
> +{
> +	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
> +
> +	dmc_configure_event(display, dmc_id, PIPEDMC_EVENT_ADAPTIVE_DCB_TRIGGER, enable);
> +}
> +
>   /**
>    * intel_dmc_block_pkgc() - block PKG C-state
>    * @display: display instance
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 9c6a42fc820e..3d8a9a593319 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -25,6 +25,8 @@ void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state);
>   void intel_dmc_disable_pipe(const struct intel_crtc_state *crtc_state);
>   void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
>   			  bool block);
> +void intel_dmc_configure_dc_balance_event(struct intel_display *display,
> +					  enum pipe pipe, bool enable);
>   void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
>   							    enum pipe pipe, bool enable);
>   void intel_dmc_fini(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 38dc4f87e6fe..ba8b3c664e70 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -823,6 +823,7 @@ intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
>   		       crtc_state->vrr.dc_balance.slope);
>   	intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
>   		       crtc_state->vrr.dc_balance.vblank_target);
> +	intel_dmc_configure_dc_balance_event(display, pipe, true);
>   	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
>   		       ADAPTIVE_SYNC_COUNTER_EN);
>   	intel_pipedmc_dcb_enable(NULL, crtc);
> @@ -840,6 +841,7 @@ intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
>   		return;
>   
>   	intel_pipedmc_dcb_disable(NULL, crtc);
> +	intel_dmc_configure_dc_balance_event(display, pipe, false);
>   	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
>   	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
>   	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
