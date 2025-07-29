Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46022B14F58
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 16:36:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5A2010E14A;
	Tue, 29 Jul 2025 14:36:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VdDJBrPi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D68C10E14A;
 Tue, 29 Jul 2025 14:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753799768; x=1785335768;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=348fCzCD9mISm27vG9DPM1Ct5ySC9aHfpOE5Qg3HMq8=;
 b=VdDJBrPimHmsukH5KaHzVoY51C9I9HawYA+MIrxWTbzbmHVD7ebTbjrA
 QrKXP7ozw25PUurT/fwKsPpnYVYajJszQwUeihnXS+1S151/H8K9e9kkQ
 8dAFdapZzZI+ffpMmZTtUjS2NL5z7y0qjitBTHXf3AKSJQ9ojSnxKNQOL
 o7sEbiMdfPNoq/TRr8XCr5/q5iUPhTRAZdpLf1JP7fR8luNZGNVbta+ud
 0GVSeQmPY9rcDvCslfDSoYkBrzF3X8ymhw9yhymw8qx73+0CNycjoZa99
 MPfIGcnfE7ml2tNkQDFeccn+vRqm0m75B0q80midzm+G58mGBUvCnlOJ0 w==;
X-CSE-ConnectionGUID: kgRI4cNnSf6CjEzVbIrK/g==
X-CSE-MsgGUID: aumpiYlCSAS/f1uBQ4eiQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="55958869"
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208";a="55958869"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 07:36:06 -0700
X-CSE-ConnectionGUID: WPpIkP/2Saiyakyg34t4pQ==
X-CSE-MsgGUID: Dx6KK994Tz6SRxv/0/zSIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208";a="162295534"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 07:36:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 07:36:02 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 29 Jul 2025 07:36:02 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.50)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 07:36:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z3nYZaJoIRguoM6NVKr/bWp3oeVXSNj1qDeBUxRJaU7jfA7nBZPoDC6S6STRG5BMjbaSA6dY2rb6R42U3gRkuQ5/8oTIrqYM04ovVpyj3yvq8rOpLet/hYugXvWOu648ib/37hvgQOdvecKo3ltiSAsDwqJDVa3ivRIW3M3FpeCRhtdHYqQZx9syPcnY5VtOVqRQAdyUxO+7mi9g7fyf79LgSGmgVZj8OmVANYO8XV5sZC1QOTjIMBevvnhXwAuYZw+JbNEIp0o7Xbw2wYg4iOBwOZhkxyXRktMRq2T1QdGLM4zNKIHbPHqjPP13IhDvUjWW9j+hoK3ZUDfPQICChg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+CXAqIlaLFf0WX65VWCE2myopjgfrKMjsVKHtM1cAf0=;
 b=w0VWtRQsF6KAgeV3xV2NzMKxGiOq10QV27xvRBBmm60ktrY8qqBtBggBArHdgtgGZ04WPnbBlezmgp6tCjJOyLSm9CN/X695XxTPM1BeiItKok0bunVoy5nZjzcXfZ1iThwsYOjXphnx3Xy1WQhFc67hQtBfqDKm47O/1xTQxZ8lmJTXh5pj6ujgGZr/GLRXLkHWrSX3diXUdAWi2ZojYOUJM7cIhrx2CFwceSbtkQwhjc/tFdRNjN7b6hIZxnnuHYsy13RbXWBEDJJGDubms1pJ2uJ2MaMEqNmJIiss/ZQ141FDip90rtsSyUd+ZNq31sHPvYyaVl8jbnp27xfG1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SA1PR11MB8489.namprd11.prod.outlook.com (2603:10b6:806:3a9::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Tue, 29 Jul
 2025 14:35:53 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8964.025; Tue, 29 Jul 2025
 14:35:53 +0000
Date: Tue, 29 Jul 2025 10:35:48 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Imre Deak
 <imre.deak@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>, <intel-gfx@lists.freedesktop.org>, 
 <intel-xe@lists.freedesktop.org>, <ankit.k.nautiyal@intel.com>,
 <uma.shankar@intel.com>
Subject: Re: [PATCH v2] drm/xe/display: Block hpd during suspend
Message-ID: <aIjcRFU90s6Ml9Vt@intel.com>
References: <20250723092946.1975018-1-dibin.moolakadan.subrahmanian@intel.com>
 <aICtgAa54ESMZ2ii@ideak-desk> <aIDhTEcPoL5Y8Aoj@intel.com>
 <7b9d3439-ad9b-4ebf-86ee-0aa1c7b87b8c@linux.intel.com>
 <1c1510bdb0b9ade97da615f81d91e8f7cde20275@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1c1510bdb0b9ade97da615f81d91e8f7cde20275@intel.com>
X-ClientProxiedBy: SJ0PR03CA0119.namprd03.prod.outlook.com
 (2603:10b6:a03:333::34) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SA1PR11MB8489:EE_
X-MS-Office365-Filtering-Correlation-Id: f17fd73a-c57f-4f56-54b4-08ddcead38a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0c1v7nAq4S23IMcov5cT64oJ6POlxUSwRzq/+DRHuTeecozxewYhz6qqzt6A?=
 =?us-ascii?Q?B79h3C9gr/VYoeM/mouDrVPV00AVWMiqK+uCmmV7Mbh/5F+8PcGIEEyEFSvy?=
 =?us-ascii?Q?UcCwmqFbYd1rkJqC/8PS2oLQoYNTDsbCipWFUkLRBGM+K8T7WlLPcpI7fxk3?=
 =?us-ascii?Q?GfnlK7Rr87JMmxmRY9PcDy4McAN/qRH8SLOIIFZMw1UnRgI9LG4HHtfUX4Lf?=
 =?us-ascii?Q?9Bc26Ed5KObnf4S+A8lNT8bLID4lCBh2699GfBJKE+MotoCdaIuQK+SI59XX?=
 =?us-ascii?Q?NXf1jCWBwzbjvUzM967OiY1L6VAtCn7lPot+i6fuYZ6ElMvLNCwas987NEi3?=
 =?us-ascii?Q?EuH4ZxnYfhACSGcJBpgbts/5DkVnGnUXmPz3/JNIIKdtkg/HHUAh8Fjdcy7N?=
 =?us-ascii?Q?4wT/RiOtyxZ3je/eXmJykJd2iZxAj15OkwT//mM05DBSLKmtgCY2eKs6T131?=
 =?us-ascii?Q?RxWfWuvV1PdccpXYTmnhzo9szq1nSRRx02CFyeg3I/zYrqQkJg509f1hW9AC?=
 =?us-ascii?Q?U/B1RXelmh8gwPIlTf4WvRBNRo9J1bDsGEXFBVJjwTuCn2pMo5JLMnrWJs73?=
 =?us-ascii?Q?lOVOHHE+m+IvDWuVOPuoXErt34PDUCAxrPl3w2TNmh+102KbDmOPG0zV1H8j?=
 =?us-ascii?Q?go/W3pJZKb4RfzbhIKZlBihraEcF+tscjRqyurIzrvNlJ0TeYmJx1boRMSe1?=
 =?us-ascii?Q?og4tu+4EQ41pb47Xvrep+OfgqGPOHSZBC4K1/w1LNRYpx6jH9+SWacwR5Olq?=
 =?us-ascii?Q?HRr5/iPFZ00JH7KwquRLKWZ6R8zSOHitcxEpDcOcP4HWtbe4B8LD5aNVIyOR?=
 =?us-ascii?Q?hGcnGs1ftCD9rz5rnsqSdC4jCk/JQWmxSbdikP6jwNXNSQqKYZX+J4sbmlaf?=
 =?us-ascii?Q?wLlL/Zkqx5e4xO7a0awA6xdn1Baf8wK438C7t/fdKQpciKoxdc5snFbZ5EL8?=
 =?us-ascii?Q?1518Cyv1Csg6n3iH2DI1R3iL6VTecUXBJ1PTrhiqNyVo+VBj8N1pb33JKOUN?=
 =?us-ascii?Q?yM8JT/Swcoh+TWsDEaijuAGm9lUCsSxAg4DarCL5EeCnpEObVnP3yIaRDLvg?=
 =?us-ascii?Q?w09DVerXEXteznkUW3NGvdUCjf1SkKBg36lEWX4nLuBuDTILu9eU2V8SFfyR?=
 =?us-ascii?Q?/EkufJVHYkdjpI3Nik4yQUs+L/F93Xfc5Th5twlC4i8XyDAyVmS9YFl7wBk9?=
 =?us-ascii?Q?Bq/EGpDR94dC/JlK85DaSU6D7rYp1vgcNxdzkzdDYZFOpudibyg3bElBsnaC?=
 =?us-ascii?Q?9z1CObzD1tV0ijgO1MZmW8LQWgn1pnrsIJ9LcCJ9tz+dlOu7iXHTjLhs/2wO?=
 =?us-ascii?Q?SlfTN8f765LqwQZHgLqHmxbsfviZzh1TO+jUy9pqKWHqlO0YiB1iM1dvkxdI?=
 =?us-ascii?Q?sPRJpjA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?A0CBja85ASt8Q2mOpAOJzNNMDIxLX2yJtzVCVSk6fgNiLrGhr6wKD1ewPF8f?=
 =?us-ascii?Q?A8WLOJdRtBYMRqC63V/9byHwD3zQ8ziuQZqo7YfUcOt9/o+mJdYsvktE/v56?=
 =?us-ascii?Q?ABTCso5OqTt18u7gc3zQt5nyVglm5TOE21ZkNYTkx+GOT2uXdB30N469/uoT?=
 =?us-ascii?Q?HzfIMTNyUSvB6S0UPPSIo5EepMTTU7pKlzrU3M51dmeGtbNCI/qnhG0PTcf8?=
 =?us-ascii?Q?5JF0jENS4fXq4jwQo3Jl5/2a8vVqWcZADwoJ/yZdgt5Cplis3zXC5BAXh0rt?=
 =?us-ascii?Q?il7nP8CgPw76r8r9i/0RSG6jdEEfbvff/vnZvIKvAO31PbbXlDgx4Ku+GMzE?=
 =?us-ascii?Q?E9dIakhc9ruEKflll/TvDXU0fJfRYzoJwVS3jFliGM2HfXM1z7umlUPLnR3Q?=
 =?us-ascii?Q?1ckZurio7a0Ehl0IJwJ/754cE1Z4L5NkyUuhF4/ioeubAsUhimcKOOEdLK+K?=
 =?us-ascii?Q?pjGQvK6Bdj9Y6OEC6iCwaeZfWrF6b1+88b8SQLI8d5H5yyAO4flUgcy0riqP?=
 =?us-ascii?Q?Sy9HW1AjB9v2rKWYICpaBpE5hNcQK8Zb/O762Ydn0OaOa0oKLlplyZylK8gd?=
 =?us-ascii?Q?kpUBD3sQ/+68gSWHwNqULGcc05DYvMu8bFINvJtqKdtO5KcWl7Aq30dF5D2Y?=
 =?us-ascii?Q?XGiH2+2zQ2PeXL3I6rSrAw2PX4Xu3ijqRtsTAZfu6IHoGKaydfYFwHg66bsf?=
 =?us-ascii?Q?+a4gczehtvyOuOSxuJPRTuFHYIiahfr4lHDu4Qz9LzYVKoDKW2wGIYPybgmI?=
 =?us-ascii?Q?yVzAa5pWSq1zvVAq01FBoq9hlWLE1Obzfx1pKL/Xn3+WfTuKJ6CyM8I/eTdK?=
 =?us-ascii?Q?m2JmXFpLebtBTPbtZgXIykNOWiCf4CXwBD0Qw554+BE8MNHj9mgYX3TgtgH5?=
 =?us-ascii?Q?JTcha4Ly4D6jcq+lTN2VQYeUx6QGc6VbMFtvKIVE/o2L1CCu4fqQjjlKrNYN?=
 =?us-ascii?Q?mc699cX5CTiakpy9hBI1i2zEM8hntAAOUQXe+wRL/jKJcXANCQjbvBgbXxWc?=
 =?us-ascii?Q?uweA6kPzqHR4yIngMJ3mCsFrHG9JjUELr7fBM0pUx9vhA4xcYY8Ai0VF+7ri?=
 =?us-ascii?Q?kbdxeX/qQZ2ZqvDrX9O4CuSo4ySukaU/nCmXi9SnuzsNUThJlXEXfJ73DN/c?=
 =?us-ascii?Q?R9um1+2bu/I8XSD+BhJIGz+AX3cGdxIqzFxk7e6OK/tB7xWn5mdlMDYwKonf?=
 =?us-ascii?Q?b8rrsIFuAt06zKId1eEtu8RIMdkj4B9hFUf1Cr4lyBJ7GwW4HG21Ry6TGj8E?=
 =?us-ascii?Q?RnodegDM8Rwrgr0wV4CmqC8le8IWgzXVFSGwPaHMQZDoydK2CAawqlQxYpIB?=
 =?us-ascii?Q?KxIQmw8Gza55nL/Vrg3BOpWQY0T8s9Tek1DooVPW88ynk+z/IMqJyV5bO9ju?=
 =?us-ascii?Q?sYWUDdllHJvqPN1UvoZhVNe8JEbCcEXbsa0Zzp8QHiRN/2kFmOI2LG+QYC+h?=
 =?us-ascii?Q?kNr5vhGZKsHrf2GR/Os/Or9qygl8om/Wd7yCCAKxOLd4lFmSJ2UifNyZMm09?=
 =?us-ascii?Q?XLaeevVlxNoFKmsjQWmWu4RAbYTxyEwKTaVmvDw5syG9EXNQIWfzVUgJemSc?=
 =?us-ascii?Q?l0PCRBUoxR35gt//4nuXseGcycnny5ZRYXU9JbG7EI0pfyP+8f9TS+wpj23c?=
 =?us-ascii?Q?eA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f17fd73a-c57f-4f56-54b4-08ddcead38a4
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2025 14:35:53.4571 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bH+UIuV2Lz0IrNb4ivPOMMSbeEbss09+P1asS7UjA7pXn8bB4nv/vGnd6lWQd4yXdw5uaYf3zFo+4BPviTZAQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8489
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

On Tue, Jul 29, 2025 at 12:44:47PM +0300, Jani Nikula wrote:
> On Thu, 24 Jul 2025, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> wrote:
> > Hey,
> >
> > Den 2025-07-23 kl. 15:19, skrev Rodrigo Vivi:
> >> On Wed, Jul 23, 2025 at 12:38:08PM +0300, Imre Deak wrote:
> >>> On Wed, Jul 23, 2025 at 02:59:46PM +0530, Dibin Moolakadan Subrahmanian wrote:
> >>>> It has been observed that during `xe_display_pm_suspend()` execution,
> >>>> an HPD interrupt can still be triggered, resulting in `dig_port_work`
> >>>> being scheduled. The issue arises when this work executes after
> >>>> `xe_display_pm_suspend_late()`, by which time the display is fully
> >>>> suspended.
> >>>>
> >>>> This can lead to errors such as "DC state mismatch", as the dig_port
> >>>> work accesses display resources that are no longer available or
> >>>> powered.
> >>>>
> >>>> To address this, introduce  'intel_encoder_block_all_hpds' and
> >>>> 'intel_encoder_unblock_all_hpds' functions, which iterate over all
> >>>> encoders and block/unblock HPD respectively.
> >>>>
> >>>> These are used to:
> >>>> - Block HPD IRQs before calling 'intel_hpd_cancel_work' in suspend
> >>>>   and shutdown
> >>>> - Unblock HPD IRQs after 'intel_hpd_init' in resume
> >>>>
> >>>> This will prevent 'dig_port_work' being scheduled during display
> >>>> suspend.
> >>>>
> >>>> Continuation of previous patch discussion:
> >>>> https://patchwork.freedesktop.org/patch/663964/
> >>>>
> >>>> Changes in v2:
> >>>>  - Add 'intel_encoder_block_all_hpds' to 'xe_display_pm_shutdown'
> >>>>  - Add 'intel_hpd_cancel_work' to 'xe_display_fini_early' to cancel
> >>>>    any HPD pending work at late driver removal
> >>>>
> >>>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> >>>> ---
> >>>>  drivers/gpu/drm/i915/display/intel_encoder.c | 23 ++++++++++++++++++++
> >>>>  drivers/gpu/drm/i915/display/intel_encoder.h |  3 +++
> >>>>  drivers/gpu/drm/i915/display/intel_hotplug.c |  2 --
> >>>>  drivers/gpu/drm/xe/display/xe_display.c      |  6 +++++
> >>>>  4 files changed, 32 insertions(+), 2 deletions(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
> >>>> index 0b7bd26f4339..4e2b77b87678 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_encoder.c
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_encoder.c
> >>>> @@ -8,6 +8,7 @@
> >>>>  #include "intel_display_core.h"
> >>>>  #include "intel_display_types.h"
> >>>>  #include "intel_encoder.h"
> >>>> +#include "intel_hotplug.h"
> >>>>  
> >>>>  static void intel_encoder_link_check_work_fn(struct work_struct *work)
> >>>>  {
> >>>> @@ -37,6 +38,28 @@ void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int dela
> >>>>  			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));
> >>>>  }
> >>>>  
> >>>> +void intel_encoder_unblock_all_hpds(struct intel_display *display)
> >>>> +{
> >>>> +	struct intel_encoder *encoder;
> >>>> +
> >>>> +	if (!HAS_DISPLAY(display))
> >>>> +		return;
> >>>> +
> >>>> +	for_each_intel_encoder(display->drm, encoder)
> >>>> +		intel_hpd_unblock(encoder);
> >>>> +}
> >>>> +
> >>>> +void intel_encoder_block_all_hpds(struct intel_display *display)
> >>>> +{
> >>>> +	struct intel_encoder *encoder;
> >>>> +
> >>>> +	if (!HAS_DISPLAY(display))
> >>>> +		return;
> >>>> +
> >>>> +	for_each_intel_encoder(display->drm, encoder)
> >>>> +		intel_hpd_block(encoder);
> >>>> +}
> >>>> +
> >>>>  void intel_encoder_suspend_all(struct intel_display *display)
> >>>>  {
> >>>>  	struct intel_encoder *encoder;
> >>>> diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
> >>>> index 3fa5589f0b1c..e1d3aeab7c00 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_encoder.h
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_encoder.h
> >>>> @@ -17,4 +17,7 @@ void intel_encoder_link_check_flush_work(struct intel_encoder *encoder);
> >>>>  void intel_encoder_suspend_all(struct intel_display *display);
> >>>>  void intel_encoder_shutdown_all(struct intel_display *display);
> >>>>  
> >>>> +void intel_encoder_block_all_hpds(struct intel_display *display);
> >>>> +void intel_encoder_unblock_all_hpds(struct intel_display *display);
> >>>> +
> >>>>  #endif /* __INTEL_ENCODER_H__ */
> >>>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> >>>> index 265aa97fcc75..c69b535497bf 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> >>>> @@ -971,8 +971,6 @@ void intel_hpd_cancel_work(struct intel_display *display)
> >>>>  
> >>>>  	spin_lock_irq(&display->irq.lock);
> >>>>  
> >>>> -	drm_WARN_ON(display->drm, get_blocked_hpd_pin_mask(display));
> >>>> -
> >>>>  	display->hotplug.long_hpd_pin_mask = 0;
> >>>>  	display->hotplug.short_hpd_pin_mask = 0;
> >>>>  	display->hotplug.event_bits = 0;
> >>>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> >>>> index e2e0771cf274..9e984a045059 100644
> >>>> --- a/drivers/gpu/drm/xe/display/xe_display.c
> >>>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> >>>> @@ -96,6 +96,7 @@ static void xe_display_fini_early(void *arg)
> >>>>  	if (!xe->info.probe_display)
> >>>>  		return;
> >>>>  
> >>>> +	intel_hpd_cancel_work(display);
> >>>>  	intel_display_driver_remove_nogem(display);
> >>>>  	intel_display_driver_remove_noirq(display);
> >>>>  	intel_opregion_cleanup(display);
> >>>> @@ -340,6 +341,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
> >>>>  
> >>>>  	xe_display_flush_cleanup_work(xe);
> >>>>  
> >>>> +	intel_encoder_block_all_hpds(display);
> >>>> +
> >>>>  	intel_hpd_cancel_work(display);
> >>>>  
> >>>>  	if (has_display(xe)) {
> >>>> @@ -369,6 +372,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
> >>>>  	}
> >>>>  
> >>>>  	xe_display_flush_cleanup_work(xe);
> >>>> +	intel_encoder_block_all_hpds(display);
> >>>
> >>> MST still needs HPD IRQs for side-band messaging, so the HPD IRQs must
> >>> be blocked only after intel_dp_mst_suspend().
> >>>
> >>> Otherwise the patch looks ok to me, so with the above fixed and provided
> >>> that Maarten is ok to disable all display IRQs only later:
> >> 
> >> Also probably good to identify the patch as both xe and i915 in the subject
> >> drm/{i915,xe}/display:
> >> 
> >> and Maarten or Imre, any preference on which branch to go? any chance of
> >> conflicting with any of work you might be doing in any side?
> >> 
> >> From my side I believe that any conflict might be easy to handle, so
> >> 
> >> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >> 
> >> from either side...
> >> 
> >>>
> >>> Reviewed-by: Imre Deak <imre.deak@intel.com>
> > We had a discussion on this approach, and it seems that completely disabling interrupts here like in i915 would fail too.
> >
> > Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >
> > I don't mind either branch. As long as it applies. :-)
> 
> Please do not merge through *any* tree.
> 
> How come you all think it's okay to add this xe specific thing, and make
> unification harder?

I lost any moral or rights to complain here since I couldn't move with my
tasks of unification of the pm flow :(

double sorry!

> 
> intel_encoder_block_all_hpds() is *way* too specific for a high level
> function. Neither xe nor i915 should never call something like that
> directly.

that's a valid point indeed. But I cannot see another way to fix the
current issue right now without trying to move with the full unification
faster. Do you?

> 
> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel
