Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFgdJHxWl2lPxAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 19:29:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E235161AD7
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 19:29:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD82A10E734;
	Thu, 19 Feb 2026 18:29:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ShAokDMh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2162910E734;
 Thu, 19 Feb 2026 18:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771525753; x=1803061753;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=tWky+lmjZyh/QS6BUeUYy7H35YBB0DiGQviR1RAHlkg=;
 b=ShAokDMhLZmuvFWdRdft5/6Z80AQezZcHIPTnY2XLlX36puAZFgaS3Ub
 zoAIV8VUJxLOO/t3bUF/EQb//52FiV2+5A4W5QQt7oiXyID7lkH1gx85g
 6lYAOm42WxA723hlAKK8mb7gQ/sXTl8n57Sy7xem5gCzky/x+fHfTNYtd
 /kpT6X44WuMJC8T8FVd9vNMPvm09JYnhOvdevVo3amUjfsmeuQHXrq0Cc
 sX+wSekwbIRryM1tz/VJJztXHvbD0/dhOkvkUDoIDXohQYq7pvwp5+F4H
 gpRdoWu1jpT95DNtXQ1psOxBTtpEIioQtIAQEGgRL9qQmRJEsl66km1bU g==;
X-CSE-ConnectionGUID: x4S8p5EZTke6ftnjozXo4Q==
X-CSE-MsgGUID: X1njr6dyS6GkGYanpmF3Kg==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="71826122"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="71826122"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 10:29:13 -0800
X-CSE-ConnectionGUID: J7isLCaUSM+9TnbY1QHfpg==
X-CSE-MsgGUID: S7IXpNC3RTW6J6TCm+VM6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="218765705"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 10:29:13 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 10:29:12 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 10:29:12 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.15) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 10:29:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MotNgZTV1s8cyrMAZNRKVO8YZ2WdgrRWLVQxELuPQ3bkGdBxHu+ruBS8XIXO/vnng8ttM7skRaZTXTVUE92OI/K5j+bNR98RqPM1Q3qt+hbA7xpKVMUe0B5R0fdQkcjkdVKjJR5KrXJ9q6izATkQMKmwIE5uVZHD3+C4u6BwFJfQT5kbsICFE4k+4FNoDG4FYidVafNA6g8liFznO11Q2Cn0CBuOGYCvGFnvR6gOclhJgO+DZVPGYcFXsAZXo+q6rwGDu5tPQ7YZe5Udswz2qQpdPRgjVry/zE1FkgiqAnceXSKYkams/Ic05r/eQyhYSgGzgsv+Beil+0/ov7Llzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iWl65wCOqU63AyTB0XUb5zZ4m5Enp+TC0Tmjkp6fRCA=;
 b=rL+smQQigCSf7Kxk9j4dre2jQTaXlJiGFE4TwUSTsWxJ69Oa+cWaiKFDX2mG8xUeC6UatIXFAc6+Akoc7Tdjj18kL2sHqetKFeqLe89pJQ2lnB+4mKZBTGmiWlac9FqSzqoB/pWIObFsoY4t6SkYxuhIdDRqMGVxZf2Nt8FmWTCVs+UO9hBgh3yGsJecrns6U772UyTVihdEa0+M9YUSiGBlKPAIt/oC5lQf0GNOQ8iGlRUl4iC4K05Kpb2JE55YNv4uQ1pPX0sS8BlpZ7Bl7bxMPFKAZsrDv3KD1TandCQhwDsFeqo6xs2xxQLTBXPYlasjBcMzezu7m8VICxNlZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Thu, 19 Feb
 2026 18:29:06 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.010; Thu, 19 Feb 2026
 18:29:06 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 2/5] drm/i915/dp_tunnel: Simplify detection of link BW change
Date: Thu, 19 Feb 2026 20:28:20 +0200
Message-ID: <20260219182823.926702-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260219182823.926702-1-imre.deak@intel.com>
References: <20260219182823.926702-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF00006627.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::3cd) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB5059:EE_
X-MS-Office365-Filtering-Correlation-Id: c19c628a-cf12-4795-4bbc-08de6fe4c401
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1KC/xg/3fbp4g+GRIAOt/0SQes/q5vaL3GVP/YciZy1UxcbcC2l3u+gS3vbn?=
 =?us-ascii?Q?S5j5e5mOqcUhhMl4D3Yih8K4Iu2CRIeJahB3qgUw7oJ8qM97v+vy5g1MEBbZ?=
 =?us-ascii?Q?Uw0SUQk4OawbZhRNk14jbeO4URL6GxZ5y+r2nQbWqtCVcgnTp+Vq3bJz0zQm?=
 =?us-ascii?Q?JbfD6bod1pujmqFbV0Cw5f/Hu/vWkUrNLaWbc6Clha5q8faQQVW31vNfeYpB?=
 =?us-ascii?Q?dCfWIHOuhD5ngEcdxBB3ku0letVeIrN1cAO53+C02fgXsC8R3KfBC1Hvdukn?=
 =?us-ascii?Q?VZvFG/B8xOps0g6F09SGmffWMmRWFRlEJLkBJQxalATKOvY8dtxm7yD8CB/r?=
 =?us-ascii?Q?1D00v8txszKtLBsAbQiRl0Bn7OcxgecgnQ7/RnRiQ1qifL96ACmTrNlByV5c?=
 =?us-ascii?Q?c+EkbMllpPCZ2lIu9MMoXHosU8qn/Jw22Q+bzg80bcSIEGegV35PnWRrEzl1?=
 =?us-ascii?Q?NmG+cUyem0886bbFgQ1ynhGgPh3fROdE3CWKHmYT0kqHmhEeBJg3CYh2Gw4p?=
 =?us-ascii?Q?ehxbZoWYS6nhwj1qH3XWWMCU2GzrSJeYVxSSASb30cnvLqSePADdag+G3aMR?=
 =?us-ascii?Q?D84LCGio42h6U7CfUM68JYXI5ekb21PN12LZgd1qVb3UrSkoU2Wtk4q9OAzd?=
 =?us-ascii?Q?nDgfxZxrE6+y/SNyyH4Xga0ao8HMk8OlbOLHjly9Dd+HRDUbRQWRy2Y/0BFs?=
 =?us-ascii?Q?Ob8xUeg+bIH/X/Xa9keeTphwgOo8GAJJ+YrkoFM3Hg6vUS0xOnirPFgQ9ZBf?=
 =?us-ascii?Q?sLdv0iHUZHz59yRq4BMsA8a0Yy6TsAHRAmyM7kwqD5AxeVZy4N6ttXuVS91O?=
 =?us-ascii?Q?7xw8LnO/XhELXlun/r1Y+o7F0DHOsvbvsgdBVRZWjQFczQEyvv9uQRvExTyi?=
 =?us-ascii?Q?fYCmFQSJA5OOMafJiSjhMibr7hHlzZ0G1rCHpfbnRWIw1WdGYIIsJZIyZOMv?=
 =?us-ascii?Q?IfVKFjKTaeYGMRjyf4UNDAU4CNVzzn7JuNVtNd0o3at8QMB8SWNt996QHdjW?=
 =?us-ascii?Q?97fnYGUx62aHRRoT6UDX+3KnIHWM3QkTwrNGzb5qsS8L+d3cJiSH2Bai8En6?=
 =?us-ascii?Q?4PZQH2sA+WUfgBTX6O1TOaxtyPrv8qZS+0M1rcr+0UwYDM6eFwEDs4ZMkeGb?=
 =?us-ascii?Q?I6K93NjQUH82jCtqq+emlPuxq8nD9nl12tGumVKqb6HwokkrNZzt+K+XkkeP?=
 =?us-ascii?Q?Z95WwwEIHiI36kGem3ryIB3/eFEQFaoxyBonBUAS5HY9T+D2gJrnHnfICOz2?=
 =?us-ascii?Q?R4HG/yN5PvkLTGWS6so4wuxPocPAfIv28tDYNP2Fy6IvisjroJfVsnSVYlvb?=
 =?us-ascii?Q?QsAXCFaTTmM8hnT/6JoFKrWqIhdulUV7Cu9u9Qv9pCXBewboJsCdlf78Bmpr?=
 =?us-ascii?Q?0tcp0vi3e5mcscQYoW++8wLTmyj8UsGr2b1Sfw7sBS2KcLvJT9qegljMvHGt?=
 =?us-ascii?Q?RNVNnpJVQf/AHWDKveFvX0Bml6a7jYy+V0Jd+MO97qI8VzjEV6Ww/HbawZWa?=
 =?us-ascii?Q?Jxh6AYI7ApfxO8poKfRGh4RyWSET+j9S8+J44bMsMUfFGMGKi5QIknXdAL59?=
 =?us-ascii?Q?hiXH7TXFXSbD2amFZMY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KhvwiIfpMh3KLdJl3a6MFawJyprYh6EDcoDAevRsyuMW7/D3DY0jNmixy+p3?=
 =?us-ascii?Q?FbfYWNlyc592k7BYlvuF3jITpumiBhmY6Ngb1zUGeAQiexsZEjpYsnpDhrxj?=
 =?us-ascii?Q?Z0enkXgFhE8e/f1TsYVt/G3Zg7A/kKFvRq66I7wBp1DuIwRRwfMD83G6/xDJ?=
 =?us-ascii?Q?iHKzQfedxYIqlo920qHfvvbKTDlzqY3ajPmn3nDQnpIncCZrPHuqGxHiTwok?=
 =?us-ascii?Q?NnWzI8T6+QHUYRVVLTm332T4ktghT6k7NvKUcf4Nv/b/k6V22mweTw8uHTND?=
 =?us-ascii?Q?bQ8HEIaaIT04xB/doram+8DpXDW2fyUuDFGdZLsSbPzbI+ehMgCkSy80CVjY?=
 =?us-ascii?Q?g4AgLYLkGbQ7uI8Fm8ruA3uN29wSvLDUnDpBXN8H9LpY6SmCBStnvRk2wE/b?=
 =?us-ascii?Q?VTzS2WNhVvLhvwjxZYq8rRTgcKD9UWaMaMd/pgltf/PsryEaVPj2WDd3YCM9?=
 =?us-ascii?Q?Hedjgbaaz+qYBHqfG9rBLywyIszORK367c24NQhzGPBX/S8dmzhXkVQNKTB6?=
 =?us-ascii?Q?h0I9S/OJ1MXmareaNeTS36+ArxdSUS9pzzwvSGwKgDTYCr9lPe8/5yZ5SHrC?=
 =?us-ascii?Q?Zcjv7XSFHDHhzvww5JgHdNxqQXl7iMpQaEzxNi7m2yOcbKczqVW8kO8KkKQh?=
 =?us-ascii?Q?y1UNeO80qQBfch6b+VLwGWzxniXEZ7pjuViaK6rZKz4zsAOEq4ZjDNKH4lo9?=
 =?us-ascii?Q?ZUBvMVyvsisPlcOxlYeCPTCmDXUcdcZ84XwUjnzjDNkstv3/JdLMlIGo7V1a?=
 =?us-ascii?Q?1OyLl4go5TzDaTlR/0PDXOUDy95FEVEVCZaU2Z6TDadCw2WX/7DcAPY4yGiB?=
 =?us-ascii?Q?8L5UgBJcwLcLH0diCvfxZkeRE3d9xk3EKH/n37bxD5YFebys2erEi05JJpuC?=
 =?us-ascii?Q?mSymCXIy/qgjSZe093NTJez7vNHOp97h52rOv8ml0eUiQHpAycuZ0iKDGz8+?=
 =?us-ascii?Q?pDoTM23zgGA+Akah3M/XNGxLGB8InhC0s7bfniwbF7IFYfpLdsr68T9qwesM?=
 =?us-ascii?Q?MCaieuOhr5R9RVuhIejc+ZC1UVKvo6M2+c39aaw2B6o79QWIn1D7SaMPb+xm?=
 =?us-ascii?Q?sxggnI+GrnGHXIjar+EDGHrXm2WsuKcztz5T/hDlviEM9HGk0Q9DUuKyNkKr?=
 =?us-ascii?Q?S4OCA+GQVu1MVkHMcy4kZGQyZI6MNZmmoXHTg0+jyJH3gXuUOsaIX3PWsnpM?=
 =?us-ascii?Q?dW0jvWGF88cgMSbP9OXapjFoNwZtxPlFSHitHjNzohmhw33pfLU8LE+FX9Of?=
 =?us-ascii?Q?7VweldRXcIZcSQnBPvrcJ07dOL7BIYvY02b32R/Xj/n+AAfQC6nWnbZz2oR3?=
 =?us-ascii?Q?fUBQ0ODPaBgQ1reEWfUG4O/VfYh9EAnWn5VE6a/kTVosx5WWD2T9irJCp1sZ?=
 =?us-ascii?Q?qlWmICTZti5uQiTWGOr6ZV79Bay0SCgY7etTcbF6jWhHw3+rZBlEKKXKeP0h?=
 =?us-ascii?Q?P8yEsfvy9969k28MnKNrCoyHpbqnST1PH0a1j1NDH9xcvXH0oku80DurgAS4?=
 =?us-ascii?Q?wHKYvbvSnjGFle93OsgCh8Y7Va/jlAAqYOG5fmQFDwlc9XXgq5zhsm21srXz?=
 =?us-ascii?Q?aJ01izJ7pO6EDd4UFMctRkaBHXzbqVeMPYmosptyDrYhxKvCyNcUZyG+7p8p?=
 =?us-ascii?Q?4vHVW/qiMzVJnvGYnee4o6AJnIJmLbmjpSGxZa6/zIbsc6+vkH7JqrRPhW5/?=
 =?us-ascii?Q?j5vZJNo5uDkBeMid0IDjj3kAy4L9jJn6wz++PfeyF/ZIIiOoF9o404rEYKyp?=
 =?us-ascii?Q?TaN5sXUFKQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c19c628a-cf12-4795-4bbc-08de6fe4c401
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 18:29:06.5724 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ac9W567VFi6EYO1/zEwEavWU7wEuWM7tsJcALLvHi8KbrQd2HLXR+SdfLwBC1W5lFi9OtSKC/BeAvjkfSottkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5059
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3E235161AD7
X-Rspamd-Action: no action

update_tunnel_state() checks whether a tunnel state change (e.g.
available tunnel bandwidth) affects the list of valid modes for the
sink connected through the tunnel. If so, its caller sends a hotplug
event so userspace can re-enumerate the modes.

A change in tunnel bandwidth does not affect the mode list if the
bandwidth was above the sink's DPRX bandwidth both before and after the
update, since in that case the effective bandwidth remains limited by
the DPRX.

As get_current_link_bw() via intel_dp_max_link_data_rate() already
returns bandwidth values clamped to the DPRX limit, the condition for
detecting a mode list change can be simplified to:

    old_bw != new_bw

Remove the explicit checks for whether the bandwidth was below the
maximum DPRX bandwidth before and after the update, and rely on the
clamped bandwidth values instead.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 18 +++++-------------
 1 file changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index eb1eed1c8c7bb..9f3750035f68e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -54,30 +54,23 @@ static int kbytes_to_mbits(int kbytes)
 	return DIV_ROUND_UP(kbytes * 8, 1000);
 }
 
-static int get_current_link_bw(struct intel_dp *intel_dp,
-			       bool *below_dprx_bw)
+static int get_current_link_bw(struct intel_dp *intel_dp)
 {
 	int rate = intel_dp_max_common_rate(intel_dp);
 	int lane_count = intel_dp_max_common_lane_count(intel_dp);
-	int bw;
 
-	bw = intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
-	*below_dprx_bw = bw < drm_dp_max_dprx_data_rate(rate, lane_count);
-
-	return bw;
+	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
 }
 
 static int update_tunnel_state(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	bool old_bw_below_dprx;
-	bool new_bw_below_dprx;
 	int old_bw;
 	int new_bw;
 	int ret;
 
-	old_bw = get_current_link_bw(intel_dp, &old_bw_below_dprx);
+	old_bw = get_current_link_bw(intel_dp);
 
 	ret = drm_dp_tunnel_update_state(intel_dp->tunnel);
 	if (ret < 0) {
@@ -96,11 +89,10 @@ static int update_tunnel_state(struct intel_dp *intel_dp)
 
 	intel_dp_update_sink_caps(intel_dp);
 
-	new_bw = get_current_link_bw(intel_dp, &new_bw_below_dprx);
+	new_bw = get_current_link_bw(intel_dp);
 
 	/* Suppress the notification if the mode list can't change due to bw. */
-	if (old_bw_below_dprx == new_bw_below_dprx &&
-	    !new_bw_below_dprx)
+	if (old_bw == new_bw)
 		return 0;
 
 	drm_dbg_kms(display->drm,
-- 
2.49.1

