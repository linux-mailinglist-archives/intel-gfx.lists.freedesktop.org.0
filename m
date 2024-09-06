Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D964396EA26
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 08:27:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ABB810E184;
	Fri,  6 Sep 2024 06:26:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C4QxziiG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6109410E182
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 06:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725604018; x=1757140018;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=NuzWzx/LUsVl3SBUJgNim0LaTM8C1eneehIUCt/AN0k=;
 b=C4QxziiG5NAhfq9Ll0bLS8nqr7wOgyOxC4jZCbrp7uTBY/NUQ+SQD25x
 gmsejS3Nx1FjZPQgA6w4OBntn4ms+yyu0TG/eLLytyiEPtHYHFD/aExHn
 Uc19UMJDynHMcIO6usE6FRBWjDSlAgVhCQQBkXlJaZuW2UHBPN+pkvCos
 ryyMfGl4IqOsO+RPuLlInfZXI0M04kKkuToO6CycPEHb6TXChvkKJOOg6
 TS9bjYUi+yICkzzBhHU7/V9PH9w5rkgQox4YbG7IX51xOz8q0onKckuIe
 wCSLo3/tbY8aYridcCJASwYZdKu6rrDBG8NKb9ODFpgEl7tFn/PioSwge w==;
X-CSE-ConnectionGUID: pxFDgp1NTCmgrLjhX9MIYg==
X-CSE-MsgGUID: EJjJ0DZnS6yOU+218VCZkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="23909691"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="23909691"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 23:26:58 -0700
X-CSE-ConnectionGUID: L2/4tEJpTR+UBAPIDH/peQ==
X-CSE-MsgGUID: VUrnbugJQAeBQmdQsWOMTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="66191428"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 23:26:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 23:26:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 23:26:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 23:26:57 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 23:26:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YSF/kcgoo0yK1p56VmEVYQhQBLtwfWFkCxYy/wRCJdMJm5vQb1NTvTvOY4e6pCro5/v3br97wAp4dkwWup0Hn4tPbZPd4P6p2RtddKn4xoljNE1MnClvPlo3J5G9RVKYkZa3xV97PnXPerADC8e0pdeKr2bdAA0VkubuasTwl6wkJn+in6ogGmKY3pvyCdpBN1/NBQfEx8gS9Mum01ULa/9ydGM5HsvU102cLXC31JaoUVkVBH8rW4ZMy6Qm6Ct5BJU1F6Yf0I/jKMmR6ht7xNnv85KlhLXjp1VtXt1A9STPwxIgUN+0UwEzGe7T4E5DuHKeQPI74KW42hBJClqPVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lmasjyUGbpfiH+DJCGVKyINnsHQjXLt1alb26g4KMNw=;
 b=Y6NXSo4un23eza9yoRSE3CR07tFBo0V78uOokg2ZOggmcIr7HAfsdPPb5/K1QdsVvP+reXofBHEuIDM+57WzqU2OfsAuVrCLZ6qew4N+YBHh0wK1wl/DV0A1xz0x8Zuvkp1AkMVZ3tRxZTA/fXjT5y06cO8hKZ5e3pNwivjK2SKp6YKSnNARZai5V5kLFqXD2h/2mQyxwejCg+U+kn5ynnqHw/eS3Evr0H4NOAO5rWEcstuuIIk4x/dKoBo16UzSUcK+8EC9T3nhvIEnQpb7/H838M+e6Umm68MTJMBkKsrppip0XqRpCWwB36RvbjAh+FADnzp5u3zmGrOucwNkmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by MW4PR11MB6785.namprd11.prod.outlook.com (2603:10b6:303:20c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Fri, 6 Sep
 2024 06:26:54 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1%6]) with mapi id 15.20.7918.024; Fri, 6 Sep 2024
 06:26:52 +0000
Date: Fri, 6 Sep 2024 11:56:45 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Raag Jadav <raag.jadav@intel.com>
CC: "Nilawar, Badal" <badal.nilawar@intel.com>, <jani.nikula@linux.intel.com>, 
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <tursulin@ursulin.net>, <linux@roeck-us.net>, <andi.shyti@linux.intel.com>,
 <andriy.shevchenko@linux.intel.com>, <intel-gfx@lists.freedesktop.org>,
 <linux-hwmon@vger.kernel.org>, <riana.tauro@intel.com>,
 <ashutosh.dixit@intel.com>, <karthik.poosa@intel.com>
Subject: Re: [PATCH v1] drm/i915/hwmon: expose package temperature
Message-ID: <2kraxnckxoucjzdpxx2qqfu4dymegudms7qwdqfmsn2mqofxam@6sr7ymprietf>
References: <20240828044512.2710381-1-raag.jadav@intel.com>
 <07c01d49-aa9c-429e-bd4d-65cf2648329e@intel.com>
 <Ztlx-xAd2JSpolZA@black.fi.intel.com>
 <56zmt55kfwgeq3bsbci7ghooe4qv3nqxulbaipceng2jqb6dtl@hxvgnwznnzpy>
 <ZtoD-SoxljuJQuj9@black.fi.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZtoD-SoxljuJQuj9@black.fi.intel.com>
X-ClientProxiedBy: MA0PR01CA0096.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::12) To CY5PR11MB6211.namprd11.prod.outlook.com
 (2603:10b6:930:25::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6211:EE_|MW4PR11MB6785:EE_
X-MS-Office365-Filtering-Correlation-Id: fcff767a-3d2b-40f2-d63a-08dcce3ce55f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?Y3fJyT6mfvWESjGeqL1oVCbYfxSOXO/cy36M2ue9yJNrOKyBhF9lnRNHGp?=
 =?iso-8859-1?Q?6cQVtnB4vzY+Y3tX+apcsvMkoyQ/0uQoU8N7xhFF3mT6uxoE0k6xqkkw2X?=
 =?iso-8859-1?Q?b30AyBNiT+2uUw+xQ976L7/gas+8HsW7uBA7e1HuuAkuIHq1kqKx2fGKqm?=
 =?iso-8859-1?Q?hoWPeHI+eeL5RHExvE6a2EHryBLFGwx7lPPG/Y/jF3h4QhLRLdgNLXzfLo?=
 =?iso-8859-1?Q?ahHKGJgDgnVtEUORUMTZaJWssi4EqF6hcD0svlyGeybBpGpITux7Bea+aU?=
 =?iso-8859-1?Q?jZnLkdjkkOpSqY+QGRJZypwckycRKKE9reISRDzYAT//uwxVHBEoxbPXMq?=
 =?iso-8859-1?Q?kBn3UHYBQjdLOA2nVCtYqMVECGaf9eqz5V0iV2CgkCquYQzp0Ai2m7+P5U?=
 =?iso-8859-1?Q?Nsze69mChyBBdydQ5DDnBdi4aUjq8YeMJ2aJbwp/5OPyk85YJsGiQseqxn?=
 =?iso-8859-1?Q?q65ipH9sVpXkFy+J717HBimGIMMU2xhSPTP3QTOjqjJ0OUzfDwvGyvB1PT?=
 =?iso-8859-1?Q?x83RSJG8K3VzlEnP1m3+cJxg5JyJwXjjAxrkHjXZF7T2T37eVc+lgpRVLT?=
 =?iso-8859-1?Q?oBZbwtm0hMsGJb2ob9shFiuKX+EyxdpOX00hKQ7ByfpOtqR7ySBusyEzHn?=
 =?iso-8859-1?Q?fkobOL5Vj9o87Rdm2QhUHkYYDdUk2Wt6csz0DUSpeSKvMy6yV/iW+1NYdJ?=
 =?iso-8859-1?Q?+wplKMtEEYUhwJVb6J4BS4Lh9oauqcpLHzP0uXueA46HJoPEstTu3YAdKT?=
 =?iso-8859-1?Q?dIoGuGUX2j2rOr9LZDGD1wnT7my04RGCyiFV3sYYhL7xps21iKOvqKLwqT?=
 =?iso-8859-1?Q?bntVTmP48vF/NRIC82UWsOCrId033AtD2LPQSrdfLjUP53kd99Ro7Q2IWh?=
 =?iso-8859-1?Q?K2Z0o3tpJ8/2garJVN9e+qp+dPTrD2P+vKCVYVz+dM5UA2kkr04jOdIMET?=
 =?iso-8859-1?Q?QtfX8cHVwraUpQZuantV/9J+gYNkEpnuyickRcvlLJW2uMRzS16yRj5465?=
 =?iso-8859-1?Q?nxofF74VMWG3Z2WcrY1Rn/IOheYAq/2lH+gm/JI1TT1KySwflI1glB8tYb?=
 =?iso-8859-1?Q?LK9j/zFq65RMuIuD3zXLR24/VPmN4+W7saJa0rQeseIVRZtp8EOTp/RIyj?=
 =?iso-8859-1?Q?zPx+Tj2PowsCjm8h4QbdDjH/0sOfzeV7GN3RVrisykd/0OeBQ974QkRAKv?=
 =?iso-8859-1?Q?6/DuThX4zhqO7vJJo1f9qBca2+DRso43Zjrpl3V+13hRgXDHGokkoKOKTh?=
 =?iso-8859-1?Q?VwDbI0rYrckraQcZjq4zF1NIvlKa0SVYtn4LimOEAn0fjmwKvAKTCkeS10?=
 =?iso-8859-1?Q?SlZsai/scJ/4wBNOEVv5MLD3B/giPuFc1xL8nNxyLIcD/s8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?ZmDFnI3Chf8il2KGFR4cDmF05RJ+j8X3hcXYjCC2Cn6SGZwbKUNQZJPfML?=
 =?iso-8859-1?Q?yt7PKaJ/zBdQqPa9SHZl7wNBiuSX16HvriXpa5+2PnTDgZrV+jsp8IaQg+?=
 =?iso-8859-1?Q?I6/9GZTVRspHr3iqDTBLxHtRFDXLjm8LOP6Eb5rk+1iZLIL9IPzuox3rXR?=
 =?iso-8859-1?Q?HieURV8EllzBohwtPZRw37bfwNArEgZK4UFkjk2NMnspQjRu7/8kamjTad?=
 =?iso-8859-1?Q?WIqbBx989wrdxo1ZebHOS3AXcUQHoqM6tULO1Vnge5v6MBFXfzEDO+OAMg?=
 =?iso-8859-1?Q?5XSfSzSjztluexvzBAvHlVFrpbTBoK3nCd1x6msWUE7GiCbt+BkQEe2p/L?=
 =?iso-8859-1?Q?ZNWbLF/8EBQx3OySjG33Zl40lf753Q6LB1XNn8zPD9YXHew/sdqwLOpX/F?=
 =?iso-8859-1?Q?2h6X7VulbqBm1p1Ct02iD1slbPb9vja3cNdw3ytHTqeqc9yYqGVxZGGWSk?=
 =?iso-8859-1?Q?F3Q9Attq3jXGOIxj8q4pf14YrEg9Rb/T6/HqNOcGdiC+HvSCcx4BzVJhLf?=
 =?iso-8859-1?Q?eTUFWHycl+VNnU4XMmwpbEYr2IFTL8PKIxQMBdJQwknBENdVCyCgWmMW2U?=
 =?iso-8859-1?Q?0ot9k69SCxeeBT5iAve+9YJYSEGvNxA3z0lhqpsuk+WhLvATb14LcumaIe?=
 =?iso-8859-1?Q?km+7jEOPYZWV/q9MnTOeHJfljkoiMwIBYxyllGwWv5xmCUJ07wKTNTMPiy?=
 =?iso-8859-1?Q?GAEm+5mZFCutB4sB2TZ8T/9NvCgSQ+RzYWxmkk/lDV9r4hmykQEZOuuh/4?=
 =?iso-8859-1?Q?rOqS5yJyAWys3bXib+9P6BDvxQlK2Ce4uXtAAFbDzGISG2UcGVnwM5rSws?=
 =?iso-8859-1?Q?v4RB3xodetBDdZZxGY1LuI4NNuwtMEB6wImp97PkKiEL6khsbTBt4kd87L?=
 =?iso-8859-1?Q?IxwQIaT6ej3/5eOijgNd3I+m+yVlFAGf1AgQcWI4QaKqwZ9WXpRLaH747H?=
 =?iso-8859-1?Q?P3bTTOCcOML4anqBwqKW3fLbP+Z7ps4GHJCbklIyLJwvoY6QHisLIueLmZ?=
 =?iso-8859-1?Q?c6QfZWi9Xngp3k4oBPVvBPxwnUJVVf/6JPiE1LNPtGHf9TT5DsOqu4sUP4?=
 =?iso-8859-1?Q?BmbeIIQ1i318+7loLKwvYyZ5U65ZnSusxTjBRpelFu+eSei/Optaw+aDhR?=
 =?iso-8859-1?Q?wOFv7b7rRxOtCK5JXTg/aqeRIQNjgU76JRBz7ZPKNYAIaFRcxwypqnrbdS?=
 =?iso-8859-1?Q?24oCYjXhyWJeHxA1zFeF7bUNxcTyNbpAh2IoZuNoh2UOdKrHey17zb+U+C?=
 =?iso-8859-1?Q?Qx7eVwqTX57+0W7Dt8mNlq25mDC1UaoCJ8RDA/9FV8q978USL3gYX4TXCD?=
 =?iso-8859-1?Q?Y8kPWPbIpES9fcn2A1ca5IZOF+sVRTuQuMFYT3yCeK1JVWKFCKAFjkRP23?=
 =?iso-8859-1?Q?gpXSJZbr6vKANYtwwAu06gyMs6FNpusocA9It/tRsv4iYAzpG/+joFdu3D?=
 =?iso-8859-1?Q?nwj9m8/Wu/S/0ntJ5RJffHt9Ddno7wjUtyyckinwd0j5Drr2IyRQs5ri0z?=
 =?iso-8859-1?Q?gf3NwNcmpa2VbaAljwiR733VxiINbrtQfpQJzUDykowLuo+2WOzXmBd+wR?=
 =?iso-8859-1?Q?ze2ruwXuIGvpsYFSMkgdRM0omLPtWbYhN1RdyK4unYIvOtZLswQoeS4rnT?=
 =?iso-8859-1?Q?FFeT1IbQPcE4sz2NfegLpvlXsVTNP2BgXvssIi243Ccd1NwnVli/Nb+A?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fcff767a-3d2b-40f2-d63a-08dcce3ce55f
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2024 06:26:52.4436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /39HQsNATAIQ5SvPW40WSWWuQfHaWO3a1xnjifZO37g83Z28QmNyNgJQ42BWDYIZByyBvq3vbSy8ioCIDakq6Weisot59y0+uNLEVMCZ/ok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6785
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

On 2024-09-05 at 22:18:17 +0300, Raag Jadav wrote:
> On Thu, Sep 05, 2024 at 07:39:31PM +0530, Anshuman Gupta wrote:
> > On 2024-09-05 at 11:55:23 +0300, Raag Jadav wrote:
> > > On Thu, Sep 05, 2024 at 11:56:15AM +0530, Nilawar, Badal wrote:
> > > > 
> > > > 
> > > > On 28-08-2024 10:15, Raag Jadav wrote:
> > > > > Add hwmon support for temp1_input attribute, which will expose package
> > > > > temperature in millidegree Celsius. With this in place we can monitor
> > > > > package temperature using lm-sensors tool.
> > > > > 
> > > > > $ sensors
> > > > > i915-pci-0300
> > > > > Adapter: PCI adapter
> > > > > in0:         990.00 mV
> > > > > fan1:        1260 RPM
> > > > > temp1:        +45.0°C
> > > > > power1:           N/A  (max =  35.00 W)
> > > > > energy1:      12.62 kJ
> > > > > 
> > > > > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11276
> > > > > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > > > > ---
> > > > >   .../ABI/testing/sysfs-driver-intel-i915-hwmon |  8 ++++
> > > > >   drivers/gpu/drm/i915/i915_hwmon.c             | 39 +++++++++++++++++++
> > > > >   drivers/gpu/drm/i915/intel_mchbar_regs.h      |  4 ++
> > > > >   3 files changed, 51 insertions(+)
> > > > > 
> > > > > diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > > > > index be4141a7522f..a885e5316d02 100644
> > > > > --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > > > > +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > > > > @@ -83,3 +83,11 @@ Contact:	intel-gfx@lists.freedesktop.org
> > > > >   Description:	RO. Fan speed of device in RPM.
> > > > >   		Only supported for particular Intel i915 graphics platforms.
> > > > > +
> > > > > +What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/temp1_input
> > > > > +Date:		November 2024
> > > > > +KernelVersion:	6.12
> > > > > +Contact:	intel-gfx@lists.freedesktop.org
> > > > > +Description:	RO. GPU package temperature in millidegree Celsius.
> > > > > +
> > > > > +		Only supported for particular Intel i915 graphics platforms.
> > > > > diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> > > > > index 17d30f6b84b0..9f1a2300510b 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_hwmon.c
> > > > > +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> > > > > @@ -7,6 +7,7 @@
> > > > >   #include <linux/hwmon-sysfs.h>
> > > > >   #include <linux/jiffies.h>
> > > > >   #include <linux/types.h>
> > > > > +#include <linux/units.h>
> > > > >   #include "i915_drv.h"
> > > > >   #include "i915_hwmon.h"
> > > > > @@ -32,6 +33,7 @@
> > > > >   struct hwm_reg {
> > > > >   	i915_reg_t gt_perf_status;
> > > > > +	i915_reg_t pkg_temp;
> > > > >   	i915_reg_t pkg_power_sku_unit;
> > > > >   	i915_reg_t pkg_power_sku;
> > > > >   	i915_reg_t pkg_rapl_limit;
> > > > > @@ -280,6 +282,7 @@ static const struct attribute_group *hwm_groups[] = {
> > > > >   };
> > > > >   static const struct hwmon_channel_info * const hwm_info[] = {
> > > > > +	HWMON_CHANNEL_INFO(temp, HWMON_T_INPUT),
> > > > >   	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
> > > > >   	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX | HWMON_P_CRIT),
> > > > >   	HWMON_CHANNEL_INFO(energy, HWMON_E_INPUT),
> > > > > @@ -310,6 +313,36 @@ static int hwm_pcode_write_i1(struct drm_i915_private *i915, u32 uval)
> > > > >   				  POWER_SETUP_SUBCOMMAND_WRITE_I1, 0, uval);
> > > > >   }
> > > > > +static umode_t
> > > > > +hwm_temp_is_visible(const struct hwm_drvdata *ddat, u32 attr)
> > > > > +{
> > > > > +	struct i915_hwmon *hwmon = ddat->hwmon;
> > > > > +
> > > > > +	if (attr == hwmon_temp_input && i915_mmio_reg_valid(hwmon->rg.pkg_temp))
> > > > > +		return 0444;
> > > > > +
> > > > > +	return 0;
> > > > > +}
> > > > > +
> > > > > +static int
> > > > > +hwm_temp_read(struct hwm_drvdata *ddat, u32 attr, long *val)
> > > > > +{
> > > > > +	struct i915_hwmon *hwmon = ddat->hwmon;
> > > > > +	intel_wakeref_t wakeref;
> > > > > +	u32 reg_val;
> > > > > +
> > > > > +	if (attr == hwmon_temp_input) {
> > > > > +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> > > > > +			reg_val = intel_uncore_read(ddat->uncore, hwmon->rg.pkg_temp);
> > > > > +
> > > > > +		/* HW register value is in degrees, convert to millidegrees. */
> > > > > +		*val = REG_FIELD_GET(TEMP_MASK, reg_val) * MILLIDEGREE_PER_DEGREE;
> > > > > +		return 0;
> > > > > +	}
> > > > > +
> > > > > +	return -EOPNOTSUPP;
> > > > > +}
> > > > Let's try to have synergy between previous attribute, such as hwm_fan_input,
> > > > and this one.
> > > 
> > > This one's simple enough to be inline IMHO.
> > > Besides, it's already in synergy with hwm_in_read() which has similar
> > > implementation.
> > Agree this is pretty simple to have an any helper but IMO it would have been cleaner to have a switch
> > like hwm_in_read() to return -EOPNOTSUPP in default case. i think that was reason switch case was 
> > used in entire file.
> 
> Extending on the simplicity argument above, if() makes more sense for a single case.
IMO lets prefer the style which was used in this entire file,
that is more readable along with other attributes.
Idea behind switch was scalable attribute for future. 
It is something related to individual preference therefore
 let's prefer the symmetry with other hwmon attributes.

With that
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> 
> Raag
