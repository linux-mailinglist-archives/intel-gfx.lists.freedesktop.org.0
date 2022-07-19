Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FFD5797B1
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 12:31:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CECDD10E16D;
	Tue, 19 Jul 2022 10:31:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F7A810EAD1
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jul 2022 10:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658226683; x=1689762683;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=cvI6CIMUE7W/js/7nU+YkgFi1G9t/hkE8uFK6SmysSw=;
 b=HkvbRebSaFQxvz13tUAgHcmoh1MjAHeDPHNvXUcqk6AXUego8aUTiYUp
 7am/xn7pR0sE2wiM4+gqKs4rE4n6SulO7xRc/EvhVS7rVLvnGiKoWg2uD
 f03tx4DrdKVMX4c7WZfSYBtgUcTR8fgv5IEFiqL2RO91P1OYE7MX4W9sw
 umetR1MI3sfPcFowGaaXwB0648qDOWXP+3XYgCWsTJF1h+5HwoHVeesDe
 Y33HXD64unGDXgPLFf+YNkeQSZBdTIVesRpN5/F+zQVTCQoFkM0d/y85K
 T/ZHz8dN7VnUrrMu9sEHFslycjKjDi3eodHtK7hXdD7SAsigrJP7w9tGt A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="266857062"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="266857062"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 03:31:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="724213778"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga004.jf.intel.com with ESMTP; 19 Jul 2022 03:31:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 03:31:17 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Jul 2022 03:31:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 19 Jul 2022 03:31:17 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 03:31:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YjruL2fhHDxJBHrFsjO52GL+JY9CaZs30sdVDlmq/RgjkvPk5WdaY7mSkk0frKamcWlj0jEd53vqMLxmkzwbPPZ2hzwAZ1+BFNNoK3bhE9kROlQ5rNRUiR2nv8y8EDDUCdJ7PbLuGs4h8jDQ8Y1icxaYnHeIRY7miVKZrhVlu2FDrBO6izHMXLO1ULPHyuu2OCcTSMt/DmBmzhPZ5o5qV32SGOs3D+NiFDaDECgXusuRsIqEMI6o0B5k2kPrGFq9u/lLhA+ehahW2U4JE2a02c4IoASP6Q0y9G+ynfplZmAxH0NwifI8nY3n9vv4BwnG6SpBsbP2vYxrEpgVMgbUOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JSuS2suxSolNtqtuHQ1TpB2iToQeupmuCgpharTc1/w=;
 b=GiJM4FzZxzqMUZC1+skJsjtwnMQTKlc2xqZPsz1tbK8tKIIeiokrPQ+wZsbjCh4N6I7qAEg3WEEebZw+xc07EL2K2QZCl+ZKNbx3mrRlXitv4DvCfn0bvkivy6kQILojsGNxZhR6svajfO5ccroojQuaKyiWGMoqEF8qBfWjps4/M7T3g+YkKRRMf5fIanTIX4Ts6qMETMpdeDZ5Jvc4cuzubSYbaOV7DQVrezJYPk5FzWMsc6TjZCJV0kAh/FdBB3mecEGvEeOoY4XABYElo1ONM82iKHgZpWmOHQh2x6znRvrkzdm58WaaS9MlQfs+qYLy7lM5PWOiTm5FAM/bFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MWHPR1101MB2288.namprd11.prod.outlook.com (2603:10b6:301:53::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.17; Tue, 19 Jul
 2022 10:31:15 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5438.023; Tue, 19 Jul 2022
 10:31:15 +0000
Date: Tue, 19 Jul 2022 06:31:11 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YtaH70TQd+nz0ydA@intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-12-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220715202044.11153-12-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BYAPR03CA0001.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::14) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 541fbce6-ec70-4052-16b0-08da6971ceac
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2288:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RBgKp04q3Cdw3vfs2BK5t0DJ2NfMfZc0M+mi6hAb6Tl6NK0MBNsl51EntQ1Pjo0eg8qUoLMNs76b1T6LeFeI6IOdHG2cQ3jNKo3oBCbLMZdwDBcB7geQ97LrFJmwMVi+YiOa6WVYZVJw8ai8dqZr2KLxRcRDc2HhmsLyGxEwUzP/a9RI1V4e1jEgn+dyvLLdtdJb4NI9Vg6x4lJaqY9JRdcs5r5ql4ZtPJEIyoXj2sf0LMuSVApTqNtYcDM12t8P67NJXfgFDvEj6ug0TwGwJWn5IRlQHriHrWZX7LJzt6kl0gSSfOWAYLTy7qLwly99hRoVitUzUlGI33s7by6Oytd1PmRci/pOIUlpl2Bthcms9Se4CgfjUDbSnPY2KZ8TEXD/2rPbjECLqAbj3P3yQfKr06fnAOYgmgWUtgK7k5gYqwBnoVKeX19MfUg3cfT+tcF1m7usEq6Cs2I9LZSgGeX5gYDoSrTJA1ObhuolvoCM5ion1jmgEBoHDBKDZOONlHNHxuTFwB4uheRT3ZjEFe7W3FY3/YC8i0mLk8SIkGoM+kG0F3Oo+ryylUfn3uiJbfn55OuDN4En35Q9gBtouVKmMthf+gDr/I1CLXtaqBGX4DJG7trl5N0BDODdL+0/xH0pWrhDKvDW13WAVf6qhWaorHulj503IVBxKLPPGjwGrygVAzGGPoX9NfO0nfh6BA4vPTJ5bwjigwqAaNDDk4L17c/CEEq3hRscWJmvFpBcHhtoX+KKdEB8jzI5mqg/jY9CTXYjew7KBm49s8eMuFQs1e/oX5SeC8majRLeNV8S8qU6JyO5sT4PUo+V3i+W
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(366004)(376002)(396003)(346002)(316002)(41300700001)(6512007)(6666004)(6506007)(6916009)(36756003)(2906002)(6486002)(26005)(38100700002)(5660300002)(82960400001)(66476007)(4326008)(66946007)(86362001)(8676002)(83380400001)(66556008)(478600001)(44832011)(186003)(8936002)(2616005)(21314003)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?J2zeglzbNZ/+UeQKPZCmQEhnSVaRHpgREWutHuj5X4iP3fgm7aRTy5kVSP?=
 =?iso-8859-1?Q?OKc+cZhwNu0BRLPboepO00aI4+2IHWvMFqci0but3luFesuAIdFnrmZAW/?=
 =?iso-8859-1?Q?lB/JNrRLzRJUnW4njFpVJ3VoJw7V48S0r/3dpblDym6JCtLSufmFSQM2JZ?=
 =?iso-8859-1?Q?ynCI2GnAAPVKZVhy1AmJx3RbLLCQEHKz0Llk3MmyIbG/Nm/vOTv3mASjsl?=
 =?iso-8859-1?Q?wdq8PDL7oyZELyb8+VbgVZjRHjPauOEEI1K7+kaxnPOWYLfSWdhL+hU+Ut?=
 =?iso-8859-1?Q?IpJvqovhGvOgXYphwtNo6GV4TiRUGS923Fd+mFH7S5SwhZQ4LGZ2RFAB20?=
 =?iso-8859-1?Q?Jbk/g7otC41v/h5AVg3bAGjcjAL1iRisKP7eV5n52ES4tOfduuKRbCJjsu?=
 =?iso-8859-1?Q?JKBgInMMDR8nw+FXh6IJ+allVYDVhbe2liGwBWHV1MK9+xLAhVJ6V7qGQj?=
 =?iso-8859-1?Q?9vMaVZYbMVX2vvcdtDGRDYujtmAshV/WUtoK5CefpD5HWYvYuQQZMfxIaq?=
 =?iso-8859-1?Q?jiNu++ffaIJbZufgk5qhdCRjM4mLQ+y6zwoy64pQzc/uG4Aqc9BrVY1JD1?=
 =?iso-8859-1?Q?Hk8koVA9Z57cHMyBoW5h5vH1oeSVOnGrdU5lum0b8BIco4aNgoq0Y9KQLZ?=
 =?iso-8859-1?Q?YikJjoDc44KVZZmhUUoH8fjYsChWGqUoXZK9cKgVu6Sqo0pa7MnJCUPfzh?=
 =?iso-8859-1?Q?7Eq3q7QkmRN9+kQsH73TJrlncmvQOpjkc8HoyWBGUI68JcyrklSMby9/Ai?=
 =?iso-8859-1?Q?frLBwm1PCTioRbuDKPT++fn26mf4vvtbT7ZuJYe5+f00xjvSRzw2uF5/5j?=
 =?iso-8859-1?Q?AwQi0gTsZgu7gydtQhEGUkJI7PfC1x1LZ6ojWBcvbhZKceJtDmxdD/oq+t?=
 =?iso-8859-1?Q?sBl8RS+R83DixbckWIhPmpiL05RCbLpGVkg4yOoN2DVPH4ngODi9DungwL?=
 =?iso-8859-1?Q?iJwGeaedM3NrHCl3S1mV6LP4Ga6TCIGCSfNMs1fbPe/NotgUXHlUtX2n0v?=
 =?iso-8859-1?Q?2DJa+N1FQ5TstAAaU/Yiwmb704YL7JpOvaHxr2ull5tQpdS0kiFUfvcOhU?=
 =?iso-8859-1?Q?pmX+Lp7kSAogWdHYt0jniYRumO9mSkhPbrgOyFrUvBz6FTVOvBGYCDZ+6y?=
 =?iso-8859-1?Q?FmFQATnfVNVcA2QP0q9i6IEbWFsw7dkfSofz4D77z7iLgF7rcckUldQDBI?=
 =?iso-8859-1?Q?FOkmHLg2p/0IF0h8GxcAT5xv/F6W8C0gVvIZPhvg45S9tdS97FaHu7S60R?=
 =?iso-8859-1?Q?OUeEJWoJTuyLHfjhhBU0Vgri0FCyt/nGMFfRE2Cr4zoTHIhkhWxqeTi1ZU?=
 =?iso-8859-1?Q?96jriQI5Z5cKU3k65obrMmbKhummOI2TmoabRTVNHB1Zg2POiT9pFTaFHF?=
 =?iso-8859-1?Q?dURrpCJ971BYjwDR7sgUpZYcKM62+N2g4f8R9bhsV4F8MAqvdypjmGw9kP?=
 =?iso-8859-1?Q?lOh7+ueuovlHUrdNq7ZXe7au3f5OqtVSA+Kjrxt/BdfZ7H/gHYq5NLPGDF?=
 =?iso-8859-1?Q?0UCSx9sZVh2iduSp7FEqmb1JXOKXR+KnrQ24nV/Y8N9FqKMMOEM0SHDX+6?=
 =?iso-8859-1?Q?HJUYfySBflmGsLJwvG2E88MLGZNCI7u40yjk/QPIi2acI0vvaEwADubjR+?=
 =?iso-8859-1?Q?rKWFkTdKUWTDHZ0Hk9MHOoL7peuvZfpOW91kHz4oadHljpO1xamaurvQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 541fbce6-ec70-4052-16b0-08da6971ceac
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2022 10:31:15.0482 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A+Q4y+6DTAXIaSHQ69iNTZtm+7oXlcNptmDTAfONGPjCwIsY07vOEZqb9W/i+9lJ22dh4IZI65bCl0FguBPN4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2288
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/12] drm/i915: WARN if a port should use
 VBT provided vswing tables
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

On Fri, Jul 15, 2022 at 11:20:43PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We don't parse the VBT vswing/preemphassis tables at all currently.
> Let's WARN if a port wants to use them so we get a heads up that
> whether we really need to implement this stuff or not. My
> current stash contains no VBTs with this bit set.

let's unlock a new can of worms?! :)

I believe this deserves a /* XXX: comment with the code in case
someone else finds this warns first and doesn't use the git blame

anyways
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 51dde5bfd956..cd86b65055ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2661,6 +2661,10 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
>  		return;
>  	}
>  
> +	drm_WARN(&i915->drm, child->use_vbt_vswing,
> +		 "Port %c asks to use VBT vswing/preemph tables\n",
> +		 port_name(port));
> +
>  	if (i915->vbt.ports[port]) {
>  		drm_dbg_kms(&i915->drm,
>  			    "More than one child device for port %c in VBT, using the first.\n",
> -- 
> 2.35.1
> 
