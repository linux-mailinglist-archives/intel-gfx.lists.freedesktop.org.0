Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F96063E6E7
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 02:07:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABE6610E51E;
	Thu,  1 Dec 2022 01:07:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CF9A10E51E
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 01:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669856864; x=1701392864;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=oV9d3TA5WZF6CuSo91xve87pRUJtUaw5/DdLKNCihi8=;
 b=KfpXUL5ae/yFCmhdjTjCRJbicdWoP81dgNYVVraAtjmyXH6Q34LwzP0s
 gO+W9+7U5fgV5BE/jlluVqokm7Bo1UlV0B+0nUeMfKBBdedhUHJzCi/ck
 Uard/8b/mNWbnPcrQ3oisCA10IzcHAjRVDK53VMsbR80Lc5mZHULnuaHb
 j6MlD6jxc86NtLq+zTIsXLvEpCDmGKwX8YUwN/nJAMvT8Cm1yvw/+dMOR
 nVwPk0g2+LQ2hlNR1sKCzuCSYw1hqRPs4CtxQ8+m7oMdVO2GttfckwOIy
 DCT8Lqi5mLF8XsRc6+z2QoJlHD++7P6QCYWPTGCgyrOMx3jUoyMVsoS5L Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="317407964"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="317407964"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 17:07:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="707869030"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="707869030"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 30 Nov 2022 17:07:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 17:07:42 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 17:07:42 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 17:07:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=htFJ8EMLiSXnG0KDK/cfMn/L7CieW6DMd8dO8qtNTT5S+iZdhahx5dAy1H9HVzR9dD8EnqI0cv3JsIU7CKoBVyDyfvimJ9L4P15z3RjzSEH6qhDUuqFE6zIMdrovgj5jv27lTOEyIgzNp8dyi8y15VV3FDsJ2LIcNifQO3ui8J4OR4qPtv3ljzOS7INGiwamDiMfc5Vhos3FW4AVsArVsMl7ni/K6zsQbooSpCEhxVEHATBXb2NoUVvrzWZK1txWgSRrQujhjCl3ROpMTf7q1/eahdl6Rz/3jBwqShjhvIR2No+dufyVR4Ed9DNx7aEyTs3ylXhB9BYZfdwKACR3nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WGy5k7IFM/teN+NmCGWi3yxJA1UEL0zQjxeaG7iv2NU=;
 b=keO4L84lGC8ZxDvAexU2cmDfQloHBYdXK+iSlXSHibP7oamYwKqgo6ulssukBEGsaaa543tgitH1TpQFx0qfM4dCqLO2V0VqX+xMoCHuZQPzhI02vXiENqLO07LU3atRW9tl5BkyLw4LRise4OqtE4+XpT1RccnV0Nams/1nHfk501XADbXkUoz7jgeWiEc2XtM2mkrGDL5/ECLeE3kweEJvYkuHnR7scYI5IsFTamR5MRzD6+eKuEi3MxqjF/kV6wheElMgzTGpcqCBqqGGDqqQ2bd3I4+9GdnvoNPNZbybLOBEQlFscCxDC9NXzM1+nFxEl+rvqk+Maw+mEGCcow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 MN0PR11MB6009.namprd11.prod.outlook.com (2603:10b6:208:370::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 01:07:33 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 01:07:33 +0000
Date: Wed, 30 Nov 2022 17:07:30 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y4f+UgzfPCotzlQE@unerlige-ril>
References: <20221201010535.1097741-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221201010535.1097741-1-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: BYAPR05CA0102.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::43) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|MN0PR11MB6009:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f1f0780-0109-4ea9-9d48-08dad3386d3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GXDBlkF5fTFXErYoDcxLYOm8ChtQQcsNHbjUP1jVOmvWTOXG00zasWV0Ve7QKcGMfBvOnLcsJ90KY+YrOQkKYVGwir5jQCsWcWCJzEzSk7fJbuxl1PXms+7Wr/1e5ZrMBereIAfdHRr/U8Ly5zg/lqgV+sDuEgUYneZoG6kY0Uj9J6dgHB/ak9ime65+KpJwMdQ/tXIiNcs3kVYFILyopgpUtjwfoskA9pXi6nWX6/2XGRs00aFs93g+aIPeCWUmS0j0a+FZMRm3qzyblpGJk7mMKitrIQybXQxFrzK1FOkLD+18E5Nh3VDIuu0e7CDnBTSoJgJkvx4CbdzQZ7HemYlSLDQ6vzjF/n8EgEXA9C5Yb2W9t3ZnkQhQ/L7j1OEQgghx9VfjLzMF3LnFCIqqOdOR4HqYRvnRCfBJHQkpWko4f18FbQ/7ziXIe6TFAXJMXLahSUl9IcE8xdVNZl3sP9ZJ6rhvL3xFXEnkJ8AxF6ClKJtcGD0ML0l3Oq/etu0neQ3Ibb5oNXBYL2UpTgpVQh7VeaYZuiPCfw7C+ToE1KbCAuiPSf9xn3LCgfgOjH6MmLcvfodH+NxyuQKMQ7NJ38z9+39sNzN4Yju7YDJ0vaK4jycTw2xL5ECL0QUmtA/yaHbtdRN7yUYn5jw+7SAjig==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(39860400002)(136003)(346002)(366004)(396003)(451199015)(38100700002)(66946007)(83380400001)(82960400001)(5660300002)(41300700001)(6486002)(316002)(6916009)(8676002)(478600001)(966005)(66476007)(66556008)(8936002)(4744005)(6512007)(2906002)(186003)(33716001)(9686003)(26005)(86362001)(6506007)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REhSL3lFeGlhOFgxUnZNRFNkWmVVVHRzV1IrOGMzKzRYM084TmcrOEVFMDlV?=
 =?utf-8?B?S1dKNmc1Sm5TcytEalhQTm5zQWhiQS8remZ2b1U2cWhsdnVXM1dNdFBOMldC?=
 =?utf-8?B?d01TMGN3ajJBVCtIRE5TUWFxazZtZ3M2SEl3ODkxZlNqN1pyQ1pqKzM2cTV3?=
 =?utf-8?B?UkhaYzR5dUtqd3F2dkJqY1h0R3ZzVVNYZTBrcEx5OVdTMDhqVytwdnpJeDhu?=
 =?utf-8?B?TzcrUHJ6aTdKM1QyZ3pSQWxxWVlFL0Q3bWJNTWcyNFNMYmtLZnJSRUcvcDlD?=
 =?utf-8?B?NE9KbmUyUC9RTDVySDg2Y1dIa1JOT2d0dDJzWWRxbTdvZ3N3Vit1R3JubTZp?=
 =?utf-8?B?c2dPQ0ZCVVpMMmhFUkd6c1FtUVZvOHpRN2R3QTlHK1dsZytoZmJmaVhvMEo4?=
 =?utf-8?B?K3pNMjlhSUlEd05CTzVpeExHZkd3MlpwRCt5R0UzaE1wV1Z5T01PSlE1V1RL?=
 =?utf-8?B?VmNxSFFsNWsrWUlQeS91NUdRZEZ6UHR1bndSQWJZeXhPcHZ4OVFXQy9yMFU4?=
 =?utf-8?B?b0NhaTd3MWZkUTN3ek9BalZGZUkrT0p5WGFYUERJMUhuZXh4dXBxcExPK0pN?=
 =?utf-8?B?QkY5Tkp6SXk0WDNGWjdQQlhFMU9mUVR5VEFXckhVYkJaMEZhOUFjQy9XYXhE?=
 =?utf-8?B?c0F5WDloUzJmTU13L2U5UWJoRE9ITkNrc1pIMGxIUlVtYlk5cXpCSzFqOG1l?=
 =?utf-8?B?MllScWZQRHJUU2U1VjZWOHZ2bDlUMWpnb0d4bmNYNlVVWWlYRXM5RzdYaVg4?=
 =?utf-8?B?bVI2OVJmazN5cjkrdHpUckduTnQ1NXlIS1pidmQ1NHZtQS91QlFiLzhyY09a?=
 =?utf-8?B?WFBRRW9Rd0hlL0lMb3pMcU4yemEzQWl6NUNJUHgxY29obE9TTnBFQklBaFAv?=
 =?utf-8?B?VHlmWDNPNklnT2gzSEhHQTl3em5sOW10eFBEcmQ2ZHliYkNIRHV2d1FTUzhy?=
 =?utf-8?B?TXptZGtKU09Wc29ORDc4RTV6RUFuT25zUk0rRUw0M2ZMNEJFbHY0d1JCOGkw?=
 =?utf-8?B?b3lvVVVBeFdUS250MG0zMVBweTJ0UUxrVlBwditMZXI3eitacWc2bUtrZG1V?=
 =?utf-8?B?aU9ENEJCdWRjaS9pWGRBekVPS2liQ2JtSWhSTFhRKzhlUzRrSit4SFYzNXVl?=
 =?utf-8?B?ck04WjhEaFBNNTgwV2dadjUya0ZoNm1LSlA0VVhRby9remhLMm00S3VObUMz?=
 =?utf-8?B?bFpRSmREUGNqbXdqdVNoWXIzM0lFMjV6SG56M3I5amZCU25xdUdTdkNMb1FN?=
 =?utf-8?B?emNUMjJIUnphSmxCK0lwUXp1WVFMMXRzVXNKTnBuQ2YxdC9tdjRyWUE1UlNU?=
 =?utf-8?B?SlZDMEdtekwzWnhQS2phWnlLZVg5SkU0MUZvZ3prS3NhaEVWSExhWmk3ekI4?=
 =?utf-8?B?aVFKRGsxdGxsVFpPYlVZUDgxUWVUMkR6YUQraE9xWEhxWnVtYlRrUTJSQWpy?=
 =?utf-8?B?a2Z4b1Z5T29DSVBKNnN1dVpiSXpXWS9NbGlyamhTZy80L2Npck5CbTVLcEk2?=
 =?utf-8?B?TEl0SGlHQk1DVldNNGlIa0FhM2pvMGdXRnZSbUVNNnN1c2RvdFpJY3NERExH?=
 =?utf-8?B?WTd1K21EME9PSWlEL2ZYK2dVVnNQcjB1QkkwaFdIVFdxaENjdUpsYXczS1NY?=
 =?utf-8?B?TGRWSmxMS2JrZE5SN3hCZGoyc0hieHY3b242RUl0d0t3Z3FsK3BkZW5FRTFp?=
 =?utf-8?B?eTk4bytJNWkrVlJYbStWUDRFbmprTmlGSDlNOHNJSXUvcHJJNHRaNkdiTy9v?=
 =?utf-8?B?TG5rdTY5alZOaWVMMmJuRmJmRGlsUXc1QmMwcFFheGpueWg2Q1pDWWVBZG9B?=
 =?utf-8?B?N3Fxa1QxWU1seXFlcVM0T1pCNmtuanVGckxrREF2a3dTT0JGNW1uYnlEMFVi?=
 =?utf-8?B?ZEhKVzNiZ3YxeFcycmhWQUdXQkM2QTAyd3VCU3krNjVaY0xtNDQ0UVI0eTBQ?=
 =?utf-8?B?emhaUzFqRVhKcnVTdmx4djRlc3FyOEdkSG45R3QwOVhHZlJSTXBoWXlMYndp?=
 =?utf-8?B?bXA5VDBQSWRjRmdUaHpiK2pXRjU3Tk5GN3BQM1R3VjFiTUU5NmRqYk5aRzZl?=
 =?utf-8?B?YVpuRXZmd1FGUno5UnBrbi9RRHBzZ2xqaHhsYms3S2ZhVllVQlM5V1pFQUdD?=
 =?utf-8?B?Mml6Z1VLMXo2RnJzWHVZZVFtTEhtbndrcFBNQ2IwVE9CUWVlOGZvMWg3RW95?=
 =?utf-8?Q?lDGZTkJOJoc1mrT8lzi6lOQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f1f0780-0109-4ea9-9d48-08dad3386d3e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 01:07:33.2358 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rq/H4lUILd1oH0VqnBadf6JGg0cI7AEkChv9idNfS0QB9DvGswbPaFqnmwrN4vlvMyhlLzW3owSSMkQ930xAWond/1KxM41ahMq1IgZzApU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6009
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 0/4] drm/i915/mtl: Add OAG 32 bit format
 support for MTL
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

On Wed, Nov 30, 2022 at 05:05:31PM -0800, Umesh Nerlige Ramappa wrote:
>Enable OA for MTL by adding 32-bit OA format support and relevant fixes.
>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>Test-with: 20221129010522.994524-1-umesh.nerlige.ramappa@intel.com

https://patchwork.freedesktop.org/series/111512/#rev1 and 
https://patchwork.freedesktop.org/series/111512/#rev1 are identical 
except that rev2 has a Test-with: in the cover letter. Forgot to add it 
in rev1.

Thanks,
Umesh

>
>Umesh Nerlige Ramappa (4):
>  drm/i915/mtl: Resize noa_wait BO size to save restore GPR regs
>  drm/i915/mtl: Add Wa_14015846243 to fix OA vs CS timestamp mismatch
>  drm/i915/mtl: Update OA mux whitelist for MTL
>  drm/i915/mtl: Add OA support by enabling 32 bit OAG formats for MTL
>
> drivers/gpu/drm/i915/gt/intel_gt_types.h |  6 ---
> drivers/gpu/drm/i915/i915_perf.c         | 49 ++++++++++++++++++------
> 2 files changed, 38 insertions(+), 17 deletions(-)
>
>-- 
>2.36.1
>
