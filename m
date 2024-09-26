Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9939875E7
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 16:46:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D15E10E07C;
	Thu, 26 Sep 2024 14:46:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="clVeSJw9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C55FA10E07C
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 14:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727362017; x=1758898017;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=qTeaDzxdcgGpkJ1W8s2aS4FYgR1o4QA7EbUcrAWiVFM=;
 b=clVeSJw931O2iUY2s3M7PoiZscBcqqX3dy6F9fOPbgTQ8K5yO2WoGpqJ
 MBMdLwLMoL6FAexsu7onSjoZ8yqOxoZ+CLhL3AWtn4QmpcThiw6Rbrp5O
 fxNeBl81i5FosJ6SHlmmsZdba9SAk9UFQp7Xb/OyuDw5fM0yrPQB3mF+b
 rTUrFkqcPVLy/QqSlRPqvbaz+rgWXCUT0A2w9J5nnlhP7IVtH8/YICa88
 MtqCCJJBoHf8bTTRlHPYVGLOguMGYrTVmGFaJXPjpq3A13rLAu3jYIT1M
 VrH6Fw/VCmDZYqvVRjrmMWSKAKSirm2SiYCkqQUX5qSs5kJYAaMwDAIh1 g==;
X-CSE-ConnectionGUID: F8eqjfAuTleKiHS+4habHg==
X-CSE-MsgGUID: 9WXDmJHJSneSdk9/MerETg==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="14084626"
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="14084626"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 07:45:51 -0700
X-CSE-ConnectionGUID: jefx921DS/SIZhq8buJMOA==
X-CSE-MsgGUID: 14rjPzvvRbOameq8wIVgWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="72328209"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 07:45:51 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 07:45:50 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 07:45:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 07:45:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gjNpm+4MOdnfyVyI6Nj43WqIgryvf6BQS4/rW4xR/iu8N3JqLEzEWFqE2K64BB5QWPmZFZmYsTJltNrxaF4Yb3LWqZ2cr3k2NJoAmjkn7SOqYqFShjDDdAJZYBCGuGogf/y6h0sq0iLSWapLXixLvBPtFxRL/SUerA7XDTCDnRnYGsGzHfouBQqewvx1HnvTYmJARFGufMz1eWZ2A7i1lcBnVItMA+EaHo2LRhK7Flr+ecfxw/sEqwAH6c66KPtTPdxekKjiDHprUhamGsHaRkMVFpDpZpgF+3ICA8R3DPDFmuKTk9bGz9CEbfVrCdb1NvNL/KYgqKl0FJOBuzQJ2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vsBa2jfCokfDMypU0K41uvhR4Nl9OGuaRi1uh2CBmA0=;
 b=ayvUAgPE+6MCxFUC5f6W6U3U45XgtqXN4RuLB/Ng939MXkapbMr4Qofbzc+QTFLpxe3oasJy3IiLcJcXkcJM/t/Cz9ofpZmNUyTWtyfIilKSXYDuUE9+NH4KV3k/2OfPC05J9OpmwSq0ojUWVykbZi7ve9+8JbWstiiuRa5ydzVYt3By/QaYwjzUxzs3zWr0WHljM9qAGM1FMwfXTt+r8Bh9R7WIXYCO+X6vBkNnImpIEXg2NvN6ZI0vg4ee9Yr4pqZ2G/6o7WyIa7UQaFEz8hpHUbbWXwJhEBXMJqTkBbviQ81NEdRip7R5vPMeUhSzdZn/N5q2ouiDT7SFaxi9HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB7641.namprd11.prod.outlook.com (2603:10b6:510:27b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Thu, 26 Sep
 2024 14:45:47 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Thu, 26 Sep 2024
 14:45:47 +0000
Date: Thu, 26 Sep 2024 10:45:44 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, <linux-pci@vger.kernel.org>
Subject: Re: [PATCH 3/6] drm/i915/pm: Simplify pm hook documentation
Message-ID: <ZvVzmKIL_PrM2fds@intel.com>
References: <20240925144526.2482-1-ville.syrjala@linux.intel.com>
 <20240925144526.2482-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240925144526.2482-4-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0162.namprd03.prod.outlook.com
 (2603:10b6:303:8d::17) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB7641:EE_
X-MS-Office365-Filtering-Correlation-Id: 560b307a-5ad8-48e9-383c-08dcde39e883
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?aAT+Hg/Hux9NuHqvV8pL9dNedFFqwdXdG1MQoJ4btSmhNmbIX5j9ZAFLGj?=
 =?iso-8859-1?Q?Bvu6IQ3KHM4l9zUnX9pWBIeWqmM7DDuo+p4sICE+ANZ7az5K0AyJgsFX3s?=
 =?iso-8859-1?Q?3QcXJ/DofB6w6/ZSgiQ3rpaPxbrRlUTH997Y530IhHXy6ukdWSi5MSuFk6?=
 =?iso-8859-1?Q?/88a61+44GIpvmickmuB4LkTPN2iGWBiyxr9Ljb/Q49x/Gkm3SNAoWt1f5?=
 =?iso-8859-1?Q?CkIxEhcH3ny4YubVJiwZkWx4RQiHsuuj06K3s1addKFI0Rl6Ftt/ZrQBC6?=
 =?iso-8859-1?Q?Z4bqtj1WLHxEH1XDRZhOlDWAV2e6NN75Hq2dND6FBUOQRFhsiEEvIOYDmg?=
 =?iso-8859-1?Q?UExUvfVEQd9rF++gU1ZDduIG5tnGBK2aapEWNiwRDxj54zTUdAY59rt6VI?=
 =?iso-8859-1?Q?5TmLJZRvgNgjH4Gu7MEOSLqykWcFi3eY/ebMV1SoJeSSAF3k4KVOltE+du?=
 =?iso-8859-1?Q?IxCJw/Dzo4wxNtARRn4vEqbGKqYuBxEHRQ6ya8pvw091gpZJXTXU4QmGTg?=
 =?iso-8859-1?Q?nZ5uobk++wjlk8BTTSwuTAi9lgS7PFnvAeF2wKaE0HOSpWYtcU49eBpYs0?=
 =?iso-8859-1?Q?/UzVG2vv99AYjScMbrXXpxzeVUFNoq2t8vJg+oNnxsXdeYDK5vI+NS1zf+?=
 =?iso-8859-1?Q?UkbazczYrL4aBtUWCVhpNTXwJ4LEH2BNeqb46YL489LdWtwyCmu9+mg5t1?=
 =?iso-8859-1?Q?3zq7K8/uFoznk1mDFCV/kmH98ERxA2XyYkSqfYLzwbdEvc4dPnaFqZiI45?=
 =?iso-8859-1?Q?pf24fq0ynVmR7dijRPIJSRRpEkLi3/TQnXcvAfS2n2cfQmEoH5U0kJV2MB?=
 =?iso-8859-1?Q?2kigPJqEljSjdRe0HRpwLpkL5yvyTREJbT7kps8CN/VZndqLQjl7bdEgAY?=
 =?iso-8859-1?Q?KWTDY+xcuu61iclIykWnQi0096HNqzkKKY8mOB9Z3Zge3lcNde93u92zEP?=
 =?iso-8859-1?Q?aq8dqcE7zvxTn0o8U4qhccRsSVRtuB1s5UT8fnaMqORE5685dHj3NqQoJ3?=
 =?iso-8859-1?Q?X3Nn86ZpVc1nekqW7AhYdHouFSi7Dd1a9Np/3xNuyM6SAJyGMuCRMJ+pG9?=
 =?iso-8859-1?Q?JqqIwVEOXq9tB55/9qLdhfTq9Worvnv/LF55IvE0LU2Cy+ChcCldh82NZs?=
 =?iso-8859-1?Q?sUkiiij7XNqhbRObEBefVSnDVTYmrlqadjTriH2g6n6R5X5Pk9uaSWU65q?=
 =?iso-8859-1?Q?V70nM6rmZgZeNkFNpQke16mW2GXDdb8PxY+z5UIgnnZE20WvWudWdpnw31?=
 =?iso-8859-1?Q?iROLTfFGgNcwtg7fro39+Fi95PspByFLDb4Xf07ymXszVyIapDGuwySe2K?=
 =?iso-8859-1?Q?dxn2PmQZ66/f1lCTAxxAWaDV3g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?e2Jrq0FH9z5o2M/0zESl44RPrQC9cG4PCeWt4ThH0xR9LAIAjCkXrCY3d5?=
 =?iso-8859-1?Q?+nLsQV+buBR+ZdTE/0FAqKMbjuILl2YSEJ6AlGH8MmRxwwqYIvDcQRvWLn?=
 =?iso-8859-1?Q?QuoONXyFj9oTu3C0Y/ASfLvlz4Q6kKDRr70Y3eAP9jSs6hq5zYLqCXb/J5?=
 =?iso-8859-1?Q?bfxG94iCP+XbB70LeapUl2VrfgDEmMiAgo4EMfKqzKFlSyduyMq6IpAXTh?=
 =?iso-8859-1?Q?e7ar1JxeD9SyN6G8ytKxVFuqD+KqVgJ5PF1MlzRoEzX2i6/Wsuzx2Azu/W?=
 =?iso-8859-1?Q?AoPkHHgtuNtk9zOqjnSJPMzwDBhXKKbIXHmba4OtQz5mA0WtOIJtVuMpZx?=
 =?iso-8859-1?Q?CITSS6V2bE81isMMYWaOsTq7p/lTk70pZfQMz/P17h2nWKj/Q2u/3YD3VM?=
 =?iso-8859-1?Q?mc7eI0Yp2sRXxZEjojyjBx6G18b4yI/kaCHv+Hq8AZm0gc9I5S6/Y/p2Y2?=
 =?iso-8859-1?Q?+Fox6TfCqd7JivJxBNkTk7y0h2Fqt8TI0hIGrqoGc4s1xU0VD/CZyowqtX?=
 =?iso-8859-1?Q?khw8wgJYZX2ehrwe0zvzoOkz2aTefKVaHlR2tf9q/vVTLFhf3GQ2kwqkWG?=
 =?iso-8859-1?Q?REXN3X6BB8TTgtr6GL6J+avDeghEjFQij/4JASloWydWWK8FVBpCryc+Un?=
 =?iso-8859-1?Q?LLMbnjb5bTD/JZQISYINvg5IcY6KUje2MAWnpISgXXp6HUe4EpCPLofBE+?=
 =?iso-8859-1?Q?cOeJ9ml3Khn56s57T3FOVdGviUi3CrjYd7ek7vYlVDB7U2MqxyfNsgwbiY?=
 =?iso-8859-1?Q?w6FFnEEzmWAvwtCfQOsAoa3ufo9tro0Zidtv8YFzRT5XKcM7xeyaK4Et7/?=
 =?iso-8859-1?Q?ArSrjAFvcG9NnZMxivxTnd+74TwEV9X/1pvOWfnHyeuVRhB/GWUEIK9fn6?=
 =?iso-8859-1?Q?SNIP3GgFJeYNULnra6rqu5MjSYBTs5XtKykCUYESO4car/QAo46lfAAf2X?=
 =?iso-8859-1?Q?lYBcZUkCLCbGWbu8gxtIXGGKSXP2Qjhy3B9d/TO4IOB1kpLDXX2VMtkIiv?=
 =?iso-8859-1?Q?PA9VUkM+RNDln31Sa3TB60qKWjy1IyRjKxOzqSZbywUprIH0w2QDUC75au?=
 =?iso-8859-1?Q?NpBqiuKiest2+odERh40yMathdPQPU7aDq6OimZGRAeVAdjgeR7l/hYWCr?=
 =?iso-8859-1?Q?JtwpremsEMjXBdgwnVuN1DYd5GO1lMV1lswP7lLPoQFeaE6WvtIU0foMv6?=
 =?iso-8859-1?Q?YgjkIojpqAx21Yc36wCbYgHTsEF0YNX9neDXcLQhoJ1AFd4TPAy9BZ1vgM?=
 =?iso-8859-1?Q?oQfhyePpd0G51nT7kydvXF6gr/0jR4Q2Z1jxxjVFHxKh8CEBO8n4skpvOV?=
 =?iso-8859-1?Q?/M6CNfb9zA8PbReeV0F6Cst7fxVyiZySx4264YDFOLi/09V1i/U1TuIn5b?=
 =?iso-8859-1?Q?1w5DfbNo3jbgilC9nZGHIByIN7RNb99hIRWz4bKxb1O5zK3I9JySelNjkw?=
 =?iso-8859-1?Q?aPbl8ZJSKvTDDfH3qFSbkyApWXWQ/L5qfesZr7U61OKg/EJLLG/DZMORyO?=
 =?iso-8859-1?Q?r3uhDQ5keEl/5GFyVGezQQ8UktlGiKuuToVy19dlyJqLqc475evhoeCP1X?=
 =?iso-8859-1?Q?Q9JPGcmerfQ0C0YNl7pLzv98N0pJYlOUpGgbxBpKk6ADg09062+RPBU6bd?=
 =?iso-8859-1?Q?5fi5atEXXMSyAhmreztw/Lw/PIqARrjeLNl5t9nCsu7LxksjWSRbp8vQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 560b307a-5ad8-48e9-383c-08dcde39e883
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 14:45:47.8015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yd0apAgDwlofsMFEiB2syw0cXN5N/vRhQcE4Ok6zyp3nC+i9lsjUuzn1hmcYm0OHM2W94XpkwzcJA04mZwwQBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7641
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

On Wed, Sep 25, 2024 at 05:45:23PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Stop spelling out each variant of the hook ("" vs. "_late" vs.
> "_early") and just say eg. "@thaw*" to indicate all of them.
> Avoids having to update the docs whenever we start/stop using
> one of the variants.

That or simply remove them all and refer only to the pm documentation?
"Entering Hibernation" of Documentation/driver-api/pm/devices.rst

> 
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: linux-pci@vger.kernel.org
> Cc: intel-gfx@lists.freedesktop.org
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 9d557ff8adf5..1e5abf72dfc4 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1644,18 +1644,18 @@ const struct dev_pm_ops i915_pm_ops = {
>  
>  	/*
>  	 * S4 event handlers
> -	 * @freeze, @freeze_late    : called (1) before creating the
> -	 *                            hibernation image [PMSG_FREEZE] and
> -	 *                            (2) after rebooting, before restoring
> -	 *                            the image [PMSG_QUIESCE]
> -	 * @thaw, @thaw_early       : called (1) after creating the hibernation
> -	 *                            image, before writing it [PMSG_THAW]
> -	 *                            and (2) after failing to create or
> -	 *                            restore the image [PMSG_RECOVER]
> -	 * @poweroff, @poweroff_late: called after writing the hibernation
> -	 *                            image, before rebooting [PMSG_HIBERNATE]
> -	 * @restore, @restore_early : called after rebooting and restoring the
> -	 *                            hibernation image [PMSG_RESTORE]
> +	 * @freeze*   : called (1) before creating the
> +	 *              hibernation image [PMSG_FREEZE] and
> +	 *              (2) after rebooting, before restoring
> +	 *              the image [PMSG_QUIESCE]
> +	 * @thaw*     : called (1) after creating the hibernation
> +	 *              image, before writing it [PMSG_THAW]
> +	 *              and (2) after failing to create or
> +	 *              restore the image [PMSG_RECOVER]
> +	 * @poweroff* : called after writing the hibernation
> +	 *              image, before rebooting [PMSG_HIBERNATE]
> +	 * @restore*  : called after rebooting and restoring the
> +	 *              hibernation image [PMSG_RESTORE]
>  	 */
>  	.freeze = i915_pm_freeze,
>  	.freeze_late = i915_pm_freeze_late,
> -- 
> 2.44.2
> 
