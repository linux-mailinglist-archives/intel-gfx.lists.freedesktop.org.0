Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3649A90CE3
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 22:15:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E592A10E9A8;
	Wed, 16 Apr 2025 20:15:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="idybVgIZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AED910E9B2
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 20:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744834539; x=1776370539;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bDJEA6jf16wsdCG3xrO9YsG4AhlPT5CaVZQHEspr9cw=;
 b=idybVgIZa3ANiOQFY3IRs6Ne37aTjnUVYv+S8ChZ6Q9/azBJ8Hoio/VN
 rlgab29xbpb59BqvH2xAOVpfIT3IWocC/K58Igip7RY/poujCf2pxFmAE
 /KWQNCAJD9/vqtljqDcOKe4jsAOi81VkgyPjebh6OCG/9RGjhvPk0LGPg
 9UoDX1XGX0u4juXeg9C4TcFJvjkHL8XZHgIcJpN0zrAhES/d91IzCcsMK
 DKoxbZyeZEzdONfP5ONPkl/pbyYit8LF2bsTU9/7j4+mZmciOKD2o+FG8
 0CvS2IWjrcIdZPRzxtPcywPkRUUmZJZ+dAA9bokUUIFY5KeQyNiZLvswq g==;
X-CSE-ConnectionGUID: qqkoQSmQRzyxuFzndXXsuQ==
X-CSE-MsgGUID: OKFVihAeQLqz6UQm1R1mag==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="68894290"
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="68894290"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 13:15:38 -0700
X-CSE-ConnectionGUID: 0VfKo4YiRSmGQ+PqgF6HRw==
X-CSE-MsgGUID: 7LyUD9AbTkqVQ5VVszeCGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="130348508"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 13:15:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 16 Apr 2025 13:15:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 16 Apr 2025 13:15:38 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 16 Apr 2025 13:15:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ph0+ECDohPTyo3/Dr8Ub45yYFNcF4NZmm42EgW8N3ZEZClvDnR1Z4HFFLoKFzVAkpwXBtCqY72C4savtkUFUhl+yWAcWY84J6Gn1Uv62Qczbw04BuUZF6yKe5kt0MCBsxBnY/uMtJin11d1baV0NHHU/KqXx0hN0V5HJmE2wPm1WM/Nzj7uC5PvybUKA1i9ktC6wBbVmsjlcU7hU/mH9GwmxKWqamM/vwn6vYnp26Nh8XtWKoE2zqSXRPYUjIlGP8AIV+azlhW6BSD+7z05MtG1k7y4TVqRoBqE5QQUXDx9u+0Df/9cLWO/Yvv8Au+VO53u23wzNTeUGibdXelWtmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zebzV6kqEufM9Wzu5t11IbIhod6yu3pzT98UlugI20k=;
 b=Q1kggs66ZHzJDxRoj5+C8uX3sCncViw2PaK3ydpR/SPken6jHo7C7uF4KzmRdQ0gcPPF94zaKuPKUktun3O3gOLU4Q2iCBkYMfGTYAg5xf8P1ZVAu0XNjOCck+eeXTJhUUF0QCPEKAkdUx5xHcKZ2kHJBvSN10adqOicuC0MvpQAnpg26QQ3ycjOzI/Xc2BYF2fJM2paVLohVZsjao93XC3CbX2Ozlv1tLaZg3qh6BEcQzCPN4L1bRikdtNtrlG8KvWd6xqr+GsxMWpJmmelBz80WOXPEpVZHUXR/tcGoDqaDBquTYaGzb7sZ9yvcV0WNGlUMeZw4Pu5YN6MCGfA8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by DM4PR11MB6478.namprd11.prod.outlook.com (2603:10b6:8:89::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.22; Wed, 16 Apr
 2025 20:15:32 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50%6]) with mapi id 15.20.8606.033; Wed, 16 Apr 2025
 20:15:32 +0000
Message-ID: <a09d334f-c78d-4b96-b535-b95e97926e26@intel.com>
Date: Wed, 16 Apr 2025 13:15:31 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/xe/pxp: do not queue unneeded terminations from
 debugfs
To: John Harrison <john.c.harrison@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20250416160449.1293068-1-daniele.ceraolospurio@intel.com>
 <d9d30d75-eb5b-47cd-82e9-0020cf3fafff@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <d9d30d75-eb5b-47cd-82e9-0020cf3fafff@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY1P220CA0025.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:5c3::12) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|DM4PR11MB6478:EE_
X-MS-Office365-Filtering-Correlation-Id: b680eada-073b-4c4e-bf45-08dd7d2370a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RWxtRG9TbG9YYzFBOUt1TTB2MXYrQVVKaUJOaFVKOG9mNHBaVXRybkFPQlU5?=
 =?utf-8?B?Wk9YdmtNVEJDUzYrOUZpZk84Si9YeXNObTVwTjcxNU8xall4Rmlubk9IVmRu?=
 =?utf-8?B?Q282N2pxUGJ0Ti9ZLzdxUjE1cWRKZGVjS3NPZUlhMHF3VFJIcHlQNHRSaHkz?=
 =?utf-8?B?UTIyQ3hvRmhudDJDeE94bHBTTUNMV2I5NE94bVBKZTlvSWFRQ3RnbUI2STlV?=
 =?utf-8?B?c2RUclV1L1cvbDNNK0loVFFpQ2RqN2pVeTZrMXBVdkJsZTR2bE9MZDVSSHZ6?=
 =?utf-8?B?OVdVTGJEVnhQWWI3dXNIUmt3SUZTMEY5NWhrV2xBNE0zYi9VdVREV2lTa1dX?=
 =?utf-8?B?QmZBYjFmNENZamFTRW02NXJxdzlQRU9rWTBlbjEyS3A3Ti9BdUVDUnZHUUlR?=
 =?utf-8?B?empKMndkT0xzRC9teXZuZzVyM0U4QTN3cFVCcEFkUFFEZXNETTM2cHE0TTVE?=
 =?utf-8?B?Y29vYm1FaVZUZUVIUWtJYVI4bUNVZWlTdXVsS2laWHJiaHJkREtTY2dUazZI?=
 =?utf-8?B?K3ZUWWd3L1kwZDFDZlRUdnUxdC9FVnBSTXBWNEZHRFZkSmR5aHU1bDVBZHlq?=
 =?utf-8?B?bXNJUVFqV3NYVjFBQXhScHpPR2Juc2lhaDY2b1BCc3JuUThULzYzNkpyUWpC?=
 =?utf-8?B?VXhEMmgrcWlVSGEwcGdFM21KK1d3R3dBMDhqRWxKRXpRZWh2VkhFbVg3SWRz?=
 =?utf-8?B?NjRORk1TMXcwdU9PTStLQmNPSDgydnY2ZmZGYjZsWXJWU1Q5ckJ5a2JqRU9H?=
 =?utf-8?B?M3J5VUo1NnpaTU96SDR2bGo3YmQ0UmtZTDlMQlc5RXU3dlJHc1QrSG44UDR0?=
 =?utf-8?B?RDlIQWpkeE1ka1RuZUxueWpWMUtaSXVFS1h4Qm4wTEtqUWdQb2dtaHRrZTA1?=
 =?utf-8?B?aEt3OStkUmFseUx6UEJ4SENxWU1RbVBnV3VtaThOekdVVE9qcFIyVlBxSjdP?=
 =?utf-8?B?aEcwUWYzSThSWW9BQUZONnVKUTduLyswWnlFNVQyemtoRS9WVU0wY042cGVw?=
 =?utf-8?B?M0swZkllNUxlbWlWUk05MHdKZW1ybExsUmNOcnNzTW9rc25VMmlnUGJubHZx?=
 =?utf-8?B?MlIwdDJYbHpCejJKSW5Ed3c5WkJDM3NydnJNLzlkU21Cd05OWHQvdGtSdmdn?=
 =?utf-8?B?Q1ltTWhiZzlxK0ZnRlphVDA2OHU0NTBMQ2x2UHNNQTY5QXZjaG5GaFNUeFly?=
 =?utf-8?B?UStnd0tPdnZSdVNpdTh2QWdUYjRNaFBQZmVZNkEzRG1TWU5yMVlYMGVvN2M5?=
 =?utf-8?B?RUNhRXdVMTBzY3hUSjhyUG5xVVBWN3dRa2cwLzNsUWgzbTdLTmpYZ0NJUmtG?=
 =?utf-8?B?dzlwb1ozOGFoczdHajFYOWJrZitYTG81NVVxSk02RWk2VjRzdkNnR2h2bklW?=
 =?utf-8?B?eGhZNEYydGNvSjNoYWNOdFQwdER5M1RSTjhjcm5kbHAwNDZxQTVkeXovV1ds?=
 =?utf-8?B?ZDJ6KytTZ3NMRy90TmZhYit0RzhvaFovZ25UeklxZjFYYStydmdNVVNZVmRK?=
 =?utf-8?B?akZKRVJDVFlNRVd6d3pDcFJNSm01NVpzVEZrYk8zQVUwUjFMYXphSCtrM21y?=
 =?utf-8?B?NGRuTlhYMEFYdjkxdlArQ1NMRnBVeTlmMlJXL1lKeDFxdmV3Y2IvSEp4Z1Ev?=
 =?utf-8?B?YXFiWGp3aDVMWm9pazVQMEQ5TlJlblY3dytzVWc0Tkh4b0NVTmRMVGVpT3ll?=
 =?utf-8?B?dmlhdzhHOVgzUUt4ejVHa0E0MXlLTlp5aXlGdkU4Q1BMYTFBelcvMkxZSG5m?=
 =?utf-8?B?OVZxK0ZPVlJCWHFJN0tyWFoyaFlCZXdlQTdlcjlHS1RmUG9VaVNyQ3ZMeHhH?=
 =?utf-8?Q?GETJ5nhxacJfucS1wwWuk43fcRb1N4Ci6uYXk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bys1eEdlZWg3UG5kc3FINGJRVHIrdHI3TG44dWIzUnVmaEpUaHVxZHpzQjdY?=
 =?utf-8?B?SlVUL1cwdEthYUsvZ1dOdGlPMURhR2RJM1VFQ0dYNm5kU05JMXpSNnkrUHh3?=
 =?utf-8?B?UXRocEUvQTNDYXhDb0MrSTc3cXQvY3Y4K0lIODJEZ1hHZW52MW5DaHNnVyts?=
 =?utf-8?B?L1Jwa2pGOUpIVXF2ZHNhYlI3ZzBnazhxMUFnaEZDWHFiMjR0c1ByWHVuUWRV?=
 =?utf-8?B?VUl5MUVXeHo4M3kzNW9aOFVEalZtajFUTTdGeWdFQ2YzSFU1ZHFIRWRNdTlz?=
 =?utf-8?B?USt1cE9xN202NG5mdmZJYm5JYkdqcjM0S3c1WlNOdlB2QklaUDl6WGU3VmJa?=
 =?utf-8?B?SkFQN0poQ0xLWVZCbnIvNkl1bEhDbDhySWo1c0hiMVdkN0xqcWFhYnlNekFD?=
 =?utf-8?B?R3lXbWFOTk5WR0lZZHlCMEhLaEs3ODE5dzhGM3dGOG5KeENkQmVVUWxvNkYw?=
 =?utf-8?B?TGZEM3EvTWtwb242SS94MDRKaUY3ajlxczB6eUVXTGNpNUk2cFZ4NFNxTWZl?=
 =?utf-8?B?bCszc3IvS1MyL0FOMERwOUdxQzRUbnFrd1hsaEd5WnA4NWN0NjV5ZUJ4VUtD?=
 =?utf-8?B?bjBGUXg5WCt1VlRtN3VtSWk2WHlnNkNEbmhCTU5QZjlhd1F6NWlQRVNjVFFv?=
 =?utf-8?B?QlNYejhEM2lDbVhYaVpxY3Yrd1A4ZXYwN0crTUliSzhGL0kzWWxOdjFmWXJE?=
 =?utf-8?B?WkFWN2xCamY1eDRhN2MzNklwdzFlK09ZMWQ3cGFjL2FwdFlMUFdBUXVyK1pa?=
 =?utf-8?B?LzYwcjFFcGN0WmRkeU1lUmcwbzBvb2VHMGRvV1BJaGIzQ3ZtV0ZSNGNJdC9F?=
 =?utf-8?B?M1Bhb0EwUytEamVJT2dESDJidkRtZTRGeW1DTTMzbVArSmNwanVDR3lBeFRt?=
 =?utf-8?B?MnBsTmZnMUJQSGNWR0pBaktEdDY4WlpCLzA5NWdQN0hTYXVHeTZNNjRvY1NT?=
 =?utf-8?B?VHNaYmhUVWpUWDEzYUZ1ZjhKc0tCWHpLWFJocE9iUk5iMEpjeHlxUzZ6eUZs?=
 =?utf-8?B?WGY5SFpwTUl2bGN3YjFCVXUrd2ZtNzlHMjNzTlBzbkMwc1pKczdRYW1rKzEw?=
 =?utf-8?B?MkNSVGUxRm93VThKbGlNL0k0dHhkb09rRnFrT3dkZTNRZEtTQVp2bXIxc04v?=
 =?utf-8?B?RHROQkhOeWlUbmVrYTRlRE91TmJMZmo1Qk5lK21JN1VkTi91aTFScjI0UUV2?=
 =?utf-8?B?OGtQOFRQbUFYZ2FKL1lGSVlYTkdvODd1VW1nbUI1MUtpWkMvcEdicUtGTDNC?=
 =?utf-8?B?RDVTWHhvcVY2VkFzelkxbWZKTEE2S21ZcjFNa2Y5bFZUSmxnYUlaSVlnM2l6?=
 =?utf-8?B?UG9na3FuYmFkL1htNVk4b1gyZU4wVXhUdnFLeVBCS1ZHYVpoanNjeW1pMmZX?=
 =?utf-8?B?WXI2OTZwTThNRzN0YnMyRENXZW13NGVQZGp5bWlYTTFFOHRSR2JETnduTVlP?=
 =?utf-8?B?eUpkTHJnczhIT3EveWpkdk15SjZzQlZhOFIrcWQ5enhVRnhvY1VjVHUvY3pZ?=
 =?utf-8?B?RmpFdWZqQVZmdzFHV3F6cXc1RHJDaThqOThUazlOV3JoUDFlUnIybjlMUTBk?=
 =?utf-8?B?ekJjV2xoWlNDZ3RTTlg1VFFxT2NDcGJEWkVhTnR1Z1RibGZ6MHArY3Ftczc2?=
 =?utf-8?B?K0JTYXZTRUQvMVFBWG80Wi80VWt6VGMway83aTRnM29zT2h3NVkvWnlsNVRv?=
 =?utf-8?B?aTJuMTZ3eUFkeVhxaVBFUkx6eFJBNVlNeFIzTGFWRDhjZkY1V2gzNHZRQ3Fn?=
 =?utf-8?B?dzdvTHVjTnNTZEFDdjFDUGZQd04yUEhzNllwTUI5UzdpcnB1ckpDQ3VNdWtW?=
 =?utf-8?B?NUFUVmVFdnlSbTgrczlGQWdJTENYSllRM1VEcVNCNitpOFhPSjZuNUJHdDhI?=
 =?utf-8?B?MlBRelNETUhsTkM3NmRRcjdiMHlBVnN1ZHNQMXIrQmc4bUJ0MGwwQko3RnFn?=
 =?utf-8?B?cUFrWUQ0SUQ2VSs0aWg0OXpPMHVyL29abDdIUXd3aUlZOUNDV24reVNDWnlJ?=
 =?utf-8?B?L1Z2am9DY2NCVVhyaFVlcEk0TFltUUNVTFZwejEvVzhqNmgyYnhPOW9lUmZp?=
 =?utf-8?B?dXJ0a3ZDaE84Sk03eUxmV2F1RkdLclVObTA0NWRZV1VzNmVzN0lWMXlMNWJI?=
 =?utf-8?B?Y2hIV0I1NEcyZU9qTnVOVmtsQllxN0RaazFHOUFyTXhNS1czeENoVVJOZXpP?=
 =?utf-8?Q?lMvhW1FSby0ADjpMNgjrcfg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b680eada-073b-4c4e-bf45-08dd7d2370a3
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2025 20:15:32.5178 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xq6FygbZYSnWTwqtOlWSGWqRlIg7lVSrIbPVMqmYEXISm0MGXT3k6WoK7jJiXf0og4vFpKZYFnopU2nqrf1rT8YGPyAkbnSYAvRJo6B27W0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6478
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



On 4/16/2025 12:31 PM, John Harrison wrote:
> On 4/16/2025 9:04 AM, Daniele Ceraolo Spurio wrote:
>> The PXP terminate debugfs currently unconditionally simulates a
>> termination, no matter what the HW status is. This is unneeded if PXP is
>> not in use and can cause errors if the HW init hasn't completed yet.
>> To solve these issues, we can simply limit the terminations to the cases
>> where PXP is fully initialized and in use.
>>
>> v2: s/pxp_status/ready/ to avoid confusion with pxp->status (John)
>>
>> Fixes: 385a8015b214 ("drm/xe/pxp: Add PXP debugfs support")
>> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/4749
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
> Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

Thanks for the review. I just realized I've sent this to the i915 ML 
instead of the Xe one, so I'll include your r-b and re-post over there.

Daniele

>
>> ---
>>   drivers/gpu/drm/xe/xe_pxp_debugfs.c | 13 +++++++++++--
>>   1 file changed, 11 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/xe/xe_pxp_debugfs.c 
>> b/drivers/gpu/drm/xe/xe_pxp_debugfs.c
>> index ccfbacf08efc..525a2f6bb076 100644
>> --- a/drivers/gpu/drm/xe/xe_pxp_debugfs.c
>> +++ b/drivers/gpu/drm/xe/xe_pxp_debugfs.c
>> @@ -66,9 +66,18 @@ static int pxp_terminate(struct seq_file *m, void 
>> *data)
>>   {
>>       struct xe_pxp *pxp = node_to_pxp(m->private);
>>       struct drm_printer p = drm_seq_file_printer(m);
>> +    int ready = xe_pxp_get_readiness_status(pxp);
>>   -    if (!xe_pxp_is_enabled(pxp))
>> -        return -ENODEV;
>> +    if (ready < 0)
>> +        return ready; /* disabled or error occurred */
>> +    else if (!ready)
>> +        return -EBUSY; /* init still in progress */
>> +
>> +    /* no need for a termination if PXP is not active */
>> +    if (pxp->status != XE_PXP_ACTIVE) {
>> +        drm_printf(&p, "PXP not active\n");
>> +        return 0;
>> +    }
>>         /* simulate a termination interrupt */
>>       spin_lock_irq(&pxp->xe->irq.lock);
>

