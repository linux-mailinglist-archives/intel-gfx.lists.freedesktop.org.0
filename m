Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F855A197A
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 21:25:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78A3510E072;
	Thu, 25 Aug 2022 19:25:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E14388A3E
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 19:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661455535; x=1692991535;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9fgsUQREqydknJNKtQg2MVumDOyDxWabKA6WKNToJy8=;
 b=BJaS8Y4iqD2MbF9rLIPIbOQoyiQsW0qQw0utf8mI+yfjFSSlei/4NuyO
 HRfDaPtIhJ1RnprDwvx8Bu3oCAUMBx1kwqEvL/P3VWKyVwizogNRmC9No
 cemJrkz3hpFpeXRcLryBuOo+KTjWeq9SIicY7ANRHH3n/iVnbt37cRYeR
 x7c1YR28N47GxML/G0qI2RqhJX2eJevitOUDnsALGfY3pF3Ygx5g5+ugu
 82PJCv7goF/6nU4ZiuRhJqkSw0L4JTFickWj2l1Duf92sq2RJpS+quJ3D
 zvyrlvQRlUnF57PMUwbDqyn5sNLXMq/ahqxbhh8e/YqHNxSBmOjqhqAda A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="358308430"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="358308430"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 12:25:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="606519473"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 25 Aug 2022 12:25:34 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 25 Aug 2022 12:25:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 25 Aug 2022 12:25:34 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 25 Aug 2022 12:25:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n92V/SunUr9JGpJimMe6xPlHwvDPaxR/QvZO8UE0HsQdrDSifl2Q40geFvc57i9cO/okuMvmgeOdY7emoj8pioYzPVPWAMYy/Ofyl2VPmibK9JY6CO66UfXRMsRP5oS/o/s41g1sscCfXwoNxBjIoRLNs+01URWu94saqEOm5RFuuAbHQRok/7lWILl8SHY1UqxSzmT/DRSk5/b6ul5jPtWl04ZFMM9VHw7mXyynKCZyDQJs62VgPWiS/bjHfugwDAGn5R3Cwy2ydPFiBrnXAiFGm1SQsoIZI2pprdscxb+z3Wj7VLZnlCmstvr082uw0xSFwVYNf2I5MGgt4goquw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rSE87ww3y93uP0iGZFToKAGndXo1MS0Hiu5ksAzMj1k=;
 b=CfeRFufXbmPlF6Mw+ZLsPkRLv2rLXf0uraeQaDCSwY34Ri2mBrs/5RxEhhm1rEpPYGakxD7a5H2XO9mRJzjVApTUpo6UwQGw++Z3wTAfVhf7JH2djwwwWy7Dtlo1HVB5chXGBnSUOLvMJ4uP3nfGtLcP2Z85N3lfH9F7PbWwH3hAgjui9gj5v31RnbCiI1RoTA51r8j6EcBO1+zi5qyml8uzFfYlnEYQmN4Otgoel2/Y2XNqir1Li1nhLT1JLd5SbZOPprkPCmicueCaptEzMkeF33R0pM4G0Fmpb6Po9SJ1CgdAcVmsoXhHWnmCl0UJDorfe9NtERuXfdBb6ibpOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SJ0PR11MB4830.namprd11.prod.outlook.com (2603:10b6:a03:2d7::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.14; Thu, 25 Aug
 2022 19:25:23 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%12]) with mapi id 15.20.5546.025; Thu, 25 Aug
 2022 19:25:23 +0000
Date: Thu, 25 Aug 2022 12:25:20 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <YwfMoH0osk9Z5sWk@mdroper-desk1.amr.corp.intel.com>
References: <20220801213839.8549-1-harish.chegondi@intel.com>
 <Yuk+HDLHmTnsmoUD@mdroper-desk1.amr.corp.intel.com>
 <166134039853.19460.9700183027603341212@jlahtine-mobl.ger.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166134039853.19460.9700183027603341212@jlahtine-mobl.ger.corp.intel.com>
X-ClientProxiedBy: SJ0PR13CA0112.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::27) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 11dbea36-2234-4c4e-7516-08da86cf8e57
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4830:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kNyhpfiLm4KdKZ5rbhoYufBXOFyBEGgmMo+enedE7frUGMnE1n7HI4td2a4EA/LPI6SU7NuTLcXYaaOJfrhe8k4bmfRYTORaZEBfNlWN7e7ACn74QWA5f/v8nbgws/EG5kS9U24DEZpjpHoHW8C8OwLy1gCdbL1hf1SVkY2MpcidK1Rp6GaDFx8fdXlGYLJam4KMFs7Ue+W8aVCauQD5m0unxS+vYn6WsMbjoibFA3UXwXfaPdYEVWLM8ssBewObqDdIm3NlSrtvoPbWYqVIs/UMn/NjQx8cFDL3GfKuYfqBjp2gmDEqUof5qch0W90MdsRJJlxYWPiiww4NWILtsX5bi/QYfrOs1t2/HbAp48mo5KJp0OT6wLcjCyMyObIhM3zWXjKl2sMcx/WlnRgryoll+vB6qoaFutRQe6lTpEunUfeC3uMcudSGafMsgNvMOsd0e/ZvvbX8290xrH6X9EeGgPadS0PzTXyN3t+7okKF3KRkj2qZtIrEu6A0+Y5AVcfdMbAv/d9qwQfvQtRbbL2x+zzxpJfIS9Ib6UX+SW4tXqhrzJdyc7D+S44aRZI2fCglqRczgIoGRl3Ocrkyf7BrAJg9MK6ZGgAovBcB8CNFQR1PUjPtOQYEs0Q09UkUvjvckAGMvjYjSaZ2LcFvxuIQxNIUCtu2gct8FotudYkswj3EaYRLsyPdWr2bE7VKq5ZdMIXZfCML/3WPx9Nveg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(376002)(39860400002)(346002)(396003)(4326008)(478600001)(8676002)(66556008)(38100700002)(66476007)(66946007)(83380400001)(26005)(6506007)(6512007)(2906002)(6486002)(8936002)(86362001)(316002)(5660300002)(41300700001)(186003)(82960400001)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4+Fs8kvDkhJvdfJJBW3z30sfJzYwPlEh5Cjbd/HiAm9vq3IBoLGYE2eiMtZd?=
 =?us-ascii?Q?iu5Hus9oBUxZhIjebTmUojLJmF4PwnZRyKKAtMVVNKwuQXvIBwifFRnoJbE3?=
 =?us-ascii?Q?DYbCyWphZWIazDdV9pGqxdU2DEuc6epmzyg9/qKH5RIt6LeaaUmTq60owrqx?=
 =?us-ascii?Q?w9MjxH7W88326n3zke04GIJLlIVzgbKc3Lt4RWjueM5f7K8vcnyOzxXO79lW?=
 =?us-ascii?Q?01g93XGmhPHKLzYapIkvlQlsZf5KiD15yAlrBDeXzZsYVgnndbBnjB5rJfK2?=
 =?us-ascii?Q?9ZiI4JxWY61jO2HA6STe8S+ehDOjhSBmNPEcCVF//ogImJQgWmStZkolYwO7?=
 =?us-ascii?Q?WBt1Hn81MucB8BUbsyA9QJveHERBYlgOcpM8zwL/GzXdKbk+JQ097YVMEjrv?=
 =?us-ascii?Q?bArzowNblCRjlLP78WySconE69hClDOuywSY+3MdYjbM4dJChMUiakIfuXsP?=
 =?us-ascii?Q?qf6PoCew+yiOmQzmjIhMM0SS4HEx1xiB+0Lt1tdd+D4ztGgPanARFf15gvSK?=
 =?us-ascii?Q?9b3TMq4kDjFXyQcsOxbZCHoEdyWjM01cdFKJ05oxt0Z86XJX79Cc2XiZy/nn?=
 =?us-ascii?Q?fns74uSX9r0VeG8gwq/0KYldHLYCJjahdas2cNF65Xkp2DwIh5ZZkpQVTTym?=
 =?us-ascii?Q?RJA716lX6CRql1Q6xCkA+eNDQN22/Eck44sJY6CJd2qp38YdtYs3uovPWQLp?=
 =?us-ascii?Q?wkv5F5F/xTwlNhEVxIVyJWUJoMA+ri9yfPv30BZ/WL/dztGFAPTAhGBgL4iL?=
 =?us-ascii?Q?6S1TcEludlZG56Z8U4iBgVEr8qxNFN0n9tIUmyYrYvwTuS04IeVpyHeTQsmQ?=
 =?us-ascii?Q?0fRel58THRrX3VwZRTDXIV5JIALLUpPWC4HF0chclqwkVy1ZJ/gdPLdZk8sk?=
 =?us-ascii?Q?VM+vOsYxIZWxfM/4VjaVwE6fO8qo8GRx9Y/rMpvLP6w0vcdq6gLK9hLot1YM?=
 =?us-ascii?Q?UIAS94N3JerMZvacqCn5jZP9I7UZi3X7TksFIxP968TUEkAo/nIKYsxGZx+t?=
 =?us-ascii?Q?SYHoiPuE6ZvwO1w5hqR5pl/WL+51JHinBlDFBM8zF+o1ndeuNqwT+Gtlm1T0?=
 =?us-ascii?Q?YeD9yzqfrPDOa0p6uSb1vvX6Z7uVSombQeuj7o3pdsM4vG7jIiyuNDzajoFP?=
 =?us-ascii?Q?JWJbhFtLCgl2i4usobfLo/f95ajbYIRA0kjsVfba5/gTjh/BS6vFqHIiqaXl?=
 =?us-ascii?Q?ELCqNtBklgaLlcY9wNQRjIVbRdeCOupzB5tuBiXOBsKA5tIOBTHa9orle76r?=
 =?us-ascii?Q?29mRYFBhCUAyGmInRgLQWl8icdBlYhw879M1z87O6lTdimsjXdN8hy7HUANf?=
 =?us-ascii?Q?fVPGR6zFwrw7rKX23RG+cCvb4kHNISw19ZbqtdfpOfmtZymke4TcNbMjOq0X?=
 =?us-ascii?Q?kHNEvG9eh4EuAArF8FuyaSasUoxhImjC9b2Xw5v6+sey2ANFaw7iBo+m4F0x?=
 =?us-ascii?Q?/vI9EBXvqq+T6OktyGJ+4mj1hcusDuHY4SXQD5EiEZBi1gTGB9xkun6541Db?=
 =?us-ascii?Q?+oCzCA/AOgATx9jB7XJCrWjwjX10/3N5MIRoP4mNm0HSy1vlnd3puDfxwBlM?=
 =?us-ascii?Q?cfpHjRZCRg+/aMalnqsDJP+ThhzDCCzeJnHX/ooeot5B0kf7eiYBvMhsI8hD?=
 =?us-ascii?Q?GA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 11dbea36-2234-4c4e-7516-08da86cf8e57
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2022 19:25:23.2513 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DC38O2GPfx//U8glYR45REg1EJfA/YRfNtNSUb0d/iRaNoeBVnhTJNZU1GfZ/KOor/HtLk1dUYJvUBcU1qs7SApd9q1ktvPS/cI5gPycXQc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4830
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dg2: Add Wa_1509727124
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

On Wed, Aug 24, 2022 at 02:26:38PM +0300, Joonas Lahtinen wrote:
> Quoting Matt Roper (2022-08-02 18:09:16)
> > On Mon, Aug 01, 2022 at 02:38:39PM -0700, Harish Chegondi wrote:
> > > Bspec: 46052
> > > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> > > Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
> > 
> > Applied to drm-intel-gt-next.  Thanks for the patch.
> 
> This patch is completely lacking the commit message.
> 
> That is unacceptable, please make sure there is a proper commit message
> for any merged patches going forward.
> 
> Please do explain the patch rationale in this mail thread so it at least
> becomes available from the Link: that gets added by DIM when this was
> committed.
> 
> Regards, Joonas

There isn't really too much to say on this one.  For the record, the
justification is that we're implementing Wa_1509727124 from the
workaround database which simply tells us that we need to program
0xE18C[9] to 1; this patch is just following that guidance from the
spec.  There's no further information available beyond that.

Going forward we'll make sure we put some kind of statement in the
commit message body to make it clear that the workaround number and
register/bit setting are the only information we have and that this
isn't an oversight.

Thanks.


Matt


-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
