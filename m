Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id if9kBZxARWq99QoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:30:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 519126EFCEB
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:30:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="XUG/iVGC";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB47110F025;
	Wed,  1 Jul 2026 16:30:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6406D10E3E0;
 Wed,  1 Jul 2026 16:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782923416; x=1814459416;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BsZ+cvaG0KWrLC8PLb7gNVO4bn1qlTjPWqPvLxyRwrg=;
 b=XUG/iVGCLey2hMPantAGZl9M4c/NkJ1TSTicbKYIWcD1G+j4x10VOr2o
 ALiGVzj4Klk3fzrh7Ds0lC9VMxpk1cPrum0XG6+i4aNgCAKSXh7zysSul
 izbScheglCsKekHbUSQy+iAGpX66rZ36cCYLq/3CeENl5BuQ6DwstvoQE
 VGLHkgunW9DrDu4UCQoAYY6HXddGJ5oSo4vOLZh7uogUK8jPTIA/PZbD2
 loxPtyEtBMAMipKdhtSXc06dDpP9Tw044X9Gyanh9X4+IDLMxq00C3f0q
 I9dZfIZQ9+poHcjyLJi/cIw3vIgVVG+24ZRF7gOV5zAqO43MpKEjeGWt7 w==;
X-CSE-ConnectionGUID: hTsiUOKkTw+DlJAATZQsNA==
X-CSE-MsgGUID: LzhEc1Z+Ts67XlZnFwq/zg==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="83694854"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="83694854"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 09:30:16 -0700
X-CSE-ConnectionGUID: qq9IC1SQTt6lGMdoTJ1Yhw==
X-CSE-MsgGUID: WW3El4vTT7WFQCVodLVjeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="257507785"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 09:30:16 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 09:30:15 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 09:30:15 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.8) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 09:30:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eIjOJFBXuWT8mz9Vg2kh45nW5vXaPxTcXzauCAmImO1YWSLCTfavXyOD0VU+0WEmmn9Z9tfCUt3F3Y9cDZSZWRn9v92HL5cQdAotBGOYjIRPoZXXAE2mW0F4jN1BPixHfDWZeHGtxgBR0Bg+jN8jXB1Olr/e3EZAPW9bsH5S5JuOpXO+lcuzlGAJI1ppo12Ibj/5iJNgWTqyDDjSrJG4KZnCA9fcMpY10gKmbpLN9WuCN//fPcegmtMWlZClsnjmGxqQp8wrzlLPQVOGyvsIJnWzqUJOokBDy3FgJSikNpf9MgT3jOa7Cjp4w1bdBemjXGgblfgRCuyDohRdoa3ilg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PJoDe8H+rpsk8X8UDCqOtAI/WCNf5lCH/nVKW5/IGQM=;
 b=rjLkdCpfvkH0NTHA2Hygh/tICJ4IckXQwGjeh/mvZ3iRRODM25sRh2ozOyKQ4IMW0nJNBwuHZjSjo/K7CIXPrU9q0rhu9TEXYOj2xEvH2euSJgGp6Y72r2qk8G1Sp3XV5mNbXvCcBMAcS/bLE1QPB4crg7Dr1S7BDR9LE1SzWYK7Fw7AxUUpOklFUL9ZIoNTlDlM82l/qAAmckYi22NTVGtQ2XnSUL2/5Sgj9MyjKsNcvWdSc70maj9AuNr/fgpQL0j7rdT2pLRDwkHl1M1Cxbou/2cQRG8837yxZ80XVWjAFGXoY9QFznQPLKbfbHDv60Hc9V+ip7fsoxRzFA2ttg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by CH2PR11MB8865.namprd11.prod.outlook.com (2603:10b6:610:282::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 16:30:12 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 16:30:11 +0000
Message-ID: <7f94d32d-4673-4dc3-abac-2fefb3526a2f@intel.com>
Date: Wed, 1 Jul 2026 22:00:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] drm/i915/cursor: Handle secondary cursor state
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20260608062629.820477-1-nemesa.garg@intel.com>
 <20260608062629.820477-4-nemesa.garg@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260608062629.820477-4-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0002.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:176::11) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|CH2PR11MB8865:EE_
X-MS-Office365-Filtering-Correlation-Id: b19c392e-6778-47ef-e46d-08ded78e05ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|11063799006|56012099006|4143699003;
X-Microsoft-Antispam-Message-Info: eDDy2Td06yBgWM+G/hX+oiVH4+CGw7bhfK1i3QVxNg/BTJ8RXToacg8+0hOiBD23+DdLRMZQi+fb2uWKwQT/aMhO5AOMidAPUDtKgZ6RePW8gMecF+eB/2X4jEoieDTqQNagza/Jdsw7P5Wu5K/s+j2GKIXt668maREZLs4WnLgAXeVAx41R0SSiaEwFm98HSIk2Y+pMA+/YL+XHelGtL7DPkOWlot7aDXJNE28mmU7u6c9Mzp8mJx+adh46FsDKLfIAb17ZI6JOp73rj0uhu1cFcqjQFyDrNftShoaVENEinwuGQGj5iuBXGhM9J/VGRf61DtRkgedgm1uATWfuIf6TyOXvjD8B0M/eIt5eC+kpH6k4QBP+AH7auNlV0auR3/dcFn1BwiC3IUbxczGYITFJqtgWzaHr35vawZ+kbT7RsDzOBAw6JnsJTBzANnlJDU5qFdd+a+BwDf5pjQxmUFCo8GJOmQRYjnIq3OFveBMGKuj8a4w3oDQqdjohM8n+c4p0qv/1/SnTP4JIqpbgPyiO1a1V29OpuYhXmlvTHe2PerRXdTJodX2JjqeDT3sKrwIA9NvXUhPWBEW39vmhb5fNQQJ/PwNEEIZX242XdF5wThEy27v8e22KLELzO+ikzi/vHF9EIJDAwBO/cjQOfkY6F6MZPsiic+EZMkD5F6c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aG5neXp0QmJqWmljVHZZUDBWNmM0UmswQ2VscWFHSy9LQy9KZ2FBZnRjd3h4?=
 =?utf-8?B?R2RKRk0xU0pQbUNndGJqOUdVZTF1cnBRamVVRmp4WDJsS2QvQ2o1WkUrdm92?=
 =?utf-8?B?TjdlZU5GVW5RNnBYRjEzSWJ2ZnJuM3dybHZucTBVSEdIZllLNmdVVDNSdlAr?=
 =?utf-8?B?WUxGK1Y5YWFqc0ZjL3RzN0MvbENHQ2JpT25mZitGSlNUMUdjTTJVRDdFNE54?=
 =?utf-8?B?MjJqWlQzTTBqQmZTV3VhMUNtaExHU0tTWVZHN2lUQWs2bFo5K2V6cTJ1dXZJ?=
 =?utf-8?B?bTl6cUVCUUp3NWhVRmpRQU5haWNWcWNrUWhmSGlVY0dVYU5xZURuRytVYUNG?=
 =?utf-8?B?eFFEaWFFU1ZobGFYS3lPclRuaVJMOXNWb1RLaXhHOUdkRVhTNTBGcHByRDJ5?=
 =?utf-8?B?NEZ2Q2VoOGVEa2diMm5FL1dOMzZhL09WK2ZGeUxvTUJjRWNpZ3pvYTZCVUkx?=
 =?utf-8?B?YlpiMGI4N0c4S2dFVGI4dFVJRVBzUU1UdHFtT0V4WGs1S1dYOE51bldodndw?=
 =?utf-8?B?ZjRseUczamswT1BsdTdTRitCSTN0VnQ4QVZTT0c2VW9jbHA2OW1wNE9nRHdv?=
 =?utf-8?B?TUhlSzFzSVQxbzVCZkF1RFZ3ZHJuSE5sQ0l4cTJIT3JQK0M5WXI2Q1VYWXJo?=
 =?utf-8?B?WnFkTEp4ckNST0w4cURCMHRKaFAvSExhNkIydkM2QkVWNEhnalU4aGsxbjVj?=
 =?utf-8?B?ZWczMzV0L2pFMms4T3lFOXpxeFNMNjkxbDJGWlZyQWhvSkxQRG1KUmtWZXBl?=
 =?utf-8?B?U3dRM1gxTE9pTm9jdDRlMDlQd2wwayszd2dZaVpYNG5wVnZYbEhvWmFQc0pq?=
 =?utf-8?B?a21KYmxqaDhhckZ0b3N5SlhFb295VU9IMVdkMFBvaHdUNVZwMnNLd1ZSaUVn?=
 =?utf-8?B?R004SlhrRTBrbjFLSURWWFdvb2JZWkRBRWR4YXVDSXZ6bjdPdmNYdnM1OW9x?=
 =?utf-8?B?dzFzZzVUSnhsaXhZVTB5eWhqMGF4MlpBR3RqRE8vekd0aGxUZlIwYUhsQzVq?=
 =?utf-8?B?SzN1MEd4eUtQSnBQYnRnU0g2b29zTEVNVkx2b3hyMDgraUtCREZ5cVVPRDdm?=
 =?utf-8?B?WXgvaUsrVHNqRktRbmZRNGRJajRod2dYY1c0d01QL2Q0azl4VFMrWkYrblVQ?=
 =?utf-8?B?K2NlWjhwN3MyM1NXSW0rRTZTeGRnWlNBWG15cUh6bnNTdlNXTndRU3F3bjVO?=
 =?utf-8?B?R0pHUVFMQ1JyVEtIWUFTeWNlSnhqTVdxaFRPYlFkaUZQaDZjTWdQMk10dWg4?=
 =?utf-8?B?Sk9hUGdPa0dyZVFRZHJ2bFFBd0pGbmxpVVNKc0FQNDdRTitmTDVNNkpkVDRZ?=
 =?utf-8?B?L2ZCVzVoejE3YkJOYUVaV0JxbGNMcWZPTGZCVU1FUWViMlZJRzJVcnozeU8x?=
 =?utf-8?B?Nll3c2x0QzYrU1B6bnJXNWZXazRsazNvZlNmcHRRQ3JiMUE2YUJKbStuWGZh?=
 =?utf-8?B?OUxTa3pVVDFidUdWeU9zd1RwM3QyZHVPWHRZMm95Z3gxbW4zQ0t5dW1LRlFo?=
 =?utf-8?B?WUJlMS9kY0hOTHRTNm5FbGZFR04yQi9lOEsxMS9yaktEMVF2K2RLOWlyS1lO?=
 =?utf-8?B?dnNpdXpMTlZ0RkF0UTdJKzZoVTFaa1Vzb0U5Yk84RURQOVRQUS9SR3NpZ3dY?=
 =?utf-8?B?bXdQNXFtRGRkYzA0dFg5UURnMVBveWZGeUZkUC9QcENCWVRHYjlsSGxtZlNI?=
 =?utf-8?B?Rm5SR0lPYkY5a1B6bDlxaEdIUUlDSGZ2S1pVWHo5SE5leG43Q3ZqSjd1SFUy?=
 =?utf-8?B?Nk00bkRwMzZKdHJtVmR1VmJKQ2ZRQVNrM0x3RWFCVk00V1NkVEM5dVdFZzJX?=
 =?utf-8?B?bStZT2lTRUNhT09LeVdEUS9lOHJGUTRRUWtmSlJaWit4cjFkZDVOTlFqQWxj?=
 =?utf-8?B?M1pkSEd6amdKMG1pNWRhcnZZVDZreWlQdzdXVzBOeEpTdzRNN2RISHNLZ1l1?=
 =?utf-8?B?S2REeHRiQ3Axd1ZSTTdCclcxSkNmaGN3ZFdtcVdRaXpFK2VQbklrSmxxSmlN?=
 =?utf-8?B?TEtCUkxLV1lud1EzSUlBbTZ5MXE3c1N6NXcreWR2cVRad2d0cHQxdmp6bXZs?=
 =?utf-8?B?N0YrR3diSndpTDJ2ZFFsZitBSjNMR0Q0RTlIdmNBZm9mOVJMaUYzT0g5VUpO?=
 =?utf-8?B?L2JTTUNqRmtuU1RhdFNPMTY4bWpLNnMzdmhOL1N2UmdTQWl6eGlOelppTzFx?=
 =?utf-8?B?YzZZTEdGRUJINlJldXViTDRCNWRmTkNiOU0wbGZpQms4dDFKeUQ5T1pyaUwy?=
 =?utf-8?B?Njg0MFBycEdoWjhZVHFhOXdyME1ERklHKzR6S3V6VmtSLzBmSm9wVUJGV0NU?=
 =?utf-8?B?a3BtcUJleUl6Ymk1bitvS0ROdmFEU2FIbnZGWGphb1VoR015R1Boak01aUY3?=
 =?utf-8?Q?IKR+f9UHHZU8K8hs=3D?=
X-Exchange-RoutingPolicyChecked: EQH8x31ZEafCffaeU85dfqXaD3tvna1gTAXqFC0xZ4KkEY9ONz7wskR8lPfKTWG1jDthWXTgY38Mip/ddHGH8liSDztwc51oaca3y12xoXgaYkHlO4bCa3IfzU9San5isJUVuwp6EYCPkoPu6/rBJJRrUyOY9QnBE6rBUTa9Jun7NLJU8KcuaT29NLcnmp+NVEA9v5SmwFJcvuFxpQ3aF7U35Y5KN62I9VQz0ymSHLuWhBxSylCVxwuNz/z5a/1ZMDdf0N2R+gxjFDc+YwzVZrnTqsjwx1+HRCxANUGb+fHvmc93sv4EbFtsDJhPKN/TMcYEVoUnIAFgsGU4Kop+jA==
X-MS-Exchange-CrossTenant-Network-Message-Id: b19c392e-6778-47ef-e46d-08ded78e05ad
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 16:30:11.7442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Oo3hWI+CuPFkuIsUT0rGvJESedoziZ8+rzru4CH5v70Hs6bnSrLneCYF2OTFYEC6IEkFn8i8NDqQS43NhKS7AfGApLNKjF50prmcB57wLL8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8865
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 519126EFCEB



On 6/8/2026 11:56 AM, Nemesa Garg wrote:
> In joiner mode the fast path cursor update must handle
> secondary pipes. Iterate over all joined pipes uniformly
> to duplicate plane state, run check_plane(), pin the
> framebuffer and on success swap in the new plane state
> or each secondary cursor.
> 
> Track every successfully prepared pipe in per-pipe arrays
> so that later frontbuffer, unpin and error-cleanup paths
> treat primary and secondaries uniformly, and ensures the primary's
> pinned framebuffer is released if a secondary fails partway through.
> 

This whole loop remains dormant until patch 6. Worth a line in the 
commit message

> v2: Use intel_crtc_joined_pipe_mask(). [Ville]
>      Add locking mechanism. [Ville]
> v3: Drop the per-pipe fastpath mutex array. [sashiko]
> 
> Assisted-by: Claude:claude-sonnet-4.6
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cursor.c | 141 +++++++++++++++++---
>   1 file changed, 119 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 38234c6292ec..3da2c2308081 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -889,11 +889,17 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   	struct intel_display *display = to_intel_display(plane);
>   	struct intel_plane_state *old_plane_state =
>   		to_intel_plane_state(plane->base.state);
> -	struct intel_plane_state *new_plane_state;
> +	struct intel_plane_state *new_plane_state = NULL;
>   	struct intel_crtc_state *crtc_state =
>   		to_intel_crtc_state(crtc->base.state);
> -	struct intel_crtc_state *new_crtc_state;
> +	struct intel_crtc_state *new_crtc_state = NULL;
>   	struct intel_vblank_evade_ctx evade;
> +	struct intel_plane_state *old_pipe_states[4] = {};
> +	struct intel_plane_state *new_pipe_states[4] = {};
> +	struct intel_plane *pipe_planes[4] = {};
> +	struct intel_crtc *pipe_crtcs[4] = {};

Use I915_MAX_PIPES instead of magic 4.

> +	struct intel_crtc *pipe_crtc;
> +	int num_pipes = 0;
>   	int ret;
>   
>   	/*
> @@ -944,8 +950,10 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   		goto slow;
>   
>   	new_plane_state = to_intel_plane_state(intel_plane_duplicate_state(&plane->base));
> -	if (!new_plane_state)
> -		return -ENOMEM;
> +	if (!new_plane_state) {
> +		ret = -ENOMEM;
> +		goto out_free;
> +	}
>   
>   	new_crtc_state = to_intel_crtc_state(intel_crtc_duplicate_state(&crtc->base));
>   	if (!new_crtc_state) {
> @@ -967,11 +975,75 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   	if (ret)
>   		goto out_free;
>   
> +	pipe_planes[num_pipes] = plane;
> +	pipe_crtcs[num_pipes] = crtc;
> +	old_pipe_states[num_pipes] = old_plane_state;
> +	new_pipe_states[num_pipes] = new_plane_state;
> +	num_pipes++;
> +
> +	/*
> +	 * Iterate over all joined pipes (primary and secondary) uniformly.
> +	 * The joined pipe mask includes both the primary pipe and all
> +	 * secondary joiner pipes, allowing us to handle them all the same way.
> +	 */
> +	for_each_intel_crtc_in_pipe_mask(display, pipe_crtc,
> +					 intel_crtc_joined_pipe_mask(crtc_state)) {
> +		struct intel_plane *pipe_plane;
> +		struct intel_crtc_state *pipe_crtc_state;
> +		struct intel_plane_state *old_pipe_plane_state;
> +		struct intel_plane_state *new_pipe_plane_state;
> +
> +		if (pipe_crtc == crtc)
> +			continue;
> +

Third way of "skip the primary" in this series.

> +		pipe_plane = intel_crtc_get_plane(pipe_crtc, PLANE_CURSOR);
> +		pipe_crtc_state = to_intel_crtc_state(pipe_crtc->base.state);
> +		old_pipe_plane_state = to_intel_plane_state(pipe_plane->base.state);
> +
> +		new_pipe_plane_state =
> +			to_intel_plane_state(intel_plane_duplicate_state(&pipe_plane->base));
> +
> +		if (!new_pipe_plane_state) {
> +			ret = -ENOMEM;
> +			goto out_free;
> +		}
> +
> +		intel_cursor_fastpath_update_plane_state(new_pipe_plane_state, fb,
> +							 &pipe_crtc->base,
> +							 pipe_crtc,
> +							 crtc_x, crtc_y,
> +							 crtc_w, crtc_h,
> +							 src_x, src_y,
> +							 src_w, src_h);
> +
> +		ret = pipe_plane->check_plane(pipe_crtc_state, new_pipe_plane_state);

This seems to be departure from the single pipe flow of calling 
intel_plane_atomic_check_with_state(). Any reason we don't call this 
wrapper for the secondary pipes? And if unneeded can we skip this for 
the primary pipe as well. More on it in Patch 4.

> +		if (ret) {
> +			intel_plane_destroy_state(&pipe_plane->base,
> +						  &new_pipe_plane_state->uapi);
> +			goto out_free;
> +		}
> +
> +		ret = intel_plane_pin_fb(new_pipe_plane_state, old_pipe_plane_state);
> +		if (ret) {
> +			intel_plane_destroy_state(&pipe_plane->base,
> +						  &new_pipe_plane_state->uapi);
> +			goto out_free;
> +		}
> +
> +		pipe_planes[num_pipes] = pipe_plane;
> +		pipe_crtcs[num_pipes] = pipe_crtc;
> +		old_pipe_states[num_pipes] = old_pipe_plane_state;
> +		new_pipe_states[num_pipes] = new_pipe_plane_state;
> +		num_pipes++;
> +	}
> +
>   	intel_frontbuffer_flush(to_intel_frontbuffer(new_plane_state->hw.fb),
>   				ORIGIN_CURSOR_UPDATE);
> -	intel_frontbuffer_track(to_intel_frontbuffer(old_plane_state->hw.fb),
> -				to_intel_frontbuffer(new_plane_state->hw.fb),
> -				plane->frontbuffer_bit);
> +
> +	for (int i = 0; i < num_pipes; i++)
> +		intel_frontbuffer_track(to_intel_frontbuffer(old_pipe_states[i]->hw.fb),
> +					to_intel_frontbuffer(new_pipe_states[i]->hw.fb),
> +					pipe_planes[i]->frontbuffer_bit);
>   
>   	/* Swap plane state */
>   	plane->base.state = &new_plane_state->uapi;
> @@ -1019,26 +1091,51 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   
>   	intel_psr_unlock(crtc_state);
>   
> -	if (old_plane_state->ggtt_vma != new_plane_state->ggtt_vma) {
> -		drm_vblank_work_init(&old_plane_state->unpin_work, &crtc->base,
> -				     intel_cursor_unpin_work);
> -
> -		drm_vblank_work_schedule(&old_plane_state->unpin_work,
> -					 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
> -					 false);
> -
> -		old_plane_state = NULL;
> -	} else {
> -		intel_plane_unpin_fb(old_plane_state);
> +	/*
> +	 * Schedule or immediately unpin old framebuffers.
> +	 * Protect against concurrent access.
> +	 */
> +	for (int i = 0; i < num_pipes; i++) {
> +		struct intel_plane_state *old_pipe = old_pipe_states[i];
> +		struct intel_crtc *owner_crtc = pipe_crtcs[i];
> +
> +		if (old_pipe->ggtt_vma != new_pipe_states[i]->ggtt_vma) {
> +			drm_vblank_work_init(&old_pipe->unpin_work,
> +					     &owner_crtc->base,
> +					     intel_cursor_unpin_work);
> +			drm_vblank_work_schedule(&old_pipe->unpin_work,
> +						 drm_crtc_accurate_vblank_count(&owner_crtc->base) + 1,
> +						 false);
> +			old_pipe_states[i] = NULL;
> +		} else {
> +			intel_plane_unpin_fb(old_pipe);
> +		}

This schedules each pipe's unpin on its own crtc's vblank. Patch 6 then
changes this to the primary (&crtc->base). Any reason why? Either way 
the correct approach should be added in this patch instead of 
retro-fitting it in a future patch.

Functionally this looks more or less correct, but the code structure is 
quite fragmented and fragile - multiple parallel arrays indexed by 
num_pipes, ~6 separate passes over them, a
primary special-case, and error cleanup split across three sites.

I would also suggest to fold the four index-aligned arrays into one 
struct so they can't drift out of sync.
Try to unify the the primary and secondary pipes' code as much as possible.

I would also suggest splitting the patch into two:

- Reshape the existing primary-only fast path into num_pipes/array +
   loop form (num_pipes==1), including the goto out_free conversion and
   the per-pipe frontbuffer/unpin/cleanup loops. No functional change.
- Add the secondary-pipe loop  (or even better a unified loop for both 
primary and joined pipes).

In addition to this, most of the variable names needs a re-look in this 
patch. Some that really sticks out - new_pipe_plane_state for secondary 
pipe's plane_state, *_old_pipe_states for struct intel_plane_state.

Perhaps follow the convention of unprefixed for primary pipe and 
secondary_*/joined* for the joined pipes.

==
Chaitanya

>   	}
>   
>   out_free:
>   	if (new_crtc_state)
>   		intel_crtc_destroy_state(&crtc->base, &new_crtc_state->uapi);
> -	if (ret)
> -		intel_plane_destroy_state(&plane->base, &new_plane_state->uapi);
> -	else if (old_plane_state)
> -		intel_plane_destroy_state(&plane->base, &old_plane_state->uapi);
> +	if (ret) {
> +		for (int i = 0; i < num_pipes; i++) {
> +			intel_plane_unpin_fb(new_pipe_states[i]);
> +			intel_plane_destroy_state(new_pipe_states[i]->uapi.plane,
> +						  &new_pipe_states[i]->uapi);
> +		}
> +
> +		/*
> +		 * Primary failed before being pushed (atomic_check_with_state
> +		 * or pin_fb): fb was never pinned, only destroy the state.
> +		 */
> +		if (!num_pipes && new_plane_state)
> +			intel_plane_destroy_state(&plane->base, &new_plane_state->uapi);
> +	} else {
> +		for (int i = 0; i < num_pipes; i++) {
> +			if (old_pipe_states[i])
> +				intel_plane_destroy_state(old_pipe_states[i]->uapi.plane,
> +							  &old_pipe_states[i]->uapi);
> +		}
> +	}
> +
>   	return ret;
>   
>   slow:

