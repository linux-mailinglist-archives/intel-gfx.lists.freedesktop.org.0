Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC1E64E018
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 18:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C944D10E139;
	Thu, 15 Dec 2022 17:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2211B10E10A
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 17:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671127046; x=1702663046;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GOudzHOc3GH10zUVH+Ip+XgLbWwQ31v7uIfZoyNoobA=;
 b=ICx+AfQtavuIsoecKXHoc1Ajxdizn5f9PxAlfJKgCBNx6ckY10g2iTnp
 Wh69bcXdF+q6B4ATMvKKTL3qhi3NFigidPhK/FAuSzgz/ZHyzyT8WOaEc
 Lo4ig8NA9ZGQY1qb727sHytI3oRm5T8bevb+LmPKMi+qf2nHIOHQGFQTP
 Eyv7CnomZtsTPz8GSuVYh0VaChITgwZfX0x88bZNjE0WGAA0UidjXI//A
 TWDwCNk2x2Y6WI5537BhtbXFQ+hGEOnU4tv6eh4QrGuCB5kGzgiiNrX0f
 UnQefI9cJVR6UJK/hDfnwTnPimWh9D5GYLZDage0mzcDsAJiLL6c6Ljsm Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="306412034"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="306412034"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 09:57:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="649532154"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="649532154"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 15 Dec 2022 09:57:25 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 09:57:24 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 15 Dec 2022 09:57:24 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 15 Dec 2022 09:57:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R20NRJnd3PwEFjBRVb+/6B0xf+yUMN3CFHWselgCiiHI3kJG1KoyJK95hpDp/JwUVaL3cD8RROnMtPPoFVt4zphYclG2rFWCRKGcwJ8sYijBNQQwRIm+ltTqeAu4DN0O7tK68Tyj0l/hrPX/CzDxofeMxA40bdOTJp1OhRuleGh69c+oHDwRrDk5SySxYYB0AgqH2yLmVaqM3G1SbI5sKdUM3gkojSmrRDFJa7RmOKhN2NUsRaqCJPC9s4D9gdxzPjPwdQHYTMagWQPhEgoSQG87EcsxhoAaTQmzDMM6yIvQZ2+iwq6Z5sm+61oJwPF77sEOaIASqD9RyH1eV9CZIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QMnapyD8G38UdPqH/b+SWkplnH/GgLrI21wkAlujmnM=;
 b=PIDZorQ2cyziJt+rJCj2KD+2Ye4v131WNWT01+lPSlodWCQFWVrjn0lDlDGNSSgvboopj2bFI7tt9Py3Ra2XsZZV86z6+ahF+rk8QmjpMTsfvqbOne8Y9N3bBWqBfca0F2AvrqikS/i9cH6xz7hzqklIrLeFuLPv9w6kmMCn1QZBzW0ZO5PNXTtiwcRdkZ+7a8lBMCwiXObsx16Yx5iJ4KKpxZrCBE8jPNPaUW0G57Dxs1h+I3KZK8wwMwv9WOsYe2M2FVkbN3KvBbB9EiIxAMRv7wX2ya1RZFgwhjmI64fQwBHhfNTl11y2w1ZihfmwM0nQkcdvtqrjXrMUrgkKHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SJ0PR11MB5087.namprd11.prod.outlook.com (2603:10b6:a03:2ad::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.12; Thu, 15 Dec
 2022 17:57:22 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5924.011; Thu, 15 Dec 2022
 17:57:22 +0000
Date: Thu, 15 Dec 2022 09:57:20 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Y5tgAOGNCo3UjdCS@mdroper-desk1.amr.corp.intel.com>
References: <20220817224304.255767-1-radhakrishna.sripada@intel.com>
 <Yv3VY2agZffBJLut@mdroper-desk1.amr.corp.intel.com>
 <071b7a16-8848-f9f7-2dc7-53c499787c29@intel.com>
 <DM4PR11MB5971A43B5E78F34B30EA5E1587729@DM4PR11MB5971.namprd11.prod.outlook.com>
 <7f00495b-4fb7-01f7-a262-09813b84c57b@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <7f00495b-4fb7-01f7-a262-09813b84c57b@linux.intel.com>
X-ClientProxiedBy: SJ0PR13CA0068.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::13) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|SJ0PR11MB5087:EE_
X-MS-Office365-Filtering-Correlation-Id: 93dc3743-b3d6-43ec-505e-08dadec5d0f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FaC/HVJHswrRvWlpxxSsGqKtCqr5JGdCUrVrmVXH9jCVw8AiHoZgbgyEhXNsyxn3gtJCXIS+2kgJjrRjjEV69z7lZGEKXuFiLqsQLtkSKJ7hTDJ82OBew+vaiMixJqW/GtXJQ8DZsE6J0/kVzRidskxgsOLy4Gz/rXAWS5/XiBm3ndSo14DDBa/02Wzy8Jn4UdJrEPwmHQRhOtzDS4m0vCABjHwSXo89mNaWsRlcgXZsuWIJ9GfoxKd3X4uJluAFcdS8QiidUSbti1zzH8B3GJ/vSEBen+flxZgL9ysSXeI+3vTERJLi12YqmrEyBwfVu89Q0fpd1IEnctBZS1SrZl4ehNj308iV9aXcfrqZVS7wa94I4kT7DbyxupO/6giaEswkB0ncSTAWn0BlqTwpyJw5Q6Mz1wfiDjvnJN9fqk918VqFQVPPmDAKwlV4HWicktgNW2ZFa98JaHvze7p13EGXyBWcgvnGRvMafVIl03YXRdREncqXB9vas39H9K0RkCPqtq1+gSURtIeAfh8jX+5VSz/+U55vSDR2M2J/oLLLmMdA1bJKiLeB3nEV3vyQnkuaLjqzIlzzCCx/GOcU6+L4AbTUmsenGQKznH/X19b72rkwX9mRg5RNG/pp09Zs/+ri6fJibIFa5v4UaApJsQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(366004)(376002)(396003)(346002)(451199015)(83380400001)(8936002)(86362001)(8676002)(38100700002)(82960400001)(5660300002)(2906002)(66946007)(66476007)(4326008)(66556008)(41300700001)(6512007)(53546011)(26005)(6506007)(186003)(54906003)(6916009)(316002)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RHkdzZM4yTI3dZf2ZmtonaVWB+GebwYFAE689EXSnr7XA+MdI9C1yESjvDI9?=
 =?us-ascii?Q?zN0Vh2Y3ZDg1wrW0UP5WZLxKSPdHE7iJR2apUD1wDLNX9wnZKOzukNsdLdzn?=
 =?us-ascii?Q?TJETBbm82a4Rck/xKqHj2wO3BIWxA9P2xHOhojlVJTO3vudT4jNS6enR3cAQ?=
 =?us-ascii?Q?ieL6C/SLfKVJXzqUVAAMFQQag9XlvQqHcuwVS1/2Q22ypt0MnCViITGVkNsN?=
 =?us-ascii?Q?GDPz/0dYubkwRDxReEMGLc6tZhFsp8wnhwIwGK3eU9cSgGDCengILlQQslRg?=
 =?us-ascii?Q?knXLIrMFekzA/yuAHvCCITNCVdffTJ0u8URC+Mesnyk3KZHFsU8uO7rQpBvw?=
 =?us-ascii?Q?iht/G/6ZjUSVc86rBiIn1PMcmYD+n4+g8+G/ZFSwKCGhhDpALcc2fe1SsQgd?=
 =?us-ascii?Q?e2Rf+Di0UUj1szQ6XFYdbj2LMdsPI1grh6P4ukeX2Dzml0lA7xyhX9Avczto?=
 =?us-ascii?Q?f6gPXaROs7dK2T5Mw3qSPb7+Y41bLNn2YoRT4uh2A3egyCeYY7ImcK8ehntw?=
 =?us-ascii?Q?eG+QYWNWgePC4rqaPlxfCmeHgq6Z+siCr6ZPh/vbGIx8A0BwZhxrZBk1QSrb?=
 =?us-ascii?Q?ANGVyhvyXLlPO6tiITn8Hv7UopyQtj9DmVptawmUIuZas7el3tS1FHRiL0lD?=
 =?us-ascii?Q?55fNvVUrUOOq11fX65N/JJ4a6V5caIsOKFoAjOYN7TbgOP7ZtxGTTJaUXTSP?=
 =?us-ascii?Q?Cuf5YVgDMzEY0nS9e/iZS1W+1EK0MSGmtmolMApwqENoi8maFt5qnZbfN+vR?=
 =?us-ascii?Q?ZJyFYygdMbFc/0LQMbuNBG3L/LzJU0XwLINlvySpzEy254LtpY6vfeN8QK5D?=
 =?us-ascii?Q?u/4qNgQl3BcN7ahI6qN7bgre3yjsPGnDKXwCRUTvuUQX7YnLiPaWFectYVGS?=
 =?us-ascii?Q?SQjFNu7aAruP0IONlSQN1/MuHReZlLOi2Bii04BYopbaBPRL7U39hJMGX9ea?=
 =?us-ascii?Q?rOtN8EAtCNPC6LNRqn/E+iAiUXuWTdgMq3o33mjv16GRYBV4KVag13mmaQXH?=
 =?us-ascii?Q?SnC91kWUqWrbszFz4+BdVk5+b9vFZsdwYcWVSilozF+AxJeiJ1Ps7zFS7AvA?=
 =?us-ascii?Q?NthteCFDrM2mVjhEqHsSy/XvvMajRfM10yci/JGTbqcV+q2gsMRXzdsSVXs/?=
 =?us-ascii?Q?W00ZeZcP27OmTxnQotRbEe4zT1gJSnr3/vDXuw/IMRUT0HDP69kOQ4yX3rFP?=
 =?us-ascii?Q?X9/09cTlf8tfa8GonyM3RgKRYRFd5cTQHDofxoDQbyYemi7cFm/MbCqBOwO9?=
 =?us-ascii?Q?Azj7URsTlK4hylOuz27/6we0bI73tIxq7/ZJx+P8zU51SjnKQH9QZCmnMOKf?=
 =?us-ascii?Q?Y8fl3NttOcVi2Ncjh9ArBNwHcJQZ+qMnUApV8RyuV2pc1mlnEKwbYwcPw05W?=
 =?us-ascii?Q?fPoD3Irih2tnmn7AUdfdIeuC7o3hJTrYqxzDdz83wcNgcyZq/3qc0X5X/zQe?=
 =?us-ascii?Q?Er2Hdg5T0+gKcDklWwGtgNZmHurFuwdJvC1C0zxBFDckzVnYu+BT1t+ch25c?=
 =?us-ascii?Q?UvUZ+XXrAqQ1wBLQpVshgx2XIuTKjoyRSQnl5GNCYlM7lezzilTv5UofGoW9?=
 =?us-ascii?Q?RAW+JYMj4ZsjCi0+R6ZNdcXz4c/Xzk6Z6aBc26Iy9Ja9EcbDVM+qSzwA7sWx?=
 =?us-ascii?Q?9g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 93dc3743-b3d6-43ec-505e-08dadec5d0f9
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2022 17:57:22.3988 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pt7hYnr3/Pir5i5labFcDLOHg6/e0+Vf57dzTu3g9F/kfIPMCiuDKewe4As7bP+wSjU12omVdrhQhp5y3IqGOgTZcubyx5yL6rYVM13sRKk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5087
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Skip Bit12 fw domain reset for
 gen12+
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

On Thu, Dec 15, 2022 at 05:38:22PM +0000, Tvrtko Ursulin wrote:
> 
> On 25/08/2022 18:49, Sripada, Radhakrishna wrote:
> > Hi G.G,
> > 
> > > -----Original Message-----
> > > From: Mun, Gwan-gyeong <gwan-gyeong.mun@intel.com>
> > > Sent: Tuesday, August 23, 2022 11:14 PM
> > > To: Roper, Matthew D <matthew.d.roper@intel.com>; Sripada, Radhakrishna
> > > <radhakrishna.sripada@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [PATCH] drm/i915: Skip Bit12 fw domain reset for gen12+
> > > 
> > > 
> > > 
> > > On 8/18/22 3:00 PM, Matt Roper wrote:
> > > > On Wed, Aug 17, 2022 at 03:43:04PM -0700, Radhakrishna Sripada wrote:
> > > > > Bit12 of the Forcewake request register should not be cleared post
> > > > > gen12. Do not touch this bit while clearing during fw domain reset.
> > > > > 
> > > > > Bspec: 52542
> > > > > 
> > > > > Signed-off-by: Sushma Venkatesh Reddy
> > > <sushma.venkatesh.reddy@intel.com>
> > > > > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > > > > ---
> > > > >    drivers/gpu/drm/i915/intel_uncore.c | 5 ++++-
> > > > >    1 file changed, 4 insertions(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/intel_uncore.c
> > > b/drivers/gpu/drm/i915/intel_uncore.c
> > > > > index a852c471d1b3..c85e2b686c95 100644
> > > > > --- a/drivers/gpu/drm/i915/intel_uncore.c
> > > > > +++ b/drivers/gpu/drm/i915/intel_uncore.c
> > > > > @@ -113,7 +113,10 @@ fw_domain_reset(const struct
> > > intel_uncore_forcewake_domain *d)
> > > > >    	 * off in ICL+), so no waiting for acks
> > > > >    	 */
> > > > >    	/* WaRsClearFWBitsAtReset:bdw,skl */
> > > > 
> > > > While we're at it, let's remove the "bdw,skl" from this comment since
> > > > it's misleading and doesn't match the code.  We do still apply this
> > > > workaround on other pre-gen12 platforms than just those two.
> > > > 
> > > > Aside from the comment tweak,
> > > > 
> > > > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> > > > 
> > > > > -	fw_clear(d, 0xffff);
> > > > > +	if (GRAPHICS_VER(d->uncore->i915) >= 12)
> > > Hi Radhakrishna Sripada,
> > > 
> > > In bspec 52542, there is an explanation that BIT12 should not be set for
> > > address 0xA188 corresponding to FORCEWAKE_MT/FORCEWAKE_GT_GEN9, but
> > > in
> > > bspec 52466, there is no explanation that BIT12 should not be set for
> > > address 0xA278, address of FORCEWAKE_RENDER_GEN9.
> > > 
> > > I ask if fw_domain_reset() should perform fw_clear() by comparing not
> > > only GRAPHICS_VER() >= 12 but also checking of FW_DOMAIN_ID_RENDER and
> > > FW_DOMAIN_ID_GT values.
> > Based on the note in 52542, all other WA notes are overridden by the comment. So unless stated
> > otherwise, it should apply to this register as well.
> > 
> > Created a bspec issue to request for additional clarification just to be safe. Will send an additional
> > patch if the comment contradicts our understanding.
> 
> How important was this patch - should it be sent to stable?

It shouldn't be needed for stable; clearing the bit isn't necessary from
gen12 onward, but as far as we know it doesn't cause any problems either
(except maybe on MTL, which is still under force_probe and not supported
on stable kernels).  So according to stable-kernel-rules.rst, this patch
would not qualify.


Matt

> 
> Regards,
> 
> Tvrtko

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
