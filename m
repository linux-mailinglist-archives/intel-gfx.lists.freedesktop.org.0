Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 875B1781741
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Aug 2023 05:47:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 583EA10E010;
	Sat, 19 Aug 2023 03:47:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6600510E010
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Aug 2023 03:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692416858; x=1723952858;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gqgOdswZgxfmzTvjb6bj+AFLH5bxFJLiPknRsbRr8Og=;
 b=TuuYrlSCYWJwomlDwxq5KsZwlTf051tUXIHmB52Ns/j5Ew5BqFdQJ58p
 Lbs0DPINh62FseNYzzCDJkDO3B2oOOT8nYhS+pNzM6jiVU+HlRuBm6jAG
 miB3buRu/hL6bq5zeVGydHXHqkh/gXDFtImpEBKYS5SuWFArN3FoZnq2X
 rn0k6TsNS9qeunN35zitbhzWtBge/f0hii+8/o6IuYok3SmC9uuOqb8V2
 RvFA1DMWq+LEcmTvn16HutUMfcUfg31DrGSB8xdA7/FiMKOVqpaqtPsIJ
 6IDkSslyS59xALKuR4UalJQfUQqLVEtvmAdNnuHcvuPDrO4zso90PA+k1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="372153716"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="372153716"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 20:47:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="764772167"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="764772167"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 18 Aug 2023 20:47:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 20:47:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 18 Aug 2023 20:47:36 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 18 Aug 2023 20:47:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hav2qHL36wAQk472uwP6Khk99/+0fiXKm4Pdyql78kP82nXYBYMswu8O/qf0R1M6HO5dM5UFLAtEsLZ8b7ws+gTbDTXsBhl7E6FpgAdb0S8OPj9OQgxaU++S9jeyUjB7LZVAQVRa6LNqHx9G57JeYmUDYTueX7ErgNWWmaDQgJfodrhQg7DMFz3kGGW+idmaiUID9JA/Hg01WlQFu4scAG9GiLbg6BD2ux0g/B5htd2dx+qWPXCcMuQ1dveiI2WPG2bUJsxHateZPY8sTS6ejfsfYcKTDLAe1iphdU4wKe2Y+lLilncZoRtkQN2NPpztAMLeMeli3kDsgyn9IqnvHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1mDNcyQIvYGqW3VuUnRV7+cOvVHhTM5CVMwNlaUtr1M=;
 b=B2iaPmeSbcqA2G/2V6FJZ7GvYVWeN9s/PhQ4CvqMWPA602QosXmqLJKVRujq0IJ55bEpis9CdYq/MAiS2EOaEhuQE81v+7MNg7T1z3Aeq1uF/KWu3aOCSDpcEtjfldZY6jbKhltE5lw/xUjsGIMhMhVu4da6EV3X8RG36CTOy5yc7O7hhnx/U0ESEOLBkXkZ2aBF87Ix2D76aE6i0U7FoH1VFv5Vyf2QgthUTgfYl5mn8UBLNaKy916alY57iclTKTRMVJAqXxug3U0lmhIMGTMUwJaHCQo6pLtkSYBJSq9MiW9NAp/6/K5rrXU/w2YMH9Q+m9d0brbAsVNvDE7ThA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA2PR11MB5114.namprd11.prod.outlook.com (2603:10b6:806:114::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Sat, 19 Aug
 2023 03:47:35 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.020; Sat, 19 Aug 2023
 03:47:34 +0000
Date: Fri, 18 Aug 2023 20:47:30 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Message-ID: <bnbw4nv42wwbk5mhztglj5a4t4sjqi4rqi6u7f7gfewvigky6z@yiu6vwcp3l5d>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230721111121.369227-1-luciano.coelho@intel.com>
X-ClientProxiedBy: MW4PR03CA0016.namprd03.prod.outlook.com
 (2603:10b6:303:8f::21) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA2PR11MB5114:EE_
X-MS-Office365-Filtering-Correlation-Id: b428d2a5-5cf6-46ea-069c-08dba06705d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tn/ZtQ7SbywuuwCB//z0GZp0QBZPDv0Q6P96D9coQGb9L2IUiqESsqKhn88ehbxWuF9I6uVyJ2yLNXushDTyxOp1wZ00fvhK0EyY3VYH3HfPWam/BeG3utEnk5jtWV1JN78NOYLfY9AnrAXRzpbhc2NEMoUNZ6ZM1gJ2jAhSDEbA3w6j/8q5whCwIwn+Jr9slb0/eTzGR1c2+SHyGbWSxlQBnWyzb2W/GhiygasDPiDs9GLIXyraeAUXmLgoH5nbHuToT+z3oURA1JYhdEd98j/rfNDgftkDvREnmMBi0rO3Mb57eegwlezcTIBA5m3lQxjAClTmbe24VURbyb90EaED66+lOP+ByzhH378Ss3HteFy/65iFkVclJQq4q+Yxo6Up0aAsVScHIWdL3EaNqf9VbzsV+TsVz6GiYwxjguETQQqzZa9Ecpki1biA6GX3Qx8xl40v+gXE297ZCzT/T+OLBi7Pi4IGYPe1/5eizEBejA6RqrjVSebk8W97xOIVbaH4Wdaj/mBj95uCZUkLXP8Nq/c7x+eJeC1RqhYS9S8mDAPwuGr9v+hN7kMyrSSH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(376002)(396003)(366004)(136003)(346002)(451199024)(1800799009)(186009)(86362001)(5660300002)(41300700001)(4744005)(6636002)(316002)(2906002)(66946007)(66556008)(66476007)(8936002)(6862004)(4326008)(8676002)(478600001)(82960400001)(6666004)(6486002)(9686003)(38100700002)(6506007)(6512007)(26005)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dIZn6TljVNvffBlVkC45pztZTUfvfRNR1XP8y60dKL/QrM/3ew1TsIXoBzjk?=
 =?us-ascii?Q?dkyFQIrQmbfYmdV3F4gFfNTiikURQvA2UW0lew+w0aWl/9nn75F60fOTRSX8?=
 =?us-ascii?Q?6+3lXw6uL5ju18RJeQxcTZuYMlwD63JPI5u3EJLbtWdyYSRYaqyHFUvUFGg7?=
 =?us-ascii?Q?oX5172CMnXmoYoKt0AL9r0rEeLbHdS1lZVUqsCKDTItnlOQJ6YToxkPBxPiW?=
 =?us-ascii?Q?+BGmXr1Cf0GqvLH3mzo3SQHEi5rgqmU32sc9e5qknXXXTc9Wo91kEO3tH4Hh?=
 =?us-ascii?Q?n73Z3vvpKMnqUVT5p1GOtbZ0gwHBqx4HoWyp0JRkEY9YoRCzd4J/jhXQwX1T?=
 =?us-ascii?Q?djVuNBCVWfHQKfaQjZrVUIpedmlM20vm3D2Y66jMG+2vbq9KsVRcMKBcp2zE?=
 =?us-ascii?Q?cTJcnDTqw/OXIq1ESO6z0mfab4MGZ7TdfQ2TjV+loj616SeIfExPFJx1vCqu?=
 =?us-ascii?Q?dfNBE1KdgszZXSGiLBRpczLuqJADWQkkFNsy5DYduHZYASQLL5/sRCnoKEaK?=
 =?us-ascii?Q?5ya15Bv/m1S389DUc4LHbJaLsD03iR64QcTY8jWayeOtSY/nR3Xj+wQwNPe3?=
 =?us-ascii?Q?qySmgqvrKpJ9gj4v9sfJ794W1cwGzGCJmAMsavrqzCTPPfhYgOGKpNHNwqzj?=
 =?us-ascii?Q?nJ8cL5Zc8WKUoJxovKkEaB/rDK89NV3n4n0lAM907WV4cXeSRdfOXi7s0RnG?=
 =?us-ascii?Q?J71WcTxP8eJ4Ce3Rh8aHqaoHkjk2psqEf7NVl3FOevoC2gTKKykxrhJcM9Ra?=
 =?us-ascii?Q?107WZVzz+5yuyzZ5i7EoDqxaZCSWtNCUh9Dwm0LZAN/foKKd3zRWTsAk4HTp?=
 =?us-ascii?Q?C0nZWDKRb9boPvkmLRaJIMO9Wg2HvZT1/Vr2ZLmhJMLS8aBheRo/HYbriCbO?=
 =?us-ascii?Q?hXVO5Crgw8GKC5XLNp+pX5Pz2gBTHD4dInaw+hAb0J1HNs1GrDrgDqhcdAes?=
 =?us-ascii?Q?wTa9xMALfMC9MibCmvd7PlowAZWrzI3NaS2HCLrJUT2PqQ4X5yyEYQW+4UIq?=
 =?us-ascii?Q?5l45kwPxDdQiO9475iz/pt9D/mRmloF4us7iOGZmqcI6M9ckFw8SmtkgUKuI?=
 =?us-ascii?Q?wc9vZX28IH0SODrFKjZyVavKPFpTzfR864HXkqipqf5QLAxhHMMIOC87SSMZ?=
 =?us-ascii?Q?tES73Ypmr+q7Y2GIvcNvzvW1nbSi1mmry3ADxG441ZUWRDkBeW0+lkD/Eugv?=
 =?us-ascii?Q?QN92ff3IbGYFTYz9C6L+Ur69O8JwV7bgY9wQcXZzkbj3kPqPOVIKKt6dUbOC?=
 =?us-ascii?Q?NhgDsYbXw+LVAWBn+Xofl2xrTry07MhwbMJNeWUPFSkEmAzy6dO4TfozQLAr?=
 =?us-ascii?Q?sXZqGV6ypFAQ5UEOMPoPnau+kVvU/lA8Zhcodq5uoxwq+WvO8SLPhRiaBWDU?=
 =?us-ascii?Q?hJv7FZJ7MO9dXBep1v/i4B40/SXZek1S9l//0OIlsd4ahDtU+p9SohAYOgfD?=
 =?us-ascii?Q?Ey5ctwtyl2067p0gDsqRYdnAKj2NcM3xKiBbJfoCai6e6cQdBYlVFuPfJPYG?=
 =?us-ascii?Q?A+uV8W0svIX1qOJ8S97HM/1I95oRtJhG04TzByudS+vgWxVhpgYt274ru1yk?=
 =?us-ascii?Q?Hx6Uu1nH+LHhzTAqWk/l+7wkhRMDXR9EgIrMVUjtKNVfstPux3kNyEylNqx2?=
 =?us-ascii?Q?Yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b428d2a5-5cf6-46ea-069c-08dba06705d8
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2023 03:47:34.6921 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nlMrAjvumeN2mH6hkCMPZ9pE5shPMDBy8NMmlL70gfaLRuHpeAZBLbsOuBMtlEmMMAhZsAi//2/tHubwIHNs0NPeC3kgBZQ7am4u+bRcgWU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5114
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 0/4] drm/i915/tc: some clean-ups in max
 lane count handling code
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

On Fri, Jul 21, 2023 at 02:11:17PM +0300, Luca Coelho wrote:
>Hi,
>
>Here are four patches with some clean-ups in the code that handles the
>max lane count of Type-C connections.
>
>This is done mostly in preparation for a new way to read the pin
>assignments and lane count in future devices.
>
>In v2:
>   * Fix some rebasing damage.
>
>In v3:
>   * Fixed "assigment" typo, as reported by checkpatch.
>
>Please review.

what happened to this series? It seems only the last patch is not
reviewed. Are you going to submit a rebased version?


Lucas De Marchi
