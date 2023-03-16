Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D816BCE0E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 12:20:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6C9910E09E;
	Thu, 16 Mar 2023 11:20:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77F1B10E09E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 11:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678965630; x=1710501630;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YFkwwu02+Ggaw0H5gilQaqAyV0LdKIQJYZfdDcP44VI=;
 b=nZ9zOc4k31vfyZLQ9lSfHZub+9ltucuJcPDufI+oe+26hq/+B8P6aa8S
 MJhggundJftAyhVjD84VmHTNYfs391rkMpryVUXv4/SZ/IaqisWMlK6qg
 0Qp2ocqlclDMQM8I+/5+fzkp7OHONztqgwx08zR1XBtem1lQ7epGj8ZZh
 rpTt8AF5nDvpU0/buwbXnSaFJ0Wav0FhXsrEx/dv5UjsWUWpKlh8uWido
 qLcLzlvgnzAy7SB0p2JOA0TWNknLIe9o69iSV4klirALb60gz59XRwamp
 hPIKKqOh8bSYl457om+h64L57Fk5Y4dBODc98hvtXGqNAzFMxHwaQe1dP w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="339486352"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339486352"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 04:20:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="657145296"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="657145296"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 16 Mar 2023 04:20:29 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 04:20:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 04:20:29 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 04:20:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TMHxu04bYuP8CAtgbOuQpzRP1xCiK/koFUEkW4aJrJP6TbOafZ9KfWtGWwYFReMhGPVuH/UqYmCx60G03NPxMBC0LimJYoXcRm8nX57AJyyjm+KUlsdrU5rI/QbpvWwLn60vxDxH0OFmFqmsF29IKme/+nhNMw8p+Vx/8ACySEITcpQGGQze3WQoWHogvjNGR1HhUoTGb4AkDdwwRhnMbngdadFvD6eXnJmdcU+aIQIinJa2KRrd/qxKjW899SQdAmysSbsWEFcZcex5PQX78wNT0j7bBkGMujYg9J5VsJvStjzdPAcf4l+6a9qMi6bja5w4Qb/7ZxyzYPC+0/w8BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N6QUTUlUc1BiZMmFwteLdrd6t4JIa893xmYaNH3V4u0=;
 b=eZnDppKdto/wFApiqqR67wtuSAdjYabMMNblvWCeO3xUm7CDk+8v42gxIveCvbzD8a+PsgMuZ/556z+xhPgohZoLN5IX6HOvPxCMJCNqGB2J/U8YCwf7q5cpgILu5DrpnQed+gatxIEQXCtwkv6hEgFoUfT/GkCC2J7cVg0CgtQ8b2CAxivh+dqiMnRCJFh9xdmGx80/An+PsjZoBPUSq/a0bYFBDAVD09rxHLE/RSmOpia2ShgvtVvTzUqIiMwb9MuVGp3x5LrUrCEwaG94/Ah+pqE7jkSdePCssthQDPtuytwt4yBQVaQdWFpTJZJ7VmwFkgvGgwY/Z2gvnh8QRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.22; Thu, 16 Mar
 2023 11:20:26 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942%9]) with mapi id 15.20.6178.033; Thu, 16 Mar 2023
 11:20:26 +0000
Message-ID: <15d32e96-6468-901d-b78a-bdbd402ef163@intel.com>
Date: Thu, 16 Mar 2023 16:50:18 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Manasi Navare <navaremanasi@google.com>
References: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
 <20230314110415.2882484-9-ankit.k.nautiyal@intel.com>
 <CAMNLLoSvJ1i0JyzLK8k-jy7Nih8DFrpYJ=fPqLbKToTTA4dVGw@mail.gmail.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <CAMNLLoSvJ1i0JyzLK8k-jy7Nih8DFrpYJ=fPqLbKToTTA4dVGw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0030.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5949:EE_
X-MS-Office365-Filtering-Correlation-Id: aabd1c7f-08f0-46ab-0015-08db26107129
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jGKwlWd4nG2/n/fZUCMwIcwBo07EKfGgvaZMGPBDrqp7+MhUmgbekKYZtX9spnHEcUNihZCIOeTSEklUiZFlQuAuxUppu4MSeS7E+EFfC2vDRs79Sgt+2ECW6aLkfBkB7KCGudnPhNWPrjRj10BKIqR9ROoxauCVysi1dpARSxpyu0vOfdvdxWJj25pXQgMRSPioQyeiIKvMV8GH1FRXf5/BDTiLmPjxNKPORyEoliwcvp2y2u5O7qYqseIlRzXUz9eIDthWLr6B4+XtNypI0xlsOnVcCtvtJQnfQpbV4NkkW0kKoGFHkSM970XbviuvxiCoUOqEvu785X09f09+bIdfvkEtTwAjK8iSCGmKFkGh2FwZXFOUvuIsq6Oxgzsg44OyeKomRv5vaakAC9EcRAbav4a5JLq+6nWFQo8QjARuzitWZKPDUpLLDPXMWyYxx3srNygvxNXxjDjmas5UX/lUM6JQGR3Ca5bHLYub31Qr75RBhCIONW7EHqoLhB+L6RFe1I74fP8YtpBhuiT8CnnzDCakP5MpEJzqZo2faAkdU4u6VoBnr5K8VJs9TV7MDQBK5gLMmICwN+We1GalgNu6y8A+hldJKOro1Uqo+9LU1zxBlPyTqu5gfwhdCGCY1NhiHm9zGhEfiXhJRmd+OUo6pKSB7ytUJFU/73uM9KKdT+ysCCDWUTFcm3b0nWxK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(39860400002)(366004)(396003)(346002)(451199018)(55236004)(2616005)(82960400001)(6512007)(83380400001)(36756003)(5660300002)(478600001)(66476007)(41300700001)(6506007)(966005)(26005)(31696002)(6916009)(186003)(2906002)(8936002)(8676002)(86362001)(4326008)(66946007)(6486002)(66556008)(316002)(38100700002)(53546011)(6666004)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUZPMVl5aFVqN04zTG9OOXV1T2pyWXhjWVJTWnBra1dvMGNXekpqSzJBWVh0?=
 =?utf-8?B?WE8xcmNkSkJPOUpIK0VzNTBaK2puRUtIeXVRRTc2aEg5RHhEekF3TkhkSEZI?=
 =?utf-8?B?VnRHVDVsR296NlV3S2E2WUJXeTZtT0hNemZlakdaQUhiRG5LbXFnSndaaGlG?=
 =?utf-8?B?b3dpMVNPMEJwMENyTGp1R3k3djJ3WnlIN3ZsUUczbm05Z0oxWG1EWVZBc1NH?=
 =?utf-8?B?bVFjRzhRVm1KQXlKZEZpSTVja3lBaSt0TkpCOWZIaFNIS2hzVU8zNE02QXJ4?=
 =?utf-8?B?a0d6WjVEYk1qRVhrWHlvZHl5dURZQnM1VERtdzNDV2Rha2wvS3hFQldNM28z?=
 =?utf-8?B?c1ByRCtLa3g3VDl6S3VmSHdyVERwK01JejRRNGNjWkZxSy9IaG5JcjZHTmg2?=
 =?utf-8?B?bTNEWlBUTjFsc05MK1ZYYjV5bEIxV2Z2OE5ZcXZ2TmptM3gxRVE5MjVVczlZ?=
 =?utf-8?B?c1BGam5XdVFVRFRpeUk1UWh2MzZiaGQvTGV5NTF2RTh0Q3RkU0lwNjhQbXNQ?=
 =?utf-8?B?T0Q5aGV4alJkNXhaQmlrQU1DL2lHWkx3Sk9ONm1Vbm9JbktOSFhueGFkMXh2?=
 =?utf-8?B?UDhRUDhUSFpKUjFRa0hMNlMxV25wcUI1ajhseUpFRkFmYlYrU3A4MGhrS0F0?=
 =?utf-8?B?dWczZkFscTl3d2x5d2t6a05qbDNYZlZJa2Yyc2d5aFJLdlJrcFpaNmRhNVBX?=
 =?utf-8?B?Vk5BNnAvUTArWE91UGpqT1RkMVZGVHhkNWN5bmhSNm9QZndoRy9rS0hYcjl1?=
 =?utf-8?B?dk9KRllOU3lnUHpPMENIcG1hTGRzYzZmbytybTB4dnNQS1poZUU4VGwzcnkr?=
 =?utf-8?B?WG4rZDA1WkRYanB2cUVWcnZOcTNvNE0yY1JRSmNEZEdZRWVvRzVWendnNEU2?=
 =?utf-8?B?WS9rODM1YWUxUTdjLzVLaDJBeHBqalRycDNIV1pNSjEzbkVWK0k0b3BVMm1N?=
 =?utf-8?B?ZlVUYWQ5TzlZVDUvZEY2MFdvQmREdHhjUDRRZk9ZT0luYUV6bjZOdFNpY1pS?=
 =?utf-8?B?WHE0bmQ3V1JrR2ZjNzdQaVI3RThsL2RWeUFibnZSMTNMSzdORjJiLzlmSjJ0?=
 =?utf-8?B?aVNITWdOZHRGTjJyMFFvZ1dBK3EydXJrR0FFNVhYSFkwVGp1WGZWWHVraEZt?=
 =?utf-8?B?N2VUWmMyZXluTW5NNktabFkrZ1VWTVEzdnBHSTBVVEdjTzJwZHNUam9CYUVl?=
 =?utf-8?B?cnVTcW80cDVuMmtsOVIyRlhJaXVCVnBmcVdqMmJWa2JIc0tzY3Q4QWpQTlVR?=
 =?utf-8?B?Y0N1c1lBTG5NTUNubDJqdU5XbGVSTkpSN2phTUMyVjNRcDREQ3BucnpBY09C?=
 =?utf-8?B?dmtqT2ZqN2RRbVcyUjZoTml0NlRYS0FKWWdmaEE5cVIrSEpmRXhWQWlnNjdJ?=
 =?utf-8?B?R1BPR21UaktPUUJ1cjFoQm90dWNCeDV2U0JZUTFKVXBhbkVjcVE0bDFBS1Zn?=
 =?utf-8?B?TVVacVJpM2dJRmY2ZkpxOVYxZXVjcGRQTytJd05iZEhhd0RDTjlvekl5Tkhi?=
 =?utf-8?B?emR0OTlWNThjdmQvSTBZU0xNKzBndDBGdDBvWTRXNmNuWEcySGlnazFSakto?=
 =?utf-8?B?VitHU3QyYW1NdjE2aHprbGFici9BZyszb0pXNi95Y2U3K1lEQU83OFU5Mm5o?=
 =?utf-8?B?RFVmK3FGZUZOaEZPNkwxeG5XUE52UEhzeVBFWkd3cmFyRTA3RGIxcmxaVVU5?=
 =?utf-8?B?QmlzcW1FOEhidFRlT3dHb0xIQTArenlTMTJxOFZJbnBiUWN3YVdCMmxxN1lU?=
 =?utf-8?B?b3IzejlHQmFVWE5PM1VDSU05aVFwYU8wMVdRT3oyK0tiaUxvc0pEWjUrT1la?=
 =?utf-8?B?MWtwNVBrK0R0ejNnVmY3Z3ZkZElUVnNBTGVMSUFDL0hoREpvbFNIU0lOSDNN?=
 =?utf-8?B?VGNyOXRGT1dHd2djNlZkUURwQnk0L3hidHdadXhqVGdXdGJpUDJ4cmdXci9J?=
 =?utf-8?B?NWZJT0xkN2J5R0YvYmhTRndoQnA0Z0hwbVQ3UCtiY0xWWHUyeDdDeHRnM1gx?=
 =?utf-8?B?Wnlhbm41UTFPczV2RGpseUdqd0Flb0Q4aTE2MGEzV2RjRGFJZHB3cEV1dUxv?=
 =?utf-8?B?ejhoN1J4clEya3JPbVA2anU0WFBtNEFlMGtYVGlOMHZiWmhZWXNsdG4vUysy?=
 =?utf-8?B?d1ZQOGFwVzRFVEMwSysyVEZMdzI5SVIvMVhsbUYxU1RaOUVYNGlMbTBlQ0RH?=
 =?utf-8?B?dWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aabd1c7f-08f0-46ab-0015-08db26107129
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2023 11:20:26.6628 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WBdyDoqj6ebDMjglcJuFi4R6b+EwIPH4UKo1OriIZc/cBfYA6jRF0F6SFn9davuYPaYqXC3TOVGR+kCD4FLkhN0mWiaLN6D5Qm8iCfSGlC8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5949
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v11 08/11] drm/i915/dp: Avoid DSC with
 output_format YCBCR420
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

Hi Manasi,

I just realized that there is a newer version of the patch in another 
series for DSC 420 support [1].

I added this patch when I was debugging an issue with PCON + 8k YCbCr420 
only mode, and noticed that we set the output_format first and then 
check for DSC.

Later this patch was pulled in DSC420 series and then got some comments 
and modifications.

So, to avoid having similar change in 2 places, perhaps will drop this 
patch from this series, and collect reviews in [1] for the change.

Currently on [1], the check is outside of intel_dp_supports_dsc(), as a 
separate function explicitly checking for the given output_format, but 
we can discuss and have this inside the mentioned function.

Apologies for the inconvenience.

[1] https://patchwork.freedesktop.org/patch/525903/?series=114246&rev=3 
<https://patchwork.freedesktop.org/patch/525903/?series=114246&rev=3>

Thanks & Regards,

Ankit


On 3/14/2023 11:03 PM, Manasi Navare wrote:
> Since we cannot do DSC with this output format currently, can this 
> check be added as part of the intel_dp_supports_dsc() ?
>
> Regards
> Manasi
>
>
> On Tue, Mar 14, 2023 at 4:07 AM Ankit Nautiyal 
> <ankit.k.nautiyal@intel.com> wrote:
>
>     Currently, DSC with YCBCR420 is not supported.
>     Return -EINVAL when trying with DSC with output_format as YCBCR420.
>
>     Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>     ---
>      drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
>      1 file changed, 4 insertions(+)
>
>     diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>     b/drivers/gpu/drm/i915/display/intel_dp.c
>     index b1431ed175bc..99a5cd370c1f 100644
>     --- a/drivers/gpu/drm/i915/display/intel_dp.c
>     +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>     @@ -1602,6 +1602,10 @@ int intel_dp_dsc_compute_config(struct
>     intel_dp *intel_dp,
>             if (!(intel_dp, pipe_config))
>                     return -EINVAL;
>
>     +       /* Currently DSC with YCBCR420 format is not supported */
>     +       if (pipe_config->output_format ==
>     INTEL_OUTPUT_FORMAT_YCBCR420)
>     +               return -EINVAL;
>     +
>             if (compute_pipe_bpp)
>                     pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp,
>     pipe_config->output_format,
>     conn_state->max_requested_bpc);
>     -- 
>     2.25.1
>
