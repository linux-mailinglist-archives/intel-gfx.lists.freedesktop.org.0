Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B378686CA3
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 18:18:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B560310E437;
	Wed,  1 Feb 2023 17:18:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2011B10E437
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 17:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675271904; x=1706807904;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OtDH0aV0l8j5/NhgtzL4fpGT1ztYESg3dBRM7qIEufg=;
 b=O6qQ6fe/nh4yVkSMKcPVChQS3yEr0JBTf0hnW6UXXbG8IBNKj0/dF2F1
 kla77x+tfzhZi1Hek9r0a1/EMZdt5+wovbcglHfds2TLlW1GHuKDujW4f
 ZAVjWQOupS7TVcssFE93JZvHEObk9PYWYMNMA866Szzg7bdKezjkeHOWd
 4F78yILuTDDmw32hClcvK2GDMidcreB9mcuL5VN2apJ+Y2FIBQ3iU5qHz
 hUCM3GyVmr8327n7NLBDCEf30gi1c+hts0v1RyOfPLXDWUCkxyvE9dSQo
 uW7iqm9Rp3v93oT4wvkUtWDX48WcvhI++bIUT4I5ziIbiYyqvpfYzko89 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="390599266"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="390599266"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 09:17:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="993767884"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="993767884"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 01 Feb 2023 09:17:35 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 1 Feb 2023 09:17:35 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 1 Feb 2023 09:17:34 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 1 Feb 2023 09:17:34 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 1 Feb 2023 09:17:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ck9QuaL4pWUK10X0Vya+4CT1nFecvU+JTxOAsZs7uPC9myFGwpZq65kbI7+1qIqNThfOw5HbRZ0ij30sukP13/31BQ2dsBZOrTtkdVR+DxmMZyM5KEt0tTMYB19zy5OXQX0t/Tr2UmpqFk5owhzSOeK+BU26HCopTie3vXDNYSsCPOT0LqjeTcX52xyTSDHaAYUD529gZjRZNkwMxf7zJ+RVp3nXyvUV+Te/oHlV0Q2xVtl2xjbmNgL2C1CrjKLwWbApP+z9thLv8rctI9wu6dIh3xA42SPm2fm9kWim3w3PevZw0VNXC1NeBKVCEkhGA+Gz/lyK/+fJM9FQaXYm8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lcoips63XD1d9kfMb7IKRMsA7B7RJapA29eInVXhl0U=;
 b=JxlWyzdMDfH6WxR9970iaMQXbDoqPP+/bZ8KGw0XnGxUeaRq7+qZS7s1+kO8uWDzF3TE/83wnEmgReEVpYV8q9C8mRRUb4noss6nVzX4PJT8Pu3oHZ7dARjqfYD6SC0zF1pJlNLSAQ+p3eeN9mKJhcFbg3zlNreyidbjxg/EcJH5h2Cb9e/Sf94tAYIhOG3bxfEfZr+qRuiNYzYI9scwQL/xgOD/7lm9RRBNmFlJcQaTBkwMNay/Smj8a/vFE6Gz4/AEQOb0oXzd14cHJY+/sXHQgji3MVkvqZFfhORVK40PIRZJubeWcatvwR1UlCmhQW1YqK7NSESmBMAGm0dGvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CY5PR11MB6463.namprd11.prod.outlook.com (2603:10b6:930:31::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.33; Wed, 1 Feb
 2023 17:17:32 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a%6]) with mapi id 15.20.6043.038; Wed, 1 Feb 2023
 17:17:32 +0000
Date: Wed, 1 Feb 2023 09:17:29 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20230201171729.kraw2dyvhfnjkuue@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20230201135329.514677-1-luciano.coelho@intel.com>
 <87zg9x1fev.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87zg9x1fev.fsf@intel.com>
X-ClientProxiedBy: SJ0PR05CA0021.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::26) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CY5PR11MB6463:EE_
X-MS-Office365-Filtering-Correlation-Id: 9016bbf5-0d21-442f-28b9-08db047833fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YtNnXOgizcvLESA5/v5oUBnGgFPRWtuKRH7xa9mzg3DGp32Rxb5lRpmoh7771VUR4i9F1N8HMTtY2HgkwLJIQId6oBj920qUJwreT6f2txDTbkZdCI0RWVy2F8C7kifsgYuPhh0/Ex17q7ZK7ufs2WhDa58Z4N6yXnlCyGoIKwNKaD4F9T5J9MnKf1v8hg4iXssSzahKXO2h+MBbrcPcBEfGcXs+q9UnbCNSnTGzU0E0B5RCkiNrPUZgLSaQzEWEoAmUadGUvyNNcMUVuCGxxl+CvaUw4wb9fdaTYx2glOQKnkJvTjvHRe2kpb6CsNWH7rdR+Ih+lQnw+UfscpjWv+6a2v/Zd+Im8REEQL7O6LUF/qhVfWMKLqUwI2K7FkjAErIATLMDrBDkh+fyovqsPz4kvuyCDdYvqD9f+1YmA6y2lJmTGJKBj5T39fTlv6yc4XSQ3Z7JaBguu6zFmvRRYB5HDXzgd+O6UlUFxE/blTwZQ8IAdZJY5muogaVycDW06hVKO7UDHb0K1IggY7UhqZRvH94YdL52RxqAzRatMVPkKmeebur1c30xGD7f3bujDZPzfonUKL3C+QYjZ4ndvi8sqCp8Xy+213PUGZjFNIR01h2y+q0gkzVvo/wn1V0qrChoK5v6+l1fiM/fH6Y1HQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(396003)(346002)(366004)(376002)(39860400002)(136003)(451199018)(82960400001)(38100700002)(8676002)(5660300002)(478600001)(6486002)(2906002)(86362001)(41300700001)(6666004)(66476007)(4326008)(8936002)(66946007)(316002)(6512007)(6916009)(9686003)(26005)(186003)(6506007)(1076003)(66556008)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zMbfV1wE5R0gz2S4xkJ0nQbPhoH+YP8O/zIUjbiReCuFrmZhC/gzStp5YG+p?=
 =?us-ascii?Q?9P2FfgE3zlhdhZaIwrXM1BPK9dpKmowZ97Md10vuQ1QV7l1vahbAFKPXwbXF?=
 =?us-ascii?Q?UmhDP5tAfOMpR7rUrnIZYA5a911jGCEtUfnFuhitVeOpFwTTJoXI5F5IZWQe?=
 =?us-ascii?Q?BR/fIG+HiiouNRTK9EZvJVWWpT2U/ZMFJlT734WfSmByafpfA/092sKL46Pj?=
 =?us-ascii?Q?9sRf4s4sKmzqRyNN3SmFvdYwzplVKcA8D9Lf1CY1bpztwGdAzk3HPYy6siJL?=
 =?us-ascii?Q?QzBTNQuyxivR9vl+SeIGmNaNrYuDt1s3gjJWzqTBa9yS80hXJwy4rU0BitHs?=
 =?us-ascii?Q?+a+mUeNarLM8LVqqqJSqF2rzMBLcnEd0UsFhf7DUqyYGl6a4BvDAxwQwyEqf?=
 =?us-ascii?Q?YBjuBHzWpU3LhNazIT84Il66zBEk0oI0mAYLO3cwYkqHXyfutVLQZO8+KvFR?=
 =?us-ascii?Q?Lf0qs8Q6l3n1ow0vJb1JFSaXQXEZNKl4YBAC70eBdKY0tF31Xk4hTXsrQK38?=
 =?us-ascii?Q?/gRLr/7ATjeKKEjgiayAxpZFu7bEFx2UhaTcSJHu3jTzzArqyCDN6nFuw7ya?=
 =?us-ascii?Q?soSuPjAqdVk29NqVIJQJnRdikS7ZJofWT7STVXWcZ41qiy4U8pt23szAdClV?=
 =?us-ascii?Q?3XGRqxqjlbzftR8215h7GimThDnW9AJdf4EpRtZWjdgQT0PNJTyoQBWbqpFg?=
 =?us-ascii?Q?7rPMrUkeR1qc6sLt+z8osHHMqUxwlrEFioLZ3YQBaYDKx+778GPOYKfFxq7a?=
 =?us-ascii?Q?0/vuwb6Bz01eB20KhHuDocQeBGs5vQz4HqNf++nUIp6QGQDxu/tjnoBj5owB?=
 =?us-ascii?Q?GYWWO7gZBQ3I+Hp8yjuwOOcx+6vDDNdW3ns6nWzm0vLVvrXM/eux6XoJo6IO?=
 =?us-ascii?Q?gM/kXV6lgE6PMUYFQH+p4hy8yWB+a9h7HDSIo5/YVmzHnTze5nv/J2FgK7mI?=
 =?us-ascii?Q?U7eZU0O9e3jfj3y9qhJyt+fKlj+JRiarxFZZEKN2ebwYxYpqzXy9b7C/sMb6?=
 =?us-ascii?Q?WSF6tsp9pCHSaxSSwkRPIvvB7XGBc0JJtl1nBUb7AsG5fi0CozkkPIOXr19f?=
 =?us-ascii?Q?4rzioChMwPM1O4FPyQxNhZMAZYeDwKWQqnJgUwA8NfTQhcU0PGqQLTfWOXZ+?=
 =?us-ascii?Q?fzLkILG20ZjQCP+aCE4O4xZyO5b/iKK3M/yQBVLuUpqQCyorc4hLcR/1EjdJ?=
 =?us-ascii?Q?A3biYzA8gsa1spZ1rErZ/zKJAb+2H20QqJGJ3O7Yslm5IFSY+uHWndIVLNss?=
 =?us-ascii?Q?DG9SJ/dC8o0ZsCeikFc6JC7X8IgNyCwCf1gMnW2TdakOy72rnfmua1R9cN0m?=
 =?us-ascii?Q?Xc/2icf1H3qB3EMvdVZD837L3mMKvC2HEszG2mG3cZ9C6rQ+eToQn6vfoMvy?=
 =?us-ascii?Q?eBaThBAcuHzeedQKAofPS1YUAboABubYpKChdfRmI/by6kktKtekzSZfBcAw?=
 =?us-ascii?Q?cVkvp/f3lzWW7HQOc0SJgKdiChFTV7ODI/XVKZ/mNXmItPzvNJCrWVqsmqwa?=
 =?us-ascii?Q?YJgZbc5F4pmyEfo5mI4MtMbExoWhjLQM7GHRlSCLy66uv6Fanh4o5DXGXyBg?=
 =?us-ascii?Q?gvCggtf1sE9IX6k+FigP3zIM8D3UbPZHmsJmBMuZmcZl4ObzQ+TQZNy3Km8p?=
 =?us-ascii?Q?Iw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9016bbf5-0d21-442f-28b9-08db047833fc
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Feb 2023 17:17:31.9994 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: esuD3VaUA3S6liAPa/Vms6WY78FaufOZ+nvasy1pvOjR/cp/Mr0+ZTGdwqOm1sO2urdzfJn+9cKlRljdeVfRnS64DewzD4Sm119Vc0caTwk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6463
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC] drm/i915: make dev_priv usage explitic in
 some macros
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
Cc: intel-gfx@lists.freedesktop.org, Luca Coelho <luciano.coelho@intel.com>,
 rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 01, 2023 at 07:09:12PM +0200, Jani Nikula wrote:
>On Wed, 01 Feb 2023, Luca Coelho <luciano.coelho@intel.com> wrote:
>> There are a few macros (e.g. DPLL()) that implicitly use dev_priv, by
>> using other macros that implcitily use dev_priv.
>>
>> In an effort to align all definitions of struct drm_i915_private to be
>> declared as i915 instead of arbitrarily using either i915 or dev_priv,
>> we need to make these macros explicitly use dev_priv, so that we can
>> change them later to be defined as i915.
>
>Lucas posted a slightly related patch [1], and I think based on the
>discussion we should probably add AUX and DPLL registers that are
>VLV/CHV specific, and include the MMIO offset directly without dev_priv,
>and non-VLV/CHV macros that will have MMIO offset 0. This would reduce
>the implicit dev_priv considerably, and avoid the need to pass i915
>pointer to those register macros altogether.
>
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>> index abbe427e462e..d00e9321064a 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>> @@ -100,7 +100,7 @@
>>
>>  #define _MIPIA_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb000)
>>  #define _MIPIC_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb800)
>> -#define MIPI_DEVICE_READY(port)		_MMIO_MIPI(port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)
>> +#define MIPI_DEVICE_READY(dev_priv, port) _MMIO_MIPI(port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)
>
>While this kind of passes dev_priv as parameter, the dev_priv in
>_MIPIA_DEVICE_READY and _MIPIC_DEVICE_READY is still implicit. I think
>these could use a similar treatment as in [1], moving the
>_MIPI_MMIO_BASE() part one level up.

Agreed.  I think we should have these manual changes first: they make the
interface better and can even be merged  without churn to the codebase,
as they are header-only.

Then the rest we mass convert with a script like shared here.

Lucas De Marchi
