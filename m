Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DB17A277E
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 21:56:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F7B310E67C;
	Fri, 15 Sep 2023 19:56:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66AB410E621
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 19:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694807795; x=1726343795;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=qARD068i4Wedac2QTGTjruCs10j0axPztAeBm6QbF/4=;
 b=YMZTeO6FzsISlftp63WNq0mUA0utostqkVyti9OSmtM04WIsd3CTQQpa
 kdojNP6nk8DT7hWYCTYplZPV1CqZdVG+mv8Yj1Y9yiAzn9C4LhUFbUUMQ
 7EuZOi/IKEgaqM6EG7+GOt0+5X+h+/NM9I871o4AGef+OQ2qlH1qMc8HA
 Dql3veYFL5V2YB9W4e+yJ25uJqDqR3n8xHR31OvLjTLpJsA7rEzBn0QOr
 +QXKNRoENGaE4r/duvFrd9NLwWbvyEPoNGO6ZaStpsARYKOZdS/1/K2b6
 9e6CPI5vF3XqOvCWmrtJYF/naIBgCZPh+cBGus/rNVeXLeChR+h31qf4C Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="443395913"
X-IronPort-AV: E=Sophos;i="6.02,150,1688454000"; d="scan'208";a="443395913"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 12:56:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="810635871"
X-IronPort-AV: E=Sophos;i="6.02,150,1688454000"; d="scan'208";a="810635871"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 12:56:34 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 12:56:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 12:56:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 12:56:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W7+DA3ZI7rYWut44YtAxtN5hKEoh5fWxbU9UTFlJixEzY6pwSAv4PXqYmCXbQp30xdm7XqH7XOb82WE6w/RZ+m4eju2eCA25SUpfH3guum/C3ZzhD+GexQgmfzV6j+r1mRY8b99FeQHo4lQMNmdjWTImFw9vQSLS3eTzHQ9oGvztAcz4bVueM81JD29RzyptlpDEIVi0xA0T7X19MeuV3/n5HU6VUxRrK6eAgkdeaLQJxeNpnyKnheI9BaYATAacvtDXF+xj6Q7oNJaMyrB7wGyfzqR9/8APwq8xr4MVOZ1ygkZ62JnDRVj0li1zedV8pCiFQoMYVDesq2O9sMvyaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=REgxxtvmckT8pdEIJdj+c1mf1cbmY6Pm75vvRzVzCuo=;
 b=LFssirBfXWpRivu2IZYST3TAiss4S1UTn+31hfUqZ0XEN5Z9lR/C9/jg2DUBtJF9JpYggL8YZcIYUo65ux6pxgS0ilXBpAfdqc4fyEuSCiJbhxSNG17YN48Sl1XvR33+a6gnLLYQNNdQ3jPMXzLNx3CnlZ0Ey2sx/hcF09CmJuun4C9SNtpiw147D03ocwgL/UhHASloZD4CdHTohE6Y1o8l2g5Oz4wsavWhAZSIWjPoxLRAR4BPxO7//jtjy0H394MxbyjGM6M9w+YEWBkjrIG/54WdzzVWyq2FX5IKvSUbROxDEmDxEmB6lM4i59OTCujx4N6XnBspqGLV4AoDqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM4PR11MB5230.namprd11.prod.outlook.com (2603:10b6:5:39a::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.21; Fri, 15 Sep 2023 19:56:31 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da%3]) with mapi id 15.20.6792.021; Fri, 15 Sep 2023
 19:56:31 +0000
Date: Fri, 15 Sep 2023 12:56:20 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <ZQS25Cfog54gH4k2@unerlige-ril>
References: <20230915012857.2159217-1-umesh.nerlige.ramappa@intel.com>
 <169475627315.32041.7069993158124024215@emeril.freedesktop.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <169475627315.32041.7069993158124024215@emeril.freedesktop.org>
X-ClientProxiedBy: MW4PR03CA0198.namprd03.prod.outlook.com
 (2603:10b6:303:b8::23) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM4PR11MB5230:EE_
X-MS-Office365-Filtering-Correlation-Id: 8619841d-0011-4716-e746-08dbb625db27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MRvOdZrm/B+X48BqUqick9DgNF+nB1q38MeucakCssf/1+Vot6kpzT8zT/osgazMVvBABsf6YkKowC7V6GRzbiSmwouCakg8UudMUYakM0+5dC5pwT1VpZm4J6AMPgg5p+2fBio89jQY5VDMkDGIWFz7YPVfDRCYZ4jPVXDU2j5L0XQrlJ4TrnkVrYsuz7PZ75NpngzqlS8FFOlYcZVCcpcTsabEPVlNroKS9HUph2eLOSl4xg7H5XY2OPx0CyCGR4tK+v/+de6v/th0AVYiErt46X4ZdToEXotZ44dyEx5r2N9bHvrT2OMejAqJFB9EVUlwBJRO2JdkBdxLh2r3aM/A5CgibT3hHBcSR7/m5NEpg35KlnEiYbN9opocg79u6xZSH/C3d5f921kaLXLhjZ0MxnWKAzpM7HDBlAcekeRfL875Ybh3eXsL6s76E8BxZJE6TpHMqgt6fLF0eaB4gkBOG5p/CQcPwwQTx9XxtR3QXk0zdaBsxio4o7xHgE8GRWxxz7CtYI9+Zc2lYrYpi1KU627dNxejU+3IsK8nhaC8frqhLNEIA80N/WVacf8X
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(136003)(366004)(396003)(346002)(39860400002)(186009)(1800799009)(451199024)(41300700001)(316002)(86362001)(66946007)(6916009)(66556008)(66476007)(478600001)(38100700002)(966005)(82960400001)(2906002)(33716001)(5660300002)(8936002)(26005)(6486002)(83380400001)(6506007)(6512007)(9686003)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qm5UclFVcU1BNlZ0YWdEQTk4cWczNnE1OSs4N0RNRUxEcU1JU2dWc01zQ0I2?=
 =?utf-8?B?ZVhzblBqMGVGLzBsNVRsTHJDcUVndm9xemFFQzB2U3B3UWhsZjlOQ29ZUU9E?=
 =?utf-8?B?WktPNlMxTGtqMlkyR0lpT0QyUmdRL3VHQXZlbld5Nmd6SnZvczlkem1QSUJO?=
 =?utf-8?B?SGxWSzJ3QVdSZlBYSkhDN0tjWTRvZWJ1MzhSWldmZnJkSmM3ekZsOUlEaWFD?=
 =?utf-8?B?dUxCMmxUOFJ0S05EVVVnREhmNkg5ZWNoZ0EwbW1McG83TE4vNklQVEd5ZUgw?=
 =?utf-8?B?QUpPQjlUOERqRFJrcWFncHg0RU9pcHcyck1hTTVGM0sxL0YybHVoUGx3N3Nx?=
 =?utf-8?B?ZnRZbS9nZTRKRFQwSWl3bndOQzRNZE9nVkZxY240YkpEbTZsMjFjclI4d2wx?=
 =?utf-8?B?Q2txOXpxb3lTQUtKaWpEdEc5a3hIOFA3SkF0VEZsUkxMbXhUYkFCaDhWa0VR?=
 =?utf-8?B?d1lVazAvcWk2aTgxajZpMzdrNXFkZTdldE9jOWxTY3g3WnhzaEIzdDdjUEpx?=
 =?utf-8?B?bXpFemlsbHZuOGZrQS92b2R1dVJ5cHk4Um0yYWhpejJwaUtEYVdSLzVJTzBh?=
 =?utf-8?B?NGVJZllJdVdLQUlwMW9pOVE3YUt3OUI0WGVzTlJkd3F1QWptb0dGeVJ0Ni9k?=
 =?utf-8?B?MEYwUk5UZzd2MjNiYjBUd0FNdDAxN21HQU5JUzJvd282YUJDR1RzUlZZMUIv?=
 =?utf-8?B?Mll4bWR5T3N6Q1dvcGk4dXJMUW5tZmcrakp0UVF1UGpaYUJnL3MzQkd0TXBP?=
 =?utf-8?B?UXlwOFBoaGMyM1JBRUplVEdldUx0azZnK0dZbldlVG12VE1mS1Mxa0QwTWZz?=
 =?utf-8?B?YmE5MENQUGhobVFzOGlXSVVGT1ArdGNXTC9RbEZJbEQzRzVZWjZVRVFUYXF4?=
 =?utf-8?B?MnJ6UmNHenZMUUloUUFZbFB2alhvN0tRTjRvZkpGQUtUbU5lZHBvUkFmR2Jy?=
 =?utf-8?B?bSt2WWoxeWRBRm16OHkvRzBZRVFvYmp6QUxHS29STlIxMjEwdDJwL25tK3FM?=
 =?utf-8?B?RGFqZWliekt5bmMydWNHOFViVVJ6T0tja1FDRytYU3puK1BqcGYzYzd3UGNt?=
 =?utf-8?B?bUlGR1ZaMXRvQ0xtRDF3SGtBdHc2STJwb2NXQURtYU84c1dWNWJ5U0JjS3pI?=
 =?utf-8?B?WFAxT2tOV0M4VWZRQkwza1Q0MXFYYVZtZVBEZ3ZnK0RKYnk2RE1ueForbnNh?=
 =?utf-8?B?RzhsTnNDZENybm52aGJoSjYwalpFQjU0RVJhMmkySy9zRXYyWUJpL2hWby9k?=
 =?utf-8?B?TmZCMnB1clJtNmRYeW5UVnZmYVZRNm5ETVNSKzh3dlh5bkhIVlVMUDltUEox?=
 =?utf-8?B?YjZEUk9yZGllWVVGZkZ5K0dCQ3JwSXZmTWp5QnZHV1loYmJGWkt4VWJDaGE5?=
 =?utf-8?B?SGRrZ1lIVWFhV2llNlJwWHhVUGlmSTlqWGZKbndGajU5eWlqQjBkbE1qcGRO?=
 =?utf-8?B?MEh3a3c0cmFyQldnM085WEVRZmR0b0ZHeWhtSnlZb3RUWWVpZ1lTeGhaRlli?=
 =?utf-8?B?cWxvcjF6Rm5Id2RhOGFyZmVnejNmWnJFQ2FUMWo3aHBZWC9LeWRGek1namZH?=
 =?utf-8?B?UjhKeVFPRFNqSkxiNlhMc2duRHZqRHA0a2wxdTJJSS9rVnUzRnF6SXFuTE0x?=
 =?utf-8?B?OFJPbE81aXRHY3FTZ01wcWZ0M0NWNnNFMXBKaXlYSVZ4dzVsVjVZdTJmejg5?=
 =?utf-8?B?TURmVWNTL3JhejlCK3pjeUx6ZVpFWFhrNURDMS9wMm9uZWdaR3J1aVlHZ25s?=
 =?utf-8?B?VTlaZEhKVzBLVUZtVHpobHRQQXZvbFUrSWJYcTUwZXJxeUpBZVhTOWdJN3Uv?=
 =?utf-8?B?c3IvVU1xODVuL1AyckZRZEx3ZE1GWmxFc29ucnRNN0cxR0VLd0pDR0Fqb3dY?=
 =?utf-8?B?OERSeWZocW1LOG44TjluOHFudGVkSHlGU3MyeFNiTXBVcTJTMzNvMGhHSC95?=
 =?utf-8?B?cnROZXNlcE9sRnlpV212SUF3aStnQkJySm55Qkswb0lxT2t4RnArc2tSWjFE?=
 =?utf-8?B?TjR1VlVCMG5DSnhFKzhDcUpTemJYT1NhdUlCMW5GSUVpRHFOWEZjK1VpeVJa?=
 =?utf-8?B?RUdwdldLMjdRaElkWnlUTVlEN0c5NWdtdjk2SG5aSWFPTHNIRTB2R0M3bUVv?=
 =?utf-8?B?QTN2NnRGZWNVYy9qUFZmcDV2WDZIUGI0cStBSis0OTNFMktHQUw4SGFtS3Iz?=
 =?utf-8?Q?OgcJLInf8LTy1l2/kh4TZOA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8619841d-0011-4716-e746-08dbb625db27
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 19:56:31.1643 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0qO8B8zuKxZMQviSCLh5ukHai9VrlKg6sxzZpxjuAIncH4CeunQIB6+WATilcPLw7pY+msjls++sIhkXe14CYQNKofbtA0Ow7HKPsjtiLkY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5230
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5/guc=3A_Get_runtime_pm_in_busyness_worker_only_if_already_acti?=
 =?utf-8?q?ve?=
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

On Fri, Sep 15, 2023 at 05:37:53AM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  i915/guc: Get runtime pm in busyness worker only if already active
>URL:     [1]https://patchwork.freedesktop.org/series/123744/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123744v1/index.html
>
>          CI Bug Log - changes from CI_DRM_13635 -> Patchwork_123744v1
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_123744v1 absolutely need to
>   be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_123744v1, please notify your bug team
>   (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>   External URL:
>   https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123744v1/index.html
>
>Participating hosts (40 -> 40)
>
>   Additional (1): fi-kbl-soraka
>   Missing (1): fi-snb-2520m
>
>Possible new issues
>
>   Here are the unknown changes that may have been introduced in
>   Patchwork_123744v1:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@i915_selftest@live@hangcheck:
>
>          * fi-skl-guc: [3]PASS -> [4]DMESG-FAIL

Not related to changes in this patch. Ran the test a couple times on MTL 
and not seeing any failures.

>
>     * igt@i915_selftest@live@perf:
>
>          * fi-kbl-soraka: NOTRUN -> [5]ABORT

Unrelated since this does not use GuC.

Umesh

>
>Known issues
>
