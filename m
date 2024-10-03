Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2041E98F420
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 18:20:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BB6110E17D;
	Thu,  3 Oct 2024 16:20:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lqB7osDx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBB5210E17D
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2024 16:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727972445; x=1759508445;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=98aHNEN0YUFkYSH5toG0iydcxhp8ozti81zScacJn6E=;
 b=lqB7osDxTZEBTeLX9Hhqdx20vbyHLTtBJsby1C3JWIkiqz+eBuHIN/jx
 92k3tc6Ij7tQY2azIP7I03wSgvzKsHqkIQWfAxK0H2hvy/mUMBMLq+MSG
 acsylsGZvpWOGeSBlPFF2UvWaSo9o8R2xyJ5nLccMDinXtxcuDnVI4zIW
 Gs1pfIA6M0/e2qD5TFoULjmO5nhTdhoPVv/aLIEksefPIWZvD7dUpUnKk
 PkouA2TD40s0ozdHEMPI8FxR/sddD+093Ww8aA4+25/8ZEWcKz6T+EQnm
 TpD0A2eNXnXtwBI8pS+cQG0NAqlnPjs9fcTrV2gxn3Qn1MRMNR7WinF1K Q==;
X-CSE-ConnectionGUID: uojy003hQnCNyP1qwyDiAA==
X-CSE-MsgGUID: Yu8tnDKYTvC+gApHfdfzuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="38311671"
X-IronPort-AV: E=Sophos;i="6.11,175,1725346800"; d="scan'208";a="38311671"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 09:20:45 -0700
X-CSE-ConnectionGUID: o6Jype8zQeGUFgyTOvKrlQ==
X-CSE-MsgGUID: NFTqBo0CSDejXquPqMXa0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,175,1725346800"; d="scan'208";a="74646086"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 09:20:45 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 09:20:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 09:20:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 09:20:43 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 09:20:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VUvUffDvcbQlcTaoiyh2EgMIHXtAZTI31eHJydxCaz88MiCVHIfdHTNNzkJlXlvAC8Pf2RkC9BKGmdmYdNLWTqOsOz7Q6ltQiEuSdDmii4D2iZy14o9FXkp0m0X94cmBeeGyzzMuF4eM+za4cux5Q9FzSGI5DHpu5k0WlRhPG+kq8o7U9ehkY8X9JBp2ebsC4/zMrSURo4KqxR2OQ0NzTYTOjPWVobOvwqvnW/V/4zv8XPjnI5eF9MrtGOToTTkkGc8Ny3LEf2FqFRLppu7OZQU5YkX0zTSlDenTyzGla4GrEa6R2lmoaEVZbS2sbFqKBTChqRyWvUjf8bQCOb9mJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cMH9gns2rWChZU6xffeioNaFoQU1OytrvO1bpPQePW8=;
 b=PqtAuQz7AcaTbrHL3WNuCC3iZcYQWI7CFpC1Ct6SzGEK41cWL23j2iFJFYIf6SxZMQdPIU9lbupZ/xoRc6l69RQrOXitgasXiMduHE/7goeskAFwUZgASKKarKn77J9HBJNU2fN/ADMt4SKtXpaYpWLX296ExnoZ0rKIqFgzagrNW6+BP9oWaoMqZkTeXa91aJXM1WmGzk8UM3FMKP5V9vQ79yIL6VEkFdABWvkiN6E73Ks6UT3qOpNvlPz3RS/o13uVWlwpEX0tEk+1VnWA/z+HZuogtNve7bsZOzLG8uTwfeX9Y8dgZVliTgMRiDg7CZbkoLG649GD5vZiG3MhEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA1PR11MB6821.namprd11.prod.outlook.com (2603:10b6:806:29d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.16; Thu, 3 Oct
 2024 16:20:41 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8026.014; Thu, 3 Oct 2024
 16:20:40 +0000
Date: Thu, 3 Oct 2024 09:20:38 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <ville.syrjala@intel.com>
Subject: Re: [PATCH] drm/i915/icl: Update csc and gamma enable checks
Message-ID: <20241003162038.GM5725@mdroper-desk1.amr.corp.intel.com>
References: <20241003090341.3140997-1-sai.teja.pottumuttu@intel.com>
 <Zv57pzLX4ltH4w00@intel.com>
 <20241003142237.GK5725@mdroper-desk1.amr.corp.intel.com>
 <Zv6rGHmLiL5GrpKG@intel.com> <Zv6xBKixcWn_gJEW@intel.com>
 <a80d1e55-a294-41b9-8369-495450fa9c34@intel.com>
 <Zv68V6A_HTQihdWu@intel.com>
 <20241003160540.GL5725@mdroper-desk1.amr.corp.intel.com>
 <Zv7CeST4xjm3JKms@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zv7CeST4xjm3JKms@intel.com>
X-ClientProxiedBy: BYAPR02CA0065.namprd02.prod.outlook.com
 (2603:10b6:a03:54::42) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA1PR11MB6821:EE_
X-MS-Office365-Filtering-Correlation-Id: 09ef05d1-01c5-4236-0389-08dce3c752d7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?zJh+jsng45UqNoVCdhlZkffBk6EbxX2aABkrqN18UMRjYopD1yoegefegh?=
 =?iso-8859-1?Q?bhZUt5FEYzrduaFVXzXk8QDXwSBvMi1ESD5ByAKmM668gX6w3742Hbx03k?=
 =?iso-8859-1?Q?ZdCbbAwaoWKTq9c5gvXMSkmyd3+RVxmuqIBO9y4sZUfPe1jkMG6HIJpZZj?=
 =?iso-8859-1?Q?th/02zPoGMSQGfprLgcI93bA4pdDvz9fa/g87SKSE9YhZlwvkqFHx7IvL7?=
 =?iso-8859-1?Q?/MMVKGZ2Mi1HWnLbGutqfDNz34nvp63Q03cdsTOFp4F+bTKJzsVFd4xU95?=
 =?iso-8859-1?Q?+crliENS4cvhC3KRJE4O7mRydYguGrufaxNb0sWk4JFWq1jhaIhYYwWimw?=
 =?iso-8859-1?Q?gSAdqdqawI+v0OjIq6xALmKNEgn5PZYpZs/FvDD7b9MUHq5/RC8Q0vfR0M?=
 =?iso-8859-1?Q?MmAxvOkKTkuvYBkSlXSLhN30/+kZlEVhjoBmqDrmnjBMZAGqfLg5Ipp8gB?=
 =?iso-8859-1?Q?6pqkDKvlbkvDEw5c1Nxlo9s355mZHfiGpuS2N9f2+tNjU0W70k/lfJP90E?=
 =?iso-8859-1?Q?1TiqUytggGoXrcfydijg4PstbskLLGVRifYY8wRE97WTsbnIGK9/mvVYWC?=
 =?iso-8859-1?Q?8VHnzGriFlZkmwM6ABl8V+8ulS40yEAJS9TFSCl93Ni6JTLGiJoqN7boTT?=
 =?iso-8859-1?Q?d9N8nh7yN70NYRkp1EKUlTTSci+Onurk+LfsMu9ng8NVN8ArmoregBxH41?=
 =?iso-8859-1?Q?WRTUQ6iJMTmBfa3VgOIDq8yvti5d4LTlPnDBJfTuQZ5y31pABGcEaZuQxo?=
 =?iso-8859-1?Q?u3ZuHpSISJJ54sQ98pZxJ7ZnPhDRLRhzNdvOR90hf0Vyz10wm5REDyzfRx?=
 =?iso-8859-1?Q?FqBXarUfySSEOoFY0jRUnQJJoTZNp2gaAKukv5vYfBDTv7gVs2yFr1IEzW?=
 =?iso-8859-1?Q?+mYZUjGd6wWnkJp54KPWgyh3a7ytBr8E3obIheiL47U1WqqX49DwjMBzfE?=
 =?iso-8859-1?Q?026PCr1lQ3qLGsQYLDua/h0Vf+SO0iu/Rmr7oQ+QEQDYC1pKhKowOT61Gg?=
 =?iso-8859-1?Q?w5mbNNercnPJDACoN4MlFsiqxp2L6lIL/qhffODPHqV6k2TpDpnK7PsqSb?=
 =?iso-8859-1?Q?FBzEv0HwY+oICEaZ5KWl9uoVCM/kk4UEZEhIwkbJ64HEEVfbtMUBJF3swW?=
 =?iso-8859-1?Q?o2m/tUMCYHO/Gr3mZz5aHlJrWqJnJVIeA1M1adz++JUxM4kzK92jsgCVcW?=
 =?iso-8859-1?Q?ropeZU+ZVMYbKgQfUWqnwAhZx6H9KV5Fmg0uuEGxn8dWhhni5lLTy4xwPC?=
 =?iso-8859-1?Q?lB1aKv3ehfFnWe6a0wq9d+v/JwA7rX9SJc8EnOr9GuFH6MuXMJ0R3q22JI?=
 =?iso-8859-1?Q?mX9dFW4iAUxDw6J/Tz+a/E2nXA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?JSiBPpafek9e2WNPiVua3BW/J9Gtb9rFU2rWrR7m4qVCG38D0o3B2de6Lc?=
 =?iso-8859-1?Q?Yqt0iXdiQ83a2N0eEZ9BB9wSQAFbTMHec8tVkT0lZEPh94czDHey6/QSWs?=
 =?iso-8859-1?Q?Q6ZoZJ3IufnqiHuBigiorkq/IIac6JJTZHlU81Q5aHuwcmVt4fMJ2yG6mK?=
 =?iso-8859-1?Q?sUBQ5niEveCjXhrIG/GtL4txXoi2DNzQE8hWzNAGM4Shr5fYyonaEL5FsI?=
 =?iso-8859-1?Q?efBSGWakeKdMyVT8oEawGW45BBUtOifDzaaOxvOqsgsrWnmMaxfxK5TQmm?=
 =?iso-8859-1?Q?c5iWlio3v8qxLcwuVypStX48JDMHVu09W6wH4C2ea8E2Rx+CM6RHmb3UqC?=
 =?iso-8859-1?Q?PjRFnHqRN4tiFZ/AihjymoScXKShwf9cLkFathu2y49FdVLTF+gxlwabXP?=
 =?iso-8859-1?Q?gGlUVSSEVY4kMpeJfb9c6n8mrzRI3xws/f+YitcaPER00xOfYtQWvzR9Tq?=
 =?iso-8859-1?Q?/h426JK7PQZIZrI2WdpylOGAlyU85VJpwG5U2I1fEXUizAvgRCYLb3hfmQ?=
 =?iso-8859-1?Q?NRuAYdkVRHyVpcv265ZIEpW5yEpFkojNa0aA+hXLhMKbRRY59XjPh9+gNj?=
 =?iso-8859-1?Q?cKkxBTi5hJV6SPb7n+Fixix9tQmkLEiZtpT0oL4qYhCOdtN6mo66vFirD6?=
 =?iso-8859-1?Q?UDwl4XQk36LdkZFHDvNCwWveknU+d3i91PipVbBDmezbPQzRJdLU/WQQYd?=
 =?iso-8859-1?Q?LsCy1FxtMEGMGt6VF+BpGvA8r7bRcUm1riXKwJX7/3EitFfHVOi6zYYtmz?=
 =?iso-8859-1?Q?Ixxzo0tWbaWbvJWgDcaTH401MQvJqE8gtp0ItY4Yh+OjCoviUtbbDiLw8R?=
 =?iso-8859-1?Q?aw5am2CVLzjQhuwKN948IdEa/+lDjx/llAMY5gfh2wVTe1oiB6qap9AUOK?=
 =?iso-8859-1?Q?OIpTSmYIg6iQJtHVVWpZFyuNR1rgnlk0UwAmqtMDiw/u616V6HLDTSKFQJ?=
 =?iso-8859-1?Q?z7sgSMlWvqlmX7yT4Wls+0EMkvVSq/44dH7YYaHROrCNB4sVuDmKuhM0cY?=
 =?iso-8859-1?Q?tLOATmGKjyLEMjhjjs4PDWS0zr+B3QeChndQRRLb14ekXc0R+qsmRUjZE2?=
 =?iso-8859-1?Q?0T94IQ2qqOkG3ZQ59nEatdPmDvPdrja3r2GAx7eHJEu7ZurIDIJ7g/RoxO?=
 =?iso-8859-1?Q?KX4L2ryaQoyYivnuj/TEWjLtp250861zBRkloJqUuzik5M5Bbo1u6l93Hd?=
 =?iso-8859-1?Q?HuYKA98qCjAh9OI5N/lRhPRE59Kza7zoZgg1DKBQqgQjv4wMlg5eVabD/N?=
 =?iso-8859-1?Q?Gvcyf9qrW32HUBTtI8SQWo96dSjW+NJaflmjWqeTUJILWNUWAoDKZpkRP6?=
 =?iso-8859-1?Q?fzsAVmD8Tr4QEDZw2P8fWrLdpAh6UMACRJD3KwEa7WeYuJgyiRu3BGPNhv?=
 =?iso-8859-1?Q?ftvxSTglLW0Hsx0bjNfBlJc2in7fj1Jx5NPUN8lyZwc19hIEbkLrm/Y535?=
 =?iso-8859-1?Q?vEVGutwi0g5Bf04Vd3NWOf2P6clR2HffRRtZ3SNI028rrDyZM3e0nqOjyZ?=
 =?iso-8859-1?Q?5G4F1QYut02xsm5i9tiSzHVjAtIGTW/mHNQVzBiiyh9wd8MgtASefRUFfy?=
 =?iso-8859-1?Q?qms232+Kpw1CwblAD2XHNDljRXrvNTFfXEYW4UImPxN0oOt4sdvMnIYdRq?=
 =?iso-8859-1?Q?SNUbqBcwJjYnsLfe+Z5hWLu2Lvc0MKkdLwocoFJpO9tC3X7ELToWmYjw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 09ef05d1-01c5-4236-0389-08dce3c752d7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2024 16:20:40.8746 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bOiGsFh+MO6dYSPCslRdW5tdWykS4sXoh/hTcJhNcIQIk4uR0fSmbIj4otI9jZMNvLHsfShk1XdGPWYNnXPeIf+odiTB6JeqrmmipLCwk78=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6821
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

On Thu, Oct 03, 2024 at 07:12:41PM +0300, Ville Syrjälä wrote:
> On Thu, Oct 03, 2024 at 09:05:40AM -0700, Matt Roper wrote:
> > On Thu, Oct 03, 2024 at 06:46:31PM +0300, Ville Syrjälä wrote:
> > > On Thu, Oct 03, 2024 at 09:08:53PM +0530, Pottumuttu, Sai Teja wrote:
> > > > 
> > > > On 03-10-2024 20:28, Ville Syrjälä wrote:
> > > > > On Thu, Oct 03, 2024 at 05:32:56PM +0300, Ville Syrjälä wrote:
> > > > >> On Thu, Oct 03, 2024 at 07:22:37AM -0700, Matt Roper wrote:
> > > > >>> On Thu, Oct 03, 2024 at 02:10:31PM +0300, Ville Syrjälä wrote:
> > > > >>>> On Thu, Oct 03, 2024 at 02:33:41PM +0530, Sai Teja Pottumuttu wrote:
> > > > >>>>> With ICL, we have a way to check if gamma and csc are enabled on
> > > > >>>>> a pipe using bits in GAMMA_MODE and CSC_MODE. So, use them as well
> > > > >>>>> along with the existing BOTTOM_COLOR checks.
> > > > >>>>>
> > > > >>>>> BSpec: 7463, 7466
> > > > >>>>> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> > > > >>>>> ---
> > > > >>>>>   drivers/gpu/drm/i915/display/intel_color.c | 24 ++++++++++++++++++++--
> > > > >>>>>   1 file changed, 22 insertions(+), 2 deletions(-)
> > > > >>>>>
> > > > >>>>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> > > > >>>>> index 50f41aeb3c28..1bf36898dc7e 100644
> > > > >>>>> --- a/drivers/gpu/drm/i915/display/intel_color.c
> > > > >>>>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > > > >>>>> @@ -1076,6 +1076,26 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
> > > > >>>>>   		crtc_state->csc_enable = true;
> > > > >>>>>   }
> > > > >>>>>   
> > > > >>>>> +static void icl_get_config(struct intel_crtc_state *crtc_state)
> > > > >>>>> +{
> > > > >>>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > > > >>>>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > > > >>>>> +	u32 bottom_color;
> > > > >>>>> +
> > > > >>>>> +	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
> > > > >>>>> +	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
> > > > >>>>> +
> > > > >>>>> +	bottom_color = intel_de_read(i915, SKL_BOTTOM_COLOR(crtc->pipe));
> > > > >>>>> +
> > > > >>>>> +	if ((bottom_color & SKL_BOTTOM_COLOR_GAMMA_ENABLE) ||
> > > > >>>>> +	    (crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE))
> > > > >>>>> +		crtc_state->gamma_enable = true;
> > > > >>>>> +
> > > > >>>>> +	if ((bottom_color & SKL_BOTTOM_COLOR_CSC_ENABLE) ||
> > > > >>>>> +	    (crtc_state->csc_mode & ICL_CSC_ENABLE))
> > > > >>>>> +		crtc_state->csc_enable = true;
> > > > >>>> We don't use the old per-plane/bottom color way of enabling these.
> > > > >>>> So this is not right.
> > > > >>> I think that's the reason for the patch --- today we use
> > > > >>> skl_get_config() which *only* checks the bottom color settings.  And
> > > > >>> that approach is documented as being deprecated (although still
> > > > >>> supported on current platforms).
> > > > >>>
> > > > >>> If we're reading out pre-OS state programmed by the vbios, we probably
> > > > >>> need to handle whichever approach it took, right?  Or are we sanitizing
> > > > >>> this away to "off" somewhere that makes it okay to miss what was
> > > > >>> programmed?
> > > > >> I think we're not doing anything. I suppose some kind of
> > > > >> assert_legacy_color_stuff_is_off() thing somewhere could be a
> > > > >> decent addition.
> > > > > Or maybe we don't need to do anything. The state checker will catch
> > > > > this problem with the current code as far as the pipe bottom color
> > > > > is concerned. It won't catch inconsistent plane programming though.
> > > > > But we also don't have such a consistency check for older platforms
> > > > > either.
> > > > 
> > > > So, are we essentially saying that we can completely remove BOTTOM_COLOR 
> > > > from here and just move to using GAMMA_MODE, CSC_MODE for setting 
> > > > gamma_enable and csc_enable?
> > > 
> > > No. The current code already works correctly, and pipe_csc_enable and 
> > > gamma_enable are not meant to be used on icl+.
> > 
> > Then does that mean icl_color_commit_arm() is wrong since we're
> > programming those registers there?
> 
> Not really. It just assumes those bits should never be set,
> which is true given how icl_color_check() operates.

Hmm, this is confusing since I see icl_gamma_mode() setting up
pipe-level gamma enable:

        if (crtc_state->hw.gamma_lut &&
            !crtc_state->c8_planes)
                gamma_mode |= POST_CSC_GAMMA_ENABLE;

and icl_csc_mode() setting up CSC enable:

        if (crtc_state->hw.ctm)
                csc_mode |= ICL_CSC_ENABLE;

and then those eventually get programmed to hardware in
icl_color_commit_arm.

But then our get_config function doesn't read these same bits and
instead only reads the bottom_color bit instead (which is mutually
exclusive with the pipe-level control, and which will likely be removed
from the hardware completely at some point since it's already listed as
deprecated).  What am I overlooking here?


Matt

> 
> -- 
> Ville Syrjälä
> Intel

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
