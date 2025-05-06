Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD32AAC596
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 15:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4247310E69E;
	Tue,  6 May 2025 13:17:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cHm29KGC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 047D910E6A5;
 Tue,  6 May 2025 13:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746537465; x=1778073465;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kUBOMVJvuTwr7OsdoHGY4D+4aK5o2owel1K00I09G5Y=;
 b=cHm29KGCn5h14OxLLcDuZ2K0tDg4k+JGK/jOdJ03vXEOAhMzVA1HRjkn
 w3mPNpqfLocF8qL+FD32fHMmrwFqpeAAaPrC1RktpC3FwWTqbFAJvNEtk
 kPtMd6yLLMsPML4PwOxHNOQYrV6fHZoHRkydbAXLTOfkCHm7Y2wdXkKJY
 lO1SEB7kac/iUDfg3rsCUdTIAUlXZVOmzw5OBfz4pLJOZoiroT1k8ZTps
 +2N31/dG6b9B2EkprF2Ojt3kgZZSlbBd6BoC3+LJQbTtpDdVU2LirqePA
 LC8vplIzxryn6TbMUxrUS+FB0nGFC0ykHQzhHaVpLRbbJzVE6ssOz/5ap g==;
X-CSE-ConnectionGUID: ykNh4kUFRueUD4Wy17uBsQ==
X-CSE-MsgGUID: m86EFQ7wTrCtoqgxjkT/kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="51855119"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="51855119"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:17:43 -0700
X-CSE-ConnectionGUID: BtvOvvdOSDmtZtsU/VvZKA==
X-CSE-MsgGUID: yoPWeHrXQTaWkDIDf0/rAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="136613978"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:17:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 06:17:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 06:17:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 06:17:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qH0OhBWNDeiEZUzV2uX6FQN5Ld+w0k1C0ekSg1mQAUya3y+CJao7d9v53dDu7rGgcAGVSX+Ef9RArmawxHP1AxsfWcE/fDnM+YDAcSP9yR0OiUOdWktMNRYU+hJjQW9xJiECxNjMLbIO5Db2Wo4DHMm4R4d6nKxMpsrEqUOOnxgPN6HKu2jtb3Ax0Tt7I52iL6udOVn42RdZGeGdEyRoNkjWkDCngGjVZrwB89oWS3/BHL05pHd0IlfpEJBMG5/gssV7rWMP/QOdtwFtXHlCjYX9vvja5KqcnGlRVuTSdkCdQGdxakicIVjXsLEDDcKM67kVMIwu97BUqYv3F8Z6BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tEIx5uqJAi/k0YnUrTbHFiI65iwuSCOUIxZY0Ly+Tow=;
 b=hXbjAVG30lA2anP1G+hBaY5wpxEq8oLTtHbtJ0opiEsG78VhrjXE3D54TTmHa+KWefpHTYrRAC5pmi6gbka9KLIkzRV4H7kiSGdASAzdU+WdctI/OztAD+rKB/NgTl1JYG0NghWbLPLHUBzdQgTEuTOSj2hWQUWWXIHb5rQws4Gv7ovQ2Hc5YmlSeW0BXBIYRf3+p+jEXXhPyplTLjBwefBSEr+F/T/fSR59pnttGJEXTvaOukF5zsibSPTSyykmQ13vYeSW12zUvu2ZSjDmizMgzyuRi1XV3XPiuuLjDEYrnWoEbiDPlTrZsldoGPCfWnNRJaFnQyY/1iVwfDuQjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5035.namprd11.prod.outlook.com (2603:10b6:806:116::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 13:16:53 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Tue, 6 May 2025
 13:16:52 +0000
Message-ID: <75d50d15-2e75-4718-a90d-8b5fcd9f6e54@intel.com>
Date: Tue, 6 May 2025 18:46:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/12] drm/i915/dp: Export
 intel_dp_dsc_min_src_compressed_bpp()
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-11-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428133135.3396080-11-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0105.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5035:EE_
X-MS-Office365-Filtering-Correlation-Id: 9af0b5bd-5f6e-415e-649a-08dd8ca04441
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RzJTZTYyZ01peUkrMDFJSC9BRWNEaVpRZk1CUERpZEFQcXpINGRWQkJKdDRy?=
 =?utf-8?B?ZVRWQ2pKTXlGZVpPYmdVdU9PdDRkMmx3bWFSYXVHZFhZcUpzWm9yUnZWZkdQ?=
 =?utf-8?B?SCtJSDkvcnBJSVBoSXdkV3F6dWhwZFJUc0F3WWtGaHlGc2cwRktqYW5Eb3U3?=
 =?utf-8?B?Wmx0SGhNZ0duNFdnNEQ3VGpkSEFpbFgycjVuL2o2eFRucjd2MXUvd2p6L0py?=
 =?utf-8?B?SG5aZlpwdGk0eGFvN3Q1dXdFb3J5Vm9zb0ZTaWFxbTV2bys3OC8za1E4b25n?=
 =?utf-8?B?Y1MzZURZcXVxL0ZMcE5vdXpwWElBL2EwYWFPbXBSdWV5NkJNbGIyQlVkeXhN?=
 =?utf-8?B?RzFXY1JMbFgvOE5wV0ZQUzRPNVFaRHYrRWlhc1RvQklZTW1MYUFwY3dYMHda?=
 =?utf-8?B?SDRsNmNtNGFHRnhNdXR1VkhLU0NtK3V5eEhZd2xBWWxhN2FUQUpSaUZiRTJs?=
 =?utf-8?B?SUp2Qkc3WDVUVEdCMGJEL3RwR1ZKUW40Rkc1akdMQldwSW9oOWZybktZTVNN?=
 =?utf-8?B?NDM2MVI3eVF0MkVjVW1rSlp1cE02RHRvakdZNkRqNlV0UDUvekRHM1gyVkV3?=
 =?utf-8?B?a0ZoWS9tbTVaWnZCK1J4TnVGZTZ5dStIVDByc1FEYVAxU01jQjh3THpPTDkz?=
 =?utf-8?B?VklDdkhTTUxucHQ2K3NRRHlnNytiVUFYMmsyb25JMThtV3pFYTRHQzNEdDRZ?=
 =?utf-8?B?eUhteXdEZkg4T0k2eEIyWk8rdzdsOTRUMGgwb1p1bEd4MjJHUWkrajdGUmJQ?=
 =?utf-8?B?U2FtSDY3NU5xa3pFcXJ0ZTlVQWVUZDBWNEhWSzQxTzJ2VzVWZTRmT2piRzdG?=
 =?utf-8?B?UTZMSU5sQVJ1czZGUnAvUFNtQWxta1dVdzhpTWswODJsNGVoSGZzU3psdFBY?=
 =?utf-8?B?T092RS9hMWIvSTEvKzRLMUt5cVFmaGYvbldQeHFnMkNobmczVWU0cGdrUW4r?=
 =?utf-8?B?SlFlTDlmMWFLUGt2MHJNaDVlSkZoRktxZnVTMmtZU2x6a3F1MnBGaUcvQVZo?=
 =?utf-8?B?RGRUeXRUOFEyc1NJWmhrdmZuQk1IOEk1cHp5aWlLSEd5blc1ZUJlZklTTk03?=
 =?utf-8?B?d2laT3lyZ1NxeXByb1VMUE9PNUpDUm1oVGovNGdBalRRUmYwZXduaE9sZ2FW?=
 =?utf-8?B?TGptZUxWK0paWkwrdDh6Y3d1azJKRmVKRURzdExSRFBocVJoR3hYVE9lTmNH?=
 =?utf-8?B?NHU4VkdMMTJrc2JkblIrcStYUmJwbU5heG1WbnY2QTI0RzNoVUJidHNXdE8v?=
 =?utf-8?B?UjNqZ09QMUltSlRyaTN4K3V0SWRWWmhudEtYNENEcmwvcHBLM0hWL0Zubm1Q?=
 =?utf-8?B?b2JISTBVZ1hTWVVXV0kzSmJFcVk1T2hQQ2l1RXdKREEzUW1qZjBhMW96N0hP?=
 =?utf-8?B?U1VzK050SnhyemNpZFJSNkNrOFp2YmFmZkhzVzdsTlZrYnh1VlJrTkNCUW9K?=
 =?utf-8?B?SU1zK0RnK0NuQXFDcUZrSzZsMFRpQ1ZjSE9ZbVlMUHF2djNjUDFiNzY3eE94?=
 =?utf-8?B?ZzhOdThSZWhJOU5OUHM0Nm1ONTU2RTcvRWtmZWh4ZDN5eTRNb1FaSkM2TVd1?=
 =?utf-8?B?Ti9INTEycUNSNlVIbjl5bDhCOVhsaHl0VkZ2cjBnam5paEs5aHlzeEcxbldt?=
 =?utf-8?B?VWxlTU00RFhPSE5maUVCSXpRUGtqQVJKaUVzT0NwTDJXbjYyOUdOcVJhbjMz?=
 =?utf-8?B?MDZhcVVnWnNkRGY1eDBDRWZNdkp5NFJVTUpwTnd6OXkySCtzM2VqQmNIckc0?=
 =?utf-8?B?QkwxSXRUY1JrRmZ2dWpZTklhelVPSDVjOG9td25oWGdsektSZElqVEFVL05P?=
 =?utf-8?B?OUFyY2xHQk14SnVEeE05bTgwbG1vdkI3QVVjcEdQMVdBOUVsbkVVNTk4dXpO?=
 =?utf-8?B?Mk1PMStwZ1pJMk5MU1pPQ0N6alBtTFcrckFtdzA0R1ZCb2FNdjRLbVB5WGFL?=
 =?utf-8?Q?U3c3mNCRLPk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXhDNWpwSkx3RXlzK013UERvbE5YWTNReHZLWnltYVQ4U2dHQ0NtSXFiT3I0?=
 =?utf-8?B?Qnh0ZEtaR1E3cFB5d01wdlZOSXpYMXFvRmwvV1pBMEtYZkk4cERaNks0RGNE?=
 =?utf-8?B?ZUZnMEQ4Tlp6YXl4WmVCaS96RUdROHhnRCtPNlFqTmlRSGgyWDF3NXBIS1Nl?=
 =?utf-8?B?ZmI2RFdIaURGVU9tUXE4SGZVYzNrdTN0RWtlZVNzenZhNlltSFZNSW4yZXFD?=
 =?utf-8?B?Z1pQTUxGNEV3dzdGZlExcTJ1cUhhU0dkQ0tvaXpSeThiWTI4b1R6VDZIMTlG?=
 =?utf-8?B?U1FVNDVCUEE4Y0l2TWFzNmJXb2lkSlBSNWpycXcwMjRZY0s4K1RUTkhJV3Y1?=
 =?utf-8?B?Q0ZyR3QyRGcxN1hLMjRSQ3VRcTQ2cUJxMHNTS3cxNEdYcTFXcE1XMVlqQXR2?=
 =?utf-8?B?M1dEaXRSZ2pFWnFueGZYa29zRjdWMGc0bnIycHFwMXhIYW5wMi9lNzdOZzl2?=
 =?utf-8?B?MjRrTHNWcmFqSGFoVyt5ZmkwK2RNNjF5aFVZejZMaHNqeEN1dTNqVnFSRkEr?=
 =?utf-8?B?N2JIQjhHUk52bDRkWGJRbzdENStXKys5T1FPQlV1ak92cEVLcnozQndvY1ZB?=
 =?utf-8?B?aTRwNmpXU1pXZHdVUCt1OVBWb1EvTk9oWHNuV2pWZElJK0swdEU4UEZlT0Fh?=
 =?utf-8?B?WUVOa0UzMGU4cjFLOG9tcUNrUERVcU15TEdMbElqY1VvRTFGeVRqMHBJNGJy?=
 =?utf-8?B?WDR5dWp4K0tvUWNpUDVNb2o5YlFVMlZFSzlzTGZKeFNHdHFCMS82SFVJQUtI?=
 =?utf-8?B?dUhXMDVLVzRBZFBQbEFFN0RhblRuSG8zNnlERmZERWQwa2M1Y1owMEJta1o5?=
 =?utf-8?B?S0ZaVjR2RDZZVVMvbW5EOWRmdnd5cEVpU0x6ZkI1Rm9EUTd0ZUoxdUlCODRL?=
 =?utf-8?B?WGhJYkxQRXc0aVpOdHA0b3M2TEs5dTRwOWhGdWxWQzN5YU9EMzRqc1ZCbXZs?=
 =?utf-8?B?VXNkY0pLSTZLbXI2OEhtZE1ibWRBR3FyZEdhbkphd3VES3ZKcjAvUzhESVYy?=
 =?utf-8?B?T0UvLzRSWWh0NWxpS21UQXRYV09NUStYR1E3d0FRR1g4N1pUNit2bmIwUGFs?=
 =?utf-8?B?M0s3QVRuUlhtcmducWYxUmtjcGtWTEo2L1owcm45ZkJNLzJLK3gveVVvRUta?=
 =?utf-8?B?eXZ2dEJVaWJjTzNDeHdRbUtkWHEzYWsrZVFKb0hma1MxdGcvUnMvZWFUQndu?=
 =?utf-8?B?U3hFVS9aZ0wyQWhFb3crc1hMUjVUN29xaEZ1dG5yMnQwUnJIcVNLM1pnOWFS?=
 =?utf-8?B?b2FrOGFtY2tFK0RzNlNjV01jdnI5L25yb0Znd0Jya2NId2VZTFFuOFhqeHBV?=
 =?utf-8?B?bWZlZlJaSzZ6YlhqeDRLWEw5U3hMVlhlV2E3THRJYzU3SkNNMTNVU2RaMU9n?=
 =?utf-8?B?MFQ3MC9qUElXWW4xTnpKS2VUS3dPN1A5ZUlKTGk0RmFlRCtYa0VnODZ1L1Rx?=
 =?utf-8?B?Uk1WZ1VablMxZEFOeFhzdU9RdUNVMnhHUG1QYzYyZXRUV1BhL0lMNC9OcW4y?=
 =?utf-8?B?WU1senk3WHd5dmRLUUtZTkF6QmdjZWlxK0J0RUNMTFVnRWN6QUc1SnEzcEUy?=
 =?utf-8?B?WVFLaVJkb0RFVHZ2L2k5Nm9JaVZISFRCUHBrMTBmOFNBdzdhRWk5Y05rdkZm?=
 =?utf-8?B?bkVvRngrU0FFY3V2dU9ueUVEdHhSWmR6LytXOTFtRTBOclBCRjdXV2VxNlQv?=
 =?utf-8?B?TmNpRjNOVGNwM0FUbE1zWmp0dXlmWnVwdmIySi8vU3h6dmtnZ0RhU2RVa29U?=
 =?utf-8?B?NGVmZVVoTlRoMk9wZnBINkVUeEdqUEptQ0lIWk5QWkZ6UDZ6bVM2dlJQb0xo?=
 =?utf-8?B?dFBkV3dLczY2djU4dStHbjVpMjB4aGxxOGtsRlRuV0ZpOXJnNFlTSU1YZjJ2?=
 =?utf-8?B?NTNRcGlweUhTOEYvR3lxR3lDQ053YXdHSmR2VWk2OThrSG9JaDNmYklxSGR1?=
 =?utf-8?B?MXV6Yk41RGx3QVI3TEd0MXdsQ3lSVHRPTUlRdDg0bkRyTDlBZlBBWTV1MmFx?=
 =?utf-8?B?cjBQQ01qWHpZZWVvWk1XaUw1RmhPc0FqNVorby9uRjdob2tVbDM0MEMyS3Y4?=
 =?utf-8?B?RE44SXRJQlkyRUtBU0pNYXlLVlJMT3pvYThBRHpEZXdVdEJrNWFEV01CRXAy?=
 =?utf-8?B?akJsKzEvajFsVFJwejdtQlhuWG01bUNkbWEwd2NjUnRxdW01aTBCNEI0U1A1?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9af0b5bd-5f6e-415e-649a-08dd8ca04441
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 13:16:52.7577 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jjWDJwTNklGT64xeLuOT8LqBzVxW8yrD5Z+/QitglsZfmNR1hU55PGfoIyPxbLZVcv/W63wIEsvtU0ayvZPtq/ZxK2PwnTzRygcxEriM0nU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5035
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


On 4/28/2025 7:01 PM, Imre Deak wrote:
> Export the function that can be used by a follow-up change to query the
> minimum compressed link bpp supported by the HW.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>   drivers/gpu/drm/i915/display/intel_dp.h | 1 +
>   2 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 73ca9f8efefc5..047473e3f6e6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2070,7 +2070,7 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
>   						       pipe_config, bpc) >> 4;
>   }
>   
> -static int dsc_src_min_compressed_bpp(void)
> +int intel_dp_dsc_min_src_compressed_bpp(void)
>   {
>   	/* Min Compressed bpp supported by source is 8 */
>   	return 8;
> @@ -2481,7 +2481,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
>   		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
>   		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
>   
> -		dsc_src_min_bpp = dsc_src_min_compressed_bpp();
> +		dsc_src_min_bpp = intel_dp_dsc_min_src_compressed_bpp();
>   		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
>   		dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
>   		limits->link.min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 3206c86adaba6..f883fc0b65c06 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -208,5 +208,6 @@ bool intel_dp_has_connector(struct intel_dp *intel_dp,
>   			    const struct drm_connector_state *conn_state);
>   int intel_dp_dsc_max_src_input_bpc(struct intel_display *display);
>   int intel_dp_dsc_min_src_input_bpc(void);
> +int intel_dp_dsc_min_src_compressed_bpp(void);
>   
>   #endif /* __INTEL_DP_H__ */
