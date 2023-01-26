Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9093D67D44E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 19:37:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5FCA10E978;
	Thu, 26 Jan 2023 18:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F60D10E978
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jan 2023 18:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674758219; x=1706294219;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=q1lYNGJKySOCpf11/IztbMM5J0AhkIfnTR+N31YABL8=;
 b=S6AgiLTbVTczJNu8aY6fkAajyO1IXd1qF6vLVIpwIiu8gX7mVMGrVMcw
 5iOcJrM0X2JFcbCT0z7iWe77N+atgk5/IdC2A90gCmF9YL/yqqvJsx1r5
 oZSVtu/HEbSiGZXlVU5oqKsoV53ZBXlMiBLI3Wt1HsWMquXi5u+ggEfsM
 fbkxs2eiNmqFzdEXY1E0Etj+fXU0ov93W0J2YkuxSEC4XHxkMaOtjorjL
 yn+mR5XCrrA0nqyE8MND5mDt4zmlCgUAOAOPhHA9RLlzJn+GCw3HRePnZ
 NJoYY6LHk81UkdR1mJHFeAmnxRrSljpnyRDxM0CrHCFVibw/HqcGinghK A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="391431381"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="391431381"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 10:34:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="805468118"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="805468118"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jan 2023 10:34:48 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 10:34:47 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 10:34:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 10:34:47 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 10:34:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EbIjv0OaEXBCj4f4fwML/L94XCt9qysT0zBDQqYqm9KRVN5PnGFkLC7heRVU7kJb7HRrP1ECXkbMI8jSuVedXlRPLZXjexwThKb6onbuRMFgfIruBp7ZwTOc3F5BQwQIyI1ZssTPJidyGi9jjrRCG6m2nJLhlppzRFFuMyDJ3n3tbPKEau0SUcCTgRu1zT0h0gBC7tklrpHR5C+KvrCy8rQXykBJ57UhRTXmf6b0miM3uQas/WHyw8+dLcgskI2K3hmHCOS7IM9gwo6kuq6vg1gTzToMWKjF0cdzWK0D73ZWwM5Ji5fWfH2cCgS/nU+Npp97AEU0tOGnzJ8EK/1w2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TVb2UX7k0WXXcmO7cFrzQ1sJUMfk3dgK99Ljd85Spo8=;
 b=R9TtrHfMuuOm7FKa3rwbA69LbinURsl5DLgaTMo+KMNBGl1yxkdGMkXaOk06Qgo8KU4X994kp0xp8jhgKue+HnnQby72fDZDyIZ0E1ebmKRIVplRgFrBBQeNBju8539fgav39SsyQkJt9HtoVpHFcxFgMEpMHK/k+ZlYYagQI/6s631SttKmqDOgWGzLX8fOWUfFUiWBlL+QovbgPw5XzBoXMQtsXJ2H3X35VyOrUFXCxh0JSONULf70p7nVn/5pu66WL9jf8IirSPmggc2UYzj4m2RqkRpmPw9WTIHQgn2HLUDQMJVgaKCaAKe+dp+ArDtPQUzLKkyZ+JJZGJN9UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7213.namprd11.prod.outlook.com (2603:10b6:8:132::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 18:34:44 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6043.022; Thu, 26 Jan 2023
 18:34:44 +0000
Date: Thu, 26 Jan 2023 13:34:40 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <Y9LHwB5iMyZtHGx9@intel.com>
References: <20230125104439.1662832-1-jouni.hogander@intel.com>
 <5a3fd9d547723c726b0f170e894cf471e7eb8ae1.camel@coelho.fi>
 <87bkml5wv4.fsf@intel.com>
 <e0fb44004a740f0bb676cde16d8cc3a247ac106b.camel@coelho.fi>
 <f90662ade27cf750704896eda0663502fd05c4c0.camel@coelho.fi>
 <87357x5lir.fsf@intel.com>
 <20230126163642.4ukp42gs6zyssgl6@ldmartin-desk2>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230126163642.4ukp42gs6zyssgl6@ldmartin-desk2>
X-ClientProxiedBy: BL1PR13CA0450.namprd13.prod.outlook.com
 (2603:10b6:208:2c3::35) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7213:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a563a67-b64d-4e91-940c-08daffcbfecd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Hop+4s4bsjwnjNbFvUNUip1D//NQifWyCW5liep/sX8bGy82qLnv/9CWTR9UWM15vmqdTYZ63RxgN5Lr+/2F9L4ejIYAgjjkLnoYBsYqg7UnAzpaicBiv62kt1dY7dGFCqiKGbLEwMw786Sax31l4J0KcUwOhueIZD0YgTOdc8Q8K3cG10QBBaTDik999GpAeEJHFK/QEL/wpgf7vGIbZjkTpE0w84iCVZ78m0levNRxU43G/PTD6h/xIOKM/7BGcUa+k8TftqrFDKgk7bEN/PNeMsf3YUEYEHLIRWE/BBqK5LKzQFC9g7YZ381fTmSEhf2R4yOP3smlishOhKEigO7EVL9gmqFvbjhvuOjEjBfRXlE4BMmOvWYmoA1rEdddnMZQKWvc1Wj+RznXKiukuOmadjrF1mW1ivj6VXrKwm+5emgaYI/fe4y0LUrMJiOOwuVHob1OfgyzTkraIuEHNMEu6h0kRDQ3WUpvqEP92ndL1v4+KQhf2VJbaeymsTACrR4D90rj+aFmHWCNvmCOT1+txxtMs1budkjVDL/Y6fNASjh1D4/EZjjKi8+ZEcd1kXzTKQaAVupR/GnwzK2kgdAca1bevfJ3kJkScomS6No3gDxXLL+A1KJ1OjWRhsd0bTfgOIxl6nchl38alGKmVA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(376002)(346002)(396003)(39860400002)(451199018)(5660300002)(8676002)(8936002)(6862004)(66899018)(82960400001)(44832011)(38100700002)(41300700001)(2906002)(4326008)(86362001)(83380400001)(66556008)(66476007)(66946007)(66574015)(54906003)(6636002)(2616005)(6666004)(6506007)(478600001)(26005)(6512007)(36756003)(186003)(6486002)(316002)(37006003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkhKVGV3L0RzanJxQ3c4a1JIYi90QXQ1Q0RiY3FlVFU3UTE3ejJYTjEzRGlO?=
 =?utf-8?B?Uld0eTZVQnhmQkJ3VE9qT1djeEkxTElYYmIyQThvWmMyWmx2QlRaMFVBcmNs?=
 =?utf-8?B?Z3B6bjB0ak9pVzNFMExTakE3WDMyK29COGpCRDlKNE5mVm8vekk0OFhway9n?=
 =?utf-8?B?elBMaE0wYkVzaG15V2lDVFBjSytEOGFJN3VsUU9HYW95M3N4dkZySUNUb1VK?=
 =?utf-8?B?cUhwV0NGTnoxbUJkbGV4d3JMK2I4a2Q2K3dNcFJSeHRTTndUZGZhbVdUMktW?=
 =?utf-8?B?a2p4WERjdzdyTXdRdko5SFo1Y3ZkSkpHeXhXcmtiL1ZPVmU4NFlWTjJGMDRw?=
 =?utf-8?B?OWpHTmh6Z011K1NHaHpyNWQwd1p4ajgzSzd2S0JLeVNqMDg1VmJVbmZ4SDJk?=
 =?utf-8?B?eXQ5RWZNWWplbzNjOGFmcEwyMUNDd0Z0QmZZWEJJOG1LN096Ymc0enFBeVkz?=
 =?utf-8?B?SC9qK090MlpVWXlqcEdNak5EWE1nZTBiTHNoL0I0Ujc0MG1MYXErN2k5SXM0?=
 =?utf-8?B?RFZSWjJaalQ5YzMxNzRNdUdiWUJPcVkwbTZvbDZrVWt3OGFFRnVxZERVVHZm?=
 =?utf-8?B?aSthQnRHaEdqblI3Y1RIZzl1L25EUG95MUdZVHlsNjM4cGpUNlltUnVjOUYy?=
 =?utf-8?B?elRhdDljdFI5RWJnUnJvTEVZK1ZwSHF3aFVod0NEMTQ2Y2pJTDNZSExGNmRG?=
 =?utf-8?B?dWNLWTd0ZXNtUjh4MjV3YTR6U1lMODNtOXp6SHB2bHdZaXMraWhwS29oUWY0?=
 =?utf-8?B?SnZqcHVDVXRZcTBmV1owWjEzUFB1anlMTGVaOFhneUNiNDVGb3hkUWYySjNY?=
 =?utf-8?B?eXBUTG9ZOWpxdlRGTWFpcFlLcHc1dkJiaDdCOVVSRk4xeDhHSkkvZHVRb21X?=
 =?utf-8?B?azRVdnNtK2tJK2EvVGliQlJ5Zmk5d1ZzTGVDamN1S0lacVN3eFBXbHNuaHZ2?=
 =?utf-8?B?NXhvZWNkQlEyL1FRd3RaMGZTSWpKalNZZE1aeitEdGI2K3Z4UmxlNlJXNHQr?=
 =?utf-8?B?WGJ4cUY1b0RXQUZlTFZ4bmxvOGJuNVVaMk5qMlZURnFUUXNKUE5ETFMwSHhj?=
 =?utf-8?B?T0dBZDMvWEhYcEc2amxtV0RFV2RPZ3djb1l4SjJpem1GSDNMMGM5T0svMVFa?=
 =?utf-8?B?Y1FlOGxLVTJOOUJRYkM3MTZweEltcFNzTzJTQkZlOGNPV3htT3JuRVF4OUlN?=
 =?utf-8?B?WVhDdTZoNW9DWVBuTkdNdjRVWWx1czFFU0Y1VmpnRDFRSm5MOW9pd2dvbnVM?=
 =?utf-8?B?dlNqZ3BHNjkzNmhEK1ZDTjY1SHlPeTZ0V1p2ZDdraTVLeW91QTQ2OGZ3MnRT?=
 =?utf-8?B?NXlOTTdhaVAyMW9LcjA2ejZaWWtXcjY5VnorSWhZRm9IY1I5NEVqNml5Qitv?=
 =?utf-8?B?VTBTd1luZzFxTHhRWG04cnpjSVRZTlBXTyt2VkdZc0xLN3ZnVER5bUNCUE5h?=
 =?utf-8?B?RXZwWUhDOHA3STVFNml6b2FqeDRhc1ZNQWQ5UFRoWDF0V2Via0V4Q3l2dkw2?=
 =?utf-8?B?TjIxeWpkVnRZdExuc3hwY0RQblUwRUcyT2ZTazE1ZkxlS0VaMURaYmtySGph?=
 =?utf-8?B?NHhMbi82U1dxOWJZM0ZRREF1SVJTNU9ySnR6SStDeUxQLzF3ZFByUE0ydW9m?=
 =?utf-8?B?UmhIdnBTd2FnNSt4Nk9BNUdZQ3REd2NwRDhWYVhGOTBSQ3lMMGFvTWd2aU1v?=
 =?utf-8?B?RWV2R09XdnNzTEIzT0YwM290bnFzT29wU2pQbUs3bVFseGMveTduMWVVSXND?=
 =?utf-8?B?aWRyRWdDa1ZFWEtwNGJpSFdhWk5hT08vMHZaVlRqOWkwSDhvSDRUVENkMnBM?=
 =?utf-8?B?MC81NVNlWnQ0bWRJREsrZHZCbmxzRHkyRDJBY3JSd3NtVlZpVTFJTmVVZjRs?=
 =?utf-8?B?THhPYlFYWnN1bytQV2U5Ly9DMSs2K24xeVRJTmtrTjhLdnA2V01UaEgwV1A0?=
 =?utf-8?B?Z0JXNDcrcU5jbkVDY3ZKVDJBaHhPY21wNm5nY1VQM0dZaW00VVpycDB2TUd0?=
 =?utf-8?B?WWpjYmthSms1T1VtMGtTN0IyU0lDZVkvSUZrY081Qi9kUUZwOTZmcE5oclFC?=
 =?utf-8?B?anZCK3NyTjVsbWdITURCYUF1VFlyZC91a0dHWFJGMEl4ZzFMcE1sWnJqV0hl?=
 =?utf-8?B?NlVZQm1UWVczSjlhZ2tVTjBFT2JQMVN3NE9TTFdXUzNkVVk2YWNsU0gzc1A1?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a563a67-b64d-4e91-940c-08daffcbfecd
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2023 18:34:44.7333 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r2G492e+IgxBoRXmm6VAWOCks5Ged+CUinDh/ORuiWrhcYT5hUifHJ58pi5EY304iewZOme4mJUcIQT4MCjT9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7213
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Split sel fetch plane
 configuration into arm and noarm
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 26, 2023 at 08:36:42AM -0800, Lucas De Marchi wrote:
> On Thu, Jan 26, 2023 at 06:05:32PM +0200, Jani Nikula wrote:
> > On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
> > > On Thu, 2023-01-26 at 14:11 +0200, Luca Coelho wrote:
> > > > On Thu, 2023-01-26 at 14:00 +0200, Jani Nikula wrote:
> > > > > On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
> > > > > > On Wed, 2023-01-25 at 12:44 +0200, Jouni Högander wrote:
> > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > > > > index 7d4a15a283a0..63b79c611932 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > > > > @@ -1559,7 +1559,26 @@ void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
> > > > > > > >  	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
> > > > > > > >  }
> > > > > > > >
> > > > > > > > -void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
> > > > > > > > +void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
> > > > > > > > +					const struct intel_crtc_state *crtc_state,
> > > > > > > > +					const struct intel_plane_state *plane_state,
> > > > > > > > +					int color_plane)
> > > > > > > > +{
> > > > > > > > +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> > > > > >
> > > > > > Should you use i915 instead of dev_priv? I've heard and read elsewhere
> > > > > > that this is generally a desired change.  Much easier to use always the
> > > > > > same local name for this kind of thing.  Though this file is already
> > > > > > interspersed with both versions...
> > > > >
> > > > > Basically the only reason to use dev_priv for new code is to deal with
> > > > > some register macros that still have implicit dev_priv in
> > > > > them. Otherwise, i915 should be used, and when convenient, dev_priv
> > > > > should be converted to i915 while touching the code anyway (in a
> > > > > separate patch, but while you're there).
> > > > 
> > > > Thanks for the clarification! In this case we're not using any of the
> > > > macros, AFAICT, so I guess it's better to go with i915 already? And I
> > > > think it should even be in this same patch, since it's a new function
> > > > anyway.
> > > > 
> > > > 
> > > > > The implicit dev_priv dependencies in the register macros are a bit
> > > > > annoying to fix, and it's been going slow. In retrospect maybe the right
> > > > > thing would have been to just sed the parameter to all of them
> > > > > everywhere and be done with it for good. Not too late now, I guess, and
> > > > > I'd take the patches in a heartbeat if someone were to step up and do
> > > > > it.
> > > > 
> > > > I see that there is a boatload of register macros using it... I won't
> > > > promise, but I think it would be a good exercise for a n00b like me to
> > > > make this patch, though I already foresee another boatload of conflicts
> > > > with the internal trees and everything...
> > > 
> > > There were actually 10 boatloads of places to change:
> > > 
> > >  187 files changed, 12104 insertions(+), 12104 deletions(-)
> > > 
> > > ...but it _does_ compile. 😄
> > > 
> > > Do you think this is fine? Lots of shuffle, but if you think it's okay,
> > > I can send the patch out now.
> > 
> > Heh, I said I'd take patchES, not everything together! ;)
> > 
> > Rodrigo, Tvrtko, Joonas, thoughts?
> 
> If it's a sed or something that can be automated, I think it could be
> ok as single patch as long as we find the right time to generate it,
> when the trees are in sync.
> 
> I do remember doing a sed s/dev_priv/i915/ (or it was with a cocci
> script, don't remember) a few years ago, and I'm
> glad we are giving up the slow conversion and just ripping the
> bandaid.

Well, I honestly was always in favor of this approach if possible
to automate and all... But I do have 2 big concerns here:

1. If we do this we will never ever remove the implicit dependency

2. there will be so many more failures on automagic stable backports.
We will need to scrutinize all the failures and track if the developers
are really following up on the backports. We are already bad at it btw.

Jani, you mentioned offline you were afraid of some implications on
xe if we don't do the sed, what would that be?

Thanks,
Rodrigo.

> 
> Lucas De Marchi
