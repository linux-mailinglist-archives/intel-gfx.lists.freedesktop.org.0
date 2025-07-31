Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 293B3B16C2A
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 08:47:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B108510E710;
	Thu, 31 Jul 2025 06:47:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d3v2K79B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7B2A10E70A;
 Thu, 31 Jul 2025 06:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753944419; x=1785480419;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qQSD/McPpE2kKqYmk8eF91alJHdrEoAXhrS5jDMh38w=;
 b=d3v2K79BBftBgzKXDnLStV5TKR/p7C7jVxKoUKJ1uxq1GJuqP8uPjk58
 4Q45yHzrid/E88iZ9tqeWjRBk+cdoG2WMCnKdy3ciwdMSiXPq7WHodPt5
 uP6mdFv5A4pbq7Rf8u+zY496hKORtCvOnmnBN0irUv97dVZ6roYr9Ul6O
 gvxVhz77XRHo+rHeFfR2iJQ7pXs+4qJLdoEy548c34a82JF5csmoaVlhO
 BJya526LBCxpkhSLC7rMbX15NIq+sp84l3yYKyaeklcPne6WP64zw4Zc4
 qiL8S9UW5n9WujZUg2iswS54nnvnpahNX3Z+UZJaio7g0MtEXbwk6y9uP g==;
X-CSE-ConnectionGUID: dbxbbzNETsqsAc4RWP8A/Q==
X-CSE-MsgGUID: StxIF5EQQdChkUvI4ZkQNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="67338661"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="67338661"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 23:46:58 -0700
X-CSE-ConnectionGUID: z4hQoIEhQ62RkPI1tJprPw==
X-CSE-MsgGUID: ZslSPTdmSty+9NmmAGf2xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="186868916"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 23:46:58 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 23:46:57 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 30 Jul 2025 23:46:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.42)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 23:46:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wpNkqu2EqMeid+sNieX9FFiJShomhBlUFKUQyC2p3MeiHOrIe7tOg15DODrHL6708o8578W04HMAYggFZZELpgJh5WgaP/QT9YL89Cu6yF0sUaXsPFgCqxnO2Ird2X6PvgdI/uLdrPANgOp+9Mq5GKz7zcKF6DvSc68IqUmBNpWUy8UK5eqzfOJ4habaSZDwUQnpUv+V8AhiT1KUSYFbQMtZ7+MM4AljhPibVMVZB/8jimTZ7DH6IBc3VABUVf9t/gSEewQh5U5iY7nkxTqaeuEvCwCfkBDLX424WtfpvU5GkegyqfKQ7l4S9czebOzqla7VET/DW49FpO5X6JDx6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c1Ag2POCE2tHJeAn+IACBqtc6pf+hg81ER7ifXoUDZE=;
 b=ld0yRThpGPWaRnrwB2pC6APWGrmdhn2NQXQzpjnezuko6DVeSU0LrAW6YLZT7KfciUJWjJznj31Lf20TFqnIfN5PpT4Q04YrlYePQnT6Ww7b4SrX/BqNtEIE3AfEzKWQsx7fsP85YtxhdbkGVRVASlOaxJ/5ZqMyZaD9Ar8syD1f1EkiuBsBkpbAc/mCp1FCy3vSh0nLvyXMWeXVNYgIItlYdrE6fjbjQ2XucW6ksnLH2te7WgM9MUpzfA7gn8jgHciQ2WrxLfZ1eeUCta8aZ3eScx1hOiRWGkpbiaFQnQVdugI/eKdRwG2cRzAKyzFbolTUlIZ9vmaRXEI01fY93Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA3PR11MB8968.namprd11.prod.outlook.com (2603:10b6:208:57b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.22; Thu, 31 Jul
 2025 06:46:26 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.8989.013; Thu, 31 Jul 2025
 06:46:26 +0000
Message-ID: <ac7223a8-6efa-4159-9ab6-78321a7322dc@intel.com>
Date: Thu, 31 Jul 2025 12:16:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20250721)
To: John Johansen <john.johansen@canonical.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, <lucas.demarchi@intel.com>
References: <6a98e630-0610-4ba2-89c9-b2bd0d8ef9af@intel.com>
 <5dc2418f-524e-4f8e-944b-342a556a98ca@canonical.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <5dc2418f-524e-4f8e-944b-342a556a98ca@canonical.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0184.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::13) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|IA3PR11MB8968:EE_
X-MS-Office365-Filtering-Correlation-Id: d074ef1e-defd-4354-a330-08ddcffdf88d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Ulp6UUN2ZnFwZEQ5U2RFWGVBMDlCbkZFaWlaMW05bkRSUk9DalJWdGRKdnFR?=
 =?utf-8?B?dUtBZFFsNS9tVUNPMVUrM2Q5UmlwdGxibWkyT3BtbDZxdXRTeGhpRDcrSGJ0?=
 =?utf-8?B?T0N2ZDVZVE0vRjhHR2YxeXIyL1NBMXhpNURUNVY1TVp4ak1GTUpRdm41emE0?=
 =?utf-8?B?S3N0UWRrZnlmUVFvNnZNRGJIV3RmT2VQTHpFRzVrMzEvMDZqUFd5NC9Rajl5?=
 =?utf-8?B?a3MwQ3lLMUxlT3Ntb1hDdllpNEMxeTVFMGlWUkc1RTBPdU9vZnJDalF6Uzdl?=
 =?utf-8?B?QVIwa3FNSHBRWVpCMjBCeEQyZEpBNjFRYW8yK3NlWGNuWDArZU1Xb1V0YmNB?=
 =?utf-8?B?bzU5eitJTlhPaldhUmxqUS8wQ1pyUFE2S0tiQVBzdFVNSWFNb1RmbUZMZ3NV?=
 =?utf-8?B?ZGh5UDBld1orYWdhbWpUMzZHbUllS3JGQ0dnWDgxUlVQMWdKUEIyazg0Z0ti?=
 =?utf-8?B?T2RsVUJ3WmQ0ZzMwcGpPMkZnVElQZ1gwandGa0ppSGJtaFNwQXdYS1k4TGFO?=
 =?utf-8?B?bE9GSng2cHVoMjdvOXVybXE0bCs1c0VOZkxFQTlyZWVFWm9sZ3gvQXp4Z0k4?=
 =?utf-8?B?UHNzS1RRdk9OYldLbWJ0SDR4RmdqTDBRYlZuWmxjRmNuRWFsY0JqWTNMU1FQ?=
 =?utf-8?B?enFKbThEbnBjUEJ6OXRhWFlGK1hUbGtiL0o2em81b1NFU2lJdWw2Y0R5ZnQr?=
 =?utf-8?B?bWptMllVZnlVN2lPdTJVbmlTaXlBYytaVmhZSzYvbmlQRGJLbll6UVZzVE1H?=
 =?utf-8?B?cW1NS0RnV2pTZEVCbkg5YVcxY2N3Mm5FdHkzS2wyZHUrK1ZvcGJCNEJITEJV?=
 =?utf-8?B?d3VZMmNiVFVOdW1tYnUwZkNkbTN3VnBYc0lBbU5rUHEwbVNham1NN0FvVWth?=
 =?utf-8?B?UjBmYzEzaUV1b0FiOVI3UG05ZHlkNTMzekIxM2xaa2hTMC80ZGVmUjdWand4?=
 =?utf-8?B?Ry9jSFg2eG45THd6dmQ4MjF1TDhIczJYb1pJWjl4Q0x1bTZPNCthc1dQR2JK?=
 =?utf-8?B?dFMrTStaRFpWVWpodFVmSlY3T3B2cml4TUFhTUJyay9aM0VFbHNKVWRlZFQz?=
 =?utf-8?B?QTlqYmhvakh4YkxlNWxzMmxPTmw4UEpEeVY4ZzJudVVrRlYzald4SC8velFT?=
 =?utf-8?B?OVFoNWtIZ1hIeTRnNTk0d1RsbkdFeHpxZFZUMDFKTElRMXpsQzU0dmZUMlZO?=
 =?utf-8?B?L0x5azhObXY3bFhyQUVOa0tDWlVZT1c4R2FwRGZUeEtyODhaaW5xbEdDMUs2?=
 =?utf-8?B?N0Nnc1RQR21QOVZQbmp0Q0didDFQbXF5WCtzeWJMMml6cXhud09OeS92Ynl5?=
 =?utf-8?B?aEFWS1UrckhXQSs2aEZUcnhaSU5aaUxLSEo0R24vUGRiaGp3VCt4U3BnZy9y?=
 =?utf-8?B?ZXRNYVp3cUEzV0hiMGg1bE9TeGNUcXlyU2NSQ0phaVJTeTloZFBtNXVpdmFF?=
 =?utf-8?B?UVlLamhXRW92UWZZZ01veWlxUkVmaEZncnE3MU9UNGVnR1FFZTU1Rk5WSmhH?=
 =?utf-8?B?UHB1S3g0eTVrMEtMODZXVW56NSsvN0EwNy96WXcvNVNZaGlNTEM1MzR5RHVK?=
 =?utf-8?B?WDcvWEtVTlNwenZRQmFLcitoUHdlNDd3L2l1dTVUbTBLVElmczJ4WUdyaUY2?=
 =?utf-8?B?OHFpKzQ3L1duUHd2cXAwazdKcG9QaTNJQlYrU3RDcFE1SkFIWjZ4QmhzK2xz?=
 =?utf-8?B?bk1Hd2ZqYWRBNitpWFNsS2dyU2pob3gxTnVCVnRXZFBDai92TlNZU0NRTlQr?=
 =?utf-8?B?QWNRNjhUZzNpclVrOUs1VmxhcHgzUmpOaktCNE5EelBaTVNzbUxiK09tb2I2?=
 =?utf-8?B?WGEzUzVPeGcwNEVqcCtWQ2JJN0xMYVcvdXVCbGdGNlVUOUltUTMweldYM00v?=
 =?utf-8?B?VWVPenc2UWNBT2hiZGMvK3dQL0NYLzhkNEdzRkl5OUNNbGFZWG9nSXBQMUFp?=
 =?utf-8?Q?NZmE2qQ9SaM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QXFXWWJ3Z2lkVVd1eDYvZlJLb0hINFowN3JiOFY5R3pUSFhINWNmYVczWXJo?=
 =?utf-8?B?MXVhdXhzNUxveGpVc0hiZGszSFMrV29uR1ZKTlk3Sm1uV3dyTlYrcWNCckNs?=
 =?utf-8?B?YXJwYmc3NHBqUG5ZcXQyTTRlNlBRMGo4Uk9zQ0lBSmhrQitxNm1iMG45RmE3?=
 =?utf-8?B?am5ES3ZVaDU4MkdsdWZjMUNkZGNYbmNOUHBXOGl0RDlYQ1dJYmNYQlFIVkxx?=
 =?utf-8?B?QXVKSE9OdjRFZXZNVHp6TWhhc2oyK3Y5MVA4NjBUQlREcXdJVTRBOU93K0NE?=
 =?utf-8?B?Nk53YTdCMzBtLzY5eGRzZHBlNklmNVAwMnkzVEtNeCtnOW8zRy9pZFB1MHR3?=
 =?utf-8?B?ZjNZdWtCc1ZVQi9nTmQ5VXRUODk2eFdDSFJnS1lPOGRyYlJEMTI5ZGhrSERr?=
 =?utf-8?B?QmVIRk1HRGpJSVI0Qnl0U3o4R3ZITzBxNUVvb0o4U3ZBY25aeUd3ZjNlWENX?=
 =?utf-8?B?Y212QnljbHRVSGxoa3Z2a0JSN0R3SDBWT1lOR2I2clI1Y3dwUEwwMTlBT3kr?=
 =?utf-8?B?QnprNkhhWlozMU5FWWdBK1dEKzVoWVpvY0o2aW1CcDZncWxCVVBvU3NVcWdX?=
 =?utf-8?B?Uk1rNHVydDdDVHBCNG5WaVlUSFBETnJuMEhwVWIyViszb2g1c0JkNGVaMUxB?=
 =?utf-8?B?N2FRQmhCYk9CUXc3UjBieHlYMjNSMVhBbTJJSTVkMC9rVWZxSmllQnp4N1J5?=
 =?utf-8?B?TDM0M0pUL3RKR0RKUGFySDV6VTQzTE4yd2FoalQ3bStjanlUZ1QwaWRIKzA4?=
 =?utf-8?B?Unl6TUVyNmNwMEZBNFFIdG5uTXk0L3VPKzJiZGdEWWI2ZVh6aklpbXFucis5?=
 =?utf-8?B?L1dlTWRzbWN2SWRRcFY2MXh1OUgwUjg2ZTUwYWUrekFGbGJwT200WXpxdUxQ?=
 =?utf-8?B?YkRUdGxMUTg5d2o4aTZUWUNOTFE1VjF3dm5ySm9JajhyVUFXT2JYTzJXYTlW?=
 =?utf-8?B?ZzVXazczZ1UxcUdSZ3hQbkV4bWlvNkFMUDlMeU0rQTVIZ05QYVZxdlU2UFZS?=
 =?utf-8?B?ODMvYTlBV3Nhc0k2bTZob1FZbGVmY3hhajhOdm1zL0JpRG9kaktyMVRjcytV?=
 =?utf-8?B?TEw0dUgxQnBQYWFmTEd6d1l4NTJBdHdEemhZY2RGR2hWYk5uY2I3ZmlqeXhI?=
 =?utf-8?B?ckgvU2NERHkzK3JuczhHWklUUG83cUxiYjRMb3dBUzUvdHVvdkdtWG54d0RJ?=
 =?utf-8?B?ODZ5bHJXOW1YZk1XeUxZN3pEaGg4eU5ZNzlDM2ZLZ25xYjBSeVUyQzJBNWJo?=
 =?utf-8?B?LzJxSDBwVmdKUzBLK3FFV1F4MElrd1QwdW1RandUbjRMdlQwaUVlVHpDRXpW?=
 =?utf-8?B?YkVOL2RSd1poWVp2NkhXbGd4WHMvdUwySjNWOVdLUUIvVXhxQ09Pa1dHQ3dJ?=
 =?utf-8?B?ZlRaS3hheDRJQ2VKcWZxcEpDR09VclZ0TVNQNG5IQUY3dE1nRWUwdFhSU2xy?=
 =?utf-8?B?V25IakNkbzRJd0l3MjNNTElkQXlocnR4RnJpZ2ZnZHdMSmdRYlNNNWxWUmNy?=
 =?utf-8?B?M2hOaDhBMXlYZ0FJak1aMVNlQXFBbk91VW11cC9JVVBKYUFYdFhIMmluR3FH?=
 =?utf-8?B?Q0MycW1JbUJJbXFMUFFsVEovajV3VU5uZmI5NnZIVzU0RkVHYWVzUWk5ZkxC?=
 =?utf-8?B?a05abm9aSUlwR2hGbTBYTk9EeXdYZk5vRjNYVE9jVmtIVS9SVThEUHdnNDhm?=
 =?utf-8?B?UEs0NCtKWGduRnMrUmFKYlA0dkhvL0hNTTlZNzJETzJ6ZTNrS1FXVXhUSGVv?=
 =?utf-8?B?VFQ1VlRyQko0N25JaFRocG9rZGdmcWNFNEV3cnMycVFFZHh3emZUZ0hjbWRJ?=
 =?utf-8?B?QzI0N2U5UWI3bTBISVB1MVEzMTQzT3FFM0ZEdm9seUc1ZHVrTFVRQ1NScHZ4?=
 =?utf-8?B?bGovd3M1YkZvRDBjeXRkUytTaDZkN3AwenBOUGRKUkdYTGJrdWt2emwvWmQr?=
 =?utf-8?B?OVROUHc0bHBRZmhzWVpNM1V4SnEvL2NBYmxCN2NrR0lWU0dNQ1FzdUtxT0FL?=
 =?utf-8?B?aFlNRXZKZWNTVFRaY0l6eDcycG5VcWtsanljRlFUS2RHSFl1dndpU0dmaTNP?=
 =?utf-8?B?d1hKUEY4cStYSW1hbEpBSmxaandSNldKUEJrdmcrelRaaVBhYXYwZ2p3dE5W?=
 =?utf-8?B?QUVqcisvc2dkdXl1Nk01WWJuY1Vucm9tRWZ3b05zUU9yOTcyWXpobjdxTjNE?=
 =?utf-8?Q?5YoyJ0OSsVCShKFsCjUwz5M=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d074ef1e-defd-4354-a330-08ddcffdf88d
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2025 06:46:26.4300 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +ASWhUSc9cFLWjOgIRxfPGMu+Xh0CXz+1ifjPoYlbrwBXVfIVNPQTbPM//YaJEEqc5vJblIHkpC/KRVyTnujAxBVz8+NYsBvHcicabB/55k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB8968
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



On 7/30/2025 4:24 PM, John Johansen wrote:
>> After bisecting the tree, the following patch [4] seems to be the 
>> first "bad" commit
>>
>> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>> commit 88fec3526e84123997ecebd6bb6778eb4ce779b7
>>
>> Author: John Johansen john.johansen@canonical.com
>>
>> Date:   Thu Jun 19 22:11:52 2025 -0700
>>
>>
>>      apparmor: make sure unix socket labeling is correctly updated.
>> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>>
>> We also verified that if we revert the patch the issue is not seen.
>>
>> Could you please check why the patch causes this regression and 
>> provide a fix if necessary?
> 
> yep thanks, fix made. That patch accidentally removed the spinlock 
> initialization from
> apparmor_file_alloc_security() while testing spin lock changes to the 
> very similar
> apparmor_sk_alloc_security(), and it wasn't caught 🙁
> 
> anyways fix is being pushed

Thank you John for your response. Kindly share the patch whenever it is 
available. So that we can verify the fix.

Regards

Chaitanya
