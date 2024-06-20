Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF015911591
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2024 00:21:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E1310E136;
	Thu, 20 Jun 2024 22:21:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RyVsGVJp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C16CB10E136;
 Thu, 20 Jun 2024 22:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718922063; x=1750458063;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2n3uJBFtPyAU5PKEf+EKz+o08N53DPJuE6Trf5J5REs=;
 b=RyVsGVJpzwU8zQaPN1/RsST4KEtNo5pyrMlNt7srBxplJP1H3ocoOOzg
 1ixVbZS3Yn5w0EtAMLToVe6dsrfEEa227fmp2sQwkFFneBpafmbmpNG/J
 hlrCRhl5Abs6mauCqVd+aZ/CbURoF9jTrPS3oB9aXdnrTIVmG7NGtu3V1
 iApMKZxirTel65dlGL5zpYg/WgapnGqAAe9k9xxXhCrfmS/jY8naXiCrG
 pD9Y5hPVA/AWwdbFLQq40pC+ECf56QgPa1MwEvO1AUrrok/oP5r5+CAk4
 F6wdg4m6k/+X2YXfK+LC0jDBcGDpDQQ9Z9sJ5gez6bi2Ts5sy4WPpgUCD g==;
X-CSE-ConnectionGUID: Eh5f9Z7CS2OWqq941QlTPQ==
X-CSE-MsgGUID: qDV+JpzVQQun75XViaLXEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11109"; a="16169410"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="16169410"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 15:21:03 -0700
X-CSE-ConnectionGUID: xSllrX1DTrCmDye/ittElA==
X-CSE-MsgGUID: CAH7vcI6TnuUA6t4qpaUMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="73130476"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jun 2024 15:21:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 20 Jun 2024 15:21:02 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 20 Jun 2024 15:21:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 20 Jun 2024 15:21:02 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 20 Jun 2024 15:21:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cFHezCdQai6bFHJ0UfqT8HS3pJuiJCr+WnbZOEHZJfDbp+ZaXbTBPDd11Q+GFDmszomaUuk4esz8Mo0fj14++E4AHhBbUP3mBqs8xTs9jEFbxe/LNBwyG1BDoTjRm4bY7OD8cwfzT/YxWcA2I3Lj8v072KK5Y06a1cXwnxhwqiY+hnchggc/Ik+L2SneHXp+1fHyoU46HyE7u/nXmBoy2jhwC8x5/zzUwplzYA2hSGdbA6BCA5+rDDRyxuuOON2ynJ6SaTLlFNcG1Jn/5L/OSNnN7wWNB0czvcu+nve2uEIhRMo5NeWg/EuR2SLWuKDLUDgv+SxluGwGT/OcmImGJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2n3uJBFtPyAU5PKEf+EKz+o08N53DPJuE6Trf5J5REs=;
 b=BK65JqKVZmym+on2iaqEsDJQck4QYRAAqtMZAJcgdz6Z9xwyoi7DIZCxYPlqg7ORWgmdMHRQqa1LoO/gfcxsIYYXUwdO70RC+ZLFgBV0LW43huYlr8vAQQ8mPn3Qb9xKQDU2UkNy96vJHddi4HDWL1p4KpzF1abXRdrvjPPjJUH6g0UPGjiCcvFwshBMUnz6VF/2jonAvFzwqx6ylMVde84JwyMTmmLpqFJnLk3FarvPkKGV0dT2TKEyplpXsqHwTKrzJMnpund7NA8FhvEVEqbASKw2o4/swQblDl2Kka1sE2vcIelyWTMgOl1QOXnmWzMkKxDKw/jq3wrS1fzf/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by CY8PR11MB7108.namprd11.prod.outlook.com (2603:10b6:930:50::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Thu, 20 Jun
 2024 22:20:59 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.7698.019; Thu, 20 Jun 2024
 22:20:59 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "Govindapillai, Vinod"
 <vinod.govindapillai@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 2/2] drm/i915: disable fbc due to Wa_16023588340
Thread-Topic: [PATCH 2/2] drm/i915: disable fbc due to Wa_16023588340
Thread-Index: AQHawlV//wUJNaBVJ0q2qfZCB8DLHLHROshQ
Date: Thu, 20 Jun 2024 22:20:59 +0000
Message-ID: <CH0PR11MB54445C2D786EA7CE49FD2177E5C82@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240619143127.110045-3-matthew.auld@intel.com>
 <20240619143127.110045-4-matthew.auld@intel.com>
In-Reply-To: <20240619143127.110045-4-matthew.auld@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|CY8PR11MB7108:EE_
x-ms-office365-filtering-correlation-id: 7da0831a-ec8f-4a99-b076-08dc9177435f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|376011|1800799021|366013|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?MGRPd2hzdlFaZitybkwycUxEVWQ2WG9MejRGRWNQK1NsS3lKNHRsWGk2dXJZ?=
 =?utf-8?B?eGZ1WWJOTFJ4QXNDUUl6eE50Wm5tQ0x0cm92NUh6Zk9yR1R1NU54RCs4L204?=
 =?utf-8?B?MGRtdENzKzcrNXRaSU1CSm8yZFJ1THJINXQ1UEU5OHRHbHhybm5tNjBySGJF?=
 =?utf-8?B?d2RZbmdFaTZGTTMwZG04eEM5N29lQkR0ZlFOdzRKa0JkRmc4N25IR01PelVB?=
 =?utf-8?B?MUhZY2g5RlJoNTBxdEZrWVJlTTJpa1dycURyYzJNUHR1RDVBdVdvWkhLS0Ru?=
 =?utf-8?B?azBxUHNKNTdDT1NXTEVXYzUxRjYwL2lXMlJQOUdYR05QdHBOdWpZL3pQNTFK?=
 =?utf-8?B?Nm1XRHQ1SHJMbm1NOE51MGw5T1BPVndQSkc0RlFGb0R1UU93Y2toVlhobFIy?=
 =?utf-8?B?emVzVTVObGRnb1psRTN1WkN1cUh4NG9FOU9yRW1Md3l3MjhSemdtcFN2cW9W?=
 =?utf-8?B?ZHNkTXpycHlzaWw5UnNvZWphb2tITGFzWnZMLzNoUWhFS1RlOHRYV2hYTXIz?=
 =?utf-8?B?UUhzS3ZsTURIUnlPUitVUlhMUnlsWnNRUTVwVE00SlQrN0RxMHdPMitERi9U?=
 =?utf-8?B?cXJLNUh5VEVYbDNsVUZLM1NPZWk3V0lOeFJwVitRZmhKN0hzdTlKSVlJbDZJ?=
 =?utf-8?B?QTJaSVgxK05iKzlEZzJKVm9JaTIwV3ZFcVpzblhRbzEzRWwrTVMrR0VVdk5N?=
 =?utf-8?B?bzIrUFZnS0xMZ3NlSzBjWk9IMVlVeVNRckN4RGJtUU9KYSt4ODNsNmtrWDBj?=
 =?utf-8?B?LzZoVVRQTGZ2YkNCZnJBOURtQ3IwSTNRQ3lwVWtaYkZIME9SV1AxbzJFVTRv?=
 =?utf-8?B?amZHa0ozeEk1UkxFMm9iNkhGeUZLNVM0SXJFMENXSENmaDZOMFJoOHlVcVZ5?=
 =?utf-8?B?T2VXOERyNjFIbkw4ODZTRnNkTG42NE5WanVRUVNtM09xa0Q3ZlA4Mllyc092?=
 =?utf-8?B?M1pkZkQxcmRiMXNwcXJOUHF6RXNlSVplYy9qL0gyWEx1MUR2OWNRcTd4U2ti?=
 =?utf-8?B?MzlEeTVhQU5VV3FIOHJFWW9MUStSNk5KYStIbWtZV3JRVmpQQmRkUXVtY0ht?=
 =?utf-8?B?b0RQMGk3ZFZ6L1RYanU5M2xuQ2dlQmw3ZklsMDBna2V5Yk5EOEtlNkhCem5V?=
 =?utf-8?B?YXNWYkZhOFBMMGkwb0doN2tJVkpKc0M5UzQ0N3g5dW4yRnFzOURhWmhGdzFQ?=
 =?utf-8?B?d1N0QmF0YjRBKzFUSnQ2OEkvNUFxdUQ4aWJYcENETFgvTnNVOHAwa3NlVlhh?=
 =?utf-8?B?cXVNSWRzejVyZVNzTUZrK1lDZzBjZGpkd3FkTW5wM2FUMzZPVUNvSnBGNzln?=
 =?utf-8?B?dGlpaTFmSmxUMGxEYkFxVGZLK1BHdTYyYkFGc0d0MndKRkE5N0RLbW8zTDFs?=
 =?utf-8?B?UFBLRklwV3VUSExEMnFxVmE5VGMwVGFPZWQxWllrNTdGaUdVL2x6eWNsVGVr?=
 =?utf-8?B?M0cyQ0hQMDM0by9lOHFWejhlQ0pSdVZob0JqbXpudlJNbUZ5N3FEWVUwQ05P?=
 =?utf-8?B?WTBzWmpzMDBjbzh4ZEFPOVNFV3ZCKzJCa0l6a1czNXk3a0xXSmp1bHk2cVVn?=
 =?utf-8?B?VGE1UFM0eHEva3pCeVFCYndWUGxxcFhveGVkeDhlVm9MdDNUdE1RWnRYdFdD?=
 =?utf-8?B?S1dEWUNwOXAyL0wzL1U0SlcvTytPdzhlZW9KOHZ0UVM4bnlHOU01UVcvcWRQ?=
 =?utf-8?B?OUpJVk4zaHhTc2pTeFVnWGlKYURLWTdQVVlpa2VhVVNTdzNSR1FDYzFWTG1H?=
 =?utf-8?B?Y0FuZ1IvUkZSRmdYTGJ2cElNTncvT2dMVmwrQjJOM3VxakJDdEZYWXJDMWp4?=
 =?utf-8?Q?/XJCqU2oOcV35BnEEa4G55VbYuaei8kEanod4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmladG5JYmJlNGVyVnZSY2gzVjBRcmRUQkc1QVdTaGlnVWJvUlBPZHhYRGlh?=
 =?utf-8?B?VlRqOUlaOFloTnYvZVBlblE5Z3NOdFhOeituY2N1ZHZ3c1FBREpnNmswT0M4?=
 =?utf-8?B?L1VhTjhjVk1mMlRKczB5dm4zdUUwZzdKanBZd0xGN3JLQUhIdERjNXZVWDEz?=
 =?utf-8?B?YXNkUTFLZ0VrUkJrUkF6OVhHblJyWFJKTVFadDZNS2FJbG9jZENaZDZJTHVY?=
 =?utf-8?B?dnJZUDg4SHE0WWRpcnd2WW5sd2xweHZic1lsa2lSNnZWV1hQc0toMGkxeExx?=
 =?utf-8?B?V2RlUWxoY0pXQ0J2K2pNS0xoL3BEd1dnUnNvSklrMHY5Q2lwN0VLeXVvYnFa?=
 =?utf-8?B?bHFqRks2OU15L3pIVVRjVjJkc0ZHSWRJMDRWd1lNcVdPTVd6cG5mNUV1YWdu?=
 =?utf-8?B?SFltUHI0eU84K1lldFhZTTFmQXpuc0UxaEJld1pSYkxXZHVSU1BOZ1ZzRTBq?=
 =?utf-8?B?N3ZJQ3pjWDltWXNJUUFyR3VTalRPbDB1eGFpMXZMYnMrREdveDRvKzcxa1Vl?=
 =?utf-8?B?Q284YXcyTWtVMEdzN1B5d1hOdVpvMTlGaXA0RUlXWjV1c0diWXM1TmsyNlZa?=
 =?utf-8?B?YWdNa2IxMGN2K1dhVHgxN0wyTG5yKzIrR0hnN0RLRWsySTVtZ3hDUGc0RkVX?=
 =?utf-8?B?dEpJNnY5MFl5TmJuVlYrQ2EvRlFXTTliVFhaVGdGcVZoVEVVRHAvYlNtb2h4?=
 =?utf-8?B?REpDQ2poeElKZ1VQVExuekxYVDNFUUt1ZkRteCtieGp1RE1FOUhVdnc4OFcw?=
 =?utf-8?B?WXgxMFRqNnZ2Nk9FcmJ3TG5YQVN5ZXUzRmdjVmh6dlQ4a3F2dkY0czFmWUtV?=
 =?utf-8?B?M3d6dEhBSHloODA1R3VrRXp6S0VMNG9DblpYeEdyQVJxUk1qdVBiaXpGZFNn?=
 =?utf-8?B?d1lRVkpEUFVMeWhQZmhjQjladDRETUM4ZWt0d2RTYzNMb1ljVXk0Y1hjOXlG?=
 =?utf-8?B?a2tGTWx5SitYaE5qc0d2V2U4ckRtNi8wUjRuNDVNQkJ5Z20rdW9sb2lENVd1?=
 =?utf-8?B?SkwvU1d3a05xRDgyV25zeEU0VFVLY00yYmtCbEJXQnZGdU5uSU55MTZmQVBG?=
 =?utf-8?B?cndHM0dUZlJaWStDUjZtTFVlM2dTL3BHbFdSYVRjVy9SQ2V5NzA5TkRqckY4?=
 =?utf-8?B?eEVrWkxKRWZtdnBhYjJHRkpUSzY1RDV1REFZYTdwaXFqaGpqdndDbmRySFVk?=
 =?utf-8?B?VjB2RDhLU1NXUE1YUWthcGtjTlN1aWZFNDlINHQ4bndSdng1Qkg3VXZMYTZQ?=
 =?utf-8?B?UDBrZG11ZGNZcGhzM2lWWjVpLzZJTC9NbXgrWWxzNE1YUWVQMysrZnhQT05K?=
 =?utf-8?B?cjg3bTI5TzFkUUoxYThNaVRGV25VRkc3UHR2Qk5QelQyYXcxTGhqdUtPNnd2?=
 =?utf-8?B?YTg5dGdFLy9odTVVMkxXUmVKb0RLMzczcEI3QXZOQnc0ck9SeFJhcFpKWmJV?=
 =?utf-8?B?NjU0eUcxY3dLZWdPWnBpcTRidlRwcllIWXRLYnQ1SjFPbXpZdHdaOWZvUytD?=
 =?utf-8?B?bXptMnlEZXRIYjhwb29BY0ZHSGRNMVg0d0k4WXl3NDdOQlNlUFlMNXhaOFhC?=
 =?utf-8?B?WHFURnBZRVdmd2pxY2xoTGNnNWF0YVQyQmduQkpjQjhOK1RFSllmdDA4SU5s?=
 =?utf-8?B?Uk95aDZ3Zi96Q0NrR3ppYmN5enhqLytSd3ozY1dNWHc3L3BtRWFkeVF0bStu?=
 =?utf-8?B?OXpkRWF6MHIyVktKM0NQUDNJUjA2S0hBY0hiY28vVTROWGtSNnhHNWNKYnJU?=
 =?utf-8?B?a0FxQ1cvc3ZvSWRMUEhyT0d1RzBQTTdwOTNyWUhxNTZiUXlEQjh1a1pscGFX?=
 =?utf-8?B?VTZnMjFYMkZvbldGejB1Ymt3UDhMUGlnZGI3M295VHQ1ZDJ6Y0RFd04yanA2?=
 =?utf-8?B?djhJbEdzV00yd1orclA2UUg2ZzNadFpPVWg1OFR6WGpRY3Q0YlQ0NGlvL29K?=
 =?utf-8?B?cWxuVnVkNzk0ajNodjFya2wwYzFkVTVWaElGK2pUTG8zSWJBUHdrZms1ZnNm?=
 =?utf-8?B?WTl5VXRmRUlxNzVrTXBuWURUbUlzL3RGOTh0SlZKRmd3R1BPelN5U1JqQTBY?=
 =?utf-8?B?cThXQVQ2VUpNaHc1NFBZa1daTWJXb1haZG4wYW5EU3ZIM05LR1htOXJiYUxz?=
 =?utf-8?Q?vLQXnwsj5M2nzWE/fhzUzRtG3?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7da0831a-ec8f-4a99-b076-08dc9177435f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2024 22:20:59.6786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qbKx4JsowtkK6ttObRCysGV4o6lgeGTNcvduhkuZ4RalH5VOLRAkOUdhCucQoQoWEnzBV8la+14dl86UdTmDa7/WNlawbWMqD89pikDhPro=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7108
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

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEF1bGQsIE1hdHRoZXcgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+IA0KU2VudDogV2VkbmVzZGF5LCBKdW5lIDE5LCAyMDI0IDc6MzEgQU0N
ClRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBDYXZpdHQsIEpvbmF0aGFu
IDxqb25hdGhhbi5jYXZpdHRAaW50ZWwuY29tPjsgUm9wZXIsIE1hdHRoZXcgRCA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT47IERlIE1hcmNoaSwgTHVjYXMgPGx1Y2FzLmRlbWFyY2hpQGludGVs
LmNvbT47IEdvdmluZGFwaWxsYWksIFZpbm9kIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNv
bT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNClN1YmplY3Q6IFtQQVRDSCAyLzJd
IGRybS9pOTE1OiBkaXNhYmxlIGZiYyBkdWUgdG8gV2FfMTYwMjM1ODgzNDANCj4gDQo+IE9uIEJN
Ry1HMjEgd2UgbmVlZCB0byBkaXNhYmxlIGZiYyBkdWUgdG8gY29tcGxpY2F0aW9ucyBhcm91bmQg
dGhlIFdBLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRA
aW50ZWwuY29tPg0KPiBDYzogSm9uYXRoYW4gQ2F2aXR0IDxqb25hdGhhbi5jYXZpdHRAaW50ZWwu
Y29tPg0KPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gQ2M6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiBDYzogVmlub2Qg
R292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+IENjOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmggfCAgOCArKysrKysrKw0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyAgICAgICAgfCAgNiArKysrKysNCj4gIGRy
aXZlcnMvZ3B1L2RybS94ZS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgIHwgIDQgKysrLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfZGlzcGxheV93YS5jICAgICAgfCAxNiAr
KysrKysrKysrKysrKysrDQo+ICA0IGZpbGVzIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0veGUvZGlz
cGxheS94ZV9kaXNwbGF5X3dhLmMNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV93YS5oDQo+IGluZGV4IDYzMjAxZDA5ODUyYy4uYmU2NDRhYjZh
ZTAwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfd2EuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfd2EuaA0KPiBAQCAtNiw4ICs2LDE2IEBADQo+ICAjaWZuZGVmIF9fSU5URUxfRElTUExB
WV9XQV9IX18NCj4gICNkZWZpbmUgX19JTlRFTF9ESVNQTEFZX1dBX0hfXw0KPiAgDQo+ICsjaW5j
bHVkZSA8bGludXgvdHlwZXMuaD4NCj4gKw0KPiAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7DQo+
ICANCj4gIHZvaWQgaW50ZWxfZGlzcGxheV93YV9hcHBseShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSk7DQo+ICANCj4gKyNpZmRlZiBJOTE1DQo+ICtzdGF0aWMgaW5saW5lIGJvb2wgaW50
ZWxfZGlzcGxheV9uZWVkc193YV8xNjAyMzU4ODM0MChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkgeyByZXR1cm4gZmFsc2U7IH0NCj4gKyNlbHNlDQo+ICtib29sIGludGVsX2Rpc3BsYXlf
bmVlZHNfd2FfMTYwMjM1ODgzNDAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOw0KPiAr
I2VuZGlmDQo+ICsNCj4gICNlbmRpZg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMNCj4gaW5kZXggNjcxMTZjOWYxNDY0Li44NDg4ZjgyMTQzYTQgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBAQCAtNTYsNiArNTYsNyBA
QA0KPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfZGV2aWNlLmgiDQo+ICAjaW5jbHVkZSAiaW50
ZWxfZGlzcGxheV90cmFjZS5oIg0KPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCIN
Cj4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3dhLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZmJj
LmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZmJjX3JlZ3MuaCINCj4gICNpbmNsdWRlICJpbnRlbF9m
cm9udGJ1ZmZlci5oIg0KPiBAQCAtMTIzNyw2ICsxMjM4LDExIEBAIHN0YXRpYyBpbnQgaW50ZWxf
ZmJjX2NoZWNrX3BsYW5lKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQly
ZXR1cm4gMDsNCj4gIAl9DQo+ICANCj4gKwlpZiAoaW50ZWxfZGlzcGxheV9uZWVkc193YV8xNjAy
MzU4ODM0MChpOTE1KSkgew0KPiArCQlwbGFuZV9zdGF0ZS0+bm9fZmJjX3JlYXNvbiA9ICJXYV8x
NjAyMzU4ODM0MCI7DQo+ICsJCXJldHVybiAwOw0KPiArCX0NCj4gKw0KPiAgCS8qIFdhRmJjVHVy
bk9mZkZiY1doZW5IeXBlclZpc29ySXNVc2VkOnNrbCxieHQgKi8NCj4gIAlpZiAoaTkxNV92dGRf
YWN0aXZlKGk5MTUpICYmIChJU19TS1lMQUtFKGk5MTUpIHx8IElTX0JST1hUT04oaTkxNSkpKSB7
DQo+ICAJCXBsYW5lX3N0YXRlLT5ub19mYmNfcmVhc29uID0gIlZULWQgZW5hYmxlZCI7DQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0v
eGUvTWFrZWZpbGUNCj4gaW5kZXggMGUxNmU1MDI5MDgxLi5mNzUyMWZkNWRiNGMgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS9NYWtlZmlsZQ0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0veGUvTWFrZWZpbGUNCj4gQEAgLTM0LDcgKzM0LDggQEAgdXNlc19nZW5lcmF0ZWRfb29iIDo9
IFwNCj4gIAkkKG9iaikveGVfcmluZ19vcHMubyBcDQo+ICAJJChvYmopL3hlX3ZtLm8gXA0KPiAg
CSQob2JqKS94ZV93YS5vIFwNCj4gLQkkKG9iaikveGVfdHRtX3N0b2xlbl9tZ3Iubw0KPiArCSQo
b2JqKS94ZV90dG1fc3RvbGVuX21nci5vIFwNCj4gKwkkKG9iaikvZGlzcGxheS94ZV9kaXNwbGF5
X3dhLm8gXA0KPiAgDQo+ICAkKHVzZXNfZ2VuZXJhdGVkX29vYik6ICQoZ2VuZXJhdGVkX29vYikN
Cj4gIA0KPiBAQCAtMTkyLDYgKzE5Myw3IEBAIHhlLSQoQ09ORklHX0RSTV9YRV9ESVNQTEFZKSAr
PSBcDQo+ICAJZGlzcGxheS94ZV9kaXNwbGF5Lm8gXA0KPiAgCWRpc3BsYXkveGVfZGlzcGxheV9t
aXNjLm8gXA0KPiAgCWRpc3BsYXkveGVfZGlzcGxheV9ycHMubyBcDQo+ICsJZGlzcGxheS94ZV9k
aXNwbGF5X3dhLm8gXA0KPiAgCWRpc3BsYXkveGVfZHNiX2J1ZmZlci5vIFwNCj4gIAlkaXNwbGF5
L3hlX2ZiX3Bpbi5vIFwNCj4gIAlkaXNwbGF5L3hlX2hkY3BfZ3NjLm8gXA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfZGlzcGxheV93YS5jIGIvZHJpdmVycy9n
cHUvZHJtL3hlL2Rpc3BsYXkveGVfZGlzcGxheV93YS5jDQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
DQo+IGluZGV4IDAwMDAwMDAwMDAwMC4uNjhlM2QxOTU5YWQ2DQo+IC0tLSAvZGV2L251bGwNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfZGlzcGxheV93YS5jDQo+IEBAIC0w
LDAgKzEsMTYgQEANCj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQNCj4gKy8qDQo+
ICsgKiBDb3B5cmlnaHQgwqkgMjAyNCBJbnRlbCBDb3Jwb3JhdGlvbg0KPiArICovDQo+ICsNCj4g
KyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3dhLmgiDQo+ICsNCj4gKyNpbmNsdWRlICJ4ZV9kZXZp
Y2UuaCINCj4gKyNpbmNsdWRlICJ4ZV93YS5oIg0KPiArDQo+ICsjaW5jbHVkZSA8Z2VuZXJhdGVk
L3hlX3dhX29vYi5oPg0KPiArDQo+ICtib29sIGludGVsX2Rpc3BsYXlfbmVlZHNfd2FfMTYwMjM1
ODgzNDAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ICt7DQo+ICsJcmV0dXJuIFhF
X1dBKHhlX3Jvb3RfbW1pb19ndChpOTE1KSwgMTYwMjM1ODgzNDApOw0KDQpZb3UnbGwgcHJvYmFi
bHkgd2FudCB0byBnZXQgdmVyaWZpY2F0aW9uIHRoaXMgaXMgdGhlIGNvcnJlY3QgV0EgbnVtYmVy
DQpiZWZvcmUgcHVzaGluZyB0aGlzIGNoYW5nZSwgYnV0IG90aGVyIHRoYW4gdGhhdDoNClJldmll
d2VkLWJ5OiBKb25hdGhhbiBDYXZpdHQgPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+DQotSm9u
YXRoYW4gQ2F2aXR0DQoNCj4gK30NCj4gLS0gDQo+IDIuNDUuMQ0KPiANCj4gDQo=
