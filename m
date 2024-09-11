Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7695975814
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 18:19:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2D9B10E098;
	Wed, 11 Sep 2024 16:19:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W/KvxMaG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E833710E098;
 Wed, 11 Sep 2024 16:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726071541; x=1757607541;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=MBfYcSShaovznqQ9QlX7jAyQLu61vZbV6uBe/rbgsv4=;
 b=W/KvxMaGBJuuaNeqZDpWasSZ5qWlclBM5Gkr3xDJiGqu38SYx99k8X5d
 g2b3ZvSRR4L6vE4SvUHgy7A2u5pT3BoiqqHDlRG1IyyvueKsD7Wty+u1y
 F9cyovfFVbJC3kwCylKOt/zPH5D4+kRgCIV9PjyBnfFm/yE/+VRTBDQx+
 YpjT54ekYayYeQ04vjr9TfSDypPjjo4XykXBhdq1I5sde3u0KTQCbVL6R
 fY79Cl0RICXpiFUhgbg76EOFCfZA8bgfvYpgEJDZjda/PdRITed2H8x3t
 7AwE2Sj6J4Scz0eUJykcdmNtvl4Y3jM9UYKXlhte3Ro91pQM1U+t8RtGr g==;
X-CSE-ConnectionGUID: ezfFrB6STjSL/8aPSZ7Apg==
X-CSE-MsgGUID: DzwJpFrUS9avSStknXVH7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="35475991"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="35475991"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 09:19:00 -0700
X-CSE-ConnectionGUID: OKckH8bRQMmaIIdTt0R42g==
X-CSE-MsgGUID: OR0iDillQGiKCc7DdbmFqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67924893"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2024 09:18:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 09:18:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Sep 2024 09:18:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Sep 2024 09:18:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k1DBCgzVAx/wE7l6S7tUXCgjgBDMWNpkZs8/5+zGVORCKNgY4va9kfz9StKFXTrXYKtvVXmWoyoi2Bv6YN4YctPUkUT4lpuWqZO83spVgyjnBwD217qfboYcuFmsU3XSJKU9fQzw0V4DiRce/niBD2cjvSg7GYDMzoJfJhK9bGggDA40/Ps2KzgPFFJmQPE7CUe8Daph1yGvwMl9xGEAm3fcRv3jokJbfP+XFakSruQ322hIngojEXtX///GbkOKo+V/2+TK0aYMs1BOBufe1V2oCUy9jcSNc3/Apn0Dc8mnrCDoNKWTttTHk8JUSzR1x7pnh6g/1fLJ0uMjdg49QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xOFHGX5ddGg3cUpk7wEjmRpEu91+XreI8NiTznUoZFc=;
 b=MyTaaPoaysIxULE5XIQ7bEZ64Xt214bABdK4refhxKlcxX9nYIMA0QhVIPU/UkSMhkguGdKy6faZdLpvPRzBu8yp2PHbNEwDkjKff8JoSLkyLVLCvqK3TrQUmjbOdx1BTi/8oD5IpNg8S5wFAxQRZQyPnazEBhA9HbemU7/8KorgNnMdsbSUvqHKwpF4jpiVESr58S5FikmcSSUS7dh5gGhiT2Tbg5wFnIW5l3S+lic63oJUjoSNXKI3qOf7rJ5MTZwSqgyP76jCs8kpOJb8MRbbpmEa6b5qz71V9969W8aQIM6lSKrA9QhsGlpCwGH1QQIu+56gyJvRK52bIqbqAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA2PR11MB4954.namprd11.prod.outlook.com (2603:10b6:806:11b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.25; Wed, 11 Sep
 2024 16:18:55 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7962.017; Wed, 11 Sep 2024
 16:18:55 +0000
Date: Wed, 11 Sep 2024 11:18:51 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Bommu, Krishnaiah" <krishnaiah.bommu@intel.com>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, "Upadhyay, Tejas"
 <tejas.upadhyay@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, "Joonas
 Lahtinen" <joonas.lahtinen@linux.intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, "Teres Alexis, Alan Previn"
 <alan.previn.teres.alexis@intel.com>, "Winkler, Tomas"
 <tomas.winkler@intel.com>, "Usyskin, Alexander"
 <alexander.usyskin@intel.com>, <linux-modules@vger.kernel.org>, "Luis
 Chamberlain" <mcgrof@kernel.org>
Subject: Re: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI Modules
 for i915/Xe Driver
Message-ID: <b3gmlgx6tl5uyzsdsp6q36blhzchvhpvno25tvwrj6nnu23dmz@rkacgyjoxsru>
References: <20240909040317.17108-1-krishnaiah.bommu@intel.com>
 <ZuBfwqpIX4HAGwb1@intel.com>
 <3zgu3edmrjum2rbhu7tv5xo7xans2uper7qn3lswca3nsc4tdl@gevqfr65js4g>
 <DM4PR11MB529387DB2FBB0A5C1064895C9D9B2@DM4PR11MB5293.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB529387DB2FBB0A5C1064895C9D9B2@DM4PR11MB5293.namprd11.prod.outlook.com>
X-ClientProxiedBy: MW4P222CA0014.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA2PR11MB4954:EE_
X-MS-Office365-Filtering-Correlation-Id: 6be4014a-46ee-409a-5e9f-08dcd27d6ee4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|27256017;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?6T4waCbGXS566VQfhyZKAwQ7M+y7Ov8qmsLoOx9jbeFG6nhw5JY5XZtpfO?=
 =?iso-8859-1?Q?YY402zfTuIFRlfg4JXbhM+Jycn2RIfqBgXCIMPu0IJaww9ngpKiVmE4u+m?=
 =?iso-8859-1?Q?CCA7l453icQQHFJGbTZ7Q6QrqLPdp6HituSET+NBn2ljEnjEVdXuWd5fFo?=
 =?iso-8859-1?Q?IwShuRiQSGfyViv6ipJUNWYO/YhUxou1dIytRALxrjg24a53zmc69oR0ar?=
 =?iso-8859-1?Q?PDsEZwqtipJUPJfYr42f4xnlgztdlMrXwg9DpMJt5vO36s/xZcZ3WHTRTS?=
 =?iso-8859-1?Q?+u5qziMbcgVJ7173mmdvjZQ/rxyelQNaihtdK9plG+R0HSxzhOZ6PT4HfT?=
 =?iso-8859-1?Q?mpTESy+zyqcYaWo4DgDWIfmYiJH/0qvuY9o0p7d+9U4P7njjipNyfjifAe?=
 =?iso-8859-1?Q?iClA2yV6u0zSBDjja8e6+ZDz/k9aUzubtpFKwZHT1uLxqhAesMW4phek02?=
 =?iso-8859-1?Q?GWMzRbqQvu/BB7ynIF06tF5oRPc2RFLtssbTkjfsvDHJn0C+pnVOe1xeu5?=
 =?iso-8859-1?Q?LiSjQoivmOjlr6moqbaFeVBPQw02DneOebwyN94KgAu9UuX1YUDhu5eYPr?=
 =?iso-8859-1?Q?cz55kFueYZLhE/FNk4KO3nYQhSopy23px+dRiP1QckxcHk03BXtxt4KkRk?=
 =?iso-8859-1?Q?tM2JU4E5pChwC5XysnLMqxIddMEiTsCI5LfvwLAtwC+Gs7wlNNNL1Oz1iG?=
 =?iso-8859-1?Q?qZSX8CbZnF4eU3jqNNHCb8UiOfPkGjM0iNekv+ilSoCNg5cLf2Xmja7Gs/?=
 =?iso-8859-1?Q?69wv9K7gtJg01NRi6fm4kD7aAweDRAGO4hGc9sce15CcjCHl95DAOwEgzR?=
 =?iso-8859-1?Q?cFyb11roK2r54NR+VP0eV0g2PZRc89oEQnXKZka+PFQROgd0VT9kAkI/9Y?=
 =?iso-8859-1?Q?A7OYcxSHa1HpRweRXvw6Z7M3D2YMVlA164a0XcXZJm8w99c6HgAXyuhp2H?=
 =?iso-8859-1?Q?1prKXfe+ULthoT8miRBBRZiX7/LUk3C7BXTO0vhUQuuRSaiHr1AxNbgdjf?=
 =?iso-8859-1?Q?vJj9TEdUFD/rIGYZNqVV16Z1nneyHGr7gj5lNFA9wod/Y3hiIVEn8tUgmX?=
 =?iso-8859-1?Q?+p+QuhHk+n0nwXzBhUameTM5CfuGP0ciKORfolLYpiAeDYaG8xot4I2x0l?=
 =?iso-8859-1?Q?sW+iubXEgoWfHzZse/N1fz2aBWoL6pwUNPGWyqyG5ROV04KxlLLTO3zkfT?=
 =?iso-8859-1?Q?B/FSYNfOf+mIuVdUEKgAoQ7Z6UVziKwzvXDB1kVA5bFQRR7Ay6Et9eJ7Qw?=
 =?iso-8859-1?Q?HvwdUGf8t2VRaM8HCiot9TFuMLDFuRF9m/xVeWUBriup5dr6NksxAi1dRK?=
 =?iso-8859-1?Q?r3/iqgesXfi3Kc+el45fxJA+JMfT9tpwPxgrNoiv18V84REDLLFBoGr4/N?=
 =?iso-8859-1?Q?DgeqPkxoxYj7lnqGAt7YC9eJRCTY5bNRGFasYArHbEzMr3NqhT4G8v9eLZ?=
 =?iso-8859-1?Q?7Cq50jW5v/zsWRyC2JDMUUnwmCdBVdfh8mygKA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?7DmTuFVguW5JsKwEZuC49aJcWJ2p12FEMI79zfnLWMwPnRm3GjKQk7k6Kc?=
 =?iso-8859-1?Q?VbujIk1OtVCHVH3p++iZEO6awSdV247Gh4VWyr71QxJunvTQZbPf20O1Mb?=
 =?iso-8859-1?Q?mMC5ApAolbB81JdpWpr5lNSTbzlGfwnGM/0Zka1YhisXHCHDfJzMyz/lRG?=
 =?iso-8859-1?Q?nuqsaffS4N9EdEY5pqgVg7XNAKt62N31M8cmwyHGOS4GoeLvirHKdMqsWO?=
 =?iso-8859-1?Q?Pb6aqjuDnIO936IYfXm2CWvneWT9GA6/RgOIJA2RaVl0BJx66gV0VWi5Mx?=
 =?iso-8859-1?Q?ll66ym6LUE75VTf8lVamPlzOMjpPbDKrJwU4w9T7TXVwIsG4LArcRxxNcH?=
 =?iso-8859-1?Q?wkakJp06y42glqilMR8zIahJIX588ktVyPlazpvHIfNBMA/dVoj0hKPMG3?=
 =?iso-8859-1?Q?0fNzq/U1EO2Z4IqyJuraYGFrVF4mIE1229VK+u1w8/Issyu1RJPX0K+b2I?=
 =?iso-8859-1?Q?qTtq+//vYY/ai2hoKGTLtRpp/+b1L/Ub31s8egix3Q4Llc5E74XvyvMiWY?=
 =?iso-8859-1?Q?qB7wWZMvhMD6dnZsaPqQdxwxPYdVYqh0XXym/IzB9lsZDK9q18+0DYt5pr?=
 =?iso-8859-1?Q?UtoBX7ssdaKgYyRSWXDPot1wrVEOC4KMd3xIus1tlhhS4JqXIqG/NyIU6d?=
 =?iso-8859-1?Q?e/Fjtp3X8FV45dd25TZ1lcgUYJcgIAZMzNS4lCtqnffPNb2XnYLgsjS6QW?=
 =?iso-8859-1?Q?O6nAC/rmW62IfssBP9NZ/XPthg+Rc3GypZrjVRL11xSfpohFYLozGMK4UQ?=
 =?iso-8859-1?Q?N8TPk0XEtb2ydB3DZZ8AXBSG3/4nHpE+WE+wdrLOeah7/JlzZOMqWe9AXH?=
 =?iso-8859-1?Q?yAS27WKD64Ga/Lh5VgMrNMKKaSyDVbFvm2b0D4L1aNJXLGtsh035umSlWx?=
 =?iso-8859-1?Q?GcGI9e4t3/2uYHQ0b9F3jojxvNJ/iQAVc5Dm/+zVJiDt4Qsmz5l6OYkUAK?=
 =?iso-8859-1?Q?mkYxEIG2CF1BxMUuQ5IW34hsoEuyoNyrUMSPTYPL8Fb1FYdfp6hUJKem9A?=
 =?iso-8859-1?Q?Q3A5CXEuNyy13veKQLhzZ1XSkA15aI4Wjbj7pp5YFTINg1bw8oRT2oAkh0?=
 =?iso-8859-1?Q?XzHVsB7NKUfJYDTHwsei0Nw0ZPFsWvQrtCIKpUQvgVbdWq9tiXTiVdYQuP?=
 =?iso-8859-1?Q?WR+MS8SyFokcHpjr5NsTJesbUDtGf1Ik+aS6wjGPaaRWTEtPwco/rE5kYr?=
 =?iso-8859-1?Q?MAq49KhCc3WVtfEkahsdKK5CNm+A/tawD9DJXW4/S0YIdqdVtsAd4orsKX?=
 =?iso-8859-1?Q?QVJ2JK3h2gUxWWQ7t4lWY20AB2q9FpljAvg5xiLOOISXErzJ/BMVJyGZVA?=
 =?iso-8859-1?Q?NJ3uCqyZ74Z1ARJmCYfqbXl7f2yDXLLz+065CIUXYdL5EnHWa0Q9ojWoni?=
 =?iso-8859-1?Q?hRtctWhnxd4XlD6T3t0q7CFVypkWFLMzQyaxNNXQOCqtHMcX3qnY0yA7+6?=
 =?iso-8859-1?Q?7YeViRu6LG03SRIt7TvVCJUKp+ueTHQ8GEevVWN6JzzLhh4q50gmB1eNNA?=
 =?iso-8859-1?Q?wGWgqh1I/qIZZ9wLKYcp54zOwpPHYtVxL0KM5+ElWSTJ7clM4HYBB3F3BA?=
 =?iso-8859-1?Q?vLYnkgtP4QITOYWNCJb8qqNroBBWECKvpMWntHkazNhjH5vTWUdmteb5jf?=
 =?iso-8859-1?Q?2Fi4SZVOeCeConLP8RFEKrsr+3vfhanR14z+yzxSo914Q9BmF34L1hdw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6be4014a-46ee-409a-5e9f-08dcd27d6ee4
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2024 16:18:55.5833 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sDo/q745/rugi/9js/Ehrm2VLwphkGQdnewZbH0XmIWp8Bflk7GXHLBA22b08onG567ew2FPTgPMJQfWqoi+TD/8REwmgtOvaCCGHfyG8b0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4954
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

+ linux-modules
+ Luis

On Wed, Sep 11, 2024 at 01:00:47AM GMT, Bommu, Krishnaiah wrote:
>
>
>> -----Original Message-----
>> From: De Marchi, Lucas <lucas.demarchi@intel.com>
>> Sent: Tuesday, September 10, 2024 9:13 PM
>> To: Vivi, Rodrigo <rodrigo.vivi@intel.com>
>> Cc: Bommu, Krishnaiah <krishnaiah.bommu@intel.com>; intel-
>> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Kamil Konieczny
>> <kamil.konieczny@linux.intel.com>; Ceraolo Spurio, Daniele
>> <daniele.ceraolospurio@intel.com>; Upadhyay, Tejas
>> <tejas.upadhyay@intel.com>; Tvrtko Ursulin <tursulin@ursulin.net>; Joonas
>> Lahtinen <joonas.lahtinen@linux.intel.com>; Nikula, Jani
>> <jani.nikula@intel.com>; Thomas Hellström
>> <thomas.hellstrom@linux.intel.com>; Teres Alexis, Alan Previn
>> <alan.previn.teres.alexis@intel.com>; Winkler, Tomas
>> <tomas.winkler@intel.com>; Usyskin, Alexander
>> <alexander.usyskin@intel.com>
>> Subject: Re: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI
>> Modules for i915/Xe Driver
>>
>> On Tue, Sep 10, 2024 at 11:03:30AM GMT, Rodrigo Vivi wrote:
>> >On Mon, Sep 09, 2024 at 09:33:17AM +0530, Bommu Krishnaiah wrote:
>> >> This update addresses the unload/reload sequence of MEI modules in
>> >> relation to the i915/Xe graphics driver. On platforms where the MEI
>> >> hardware is integrated with the graphics device (e.g., DG2/BMG), the
>> >> i915/xe driver is depend on the MEI modules. Conversely, on newer
>> >> platforms like MTL and LNL, where the MEI hardware is separate, this
>> dependency does not exist.
>> >>
>> >> The changes introduced ensure that MEI modules are unloaded and
>> >> reloaded in the correct order based on platform-specific
>> >> dependencies. This is achieved by adding a MODULE_SOFTDEP directive to
>> the i915 and Xe module code.
>>
>>
>> can you explain what causes the modules to be loaded today? Also, is this to fix
>> anything related to *loading* order or just unload?
>>
>> >>
>> >> These changes enhance the robustness of MEI module handling across
>> >> different hardware platforms, ensuring that the i915/Xe driver can be
>> >> cleanly unloaded and reloaded without issues.
>> >>
>> >> v2: updated commit message
>> >>
>> >> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>> >> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
>> >> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> >> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> >> Cc: Tejas Upadhyay <tejas.upadhyay@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/i915_module.c | 2 ++
>> >>  drivers/gpu/drm/xe/xe_module.c     | 2 ++
>> >>  2 files changed, 4 insertions(+)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/i915_module.c
>> >> b/drivers/gpu/drm/i915/i915_module.c
>> >> index 65acd7bf75d0..2ad079ad35db 100644
>> >> --- a/drivers/gpu/drm/i915/i915_module.c
>> >> +++ b/drivers/gpu/drm/i915/i915_module.c
>> >> @@ -75,6 +75,8 @@ static const struct {  };  static int
>> >> init_progress;
>> >>
>> >> +MODULE_SOFTDEP("pre: mei_gsc_proxy mei_gsc");
>> >> +
>> >>  static int __init i915_init(void)
>> >>  {
>> >>  	int err, i;
>> >> diff --git a/drivers/gpu/drm/xe/xe_module.c
>> >> b/drivers/gpu/drm/xe/xe_module.c index bfc3deebdaa2..5633ea1841b7
>> >> 100644
>> >> --- a/drivers/gpu/drm/xe/xe_module.c
>> >> +++ b/drivers/gpu/drm/xe/xe_module.c
>> >> @@ -127,6 +127,8 @@ static void xe_call_exit_func(unsigned int i)
>> >>  	init_funcs[i].exit();
>> >>  }
>> >>
>> >> +MODULE_SOFTDEP("pre: mei_gsc_proxy mei_gsc");
>> >
>> >I'm honestly not very comfortable with this.
>> >
>> >1. This is not true for every device supported by these modules.
>> >2. This is not true for every (and the most basic) functionality of these drivers.
>> >
>> >Shouldn't this be done in the the mei side?
>>
>> I don't think it's possible to do from the mei side. Would mei depend on both xe
>> and i915 (and thus cause both to be loaded regardless of the platform?). For a
>> runtime dependency like this that depends on the platform, I think the best way
>> would be a weakdep + either a request_module() or something else that causes
>> the module to load (is that what comp_* is doing today?)
>>
>> >
>> >Couldn't at probe we identify the need of them and if needed we return
>> >-EPROBE to attempt a retry after the mei drivers were probed?
>>
>> I'm not sure this is fixing anything for probe. I think we already wait on the other
>> component to be ready without blocking the rest of the driver functionality.
>>
>> A weakdep wouldn't cause the module to be loaded where it's not needed, but
>> need some clarification if this is trying to fix anything load-related or just unload.
>
>This change is fixing unload.
>During xe load I am seeing mei_gsc modules was loaded, but not unloaded during the unload xe

so, first thing: if things are correct in the kernel, we shouldn't need to **unload** the module
after unbinding the device. Why are we unloading xe and the other
modules for tests? 

>
>root@DUT6127BMGFRD:/home/gta# lsmod | grep xe ------>>>just after system reboot
>root@DUT6127BMGFRD:/home/gta#
>root@DUT6127BMGFRD:/home/gta# lsmod | grep mei
>mei_hdcp               28672  0
>mei_pxp                16384  0
>mei_me                 49152  2
>mei                   167936  5 mei_hdcp,mei_pxp,mei_me
>root@DUT6127BMGFRD:/home/gta# lsmod | grep xe
>root@DUT6127BMGFRD:/home/gta#
>root@DUT6127BMGFRD:/home/gta# modprobe xe
>root@DUT6127BMGFRD:/home/gta#
>root@DUT6127BMGFRD:/home/gta# lsmod | grep mei
>mei_gsc_proxy          16384  0
>mei_gsc                12288  1

			       ^ which means there's one user, which
			         should be xe

>mei_hdcp               28672  0
>mei_pxp                16384  0
>mei_me                 49152  3 mei_gsc
>mei                   167936  8 mei_gsc_proxy,mei_gsc,mei_hdcp,mei_pxp,mei_me
>root@DUT6127BMGFRD:/home/gta#
>root@DUT6127BMGFRD:/home/gta#
>root@DUT6127BMGFRD:/home/gta#
>root@DUT6127BMGFRD:/home/gta# init 3
>root@DUT6127BMGFRD:/home/gta# echo -n auto > /sys/bus/pci/devices/0000\:03\:00.0/power/control
>root@DUT6127BMGFRD:/home/gta# echo -n "0000:03:00.0" > /sys/bus/pci/drivers/xe/unbind
>root@DUT6127BMGFRD:/home/gta# modprobe -r xe
>root@DUT6127BMGFRD:/home/gta#
>root@DUT6127BMGFRD:/home/gta# lsmod | grep xe
>root@DUT6127BMGFRD:/home/gta# lsmod | grep mei
>mei_gsc_proxy          16384  0
>mei_gsc                12288  0

			       ^ great, so the refcount went to 0,
			         confirming it was xe. It should go to 0
				 even before you unload the module,
				 when unbind.

A couple of points:

1) why do we care about unloading mei_gsc. Just loading xe
    again (or even not even unloading it, just unbind/rebind),
    should still work if the xe <-> mei_gsc integration is done
    correctly.

2) If for some reason we do want to remove the module, then we will
    need some work in kernel/module/  to start tracking runtime module
    dependencies, i.e. when one module does a module_get(foo->owner), it
    would add to a list and output on sysfs together with the holders list.
    This way you would be able to track the runtime deps and remove them
    if their refcount went to 0 after removing xe.

(2) is doable, but previous attempts were not successful [1]. Is  there
something else to make the simpler solution (1) to work?

thanks
Lucas De Marchi

[1] https://lore.kernel.org/linux-modules/cover.1652113087.git.mchehab@kernel.org/

>mei_hdcp               28672  0
>mei_pxp                16384  0
>mei_me                 49152  3 mei_gsc
>mei                   167936  7 mei_gsc_proxy,mei_gsc,mei_hdcp,mei_pxp,mei_me
>root@DUT6127BMGFRD:/home/gta#
>
>Regards,
>Krishna.
>
>>
>> Lucas De Marchi
>>
>> >
>> >Cc: Alexander Usyskin <alexander.usyskin@intel.com>
>> >Cc: Tomas Winkler <tomas.winkler@intel.com>
>> >Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>> >Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> >Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> >Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> >Cc: Jani Nikula <jani.nikula@intel.com>
>> >Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> >Cc: Tvrtko Ursulin <tursulin@ursulin.net>
>> >
>> >> +
>> >>  static int __init xe_init(void)
>> >>  {
>> >>  	int err, i;
>> >> --
>> >> 2.25.1
>> >>
