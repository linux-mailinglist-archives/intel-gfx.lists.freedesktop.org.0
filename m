Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB868959A8
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 18:24:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA1C110FE50;
	Tue,  2 Apr 2024 16:24:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HXiiNE5u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 400F610FE50;
 Tue,  2 Apr 2024 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712075093; x=1743611093;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=kZGMruTuSJ/1LR3iSwDlOKx3OZnR9kPr0/JYPppH6SM=;
 b=HXiiNE5ubQFsuVb4M16T+hL2DKq7EXga1HpqH/ZUYFlMa8y0Rg8CcwP6
 Yq6x2hEg7XhJXR4D1555gSkYc2Uq7KDAe4zg3dZAwF1UUcFW7vnALSXGT
 nDPRyK6SB/h0LKkALjINivLiDIRqwkDEaZOd1Xp5o4B7XybxV+CUd/tRb
 KslOfb/XZitPnmZkPMPN55Yrrhnz5NcZdSxhUhFMd6GFa+eEdiE6CNlvh
 dl8L7MWRtwI6UTcGscM+R7U8E7EkzlaMQrvx/H/zCv00LCH9PoxXXMW+u
 1mvM/LlrfVipDSPoR+L9l6qwiFDp87xCs/YwIqYXAE5eYIJgfiWAJh8HX g==;
X-CSE-ConnectionGUID: sT6qE22mQumJbbkRQZAjCQ==
X-CSE-MsgGUID: 2RfwILyRR+CkB9+P0WZQ3g==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="18621913"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="18621913"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 09:24:52 -0700
X-CSE-ConnectionGUID: jusmplKQT9SwTMG6jT7H2g==
X-CSE-MsgGUID: 80HMuDH7S4iNl7YkpN3Tew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="22830235"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Apr 2024 09:24:52 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 09:24:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 2 Apr 2024 09:24:51 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 2 Apr 2024 09:24:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XtHDT3XjueV2uGWx0JwbSkoA9DbcdQOGv8Tsu0xYg8yfHV0iPLhssY55htoxMToOKZZp9QidBNQXMmWTSUXDfxHU1/Y2urtgwnfR5YgfmrldKDe7GjXq4I4k4+CtGUJjAKaObOQ407x2o7/Eyf6JoxNXoCMwhtpq5DbWysfVYsS1UzwULUsAczttN2t1Uky28P1kToYhwYUYWxbCEqzpLB9qYtwOdkyPC9A9wkIzO62oYeGr/lDTaqWqef++2DA3Q4R4brdHU6xCKAcu2F6DsZgpBc8bdlXB9gGmql+pLeZ8MqXlWS4oK7LH9x4u5zP1AfGOZ16Si6lQlaNWw4sBzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zJMacvYmPnd57vyDAl7ViP4ZXrJz2PEAjv4jnPDpqEc=;
 b=kSzsEVUy6DRDcUirRXkxHWXUZwvQdsAg1o5vF3uJmtxGmrggkTn6k8tyn1J9M+VHL1OV7/RSsOUlIUlaknR80Hj/E6HfCTxJ4f4xL9m4eYOYzuJx5B74ayA+yNwykOw5XiK4+67tm988egM5JYC/+awVUDu7VnPxTLXfHGPbNTxfz2cBcbr93mlcdbmhcXFZSIXtIHYVFdXyW0ntMTW5TesgVWbgpomnMvd/W/s3zRHiMh//19PZzf+T2ZfYpEfD5Vee15Yw1xnT8l5m9h87V63FpG8S3E8HbC/ShPMTkJbmUrbK3+xUnBi3SwQ3ygmJRxKQFyw32AlGmbPCByFqnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA1PR11MB7109.namprd11.prod.outlook.com (2603:10b6:806:2ba::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.21; Tue, 2 Apr
 2024 16:24:48 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7452.019; Tue, 2 Apr 2024
 16:24:48 +0000
Date: Tue, 2 Apr 2024 11:24:36 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Jouni
 =?utf-8?B?SMO2Z2FuZGVy?= <jouni.hogander@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/display: fix display param dup for NULL char *
 params
Message-ID: <wujbboih3iscmkadgre3xpur26nt37xeo3grryjgpsefmxwe2t@ovdcfpfe5cbo>
References: <20240402155534.1788466-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240402155534.1788466-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR08CA0003.namprd08.prod.outlook.com
 (2603:10b6:a03:100::16) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA1PR11MB7109:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VEfDiM0zT+6TgnHtGKvFSuSuRD//UU2gy0/nhHKhIe0clbGnTdPTrJgolW4FewPTC1hZDhN70DXB2GV2VdWzMPqdtDjGyudo9hmagkaTjCf0pApqqjqpwGRpgOVe3ZL3PkNKO7VdRkHZn8TJxzeLnqKavPPhP447vfaAM4hTZEy0WmXCpyy5c4b/9Zd3nRJQG2p4RRWMmcb4s8NJqnFIn/oCse+HvzJ3a3xAuZuMYRbJzpY1H1Wnkud11cfoCMY+JeJzVJgJp+ohInafhjdQBcc3zPWuAh2hrCNnt+5Qe7+xi0gqM2QU6U+hCaScuhZ8Ij31ASavn1j32WMFzdq4N7aAzmVGOGhNO/zYNO+CKmTtpTy0N91AmmI62ak8i0CpQeLTI/4sugJhTwjeyqkOzaGnqZEpr/l5Ll7gkQFc2hutBu/oWWDqlAAgH7DwkHGLmccuwnLHQ/5NI4E0vZ94c+ImYvT91v48rSgouRQJc4oWZNDuqWr5cCuVNibxc0BNqIB1boDYXtC/BVTbcWW92bHKs2DZU6gxn58SIZxm7iY7YwLWN66zu1fEtNV5Dr4m57fPSaQtmzrtQ21nQ3IqdkqEIpo5VRNFPWNGycXVhGc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?JXnWerA6zrZV49ktdN2E5U97MiKqs+/n8M1Q4zdiET9g1Soq2GE3NN9oGZ?=
 =?iso-8859-1?Q?Ekwt+H9XH29Q784yVBps8HiU3nHzMsZcR05W35pq01M8e12g4iK4Fe0hTj?=
 =?iso-8859-1?Q?i71ng1MooxOoFmJVV5OBHTPQfuOhaE/pMVzVpcytbS8I17tvICVDfdf7Tv?=
 =?iso-8859-1?Q?Dh+/2jJaBW140bDTQRCwr8U797/JdpeUqrgvyQtArDmJTOEfRw/mNmdI3U?=
 =?iso-8859-1?Q?InZsh8+F8E/u5dIhQW5f2HbwIKpZjoQzgmnuwNBdpT+jYIrtdqr3smWcmQ?=
 =?iso-8859-1?Q?vjri5/d2APAYPZgv+xWK6QcT4+CtObIsBSD61KcqoUUFhllpHFTJppjIJU?=
 =?iso-8859-1?Q?nJHD1P+FcauPofAx3c1uvw+2kFsHH6CafvphEjL0fWQ/M/I7EXrWskwbuJ?=
 =?iso-8859-1?Q?J4wJINh6I0QyfevLj2tcn2f9QAGMpH6ZfPBoaPzDwNDtuqySTIxnRiu9VV?=
 =?iso-8859-1?Q?vycOlBCjikfbmleFXGCcz23kKyq5tG1iEntQv2+VKptbcAuvWPLAKqW7Gd?=
 =?iso-8859-1?Q?ipJ+UkoWp7ieJMjUq+XRmSptp5pp4PiQnI+v93oVc/9AtNx5jrcy1KmaMY?=
 =?iso-8859-1?Q?52O6Zhl12FlA4sXbwBO5Z9Y+uzljnaGQlRpJMTMPgUzhvBLaOJYWZkt6Ms?=
 =?iso-8859-1?Q?4nMX5aREQtuaHNbcdHKlpI5EaZMNa/YziApNe1KOHVVAOZNQJSJAZUrv62?=
 =?iso-8859-1?Q?vAsUqXzO+/dEyOdXY2nTPKpKQFApkYuxOEgS7yyPHPPbNQWvm+M/GmXllb?=
 =?iso-8859-1?Q?A6vMwA738CUxG4FmgDaC3eNp+J8naG0ZoNuQP4CCdQXz3UFXd5q4cN08eB?=
 =?iso-8859-1?Q?NR+0LB/nyI4QzPUcuSLVHn0piC8KWFsGAtD3VRdjV/9tlGfmyaMfMWIytb?=
 =?iso-8859-1?Q?PQ/pNYnsvFN8zCT/WUQj1U3H6ERfrMaO8T9deumcZ9QUMk2Xg/9bz9eKnZ?=
 =?iso-8859-1?Q?15ecd/+KlxyjbnevmxWNUueWSnBeks2IQ2JL+9C9bj7XmINzRxZFuN2Th3?=
 =?iso-8859-1?Q?1Kh3SUUie2kMFte7Hb6HLjQS6TXIcaBm3M4RkdIJ38Qd+QnmjoDREwrfvx?=
 =?iso-8859-1?Q?Rdirks8DWLD/RDjg+avCubpRafn+ufCgomnCu9ObZ6NxtWW9bLJvCAEin6?=
 =?iso-8859-1?Q?hbvusi+dxwiSoWphC7op5xY87qheASYjjM8nfnhPYgRu7t5/zGbDWCNOFo?=
 =?iso-8859-1?Q?ggBRLDLdKEjMdkJ6L2P6GPZEotgc1LRT/3/iPjs1BWlVpOnTVw1NMH01Xx?=
 =?iso-8859-1?Q?myB5jHjDlcTWq6bzeAiFFbPr6CKf9dQZzu8/PAjg2MBi7vcA8zAQm/MJ1W?=
 =?iso-8859-1?Q?1QN6oLct/l+98mc4DdmYjx32iPA/1DLDqpWSluhJnCvz8SLOSDK7Kkaxqf?=
 =?iso-8859-1?Q?782rI6nhwfgmXZogq0QUsgzfoxQnYCq9Uw+1vzXAASdOsX1wvBA4Hl595/?=
 =?iso-8859-1?Q?/JaP0KOUr6GHwsyflf9LHbhfI1mxJdMjIuVr4ZlsJBcz6+ob6qqmjviB6v?=
 =?iso-8859-1?Q?i21S9C4HQM3lKCfcTFNG0AXyc17CBHAkx+j0vajB59D1QX5/c2p/Z98rI3?=
 =?iso-8859-1?Q?5ykD4pxuylZHTsU/F88caw/xOgNIppVRnNQDweAT7zBHrh/XMENYGax8RT?=
 =?iso-8859-1?Q?FKO9YJcJqhXNFvpi3AackzYiytQQ9tMYCjbtRQaFNpiB0zJVWf7nCJNA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3742053-fc8b-4f35-cb69-08dc53316a59
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2024 16:24:48.5081 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xM4PYMU++jm9jIzpDfJJgT9utaDXYxjYD8+zgVk+LKMu4/lf5QtHc0OTxZhnClKokL9oE0bwbiC1OSGSOu2rY1emygPIfY2NLZGvLNedtHk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7109
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

On Tue, Apr 02, 2024 at 06:55:34PM +0300, Jani Nikula wrote:
>The display param duplication deviates from the original param
>duplication in that it converts NULL params to to allocated empty
>strings. This works for the vbt_firmware parameter, but not for
>dmc_firmware_path, the user of which interprets NULL and the empty
>string as distinct values. Specifically, the empty dmc_firmware_path
>leads to DMC and PM being disabled.
>
>Just remove the NULL check and pass it to kstrdup(), which safely
>returns NULL for NULL input.
>
>Fixes: 8015bee0bfec ("drm/i915/display: Add framework to add parameters specific to display")
>Fixes: 0d82a0d6f556 ("drm/i915/display: move dmc_firmware_path to display params")
>Cc: Jouni Högander <jouni.hogander@intel.com>
>Cc: Luca Coelho <luciano.coelho@intel.com>
>Cc: <stable@vger.kernel.org> # v6.8+
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

... but what's the purpose of the duplication?  How one is supposed to
use the dmc_firmware with e.g. LNL + BMG? Setting it later via debugfs
doesn´t change the behavior. AFAIR this was done to support multiple
devices, but I don't think it achieves its purpose or I'm missing
something.

By leaving a param writable and not duplicate it at all, we are at
least be allowed to:

1) disable autoprobe
2) load module
3) bind do LNL
4) set dmc_firmware param
5) bind to BMG

Yeah, it's manual and not intuitive, but should only be used by
developers with targeted debug.  How would we do something like that
with the current code?

I know that for params via sysfs, it's impossible to get them back to
NULL, so I think we should make sure NULL and empty is handled the same
way. Getting it back to empty is hard enough but at least possible (see
https://lore.kernel.org/igt-dev/20240228223134.3908035-4-lucas.demarchi@intel.com/),
but I think this is not the case for debugfs.

Lucas De Marchi
