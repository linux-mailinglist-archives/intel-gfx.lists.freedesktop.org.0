Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B267B8924F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 12:49:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA47610E98E;
	Fri, 19 Sep 2025 10:49:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RzhhQBvz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A70710E98B;
 Fri, 19 Sep 2025 10:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758278987; x=1789814987;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PkHgaSIzTEwLykANEZbd0VFSNnDMnSnFbpDfiEcIPUo=;
 b=RzhhQBvzt//kpdiSD4iQiBaROLU4dq/DvrdgPMbf7PD6kenTxfLyMWsz
 HlJ1I+0/nT3rweEfCJH4ZGIoSL9rzsodu/sbl78vfuI8P4Eye6HptIhRS
 g3any2wOyc4uNWqXkg3K5zjJAAOJ/Ctm18cXUGblf+a5JKu0yzDWv6Smk
 4Mn2RNXgd0xXjsAZk64iD7PSfYAHVBdM1V5whW0uAFwG43QsVniN7DKlB
 6+LjRZR34yyPFtgsh2DrZEtBwuHiVk8GzIVneQPO6RuT19A0YqusDNN6K
 85yWihuCcd4qE9U9OKdCztW0B8G0PXJe9UvTRGNx5141y2azDqQ0cn3vd w==;
X-CSE-ConnectionGUID: ljafGu1nQO2vEylFermE+g==
X-CSE-MsgGUID: lrMvSimLT3ehHZHLrSkZ4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="83226262"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="83226262"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 03:49:47 -0700
X-CSE-ConnectionGUID: elTnUnfzQtCDdS+lEzThRA==
X-CSE-MsgGUID: eAOkLgwLQd6iNnlycL1Bdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="176251915"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 03:49:46 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 03:49:45 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 19 Sep 2025 03:49:45 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.42) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 03:49:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lZzFBapMwf/jGPoI+TRTXHU4wdgUnQ54KPsxc6kwLMCju7/A2xNqZMCVvk6aF320TBbnY4wZIQ9QfUZIaZQdcu5hExfpz8DWYU/PVU/u4wDiK05KSPlZW4LehQYMaJ/bLIjAA70lBJPw9FCRE09KPNv94mlcTUaVm/Pn2Rzb4LUr9IZmEG10qzK+GeF/gfWkjN08vN2sCC4AeT6j/4P6AwhKb3vhlr6wCH1DPCUi1ZKsIREbPsxjnnV87udNUNsk3NiozJoGhVktoxUF6uZtmR/B29Uw6lnL8RRUCC+AhoeRbtaArbJ9Gc6qr2IjOfsfzOTL5CThxgVFDXtek2BjUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vXgNb3QgsBDMqflVihrD8cXBhShrnFQpW7f8linvp/k=;
 b=Wh0nm50g/6zll7AkRpq431e8nlbV3xX4+6snpjsdwEK6TFrix7Zj6AfHpsd/0jJnUZhMNz3Z5lvM14iT50crbIDliNk2jMgqJuj98bBkKfZha7pRHzvyFnfd+vRC5M0lcETTr46be5LNpivTlnH92RwRJ/qFvEu8PiwCbc8gJRKn7enTNr5IdCMr3Piv+jLpJhLeQIUPO1RP8dn/+PtmtZbnonSoWwLobqw6lKmURhwd9Ky/OQXdFlrxxDYBzlEtqYMVkdT7naCiZPB7XUdNbo9SeA9snFuQu3IhBIkmh+IRu0+rPXN3hI2NqtsesR+gSIiwHQx09/IEhTg5Sm/s+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7923.namprd11.prod.outlook.com (2603:10b6:930:7e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Fri, 19 Sep
 2025 10:49:42 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9137.015; Fri, 19 Sep 2025
 10:49:42 +0000
Message-ID: <42aa2eb8-5295-4e9b-a587-b30449b5321c@intel.com>
Date: Fri, 19 Sep 2025 16:19:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/vrr:
 s/intel_vrr_flipline_offset/intel_vrr_vmin_flipline_offset/
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250918232226.25295-1-ville.syrjala@linux.intel.com>
 <20250918232226.25295-3-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250918232226.25295-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0006.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7923:EE_
X-MS-Office365-Filtering-Correlation-Id: e0fa869e-da5c-4718-63ff-08ddf76a3d28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZE9NcVhXQTlSZ3dFSVZFL2cweGdIdlpRanNBWDIzWW90Tkg2MHFtcjM2UGts?=
 =?utf-8?B?R0ExcVpQelZ2ZjRHY1BueHRXbmMrMVpKdVBsUjR6QTdtaHpWNXgyeFAzMUFP?=
 =?utf-8?B?VmxMOEl0L1AydXYzNFRRUU5wZHMvY1F4MlZIUTR5a1J6ZGhsRGErc1NzcE50?=
 =?utf-8?B?bnlpb3ZDSWROcjI1cWlHa2J5VGdtTEtlaWdtd0pSampqR0pYU2F4Z2RyTTBQ?=
 =?utf-8?B?K0tCYWFrQ3BsK1JZblJJZGdtZVpsL1FJUW1jM1cxQUpxZUFXMGw1bGRzQVB6?=
 =?utf-8?B?SHkzcGNUSEFCclBwSFFmQjRTRGxFMnlYS1AxV3Q0R3o5bjI3R3k0Z0ZHaFZE?=
 =?utf-8?B?UHFXSHNiUGpLU3NGZ21KMGNhbnZLVHd0Q09xNnpZV2JGQ0k1bEJ1RGVtNXhp?=
 =?utf-8?B?UFBFb0VRTjVuZDA4eEkwcjAvS2V0azJ0WGxWQ3hETmQrRkdXaDFwd1drZlhF?=
 =?utf-8?B?cUFDUzVFb01ISE10WjFDMVRvc0xPUGt1MFQ0Qjd2YUhVMm5FVXovaytRNktE?=
 =?utf-8?B?WjkwMExFblFwZ1VWZmFDNnEvUURtLzVhY0xWSkU1VU44OFNhU09veVdoakFq?=
 =?utf-8?B?NTM0U2d1VTUzNG8wQXRqRlc5blJkNTVCNHVvOC9iVXkrQmZHZ3dxU29PSXVX?=
 =?utf-8?B?dEVsQ3ZjZldiVlR1aXpaWG8vb2xNSmVaaWt0VzU0cnBtUXhhNHhJVkxFMUVj?=
 =?utf-8?B?RHhvb0ZQZ1NaWjdvaFViL1NEd3YzcTExOEQ1YzVqUXNHendCSjFSTnhpd29z?=
 =?utf-8?B?ekRWQ2liK0VXWndwUDE2TS9mVWV5Mk9rYkFUUEtlZzQwN1Y2UGtERHlycWRV?=
 =?utf-8?B?QzVXL0NKTEtrN2QvUm5JUnpNajE1N1c2Syt2ZFdIMElUVjloMmZ6dFFFWVA4?=
 =?utf-8?B?ZkI2emVkMnJMV1AyMGRCeE9sMjQvVlpzTmpHeGdNTzR5ZFZqSkluOUtScUxT?=
 =?utf-8?B?dGxnbEhUL2NWZDFtMEVicjByVUx3cmlieGxIS1NPUEdxU3ZDeFlXVGp3SUhN?=
 =?utf-8?B?bC9VaDkyUVRGSDlUellDTk0vZG5pZzcvRTYrdHIzdWtyVE5PNDAxdkFNd0pm?=
 =?utf-8?B?bThpRGVQRGZKa2N5S1U2UTdhV1dEb0VNSUd4dTFQZHpKOWdET0JERUVuZEtk?=
 =?utf-8?B?Y2JUejAydGxTYkgwNEQ4bHBXdlkwVzVaUmNqNlg1S0FDTWhIMERSbWpZOHEx?=
 =?utf-8?B?YjQrdmIvbUs0QzlVSnpQQlFSc1U2VGlPNlZJbTYvTG50a05ucXM5dlhnbEpi?=
 =?utf-8?B?eGNOWGFSQjFnUVFLTytZdGZTS0l3NlRjc1BWS1hyWm9zendyUnRtQ0RnNWpt?=
 =?utf-8?B?UFh1M1FaQUs2ZXNONWxhbWtLbFhpUVNFcnVOUElxS0s4Z0VnckI0ZUxTZDFD?=
 =?utf-8?B?SkxsRVhCRGFuUWlMazBDdGZDUVpMZkFORk9jNHdKNENRRmxibkVYS3hyNFJL?=
 =?utf-8?B?Znp0NWhRVHpld1dCdis4a0t1SGIxNFBRVUV4TDB2S041UUtqMmtwUTVGN0xo?=
 =?utf-8?B?dmZNay9CWlZ5NC8reFRORVpWbHMzZWFXa3p4a3licWdraU1iUG9xaTRIditV?=
 =?utf-8?B?WWtONVJhMUs2TjhxTWg5QzNZV01oVTRPTmFRUmNTN1JYVzNmTUJHTDArS0Jp?=
 =?utf-8?B?M3Jla3NyMWZxU3lrM3h0WmVYV3V6RWY2YmhSV2pnWWM1c3Z0NkNLN2hJenha?=
 =?utf-8?B?ZC9CQ0FHNUZZcGVUZDJ2emtkQnBkTW9UOURabVN0YzFhTmlYZFJvK25lRW5i?=
 =?utf-8?B?dmRnTEEvRm9CQ1FhYVc3eUVUQmZkV201ZGJ6RkJuVTJSZnpPRzZQK3grSVoy?=
 =?utf-8?B?VWdwMHRhb2Y1ZCtIa1g0U2l0NjNJd1JnWGdncEt5OWR5VEVLSEUydFM0ZjZp?=
 =?utf-8?B?Z09zSm1wZ1dlK2x2YXJ2Nk92ZVJBVHVYZ3c3QTZBMGVRbnpWWUptSlo3SGh6?=
 =?utf-8?Q?oTpvaNsIg48=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEJEbVA2dVpxTVhmSlczUXZ5YWllMnlmTVREOFQ2clc3MjExUGc0Q2VmVlVB?=
 =?utf-8?B?dzVxeHF4RWQ5cFRESWljU3ExVmVxLzM2YjFNWGRlT1JkRTlRWWZiS0Z3U1dl?=
 =?utf-8?B?RXF4ZDlJYjlia0ZXWVhZZUljZ1drOXQ4RElTSzFwOXNROHdKNmZQVWJQV2x5?=
 =?utf-8?B?ZEJZZU1wbHFCZFV2c3djOFZ5R0Fzbys5WHd1S0xIL21EdmV5eTR1cTBEeGRK?=
 =?utf-8?B?c3lJYWFYQktKTWR6UUlLdHJRTjJpTWJZWGVXYUtxdEh6NUU4RnI1S0ova0hu?=
 =?utf-8?B?b1NXck5NWXVPWStOeGZZdE84ZkViL0tSMGg4amEyNG5aK0xFTE9WOFkyWVI5?=
 =?utf-8?B?M08rRytOdVc2dGh3WEpMUGg1OVZhTzN0bWs3YnJnODV0YTBCUFNuNzhlaHl5?=
 =?utf-8?B?LzcrYnNxbnhKNjJrdG13NjViWHZobjQ3U0pqTmlJZ3FCQ21EN2xvV3U0ZitS?=
 =?utf-8?B?RUR6SVBHV2lvUGJIY2Y3Ylk4ZUZ0ZC9ncXB3TkFVT05qdlF3Wkh2dnNWL0p1?=
 =?utf-8?B?YWpOMGQ1NFlpb21oa2dWZTBaN3oxTVBnZldWTmFINHJwbUY1b0JMV1Z5THRW?=
 =?utf-8?B?d3pMZFJIRDZMdU50akJxU1ZDNGxnVmJ3ZzE0TTU0THV0aWZzNHpJZFpFYk1i?=
 =?utf-8?B?eHBQbU5RZS9KM0RrUTV5TnlDeFhxT0NjM1dFMTdFL1pMa0dTd3l0MFg3N2c4?=
 =?utf-8?B?SDRLNEpZaHVIRVNUaXdBYXF3VTIyS1BaNHpnWnJpY3FKVVVrWUhMQ0hyQ0tM?=
 =?utf-8?B?WlY4Z2Fqb2NxWW1xVHlqMG5UOE1acFQvK1lZNE5KbTBCdG9CbC9qQi9SR05k?=
 =?utf-8?B?YkUxVmkrMXhmclFPZU1iUVA3aDkrNkZJNnFCbCtleHNkdVN0TkR4NkNURXNm?=
 =?utf-8?B?MWJHSVJHV0d6RHdHc2NudlVUTHRIc0YyWGYyK1JIcnp5SWkxeG9nQ1NPMW5v?=
 =?utf-8?B?UEN5Q1h1cWhWZXZZTGE0RWM0dnBVUURqSHA0Z0hEZm5oMFRYckZYNnZQYWtU?=
 =?utf-8?B?d3k0emw1RkpNUGNVdW1kejA1c2gvci9DTXE3cWZOVy83WmRCYzBlR01WZjEy?=
 =?utf-8?B?elhZazQ0dXd0Z1cxKzFLMEpCUjBiZFc2RGlyaUJ3ZTZXVFhGWlNTcWhvY1BY?=
 =?utf-8?B?ZEtWQW8yKzRMMFhQbGM1WDMwK3ExL05ENW5oeUpOY3llN2VwM2lIN2srSm04?=
 =?utf-8?B?Um1WeTRqRm5jSW1nVXZNNmxjYUJEQVhMSjhoVWtZR3FEVWhIdnVEdjNkT2wv?=
 =?utf-8?B?K1U1WnlBZDBsa2VGSGkxOU1OUWlKWjVVQ0xXRHNZQ0sxNjNrL0VWU2g1STVu?=
 =?utf-8?B?TWZPdnRORFNBSHVQZXBwOGZ1eVZOR3FZeStHREpQVDQrbFVuUzJrcFlBeDZk?=
 =?utf-8?B?V0xzOWwwY2pEd3dRSnR2c05rVHQzcENzL0Z0a0pvNkJXem14YW1INHRwd2ZR?=
 =?utf-8?B?V0RSR1ZDcEpzaXBJd2x4ckxSVGQzYmxtcVJ4NzFRWlUrTFBqNFpsOXhHa0I4?=
 =?utf-8?B?WklnRTY5MG9SVE8wUXVWMFZNSXhFSk5DbWpXK3IrbTZGa0l6K1ZOQUpPRTFE?=
 =?utf-8?B?ZUdibFA3TE82UGx3WVZnaUNMTEVXME5qNXZRVVkzRXFyKzBtTUVyc2lPdG40?=
 =?utf-8?B?R2UxWDBuRGZqajNuMWhMcy9KNXJ1VUYxSmFFejJjczJXSSt6cW9TQ0JhVG1W?=
 =?utf-8?B?WkZEQmxNcjhBbzUxVXprcmE4dk9xYTVlS2F3U3hlc0RnMmpzQVFmODVxOCtq?=
 =?utf-8?B?MW0wTmNTY1cyQytkR1dlZHZMdHpkYlBVaHdJYmRMVDJBRnh2ZzBUZ0JKQkYy?=
 =?utf-8?B?OHdoWVhEWkdGd0ZmYmV2aEh5WFpUMFV4M2o3d0srcHhCbzU3WDdZWERWTUJz?=
 =?utf-8?B?ckIvMjZ3d2pHRFdiZEsyeFRpT0VKZnp4RFFOMmpxTUJ5dG84SjdQNEllRUNQ?=
 =?utf-8?B?dWw5MUVMYVBjNGdXUDUwSVc5Unlrc2c1OWhmZDR5UDcwaFlvQWNCNFpKRVor?=
 =?utf-8?B?L21iUXRSZVlHS3RWR3ZhMlJ6azI2blF0MytXVmZ2ZWRWWDBoOHRRSWtVaWx1?=
 =?utf-8?B?QjI0UVZkdW1oajNzeGJkb2Jld2VRRlZlcG81anJRWkdQQWltSXhsaVJ0d0E5?=
 =?utf-8?B?QURKZVo4T2ZadHN1NDczb2REU0R4LzJmYjlmeTFEcXYydmVXMUlvcFFFZEZj?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e0fa869e-da5c-4718-63ff-08ddf76a3d28
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2025 10:49:42.4177 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J3l5y4XDald6PycUclVI81VC4KlEy+DOjzIGq/AK36sOmrL5uy4nWHKSQkOfIdOv/p3VCDwuXvTQvAerPCNfMvl+OGNsLp9Rc5HN08gbg9A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7923
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


On 9/19/2025 4:52 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Rename intel_vrr_flipline_offset() to intel_vrr_vmin_flipline_offset()
> to better reflect the fact that it gives us the minimum offset allowed
> between vmin and flipline.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index e725b4581e81..9e007aab1452 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -106,7 +106,7 @@ int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
>   		intel_vrr_extra_vblank_delay(display);
>   }
>   
> -static int intel_vrr_flipline_offset(struct intel_display *display)
> +static int intel_vrr_vmin_flipline_offset(struct intel_display *display)
>   {
>   	/*
>   	 * ICL/TGL hardware imposes flipline>=vmin+1
> @@ -288,7 +288,7 @@ int intel_vrr_fixed_rr_hw_vmin(const struct intel_crtc_state *crtc_state)
>   	struct intel_display *display = to_intel_display(crtc_state);
>   
>   	return intel_vrr_fixed_rr_hw_vtotal(crtc_state) -
> -		intel_vrr_flipline_offset(display);
> +		intel_vrr_vmin_flipline_offset(display);
>   }
>   
>   static
> @@ -599,7 +599,7 @@ static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
>   	struct intel_display *display = to_intel_display(crtc_state);
>   
>   	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.vmin) -
> -		intel_vrr_flipline_offset(display);
> +		intel_vrr_vmin_flipline_offset(display);
>   }
>   
>   static int intel_vrr_hw_vmax(const struct intel_crtc_state *crtc_state)
> @@ -765,7 +765,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   			crtc_state->vrr.vmax += intel_vrr_real_vblank_delay(crtc_state);
>   			crtc_state->vrr.vmin += intel_vrr_real_vblank_delay(crtc_state);
>   
> -			crtc_state->vrr.vmin += intel_vrr_flipline_offset(display);
> +			crtc_state->vrr.vmin += intel_vrr_vmin_flipline_offset(display);
>   		}
>   
>   		/*
