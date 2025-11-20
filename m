Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9ADC76767
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 23:12:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F28810E095;
	Thu, 20 Nov 2025 22:12:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EcGCyZAp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 549BD10E08A;
 Thu, 20 Nov 2025 22:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763676720; x=1795212720;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yQm8wbXlYFl15nxfNbVlaRJK+J/1+wMFK6XY+9w+LnI=;
 b=EcGCyZApJZIoplLldUXAzdWIc+LZ3Z6O+au3WjRg5MQxHo1/TdX9yAwE
 wWELKVSborbkKv1N043A0do/27tw68Eh4xca+AqSf7BD0On01R/f/fHCQ
 OJXZUBgM806xzvtM3bpninr81o+RNoi7EO8Q+rz5ojymfx/+I6vfSwtzS
 YgeOIKn18tmZt1IWDIzkIRljb0r0oStYFIKe9pfUibuZBRLnxYs4ZNNQx
 NJAaqik6ccZTjm1vsREQZC51AYX+NoAzg6TmRT18pf/w71aBZPpf/1Kgj
 i3xwpgrMMNYOdLTrljtYX7oVN5YoJMi6bokM47WA0vSgvkmwtdMhMaido g==;
X-CSE-ConnectionGUID: 7Trz30LkSwilDYFod7ZaKg==
X-CSE-MsgGUID: TC5A4lFjSv688HIkY1XTng==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65926295"
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="65926295"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 14:12:00 -0800
X-CSE-ConnectionGUID: YpOsOmfjRUW0DVgxBUVrGQ==
X-CSE-MsgGUID: NXJXAO0WS1OkzO6Vx10bfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="191943849"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 14:12:00 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 14:11:59 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 20 Nov 2025 14:11:59 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.67) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 14:11:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qUNNOVFskEr0SId/xuvq0mH3nL2ltRDNyg///MTcg5I1ayj+Qb5TCER+NObJzTRpGyjtT1z1ph2jGIfrbF0OURxA34MJ4SgBj6fI5jmJW5IqYmfo+DB7Wr+BmGWOwJilnrfmbjldDxRGpZWTSFxKkkXkOWp3Srs2P7Y3oULOg4JDJncTt3NpDtvJsZJ11O7KZnffzOf5kdOc3IwGnrJCq7u23UKf1WLmwcKSsC/+lI9qj9JHK5JspWHEOqZqzedSN1JA21SK5CrAFkjzP49NxLREKPx2RqlMvnAPE7juAPHp+Sgi5WfrlHBWCzFMBqJYK2OSxIHVEBN5Ovjw/wfVOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yQm8wbXlYFl15nxfNbVlaRJK+J/1+wMFK6XY+9w+LnI=;
 b=yQIg/kaaAjC4b9R0tOx14eIJ1DIAiGcmQHwm+yahFLHNjRx5OUylT6E6IclzWgmEJvF8GFngVhzRpR/jDhxmLGFXyR46tb+v5m+GjfeOBx3XoNJbW1kpOVWii1rYwYSooxhfr55qOjYeXFpVeDlV6dxGtUxFq1+CtVXWTD9t7Hy3Zmo1nAA04UYhp/M4vVOAQEiIyGbWwp9mSNnzAYxSHZlKMkXC1acAX1lRTjHp++MEERdVe1MvIlzD02ze34iD/d/1khLMOqKibOqAYaAsGabR5bCNdQ5mrGUzONB2RA1GDn/82mWqKV7VlFJjJiRuxmn7i0wE68oEdsOz3AGytg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BL3PR11MB6387.namprd11.prod.outlook.com (2603:10b6:208:3b7::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 22:11:57 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9343.011; Thu, 20 Nov 2025
 22:11:56 +0000
Date: Thu, 20 Nov 2025 16:11:54 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 13/13] drm/xe/vga: use the same
 intel_gmch_vga_set_decode() as i915
Message-ID: <2bkiopdfnvb7clswdyxugft55za25esifpji35mjcmxv7qjctn@2v6het7sh7f4>
References: <cover.1763578288.git.jani.nikula@intel.com>
 <f4121e6c70bac6c26ef3cf51aaf72822f2cb2d54.1763578288.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <f4121e6c70bac6c26ef3cf51aaf72822f2cb2d54.1763578288.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0127.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::12) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|BL3PR11MB6387:EE_
X-MS-Office365-Filtering-Correlation-Id: 37a79a2a-dd45-40d1-a65e-08de2881d1aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9Xuj/+5piKabCDipbzQbu8ioXzDcGXha2Eht6NlqqpbbK4VArfGdOe7wz52n?=
 =?us-ascii?Q?Jzos2eF4luQaplor3ukkOf2EdxFU24lVlIUqoeoB+LpAUn2u+t5NHL2ITK8n?=
 =?us-ascii?Q?6jacBmuDmZ/F4WfRGQXHhLtSf8KQ+GWivebNoY6b4jLRquui9IetAqxOLa8Z?=
 =?us-ascii?Q?N74DO2sbl2CWhYdOyyhr8mm0wesim7PqrPjpZRD0Haxvqn4SG/dO7f1NwXFB?=
 =?us-ascii?Q?AJBal+5K7BK36XuaUmHdsztIxpnqsyawCqfZlN97Pi0YwBpzqqiQAcN0AHUi?=
 =?us-ascii?Q?5nTKK5vh3uNDmKB9csefrJgw7uSU4SCS4GKl7G1piSIlRpzZFIUG3qFBNKPG?=
 =?us-ascii?Q?AYGrjUhmWugHUAgIUxJ7hTJUOJpkssQSAjTvQitCA1uLCyA27OOlDJZ7r8GC?=
 =?us-ascii?Q?lVwiX6EyYSmJisOWD8uKZ5KAXXcPKKIQ5XcvBN+/3j1peTaIVLCJnkJqlBeB?=
 =?us-ascii?Q?uLhU/1WM+ZzB+fHdvgTicydl/o8j2dGUsMqE5G6ivIkh5jOIzYYgEBZkY818?=
 =?us-ascii?Q?1dBEIj3ew2DVUDXPuqU1y2GKchWiiqMC1GKUfaogfoN2r1PqybS4ukNkbgAR?=
 =?us-ascii?Q?lIO6DX/evuXkLs6Hvw2guKWrd8x9Uv0pegdwMkbB4iQKuR3qjLDe0e7yOV7Q?=
 =?us-ascii?Q?FmVUIqMYr7Y2GApqfPG5212gtUYXuVuwvT9en4N1mAsTabcdvxm4qOKQIMAG?=
 =?us-ascii?Q?GeHn47vD5S+z0aDbl7mOTsdlpT9gx1nQFzFWbox6U5xDp+AvUlQSBu+EKOcZ?=
 =?us-ascii?Q?BYCLokwbKVW5I9Vf+VBrtevor0Fv7rhn+ifcNPdgza6LWYvkLuzFGsiItrs4?=
 =?us-ascii?Q?RRKi7J8ZR1PhcOY1o3EZ/3geLN5se2vhBCUYh9Z4zC7ajRtEW8A4P1rIC0FC?=
 =?us-ascii?Q?wCW+NBpW4y6HmngMU8DuUTn1939kz+HOq7x9x1s3O0KFX9kw5NvpTGECvH9O?=
 =?us-ascii?Q?d4x/k2N7hZROCX+DbMek5F1TTwZnEWO5YiUzZ/G6mpUz0KfS6hCAOOeuX9DZ?=
 =?us-ascii?Q?uEJz5X0sCpvH9VQaeIp9aXXWIptCaHb10JuaIA3jjPnQkRvhrlwhpPeW6zj0?=
 =?us-ascii?Q?2NK011auFx05u8aws8xbDvmmjnv6050RqhPduU25/yJOSv9VlNhib0G2/5CY?=
 =?us-ascii?Q?qHcK3ncoE8CLUUMZ2YvyJCy22YYeop1Qv7Txj5CEd7QLLlfP4QEdxlLt9tlJ?=
 =?us-ascii?Q?hUvc8RzJ65uihN2XPs/E3pE/5r3fi/ml+B38y1v8FEWIMTfdw9EQk0lTWl5Z?=
 =?us-ascii?Q?Me/ACWTr3sDv7esi1rGcHfCrkMwup3+56jx/PBwFo4Ck413If4Pi+6TBdNBU?=
 =?us-ascii?Q?8qvGZjUP9K+sQMEd5J2+F+N0je9IYPq5bX3usQuENrcV5gK1xrcNm5pKSIOy?=
 =?us-ascii?Q?/eVPK13Arpi1Ql3Yn//Mv1iRm2LTJZYAr3g5vpxi0JfWgqwTKsHMhuDyIpel?=
 =?us-ascii?Q?Uf+RJhdLrD/4cYumY4vdHxEk1HNxVPbN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7e5QWjPt7iORr4SqY7zjW26/TbGLtP2KZt2dVPQzEDQQIVTjfDwvd6EnlyW3?=
 =?us-ascii?Q?wgteB0kudPUChh0TC7d6Ty+ZbkxQYZ2hYrwUf3XCI4Yi4Wecl7KQ8FSMMT8n?=
 =?us-ascii?Q?Cwfq4XCip4tbMpkiRU///P5lNWcOdbKUcb1C8FybFnDTmEPnnlZut/wBulTR?=
 =?us-ascii?Q?YgvqScTDkIWj4kmtpGeiKDcqxemqAxva8JFIiWBqwHRoDQt29vySq0L1Ph8P?=
 =?us-ascii?Q?8aD17/rnzQc0khWoXGdwga+cFDJZqz4jCqDZKbCDPArgZC8+ba99eWAUkNME?=
 =?us-ascii?Q?tqg//FxR+777cHKb3UpJLTj+Ru7Fpq9P+TbLAA8uJhHCBo7yxcjYrHkUB/eH?=
 =?us-ascii?Q?3s/2FEaeSvW96PTkDnaLkfEU0VBFfyhozmjhYvAAvweD/oJxj3dQ6OasurFl?=
 =?us-ascii?Q?qqSBqElkZcaQnWpKwBhgR9vmPJaSYZT3erSNXARa5CynTiel4Y4NVGmAsrYA?=
 =?us-ascii?Q?PN5a7tJnHRZhfTOXE/iZVrt31q94lzOBHrydH2BrsMFR2nVxOfUSLCa1n6iU?=
 =?us-ascii?Q?DAFmj98PjlrnLTEG+pwyCk2bN3Gvosm4i63CUYkileWzfevyJqgLuSPGcyA7?=
 =?us-ascii?Q?+Vb3FvI88t3DtqPxFv14SIz3pTdIPuKc5YuPRdvOhy6iJd7suf4DGzcIFdYq?=
 =?us-ascii?Q?c+KtYi1tTBEWR8g88UvviH07b1AhrNqGncEG9k8jBJlpvEiQYGDQfD4p1i++?=
 =?us-ascii?Q?AEVMyzv0jAd8DO7GSNBW9D48/bBo9eO2bU1s0hYqwbITU+99x0FtF1wkx5ZY?=
 =?us-ascii?Q?dLLaTfIHLxljiNjmIpj0clgIrGJyzQpFy3uj1heNxAmXlEyQR3rGnRip4jrq?=
 =?us-ascii?Q?9uOkW+/ykW00i+25y6FpjnFQicRXuhmXAQzufleJ+eOz97jZCCaCWoo2LzOS?=
 =?us-ascii?Q?vgn6fkiBhrebBTA3mbXBmf2gSgDwC4vSgW+Jm4Gs29XNUX9z+S9qhGgqegCN?=
 =?us-ascii?Q?1VcwqAwSV8PkiOyRJus+dAQRDYppDlRfdsTf+2PYTsd1MK8+8JnEdGNqDJ7i?=
 =?us-ascii?Q?TsAngt0cf+4G3Qtv1/1S21HdCtlLSwwXoIaCiY1tOcoiNw/7nGWDglzC1XAD?=
 =?us-ascii?Q?bpcP/5VWGIercgUIVy0oNZdguQu2PhnfDwoLz5yStl1Yz3FXI+m3oz4A0Qdg?=
 =?us-ascii?Q?W/jlFjwhYAKbS6bYcIPx9DvI28kzYlf/Or0tFC2+8AEvp37EPOLFWNrtIEHc?=
 =?us-ascii?Q?uX/5kvciQDeejMXR+m6RiQUSb/b4Ztj8aQot1fYolKwN8vHbE3yMq5ueZqVq?=
 =?us-ascii?Q?opse2ssHp8zc3eLXcjWIvxLwbh3nR0P+tQoYl2cJD2Xzs/iwpvsGKVGoKOLZ?=
 =?us-ascii?Q?Y68jOHiyFZPIpJX84yuFjDdFuPRfu1KChg4P6TnxmuhzfrOn/QXgRRnr11SQ?=
 =?us-ascii?Q?GxW7p4GOON2rDMuvqezNZn86ARo56i6Mj1Y7NQwjSMAJc1tM1NIRytxxeKOW?=
 =?us-ascii?Q?Ti3Q27lYAqxGCclRClFzTTcagRRlaWu0aQQikITatcvaFKPQ+owo/Gd+U99V?=
 =?us-ascii?Q?IJYyWRsO1eK6Q1puphmJ3YMjzc3l0Z9VHOmUyRrbyTU7znUnEVNX+ChTQEzx?=
 =?us-ascii?Q?z9TsE14ZKJB/UwJkae83NL73pNGaVBtz0fmDYWrrNwHU9QXxncr6uDgC0vRA?=
 =?us-ascii?Q?Ng=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 37a79a2a-dd45-40d1-a65e-08de2881d1aa
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 22:11:56.8453 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ja9U0jvMt4qdl/SN03vj961AdYCptmP0UgWHA7FSVh2VSqx1v697iIleuhQm2BmGCnUHU/REp3AeMz6igs0D3jH6YlO+3+mswuVIb8kG43w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6387
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

On Wed, Nov 19, 2025 at 08:52:52PM +0200, Jani Nikula wrote:
>Drop the #ifdef I915, and use the same intel_gmch_vga_set_decode() for
>both i915 and xe.

I hope this doesn't regress our display side on other archs. We are very
close to having display working, but this messing with VGA is likely to
break it.

See "drm/i915/display: Stop touching vga on post enable", which is
needed for xe to use a DG2/BMG with a raspberry pi (+pci/resources
branch + a few other patches).

Lucas De Marchi
