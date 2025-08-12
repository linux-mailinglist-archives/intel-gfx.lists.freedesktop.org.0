Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C13B23AFE
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 23:48:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21ED910E64F;
	Tue, 12 Aug 2025 21:48:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PLzEXzgD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3113810E115;
 Tue, 12 Aug 2025 21:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755035302; x=1786571302;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Qklmemx63qR+98GIExwFOswHXaxjV68fugL3KIzFYtM=;
 b=PLzEXzgDjgQLOrc+ioCOsmrVyvyahhqlcBZplDe+KwHopTGnD6mhRhJ2
 0kIgvQzQBp6tswbck/A5956PlkuWxYII3iTyUxthvJVX5ya1NnNrzb3Yg
 Gr3YcRJUFB1Gq+zZBl31LoWqYuTHNcD3ASXzbVe/49XCynWMFe31MgdMr
 waHmMBbRODTLHK8gX8txoa2KsUyjiVtUX61WTpU13Vv6syAiSW6Sa3VAg
 DVjV12jhebVCbEhqROjyRoQk+k//OxP0f55BLxG7hYsVXXb8hLOFojTCs
 JkDlyPxitIZxOiRGN8I4zRqDZLow0Lt8YX1eStVdhhcLc2ghYIYdQCHnq A==;
X-CSE-ConnectionGUID: 6XGZ8ptSSwea6BbBYA2dcw==
X-CSE-MsgGUID: xLqQDMrURYiSWEbA8WQ9hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="61124318"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="61124318"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 14:48:22 -0700
X-CSE-ConnectionGUID: AuzYw5NTSXe3b4qMDtRLzg==
X-CSE-MsgGUID: qJpcigA5RPKwptPIfzLVZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="166676817"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 14:48:21 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 14:48:21 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 14:48:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.81) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 14:48:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xxOhPJodlekDtJr65ck7k+ASlSFdkFEnHXAtTq3WMUsiBz71MkyIN54wYPUe5E+tN7vek6KzHM15SDteehOdwQGQEKLkho9Bp9UDZT54b6WMuLVkBOhg/Az3MXcL2glvr9B5Pv5SPJ8zqWsIvf1yQMCmSoWMmDl42nd5FAH5wbml5z1LKpsLWaTo3yRM3aNktThMxIi4L+aD1P/dCHvgHbXnK3ATjeQYO573WH2/bk7S0jXaCjL1P5lxb6+RmRub4i4/A8ezJr0kEq6RKgICbyxFIQjIAHaA/wYe3i0YWmULY4VtdKvntnwkjYpP2aAzmlzXVdpCjnjVUiIHCXJHdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=neuqgbaq3Bx5u1vjVa/psY92wJsM/cLhhIN8ZMtCWSM=;
 b=U30MvZcvQiyJsPQ1JokrH6yrbD9SILv5kSCplvTK01yUHWEwtphzk2kSTFi+ZXED2spzM5zQNi1b9mAhTNGh94z6WS9HnfcQ009bj/ISVvFYWnMxTYCa2LLasLD3aRjNz3gjM7NNBhQZhZBXCjx7awCj4NdPDRH5Z+uNILEk3mPyKEGxroTzY+uyWLrsP19XZyO9sJ6x1ceaY5h59Zf7x9qzML1XtjxkfFtIQJothF/akwWwOP3gSTXF1rtal78kThuGbc6+wpI8x/z9BXNnfS2S/l5yd5v+sUGUWgxTGmJGAAcVxy+QRZNiXUqIP4dZYouQifGQb9KlFimC6zDo5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB5946.namprd11.prod.outlook.com (2603:10b6:806:23a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Tue, 12 Aug
 2025 21:48:19 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8964.023; Tue, 12 Aug 2025
 21:48:19 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250808081931.4101388-1-chaitanya.kumar.borah@intel.com>
References: <20250808081931.4101388-1-chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display: Add power well mapping for WCL
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <imre.deak@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 12 Aug 2025 18:48:16 -0300
Message-ID: <175503529600.1765.14400686976053927953@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0182.namprd04.prod.outlook.com
 (2603:10b6:303:86::7) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB5946:EE_
X-MS-Office365-Filtering-Correlation-Id: 54464a53-803f-4cc3-2085-08ddd9e9f333
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cVhyQk9CWW9FazhBcjVTZ2NKTXYvSi9VSGlJU1ZCZ0k4ditPZWVLalhwMEZl?=
 =?utf-8?B?b2ZHZmpBWUltNy9GbVVRNW9UOVJtQy8wZVV3Mm9RQzBXbll5d05oWXpZb0p0?=
 =?utf-8?B?L1pzdm5kaXdGalFPMFpWU1F5RWJRREZWUUtqMFZwUGZ6OVB4bHJIM043S2xK?=
 =?utf-8?B?UjVCSEJQVkFaV3gvNUUwY1d4MlprdktoNi90SEc4QVJ3ZmZFZkJUNnBmcWY5?=
 =?utf-8?B?SzRQNWNnZTJMMktFcWJLNndNMWprdERUTnVmR05aWEV1UWgyY2VxaXFxT2cz?=
 =?utf-8?B?bTNtUkluTkRpRks1QW02OE9FMHUzVitkWWdtVFZsRzY1QkZTL0NkaC9GaExj?=
 =?utf-8?B?RTZJeU1pWU5yZnh0aUdOZ0NRTUlZNG1KRHRITThWTzA0bC82LzllS3hSUGNT?=
 =?utf-8?B?cEMyOWs4MHJiOE15S1A0bkswRzNrZk10TFpySFdTalJwUjU4UjNkS2dVMS9N?=
 =?utf-8?B?NktYclo3eDZ6dHRwTUpkODJxbGJTaThramI2SElsTGUvU1pRNlhLSElWOTdK?=
 =?utf-8?B?Q3B2MzFrb09maVIxMnVmTnJibDlNYThPcm51R2ZlSkhVWjlmUkpreWNnL0cv?=
 =?utf-8?B?TTQwblY0MzBTUHN0QUFwRHhiSXRlMnFWL3lCM0hwbExVNlpmMFN0cElNcGR1?=
 =?utf-8?B?RE1Nck9aOCsybkllOGtqdUVFY0ZMeUh5YWo0eXVtWDVJeDRYcVN1RkUwZEk4?=
 =?utf-8?B?QkZlWXBneWVZVkRiWTNtR0dKTVZiSzhXeHd5THVia1RmbEJmUWlGTkNVSE9Z?=
 =?utf-8?B?d0JHZ284eHY3WUc4ZStCdkJ3NFZhQktSVStCUGRnNzlQVEhlMEVpWWZFRU9O?=
 =?utf-8?B?L1prd3BKQWRwN1JYbXFQaWFGdE9qMlY5djZOUkw2NVhsZ1VUWEtza2VXUjV3?=
 =?utf-8?B?N0JCQjAzVlNQU3Y5Q0g4WFhwUlhzdnlLU3YzamxmYmZ1UU45dTdoZXQ3RVNx?=
 =?utf-8?B?cXk2YnF6NjV2d1JwU2JibGFtS3E0ZC83SlN0N3gzeVRnelhHUTRQb2FTZE9i?=
 =?utf-8?B?N2huMEp1aWpENk9WOWU3TXFtU3RRNmtKdDRSa0Z2VGpGV2JoZStuK2IrNTB2?=
 =?utf-8?B?MzBFTHRDRGZpS3BVbzlDYnBLZk1WWHlDZFdURWt3Umd2WGswN0tEc2dnVEJl?=
 =?utf-8?B?bEx3Rnp2NnpIaXQ4a21XZE1wTlVPVUtZM1kxOHdBWlBvMERRTUVueWUrUzU0?=
 =?utf-8?B?Um9oUmF1clNSa2x0cnp3Wkc0RGRNd3lJT2JKVnFPYW5jRElLMnREdVVseEVW?=
 =?utf-8?B?N21ISlNoUmwxR0xwUHpoSmRnTDFhWitpeHR1L0wvclAwaktZWkdraUx3cDc4?=
 =?utf-8?B?MlRBSWxUU2REWlhvQWU2WVBQQWlSUnZoZHR1bU4zUzlWOFB3ZWR1UnpEbXlj?=
 =?utf-8?B?RFpScG1vWUg2dG92ck1ZMDFlSzN4MmE5blRxa0MySW9lcmRobDJRT2FJVDh1?=
 =?utf-8?B?eHVtL1hISlZ2QzlTdHFzampVRnlDamRxdnI0cElyZ3pTK0hlc1hNUmxlWWo3?=
 =?utf-8?B?MHdhUGpoSjdlRVhVa1NuYStScFRSREQ5eG10TVR2T2J1Z3FyQnJBZ0hDVFZU?=
 =?utf-8?B?cjQ0TnJsWC90Z05sOVNhQ0dmUHdhOWVMYWF5bjFQUml3SXlXZzZZNWUxYXJa?=
 =?utf-8?B?dUlINUFyOHBBVGg0Z2ttY3RqWnpWajZrOHp2QXpzczNNNFdFUkYrcjJMcFc3?=
 =?utf-8?B?aE1pM3hVTkt1NEh0MnladlE0NUVMdzJWbVZKMUhrak55MzB1Q3hOazhjdTJn?=
 =?utf-8?B?SXdXWktUeVZrSFZQemRnQ2JFN2FPeGsyKzJFN3JBUld4djVXMTEvQ1pobmR4?=
 =?utf-8?B?RU1jRzhOUFhveENreTdlME1PTTZSekNETU5sR0lpVjhOY1N6aGYvM1dnbmcv?=
 =?utf-8?B?WFo2RnBCLytnekRxaXZJaTZ1K3cwdnpHdThPTkkyTUtzUnpBR0Y2UThMb0gr?=
 =?utf-8?Q?7r2d/rr+fVQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zmt6WitocG9RdEpnWUdEYlVNL2NkcWZTcC94WUdGQ3ZXWFczVmExR0ZWOTVu?=
 =?utf-8?B?Mit5dE1DbWdXakpwUGd0SjRDMGpFaVdKM0c5SVRDZFRmODgyVFpHTVI1MHBo?=
 =?utf-8?B?b2V6MmY3RGJRbU5iYTdHQXV3MGhqYUVOaEl4Q2wyeGpEZnFEcGJET1hHWkh1?=
 =?utf-8?B?WkpFVjdMU1NKa0MyaWs0bnlPdERXQVQ5S3FLOFp3MWVFUlNxRzFKR1IwR041?=
 =?utf-8?B?T2Fzc24rdFg0RGtDUG12K3U1dDFUYkozbmVJSEhUVlFETm41Z2pvTzhoczF1?=
 =?utf-8?B?TXVRTHNPSC9pcUx0TlFGbHQzdG1rNnlMZWh3WlUxc2UyYXZCdTQ0S2lvS1lw?=
 =?utf-8?B?bDlpYWtYWXZnU29NMWc4c2pCYlk2STZrWG0rMDExS0VRMjM1b3daZmhkR2lz?=
 =?utf-8?B?cWF4T1M1bHVBUWNMaGF4SGovdEN2NUtqNDl0M21UNjc2TmpIK21WWHh6WWxk?=
 =?utf-8?B?UkZEMFo0UzVBQ09CYTNMVzIvTGUrMDRMTkNWZ1VQZ2NONEpzcXNvREE0Q3Y5?=
 =?utf-8?B?ald2VGxvZk1uM2w1dkhaUUtDd01VR3h1YnNDdWFyUFVBZEE3TnR4WGRnVFd1?=
 =?utf-8?B?RVFjQjdnSmVWS3BIK2ZuVTVEenRkVFBlM1FlNkdUanpqSldMRHMxbk91OWo0?=
 =?utf-8?B?NWdicTFkUzVRYno1U005aFdOSUhMZHYvQVM5WTgrZGxsK0hscnZWSisrdnRt?=
 =?utf-8?B?NjdzMkRveldaaUtUczVRYmwxU29ZWWxIZUtodEhadm1TbWU1VHE1blFoUDdl?=
 =?utf-8?B?SHZ6TEtlclIrOFJHc2IrSmxpSzFpK3dtVE5QN0p6TEJEQXBST0pKOGhPak5Z?=
 =?utf-8?B?L2Z6UWh3MkpmTGFScW1oMmhMeDdjQXltWVJmVDhqV0xaU01yRmJBbkRsNXl6?=
 =?utf-8?B?NDNzZ0VRL2o0ZDlFUzRjYmh1YmNhRjFic0xjT1V1T3hkOEJqOHhxZHdzTnph?=
 =?utf-8?B?Szcwa2lCTVd5OFNFRGpBSXlRbzdqdGlJVHdNdlN4dVFidVc0d0lTYWo5ZzJp?=
 =?utf-8?B?akVMMk9qOW1xKzNFcXFNLzlsbjJVM2YxWUtqT1dVVzZDUXdZSnFBbFJ6LzhR?=
 =?utf-8?B?ZFFlWGdkWUNtN0phSDBWb3U2eU9zVmdFZXZTWmdJRTVrZkZlWlI0dThtTHMz?=
 =?utf-8?B?S3ZrWUZtZ0thUFo3S1JCbDRFY2lnam5la3lZSW5rL3hSbER2SG1qRlNVL0cr?=
 =?utf-8?B?SVRvSytreVlhOWp0NkVMa1o1OXVIdDh3R29YUEo3bnRmSkZOT2lrMGJ5Wk5t?=
 =?utf-8?B?a0taQ0RrVi9rQWc4bU1oTmJBUmI2dURZR3lXQXZIL25COGVveXFHVXkvdmUx?=
 =?utf-8?B?VzY4WFNqZ1RhblMycmYrcUVaV3dTNUsrVFlZOHRUelV0UXYreVU0a1FBUVd5?=
 =?utf-8?B?LzBUWlJTbEFiaTZ3Njh6ZXdtQXE1cmYrS1VhYzNmaU05MksxU1pEcDdIbUg3?=
 =?utf-8?B?a1BIbXA2R055TExRbVkwY3VSemRiUEdrNXRFZFkrU1pBSDZpT1BCV2lSKzRD?=
 =?utf-8?B?MnlnNUN5WmVHcDl5dmgyUVZ1eEs2bDdhdEYyaFRURURpMmlMVktOMW16QWVE?=
 =?utf-8?B?am5yNjliMUNQbWdJa1NVR0dLZmFOUmdIanJ3U20xMDBmOWxhVkpMWG5QaGNu?=
 =?utf-8?B?Mzk2Y2JqVU94bklXMHg5YzYxOGg0OGcySjhXYmJEWjBHQUVIT3g2eEp1KzNi?=
 =?utf-8?B?cC9mcEllbDZwOHRqeG8yVzBRbm53aVo1UnBHTStFdlUzOW1WTDR6RjdnTEpG?=
 =?utf-8?B?cEcrOWN6cGFZSDhDRWpHeVprLzBkb3lra21mb3ZTU2hUNXM1KzBxQmFIWURR?=
 =?utf-8?B?U1VKY3l5dVA4ZFVSOXh1cTZ1SklNajA5UGhVam9FVEorRVY5ckF4WUoyMTBz?=
 =?utf-8?B?VWVIYXlxSXJxMkRrckQ5VklTYnYzZXJsQm5UaFB2MG5FRTFrWUcrZ0hIY3lS?=
 =?utf-8?B?K0YxWHhyTVpURzZCdXN5Mk12M3JGY1BlUjlEbHkveDlhS3ViZTJ6YTAxM0t3?=
 =?utf-8?B?NlJ1T2tmbnovWGhZdkxUWnZEc0JpMmVXMlJyUWd6ZTJhVDlmN1dLVlpERTd3?=
 =?utf-8?B?Z1d1TnNoblNheHNta3ZHTXBGYm9GZHZlMXhHTklKU1oyT0dSRzIwMXFkUExS?=
 =?utf-8?B?b3d0cno0cHVVV0ZUbis1M3dKZTY4eVNzaFNSWFAyd04zVThWMkZaQXMwbnRU?=
 =?utf-8?B?bUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 54464a53-803f-4cc3-2085-08ddd9e9f333
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2025 21:48:19.0287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dwx1dtrR60PbPC+95bYvm9eeCF5LlYFk9o3T1eGIDj6cZvWhKanaOf5IylQ1q0mwjAtql79Cc5lvNzOtCOjlLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5946
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

Quoting Chaitanya Kumar Borah (2025-08-08 05:19:30-03:00)
>WCL has 3 pipes and two TC ports, create power well mapping to reflect
>HW. Rest remains similar to Xe3 power well configuration.
>
>v2: Remove TC3/4 ports as they do not exist.
>
>Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

We could also add "Bspec: 73944" as a trailer.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> .../i915/display/intel_display_power_map.c    | 56 ++++++++++++++++++-
> 1 file changed, 55 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/driv=
ers/gpu/drm/i915/display/intel_display_power_map.c
>index 77268802b55e..611bbf188aba 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>@@ -1717,6 +1717,58 @@ static const struct i915_power_well_desc_list xe3lp=
d_power_wells[] =3D {
>         I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> };
>=20
>+static const struct i915_power_well_desc wcl_power_wells_main[] =3D {
>+        {
>+                .instances =3D &I915_PW_INSTANCES(
>+                        I915_PW("PW_2", &xe3lpd_pwdoms_pw_2,
>+                                .hsw.idx =3D ICL_PW_CTL_IDX_PW_2,
>+                                .id =3D SKL_DISP_PW_2),
>+                ),
>+                .ops =3D &hsw_power_well_ops,
>+                .has_vga =3D true,
>+                .has_fuses =3D true,
>+        }, {
>+                .instances =3D &I915_PW_INSTANCES(
>+                        I915_PW("PW_A", &xelpd_pwdoms_pw_a,
>+                                .hsw.idx =3D XELPD_PW_CTL_IDX_PW_A),
>+                ),
>+                .ops =3D &hsw_power_well_ops,
>+                .irq_pipe_mask =3D BIT(PIPE_A),
>+                .has_fuses =3D true,
>+        }, {
>+                .instances =3D &I915_PW_INSTANCES(
>+                        I915_PW("PW_B", &xe3lpd_pwdoms_pw_b,
>+                                .hsw.idx =3D XELPD_PW_CTL_IDX_PW_B),
>+                ),
>+                .ops =3D &hsw_power_well_ops,
>+                .irq_pipe_mask =3D BIT(PIPE_B),
>+                .has_fuses =3D true,
>+        }, {
>+                .instances =3D &I915_PW_INSTANCES(
>+                        I915_PW("PW_C", &xe3lpd_pwdoms_pw_c,
>+                                .hsw.idx =3D XELPD_PW_CTL_IDX_PW_C),
>+                ),
>+                .ops =3D &hsw_power_well_ops,
>+                .irq_pipe_mask =3D BIT(PIPE_C),
>+                .has_fuses =3D true,
>+        }, {
>+                .instances =3D &I915_PW_INSTANCES(
>+                        I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.aux_c=
h =3D AUX_CH_A),
>+                        I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.aux_c=
h =3D AUX_CH_B),
>+                        I915_PW("AUX_TC1", &xelpdp_pwdoms_aux_tc1, .xelpd=
p.aux_ch =3D AUX_CH_USBC1),
>+                        I915_PW("AUX_TC2", &xelpdp_pwdoms_aux_tc2, .xelpd=
p.aux_ch =3D AUX_CH_USBC2),
>+                ),
>+                .ops =3D &xelpdp_aux_power_well_ops,
>+        },
>+};
>+static const struct i915_power_well_desc_list wcl_power_wells[] =3D {
>+        I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
>+        I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>+        I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
>+        I915_PW_DESCRIPTORS(wcl_power_wells_main),
>+        I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
>+};
>+
> static void init_power_well_domains(const struct i915_power_well_instance=
 *inst,
>                                     struct i915_power_well *power_well)
> {
>@@ -1824,7 +1876,9 @@ int intel_display_power_map_init(struct i915_power_d=
omains *power_domains)
>                 return 0;
>         }
>=20
>-        if (DISPLAY_VER(display) >=3D 30)
>+        if (DISPLAY_VERx100(display) =3D=3D 3002)
>+                return set_power_wells(power_domains, wcl_power_wells);
>+        else if (DISPLAY_VER(display) >=3D 30)
>                 return set_power_wells(power_domains, xe3lpd_power_wells)=
;
>         else if (DISPLAY_VER(display) >=3D 20)
>                 return set_power_wells(power_domains, xe2lpd_power_wells)=
;
>--=20
>2.25.1
>
