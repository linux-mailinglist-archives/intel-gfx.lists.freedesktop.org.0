Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B69718E0C
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 00:07:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79D5A10E1F1;
	Wed, 31 May 2023 22:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B28B110E0C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 22:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685570850; x=1717106850;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4qZ7M6+f1gbkayDHdm7C4jVPVehZ8PegR+Wt0uMjfhg=;
 b=blVO5STwnm2kGX2nKp7Ya5YZvvwf1HDTzlhuKLUOAZ/52l3chjo8v5Z5
 EHCmLaTHQN5RkmUiCcRNj8c54dUYtVAYbAB3puVUtS/Wz/MlDii3TFfgn
 TRQKbWf6k+3bPm0YKpMqlw+wpGgAFSq1eKZB39eIhyimmN5RvLFIxaqTh
 3Vs/zPy1PedN4UnfqgGtdS3yt9y6j2u2A+UVDbDGfwI8EoRaLcOEszdiv
 O7C4+r7l3jhDT4v7E6mLCK8YzvyjXGqW2ctCjbUjZjIpTdysTPxtubCnn
 osVgtAyVJg3201akh+AsqSFqvUG4LC6Jqg+jrp5rHOg/gfeW1Dcq/p4Hc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="352881548"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="352881548"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 15:07:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="740135233"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="740135233"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 31 May 2023 15:07:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 15:07:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 15:07:28 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 31 May 2023 15:07:28 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 31 May 2023 15:07:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NfFeqIg0i4cwTpIFGlzowYLceFcbZEmRMLgrG6aPk3f0Y/QPGvZ4qG7QyTFdV3nlhcnqVmzVSdfshPAX6UyLtD1a3ZsYVICDLfaHTed/uk3U1lc0fNhcBt4ho5N6czXGmACSJS++Fd2bvDujKHManL197e06enFAm1DklPsXVU8yfKe2dHGTkdOzco7dad1L+sVRA5bbTxm4Ij7zen8wZCOvN8rMMf6BM7PtnxfhIj+eITDFeTBYh0/kbY+JUR2JLjYyQVyUool9MZy6XkfaXuyd+83drh8Xq0OBwjic+z/4HO50AQU1GyviRf4Hd9gnaSj/yBy9YOR/OK0kD+2KlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cJTKdjLJIVomHMBKIAFwbRFgcUF0X0KO8DsPMBheNvU=;
 b=gsd3RQczcmkZ/hmFiBJsC7tCYvVrXbSiiZGPjGF7DFIM98J2DJjOpPnEdEBT/ClEXHyje6LHZ1INmIlWosd/+zEYxwHc9zEsfSJTiRsimMEUanp3KUN81Ri0VhU7T/oBW5OdKsBCAIE3BLh8SDdbFKdbUt1XRjJz/KuX6OJ60cxdKTEvSbJyMCFh8vTh/2h8ML5PKUu5l1hKv6pFsfqFRZjzSuugRoHLcVjJ8BRHQWvUAHX9/vgnByvOtfKwNxqIm1KzqewqIhaQJy8tuUaGer9R9p/ZUhfBn9OVxTpn3+Zdk4MdCHcm/ZArRzI9r4BI74caI9BiZWzX1mVWb2aJtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN2PR11MB4239.namprd11.prod.outlook.com (2603:10b6:208:192::20)
 by BL3PR11MB6530.namprd11.prod.outlook.com (2603:10b6:208:38d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.24; Wed, 31 May
 2023 22:07:26 +0000
Received: from MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::e585:1863:208d:7e7b]) by MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::e585:1863:208d:7e7b%5]) with mapi id 15.20.6433.024; Wed, 31 May 2023
 22:07:26 +0000
Date: Wed, 31 May 2023 15:07:22 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <ZHfFGr2j14/pK+tX@msatwood-mobl>
References: <20230531213547.1525692-1-matthew.s.atwood@intel.com>
 <ZHfAsU7tQ+qD5sBk@ashyti-mobl2.lan>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <ZHfAsU7tQ+qD5sBk@ashyti-mobl2.lan>
X-ClientProxiedBy: BY3PR10CA0018.namprd10.prod.outlook.com
 (2603:10b6:a03:255::23) To MN2PR11MB4239.namprd11.prod.outlook.com
 (2603:10b6:208:192::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4239:EE_|BL3PR11MB6530:EE_
X-MS-Office365-Filtering-Correlation-Id: dec68c30-4add-4064-65cd-08db62236b02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /M7z4IDfL8u15fZZDHZVwNWGq0S+yGxYQwIQ63+c/YA8Dff2eYaqzEDOKe5gSf6PO2S3ujlLkoUN3v95MZqQ+mqxwzQmIy9sv45NAvb2owHI38aJADm6FEDJicvDCC1pKHsPXL48HJI/XJXPu77SmEMZ+crAA/kR5YyNyBf/PFs4VM4f1ZhR9uRvRg/DsVtXKGI00pNAG84flH/MZF8NB45fS2kCVEXitX9pXGbFzmebnwCPkTpzRSdjaT6gkAYS5WK9zSGJ5liDwAERMeOCdzrHFEokqzbdylsmzTY8JhajqqXwgK63mDaE7YwSI3yqOAWtwfsjvZuDn5tyydOQhDKMdvdtao448ESLEILRgDI5J2j5owvwe5weF9XE96uVh2DngCLwAfkdGtQYJXDw7gmu9HfvTga3t2dQUidFEXZTLqQf2OnYVUecNFbiqZOIcHNXaA4PLynopcOVRHmAJbldcp9iHji3P9Evk3PbKySZMKq2njF/rEt71+CEZDaJT5szqxSBA5Y0lhUt1KV3MtPugjn5CP4kmLPKow9endSj0uOk2Su90xBJtyoKMgFk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4239.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(136003)(346002)(376002)(366004)(396003)(39860400002)(451199021)(6666004)(9686003)(26005)(6512007)(6506007)(82960400001)(4326008)(66946007)(66476007)(66556008)(38100700002)(41300700001)(33716001)(6486002)(5660300002)(316002)(8676002)(8936002)(83380400001)(478600001)(86362001)(186003)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dDcxemlZYW4xandtd3V4R1IyTEk3UnZSOUI2ak9GZUZSczFDWEVzUE1qaTlO?=
 =?utf-8?B?a2hBNm9UMUZ2ZklTMDR4M1dBN24xQ3NQK1NQNGRNMEZSaWltS0xiRHBpSHBL?=
 =?utf-8?B?TUJVM1FYR0F0WjdvWUdSb2huQ2JBRnFvK0ZkamJyVTRlSDYvOXl6dktUVXlt?=
 =?utf-8?B?TlF1aHVvNnIxVUdhUEhHVXFlVzlrSjN5YTNJNHJLc2pDZWtGWmtvZHA4QWYr?=
 =?utf-8?B?bEpId01RTFZZcStpSHNSd3lpQU9SQW9TWDF6eTI2YWVaTmhYSzVnUWZFYUt6?=
 =?utf-8?B?ZGN1a0gzenJaaUZLbEk4Ti93UDNiWUVVZ2RKb2lVZEpqWFh4dXAzOGJzMEk5?=
 =?utf-8?B?ZEdrNUhHbDQ5TlMzT2ZrY3hsdExwUEh2QkY4L2gvczlhUkxVbG5veUlIL0Zw?=
 =?utf-8?B?SnJWdXdkY3JkcGgyM0Z5aU01ZzNSUGs1VDk0em91Rzl2bXZQTExUYXhESkNM?=
 =?utf-8?B?dS9tMysxVlBCUEZLaDlWbjU0NDEzdDRGQ2lObmlrYng1Z0Z0WjFWMWZFb2Ja?=
 =?utf-8?B?UkxvOHlqSEM1Mkg2R0xrbENSME9PbXQ5UFBtWm55eHRncVFKTmg4anU1ZjFi?=
 =?utf-8?B?YWlEcnVnaFFVUlA1YzJSVVNGRlRDUzl5cTNPbFFGMWYxMXJzSEJHZ1AxMHlm?=
 =?utf-8?B?ZWVwM2xNdENHVEVwd0Vnc0NJWTE0Tk1RN1pKVnJwTXlpU1l1OHhPWjJEYTBa?=
 =?utf-8?B?RWcycDhHcVU5R09qUzBPVXJjYXhsRDRtN3E3OEtEWjdVMS9VVk9LQnByR0tD?=
 =?utf-8?B?VnJtSU51eWRYNlIzUit1OExpYVpDQ3Zjcld3cGhDbGpvM2VEVkdGeEUvZm5W?=
 =?utf-8?B?MTlwSUdTQytOMFg3bU5Ud2dEUjdNYmovT1JEUTROdWdQdmlETDBHeU1VdGtQ?=
 =?utf-8?B?dm0yclNoSmNCbDIzb1M3VmhaWXN4Mm8ydmZPUzcvTU9ybU51TEdqSVc0Z3cx?=
 =?utf-8?B?enlsTnp5Y3N0VXlEVG1jSkNabzJGeVNIUzVJd2xlNERoK241d2ZLUkY5allX?=
 =?utf-8?B?ZTZzaW9MaUtVVllrNU1HV29saDZxSUZnYW9SY3ZYQmhpQ1VHQURlaHAwb1Fp?=
 =?utf-8?B?VWpSK3Y4MG1pa29oM3gwamM2bS9JT0c5elY3Z25WSXJKMUh3WWxsbGFlQmQz?=
 =?utf-8?B?SW94dmVELzhTZ2QySWtpKzRHd0pIM0FBYWJUN1ZsOEh4ano3eEYzeHBvYTBw?=
 =?utf-8?B?MnpXMHpHUTdjazNRZHlJVlg5d3pMWnQ5T1ZWWUZITXNLSnpoQUlWMys0bWVP?=
 =?utf-8?B?QXNJZnkzRG9jSDhpbUFhRE9peWZkQk1aY21BMDEvV0NyOVVGSzQwd2FUUUpH?=
 =?utf-8?B?ajg2RWlFdzRJbC84RWRVaXh3VnNzLzlUeU01Sk1TTzZ1Vm96Tk80d3F0YlI3?=
 =?utf-8?B?aGdkclJWdHNURnMyNXV5OGhaY1JkM1NQZTJJRkpHUk9uRFliYlZrNjRHeWFz?=
 =?utf-8?B?S1kwL1l2d250ZE40cVdRdVNHK09Hb3ozTkhmcURBVlR2Uk1UZk03ZUltOEs3?=
 =?utf-8?B?UWdzYlYxMmtsN1piWWxJaGljQlBzcFVNOXhlRTdTbmZZZzRLcGlQaUNZMk93?=
 =?utf-8?B?TmViZVpzdmNWSGpBVVp4SnM1T01RTzI2NnJXeW84U2hqSldzVEZTZVgzUEho?=
 =?utf-8?B?VWZLc3pyYTdNUlUzbVlQckw2REZYNjVrRXQxa1JuWERvN1NYUEFVZEE5Qlpp?=
 =?utf-8?B?WlRabVhGK0FUa2tCNnNCNFFLblk3dDFXd01RYVA5ekhyejNIOFR4Tld2RjNX?=
 =?utf-8?B?Qk05cEFOU3hKN01WZ0xsbDU4b0I4RVdLTzlPOGc3RGUrcGw3bXZMNnB5ZHhr?=
 =?utf-8?B?SUdvZTZoRkhMWk5lenZFU1FOS25yV0xLTWNtaHE2ek9tNlg5aEFLL2k3b256?=
 =?utf-8?B?ZEd3ZG41NHkyVkRKam9WU2d5dmxiVTI4dFZzOWJ0Y1Z3c0ZubENsa3JZdWEw?=
 =?utf-8?B?MnpYZ0FyTnlJUTI3SXVrLzZBODBpRC9lcWxBS041Mms4ckc5RGJXcFlkTDNk?=
 =?utf-8?B?eDVyRnl6aHpJTFNNNjJmcURSVWpyc09ZVG8wQnhZcGROdXp1UGM4cG1BWGVW?=
 =?utf-8?B?RVRhNjFkN3JyS1pXVTFHK2pwRE96RXBkQkplNllsL1hscnRuNXE3RGs0Uit2?=
 =?utf-8?B?ZFZpemtFZ25QMHBCNWRlN2tDVjZyb2doMW5LVEpnK3p5c2RGTFh0ajVmMER5?=
 =?utf-8?B?WGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dec68c30-4add-4064-65cd-08db62236b02
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4239.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2023 22:07:26.3467 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DkbZUYNqvNMz4bvjLSvtmIwNdZf0ktlta8MULnZD/9Fo1bcMVgIe/l1bPNkI8VgzfTTu7Aztpu5nkkcWw4rkFkVViD/mFCEecVdRiP5uKWg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6530
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: sync I915_PMU_MAX_GTS to
 I915_MAX_GT
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

On Wed, May 31, 2023 at 11:48:33PM +0200, Andi Shyti wrote:
> Hi Matt,
> 
> On Wed, May 31, 2023 at 02:35:47PM -0700, Matt Atwood wrote:
> > Set I915_PMU_MAX_GTS to value in I915_MAX_GT, theres no reason for these
> > values to be different.
> > 
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> > Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_pmu.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
> > index 33d80fbaab8b..aa929d8c224a 100644
> > --- a/drivers/gpu/drm/i915/i915_pmu.h
> > +++ b/drivers/gpu/drm/i915/i915_pmu.h
> > @@ -38,7 +38,7 @@ enum {
> >  	__I915_NUM_PMU_SAMPLERS
> >  };
> >  
> > -#define I915_PMU_MAX_GTS 2
> > +#define I915_PMU_MAX_GTS 4
> 
> right! Why not having
> 
> 	#define I915_PMU_MAX_GTS	I915_MAX_GT
> 
> or... why having I915_PMU_MAX_GTS at all?
Originally I went the route of s/I915_PMU_MAX_GTS/I915_MAX_GT/g.
However, this introduces many changes to where you then move
I915_MAX_GT to and #include blocks in fiels that require these values.
In the end I decided it was better to keep define and just change the
value.
> 
> Andi
> 
> >  /*
> >   * How many different events we track in the global PMU mask.
> > -- 
> > 2.40.0
MattA
