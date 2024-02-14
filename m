Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 561A7855389
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 20:57:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5DF310E212;
	Wed, 14 Feb 2024 19:57:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OF2svV0H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F18110E128
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 19:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707940637; x=1739476637;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=rSTVuqoyW6CUeXdUFai8drxVtIZdMbcRFoL23Af0lMs=;
 b=OF2svV0HARKtdZqRHBkGnbLMonMEoYJ4umkj6gXovYguWuHZ7kCvxFNd
 4KPC1aErtOyi/FEylZZIUuoVyAh6FraKZqThI+vtqI4wIPIozkeT5vd17
 lIwHf7tM4fSR8vOnKjyqW5KsFMqz5K0+yL9E3CLijxLrW9QjiVGYe5c6x
 Kr/HTkdfTSL4jrtfODdfTVPLeSDec+mQ5G1pD6/ZALbbtyYB8MILChCsi
 FHFiFl/0BOhduBxTwrPQx1pecvQo/qJ5c917fqrKXItHHZ+gvRUK4JqqJ
 VxXzDfEIW34u1DIJSEPaLquna0fcFKRhWzjfqgjjQ54p1mYWB22P1woKi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2133639"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="2133639"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 11:57:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="3375207"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 11:57:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 11:56:59 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 11:56:59 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 11:56:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Twd5xsgIOcqRIBTozaKpR4e5gPTzAoARePIV/Vuo5XP58DgsJ7wr3AwcNFsC17W+iX2AwE2zgyXCrsj0lL3ymeDzF+53d6hD+aq1xTIhEQ1i7qaE6LcbBa3RkoouN7ZRg7k5nS6+YxDM3VNKWsSEUd7rdvhxYN+I7Nq26xkzO9KCUvOp72teTKPDrsgs/PRR2eynsroGPCQvXN8Xr7TZxkzV87KJjOCOmxVWx0iuA53QHpXePDHrwNA/GE+1GK7LuSAKcptzP8qG2pJ9jcZ1dNKfX0kqpC1AqbJSRjN0BIA+qQtImgl94JZ3K2AyWlQNUGn1XCHYY8vwcek9TBPCwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xbT0u3AYGg6OYazWV/ZU/BV6aNLkbUj1RmhuPNChPfg=;
 b=cCLV7wo4+PsoesAdRa697IaHu3ZJclk9ZFQ28beU5ivK3KwFCpoXWhnfEV7hrzNWFx4nngKz9ZC+D0fGo8biCJ5/+eV06wvaY1zP+D2LLoK1pvdtXOCUVcmKRsKZW5hq/vWMUwbB3njmDVcqH8asYNqoJYfURHPtSLdSj7/hZdkQbI2KTE0TsCq7fRzGqdydOW/bauWmkxH7KDZafMamA7tQfyTbndbWZDPemTWz/zHGD8LuTpc+SpoJAJjxJM3gXvxxDcp6lAyeNOCglTXu2GTwoZ+sGm/Ne/0AmBB6mHMjlZKc0/ZwCQWXvXAmJ5a3jDn2IPKHFcoI/Mezz+tVfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB6932.namprd11.prod.outlook.com (2603:10b6:510:207::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.24; Wed, 14 Feb
 2024 19:56:55 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa%4]) with mapi id 15.20.7270.036; Wed, 14 Feb 2024
 19:56:55 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZcEAIfeJyyztDa2-@intel.com>
References: <20240202131208.453298-1-gustavo.sousa@intel.com>
 <Zb1JbZlhjxXQKhTq@intel.com>
 <170696671884.1816.11371833747153807417@gjsousa-mobl2>
 <ZcEAIfeJyyztDa2-@intel.com>
Subject: Re: [PATCH] drm/i915/cdclk: Rename intel_cdclk_needs_modeset to
 intel_cdclk_params_changed
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 14 Feb 2024 16:56:50 -0300
Message-ID: <170794061034.56490.5633508531160366518@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0349.namprd03.prod.outlook.com
 (2603:10b6:303:dc::24) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB6932:EE_
X-MS-Office365-Filtering-Correlation-Id: ea99ef2a-cd89-4e67-48df-08dc2d971807
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l4neXRooK7A4qndHtVGHQxwkae+6lAoGlQP6l8YG0jb0hG6cnhAIBqJJl7+eGDKTa7p7vbMxzk27JTMjlCaK1NYAilcK5Fc1XVwtR5/yU++0u6FxRrTxM5QjL+rLw8BgLUeuSlapPx5ZFKziHCN1bWGz+UxTkyFcpFgrvs8kR7k48bzR0sFDJCyIL/PpPwr6HTiJAunSiWngo8u1FSKtBGlfQ47ccuIw1PGveno5vwtBubv7LyxZDfumBGDenZYvwUBs/vB4A6HRwXh301Gj6gvhdR2xe0matcLWqh557D+ptAxT2J5keC5KNVM1I8k61HikQo2OtRYb5M8Mi80Ebpgzqf0uoeL5uNHmW//PhGwBHl/Bq2IU7AATtJ/woEYpA5qv1aCrX5KkhkUQfw5Vyf9KJkZv7cMkM/xrA6Lbi7W7LzNKh23e0ukLg6Xt+0azwtnJ7iPbipGBew0dNpxyhycw37gKWTDT0KT41wPnFLIXk+YFqaEJxuNFERxO2NOULNs+8mc3nnYBWrTicXWj8QoWqLoCAlEZrC/Bz9sBoTBYFlqGGbMoSSSFEMneqOSf5lXfSHdWOuXotMDPfF6kxx3h5pz3/cLYjXa5fXalmS7zi9NYDNVVAkmKNNvsjqES
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(396003)(39860400002)(376002)(366004)(136003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(66556008)(82960400001)(38100700002)(86362001)(478600001)(316002)(6666004)(5660300002)(6512007)(2906002)(6506007)(66946007)(66476007)(6486002)(26005)(41300700001)(8936002)(83380400001)(66574015)(9686003)(4326008)(6916009)(44832011)(8676002)(16122699003)(33716001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWlCNXdzSUlERVZiQ0F3dzRZWGJ4djlmaDZRWEUvd0t1SG5GanZ2RHpQUXpY?=
 =?utf-8?B?RHFvVFllUzQ2cjVtTWxvbUVOK2k4VGhUYmpBZ2wvdjRLbE12TVBnTW1sakpv?=
 =?utf-8?B?THlNaVVUeHk2a2tHZ1VpbXUrVk1TdXFEckNqSWRBMkQ3RVJKa3JMVWhBMndm?=
 =?utf-8?B?OFJNUDR6UjF1OWQwZWdHSjNuTzNja0prMXhoTVJEYjFOY1ZtMW1wSFFINEY3?=
 =?utf-8?B?MjgrUUhjY1pJc1ZiK0IxQmhaRFptRXdEcVZLMjJ0SXBnRTVCTUNPVlJEMmxQ?=
 =?utf-8?B?ZFBlQ1dWRkg3RmFHMXVic1E3cWQ2OHVtNXpRbUhKek9zRlhIN09tVzZQUkZq?=
 =?utf-8?B?cVROMEFTTzJpR0hKYUpZM3hqNDF3U3grUWZrVnVaNndrZUxreWpnTDlLTXE4?=
 =?utf-8?B?SzNMYnNhTVdQbzJrcnVzSGQ3VXRKbWNCYlE4V2Z4R3IzRmkwVlJBWjNNTHpW?=
 =?utf-8?B?RTRmcGtnTVJGckQxR1RGOU51bnl5N2lsUU9TWW4ya3BEckU4bVNmVTJsTW1R?=
 =?utf-8?B?bUZIbGdySkZoQ3VFVkhrTlFqY1NGL2ZnOUdEZVdIeXdBWnlvNjhWTk9ZRUJX?=
 =?utf-8?B?N0lobU03Y2NQa2cycGxSMmpQbUovUW1mUVRQT3VKMzVJaldSNVJGN1RBSnhk?=
 =?utf-8?B?M3JQZngxUHhrdWRlMTVhWHY0YVNTbUViSkZhTXY3UTlucSt6ZU01TGo1OUN0?=
 =?utf-8?B?RlRLYnN2VUlSVHlNbzZ4SzU0eUdHT3NzL1dUSTFHK3hBMGNWZnF3V1cyR1Z4?=
 =?utf-8?B?Ry9tYjZqSHMrclV3ckJnMkZRcXBCR0pSdWcwZGZpUGtCWVRpenQ5KzJ3ME5u?=
 =?utf-8?B?M1VXNSt5OHNINzFCY1FYWkZZNWtvVHRPVm9mV29PV0tyZlg5NU5ScE1yUkZR?=
 =?utf-8?B?UWo0L1VxVGNtZzVVWmZ2SkNXenhaRDl4M0lZYVBNMUJQQlMyWmUvL3RZYjlv?=
 =?utf-8?B?Um9rajFvT2hVWGlRS1hKNFlMM0oraC9XQlJvOVpDVzNEN01IMTFYMU0wUnJp?=
 =?utf-8?B?K1pDbUFLeUJvZ01ETDJ3VlJsVEZDcFMzUXViLzVNWDNXRHh3SmxieEdzM3FY?=
 =?utf-8?B?bkQxbTBmN283NmkxM3JOWTdDK3hQQTFwRVB0Rkg4WFNiTkFUWTdFVkZMbU5n?=
 =?utf-8?B?a3VWTlRsV1J0MiswVEFweXdlYW9xMDJmeXE0NTFkQVB0Mzh1REhmNkptUlRL?=
 =?utf-8?B?YzNPR0pvU1orNWRLekE3UGc2emVUTkJ2VXJpQUFFaDFQNTdXNTZsZkZxK2pC?=
 =?utf-8?B?WmxBdXFXQ1dCSFhiSW10S2lzK2poVUVvR0xTZnY2dzhYSjlRTnY0azh0Y01P?=
 =?utf-8?B?N1VsRG5vZ2UrK3duQzNSZTBkOEJ2dkhtRlhSUFBoRys3UjB3K2psL0d6NlVC?=
 =?utf-8?B?bjBKZ0s5T2VrWm95ek1uMjdKR01tbXdka3FRM09jNUJCTWN1c010QitVcytw?=
 =?utf-8?B?YUoyYnJZTTFRb1lrNHkraktSbzJtL0h5UGsvMUp4K0tFdUh0aU8rWFQzQmN2?=
 =?utf-8?B?T3hkRExCVE93TUoyK3NaTHIrQVR5T0VOMytBQTFjYmJQNVduMTVwbXE0Z2hj?=
 =?utf-8?B?aUUvNVZXZGZsY3lhalE0alpnUVFPLzJXREtVVjhBRVdYVTJraHZaZUlaVXBv?=
 =?utf-8?B?bGlVa1ZhelA4Z0UvalZtUkpTazJXMzBma2Z2VTh5TWlUWWdDV1NzMkZRVFhh?=
 =?utf-8?B?K3B5LzF0N3R2UnQ3K2tzbHV2T01hNjdnVFp4b05rOVFqUzlQai9NT2hqdXFx?=
 =?utf-8?B?SEFmOFhSQlJTZ2JEK1NvTVoxSWdOOVp3Vk1rQU9ySklSMStRWTBDMmFFME1H?=
 =?utf-8?B?ODUrOUNMM3JMeDVDNXVQVXk1RUVlWmlPWGlRSUJUbmZrVm5xY1lUNUdtN0ht?=
 =?utf-8?B?R3lsTHQvajdhbGl3WXFHWXJmMFZQdzdIU25Da2hDRU5OYldZa21mdU5DT2dB?=
 =?utf-8?B?NEcra3JBV0F0WjN6OVZ4ODgrTWR5YW9PN0ZveGUvenVNTFF6ajFMZG1HanVO?=
 =?utf-8?B?ZUk2Sm1QN2RabnJueVBzSFk2V3ROVFBBUnhObzZmU2Q0WVhDdkZRZU52RURt?=
 =?utf-8?B?YkdtQkJTS3pabTVjS1M5UmVWTlZhSHFoRVhkTk9xOC9rdWtsRkhvWUxvRDF6?=
 =?utf-8?B?N01oRDNwYUhON0pZekhjdTRNdk9KRXJKeENLSDgwNXI5d1FhWnVUTGVUM1p1?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea99ef2a-cd89-4e67-48df-08dc2d971807
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 19:56:54.9285 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +JYM9G0mND20TGB/UbcPvohkJlG8wguQH3UBzuFcIm8YweSFPJRJ7eHXdEKyvq9N2G85qKKCudANoqM36TddXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6932
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

Hi, Ville.

Sorry for taking long to get back to this.

Quoting Ville Syrj=C3=A4l=C3=A4 (2024-02-05 12:34:57-03:00)
>On Sat, Feb 03, 2024 at 10:25:18AM -0300, Gustavo Sousa wrote:
>> Quoting Ville Syrj=C3=A4l=C3=A4 (2024-02-02 16:58:37-03:00)
>> >On Fri, Feb 02, 2024 at 10:12:08AM -0300, Gustavo Sousa wrote:
>> >> Looks like the name and description of intel_cdclk_needs_modeset()
>> >> became inacurate as of commit 59f9e9cab3a1 ("drm/i915: Skip modeset f=
or
>> >> cdclk changes if possible"), when it became possible to update the cd=
clk
>> >> without requiring disabling the pipes when only changing the cd2x
>> >> divider was enough.
>> >>=20
>> >> Later on we also added the same type of support with squash and crawl=
ing
>> >> with commit 25e0e5ae5610 ("drm/i915/display: Do both crawl and squash
>> >> when changing cdclk"), commit d4a23930490d ("drm/i915: Allow cdclk
>> >> squasher to be reconfigured live") and commit d62686ba3b54
>> >> ("drm/i915/adl_p: CDCLK crawl support for ADL").
>> >>=20
>> >> As such, update that function's name and documentation to something m=
ore
>> >> appropriate, since the real checks for requiring modeset are done
>> >> elsewhere.
>> >>=20
>> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >> ---
>> >>=20
>> >> One thing worth noting here is that, with this change, we are left wi=
th an
>> >> awkward situation where two function names related to checking change=
s in cdclk:
>> >>=20
>> >>   intel_cdclk_params_changed() and intel_cdclk_changed()
>> >>=20
>> >> ,
>> >>=20
>> >> and I find it weird that we have intel_cdclk_changed(), which checks =
for the
>> >> voltage level as well. Shouldn't the voltage level be a function of c=
dclk and
>> >> ddi clock? Why do we need that?
>> >>=20
>> >>  drivers/gpu/drm/i915/display/intel_cdclk.c        | 15 +++++++------=
--
>> >>  drivers/gpu/drm/i915/display/intel_cdclk.h        |  4 ++--
>> >>  .../drm/i915/display/intel_display_power_well.c   |  4 ++--
>> >>  3 files changed, 11 insertions(+), 12 deletions(-)
>> >>=20
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu=
/drm/i915/display/intel_cdclk.c
>> >> index 26200ee3e23f..caadd880865f 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> >> @@ -2233,17 +2233,16 @@ static bool intel_cdclk_can_squash(struct drm=
_i915_private *dev_priv,
>> >>  }
>> >> =20
>> >>  /**
>> >> - * intel_cdclk_needs_modeset - Determine if changong between the CDC=
LK
>> >> - *                             configurations requires a modeset on =
all pipes
>> >> + * intel_cdclk_params_changed - Check whether CDCLK parameters chang=
ed
>> >>   * @a: first CDCLK configuration
>> >>   * @b: second CDCLK configuration
>> >>   *
>> >>   * Returns:
>> >> - * True if changing between the two CDCLK configurations
>> >> - * requires all pipes to be off, false if not.
>> >> + * True if parameters changed in a way that requires programming the=
 CDCLK
>> >> + * and False otherwise.
>> >>   */
>> >> -bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
>> >> -                               const struct intel_cdclk_config *b)
>> >> +bool intel_cdclk_params_changed(const struct intel_cdclk_config *a,
>> >> +                                const struct intel_cdclk_config *b)
>> >
>> >The new name isn't very descriptive either.
>>=20
>> Yeah... I would much rather use intel_cdclk_changed(), but that one is
>> already taken.
>>=20
>> >
>> >Outside the cd2x/crawl/squash cases we stil have to consider
>> >two cases:
>> >1. cdclk frequency/pll changes (voltage level can change or not)
>> >2. cdclk frequency/pll doesn't change, but voltage level needs to chang=
e
>> >
>> >And that difference is what intel_cdclk_needs_modeset() is trying
>> >convey. And intel_cdclk_changed() tells us whether anything at all
>> >is changing.
>>=20
>> I might be missing something, but, by going through the specs, it looked
>> to me that voltage level was dependent on cdclk (as well as on ddi
>> clock) and not the other way around. That's why I find it odd that we
>> need an intel_cdclk_changed() that, besides looking for changes in
>> cdclk, also checks for the voltage level.
>>=20
>> In intel_set_cdclk(), we check intel_cdclk_changed() before continuing.
>> If, for example, there is a change in ddi clock that requires a change
>> in voltage level but no changes in cdclk, intel_cdclk_changed() would
>> return true, right? Wouldn't that make us unnecessarily go through
>> intel_set_cdclk()?
>
>intel_set_cdclk() is the thing that does the voltage change.

Yep and perhaps I provided an incomplete response above. Sorry.

I was wondering if handling voltage level should really be
intel_set_cdclk()'s responsibility.

I might be missing the big picture here, but, at least for the recent
platforms, I get the understanding that voltage level handling should be
a separate step in the hardware commit process.

Would it be possible to have a commit containing (i) update(s) to ddi
clk and (ii) no update to cdclk such that (i) require an update to
voltage level, right?

--
Gustavo Sousa
