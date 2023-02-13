Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BC16954DD
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 00:40:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15C6D10E795;
	Mon, 13 Feb 2023 23:40:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25C9D10E799
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 23:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676331609; x=1707867609;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=a7el/GMxX/dMgC73wOKrk9wtqWZ8rQTz97OV3FCvSbg=;
 b=BzEYOYrRC2NpBcS1rEYX0k+iqdiddoLmH2G3K+Aqs4oN6mwfcRsWXiOf
 +coOtbfks7aMu4bGd1j5JVSHGSIpIeC4Qn68EjWer7owhMSiZ/ssY/rzn
 /T/6yh6DrVcwkUADCO0O4YVCsKV5lOEatHAknVWdqPDqSzDszD2FruMIc
 sAdyRJCKfudB4311rs5UyGnsNVQbvfOkIhJmqa5IRLQvJQ22RzWKgTu+2
 yxWFaaxlo1HDdko8OTKwTnO8ybKSUWZRYAjU2EsGpPq5B8tKSW/tP0XVt
 5lYu+EThbpCsdRrmS3RynPM6fT3mjNYSXkRJAGpcr0voAz/yq9M/PiMjT w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="332341017"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="332341017"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 15:37:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="842955266"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="842955266"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 13 Feb 2023 15:37:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 13 Feb 2023 15:37:00 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 13 Feb 2023 15:36:59 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 13 Feb 2023 15:36:59 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 13 Feb 2023 15:36:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b7Itylt7ISxjpYUyfXzXgXccCIRjk39InEvf1hvdV+hN9qhPZmydgyG+Kmr3nabcSheV9kB4TBgOOXyle5VRtDE1qizD1D0xiBhck3GJnROfpv8seWcht5CrE9q5kl8cqQojiSWeWS1OwyZIEp0WTGUTD6IpIpqzu/BE6fDhOo5itgzFwqMCJqNA2G+mpzcvpJKeVR7kpdeQbV1B77IGOz35yxM8Nb5Ab69HY9WFBG6nQ9JNNdd0ikjiJ2Inc8ZQhiVmMUR1B5OTCj3BGuJBK1OSxNqDa5aG+pcn3T19GKLVQRANrBKPEQnh5lP+Su2YZPGRDKBARg1EZ++kGVChAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YovkFirwFPx5QzI9UykZUrkL99vfeFV2wJzeHRMGXYY=;
 b=X5n/YS21pwBI5dTZDZO7PPea8JQLW8kfKcPWz47aFcVNxEr3ga+jL+0HhLPVSq+b/VgHR0e7nwqZnoh6JWGNYF8v77g9lKs+shXOPVso6gwGf2l3qdFPTt0xSe/wabO0JS5vZV441b2GQ76OZXt9kO98JNePeseIGulhA19wExkbgMK60PlC8jzIMtNQd1V7UTO5DGf6PHK9Wddkkg2A/YqJjrprruhvah1tCVJBjr8o0bJZZovgjuSAcsMh4LWPevF9Cke1NmJRZ4/tZfXgu1Vq8sUMMlo0v0zIOIjSAX2oxkGDqdSaHBWx66pOWV2k8SRJdorl9zYnT0nJiphrGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB5029.namprd11.prod.outlook.com (2603:10b6:510:30::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.24; Mon, 13 Feb
 2023 23:36:56 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a%7]) with mapi id 15.20.6086.024; Mon, 13 Feb 2023
 23:36:56 +0000
Date: Mon, 13 Feb 2023 15:36:54 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
Message-ID: <20230213233654.t6icjq5e2bhxn44k@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20230210150344.1066991-1-andi.shyti@linux.intel.com>
 <17d5dc0d-4bb9-6e13-bac1-8d1e7aad3f17@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <17d5dc0d-4bb9-6e13-bac1-8d1e7aad3f17@linux.intel.com>
X-ClientProxiedBy: BYAPR01CA0032.prod.exchangelabs.com (2603:10b6:a02:80::45)
 To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH0PR11MB5029:EE_
X-MS-Office365-Filtering-Correlation-Id: a5478809-b1f9-4d9b-3e20-08db0e1b3172
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1rjY80d65nwmU2VgKGpEDp5MH+/JjM8YyPd5c3V260hFQgtQfGoiGrWRBie8aAtA8LOuLGVleKC+4VFESUNbfoFPbTvQvPhBoahxDqmz/KGCqQYtz/256UoW8u9FEalvksFX10Z7jwKEm/iXQpetzIlBScdNJAfv9CLl/j63V5ZbqAHX5qzs3qMYVRiWNUnuMhMxrcFTggQ0q5DO4P3yjmkDsh0uAf2dEHiLcjwwNgpwntgFO+i/PWXgJXsy/Pq/DjCoR2mMQ1w2nenUWMeBa4s2c5gzvmsTlWemAz0QYufiGSY17CtR79SfOWrQ0mAWk37bV3r85HAPclK06d8xDFra2wePwlcWy3RjSOZhy2AayDMXlxQjLMmycidrHEGZdN7c4h41X7x7n0VKs19sTrE46phZER3QRT2HXiURULs0TThrR8lYcHIqiyAS5+R7n6GgOtEOe9KzY7p29A2jVGhWq9+L973sOQ1Hpp7q/a3HiHAjMYCohj7jacN0EekDMIQq7gsSe2j7t1bSI+Qj7LxJc+G59x+6+Hg62XU8tVlkNNzGhzQ210ud8jwWDax4rfvfa7iVeBj69UDxKB+pRn51673susOHjiI1gwZgqjn7LC8CCTV3EEc/NFi5oT7TIzXkaMZvo52AuTOLl9V8PA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(366004)(376002)(346002)(136003)(396003)(451199018)(5660300002)(26005)(186003)(83380400001)(4744005)(2906002)(36756003)(6512007)(1076003)(6506007)(86362001)(478600001)(41300700001)(6486002)(54906003)(9686003)(66476007)(66556008)(316002)(8936002)(38100700002)(82960400001)(8676002)(4326008)(6916009)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8GMMcPU9DmqPEUJO53N6logyuxC37wCqU3OSNTTQ8Jzf4fAt3zjVnumxaDPm?=
 =?us-ascii?Q?hU4SNupdXrB16WOEKbCo4UOLBKkh/XsNmYxMPetrTTnW80JCjyZ6pxjHhTp/?=
 =?us-ascii?Q?qbWEea+NX7jobxQwz3oKXoY2hXlgCivU1Gx46BCYggzhKL9jYwz2Bfp+Hf3c?=
 =?us-ascii?Q?WB3QkEyyIA8ATPLmOr+3k7xtte/epu7SJLrupaSWhMMD9tUh8tPtIMsSlIGY?=
 =?us-ascii?Q?rY7vKjwcMQGSjp3M9GzB+mi4HX4qjXU53ifA6K0gG0KtUJGEmpNGoCYvKoz7?=
 =?us-ascii?Q?lC6mnLR3z9hpZiEgw4TPsmQYA1XQu7y+FCVyKP/lOali7oxn/7iQPpBeRTO6?=
 =?us-ascii?Q?Tk2Pyrrgdm0P5ebph4hxPl3Ko4oVgzBD42qbxyfQJ8DDh2mB/1xPZ30X36BN?=
 =?us-ascii?Q?zV9y6V3GBT0gm23ahlU5bHj0s3Eoa7dQZ8IwBV0us8KtwTAnch1nFay+FdJc?=
 =?us-ascii?Q?s7jmx9FjaLi8t3zlWziIOtDHSwHSawdrF72IG6LOaE5y3y1GgLykkc96kElA?=
 =?us-ascii?Q?1tmaidU9lUNpqlmRjPV5SysdxG/eG1eFcyNToP5jIHqSb2IHNN3PlvyH1TmE?=
 =?us-ascii?Q?qCCUyeeAlVGK75TzQ+BIGEHfuOAJVFUfytcizfisOry+MyfgTBuCXVgKkpX1?=
 =?us-ascii?Q?qi/wCgHLFsKwOmRfn1ArWLv6Ukd7FMsQAwydlj+0lbwz7cVxSxk2FI8Q0rd5?=
 =?us-ascii?Q?WVEzp7mqOEuu795AOWf869ffhRkaCq6frmw+WL+9/doHqMcjk/FmO2uR1h0v?=
 =?us-ascii?Q?sIAXJ5lOGNsZ7Qao5wMOvA8Yw9tYhr7Wb3REgKlXpBjtAgJq2MnfpwzntDWz?=
 =?us-ascii?Q?W9K96PUGZAy/WNnphRgdCMaUMYp6pFyE7czPbu9YxvCJjMPLmw47pdUwpWn3?=
 =?us-ascii?Q?kfaHPjCpkEFCDDqv/yEW0CiiWS6h3FrOkQT/fnMhI0LLNbtPKNfosnn3E/YA?=
 =?us-ascii?Q?aPxXHRMYpyv3bs3DiyEaePMe+CanuOJnUcA6j0Ypp193F+ANcscR41Fs7u6X?=
 =?us-ascii?Q?cN08Vw7dPkJSQzZvQ8eRgcPqqfsvOaAeJvJeuBYg/RiLA0bz078rzkOsgsYI?=
 =?us-ascii?Q?S43jrYjJne/CXr59CLDyDXIaOysDU++o5iHgX/ieyvkhh7qCFbSmZLAgCnNZ?=
 =?us-ascii?Q?akzALgZEDilTB3rWaP/IVnCbCm334j26ZQ6DT3zlI5v6oslBj8TmIiWZRqo5?=
 =?us-ascii?Q?q+zKLM9lBXIqEEmQufBx1aP2/8U7q0gjrgr3cr8WgIA+nzIRc6Q8tO9xF2px?=
 =?us-ascii?Q?vvjG0llVIR1hXp8U6Qib1r5Hib6O6NXpjLlQlZ0qEOKVs0Di2YG34jQ4fbx/?=
 =?us-ascii?Q?Hjy9tC1lIxVg8ma2oWNjB2bXL9kHV1V26YKYtCp+AMmCZ7oP33JF/IJhKlpR?=
 =?us-ascii?Q?Z3dIlkN8Mb62POXJMMQL2o5jfcSjEgzr3uC0XUcL5JRjxZDC+yw0OQzkKrme?=
 =?us-ascii?Q?wHWoq9lJogvEd9e7DErlOQmjUTXVL6pbvET1CAYBg9HBDeh/QxIT9cQOsVYI?=
 =?us-ascii?Q?6EWlY2Q2sGgkuA1/A1vS/ziHblsMdnYLeunHKtzbj9YYarCVp33XCQ0t+p0t?=
 =?us-ascii?Q?XFGsuiRobmv+1I3+YkknTY32hzhpqVlsKRpu0seSEM9Mv/ZDyOsyYzQSy9FU?=
 =?us-ascii?Q?+Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5478809-b1f9-4d9b-3e20-08db0e1b3172
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2023 23:36:56.2658 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0cDDugD6UgHJyzwAsqHshLZmhZC9BKC4A9uuTcnY0Tv0ibWmJjpnQ0Vldk7JgeyL5xFrHTC+sRkLwrRzI3p0jk5ZAKyObBfyKvRxk/1HjVI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5029
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Use i915 instead of dev_priv
 as name for the private device
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 13, 2023 at 02:11:26PM +0100, Das, Nirmoy wrote:
>
>On 2/10/2023 4:03 PM, Andi Shyti wrote:
>>It is becoming a strong habit to call the drm_i915_private
>>structures "i915", but there are still many left that are called
>>dev_priv.
>>
>>Sometimes this makes grepping a bit challenging and anyway it
>>keeps a coherent style.
>>
>>Rename all the "dev_priv" structures in the gt/* directory to
>>"i915".
>>
>>Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
>>---
>>Hi,
>>
>>just checking if we want something similar. I have this same
>>replicated patch for the rest of i915 but I want to make sure we
>>actually want it.
>
>I might be lacking historical context here but I assumption is we are 
>moving towards replacing dev_priv with i915 everywhere.

Context: 20230201135329.514677-1-luciano.coelho@intel.com and 87bkml5wv4.fsf@intel.com

Lucas De Marchi
