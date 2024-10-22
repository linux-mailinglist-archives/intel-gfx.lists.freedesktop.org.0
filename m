Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8E19A9F86
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 12:04:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D81C10E1EC;
	Tue, 22 Oct 2024 10:04:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qh0bv8vi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46A9210E1EC;
 Tue, 22 Oct 2024 10:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729591482; x=1761127482;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=buOw9gTSICSK8RMluNBWnAkdfcWq3w7RlDI/u4jsIpg=;
 b=Qh0bv8viY55Bch5ldqsJgcKevx9KArczx56xZP4TP6nxH1C9LEvyUEPl
 zs938dnEhY1VWAPNv/iDdkxD9djzatbF3cFqLfvvIyxaYTHb5pBIhCaSk
 /eyk7LKXXs2dkEWT9XXlhDQJHZt1BbtsDvfzI7ZXvE2iflp9RyCHjSv25
 FxxopX8cph2DosfQHf/8oFSaUIWn8KKEikCuKU9oK5BBaRIZ7MQiify6S
 ek/bpUSizO736YmSWyvgr2Qhbt+5UWXjrwOmXu5B0wi5gDJ6x0nEP9tnS
 aFHYetIKKw0GkNobLihtNEixirARvLepgzpBW3YHctULM/gugtM2nJQgM Q==;
X-CSE-ConnectionGUID: wvgqXGvdTEusEHXmQCNvNA==
X-CSE-MsgGUID: +NrVhFn4SSaK+IySEw5QFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="33043913"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="33043913"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 03:04:42 -0700
X-CSE-ConnectionGUID: mD9y8hJOSZuaPYml8sz95g==
X-CSE-MsgGUID: 0GkCFZ5YS+Cjxj0fKDGHnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="110641783"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 03:04:42 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 03:04:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 03:04:40 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 03:04:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h44Yf96jwPiiFGiD2k1vpsmKTQ/8g0Pmi0U7o37dRJgrmX295lOgi9tphXNkQA05DwCdEhPhTbkbSbjV1GEN231lfPUx2e5dIYk+oMNHtsg40zm9y8SIZFQ0FhyEgTsK8fBPsP0fbD7S3b3dJ4TJkJhpUvEGXkuFhu6mk1a/ux0NPa4iZzHheRDYZep3Nd5MHjyQ38n7lXYlfFYL1uWR7hRnbDpR2Ugn5qgylfkvfC5Axi+RCMHfLqAuboLoudk38nu6mWje5y9gTRlQW/a01VnoI6+nQYox32UhoXjO+pjxJ9Ukai1Kwkp3cSfXmYjPnp9690+vHh7QXWvHlZz7Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A0u0pHS0IjfvmRaSZsQ7ayUF0GTCbHf6HvM5pnrKSrM=;
 b=JU2ZJnxu7Hq6xjiEJ0ihn1tL8vdSXloBQpEjyn1fczFqfuvT8/z+BAjeGPslJajkVl5lIpM+PG0ZB0N3qgh2ff4sRfb4yCBi8fmah+CV3WAqSveuplovPKh4c5SPRXciR2qHN/mwwzgxALqUTu1Az2t4IGq0OrHS1l2nbdvg2uZ5eBF2msLYo4S7vHpj8yVUG7CZyaK73tb3f3FsIDQWaBgMoSDQTglA0oSoiXjPSRJp15jOH9Qo9cg4D/T2UkVqaS9YdaoPSS03kRLBMa31FAxCmY4QYqqRSErF+ukseTnlzpVtJ8oEw55hQ+PHy+kejawEHXNWczc/ORuyi78SLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6333.namprd11.prod.outlook.com (2603:10b6:8:b4::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8069.28; Tue, 22 Oct 2024 10:04:32 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8093.014; Tue, 22 Oct 2024
 10:04:32 +0000
Message-ID: <7c9e8e14-b668-453a-85e3-5af81cf9b31a@intel.com>
Date: Tue, 22 Oct 2024 15:34:26 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/16] drm/i915/display: Prepare for dsc 3 stream splitter
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <suraj.kandpal@intel.com>
References: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
 <20241021123414.3993899-3-ankit.k.nautiyal@intel.com>
 <87wmi1y66a.fsf@intel.com> <b51c1a22-304e-4b9d-aeff-666c2956838b@intel.com>
 <874j54y3r3.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <874j54y3r3.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0007.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6333:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b1f4c3f-9401-491f-4708-08dcf280ecb9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amhZVUVWNEdmTzhQV3ZMVytXVmp2OHdBc0ZidFc2NU1tRUhhM3lHWnErMmxn?=
 =?utf-8?B?NjUrNGhabUJUMmJ6SkJrR2U0SWNDYjJxUFdUMjJ2Z084eUplTHhHTG9kR0oy?=
 =?utf-8?B?SndINjErVjczUGpzaWxDUnNiVHM1SjZoMFpxdytvNUZmN0xpRmZkQWdLL3RK?=
 =?utf-8?B?cGJDL24xS0RMVTNFOHg5STM4cnMyTEJVYzYxTzlWU2xjb29udi9VaTNZTTJ5?=
 =?utf-8?B?bHpOa3drYStla2lHMGRVRmdzS0tYcmM1c0xUZWNDQnlSY1FodzVqNVo5SkV5?=
 =?utf-8?B?WFpSZlBsOHNTNldHS05MczVQWHlCZTZ1RVlZVmltc2tsSkxlcU5pTWdyLzhM?=
 =?utf-8?B?QTFPeW1UeUovaXU1UkJWZWFrRDV5SFRabmFpQThLVFovdHhUYnNPUkFFSnZi?=
 =?utf-8?B?dHZvcmZ6Sm5MTVUySlFGZ1NOV3VHVkp0eTBUdFhBQkZGVUw0V21lUXdzYWlR?=
 =?utf-8?B?M1pjTzFkZGo2SWFBN0prMlRKZ2Y2Q1p1OVp5Umd3WWUvbVEwV2IyR3RUWE91?=
 =?utf-8?B?cGkzZXlmK2diOG01eHJjbjFNK3crUFk0eVV5ZHB3UFB1N25SNmVZUkZxK25q?=
 =?utf-8?B?dzlveWNTRVhqSHZyczRxbllKbVZrcjQ0NThYNXFrVTdRV0xHclI5VWJ2dkp5?=
 =?utf-8?B?azdidGNhMEpXc1FiTERUMC9ONDhZbE1HT01XOWk4LzRQV2NLRG9GQ3NuVFkx?=
 =?utf-8?B?SWxiK0FZTnNBTmJNT3g5ZDFNUHQzcU5ieW9GZGRid3VpMXpmM0R2bXlVTGlt?=
 =?utf-8?B?WFp3cTY0dlhTS05CU1BUcTNPbnUzdnU0MG5DbDZUTzVvRkxLQng3YjRWUFBs?=
 =?utf-8?B?Y05KanlpRFNPL1gyNitxK2xmTC9WYXhxQXNHOS9nTnc1b1dIcVR3UTJDSlFp?=
 =?utf-8?B?NkZqTXpmTWtUMEwxOGp2QVVmb1NOQ05Tc2JLcUZzWS83Tmd4bXlUWVdHT2d6?=
 =?utf-8?B?OHNLOUxKcnhuRlkrd2dXSC9vNTdMalFqR3VMUUo4bkVROVhGdlRpTEJuaTg4?=
 =?utf-8?B?MFgvcWlnaEhEYnQ0QmVXelQxVzZYWUdkNnBwZXd1OTNkQzVOVElHT043Zjhm?=
 =?utf-8?B?VnpBODRaYjhpUytzQ0w0bkk0dDJjTm1jUENtWE1wTkp3VkdJdUlBZUMrdkFm?=
 =?utf-8?B?Y2tuR0dDZWcvMWlVUGVNOWlXT296aFpDT0RxdEdEbjFtaHBmWDBRRWNtcmtn?=
 =?utf-8?B?a1FKTjRLZTl4Z3F0U0lIWUFhTVhEczVIMUtzb1F4MEpYdmVSZmVGS2Y2Qitp?=
 =?utf-8?B?NDRQak10S1VsQm0zWE9JeXU2ZWFDQnoxM0J5T0UybmpyVThKTVlnS1dPaERo?=
 =?utf-8?B?VGR5b2hXMUY2RmsvTE9lbElZQUtjOFFWR0YveXBveGpDK1JwT3VMYklFdDVp?=
 =?utf-8?B?cktZMG5VQVRmbUphNkRSVVJ5aDBLWUdyVGNEMi9HQmFUam1uVXBZV1RhQkZa?=
 =?utf-8?B?N2h4TGlrOGRib0xBL0s4QzkyMk5pRUsxWjZZTGJrVkNpRjlQZVNoa0NUbGtu?=
 =?utf-8?B?c3NoQncyTnlWVncrdDJwdGcxT3NnKzFmR0FPQjR5Mkg2Vm5nV1d0SWZTVVVn?=
 =?utf-8?B?WUN2TTB4ZDMydzM4OGY5ZG10RUtMQVFkZ2IvY1hxMGVnS2tZQzBQYk5FUmJz?=
 =?utf-8?B?VWtKdlpOSW1ubW1sQTl6RGhQZHpJaVo3dldiaEkyK1lqWHFOWTBoeEVsL0dl?=
 =?utf-8?Q?85se+xr+tw+fuheQa1UX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TlZqMHJ0RUVtY2MrdEpsVm5LcXl2NW1jeW05Vzk2YUViaEp1bFFtd0FuWldW?=
 =?utf-8?B?NnNkUjZWSVkvMjF6MzdURHR3L2cvL1RmWFBTQ1lkUWJubmI0K2xiRlNrdEd2?=
 =?utf-8?B?TU04M2t3U2tFM1pBYWZ6RXY5ZDhxK09ZalRSNTdnL3A4T2lLUDVxaWZxQ29S?=
 =?utf-8?B?bGNJTVk3WTZLSllya2FMcHBqS0hIV2g2R1FDcWtsVit3aWY1cUJzTElsaTNv?=
 =?utf-8?B?Z1d6NEZObk15R2JtRTRhdmJRS1U3M0Z1aGxna3lvbEFteFZUVktQVjBqSlN1?=
 =?utf-8?B?VS9mMHNFeW5KWTBvcjhoWk1GN0VuVVozbHNzLzhlNE9tV25ZOFoweUxKemRV?=
 =?utf-8?B?cmpwa05uVTdSTVM0a1l4WHkzSFhNWThQS2NuV2pNUlI1RXYwd3grZ2gxbzVM?=
 =?utf-8?B?QjlvSVN0U2QxQWZSWWxmVU1PbGlFZjZteGZIOEJSNnNaelhVMkpnTHR1eUYr?=
 =?utf-8?B?ZjlLNUJqbzBXNWswb0pCeEtzOXZPcUhicS9ralhUNjJ1ejRmWWZqY1hTZVlK?=
 =?utf-8?B?S0psSTZQS1FFL2FHeTRsSmZKTnl4SHRLRnUyVG4zWExIZ3EyQ25OK2Jjczhs?=
 =?utf-8?B?MmpGODNDeUJSYnBHMTczcTF0dkFuZWxraWlHUCtlL2tib2Q3UEFSWG4rbVQ0?=
 =?utf-8?B?Y1V4VVdnSDhNU2ZBdnZyMGJhOW41bEVBYzR1eCtKRHlySUhNbk1wQnRFWSs2?=
 =?utf-8?B?MTlXQ0x0MjR0cG51czhDS3NDVDdYcmVmQmNsMGdqVG9LNDkzYVU0TnFpck0w?=
 =?utf-8?B?UDQ0OWtvSUVtakNMdEFrSzFWbW1IZldpb3FVZDloOUFkTENLUUY4OC9lV21B?=
 =?utf-8?B?RDZzWW9BYWR1NnhTcnQ3dG9lRE93UXA0NDVZbEUwYUJEK2pFMFB3bDNhTGU2?=
 =?utf-8?B?Y0JScUNrYWxDcjVsREhYaUZRYzhDdUZKeHRuaGdiMHpoWUl6Y1R0QnkyT29n?=
 =?utf-8?B?TlpFMG9xOVRUdmw3aXFsakN6L3NiQVREMlFvdytrSHV6L05vK2ZOcWRKSlZL?=
 =?utf-8?B?R0h3OTJ5bC9OM1YzS0pJS1RQUnc2MTA1dDY1cGJERmhnSE9rWWFYamk1OVA1?=
 =?utf-8?B?c3BGRGNYblFEUVBOaGswcmRTQnErVytic2FFMUFTWU1pSjVaQWxXOXhsRDBF?=
 =?utf-8?B?dWtQWjNaaWVUSmNCT2dSM04vcmkydkRsckFTeDI4NmFBSXBXbnE2Um5GdjQx?=
 =?utf-8?B?TTlPNkJ6akZVQVF6eUkwdmIvWVFyQkgweEpVYUdkZnVySXZNQ3lLd1JsSTVF?=
 =?utf-8?B?ajlHQjhuR0NMWTM0YnAyZnVrMTBWRW1zdnFldFU5MG1IOWZuNUljTTExSnpv?=
 =?utf-8?B?TXYwb0RmSEpyOGRrUHFaYkxyMEZabDd2TXo5MUx2WHZmUjV1dHBSZzlnNDhR?=
 =?utf-8?B?Z0UxVnhOSkR0TXR2V284MXQyZFZidXF3dEgzZUFQUmluOGIzakQvemgxbmNM?=
 =?utf-8?B?NXFCY2NNZkc0emNwS2Y1Z0lDMHFhdjZrbHdaVXlXSENjNlMxWHhma05DNFFP?=
 =?utf-8?B?djVUWFB1b2tmWTFYL3J5NUFVdXVaQ1dHemIrTUxsbjg3UFgxTW9OZVFhSTR3?=
 =?utf-8?B?Z0dzdDFzU01ScW5aNzBHNTNIL05GOEhlbVNpSUluN1dBZ3d1MkF1cVVtUm1P?=
 =?utf-8?B?a2daaXdBZDQrOXduZVZnVjd4MXFkZ2doOS9INkdUYjRmNUYxNDI1elQxWHdZ?=
 =?utf-8?B?T2lRZW1GRTI2RHRXenFLdWVRS0tmc0dQSFZZY2tFMnlNK3BkbmhNbkhwaW1a?=
 =?utf-8?B?UEIweUdQdWhzRVdwRFpaOFRDbUp4ck1OT3F4SDNLKzd4WTFUWURXdU8zdXh6?=
 =?utf-8?B?dUNKbkZhNFhnQm5XN3ZEZy91OFA5QkgrTXJra2lNVEtwem51a3hzbVBEbkNY?=
 =?utf-8?B?Mld4ajNWR0pGeld2clg2Rm0vNDZhYkJkR0NwUHdrdU1aWkdqUGZYTkxMUS9B?=
 =?utf-8?B?T0ZyUVA1L1EyS2NBRVk1OHo0dFlJR0tHWnZYbzZsWnE3Mms4OWdscWdmOHpw?=
 =?utf-8?B?b21RLzUzMDROakNBYUdyZzRwQmMwSlBOb1hvTXpibHZoZUkrbStFZ3A1bUdu?=
 =?utf-8?B?RjNaZEd5eFBCZ3ZQaCtVRitDWGU5eXltUk54RUNFenFMZm5Ocyt0eU9RT1di?=
 =?utf-8?B?NDVPdjhyWXBTSmdsK1h5ZEhrcmxiRk5HNmlnMW1kYkNJTTFacUQ0SXkxQTk4?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b1f4c3f-9401-491f-4708-08dcf280ecb9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 10:04:32.4305 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ndI7Gh1mQiCdwUZCjAIJIQFxIC11aoTSTilez5Mv6opobTzdsYhGxE1Q6jRVwqV6VLLg02kzqajH56MHYJxDVrvSoiU8PyQ0HlYZkrclXp0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6333
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


On 10/22/2024 1:21 PM, Jani Nikula wrote:
> On Tue, 22 Oct 2024, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>> On 10/21/2024 6:16 PM, Jani Nikula wrote:
>>> On Mon, 21 Oct 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>>> At the moment dsc_split represents that dsc splitter is used or not.
>>>> With 3 DSC engines, the splitter can split into two streams or three
>>>> streams. Make the member dsc_split as int and set that to 2 when dsc
>>>> splitter splits to 2 stream.
>>> Maybe also name it accordingly? "dsc split" sounds like a boolean, not
>>> like an int.
>>>
>>> Moreover, when you change the meaning of a member, it's often good code
>>> hygiene to rename the member to catch any incorrect uses and to ensure
>>> you changed them all.
>> Noted. Will change the name accordingly.
>>
>>>> v2: Avoid new enum for dsc split. (Suraj)
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
>>>>    drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>>>>    .../drm/i915/display/intel_display_types.h    |  2 +-
>>>>    drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>>>>    drivers/gpu/drm/i915/display/intel_vdsc.c     | 20 ++++++++++++++-----
>>>>    5 files changed, 19 insertions(+), 9 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>>>> index 87a27d91d15d..553e75cf118c 100644
>>>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>>>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>>>> @@ -1595,7 +1595,7 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
>>>>    
>>>>    	/* FIXME: split only when necessary */
>>>>    	if (crtc_state->dsc.slice_count > 1)
>>>> -		crtc_state->dsc.dsc_split = true;
>>>> +		crtc_state->dsc.dsc_split = 2;
>>>>    
>>>>    	/* FIXME: initialize from VBT */
>>>>    	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>> index ef1436146325..9e2f0fd0558f 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>> @@ -5741,7 +5741,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>>>    	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
>>>>    
>>>>    	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
>>>> -	PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
>>>> +	PIPE_CONF_CHECK_I(dsc.dsc_split);
>>>>    	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
>>>>    
>>>>    	PIPE_CONF_CHECK_BOOL(splitter.enable);
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> index 2bb1fa64da2f..58f510909f4d 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> @@ -1235,7 +1235,7 @@ struct intel_crtc_state {
>>>>    	/* Display Stream compression state */
>>>>    	struct {
>>>>    		bool compression_enable;
>>>> -		bool dsc_split;
>>>> +		int dsc_split;
>>>>    		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
>>>>    		u16 compressed_bpp_x16;
>>>>    		u8 slice_count;
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 286b272aa98c..c1867c883b73 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -2409,7 +2409,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>>>    	 * then we need to use 2 VDSC instances.
>>>>    	 */
>>>>    	if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
>>>> -		pipe_config->dsc.dsc_split = true;
>>>> +		pipe_config->dsc.dsc_split = 2;
>>>>    
>>>>    	ret = intel_dp_dsc_compute_params(connector, pipe_config);
>>>>    	if (ret < 0) {
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>>> index 40525f5c4c42..3bce13c21756 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>>> @@ -379,7 +379,14 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>>>>    
>>>>    static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state)
>>>>    {
>>>> -	return crtc_state->dsc.dsc_split ? 2 : 1;
>>>> +	switch (crtc_state->dsc.dsc_split) {
>>>> +	case 2:
>>>> +		return 2;
>>>> +	case 0:
>>>> +	default:
>>>> +		break;
>>>> +	}
>>>> +	return 1;
>>> Seems overly complicated.
>>>
>>>>    }
>>>>    
>>>>    int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>>>> @@ -976,8 +983,11 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>>>>    	if (!crtc_state->dsc.compression_enable)
>>>>    		goto out;
>>>>    
>>>> -	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
>>>> -		(dss_ctl1 & JOINER_ENABLE);
>>>> +	if ((dss_ctl1 & JOINER_ENABLE) &&
>>>> +	    (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE))
>>> The extra parens are unnecessary.
>>>
>>>> +		crtc_state->dsc.dsc_split = 2;
>>>> +	else
>>>> +		crtc_state->dsc.dsc_split = 0;
>>>>    
>>>>    	intel_dsc_get_pps_config(crtc_state);
>>>>    out:
>>>> @@ -988,10 +998,10 @@ static void intel_vdsc_dump_state(struct drm_printer *p, int indent,
>>>>    				  const struct intel_crtc_state *crtc_state)
>>>>    {
>>>>    	drm_printf_indent(p, indent,
>>>> -			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, split: %s\n",
>>>> +			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, split: %d\n",
>>> So what does the reader think when they see "split: 1" in the logs?
>>> Split enabled?
>> I was meaning to capture the DSC split state as originally intended, and
>> extend it to have splitting to 3, 2, or None.
>>
>> With that we can never have split: 1, but can have either 3, 2, or 0.
>>
>> I realize, split:0 is a bit ambiguous, so I am thinking about:
>>
>> -change the dsc_split to dsc_streams: to capture number of DSC streams
>> per pipe, instead of DSC splitter operation.
>>
>> -dsc_streams can be 1, 2 and extended to 3.
>>
>> -Splitter state will then be implicit, 1 DSC Stream => No Splitter, 2
>> DSC Streams => Splitter used to split 2 DSC streams and so on.
>>
>> With that, deriving number of DSC engine will also be straight forward
>> (avoiding the switch case above).
> Maybe be even more explicit, and call it num_streams or stream_count or
> something like that.
>
> Also, the crtc_state->dsc.dsc_something is a tautology, the dsc_ prefix
> is unnecessary when it's already in a dsc substruct.

I agree, I am working with dsc.num_streams, something like : 
https://patchwork.freedesktop.org/patch/620816/?series=134992&rev=6

Regards,

Ankit


>
> BR,
> Jani.
>
>>
>> Thanks & Regards,
>>
>> Ankit
>>
>>
>>
>>>>    			  FXP_Q4_ARGS(crtc_state->dsc.compressed_bpp_x16),
>>>>    			  crtc_state->dsc.slice_count,
>>>> -			  str_yes_no(crtc_state->dsc.dsc_split));
>>>> +			  crtc_state->dsc.dsc_split);
>>>>    }
>>>>    
>>>>    void intel_vdsc_state_dump(struct drm_printer *p, int indent,
