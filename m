Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0ADC1F485
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 10:28:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED55310E946;
	Thu, 30 Oct 2025 09:28:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jUeVWoxm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E05310E944;
 Thu, 30 Oct 2025 09:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761816512; x=1793352512;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sop/gsYnlooyKkAMKnmJ18GIDXcMtjaO8tV4MSlbmmo=;
 b=jUeVWoxmj0I3qIYc2+oKGBGox5+mLk2QqAsqnkqxfZvclOsh3Ohnvgol
 bXrOmpyhOHWjlK9mJ03PnAMpSEW9kiXCa7LV7VJ6vpvFLy6cEgyatz9b4
 NN+0dFQqsCQFIjwQzshTy2RKJoPwuVb2TZo3fP/JVoQYsm3ZoFFYzIPGG
 tUWb3XwMYl+90ghiZwDZeznPHNiczIjNRAIsc4MnH2Bqwz5XlmCwzFaqN
 iJRmwh3nmNIcFTd688qVdphOphhLQSDd9K99CT/+2QvYM5WxW8EuqzzOX
 xnTggRHadD+U/BMb/IH6QyP4fk1BBS128xr+oETmPvEnei6wQnxQp3i7b g==;
X-CSE-ConnectionGUID: Gjzo+N1GRUeb6ZW4M9UlHQ==
X-CSE-MsgGUID: nys9T+b0QoG3ctqhk35Kcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="64048405"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="64048405"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:28:32 -0700
X-CSE-ConnectionGUID: /trqWNgZSkeaQ4uL7z5J2A==
X-CSE-MsgGUID: hpb5dQnxTr29aM4NDEubeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="223126812"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:28:32 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 02:28:31 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 02:28:31 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.36) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 02:28:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gq1p5AL7vN9Rl0V2Ola4z835H8IlhVoCXcY9WsUsmsyd10NVgT2Zn9tHI8Ed6Bll73lEMPjbfGQoZ+2/dYAgJxVMLEtkvL9g3tuQizG3D0lblBBAW8drUY+awZs9s1ou7AhCOD3CThmeuHScDhs3YBNS+mdBGsVhL5Xwhh01yrAt6uYqtsjdmExsPE8jRa/TCaHcA63mCImJ7kYglPxykBVAJhmcOCqf/sjp+BD9xEGTn5qdbFeR81EwrP/nxCbWWPpqeH7VmUe7TlgMY90yNKIrsGc25GMrG15oOHKIHmWkvaa1RZyPH+4Pa6ySOHMag8REg2M2sYj1Tki7aFZ6Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xhk+A8dR/G2aaQqzrCg4HphpKCWt/Qq/VvPN5cyt5Vo=;
 b=F8IL9Eqq8jGc8Lfbaq9vYz5dsRoT1z5SLM+9jwqLJqmesld6R5UTr7frKBTtoAQjrp7inS1+W8CeHjzMgKtttEDVC8sM7v1O8genBkBfDIUBgnJUipFzS3NDxi4HxZcvTXL9v31BhPDcQKzJWMzqYNrIl1dS9pAndZ+7/UP4UKrDJvgRoBQWdQctdr/LKC5HMbSuDWwWa74UjtIMFPHOxFhNykxROCZprmK+6/nshCtLuDDxa33+vEYmGSelA2nsjObxcBcfIBway1UIZ/vTRiWr3+HZLkb+n6x69P2k0z2Lu6baAOmkJ5whK+iSsKMlSxrRptTV39qWW5mNlM+Urg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB8122.namprd11.prod.outlook.com (2603:10b6:510:235::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.12; Thu, 30 Oct
 2025 09:28:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Thu, 30 Oct 2025
 09:28:29 +0000
Message-ID: <317f4ccb-c1a1-4b17-a4a0-1561e23b5dc1@intel.com>
Date: Thu, 30 Oct 2025 14:58:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/i915/dp: Fix readback for target_rr in Adaptive
 Sync SDP
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>, Mitul Golani
 <mitulkumar.ajitkumar.golani@intel.com>
References: <20251030051755.3071648-1-ankit.k.nautiyal@intel.com>
 <20251030051755.3071648-2-ankit.k.nautiyal@intel.com>
 <aQMfQK2OiYixqv9D@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aQMfQK2OiYixqv9D@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0073.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b3::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB8122:EE_
X-MS-Office365-Filtering-Correlation-Id: 105b3c3c-7308-487b-e396-08de1796af03
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cmlXb2lvbDVsNE5LL0lzRVJYdGRSOTVLSVF6OTAvVG96QmJjR21KVUNCUGZJ?=
 =?utf-8?B?WURUdUkzeHlZT0ROSW9mWmEvQWlwZytnSXVkODJPdUdhaHJoOGl4RGw3dytm?=
 =?utf-8?B?aSs5U2dhQ1NGM09TaGVWdjhGbG9qRmpHRlJlMVFQNzd0b09VTk1aN3BweFBV?=
 =?utf-8?B?WjJKUXFLZHYyTzNwT2NTM25OaXR6OEVUNmpQY2srQmNIZVl5akw2NktyR0Ix?=
 =?utf-8?B?TFlkQVNPcWtka0huN2o5a1hDSEJNZ1ZiYng0SzhTc0FnTm8yY2FsOUg2dmh3?=
 =?utf-8?B?WnZDMk5FSkRwVmRBUW9mRVRvUTVpeG5OSFVaTTE2M1FpVndtTWZSanNpckFC?=
 =?utf-8?B?ay85cTdxZCt5RDVUOGNObWxjMldVdENYQVdJUjdIMTZtK2pxc1FJTFZYQVlv?=
 =?utf-8?B?Wi9zZ3U5RDdpNFgrYWNuWlNVbFNRTmMvdGdzR3BKSklXRWwvNWl2bFFkY2dO?=
 =?utf-8?B?dW53WERVYVJsTlhuRURZMVU1ZThvU2NheTIzaVd0b0JkcXBZOU1iMURGdzM0?=
 =?utf-8?B?TU40Nk9aMUJIbGNPYU50MmNEa1RXSHhzLzlaQVlDZVBiZ0FWKzgvOHBJOHN1?=
 =?utf-8?B?R3JSZUlNVEMwM3E4UVYzVWdPRC80aFhad0w2eitmWVZjNVowN3I0VS8xVWxB?=
 =?utf-8?B?cmg1cFZ3TjMwRmt6UXlIZlpURVRMVDNQcTk4cnZSUmkvSU1GVStZT3NhZXkx?=
 =?utf-8?B?L2VXdlpZcGVUT3R6N3g0bUlwMUl2cEhYVnVsWGxBQlpXTjlpZDFRV1BqU08x?=
 =?utf-8?B?cDBDbWZyTk5DL21lUSt2WHBTVU9uNDZkVDREdXk2OEM3MExBSEluZnA2TGxV?=
 =?utf-8?B?NW44UGJldmQxRjE4YUV6WmV1UlE4YURiL3JpZzJlNFluNjBwN05QSzNMOE5h?=
 =?utf-8?B?Y013YlJTNUMrMEpxcUVqdFJkMGJTTkVQaXRGUVZ1bU1qdlg1OHBrUFlzYXlr?=
 =?utf-8?B?eEFkMjFpdXcxY2VLUWVMVVIvT0JyOGo2WXRFYThDZnI5TjVYSW12aFNKZ1pW?=
 =?utf-8?B?VXB0UUZSS25Vai9qU0thTjdjSk04YXFCQjY4OCtOakc0cDhPTExHd253OEY5?=
 =?utf-8?B?d0p5Q2pnWTR5Z05yOXFsYk14T0RHTXVVSHdGUHFpUjBNR2hzNGowUnAvcWxF?=
 =?utf-8?B?ODJOQ2FtK3VuUmp1MlhFMHZ1T0VLbm1zWGhqQ3V4R24zYzJxNU1RSU5EZDc4?=
 =?utf-8?B?cXZFZWJXRStKUDZnb01pWEVjb1VsTkF2K2lra3d2dVprN3AwUGY3YUNvU0ln?=
 =?utf-8?B?blFYaEFkbTUvV3l4NStUaEFnaXlVajk2UG9KbnpoYU1PMmptRXJEb2RFem9k?=
 =?utf-8?B?dFdaSXFEWWxOVjVadno0YXdSRnZ0TmxnbWZzSXNmWVlheWx3YS9jWnJmdHBP?=
 =?utf-8?B?ajRFSTRUaXZtdGtFUzZna2dmbW9YUGhXV0dMa1hEUGlXL2dGVG5Rd2xjbncr?=
 =?utf-8?B?aUtrZGNoYVB5Y01VeTg0QUJDQURTMVBRcjdyaDJoZWJTVjNrSjYzczJEQW05?=
 =?utf-8?B?VGU5QzdoZWV6TzQ5V09JaE16bnpLQWdZd21FWjBLOVVpWVRZdS9xK1dwbjVP?=
 =?utf-8?B?TFcwOFR4SjVMbnRrc21VNndYYlpGMklUdmppT2RvZlhQZ1hWTndsTUJ5dHRi?=
 =?utf-8?B?N29QZW1USW9aOVgxR055ZDFKWWhjc2tpQU9lWUFVQitUVFJqL0I5U3M1bW44?=
 =?utf-8?B?K3FTbVRXZlR4RThmb2tyK1k3a1pEdU1ZdzhERlNJVURUaDh5MDNxV2dmS256?=
 =?utf-8?B?dzB0OExOblRaSEhOZ3pCTEVFSWxSeFJ0ZWlhamZiS1kxSE1kV0h0WnpuUk1F?=
 =?utf-8?B?ODhxOU5FdXF2dzZLTDBhNk9XV3pUdjE1M1lzYlgxMm1vVmUwL3BScTlXUTFF?=
 =?utf-8?B?VmlnRVpQWDY5QTViRk1YOGdmSnJROGpkUzlCMWZBcHh4Kytpa0N1SXkyQWJS?=
 =?utf-8?Q?224prXUYHn0Rfr/mUUVEZsrmVMw4sMwR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WStxMXNGdjJMTUxvcm1RbGFiWnJBMTdvaGZ1WTgveWl0K21Zek1MV2dFWERB?=
 =?utf-8?B?V0o2NU44eHYyQmRGanVHaDlNOTFGWmplSkczMjlYa3M3OEY0QzZyOGU0UC9k?=
 =?utf-8?B?ZGNlQ0J1ZW90L3dXOG9adHFqZmJjK1hZMW5PUDlEaXpGb3U4amY1YVVkMXpW?=
 =?utf-8?B?cVBjQ3NBaXdJZDFBZWRmZ09yUWljZ1F5ZEhWeWRpRUV6elZjMUJGZ3NsNGJh?=
 =?utf-8?B?MkIyMDFoYjNUazI4OVc3VEVhelZRMG9PcnMwVGk4MEJaWXdxc0l2R29xaC96?=
 =?utf-8?B?eWVEckhPVVJhRmtXOVNVYkI1dlYzdkc4azVpZDkxR1MrTWEwSlQ1Z0NwVkp6?=
 =?utf-8?B?WDVqSnphVWx4UkNrTlU5cHVwb3MyNVhCUFA3TW1XbHUwTDMvaXFXZDcwenRn?=
 =?utf-8?B?QjEyd1JRV2dYNVg0Nkp3bDZoQkRna3NWTXRaeVNjd08zc3crWXhkTnZVQjgx?=
 =?utf-8?B?ZlV3Nmk1TG1yQWwrT3ZIYmpuTlF4TUJHSEU5eUJPZnZYWUU3VmtpeG5FRGw5?=
 =?utf-8?B?YVgrN252a3RrcEttYVNHT0w0SzE4NERoQzZGdWk1L1lTaXArSUhXTXc3OFd3?=
 =?utf-8?B?N2dUandRQUpwaTBCRWF6azRRdTZXYXVnRjUxMjhiazRDcWRPN0VKNzJXVzVk?=
 =?utf-8?B?a1hDbDJBQ0h4Y21OQUxDQnk1aWFPVWwwKzJuMlIxbmRaamdaOUdlMCtNUlo1?=
 =?utf-8?B?bHU4a2QzeWJqYWtRQ1RsRS9hQVBVRnFQSEZBenJ1aFN2WEpwRitsYXQ3Q2xC?=
 =?utf-8?B?Z2kzbng0Rk1uaU1PQ0JIWHBmeSs3amtGSWMxUkcremVadHhaaFpFRVhuckp4?=
 =?utf-8?B?WTNsd2l2MHpQbGxkOUIycTcySkZ0OXhralBzdXVudkRaZzVtV1VHbyswTlZP?=
 =?utf-8?B?cktHblRaUHVoZlpuWitSNnpaZEFadDdSUjhxMGpsVklIZ1k5QWF5UjAyU1Iz?=
 =?utf-8?B?RTVzaVBTOGh6SGEzY2R6MlJtK3dLSFJGUTQya1Mya3NuWVQ3M05zaGxIVkwv?=
 =?utf-8?B?WHBsY2FaS09XS05TK3UzMW4wSk1NaWRnam90V3BvdlVjdlNUUEZqK2ZyYnY0?=
 =?utf-8?B?UzY5N05NaThMR01jQ1VMM3FYSmlVcU0xdkI1VEQxbEZoanNXeVczaGY0U09E?=
 =?utf-8?B?cmhvd2gwbHhEOTBpbnB6VzdPUktsVWI0WXFYVkY5RWV0V3dEdW5nOFBJcGlQ?=
 =?utf-8?B?SlhZQXIvaFRTZlJTWm5qYTNNaVpZc1krUEdCdVIzWVdnTnFadTJ1dUlITGU4?=
 =?utf-8?B?ZUk3T0I3c2t0dVl3eW1vUEpyTE9walRkRm5WZ1YyY1grd09TZE5ob3g4QjRs?=
 =?utf-8?B?czhmSWdqSVBVV2Evb1B4ZkE2R1J1cSttR1FUZERLUTJoNHJsVlNvK3RLZUFQ?=
 =?utf-8?B?RXFDL2NYM1NkTHdKNHE3RkhDQXVVSGEvbFRXUndjRldyZ240ZGJSYkVvZjlB?=
 =?utf-8?B?N3ZxK3IxcGhZYm5aS05YVmQ1NGNON1M0LyttSkhmbCtHVWJPVWlRUk4yZS9n?=
 =?utf-8?B?WXRoRCt2S0xKUFgxRzVUKzdpTGs4N044dUVzc252U011OFExNzFNcHBueDNj?=
 =?utf-8?B?MG5oUllIVEJKYmc0dmxYMEdUcVFFczMvVGk2VStScy9uSUliaEsxcnE5aS9S?=
 =?utf-8?B?N0RTMUpVaEdlTHB0TGRsTnp4NzdXdXoyakllVnNDWVpyd1BBaTFuclBPdWpN?=
 =?utf-8?B?YjI2V0dmWHJTWUlxdHFweEt1R01tOWg1NzdGY3FrY2tHa2cxM2xkaVRZc1pG?=
 =?utf-8?B?UVdZRTZrZnlCb0NOQVBLYWpsVU9UeElaMTBUNUZFWE1NeFIydU9zVWtEUjBT?=
 =?utf-8?B?UjRIcWE2b0F2dFg4Z2FoVms3N3dZR2hHbmF3aXl3RmNhWkNRR0dVQjczSHU4?=
 =?utf-8?B?UDZmVHNmd3hlZWlWNXFVOUdEQSs4Wjh1Mll2WFJIYldtREtpUFdEbmltZ1JE?=
 =?utf-8?B?Yk5xbmlXKzZTRnErVnA5SkQ3RFQ3V3NIaVdRU1djNUsraWEvdTBCL1A0dG5V?=
 =?utf-8?B?Ty9ra3d0MFhUcmRUd2hJN1J4L3J3MFM2YzRiRG5obVBUWDlwVHRsa0FqMU02?=
 =?utf-8?B?VjZORTJYK0lpbitBMUsyMlpudVdMM1ZUYXF1ODVSWDJoWnI2NDM3bzd5enh1?=
 =?utf-8?B?Y3dtOUM5dGpTTkV1UWExZ2Z4WGs3YWZHbjY5UUlMWlhMM0FUOTAxdXAxNlpC?=
 =?utf-8?B?ZGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 105b3c3c-7308-487b-e396-08de1796af03
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2025 09:28:28.9497 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ef25G0WskHw6QU+bf0H9RkRfPRH6xHozEKV2MMzrJ4VOSF2xE7Vm1m6UXhPFR6+e43wzDmq6+KvJhZuKT7Lhhy263UlbA4Us/fZurczYkiE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8122
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


On 10/30/2025 1:48 PM, Ville Syrjälä wrote:
> On Thu, Oct 30, 2025 at 10:47:51AM +0530, Ankit Nautiyal wrote:
>> Correct the bit-shift logic to properly readback the 10 bit target_rr from
>> DB3 and DB4.
>>
>> Fixes: 12ea89291603 ("drm/i915/dp: Add Read/Write support for Adaptive Sync SDP")
>> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 475518b4048b..c013eb2e18a1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -4996,7 +4996,7 @@ int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
>>   	as_sdp->length = sdp->sdp_header.HB3 & DP_ADAPTIVE_SYNC_SDP_LENGTH;
>>   	as_sdp->mode = sdp->db[0] & DP_ADAPTIVE_SYNC_SDP_OPERATION_MODE;
>>   	as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
>> -	as_sdp->target_rr = (u64)sdp->db[3] | ((u64)sdp->db[4] & 0x3);
>> +	as_sdp->target_rr = (u64)sdp->db[3] | ((u64)(sdp->db[4] & 0x3) << 8);
> The (u64) casts are completely pointless. And I would try to write this
> in a styple that is more consistent with the vtotal assignment right
> above it. Eg.: target_rr = ((db[4] & 0x3) << 8) | db[3];


Makes sense. Will change this as suggested.


Regards,

Ankit

>
>>   	as_sdp->target_rr_divider = sdp->db[4] & 0x20 ? true : false;
>>   
>>   	return 0;
>> -- 
>> 2.45.2
