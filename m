Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAAF5BFD7A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 14:04:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6C5E10E8F3;
	Wed, 21 Sep 2022 12:04:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F29810E8F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 12:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663761866; x=1695297866;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=6rflE/OoHp3ic5c0ejk/q0oygALfzqip/y2yY62U8U0=;
 b=cCRXAGOIGRQhM3dLjzusqUQgcElKciKSuD/FH9dL3UYSAQYa1zXdkAOl
 kmjbh9jHhMeIRYWx7teYKV+8iaxIaJYv/GHV+eV4/ML1CYHBEYU9qlDE7
 nG+WAF5p2RzmeIyYEydmF7A4eMZOvDHNN26EDlVh4qpr/PLOXITVctx8F
 Wyy0KxkK8VW1uz9KLi35Q/bHT1tiVjVo0drrW3t0gf6tEuHmQXGuGzB5j
 IQ18/LVDo0X6KzQwt/U7ybOPK/yGBab5OPOz16LPPntMOXUeDEq/kVPJ0
 Kisg2MuWgQOHq3SJMuipKMvaaGX615bUBImQIG83UDAb5pNqbHn0jbzH/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="287055231"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="287055231"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 05:04:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="596954170"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 21 Sep 2022 05:04:24 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 05:04:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 05:04:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 21 Sep 2022 05:04:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 21 Sep 2022 05:04:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UANcvEdLenbM8oOZiZXjREEqlljmZHq+iW7dS9Oziid5V/PCKI0YPjzXhdW6Rsut23P8nI1fwuYU1uszpeIeJ7yYjIxNhOb2fviH8NzVVDowmYfqH7AiuxXQgWaWZML/75BLPgPa3xf/l3UevTSAZeqUUiSsKCvWFXYF9wIYjzvsDEnuv0cKt2gqLxKFQgRYM2gaUnPeMYaXKqca5zA20QUqEaUwbwXVsNe178pXY5Hycl7LEKLpLM5EjMvvZ/Wx1F1ZlCza70L2ouSjgIHun8oypfH3p4EFJrYRY6SBkNcAcA0b2fwSw/ia2Qm/HvE/iXq1cJ68ZIyl6DkW6K2wVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aIoe7Z08xu62O0qHIwq2x+MrjmxIAboeGslIeJVNkyA=;
 b=OxOlRhhGYNtQhyPFKPv6BKSRtAoXwBSO0syPOE860fgV19aNcXsOhfCmoizflOJ1+Zo2nu+WSCqWte/7K5AhrXNyvaZTBhU+dbwmEu+Ec6zNEQf/QEIkCBZdvzPWqlrj7T1zwQsV0TWYXxqb+Lcfhb44yK8dUqIitwWAR/ftxy7rMPBmZBWiYsOELlFRJwi1f3sXvMaEurhvwrMiei4liYiyQdj8BjsHEgFOrUc8lFdH12taPKI0Ednmdw1lpWi9+BFlXYlRVxfAe11NgTM+9ddfw9cbi8kbeT2llN02IFwLUTdPY8w7DRNdPWSkEDRNBHnJQd93CHpmS2nX9D+/7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CH0PR11MB5457.namprd11.prod.outlook.com (2603:10b6:610:d0::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.17; Wed, 21 Sep
 2022 12:04:20 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::151c:5cbe:6974:a94d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::151c:5cbe:6974:a94d%5]) with mapi id 15.20.5654.014; Wed, 21 Sep 2022
 12:04:19 +0000
Date: Wed, 21 Sep 2022 09:05:08 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <20220921120508.ze4w5bqkxutarqru@gjsousa-mobl2>
References: <20220919145659.293492-1-gustavo.sousa@intel.com>
 <87v8pio6li.fsf@intel.com>
 <20220920170433.yacfjnsrtz32ggim@gjsousa-mobl2>
 <87zget6sur.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87zget6sur.fsf@intel.com>
X-ClientProxiedBy: BY5PR20CA0022.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::35) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CH0PR11MB5457:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d3fb955-6ad7-4162-14e4-08da9bc969b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8mJ3CHTiB1NZCVmTdcMT1GeEBPepupMhc5KZIww9k1lKpyDj7cOVQYMiq3uOdeiKkNJtJdFhTcko7o2PqdZ/Y/ZKU5g6NGGBxhb50/HdLfVZPPOeXGy2HqPNO9Yma+NMRvVDz6ASinwq7GY4jMv6sTjFhgZPbHd0IwbqvV0Dg9++O1+Ed99uvHjsN9NlCUaoV6n9al7j931pwsavPQ7VcB1UvDJ5sjkndga2WjrQ+U66xBjR4Dsv5f/DtBEfsXFSPUtgugMW/2EUKuBbqTqkNllVUs6F584lDjhgfuRf/R0SahftF4dJz1WtzWHLNMFuyGt9m5T0abIj6nSqVd/e4RkDYkVNFDHMqx0zUi9ep3LTpkR3kBC3t2pN8GJilXxFfHOJTj29xT+XAalxlRcMlmhmeRRX4AaC5PjwagkTkgyOL/u5zCqL6i5F8coMiVl2RF4Cqpi9mehM8BP9aE85FIwdhIuhZXPgmmErsITp8DSTrbFE6U881PA6/e+o7OrKhIcABTNrSYzlpcy7amnrwoPSK/4OrjZdDNC1RrQvog70LPKT35k+lv6ksUFfJngnEL2lTJts319FJjuzRIWf2v65LysIhAr00v8KSckZcr7dv9ceqVSkR7nKCwnkJcNqm/zKWTJ6rpqRebTSkmGtDo3F1oW9dYbL+fGA86Zq2QswayzdiOD9B4gQWnTVZLf3+FR0zicKIYZtklVS2fvvnw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(396003)(39860400002)(346002)(136003)(376002)(451199015)(38100700002)(6486002)(478600001)(2906002)(8676002)(8936002)(66946007)(66476007)(66556008)(44832011)(316002)(5660300002)(82960400001)(9686003)(26005)(6512007)(6666004)(6506007)(83380400001)(41300700001)(1076003)(33716001)(186003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AWg2rw8IqUPpfVccTQqD6PzOKY6Qzxc+lJZZ5tFcWEuAogpxFaQuAIVr2w8m?=
 =?us-ascii?Q?TK94B6s6i1vlAly32Zp52WzJkLQvybAAAngyA17MUgsRStDN+84WBDQJMvSj?=
 =?us-ascii?Q?7aOqccR8k//t4Cull5jKqL8bPCVq7kRRhNwilqWTiBJoMkyId2mYBJjdQRNK?=
 =?us-ascii?Q?82DHGElPYZ37G7fY6XJF8Y3n1v5eiN7iHTLfbYD6RHDTdRvNbY4uXnzPhrkV?=
 =?us-ascii?Q?nOv3A7IIjSd4EafbSQ8s8fK/Cc2uCoH87ZkbgKFrehncY7w4h/tYUI/+AB2U?=
 =?us-ascii?Q?ceha9o7DbLOW/pFkCBMgilDTsQudSMj5Iun04CNoQ74/tQ6caDFWzRxIJidA?=
 =?us-ascii?Q?heZT12oQNBiaty56V6I9TvrVgrOrkLj52iQqSLFfBl/hlA6UtGTNfyisvDkA?=
 =?us-ascii?Q?nyOvDcomeIp8glM5W5i5gPeGlD+TTLQIEWiUTOrvfoAo10VDLzjHgqkpY1mP?=
 =?us-ascii?Q?sfRSjXxvQjiGXD4+ZrAgSDDzBOytIpuzCZX+TUfGoLn1oyyceP9DyHod0jZR?=
 =?us-ascii?Q?kIOGhzq8tCXfKDdWgqoQ2v7AIqx7YdTctkjtPyPCtve0TtgQ98Tkk5vbJLKZ?=
 =?us-ascii?Q?a7a8KoNyCPR+Er9pY7RhiAc/S1E9A3c4p5Pk8bFqV0imLyw2fmWCVChhmiM8?=
 =?us-ascii?Q?AKyJXf+0d8EcooUB9qmIpz7VBCWeSRR7Ws/dLZDloPtLUJ2L4cYaFHC63Hhc?=
 =?us-ascii?Q?lUkUrcdnfzxYB4f+mS1DAt6O3AA/DP1jrcbXs9EOHzcJdk/kR5J5vk3fTMGx?=
 =?us-ascii?Q?ozKOXLV2MnjdJVu8g6lGH23xwvLdSuiNde2r53s+FnGA9ZiGiO/zACQ6B9MH?=
 =?us-ascii?Q?h08sDcm0FBBOBdQ3mAbKXYNKhsVXW9vtUkzQYJfzH4oRI1z61fAzPyfV1LNv?=
 =?us-ascii?Q?9hx0pkskZiY5xs2B3E3IhGiYs8zxkX7Dg7onZaSFz8lmx5IE5P9cV12IP5sM?=
 =?us-ascii?Q?rVbnEHjobdyMP9/s86qTGLX99nWU1rTioYMd4wG0XKwq7btFqCJNfpiyAEKJ?=
 =?us-ascii?Q?Z26XeZwnjbzUr9NVc6K1s2D95S27Jt3mzY81fXXREzn6mZ9Hlb4ZDvR3XlIg?=
 =?us-ascii?Q?/FpF2ZOdi+AgW50QGXYD/Khje1JhjSh1XizArutXTeoeWhRLXUKHmLAfNHRh?=
 =?us-ascii?Q?1lkWQO4MKCl1TrW+Iyljq3MNJl1nHtPR7SihpuHkuM/s0K5OxZoFnp+XBy5n?=
 =?us-ascii?Q?bPRAcVUF0QtWLTPwJUG+TsCDIqNjxYTmTqEJVDGvDjIDyut9ePLUAz3fcqhe?=
 =?us-ascii?Q?jOOZRZ8pNthsyAacuCGI1mLs8hu0HJ3ycXB1cX9JXTg8xI0YqfDW3TxVVfpn?=
 =?us-ascii?Q?EyoOBhaBn7uG7lUz99IOJTLOJJtt1L3Vdg6gkuvfWCacdKzq3H8I37SacCok?=
 =?us-ascii?Q?P7VL5pgV0fP4sX5phzIeaf0appS/ORPI7EwLsA/AH08zBRvzdAvlX+GQ9mZl?=
 =?us-ascii?Q?xPD06Cu7PjFd+jXdkFAk+dOpmYspMUI+k+MqX8ddn10hHD9PAbL8iR++8lFo?=
 =?us-ascii?Q?EUlC4iNtNhmEfv16nBtBKgZMRipRK4C6qiCiQnyAzZtybWbKfkwCgVqBiHI8?=
 =?us-ascii?Q?wr0r9wWt46cogOel4/VhnCyAy+4rdmmN1E/v+83Dk74nRb+YGD9qoKcJzV79?=
 =?us-ascii?Q?JA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d3fb955-6ad7-4162-14e4-08da9bc969b8
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 12:04:19.2781 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: baIymWFJ5cm7GuAOyz1cEe0X9SfqfPPb/lczfyrDP0+UpzE6+KmAxJC80dKcjTAqOdai30QX7gbcd0jeAXotLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5457
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move hotplug inversion logic into
 separate helper
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

On Wed, Sep 21, 2022 at 11:21:00AM +0300, Jani Nikula wrote:
> On Tue, 20 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> > Hi, Jani.
> >
> > On Tue, Sep 20, 2022 at 10:19:53AM +0300, Jani Nikula wrote:
> >> On Mon, 19 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> >> > Make the code more readable, which will be more apparent as new
> >> > platforms with different hotplug inversion needs are added.
> >> >
> >> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/i915_irq.c | 25 ++++++++++++++++---------
> >> >  1 file changed, 16 insertions(+), 9 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> >> > index de06f293e173..c53d21ae197f 100644
> >> > --- a/drivers/gpu/drm/i915/i915_irq.c
> >> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> >> > @@ -3263,6 +3263,21 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
> >> >  	spin_unlock_irq(&dev_priv->irq_lock);
> >> >  }
> >> >  
> >> > +static void setup_hotplug_inversion(struct drm_i915_private *dev_priv)
> >> > +{
> >> > +	u32 invert_bits;
> >> > +
> >> > +	if (HAS_PCH_DG1(dev_priv))
> >> > +		invert_bits = INVERT_DDIA_HPD |
> >> > +			      INVERT_DDIB_HPD |
> >> > +			      INVERT_DDIC_HPD |
> >> > +			      INVERT_DDID_HPD;
> >> 
> >> Nitpick, the indentation will be off compared to automated indentation.
> >
> > What do you mean by automated indentation?
> 
> For example, hit TAB on the lines using a smart enough editor, which has
> been configured to follow kernel coding style. ;)
> 

I'm not sure I completely understand the issue. Could you provide an example of
such a configuration?

Is the problem here the spaces after the tabs to align each INVERT_DDI*? Would
you suggest I just use tabs and do not align them to the first one?

E.g.:

                invert_bits = INVERT_DDIA_HPD |
                                INVERT_DDIB_HPD |
                                INVERT_DDIC_HPD |
                                INVERT_DDID_HPD;

Another one:

                invert_bits = INVERT_DDIA_HPD |
                        INVERT_DDIB_HPD |
                        INVERT_DDIC_HPD |
                        INVERT_DDID_HPD;


Note: I'm using 8 spaces for instead tabs in the above examples for proper
visual, but they would be tab characters in the source.

--
Gustavo Sousa
