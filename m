Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OASCDxnCs2mEagAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 08:51:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 783A227EFD9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 08:51:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AB9D10E03B;
	Fri, 13 Mar 2026 07:51:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hkk3s/xg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0454C10E03B;
 Fri, 13 Mar 2026 07:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773388310; x=1804924310;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=OKVt9Sj4MLHT+F3tmaQMH5tUmk0tB7YiARfhAvcaIPQ=;
 b=Hkk3s/xglVgYg/XEU00pyGuI60SZywxnoZFBhmdcoAOuws7a3k/YfNeJ
 j0Hfs+l5cg2sfIf8WlbVSzgcApt6QWHP8TmwXzMPx7l8EMA+fkzCKMR5f
 CDiskMHG7V5/KznK9IkhlHKnQ5c93DdubdbR481yWcSJfFNuy3FGuH6QU
 KTjQBlH8zPk/SERO0jtSZJXN2J2QKVvM1kShNbKmMiqCR9Spqvf2ftTuL
 xCGrEf9jUbSpdCkvtlBYUshfw5igdlMFFLPehGqjhJlWzg7Lc2o7yoaNT
 KbwH6uHLAcOqzaeLcfAo18BLPHf7ORWkna/vtVpd0H+yxzPqqYwx5FLN3 w==;
X-CSE-ConnectionGUID: MWfPCm1SQ3Gr5h7jW+aR0Q==
X-CSE-MsgGUID: 86+c0kjOQA6QE1ArG29yCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="74573992"
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="74573992"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 00:51:48 -0700
X-CSE-ConnectionGUID: 06ypQGUhRoquvCLQc42e5g==
X-CSE-MsgGUID: YGsXmz0/SOWuL+2s0kYBRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="221152561"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 00:51:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 00:51:47 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 13 Mar 2026 00:51:47 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.56) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 00:51:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NGLoRZEkpV796m6E+OjwznunT53IFl14Ou6yp+aMVM+eNuGqAuqBPJbgEFT+mvSU1P0AiHR42q6p9+AT03gurXBAawgRrc4rnRG8Xes5Uf7lO3CLqlytGNzi/qhgBGvEqEJO8kj1MrlzXtDbTKvonSDUlplIiETmb9e4jC0Kg2kT2w+AZ70foaY26Msjp4bw/UKRoI/Ui5V8jpY/HUvfqQr0mKTuDX2yioon5IB/8mfI/z6oGVS+8jcn0j+L55YejIWX+eYBwz4bG9rpYbQio16pA8kLzGnib/FN4gzzXLDUNfNpq8CcoNoWUyuQJmEIiHi/0ROVhAe1ELTmn2B4Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZSFQf1DGV1lhAJ4Ws/W0vzlaHUTd9TLUYqxPEsEgtKM=;
 b=Q1t8aWV0iynisxLjMEA2aBX4HaguDwxw1WWE3pzUfpQ1uLOGrZ3t7y/pbyH2dklARR1HgwiItFyBnulPtazYXABjhiI2xCv0W9NTmE+BpxIOtfsYasu77UhPmXGCDD6ZhnFlHtlK2Mjzd6KuTyQ1W6aCFS3VUItj8FtskWoMeLCrMiJRVXXYDAzdvjln+cBqF9w61HPbCQ0hSfE4c65GDhKwMJSgNI4la3BjVueeJqtvKcIaKA190uQrcNEP4ul3Iw1XRwczzXmvXbw2v1Ka6OSU+rkLIIQkJywmJrlnm4xh9q1ZQCflQMZtZMsAfAg4THTVB1FRdF/dw7kGSvY9ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB7832.namprd11.prod.outlook.com (2603:10b6:8:f5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.6; Fri, 13 Mar
 2026 07:51:37 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9723.000; Fri, 13 Mar 2026
 07:51:37 +0000
Date: Fri, 13 Mar 2026 09:51:29 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Nikula, 
 Jani" <jani.nikula@intel.com>, "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: Re: [PATCH v7 0/3] Panel Replay BW optimization
Message-ID: <abPCARYnIAdJHuxf@ideak-desk.lan>
References: <20260312050035.3493690-1-animesh.manna@intel.com>
 <07a6b5ed17b3781aa6f769d92b8409d3519c21ea.camel@intel.com>
 <abLZS_Xn2mnKAgLq@ideak-desk.lan>
 <34d06e837ea473c4f1a6456ae2da55c97e58fc67.camel@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <34d06e837ea473c4f1a6456ae2da55c97e58fc67.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DBB2.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::6e9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB7832:EE_
X-MS-Office365-Filtering-Correlation-Id: 13ac6f3e-5622-4adc-44a3-08de80d55ae5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: ME8KTr3oKEtDJAExpC1g3hvq1kMD7/v3JPGtk0Vnky4rnxiaDp5Yz8io6ZJTDreXlsRoe+nLyjwT7VIJg4/XORXs70HnoDGNEQeZbp/sKQF3LNN1BJ2wNCIAAubXJwkq38+WO53bETZ1p3LmXFCMmSfTMuEfvrH8PGkMxS9isXUz2VtDFvrWk7+BaGb0wAHpCghdJqYg5NYAdwVBL7cQzcpsCCt8EKp1ZhaB4Jsiwitt1cOZY8iQTq82hiUOvLTmh7ay5VAwrMxYi2I4+/G1Dgv7iHjr0vGwlAO+aIn/O8XstBpJOLQecuKPnhD2IduuHACpzuzyYQLbTJT2hI6HoM/hJNLYlNFkxBBNWOvDdAMlDSrukZOAqZkBGM125F15TFdB0u6CkjMlfhNervoszlFNe8zvZW2IjV5SVLnKRrZMAfnzJOtEy1E9T61de+jTJ239eheTybgVNIHwvkJMrQZnAewWq6A2S70tbdAZyMfg5a/DqodRaf8ZJS6mTaFU3KxBvj9S27WXhXZ3UCLNttL0iBWTywwcx9efXah5Lg15Q+DX+9fZqxGkXSZeeuHYUlN7NthACpFcwCcD4Mk7fjsStttiadKboQBXifgy4KExn0+Xf7vkjTttz6c+gNjFcjx+w95crmGPsSsiDYkHNtJq5tB1kqlt3ZTWv6ZOJ9sZfucOEHmPJeKRp5fGa+a67nbwOfw0eJFfqXML9xLqUqXzlxPJNfo6+2/FuSUgOb8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R0lRTFY3TnBNRXRuNTJBQ3dCNWo2YVdiallWSlprUkIvNS84b3pwOHNPNG9Q?=
 =?utf-8?B?WU02Uld3a0M4U3lNY2FoUnFnUkhyNFJ3K0tXTm5QK0JDUjlaNGYyVmxKNXNT?=
 =?utf-8?B?RmdNTVBLbUU1QW5tSWFhNkRoL1BQZDM5SnprRVVpdmFZUVVzOHIxUHJMb0ps?=
 =?utf-8?B?UlE1eUtIVFJpVUp1U0hHSVNjNmNvUzNlMnQxeXJGbFhaZGcwOGJWVmE5czVI?=
 =?utf-8?B?SzdzSlAzK2lIck1OenQxenZiSm1hR1czNjFQTThuMGxpUFlGK2M5S2ZpUm9U?=
 =?utf-8?B?SnlpMDZ4L2l1aVZ6KzFYMC85REN1dnhJVVl4TzhERGVwazJKeHZqU3NTaUxu?=
 =?utf-8?B?NVliZnpXaFFKd1U0TDViRUZQRktIZXFkWGdLQjlBWUFqQm5ha1lkZENuMEdz?=
 =?utf-8?B?WVN0QnJibGlaaTRKa1MwVVBWMWtUWEJLT3hFK2dUUmZtSU9pdnoxc1kwb1dE?=
 =?utf-8?B?d3BIWHZ2RmpqZDA0R1h1ZUx5U2w5SDNjMjc0cjExek9Dd2ZSSzdJcjRlZ3B2?=
 =?utf-8?B?aEhSMDBFelBlMWh1anNPS0dmRnRlUHhCN2lGTGFycTkwZkJNelBIKzd0eWxO?=
 =?utf-8?B?YmUzejcza29kbXZHRCttbzU2b2hFbkszYVRhcFp1RlJ1N2hOb2wxeDlMV2tn?=
 =?utf-8?B?NWtsNGtRRHlaaTE0bit6VkUvSTFHVGxzZTZ1SXFCSGt0c01QNlRaRTUxcDlr?=
 =?utf-8?B?UXFJZ0dBdHljelUyQlVYblgzdEEwQkdUOHVSSjRIemNxd3hKc2owYkRtaFl1?=
 =?utf-8?B?YldNL2gxVGN6djBMZzJvN21kQlpvNWlyMjlDVXpwcllzL0s0RXplZmpkcno3?=
 =?utf-8?B?ZW9tQlFXOFIyV2hyUDNtMTQwbHZNV1haTDhhcVBoRGx4ck5OY3hyQ3EycmIz?=
 =?utf-8?B?ZlVHNjgxeU85OUJ5YlJzcmw1dThNa0ZNYlhzakxPN3YvWDg4TlIraDdsZkNu?=
 =?utf-8?B?elhLRTFHZHRUeTNGUnpHd1dTVldVdHE5NWsxbDZsNXlBeEVrNE13SjBSVEE5?=
 =?utf-8?B?WmdaeW85YXdiRkNOOTUrNGZhdnpZTGVxNXVqc0lIQ3lyU0RrMzlVZG9qaG1U?=
 =?utf-8?B?dlIyY1lvby9XY0ZoWWxtNEx3dkV6Y2REZ3p5U1JpQk9wRzJCczFTenZIYm5k?=
 =?utf-8?B?bGlydFhMSjh6V0pJOHBpWkFKTlZNV25VYkZacEpGRlgySGFaZWFscTUrMmFp?=
 =?utf-8?B?VzI3ckp0ekRrTkNOZEtSa0dJd2VUci9LSFNYcitrVkRPbU9xOTcwV0FjZTh4?=
 =?utf-8?B?QTlOR0hINSt6a1RlVjM4Sm9pMU1KSm1Qei9LWnJSYjZHSDcrV3RsMHBLeFdU?=
 =?utf-8?B?WmFMV0h3eGM2eSt2VUI0TWlVSXJITk90MHBWRTVtaGZ3U1JZdW1CN2lENGkz?=
 =?utf-8?B?aWdMUWVhVVRyZnRudWlNa0gxcWpoOXdnRFl1RVJXWVFYclBVRFFFT09BY3NS?=
 =?utf-8?B?cTNjcjg1QXcwbnJleWxDcW1ONnJUL3JIME40VjRSZVhCY0tqd2twTEs2ZkVY?=
 =?utf-8?B?YVU5clBlMVpjRDluWkhlMDBwRXovOS9TeTRxKy92T2NmVmtNNEVnbi83U3Np?=
 =?utf-8?B?WDVhM2xsMnZMUTdBN1FYekdEMC9GYVhZTmhJclBCdmpDa0FHM1dmaUl0b0E2?=
 =?utf-8?B?WWRZbnB1QW1RTU9xdndDeWJYNjdvdWhLUVBhK3ozUWdHSGFSMXJKbG93VGQ4?=
 =?utf-8?B?Nm5ielVKcTBMZmp3cktPZDNBZmFkN3BaelBleUdhVHpNTmNBeG50WU5XcUNu?=
 =?utf-8?B?OHJ5WXJWMUlQZmpDQzc2ZTZBQXJYVTRFVVRiNndhVEZjYThSMTVsQTFNdVRn?=
 =?utf-8?B?WWgvUFZjRkV1OG9iYW1mei9aTEF4MnEvRDY3WTVQOEZBUzlJcEZQclByL2Ur?=
 =?utf-8?B?aUJFbUVuZUZiaGVTaGtvNmROVXFNZWV2KzQ2T21jbFhlVUl4WXJ5VnEyRFE2?=
 =?utf-8?B?T3NlUXl5RUsrZ08xaWFKejAyT1ZQWHpkTXBGREE3Y2JUNmQwOXlaSUI5eTJv?=
 =?utf-8?B?V0RldlFNTW1XVFJNUjZybDFCUUI1cXJSZXhzOGF3LzVPVHkxOFpRbmwvR0x2?=
 =?utf-8?B?cDBJTHNsN2U0WThadFRURzRwbzRlQ085UjVIMHAwdGpKa3ZKWXo1YnNVdGdC?=
 =?utf-8?B?MkxWMTcyVzJhL1laZzFJYk80QlozRWUrUjhBUFU3bCs5VlFlL0lGdnoveWRh?=
 =?utf-8?B?eWRpMG9uclIxbFAwejhTSHlSUFBZcGV1TGVGZ0ZybjZMakpnakk1c2gxQnEz?=
 =?utf-8?B?aXZBKzNkTS9YeEk5NjFmM3VFY2ZIUGVsYk95aEZOaWZqOWIweUYyWEk4WGd3?=
 =?utf-8?B?dXBTc29xZ0NyYlhTV3VDZnlOY2hXb0R1ZEg2SEhDTkY0c3BldXF3Zz09?=
X-Exchange-RoutingPolicyChecked: wgeselXtlMGEIlsNE2SgrtTYY6/hp3NbNxtmOtoIbC20O7m/P+9LC35jtHc+qyLRmGxfSM3C7pSH88gWGIYhzy3bVzQWr+NSupbGClFkIPRbGBXA+WBUNJwK1HLZ946N9beNQnaBnLBM78YoDcUWvWHmmvErK7emjjWFb/tqTDEdEgJqZ/TP8z6cPvmammt1Kwl0w2LqBBx1qtfeUxdekUhmyPa6vwe5OGMwkg2MHDvCbp8viB5idNvWGHbzbQkzHk53AiBokRGCcSapLMBvcfngZ9p/9hliS1M9h0fH5sAm8HAnmdUS/Ri/1jDfC39GQGTKqGT65k+wHJmfaWdz0w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 13ac6f3e-5622-4adc-44a3-08de80d55ae5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 07:51:37.6891 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UpBsNafbg5Dc0mJvOg9ZDRPMZy7RCDbsUCHlcb2FRj2Lm7HN8ic6KAi3L5gGHCzSNvEffkKYxqJeIas2zDti8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7832
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:replyto,ideak-desk.lan:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.891];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 783A227EFD9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 07:20:24AM +0200, Hogander, Jouni wrote:
> On Thu, 2026-03-12 at 17:18 +0200, Imre Deak wrote:
> > On Thu, Mar 12, 2026 at 10:05:35AM +0200, Hogander, Jouni wrote:
> > > On Thu, 2026-03-12 at 10:30 +0530, Animesh Manna wrote:
> > > > Unused bandwidth can be used by external display agents for Panel
> > > > Replay
> > > > enabled DP panel during idleness with link on. This patch series
> > > > enabling the same.
> > > 
> > > Generic comment on this patch set. Maybe we should add one more
> > > patch
> > > with "Fixes" tag:
> > > 
> > > Fixes: e60cff453b82 ("drm/i915/dp: Enable DP tunnel BW allocation
> > > mode")
> > > Cc: Imre Deak <imre.deak@intel.com>
> > > Cc: <stable@vger.kernel.org> # v6.9+
> > 
> > Why? As I understand the Panel Replay BW optimization on a DP
> > tunneled
> > link is an _optional_ feature, whereby the free BW can be used by the
> > Thunderbolt protocol for other purposes than for the given display
> > stream for which Panel Replay is enabled. IOW, it looks to me a valid
> > configuration to enable Panel Replay on a DP tunneled link without
> > enabling the Panel Replay BW optimization on it.
> 
> My original comment was about DP spec:
> 
> "
> The DP Source device may optionally enable PR optimization with DP
> tunneling. The device
> shall query the Tunneling Bridge’s PR tunneling optimization capability
> by way of the
> Panel_Replay_Tunneling_Optimization_Support bit in the
> DP_TUNNELING_CAPABILITIES
> register (DPCD E000Dh[6]), and then enable PR only when the Tunneling
> Bridge is capable.
> "
> 
> That sounds like PR can be enabled only when Panel Replay Tunneling
> Optimization is supported?

The Standard refers to the _optimization_ of the Panel Replay
functionality over a tunnel. This optimization can be either enabled by
the source when enabling the Panel Replay functionality over a tunnel or
the optimization can be left disabled by the source when enabling the
Panel Replay functionality over a tunnel.

The optimization means that the BW of the stream, not otherwise used for
transferring active pixels or other data (i.e. dummy pixels) can be used
by the Thunderbolt protocol to transfer non-display traffic. If the
Panel Replay is enabled over a tunnel without this optimization, then
the Thunderbolt protocol is not allowed to use this BW for other
purposes (i.e. it just transfers all the display traffic it receives
from the source as-is).

> 
> BR,
> Jouni Högander
> 
> > 
> > > This patch would just add:
> > > 
> > > if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp)) {
> > > 	drm_dbg_kms(display->drm,
> > > 		    "Panel Replay is disabled as DP tunneling
> > > enabled\n");
> > > 	return false;
> > > }
> > > 
> > > into _panel_replay_compute_config. this could be first patch in
> > > your
> > > set. What do you think?
> > > 
> > > BR,
> > > Jouni Högander
> > > 
> > > > 
> > > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > > 
> > > > Animesh Manna (3):
> > > >   drm/i915/display: Add drm helper to check pr optimization
> > > > support
> > > >   drm/i915/display: Panel Replay BW optimization for DP2.0
> > > > tunneling
> > > >   drm/i915/display: Disable Panel Replay for DP-tunneling without
> > > >     optimization
> > > > 
> > > >  drivers/gpu/drm/display/drm_dp_tunnel.c       | 17 ++++++++++
> > > >  .../gpu/drm/i915/display/intel_display_regs.h |  1 +
> > > >  .../gpu/drm/i915/display/intel_dp_tunnel.c    | 14 +++++++++
> > > >  .../gpu/drm/i915/display/intel_dp_tunnel.h    |  6 ++++
> > > >  drivers/gpu/drm/i915/display/intel_psr.c      | 31
> > > > +++++++++++++++++--
> > > >  include/drm/display/drm_dp_tunnel.h           |  6 ++++
> > > >  6 files changed, 73 insertions(+), 2 deletions(-)
> > > > 
> > > 
> 
