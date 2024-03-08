Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AE2876733
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 16:20:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D73310EB07;
	Fri,  8 Mar 2024 15:20:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uh4Tw4T7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C6BF10E78B;
 Fri,  8 Mar 2024 15:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709911206; x=1741447206;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Hna9FAIaDas15xNZKUOceq0mqPfYpR/D4K+l6+gTLlA=;
 b=Uh4Tw4T7ZAG/GF6lKJQBIKXCUA/uGBX/lkr7AHYepkSXff2LI1ZHN9io
 ANIkW8Vo11FfSzzMeh/WpJx9Bw4qynHRHxKk5BWFA3rDnvfZLvvRPbJkk
 LvDcrFlCESlOJ3dSBSZwhgQNzwr9qYGtmHPELftO1VUFlyJz77ZjXbJrI
 e+PQjwq4IXBJlyhp4W17+YV3KP/d/drxalWQwjv+eoD1c75SSjZPhqQQi
 TammBiVjnbzcoMjYYu8SI5XYW3pb/voChAu+V2p+32K/CXAl28u9hnEeL
 m+WipqGyQcc9dbE3+REwjszKRDcOBNS8RtS7goO49GKjRvnvUDH2VHxgD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4811853"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4811853"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 07:20:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="11034728"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Mar 2024 07:20:05 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 07:20:04 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Mar 2024 07:20:04 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Mar 2024 07:20:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NKmC+XM2qFKfAD1+/rYpjocHTxl1L5kKcuC/YzoZf9bPFuIrisf8gkj8+SB9F7ejuOVsjgzlb5C73zChChC2dWbMf2wJ9gRPzLhfzHBcRH2qMhtg+lcwWU6xPnLarWg9ZUO36t4DdP2eyNlIraeNfzwZVQENllnitYfsg5E639PWryW56zbWBprXL6zwe0yyr3cyVCg6RtViww7fz3b/TRIOq0jmZFuUj/pQyG/1SffCM6j0ZoRkL13+PhxGRnVE5mrm0xeZaCWZGlY0219aLtyROvq12vOBBhw/+hOWHgMfAILR5G5BETfrKwZnUSJ+/8w7+7d8mcRLqc/zPot9QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ua/uWWKIwE6kGtTQKpaRD8sAZ4GbbAud6E8rpQzUP3w=;
 b=E+Dv1UytfmhsRnw2+oY0/9CBqK6u4j7JRE+dwlE3e9IyYksfe+Q6XvFaG9uuYond/6NRY7qPXAgPCV3AilV1rEjRqzmH4B9L3Kgitk+sbbTUk3GbvWFTPkgdRy6ocX2QOh7kxpJC+3mtV8du5p6VEVijCcEI5uRYW+ftC91bPLZcqDgckKotFucIf3KJ/amoQ9yToijG40UEd/6wb6gbvss6UTPYd76BCUDGmca5Nlz+DBuZMm6QaDvRKmrTpwDo1WFlNaG8jTxl45hb/eVv7XL3Xq5LtCeE8tGnubPX96zFtDOPIKwk6SutWO4ljwRqO24cIbzdhUw04u+uQCw3Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB5328.namprd11.prod.outlook.com (2603:10b6:5:393::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.10; Fri, 8 Mar
 2024 15:20:02 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7362.019; Fri, 8 Mar 2024
 15:20:02 +0000
Date: Fri, 8 Mar 2024 10:19:58 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Matthew
 Auld" <matthew.auld@intel.com>
Subject: Re: [PATCH 01/10] drm/i915/display: convert inner wakeref get
 towards get_if_in_use
Message-ID: <ZessnpTxaTDvmvGz@intel.com>
References: <20240307001554.162153-1-rodrigo.vivi@intel.com>
 <ZekKtpIobqZzyvDR@intel.com> <ZenTPngZUhMx5V4z@intel.com>
 <ZeogFEKNw4QYTG1J@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZeogFEKNw4QYTG1J@ideak-desk.fi.intel.com>
X-ClientProxiedBy: SJ0PR03CA0299.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::34) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB5328:EE_
X-MS-Office365-Filtering-Correlation-Id: 79d68bf5-6471-463e-32d8-08dc3f8339dd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HDU51W6/dNIeQ/M5IAoE/78UgiFnw1kzmrknubVV86oeJr3Cwgx/76G07lkcUPasBbcL9bjxLa0wJjeUPeGUitDFVVMFU0SPD9wTIhKztoSkH/gsi1mdOqK33aWwiDF7F3P/J4SRYlkQJfKwFfIZYfl9aEVj+xCAi25OuAc2WSYh66u3i9dkrwMVpSkMpWtdA5+AcBPsmKW/q+twf7XrSV34XUReoJVTP/2Q74Hhdk1+N1oBe7iiJ2SKlLqYy/vMjI6Wdua7/6edreGzeP2maFeAi9Moa/fTdwpD0ui+xWDgNiLn/HuXQsblHMQM45XlqBBlrIJbNg80zbiv4uPLPNobFqbeA3TP86GKOxkw8qEzTs4LDtyCHydQSYqhrsiyIaxofkKvU4hTN4B00ftN/n7U8SmXzN0mUspczcKInz+tB9Un5wweds5XJNBdsMr/+2vRTvnnCOGf8zjwPqkv/49vWRXcWwqxlHChim8iDe8fsrQDc0wxTJ84CItjyjv8hVADb1zx6myHyvVn5IoTAqeC9BO0rLSJg2gKdhl5bJk5JKMT9LVpRxb5nozpRwK1s0/Ie158apTvMfMGXXGPUG6Qy1RLwny0LoiMuuFCsH0jGEEGbVnfoYrQn9NpqZuJcJzTKgsabQ2A3kZOb+5I6Gn/x++Cc46EcB+6URF3VN8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?3jftWlldxg4PM+3STM6e+cdnRo/6Ok5YyoN5Z/AiO6L6B8bNb+Cj6O5mJz?=
 =?iso-8859-1?Q?6ENvDMZN73qHw7Yki6FbQF8buQeqm2c5/HotXod/gbpATVpEmun12PXm3W?=
 =?iso-8859-1?Q?95+CFPHPtwrHc9wFAS6NXMjIjckqtUyDAthwtYkZpJYAiPV4fgof8HPybn?=
 =?iso-8859-1?Q?wE2+vs31FfCW562spTzuye3NtdusaFWfh2M1AYflDt64P65LmXh1lGmcBR?=
 =?iso-8859-1?Q?zFp31ow7uqrV73WvA7tib/3IRNz9/9Im8ofMJx9HOmbFesHfXCwvefQSh8?=
 =?iso-8859-1?Q?ns7qoMEK8Wn2Yw9vQoGQIqrWu/Afg3CLbSdc5aBx7gEvMS+wFQsFbIgMuE?=
 =?iso-8859-1?Q?FgsARBVnngA6LnBblCqgx/ZKkhBS6cbZrLrDioKjFf8MXtxEg+08nFJOM0?=
 =?iso-8859-1?Q?IzgnvH8N6nmVDhwxXfx/ZXs3+gs9UIJBoK+NzuNsoD2y4D8Dqu26pBB7eQ?=
 =?iso-8859-1?Q?AyRAf7EnGmUPhHjwU9fWDPrO9T2EbYU6ijo1IkO9VF1qm5KRftP3dV1nTg?=
 =?iso-8859-1?Q?X5vHtXYAaPw/OkUhJ86N3eVyogJPL+bHGzZ3s07BOALqz9rAJHnYCZepMh?=
 =?iso-8859-1?Q?5/BUZpvrtlEAsEA4us05dWx5ueulYBzDzkRv0WJIhd/892w1THwrnkSm4h?=
 =?iso-8859-1?Q?tkpM/a0CP8eDy7zZ+8oUJTmRax6dSPZFBtLYfXHb2957RWw53y74L2sNPk?=
 =?iso-8859-1?Q?4K8HM+w1dx8yLloHH+5siadH0krCFv/V6wgGSAICMn/cBKZe6AK191d7DA?=
 =?iso-8859-1?Q?Epi5LyfdsGWyo5kupYtX3kabdjqCnzBHsMuT+RPtMgPhSSP2V9tY7TKocN?=
 =?iso-8859-1?Q?C3Q7d1Kh6CBXSuub8QMjQbv/TYtdxC5qewv2Ct9jWGggE+L6uHGefT3bja?=
 =?iso-8859-1?Q?8hMSej+T7+3QgKtN5dV22duHeMuvyq0MZYF8CJtJC3p185wA3s3jEi/sRi?=
 =?iso-8859-1?Q?1nyUag0SdqsWWnGTZbOcgL0Na9OhijmfsmY11gxy9J1UfmmC1/8VwRlIht?=
 =?iso-8859-1?Q?6ZUb/Kig5MSmZyek71Ob/lELOgMHZ+9rWGRosShkZhqfv+V+98HnO6SdRO?=
 =?iso-8859-1?Q?hiMzu7uvyakUDVEtrhMGpfnbfK1tg2mdxv7Ykw/ZmS+W3PrKotfWjA9dJ6?=
 =?iso-8859-1?Q?2gLs0JD0QpUcrjSVrrNVeaqZvEtLueeCbmDth1SZYrYdyaDl4dqCjQGr5f?=
 =?iso-8859-1?Q?/+Qjrzdi2NbXZm1srmG2umZdT0wkq5Q4HsR9AV0TXzZJnnOvSS79N3MyC8?=
 =?iso-8859-1?Q?d3Pq9Y5/wbJOKBF8cTgpqsR7SNskAfbmchtcte5ULt6LIsfhI84+6liiDb?=
 =?iso-8859-1?Q?+sQnTonvH0cCWzSR311jVOw6Y1wZG8sTGjHQkpZTE/6afbvaRRWOMuZhbh?=
 =?iso-8859-1?Q?yrzWnr1o9/yYDt9Zgma9mEnXX3W/hekzZcBiDpYuvyg3atuX7P0+QKuWEL?=
 =?iso-8859-1?Q?lgmcp5uQmlPuhAlOe+lNNBETqlUayW1utqsUFkUJJzL4agUAi8faFYjSWn?=
 =?iso-8859-1?Q?L6AsYl1AOmFQds2i9MfSPo3i90N+pP6gYZEpw/PFPQ2dyE592/n7eaESQe?=
 =?iso-8859-1?Q?lTxq6+n2qxswCibEGZU70o4rfkFq/97rF4+5BTeUErnCs4YJwv/uQdsp1z?=
 =?iso-8859-1?Q?xDHVdCpMvEx6kL3yK62Q6LGhQaQfi/dfUU?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 79d68bf5-6471-463e-32d8-08dc3f8339dd
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2024 15:20:02.5143 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TJjpbMVqZ45EBI7WTaI5qwDZtIqb7fr/gg9zRdpXVZSxAnROE9uhEHtZK92JS0rj/rDZGRzIkoNuyBp2aY8qMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5328
X-OriginatorOrg: intel.com
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

On Thu, Mar 07, 2024 at 10:14:12PM +0200, Imre Deak wrote:
> On Thu, Mar 07, 2024 at 09:46:22AM -0500, Rodrigo Vivi wrote:
> > On Thu, Mar 07, 2024 at 02:30:46AM +0200, Ville Syrjälä wrote:
> > > On Wed, Mar 06, 2024 at 07:15:45PM -0500, Rodrigo Vivi wrote:
> > > > This patch brings no functional change. Since at this point of
> > > > the code we are already asserting a wakeref was held, it means
> > > > that we are with runtime_pm 'in_use' and in practical terms we
> > > > are only bumping the pm_runtime usage counter and moving on.
> > > > 
> > > > However, xe driver has a lockdep annotation that warned us that
> > > > if a sync resume was actually called at this point, we could have
> > > > a deadlock because we are inside the power_domains->lock locked
> > > > area and the resume would call the irq_reset, which would also
> > > > try to get the power_domains->lock.
> > > > 
> > > > For this reason, let's convert this call to a safer option and
> > > > calm lockdep on.
> > > > 
> > > > Cc: Matthew Auld <matthew.auld@intel.com>
> > > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > index 6fd4fa52253a..4c5168a5bbf4 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > @@ -646,7 +646,7 @@ release_async_put_domains(struct i915_power_domains *power_domains,
> > > >  	 * power well disabling.
> > > >  	 */
> > > >  	assert_rpm_raw_wakeref_held(rpm);
> > > > -	wakeref = intel_runtime_pm_get(rpm);
> > > > +	wakeref = intel_runtime_pm_get_if_in_use(rpm);
> > > 
> > > On first glance that sequence looks like complete nonsense, and
> > > thus likely to be cleaned up by someone later.
> > 
> > indeed. as many other things around i915's rpm infra.
> > 
> > > 
> > > To me _noresume() would seem like the more sensible thing to use
> > > here.
> > 
> > well, same effect actually. we would use the _noresume if we
> > put it without checking if the usage counter was bumped.
> > However, since our put takes the 'wakeref' into consideration
> > anyway, let's use this one that is more straight forward for
> > our current code.
> > 
> > > And even that might still warrant a comment to explain
> > > why that one is used specifically.
> > 
> > In general we grab this inner references when we want to ensure
> > that we have full control of the situation, i.e. ensuring that the
> > other reference which we are relying are not dropped while we still
> > have some operation to do. It is safe to have and cheap, so that's okay.
> > 
> > > 
> > > I'm also confused by the wakeref vs. wakelock stuff in the runtime pm
> > > code. Is that there just because not all places track the wakerefs?
> > > Do we still have those left?
> > 
> > yeap, those are very nasty and not documented. But looking a bit of
> > the history and the documentation about our get vs get_raw, it looks
> > like wakelock only exists so gem/gt side could ensure that gem/gt
> > side itself is holding the reference, and not relying on some reference
> > that was actually taken by display.
> 
> The difference between a wakeref (aka wakelock) and a raw-wakeref is
> that the former is required for accessing the HW, which is asserted when
> reading/writing a register. A raw-wakeref is not enough for this and is
> only taken to prevent runtime suspending, for instance held after
> dropping a display power reference, until the power well is actually
> disabled in a delayed manner. During this time any register access is
> considered invalid.

ah okay, so it is not just about the GT, but also about MMIO accesses.
So the ones in display looks better now. Thanks for this correction.

> 
> Both wakerefs and raw-wakerefs are tracked.

Indeed. And also it is worth to say that this patch doesn't introduce
any change on that.

both
intel_runtime_pm_get()
and
intel_runtime_pm_get_if_in_use()

calls
intel_runtime_pm_acquire(rpm, true);
return track_intel_runtime_pm_wakeref(rpm);

so, can we move forward with this change or do you guys see any blocker?

Thanks a lot,
Rodrigo.

> 
> > One thing that crossed my mind many times already is to simply entirely
> > remove the runtime_pm from display and do like other drivers simply
> > checking for crtc connection at runtime_idle.
> > 
> > But then there are places where current display code uses the rpm
> > in use to take different code paths, and also all the possible impact
> > with the dc states transitions and other cases that I always gave up
> > on the thought very quickly.
> > 
> > But you are right, we will have to comeback and clean things up
> > one way or another.
> > 
> > But I wish we can have at least this small change in first so I don't
> > get blocked by xe's lockdep annotation and I also don't have to
> > workaround the annotation itself.
> > 
> > > 
> > > >  
> > > >  	for_each_power_domain(domain, mask) {
> > > >  		/* Clear before put, so put's sanity check is happy. */
> > > > -- 
> > > > 2.43.2
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
