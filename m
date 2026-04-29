Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPT0Njs58mlopAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 19:00:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7DC497DCE
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 19:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6A1910F0C0;
	Wed, 29 Apr 2026 17:00:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UG9y665A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D4210F0BD;
 Wed, 29 Apr 2026 17:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777482035; x=1809018035;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yWopIKnEBskD9dUreceqSJarLFTN+QxEhiv5UWYGYlA=;
 b=UG9y665ALf0f/jrBp76AsugPaW0l3FHnytKU5qp8/M41usS6cdGqxqr8
 H5GPojCZqFN3AXI0sn6wScpZ1B6/yvxpOfFdn1+VtPyadoVmQoD/8CeeP
 Tr/ofKbSlxrP6B361bMI16qD4MuiIN3HQSgy5nX2xH4vWJOqxiSLm19oP
 rtXhoxnHfX9IrYirjMfuZb61Co8ALZHBxw9MEAFO3jfVQj7MS8wRkVA5g
 td6T7l4/lt+IV+42n5tBGzc2aDZo76ta6CP4qNPnaONv7shDdnfI0EBtZ
 yl7YDOj6bO4FkpoNIeqXvZrT4J83QsDdlT+r2T+t+U9P57vfoKSlJWHfQ A==;
X-CSE-ConnectionGUID: t83PkDwrSDeaOZYQCyN6ow==
X-CSE-MsgGUID: 0cxPNotUTb+BPlE6Je+kHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="103873475"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="103873475"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 10:00:35 -0700
X-CSE-ConnectionGUID: 1tESuN3zREe6FPvEAWw28Q==
X-CSE-MsgGUID: L9fWXnSfRkW2pEQTBeki0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="229729459"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 10:00:35 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 10:00:34 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 10:00:34 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.28) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 10:00:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q4LPLxdxByhX4pU6OUQ1/qPxyNt+q/6SrfrD060EYqbrl6GcfSI0AJmRgqptjXKJO3pTUaKshQIXMarFTAqtvnYm91GPU7PI0nJMqL7y1vo7DuijXOjewMcOji3VWPWOb6HMAiO3FuvT7X5r1vtZkk8/FqTmnkAm6wViRlo9xoiHXIQRLx5gw+6cFlztGTmbuD2HhhnOcys2sHpYKlZoi6nGqG0hlJYq/8JzJD74sNlRY0l3zQIM9NpOOH+4MAEBcJkgtrNd+/ickMD0l4RyfnFvVHPJMFw2hQJpa1VO/TlZegpxpMolzoobje1b6D2OrXHFFxOQL/wxsFbWeDYZxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IfGI6fT3BLmanH2OH3LooQequMlYBnR86P74doI1bbk=;
 b=V6ph8N1lXKS4NW/ldsPtfOvq+OVm7gHg8lRZXjsgBY/8ZSO0Oxp0IH2UR5ME9ZA0ZLK/yg7S1cJWwvuIIIftLI/p+czfp9ALf5y3NWMtrYHPgMtfkTmxElGXX5uEc2dGaYnIl9hslOMNqx0QHq7+AGK3PYhctVAyJfrLnP8m4iAObDLwaUiEeomU9ikvwDI5pQjS4KZNGfV5IdzpGIVd51LJmNu4T/GnYSUu9jyef4mJGMSq3+lLvwII99yecru4NikjkZZokglCsO4OPDYz0IBnOxqB5zqEDNNgNj1ChcoRv53usQFhJAs2vXywQhdU0CwCSvQeZ401DK24QpYtzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB7163.namprd11.prod.outlook.com (2603:10b6:303:212::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Wed, 29 Apr
 2026 17:00:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9870.020; Wed, 29 Apr 2026
 17:00:31 +0000
Message-ID: <11998bff-4d5c-4a41-a9e8-312e90cbe1bf@intel.com>
Date: Wed, 29 Apr 2026 22:30:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/intel_panel: Use highest refresh rate mode
 for seamless VRR changes
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
References: <20260428083323.3745772-1-ankit.k.nautiyal@intel.com>
 <20260428083323.3745772-3-ankit.k.nautiyal@intel.com>
 <afH2DKWGJs5nmFwh@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <afH2DKWGJs5nmFwh@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0235.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f4::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB7163:EE_
X-MS-Office365-Filtering-Correlation-Id: aecdcc0c-63d0-4cdb-6539-08dea610d1f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: ZpR7qdNrq7VzVdTGwdTrglR6cmjSDlzQb1HI+rjc8IOfW/39blMX7y0Db31OA1d6cmHyznNwI87QTdoyydd3bgnqwjA3tEr9iOIcXYAQ6j709zx4TmHx8ekNavRxkTQFNZaAkjPNO36c+I5wd2hfCnzMSAhuP+jl67QCeG7J5LmbyBmOUqq/a8j5QQQv8H78lPxPDHA+v1uWB/ClVecDERSYeb0s+8RLiH8i1IsEamhKgHBqHaJRaeMnX3WfA3MlSq45QhXSCB+YOcM30A31oQEnmobXZVxKSKsWf06ZfFqiX0R6H6pI8s7J4jlDktUk4sXUrvbyB+YSoc6goUZpq9b4J3ZsyioUoWP6HRd4SfWqa7p1FKItZ1j2kI0nU0kAuXZpZx5LTh6dUvKN+rfRMbHADTqPd3UOm//4480HQ/Ould63Cq+qvfs04gtGz3AIHRtTef/Kl9PpqxHWbDsbizknXE02N9yR1C/5aAAqF1cg/s+fP3A+Qh5SN6hH8UtakUAhVsXkhXbFEmHFW4aipeZy2+mpIE5XabnGL7nYAYLpycqDKgrNRYE1ta/md+c4eRQfBhWY/Nk7W+9kVFYhULe1AJfjRssQgAG8TZKFMU0NWn6DEf7IuTy9SpsbWHqG4UhtEtA+bKzkqDJ+jXcmNahFHZNaSDCTLfA1c9TMQWnDvTFInLyn4B6IfGTVMGMPgzPUX17e8ACNVjyO64DSs9CnPpMQHpinOszKzzzBVzc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b3o5MnFWM3R3SHBXOWE4NWtxa2dnMmwwaDEwNy90R1lWWmQzdGZZTmpSQzd4?=
 =?utf-8?B?cXljSEwrYWtCQ3NhemN6WUxqakxtUnJnVFN0NzFyemxmblBoUm5WNENWNmNC?=
 =?utf-8?B?YUg4YlZVSVdiUjVHR0IvUFZ3M29nZVZWbzJ1djRWRVcwZDFVODdNRjVnWVEz?=
 =?utf-8?B?TSt5elNsaXBVcmdrK1BGd1htY0V2MTNDR2ZsU0l3UEJFOEYxdGtlckpXVEZK?=
 =?utf-8?B?VjFqaU1iQ1pjRW81K2kzMFNOOFhwajU0TDNXZzN6aG1pNnRaU3FWVjBDS08z?=
 =?utf-8?B?bHB1Q204Uk9kZUJPOUtBRllIdHJvNk1tTWIvU2VncXdyNlplZlFjM3d5ZFJZ?=
 =?utf-8?B?Uy94VFVBU0RqWCsrUEx6aHg4ZERROUZKMWZ2VzdBcUUyVkM2QVRKSmpzVFpa?=
 =?utf-8?B?Ly8xazk1Rzd2VGNkV3MrN0pXeW9ld2YzKzVoUk1VWTk5UGFwNUh3UzZaVFAr?=
 =?utf-8?B?SU5uVHB2UXF6Mk9FZDJMaGtkMGpCRlZCc2xBeTIvSVZPT0pjUTJCbHd6Ym9x?=
 =?utf-8?B?YnZmNUREUkJwVXAvVjcyVStRVjZkdzhsTGlvUlpYajFSY0lsdTNNSDl6TEZK?=
 =?utf-8?B?bExVYTY3QmlFSWo5M1RQcnR5NGRCN0ZwU1BqRHhHZm04SlVQY2NVbCt3Rito?=
 =?utf-8?B?ZUJGRjJlS1NpR2dZK2xDdDZzR0dFcXJ3NHZzZ25JZE1tSzVYeDJ4ckdCODhv?=
 =?utf-8?B?bHQvbkI5akJ0WGtqcGxiSTFIamRWTHVXN3dCK1IwQTFNbDhHTFYzc2hPV241?=
 =?utf-8?B?TkR2NlNsVTNxOTBXZExaZnR0Wk1WNHBmeWNpM0VwQ0tjaEZFdFpScGF5OU51?=
 =?utf-8?B?WmtVeTlRWHN3b3NIT3JNVE9JdW82T0Q5L0h4VDcwYVZnY0lhTXFyRFQra3hV?=
 =?utf-8?B?dmxKTmdLWlQzaWpid01CeDR2K2hqa0RsY1lISzNJMTN2TWRLbDBsbklCdDdM?=
 =?utf-8?B?aW10OHNZZDNoSUJSUnlQRTlNTG1zNXE1cGxoeThhWXVTaDVlMng2MEhERFl1?=
 =?utf-8?B?OGdSNXZBemZRcW9INWdBSnc3R045RXpPTFdkbENyR2w4Y3JTZnJOSGNJc3Fy?=
 =?utf-8?B?Uy9kTUJXQ1RmcnRud1dURGtRdTl5RWtoWmhZbG5lYkFqNDlMdVZnUENSb3Zh?=
 =?utf-8?B?cElJQnVJSEd0NDlneGZHZ05xNTJMcmtpM09VM0ZWSk9LU0JoYnEvSG14RFV3?=
 =?utf-8?B?YXI2TVB4RndmaEFrRFkvSWxwcmFOeHFXR0NzL0JEZFErVFplMEpGcWRJcGNO?=
 =?utf-8?B?VTVMUHlnZmgrajNYbXZNU1JLVnhMSC8rOWE0V0E5RXdGNjl5ODNWaVdOZEZo?=
 =?utf-8?B?ckUxU0pTSW9hN1FacTZpdzZHNlBVRlJEOHF1aW1iNnBsaE9Jd0p1NVBQVU5F?=
 =?utf-8?B?eW9xZ3VoaGwyN1Yyb3RSOHZ6Z1VaZ3RiNVdac0xlRkIrSGF5TTExeFl5WldW?=
 =?utf-8?B?TzlQQ1QySml1Rk9BdGY0dVJPbGRYRHJsZkZGZUtrdWFIODc4eFk1dFdjVUlE?=
 =?utf-8?B?TkNnenNSczFUWk9KSS9teFA3LzRKREFoaEtDUThRc1NxUzZmWmF1NktJdEVW?=
 =?utf-8?B?ZVc1WUJyb3V3WS9ZVUpKUmFTRjAxZUlXTFk5ZzVGU2NZbi82T1dKLzNXL1Fj?=
 =?utf-8?B?c1c4a2dpZ1d0NGMycTYxSGVhS1Zrei9nQmNjeGlBMkp4L0VXcmRJRU93VVFS?=
 =?utf-8?B?WEhFYThNSzR2V2UxR3FCdjE0TnNYTWdJS1RJZG95dnd3U1pyNDVFeENkazFw?=
 =?utf-8?B?S1FtWnozTFV6aGZlaE9uc2NkMGxlczJzNHZlSnVhYmtXejZiNjlLMDZ4NThW?=
 =?utf-8?B?Z0tScnltWFZVUUtLbyswbDUwWmZyZ096RlE1VlFWTmZacU96TVNGWmZQMWNk?=
 =?utf-8?B?QWNteE4rd20ycnc1azZERjR2bVQ5eFhpeWNmNlkxN0EvemF1Ny9XdzRMdjIw?=
 =?utf-8?B?L0MrMGh1OXlOaTVHdFd3elBYQmMyZUtCZFN1WHZMcVVMaGZmOWtEUlo5Y1Er?=
 =?utf-8?B?Y1hSVlVWMWYrNVNvYlRQWGFNenJlaTdFaHdtSmRHSlBxc3hHUDcwZHB0Nk5i?=
 =?utf-8?B?dzlZZW1tZ1U5cERJcXJYYXQrcUpzWlIyQ3dyU0RnbHR6U1lQZUZqbWIyMGUz?=
 =?utf-8?B?ZzdyVEphRWtIOUw4SVZIazNTeVlzMWRwbDlVdmlNQXdwRks5Lzl5ODdWaGpL?=
 =?utf-8?B?Mk82YTVSNWNGWHNlWCtaU3BPOHE3c3o4V1RCNkRHTWxHd0JWNEJkRmFXbFlx?=
 =?utf-8?B?NTNTTkRCMElCNUlWbE9JZkpodzVyeVYrSWNGLzdSLzV2blYyU3VGQUJNdFVm?=
 =?utf-8?B?NHhpR2hJazEvQ3lrd3VlbGRSWkJQUHBpZzBTYUdoSHV1MFpPc2YwakpnSUhk?=
 =?utf-8?Q?3IG5aJ4K/o1tPxNY=3D?=
X-Exchange-RoutingPolicyChecked: maIVo6v8NHzrlT1aNBfniCiXUyUbk6ZwfZQsMLO95CShiLWJScTTqu7EBLAJD4SOmYdx0O8a3X8tKFqYakV1c2T/s+iDFK8VkBgMTcHRglxvdCFeBqGu/JdoNikqpVJKKnaIFeMEIf0lgkQ9DKr6qe2hNCxsu/kuLXosCqp35kY7Y9IuiDsCuBRhyovzOaRps5CaOKw89FwvwxOb+MLjcLPDkpvrbrc7ZUr8zcwx1Lxo7BaynCtwG8x4P0DBSgGvVLO86vRhV0ov875B3y19eLADirTCYA9uIAuX612Y7n+Evp48r2y1vMmkIPOfFAqd7m/tK8CXrSF2BZH9uvfbBg==
X-MS-Exchange-CrossTenant-Network-Message-Id: aecdcc0c-63d0-4cdb-6539-08dea610d1f1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 17:00:30.9468 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bNSXNAooyYYTQRmhQx2Wux2btbM00uBvKVfCGxaPMj5/4xuW1pdcipUZN0jPNXyoh3u0T6OGjaeIIEH24R4uT3d5j1x/6cPgOlzG273zEAc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7163
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
X-Rspamd-Queue-Id: 6F7DC497DCE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]


On 4/29/2026 5:44 PM, Ville Syrjälä wrote:
> On Tue, Apr 28, 2026 at 02:03:23PM +0530, Ankit Nautiyal wrote:
>> intel_panel_fixed_mode() intends to choose a fixed mode at or above the
>> requested refresh rate for VRR panels, so the requested refresh can be
>> reached by extending vblank.
>>
>> This is called in compute config to find the 'best' fixed mode for a
>> requested mode and also called during mode valid phase to prune the
>> unsupported fixed modes.
>>
>> For Non-VRR panels there is no issue:
>> - When a user wants to do a full modeset (sets DRM_MODE_ALLOW_MODESET
>>    flag) with a custom mode, the intel_panel_fixed_mode() gives the mode
>>    with refresh rate nearest to the requested mode.
>> - Seamless switch to a lower mode is only possible if the platform has
>>    support for Double buffered MN and the sink is Seamless-DRRS capable.
>>    In this case the user sets a lower refresh rate mode and doesn't set
>>    the DRM_MODE_ALLOW_MODESET flag the intel_panel_fixed_mode() returns
>>    again the fixed mode whose refresh rate is nearest to the requested
>>    mode.
>> - Since Duble buffered MN is not supported on LNL+, the seamless switch
>>    is not possible for such panels from LNL+.
>>
>> For VRR panels the current logic has some issues:
>> - For VRR panels intel_panel_fixed_mode() intends to choose a fixed mode
>>    at or above the requested refresh rate so the requested refresh can be
>>    reached by extending vblank.
>> - However, as per the current logic the helper can return a lower refresh
>>    rate mode, if the lower refresh rate mode is first in the list of fixed
>>    mode. Later, if the selected fixed mode's refresh rate < the requested
>>    mode's refresh rate, then the requested rate is matched by extending
>>    the vblank.
>> - In case of a full modeset request with a custom mode this is not a
>>    problem. But for the seamless switch features like LRR (Lower Refresh
>>    Rate) and the Seamless-DRRS this creates a problem as this results in
>>    change in vsync_start/end and resulting in a full modeset.
>> - Furthermore, as with the Non-VRR panel case, the Seamless-DRRS is not
>>    supported on LNL+, but for VRR panels, the vblank can be extended
>>    similar to LRR case. But due to the above mentioned problem in the
>>    intel_panel_fixed_mode() this also results in full modeset.
>>
>> To solve these problems for the VRR panels, identify if the user wants a
>> full modeset or expects seamless switch. If seamless switch to a lower
>> mode is desired, make intel_panel_fixed_mode() return the highest
>> refresh rate mode, provided the requested rate is in vrr range. This
>> will then be modified to extend the vblank to provide the desired
>> refresh rate.
>>
>> This is particularly needed for DRRS panels on platforms without the
>> double buffered M/N support (display version 20+), where seamless clock
>> changes are not possible.
>>
>> To understand the user requirement for full modeset/seamless switch, the
>> intel_panel_fixed_mode() and intel_panel_compute_config() need access to
>> the connector state to check the allow_modeset flag.
>>
>> Add a nullable conn_state parameter to both. The mode_valid callers pass
>> NULL since they have no atomic state and the compute_config callers pass
>> their conn_state.
>>
>> Also remove the VRR check from is_best_fixed_mode() since the selection is
>> handled upfront in intel_panel_fixed_mode().
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/icl_dsi.c     |  2 +-
>>   drivers/gpu/drm/i915/display/intel_dp.c    |  6 ++--
>>   drivers/gpu/drm/i915/display/intel_dsi.c   |  2 +-
>>   drivers/gpu/drm/i915/display/intel_dvo.c   |  6 ++--
>>   drivers/gpu/drm/i915/display/intel_lvds.c  |  4 +--
>>   drivers/gpu/drm/i915/display/intel_panel.c | 35 +++++++++++-----------
>>   drivers/gpu/drm/i915/display/intel_panel.h |  6 ++--
>>   drivers/gpu/drm/i915/display/intel_sdvo.c  |  8 ++---
>>   drivers/gpu/drm/i915/display/vlv_dsi.c     |  2 +-
>>   9 files changed, 37 insertions(+), 34 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index afbaa0465842..1efe81404d01 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -1671,7 +1671,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>>   	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>> -	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
>> +	ret = intel_panel_compute_config(intel_connector, adjusted_mode, conn_state);
>>   	if (ret)
>>   		return ret;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 35b8fb5740aa..f014ce28e69f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1588,7 +1588,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
>>   		return MODE_H_ILLEGAL;
>>   
>> -	fixed_mode = intel_panel_fixed_mode(connector, mode);
>> +	fixed_mode = intel_panel_fixed_mode(connector, mode, NULL);
>>   	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>>   		status = intel_panel_mode_valid(connector, mode);
>>   		if (status != MODE_OK)
>> @@ -3577,9 +3577,9 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>>   	struct intel_connector *connector = intel_dp->attached_connector;
>>   	int ret = 0, link_bpp_x16;
>>   
>> -	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
>> +	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode, conn_state);
>>   	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>> -		ret = intel_panel_compute_config(connector, adjusted_mode);
>> +		ret = intel_panel_compute_config(connector, adjusted_mode, conn_state);
>>   		if (ret)
>>   			return ret;
>>   	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
>> index 9005c1f5d857..a480bb79dca7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
>> @@ -64,7 +64,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
>>   	struct intel_display *display = to_intel_display(connector->dev);
>>   	struct intel_connector *intel_connector = to_intel_connector(connector);
>>   	const struct drm_display_mode *fixed_mode =
>> -		intel_panel_fixed_mode(intel_connector, mode);
>> +		intel_panel_fixed_mode(intel_connector, mode, NULL);
>>   	int max_dotclk = display->cdclk.max_dotclk_freq;
>>   	enum drm_mode_status status;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
>> index 405b33aca9dd..0ec25d895777 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
>> @@ -224,7 +224,7 @@ intel_dvo_mode_valid(struct drm_connector *_connector,
>>   	struct intel_connector *connector = to_intel_connector(_connector);
>>   	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
>>   	const struct drm_display_mode *fixed_mode =
>> -		intel_panel_fixed_mode(connector, mode);
>> +		intel_panel_fixed_mode(connector, mode, NULL);
>>   	int max_dotclk = display->cdclk.max_dotclk_freq;
>>   	int target_clock = mode->clock;
>>   	enum drm_mode_status status;
>> @@ -259,7 +259,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
>>   	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>>   	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
>>   	const struct drm_display_mode *fixed_mode =
>> -		intel_panel_fixed_mode(intel_dvo->attached_connector, adjusted_mode);
>> +		intel_panel_fixed_mode(intel_dvo->attached_connector, adjusted_mode, conn_state);
>>   
>>   	/*
>>   	 * If we have timings from the BIOS for the panel, put them in
>> @@ -270,7 +270,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
>>   	if (fixed_mode) {
>>   		int ret;
>>   
>> -		ret = intel_panel_compute_config(connector, adjusted_mode);
>> +		ret = intel_panel_compute_config(connector, adjusted_mode, conn_state);
>>   		if (ret)
>>   			return ret;
>>   	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
>> index cc6d4bfcff10..2e30bc3f1e62 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>> @@ -396,7 +396,7 @@ intel_lvds_mode_valid(struct drm_connector *_connector,
>>   	struct intel_display *display = to_intel_display(_connector->dev);
>>   	struct intel_connector *connector = to_intel_connector(_connector);
>>   	const struct drm_display_mode *fixed_mode =
>> -		intel_panel_fixed_mode(connector, mode);
>> +		intel_panel_fixed_mode(connector, mode, NULL);
>>   	int max_pixclk = display->cdclk.max_dotclk_freq;
>>   	enum drm_mode_status status;
>>   
>> @@ -460,7 +460,7 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
>>   	 * with the panel scaling set up to source from the H/VDisplay
>>   	 * of the original mode.
>>   	 */
>> -	ret = intel_panel_compute_config(connector, adjusted_mode);
>> +	ret = intel_panel_compute_config(connector, adjusted_mode, conn_state);
>>   	if (ret)
>>   		return ret;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
>> index 5e918ee0c8ea..65d017371d78 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>> @@ -59,24 +59,13 @@ intel_panel_preferred_fixed_mode(struct intel_connector *connector)
>>   					struct drm_display_mode, head);
>>   }
>>   
>> -static bool is_best_fixed_mode(struct intel_connector *connector,
>> -			       int vrefresh, int fixed_mode_vrefresh,
>> +static bool is_best_fixed_mode(int vrefresh, int fixed_mode_vrefresh,
>>   			       const struct drm_display_mode *best_mode)
>>   {
>>   	/* we want to always return something */
>>   	if (!best_mode)
>>   		return true;
>>   
>> -	/*
>> -	 * With VRR always pick a mode with equal/higher than requested
>> -	 * vrefresh, which we can then reduce to match the requested
>> -	 * vrefresh by extending the vblank length.
>> -	 */
>> -	if (intel_vrr_is_in_range(connector, vrefresh) &&
>> -	    intel_vrr_is_in_range(connector, fixed_mode_vrefresh) &&
>> -	    fixed_mode_vrefresh < vrefresh)
>> -		return false;
>> -
>>   	/* pick the fixed_mode that is closest in terms of vrefresh */
>>   	return abs(fixed_mode_vrefresh - vrefresh) <
>>   		abs(drm_mode_vrefresh(best_mode) - vrefresh);
>> @@ -84,15 +73,26 @@ static bool is_best_fixed_mode(struct intel_connector *connector,
>>   
>>   const struct drm_display_mode *
>>   intel_panel_fixed_mode(struct intel_connector *connector,
>> -		       const struct drm_display_mode *mode)
>> +		       const struct drm_display_mode *mode,
>> +		       const struct drm_connector_state *conn_state)
>>   {
>>   	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
>>   	int vrefresh = drm_mode_vrefresh(mode);
>>   
>> +	/*
>> +	 * With VRR always pick the highest refresh rate mode,
>> +	 * which we can then reduce to match the requested
>> +	 * vrefresh by extending the vblank length.
>> +	 */
>> +	if (conn_state && !conn_state->state->allow_modeset &&
> The foo_state->state pointer should never be used. If you need the full
> atomic state then plumb it through from the top.

Hmm noted.


>
>> +	    intel_vrr_is_capable(connector) &&
>> +	    intel_vrr_is_in_range(connector, vrefresh))
>> +		return intel_panel_highest_vrefresh_mode(connector);
> What we want is the fixed mode that matches the current adjusted mode
> exactly except for vtotal, and I think we also want to maintain the
> vsync pulse location relative to vtotal.

Oh alright. I was thinking the issue is in the best mode logic which is 
resulting in lower mode getting picked when we wanted a higher mode as 
best fixed mode.

I was under the impression that since the vsync start/end of lower is 
not the same with the higher mode and since this cannot be modified on 
the fly, it results in full modeset.

However, as you said, vsync start/end can be modified indeed the problem 
becomes:

- we are not scaling the vsync start/end similar to what we are doing 
for vtotal.
- even if we do that, we need to remove the check for vsync start/end 
for fastboot.

Another consideration is that is the vsync_start should be inside the 
vrr guardband, but I think if the vsync_start scales up then it will 
still be inside the guardband so we should be covered.


>
> We should in fact fix the vsync_start/end mess first.

You mean the existing vsync_start/end change due to AS SDP thing? Or you 
mean the above mentioned scaling up?


> We need to add
> TRANS_VSYNC handling to the LRR codepaths and allow that to change
> during fastsets. And intel_panel_compute_config() needs to preserve
> the vtotal-vsync distance when adjusting vtotal. I think that should
> all be fine for DP since it doesn't really use TRANS_VSYNC for
> anything.

Hmm I think I got some direction here. Thanks for making it clearer.


Regards,

Ankit

>
> +
>>   	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
>>   		int fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
>>   
>> -		if (is_best_fixed_mode(connector, vrefresh,
>> +		if (is_best_fixed_mode(vrefresh,
>>   				       fixed_mode_vrefresh, best_mode))
>>   			best_mode = fixed_mode;
>>   	}
>> @@ -213,10 +213,11 @@ enum drrs_type intel_panel_drrs_type(struct intel_connector *connector)
>>   }
>>   
>>   int intel_panel_compute_config(struct intel_connector *connector,
>> -			       struct drm_display_mode *adjusted_mode)
>> +			       struct drm_display_mode *adjusted_mode,
>> +			       const struct drm_connector_state *conn_state)
>>   {
>>   	const struct drm_display_mode *fixed_mode =
>> -		intel_panel_fixed_mode(connector, adjusted_mode);
>> +		intel_panel_fixed_mode(connector, adjusted_mode, conn_state);
>>   	int vrefresh, fixed_mode_vrefresh;
>>   	bool is_vrr;
>>   
>> @@ -414,7 +415,7 @@ intel_panel_mode_valid(struct intel_connector *connector,
>>   		       const struct drm_display_mode *mode)
>>   {
>>   	const struct drm_display_mode *fixed_mode =
>> -		intel_panel_fixed_mode(connector, mode);
>> +		intel_panel_fixed_mode(connector, mode, NULL);
>>   
>>   	if (!fixed_mode)
>>   		return MODE_OK;
>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
>> index 2f7a317995ea..c1189a20c8b2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.h
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
>> @@ -32,7 +32,8 @@ const struct drm_display_mode *
>>   intel_panel_preferred_fixed_mode(struct intel_connector *connector);
>>   const struct drm_display_mode *
>>   intel_panel_fixed_mode(struct intel_connector *connector,
>> -		       const struct drm_display_mode *mode);
>> +		       const struct drm_display_mode *mode,
>> +		       const struct drm_connector_state *conn_state);
>>   const struct drm_display_mode *
>>   intel_panel_downclock_mode(struct intel_connector *connector,
>>   			   const struct drm_display_mode *adjusted_mode);
>> @@ -47,7 +48,8 @@ enum drm_mode_status
>>   intel_panel_mode_valid(struct intel_connector *connector,
>>   		       const struct drm_display_mode *mode);
>>   int intel_panel_compute_config(struct intel_connector *connector,
>> -			       struct drm_display_mode *adjusted_mode);
>> +			       struct drm_display_mode *adjusted_mode,
>> +			       const struct drm_connector_state *conn_state);
>>   void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
>>   				      bool use_alt_fixed_modes);
>>   void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connector);
>> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> index 2e1af9e869de..e07c1070a3ec 100644
>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> @@ -797,7 +797,7 @@ intel_sdvo_create_preferred_input_timing(struct intel_sdvo *intel_sdvo,
>>   
>>   	if (IS_LVDS(intel_sdvo_connector)) {
>>   		const struct drm_display_mode *fixed_mode =
>> -			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>> +			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, NULL);
>>   
>>   		if (fixed_mode->hdisplay != args.width ||
>>   		    fixed_mode->vdisplay != args.height)
>> @@ -1396,11 +1396,11 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
>>   		pipe_config->sdvo_tv_clock = true;
>>   	} else if (IS_LVDS(intel_sdvo_connector)) {
>>   		const struct drm_display_mode *fixed_mode =
>> -			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>> +			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, conn_state);
>>   		int ret;
>>   
>>   		ret = intel_panel_compute_config(&intel_sdvo_connector->base,
>> -						 adjusted_mode);
>> +						 adjusted_mode, conn_state);
>>   		if (ret)
>>   			return ret;
>>   
>> @@ -1562,7 +1562,7 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
>>   	/* lvds has a special fixed output timing. */
>>   	if (IS_LVDS(intel_sdvo_connector)) {
>>   		const struct drm_display_mode *fixed_mode =
>> -			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>> +			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, conn_state);
>>   
>>   		intel_sdvo_get_dtd_from_mode(&output_dtd, fixed_mode);
>>   	} else {
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> index 76e8cd0f65a4..bfe465443d20 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -280,7 +280,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
>>   	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   
>> -	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
>> +	ret = intel_panel_compute_config(intel_connector, adjusted_mode, conn_state);
>>   	if (ret)
>>   		return ret;
>>   
>> -- 
>> 2.45.2
