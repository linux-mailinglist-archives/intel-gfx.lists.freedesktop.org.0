Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D733AAC0E6
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 12:07:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92D8810E647;
	Tue,  6 May 2025 10:07:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nZD4q9lH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D6610E666;
 Tue,  6 May 2025 10:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746526023; x=1778062023;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6ZEMCzGSXLmy2AIuu3njtySWEu2qqrrKPj17gsQte4w=;
 b=nZD4q9lHX5BtOYZ11I30wT/lYkNV+TNs5tldIf6LiE4GrUk4OT2YfyUe
 VkPXWA5IA20zG8oaAYQQvqssfz5aknJhnsdf2arhHAjO3w09bGRnSC6bF
 Mm/Z7RfVrm0nLk2qNqJIiJtm0G2OVyUcjLyAaxpabEv0ndsl6kmAkEUxA
 Uvvt9efbK8/fgFI0il1k75j5bSUe6zBzyyx8hzcpZYtkmUGX6KfIOhctH
 V+YluNwqY84Sz5YbJB51bEuK6wDV1Vhj+2LyExYAvT4YaFvWsf+aZI4xy
 DXBfSYtOcng9OlsGhQ3BDkCZFM4/52YtYlAcYwMrGqw5Ga9FuyFrGba7G g==;
X-CSE-ConnectionGUID: zfX0AeZpQJ6ajj6noSIY5g==
X-CSE-MsgGUID: QBX7ixkERpuu4awKEA0xpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="73583346"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="73583346"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 03:07:03 -0700
X-CSE-ConnectionGUID: l6numOdaTjW3tbR7a0cwvQ==
X-CSE-MsgGUID: gEOqvH9mTPSHzeqMSdFnVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="136086560"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 03:07:03 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 03:07:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 03:07:02 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 03:07:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qvfMvb34fgg1846800gh6rlEOkEDOrKf5Vg6NGoFx+sW5nElJBH+rleNOcBDnO3Ly71POLW0/di9TS2uH9JMkswvvp/EdEvaIpD1CmS8DLq87p+h25RB/tS+gFXEGBhoFTroqUpxlLhCzmaQ9XOTmL0731oIzVTL92JwDW5Txfs1H1IhoWjXuQ3zaIJK5S8Tba8KXROWfipBQThnbUPYYLo/JFLmTCSWIQb06gqWw6+ELWoxvAWhLOrGciFL9Ebb8vSmtjPt5y7pjQD2Tf9BmVndcuX8hI2ZD+x+1ICfjxWzs9bBWxJ8nh/GWay7Wriqum8pOKliWTs2tVWDYY82Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KTpNX5RTNkd2AbJMfGEGIoa27E5FRbvivqUWtodYvEo=;
 b=o0fAEcmrGXL0WeFSSEOo62Psu/yVRC1cjmP4O3FZH8bOJorLifkVNM/uXsGjDtgiYMLZhljlDTA3ZToc1UbSw6b/521d7veDUuF0GxKMh3RnFlc1gO8eZ3tdxDKT6QbfoEATu2/waZjZ1Jc2euv6HieWSAtUuu8yetUq1kovms799EUJWaJIQV95SaI3OrcLFv8VKNrtg9t/4nGt7ku4OvagORHiz+aLzsp0mDHkN8a5OHWvte+uyOq9qYIhRR+JIMCQrXSX7WgNsRnpPd/XUfhy+UYg3us+8JOMYX9ALeN35AK3AMNKi+R9DNRcU3eCgl0+O2XvUV7g/z9mJuFnkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN6PR11MB8170.namprd11.prod.outlook.com (2603:10b6:208:47c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Tue, 6 May
 2025 10:06:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Tue, 6 May 2025
 10:06:55 +0000
Message-ID: <e199a35d-399e-4c84-9744-df06d020c19f@intel.com>
Date: Tue, 6 May 2025 15:36:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/12] drm/i915/dp_mst: Check BW limit on the local MST
 link early
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-6-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428133135.3396080-6-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0015.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN6PR11MB8170:EE_
X-MS-Office365-Filtering-Correlation-Id: d581161a-3aea-4aa8-300f-08dd8c85bb4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aG5wVkdraEhLWkhSc2x5eHUwb3AwcmFDZEZCamZJb3VXNTlaenQrbWw4SFho?=
 =?utf-8?B?MTFvTHo3cE9TVXloQ20xbjR3TDhPUnVqVkZRaFB2RlBFajJiUlJFTUZHRU1Q?=
 =?utf-8?B?L2phbjVWM3MvZFFZczZTSit1T0ZKQzJqM204Uk5EemYxVmRXNm5MTDZ6S2tS?=
 =?utf-8?B?Y01iLzgyTXUwaVQxN0xaVTFiczlIMTFReXhjazhaV3ZkSVVRUXRLdjlvWDZk?=
 =?utf-8?B?bnFLZ0g2OGMvcXh4bWxBbEZKV0RlSlVjNVhtTEJjcUsxNUlqbDB0aVhRZERS?=
 =?utf-8?B?Z0xXVXRCY2NkOU93S3hPZ0Q2c1pkU3lzeC93NjRyZGdoVHN1QXF4cFYvY3Q3?=
 =?utf-8?B?MnlyNnlnaDNlbVVYYUROWG5yYWd5S3RqaFJQMEJ1Q2VjbTRmRzFqaVFRakV5?=
 =?utf-8?B?cUplZVFDWEFYdlJSUDBwL2JLb0NCT3BNTHpwejY5R2x4U2ducEluYUFwWTNu?=
 =?utf-8?B?T0RDUmpmS2VETnZ3MUNzS3FTYnBjcm5xb2k2UzVPZmV2MzRsZytUd2JLYmFC?=
 =?utf-8?B?bFpXc0RUSk94TzNqdXkrcG5mNi9GTWdjNWN1TWRQMEMzWjBaMGVwdXh0TEF2?=
 =?utf-8?B?eU9WNnc2emRDTy9yQ2lLalpkU0lDN3VkODcxb21rSWVRUCtXdmU1MzZoN0J5?=
 =?utf-8?B?RlVNL3N2NGI3d1Y0MjJRZkJtWVBEc3NkUkk2bjIvSXE2ME9icVJPSUtRTXZ6?=
 =?utf-8?B?cXdja3Z6RzRxVHB6SDFPeFhoZEVBNnZXamJ1dlptY2Fia3U3NGZtRjkyQ294?=
 =?utf-8?B?c3VLVGVFWlZwOHJlbVRjbmZiUHoyQmFlS2pac0s0RjNRTHU2cThyNVhyME1B?=
 =?utf-8?B?WXQydkFBQlhQUjRJYXpLWkhRWFJCa0huMzlLeXF4cERDZWxkOGJ0NWh2dGdI?=
 =?utf-8?B?ZGNrcllWcERFbXdEa2R0VUlIOUU4TXA5cG80eTBnbGdQN011WEp1UVljSHlS?=
 =?utf-8?B?WXZuRGJBejUxRzZsYitxckkzRGRMNWxGdFZMRnI5RFN2dmNlczRJOWtpbzFx?=
 =?utf-8?B?LzNRQXF5L0JzbTF1clR2UWU0U3NTTERDR2tDMGpFMVVrd216YzhVWFhHa1p3?=
 =?utf-8?B?RkhtcUcxWGFrclI5TDdrc2xBUGxoWktqKzd6QkRxQVRoNmZ6YXRBL3oyTncz?=
 =?utf-8?B?Qk8yNG0vVlhHYVVxTWNSWTBzckRxZUxEcEZIL2NsYkZjRkJXczc2QTJXN2Fu?=
 =?utf-8?B?a1NYNzZrZy92ZDRSMGpVTzN2dVl3REV6VjFZOXhaVlErRDExVVpzUHJzQ0xH?=
 =?utf-8?B?UlZrVE9odFgvRlc2RStMNkpJeVFPK0EzeSs4QVVVRGJlUEsyL29UdEpPZWRP?=
 =?utf-8?B?eUNBMFo2MFZXUkhKS3F0Yjk0aUdJa3BlMVc1dGRORXY3cDhVWjN0Rmd4Y2VF?=
 =?utf-8?B?bjNvQ1VsSUxsZ1VpamRZaXpscDJQMHpDNEFxTXJMbnY0OXRIOWZHd0E4WU1D?=
 =?utf-8?B?V05ueFpnSDY5MnpyUEhuY1VLTFFsRmhEWlMvWGlPYU1vZFNKRlNBYU5NMzN3?=
 =?utf-8?B?MHl5eEppSGJjNDVKZVZVNGlOOWxzUGkraTMvNW42NFFDNFV3ZHlRQXpnMkEr?=
 =?utf-8?B?bDhldkdveW5NY3owdkRvUG5ZSXpTUnBIZERjRkFsdnhQYzdtRUhCWi9FZHpF?=
 =?utf-8?B?YWJoaVY2VTlnbEJhWElDb082M01CS2lWMnplSEwvRHRzdjVNek9GaG5nclRU?=
 =?utf-8?B?a2prNC82b25NZERweFFqZmw0T3lGdkx5djF2OUJFK0JjZUJ0NDhTN2g2RTlD?=
 =?utf-8?B?Q2JnWFN1TGF2SDF1ZEMyRzA5K0F4ejdGbzNMNkJvNll6YjQ4WVpZNE9yNG1G?=
 =?utf-8?B?TWFYM2drdEZ2OG1iMkQwTjJpSTgxSEs5V3RpV0FWQXIwYVZER3Z2QVJVR3lX?=
 =?utf-8?B?NmM0RFpVSmRkR2NJN01yNHVkQjBGSFppVHYxcTh3NTBtbjFIUWw2akMzVkpH?=
 =?utf-8?Q?wUbjW9fLsD4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzlxL1Y0V0xzckh5ejFkTWYxaW9jeVpQV0JqOGlodU1CTm5uVzBzZEVrRmJt?=
 =?utf-8?B?ZFRlTy9VUCs5SFZZbUIwOWJqYlhlZHl6VzZ0SDRNZUUrSFRwODVkTVBUaGRH?=
 =?utf-8?B?OFBQMHRjWGgzNDhnOTlCU2xvOWZyQTZWbERDZEdnL3djTG5rRDR2Nm4xQ3Jv?=
 =?utf-8?B?YTZNRGdOVWluMUhweHBDTFFTdStiVkVHVm9KT3NvM05wciswbWd3bnF3ZWpO?=
 =?utf-8?B?RnQrenFSWDNQMHBFQ2U5YUJzY1dmZ0RwY1M3aFFLYi9kWmVYU1lYa2g0VXhZ?=
 =?utf-8?B?SDB4d3djckFPaEs4N2cwMWM1QVUzWnEydG9RVGZhNkZwOEtkbnhlSk1tS01L?=
 =?utf-8?B?YnJBRStuMHlEanB3U29LSmNTTWJZWnMwYi9GOFYyRTJmQ0tlNDJrSWJKWDZj?=
 =?utf-8?B?WDFYL1Q3b0FnMDFhSlExWFUrZ282MmpMMG13cy84ZFl2V3JnMVdScmovSlh6?=
 =?utf-8?B?M3VPUTU3bTk3cHoySTNRYSs0YmJoWUVNNXc0K2Vpcms4WjJycTkvY0QvUjhC?=
 =?utf-8?B?cG1IWW43QlZKY2NRRi9iSkpBc3Y1bDNERzFmd0JqYjhXdlZSQytZN3lSZHpO?=
 =?utf-8?B?dUVMbWttWks0UFRESjB3MkhBSVdRUXhSM21YNVFzRS82UFhCZTFIbUhwenNv?=
 =?utf-8?B?M1BFdWRLcmIrSDM1akJFVUdnQUlSQWdUUE96YllqcFZzWmJtejU3QVJiR25J?=
 =?utf-8?B?TEs1czZDbHhsNFUxY21mdXVmSEZVbkxNNU9jTllMT3JvcTNpNmlyYkdrSWxS?=
 =?utf-8?B?c2NSYlBDeHdoYVdrRnRlR05JcUdrVkMzbGRwV0VWeVJYekN1b3QyVzYxNXo1?=
 =?utf-8?B?Z0NsUENXN2xaRGlyUkRQekhOWDRxanZvMVdnUXRLN0lSdHBTZmFrVmd5a3Jk?=
 =?utf-8?B?bVFFMmpqVkkyY0pVbTNrZUFjenRmaEI2YUhzL21ybkZWcFZka1dhblZmakN1?=
 =?utf-8?B?aGRhNVc2dHljd1FncjROdjRrWWc2VDNmKzE3RUJZUUlSaXZLM0g4TnNQTFZx?=
 =?utf-8?B?UEFpUTBrVVVWOFRLUzRQRlBmb2pneTVybTRSWnYxZ29Ua3ppcmJuQ05BeXlJ?=
 =?utf-8?B?SlJrUEZPT2YwS3d6bVBzSEZkQzl1ekdmMmcvVXRuNmZZMCtPbzZtNHRmenh0?=
 =?utf-8?B?dlVpQmVrVmI1S1gxN2NKbktpditFQWlob0p4aHJlaDlCTmJmNTd5c2EwWEx6?=
 =?utf-8?B?dnZ1Zi9sT081Rk1WeUZSWTNYbVA2V0xRMFNMa294RjYzNENYZS9Zd05Ya0Fx?=
 =?utf-8?B?c2FGUFVQTHFtNnRwYk5KWVFCd1FrcEJwZGU0QkRzSjd2VHRNQkhRbFZ1cTZS?=
 =?utf-8?B?WWhHVW9EaFVKb001Q2tzdS9kQnF4ZngzUzQzb3hZSVZ1ZWhtVURTNnJIRTEy?=
 =?utf-8?B?N04vcU9SbkE5VEdEQjB5N0hhbm1ZTDdjQ0ZXZG5Ecmo2bEtCQkFLaEx5Y09u?=
 =?utf-8?B?L3R2Zjh0NjZuZ3RZSC9aYnltN1ZIbkN0bU04c2s0cFhUMUZkcWR3RnRaclk1?=
 =?utf-8?B?TDBzVVdTNEF3bmxiWUNyczZsUUpmdTFHUUpXd0tTNWJpaVNWOGRzcmJyejR3?=
 =?utf-8?B?MnRHNmhFOS9aM3NjUTlQaldJWkx1eXFpM0ZGbitLclhZZDh4b0lmOUp6S09q?=
 =?utf-8?B?eCtyRXBML2k2NnY2Q0dQaXFtaFN2cC9XUFQ0ZlF6YWRsVnQwMGJTa3pNRVpm?=
 =?utf-8?B?K3hUTzFHNkI4Y2pQSFpVK21ZMkllSEVFWEg4NW5XaEdPNGRtTWNVMFlFZXI2?=
 =?utf-8?B?ZjJwYTJ4bWtlOTlMOUI2bGQrT0crTmdRbm8xczhlZ1pGT1BRaVNheUZrNXNs?=
 =?utf-8?B?VnFSeDZwUjlZTUpyeDc2NElTY0U3bTVmSjZENWg3MS91T0h4T2IraFRFZjA5?=
 =?utf-8?B?ZjNBU2hwTzljV2dvM25SVHJlWjczdElkbnV6ZVVJY294ck1weittRzNCeUly?=
 =?utf-8?B?dGhmNmFXUjZ1SWM1UUUvZlltTW9maUhEWXVyZUo3NzBycFlyanZIVWpSS3Z2?=
 =?utf-8?B?L1FiT3pTRXpiaGJTZDNSUXdYVytPZEpXaHlCTUFuQ05jVytkbzBLdHQ3dEwr?=
 =?utf-8?B?Uzl6YWJ3UmVRcGVscHNXUTRCWHV2MG51MEY4NUtCeE82bTFGTUNuamRXNFlw?=
 =?utf-8?B?REswcTFSRzlycEFHNW9xSVNCRzFzdXd1QjRGTFA2V3pVVXdnU251Sk96d2Jm?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d581161a-3aea-4aa8-300f-08dd8c85bb4f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 10:06:55.8815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Tkg0eVz+03xiF7C2Uno4mPrSbRX/8yuw+zw9cEICanKtG7/b9oddBnB0zLPTpEn+4VCeniyRo4mBqrc68dNCaJ7jYT6mTDcw1nWwoZDQAg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8170
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
> Check the BW requirement of a selected compressed bpp against the total
> MST link BW early. This didn't cause a problem, since all the BW limits
> within the MST topology are checked during the later MST topology BW
> check. However it doesn't make sense to defer the total link BW check,
> since for resolving a BW limit issue due to this later also (a) requires
> selecting a pipe to reduce the bpp for, ending up reducing the bpp for
Perhaps rephrase:

requires selecting a pipe to reduce its bpp..

In any case, change looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> another pipe, which is not ideal (b) requires recomputing the state for
> all CRTC/stream's in the topology which may slow down the commit
> considerably (especially when using fractional bpps).
>
> Based on the above, check a stream bpp's BW requirement against the MST
> link's total BW early.
>
> Ideally drm_dp_atomic_find_time_slots() should check internally the
> corresponding PBN/TU slot BW against the total link BW, returning an
> error if the check fails, however that change would also affect other
> drivers, so leaving this for a follow-up.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 59afb550cd0cc..77acac8963e27 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -412,6 +412,10 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>   			slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst.mgr,
>   							      connector->mst.port,
>   							      dfixed_trunc(pbn));
> +
> +			/* TODO: Check this already in drm_dp_atomic_find_time_slots(). */
> +			if (slots > mst_state->total_avail_slots)
> +				slots = -EINVAL;
>   		} else {
>   			/* Same as above for remote_tu */
>   			crtc_state->dp_m_n.tu = ALIGN(crtc_state->dp_m_n.tu,
