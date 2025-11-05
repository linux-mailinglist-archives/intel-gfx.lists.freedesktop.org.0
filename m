Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30615C37C58
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 21:45:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1156410E799;
	Wed,  5 Nov 2025 20:45:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nvz66fKA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CBD610E799
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Nov 2025 20:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762375543; x=1793911543;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=E36R/dcrI4rIYYnl9rts4XVhMG2oiEuLq5S/hmmInbs=;
 b=Nvz66fKA0sd8UR5yq/dghHmTrKFMpWWNmzC5eSOEFhHGcThidryg46rs
 i+GgzsSkpunThLPcqlZ84fHN3LsWgvN4kSsX5knVl0ygE4p2XK5CP9ZMG
 y5CVH+7rfOn77sJINW14OYOqd16VkTEef+qvkGbkEWtSOLqZf/ancPOSD
 L03KHNW3TbEBVJ9W+Y1R5V94WGF1iAz4K/T7nMpnmT9ri//LPX425+R79
 kFliv5ot6MKjeANUjqecxfq5an4T8n5LuO9nTT21yYrTVlj5O6C/bMJp2
 cKNDUrdk+nuABdDl/gK26OTVujWG5KIGgSFzVnMCYkMCFMEs8Lyv6xLS+ Q==;
X-CSE-ConnectionGUID: BEKQwUW8RXScTZFkOH8K8A==
X-CSE-MsgGUID: 9SA7OBFTQcSz9aKNvaM0vQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="68154341"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="68154341"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 12:45:39 -0800
X-CSE-ConnectionGUID: OO/fViAsR7ap1pQt7YzySA==
X-CSE-MsgGUID: ZITyTPCyTNCxM6ef3zeaqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="187222819"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 12:45:38 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 12:45:37 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 5 Nov 2025 12:45:37 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.43) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 12:45:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XwHfDR44U5BOsMo/Z5zDkSTSOfuDxXL7Y3rxtdXSVfsovQ+//SPq8tWh04a6j9qUHiuGkVRfzer3YshSFhO51hKfbAzNtXh75Z+9hN9nKk2IYS/SZG+gUgrMHjIBraoYKNSXpENYUh9p6dZeMc9YWXkyPoguZcmdAOVIscRRKnvQFvaYGVJwVLKWYElx+ytY91yoLH26BI+MICHS1L57ffRzjdXFFCRkH/+M0HAa2eMWFFZ+1I02DHIKV30Tg27DA0ihhM/KXJVQhGWp8sSWg4rfE7JD2Q/pUcf2dzOrYTTz/uZp7+EaTnkOoU/5Yg8aNjdFTJZK/U4HVB1rRLSvfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cf6bvYg7BAlcpuyrMITWTyIxQ/ML8lKiq6rSVAumYcI=;
 b=D9wEQp5mgXVkbNl+gZqmUSHaN1zYZKOayx5jSHqsFa7ALP8IRq891FbJXP6c38G3ahICHpRImANsUkzpIkGZSOp9AAZe24r5BBOUgH2ygxfIGwkImg3h39TlWAPUlG7v3GFk6Rr4caR+rEvNkauD+wq7lF2OIXO6U8PBYkqrUOg9Hs7vd0MTdloQl8LSLv3VE1/UItfoC60JR7N9+0l4npbZQ7YuI4/s4prRB8dIvO90BsM+bfK2OLsUZFjcWIG3Eul87o7coIO4XfZ1yww0P8zY52BPPmhfXQDYNr1NY6vGrFgiDz3wWiOLTeyzjmFcpl8g3daKGgk/xriyjBIsFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH8PR11MB6754.namprd11.prod.outlook.com (2603:10b6:510:1c9::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 20:45:35 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9275.013; Wed, 5 Nov 2025
 20:45:35 +0000
Date: Wed, 5 Nov 2025 14:45:32 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/3] drm/i915/dram: Use REG_GENMASK() & co. for the SKL+
 DIMM regs
Message-ID: <kdzppzxnvuehepthqzd3aqzwtmxl345jeiqenwf2zk4d3u6mhn@c3zmpcpygow6>
References: <20251029204215.12292-1-ville.syrjala@linux.intel.com>
 <20251029204215.12292-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251029204215.12292-2-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BY5PR16CA0011.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::24) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH8PR11MB6754:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d4c613b-3f4b-4c88-8fb8-08de1cac44c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?PAuREj3NuRcZFlfxLaLuYAn0xFEYGChwqgTSn7NoQo1DQRmFjamdgq3T7K?=
 =?iso-8859-1?Q?znzxv7sYuudyRjK9SShqZN8oWmfh4ZvQ2gVUQYtfNjs2q75EutHs7zW1/b?=
 =?iso-8859-1?Q?8b2LIUM8NMW8zJDHSHLutheNaNqh4PZcPk6K/Zi+f54atSVwGtHLH0Go0a?=
 =?iso-8859-1?Q?yk0e1LTL8ob0UGykHyDE9HdEM/jvcGdDRfrSp2CrtT3Z1kjaRelt+jK/qM?=
 =?iso-8859-1?Q?Y+1I1dbFP1vj61x9vTDShX2HLmyMS32358j9nvsvCXGXrRm7AZdna0xvvs?=
 =?iso-8859-1?Q?q1jBy0EhgSpSUbXPh+64t5eMr8LYGmlEp5wW/t/C766xHZhHbVidNwB6u4?=
 =?iso-8859-1?Q?c0Zv98DuYJ1VOcaNC2/Hy2e8ini4xa87tHLDXYqvpSIKHzbKDSmbB3bwmA?=
 =?iso-8859-1?Q?XmCWCQj2CY2o53sTW7jUPctd7vRSS4J5WBpiDybbGHGThpmdnr64S8lvAA?=
 =?iso-8859-1?Q?G3xKkyaSWizXXTzuUNWxdD3d6b76aJP3Wx8krDszPmGeEuChhVeawabNnR?=
 =?iso-8859-1?Q?7Lse08oBELaCTI6ie8PX6BGWzXtuBKeIyZV7cfP10Q5vd7l6N4w86ZCkae?=
 =?iso-8859-1?Q?v4xL08fBzfuTGi7Rh1J2o8DhYbHNEpfEmaPNa/KMip7DENhf839gGRiCx+?=
 =?iso-8859-1?Q?Iad49NKRVM0spfgntCDT4hMKEujg7aE/uLIxp6S5xMJXjp2EYZ+Ha0QrZQ?=
 =?iso-8859-1?Q?NoMZWvHmVsS1eCQdQFBk88cWNMbSyu53pmkZXaSNB3AcEggWVt8ec8sTrR?=
 =?iso-8859-1?Q?4UxxA/72+g+4Z/jDIOHaYt1tpFQ44cRyM8l4HCpDw0lMz6gychqnYXRXC8?=
 =?iso-8859-1?Q?AY5BMxEKQf5Tltvem+As4t52VmKX0XM5gkiE+0o+DnLBb6mKmuUjOQY9zr?=
 =?iso-8859-1?Q?DaOofy4aCVGsP8FZUBfPje7nSH9A3ywkIVF0utEwWNaHjz9zEg/voG04E5?=
 =?iso-8859-1?Q?rX93YhY1ZX04JohD67bX4VlTXY8fbpbJk4waze+51Om9zVVEwh4z0vk2RN?=
 =?iso-8859-1?Q?9uLMKbJ0hgp9yCEkaq7t3I31GHIrsA/bgL0IiroMtq9WWtn4DTs1U9M2eU?=
 =?iso-8859-1?Q?b/Tia+OIvbA5zMn8MeL7w8mP8TsgI3jHcWNQyAm7bt+BtAA8nNofjsb7DL?=
 =?iso-8859-1?Q?0+XjaK937qKAHkxIRexj4SZ0zA4AQeJ2dZt6uWNp9SP2BuzdPWq55JOBEJ?=
 =?iso-8859-1?Q?KseDWv21Qogw40+XOBd/du+ryC2h1g+bQMBRfDM40zz3H1nSIgkrvVNuqS?=
 =?iso-8859-1?Q?9EsrZ3fJrFjbQydpmPB1Xf1FswZ9UTzy5GEWhSfbdL124Rbp6KYMV8VRjK?=
 =?iso-8859-1?Q?IaM0XsyPW6L/QOB8VmoFSWDA3uqKa9a9T7luyQhyE2jl/mQ6LYfI5dwwxY?=
 =?iso-8859-1?Q?NMHTqu4LSaWm1fTd08OJkQQNGV3hgXPVi2fLWZbudBJtFo49OKtAq7Y0qm?=
 =?iso-8859-1?Q?6U+8m31tP6Et6NcstEi8gCCexQZDQoiN5Lb4YFNM4teexeLSzwSYxBIPYG?=
 =?iso-8859-1?Q?8JEEJGlhzx5B0GOFyYBhdO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?yDuw3mlLC8izPAgfGLC98lEi8y6dMHjvk0LJ/H+g0aUDqf4XS45advxTAr?=
 =?iso-8859-1?Q?edxJGddenINf+eATKwff7kzQ5fHPrQ+alUGDpRne/CyWy+bFRYU84o/ANU?=
 =?iso-8859-1?Q?a0K2h3LrGy4r0YqWF6PI+fp1nJKWCP35DwmxrE3nXlHSlkhiOYd13xvOJk?=
 =?iso-8859-1?Q?KbvCz3R+4Gvr57OUTfkCWxZAog33Ae2OcyhmdeLKTwl33HeV2VEIVvPkqQ?=
 =?iso-8859-1?Q?O2okFB7HL3FvQI3IZmB6/e7FFAdxA1bkMDU0kxSLJhevjGECxDNll6pvfd?=
 =?iso-8859-1?Q?caZbwwr944MDlbcdcZkpLPcUnRuYQiGfSSVfRejIl1i4v6T1MfFt2wcey3?=
 =?iso-8859-1?Q?GyUY/AWthQtu+dDvdyD2EL9kqWee/ONbTmCyxoZ5qXPXLwpmTvcVqucSm5?=
 =?iso-8859-1?Q?IPj6+isvDn1Pzl7yqsR0Gjzv2LALmftJ48svHlO7xF4qA6BkA4O/aM1tJY?=
 =?iso-8859-1?Q?eE2c7LeKbLbPEawqJYY+fxp0APJvQ+okDnc0a9d//wFDJJ31hF5neGyuuY?=
 =?iso-8859-1?Q?My6VZoLAiOjOctyFSuUdkN5Oj20a9B1h+MlNVL+XczOcTfWkCgeBUTeGnd?=
 =?iso-8859-1?Q?6F3AiDjpHREM3DGDnH20Zkj75jh4H7P6qyVnj0T9E/o00RmIlWytlpwic0?=
 =?iso-8859-1?Q?OpgY2zX94gYl19wRYkoLlfoEu8csxE2reTjqxsISMhwIH4QpDDtLg6PSau?=
 =?iso-8859-1?Q?OsyRZ70Jv7r3f5G2fkXg/zc0+m1Uk0JMOurg4rEA0A3m5jHIaK8u12MSRi?=
 =?iso-8859-1?Q?zZK/wDtrrnDboz5SiuSAHJsavXGciMtote5p0QUvx7VAo0HNjPTPNXt6yY?=
 =?iso-8859-1?Q?QwvlMArzkjlV40oV76RY8uMbc064buS1bYGTgN2PuTuNYRz0JVOxox/HxQ?=
 =?iso-8859-1?Q?bAKoqbWid8CXKM3zaeIEA9XcLZmBGhuZ4B2qo2tc0MLZkFo3nd7UNmUhGr?=
 =?iso-8859-1?Q?ja8lVTKzx4pjGP2Bj3cxU9dB1C+h39SqiS4bkIpxwB/d+7cedaOiiZrGVw?=
 =?iso-8859-1?Q?GS11oCYC4WkcWDPY8/sCWcL6yQBTaTi8TeRRfQjR5UBuE2xDeuG3IuxjWL?=
 =?iso-8859-1?Q?mGKjOycsBMdnKhksRUN4R+Fo4x+Xw9b9+CyiUHa39AHAm3n6Mn8vjayviO?=
 =?iso-8859-1?Q?22L2EzG1Lt+vInXI6M+xCBe1MwAm81v/uKtDNNFeP/NTuPJhLiWnu/KVEN?=
 =?iso-8859-1?Q?8rZ5BGftaN4ko4zMU4iz4GeYZ2OvpdY76VY9LH8aDT6HqhRhBDpvSJa7SV?=
 =?iso-8859-1?Q?Wjnm3BFkGVHcEqql1O3aMNSjVcq0hGtkUpHg8pXaOnlWcot9693NsI2eFI?=
 =?iso-8859-1?Q?z6SEMuquuiRueiJ7JOPsIxv1JjeWAfze3TaMDXFYQ6j10KlbwB4B5Ak4/Y?=
 =?iso-8859-1?Q?zyY/lnx/5S9+lrrsojA773BQZlSNXTew4lHmmfl7CjY2Bcq4pJ86FnhHDX?=
 =?iso-8859-1?Q?+ilPSzV78zzlwtQPfOjjhluDLc1nN1aR2vpo34t/Zr+qII11aqLRd05sxE?=
 =?iso-8859-1?Q?ZmQR9dPjRAmXmqrY/DHBRgCnNV/HGR5d6Q4mQK4TZ489i8GM6huzEfJyEf?=
 =?iso-8859-1?Q?F3kRaHQn9kccJRowwyKG6XbIXa7R7dOe9yejCQDOGgSAogQvQFGIovpFys?=
 =?iso-8859-1?Q?biglhfKp0nDtAKRz0MARy3nUtICfYixiOB6wNLCM2DoJejVEZblfzpZQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d4c613b-3f4b-4c88-8fb8-08de1cac44c0
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 20:45:35.1170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XD828B6O1WhWp12hXtPaiSSTaeTAfKYnRQo473vxwxt9v6+tbn19e8KQUNeVPHxqivpZuXnFpBacJBYu7s+8ZQlhuLykhEqAiIJ/CjISZ2E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6754
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

On Wed, Oct 29, 2025 at 10:42:13PM +0200, Ville Syrjälä wrote:
>From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>Modernize the SKL/ICL DIMM registers with REG_GENMASK() & co.
>
>Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
