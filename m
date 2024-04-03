Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5402E897882
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 20:46:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE81B11282B;
	Wed,  3 Apr 2024 18:46:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xn8lceHq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5641D112809
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Apr 2024 18:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712169988; x=1743705988;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8Jn1wVh4xPNpz4Kra6ARMjyYwAW6GJyJuJZkKpH8XGg=;
 b=Xn8lceHq5DpGYCWmDlALFW9mE0L+wjJsedioUh1NqOQIYrZvb/3qee8n
 1OfaghldCaqokp+IK6hyPzKX42PvieSK7TJ2KwkYcAXWezZqmdVuYApte
 k3vnh1qV5E+ZOYyD3B2mgw25CBw+oCLGpi6YY4lqpGokK1xejfJeZ5jD7
 1ucLo83Tbu87dh7TIX4rBVgp6Y0Mf0xowjqUlQgqWiWi2EWZpLMFrPHoV
 9tZBm9Ou6t0C9Q/q3iEmio3GfjYF/jbu5uFWgeOFjQOOjKn90Np33ex5G
 B2iGesHrYDwFlLGPoSD47N49pyJFWHrqeaTd0SIJi0UtaULSgtU61CXwk A==;
X-CSE-ConnectionGUID: PslDDROHRzCHUch8GLRxSw==
X-CSE-MsgGUID: L0MMKPX8Qo6xDM79JvG6tg==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7291604"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7291604"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 11:46:27 -0700
X-CSE-ConnectionGUID: NQovshA6Tvi85awhb8cG8w==
X-CSE-MsgGUID: cN9GEZtFSXGEkbpU3NNBaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18982036"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 11:46:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 11:46:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 11:46:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 11:46:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 11:46:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CHpq1G8zYljbp5hBDDn0AL9eOHRu7ILJUM87giUPQuKY8XdwahoKr/y5KXdfx4WhklCfliGwtrLC7xbGFzX+6iAkiy/qfcPQJ+CUvqdYh8ZbZQ2ibo3nJZfQcUNpf/vGm6X+asogt9SHR+K02EtWwWsTi+ueODhDDx7O0laO4QkHXq/MfjQv9B2gJbrC1C2dnAl8b9M/tOM6BEKsf93O5XsheygS9Qey5lpWqgM1SEErTu45BcXsaMSib7SETGjNj2PDj3vCKjm8ouRXOTlz95GEUP4hzVVI2hnvuqewOSNysbQ1LPXlGZD9DAySOt83n5fadmteOT9YgTDPxrav+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XFv3QdCLg/iPkwY86gSIeoHe0FEH8otegHbt7u5Y6cw=;
 b=ELi+9Q7NbhZ48jQJStaXvki9OYba5+eDNYqydhV8tM8CV5PF07ydw4zEAzKRRntJoIm4V9IT4aRmOGr92xkzpMQvSNgvfP9tmRR8kUx3kv2CSO/odesVP9wqZKY2r8yIc//LJ/jAzaVzZy6MnQZneCqXiH5j9eCJrONWqVDJlx6NCvwvobFtHeApdJWlr6rm0vbY40RwcjGXIVYoAr2PGl/XuJebAh96VQ4nQRKwVO0HmSWIfsMCSIROt2ghSVo5cYVxL/8nXU3hT3ZLTYJwMUX4f20b0UGQFEOzmKJm0IK4TrkCYh70DNWMg7rnN1v7WZhLGiu9o8HbWDNfQETbzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB7492.namprd11.prod.outlook.com (2603:10b6:806:347::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 18:46:18 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 18:46:17 +0000
Date: Wed, 3 Apr 2024 14:46:13 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, kernel test robot <lkp@intel.com>, "Vinay
 Belgaumkar" <vinay.belgaumkar@intel.com>, John Harrison
 <John.C.Harrison@intel.com>
Subject: Re: [PATCH] drm/i915/guc: Remove bogus null check
Message-ID: <Zg2j9S81HJrHWcMd@intel.com>
References: <20240328213107.90632-1-rodrigo.vivi@intel.com>
 <ZgXkI8tw91z_2RYL@ashyti-mobl2.lan> <ZgYbxYoSChiVRDM2@intel.com>
 <ZgZpMvmRBIBZD4uN@ashyti-mobl2.lan>
 <daa13e1c-d75d-4fbb-b400-4d6a633103bd@moroto.mountain>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <daa13e1c-d75d-4fbb-b400-4d6a633103bd@moroto.mountain>
X-ClientProxiedBy: SJ0PR03CA0153.namprd03.prod.outlook.com
 (2603:10b6:a03:338::8) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB7492:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xc7k4JCnrD+/8Ov/VWgDR/dnF5kM26I8iV9S0oJLZyln8LFtX+mNGbk4lnpFgH8YPK5iVoXm6EAaK3O0JNlmMfw/RVFyaxmW0r+dbpAyNntLy7ecqmePb6NJ2j/Iter1e2TsMqAb0tm+lOjoFO6PvH5CdOlc2LVNfDC3uxU69asl9lWk8uq7Gngl9jPh1P3+k6Gcqs8+MVecP7aWkI14lJok8B+a/PhJJm6oOpT/aEhw83jZRhRWZI2lw3uXrGPXe1HXjOM4bBGDAUBNe23Nz/FIalJ5MWCAxlEd40bD+uNiFrsQXbv6NVZXwm1uadFVdBTfTQM4aLuNr8PhE+1dbKoPGzkYbMMfjiGRYM5i67JjVbfu9SI2oWWa/yRFntf8kALWSWdS/+pxaYV7c8aS4nRKyvdLILZefer6/yWRO64nygGrGMdzoqUrD7De+ZSgRvq08E9mltbTveZg0U3dSFDOb8v/eoKV4fM0hC/z2zUyKUs1cNMHoeGQDUwQ9RzdHDPHz826nkuzVUs5G7WUhyj2L+zSPdpA+P90EfzS1fBtYxcUYs2nwYoyNWUGVATawIJtyhOT/UpkLHp+PFtPpNkhGsElrhwJc1SbcRaqELXbIoTu54g6SzZG4lbtXk+8curJMsF/IwshinL0ZUaXBhtubJvNJoburDQWecQ6ka0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?A7GBN71SHUc8ZufpAn/RnPpy04Iqq3u+3GVz7U0I4DvnAoOPgM8k7PfpjHnS?=
 =?us-ascii?Q?O7FY9u7YhH5srng/kOdikiKFV9/Y/KS/RLq3HT/3eHGedLIREawQsQB4iO4G?=
 =?us-ascii?Q?nGkBEkPrNxQ/a7VsXMQxaqH9ugCrezDNBdnfSjkcO2OfbXMGwtHXptPm0kEj?=
 =?us-ascii?Q?AU8krArP4LD+lGMyA4dI6o2F1qWEgDi1ZFOsykhIldA9PGuoqcmU0MZerk77?=
 =?us-ascii?Q?4H2UwbSXbOaWC7K1shSep6JNndHuNeZxWTnNBaaOV3vEG+EkZVeX4lq+UMkH?=
 =?us-ascii?Q?OEWJdGrzOYlMV2WWVZaZCG1ORVyQdI55dnRFKdo/sArmIuSo+AJ1ZCXiyYXm?=
 =?us-ascii?Q?VCk7Gb6dlv2nTzZ/EC49NSHOY72kPeHeZ9YhdRDs+aX/a+RsbNv0usHG+OxO?=
 =?us-ascii?Q?6rPX/fX1mIGO0mhlM3egTubQYQD0Ssu9TAfuxL7eb/KNcA+gzvdwmDDR33fW?=
 =?us-ascii?Q?OQWylfcA1YcWorE9r3hbJ0JeAxbcuEF5vOXbDLQYbnO2tcBMz6zm4ETi73We?=
 =?us-ascii?Q?k2SLDKqTqJ6VcNrWEhtCAk1QpZbBEpcr4xSCsWBObzT+zE4jeOUtmu2HpUtJ?=
 =?us-ascii?Q?MNVGY3UQBhw93wLkNxPOQBDk+JHXeKPBmWBEkZ3B3k4Q2UBRRiwwFFbLXflD?=
 =?us-ascii?Q?FhiiGugh/qzRql82a2AmoX02j+eVP+CL4u1Jv1LeUHhRsV/pCQsRT7bcuqUm?=
 =?us-ascii?Q?FKEB9SYobPZ3hqsTnd5ngNrsTIdIyGBT5Oyw+bnjAjC6EI35wrS/csJV8leD?=
 =?us-ascii?Q?pBiXdbbUJBjvetoLmzCthhukeixhKoxN4SstjuL1minZd7Vu4BNkJKurjtTM?=
 =?us-ascii?Q?XpCBdvVXbyrR2TJhYeZyUP8Em0ApSm9gLHICiW8/x60GIpkRoz9BXPRuPAkb?=
 =?us-ascii?Q?zw9Eqtl3/ZLd7NcwqUziqNe0K1w1cxWSBM0y5Pp985JZ92SrJxqUrIr2b4ET?=
 =?us-ascii?Q?XHgDpNxbwv2NU79nJ1/WQVctESlYgkLZCpOQsAD0TpzUL9MDCEyYjYxVAPAr?=
 =?us-ascii?Q?6vw3rXW87nq9AG52ujj2peQEKBDPQNIL3hRm1Jd32Sn+cZRj3XiAvtN0WYv1?=
 =?us-ascii?Q?grsFSZEf1GMxF5FCUvRgAmJdQJu+/PPGquUEfMz82b+UuI8fxNNKGHp/NQgQ?=
 =?us-ascii?Q?TDmgB6YOxyJj7BzRJWB6nAh6SuAZQ1y7iMUDMNSERg3GinJAHoQEkBq8T2Cg?=
 =?us-ascii?Q?IZtRMIZKDcAqs4+AiLaugh38GIaRV0P9WXkVqHlqZNyMEaTTRpsNICQCNNo5?=
 =?us-ascii?Q?mNa7fgDVlFcVVxmzq4ispfbHXdbpbMvDWO6zfQuTN1wn5YxISrMP8s7tjjgZ?=
 =?us-ascii?Q?LCyX6n+QxDXQWzK12phhwdvB/8QZa2yY6eKRHrPkRc2n1aU7EsI+NE4dXQkf?=
 =?us-ascii?Q?p82ybOOtr05bPFxbszLhZNoQcUkIjB9L1pD50PzmF1myaGQPMRKoRyyJz4+v?=
 =?us-ascii?Q?DuTmGmjwKG5S8N2waO0RUU2x6nCJlBF+O3RrF+8cYpoYGGlOn4S0xUU6kNyS?=
 =?us-ascii?Q?1CgMb6WapyckgwrhJcybJC7RLRpp5+AN6ueMCagdjnvylVIialgpzoDlQVIG?=
 =?us-ascii?Q?r5XyzWmYzD6o68AWjQrHoqPFjHYXGua+jo/PEGbz?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 93310af4-1da2-4ed9-00bf-08dc540e58be
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 18:46:17.8901 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UTaph3/FBsvbx9q/hSRAwUdVD27dvY78Xeav8vSxpWl0Kr3ouG+sgmGMucE7EODIs0lY0qJOAG5ywRR/SBlrYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7492
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

On Fri, Mar 29, 2024 at 07:38:11PM +0300, Dan Carpenter wrote:
> On Fri, Mar 29, 2024 at 08:09:38AM +0100, Andi Shyti wrote:
> > Hi Rodrigo,
> > 
> > On Thu, Mar 28, 2024 at 09:39:17PM -0400, Rodrigo Vivi wrote:
> > > On Thu, Mar 28, 2024 at 10:41:55PM +0100, Andi Shyti wrote:
> > > > On Thu, Mar 28, 2024 at 05:31:07PM -0400, Rodrigo Vivi wrote:
> > > > > This null check is bogus because we are already using 'ce' stuff
> > > > > in many places before this function is called.
> > > > > 
> > > > > Having this here is useless and confuses static analyzer tools
> > > > > that can see:
> > > > > 
> > > > > struct intel_engine_cs *engine = ce->engine;
> > > > > 
> > > > > before this check, in the same function.
> > > > > 
> > > > > Fixes: cec82816d0d0 ("drm/i915/guc: Use context hints for GT frequency")
> > > > 
> > > > there is no need to have the Fixes tag here.
> > > 
> > > why not? I imagine distros that have this commit cec82816d0d0 and use
> > > static analyzers would also want this patch ported to silent those, no?!
> > 
> > Still... it's not a bug. The tag "Fixes:" should be used when a
> > bug is fixed, but not for harmless static analyzer reports.
> > 
> > Besides, if we want to keep the Fixes tag we should also Cc
> > stable, i guess checkpatch.pl complains about it.
> > 
> > (BTW, Cc'ed in this mail we have the inventor of the tag and he
> > can confirm after having had his morning coffee :-) ).
> > 
> 
> Good.  I keep reminding people that I invented the Fixes tag because it
> is my proudest achievement.  :)
> 
> No.  Only use Fixes tags for bug fixes.

Thanks for the clarifications and reviews. I have removed the 'Fixes:' tag
and pushed the patch as is.

> 
> regards,
> dan carpenter
> 
