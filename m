Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EidGPN0y2k3HwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:17:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF745364F41
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:17:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3937910E88B;
	Tue, 31 Mar 2026 07:17:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LTUn3X5m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DADF10E890;
 Tue, 31 Mar 2026 07:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774941424; x=1806477424;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dOU7qdxNWOhCXfWx3nTaZlgJtbVZsFHeVKhIP5BTA/Q=;
 b=LTUn3X5mcnPXWgjN2V3GsUlQkRwSiWzCHvHirzXty+G70JxRYIi7ZSqI
 Cqx5RQomcZoLmXMk/PrWjxAJLRZQb4E+t0dug5cvgG/5FMSXXH2Lb3EFb
 wh3/heTZVPSWCWygGrnj0jkgWCGcWVIMwtRYe6kWrMlgPYSrYQkh1kxDe
 HCq7zqBvHBEo3VMPHJchGmuIyoGkzdTw66piitt5uSjog2F+an76lCXIH
 dk7NmTUe4N1RiAWm1YIGZvowsFshq9NZnWQYnjxVwji4zRQYm1Y8+jHVT
 9EELZk6WmX7DoLA0kuB5QC/rfc+ezE1KDjgcC4gUnfA5tgFl61CGHRDUc g==;
X-CSE-ConnectionGUID: g67I3AIxS9eyJpDs4gpT8Q==
X-CSE-MsgGUID: M9YTg92eToOjyYBuNOhnJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="86245032"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="86245032"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:17:03 -0700
X-CSE-ConnectionGUID: Pls7WNoxQyW6CWsNdhsIhw==
X-CSE-MsgGUID: t5Jg1azDTOikriAR31djcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="226161246"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:17:03 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:17:02 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 00:17:02 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.17) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:17:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XMV0EGpOs4yua1JBVngxHGaST3m5a/kIkQvJyadBCJaq1gmynFFuTvliGrI7PT26hDFc7f8TZc0lAGbo1CyFirg8hK1hlejnQCQ+ooqLiUBgQ0+upEMT21qNfdY5uuARZMhaHO7L7c+2YHou7Rs50n9ZMCZPBOEo9VPq1Bd2PQEdTfXD/XkqenOCuSBKNtIB+aVn37R5EOeD2xQAk7+V8HGBfE4iQ5WLZf0PyVqn0lIQoag6jC5XLCkEBqIQ6R8EzF6bKpyQGNmb5nvjzMLGoq5Jdad4yH5pqSEUczHjVHqK74c+njUEOQGbLwhpOO935jvDeOffAuLzq5hm9G4N+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uRG/ci7jfpmr0vKL2AXb3LtXtAorjrs3JRriS4YXrCE=;
 b=XmJCiw23KuAL/kc45HSaqcfV5IbMr330+/I70JFN/1UlCP7pUlYdEd6xP2Lllri3ugF8QugI49sAaflSASErF6wJzE1bwIbuCIMrv5fvTDAGwk0Hda7qI1TP4fdd6GQrTvfk1UNikabMBBKtaZ6/jHXQysUNoFxWr0qxyGkHzB5gRsLOmPW8dIyl3+5p7gZAeW39rV30nBbfvCVxo01I/y3XJdbnSBX5h/Fe4zkIqLyBLx5xTDQXgdPy45bR4F3VO0xjngJV8Iy8PEWrZWA5Se8N5/b/JZJJ1PgKQYgmW+gttiqi2CLD/u16G5aGVsVkrEqAcxISXiYZvmFR9Vlarw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 MW5PR11MB5931.namprd11.prod.outlook.com (2603:10b6:303:198::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.15; Tue, 31 Mar 2026 07:16:58 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a%6]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 07:16:58 +0000
Message-ID: <d492ae64-27cf-4823-9bea-48724edff267@intel.com>
Date: Tue, 31 Mar 2026 12:46:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 17/26] drm/i915/writeback: Add the enable sequence from
 writeback
Content-Language: en-GB
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <sowmiya.s@intel.com>, <uma.shankar@intel.com>, <swati2.sharma@intel.com>, 
 <arun.r.murthy@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-18-suraj.kandpal@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260325110744.1096786-18-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0080.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::10) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|MW5PR11MB5931:EE_
X-MS-Office365-Filtering-Correlation-Id: 14a595f0-806c-4043-bda7-08de8ef57f10
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: gXhNqnAt9n9CApSSFsuf95D4Tj8n+6XJ/q690kQfYq87QJZF84tqT8aK+e3WYqjG9Lh/pLyTXAbhtx/Lh++w4d0dqxnpKac659AD8WU94twiv9ITd7XcdztIJ9bR5aFSBglIzSQYucVrvB2ioWckboTHojmM8ZloHp8sKBo5U9WadfpXbj/63W3sjpF6n0/py8PlvANq5JMlzY1rfVdPDeihhV+ZBxglfXFCFl+i6UkQPGLW3g2o7EdSsrwMNdrFEUEkxihWg96plBNFHaWLwu8trbL4GudAPbRdJqUXXPHHlEtAuuiIfpXyCrhz7rBQ/9RUDmn6Sf9Q2MES2InwU66/CWs+U/gY9ezy0W/zkD7h5H8SkSQlD2ZPnHEmVYNpI+3aOPWhNJlsG8kV64Fuyz/n/6bi5FuLR4KOvUfF/47yFIZe4XXsBhJ3T3C5f0yYtjMuthR5EFxSJVvsvOiGt/rRpH4BFUrDNWtwvuxF60lHPDc03bLPGyTrBNRN+fVCBkr/cKuqWZ4HjnSkL9Q1klZ4UAvEOOpjqR8QsM7C9TWE+5RiTHnjpNHNbRZXUUg8ZTkgLcrrTsp5RZPXoJ8gbvmMLr5fsY+wk1wfruyqKwTBPmNYyO6d2Ky9KEOfVaf5dds0NuXRCR6UR7Si5/gHSdbvbFwjCHsLaP8btdmUPyHNMao2YrytYXUSmt4SmuFZ23jyPq3vfq9qERpfGBxotXAmM1VBWjFsKGh4mrKAdgw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWgrOGR0YjFud0hleW5hWVhyMVRaQ2xEWGhoYUFhcUdKbHVQUXVjamhUQ3Q3?=
 =?utf-8?B?T0JieStGeXhOSFIrUGVSTWVQNVVYenZkanUwZGRnTDIyY1diOFRnUXp5eWFh?=
 =?utf-8?B?ejh1Nkdjei90RytDcThyNUtwcTE5NC8waXFwbEYxdVJwOFZlVWsyc1V1VVcz?=
 =?utf-8?B?eThrcDdpeXIzenFaRmc2ZU9JcXZXSlNCTFlNN1kxRXJPSnR3TTVVcVRKWjhR?=
 =?utf-8?B?clA0S08zYzF6M1ppazFhbGNBNklHMHlWU1I3bzlSaHUzVnhDeWdabm43alIy?=
 =?utf-8?B?SHVOR1lLTW1uSmdVZGl0OFltQm5uMVVNU05tTjk2ajdFSm1uMmlNaHNLVmVO?=
 =?utf-8?B?VWgyYW5BY1VXUGVxeEdCSVpzbGtPTm90bUlvS1F6NktIUjZWNVI1M1YwbHVU?=
 =?utf-8?B?VEJJanlWSTFnU0R1clBOdUlaUnlOMTJ6UURZMzNrbkVkTTIwc2xVN3RhbFc5?=
 =?utf-8?B?d2tPR1VsUEdjUFRmZXc0RzBvTStXUThKQ1ZlTzVXY3htcHFrb3AxNHkzWUFw?=
 =?utf-8?B?djArUVAycEVydDM0Q1N2eHd4YVVmOEtvdEdIM0pkU2V1eUZ5Qld2Mk5SRWhs?=
 =?utf-8?B?YnhjLzIwQ1F5aEhDSGxNVVhtdEordFpUSWpsSEhkREhIekkxR1NjT3RYZmxM?=
 =?utf-8?B?dHExclE4eVVlTmxNd0J4UFhXeE1XU20vWlVrOWNFanhJc2RDc0FGZy9mdzBS?=
 =?utf-8?B?cXN5MjNQS0FwMUZJQlBYWDNVeGxOZEEyTk1qeXYxK28xMXpTSzZJUWN0cERj?=
 =?utf-8?B?TG1DTThBZzdieVBqd1JYRHBpWEYzMHVNY1RkU3VLaG9DQk9weURGNzNMUjB0?=
 =?utf-8?B?SzgwQWREREU4TjdNMEJXMmgrMFgxK2FqL2NUVnArQUswUkZSQ292WEdPRFpR?=
 =?utf-8?B?M3ZhelhqQVFvSS9Wdk5jcDlRQm03K05PaWcrZUpMMXA5OVdwc3BpZldtc3VV?=
 =?utf-8?B?Tk5YMXI3bVdwQ2NzVXg2SE9UVWllMitFNDkvbGhoeTF1cXRhN2JWUldkN1Jq?=
 =?utf-8?B?QUZiWFJkekdVOTQzYW9NVjBBUXRLMlRiMkhEajFvSzBucjVjSkZqN2JwYTdz?=
 =?utf-8?B?THpIZ0lDRXFrOEovekpGNWVDdGRNZU5YaFZuMTc3SFdZRWREVkNNVzhvWlA4?=
 =?utf-8?B?TGQ5WnQreWloMHBiOWMvZ0dNTkpqYnhWT2UvK0YwL1h4emdva1p2em1HL0Rp?=
 =?utf-8?B?bkNlN2RDaGxGdEw2c0I0Q05BVmtac2hqVTc1V1p2RnorMVhnODZSZ25jQ1Ny?=
 =?utf-8?B?em10Ny9mYkdPNjBvQnJwRnBJR0dDZUxGeG1xUzl6VGNxbnRSNUFaemttQXRu?=
 =?utf-8?B?OUJEaitXMnAzVWJHckFlQWJaUXQ1TWNqOFBuVVN3OXVvKzdXWGlqQnlLZXN4?=
 =?utf-8?B?VVFyQUF6ODI5SVplNCtOemRzQUZXbmdhNXl2amkzM2hKOWdQRU1VQ0F6YlpB?=
 =?utf-8?B?OEVUNTV5MGRMTzdjN2JlVnRYSlZDQmwvNW1oWUhnOER0UDNZMEFOOUFZVmNV?=
 =?utf-8?B?TEE0M1QwMXV2dFh1UWdHMGxxTGVrT3VBc05QQndVVGFrQVFuZzlvTHVXVFRj?=
 =?utf-8?B?NjZDVkNCQnc4YXIzdVVYeGhYSzhXd25pU1prUDhBNjhxUCtxVWNTS2UyaVlM?=
 =?utf-8?B?dWM4S2NuWGFIMmo4TkREQ2thdWJTL0dXRVVXajVjazN1cW5uc2tyam9jc2t6?=
 =?utf-8?B?Mk83VzhBemNPUStFOFJCZnhCOWJwc0ZqQWI1NkhtdnIrOFdOdWlwL2plZ3p5?=
 =?utf-8?B?TGtvaVdGQ2p2QkhmVEU2TEVnQnhScTdId2RPaGFwZ2w4SEVvV2F3TmU4YzJr?=
 =?utf-8?B?OXRiZytZQms4WTFTUEhtSmhFUld0L2dIbm5sZm5lTGdtTGh4cjB6M3E3ZkdE?=
 =?utf-8?B?OFc4a3FKaERlTE1Pc09ETVRUTzEwWDVFWXZ2U1pPMlA2UlM3VU1Ra2V6V2wv?=
 =?utf-8?B?T2VVMnV0QlFwQ0g5cjZwMDdHekF4R2tnY2hsYm9yUG1NMCt4RWJhNi9BTWlH?=
 =?utf-8?B?UzgwWitiZnNDSzFiemo2RU5WVFgvNm1PNENRV3VoUTlXU1F1eERRcGFmYVVU?=
 =?utf-8?B?QnVXTkxxNEpDRE8xS0FGY3l1Vk1CRU9QbkdJTk8zQmkwSXhLYUtweEMyKzhV?=
 =?utf-8?B?YXlIVmprQzNscjVLSjRCUDA0bVd4cDlqSnhUcWN1bng0L0JPOWowQndoaldl?=
 =?utf-8?B?RzUwNTBzbW1QZ3JNdmU0SlJjck92aExsM1pPVEtjNGFjZGtCbDVUU2k0MGhB?=
 =?utf-8?B?ZFU1R2ZmSEp0dk9WRUowRXhSVDFEcnZXS3NkV2wydVRXajUvQWhqcW1QUm5X?=
 =?utf-8?B?NTNYdHloVzdYVGx5UDN4d3pmR1lsKzhCcFFZOFUyTEZIS291ZCtKRXpSTnBP?=
 =?utf-8?Q?Gqq/3TPB8xNRrsVCFwIV9LiHv3Mif4rfKCosm?=
X-Exchange-RoutingPolicyChecked: RAwgS+ycjb2To+9N9H6N4dJLYscuwOFYwHtPxFN86a0gUvTcmajfJAd3Y2k8xayIJarwJSRfZ5WHPo9eP+FFYuXuD+9sWgPRCL2oiw0H4pK07mDT5STI30D8sdhrTTdN/2ldhTaRcgQvyEZcjEz0AMcW1l1GDvZMEb4SkROJ7kwRUyCotrlW2RmhyZUNZVAs5F6tn9hK4fzfMKWacfK6bu+2O38+fr5LoSIRiTtzGXYc/VUWbIo+zA/jEGS00sFK77gowmcpT3zTWQlDJXKPC6w0H5fwFHhx+8SjXt7FsGkojuw86qvZ5/LB3X9tYr+prNCAAvntcRR8TqGcanPHGg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 14a595f0-806c-4043-bda7-08de8ef57f10
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 07:16:58.6379 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kkfAY8kZijHLiCmZtfWGON/ECaKG8VCdjBY/W3TdIvDc1QRyCDcIjCm0ETpvWC37p12hIXMmuuC4f13e0BcpK3KClcGroZ5Vq11yjFXHSQk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5931
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: CF745364F41
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/25/2026 4:37 PM, Suraj Kandpal wrote:
> Add enable sequence for writeback, use encoder->enable hook to
> enable the transcoder.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_writeback.c    | 103 ++++++++++++++++++
>   1 file changed, 103 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index ba4c162847c8..d45d5faaf7cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -17,8 +17,10 @@
>   
>   #include "intel_atomic.h"
>   #include "intel_connector.h"
> +#include "intel_crtc.h"
>   #include "intel_de.h"
>   #include "intel_display_driver.h"
> +#include "intel_display_regs.h"
>   #include "intel_display_types.h"
>   #include "intel_display_utils.h"
>   #include "intel_fb_pin.h"
> @@ -30,6 +32,7 @@ struct intel_writeback_connector {
>   	struct intel_encoder encoder;
>   	struct intel_writeback_job *job;
>   	enum transcoder trans;
> +	enum pipe pipe;
>   	int frame_num;
>   };
>   
> @@ -48,6 +51,12 @@ static const u32 writeback_formats[] = {
>   	DRM_FORMAT_XBGR2101010,
>   };
>   
> +static struct intel_writeback_connector
> +*enc_to_intel_writeback_connector(struct intel_encoder *encoder)
> +{
> +	return container_of(encoder, struct intel_writeback_connector, encoder);
> +}
> +
>   static int intel_writeback_connector_init(struct intel_connector *connector)
>   {
>   	struct intel_digital_connector_state *conn_state;
> @@ -215,6 +224,99 @@ static int intel_writeback_atomic_check(struct drm_connector *connector,
>   	return 0;
>   }
>   
> +static void intel_writeback_enable_encoder(struct intel_atomic_state *state,
> +					   struct intel_encoder *encoder,
> +					   const struct intel_crtc_state *crtc_state,
> +					   const struct drm_connector_state *conn_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_writeback_connector *wb_conn =
> +		enc_to_intel_writeback_connector(encoder);
> +	struct intel_writeback_job *job = wb_conn->job;
> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	enum transcoder trans = crtc_state->cpu_transcoder;
> +	struct intel_crtc *pipe_crtc;
> +	struct drm_framebuffer *fb;
> +	u32 val = 0, hactive, vactive;
> +	int i = 0;
> +
> +	if (!conn_state->writeback_job)
> +		return;
> +
> +	wb_conn->trans = trans;
> +	wb_conn->pipe = crtc->pipe;
> +	fb = job->fb;
> +	hactive = adjusted_mode->hdisplay;
> +	vactive = adjusted_mode->vdisplay;
> +
> +	/* Configure WD_STRIDE, WD_SURF and WD_TAIL_CFG */
> +	/* Enable Planes, Pipes and Transcoder */
> +	/* TRANSCODER TIMINGS and other transcoder setting*/
> +	/* minimum hactive as per bspec: 64 pixels */
> +	if (hactive < 64)
> +		drm_err(display->drm, "hactive is less then 64 pixels\n");
> +
> +	intel_de_write(display, TRANS_HTOTAL(display, trans), HACTIVE(hactive - 1));
> +	intel_de_write(display, TRANS_VTOTAL(display, trans), VACTIVE(vactive - 1));
> +
> +	val = 0;
> +	/* 2f) Configure and enable TRANS_WD_FUNC_CTL */
> +	switch (crtc->pipe) {
> +	default:
> +		fallthrough;
> +	case PIPE_A:
> +		val |= WD_INPUT_PIPE_A;
> +		break;
> +	case PIPE_B:
> +		val |= WD_INPUT_PIPE_B;
> +		break;
> +	case PIPE_C:
> +		val |= WD_INPUT_PIPE_C;
> +		break;
> +	case PIPE_D:
> +		val |= WD_INPUT_PIPE_D;
> +		break;
> +	}
> +
> +	switch (fb->format->format) {
> +	default:
> +		fallthrough;
> +	case DRM_FORMAT_YUYV:
> +		val |= WD_PIX_FMT_YUYV;
> +		break;
> +	case DRM_FORMAT_XYUV8888:
> +		val |= WD_PIX_FMT_XYUV8888;
> +		break;
> +	case DRM_FORMAT_XBGR8888:
> +		val |= WD_PIX_FMT_XBGR8888;
> +		break;
> +	case DRM_FORMAT_XBGR2101010:
> +		val |= WD_PIX_FMT_XBGR2101010;
> +		break;
> +	}

Both these can be moved to their own get() functions. Also please add
MISSING_CASE().

> +
> +	val |= TRANS_WD_FUNC_ENABLE | WD_TRIGGERED_CAP_MODE_ENABLE |
> +		WD_DISABLE_POINTERS;
> +	intel_de_write(display, WD_TRANS_FUNC_CTL(trans), val);
> +
> +	if (DISPLAY_VER(display) >= 13)
> +		intel_de_rmw(display, PIPE_CHICKEN(crtc->pipe),
> +			     UNDERRUN_RECOVERY_DISABLE_ADLP,
> +			     UNDERRUN_RECOVERY_DISABLE_ADLP);
> +
> +	/*  Configure and enable TRANS_CONF */
> +	intel_de_write(display, TRANSCONF_WD(trans), WD_TRANS_ENABLE);
> +	intel_de_posting_read(display, TRANSCONF_WD(trans));
> +
> +	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, crtc_state, i) {
> +		const struct intel_crtc_state *pipe_crtc_state =
> +			intel_atomic_get_new_crtc_state(state, pipe_crtc);
> +
> +		intel_crtc_vblank_on(pipe_crtc_state);
> +	}
> +}
> +
>   static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
>   	.destroy = drm_encoder_cleanup,
>   };
> @@ -335,6 +437,7 @@ int intel_writeback_init(struct intel_display *display)
>   	encoder->get_config = intel_writeback_get_config;
>   	encoder->get_hw_state = intel_writeback_get_hw_state;
>   	encoder->compute_config = intel_writeback_compute_config;
> +	encoder->enable = intel_writeback_enable_encoder;
>   
>   	connector = &writeback_conn->connector;
>   	ret = intel_writeback_connector_alloc(connector);

