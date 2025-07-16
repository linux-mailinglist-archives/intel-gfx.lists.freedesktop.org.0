Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEDEB07C66
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 19:58:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F7E410E2C6;
	Wed, 16 Jul 2025 17:58:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LRjOFPOp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B57B3897AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 17:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752688731; x=1784224731;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3Jr+EhymtnBhMTDUlLPzW+ONwV1zHX5mAtnA8UAlcgA=;
 b=LRjOFPOpuHRzBBXXAB078yvHnVWtINy2nTYMnuRufV5Ks4eTO1l9hw2a
 vb+77T7dC4jqAhphliidOHSMXnByTL0PHcgw35th357CQCjzPw0W/4Uz5
 VNSeIN6w7JhD9bm8diskGoDtC/OqCjsLyy+guK0yxFL+l0LrHGhcqCRQM
 2Y2onfG7vaIE1Auv0pb4YcFIjYjrP909C//TNlNLV3dqnmaG6tUUOrpT2
 Y8WZrEsSsEY/+F/17LazQHuXrxqtJAyXPE/wiSokQzVemhFHyEw70UbuH
 YA1OFR6RsU8Mvr9T4Y45fO/s6NMYvPmUhNxlga9ZoaSlaPS+8hTRHia1b g==;
X-CSE-ConnectionGUID: 4emBZE1eSVObq0EOFaHnqQ==
X-CSE-MsgGUID: Tg7cnma7R3W2UrVLI2DDhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="66394243"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="66394243"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 10:58:36 -0700
X-CSE-ConnectionGUID: LMofD00CSwGQyCjZZwAuvQ==
X-CSE-MsgGUID: C318+FkqS2+QBqLb4bgFgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="181264307"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 10:58:35 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 10:58:34 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 10:58:34 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.53)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 10:58:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DPkT/dkn8L2p41LEF+2JXBT+m93DLBoAafSUsqlI/vYHzhsk5ctHmDT0rwItkYWaOboMPmZRFUc5tJVUVE57dbvS6DKJZLPfKoCu3GWwnID5NnTIjyCAwqT+vICniAs4qhJEmnn3Mk5wObrXSRVifV/VQcvyEidHWFduVkXmDm+thl7eOU71IoxOrN4OU3LZMKy7YOMCzbPn5Zp6e7VGC3kYbwzqo2G9eZtWl/vb+PX8nMg89levY4IDhawagSQ5HfNZ6TErxGaIDdXQVvbv293WFMLi+nqNXvvTKjSVwBtiVINb7JgQ6jGUUg1W7CjR8tF4GSkwck641t5PKCng8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GVvNxpJOKqiWUasiYEmCJYWAYarywWMV9HaCJEHXIIA=;
 b=bPVOYuMpZFw9bwIfItBo2ODgdqS9PSHxm7PofJUj3MxjvMQ2E6HH08+PZw3/24BVHUt5cQ8IMAZY5jgpdFUU6tgNQ67TtpHiahWwwtrX31pp3PM/cxoRWcalIMQ0CX5DXovPE7MoW3hWliuCoLaHasTKnDI/TNT0+eM68Q7rARjouklJqpCi4udYSwOuSlk5IOthIacMw8e4Xd1no59AFTbHwUJbLAdKqGP49JTl5RUzValROC8Q3HW2rvHS4rbmOj7Zc4o492UinLFre9IEa5GRA6inhCbPbI54jwyiTuJuDpvb756yQQsHkTF74uVIrWJ37N1Pk3AiUPN/iblOwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by IA1PR11MB7343.namprd11.prod.outlook.com (2603:10b6:208:424::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.36; Wed, 16 Jul
 2025 17:57:58 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50%4]) with mapi id 15.20.8857.025; Wed, 16 Jul 2025
 17:57:58 +0000
Message-ID: <b30a22dc-217a-4e74-8ab8-6b606bf45e2f@intel.com>
Date: Wed, 16 Jul 2025 10:57:56 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] mei: me: Add exported function to check ME device
 availabiliy
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: <intel-gfx@lists.freedesktop.org>, Alexander Usyskin
 <alexander.usyskin@intel.com>
References: <20250715225959.488109-4-daniele.ceraolospurio@intel.com>
 <20250715225959.488109-5-daniele.ceraolospurio@intel.com>
 <2025071622-frequency-sneer-0ad9@gregkh>
 <5d588a32-fbe5-41c8-8cd5-0d53b1b44637@intel.com>
 <2025071653-outdoors-elusive-dcf4@gregkh>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <2025071653-outdoors-elusive-dcf4@gregkh>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN0PR04CA0014.namprd04.prod.outlook.com
 (2603:10b6:208:52d::20) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|IA1PR11MB7343:EE_
X-MS-Office365-Filtering-Correlation-Id: a0830552-9c50-4037-5631-08ddc4924c5e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cTBWK0NTV2ZqUHNpYnQyZXFmRnY0VXc0SnFaMTh4QzVVMDZWLytXM1hxRlRF?=
 =?utf-8?B?c1h3Z1FwcFBBQithbk1vVVVleDFacTR2TnlTMTNaSGVibFVVL1M2TE5TKzY5?=
 =?utf-8?B?TlRpdm9KbUtFbjVZTFd4WGFONTJhTGlyUlp3MmZld0k3Z3FVOVVGYXA3YnpT?=
 =?utf-8?B?WHFrVHdVQTVGQ08wbm9GTWRYU0J5bWRDWEREN01jdS9EM1hCYVhBNlR0cWNw?=
 =?utf-8?B?bm1WbWxBc2JiZ1dUeS9tN2I1aWpYWE0rNFNDL2dmUGdCSERxK2hVYTB1TXJI?=
 =?utf-8?B?K3dLRUI5SEw5VGlSY1AwSjJ0dmZGbXl1S3VSeXhUQlNzNzZaRXdVdEJwQUJE?=
 =?utf-8?B?QW9ybTRMaHFGRW14OEowbWUvZURPbURKVEc5TWpVQzBYNnU0VDd6c09hNDgr?=
 =?utf-8?B?R28rUHI4ZkE4blRiVUZycC9CT2EybEQveHNHd2pjRWdiSXlXZWFTdnBQNC85?=
 =?utf-8?B?RW9sYTRoZWdBd1dhYmFRWW85VjZwdHI1dUdGNHB2a3gva1MzbExxSTZVWGlI?=
 =?utf-8?B?eTFOMzRxbURsZTJ1KzBOMFM5Yno1d0l5anpoaDlOVURrQ1g1VWE1bFFhSytj?=
 =?utf-8?B?Mll3V2ZXSlhWUHVoV2tHMEdIQnBsaTVuOHovWWJXb0dpenB3d2VLSWR5RGsx?=
 =?utf-8?B?cEZ4blRYV1AvNjZMRVVKb1ZiU2pCRm92cXdHS2RueHd1ZG1XTFRhbndWSEc0?=
 =?utf-8?B?MlZQSHdlaldtZVFoL2FnT3lvTk1yR1RNY0hnQ0g2U2hQLzl6V09VUVpseWlz?=
 =?utf-8?B?cXFXM2tMakR2ZzFYQW1EcStGaWFIQzRtWG1ZN3hycXlUem5sekx3NnZ2MEkw?=
 =?utf-8?B?VFAycllTY1JkMHhFTU53M3p3c3hvVnd3cmNPbUY1TGphaXI2RjFuL2dETlNR?=
 =?utf-8?B?aG0wWmlWbW4yM2gxUndRRXlHTTNnazNCSVE2QXVqM1FwSGZwMmpKbmxVTzVw?=
 =?utf-8?B?SnNhSW8vWmdzVmMwNjJoV2djWHZ4STBKVERMZ0haUW0rSEpjSXFjcE9PTVYv?=
 =?utf-8?B?UjIrMUtkMTBzWjNDUjZkK2cxcUpLbVRtZjhmQ3d1Z0tBVXNMQ0pmdDFUNS9p?=
 =?utf-8?B?R3R5KzJUVFVPYmNwQ3hNQUdQVS92L1BtUHZ5QWY3bHVVa0o5aWMxVm8wVjFT?=
 =?utf-8?B?Uks4Y0I4b3VhbTBBR1VKbHluTkpJVkRZbldxZ3h3aFppWFEwazlqZ2F4Q0Zw?=
 =?utf-8?B?cFZTUVJxWDFxNGdxci82R1VjMTVPYmFnS0JaR0JCTGgvL3lTU0ZTTkE4b1E5?=
 =?utf-8?B?U2w0ZzdtRVpZcE9qRFU0Nmx2R3J0UVZKcHQ1VEdVYXlEOHl3WWgzR1VvUWlH?=
 =?utf-8?B?NGpMTG9VZjg1ZGR4RThPUW41dkxmcWx0WWxid2dQdHd1NWJqUm5sdS8rODJH?=
 =?utf-8?B?U3FOZVVhTHdjTHpKQ3FQVExCT1JWSzRsTm0xck95aXhMUzRnMW1QQU1scFZ3?=
 =?utf-8?B?NDJjVHJEdUpRcTNLTGVLNFFRQnVPaEJ1aVowd3NpdkdhYmtvdDFBKzNkdGZR?=
 =?utf-8?B?b0ZmamxsTHFuNi80c1ZpcGhwNFZNYzBlODdMa3E5ODFaT2hob3BsSHoyYnJ1?=
 =?utf-8?B?cmdZdDc3VTZTSGI2VlFRNGlKT0pacXdjR0QvTWhObHZ6Vm45Z2l3bU8wbUN1?=
 =?utf-8?B?NDNONlFtN2owdzRGa3p4L2F0eDBqOVZNZTJzTU5LWHFycHU4TjVnYlEyRHd4?=
 =?utf-8?B?VGNhcGF6OWVqRlg4RUFNLy93Ri9HUHIvT2xDN3NFckRwSWt0eWJCeHlTamJy?=
 =?utf-8?B?QmF1bGsxVU9WWStFcE9lSHFKV0QrdzBuWXRZNDI5RjA4d3VJYnQ4OGdVaEVS?=
 =?utf-8?B?SzRHMmJKY2ZjYnpVUzh0VlkxQ3dJVUlDN25MbGZpWUhBd1kvOWt4OUtLMUE1?=
 =?utf-8?B?NDRJTUVSeGtqYUFic2p6NkV6ZzVueHRMdGtBZVNzYmxVaDFnT3duSHR0SlBw?=
 =?utf-8?Q?VfcRMlpok7w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkJnWjFnZGEvd3M4SXNralNYMmd0d0RMTUQ4SDM2SVd3cGFuOGc3Y0FNalMw?=
 =?utf-8?B?VTczZlFRdkF5WTF6YUtQbVhYTUdaMHAwOEd3UG1UR0RranFVZ3VTc25Ld09k?=
 =?utf-8?B?UEhRUTF6aytHWThhK2h4NE9oZzRQSlBIdzVqKzM3cEJSRUlPMURyWWoxWVN6?=
 =?utf-8?B?UVBva3FBUjdMTFh0V01lbHRBdlE4bWhXbmxmekYreU15ZVArbkJTRXM4LzYy?=
 =?utf-8?B?Q28vYWppSEoxQjhPajg3RjNxdUdZb2VhRnVpNzRXcy9SdzYrOUlENzlzQWwz?=
 =?utf-8?B?Nlhna2kvcEh6MHNWMk1xb3g4SVR2b1JoNytjc28rTTZaS0lTV2M2cG1hUW1U?=
 =?utf-8?B?bUhVeEkzdUgwUUMwRkFpK2J3ZVBZWVc4YWdtR1kyYlBEeklNdkkyYnF0UWJ4?=
 =?utf-8?B?RDF3VFZjdkMwU2ticStsdzViY2FQSkhNaDZzbVB1RkU1SlpqSmxFT3ZYRTFX?=
 =?utf-8?B?ZWJQQ25MYmUzL292OTRLRkE3aXEvMENIdUNrWG01b0lZcVpDbVVEQzJjY2Jh?=
 =?utf-8?B?YlBPRnFzRkhpZGxqK2RhcTEyQTZyQ2xpZG5oQ1llaWNZM1h6djhickcxM1d2?=
 =?utf-8?B?UTVXT1pPQnR6bUpMRjhEYzBrT3dmRnBJbnJ6dG9jUXpkbHdVOWR4bGJwNzht?=
 =?utf-8?B?UmJlbmtDLzBTSkVReVhnWDRzdStDREEvZHBrQjI3NUg4ZldBZnlWelFRc2VN?=
 =?utf-8?B?eFFZbFBzTzdLRERLamZMLytZdDFiL0ZJSE16YnZSSTRsV3ZUeXVvNzBIN3Zm?=
 =?utf-8?B?Uzl6cFdYdWdiampralhvcWxjU0Vuam94aE92ampielp5ekZVR2EyNXJ4RDJo?=
 =?utf-8?B?TlloeGZrMVZ2NnMwdlZGS2VRNlJjaVlnUWRYOHdHaW1hRkJPYlBubUpleGFP?=
 =?utf-8?B?YXBjTWpTeHdCVDlkRXdMZHZEdkkyVVh0NWpQU1FKdVA2SWh5ZUcyY0tsT1NS?=
 =?utf-8?B?R3NrcHJJczhhRnRKVXNwdHl6eWdhRjJwWUVBM1cwbXNqM0hvcGZrVTZhOElG?=
 =?utf-8?B?TmFsWjBGMjRyZWV6OTJBTUNZcVZLWkMvNzlhbmc4NUlXUWpNVW1pakQwdHFS?=
 =?utf-8?B?VzBTRzJyN2d1QXRTdFk1S2FiWlBuOEpDZHNSOC9lNStlUSs4NjV1SHUyalFI?=
 =?utf-8?B?b2RQM3hISGQ0OENTanEyTjI4YlI3OFRlQWt1K0pxVE50aE1ST2pzUGlpR1l1?=
 =?utf-8?B?bnpIZGlGdG1ZaFhuSUJSNCsrb2VncUlmR2p3dkpSaDRJdmFobklzREl6Vms2?=
 =?utf-8?B?eXJFZktma2p1YnR4WktwUnpuWG9MeEQ0cUMwQVk1VkFyc0l1djJnaTQxTmpv?=
 =?utf-8?B?ak8weEdVQTA4ZmFjMWN5NUdCOVAzS1o1bjNCSE11MGUxSkpCZ2hqeTlLaGdC?=
 =?utf-8?B?QUxhL0VVSm1JbDFvVnNzNktPa2lMMlVWOXdZQlBNQVJZbm9xcExLcm5yRHZx?=
 =?utf-8?B?c3N2THRQY2Z1U0I2dGtOZ3U2RWx6Ti9BQWRzYzZhUU03N1dhb1V0R0pFTVo4?=
 =?utf-8?B?NkJmbkpHMTFUZW9lM3lIaUUrcGpRSEdTb29RQk82ckJXZzBNK24wWDRBNjlo?=
 =?utf-8?B?MEZxZnFlSFFaQU0zbWROZTBSSEVsM0NuWmVYNzRieTJFd2FrTVZJVDNrZ2FT?=
 =?utf-8?B?by9hOXlQRUs2dDRmQ2R5UTBlYkhPYWFaUlNFVGZhdS9uNTVNdEtUdWk4UXI5?=
 =?utf-8?B?enZYZFRsaHhjdVlmQzVxcnRpcUZOQTA4SFNWenp1czJDblhMT1BTT1ljOVMr?=
 =?utf-8?B?K2FGTGZUdG9HZHUwV00zSjQzOHhkUi9MRWYvTlo2MWJUUVJxeTZwcEVCNXda?=
 =?utf-8?B?RlE3UjIwWTBNWkxvN1Y1RnZrUis4ZGN3SzVpaDZOWWZtbXY5VXJKZ0tSeWM4?=
 =?utf-8?B?d1JQUGMrREg2UzdBRmRnWnF6QVFWK3dIM2JGWm1vOUpTWVVjUEdsekwvbVhP?=
 =?utf-8?B?VzFmTStkNDRZd2VkMGF3YVZFUUJrR2xnM08zNkVhdUluUmlUSnFrL01JTCtT?=
 =?utf-8?B?QmJ2eTFDWmhuSko1VHc3MDFGRTMycjJRejhwWmtSOG10ei9YNnJNMkRRZHVt?=
 =?utf-8?B?Lzg3UzJWbVp1amZobjZzR0hCNmpxZFk2aFVkVHVkU1BVQXFxSEVYeWUyUUV5?=
 =?utf-8?B?dXRITkx3eTFQQUM1V3Fab2h4TXVhY1J4QWlMMTlxWktOaGIxa0hjczdpMVVo?=
 =?utf-8?Q?0BgxDj0uwwZcnPJ0MF6p2xg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a0830552-9c50-4037-5631-08ddc4924c5e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 17:57:58.4105 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A3zt7U8EXA2Ee5J6uMQlLrqjKH8p/MKDw0CXu3rVVUFKbsOMUagmKLptaEHN9UQJtNXLRm+XXxXnGA/g8dVU0QBuSZVbhrcn7KttxUvWvJw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7343
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



On 7/16/2025 9:49 AM, Greg Kroah-Hartman wrote:
> On Wed, Jul 16, 2025 at 09:38:09AM -0700, Daniele Ceraolo Spurio wrote:
>>
>> On 7/15/2025 10:10 PM, Greg Kroah-Hartman wrote:
>>> On Tue, Jul 15, 2025 at 04:00:01PM -0700, Daniele Ceraolo Spurio wrote:
>>>> The intel GFX drivers (i915/xe) interface with the ME device for some of
>>>> their features (e.g. PXP, HDCP) via the component interface. Given that
>>>> the MEI device can be hidden by BIOS/Coreboot, the GFX drivers need a
>>>> way to check if the device is available before attempting to bind the
>>>> component, otherwise they'll go ahead and initialize features that will
>>>> never work.
>>>> The simplest way to check if the device is available is to check the
>>>> available devices against the PCI ID list of the mei_me driver. To avoid
>>>> duplication of the list, the function to do such a check is added to
>>>> the mei_me driver and exported so that the GFX driver can call it
>>>> directly.
>>>>
>>>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>>> Cc: Alexander Usyskin <alexander.usyskin@intel.com>
>>>> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>>> ---
>>>>    drivers/misc/mei/pci-me.c | 17 +++++++++++++++++
>>>>    include/linux/mei_me.h    | 20 ++++++++++++++++++++
>>>>    2 files changed, 37 insertions(+)
>>>>    create mode 100644 include/linux/mei_me.h
>>>>
>>>> diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
>>>> index 3f9c60b579ae..16e9a11eb286 100644
>>>> --- a/drivers/misc/mei/pci-me.c
>>>> +++ b/drivers/misc/mei/pci-me.c
>>>> @@ -18,6 +18,7 @@
>>>>    #include <linux/pm_runtime.h>
>>>>    #include <linux/mei.h>
>>>> +#include <linux/mei_me.h>
>>>>    #include "mei_dev.h"
>>>>    #include "client.h"
>>>> @@ -133,6 +134,22 @@ static const struct pci_device_id mei_me_pci_tbl[] = {
>>>>    MODULE_DEVICE_TABLE(pci, mei_me_pci_tbl);
>>>> +/**
>>>> + * mei_me_device_present - check if an ME device is present on the system
>>>> + *
>>>> + * Other drivers (e.g., i915, xe) interface with the ME device for some of their
>>>> + * features (e.g., PXP, HDCP). However, the ME device can be hidden by
>>>> + * BIOS/coreboot, so this function offers a way for those drivers to check if
>>>> + * the device is available before attempting to interface with it.
>>>> + *
>>>> + * Return: true if an ME device is available, false otherwise
>>>> + */
>>>> +bool mei_me_device_present(void)
>>>> +{
>>>> +	return pci_dev_present(mei_me_pci_tbl);
>>> And what happens if the device goes away right after you call this?
>> Both intel graphics drivers do already handle the device being missing or
>> going away, it's just not very clean. Behavior changes based on when this
>> happens:
>>
>> - if the device is never there or disappears before the component binds, we
>> timeout waiting for the bind
>> - if the device disappears after the bind, we handle the case as part of the
>> component unbind call
>>
>> The timeout is quite long and can therefore impact/delay userspace, so the
>> aim here is to mitigate that impact in the case where the device is just
>> never there, which is easy to check and more likely to happen compared to
>> the device going away after initially being there.
>>
>> Should I add a note about the device going away to the function doc?
>> Something like "Callers are still expected to handle the case where the
>> device goes away after this check is performed".
> My point is that calls like this are pointless without a lock, as the
> state that you think the device is in (which this function returns), is
> just a lie as it could have already changed.
>
> So look into what you are really wanting to do here, as what this
> function does is not what you think it is doing :)

What we want to do from the GFX driver POV can be summarized as follows: 
if at the time we try to initialize PXP the CSME PCI device is not 
present, we don't initialize PXP and continue without it.

We don't want to support hot (re-)plug of CSME, so we don't care if the 
state changes after we've checked (or it has already changed by the time 
we act on it):
- if CSME was not there at check-time and re-appears later, we'll still 
continue without PXP support.
- if CSME was there at check-time and then disappears, we'll handle it 
as described above.

IMO this function covers this use-case, but maybe it's too narrow a 
use-case for it to be a generic export in the mei driver?
Would it be cleaner if I replaced this with a function to export the PCI 
ID list, and then ran the pci_dev_present check inside i915, so it 
doesn't matter if it only covers our narrow use-case?

>
>>>> +}
>>>> +EXPORT_SYMBOL(mei_me_device_present);
>>> EXPORT_SYMBOL_GPL()?  I have to ask, sorry.
>> The non-GPL version seemed more appropriate to me because I didn't think
>> calling this function qualified as "derivative work", but I don't really
>> care either way because both i915 and Xe are part of the kernel and
>> GPL-compatible, so I can switch to the GPL version.
> All other mei_* exports are EXPORT_SYMBOL_GPL(), please don't break that
> pattern without a whole lot of documentation and reasons to back it up.

Sure, will switch.

Thanks,
Daniele

>
> thanks,
>
> greg k-h

