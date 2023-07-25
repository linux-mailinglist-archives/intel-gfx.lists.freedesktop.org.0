Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40425762438
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 23:18:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4816C10E18E;
	Tue, 25 Jul 2023 21:18:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EACD10E18E
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 21:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690319923; x=1721855923;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Oq2awdS/2DgL3nW9cBj5f2Ci1kbsQdtlXeX2j9RJyls=;
 b=Q7d1F16a4xgsncs+Z1JYj5nPy6Shbya7d8y8aFwINme6RBI62NSR09Og
 taqwJtTkTr7W9iNyZZGCQXq62dKVeZ72QSFo0GUykMsZzY0kjJYzJmcE5
 lnq5SymRTEplOpJ0Myq1MUhFNR5WD91l7Wxs1cBCwKn3pKiOp5K4TuQdU
 yk9VTyRuUcMMv7v3zedPsJv+uL2AAFS095q23R61jGgUH0+ItYsMVfzWl
 eLJ9OJCeV6OVB8t5KNptLti1G3vHlN8bxIN0lY7fr3tli37a3YlhY400R
 sarL/0PTc7ed6C4zTmcjIy9hRoav5Flg6XA4Lq+hUTh3yw3UrvCM+2S72 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="371457356"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="371457356"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:18:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="850184029"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="850184029"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 25 Jul 2023 14:18:43 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 14:18:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 14:18:42 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 14:18:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U/ZGrPjfKneyK29bZLW7GXWhSEdj6gN3etCKB8BJwc2cfu6BhhYvsR5is0ev9hFqIoemjBMZuOy7nbh0TIYgG8lNuEqaeuUiJjD2zMejrpG6mGRAnJ2WO0/0KHG9FLZkE0alTXr79Ethd2RXgityFJAtvK/Y4SDxQ4SoI05Xsjo0xdenGFDW7PzJaYf0RONGbPJ4F5gE2xruKISRM62ec3mqhqk8X0FX9t3pNA0mKGKCK+Rnmj0bPF50Oxz6wim2sx5OsUuYk5AbrbFceiBS+2INzWETeGJww2IrzI4WJSwDBw9dkjJfoyefjtkckAlpmPIWuxfpHuQ/o/snrV4Umg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=73ZVkSGHfIxUTlOEGdXbaB+sT72CcW3DMp2BWvnjG/g=;
 b=OjcW842O2+3lQxLfTzZygi1z6JPH1cXDok9PNK0oaoGXHlhoYeO2hlw5xumFoM0T8MBoi32Y7nm9Xf/VAtztlF1X2KV29aQd40EZVcZei2dI8wQVC+C4w0FI1cFgkWNc7nI88lBTqUgo2yFq74ZBw1D9m+M/qj/2pWrEmcRE8KzkArFPvBWKO2uPRLEBN5mGAGRvjG4c6rpqfUlP9WmCC61+GQ+C58yN2l0QcAewmUUdozY3q5RBh72uZ4XL7/eONTBZCLMC50+qHpi/IjVrDUv4tC2oypIVMr0mu1aEXJvrOI4t73jDv7s5faowFbvZNVkycvkCQAPpaC8Y2sn/Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB6923.namprd11.prod.outlook.com (2603:10b6:806:2aa::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.25; Tue, 25 Jul
 2023 21:18:38 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6609.032; Tue, 25 Jul 2023
 21:18:38 +0000
Date: Tue, 25 Jul 2023 17:18:34 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <ZMA8Ko8RYfpZP+qe@intel.com>
References: <20230720210353.214385-1-rodrigo.vivi@intel.com>
 <CY5PR11MB6211C557FCF7EF65F3CFD64E953FA@CY5PR11MB6211.namprd11.prod.outlook.com>
 <ZLrVvWOoU1BvpBsX@intel.com>
 <CY5PR11MB621139820D8A2ED0CB2F49E59503A@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CY5PR11MB621139820D8A2ED0CB2F49E59503A@CY5PR11MB6211.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR05CA0083.namprd05.prod.outlook.com
 (2603:10b6:a03:332::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB6923:EE_
X-MS-Office365-Filtering-Correlation-Id: f012d8cc-56b6-4542-50bc-08db8d54b6a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z5LWPPIXjiEvahWRX3ii9DiFn+/ISsrfb8kTe37bfmEIaktTE1guI0Ziqvwp11uT0ybQ2DbbrL/ITfaMa448D1xTkLqYAbFg+0pwHJXpjqzxGS93vpgKT3l0945qBXlJQcPIpSClw8AoNGeSpGEpibSiPV0kPUY9NxC7WPHWiykKNyGBMqOqvOUi77c1jx3HVb5PJ6RSvGixZK2GDmTiUSxSa5MiVr2Q70UPLdm4WarvxtoKrcDp8//FnjmumsQHUTJCb0VlTYGi60uIVCcFYh/PoLtN19KiAU9rVdsbQDS+sXo0Ines8nJodyv/AJWqNs3gYu4OhQqq08++DA2qLkvUwAEIQI5HeV2b+CCWoPHmSMYqlGfdA48BD2tfQqjXpn/EB1tVILRUNC2Rj7xMTmvule+hWylV824DUSS6itk6LcARf2OJCvVUS+/otWxmsDPUdZCSQHi71u1cj8xRlJteFlNBW03bluDzu84njZ8M8dCGW9A71mXp/IPZgESfsmOT5MwbmYEpOY/YRA4WyIRiiGkgEvsm2A7aMaGxq4cprP5MQbjfb5G0bZ3Qw9Id3PgGTlJoc3M0IcfBphuyBTjnKuz/8rM/Z1o23ohKrjQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(366004)(346002)(136003)(39860400002)(451199021)(478600001)(36756003)(6666004)(6486002)(6636002)(6512007)(86362001)(4326008)(66556008)(82960400001)(316002)(66476007)(66946007)(38100700002)(41300700001)(53546011)(5660300002)(6506007)(186003)(26005)(8676002)(44832011)(37006003)(8936002)(6862004)(2616005)(2906002)(83380400001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xbpdWVw54cQwa+IWbg1uTsGNwFDmBeyPPsz52NHbXpG9Q93jn7xhUbt6wR3A?=
 =?us-ascii?Q?MgaMXrG8XSK/lCc3Vnuf62k8FUQHq5U97TAsFGpoyJ4zq6c2tmDGwtG0BkT4?=
 =?us-ascii?Q?BYGneyaaV1r+DNNw+F1qjLf+2+D9BqW1454AQ9jLOTQix7KaUKQthQ7CG+WX?=
 =?us-ascii?Q?JiLYJ8CHuXPfh8nFYsgL58Q1lB2cO9GEX38LJHYiS/1MSUKKLUcW4b643kyU?=
 =?us-ascii?Q?UkchmIe2ThwQJpA7ge4d6+6ef/HGY4A6Y1Nni7z5p8DZHzsGcJcLAMjYuIWD?=
 =?us-ascii?Q?E9LdIKxFJ00aG21PYcZi+tYofV3drNZkDn8x9M1Kh87eZ5p3Z7aOcUg9gQJx?=
 =?us-ascii?Q?/0cJaPMESG1jFkW1BH2TQ+8xx3NyTGrsSNyl1Pk78YteCzj7LCHXfRCToQXp?=
 =?us-ascii?Q?Omws0MPaHqnYCfD+kqUjfgsO9wQ5rVbzA8XTFVztRe6kEy7M9Wals8jQgrfR?=
 =?us-ascii?Q?BcotdEQcLZVSVZI4L2f9wu8E0DyVFVYX5WkFBEYRU8/YTr1+gCwkL1wuwD8n?=
 =?us-ascii?Q?kXdCdlVh/T3REuNKwZ3HFcLtTXyLCe4Cpof8zoNmXOXMppXQg1xiQFJKmvh6?=
 =?us-ascii?Q?mflZSfO5XoQDv/g2loeXfSv+Yn3dx9umjbpeH3Zw0Z/v+6jRUUhJBLNxwK3e?=
 =?us-ascii?Q?Yka3dysXqy+X59TQ39D96YaLr2gt5litoG9ZZRNfp1m4LtiOpF6ojw04HnoB?=
 =?us-ascii?Q?q8p7Kji0PCEOdQaPUb6vk1KvlINb3THVGb62oCz6bOTKPnKTDhrN1RW1QNhx?=
 =?us-ascii?Q?EHtvy6YWGTV1oDWn74BLa8AkXafEKq24xAC3hKADWAGWSScFAdn8ppOhut21?=
 =?us-ascii?Q?h/CDbzhBxdUCNC5XIGS1PhjFZgfnCp9jcoKb8TuRX553mUUPiG31EPILTTww?=
 =?us-ascii?Q?n4R8K3sdYlOeodHh5GSQKmGAjp9ZcnwqTkdN1ePmUogvRvWZChEzpQ3mpzyF?=
 =?us-ascii?Q?9dC91TZ9UgpcZ6cWxGpgMy8GO3waRHooSgL1N/IrM/FYQCshlJ/W1RpP3B1U?=
 =?us-ascii?Q?lWAkPY6f3wlCyxpiSVvNNPZOuDqACWD1tggokOcNQ5jrd1oALVtY5fEp86lu?=
 =?us-ascii?Q?jLSsmeK1+lVzy1s3wR5bGRFTpGAlP7K4wlDh6V9acWUmhjQ4SxTAMOHVPUbh?=
 =?us-ascii?Q?RJ66MBwvYCbgr3XdOKKpMT83uJJjNNKqbX/UnwJpFclIeS9XdCjLnQcynn3I?=
 =?us-ascii?Q?3WWjGVQ5qhUmhjXsFOJVFTCWyWV/sQ8QXY7tEUtrgcoRoZ+VQ+61nIR6qAUF?=
 =?us-ascii?Q?IMN6jNKSYNjn2gQttPmgv10WbQyWW9wWWLJXCfEtEcAYzm2sgwgrjcX1oDq1?=
 =?us-ascii?Q?oNbGL/8XqqhmDPe/dCTgFqrcTf1//hUqd3R6jev4tFS8bRlyEdLsYSJURowM?=
 =?us-ascii?Q?7uejZ71kzuQgSONVpjSpAabKmkDSJvw/CHSY4rVZZtD5FVh5az7VIJCJfmtv?=
 =?us-ascii?Q?VLqaeeNewMBQ62znQ5BEsgWIGmY6mPS5IwcgsyKs4QGkF96LlwB9ptKLRLPM?=
 =?us-ascii?Q?tHYaLGk6mbRed+rpuJWTEdO9abqEdgJA7Fk4HhzFy3ncv5FSTo7VU9Why0tk?=
 =?us-ascii?Q?FKoX77K6IXQTMlkVE5K3y8lps1KV078+UUe8hU6vbODkd9MS0yez7khQ0Utg?=
 =?us-ascii?Q?lg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f012d8cc-56b6-4542-50bc-08db8d54b6a9
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2023 21:18:38.7276 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZVBUfLyaL4TED+XJsEOgLn2WfIGMmrsMghYslqgVPzdC8mgme3FyuCl14TDhV9WChX4tqikNpSBpyWdRqYLylw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6923
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/xe: Only set PCI d3cold_allowed
 when we are really allowing.
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

On Tue, Jul 25, 2023 at 01:08:11AM -0400, Gupta, Anshuman wrote:
> 
> 
> > -----Original Message-----
> > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Sent: Saturday, July 22, 2023 12:30 AM
> > To: Gupta, Anshuman <anshuman.gupta@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [PATCH 1/4] drm/xe: Only set PCI d3cold_allowed when we are
> > really allowing.
> > 
> > On Fri, Jul 21, 2023 at 03:39:35AM -0400, Gupta, Anshuman wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > > Sent: Friday, July 21, 2023 2:34 AM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Gupta, Anshuman
> > > > <anshuman.gupta@intel.com>
> > > > Subject: [PATCH 1/4] drm/xe: Only set PCI d3cold_allowed when we are
> > > > really allowing.
> > > >
> > > > First of all it was strange to see:
> > > > if (allowed) {
> > > > ...
> > > > } else {
> > > >    D3COLD_ENABLE
> > > > }
> > > >
> > > > But besides this misalignment, let's also use the pci d3cold_allowed
> > > > useful to us and know that we are not really allowing d3cold.
> > > >
> > > > Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> > > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/xe/xe_pci.c | 3 +--
> > > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/xe/xe_pci.c
> > > > b/drivers/gpu/drm/xe/xe_pci.c index 78df43c20cd2..0c4051f4f746
> > > > 100644
> > > > --- a/drivers/gpu/drm/xe/xe_pci.c
> > > > +++ b/drivers/gpu/drm/xe/xe_pci.c
> > > > @@ -794,6 +794,7 @@ static int xe_pci_runtime_suspend(struct device
> > > > *dev)
> > > >  	pci_save_state(pdev);
> > > >
> > > >  	if (xe->d3cold.allowed) {
> > > > +		d3cold_toggle(pdev, D3COLD_ENABLE);
> > > >  		pci_disable_device(pdev);
> > > >  		pci_ignore_hotplug(pdev);
> > > >  		pci_set_power_state(pdev, PCI_D3cold); @@ -823,8 +824,6
> > @@ static
> > > > int xe_pci_runtime_resume(struct device *dev)
> > > >  			return err;
> > > >
> > > >  		pci_set_master(pdev);
> > > > -	} else {
> > > > -		d3cold_toggle(pdev, D3COLD_ENABLE);
> > > >  	}
> > > During s2idle , d3cold may get disabled if won't restore it's state in runtime
> > resume.
> > 
> > I always forget about that case... please disregard this patch.
> I think , we can have this patch.
> I realized that system wide suspend/resume d3cold need some brainstorming.
> If device is already in runtime suspend state during system wide suspend, PM core may smartly skip device suspend/resume callback on Xe driver.
> This wasn't the case on I915 driver as it explicitly disables those smart optimization by 
> dev_pm_set_driver_flags(kdev, DPM_FLAG_NO_DIRECT_COMPLETE). 

so, it looks that we do need this as well anyway.

1. because we might not be in the runtime-d3cold, but on the system suspend
   we will lose power, hence the eviction/restore needs to happen.
2. because of the hda audio as documented in i915: "becaue the HDA driver
   may require us to enable the audio power domain during system suspend."

then, on device suspend we enable the d3cold and disable again on
device resume.

> Thanks,
> Anshuman.
> Thanks,
> Anshuman Gupta.
> > 
> > > Thanks,
> > > Anshuman Gupta.
> > > >
> > > >  	return xe_pm_runtime_resume(xe);
> > > > --
> > > > 2.41.0
> > >
