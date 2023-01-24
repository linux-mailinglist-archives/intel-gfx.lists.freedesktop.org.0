Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF5567A2A2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 20:26:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7475F10E140;
	Tue, 24 Jan 2023 19:26:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2019E10E140
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 19:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674588393; x=1706124393;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wEpPxeM9m7y+7YKYWwusceheRkHGX/Ex7RAquDQKVjk=;
 b=eliGUSiFFC+ciX0b+viysS6anqbg2latzxb88mQ+sDKT5ZugjDfDVNU+
 bVlhrjZaGPErByLeRrF4H7lXCN1a4XBnDYsrCrql+LAk2vWfTCPwXl113
 nBxnSafjI3dRes/Ging8tgIsjs9xCFTd3SdaCrRV7R/AhJrIzeRpvHjPj
 A5+pxtl9fiWC8XvK1hsjCgRhTDizSChiAw+VcIQh1t13lOvyegDlOR6hP
 pmGbVmU/PhIbCs+vFatuE6FhhXsPSC22lqw6uyP1Yt4A4bv9ZBmkEfM1o
 4yQY4vCBWzI77wHjuzHpP9EoNKPKS6y6kwkgwzxb59XXXEgURj6U/5EKj Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="327639960"
X-IronPort-AV: E=Sophos;i="5.97,243,1669104000"; d="scan'208";a="327639960"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 11:26:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="907622596"
X-IronPort-AV: E=Sophos;i="5.97,243,1669104000"; d="scan'208";a="907622596"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jan 2023 11:26:31 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 11:26:30 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 24 Jan 2023 11:26:30 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 24 Jan 2023 11:26:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NCaQzMdUDCgpNSN4OLs6ko7nxIs0GgqFPjtbZ5vfViBZiMof9ZbeNa3mDSyLaofKRX1V6zPCEFfnh37uxXWJGVLzezcojv0WBYJvHGSMsNHgrDHaLIVSVixtLQswGtSu/8IaHeT54/j6vFJEB3chbyh3O4n08osetas+Mi/AwvmSZI5P8qY8trJ70pGQkdmxQKBhDDEHOKQz9qmML09Wac/wN5HeQm5piPn2W6dMmJ0J0HbAIVDYHmwx6kBfIZy2YCCiqlcB6jIZ07p7u+MegTwrlJVM3qOHYrtVvrWwJ99EIJIgILlRz7lnEPXH53STBUpZlB/W/6F2o1ApiXoiQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uLg1x88M7fgufJ6bMjrE0zxkTAmQ5/N9RxL3LFNUFb8=;
 b=Fd8sX8ofKZCeS07Ur6n2p3tgwnuzkiG61pDM9lSNdKJQ/F9g+jCwZMB9OkbxiTX9S275ViIpvCMuav8P6xBshd5FjWDN5NrDZ5qCm21V/y5Iw1KDVJVPj5r55YU9003i1b9cixce2egbic8oHTsXknj2PST1Wn6YL2NXLgKByLskSeaCHYCCOPwWvH2EyX9ke1xW6/NSkveHsAko4GjV1WbhGWxIx/Ja//7Wh2UfMIlTeJSBuy5LCJvwojJFPBeh0u7V+f3MwJrwelNgarNBWYXVYOcfNagndUy2VataShaqtmmUsHUayu8jGbKZojGKsk/UNM5F2l+LkvkHgjtgmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM8PR11MB5573.namprd11.prod.outlook.com (2603:10b6:8:3b::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.33; Tue, 24 Jan 2023 19:26:27 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 19:26:27 +0000
Date: Tue, 24 Jan 2023 14:26:22 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
Message-ID: <Y9Aw3sCGt+s+qGIO@intel.com>
References: <20230124110515.17017-1-nirmoy.das@intel.com>
 <d8a7783d-29fc-342d-c9ed-3f3b16455b4d@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d8a7783d-29fc-342d-c9ed-3f3b16455b4d@linux.intel.com>
X-ClientProxiedBy: SJ0PR05CA0006.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::11) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM8PR11MB5573:EE_
X-MS-Office365-Filtering-Correlation-Id: efbf2f35-ab75-4d11-764d-08dafe40e348
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SKVsHL1Q6mxDGdsCbz88Ve91wf93iG230UW1dTjvBHdYuWl1Ev/g78Mb6CVzh90ultKLDf198H+IEgKukg46QKTHaX+syRIDTR7Fe8Gvbro6b8/K0S+q6rNIjmpZaWI+Xe8MfP3xANit9LaTigleff6X7mxjJ1AK3/q7EVfC42B/V3Rq6c2mmxXeer3zwe7+2rV2Hncet5+TO1NhTmCIr3gP055UC6jI88AGz+ijIbFdSm9DoJ3gqq4KV3qhVGlVAkL5ekfCXfFMTCdaRgaAcpMAjWVbd0hQY3ZgGHTnmrkh/uvy5tKtDOHtDtUcY8cXcR0gBmudcbQvm/pGCoYTSX1P/VnItKH19S4Ob1BCylhzaMaupRjfr3dSPqcd8oo8wGrlEOBtdVaRsWjxDBGreUcer9EHJ+v1CAKJ26yufyjEppu5ivxY64DKBwu3x6GtfanktaoANNgVZBzygd0NU8uEDsEpfgFDPbR0FEIicuhdi03mhOFocULSH+V2yNcf4G0ox8qM0isYYXA9UZ74DE0BiXq5A9SOYZOWcQUR4M0qtUAUpyhJqQKxG9z4aqxaWqX7r/stNFMCwDMtSgmiOajzWc565wvWneqx8AuPfMw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(39860400002)(376002)(366004)(346002)(396003)(451199018)(36756003)(15650500001)(86362001)(5660300002)(4326008)(8936002)(2906002)(2616005)(82960400001)(44832011)(38100700002)(66476007)(478600001)(83380400001)(966005)(6486002)(6916009)(186003)(53546011)(26005)(8676002)(6506007)(6512007)(66946007)(316002)(54906003)(66556008)(6666004)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XTMjtM8dGPHM53bWmtIp7H9wskfKXXhWUB6SbN4+sXNYblxSvOF/TWa8NO92?=
 =?us-ascii?Q?cwOUY2XneJMT+l5rPk6+b9m7vuD1jBmu4VvrEQvBXho3qhG4O2Ilek1YPjaK?=
 =?us-ascii?Q?hAl9L3QXWPqPrhHFOVBOJyV76K0+hAUfxFRu1tj+yKX9uDwVvgc+WxOpktCH?=
 =?us-ascii?Q?e9/gjD2unl8+9kMuS+bQEIzmJj6nJLhQsmSeqBfCTzpLPlkhM2gyCXc+IaHE?=
 =?us-ascii?Q?OhWRFEdN/0XqUx8RIhS+ZBs/pHw+SigxsiUEip9WCwtt27nqjarFiqjmwzxh?=
 =?us-ascii?Q?6MteF3w8FW7PQVHI9+noAM0Vw9ocLwFBckab5KDEwzuspKP+gytMpg7WyX2O?=
 =?us-ascii?Q?H1ToFxKrh4P0Dr0CqwqJI9m33nzHKng6ynPV/fGoJmZk6XS80l9jRqOycWVE?=
 =?us-ascii?Q?/UhFYMsLreEkgiSiR1C5yvavI/TYMe1jpriP0jDnE76CtuvGG3UYRuJm8Mb/?=
 =?us-ascii?Q?kUsRKvucbeCIapnBRVgYOppWUJGBTpzsVds629U6TQdxWa0cEExRZJSujycO?=
 =?us-ascii?Q?A/rGc1a3GuYVjnrKDJHNOWzIIVzJb0/lb2/Hl9JLp/sbJm/Ro4OVJDGXnviS?=
 =?us-ascii?Q?AX+Qw8GARm0rT1+6I8EHo9dxeSjkwUOAB8eDHkdjCvrIwtVbIH3l5EFmMp/y?=
 =?us-ascii?Q?/QIQADpqVVfOWSivrJC33ITefXu0/BFBdchEXfoHUaVLzl8QXeofKbPwbIwy?=
 =?us-ascii?Q?ZcdN92N7DO/CXwUFLt0nIdBaPOqGOOJt4wqTN8LpD86OO5XzW1Ycb26fHgW0?=
 =?us-ascii?Q?R2L9epDmNOMwZSqYNEd/aBJIdVCPBklilozkeWqahCzrDocpppMCcLKFxDr6?=
 =?us-ascii?Q?TuQM/4j+653w/2ScJ0zjsfIM7QiGxDc+x8smJ+W631QuG7VtoCu6m9GyyIup?=
 =?us-ascii?Q?NmpL6pDT1Bsr/huI7cLJrb9sgNR4kl4xhsefguJMMUnOgJi/6fh7rudY4O7J?=
 =?us-ascii?Q?5gaCD16fpwUvoX5cFgr8Mq99cgHsf73LiIAVoGOsA69xlUYOMbIh6bHd0kGO?=
 =?us-ascii?Q?BcOFSwVO0bEHsDinQ5V2O9fGl1iCyqONDjbX3XnvaquRAObd9cCnMATnrFmz?=
 =?us-ascii?Q?5Cn9SWlNMq5/ETS/9hTAMCNPutx9uSwLUBzwF0z/YlS6XhUsVPIbLaSuT3is?=
 =?us-ascii?Q?3c/sZH7nfnrpDfzai6rB97m4BCzlg59pPwCcB/KD0P1LjYcbXGVrki0E5jN/?=
 =?us-ascii?Q?eX08CfA0rh6QfWTZVBMgrlYPTUOdNSwBS9XOn8a6TrfOQCEnryEeAp9+mWFd?=
 =?us-ascii?Q?B5dgY4S3Sa0nVJRQGeZgKiQcX/TEML1EsPXkT9QF/5atUSu69wmehb3Nyb3Y?=
 =?us-ascii?Q?QBbw+5IqRJpNEgR3bvBhDG+jL8U/52xrDRmFTURO/1QxdkvH0QCoONYcY7GR?=
 =?us-ascii?Q?viexenpo9mTVBJgFg1A1Yba4aKrJ09svu7qNTbJ3dr1jBmiSFO71cXTSaNIJ?=
 =?us-ascii?Q?H7H/Dddld5KGlRrIiQkfdHjHnlimvJW0a/06keXyVkxBJ/H7eD/P+TJkyrnK?=
 =?us-ascii?Q?E5GzPMR047iJFXOv05XTLrJynPS+UAGat0O7lnsseFvwqL4fCNvkfrKBhLRP?=
 =?us-ascii?Q?JX94b9GQQg/PEFBCV0ipDAGmVJVWjsue09j6vuyeqSWR9/4UodWH0LLws+lY?=
 =?us-ascii?Q?kg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: efbf2f35-ab75-4d11-764d-08dafe40e348
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 19:26:27.4790 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7/6lOcQ8ZVT4fHrpBhnBNMd5EGslYFinuIoAwTepgczTjCVpmbPsDs2utCa/Aa3ctXWYMWyK9dkFz94STSCr8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5573
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Clear wedged status upon
 suspend
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
Cc: intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 24, 2023 at 12:07:19PM +0100, Das, Nirmoy wrote:
> Forgot to add the drm issue a reference.
> 
> On 1/24/2023 12:05 PM, Nirmoy Das wrote:
> > From: Chris Wilson <chris.p.wilson@linux.intel.com>
> > 
> > Currently we use set-wedged on suspend if the workload is not responding
> > in order to allow a fast suspend (albeit at the cost of discarding the
> > current userspace). This may leave the device wedged during suspend,
> > where we may require the device available in order to swapout CPU
> > inaccessible device memory. Clear any temporary wedged-status after
> > flushing userspace off the device so we can use the blitter ourselves
> > inside suspend.

This seems a very good move. But this explain they unset_wedged part,
not the removal of the retire_requests. Why don't we need to retire them
anymore?

Also, what are the chances of races here? I mean, we are marking
the gpu as not wedged anymore. Do we have any warranty at this point
that no further request will arrive?

Shouldn't we have a way to differentiate between the totally wedged
and blocked for user submission?

> > 
> > Testcase: igt/gem_eio/in-flight-suspend
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/7896
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> > Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_gt_pm.c | 10 ++++------
> >   1 file changed, 4 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > index cef3d6f5c34e..74d1dd3793f9 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > @@ -317,19 +317,17 @@ int intel_gt_resume(struct intel_gt *gt)
> >   static void wait_for_suspend(struct intel_gt *gt)
> >   {
> > -	if (!intel_gt_pm_is_awake(gt))
> > -		return;
> > -
> > -	if (intel_gt_wait_for_idle(gt, I915_GT_SUSPEND_IDLE_TIMEOUT) == -ETIME) {
> > +	if (intel_gt_wait_for_idle(gt, I915_GT_SUSPEND_IDLE_TIMEOUT) == -ETIME)
> >   		/*
> >   		 * Forcibly cancel outstanding work and leave
> >   		 * the gpu quiet.
> >   		 */
> >   		intel_gt_set_wedged(gt);
> > -		intel_gt_retire_requests(gt);
> > -	}
> >   	intel_gt_pm_wait_for_idle(gt);
> > +
> > +	/* Make the GPU available again for swapout */
> > +	intel_gt_unset_wedged(gt);
> >   }
> >   void intel_gt_suspend_prepare(struct intel_gt *gt)
