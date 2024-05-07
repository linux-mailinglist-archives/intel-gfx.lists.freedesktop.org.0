Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE80F8BE27B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 14:48:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE6910E1A9;
	Tue,  7 May 2024 12:48:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OEqtoSiZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BAB410E1A9
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 12:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715086111; x=1746622111;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=tmSmpLcGMFmuMhNdUlod10mJstrThDS8SPo/Fv0JG5A=;
 b=OEqtoSiZEGbcqFHPNQdpe+5Uk+o71Oqlfu9oZxWq4ENIBZJvezucf6kJ
 K/lm0JMER3KJxrMM7Sqxa6qz2q7F/TCuu+58vVpYcb+9UjW6ioEGTCAvg
 W8Mw4GaU4AK1UJDimRzkdS5DoIKupgcUBeEck3OZ8IkPA1D1Oy6QmDHvC
 vj9Kyq+WJ+KxV/0GP/NEzuZkdBOtuVxux8sdB8UpitpYBvyAC+79vcC0Q
 DdjM6Bqw7Irj/kJsfyWrwT4/46PWLuSuXgKxpgZgV82eqZiEpfPVg2k2A
 fB5Fc36VeAIPXdcaJVGnNSLrzXYWFVOxjG8xQz+g4TmW9DMD2b8PYaXjc A==;
X-CSE-ConnectionGUID: vJrba5trQmKeFMWt+KMcfg==
X-CSE-MsgGUID: 6S1455VVRdCwP8IBbnzBxw==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="14685246"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="14685246"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 05:48:30 -0700
X-CSE-ConnectionGUID: O48Y7cpdSGiD+q2JKrlgCw==
X-CSE-MsgGUID: NwY0sGvuRPiaAgVCR/9aug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="28571740"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 May 2024 05:48:29 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 7 May 2024 05:48:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 7 May 2024 05:48:29 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 7 May 2024 05:48:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oV/L6f3MJsoDWC8lPTTJu9Y4k1jKnE2NO14PhxKhOah7Z0R9j1WDCszVph7dxDjrmbrWPl5ESgON+4QTx+SsBgViItAPQStiVG8Rze9RaoFq+7/L9rdjnwgf0EMXwsJn4Dz03E2mDCgfDIbOMWI1bNcFcd04K5ACWfOKfeuLdqbTCpxXgfVzJO0delKT3rf8n4QRM992YLi3S3alqcrepdHEXZfX0Xp7NKkaJX5+Aq+PQHDMIdEy++jMHgEddWoMAbwp+tqZmL74jycGSOGoiuEQaxhkcJp6lOvd2AA2RjQVcr4oQCt02dnO16DjSzQU2bvAnW1+eOySm8TvBCyrbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bx9bsTwRrpBZZ0JmMhD6f+xlmqeY+XbQZSu4HpVHUfQ=;
 b=VlIEcjLP3/pw9z9wX0F9OmSqqfnJmETF/riy8V0YrL8p/Mp5eEyTo2I4L8C75IdmCsO3m9AufjU35aBDBhgduyY9NNGTCg1zV+kl6HZvvqakG+WjovKWsQcW/Y6dDhCny7FDLZ3/reUMRKmURota1CBCtFFWVTBEjmc5HbXiEMbn5C2uaE1CnRF1f1m290I/1IeedCnvgE9ggpK2hkKKPfTUKO7nucUG6Xe2Q+W6PlsCdyp2xLTV1A1TknyIoHJaLTn9V4hf66LdBKrgIW8CRBeFWpHoZtvKvKCXOs1LHFb7NJ9+HBqD9pKZsOGgkT3vupLAYb2o183aK9N2q95AZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CYYPR11MB8360.namprd11.prod.outlook.com (2603:10b6:930:c3::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.42; Tue, 7 May
 2024 12:48:20 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.041; Tue, 7 May 2024
 12:48:20 +0000
Date: Tue, 7 May 2024 08:48:15 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Kumar, Naveen1" <naveen1.kumar@intel.com>, <jose.souza@intel.com>, "Paulo
 Zanoni" <paulo.r.zanoni@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Kulkarni, Vandita"
 <vandita.kulkarni@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH] drm/i915/display: Introduce Display Metrics info
Message-ID: <ZjojDxgqzXDGo7ux@intel.com>
References: <20240405220832.689229-1-rodrigo.vivi@intel.com>
 <DM6PR11MB32586294016CD6DD51F1D730A71C2@DM6PR11MB3258.namprd11.prod.outlook.com>
 <ZjkRx4EymaPTh1CZ@intel.com>
 <DM6PR11MB3258FD6237F6B92ABC227D73A7E42@DM6PR11MB3258.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM6PR11MB3258FD6237F6B92ABC227D73A7E42@DM6PR11MB3258.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR13CA0118.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::33) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CYYPR11MB8360:EE_
X-MS-Office365-Filtering-Correlation-Id: 57adf277-1107-4058-951e-08dc6e93f923
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?3wO7GPli+cJyqp1OMGGqMgu3/z02biZIm4Za4q6JxWcTIRibkeqMGOu2eX?=
 =?iso-8859-1?Q?l1+NWlvcM9vDTW/U6tDs8UP2rE6cInieljFVkKLw5ydm2rY/GpbIuIS+yo?=
 =?iso-8859-1?Q?Civvjl7VTInhWF0BvsuRpXoFyXCp0ORJDNT/wklO6Bfvow+6q+RNzgn/1o?=
 =?iso-8859-1?Q?HZh3rpdL56l9v/L/PvvIoWkOazJU921oKNLy5oLXt53m35f0JU258Wb9vG?=
 =?iso-8859-1?Q?1yafVUeK4MaDjUbaW0MR/EfByHsmGeiJkhzaXwf5Pw5WJRwG4bMeTfNQe6?=
 =?iso-8859-1?Q?O69N4vz6bH47PIQS3qgCvWXytr53ke2DgiJMhAObMG7K8fhmFQg6U6ii2i?=
 =?iso-8859-1?Q?lqgvMDKk5Mmj2x/7WV82wN+ocsuEnYvmnZ7DJuspIAN/yfZUvHS6DE5AUZ?=
 =?iso-8859-1?Q?zpDjTs0oo3VR5ruYvZoVjbcTMdQWqIHzpQmOCzpJtCZYxCpOqUDQewzVuY?=
 =?iso-8859-1?Q?Zhtlg82hFTly0ayZruBewzlmQg0QJNQ+xCDnMFNnSdKusUPerzaWuA5KLi?=
 =?iso-8859-1?Q?tX7Qs887cIulidwhD72ppy6waKrNB+Agr/FW7ekK2iJaIdfAhkNUrmtHRE?=
 =?iso-8859-1?Q?nzzrXxGa9Hhk1k1K7NiUblB/Ie2vpTsmEuOrA1OCZN+qaL8BuBM2nK6ww5?=
 =?iso-8859-1?Q?A+2nLWA1MrZGlhxi/m44UxLBspj8Evm+f2ji63yYpjvxn+SA3aZk2vGDlN?=
 =?iso-8859-1?Q?xo7+TYSMNy/ltoVTlKhAOncSdKmTCVc4jhuMkXdAfMBguA76AqXBekIoxd?=
 =?iso-8859-1?Q?uFiwPCkv0jLr0ZNKonzBAVszplD2mY/JlQ7a/bUw89VF9UOP0UoUFtDgyL?=
 =?iso-8859-1?Q?RoD07NCd6hhjsSeRQ9WgRYxm6b78vxa1u2KvsYuSRvxtqAOh/uFCyvCOVP?=
 =?iso-8859-1?Q?MzH9jIVGUAkWeX35aAu3nsnL6iU55rrTRFuqeU02L3Le6fg+kTka+O52JK?=
 =?iso-8859-1?Q?w9TkY1AmyTiDmZe6Ug4+x88pjBna0xzXCTNB/NGlq+A8cPXLyWduL3dIAP?=
 =?iso-8859-1?Q?41H1mFGK5SDitsBPqmzfoagM8LR7IZmaYN6skvPXo3tlB7gc5qMwYxDmm6?=
 =?iso-8859-1?Q?Y+Hkvmtrmj94TzdI0BFxVQbVqZwyNV67y6HFYeHmd3ZOZAytsL3jIjQGC4?=
 =?iso-8859-1?Q?M+/43hCh6kdBgkYSrd+aMDmS8lGXWcQlDp5sPpR7ofWqnC+wt9S+TRoQG5?=
 =?iso-8859-1?Q?UKR5XW7pUZ14SWTvaH4qRCQ/BZw0APSu5hNElCC2ejTXCD/mW/upa2nFKg?=
 =?iso-8859-1?Q?m92w5s5XhCNWX+/CuUUcOPVzlR7Z8Jl4TVKdybwio=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?y3oWNjjSYuU9ba1xFssTwgql2/zcjJTJUQziTU+p9qIWM1Crxv0PI1tR84?=
 =?iso-8859-1?Q?DVhAKWElowAFGnnpizrZabMfGiEVMzk90fkP8YyvN3KBgmnhP0+jsbOPn1?=
 =?iso-8859-1?Q?lpBPJ3wjsK6W/Xo2xRLHbbWV/RrsCtSVPbugLdQp045HyvbRcowFZn3u9S?=
 =?iso-8859-1?Q?5QoZgOfsFGPlzJ9rlj0aYnUVCVFlv7S09Jq4COiR9OVN7tl+9hAyaUepsg?=
 =?iso-8859-1?Q?hwIuFNdL0Ux/45zvAMDZdeqAxMcp2RLgkmbqvVfQYPUH85vgheetYrBq8R?=
 =?iso-8859-1?Q?6WyhLSsORgo5zDP97nj32HcgWz9yRVUCsPQxWWeSOmZKHGrfqUXMhtMfG+?=
 =?iso-8859-1?Q?03c8RhgWgOrjQJrEs9ezV+4CFLfJOygb+j69pcay4LDi/shnk4M4Q3epU3?=
 =?iso-8859-1?Q?AWbl6yUlgz1cc1BIAOfk39QwDHXD3r/hjsBbmfoHuItsZrY8Q/RJNuWR3H?=
 =?iso-8859-1?Q?hWE0r39tubScbEbFJQ+BZkszDf7B5xL/oCab5fWcc4PjjnMn9pyahrkph3?=
 =?iso-8859-1?Q?QW1r2+WzS9uNs3lbiBWviCpfgbz3Jv9v2LhKipvLcHfFSX3dwqDSRyv+jo?=
 =?iso-8859-1?Q?s3ptLfYEqDwNw3MPUF8Pf2a9wnbthW4vWCN14RHjf+IU6CmTZwQYK3rula?=
 =?iso-8859-1?Q?HUXdl7hgj04ALg+YPHtXhm4WugO0WJy6Q+LP3gAwjInnmxiE6GLa3IZTNq?=
 =?iso-8859-1?Q?Zg9xpqL5Tu/KFd0zoGPfVdnhxl9PrAcfW37QiPVLxOk3PJYFPxfH5wVRTD?=
 =?iso-8859-1?Q?WxQhlOsJNJEXM97fWTRS+kb4jp8iKnAIMEanScRmtcEdZ12ob9lysdxcpP?=
 =?iso-8859-1?Q?IwJbCjOgIi05XysOVw32yvfehFR7cUwuSN1o++onNWVNsGMyR7FwWqWQ+P?=
 =?iso-8859-1?Q?Z7jIYM7xrFjvAxa9CyHwHGarwEP5MrwrUvwC5zXrprKdCzNhhGyZ4+cy+M?=
 =?iso-8859-1?Q?X2MoDMcZ5Na/7yZ8qhpx/N7X7ywgS1S/CsWeCUXODCKQREgpaD6dqbI5wA?=
 =?iso-8859-1?Q?kNvf3EuPyR+tULQC5lVBGU2yb0epZ8LmgKahAZMbtrLFdBEHeQySH+/+yC?=
 =?iso-8859-1?Q?uSjirI/lqvYaz7MwtVHkHNEfbmCnhyCdoZ+XgY/RjFLCmfCKd1S5UvTlDp?=
 =?iso-8859-1?Q?j6kL29BSr77oanrcetxwvNx58hJAsByftmuJmg46oDpvs12Ov6dW7pNLmx?=
 =?iso-8859-1?Q?eCDglNTlqj5d+Ai4+gCFawjjRaHlRuFpQaBeedc/ADNJ5rFDQsSiSaknxC?=
 =?iso-8859-1?Q?D9TL7GBRE2J4XmqdCdm1KZUAWB4/kRqPLUHQoA7lMhF38uOYTM3Fuo+nCZ?=
 =?iso-8859-1?Q?lLKriVcezH5JCXXmUBcUMAFgyov0YewV+tEYcOtr6BXx9IVyRZ0Njd/Xhq?=
 =?iso-8859-1?Q?qzMaPw48eV5BmnZvksvRRzbI2Y+t/M9p5nUfDWNsXEkzsU19xMpk5Ja9Sh?=
 =?iso-8859-1?Q?6I0oFn/OQ4JpcgbAZpoA5cs3V0jqhDnYTsVQrre4njHNrenLs4++MK0Rqe?=
 =?iso-8859-1?Q?bt+lYJujTHfDRxXTLo9B6kV3iOjCiU0Ax3FfrpqyH5SsDfKcJnGLZ0cVIk?=
 =?iso-8859-1?Q?tMOl3sXdRyQ4/5w/w+5CFflgC89KJGAvKFcwHFf97tKH2ZxB/duQBvrgW2?=
 =?iso-8859-1?Q?iCTmSaZOfaENQhvWCbyl3gCDqcPNszcVzr?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57adf277-1107-4058-951e-08dc6e93f923
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2024 12:48:20.5171 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AxcKeG8+UYtLxGyNONGxs2vOPu7PISjEaWUJDgrawDClyCILVmCjeGf3Ms8PerTHUd21ymonIAk8978h5i5VZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8360
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

On Mon, May 06, 2024 at 11:19:56PM -0400, Kumar, Naveen1 wrote:
> 
> 
> >-----Original Message-----
> >From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> >Sent: Monday, May 6, 2024 10:52 PM
> >To: Kumar, Naveen1 <naveen1.kumar@intel.com>
> >Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> >Kulkarni, Vandita <vandita.kulkarni@intel.com>; Nikula, Jani
> ><jani.nikula@intel.com>; Belgaumkar, Vinay <vinay.belgaumkar@intel.com>;
> >Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> >Subject: Re: [PATCH] drm/i915/display: Introduce Display Metrics info
> >
> >On Mon, May 06, 2024 at 06:03:17AM -0400, Kumar, Naveen1 wrote:
> >>
> >>
> >> >-----Original Message-----
> >> >From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> >> >Sent: Saturday, April 6, 2024 3:39 AM
> >> >To: intel-gfx@lists.freedesktop.org
> >> >Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Shankar, Uma
> >> ><uma.shankar@intel.com>; Kulkarni, Vandita
> >> ><vandita.kulkarni@intel.com>; Kumar, Naveen1
> >> ><naveen1.kumar@intel.com>; Nikula, Jani <jani.nikula@intel.com>;
> >> >Belgaumkar, Vinay <vinay.belgaumkar@intel.com>
> >> >Subject: [PATCH] drm/i915/display: Introduce Display Metrics info
> >> >
> >> >Introduce a display metrics information through debugfs for a better
> >> >view of the vblank and page flips, in special Async flips behavior.
> >> >
> >> >There is currently an overall expectation that whenever
> >> >vblank_mode=0 is used with an graphics application, that
> >> >automatically async_flips are happening. However, while implementing
> >> >the Display Metrics for GuC SLPC, it was observed that it is not
> >> >necessarily true for many of the expected cases.
> >> >
> >> >So, while the GuC SLPC side of the metrics doesn't get ready, let's
> >> >at least bring the debugfs view of it so we can work to understand
> >> >and fix any potential issue around our async vblanks.
> >> >
> >> >Please notice that the every struct here follows exactly the GuC
> >> >shared data buffer, so the next step of the integration would be
> >> >smooth and almost transparent to this intel_metrics on the display side.
> >> >
> >> >Cc: Uma Shankar <uma.shankar@intel.com>
> >> >Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> >> >Cc: Naveen Kumar <naveen1.kumar@intel.com>
> >> >Cc: Jani Nikula <jani.nikula@intel.com>
> >> >Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> >> >Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >> >---
> >> > drivers/gpu/drm/i915/Makefile                 |   1 +
> >> > drivers/gpu/drm/i915/display/intel_display.c  |  15 +-
> >> > .../gpu/drm/i915/display/intel_display_core.h |   2 +
> >> > .../drm/i915/display/intel_display_debugfs.c  |  12 +
> >> > .../drm/i915/display/intel_display_driver.c   |   5 +
> >> > .../gpu/drm/i915/display/intel_display_irq.c  |   3 +
> >> > drivers/gpu/drm/i915/display/intel_metrics.c  | 356
> >> >++++++++++++++++++ drivers/gpu/drm/i915/display/intel_metrics.h  |  27
> >++
> >> > .../drm/i915/display/skl_universal_plane.c    |   3 +
> >> > drivers/gpu/drm/xe/Makefile                   |   1 +
> >> > 10 files changed, 424 insertions(+), 1 deletion(-)  create mode
> >> >100644 drivers/gpu/drm/i915/display/intel_metrics.c
> >> > create mode 100644 drivers/gpu/drm/i915/display/intel_metrics.h
> >> >
> >> >diff --git a/drivers/gpu/drm/i915/Makefile
> >> >b/drivers/gpu/drm/i915/Makefile index af9e871daf1d..a3c8d9f5614c
> >> >100644
> >> >--- a/drivers/gpu/drm/i915/Makefile
> >> >+++ b/drivers/gpu/drm/i915/Makefile
> >> >@@ -291,6 +291,7 @@ i915-y += \
> >> > 	display/intel_link_bw.o \
> >> > 	display/intel_load_detect.o \
> >> > 	display/intel_lpe_audio.o \
> >> >+	display/intel_metrics.o \
> >> > 	display/intel_modeset_lock.o \
> >> > 	display/intel_modeset_setup.o \
> >> > 	display/intel_modeset_verify.o \
> >> >diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> >> >b/drivers/gpu/drm/i915/display/intel_display.c
> >> >index a481c9218138..ca30b8d48e1f 100644
> >> >--- a/drivers/gpu/drm/i915/display/intel_display.c
> >> >+++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> >@@ -94,6 +94,7 @@
> >> > #include "intel_link_bw.h"
> >> > #include "intel_lvds.h"
> >> > #include "intel_lvds_regs.h"
> >> >+#include "intel_metrics.h"
> >> > #include "intel_modeset_setup.h"
> >> > #include "intel_modeset_verify.h"
> >> > #include "intel_overlay.h"
> >> >@@ -1021,11 +1022,15 @@ static void intel_post_plane_update(struct
> >> >intel_atomic_state *state,
> >> > 				    struct intel_crtc *crtc)
> >> > {
> >> > 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> >> >+	struct intel_display *display = &dev_priv->display;
> >> > 	const struct intel_crtc_state *old_crtc_state =
> >> > 		intel_atomic_get_old_crtc_state(state, crtc);
> >> > 	const struct intel_crtc_state *new_crtc_state =
> >> > 		intel_atomic_get_new_crtc_state(state, crtc);
> >> > 	enum pipe pipe = crtc->pipe;
> >> >+	const struct intel_plane_state __maybe_unused *plane_state;
> >> >+	struct intel_plane *plane;
> >> >+	int i;
> >> >
> >> > 	intel_psr_post_plane_update(state, crtc);
> >> >
> >> >@@ -1057,6 +1062,12 @@ static void intel_post_plane_update(struct
> >> >intel_atomic_state *state,
> >> >
> >> > 	if (audio_enabling(old_crtc_state, new_crtc_state))
> >> > 		intel_encoders_audio_enable(state, crtc);
> >> >+
> >> >+	if (!new_crtc_state->do_async_flip) {
> >> >+		for_each_new_intel_plane_in_state(state, plane, plane_state, i)
> >> >+			intel_metrics_flip(display, new_crtc_state, plane->id,
> >> >+					   false);
> >> >+	}
> >> > }
> >> >
> >> > static void intel_crtc_enable_flip_done(struct intel_atomic_state
> >> >*state, @@ -
> >> >7139,6 +7150,7 @@ static void intel_atomic_commit_tail(struct
> >> >intel_atomic_state *state)  {
> >> > 	struct drm_device *dev = state->base.dev;
> >> > 	struct drm_i915_private *dev_priv = to_i915(dev);
> >> >+	struct intel_display *display = &dev_priv->display;
> >> > 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
> >> > 	struct intel_crtc *crtc;
> >> > 	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
> >@@
> >> >-7261,7 +7273,6 @@ static void intel_atomic_commit_tail(struct
> >> >intel_atomic_state *state)
> >> > 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> >> > 		if (new_crtc_state->do_async_flip)
> >> > 			intel_crtc_disable_flip_done(state, crtc);
> >> >-
> >> > 		intel_color_wait_commit(new_crtc_state);
> >> > 	}
> >> >
> >> >@@ -7314,6 +7325,8 @@ static void intel_atomic_commit_tail(struct
> >> >intel_atomic_state *state)
> >> > 		 * FIXME get rid of this funny new->old swapping
> >> > 		 */
> >> > 		old_crtc_state->dsb = fetch_and_zero(&new_crtc_state->dsb);
> >> >+
> >> >+		intel_metrics_refresh_info(display, new_crtc_state);
> >> > 	}
> >> >
> >> > 	/* Underruns don't always raise interrupts, so check manually */
> >> >diff -- git a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> >b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> >index 2167dbee5eea..992db9098566 100644
> >> >--- a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> >+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> >@@ -42,6 +42,7 @@ struct intel_cdclk_vals;  struct intel_color_funcs;
> >> >struct intel_crtc;  struct intel_crtc_state;
> >> >+struct intel_display_metrics;
> >> > struct intel_dmc;
> >> > struct intel_dpll_funcs;
> >> > struct intel_dpll_mgr;
> >> >@@ -530,6 +531,7 @@ struct intel_display {
> >> > 	struct intel_fbc *fbc[I915_MAX_FBCS];
> >> > 	struct intel_frontbuffer_tracking fb_tracking;
> >> > 	struct intel_hotplug hotplug;
> >> >+	struct intel_display_metrics *metrics;
> >> > 	struct intel_opregion *opregion;
> >> > 	struct intel_overlay *overlay;
> >> > 	struct intel_display_params params; diff --git
> >> >a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >> >b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >> >index 3e364891dcd0..f05b9a9ddee0 100644
> >> >--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >> >+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >> >@@ -30,6 +30,7 @@
> >> > #include "intel_hdcp.h"
> >> > #include "intel_hdmi.h"
> >> > #include "intel_hotplug.h"
> >> >+#include "intel_metrics.h"
> >> > #include "intel_panel.h"
> >> > #include "intel_psr.h"
> >> > #include "intel_psr_regs.h"
> >> >@@ -642,6 +643,16 @@ static int i915_display_capabilities(struct
> >> >seq_file *m, void *unused)
> >> > 	return 0;
> >> > }
> >> >
> >> >+static int i915_display_metrics(struct seq_file *m, void *unused) {
> >> >+	struct drm_i915_private *i915 = node_to_i915(m->private);
> >> >+	struct drm_printer p = drm_seq_file_printer(m);
> >> >+
> >> >+	intel_metrics_show(&i915->display, &p);
> >> >+
> >> >+	return 0;
> >> >+}
> >> >+
> >> > static int i915_shared_dplls_info(struct seq_file *m, void *unused)  {
> >> > 	struct drm_i915_private *dev_priv = node_to_i915(m->private); @@ -
> >> >1059,6 +1070,7 @@ static const struct drm_info_list
> >> >intel_display_debugfs_list[] = {
> >> > 	{"i915_power_domain_info", i915_power_domain_info, 0},
> >> > 	{"i915_display_info", i915_display_info, 0},
> >> > 	{"i915_display_capabilities", i915_display_capabilities, 0},
> >> >+	{"i915_display_metrics", i915_display_metrics, 0},
> >> > 	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
> >> > 	{"i915_dp_mst_info", i915_dp_mst_info, 0},
> >> > 	{"i915_ddb_info", i915_ddb_info, 0}, diff --git
> >> >a/drivers/gpu/drm/i915/display/intel_display_driver.c
> >> >b/drivers/gpu/drm/i915/display/intel_display_driver.c
> >> >index 87dd07e0d138..767b2d5b3826 100644
> >> >--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> >> >+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> >> >@@ -46,6 +46,7 @@
> >> > #include "intel_hdcp.h"
> >> > #include "intel_hotplug.h"
> >> > #include "intel_hti.h"
> >> >+#include "intel_metrics.h"
> >> > #include "intel_modeset_lock.h"
> >> > #include "intel_modeset_setup.h"
> >> > #include "intel_opregion.h"
> >> >@@ -514,6 +515,8 @@ int intel_display_driver_probe(struct
> >> >drm_i915_private *i915)
> >> >
> >> > 	intel_overlay_setup(i915);
> >> >
> >> >+	intel_metrics_init(&i915->display);
> >> >+
> >> > 	ret = intel_fbdev_init(&i915->drm);
> >> > 	if (ret)
> >> > 		return ret;
> >> >@@ -611,6 +614,8 @@ void intel_display_driver_remove_noirq(struct
> >> >drm_i915_private *i915)
> >> >
> >> > 	intel_dp_tunnel_mgr_cleanup(i915);
> >> >
> >> >+	intel_metrics_fini(&i915->display);
> >> >+
> >> > 	intel_overlay_cleanup(i915);
> >> >
> >> > 	intel_gmbus_teardown(i915);
> >> >diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> >> >b/drivers/gpu/drm/i915/display/intel_display_irq.c
> >> >index f846c5b108b5..202400a771b2 100644
> >> >--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> >> >+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> >> >@@ -18,6 +18,7 @@
> >> > #include "intel_fifo_underrun.h"
> >> > #include "intel_gmbus.h"
> >> > #include "intel_hotplug_irq.h"
> >> >+#include "intel_metrics.h"
> >> > #include "intel_pmdemand.h"
> >> > #include "intel_psr.h"
> >> > #include "intel_psr_regs.h"
> >> >@@ -25,8 +26,10 @@
> >> > static void
> >> > intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe
> >> >pipe)  {
> >> >+	struct intel_display *display = &dev_priv->display;
> >> > 	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
> >> >
> >> >+	intel_metrics_vblank(display, crtc);
> >> > 	drm_crtc_handle_vblank(&crtc->base);
> >> > }
> >> >
> >> >diff --git a/drivers/gpu/drm/i915/display/intel_metrics.c
> >> >b/drivers/gpu/drm/i915/display/intel_metrics.c
> >> >new file mode 100644
> >> >index 000000000000..2cb2b8189b25
> >> >--- /dev/null
> >> >+++ b/drivers/gpu/drm/i915/display/intel_metrics.c
> >> >@@ -0,0 +1,356 @@
> >> >+// SPDX-License-Identifier: MIT
> >> >+/*
> >> >+ * Copyright (c) 2024 Intel Corporation  */
> >> >+
> >> >+#include "intel_metrics.h"
> >> >+
> >> >+#include <drm/drm_modes.h>
> >> >+#include <drm/drm_print.h>
> >> >+
> >> >+#include "i915_drv.h"
> >> >+#include "intel_de.h"
> >> >+#include "intel_display_types.h"
> >> >+
> >> >+/**
> >> >+ * Display Metrics
> >> >+ *
> >> >+ * Provide some display activity overview such as active refresh
> >> >+rates,
> >> >+ * vblank activity and page flip activities.
> >> >+ * For now it is informative debug only, but later it will be
> >> >+expanded
> >> >+ * to be used for GT frequency selection by GuC SLPC.
> >> >+ */
> >> >+
> >> >+/*
> >> >+ * An event using an work queue is used to avoid any disturbance in
> >> >+the
> >> >+ * critical path that could cause performance impacts.
> >> >+ */
> >> >+struct display_event {
> >> >+	struct work_struct work;
> >> >+	struct drm_i915_private *i915;
> >> >+	struct intel_display *display;
> >> >+	bool is_vblank;
> >> >+	int pipe;
> >> >+	int plane;
> >> >+	bool async_flip;
> >> >+};
> >> >+
> >> >+/*
> >> >+ * Although we could simply save this inside our crtc structs, we
> >> >+are
> >> >+ * already mimicking the GuC SLPC defition of the display data, for
> >> >+future
> >> >+ * usage.
> >> >+ */
> >> >+#define MAX_PIPES		8
> >> >+#define MAX_PLANES_PER_PIPE	8
> >> >+
> >> >+struct display_global_info {
> >> >+	u32 version:8;
> >> >+	u32 num_pipes:4;
> >> >+	u32 num_planes_per_pipe:4;
> >> >+	u32 reserved_1:16;
> >> >+	u32 refresh_count:16;
> >> >+	u32 vblank_count:16;
> >> >+	u32 flip_count:16;
> >> >+	u32 reserved_2:16;
> >> >+	u32 reserved_3[13];
> >> >+} __packed;
> >> >+
> >> >+struct display_refresh_info {
> >> >+	u32 refresh_interval:16;
> >> >+	u32 is_variable:1;
> >> >+	u32 reserved:15;
> >> >+} __packed;
> >> >+
> >> >+/*
> >> >+ * When used with GuC SLPC, the host must update each 32-bit part
> >> >+with a single
> >> >+ * atomic write so that SLPC will read the contained bit fields together.
> >> >+ * The host must update the two parts in order - total flip count
> >> >+and timestamp
> >> >+ * first, vsync and async flip counts second.
> >> >+ * Hence, these items are not defined with individual bitfields.
> >> >+ */
> >> >+#define FLIP_P1_LAST		REG_GENMASK(31, 7)
> >> >+#define FLIP_P1_TOTAL_COUNT	REG_GENMASK(6, 0)
> >> >+#define FLIP_P2_ASYNC_COUNT	REG_GENMASK(31, 16)
> >> >+#define FLIP_P2_VSYNC_COUNT	REG_GENMASK(15, 0)
> >> >+
> >> >+struct display_flip_metrics {
> >> >+	u32 part1;
> >> >+	u32 part2;
> >> >+} __packed;
> >> >+
> >> >+/*
> >> >+ * When used with GuC SLPC, the host must update each 32-bit part
> >> >+with a single
> >> >+ * atomic write, so that SLPC will read the count and timestamp together.
> >> >+ * Hence, this item is not defined with individual bitfields.
> >> >+ */
> >> >+#define VBLANK_LAST	REG_GENMASK(31, 7)
> >> >+#define VBLANK_COUNT	REG_GENMASK(6, 0)
> >> >+
> >> >+struct intel_display_metrics {
> >> >+	struct display_global_info global_info;
> >> >+	struct display_refresh_info refresh_info[MAX_PIPES];
> >> >+	u32 vblank_metrics[MAX_PIPES];
> >> >+	struct display_flip_metrics
> >> >+	flip_metrics[MAX_PIPES][MAX_PLANES_PER_PIPE];
> >> >+} __packed;
> >> >+
> >> >+/**
> >> >+ * intel_metrics_refresh_info - Refresh rate information
> >> >+ * @display: Pointer to the intel_display struct that is in use by the gfx
> >device.
> >> >+ * @crtc_state: New CRTC state upon a modeset.
> >> >+ *
> >> >+ * To be called on a modeset. It then saves the current refresh
> >> >+interval in
> >> >+ * micro seconds.
> >> >+ */
> >> >+void intel_metrics_refresh_info(struct intel_display *display,
> >> >+				struct intel_crtc_state *crtc_state) {
> >> >+	struct intel_display_metrics *metrics = display->metrics;
> >> >+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >> >+	struct drm_display_mode *mode = &crtc_state->hw.adjusted_mode;
> >> >+	u32 interval_us;
> >> >+
> >> >+	if (!display->metrics)
> >> >+		return;
> >> >+
> >> >+	interval_us = crtc_state->hw.active ? DIV_ROUND_UP(1000000,
> >> >+						drm_mode_vrefresh(mode)) :
> >> >0;
> >> >+
> >> >+	metrics->refresh_info[crtc->pipe].refresh_interval = interval_us;
> >> >+	metrics->refresh_info[crtc->pipe].is_variable = crtc_state-
> >> >>uapi.vrr_enabled;
> >> >+	metrics->global_info.refresh_count += 1; }
> >> >+
> >> >+static void metrics_update_vblank(struct intel_display_metrics
> >> >+*metrics, int
> >> >pipe,
> >> >+				  u32 timestamp)
> >> >+{
> >> >+	u32 vblank;
> >> >+
> >> >+	vblank = metrics->vblank_metrics[pipe];
> >> >+
> >> >+	vblank = REG_FIELD_GET(VBLANK_COUNT, vblank);
> >> >+	vblank = REG_FIELD_PREP(VBLANK_COUNT, vblank + 1);
> >> >+	vblank |= REG_FIELD_PREP(VBLANK_LAST, timestamp);
> >> >+
> >> >+	/* Write everything at once in preparation for the GuC SLPC
> >> >requirement */
> >> >+	metrics->vblank_metrics[pipe] = vblank;
> >> >+	metrics->global_info.vblank_count += 1; }
> >> >+
> >> >+static void metrics_update_flip(struct intel_display_metrics *metrics, int
> >pipe,
> >> >+				int plane, bool async_flip, u32 timestamp) {
> >> >+	u32 part1, part2, count;
> >> >+
> >> >+	part1 = metrics->flip_metrics[pipe][plane].part1;
> >> >+	part2 = metrics->flip_metrics[pipe][plane].part2;
> >> >+
> >> >+	part1 = REG_FIELD_GET(FLIP_P1_TOTAL_COUNT, part1);
> >> >+	part1 = REG_FIELD_PREP(FLIP_P1_TOTAL_COUNT, part1 + 1);
> >> >+	part1 |= REG_FIELD_PREP(FLIP_P1_LAST, timestamp);
> >> >+
> >> >+	if (async_flip) {
> >> >+		count = REG_FIELD_GET(FLIP_P2_ASYNC_COUNT, part2);
> >> >+		part2 &= ~FLIP_P2_ASYNC_COUNT;
> >> >+		part2 |= REG_FIELD_PREP(FLIP_P2_ASYNC_COUNT, count + 1);
> >> >+	} else {
> >> >+		count = REG_FIELD_GET(FLIP_P2_VSYNC_COUNT, part2);
> >> >+		part2 &= ~FLIP_P2_VSYNC_COUNT;
> >> >+		part2 |= REG_FIELD_PREP(FLIP_P2_VSYNC_COUNT, count + 1);
> >> >+	}
> >> >+
> >> >+	/*
> >> >+	 * Write everything in this way and this order in preparation for the
> >> >+	 * GuC SLPC requirement
> >> >+	 */
> >> >+	metrics->flip_metrics[pipe][plane].part1 = part1;
> >> >+	metrics->flip_metrics[pipe][plane].part2 = part2;
> >> >+
> >> >+	metrics->global_info.flip_count += 1; }
> >> >+
> >> >+/*
> >> >+ * Let's use the same register GuC SLPC uses for timestamp.
> >> >+ * It uses a register that is outside GT domain so GuC doesn't need
> >> >+ * to wake the GT for reading during SLPC loop.
> >> >+ * This is a single register regarding the GT, so we can read
> >> >+directly
> >> >+ * from here, regarding the GT GuC is in.
> >> >+ */
> >> >+#define MCHBAR_MIRROR_BASE_SNB	0x140000
> >> >+#define MCHBAR_BCLK_COUNT	_MMIO(MCHBAR_MIRROR_BASE_SNB
> >> >+ 0x5984)
> >> >+#define MTL_BCLK_COUNT		_MMIO(0xc28)
> >> >+#define   TIMESTAMP_MASK	REG_GENMASK(30, 6)
> >> >+
> >> >+static u32 bclk_read_timestamp(struct drm_i915_private *i915) {
> >> >+	u32 timestamp;
> >> >+
> >> >+	if (DISPLAY_VER(i915) >= 14)
> >> >+		timestamp = intel_de_read(i915, MTL_BCLK_COUNT);
> >> >+	else
> >> >+		timestamp = intel_de_read(i915, MCHBAR_BCLK_COUNT);
> >> >+
> >> >+	return REG_FIELD_GET(TIMESTAMP_MASK, timestamp); }
> >> >+
> >> >+static void display_event_work(struct work_struct *work) {
> >> >+	struct display_event *event = container_of(work, struct
> >> >+display_event,
> >> >work);
> >> >+	struct intel_display *display = event->display;
> >> >+	u32 timestamp;
> >> >+
> >> >+	timestamp = bclk_read_timestamp(event->i915);
> >> >+
> >> >+	if (event->is_vblank) {
> >> >+		metrics_update_vblank(display->metrics, event->pipe,
> >> >timestamp);
> >> >+	} else {
> >> >+		metrics_update_flip(display->metrics, event->pipe, event-
> >> >>plane,
> >> >+				    event->async_flip, timestamp);
> >> >+	}
> >> >+
> >> >+	kfree(event);
> >> >+}
> >> >+
> >> >+void intel_metrics_init(struct intel_display *display) {
> >> >+	struct intel_display_metrics *metrics;
> >> >+
> >> >+	metrics = kzalloc(sizeof(*metrics), GFP_KERNEL);
> >> >+	if (!metrics)
> >> >+		return;
> >> >+
> >> >+	metrics->global_info.version = 1;
> >> >+	metrics->global_info.num_pipes = MAX_PIPES;
> >> >+	metrics->global_info.num_planes_per_pipe = MAX_PLANES_PER_PIPE;
> >> >+
> >> >+	display->metrics = metrics;
> >> >+}
> >> >+
> >> >+void intel_metrics_fini(struct intel_display *display) {
> >> >+	if (!display->metrics)
> >> >+		return;
> >> >+
> >> >+	kfree(display->metrics);
> >> >+}
> >> >+
> >> >+/**
> >> >+ * intel_metrics_vblank - Vblank information
> >> >+ * @display: Pointer to the intel_display struct that is in use by the gfx
> >device.
> >> >+ * @crtc: The Intel CRTC that received the vblank interrupt.
> >> >+ *
> >> >+ * To be called when a vblank is passed.
> >> >+ */
> >> >+void intel_metrics_vblank(struct intel_display *display,
> >> >+			  struct intel_crtc *crtc)
> >> >+{
> >> >+	struct display_event *event;
> >> >+
> >> >+	if (!display->metrics)
> >> >+		return;
> >> >+
> >> >+	event = kmalloc(sizeof(*event), GFP_ATOMIC);
> >>
> >> HI Rodrigo, after changing kmalloc -> kzalloc, it works fine for us. It does
> >correctly prints Global Flip count and Async Flip count.
> >> Prior to this change, event->is_vblank in function display_event_work is
> >always true and hence it never increases flip count.
> >
> >thanks for pointing that out. kzalloc is indeed better.
> >There's also another kmalloc down that needs to be changed to kzalloc.
> >
> >Anyway, when you mentioned that you saw the async flip count increasing,
> >you are telling about the igt test right?
> >or do you have any special compositor change required?
> 
> Hi Rodrigo, async flip count is increasing using both IGT and Weston/wayland client app (https://gitlab.freedesktop.org/wayland/weston/-/blob/main/clients/simple-egl.c#L1294)
> Additionally, we had to hack mesa code to use async flip supported modifiers. Mesa needs to handle async flip scenarios and select supported modifiers.

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>

do we have a mesa MR for that?

> 
> >In my environment here I still only see the async flip increasing with IGT or with
> >a very limited cases...
> >
> >>
> >> Thanks Chaitanya for pointing this out.
> >> Regards,
> >> Naveen Kumar
> >>
> >> >+	if (!event)
> >> >+		return;
> >> >+
> >> >+	INIT_WORK(&event->work, display_event_work);
> >> >+	event->i915 = to_i915(crtc->base.dev);
> >> >+	event->display = display;
> >> >+	event->is_vblank = true;
> >> >+	event->pipe = crtc->pipe;
> >> >+	queue_work(system_highpri_wq, &event->work); }
> >> >+
> >> >+/**
> >> >+ * intel_metrics_flip - Flip information
> >> >+ * @display: Pointer to the intel_display struct that is in use by the gfx
> >device.
> >> >+ * @crtc_state: New CRTC state upon a page flip.
> >> >+ * @plane: Which plane ID got the page flip.
> >> >+ * @async_flip: A boolean to indicate if the page flip was async.
> >> >+ *
> >> >+ * To be called on a page flip.
> >> >+ */
> >> >+void intel_metrics_flip(struct intel_display *display,
> >> >+			const struct intel_crtc_state *crtc_state,
> >> >+			int plane, bool async_flip)
> >> >+{
> >> >+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >> >+	struct display_event *event;
> >> >+
> >> >+	if (!display->metrics)
> >> >+		return;
> >> >+
> >> >+	event = kmalloc(sizeof(*event), GFP_ATOMIC);
> >> Same here, had to change kmalloc -> kzalloc
> >>
> >> >+	if (!event)
> >> >+		return;
> >> >+
> >> >+	INIT_WORK(&event->work, display_event_work);
> >> >+	event->i915 = to_i915(crtc->base.dev);
> >> >+	event->display = display;
> >> >+	event->pipe = crtc->pipe;
> >> >+	event->plane = plane;
> >> >+	event->async_flip = async_flip;
> >> >+	queue_work(system_highpri_wq, &event->work); }
> >> >+
> >> >+void intel_metrics_show(struct intel_display *display, struct
> >> >+drm_printer *p) {
> >> >+	struct intel_display_metrics *metrics = display->metrics;
> >> >+	int pipe, plane;
> >> >+	u32 val;
> >> >+
> >> >+	if (!metrics)
> >> >+		return;
> >> >+
> >> >+	drm_printf(p, "\nDisplay Metrics - Globals:\n");
> >> >+	drm_printf(p, "\tVersion: %d\n", metrics->global_info.version);
> >> >+	drm_printf(p, "\tNum Pipes: %d\n", metrics->global_info.num_pipes);
> >> >+	drm_printf(p, "\tNum Planes per Pipe: %d\n",
> >> >+		   metrics->global_info.num_planes_per_pipe);
> >> >+	drm_printf(p, "\tGlobal Refresh Info Count: %d\n",
> >> >+		   metrics->global_info.refresh_count);
> >> >+	drm_printf(p, "\tGlobal Vblank Count: %d\n",
> >> >+		   metrics->global_info.vblank_count);
> >> >+	drm_printf(p, "\tGlobal Flip Count: %d\n",
> >> >+		   metrics->global_info.flip_count);
> >> >+
> >> >+	for (pipe = 0; pipe < MAX_PIPES; pipe++) {
> >> >+		if (!metrics->refresh_info[pipe].refresh_interval)
> >> >+			continue;
> >> >+
> >> >+		drm_printf(p, "\nDisplay Metrics - Refresh Info - Pipe[%d]:\n",
> >> >+			   pipe);
> >> >+		drm_printf(p, "\tRefresh Interval: %d\n",
> >> >+			   metrics->refresh_info[pipe].refresh_interval);
> >> >+		drm_printf(p, "\tIS VRR: %d\n",
> >> >+			   metrics->refresh_info[pipe].is_variable);
> >> >+
> >> >+		drm_printf(p, "Display Metrics - Vblank Info - Pipe[%d]:\n",
> >> >+			   pipe);
> >> >+		val = metrics->vblank_metrics[pipe];
> >> >+		drm_printf(p, "\tVBlank Last Timestamp: %x\n",
> >> >+			   REG_FIELD_GET(VBLANK_LAST, val));
> >> >+		drm_printf(p, "\tVBlank Count: %d\n",
> >> >+			   REG_FIELD_GET(VBLANK_COUNT, val));
> >> >+
> >> >+		drm_printf(p, "Display Metrics - Flip Info - Pipe[%d]:\n", pipe);
> >> >+		for (plane = 0; plane < MAX_PLANES_PER_PIPE; plane++) {
> >> >+			val = metrics->flip_metrics[pipe][plane].part1;
> >> >+			if (!val)
> >> >+				continue;
> >> >+
> >> >+			drm_printf(p, "\tFlip Info - Plane[%d]:\n", plane);
> >> >+			drm_printf(p, "\t\tFlip Last Timestamp: %x\n",
> >> >+				   REG_FIELD_GET(FLIP_P1_LAST, val));
> >> >+			drm_printf(p, "\t\tFlip Total Count: %d\n",
> >> >+				   REG_FIELD_GET(FLIP_P1_TOTAL_COUNT,
> >> >val));
> >> >+
> >> >+			val = metrics->flip_metrics[pipe][plane].part2;
> >> >+
> >> >+			drm_printf(p, "\t\tFlip Async Count: %d\n",
> >> >+				   REG_FIELD_GET(FLIP_P2_ASYNC_COUNT,
> >> >val));
> >> >+			drm_printf(p, "\t\tFlip Vsync Count: %d\n",
> >> >+				   REG_FIELD_GET(FLIP_P2_VSYNC_COUNT,
> >> >val));
> >> >+		}
> >> >+	}
> >> >+}
> >> >diff --git a/drivers/gpu/drm/i915/display/intel_metrics.h
> >> >b/drivers/gpu/drm/i915/display/intel_metrics.h
> >> >new file mode 100644
> >> >index 000000000000..9e41dc9522f3
> >> >--- /dev/null
> >> >+++ b/drivers/gpu/drm/i915/display/intel_metrics.h
> >> >@@ -0,0 +1,27 @@
> >> >+/* SPDX-License-Identifier: MIT */
> >> >+/*
> >> >+ * Copyright (c) 2024 Intel Corporation  */
> >> >+
> >> >+#ifndef __INTEL_METRICS_H__
> >> >+#define __INTEL_METRICS_H__
> >> >+
> >> >+#include <linux/types.h>
> >> >+
> >> >+struct drm_printer;
> >> >+struct intel_crtc;
> >> >+struct intel_crtc_state;
> >> >+struct intel_display;
> >> >+
> >> >+void intel_metrics_refresh_info(struct intel_display *display,
> >> >+				struct intel_crtc_state *crtc_state); void
> >> >+intel_metrics_vblank(struct intel_display *display,
> >> >+			  struct intel_crtc *intel_crtc); void
> >intel_metrics_flip(struct
> >> >+intel_display *display,
> >> >+			const struct intel_crtc_state *crtc_state,
> >> >+			int plane, bool async_flip);
> >> >+void intel_metrics_init(struct intel_display *display); void
> >> >+intel_metrics_fini(struct intel_display *display); void
> >> >+intel_metrics_show(struct intel_display *display, struct drm_printer
> >> >+*p);
> >> >+
> >> >+#endif
> >> >diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> >b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> >index 860574d04f88..fdd21a41d79d 100644
> >> >--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> >+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> >@@ -17,6 +17,7 @@
> >> > #include "intel_fb.h"
> >> > #include "intel_fbc.h"
> >> > #include "intel_frontbuffer.h"
> >> >+#include "intel_metrics.h"
> >> > #include "intel_psr.h"
> >> > #include "intel_psr_regs.h"
> >> > #include "skl_scaler.h"
> >> >@@ -1392,6 +1393,7 @@ skl_plane_async_flip(struct intel_plane *plane,
> >> > 		     bool async_flip)
> >> > {
> >> > 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> >> >+	struct intel_display *display = &dev_priv->display;
> >> > 	enum plane_id plane_id = plane->id;
> >> > 	enum pipe pipe = plane->pipe;
> >> > 	u32 plane_ctl = plane_state->ctl;
> >> >@@ -1404,6 +1406,7 @@ skl_plane_async_flip(struct intel_plane *plane,
> >> > 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> >> > 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> >> > 			  skl_plane_surf(plane_state, 0));
> >> >+	intel_metrics_flip(display, crtc_state, plane_id, async_flip);
> >> > }
> >> >
> >> > static bool intel_format_is_p01x(u32 format) diff --git
> >> >a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile index
> >> >e5b1715f721e..5133dba2c7de 100644
> >> >--- a/drivers/gpu/drm/xe/Makefile
> >> >+++ b/drivers/gpu/drm/xe/Makefile
> >> >@@ -263,6 +263,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
> >> > 	i915-display/intel_hti.o \
> >> > 	i915-display/intel_link_bw.o \
> >> > 	i915-display/intel_lspcon.o \
> >> >+	i915-display/intel_metrics.o \
> >> > 	i915-display/intel_modeset_lock.o \
> >> > 	i915-display/intel_modeset_setup.o \
> >> > 	i915-display/intel_modeset_verify.o \
> >> >--
> >> >2.44.0
> >>
