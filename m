Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC4C747381
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 16:00:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC4010E174;
	Tue,  4 Jul 2023 14:00:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99B0D10E174
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 14:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688479222; x=1720015222;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OoBV8DtwBveXE6a0G2/+8SaOegMD+86cOB1+AviTw/8=;
 b=DYw475VDGKDCqObHyPIOgU6RefyQu22rmNZlkJCDywz/uoUdXZ31LKl5
 81bwwVBc/j9f0jBqElXzaZjGyU7EtFPIC1cuctVRRqkV8erhTpFmHROL9
 jhV4ShNqtPcXCNa/MeosF4qRWuGDCLSfMBCutXjnFAeIg1B2gY/yEKmQi
 Avab19DwPnUWKXxuVdCabUnFcIYM2LrHadqGULpxM1BD/C6FbLfYdQxAj
 aISw2jrer7ibrRLh4G10K5eAQ4H0gDwNlLh5ypQGjWymy+MO3nHqoHg4v
 cAm6qJ/v1Ybxcomll7Xhjh+4HDEYVYN90pm7dM9NRqBP/aWQ4bt9zfqWZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="363162733"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="363162733"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 07:00:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="843001178"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="843001178"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 04 Jul 2023 07:00:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 4 Jul 2023 07:00:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 4 Jul 2023 07:00:19 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 4 Jul 2023 07:00:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dqVvGhpexcj4GrWTgDiUZzpnv8nKUyDlZmlmLWPgrnyVHkOGkoYLL23Reu33YuK7f5M6+rdp666W6KARj1v6K0Sy48tvvw8jFvd+DSl+6YsL76Y8PT2OrEOXRAhL7Ad2/XPVu8Fb8MXZmmGJ9mhuXoGYapxJKFdg0CJIXBjY83Qi3i1R/ByiPQF3Jvys7ink0APlhKuIg16HqMCAZdArP+8fFtJI8atsofhmeqgeozrtrRKvJF5VK3IFYESeoMWQf9x5HN37n4nH5JW0iqKx+UeTeZJ5upv6iNuBxBsaTenVCEKUzVLM8Sxs+y+YekLNG7nAP7UiJ7scXpbxgb/kBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OoBV8DtwBveXE6a0G2/+8SaOegMD+86cOB1+AviTw/8=;
 b=dWKIw8N4ns749pl6KkvfeBIoCkmNC1qmmqvWWEaiNdLRxjOwsMlKPXONF1lUVLEFTfI1esc3Iw/6IeKpaMDIMoQVuWVOvDNCJKeRilPDi8U4++OLjS/BxDuE4VewqiyBJd05xAULy0fiv+7e9xmWugRwjRXqUi4INRoIhws6MsQVnLcPYTAjgq1GPbczXSgdSjLu/MaOZG3Wq1XyCTwegckOKhK55AL7fv/ijQY6bRcX2AItU+/KR4YPpIxfG6DDlTcJVqoPoBsLpN7jTJgh9odQ3sXycBER4MO5KCEzfpO8OdRihX9C39tCmwXoBligWvzE+A6o613aigI/sey8tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA0PR11MB7790.namprd11.prod.outlook.com (2603:10b6:208:403::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Tue, 4 Jul
 2023 14:00:02 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::bc0:ef1e:892a:e49f]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::bc0:ef1e:892a:e49f%5]) with mapi id 15.20.6565.016; Tue, 4 Jul 2023
 14:00:02 +0000
Date: Tue, 4 Jul 2023 10:59:57 -0300
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <sqew5fqcj3aiqvvi255urygvrjvipoq5mvdkqei52g2524nbpb@4mqesa6oleqp>
X-Patchwork-Hint: comment
References: <20230627095128.208071-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230627095128.208071-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0137.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::22) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA0PR11MB7790:EE_
X-MS-Office365-Filtering-Correlation-Id: a5b70cf9-dbb2-4f96-891c-08db7c96f641
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 93aiEQhOzxHJApfbHFgsRm2/SaZRhuaQn2edP3nXIi/BwRkb45caAj8rqh/IWIbkHY0uieX4zfV/pJenlJVIuv7VbxbmN9SmmYbvoCa7Xxwue3GoEjlBl9owdM455+wjDZeVaxeTZAK5P+ZmITTbrCDMg86S7Xf4Cchw/bjRn1n850HlDL//yFE82RXbDswmqHyvWfXDOOWGv6PeUylC8VA9jq5V9t0M7MziIEBWUXoh77ajI1z1hzbDn8mZ9nFs24fRCJKgCB++03FvnS19xmMk66F4VaH/ijO8anpDVbuGi08Phr1YWgaEvVtCp/EjIH1eF2m8psj3CzMTdHUgQ/nDuXNEI9LiiaUM8aw+FS2Ir3p78FoFWo1F4HUw4dKGBlvO8YypIlBioZv3U95b3ncU3ZxyHVpTISMaPWMpUxEBEWZwBBHG1QgNplcpRG6GjfFe//YzNSCxNXNi/b7jPfpzkshbQXA8egsM+/HzzZF8lCMHU0VvC0yEDfvvSrpceS8Pxg8NuUQMbfYKaRDBNGnuQgs8w2gtj0txcTxKI9UU3VwFiiH1k1qlYH75qfwV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(346002)(136003)(366004)(39860400002)(376002)(396003)(451199021)(4326008)(316002)(66946007)(66556008)(86362001)(186003)(6636002)(9686003)(26005)(6512007)(66476007)(6506007)(82960400001)(83380400001)(4744005)(2906002)(6486002)(38100700002)(6666004)(33716001)(5660300002)(478600001)(6862004)(8676002)(8936002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hCmMg+DgJtfZ/Sv1mHBNPQKyngCd/W6sIZfW5kbUxFVP+RabCAfHZ12prqzW?=
 =?us-ascii?Q?e8TFm6suLl4Xqe3CywIkXDEy48sCTq+R6JWz/X+gZq3e/h9ApSHzWFXsBtef?=
 =?us-ascii?Q?5rRq3ZSn8iuudeBIhz2CQ2WKxGomykeMTWWCO5Ang6GRUSmL93x6qtD0oB48?=
 =?us-ascii?Q?89XgHvJjVImcuwBrvraqzQu5gLOFb10AGlOMKQLkHFTUfOh0vY0AO8uaESae?=
 =?us-ascii?Q?rXNPBkQTDoqLNYMBT0Q6S8o0b3XqrFfZVep54rxL7xQnGnc0m6cvWVj6LNkX?=
 =?us-ascii?Q?rWc1qwWbpgmykQiewul0Qv5EhK+iph+m+ShO8b0I6s7C5d5pVL2msdh1Ar6U?=
 =?us-ascii?Q?gBfUh4enGrAz92m1Wwa9S0f0xQgKKnhlZx1qrNCzFXd/8DGogX/ijw011RpQ?=
 =?us-ascii?Q?wIoQln0ep8t5Ur59AZTxISPV9JeKGnoG9iARhuxx75zz4BhZCnIWB/sxVQZ2?=
 =?us-ascii?Q?or0Pkm3df88/dnATd4WB6gSHnMw+XwjCY8d46I0dA9/ygOFv6xv2zY7Csh6V?=
 =?us-ascii?Q?L7d/1SS+2KdRtKCr65m/+mB7WLqf9WXwwbDpJW/4mTv/iPofzo/H33aOgA01?=
 =?us-ascii?Q?tSETzbsCDmYAVlARucREA/yZPBTSZHkTQ06Ta4D7JgEpxVolPLvUhg1Cg2w6?=
 =?us-ascii?Q?5A4GxMwOTUAx6Hk1kEuSPchNPPu1opTe1KzTfZnvo9kjB72onRTZw8Xit4Tw?=
 =?us-ascii?Q?XxJb5lWRksRJ9hYctkqGaQNmGRFhkVF6BKZlx7AUhrX6GiAYXUWpFZDPZVxF?=
 =?us-ascii?Q?dGTUd+C2BjEoBbjqp1D4MCwoyg66HJL4VmBLGcX+NzWWVg5nD4r3PRQqeRTt?=
 =?us-ascii?Q?WoKWohO+Vky1p9MHgRu+3Lrzr1+V3q5Lbdhn2H8zUGt03y4InSZkHoOk7SjN?=
 =?us-ascii?Q?7zut5TpmLwF4pDM2Lb8YqJwSEN0zORbRXqyX5+qoiHM2UUxrGKsR/hbfw8aB?=
 =?us-ascii?Q?IcC5PXIg0IJsVBjnInulbW8lAyb4anWwWib07EFy/tV7DSf00YVtTd39vCjk?=
 =?us-ascii?Q?i8pSyLdtr9LyJtBGIUHwzXW3aQ/VUMF7drZUO6YfoYKf6QphRjxfIXE+EWPh?=
 =?us-ascii?Q?ZFrtTprusFVvZ/77gMkcq365GV/1kXFk5B9oc30DYihA3LvkzM52C2d3hDiy?=
 =?us-ascii?Q?ebEg/6bHK4LwM4fA5SUJnJSemOb+F2aEozI2KPdOHAX5EJXsTxH69Qh9THTK?=
 =?us-ascii?Q?yI1Duyh9KKkjfWm+4BNzs7Kfd4hnN4UFwgzaU1/+sOJImr1V8SSqFgReDiUF?=
 =?us-ascii?Q?qrU5cvoyG0bQQLppDSPM/GUP6gLdujlwKoB4s81Wx1iTSnZC697zvXKrvBox?=
 =?us-ascii?Q?jh3ZVq49Nw3Jju5IKBNej3yD5fUb9bHMS0zrQSVgJ43K2tuuG9JbZ0GaX9el?=
 =?us-ascii?Q?wUYXWScLxVZeOyXOhHjJGWTXRjqDLg17WvCqGh8ASipKNLrI08zGHoLx6IVE?=
 =?us-ascii?Q?fBb66rQS+mz5Vr4Syk2WL4N2w7KoezpkEiHNP5ZwmxClgG8prbQIFfqeltin?=
 =?us-ascii?Q?eT4Vvdbbrl/ZRxnoSTUmukggByNRHFQ5CVizeEzxVl3FVzmR0uZvKEogMmz+?=
 =?us-ascii?Q?JvI+bbrEm8oNKK1ooRLlP+Z1rR2bHmz7LWwzUY7fFvkK2UdEdll+7RzrWC5Q?=
 =?us-ascii?Q?Ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5b70cf9-dbb2-4f96-891c-08db7c96f641
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2023 14:00:02.2709 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AAVfqtve39HI0OppN22GIncIK/sTVu20badlFzxrB3nnuUGT4uXACF+BK0Xkmvh+TI+M6O8tinndQxIP11GkW+vTH90SDWH4zMJDNpIGqN8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7790
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uncore: add intel_uncore_regs()
 helper
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

On Tue, Jun 27, 2023 at 12:51:28PM +0300, Jani Nikula wrote:
>Add a helper for accessing uncore->regs instead of doing it
>directly. This will help display code reuse with the xe driver.
>
>Cc: Andi Shyti <andi.shyti@linux.intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
