Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C41A2D0D6
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 23:43:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E21BE10E2D1;
	Fri,  7 Feb 2025 22:43:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CM8BkQDk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2699210E2D1;
 Fri,  7 Feb 2025 22:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738968080; x=1770504080;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=wKg3I4UiuJ51f+e56CpeuIWORvLBKsVNnhzk78exgYU=;
 b=CM8BkQDkZtqGIug9RS09NMlNuFj1mGGgAXiGmdGYacT9I6gbGDhD98Mt
 PlBtp++e9B83rLu2k1VdhvxNyCGNhazKHvHGAgAsj9g0cw7auhbw8lGCq
 8LrgrrWv7CdFtzW4RHQRReItxZGh6FH36qkVKX2hJEyhSpo9nBy3PJoUp
 k/TAxKMiPESCu5+2zTSBcFR7oy7obdaCXIer5MkqnjnleHk/SE2KRh+JR
 w3BhDcUcNczxjA7HTfwO1Qb29aD81FFoncOQ+IMTX1pfSJ92pUb0j4WWT
 G8vYK6/aD3tBVcZSY1PWTCuHWcgSWOMo3EvQFBjfW4sF+TX8rcLm+rOJC g==;
X-CSE-ConnectionGUID: hM/eVdIlRgCRw9v5TRCawg==
X-CSE-MsgGUID: jf9ovBpIRJedRo3gvQhwzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39886727"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="39886727"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 14:41:19 -0800
X-CSE-ConnectionGUID: H5U7mUHeSuaSJUAOKE4AGQ==
X-CSE-MsgGUID: dZzlX9oPQI2BI/ftEUPd2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116855351"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2025 14:41:19 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 7 Feb 2025 14:41:18 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 7 Feb 2025 14:41:18 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Feb 2025 14:41:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oiuOXXBZ+8FLMzW1ln5YQt0e+8lz6g+RiGYTUbWD98+mAldymNAjihqVP9oYkpmyaTwMA0wyVhi2dAetQcnQVPs/8BBPIpOvnULavGSqdBS5dfWep/pKsk+45x+nCwF2WIm/oGg9eT7P1nHtpQk+yZaiDeY51bmiz+hYEuAwQIZj2Q1fq/qsXYLsHMC+BUS/KrMdRGqI1x5dXVTj2cZn8pIU3Re6pa+v+CoWfCS+HVKTAGGNYyZUGk+AVqHFOz0PLmHARKdyYNjJ9pYd7SAoOoIgVAWpx5ozUnXL+2qO/bwaz7QgoxaC/r7BaB0DAdpxPzqKR+RjIlIA+uLKGuJDYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nuydfDhl2kmGl83howbnZUk6/TDQGm7Evy7+aOXqX9U=;
 b=n+gXxAaJmYDsPNHNbRUKAfF0eOK3WKgfMAwewTp0ECHtdDetFoq83nBz5lWyOfeJ9MXrBnkAsUUPDZ7fccIcZZXIoOJjTTyFbxYOZmVQW0IgCrNUx6sNXKeTSx78hg46MYwRhYi/p/sF3/P0hBXXioVnGQNA2ujtODNkMXVcN5dKQ/7IEZirJyVmR0+yeCAUgELSQQF3ifJitWTX+ZPdy/uCMURSa0V3mxoCGNOwHF3tdF5RaY8ye6bl+N4zg+bXsIiaLfIWfs+WHApYwJTfRGjvgIzwxZCbhVQXBiuTVPsU0PbX9gUKvHXi5i4HQ5uhbDvMnEnFlEZKH9dPnIOjng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB8362.namprd11.prod.outlook.com (2603:10b6:610:175::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.15; Fri, 7 Feb
 2025 22:41:15 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8422.012; Fri, 7 Feb 2025
 22:41:15 +0000
Date: Fri, 7 Feb 2025 16:41:11 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Matt
 Roper" <matthew.d.roper@intel.com>, <gustavo.sousa@intel.com>
Subject: Re: [PATCH 0/3] drm/i915: Fix scanline_offset for LNL+/BMG+
Message-ID: <hwau7ipfc7kfmjtosaxhdiz5cjvc3y3dborr4l36lugrfw2s75@bb4p7hjsb7wa>
References: <20250207215406.19348-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250207215406.19348-1-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0352.namprd03.prod.outlook.com
 (2603:10b6:303:dc::27) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB8362:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ff7a95d-d4a6-4dd4-785e-08dd47c887e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?qa73ZIE9h7WdqQD68aqyHZKwypqv0Nqt+VXLh88wfTr74XDswtwxodeqt7?=
 =?iso-8859-1?Q?MQVWmGpp4JYM4tdATE/pcJ4iW0pQa1PGmO1okpfnsS6VxtY+Y4ni/uZcU2?=
 =?iso-8859-1?Q?YgtUWGxYgnkFo0dE+XMCdZABOchcGkR/gEtwT64+Tu7uv5igWSIMfe50YY?=
 =?iso-8859-1?Q?aHu4q/Kl4Ucmrx2o12ltP5ADYv5+6EjYpVWFiztdeCukUsuQimESaUxMy1?=
 =?iso-8859-1?Q?x3XS1y7cdPyivud2GBxIPwPkWQNJ8p8uFOOcTUDVKGHPTWV7m0ZK6jI/yF?=
 =?iso-8859-1?Q?DVfoetr5qntC6Fs/sRLOn+XQ95b6fmXeo1+GbKt7aeGITEIeXEKMImEzYV?=
 =?iso-8859-1?Q?z546mXW/hIXyi0d8eGh3VKjQySESNjpg5iBephAWQBZQ8OxaFkwlv4Okl1?=
 =?iso-8859-1?Q?L4cLNy1RhStef0wnPGVcjas1d3wUCD9/kx19rjTCXE6rgwXz2lYD6r2qqS?=
 =?iso-8859-1?Q?tZtohMiT9iSsiT42xdJLWoRIgWuqq2NR67Z2Tm2zDNpMcCWjRxbW7lcSVo?=
 =?iso-8859-1?Q?mYQTLcyMBGFc9aaOQitKYNzkhKS4TVYPq18PsftywB8FlaFXlntjxic8o4?=
 =?iso-8859-1?Q?MsQ5ovqC4bFwuKefMOSHHh/ShpGKOecJbKxBhUGvBrywiwmj03rdVm964l?=
 =?iso-8859-1?Q?MWF4BiWPrD92HOv7dFSekfJ1wYNpfkj/i8NUi+EZph4un4mTTgIZ0zpzji?=
 =?iso-8859-1?Q?l9DYtSYvN4klLivnNgKQHMUuV80COgAMwjMbZ+99D6eO9Q4ZerByiF3K71?=
 =?iso-8859-1?Q?QXzx6kWcj+nhgJKc9+eN0dWjQbjzYUeiFZO/ZNyMEN5D79KcF3bUj7cU0D?=
 =?iso-8859-1?Q?1jTx50zGX12izqWsDB9L5BjAOF6j80FCKadsWMqza8wQrXO7bb+3H59B6m?=
 =?iso-8859-1?Q?OpWMCu5D6Whfc4Z64dC6OBwx82I/8IYO0oBuVXwkHWTKNw8+AmmY55f0Ds?=
 =?iso-8859-1?Q?IjWVWUxbjO8/RK5MUBhunure1d1Ahh4LOCv++rkvwIe/YjMETvUip+glih?=
 =?iso-8859-1?Q?BDILp28PmMEuJy0V4LSzw6wsj15/T3DDzYYol+LvdNkvJqi8bXbve2pZfF?=
 =?iso-8859-1?Q?wcrOrmM+YjNbKf/OXt5pnqJIHKg1m5TgScEGv0mXdtlG3a3PvyPdOrwCDp?=
 =?iso-8859-1?Q?/uR9YjoTaIq+R2tNUojYBZDYS3kalXoVKz8HbkmKQV1t76Y3N2rw+MbrNz?=
 =?iso-8859-1?Q?RKzQ3StffsfDHEcNKTZH8YbsAChknv1KaF9N77aG/6DDGJPoR6VnugwJvk?=
 =?iso-8859-1?Q?F41I/znInb80MbGuxqxz+eYdKOlI1uzoY+vmisStExBFnErawP5s46Ogn3?=
 =?iso-8859-1?Q?RAufTZFaTEGMRi2ItVbEKgRsSvw7KowimcJFNNKEXM/0Vy8CwgMJdxqQbm?=
 =?iso-8859-1?Q?RdAmXIkRwrjHmxISWrelUhXGFMB09eqfbyFWbW1HSYQoDz9eEXj/KDSKfC?=
 =?iso-8859-1?Q?3DlT9ZvbyssY0ju3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?x9p715CHX52esTBVdIYH+wTDt4apnhC7fquFx9EmlFxEIuI86Ut/3a0S32?=
 =?iso-8859-1?Q?leWgmtIJyh3HqNl4m6kId4xWfTXEDzJAKp82a01B3Of/uoXPjC213ZEfWg?=
 =?iso-8859-1?Q?gZhoF14f7VTHl7qZr471sOvnKPc05iYaxDUVXRb6f2e7yCxsFVeFCSrC/a?=
 =?iso-8859-1?Q?XqQOn0ztaYWtrhJVzESSFLpZnhwCTFdQaqhhcJp2dlX61h1p2lJtAqBV9c?=
 =?iso-8859-1?Q?4NOncFPEj7TRsGqz8Bm2ztbZ4cflKl363GTvmu3Cxhq7ShasbKyNqmvlOH?=
 =?iso-8859-1?Q?lw9vlLgT1igugKff5kQTmZkVZBIAXEcvbtqDTVpDsQEk/lO7D1hd/Akl4A?=
 =?iso-8859-1?Q?z5kBjY7uzNqynWN/vNhMqWcQM+pFk0RgVK3w0uXUVZ/6gDA31SRFmQZkZQ?=
 =?iso-8859-1?Q?WD7C8o4hgGMb7OfsMoTxeVIkC/94qSkntx492z7TfDcGCkvCfT0en7VSfy?=
 =?iso-8859-1?Q?c7n3glUY0KOkGUwS06UsVvIPp+F2QSv7wUa9c1rJO4tinhwLbY/6CFWj8/?=
 =?iso-8859-1?Q?h8l/gBYSv5KStJL4CWEEyHx1TPIQW/ce0txDwexfCxqzwqtmcAj9vuBmiO?=
 =?iso-8859-1?Q?c1gSI53er9ey11jD3tyb0XK8sqlwJNhbWvAQFtSZhyi1664BGVdjI7sJj6?=
 =?iso-8859-1?Q?W0S8q/eSv02A46fJQJEZbXUII7yu4uwoTbaJUauLa9sbyMQM8hZ8bnbd7n?=
 =?iso-8859-1?Q?hlcCfdOhtKbEoCwoCqsjUNLGKK2Saj+FyHWMPWMJjI94XsR6zZfww+v1US?=
 =?iso-8859-1?Q?dUqq90jcvFsknecCZTrsnu2g+5pqrSqSswl41bUX45CgNKFHA1Gp7vT+kx?=
 =?iso-8859-1?Q?nWQaY9Soqla00WY94b4Z6ZIXh1PDAj2kftif/6MnGtEcTMklwnF/Z6pK8O?=
 =?iso-8859-1?Q?VtbcY2xuDlh7VnfBE+cFxu8mB6M6soTk1/dfFVwn68zQCpxZQJR31HzQWs?=
 =?iso-8859-1?Q?vwQQmHWEWMCP061dCBMqSDsJKX/3L2ColzXD4FoCesl539izBdBGK5TmcX?=
 =?iso-8859-1?Q?pHxTdmfRsu4Qy7UUmnUM5OBoY75bBPjmtg8NSlb72JM7S36g0XEPAFpmtQ?=
 =?iso-8859-1?Q?Wjf2HfXY5XAD5jkoUjRbKW7G3JtyrK6TfK7zbAofmVkP0WJPuEdqJ+Qu2O?=
 =?iso-8859-1?Q?5nUlwt998hClclE0Aj+R6tqHHN7UUQ8V13rp1LswW9/mq9uNAjLTUjKs7e?=
 =?iso-8859-1?Q?lMgMOuB6tCbudWgSWmRLbU4XPolk9JxyPeXcmlWZmuKT3QFBG84UOhOnzp?=
 =?iso-8859-1?Q?o1hFH5rmTTlVv9Ku/4xjh9oLdgu9m1rdKJMZhAWsjd6p2V3crCw/JM0F5e?=
 =?iso-8859-1?Q?5zlOk5XIxgTsaMvtynUqtrp7fuVmqHopnmz/noHJCIrFcIgX1K8NBBEr1a?=
 =?iso-8859-1?Q?fG+noZM/bkiP3fCV2X9dsneWw2uFofqLzdXK8JqSanuF638lzHSo5kCiFL?=
 =?iso-8859-1?Q?xAN+4ZD5U8S5YjG9qN787ifADrD//UDG+hmthOVaLEKm1WzOXILSxV690w?=
 =?iso-8859-1?Q?5Vrula2hRwtc/TtKuoBOAIqsRXMECCurBn+RaAT7D32OzrOXcWMWp95jpG?=
 =?iso-8859-1?Q?9291zOKAYgIxewt6Hz25wiSdj2oxpR+b9tCiReKURzyAKMbAt0BWGGAsHq?=
 =?iso-8859-1?Q?EO+p/g6nkzz8gVrAFqIlppswegAqlDyK9ee26JOS+TpkVSpJKemRjybg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ff7a95d-d4a6-4dd4-785e-08dd47c887e0
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2025 22:41:15.7714 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Evx/eIM3fa7MHHcrt38r8ldh35f63e2UGEehsECT9rVTcLm5oNShGaLLYw4lGnxSBVTpaypl1PISQI7k2k/i/zf/eEnB3rhjN55ltgVTF04=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8362
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

On Fri, Feb 07, 2025 at 11:54:03PM +0200, Ville Syrjälä wrote:
>From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>Something has changed in the hardware on LNL/BMG because
>HDMI outputs no longer have the extra scanline offset.
>
>I confirmed that MTL still has the old behaviour, which
>is a bit weird since both MTL and BMG have display ver 14
>vs. LNL is version 20. But can't argue with actual
>hardware behaviour.

<6>[  210.368608] xe 0000:03:00.0: [drm] Found battlemage (device ID e20b) discrete display version 14.01 stepping B0
vs
<6>[  412.999204] i915 0000:00:02.0: [drm] Found meteorlake (device ID 7d55) integrated display version 14.00 stepping C0

So 14.01 vs 14.00. In the driver:

static const struct {                                                            
         u16 ver;
         u16 rel;
         const struct intel_display_device_info *display;
} gmdid_display_map[] = {
         { 14,  0, &xe_lpdp_display },
         { 14,  1, &xe2_hpd_display },
	...
}

So maybe we need to check for the full version >= 1401 instead?

+Matt Roper, +Gustavo who may know the right bspec to confirm this
change in behavior

Lucas De Marchi

>
>Ville Syrjälä (3):
>  drm/i915: Fix scanline_offset for LNL+ and BMG+
>  drm/i915: Reverse the scanline_offset if ladder
>  drm/i915: Replace the HAS_DDI() in intel_crtc_scanline_offset() with
>    specific platform checks
>
> drivers/gpu/drm/i915/display/intel_vblank.c | 13 ++++++++-----
> 1 file changed, 8 insertions(+), 5 deletions(-)
>
>-- 
>2.45.3
>
