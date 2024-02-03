Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4998848684
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Feb 2024 14:32:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E3E10F3CE;
	Sat,  3 Feb 2024 13:32:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QUpXQSkB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Sat, 03 Feb 2024 13:32:37 UTC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3398C10F3CE
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Feb 2024 13:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706967158; x=1738503158;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=BCoc+luxrnid6xR+Wlhti9yb/qAU9jndwRSBf9+MNmE=;
 b=QUpXQSkBIq0Gb78D2tHX3pA2AxTdfioK40l4m+g3UaPL3AAyCVvIxUm0
 qP7sCRwi+p9abPkSAiNBVpGxMm9+w9cbIxX5VfxueleJP0LhWYcmdgSyB
 BF540hyBs50VXPdxvTkKu3JIp1eWFqmdmQYQ3oE4gQK8kd1KYkNcGFOGB
 OG0Ngj5tPIAH1+D5ecHMzqxh5CIp/J2KulLvuTrvboP0Vm+ZurlawQtmt
 +x0qf7p2Xz1sbv7krX0piKEJ17m8pNrIc4W7Nqnz3UMpehmbzTRCjQGyy
 j87nc6D89ZxstlLBR80GL+gTiG7bVO4zVedoOK8mpAmJNq73CTN21ap6N Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="235782"
X-IronPort-AV: E=Sophos;i="6.05,240,1701158400"; 
   d="scan'208";a="235782"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2024 05:25:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,240,1701158400"; 
   d="scan'208";a="4940811"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2024 05:25:27 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sat, 3 Feb 2024 05:25:26 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sat, 3 Feb 2024 05:25:26 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sat, 3 Feb 2024 05:25:26 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sat, 3 Feb 2024 05:25:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hUEzZlRBjJJzY2jeEna3XyyLCeeM+joXgwyb9186KbCWFkse6TTXPGxb7K0FYFLK8xYetPunDipuzQLbfjTrg8O5KTCGy4dRYjl0Upk+D/Enw8XCU15WQWt1SY+aaWzOTirx7LQWqmQfGIoMsFhHQ42h61K1kkKoI3NmOwTK0V3a+NovUa2kX5UoRjpMTNWfHrGl/c3cTLw0sTZiYKZPkswP4TcFBMVBa0FXaiSrLonSUNJnHkmJm8x3yjpqDd1I6paM2GKDlyfAO3u+dgMHkHbMRsTKyO0scVwPf7FQ9PYFvws1kae2vnlCuY8IwAO93Vci/Ycj7Q3MzOPAzd3HZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i2zxyJjyvpv44WJcd0u68txq/vpWtSoBQLmiSC2Q7Do=;
 b=KFCxXnYmnj0yQKt5gp6aJIoMQC0Zyr64QwJamtiGB/1zw2gId/OlA0wWrvy4ZjW2nVl3ttvmdrtpHqBMYl3vc51JM7GvyNYje6C5aitjPArhQiA+kAxPnWD9xxdlf5WnjvXraOj7IWoj2PNHsGzdk40JG/QIWuxgU/FaMtgEvEjvRj9w63k2Q24x10WLhaQTqxmIlNIyLfpaz2i9gwfZjAmHwkJUK3K4i92vK+g2lS9VXGi41k2UBIarvyh3dn0sf3ZUb9jCNvW7gQfFl29KSKXVdce7+ziEzibSBrqxH2vtRZQ2bvIV+UQ6iEJEKUnvL2QEWvNsLrcetbRZsbNSFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB8149.namprd11.prod.outlook.com (2603:10b6:208:447::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.31; Sat, 3 Feb
 2024 13:25:24 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::559e:7844:adc9:7793]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::559e:7844:adc9:7793%7]) with mapi id 15.20.7249.027; Sat, 3 Feb 2024
 13:25:24 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Zb1JbZlhjxXQKhTq@intel.com>
References: <20240202131208.453298-1-gustavo.sousa@intel.com>
 <Zb1JbZlhjxXQKhTq@intel.com>
Subject: Re: [PATCH] drm/i915/cdclk: Rename intel_cdclk_needs_modeset to
 intel_cdclk_params_changed
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 3 Feb 2024 10:25:18 -0300
Message-ID: <170696671884.1816.11371833747153807417@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0P220CA0008.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::17) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB8149:EE_
X-MS-Office365-Filtering-Correlation-Id: de755254-4b82-4b2e-5ca7-08dc24bb93ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bMO5AYBl4rtt13HRXVVFqEjzYlPXUwReu12Z+Ym/JMAspzD1vZrA5gpBTcJb1jAqRes3rcc6RVQJd1K0NxZTXIfiDXZf5zSE4pcA4APv/ru2uCDWHfKKudokcYNlqdW479lV/YqbzdBvAJY4u8w9quS2OXgVnKSLnfAUZzaImsa48svQYonqvuIpYfc4ZoofFKsnLGadqs7zxZ67P4op3VQOwh36BDunQFssAXL5chbio9thwUt5B+IR66iuKh2wDYYA+3pvSxzecMPJvTRBNaTx/S5f1Xar4sR1QrbuM101uepUOPliGgkn4DdaAO3Kq42V2pVXntC+sJC0zcs/O2YMT0t4SnjQ3GLTKBs0SsfREznw1kLnGA/Uhg7VkxNAk+0nllX/Do24TBZm7CGkr4hzkWuDsemQpwLrr4rL6byFhNbqQ1dyKxQ3NvbULexcPWY71cyZ3SNiTgzJik5r5ZFhidISGo6jGhEDzLU74iFv7CwUzioESJUdendl7oVBPC3bWQPovPqmny8fYj78ZCgxDFa/HpJyrezVM956uHs23AtKhvz9qnUfI661upOM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(346002)(366004)(376002)(396003)(136003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(478600001)(6666004)(6486002)(6506007)(86362001)(44832011)(38100700002)(66946007)(82960400001)(33716001)(41300700001)(5660300002)(2906002)(6916009)(66556008)(66476007)(316002)(9686003)(6512007)(8936002)(8676002)(4326008)(83380400001)(26005)(66574015);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFgrT2htYUpEQjZtc0hwQXZqTW9IWHRWaWlJVysyYkZCSldUVDY2N3lhWGkr?=
 =?utf-8?B?MW5xMERwOEsyRU4zdVlVSUdIM1kzZ0pSbmk5dlljYnFLTzRaT0lLRVJFcmUw?=
 =?utf-8?B?dmpGVHk5Umh5MkJmaFhhTWZDNXlNejdnbTlKMk5BVy9zZktYODhTV25qaURG?=
 =?utf-8?B?cUZ4bGpQTHdmR01IaEcxTEQ0RVc4QlQ3YmtJQVArWDE5MHpyYjYwYWVUWmo1?=
 =?utf-8?B?clJldzVSaHFENkFIdGwrUkJXMEdZN1NZNzVmSEpBQUFhRkNvYnk0UUhuT3I1?=
 =?utf-8?B?c2QyckdIekdieDFhTy94M3lsWDJqU2g1dFBOSDZJRm9kVThRRUV2ZElWUWhG?=
 =?utf-8?B?d09ucittYkdpMTZycDF6OWJReCtsWnlHcklMbnVTVjhjTG1qK2RMVUhCKzlq?=
 =?utf-8?B?cDFIZzBGRzlhdTBYQVM5NXBFbnhQRFlCb3Z0OGN0YWt5aVdIdzBjMkx6VVBM?=
 =?utf-8?B?TjdsN1JDK2lEWFN2MFpkNGVQWndRdDFhMDBVdVhESi9vOFFKNXlxMmQ5Mkhu?=
 =?utf-8?B?T0pGVFdzb0tTZXQzbnlXNG5XSytZR0doUUR1TWFvM2NLZ2pXQXVwMHY4NFc2?=
 =?utf-8?B?QVpCaWMxT2d5bHYwd1VIeXc0YUNPYStYeE1IUm0zOVpIOHJjaFgrMnc1T2Vv?=
 =?utf-8?B?RkJodWovWStpaUpSLzZFWEhYVEhlZW9OVnpQQy9XV0oyWk9XVkd5VW9DbHNj?=
 =?utf-8?B?emNPdVJTMEN0UklITFo2T3d3SG9HS2oyMjdQbS9jUTBvR0hyQVFxdUpyMjJj?=
 =?utf-8?B?dXVxMGhaS2V4NThiK0FuSk9WT0ZkTnZha0JMaERvN0xaZEJYc1hTcG4zYTJi?=
 =?utf-8?B?cXVzazFiODl3eFlValpWNE5zajMreHF6NXgrT29PRlZrb2F4QnZ4NmhVbm9a?=
 =?utf-8?B?eGh2ME9PaDljbkZEMzdrTHBPdnhXNUlwdjZvRFZaS2ZLclRqbkV1NGxLaFls?=
 =?utf-8?B?NyttVzNGNkEyK05sQzdPY1lpbVFzZWVlOFZzbkMyVlhkc2twdUJsRWxGMnBR?=
 =?utf-8?B?NWREdXBiam0waHNYakV2d20vb1pmUXl0MjhlR2YzWjdtOGg2SS9Xc3BRUi8z?=
 =?utf-8?B?U3ZpVGZqdjlWcjlRNFlzVFJDckgyUmxraHNJaWNYVjZVWllXMXNLQXpOV2NP?=
 =?utf-8?B?STZWb0w5ZG5URjBzTG0wWWZYZU8rWHVmUzJDbUtJa2Fpa0cxQnBMQm5SbFR6?=
 =?utf-8?B?c0lQeXp6R052a0ZSWnlxWm1NQzBoODIyZURXUjEwS201cUpQN1QrRkZnTHFv?=
 =?utf-8?B?TlRQTmc0ZDdsV1RjTzZUOHVLd0ZONEppOExjWTNtZEYrY20vTWVzamdzMkRv?=
 =?utf-8?B?YmdSODNtbXd3UEpnYTdDUXFuMndIVEUyTWZlMGE1QW8raEhUWm93c2dLSWEv?=
 =?utf-8?B?eFljRlBsQkZjaWNLMXNDeEZORkRvTHVGeWhmbTgva2VxeUp2eHhGYlpWWjlM?=
 =?utf-8?B?aThNVHlIazBFWFl0UHNYQ0NWMWxralRHRW9RR1RPU1hBSWhaT1lMb09JU1BD?=
 =?utf-8?B?a2poM2hsRzRHZGRwbnRvSGliUEU5MGRQckxnN2FVR01iZHdHTU5KQ3cra29M?=
 =?utf-8?B?YXNwL1ZpQlRiR1k1MjQ2eEdRNWg2U0ZjZVJjRFUwVkV3SlpONEg2V28vcjRW?=
 =?utf-8?B?WHN0SkhmaEhmVVBza0xvWVp4WEp0R0dnNEorQ0paSkoxamx3aFpSNGRVbWsr?=
 =?utf-8?B?dWk1MU55Qk9mSXZSSnI0RGZGbHF6d2tta1BWcnlJQjFEbW9IZDY4OTFoRVV0?=
 =?utf-8?B?MjI3NzNwMUYwUG5mN1FBQkJ0SjA4M1RKZXd5TnMrU0NtbzJaU1c3TjhCb0Js?=
 =?utf-8?B?QzZHcGtiZG5kaitDTkQ5aitqbUVPM0xSZzczdnhtWkdKb1JEQzF4d0FQUkU0?=
 =?utf-8?B?c2hjWHNGNmRxaE5jMmRnSmZuWW9VbkxBKzJXYVczeURKYlpBc1lER3VvMkxh?=
 =?utf-8?B?ZVF3QndxMXRmVXZhU0JjNWpnVkQ3T2hITCtyYkgvNm4vV25kNkJRNnVvZHli?=
 =?utf-8?B?ZUJIMURxbDN4bUdPMXRYMjd6VEpaWE4vWGJOU2ErcEFBR1ZIWFM0YXJJQzl0?=
 =?utf-8?B?Nzhmb0NRdWYzZ1lCc2F1T0dqVWpHbE0wRWUwQ1UxQzltK2Vmd1AvamNwdk41?=
 =?utf-8?B?ZmVwTVhJS0luNlZjSlY3Z0w5c2VrazMyZjFxTEZGTzNiNW5pTnVFZVUrZmY2?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de755254-4b82-4b2e-5ca7-08dc24bb93ce
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2024 13:25:24.0435 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9/WRq4whTfIfgjL9MJv72cJSu7wFJUgPLrFaaQuvyPuhNnD/ygRYbISrKxlLiofk0Ng5aQLRtzdGjBT2mPD0sA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8149
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2024-02-02 16:58:37-03:00)
>On Fri, Feb 02, 2024 at 10:12:08AM -0300, Gustavo Sousa wrote:
>> Looks like the name and description of intel_cdclk_needs_modeset()
>> became inacurate as of commit 59f9e9cab3a1 ("drm/i915: Skip modeset for
>> cdclk changes if possible"), when it became possible to update the cdclk
>> without requiring disabling the pipes when only changing the cd2x
>> divider was enough.
>>=20
>> Later on we also added the same type of support with squash and crawling
>> with commit 25e0e5ae5610 ("drm/i915/display: Do both crawl and squash
>> when changing cdclk"), commit d4a23930490d ("drm/i915: Allow cdclk
>> squasher to be reconfigured live") and commit d62686ba3b54
>> ("drm/i915/adl_p: CDCLK crawl support for ADL").
>>=20
>> As such, update that function's name and documentation to something more
>> appropriate, since the real checks for requiring modeset are done
>> elsewhere.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>=20
>> One thing worth noting here is that, with this change, we are left with =
an
>> awkward situation where two function names related to checking changes i=
n cdclk:
>>=20
>>   intel_cdclk_params_changed() and intel_cdclk_changed()
>>=20
>> ,
>>=20
>> and I find it weird that we have intel_cdclk_changed(), which checks for=
 the
>> voltage level as well. Shouldn't the voltage level be a function of cdcl=
k and
>> ddi clock? Why do we need that?
>>=20
>>  drivers/gpu/drm/i915/display/intel_cdclk.c        | 15 +++++++--------
>>  drivers/gpu/drm/i915/display/intel_cdclk.h        |  4 ++--
>>  .../drm/i915/display/intel_display_power_well.c   |  4 ++--
>>  3 files changed, 11 insertions(+), 12 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index 26200ee3e23f..caadd880865f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -2233,17 +2233,16 @@ static bool intel_cdclk_can_squash(struct drm_i9=
15_private *dev_priv,
>>  }
>> =20
>>  /**
>> - * intel_cdclk_needs_modeset - Determine if changong between the CDCLK
>> - *                             configurations requires a modeset on all=
 pipes
>> + * intel_cdclk_params_changed - Check whether CDCLK parameters changed
>>   * @a: first CDCLK configuration
>>   * @b: second CDCLK configuration
>>   *
>>   * Returns:
>> - * True if changing between the two CDCLK configurations
>> - * requires all pipes to be off, false if not.
>> + * True if parameters changed in a way that requires programming the CD=
CLK
>> + * and False otherwise.
>>   */
>> -bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
>> -                               const struct intel_cdclk_config *b)
>> +bool intel_cdclk_params_changed(const struct intel_cdclk_config *a,
>> +                                const struct intel_cdclk_config *b)
>
>The new name isn't very descriptive either.

Yeah... I would much rather use intel_cdclk_changed(), but that one is
already taken.

>
>Outside the cd2x/crawl/squash cases we stil have to consider
>two cases:
>1. cdclk frequency/pll changes (voltage level can change or not)
>2. cdclk frequency/pll doesn't change, but voltage level needs to change
>
>And that difference is what intel_cdclk_needs_modeset() is trying
>convey. And intel_cdclk_changed() tells us whether anything at all
>is changing.

I might be missing something, but, by going through the specs, it looked
to me that voltage level was dependent on cdclk (as well as on ddi
clock) and not the other way around. That's why I find it odd that we
need an intel_cdclk_changed() that, besides looking for changes in
cdclk, also checks for the voltage level.

In intel_set_cdclk(), we check intel_cdclk_changed() before continuing.
If, for example, there is a change in ddi clock that requires a change
in voltage level but no changes in cdclk, intel_cdclk_changed() would
return true, right? Wouldn't that make us unnecessarily go through
intel_set_cdclk()?

--
Gustavo Sousa
