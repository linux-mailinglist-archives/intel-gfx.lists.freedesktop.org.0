Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B897848683
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Feb 2024 14:32:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1026210F355;
	Sat,  3 Feb 2024 13:32:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wyzc6PrN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC5BC10F3CE
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Feb 2024 13:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706967151; x=1738503151;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=ngSer2tOUJo0MQshxlvvGvkNlMHULUiKl9bVtpzsyEw=;
 b=Wyzc6PrNknnG4+KuMyIBTjPgzj6BDr54tW5CPdJtI6Tw2xGtSKaxhXzf
 8a/v71CpUgVPVYsipu7N0QBvzeJNz6SpkgEvwZFwMPv11FZT8mUpgyMGX
 xHo+ca9bRJiUT0/64FjfikCgTi60i+4inx69h+TnA0hWEFUrJ7a6ZInPC
 bMS7lXhkK6GbbaKB5O0ieUTsy7sIOUnaCdjUle/fTCKYfApYRVSWh3nzD
 iqeb6YF7BCldmK/ivEd8a1j1P9mTFfY4Fr+ogmXA8tSKq5PZlxKwpx6V0
 IChQo9aBfA0IwQaGdJS3T6UbiK48zzKZynvI8F3t/2S42DmQyj/F59/oS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="17840133"
X-IronPort-AV: E=Sophos;i="6.05,240,1701158400"; d="scan'208";a="17840133"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2024 05:32:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,240,1701158400"; 
   d="scan'208";a="324807"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2024 05:32:25 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sat, 3 Feb 2024 05:32:24 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sat, 3 Feb 2024 05:32:24 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sat, 3 Feb 2024 05:32:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n0UeBHFNUMCqwwsns/fcgfd5oEECvyh+G/vsZykP0UuPgGciaXOGaRdyP8AArZo9dxcFN3ExAEykFYXk/iE8waXQ7/fUw6s2ezduhpBK2v1mGGcC1dbNEvSku5SHpnnk75bjHHrBBBmSzsxZTPF4RI+6gP/J7Zd59xPPRPSPvOFAKQXyJN5ymcUyBMU5r1gp11mJSS3k44GH609sagO47GhAM7g5Cm8yMNq0okT3A24JgyOCiKK+xXMHL6PB5cRQwM6hYtUDYJgjXbemxiU8RfVerDShslGNslUwSBL0cEYw7Oa+Vjh9cQFKs9tLDnSf3vFtsSwcXMDvldGX5ANfHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L0Y3ypA85dYG6yPeKtF5sqWwTpn9vIktzKBfdDmNAD4=;
 b=PQ/EXxJdVYbUSMVh5/y1oPsBQgFN2GJzkGBR9ZGuUkkG9Yd0VwpqK3UCjEsGU5UudWw8Sh1gEtnIpSML2q7XgDHB+lMfbBy+2N0Bjq1KXTKhz6PztUsvf0Sd+ML2v+OlS/67jEndNMRtP/Lt0tMhFf2h/R/LrnrwNOLPxFBI49kdHWn7eWhRjPzo+UL0P3WtTe6dAFK4dM4IeOkForilx+n5752tdhksrUrJWRVWMlwoQErB73mWVMOQcb8cHXZ5+fGazoK2HBgaivgu6DaZGmPt1Le/6MpZ+i4cM6t6uV2+i7GrYZdqEO2URqNj92aRavRXia/ZH0JatrkBR6ZyvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB7294.namprd11.prod.outlook.com (2603:10b6:208:429::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.30; Sat, 3 Feb
 2024 13:32:21 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::559e:7844:adc9:7793]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::559e:7844:adc9:7793%7]) with mapi id 15.20.7249.027; Sat, 3 Feb 2024
 13:32:21 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Zb1LKnsADQI_i2a2@intel.com>
References: <20240202131208.453298-1-gustavo.sousa@intel.com>
 <Zb1JbZlhjxXQKhTq@intel.com> <Zb1LKnsADQI_i2a2@intel.com>
Subject: Re: [PATCH] drm/i915/cdclk: Rename intel_cdclk_needs_modeset to
 intel_cdclk_params_changed
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 3 Feb 2024 10:32:18 -0300
Message-ID: <170696713830.1816.14943301562714458724@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0347.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::22) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB7294:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ca69056-c636-4eca-2587-08dc24bc8ce2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GN3VhqzZ4OvLkpM5TWISfshpla49YoFOHsr49u1tbk0frPqoNZc+hH6bA22fGhzimiyCp6RKaUl4foVOh1WXkEhSBQ23E+JugeZUNPhELxOkXQPOTRi35bxNIKzQ7XUzV7bqM4hItRjOqLCiTIPTsxT4FqlK9GY6BbdkdhUjRUMoFbgXbs9jAOEotvlQCLpemzHkyvvUi9U5DKR6cS0W3wosh8dKe/ViK0+W510n/Z7eUG05SKEUBTBvIDGl8D4YUe0fwNXL6MZL8TM3T9Kua+Yl2CGnhyJsHB6d+v8uaqssfgV7YTykByKbeDS8pHX9gXHB79iiMp9zKHGdFv9kKRf+zr4J0MrPlpwKSmaYeLv1pwnFUPkO+Uz21qKR/FsRrVaHR9BCQC5DDms4CWnnfhSrOW5C/aQG2EfWRqFOGUIFXRAjwFukHqSF6n3YIlKyCfK2t/hAJAkM+S29ktBSFwH95PMz7q05veUu41rEtcwXe66/QmUcRPRolIbwck3vRGkXOwYBN4zBTMsXj/bs2TSDm2nxmiMJDZX3bRPT2YCKJYtoQ1/fEM35MQ0P+kKh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(136003)(366004)(376002)(346002)(396003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(41300700001)(6512007)(86362001)(9686003)(6486002)(33716001)(82960400001)(83380400001)(26005)(66574015)(4326008)(66556008)(66476007)(2906002)(6666004)(478600001)(316002)(44832011)(38100700002)(66946007)(5660300002)(6916009)(8676002)(8936002)(6506007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bThuNFpnVDI5Z3NjQkI4c1pzN3JzZUFRREVxUXh2TzFCRDhIYTF1ZUVFWmxJ?=
 =?utf-8?B?amtLVDFmMkNZNTdveVZoSEhVTWp4NkFyOXorSHhVbXUxTlJvdmlTNWpEZzAx?=
 =?utf-8?B?ME5WYWYxMjhqeHpDeWV2cXpUTXpRbSt2NTFKOFptWWtDaXVVLzFhQVkxd3Vv?=
 =?utf-8?B?STFlTkIwMElMQ0owK0UzUFl4MHRsQWlEbnAyS2FKRjl1NkowZGFMVFV0S29X?=
 =?utf-8?B?S3EyRUd2a3VCNERDbTVqUU4xUzNvbndzUkliL2dPd1k4M1NVWE5vdWdrZHhu?=
 =?utf-8?B?NkdBeHhKL2Zxa2VIcnBKV0FUWEZUUy80d1VLSWhVMTUvN2Q4TnFTQnBvbjNV?=
 =?utf-8?B?OURVYVlvbEQ4TmJBTlo4QmVWUk9ramQ1N01KV0MrYmtrYTFLQUNIeHNkUmpO?=
 =?utf-8?B?L1hnZXNPSTBlV1ZlZ05lck1mTk9rMHZhaVc5c3YzSTc1eWZBVTJWZUp5R3lT?=
 =?utf-8?B?dW5DcDBwV1lYSmpKVUs0cmxmdzR0WUVzb0JqcEZNTkNXYzU5Y1FrVURrWVdn?=
 =?utf-8?B?TDBKM3FBYWFhZDZjaUJHYU9oak90a0xnc3BmcHBYbVRVU29DT2gyZlQ4RnQy?=
 =?utf-8?B?N1ZOdm44bG1BUTFWeE1GSXIra2kzVCtvTVhVbVp1MklNV21KWGozR3RWNHNs?=
 =?utf-8?B?Y1p2R2Z0eDVkc2VOYUJqcUhLcXBiKzRlTytuVEdBL2ZRQXBGaGhSZ2ZMbWRq?=
 =?utf-8?B?S29hSi90UnJjVGdKK01vZE5zUHBCaGs4RWM4QWovWTMxbUg0T050V3llQU4x?=
 =?utf-8?B?ZC8yMVFTSmJONHZ4UjdrSkl0V1JlNWtFUXJUSFAvQ2E0NmlPcmJ5WHM5OG9Z?=
 =?utf-8?B?bW96UWc2OVJTVzZHNmZ1ajNybmRhSXgwMm9tRDljWncwL0xqdFoxQ2Uvb0tJ?=
 =?utf-8?B?blRZZzE0bXpIVGI4Uk1KVGl1V2VlemlTYWFWMG56STJhSXBnNVFCSEdyaHIr?=
 =?utf-8?B?UTRmNjFCdURhYm54QjBkaXNXUGZZeWNkNWEvYy8rWk00L1FGV3JOamJLWUw1?=
 =?utf-8?B?UXBkWWdTZVBJMGsyaklkSDVIeE91clpoSTBnUmFYU1ZyWjgyUXVyUjBCQ3Rv?=
 =?utf-8?B?ZmZpbGZNRS9Cb0FTYWtaYlVOeEZMNHNIQW0zR2hSZjZJOTV1L0tlZEZzUEpY?=
 =?utf-8?B?dG91UUtveFRYTTVKaDBsRW5kMjlBR3FMaWpOeEFybEtVYVMvU29ZRnVoNnYz?=
 =?utf-8?B?SjNZWDZ5RkNFZTVqN1ZsaENpK3ZBQlc1MSswRHVtd21zR0FxWXlyQ2JEWDZk?=
 =?utf-8?B?QmZyQW9PdU5pNjZ5QWhDRU8rZEJZaDlWYXUxZWszWitwTWxCSlR4ME04KzFt?=
 =?utf-8?B?NC9DUlkrZFU1ZE0xUEhtM2gvWTVRcUpBSWNlNEptYkZvaHdGV0UxcVpILzZO?=
 =?utf-8?B?Q0x6d1NUZisrZ2FUZU53MzBYcVB4WFFNQVhYT205b3BJb0Y3c253N3NNVHNF?=
 =?utf-8?B?TEFsUjVERzJvK0xJNTJ5ZHdoM2FNNFlDbllzNmhLc3NvMkdSSi82LzhqNldH?=
 =?utf-8?B?VXVHKzUrQmdyQXpLckdnaXZHc29JL2Ywd1VuTkdWZVhDRERiQVkzVjdJN1Ew?=
 =?utf-8?B?ZjRMcDU5Q0JUbU1nTnFqbnB0YlJqRWR5OXFwRVZmS2hSdTZ4eWFoOHVGN2g4?=
 =?utf-8?B?TkJzRmVnZklpQkxGVFE1cTRraW9CbEJxdkx6YWlLa1g3ZFRPSVNtaGRMU3FV?=
 =?utf-8?B?UDMrSmJTNHU5czVSdnJHWDJ1SW5QbHgvbHZ1WFhlRTN5SnpkdmlxWTdEMjB1?=
 =?utf-8?B?Q3RVNDVlVXVqaFE1alJwK1VSQTZaU1R4R3VVVkVlQkNoa2dNMG5zMmdQNUJ3?=
 =?utf-8?B?MHFReE1NSmo5eEtwdUtSdlo2VU5WSHN5VnlleEVxVi9uMVQ4TVVoT3Fsa1FO?=
 =?utf-8?B?VFVwWXlMVmlBaEJkdkdzN0llbE51L1VWUXpZcDJyb29vVCtablFVNnl3MEhB?=
 =?utf-8?B?WlRXOVh3dlpBSWZacjQzMEMxWk5jRS81bjB1bTF2bHBhcFNweWpBZFpoUWJZ?=
 =?utf-8?B?NGhRVTVZVVVUcytHVnpSMFh6RHcwSUdyR2d2OXpzc0I1K0IrcFRXOVQxU1A0?=
 =?utf-8?B?cHUvY1dkZWYvYmJzOWZmcTYvT2ZNS25rYlByMnJCSUVSaFJ4N1dhR2dZNFdm?=
 =?utf-8?B?TnZDYUlRSnlIRjI1R3VTdlRHT1NOVUlZUDZjNE8wY0hGcHE0UmNVQVBWM3pV?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ca69056-c636-4eca-2587-08dc24bc8ce2
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2024 13:32:21.8074 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CAJcjhxzAK18xDVjqJ99sjhNcSVxwzs/lM3ouwiLNIlMyBMdP41mfzvoZe6CqKwGpVXTKmuKCvP8ZCXTv1izTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7294
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2024-02-02 17:06:02-03:00)
>On Fri, Feb 02, 2024 at 09:58:37PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Fri, Feb 02, 2024 at 10:12:08AM -0300, Gustavo Sousa wrote:
>> > Looks like the name and description of intel_cdclk_needs_modeset()
>> > became inacurate as of commit 59f9e9cab3a1 ("drm/i915: Skip modeset fo=
r
>> > cdclk changes if possible"), when it became possible to update the cdc=
lk
>> > without requiring disabling the pipes when only changing the cd2x
>> > divider was enough.
>> >=20
>> > Later on we also added the same type of support with squash and crawli=
ng
>> > with commit 25e0e5ae5610 ("drm/i915/display: Do both crawl and squash
>> > when changing cdclk"), commit d4a23930490d ("drm/i915: Allow cdclk
>> > squasher to be reconfigured live") and commit d62686ba3b54
>> > ("drm/i915/adl_p: CDCLK crawl support for ADL").
>> >=20
>> > As such, update that function's name and documentation to something mo=
re
>> > appropriate, since the real checks for requiring modeset are done
>> > elsewhere.
>> >=20
>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > ---
>> >=20
>> > One thing worth noting here is that, with this change, we are left wit=
h an
>> > awkward situation where two function names related to checking changes=
 in cdclk:
>> >=20
>> >   intel_cdclk_params_changed() and intel_cdclk_changed()
>> >=20
>> > ,
>> >=20
>> > and I find it weird that we have intel_cdclk_changed(), which checks f=
or the
>> > voltage level as well. Shouldn't the voltage level be a function of cd=
clk and
>> > ddi clock? Why do we need that?
>> >=20
>> >  drivers/gpu/drm/i915/display/intel_cdclk.c        | 15 +++++++-------=
-
>> >  drivers/gpu/drm/i915/display/intel_cdclk.h        |  4 ++--
>> >  .../drm/i915/display/intel_display_power_well.c   |  4 ++--
>> >  3 files changed, 11 insertions(+), 12 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/=
drm/i915/display/intel_cdclk.c
>> > index 26200ee3e23f..caadd880865f 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > @@ -2233,17 +2233,16 @@ static bool intel_cdclk_can_squash(struct drm_=
i915_private *dev_priv,
>> >  }
>> > =20
>> >  /**
>> > - * intel_cdclk_needs_modeset - Determine if changong between the CDCL=
K
>> > - *                             configurations requires a modeset on a=
ll pipes
>> > + * intel_cdclk_params_changed - Check whether CDCLK parameters change=
d
>> >   * @a: first CDCLK configuration
>> >   * @b: second CDCLK configuration
>> >   *
>> >   * Returns:
>> > - * True if changing between the two CDCLK configurations
>> > - * requires all pipes to be off, false if not.
>> > + * True if parameters changed in a way that requires programming the =
CDCLK
>> > + * and False otherwise.
>> >   */
>> > -bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
>> > -                               const struct intel_cdclk_config *b)
>> > +bool intel_cdclk_params_changed(const struct intel_cdclk_config *a,
>> > +                                const struct intel_cdclk_config *b)
>>=20
>> The new name isn't very descriptive either.
>>=20
>> Outside the cd2x/crawl/squash cases we stil have to consider
>> two cases:
>> 1. cdclk frequency/pll changes (voltage level can change or not)
>> 2. cdclk frequency/pll doesn't change, but voltage level needs to change
>>=20
>> And that difference is what intel_cdclk_needs_modeset() is trying
>> convey. And intel_cdclk_changed() tells us whether anything at all
>> is changing.
>
>intel_cdclk_clock_changed() is perhaps the best name I can
>think of, off the top of my head. But I'm notoriously bad at
>naming things so take that with a pinch of salt.

Sounds better indeed. And I think intel_cdclk_changed() would be more
concise, but that one is already taken internally.

--
Gustavo Sousa
