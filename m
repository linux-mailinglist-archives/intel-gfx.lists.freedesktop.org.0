Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C740AEA5E6
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 20:56:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7684310E102;
	Thu, 26 Jun 2025 18:56:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cD8djfXz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 022F310E0ED;
 Thu, 26 Jun 2025 18:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750964203; x=1782500203;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=414AEWMc23Zah7/pVFdgercriLGMkk417ir47LTDmA8=;
 b=cD8djfXzn14tN7EeFUlt1WUNUNYjEt68jPMV9Nj3TO2fcZ1rvmn+3jYL
 oXGF9FiTXM2WD8EW79wSS5GZ4B3iFq8RG4OT6xbMwt87DnSLXOKqheBmA
 mYclohM2Cfxwf55tcEYKNsRLYbEnB4GUaPCY0ANQLyA1BNc4RGlq+65CR
 lDxcI8Z3lRX6FSXeCSx8m9cA3/Y7xicLjyJJkWYyH3Kjg3ez4erMAb9rb
 fWvHvU7lZHb3pW8slULpvZtNsFUtVcD40Q6DLDx1eLODXIGkjn8TJSuDh
 PDnCPffRfE4PFqPvH7zX53oS6MFpaoGaI/cT4zQFVXs69TVjkZds6Rngl w==;
X-CSE-ConnectionGUID: 1S70flzDR/yx9zHE6TWEZA==
X-CSE-MsgGUID: Sk5fIJnCSZGWCTQfMlpKsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="52393458"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="52393458"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 11:56:42 -0700
X-CSE-ConnectionGUID: zxB8nMSnTwe1mOt1u+qXSA==
X-CSE-MsgGUID: KlxRl12TRCSV69TLeWHz8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="157167131"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 11:56:43 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 11:56:42 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 11:56:42 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.84) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 11:56:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cKCrfDIMT3KIUAqsqptk8vAGjS55WjO2voYvRsODce2r9EMuVwja1safQdhpkN41PwKwmZ/VFsUEy9VlheaPM2Bac96WilqsTzA1Y0UD2TlLRSo1KYdlhf0oIqiTdd43dbSlREc4MXp9m7g9mOX7MJ1P/r1eizt0Lh1kNjUPm19e7pzkes2ufaXfhWDJ5K28LywTLXRB2B2J/o5Jy6NALuXstT8hayZI/eHxaTpNG71M8oBTh8QP/H3vYAZlr/7ky/U7P/zSM18plCEByOaD2QgKFurqML6Qwt9HL9vOkaKqZPMyI8zqfpQceFTu7RDqM4nQ8KfCT6QJJ8pzCzF+uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8SmBEAZ5yfj3EclPWqqRMBtnEQA4l9A/kzY+j8TiETA=;
 b=VaysQdr+xZzhwmjicQfOHhlmnPGbMo+mxcY5OlRxpiwZfqd6hBdVpVR8gqusBFz2KITAWyrUW/GQRJCO/xD6rBrGFNUcWL/OhDZX/Dr1o2zcqyScmkVxyoBHCd2+8X01Nq4bvRHaocST6j3ZFMEJ2cf6hfjy4B+j2FImVnp3vrPyz6B3Mda+KasZ11kSol5IeS0309dVI4T6jWpf6QzGe3fLXsg660S+hTaZ8QwFk7+lMU0Pv2jPpoLLwmTFH1U/9c57B63Up+iCe7SIQrTPL82DPL7ZXU4MuCmK7rz/GDGXuiz6ZmIBV6b4z3e7H8ITJB698oxvWojanHTbr8/LNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ5PPF0D43D62C4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::80b) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.23; Thu, 26 Jun
 2025 18:56:26 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.8857.022; Thu, 26 Jun 2025
 18:56:26 +0000
Date: Thu, 26 Jun 2025 13:56:23 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [CI 3/6] drm/xe/pcode: add struct drm_device based interface
Message-ID: <gbisrh7ep2gn2fxv7xz4g4sy75qjpmcr5yqdx5atlab2oxevlx@j3zwx3k4o4x4>
References: <cover.1750678991.git.jani.nikula@intel.com>
 <eeaa9cc8438caab2e22f9cb2142fbc18cc0fd861.1750678991.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <eeaa9cc8438caab2e22f9cb2142fbc18cc0fd861.1750678991.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0220.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::15) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ5PPF0D43D62C4:EE_
X-MS-Office365-Filtering-Correlation-Id: 938be179-6893-4c58-7b7a-08ddb4e326d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?NdKVO5j/kURPgMeoaC0a43eub1WRQ718YbfqfHiXurmuCrTm0A+HAP4HVBu1?=
 =?us-ascii?Q?9/Ll5x81yxqMEXDR7TCEtAmztmal0Q8ZdqXIq1OT3WgmRP7YsTgjXe97Dzsf?=
 =?us-ascii?Q?sIWjx0U/AfURhAW5D58Lg9yV05ePgHfIpsBakc+887AvdDX5sqM9gvWc4LBL?=
 =?us-ascii?Q?UhGFNAjWz9BVqdmTRQR3unVfMTzFnzlzOzaQo/38SvBUnRYhl5iJTxYNdJ0p?=
 =?us-ascii?Q?QUC/52qS5pZ5XWdMRjs0dZhQ/MMBEclCODxmGv5wEUDvmTyy0s/yvWXi6k0V?=
 =?us-ascii?Q?4nnJdM+7RJyiNA5RkYI8MQQuRAWV9PseqnVTGqxl/tN9XwH3zRwsoz/x03NS?=
 =?us-ascii?Q?2vF87Yp0qkon8HRS25az6Efy7K2OmIboOF88hrW26S33J7geI0/Fs0UyB3Bi?=
 =?us-ascii?Q?BDib6ow6PIPNd8cNEAAqVL4UcyUg8vyfcZPS7dkiGfvrlir24kPipSnKtCly?=
 =?us-ascii?Q?8WfcWQ/F7GNCi8LiBwHoJ7bP/JXgfZ/hQ4iWp7DW9Vd3b/3OcNFk0Biw29kk?=
 =?us-ascii?Q?5KfkIfjknKxdtAebwvOPFopiukB56Ar0iAK46pdtV8WZDE5zXS1qaH5LSvmN?=
 =?us-ascii?Q?asjdZEtSefwM6ZFw6sfWJLIU/sYH45kp71zwkToeip7p/lf6o4xWzZJCSU8b?=
 =?us-ascii?Q?yQmLVd19ZnWZIMZYBrrUPn3jIqNDx5scnWCU/kQNYmjd0y+fMrYfH2KkhxgG?=
 =?us-ascii?Q?uJo7Oc+yc1LBZmS2r79L+06LlAQ9uCNYq1jBSWEVqblplmV4RaWqtm/rqEMi?=
 =?us-ascii?Q?j4vvF3Qmd+9wol3R3LdGjTRQx7dbIJhhtaTcWqJw2SHe23CJgAyg9aMPl0wH?=
 =?us-ascii?Q?W2uXJ8C4aTd/bMrg58rrfpJfZtKgk9sEDmRtjRkcCi0tM5sGqJAK9+9xM7vl?=
 =?us-ascii?Q?Ym7J32rpslZvOMq7Cz2LCBX3VOarIkWzgwvGa0aqt90aRjz4xu5KRmWUI+Kp?=
 =?us-ascii?Q?ldSU4JMxCbPUITH4WNZud42aeXcZ/Z2lPy19hl3OxTRSsYjZlZ7nBUlJMnc+?=
 =?us-ascii?Q?APBq5ooUKEuVX/06dYN7K56WNWQF8YIYue+gIM+CWrsihzpNl8AIoskBEnWN?=
 =?us-ascii?Q?fk89m7znyvrbihzIc7S+nLxCEtyRcaMAYJKCl9lC4XNunmulepS4aYmW03jQ?=
 =?us-ascii?Q?aEK+PSK6NXKjo2Ssg2zQ4VraCp6/f4WGC1bH1WksFLnnamY/+rGVfo2Dj9Il?=
 =?us-ascii?Q?qvxd/s9NF8tDNT1lh8ISmuMJHU9aMBEFP8QM/iUPBLVtj2bTbGTU2HEPFt/D?=
 =?us-ascii?Q?giQH1aBHAtdNyRqhesU3SfU6cSB8GDimj0Xg+tagwlDvLL/BaGO7Sb8Foy36?=
 =?us-ascii?Q?RaV3G3fCp4AzSQlXEcsqHtX+vzbfLJGT/1GUnHlkqk155DdhMNsekZPa3QPM?=
 =?us-ascii?Q?Ejhvr0NL2t4+OptRCiPEKOzNABIxkx03tZGjTxI7pB8BsZpSQR4t63vRfe6X?=
 =?us-ascii?Q?njxhgkel6dM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bChiaqISXDjoXkneCxJvR7417ThDNu4l5sb5kCGEJ0etiAV+bB4pDNAqmE7Y?=
 =?us-ascii?Q?8/D9CJ9MCsD38UTwuYRNjcMPInklqV6tXHd3JXn7dIJPX0wZh3DesWidYbHV?=
 =?us-ascii?Q?l0lhJSBMxsGBbneqCwGDLQRsvsUdTJdtFcB/9WZkhy5R7WKs5AyT3yTVgJ6+?=
 =?us-ascii?Q?h7lteiIqvKsL4O+Z8yaMDRFdgrKqMumt7fbujpUIohoasgiXriUNc5eiwT9F?=
 =?us-ascii?Q?OCiyEc8n2c+Agh8vPP8bWThx/muX0Gz4NaMH1jylyi3DjO9yQcy3L0gGR7dt?=
 =?us-ascii?Q?YLLnW6pxAby6tFCJMqhUll0totRmPn61E6q5aDn/5mkSmJY9rE2evuI1Z10Q?=
 =?us-ascii?Q?jF4VY0ibGTkk16FZObVWtCLcX6UZoZay+oL4jO6uihsC+wWXaCMg3K1ued5c?=
 =?us-ascii?Q?QFhC+2u5IQfZWNEBuP+LbAfa2WIqFGqNDjYWJfYdtDTgV37BASJ3FGQI3XGR?=
 =?us-ascii?Q?lROjN4vsUBiCEJiNamYlX8tukCUe+N0sXiZXjzCIzPwdKn3J6w/VTVEEibSp?=
 =?us-ascii?Q?jz2AhT/2hzQfpFT08CYlgZhwKB8ISj2L82SrBIAUONrCnlIvGngxHuwURILk?=
 =?us-ascii?Q?4xvICegkdOMOmRyQ5G8+BKyPL9b2A8dmRQGRD2tL2zBticvX9Do+RZHchUrB?=
 =?us-ascii?Q?/PU2Y4wblEsN/xawieN9lDJzVM9nOG4cWyi3+d1tSKaNPLqtfdOuGjgqBCRO?=
 =?us-ascii?Q?wqNqh9ybVJj4Jr9l6kFP+Z1LNpU3GQmxNEBiE5WnKGa7VVBCHwTDZLaCaaMo?=
 =?us-ascii?Q?XICDbXg0k02uQCVqau69diw76LVzrcDl/yzZUc3q5umuvLariyzeVbAc/zkP?=
 =?us-ascii?Q?qf+EpL3tc6mBIaHk7T2Vpju/cMVtv8RH8l6Dp38Cs66oPtg7QZXxATGorsqP?=
 =?us-ascii?Q?DRixPiKE9H76LUlcLvQHeCiNZCKMVplcEpka8hIUDX4NuYU+i3VBK1uhPBHI?=
 =?us-ascii?Q?7jGzovH03qjFTGSZGRA4uFgIzbtK7C+EBPKBRxsNj2VE6waOOxIRat4SrF1Y?=
 =?us-ascii?Q?v/JgZyRwhOMj05UTm/u7N1g8/J7g8zI3Tt+HwiROpZKw+mii1rSpIFXZ00zc?=
 =?us-ascii?Q?d/7fbJ/QpW/plhvHQQsQe2WnUeEvzJdGLv6XmBnsqbg9/6bxXII1O3ICZlUW?=
 =?us-ascii?Q?fEky/8E5Fta9qKC3HnIZbQPtmsxcE0ZRM8EVKyIHZ4qnAPR0kncpMKOYblCK?=
 =?us-ascii?Q?XFT8Ck6O3ofhVAmuugnAdcS0xYi3ANcAlHJtHN0S3uRUJP9b4HChaWgW/cnv?=
 =?us-ascii?Q?pZJphEox43mSqMX3JQWYZi7ttdWl+p10zyW5FubkN85DvSnXdrOPr3cTncyE?=
 =?us-ascii?Q?ulJLxsTsVeJ3U6r6jCSffz2wrFTmZCHxV4G6d0GKYac46jPlb9oTXqMfgtZ3?=
 =?us-ascii?Q?tn0IPHWp7QGYgRqVpvc+8oFoiuaOYd0o85kpYLqGu9ai9WIZsIiiYA4eY9jV?=
 =?us-ascii?Q?H4iSL5t9Uo5au3XH1adzT+qfk5cr9RXJSfIfTiONWMlhWsZuY6XbeszHLuRb?=
 =?us-ascii?Q?KJYedQbGYnH+T7XQnda0OKeDEDqdu21vHvbyG5giqqyHSwOl1g37LbGDMOYz?=
 =?us-ascii?Q?3wIvA5Cqxk4hmSwQdfDVu7oO2RzYeto4/I5lT8P7wzbyf7fnveCBqZ4zeuqc?=
 =?us-ascii?Q?aA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 938be179-6893-4c58-7b7a-08ddb4e326d2
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 18:56:26.0645 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KHeA/+QIXviGjh1juwaqk5eat5PJnJHd51onlxnfGdXcJxd7fkWT6kHYzpkRH7q0S0Aefet7mHIQwMiP8f7SFySU8tbJNH1JT/VI+pUzD0I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF0D43D62C4
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

On Mon, Jun 23, 2025 at 02:43:46PM +0300, Jani Nikula wrote:
>In preparation for dropping the dependency on struct intel_uncore or
>struct xe_tile from display code, add a struct drm_device based
>interface to pcode.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---


So now we define intel_pcode_read() in both xe.ko and i915.ko.

And intel_pcode is only called from display or
drivers/gpu/drm/i915/soc/intel_dram.c (which afair xe is concerned is
built under XE_DISPLAY only).

We used to allow both i915 and xe as built-in as long as XE_DISPLAY is
not set, but with this patch this is now broken.

I think we have a few possible ways to handle it.

1) Revert. See https://lore.kernel.org/intel-xe/3667a992-a24b-4e49-aab2-5ca73f2c0a56@infradead.org/
    
2) Move the common symbols to a separate module. We can name the module
xe-i915-common or intel-display or something else. Then we keep moving
symbols there until we can move the entire display. From the module
point of view it's just another dependency that will get loaded.
However, looking at the implementation, they are actually helpers that
depend on the driver backing that device so it's not very
straightforward at this point.

3) Forbid DRM_XE=y && DRM_I915=y (rather than based on DRM_XE_DISPLAY)

4) ifdef the helpers based on XE_DISPLAY... because if XE_DISPLAY is
set, then XE can't be built-in.

I have (3) ready based on an earlier patch and (4) is pretty easy. But
I'd prefer (2) to move things forward. Or maybe you already have
something else? Thoughts?

thanks
Lucas De Marchi
