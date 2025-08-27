Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE84B37EBB
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Aug 2025 11:23:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8921C10E79F;
	Wed, 27 Aug 2025 09:23:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MUCa20WM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 050C110E79D
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Aug 2025 09:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756286626; x=1787822626;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=R7VcSlriB/MV7QLOz4KgD4ekktvkkOxuAXkSEq89HGE=;
 b=MUCa20WMYTP7Su6tcf4M9lh608DEezI7wrm92sgK5ReFJlw42UiwTON9
 m7T3jGCydTJ+A/XCuxSULF3zMmPTxBofnPN9l6ENa6UsvRMwF1Y51cLeP
 e7Wq6QcGVmcC6qhGrlfkR3lo89ZD+mrYgYb+B+qwIarCm5wfM0opJIByL
 m2PUMHj6IaTzMz/egCIZ7Oq7oHTVCIAgUyktHJdeVUdflWWXjD2AkMbEV
 +YOvkPOhnVsuXloz1SjpAINTfSGX9Rd6Er7yfXF/v2PkYIcmJEPY8LcG/
 E0wCzBIon84Z+p+WdaPRe2tyXO+uR+uBar7/wdIK9aE0iNG/D8JGxIfKh Q==;
X-CSE-ConnectionGUID: AOXUouKnQEuoEqNVY/P5Aw==
X-CSE-MsgGUID: epNlaIg+Syue/Hniy+UP/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="69127710"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="69127710"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 02:23:42 -0700
X-CSE-ConnectionGUID: okt9u+UtSRuKF4pizJQQ7w==
X-CSE-MsgGUID: EhqQTmWLThuaXp8/YdmrsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="169973601"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 02:23:42 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 02:23:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 27 Aug 2025 02:23:40 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.87) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 02:23:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pxQXEtR4D9ui3A/+FNJ4kaSaf29lSmjSI/wyNwdZv5ftvOPbYxC7PWBKXGoXh5Wy4jfGuRAStDR9cUiD3cZNik9G6Xid+sUU/z65krjRDAvmovSBLUh9WKSjvRh4IUtZFwbWmNSiLTFwSDCJQldwNxq/saL98tXh597WdcJSQjIFGRSxUPetQVhybZSpk+guDZkDtJx/k6bx6DpqPUduZJ06yhKd+ZyGwE6wGZNq0jMWQHtYh94T7jZ4VPzWdrvxCSrmQ2RUH+5A+s6ZlngVmo4Wt1mKU1ulL5Nbrre/Lg+dMQfgRaXVrAgXYpd/znIDehdc/qCmgRRiLDB9gS5Nbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f6boXunEpgRw7112qxIp4s1VSBHb7BeORdZ+A2hI+2g=;
 b=skPh3FEIZYIYxp4AZB1V4/TyGmsJLX3UfyoZ6ybODCw+DSBcQH3ZKBeGwJY8fB7qHWMvlUKD9Y+iRXLLOncLeHGpBN6rqhUrFjfiMS/tmwv6mTSPVEuK5sJda4rZREpYb5zYz7pBJws9jVGvmEuXnHQIXy4MtVL1phsQV0BhXU4xlESBbxCYaLIFcXUSxCSP/Hdwbh60RhwhHKj55oAAR7ABPrhIOyFkLQ3sR7LhSWnqulrObPRY+LJrJh7vZm5giq3AFcy9mV9HUh4XZi6UzHrBVMVgfupX8XxArohQXJP7zw/L/1LHR1ZgIQs/FOQ7VChqzCf8mWXADCsZUzigKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by IA0PR11MB7954.namprd11.prod.outlook.com (2603:10b6:208:40e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Wed, 27 Aug
 2025 09:23:36 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd%5]) with mapi id 15.20.9073.010; Wed, 27 Aug 2025
 09:23:36 +0000
Date: Wed, 27 Aug 2025 12:23:31 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Shankar Uma <uma.shankar@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Vidya Srinivas
 <vidya.srinivas@intel.com>
Subject: Re: [v4] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Message-ID: <aK7Ok6wagqk0QZBk@ideak-desk>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
 <20250826080117.151587-1-shawn.c.lee@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250826080117.151587-1-shawn.c.lee@intel.com>
X-ClientProxiedBy: DUZP191CA0057.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4fa::8) To PH0PR11MB4840.namprd11.prod.outlook.com
 (2603:10b6:510:43::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|IA0PR11MB7954:EE_
X-MS-Office365-Filtering-Correlation-Id: 439b258f-7ad4-4016-1692-08dde54b668a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?I73gpGuH3HUwMifQOwy9mCsXuuJR6dK93/MXGQuPWpBRcm6iTC4wTQ0PVTxU?=
 =?us-ascii?Q?PEWz6wbg/Ej7m6T3Sr1s2ndW7trvGnZqV8lHHtPBZyH2C7aV0oaqvO+9CN8N?=
 =?us-ascii?Q?7FZi1JJ9H0ZMAtI2gPo0dG4G+tvl9yk+UPcLSS2cKLBrCgcAEULNIWztGMcr?=
 =?us-ascii?Q?77yGDoudVP2Jj0Yjzz5E80gW8fyXgcpJ+iAZmjwv/pHaf7/OtPHWwqYmR3Qe?=
 =?us-ascii?Q?7iEXsa4iBAt4DzDyMjVIPeV/wHMbfB0Ec+6yosGn2rZY9P3SYx/Bp0EewArL?=
 =?us-ascii?Q?Lgy8FKtG1xa4+0K+gHvK7YBsk+jUp7MEAP4I4DQK+DAcBMH7NtqBjIeOZaEh?=
 =?us-ascii?Q?ocfwCi4O+lbv3IkWNbNYXsdEU7NgecuzYfWSgx5/4jCDC+PcBI971M7JLZ10?=
 =?us-ascii?Q?fdeDW6c62ac2smm/KNsbzFVW6Z6J252p0K7F7ANnAxqyfJdovGX1sxbNxgEC?=
 =?us-ascii?Q?bnBxdktKkPax/5RYDXJXC2idZmlL6cRpo/Xvey2nv+9fJ3e9PgHYXA1/rpGl?=
 =?us-ascii?Q?3ZzObmb05lpINpGP7Zc+zKwt62VLGr5Eeesh0TS9uqb1uSO3c55vdVQOXX9t?=
 =?us-ascii?Q?tWsZa8la7iVsdiCjnvdFolUYk8vMo5nFAUEvuebsfIYgRVUR+g3boXmGKkYL?=
 =?us-ascii?Q?xDlaiD2oPMDlDAJQrNPrEPmrqlriUcP0ci4x3E0g0FszRom1mi2dkbx3urYr?=
 =?us-ascii?Q?yiSxpCWXqysMZV2gKLSPmFe9o1ydIdzbRbb3/7xtdUCFf+AUARcD0PpuU5tf?=
 =?us-ascii?Q?63+xn7yzAnfnf3o3afCzSUynR3rsjh/dbWgBdf5UUvRf7aBrjJkXC6H69PUW?=
 =?us-ascii?Q?excfnmVtPHAWTQzddns3A2roktjhLldW1B5xwxseSYYbEYzFDLoaDs/ARc4w?=
 =?us-ascii?Q?VYQasgHc/6gLV/LviLBAC0/9Jd59VjdRAIlRPvtl/nEhThRdpyxTSFGdQn3F?=
 =?us-ascii?Q?HZJtFY6PQ8rHR0YzcL+Pxd0fD7GeXXjakEdyUvtFPx1yBokqY/lIS592qU4W?=
 =?us-ascii?Q?pvLDueNcfxjRZuzeas4AAc6X7SSV0lU0csP4tTmlqPr+pYyuvVe8mZP8tIBw?=
 =?us-ascii?Q?C62asNro2tj0AWThqN3yBR4Hm5wg79U91qjOCXB2+gBbWi60NnAC2euvRrz5?=
 =?us-ascii?Q?1pIrPwKJdBhSbBlTjWy32hPhLCORHtzzvB8Fp/MziqmLNqiT4q5cfkqp+dCO?=
 =?us-ascii?Q?XdAmZtlne1DfpQtfXEz+z8nkN/x/ttDvDJ7s6/+a+eEe/EJrW4nAlMXylslC?=
 =?us-ascii?Q?USJ4mtL6S22Rl5b8A4golLXApkvs+4XjR7ZiI8/+3xfubz/5gWfHDagEoIcN?=
 =?us-ascii?Q?1O/kzCwLIa5FCCOumeX+O0PNaalYOPxHyoIviJisySCY/EJZqiN7k8PhTNrp?=
 =?us-ascii?Q?/Vngt7adDT+P8oHaIqF9XoOCZRZycPzgZJBYz5NydI/4EaZKS0sNbKKEFprB?=
 =?us-ascii?Q?tmRGyK1VX/M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Tbkf7VqTa1Sd4MNwINN+ij1Tvz8yp2A+GIuuSeYaDOHHGg6gqO8O9oBU0OuX?=
 =?us-ascii?Q?boo62jVbRHE5qLQZNs5ufuK0mRxna/1BbCfMnrXIsreDP1PYoOcds//P7oz3?=
 =?us-ascii?Q?44hGsm+1AIADcSGiPKXhMMrZBASb+CpVOMJjVU0NokJkn73+9xnpJiJUK8JX?=
 =?us-ascii?Q?sKW4EXvpLIIh3Dr3ejzDj9Flh7SPEWf7r4CF1zDZpjuQRyEaBsaMFb40vh+G?=
 =?us-ascii?Q?9poY0UJlWmqLM6ziukLhtokFjYhq+aL4X3vGEgVP0pfx2PdoOG8G2wF4gqyp?=
 =?us-ascii?Q?iAmNnmBof+EgVFaiBMIMtNWdkgRig5Gm4PQhPk9otquCY6FqXjhj8ktk7cdY?=
 =?us-ascii?Q?W3zcsI4futY2lU0enKGWSD4/Ob9Zs1R1XhiFcZluG+j2vOszrFEzJxu4tchl?=
 =?us-ascii?Q?T1puRzkRZXsxCTNR3FjZX5QIqQKsr28FnmWEsnpfEAZFk4mxwsj5TIbjGz0q?=
 =?us-ascii?Q?nx/0UgW80u1PMmYoSOv783hYUkqWD5FPoxXvi8LsNAd7UHgVOzxm7ZkNJO82?=
 =?us-ascii?Q?C3oA/D5eJMubR+05pv1KT+3ToicmDn7xhDoRiJKZUA3M3QE18F0TB5+BRyZa?=
 =?us-ascii?Q?S4e1e3Ny4aaLjxQvlrw5eXbYxPgdDJrUhF32eG1MvDS1CWnAvMMEJ4S71zOU?=
 =?us-ascii?Q?wn5bpuSkpsk3AtxWHZ0OCfD1aXcPQc4nIQJv/aPm+exilqRMYbNBvJ3ql+LX?=
 =?us-ascii?Q?zDxByS9kkJIFAJ8S9B2dOEMbYFp/JfG36yKS+lzVYfb7ZRFrIfRCt+u6T1oD?=
 =?us-ascii?Q?bGCZBUc3irhR+oebDey2G75OjiSei/3D9Mw/lsY0fmwc8ILBVP5exrm66MmT?=
 =?us-ascii?Q?ODOauJgCPE67TJv/DJpC4LdRpynfihw002sW62pbzV3KhhQeuuzMIvbM2Tyf?=
 =?us-ascii?Q?5d2Pa8g8rVywWVJm+drzB/+3Jju5sfQdJPvnV5QP65g88zaxDlRMh6Ul0jHg?=
 =?us-ascii?Q?CUGg+RJZT/zfoFH6H3DosANUYOtGSTYqpqxfq2cedjRoMw0Er/HrHpzWNE/Q?=
 =?us-ascii?Q?CtFekK+h+lC5/KbwseJi2j9JlCoZ89wlNtmJDlzkSA4+h2cOkjUrrNZvs5jf?=
 =?us-ascii?Q?ii+8EmSsBysZSUAs+ogX6WqG2gLXxYoRf9HXFuTtw33dtkYVPXfPyxKV1bbz?=
 =?us-ascii?Q?hbvYf+vTFKOGV5wg2J9i8bXy3GTDrkVacdx+4+TKiSJ/CTbOairfX20kLk3h?=
 =?us-ascii?Q?FDsT2PsT2LKPSu9vFmThvcWO8GBUxAyfwES3D5wq/6IAAw6kCLuRnX3bOLUj?=
 =?us-ascii?Q?YsvFyIFqtCsINoMfjWKbw4zSVIu1XllUiLJKXgwPmptWfQL5r8v3qvhYdZpF?=
 =?us-ascii?Q?wayFxr8Uh00U5ojuOCFz5saa6sCCnkssKYn0OpdqN8YBKaowpf/eD/+OWpgl?=
 =?us-ascii?Q?y02A2QFoBsajFg/RgHHd3WXyEDTmUoRHEX0WJeT7TsQKLmh7YNuZxAq/FxnD?=
 =?us-ascii?Q?H0wDf1NEIWbMVhQ9RggdvIzzfw0K3AyYMFhQO7vd/XX+hjVHkOBazVW17Gi4?=
 =?us-ascii?Q?T62qShYdeWNUGNLQhNMb1/QuIh84NPDdVuVddyR3XPgqPCF203PbgnYcpL5f?=
 =?us-ascii?Q?H/uHc1QL92RzWLwmANMPCmyKvNIu6ZOxP0cNdDNUfhO3ShAFj/2lv7g7gnZB?=
 =?us-ascii?Q?20rwh9s3Ixqwt/KVpeg5yj59QE6SNgKN1M5jdVHnMyiO?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 439b258f-7ad4-4016-1692-08dde54b668a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4840.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2025 09:23:36.4789 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zvArnDOfk9WavooGTuGtULasbkABVHMlNpbhISVZGV1v/rnt+36towTAcXotK9T0Qo8FePL1j4gPSXBXvHzeww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7954
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 26, 2025 at 08:01:17AM +0000, Lee Shawn C wrote:
> While performing HDMI compliance testing, test equipment may request
> different bpc output for signal measurement. However, display driver
> typically determines the maximum available bpc based on HW bandwidth.
> This change leverages the existing debugfs (intel_force_link_bpp)
> to manage HDMI bpc, and making it easier to pass HDMI CTS.
> 
> v2: Using exist variable max_requested_bpc.
> v3: Extend intel_force_link_bpp to support HDMI as suggested by Imre.
> v4: Update commit message suggested by Jani.
> 
> Cc: Shankar Uma <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Vidya Srinivas <vidya.srinivas@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_hdmi.c      | 5 +----
>  drivers/gpu/drm/i915/display/intel_hdmi.c    | 4 ++++
>  drivers/gpu/drm/i915/display/intel_link_bw.c | 6 +-----
>  3 files changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index 108ebd97f9e4..b31fb1e4bc1a 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -136,11 +136,8 @@ static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
>  	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  
> -	if (HAS_PCH_SPLIT(display)) {
> +	if (HAS_PCH_SPLIT(display))
>  		crtc_state->has_pch_encoder = true;
> -		if (!intel_fdi_compute_pipe_bpp(crtc_state))
> -			return -EINVAL;
> -	}
>  
>  	if (display->platform.g4x)
>  		crtc_state->has_hdmi_sink = g4x_compute_has_hdmi_sink(state, crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index cbee628eb26b..027e8ed0cea8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -55,6 +55,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_fdi.h"
>  #include "intel_gmbus.h"
>  #include "intel_hdcp.h"
>  #include "intel_hdcp_regs.h"
> @@ -2345,6 +2346,9 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
>  		pipe_config->pixel_multiplier = 2;
>  
> +	if (!intel_fdi_compute_pipe_bpp(pipe_config))
> +		return -EINVAL;

After this change the above function is not any more FDI specific, it's
also used for connectors that are not on an FDI link, so could you also
add a patch moving it to intel_link_bw.c, renaming it to
intel_link_bw_compute_pipe_bpp()?

> +
>  	pipe_config->has_audio =
>  		intel_hdmi_has_audio(encoder, pipe_config, conn_state) &&
>  		intel_audio_compute_config(encoder, pipe_config, conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
> index 3caef7f9c7c4..d194a366ff10 100644
> --- a/drivers/gpu/drm/i915/display/intel_link_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
> @@ -449,6 +449,7 @@ void intel_link_bw_connector_debugfs_add(struct intel_connector *connector)
>  	switch (connector->base.connector_type) {
>  	case DRM_MODE_CONNECTOR_DisplayPort:
>  	case DRM_MODE_CONNECTOR_eDP:
> +	case DRM_MODE_CONNECTOR_HDMIA:
>  		break;
>  	case DRM_MODE_CONNECTOR_VGA:
>  	case DRM_MODE_CONNECTOR_SVIDEO:
> @@ -457,11 +458,6 @@ void intel_link_bw_connector_debugfs_add(struct intel_connector *connector)
>  		if (HAS_FDI(display))
>  			break;
>  
> -		return;
> -	case DRM_MODE_CONNECTOR_HDMIA:
> -		if (HAS_FDI(display) && !HAS_DDI(display))
> -			break;
> -
>  		return;
>  	default:
>  		return;
> -- 
> 2.34.1
> 
