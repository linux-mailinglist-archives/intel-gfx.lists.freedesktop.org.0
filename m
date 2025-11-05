Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 168E3C37C7C
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 21:48:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C26710E7A8;
	Wed,  5 Nov 2025 20:48:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JwteXV9w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A444E10E7A8
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Nov 2025 20:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762375700; x=1793911700;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=elP5c2wdXFd+4y2yYgWwshweLzUqHrZXGCGVdPHJ+JA=;
 b=JwteXV9wTfUmRcqIL+T80IEUttJByOhHCAHOvCajhY5TYUFfppH/Ctoo
 51KG80QGs1innc04YW7Hk2phU4lcpWt/YUiqO05b+74VpakgV5zcBCs6a
 1PripYGa+mxDbxLxzS4Tioz6ONBgiHHvAZo52l/WGcJQl1RAtp2QDMDdU
 JSJe7DTUlZiCy/KPvlM4WpPcM6pTFP4TlvBzVPDVQZQA9HdtxjlCM6cvQ
 Ne5pKpXSEOJ0Z6C1NRru4N1xLhlPHGhxHQbputOfbSfm5hys8hSj5sset
 GFAJDfWtGFZqZHv4iR78WkVRLDC/RG3AqeJKXo16uzN1DM8n8pQZhZqeM Q==;
X-CSE-ConnectionGUID: vdVnbkcgS7+p+b8VMuZczA==
X-CSE-MsgGUID: rCNtNpomRMGPNrFv+wC4bw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64417991"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64417991"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 12:48:20 -0800
X-CSE-ConnectionGUID: TFerj/1wQ2CtZPf8IRA71A==
X-CSE-MsgGUID: Znp/dCnKSYSZfE/zCRyEYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191849437"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 12:48:20 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 12:48:19 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 5 Nov 2025 12:48:19 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.22) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 12:48:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FUaigxVQj+izeICXyTNOwZiTVNeWo2peH1vPh0MYfjHDx/qupPQHC76TAYTcB5342XPKPwaImsr85S607yZ8ZpyNTvwyFm78nhfwBif6zv64jN0sRD38VSfYSNjzN/vL9tin4CCC9Aar7GRRsFhGBwO00ufORCNQTI2XsQkjuRynNTa7+sGvErzy0dyotPaNiSntREcM8CaX96wFBaWyOP9rnTPOTUl4alptb8XaMkQkEY+mYMZbHstXUMkYRhxAn2ZyY8b3w0bpXNS+kZvfGZf0VmcZstKso107B7avN2LF5BrAxYumNcd67rz90TU21lkQnuHXPOwRpCo+eJ+Kng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3NSeC0BVE2Ch3o0Wijtsd9SQgsuXcZah+LlwCpFA9Qk=;
 b=lKfTOs8/23Akk0gKc93egUV4wHszag3wY5xon/3mFZmjL4emyA1+Zw1g4Hng/slLFydh5fR/TjWOi2m7QKolezxdS6+Af4pInlrjZDwFcTQIzRSJM9dX/xhHf+W4Z6r1dws9Ig+ycmF7oetuFkcx2VvEUJ0U+3ngg8MV04BLjE7qa2C/AvXUar0N0YaaUI7WrF0TlDumQrynC/yB3coj056YL+ThN3+ZHdoPiWTGYFuN3f4nuL89F45QWvETijShf0k+dm3GdWwQBggX0S29DiVsL9Dfi7O6rNDZIOiLTp8PI4SgSbDoeEppVOspo4FiUHiKYae/ITT2BLFmZ3ljDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SN7PR11MB6924.namprd11.prod.outlook.com (2603:10b6:806:2ab::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Wed, 5 Nov
 2025 20:48:16 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9275.013; Wed, 5 Nov 2025
 20:48:16 +0000
Date: Wed, 5 Nov 2025 14:48:14 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/3] drm/i915/dram: Sort SKL+ DIMM register bits
Message-ID: <aoh64lob4wk5nt2kccnbfxpegx2pel2eqxzzj7tm6e5bssvczj@mpidt3cyfs4y>
References: <20251029204215.12292-1-ville.syrjala@linux.intel.com>
 <20251029204215.12292-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251029204215.12292-3-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BY1P220CA0001.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:59d::14) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SN7PR11MB6924:EE_
X-MS-Office365-Filtering-Correlation-Id: 36074e75-a5a6-4425-082f-08de1caca501
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?VmbtHRQzcKC//fBRN5L7woKB3ZkjuJKX08nG3YOjuK0zzMLVoP6i3auCqI?=
 =?iso-8859-1?Q?i5enTd96nA+hbmDJJpSGcfcXM2jSI2D4JwLDTgMftpeJE9CPUgGuJNqGyZ?=
 =?iso-8859-1?Q?bUZoXeM41H6+F4xKR5pFkWJQCfxTONNW0FI5VYVrHgYL6ibe9ytgTuxmBu?=
 =?iso-8859-1?Q?vNnSBXKrM7BzwDTJs0t3+mbkMH7MAOMqiMorJbEerle9SpG6HDuCJfbgfg?=
 =?iso-8859-1?Q?PSOTVYejhS13P92EF6j5HyKBLa4H4NKa/UonCWnu11tBH5YY8TIB7pP4dj?=
 =?iso-8859-1?Q?AFL0O4GRUVdOjQBFJX8ufjVYdWGJNx4a/5KrARh3XherZGWx42uNSDKhWm?=
 =?iso-8859-1?Q?7bc8aV8cOOn/+afj5/0PNtGu8/nPc3P85fpiBYHT2PSGmspAuu2eYrPpWW?=
 =?iso-8859-1?Q?1hsVv3AV545gYEQI2WXEIGe3Ro8PL4DLdhMs5H6PhRLK0XsfXCDvnRoN7E?=
 =?iso-8859-1?Q?iP03MipE8klwZOKZnG9XPvKxLu1QJ6IWmHdiwNPNtLsw7tDbLLKYtFIqiD?=
 =?iso-8859-1?Q?SlK3U8Gd9+jyAIwkQ7qIU78zTl7eBhyxThgpNOJQjRamJIAZ8egf2I5+gx?=
 =?iso-8859-1?Q?8MD+OvOZerwyXyaSiUtjXmzbTHiDv3CzFDkDENDFu+VnaA3Qq5d7Yk8j82?=
 =?iso-8859-1?Q?UuLokHc7mPib0am5xoZb7m5KBl+km/bTAIDAaX0n+lJB9otOJE0E292aPg?=
 =?iso-8859-1?Q?+12h+fwtGIKaUQBJjianMFsvpQP/sbbejg9peTNlFlFHr5xIs61FaZ2kvA?=
 =?iso-8859-1?Q?6onmRNByKzrBGiJGpVTgPYfsxAUuRyhtgifr/+AknmvpgGTCD1OS6apHb3?=
 =?iso-8859-1?Q?DHrV9dZjxBkYvZTVJthuDqq1UNUITcMTxDG5nVW0mBaGhpLhWkzMn6n8Lq?=
 =?iso-8859-1?Q?2FM8MmkFr9Sgajs/aoi8dOIBoBsbdFYmctPIAwhFTy7CVyOgHF9SH40sid?=
 =?iso-8859-1?Q?EWEBbWa1yaD+L7ku3W9W+upu6fCLUdjkAHNijP7PhV8oT4uoEYjbd6pGTh?=
 =?iso-8859-1?Q?xgu3etpWRTDECOinB0ezqpy7V1cgXeMu/xCBIWDBJ4MDh7BT3p9kWdQ8wn?=
 =?iso-8859-1?Q?32eXz8l3eKwrfhJEhLyCOOW3u011GLTAf4xy7ywwN3ayS0fZsoOyztjpNA?=
 =?iso-8859-1?Q?5F/B/StEGjadfUtOQ2TYUfzgs6/KMW5fp+QXpoc06KhcCkrAo5rmGtRhlU?=
 =?iso-8859-1?Q?JLQ73t4E6Y/0jKdPg15VPs1ZCQkB69YZGpOcHS71kPTfxtsCYzxwKnzI5D?=
 =?iso-8859-1?Q?fxKpBjVj3rS5wttKP5nbxDeG7grInL8WCv9vLujSS8FsbihzN8qFbNRJ1o?=
 =?iso-8859-1?Q?Aof6Gxp1X1wJHwEv7NF22dZAWBdzx0+8TiZaxzNIJis8itRchkx6X6XiJ+?=
 =?iso-8859-1?Q?qrsgCjgbWOznT5MCCsMLQNblRZR2Fc3irIh4237A5Pldx+REa+RzJx+W6Z?=
 =?iso-8859-1?Q?Qu/ndajbdrA+enUPVi9LmkQHGnRHrpWTiFsp2NAeipf4jJ3IKanBLWWl9s?=
 =?iso-8859-1?Q?LOCj+W87bDkhpERCxCJf/2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?0L30xhwNJpbg8PN8PpPmYsHuez7zPmKP2VA7A/cxtTPw/Zk77k/7slTObz?=
 =?iso-8859-1?Q?ytNDcfdtSGtLPkjDrvgetqiYDWI4qmUXLI40d5U9FNfm3dY9Weaw8UEMS6?=
 =?iso-8859-1?Q?eYYult9pAqh0+5q202i3AlyPVNa9wwrJZCZwO3qs4vYptxV5Mw2lmSioar?=
 =?iso-8859-1?Q?fSgBx1YNDMWrkKQUgl7KUOSvoFRl5eogWHfb0S7yWfopQVLrN+GT9S9Bt3?=
 =?iso-8859-1?Q?prYu9iJU1TincmQ4uw+BvjELGyF69BYrHQo8UWwiV9BRLM9sHpVoQU2N6V?=
 =?iso-8859-1?Q?SHdEMnZD7MX+DwZlExrIcILOcp8XJgfusm6LhaNs3IHmQcBw/R0BHkFN1T?=
 =?iso-8859-1?Q?xa1FfEiWh9iuBlzt3JldLFL8qYBageF9wgWElV4BMypKg4Sg0UvTe06ugx?=
 =?iso-8859-1?Q?Uca2m1R8QLW1iQ7gv0YDWGAvGUwRQrIMcNwAWPk/xQ5z0knlWQS0RXWv8v?=
 =?iso-8859-1?Q?K3S2rD3wxq6XUHF4vgkiqh7g+Tdt1mgpraC9qt9pmw2ZhV6lnNLHjl0UEk?=
 =?iso-8859-1?Q?SvAk93oqbsyeoXe+kqtE8KbHEejN08U8K2DRMjP5ZLAqpzCKxmXfJmWQVH?=
 =?iso-8859-1?Q?9y3M0jmWtHbqled4vwHmJq711EBNs0Im4LypGEl3aY1MVnNuwc/mSpdp+i?=
 =?iso-8859-1?Q?d/iVFAPerkDBW0C7UMJWAtY6yZPJaLMSf7wYSZ22ezXy3ZYBSf8xMdSe5N?=
 =?iso-8859-1?Q?qZSzwOeiCQLXtQcM4mr8DZkrtLuJ8v5QBlh79FdyyNRaO5x9JKhLms5+nU?=
 =?iso-8859-1?Q?whA+fA8aI3LztxPqHreMujvUtXLqkcso2QwCwoU3/IraYKE0aFEsyZ3rhI?=
 =?iso-8859-1?Q?tKqgy25zK/Uytb9uwmc2WMW+JG5gGyECuIDcVBohzCXD8No38vaOVGjv2A?=
 =?iso-8859-1?Q?trSMxPtz0bFwbGRK1rTFP8exyIb6DtadBtz+9jy2tbFAp6k/UhzRLTsBQs?=
 =?iso-8859-1?Q?551jjzlOXRDr/yDV8E3Yi+zSGrxz9ykURq2C32j7OZyA7NXxPDhxLTHgKD?=
 =?iso-8859-1?Q?GUiWrSrrrLK2f51Pp+gxVHEEa5OmJ4ltRCPsFe6gMzfySf+2SFT/zoS8nY?=
 =?iso-8859-1?Q?TIKdB30v9Oa04aJoq4x65T8CmZLovSHFZLCQwfEv6d0J6g+WZsl6wyWn0Z?=
 =?iso-8859-1?Q?g+V4YsZh7u6T6ATJI6T0/ygXauimqiUCqwgXxN0o4bzdW3InddBNnF3EcX?=
 =?iso-8859-1?Q?aS6Kze7q8SmRvBb9UqIo06651dNrJdFgv3/khUhzx4QvNFap8Ft6ojSCFa?=
 =?iso-8859-1?Q?NBEM9HXV8nst0xX8Mu91WkE/W4QtzagPpNRTh3pHF7rlQAm+VOgbUcSq0G?=
 =?iso-8859-1?Q?IHYv/9mTOSiuI+GbKHZxItb4d/pseYb6aJ3jUY+r/aDcEhvhIW+QOYX1xZ?=
 =?iso-8859-1?Q?Xscdbycp/WRm4cpwmHiX+m5hvGxezxSrV+21KlhnMK87uqyaPE/W2xZaJs?=
 =?iso-8859-1?Q?6JW1sm0FR4ndyLfd2fea84A4jP7Vl3adHvNC0VG0KYpxfaMcegoC7z0qpI?=
 =?iso-8859-1?Q?oPcjkdE7jGwzXhBFIt+z0QJ5vfPXFkYO9aCnTJrTrBSU+SbG4+WIr0BTuC?=
 =?iso-8859-1?Q?5zrY703SgjQIjI8ZEO1DDiUAAFaiGtsqbTNzDcnvYTjhYV5QmvsTz+2owA?=
 =?iso-8859-1?Q?njeCH/1zheQgeBDYl5snGykBQ0r0BaXusXJJJ+ueyKuyexu2tUggusbw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36074e75-a5a6-4425-082f-08de1caca501
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 20:48:16.2720 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JEiHLkCBPeOX8b08tO4ZdPSG5u8e75DIVpI0S7SeBHw9RZ92yOPtLVv7zCWJkSMfYwztaBrvuzmGwsYwGfRo2irpTtEfgoUswXfeo2RHXTU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6924
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

On Wed, Oct 29, 2025 at 10:42:14PM +0200, Ville Syrjälä wrote:
>From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>Use the customary big endian order when defining the
>SKL/ICL DIMM registers.
>
>Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
