Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6849DEBAC
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 18:29:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 583F810E54C;
	Fri, 29 Nov 2024 17:29:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bvctWmZr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34F8A10E354;
 Fri, 29 Nov 2024 17:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732901355; x=1764437355;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=C32ra1o5am33uC7TErg+DAELSThX7ffS0rhi8DdP6VM=;
 b=bvctWmZrbxQW1cbbJTfDbJBcUgA2B7dw2fDt4Adi9UHLtfHwOcJDMUbS
 X89jecwJtDOzR/CvsoI/eFzzcQSEvJBE5Pkv7R+efxzTdJfCDNwKfMZKz
 n9oY95D4h2YfWziNZ7phKlEnS+G/ZFmebh/vHJln0HUSDJ8Hqy4kop3Ta
 0kEN0QtW2gmetyvnU+r9MeMfctJSpYHY1DkzYjqfFKNv1P0KPl0eS0piV
 bENSh/rqGUbObHMiLvXUhMaRVgdB6uIyNROPsAEVBA2dcLN2bCMED7bvr
 ozBMl1QVDKM4amIyVgvbUxMBPUGwMi6gGB7aLnb1E/em+vi9q+pSDro76 w==;
X-CSE-ConnectionGUID: vZgrqCd7RR+BALdYdyuboQ==
X-CSE-MsgGUID: ISfrKdb7Q/Ct+okM5Pzjug==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="20732950"
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="20732950"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 09:29:14 -0800
X-CSE-ConnectionGUID: isyI5xd2Rm2aqKef9LD0Xg==
X-CSE-MsgGUID: 1izk762yRY2KlsOHxB70GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="97572762"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2024 09:29:14 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 29 Nov 2024 09:29:13 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 29 Nov 2024 09:29:13 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 29 Nov 2024 09:29:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TSDLVUqKzwGr8Tch0/e4wlIgD5w4nCTSvzypcQGx3jhqmTjI+V7rKZDBWsp5tuJr2rG3WmXPsBFJrD/0Idl4lu4CAXIOh8vb362OXiIwL1dqKgWCt1myj49B9dTQkyhZ4bn5n2pfvXrAQT8aNiWMZDe8XchMfxTPXkV4pgc/ySp8Xmw+9RDsGvzxBDB83FjuTBBfqDr3495wQeC9D0TOiGpNaK0QSr1cBKJ9bIiiY2ENQWPBvPYw9Bb/qAycqK9615DuTczvddhKKHNrIRbt+0qWL21hfErkZWbbIF/bvHEBWTWBacB5pRJP92G05G1QG/q6o7xURdrxgR/xmUuH8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CdFBxDYHBt81tU6IK8wButEcB+3Ye6mod40anm87ppM=;
 b=W2KX4LKnqEpo8eqmHL477y45dpEttCai7i+sXYPeAJYGxYY4M/NNGrhJM0Yk6owEHzJzmOdEFOASCUh9cfeyFar4V2dysoZvGRtuciDkfJfLJ5cG04tblSAv3Rhdof3FcPVEKXUlPaTnEpFDnl5MgGBspe/81gbNCxloFx3pJLLQ/Jsx0VDH3mfDrpJUJ+8ER7sG8tLwhhgsCxpT8CTvDhnbh+IjpsJukj2DAo2fTXFzLfcn4tPe1jtJGXL9P1sYgdbgai5m2BXy6/cx/Zd2zJF8f57tCL+SAZA5X4sOcIqbuDkEN+VBuCNejyXj4tcPcJab7z168ZMglKk9L241yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB8762.namprd11.prod.outlook.com (2603:10b6:8:1a9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.14; Fri, 29 Nov
 2024 17:29:11 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8207.014; Fri, 29 Nov 2024
 17:29:10 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z0nvMEZBt2y67R2g@intel.com>
References: <20241129151754.22015-1-gustavo.sousa@intel.com>
 <20241129151754.22015-3-gustavo.sousa@intel.com>
 <173289645221.1637.13618914452641694713@intel.com>
 <Z0nvMEZBt2y67R2g@intel.com>
Subject: Re: [PATCH 2/3] drm/xe/display: Extract
 xe_display_pm_runtime_suspend_late()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Luca
 Coelho" <luciano.coelho@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Fri, 29 Nov 2024 14:29:04 -0300
Message-ID: <173290134463.1637.9588163666481395161@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW3PR06CA0016.namprd06.prod.outlook.com
 (2603:10b6:303:2a::21) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB8762:EE_
X-MS-Office365-Filtering-Correlation-Id: 695029bd-d4fe-4054-470f-08dd109b5607
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VjJzWnZkZGJSMWhDTDNTek5uQzJmSkord1NLVmxtNHpaU2tUNDRoSEJPMXVG?=
 =?utf-8?B?YVNaeXpSQW93NHkyY0s4cUlXcEhqRTFqSUFwNm9zK05QckJTak0vSi9IZU1l?=
 =?utf-8?B?dy9WYWhiY3R2bUxRQ1Q2YkZ2Z2F0bk1NNW1UQjhmTThKN0tSdkxQM2lDZ0xr?=
 =?utf-8?B?b3NNZG1yQ28rdEFISC9wTTFtWEllaUdIbGZ2ZU5QU21wS0M5cHl1RlFYVDUv?=
 =?utf-8?B?NUF5aWZEOG5vanN4SmkwaXVvZEt2Z3BxdzJWUnlCSTM2bjdLdGVoUUxsY1di?=
 =?utf-8?B?RllROFMrVHJDMGRYdm8wUDRxTUhEamM0OEFnZC83a3hPUmIxaWZpOEpzT3BT?=
 =?utf-8?B?RDNPUjZmNnBrUStQZWdKTUxhbS9ncm1kVlBsUWlIZEFXcWFyMlJJQnZGUmwv?=
 =?utf-8?B?S2dBUlpRY0tIMWlnUERvdS9vdlFxVThRZFlwKzV1MTZsazdaSlNTK2FwRGh4?=
 =?utf-8?B?QkdTbVhsUjN0UjdkcHVMQlNhd2crM3RZd3FxZjVyZlVXZGNJNlZibXNSR0NK?=
 =?utf-8?B?KzBiTDR3ekhtUlFjcDhTdkpPc2hLK1AzY29tOWJjdkxyU2U4VC9XU3RxN202?=
 =?utf-8?B?aCtZVUFYWDl2WTJ6NmFGRThJeWw1SlBwV1FVWC9wUGhkckluVHNKbDRTMW1X?=
 =?utf-8?B?eGtxTjBoRVZXMXpjM2pTWmFLek5ldUluSWpCQktiRkFqVFZFZkFLQ0wyT1hw?=
 =?utf-8?B?bW9LZVRQdDJ5SC9EcEtZeDV0aU1GcXFLdkpEaFJkMGRyTkN6WlBPOG5kcU9T?=
 =?utf-8?B?NGZiSGlGZ0s2UkJoMXZZU0hrTzlpREtRWG5PMjlUdXRzdjdXWG1NVFBEYzBM?=
 =?utf-8?B?RUdjNFZzT1d5amhVNCs5Z1lMN1pVM1dweWRSWVh6K2FVcmtPR0RtaGljS0No?=
 =?utf-8?B?MEpaaWZhdTRQZFlheXp4M2ZrMWhZTHdpRXU2TThBZXdPWG5EUjJVcVR1VEpL?=
 =?utf-8?B?YjVTaVg3cjlub2lTVzV5aGFCem9McTVJRzZmQk5YNG1rc2VFZ3l3M3RNRjEr?=
 =?utf-8?B?dFJiYlMyUGorelBLWkVRVmF6UThVTGlaNnhyTFlJc3J5aGlNbTBhWWdlQVRi?=
 =?utf-8?B?VXlTdUQ2dURJeG4xYmkwSWk2bW43NmJyMHBSL0R6TGkyRys3dVZnTjB1Qk5O?=
 =?utf-8?B?OS82MXJBTUczOHUvem9aWm5wcHo4cVBoR1NESGF3R2dyZnBDdEtiMDFiMXgw?=
 =?utf-8?B?NVhLZENPTEZleCtNMDBUaDlyNHN0eWpHRnR3eWFpV0tvQ1hLRjZjRkM4VTQ0?=
 =?utf-8?B?UmJYZFJHaXo5YUY5dHJpVFgzdDBsY00xUTVqelBqaVpkeWttbjQ4QTl3bVE3?=
 =?utf-8?B?RzV4ZTBzdmc3NkNDU3ZRTWYwcjhUQzVjaUxoanlqTFdJWDI5ZDV1dTBiMksy?=
 =?utf-8?B?bkdQNVYzNjJRa1g4UmdNbGhyazlqZG1nY1plOGQxQmo1STN2UkJMcjBPTEpo?=
 =?utf-8?B?ckljbmtvOXp3V1UrbUhvemZwR0NpMjUzNXpjUitPdEh6WFRCa3doYWl6ZERv?=
 =?utf-8?B?cUxXM09NcElWaFhzdUNqN0VxWER3LzVFL2ZqaGdSUlhpbllKdGRObXpRSFBK?=
 =?utf-8?B?QXlGaGhmK0ZrS05NVTR4MFRKazlIQk16K3lFZm5tT2p6Njg1a0taOHF1dXpt?=
 =?utf-8?B?MzJBMExQSFp6TmVManpwZDdYNFV1SDJXMWdHTmd3a21BakVzeEF4ZWlqRDNC?=
 =?utf-8?B?LzlMYTQ4L2NyUDlxZ2lkRTNJbWxnTWJuYmdCTXhPYzE5QkZXN0V4NEQxcUxq?=
 =?utf-8?B?TTFUSDRLbmhSVm1XWGRSVnN6UnVDZVRyb083eFVNY0hhcGJkcHdtaHl4K0pE?=
 =?utf-8?B?UEJPZkdJS29kaElqdWJMQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2Z4SXp2eHhJWXZRdHJzbUdYS29qUXlKMXBhREJHMTV6MVYvUy9adU16cjIw?=
 =?utf-8?B?c0lLNS82UG01cXJNbjhaL1ErQjNsbDJQamRGSlk3amVIblIrQjJEUmtlejF1?=
 =?utf-8?B?Z1pvaWxVVjM3SFN5dDdXWW51cCsrdEtjMGdRdWR4RXBSNnQ1VS9nNmdDSnE0?=
 =?utf-8?B?ZE12M25aTVB5S1dMbHU2blExVGVwMGtBZFluUzJSMksvYzIzNmNTQm5hVzYr?=
 =?utf-8?B?dWV2eUZNT29aQmhWSDg4SWZ0SGZJRjJJa2FYQ3l0V3J4Z0FtWm1DV1ExL3Zm?=
 =?utf-8?B?VG1qNHZJU2RwN3pBMDFtNFZ0dVBBcmoxYmxKdC9icStqbnFNUUNEanRPRnJa?=
 =?utf-8?B?bFFqM2puRXhMNG9aUkU4Z1ZjNVZoS2tRYnhMSVh2VW4vRTZNdVg0c2tlakVJ?=
 =?utf-8?B?b29yVThiUEJLNys1UWNpUFN0YmtGNUk1S2Y2dmRMOWVkbnpCdmJCQTBVUnRL?=
 =?utf-8?B?UFlrcVduM3d3WnNFRk9kRGFIRnRWZ3FpZmJmZUNST3EySjR0Tm1kbzI2S1pu?=
 =?utf-8?B?SHlSUzd2L01xZlZBT3VkK1NLMFJsMSs4dWFFVmszeDg5YUNHdjZrSG9QUDQ0?=
 =?utf-8?B?MlBkK1BnSVN3SVhHZy80dEhnVUlHREJQQlAyaG05QzI2RlFxdHE5bGtDVXUz?=
 =?utf-8?B?Q1RZZHYray9rajllOWhOenErM0h2dWR5dlVNb2ZncnpWUUovdG8wVlRKWHJG?=
 =?utf-8?B?NlpibjRsYXdSMGh5THQwWVltV1lhQU9zSTVEbDNvR2ZCU3pxdlMyaEFTazVM?=
 =?utf-8?B?R0ZBOWI2anRzWng2RTFRc3pvNnBWSkJ4N2tlKzJsTXdxUUVIZC9WUkJHVDBK?=
 =?utf-8?B?aExYM3N4NTJGTmFuUHBVcEhtL25KZUI3bTNkTGlvbnd4dEJUQlpJN2ZoUldG?=
 =?utf-8?B?dzdFNFVtcjNBMExObW1JK1NQQVB4S0JVN0t4ck9kd1g4cCtEUWhQVTBDVURT?=
 =?utf-8?B?eEVOUUxjekU5NjgvUW9VdFBaa3NuS2lOaVduZjhjcGNmWHZTUkMyc3I5bXBW?=
 =?utf-8?B?TW1pYmVHSGFPdE5Ja3RIRXY4b3FOcE1sUzk4c1A5Q3d3MWxNd2xtb2NIUkRm?=
 =?utf-8?B?cElnNXBiaVNEYXlBdVJQSUphbHplS0FaVEZJenppQWZZejZSTFJ0RnorcDli?=
 =?utf-8?B?SHE5MUlYL1h0YlRBRGNldG5veEVVRW1WdWJjQ1o4VVkzb3NKMm9qRm5VTHBT?=
 =?utf-8?B?Z2R4Z0tZZE80UUtPQVNSSUw0aUxQVHo4dEhjNzJDcm9iV3drOFdHMmtaNUFK?=
 =?utf-8?B?S283VjRlWStubzZSZDI3NCs1U0laZzlDV0lXQUE1MFFBK1dvckEzZWphbXFy?=
 =?utf-8?B?VFdZV0NKSS9EcHhkM3dGNm1za3N5Q2RqNkFTSzNnWS95dHRDQjFzOEtFZnBH?=
 =?utf-8?B?VDRqZmhaNE9PQnRkOWV0TzN4V3o3VG90M2hJSTRvZTc1bzVpWktUQkx2dHp1?=
 =?utf-8?B?VEhnWGgzWjkzNC9LTlRzbDM0SmZWYldtZmpLc3ZwNllkMHVYYXZqc0lrekNo?=
 =?utf-8?B?S0IwMHA0cTEySERlUVVVZFlSakVvOElJMVB1VnhIREZLSnlhdHVUcXA0d0Vj?=
 =?utf-8?B?SHQ1QTNVczhyTkJCZEVkYTd0NzhEcWVVY3JXaE9uWDNLTS9aaDVrTTlnSHdw?=
 =?utf-8?B?QnRIMGMzdFNFaExkMWZ3WEdEcEhSaEx6T1RXUTJTS3doNW9TeWdLTW9wV0Zv?=
 =?utf-8?B?REVBa3NBaTZLektKVzdGek5qVSt6SFBCNUsyWU55SUpCeXJYN2wrUlk1RFJi?=
 =?utf-8?B?bzF6K0JYY05pUW0ybTVBU2hCYzJkR0NINmIxUDYva3I2TDhGbWRUeWR2K1B5?=
 =?utf-8?B?TUpObElzeElLS2hIa0dzMFdiSlRqUGdFNGdra1A4R3ROTFppNGNOMWZoOVV4?=
 =?utf-8?B?RzcxTXlPLytsQThiVUNSc3VIWnpWZnhRQWZuVkczc0JDell0VGt5OXk5ZGNG?=
 =?utf-8?B?Q29ZWDZhOUVDTTdTM3pDemY0dFhmN1hVU0RoS2lQN0x0d2o4ZmcvRVJ6TXQ0?=
 =?utf-8?B?M3ppWmxCMGZCVXBTRTJYVzNjQk55S0dsL0FlcXo0SVVWMXNlMyt5a3MzQmhT?=
 =?utf-8?B?ZHRmeTNVdmRRNUlLNWpQazhCRjFJS2ZtT083UUxNVU9iQXFlZ0hrQ0cvR2I5?=
 =?utf-8?B?RnJHeWNERysyUGJSK0NiM05paW1YUXdGaVpKbTkxUGRBdnNyYlRtTkg3Q0lH?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 695029bd-d4fe-4054-470f-08dd109b5607
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 17:29:10.7463 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OPEh1DNCd4+bpMxYgqCjMSgilTyWNJpvZ0mTefMbsf5i1+HAyztJfNZZ4HorkFxEcdnz4q1GzQG0lYJDtc2qjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8762
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

Quoting Rodrigo Vivi (2024-11-29 13:43:28-03:00)
>On Fri, Nov 29, 2024 at 01:07:32PM -0300, Gustavo Sousa wrote:
>> Quoting Gustavo Sousa (2024-11-29 12:17:45-03:00)
>> >The current behavior for the runtime suspend case is that
>> >xe_display_pm_suspend_late() is only called when D3cold is allowed.
>> >Let's incorportate that behavior into a function specific to runtime PM
>> >and call it xe_display_pm_runtime_suspend_late().
>> >
>> >With that, we keep stuff a bit more self-contained and allow having a
>> >place for adding more "late display runtime suspend"-related logic that
>> >isn't dependent on the "D3cold allowed" state.
>> >
>> >Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >---
>> > drivers/gpu/drm/xe/display/xe_display.c | 9 +++++++++
>> > drivers/gpu/drm/xe/display/xe_display.h | 1 +
>> > drivers/gpu/drm/xe/xe_pm.c              | 4 ++--
>> > 3 files changed, 12 insertions(+), 2 deletions(-)
>> >
>> >diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/=
xe/display/xe_display.c
>> >index 69c828f38cb6..2e189abf8d6f 100644
>> >--- a/drivers/gpu/drm/xe/display/xe_display.c
>> >+++ b/drivers/gpu/drm/xe/display/xe_display.c
>> >@@ -407,6 +407,15 @@ void xe_display_pm_suspend_late(struct xe_device *=
xe)
>> >         intel_display_power_suspend_late(xe, s2idle);
>> > }
>> >=20
>> >+void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
>> >+{
>> >+        if (!xe->info.probe_display)
>> >+                return;
>> >+
>> >+        if (xe->d3cold.allowed)
>> >+                xe_display_pm_runtime_suspend_late(xe);
>>=20
>> Whoops... There is a typo here. It should have been
>> xe_display_pm_suspend_late(). I'll send a new version.
>
>I'm glad you found first,

Me too, to attenuate my embarrassment :-)

>I confess I was going to miss it.
>
>Please go ahead with the changes and I will incorporate that
>later whenever I get back to that display-pm-reconcile series
>I have
>
>For the series (with this chunk fixed):
>
>Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks!

--
Gustavo Sousa

>
>>=20
>> --
>> Gustavo Sousa
>>=20
>> >+}
>> >+
>> > void xe_display_pm_shutdown_late(struct xe_device *xe)
>> > {
>> >         if (!xe->info.probe_display)
>> >diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/=
xe/display/xe_display.h
>> >index 17afa537aee5..954c5a268ef4 100644
>> >--- a/drivers/gpu/drm/xe/display/xe_display.h
>> >+++ b/drivers/gpu/drm/xe/display/xe_display.h
>> >@@ -41,6 +41,7 @@ void xe_display_pm_shutdown_late(struct xe_device *xe=
);
>> > void xe_display_pm_resume_early(struct xe_device *xe);
>> > void xe_display_pm_resume(struct xe_device *xe);
>> > void xe_display_pm_runtime_suspend(struct xe_device *xe);
>> >+void xe_display_pm_runtime_suspend_late(struct xe_device *xe);
>> > void xe_display_pm_runtime_resume(struct xe_device *xe);
>> >=20
>> > #else
>> >diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
>> >index 80699dbeb2e9..a6761cb769b2 100644
>> >--- a/drivers/gpu/drm/xe/xe_pm.c
>> >+++ b/drivers/gpu/drm/xe/xe_pm.c
>> >@@ -414,8 +414,8 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
>> >=20
>> >         xe_irq_suspend(xe);
>> >=20
>> >-        if (xe->d3cold.allowed)
>> >-                xe_display_pm_suspend_late(xe);
>> >+        xe_display_pm_runtime_suspend_late(xe);
>> >+
>> > out:
>> >         if (err)
>> >                 xe_display_pm_runtime_resume(xe);
>> >--=20
>> >2.47.0
>> >
