Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gEfoIiNZnGkAEQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 14:41:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F05D8177211
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 14:41:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BFF910E40D;
	Mon, 23 Feb 2026 13:41:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e262kR9B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C641210E412;
 Mon, 23 Feb 2026 13:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771854113; x=1803390113;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Bd6HcXKamhaQFkAV0NWjlgy1UljK3yJWqmBMYM5gyP4=;
 b=e262kR9Bw1+zbWeyEMPUChkokmvN+x/CeYKvxUGemtYEi/0sYBQ1BcqO
 0syxtgiJa5roQw0er0JcWKfZuheZat6znRBkGtVDUR8Ouv5D1n8+0G3Mm
 g3Ji6xuWbvR5KUCgngnO6fuRu4zwP1hKTjbdW0kifLkYTZJxf6KU2qxGQ
 jVxKeXoiDoEz7Nc6UWDhmgeO9WadMbyxH9IImOOWykkL39438hrW8979T
 EI4myzKlvwOPUHYMnu7F3kzvAd74wjl8eoXX/cjbvzPTwYhFqZCFYdk2I
 q00IwTKH7rAB8+G7ILL2DdxLpqVWENlcLLgwCRbYa6vuSi2fI1BpEpkyU A==;
X-CSE-ConnectionGUID: a5TF74TgQB2T0Lr0yKis9A==
X-CSE-MsgGUID: 4eEHoz0kRTKpepWts+2gDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="84300162"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="84300162"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 05:41:52 -0800
X-CSE-ConnectionGUID: p0dNmqdWS2ueIIuM5lrd3Q==
X-CSE-MsgGUID: h6CdvIdwRLeMak9YUsdUdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="220110832"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 05:41:52 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 05:41:51 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 05:41:51 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.31) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 05:41:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QxHw+6NhgDxFJrSC9ZZBDJv/ox0mz3XHgX3lhK4hNxgzzRlUaBE//UcfjYDcKARPLRPHHfObjcV2vo6QdOkfVLQjvMQ5x1FQQWvwYMCqW5SLBZx+e0NKfvclwAO8nb2U6o9ZVLFtiZ5qJi/eko4BRRsSNxYjASqEOLdmKSpOtGfI/s1TF7zZ6B2woAFJ2XDYxFIV3SgxEyifgfyQ963f2FhVOcn5OCcBj3citS44JfeEPL9/VLJrPbkQZi/ZbIVQ4QNp5ERQZPFieBpfANQZKoUVeuYR5WT2yVvIoEXkXhNYj4vDaQ7shBSLMd7TT12bw2jRbp+Mo/pUwU1sOwBrDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GSWnFh/0hTKd4dwcmovsD7c2eqT+FjLw54zjEKsOTkU=;
 b=aUI1g+pu7nMhpvGXEmATdwL17wE6iLgIVjCuvp10SeH4NSmwTNMFI8+ufsq5dQ5Czkxl2k2wxNAV0sH7PsuZyU5pHUzV53V+4r66w6LTQwbS+CjKq2mqXbbzKhnoCtLdBc7t1fG/zjrHx3xjyboGH6TR9+k3cll1H4U0bSd1rKEUudrXEg84FSGqIyYQ/haxQl7EdwR66guZZ+EZC0raU0BtWtnTx+DN5IHRpcn97otbhzbWmjGzzLhmslbuUzW0zov+ydztXOm60siILDu8auTkiBgxFqEY2Dmc+TAygWR9e/kGAApMtTInWFfqN3Cu0kI9G0CSn3hf6kkdoKqK4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB8180.namprd11.prod.outlook.com (2603:10b6:8:18d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 13:41:49 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 13:41:48 +0000
Message-ID: <7c2d6f4e-69e6-452a-89cc-5fd4254430bd@intel.com>
Date: Mon, 23 Feb 2026 19:11:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/14] Fix Adaptive Sync SDP for Panel Replay
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20251111093007.3771409-3-ankit.k.nautiyal@intel.com>
 <20260223131426.1638946-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260223131426.1638946-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0165.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::35) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB8180:EE_
X-MS-Office365-Filtering-Correlation-Id: 71d2f84b-6968-4619-bca2-08de72e14ac2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eHg2N0xRVkxsYTJISlJBbjFUU2RZMzc5WlBEa3dkQXZweWIzUlFJUmg0YmxX?=
 =?utf-8?B?VlN6LzhFcnF5cVBObStCTWtqM2hBZ2RXdXh0bXVRdTFpOWxuVERCK0Y5dVJU?=
 =?utf-8?B?cUNES2p5S3dzZVQ2cFNITm5uQ2x4cFR3YzZnYWlVMmdlK2RqQXd1NEFXQnhk?=
 =?utf-8?B?dGNjSmo5NVUxZUQrd1pkNlRLNGY5S3RoZi9jdUIwc3pNK2FxS2pVNDhvWVZU?=
 =?utf-8?B?ZjdmQUR2VEFzcTd6Z05lSjROS0cxWXhHNHZzSXRmWkVqREpkRE9jYlpaWS8w?=
 =?utf-8?B?Qll4R05YVmRXMUdUdU5sOVl4dHc4dndLK3c3dzRueVJUOEJyRHF6WkdkbGNm?=
 =?utf-8?B?S21iUTFKaG02cWRFc0JkUktiZWNXYm1ZeHNlUVUyRnM5bFB2MFVMV2lOOHlX?=
 =?utf-8?B?MTBDU3JMcTUzQm9ycUdLN0N3cmxMT2N6SEt4SGFxVE8vVm01bmtkOFBNNG9Q?=
 =?utf-8?B?RWptL0xUNGJkZDdYb1lHNmpwcUQ4Rm14aUlkbHA5QldpaEJPOG5sWWJTSTNq?=
 =?utf-8?B?UWsxQ3RsVjJnWFZVL1Nyd2x1clpvNXR6cjNyMzRQekRLaFA4QmFZTXJtTTcx?=
 =?utf-8?B?QlRBUmVhSHcyLzYydmtPeFJ1MENmUHE1d044MHY1cTVuVWU4UmdyYStLeCtP?=
 =?utf-8?B?L1c1MXZieVVTZVFJUEVGR3Bac0c5VWJFclg0bzE1WFdLZ0ZvcVZxVnZMMVI4?=
 =?utf-8?B?ZG9CMGYwb1FlZFBndDBkbzQvZko1eW0xUTBIYXFiTFQ0OVNEN1llelZXWnJn?=
 =?utf-8?B?anowNThUdHVVN0JueHgvSXIybUtLWE5rd2lKVjBORjZzQ3BBdVJub1RTSVVM?=
 =?utf-8?B?VVhLMVdCQlFtM2NTSitja2xjcTRoUVFDN2tzUENqRXB6ejk3aXVDN1JCaWcr?=
 =?utf-8?B?eCs1eW5ndG0ydUdiVFRmNGE4ZlFRalIzeXJoOFkrKzJQMm45Qm1mN0h4eUM3?=
 =?utf-8?B?TW1GNGZCTUw1SVpNZE9jMng1S1gwdk5OcEVzUVNWVHVmV0ZQMDdQMFQ5b0RK?=
 =?utf-8?B?RkQ3c0FuY29IUTUwRlRjN3BIQ2FlU2VYNWNXV25GNWFlOTVuV0hhQlJ0d0Rz?=
 =?utf-8?B?aU9Pb2VoL3BhaDlTRXZSa01tSjEyUkgzMVpianR5RzJ5aUd1UUhzUm8yakt0?=
 =?utf-8?B?TTdlT25qTFNkWFFJc1RtQi80Z1JZVzNldDNya0NXUDFBZER0bDdLWmFsa296?=
 =?utf-8?B?d2FyYjhhNGgrOWVhaU02RVh0VklidURneFpoZ3pzdWF4bFJ1czZYWGtHejJl?=
 =?utf-8?B?ZWoyY1B3dTNqZW9TQmt4WUNYTmVGS0FsVXRHajBGR0pqTlpHMzFHQkgxdzFX?=
 =?utf-8?B?WEE5ci9oOThMdlRJaWtQWjFQUHErRUIwUit5L3JVLzQrWCtkL1FwUVd6Mkdp?=
 =?utf-8?B?MHBvUVRjVldBS1lOL3EwNVhkSWRXY3oyL0hoMlpZRHA0OU5lSitIUjllMWp3?=
 =?utf-8?B?NmUvN0NHeW55dUJ0WXluRlRWVXBKT3ZMRFdaczQzdUswUkV6TWpsdUJHYU5t?=
 =?utf-8?B?dWZMSzA1U1FURUJvbi80NHUwSjl0djRQbHNHMklxdmJFbGt6ajk0QnQ5YU1k?=
 =?utf-8?B?QXhBR1RFN0tacU4rSlJaclRHOWZNYlovendFVUVuNmMzaTduVWRwNzRGalU5?=
 =?utf-8?B?VnMzNXVnRHRraUYyMG9lb05hM3F1aWlaNU4yeVNmaGNsN0JNNjBNUlNMOXJr?=
 =?utf-8?B?YzB3WDU0UjYwR3diZitacTF2aFhBREtVb3pUeWd0Z0hMVlp4djRtcUxLWVFt?=
 =?utf-8?B?UXlxaXI5QzhqcDF0T3NGZ1BPUzRqSkMxZzFhVmpiRWFRNEFkUFhYd3hMSFR6?=
 =?utf-8?B?ckVmaTR2R1RuSkNvZDRKUFJmc1ByNm5iVlVlc1NjTFNaUVZHUS96TmwxNU1q?=
 =?utf-8?B?anB3TGltTlpPSXc1WDJqQlZtYXFsaHlncVc1UWswSFVKdytxN0g1UXVmSWJx?=
 =?utf-8?B?R3JtQms1MTlTN2d1TVlId2dLYUN4NEpzaE5UdTdPSjkrbC9GSFg0ZHhSb2lM?=
 =?utf-8?B?WDlYWG5CbFBuOTZFRytnazhYTU90MG9lNGpjOFM5c3FtVFVnRUhtdHBvVkNC?=
 =?utf-8?B?SXVwM2dJYzBjVVg4QlVYT3kxTnlWT2k4c1FxN09yeE5tdnl2Vk9PdVg0bDc4?=
 =?utf-8?Q?mGd1UYv1jYH1/vQMjwRW18oS5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MSt4WCtRK25IQlp4V0VjV2JZQTc4OVFZRUdXY1pVSzF1UW84d0pHcENYN3lY?=
 =?utf-8?B?ZVJ1MW9YdlhrTXZ0Z0ZMTWErdU9pUkNZL1BleFIzWC80eVMrMnFOc1RKVzdD?=
 =?utf-8?B?VXhvQ1p0V2YzWFE1M3R0YmtZV3FrSGFLK2I3ZncrWGFWSjVqS2RXM250c0dr?=
 =?utf-8?B?UnZaeFZvb2VIcEtER2w0Z0NrK3ZBVnFkQkhNM2ZRK2NIZmlGMkIxeUxpMnIw?=
 =?utf-8?B?QzNiZVkzVXZDQ2lCdzVLOUtSckdqWWNFVGlCNFFMcTlDbVpONWFUTzRMV3hu?=
 =?utf-8?B?enp1RlBOSmNNYWU3MkIvd3U3RnlPMTEyZWJ0YVRXNXVwbFl3a2QrVzZJZXFv?=
 =?utf-8?B?bHpPV2RncHc4ZmpQZVhqL3A0YUVRWjM5UUpqcDBVTWEyaEFQRng5NHB5WUdX?=
 =?utf-8?B?ZlBIWnUrdWhnT09raFVad1VkN0FuZytHWVdodmp2eWVDd202NFl3NWRQSHUx?=
 =?utf-8?B?ekhqa1JYNFpCRTFLcE1wZzlZa09pZWFMcW9FOW5LSURKWGlsaUZaMDZ1cXlr?=
 =?utf-8?B?Y3lkM25qcmkrekRjNUhEb3lhNlJuK29GU3ZKOGE2ckFvc05NUktnMElLakZ0?=
 =?utf-8?B?Y3QrTkQyeUFEYXlvcCtWemJEYnRNdlNWVHNNb20vcjFxUTBPMitoV3Vxb0R4?=
 =?utf-8?B?dUhrQ2h5dmFrOEE5U0E5bXVQdEFkV0xrUFlGNWlMSGc4N2ZuRm0wditpZVVa?=
 =?utf-8?B?N0dCSzlBQWhHNDJXREhFMjMwYXNOMjhJZlpKS0lYbHBDaTBiV05MSTNOZFNI?=
 =?utf-8?B?OHg5Y0lTOWtEV2tVdFkyWEQ4Rm5oRXg4UDF6alFuWnQxcGNSK3FmeHkzQ05j?=
 =?utf-8?B?d09GMHJWS0ZhZzg0Z3orZkRudTB5cVgvdmFHb2duUERqN2M3Q3dnWkNJeXBw?=
 =?utf-8?B?dWhuMEs3NzFwUUdpS28wSG5XZDZkczQzc3g5NmpKTkdtZmtlWjNXY0czdjA1?=
 =?utf-8?B?dEVYblJKZ0RvZEZEampQR3ZvTDI2SjVyQWhDVGZhVCtKS0NoNit3QitUdW9X?=
 =?utf-8?B?L1M0V2o4SGpPbkdNUGtpRGZBNVZYY1Y4RjA1dkpuTUFKWG9jRVQ0ajRaVGRM?=
 =?utf-8?B?dDRXN0R5clZ6cEFHR0FqWmdjb0VjUnpLRjZTekRLQ1c5RDVKaVdtTG8yK1Rx?=
 =?utf-8?B?UmMreVRHYkM2bzNzNUVWL09pQ3dqV2MvUlBFVTdqeEhjVndvZGlFNkNNV1hD?=
 =?utf-8?B?TTUvTnhHWm94Y3l3U1NtZmxkNmI4OEpqeUgwcHRkQjdLMTZNNFkvckRMZ2dG?=
 =?utf-8?B?RklHYXNRbVZjTS9XR3VQd2FzWjhQNVJTZTJFWDVXSXkxUDhWM0kwNUVxTGJm?=
 =?utf-8?B?VDE4Z1ZGZWJqUWpPZVJIWmFZVFpMOEhZWGppc3ZtUEg5ZU5iYVZOcm9XdlYw?=
 =?utf-8?B?OUVCTUtGbHZEdDc0T01hVXhuWGlrSEwxenNYZEZYRTZUdXplRE1FZTZrU3VL?=
 =?utf-8?B?cUkzVzlBM3VxaTFRakFEYXl5c1FyaFJ1RkJEc2tYRXY2UENaVnpiSXQwTDRJ?=
 =?utf-8?B?bHFiSXdzM1dCL3hhUGRKdmpHc0QzMUFUVUpHTnYxcnVNU1lUQlFrSjE5VFJ0?=
 =?utf-8?B?dUhta2xOK1NESUlVMm5PODNwZWNWYng2Y3RsRE9RZnBONlFvZnNjdGNQcHgz?=
 =?utf-8?B?U3dLY0Q1ZVF5WGVYbW1tRnZ1clBsSTZnQzhUNTNXYzA3V0p3TEV3Y2NkcE5m?=
 =?utf-8?B?K2tlN29STTlZOThPRUo1WkFuVDYxb3pmQ0ZvT3htaWc4U1ltMGRVS3d3cFJs?=
 =?utf-8?B?WHo2Vmp0OFFDMytnOFlSTmI4dTJDVTBVT2NzOWk4OE9KT0RqWUhrN3NDSHM4?=
 =?utf-8?B?R2kxUkRmcnExVStJNVNWNU40eXpJa0JIUERobDdJSDF2aHY2MnRpcHFzY0tE?=
 =?utf-8?B?NjFLZStSVWNRczNzTDlneVM0SXNvMjd3ditIenoyN0VlRzRWRkx0aktDdTlE?=
 =?utf-8?B?cXJzRTlLUkh6QU5GYWdZTUhINHpoTEFpWVVUTnE0T3NRUENGUEI0aGJUL1A3?=
 =?utf-8?B?V2l5QlVGM1BkcUJyZnRiVnlackR0M3BJd3M3eS9RTnNxSFk4TE5NK3ZqN0lG?=
 =?utf-8?B?a3BLTUd0UVcybHdnTHE1cEhFRURvc2Q1YnRNZTRyUGo5bGF0TEVGMGF1VXc0?=
 =?utf-8?B?VDBJMXRTbWI5c2pxNXRpT0JQMUkvZmQvTk9TUCtiVjkrSlZQcTBhWVdLK1ln?=
 =?utf-8?B?VFQwN0dvUkxkVlV5QzdOS3JUWG5YTW5lc09PMlFvYnMvNU1pYkl3ZFkxUS92?=
 =?utf-8?B?bzZIOTcwUzNCOTBDbXZFMG0yZjJzb2xaWFlpK0pPN3hnZHpNRTQzZzRKd0ph?=
 =?utf-8?B?OWZaeEFkT3UwU0NKSXJsa0ZUMGJER25MRlZXeTNXNUdzSW54REovRktxL3dB?=
 =?utf-8?Q?plxPbege2MiwzIHM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 71d2f84b-6968-4619-bca2-08de72e14ac2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2026 13:41:48.3982 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6a2Hfj2gsr73V0pwbDZlbWkSH8DTG5q1sSLcwwQzftejM95P4+WY9l4YGH7NzCwWh7LBv4SaUz/UhiwvaqGNBCeG6K8JMRgH2XWe0gYmSEQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8180
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: F05D8177211
X-Rspamd-Action: no action


On 2/23/2026 6:44 PM, Ankit Nautiyal wrote:
> Enable Adaptive Sync SDP for Panel replay + auxless ALPM.
> First few patches are fixes in existing AS SDP enablement.
> Later patches add the support to send AS SDP for Panel replay with Link
> ON and with auxless ALPM (Link-Off).


I have mistakenly sent the series --in-reply-to <msg-id>.

I will send the series again.

Sorry for the confusion caused. :(

Regards,

Ankit

>
> This series is in continuation from discussions in [1] [2].
> [1] https://lore.kernel.org/all/1b8c6c6de1e5fe0db83e6ae942dfee7e6f950767.camel@intel.com/
> [2] https://lore.kernel.org/all/aPtqdAxDwiuQZbrn@intel.com/
>
> Rev2:
> Add few fixes in AS_SDP and Lobf.
>
> Rev3:
> Add patch to avoid VRR with PCON.
>
> Rev4:
> - Address review comments.
> - Drop Lobf changes. To be sent as a separate series.
>
> Rev5:
> - Add AS SDP version and PR and VRR specific bits in drm_dp.h.
> - Modify AS SDP compute config to accomodate PR with Link On and Link
>    Off.
> - Program Downspread Ctrl DPCD bits.
> - Make way for T1 and T2 AS SDP transmission timing/position.
>
> Ankit Nautiyal (14):
>    drm/i915/dp: Fix readback for target_rr in Adaptive Sync SDP
>    drm/i915/vrr: Avoid vrr for PCON with HDMI2.1 sink
>    drm/i915/dp: Add a helper to decide if AS SDP is needed
>    drm/i915/dp: Update the helper intel_dp_needs_as_sdp() for CMRR
>    include/drm/display/dp: Add field for storing AS SDP version
>    drm/i915/dp: Use version field of AS SDP data structure
>    drm/i915/dp: Compute AS SDP after PSR and LOBF
>    drm/i915/dp: Add AS SDP support for PR with link ON
>    drm/i915/psr: Add helper to check if PR is with link OFF
>    drm/i915/dp: Set relevant Downspread Ctrl DPCD bits for PR + Auxless
>      ALPM
>    drm/i915/dp: Program AS SDP DB[1:0] for PR with Link off
>    include/drm/display/dp: Add DPCD registers for configuring Panel
>      Replay + VRR
>    drm/i915/display: Add member to store AS SDP transmission time
>    drm/i915/dp: Account for AS_SDP guardband only when enabled
>
>   drivers/gpu/drm/display/drm_dp_helper.c       |  1 +
>   drivers/gpu/drm/i915/display/intel_alpm.c     | 21 +++++++-
>   drivers/gpu/drm/i915/display/intel_display.c  |  3 +-
>   .../drm/i915/display/intel_display_types.h    |  1 +
>   drivers/gpu/drm/i915/display/intel_dp.c       | 48 ++++++++++++++-----
>   .../drm/i915/display/intel_dp_link_training.c | 10 +++-
>   .../drm/i915/display/intel_dp_link_training.h |  3 +-
>   drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
>   drivers/gpu/drm/i915/display/intel_psr.c      | 13 +++++
>   drivers/gpu/drm/i915/display/intel_psr.h      |  1 +
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 10 ++++
>   include/drm/display/drm_dp.h                  |  9 ++++
>   include/drm/display/drm_dp_helper.h           |  1 +
>   13 files changed, 105 insertions(+), 18 deletions(-)
>
