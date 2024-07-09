Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 978C792C440
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 22:00:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCDF510E661;
	Tue,  9 Jul 2024 20:00:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JKqrrWGf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D1EE10E660;
 Tue,  9 Jul 2024 20:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720555228; x=1752091228;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=pH3OjnWy//RcCQVFJqKRgw5UAuB24Qj44RxX+ho9UWw=;
 b=JKqrrWGfpbTWUJqzp11Zgv+xr7KhZ7RwC7pfN7UzvZPLQ1JM9ngYU5Gu
 UjxyYivAQbv+BexpVu80aV6FDxILllau8nQ2cvhA1dtzaHEoDCeC04khn
 1R0oNQY9gNEmXXYF+Me8Bj0tAcg3MvgVwT1fXpaPOoNRToqjCkj2lt780
 x+A4UmUYnIVLte2pDP6TRoBv/jMsPxg5XG7B7WpQ/zvKysfKuqaPJafkc
 +FciZ/4XLwdeFqk2uPcwsPnuB++H33RrVWphHWzAJOJgJWT0T9wCmz6Ob
 FsaVLAA5ffDqS0fZbWzVSKPl5mf1njmfohHBaWsJX/zT5VM1+Qqy17vv8 w==;
X-CSE-ConnectionGUID: XDTcCV44QvW7a55uKMXGvQ==
X-CSE-MsgGUID: 0gJqZKemQLWNEzonTCxyvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="17950657"
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="17950657"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 13:00:27 -0700
X-CSE-ConnectionGUID: 4PO5zf2uQmKNDajcK1ms2w==
X-CSE-MsgGUID: FLvAWvwHScqlr3m74QYw0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="78705759"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 13:00:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 13:00:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 13:00:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 13:00:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 13:00:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EbV4vuZAtTqmZMbVSJ0lXyPSIXLSmo+0xL6fNnu6VCaFn9+QoE8Zmx/UhWDBcwJV5wvcaUfZsFDuZldCzQ0UlPDl0ho6CYCd9O9y0kijAV8JJYpnWblUNq9YGyXKWqRASiXshqHHE72SuXXlKfyrVXwGaVecBmpvOqq+8OTAUywBJOVokIy8dSSfDbxIAprE2lcBl7eh5VFwm+j9amP15Z1sdISrYzhHx5w+apbjgSuXAU6LpBCD38KoccXCRi89btPhw+O3cSQoS4t8oLXsSWT76VOM7wdWkVuW/dJhSsHd4mQADDsJwmlUA8QXBV2unRDk5asfN50/nraf21jp4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6YlZaLAIACvVHCCOqrko3u6Qz980F4RQQK8xZDLE4jo=;
 b=DRIC5HKbvdCQHL0Ac+0ZQyCFQpCG0mC8xvxV6rtsL1Nz3ce4/l7oG6WN64AwoGwz5cbGkHpTQHR8xsuxiRp7nxjqeGBDFjLNWr1zvyK8XUMQ3wwPAGL1ss84pFeSaJBibC4c+Acr8+1fnHxwpXW3UC92V4TvL8aU92eAvjDyAhZinON90telPjfvKSOKqV3KiRc12YYnXLLCOltIJOi29hOIW/Y4v+im8cHi7NpMooP9ZgtBwRcV7JO5H9g8DF9Kh8zgq8Pcj6ItM1S4GuhbKEK8AaDDYGhfxehsH/s2Y/ux2gD4H96qdeOk0Q6AbZIkf/CW9u5WLOsJrRMEXR01pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 PH0PR11MB4776.namprd11.prod.outlook.com (2603:10b6:510:30::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.36; Tue, 9 Jul 2024 20:00:20 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%3]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 20:00:20 +0000
Date: Tue, 9 Jul 2024 16:00:16 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 09/20] drm/i915/fbc: s/lines/height/
Message-ID: <Zo2W0ERvLt7a2r1Y@intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-10-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240705145254.3355-10-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BYAPR07CA0089.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::30) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|PH0PR11MB4776:EE_
X-MS-Office365-Filtering-Correlation-Id: 8929d813-b95c-4e98-2631-08dca051c2bc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?nc7lN4IZT/HzlkNRPSS7lxYjbWC375QUBMbvo4q32rDr4/0JOW13vhznb1?=
 =?iso-8859-1?Q?xFe1E0beyBYm+X7d6/aJaKa3UO1bhTR5QYBD2X1SpOZEKiB2Ad4BCUDTNK?=
 =?iso-8859-1?Q?J/dJYQ/96mjjFmdhKIFwe3bosiwk8uH9CbZWsDUcwB7j3mXVTG4OVJkAXn?=
 =?iso-8859-1?Q?wq9JYn3rQsjLGN6M5kdyf2bXkZlF9g9XSUpZ4HNggF2nIIQX/lk65z0PLm?=
 =?iso-8859-1?Q?wIW9JSb7/MZUk8u28KagrInnySkwczbWK3zzKprXf0dqYygb+bRJ8cQeIl?=
 =?iso-8859-1?Q?KrdwahfGWHNF153csS/CwuJiJRJ4xh5LjyUBtX7zntgBLZggKiyJ/AGmUb?=
 =?iso-8859-1?Q?vjAdKXTA3qxO9//3ajtiYSMqmCS6CRyruGcpb1EkN1JZm415M9QneblQk/?=
 =?iso-8859-1?Q?dIGP8k9Q6wawnd2xvxXLanM28mP/T/kX5ruqOYZU7hLhIU9s62A0mG7Kar?=
 =?iso-8859-1?Q?XLDOEZVrGHl5GqROyT3N5O7/TpZLd3eP41tzREJCJSSQYxldslgDgtAKlz?=
 =?iso-8859-1?Q?g6dBZv29f5gagZ2av5L0rfmipT5gL5GwvqWdRC1KGn3YRKJ9qJcqlXVegg?=
 =?iso-8859-1?Q?puXuVQgVFEFYNLs084QfT1bGjbbBSyyf+vrw3JQLNnMA/Td98MU9WPjOXe?=
 =?iso-8859-1?Q?evdaZiGDSTcGoHPc7jacq2LBGXP4U89yEgp2Q5HPhWrquHDxr7DGUqri+K?=
 =?iso-8859-1?Q?Lsa7jjgcJxuwbahXoPKNaaqc0i26jypQEVs/yVSxOF4kVsssT6c6YBdHK2?=
 =?iso-8859-1?Q?UiZxE8LLu8oM7GJdAfPUfeTZM+Yb/ZNRBI2KZK5u6uy1pvdMAJjb2FpCnZ?=
 =?iso-8859-1?Q?dFhCS59YvAYMYZIeT7LfvxCUwDAQiYPNkaQPxU8rr53rMPQIy8I1hn0XNr?=
 =?iso-8859-1?Q?4tu0pRrwUeyUiwasgJ9pU36hSeuCAqmmSnjf4rKZ0e1oHrRRYMLd6z+2yC?=
 =?iso-8859-1?Q?Wrwz3rUmtAIDtlVgEk/z6HMFwoYf0YmxIgNedMesgWF8rk/1o3eflUWvHF?=
 =?iso-8859-1?Q?1AYyUlT7fmZvvBJM23RUF92BxR6fUrOsdnK1KICLyRRh5z+U6cBYcwg1xF?=
 =?iso-8859-1?Q?e7tC5V3/AmeP+JSZvsNZgU6y2LLszunuVwKQXQhOiV9FIlgGoM/gDnUkQB?=
 =?iso-8859-1?Q?0Waw2b4R8JlhzfK7ogSqhDScRbdT8gpNvfVtqSKSH6NbHLSx5PisH0u8PC?=
 =?iso-8859-1?Q?ETGgHRG4Fo7m+zTYy5513wt1FJZkN7TsI6gVuAIKT1qf3V2MXceHIejrjf?=
 =?iso-8859-1?Q?NWIqWsGAFGEsk9VVCCCwVi4ntZU+7fXV2JkSePX54rmcU9vVSNBu5+YgIq?=
 =?iso-8859-1?Q?HmlbpzoT6rE0K3A2eLsEAYrSPpiSn1yTMQX/wPNAdiCZiQlQxjwtG231S/?=
 =?iso-8859-1?Q?31TvbZ82FKrJsQFx6xbkr75XETucwu6g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?AtH6ZM+tpmrH6B+QZZe+Kl2ah5wSOtEiWUuf3nmy0Sq0aUmo4/F+gOYDQd?=
 =?iso-8859-1?Q?2HIx8HtHGn6BUr5ER3khit+ewlDIhEOW9nxXJ8I9bBvk6n4PGK+NuqPvQr?=
 =?iso-8859-1?Q?WasV6/bnr1fpFpBMVenL4HvI/R6yfF47LYvyWmL3tTMNLk06rN1/mPUVeJ?=
 =?iso-8859-1?Q?IKlJAxEfexXZDmYTJawIbVNfWwE/XzGOTIGYiDLUuYxS5O1nJTivXswRFJ?=
 =?iso-8859-1?Q?eneDX0jaJVyGHFz4Z0+b6AAssgdKxMEuj0xtzqaYOG2aNr5P8eSm2sjajd?=
 =?iso-8859-1?Q?UMWr4PMcB0l5l5/iSjkNngkJA/vP0MCPK8dTt//UvPveSNRUxCwd0Mro/X?=
 =?iso-8859-1?Q?4Yx3Th7mvobDUhSmuAidi1daz69ZetSJrSFcMxFc/zHgf6BRo/CXCq52Nd?=
 =?iso-8859-1?Q?jcoGvYbp5J3GCExXiYdqM5ASaSPuWUXnNXkQBTJVG5BWz9ldI2OdiPWioU?=
 =?iso-8859-1?Q?QhvHW4awmh1h4g2Wq8cYptK+gPELvkL7a4m1pqT2ToCUGxaUhoWcewb1fS?=
 =?iso-8859-1?Q?dSIrEYpPK8OPSNWr57pRtycx4o07fdsP+DDleeS2ugQLAEPGDvISWDpQbU?=
 =?iso-8859-1?Q?G9e5MWWtFIf2XWFiI2OGCgSDgHBoHseyzsKJi7Q6B9b6yoP7xvCwcrMmkr?=
 =?iso-8859-1?Q?PGJ0OSRUwUfcbNE1STWQfcTTi4q29xo6jgmG5Ph4tZtJ6V0um1ysAS+iSr?=
 =?iso-8859-1?Q?rFmdvbXjvHuAVzjBoCFbCgbqp2R9eaE8/rPJ2C5vsQgSyUKv+qx9TuJKZI?=
 =?iso-8859-1?Q?vFycRBh6xd7cIsXPKQ27a26xe4sIbjW73pmppDs7jjKHK9bK9wffdij3rB?=
 =?iso-8859-1?Q?W7qWUdYQbsf0X/KHI+BlF/qvdj741aWfx3LE/79Sa5rsh2HOLxtcuahnIk?=
 =?iso-8859-1?Q?wBoWggSqlIzPg5ws6MHndtoXjtgz/SRnuISfckjm0eTicFvagYtCjFZ6RI?=
 =?iso-8859-1?Q?CVBwwxxzmwVJD63IjWQ/gVn7nQyIxpJLS0rto/aSZyINvUbyD0xnkMLtF5?=
 =?iso-8859-1?Q?tx2bNJaoVH3tSNXS6c94LX0FHw+A3Rxo7BMuQNWAUFLzCqIbb23p0tePtZ?=
 =?iso-8859-1?Q?UbVPHESEwB3XqZVR/syybHUUjGWw46eBIeGXq1Zwi17gisMAjqAfoS3g0G?=
 =?iso-8859-1?Q?EqzRzlUjkIjNLUTNoYLyj6eo55lBtjvIFTzeuEQhSgVzPmAS7/uYaO+t2f?=
 =?iso-8859-1?Q?T6oAUNIx1Hod7CXFvaU2X2KqVzrt8Qy//LF2YGVSjv1QyABI/Ilfgrqbxj?=
 =?iso-8859-1?Q?ReWRecqf4kJwTKGvFNu6znekDc9mlscIZfCvQOWQ3w4SJa/7HZh8zrFVab?=
 =?iso-8859-1?Q?4iDSayqXmXA81UVUgiP5nQ/+ww8Zuof7I0j8gLAuh0XwDkPZAO2+c2vlZD?=
 =?iso-8859-1?Q?2xlAMgMhGQWaj77X4c6Bj/YE3t4HqwhjVqbtYFKvHUlhxZPb06Qe2ZUX9y?=
 =?iso-8859-1?Q?11kLpJb7cnIG/0PwWYSxNiafgEU6MqU9icPiqMogIQPA+udIb7ScHDg8tp?=
 =?iso-8859-1?Q?REp75/VUW4ZQ6FYhakfy412B8TkbRE3hKkps0m9FunNJIfNqi7cbVjBRkS?=
 =?iso-8859-1?Q?LvSFR8VrPhW+Yhqog6ZPTa80p53Gt2GVPauy8SmHC1SNK+YJQW+Q9JSH+C?=
 =?iso-8859-1?Q?23gEoZrDotW7Heu+8GbP+FJvO7EDzZcCjJov6qav8HQhYm7ASNf16X+w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8929d813-b95c-4e98-2631-08dca051c2bc
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2024 20:00:20.1925 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y1rRbW5cr8ERdbwX7jJsh/WVJuFqjwDvYoykZoNlO033ufzo4KPG+quc7Nr2QCH/XHVQEHxpP7jx0bM8gNN8SA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4776
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

On Fri, Jul 05, 2024 at 05:52:43PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Use the more customary name 'height' instead of 'lines'.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 4a9321f5218f..4d25ebb5ae9d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -204,14 +204,14 @@ static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_s
>  static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
> -	int lines = drm_rect_height(&plane_state->uapi.src) >> 16;
> +	int height = drm_rect_height(&plane_state->uapi.src) >> 16;
>  
>  	if (DISPLAY_VER(display) == 7)
> -		lines = min(lines, 2048);
> +		height = min(height, 2048);
>  	else if (DISPLAY_VER(display) >= 8)
> -		lines = min(lines, 2560);
> +		height = min(height, 2560);
>  
> -	return lines * intel_fbc_cfb_stride(plane_state);
> +	return height * intel_fbc_cfb_stride(plane_state);
>  }
>  
>  static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_state)
> -- 
> 2.44.2
> 
