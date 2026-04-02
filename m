Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJ9zGofkzWlVigYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 05:37:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7C3383356
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 05:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B36110E155;
	Thu,  2 Apr 2026 03:37:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mgC1fyX+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BC1D10E0E5;
 Thu,  2 Apr 2026 03:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775101059; x=1806637059;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JOO5sNvlsG4GDMpnfV1pOWF7OVtTBjxjP1xqSPiuRvI=;
 b=mgC1fyX+KBWb0RnR8S6H4yetFfUF3DhORC7aSIMNtTTmULONlTSELrbX
 zDVoy4boDXC+1LvFrHgrbkd8SR+vtsHt1a2Vt0W8/YlOPzqBNLz+xd8Y/
 ppwkXE6kvWw0dgBxCMVlM7djD66GDTA5UxHZvBfHHfBmC/BXgDUuKJ/Y0
 vOVQd/RgFQfTAAtnIMP0JHUOdAfPIA1GAD39Jtwfiw/2k4qUqZv6KbiGy
 tLgnGAXhJ++3oUxzxORILyM5tXx/IJnAv1OenkK3IpBcwwVMz+aLHw78/
 /MsrJPRn9RosZ5fncc9nWVcB7vPiU7tQh8WliKnZHuuX3skXdeif9fpiz g==;
X-CSE-ConnectionGUID: XxJLgrN6RumsZJ81zCDkJg==
X-CSE-MsgGUID: 8fAvlwbpSS+kff+7WaJ8+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="86853285"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="86853285"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 20:37:38 -0700
X-CSE-ConnectionGUID: b1Xup1k1Sra5fLbOxg+K4Q==
X-CSE-MsgGUID: NUdpCpPwQHiUm7/SJaVjcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="222501726"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 20:37:38 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 20:37:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 20:37:37 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.29) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 20:37:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XYFS4wUJ2btNAHTqlkOSJ6q5svQhGYsq9144EsisGFdbCdSUKvAvbDWgdRnLh2oRX/01pz1oXNtq0JCfD8hLexh/Ztz9aJDdHRY38CrIzo2ff9F4ySdDwH9TLAKpGfWFkVUXEkBbxIEZ9LT7irKuedpNIGcg3NqMeMz+iaqoEQ8lUsuEOOWVpUXJFcdBzDRqtXMD7SfxCvVo1igSRfAeCVrxwm+JkM0QdgjYYGaYDqSDtNOXDdefpnBhW9J10HwMiK2/YvyK9/EyCcYNrXuNcSOcg279D19YzP0aWMSGEyg569dikKlv+vKX9cUNjBoqJa/QA/GENQ9J97p1EMQfaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=olwLTIftk1+2GreNPW6kWRQBupDNnPXsHHEOttn8hMU=;
 b=Atw9Azu8NhZmRJoJKNxTI6OsVuhJERfnGud6glKdmc+Om/qqSZXe9gvukcQHGoiCNassOioxc0psAW5MMMQH2p1U2GLHBXoebUBmP4vmDhV5YnRu/w34IJPPYKjATgm9G5hWSecKBb5+GoXYtImKTqMJDHzaaudKMkul4gf0M8Q0KTqIlqTQr6Fs89xna4JJrjISbxtJyFbjt5Ur4vaShsslsmtdXSXwVail7XQxAQsXls1gGdMBXF/134rTVovkBEXCh6PGte9ZBGv1z2RDdku1Wb8mDBBo58h8B833+MJfd7PX5NyYdJLeeiimanC/sGe5djyLffNzlUncb5/U8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CYYPR11MB8387.namprd11.prod.outlook.com (2603:10b6:930:c8::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.6; Thu, 2 Apr
 2026 03:37:20 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9769.017; Thu, 2 Apr 2026
 03:37:20 +0000
Message-ID: <4631d1f9-0b75-4c8f-b3f4-39d3ebebd53e@intel.com>
Date: Thu, 2 Apr 2026 09:07:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 =?UTF-8?B?SsOpcsO0bWUgVG9sbGV0?= <jerome.tollet@gmail.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
References: <CADN_a6OKUQ6fgu-JjNvwFb_MV8dxTDhppoq4DDnQ9p_t-JZ8yg@mail.gmail.com>
 <IA0PR11MB7307698A73C8C19F2A8C275CBA50A@IA0PR11MB7307.namprd11.prod.outlook.com>
 <45c89720-1214-40c4-a7f3-7f36376cfb04@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <45c89720-1214-40c4-a7f3-7f36376cfb04@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0063.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b7::8) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|CYYPR11MB8387:EE_
X-MS-Office365-Filtering-Correlation-Id: 77b437d5-9264-4924-109e-08de9069250f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: jJHwuqW7XrKmY8IsZ0cYqVUJUhrMqBQ8IwpRfZdU3gGY94Mi7Sh4m1mQiurnv9oRNz4m8CFW1xA+iCw40umGuHIdhLnMGcYA3KO4wGLTB6MaSf5zlq2EMSXTyzP9XkwXvFoaNSkLlq+tRWELAaJ0xRfFFYyUR7BRlCVWvZaJOFhLpYi+siS57ocenZsh5U6+lJ016DAaorm578PQGMcUYAmmw4PZJAtPaAlMyP6ufXm4g0mRoJLE+NgFdSNDf1RBC5sTCe3LjtrCf/X0MfXNYWiZtztzhimSqawRCHjzoViBqg7c0FcM/3HENkzbJNa0HpxpMIhyOrgo0lqIcNVxsLLyrP32KeGS6xNXSHdkJbJ2W+XQPB4P+ZHNCpfaeYKxHJPNxlxqSq7Y0CW0iFufzOeQa7EYaxYxoCQ9dbbeWshlc61aPirvRJakq14M/f8La6X8rhvhF0lsYvXl8QwAjWep8ymZdrA9PDy26prtNzkiRQLG2XGFcNe21sQHw1H9cz4OOM0Pkvk0E4ldOQgr/Ruf/lcI2O+AldGQFCpI+dJHzf4CmQER/lhrqnCrLJMfik4o6mnlX390EPMLuSupqcNfNKcaiWiC6M16AaqFLMxk+rrGWBLbOEKb6aYhHJv0veTJOrqefRUr4g4/OM0oDcRYWNYGyGNNxXoKg0kb7fzpSuJfSFwkeHE3XNHdul8G
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2s5UGZiSjQ5UGpKVU42QlNqcXNCNit1MEFjZ0FmMnJwcDB0RFdVMk5WRzdQ?=
 =?utf-8?B?SXpGa1ZrVWwwL3NnRmVWYnJZaHNlaldDN3ovTmdRQVNRSkgvNlZZRU5JYy92?=
 =?utf-8?B?TnZ0Yi96cjdsMG1lbVQxQkFXbC9IWkZ0ZUR2M1kvY25aWnNBV0JvdzFlbWYz?=
 =?utf-8?B?c21RRDlvbHZzVG4ySFdKK1JZSWtnM1ZJcGxQWi9RdjdNUE5kU0QzUXJzL2xC?=
 =?utf-8?B?M2RsYVVGVlFDU0dFNUdUL0o3Y2VsQjFib3ZvQ2xFMVlHWTVZTm5IS2dHbTFS?=
 =?utf-8?B?aHZ3djVCK3JIZzR5SndFNHo2MUVGQlZYcGh2QkRPT2hkWmdPa1loZWMraG9R?=
 =?utf-8?B?REQyaG5xUjU3VUV0RE1EcU4rcFA4WkVpOUc1VktZNWlsRUlvTDlmS1VKcCtB?=
 =?utf-8?B?RGRmWnNZVVl4OWhKNHh2UENBMkkyRmR4aWJuNEVVOVBtbEN0WXpmbUJWTEp1?=
 =?utf-8?B?NytmcjRFdjZ4a1BZajArSko3ZUFDcWlMYzRpSmxiSWZiZkJaSWNPUXN0ak00?=
 =?utf-8?B?MnBFQmt5UC9JRVVMQmxwUzNSY3VoQ05NSVI2MGlneWZIOS9rK3FvQmZsN0Rw?=
 =?utf-8?B?eUZ4SHlUYkRUamJJUjd3Vng4SzNVNE9QZzJrdFIyNm5XMEd2UE5VclBralhD?=
 =?utf-8?B?S05HKytKaUcrcG9UVS9IZ0UzZEJrSW5ycXBaSjFFWExocVNjRloxQ2RzRW5Y?=
 =?utf-8?B?OS94SWtraXlMTlUyUTlIZVRrN2UwUDA4eEZack5JeEdhaWRWNW5UWk1lbHhS?=
 =?utf-8?B?VTB3TC9nZDBVeFFrQVFmMkF2Sm9GbjBRMFd4K0pKZWQxRllHL25YZTl4RjQ3?=
 =?utf-8?B?WVVtOU1YOHcrcWpxQ0NqQmdHb0F4VGhEckZtaFlERGpzT2dJeFZOVFd0M2NZ?=
 =?utf-8?B?ZUJhMXJHUnZtd0RHYndTdzNwU2lVdmdtc3ROY2FWVENNU3E0RlRsSkdVNTc4?=
 =?utf-8?B?WEw2dUtnOHlETW13QjZqNVBEN0Z6K0VyZUhuUWhqbXlrNUY0bHZVeHhiZWFY?=
 =?utf-8?B?TUFvSTFPMGFjSGxrWFNOb0szQ1ZDWUx1MFBzZGx5WmtnVmswT1NQamI3WmQ4?=
 =?utf-8?B?NWFZeEVYVUZ2Q09YQWhXV2lIVUZkbThZanBZS0R3dGFjL0VJOWMvckpLWkV0?=
 =?utf-8?B?N0lSQ3I0R0Y3NmEvQUZzcGd1R0JSU0JPbkZKanZHbUl6YUxoaHBwYlpMeFBN?=
 =?utf-8?B?b2Nnb0hzRHBzSFNqVmpMNS9LNm4xbkc3cE1PWTc5MGZQZnI1em90bjJibUx6?=
 =?utf-8?B?bFBGUVpSMkpoNm90Y2U5TG9SMUUyS1FNeTB2T0o4Z3NscmJ0WnVkdkdxR21Y?=
 =?utf-8?B?cm16NVhmUmRWTGhrSUZaYjgwekU1MUFkN3BqN29pWW9UTGNZOCs2OWxEWE1l?=
 =?utf-8?B?OHZvMm44MXFFRXVGRkRQNVZsa1Znb1drMnBxM0VZTExKcDVYY3pJZUh4N25I?=
 =?utf-8?B?TG83bHVGQ3FORjdXcmxBbFkyQUNoV1FERFVzaGs2N3hxdnBtOUJlamtPQm4v?=
 =?utf-8?B?WWQ2b0R3VGZpdkNxSFpBeUtTVGdzaHlPTGw2d09lQ09RdmZ3WDhTcW45aEhl?=
 =?utf-8?B?dStlR2FsQ3JJSmpMSmV3RnN2T09YSVpwRUhhdU5NaXlnenFvSlRHdEVHSmRr?=
 =?utf-8?B?OFQrM09abnQ1MGJQN2FVZzJOQVpVSnRycDA2UVhOa2JLZ1hhTE9nNzB0UEI0?=
 =?utf-8?B?Ykk4dDRMdTBjS3I0S3lwUTJ3aUpFa3JqOVEzTkEzTWNZUU9tS1A5dlJtV29p?=
 =?utf-8?B?TTFDajErWm9BSEx6SGVJU2QrVnllWHZiZ1djVkx5cHBXMUZ5ckloSVFGRURE?=
 =?utf-8?B?RXJCOHZpL3VtT1FaODZHQ3hCOTlrMVdNbWlWRkl5RkhkWjVQVDJzVWViUG5w?=
 =?utf-8?B?a2ZHS0NJS2JiNE1JRW9EUi9vWGlwckVpUWxzalE0QklHdFRlM1BHNGNVc0ZZ?=
 =?utf-8?B?M3MrMkFhc1YreGN2ZCt0V3U3OUUxYWIzdEkyZVIya21pWURZdzlvUjlDYkY3?=
 =?utf-8?B?bmZKcEovZVJ3MHN5R25vSk80bHdPa1pKS3BxVjhmVDUwZkNPVjkzcURsMmVV?=
 =?utf-8?B?b2RlYWtTdFVyaCtUZ3F6bDdlRm5pUHBaQVNVVVVhTnZZV3Z0YkVUN1paUWVK?=
 =?utf-8?B?ZW1KUVUvYXpVYVRVRC85OUE3YjNqK0tnUVVvanNFNUdjd3RNNUNaamJ4b3Z5?=
 =?utf-8?B?NmRQa25JREtSY1U5RFhZOVlkenNvZkpKVmhPMVB5TTJRU3RpYmRxWEpvWDYv?=
 =?utf-8?B?a2tiamN2RHZLdGEzdVJVRTE2RElIMmNJVUs5cFI0TGJ5eXZQU0p6ODdOeDcv?=
 =?utf-8?B?eEZ5cnJJVWNKUzY4ZjBzMVdYTi9PaXJJYmZIQVEvVkVOeG5rSWhnUT09?=
X-Exchange-RoutingPolicyChecked: Paa8lV+KBS2kPGgmn9zurGok1q19Eqy277ez23ubiSQfRThihe24cv9fBkl59IpaOqdKzL02PjobVnIGVOmYCidbMhd4BCzC3n5fCbUIt9hMB+1GC+hlPLzFWEJJVCRSLBnRao+TUBhdHxH80yJ4ZAEGNv2nMCJ2hZLfV3zAvVAgAu8hkz91ixDJ3iUc+k4e0qYBKuseHXk4rW4lKJLTjq4uc4W4PPJY/7KFAruT1ChXaGJ9H39+abKtuMT5pPeidZ2Egly4Pr7SPMkU1tz1jdZwgf5GusPQ3IvKvdOTzT4y01TQcdblprf6gCtZPWOHBORkOhyDip9wBaNcx69gHw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 77b437d5-9264-4924-109e-08de9069250f
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 03:37:20.4887 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GIGmTfvkuQWh/52/rQpzovMsn0KbeFoBzeeoFzo6maAj80CC7dIGk5X4bDp0A6aEWaVEEwHFgAqGQF1mKhu+OQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8387
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[intel.com,gmail.com,linux.intel.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[60hz:email,lists.freedesktop.org:email,gitlab.freedesktop.org:url];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9F7C3383356
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 01-04-2026 18:30, Nautiyal, Ankit K wrote:
>
> On 4/1/2026 3:11 PM, Murthy, Arun R wrote:
>>
>>> -----Original Message-----
>>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf 
>>> Of Jérôme
>>> Tollet
>>> Sent: Thursday, January 8, 2026 2:38 PM
>>> To: Jani Nikula <jani.nikula@linux.intel.com>; Vivi, Rodrigo
>>> <rodrigo.vivi@intel.com>; Nautiyal, Ankit K 
>>> <ankit.k.nautiyal@intel.com>
>>> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>>> Subject: [PATCH v2] drm/i915/hdmi: Poll for 200 msec for
>>> TMDS_Scrambler_Status
>>>
>>> Hello,
>>> As per HDMI 2.0 specification, after scrambled video transmission 
>>> begins,  the
>>> source must poll the TMDS_Scrambler_Status bit until it reads 1 or  
>>> until a
>>> timeout of 200 ms.
>>>
>>>   Add a polling step after enabling the HDMI port to verify 
>>> scrambling  status,
>>> following the spec requirement.
>>>
>>>   Without the wait for the scrambling bit to set, some HDMI 2.0 
>>> monitors fail  to
>>> decode the signal at 4K@60Hz (594 MHz) when SCDC scrambling is not yet
>>> fully configured by the sink.
>>>
>>>   v2:
>>>    - Instead of the fixed delay, poll for TMDS scramble status for 
>>> 200 msec
>>>      as per the HDMI spec. (Ankit)
>>>
>>>   Reported-by: Jerome Tollet <jerome.tollet@gmail.com>
>>>   Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6868
>>>   Link: https://lore.kernel.org/dri-devel/20251230091037.5603-1-
>>> jerome.tollet@gmail.com/
>>>   Signed-off-by: Jerome Tollet <jerome.tollet@gmail.com>
>>>   Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>   ---
>>>    drivers/gpu/drm/i915/display/intel_ddi.c  |  2 ++
>>>    drivers/gpu/drm/i915/display/intel_hdmi.c | 25 
>>> +++++++++++++++++++++++
>>>    drivers/gpu/drm/i915/display/intel_hdmi.h |  2 ++
>>>    3 files changed, 29 insertions(+)
>>>
>>>   diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
>>> b/drivers/gpu/drm/i915/display/intel_ddi.c
>>>   index cb91d07cdaa6..c708b713f0e8 100644
>>>   --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>>>   +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>>>   @@ -3506,6 +3506,8 @@ static void intel_ddi_enable_hdmi(struct
>>> intel_atomic_state *state,
>>>    }
>>>
>>>    intel_ddi_buf_enable(encoder, buf_ctl);  +  +
>>> intel_hdmi_poll_for_scrambling_enable(crtc_state, connector);
>>>    }
>>>
>>>    static void intel_ddi_enable(struct intel_atomic_state *state,  
>>> diff --git
>>> a/drivers/gpu/drm/i915/display/intel_hdmi.c
>>> b/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>   index 055e68810d0d..958d939ae6ee 100644
>>>   --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>   +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>   @@ -2694,6 +2694,31 @@ intel_hdmi_add_properties(struct intel_hdmi
>>> *intel_hdmi, struct drm_connector *_
>>> drm_connector_attach_max_bpc_property(&connector->base, 8, 12);
>>>    }
>>>
>>>   +/*
>>>   + * As Per HDMI 2.0 spec: after scrambled video transmission 
>>> begins,  + * poll
>>> TMDS_Scrambler_Status until it reads 1, for up to 200 ms.
>>>   + */
>> Can you point out to the section in the spec?
>
> HDMI Specification 2.0
>
> Section 6.1.3 Control
>
> Subsection 6.1.3.1 Scrambling Control
>
> Mentions about the polling for TMDS_Scrambler_bit for 200msec.
>
>
Please add this sec and sub-sec details in the comments.
Upon adding this

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>


Thanks and Regards,
Arun R Murthy
--------------------

