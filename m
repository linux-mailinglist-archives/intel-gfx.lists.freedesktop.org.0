Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DEF583246
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 20:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02FEEC56BF;
	Wed, 27 Jul 2022 18:44:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC5FCC5635
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 18:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658947492; x=1690483492;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=C7aFzz2iOi6W35aoZQuqcxxJhlRopHicwp2IFYmf8Yc=;
 b=R5EtRQGqmrRoJIlhMZwregRGnga5QvwUgKnWmhzs31A0lr7gR1hE2DPF
 z2vGx9r0UM5ocylRYKu6Xpxzb4k5h62WnPVo/6EBBRHw5qJAhjh4j2Mry
 bp/X5ovrUC0FbMX6S9DQEu/pfxenXXG7LtmcVbjnyTRniVHPvvT4cpQv8
 YCZ3QZBYP30Sh05Yo+Gj7DAD93TmpqfuFl0OR44EAYrqikFhVQD9hTQpM
 bcsCD8cXp3tCBnWqSXNYXhcSUhLU6IT59H/905xWxxSZLXZsUDcp7PDB0
 x/NikoDBBE9X4klRLEzIDXjqRG2dhnex1yRYsFdcp2GaA3jWH6uVmstL3 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="268701506"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="268701506"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 11:44:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="703421808"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jul 2022 11:44:52 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 27 Jul 2022 11:44:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 27 Jul 2022 11:44:51 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 27 Jul 2022 11:44:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ChnGjPu3zrDllAjTNpXpcmgGnETy/+lTgv0iMjU0BbUrSKkVkTHqkwKVK4/JyuXTfUNReyW2ob/kNFD6lVXeEUmpghCM3m/pxTo0cTAjyfTEGLDsOEIOWyc6ZCFiihM4GKeVagfczPVVSNf+EcRneZz+XQMAReXpcWWHlbop/Thm2WNO226CTO0lsntQWFp/XO9Rv6YtWpaE/wrjtb0w4wagzGfGKQDZakiNS8oCgRfuXxOVfwzTOo8W7CdGNuJl0YSa1NiU/1mFbg8nhjjjYlk5+NFUx3XFsSJz7ii08cK6/CEND9qVkNR3tBtykQooAo6XJ59gR48Fkzj8HMQGHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fsC1NEiE6q5S0gR/E0Z3qBSi5ylTmZw3FWu5J68srmM=;
 b=l+i5MJEfhuWcapsF9D7cBv4Uf2weB+Fqdklt2Lgt8NMSMyl09iKED6Aa9s8R9cR6SBaV5O5h6Z+Qc3B6ISDtUOorGE6wrgEpsPZhx+LpU0z4aKZ9Y6vn5ZgvjLrhyiqYSkapK6xpQBIxcF0VhmKa4rvxYhOPxbq+1fjWp+hRnL+AEllXn5D5K+ca9LnfIrSMfxlzLqp9mDlHNviPMQyFc20Ow6mMu7eVV6WUcLrnzJl2CXOGWFs3P31ipqFgZ4WPvap4u1Iz1+KWJcgq3MyHakKAAkPaBnCep7lp3pZ2DYKAYJA3eb9MccT7GPgZrrl7VixFGGaTOw7OblfiUk7xmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CH0PR11MB5313.namprd11.prod.outlook.com (2603:10b6:610:bc::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Wed, 27 Jul
 2022 18:44:49 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5458.020; Wed, 27 Jul 2022
 18:44:49 +0000
Date: Wed, 27 Jul 2022 11:44:45 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <YuGHnQZbRDErWkNF@mdroper-desk1.amr.corp.intel.com>
References: <20220721225100.693589-1-anusha.srivatsa@intel.com>
 <CY4PR1101MB21665FF0EE500E6A0344B41CF8959@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <f7c084d1-1e18-04f4-970a-faa5e0761d21@linux.intel.com>
 <CY4PR1101MB2166539024EB2C6849CFCBE4F8949@CY4PR1101MB2166.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CY4PR1101MB2166539024EB2C6849CFCBE4F8949@CY4PR1101MB2166.namprd11.prod.outlook.com>
X-ClientProxiedBy: BY5PR04CA0006.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::16) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ba95d087-13b8-46ea-5212-08da700015bc
X-MS-TrafficTypeDiagnostic: CH0PR11MB5313:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AwmS3YCTYhYfPAiMg395ycE44QxfXNEXO9/fvzYPllxC/tWBsi/H3bWT2HPXuJrV8YxEqSAug5m7E9EqVceQXO11o22vwgYisu34HAjZSHbx71uXHlB2PesatqqkC8hAfaaMvrI6hhqwPDQ1sl7pNYhQTuQAN9ZXwcGeZSig7RqV3OXuPlsU3M9/abvXeCEkBTM0ZL7jFTO8Rxh0TsNgTApOgPhNrwpHHWkoLfv+KZFYiuQAngpCNeIFYWr7C8bw5PJN9l01QiP27obajQTWGXTKCmk8+yJmawcVsdwLqF8EjfZYRGwjHWRm2cN+pld7Z9w1bUqNW21thVqastTGXpYWg0NdvQfMIAed5Cy9PKiN1/OuWR7LNUL1Kkfh/prtn40Ew0F1VtRgz4EPq03zn3FG3Kj/C5EFhnVQgKhsNRRTkOJXIqYOnkH+3O1+w4/K3+ri6c28UJ+vh7ZMwgzMEQTUrjed92XT2q7ixnQ0T7ntWc19/s9QUdXdmPagkt9JIgq9hlVH/Zc+lwPTxBMtpC9DJTY8enJVeuTwiHwl2/DScayyA6jruB0+4YZHbA6aQI7xI3ZmLuWfJoLFEStIy3hqbE1bgb7hbqRYcLgV3VOKJNiVicpNytN1qAFBkSz1w8qVCpBTWSEKEi7ihjGuy9dT5CrGatJLvhS1T9YmGHIx9rxZ/we496iLEdSHY1Wq5BWxAuAGjlAvdAgVwMs3qAq5cPrWrZ7LYOSEe7jEQo5pJ22D3m6F3ntxz0AouXVR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(39860400002)(136003)(366004)(396003)(4326008)(41300700001)(2906002)(86362001)(6666004)(26005)(53546011)(38100700002)(6506007)(66946007)(66476007)(66556008)(83380400001)(478600001)(8676002)(316002)(54906003)(8936002)(6636002)(6862004)(5660300002)(82960400001)(6512007)(186003)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?w8Kjp/vFLqPd2StXFvDH84l/bgV6i2XbuuaTlz+LHOMIZyrKDvKn7BS8K8VH?=
 =?us-ascii?Q?XnqOn2z5XR6TWs3fuVE5QT9xYMeOoOfzun1SpJ5wgU+EB17By0c1YcSoTC7a?=
 =?us-ascii?Q?29uTQgdHGrmhEKva6NaS1lYLxwK59pY7B/J6QuS9o5zbD+pGkQ1/8uclOhlv?=
 =?us-ascii?Q?/Wyr4tZ2evaGGcmoftJBnZy58E//r5+nrotSknyV4sKRAJ7Wac4qCSKHD9rJ?=
 =?us-ascii?Q?RBt2OBMKF4Xl+KZY39ox0UY+IQlBf2mjDvjB1AD5gicYODMKqQ3w6en27+uP?=
 =?us-ascii?Q?UfSCsnliDFboYuf1zDCQTtCprgrEQGRDxP+HDyONuMUVUvHsFV9JMjk5RqfL?=
 =?us-ascii?Q?ZFlSgIcOMuQf3U0uuU3rUlDZmj8nmjbLONlVtopzJsAjG8jcwvOcvdnX3tcG?=
 =?us-ascii?Q?60gSUob1+vneX5QsbQO9gMYy2AZnvT7fdUsG/9P3tkZ2/dKq2YWxHitmLofd?=
 =?us-ascii?Q?RxWEDxw33zSHApthfG6h/uYn4fMD8VIDGeG5XdZKHLecWMBRjqm+ayf4bwp+?=
 =?us-ascii?Q?kKYBGLgPDd4GD5A+JBopjjMNiNFD4+/VxJbSsUPFf1C4lpjjL4ASTDi8GGN6?=
 =?us-ascii?Q?XAel762RNZf6HiG+aqHGiQhH7yv4w8LSPHKjqTSpjfIJCnXZbDT5dxmcAs+F?=
 =?us-ascii?Q?876DqefhMXleXbti+HUdOw45sKdpjcIkwZ+AayOB9XzzYCig3iEqqSE48xCg?=
 =?us-ascii?Q?hvxvcrggJzW95a6bA1vNzI577aYAqnYkdgnB3kXWvTISBBl5eRgxv3Zzd+Z/?=
 =?us-ascii?Q?k92OD8PRzwNACC5Z5jEdRllhLCSH5M8bmo3qX5ujoQYocsEexbSOUXFEqZqf?=
 =?us-ascii?Q?T634nlzPsjPayppjoG4GJcms66WNveOIhOHfMJi3GD54er8g3KgXaIDOjCSm?=
 =?us-ascii?Q?Df8rYVBcGVyzYZ4u7WgTjyXaKroX84PrFcQvsj5BJiacXGOuzgOSgkkGbOhQ?=
 =?us-ascii?Q?YiXFKmg5NzPKlxnN9leEByIh5LmHy4Xn+uFkqnxA08HR/0kVHbeejtepGdyc?=
 =?us-ascii?Q?ZZ6bDgKhLJAanprDcRdx9Sr5EN1zmErGFMdXcc7azkVIEDMd/Ck61jP7qwUR?=
 =?us-ascii?Q?2ur9PG0/LIiRjsuFENKj7ZDPbqSg4ueJSBv3SmTdaVYdRiikcGuUEy6pssAE?=
 =?us-ascii?Q?MMdjbgaVEUrV8gjunaQG2bm8ZHkwBl1CgjtI5S4/6vDWaQMNN5cNsVPx8EWc?=
 =?us-ascii?Q?XyjmUUUMSAoPRY6zcSULlSwpfb1BW1byz5/4usUbRU6bBimxaZEjg4ZWEVtZ?=
 =?us-ascii?Q?VFzYYM70RlrO8pTjzxSJ5xwBwveCPUQw9jCYZ7TkE2R7J0gZwzwMK4AzI5cD?=
 =?us-ascii?Q?lItHE3pbh8t4Zt0l0qhcpkbX3rGwgeSRrFU9r0niX5v8JcOPAKxOmqn/GwnB?=
 =?us-ascii?Q?bQiy09lq/luY8H+G1bjXMf6pikzZC8tK1hSV8xTvTGU51divYx/6IOwDYNdj?=
 =?us-ascii?Q?9vbwvKXW6PsBYdSQXFzoxhCf6fdhTEG0AJmxfDIOQV3aGzI+6oejmrth3pam?=
 =?us-ascii?Q?ecJs9sQft+GOjWHkJDrrGny2oeQK6YehQxo3chCm+vMfipL/F9V0QyYwtZNC?=
 =?us-ascii?Q?348gqR1sqsWhMk18FrcD6Yzp1TOmET1U66ZRHqK63R8Sh84GdTcH+fr9ykdK?=
 =?us-ascii?Q?Rw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ba95d087-13b8-46ea-5212-08da700015bc
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2022 18:44:49.5039 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Wlp6UKRP57RfmindVz4LMEWKB64+jN4YJP9NeIC6jhcEh+0OfI1rx9QQtJD+iLYmZRJX0YIm26eewgCYgp45rHj+K7Famx35c2jIAUBf10=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5313
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Pass drm_i915_private struct
 instead of gt for gen11_gu_misc_irq_handler/ack()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 26, 2022 at 09:44:38AM -0700, Srivatsa, Anusha wrote:
> Thanks Tvrtko :)
> @Roper, Matthew D Did you have any other feedback on this patch?

Nope, looks fine to me.  Thanks.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> Anusha
> 
> > -----Original Message-----
> > From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Sent: Tuesday, July 26, 2022 1:59 AM
> > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> > gfx@lists.freedesktop.org; Ursulin, Tvrtko <tvrtko.ursulin@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915: Pass drm_i915_private struct
> > instead of gt for gen11_gu_misc_irq_handler/ack()
> > 
> > 
> > On 25/07/2022 19:38, Srivatsa, Anusha wrote:
> > > @Ursulin, Tvrtko Is this wat you had in mind?
> > 
> > Two functions aligned in prototype yes - but I left to you guys which
> > prototype is correct. AFAICT Matt looked and concluded i915 is correct so
> > that's good for me.
> > 
> > Regards,
> > 
> > Tvrtko
> > 
> > >> -----Original Message-----
> > >> From: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > >> Sent: Thursday, July 21, 2022 3:51 PM
> > >> To: intel-gfx@lists.freedesktop.org
> > >> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; Ursulin, Tvrtko
> > >> <tvrtko.ursulin@intel.com>; Roper, Matthew D
> > >> <matthew.d.roper@intel.com>
> > >> Subject: [PATCH] drm/i915: Pass drm_i915_private struct instead of gt
> > >> for
> > >> gen11_gu_misc_irq_handler/ack()
> > >>
> > >> gen11_gu_misc_irq_handler() and gen11_gu_misc_ack() do nothing tile
> > >> specific.
> > >>
> > >> v2: gen11_gu_misc_irq_ack() tile agnostic like
> > >> gen11_gu_misc_irq_handler()
> > >> (Tvrtko)
> > >>
> > >> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > >> Cc: Matt Roper <matthew.d.roper@intel.com>
> > >> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > >> ---
> > >>   drivers/gpu/drm/i915/i915_irq.c | 16 ++++++++--------
> > >>   1 file changed, 8 insertions(+), 8 deletions(-)
> > >>
> > >> diff --git a/drivers/gpu/drm/i915/i915_irq.c
> > >> b/drivers/gpu/drm/i915/i915_irq.c index 73cebc6aa650..eb37b6bacaac
> > >> 100644
> > >> --- a/drivers/gpu/drm/i915/i915_irq.c
> > >> +++ b/drivers/gpu/drm/i915/i915_irq.c
> > >> @@ -2653,9 +2653,9 @@ static irqreturn_t gen8_irq_handler(int irq,
> > >> void
> > >> *arg)  }
> > >>
> > >>   static u32
> > >> -gen11_gu_misc_irq_ack(struct intel_gt *gt, const u32 master_ctl)
> > >> +gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32
> > >> +master_ctl)
> > >>   {
> > >> -	void __iomem * const regs = gt->uncore->regs;
> > >> +	void __iomem * const regs = i915->uncore.regs;
> > >>   	u32 iir;
> > >>
> > >>   	if (!(master_ctl & GEN11_GU_MISC_IRQ)) @@ -2669,10 +2669,10
> > @@
> > >> gen11_gu_misc_irq_ack(struct intel_gt *gt, const u32 master_ctl)  }
> > >>
> > >>   static void
> > >> -gen11_gu_misc_irq_handler(struct intel_gt *gt, const u32 iir)
> > >> +gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32
> > >> +iir)
> > >>   {
> > >>   	if (iir & GEN11_GU_MISC_GSE)
> > >> -		intel_opregion_asle_intr(gt->i915);
> > >> +		intel_opregion_asle_intr(i915);
> > >>   }
> > >>
> > >>   static inline u32 gen11_master_intr_disable(void __iomem * const
> > >> regs) @@
> > >> -2736,11 +2736,11 @@ static irqreturn_t gen11_irq_handler(int irq,
> > >> void
> > >> *arg)
> > >>   	if (master_ctl & GEN11_DISPLAY_IRQ)
> > >>   		gen11_display_irq_handler(i915);
> > >>
> > >> -	gu_misc_iir = gen11_gu_misc_irq_ack(gt, master_ctl);
> > >> +	gu_misc_iir = gen11_gu_misc_irq_ack(i915, master_ctl);
> > >>
> > >>   	gen11_master_intr_enable(regs);
> > >>
> > >> -	gen11_gu_misc_irq_handler(gt, gu_misc_iir);
> > >> +	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
> > >>
> > >>   	pmu_irq_stats(i915, IRQ_HANDLED);
> > >>
> > >> @@ -2801,11 +2801,11 @@ static irqreturn_t dg1_irq_handler(int irq,
> > >> void
> > >> *arg)
> > >>   	if (master_ctl & GEN11_DISPLAY_IRQ)
> > >>   		gen11_display_irq_handler(i915);
> > >>
> > >> -	gu_misc_iir = gen11_gu_misc_irq_ack(gt, master_ctl);
> > >> +	gu_misc_iir = gen11_gu_misc_irq_ack(i915, master_ctl);
> > >>
> > >>   	dg1_master_intr_enable(regs);
> > >>
> > >> -	gen11_gu_misc_irq_handler(gt, gu_misc_iir);
> > >> +	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
> > >>
> > >>   	pmu_irq_stats(i915, IRQ_HANDLED);
> > >>
> > >> --
> > >> 2.25.1
> > >

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
