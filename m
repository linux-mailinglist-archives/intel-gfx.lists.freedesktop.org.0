Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA919888CB
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 18:13:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A706410E211;
	Fri, 27 Sep 2024 16:13:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YhReeVnH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC3E810E211;
 Fri, 27 Sep 2024 16:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727453610; x=1758989610;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+MJg3WOQtYVSnc3+jGpL6wyZZGOL0rV+GUCx5tbXBCk=;
 b=YhReeVnH46upTD0/Q581m4CKK/lmgaeEttuNpRMwfm9zRVauC3Kh1ZKL
 pY8SHJJgdDBsnqh/u+9+arAkUeamTchJp6T0hnH26DmpmoRe4gnzB27Zv
 q8nwLxsNIFC9Cf+tbcqOjJNMtmjqFFO8n5oXQonBKCIzrOHnGJG9c0LYl
 1ZsLbU3ILgmyEUAQLOuOIHReKo/Rn3dlqlevbsIhP1ebWRWvQkvyuXkh1
 /uggxtI9fTG3luQCtcb/NvyvOcjv7MWPUsa4MgzZvGzA7DUn+GRP8K035
 VrNcU9mINCL8LS1J9pGDVtmxCVpCKHvEFDJ3u3SLneDWEtmpZ25kvnQAZ Q==;
X-CSE-ConnectionGUID: 129HPSxjR6uQ8s32vYUzzw==
X-CSE-MsgGUID: F3hCehg4RkW98AkTZKpEQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="14226015"
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="14226015"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 09:13:29 -0700
X-CSE-ConnectionGUID: 6mEsMcCjQwSZWQFG5gxBFQ==
X-CSE-MsgGUID: 49+a7J5FSQi+qTm1mfKF7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="72157628"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2024 09:13:29 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 27 Sep 2024 09:13:28 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 27 Sep 2024 09:13:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 27 Sep 2024 09:13:28 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 27 Sep 2024 09:13:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GwkB3AqZK6CpjEQgkLPtb1AN8shURZ3jFKE61jjkUrprYsv5MA+y+QWLF5M+EJsjGxOEb0IS/u4mRdHSPZQDXXJ3hxVwejafqnsOSp/byjxVtjAtqHO0jPTPZMaQBYCxGLfsHk2GUWET+CtKejbTyHl8v2KeijEfitTC3GsWex/epAfJhKFLe++smD7pRELjcgdscUUurohDyvXyKyw5i/YabJCSTvChUM2O1ig1c+KsotuFnuk1A92KAGe3n9rw06OYG/mo6xp2YkPlPkH1pm+TEmObHjU0MBS7KfDX5nFw4BX+s+q6wtPNUuyGppNPLqHZABJhzSvuBVp+W7st+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AJXWG3AHp9dGgagivHsw1YBOyxmig6muce7eWlTwtIs=;
 b=nIFppsHvTA9WqbONcqZEE63so3YiCVCCqq4/LyG2gxUJyYRUHbS2rks1JpjxqgQz7cX4JK9FdW8SW0Ec41TWmU4DXzhRDSHNCmAlg481OlWIxIZd3KErZf8PgXChp+TyKaAagS8SiElPt9/qUtvVhlB7U1FR/e+5sAP7l6jtgcrtB7VD6EKcoVRrWMAjwWS15gglswTIpiXfgjzKkjEbcGqFnVPPc+WgxdFUvmUYl+Zhz1zUaduT2X4iza7P9cb1JMAnZicBZPaBdkype8h6KBJ9ERMeveX85/T56zzlSKRNg4vwr68WVnTrPHt+pul7m1V9PrNpWfDZZocbZ3yjKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB2864.namprd11.prod.outlook.com (2603:10b6:805:63::26)
 by DS7PR11MB7808.namprd11.prod.outlook.com (2603:10b6:8:ee::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.28; Fri, 27 Sep 2024 16:13:25 +0000
Received: from SN6PR11MB2864.namprd11.prod.outlook.com
 ([fe80::c58f:66d9:46c0:d83d]) by SN6PR11MB2864.namprd11.prod.outlook.com
 ([fe80::c58f:66d9:46c0:d83d%6]) with mapi id 15.20.7982.016; Fri, 27 Sep 2024
 16:13:25 +0000
Date: Fri, 27 Sep 2024 12:13:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: Lucas De Marchi <lucas.demarchi@intel.com>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 0/9] drm/i915/display: platform identification with
 display->is.<PLATFORM>
Message-ID: <ZvbZoIyzcg-EZ9ic@intel.com>
References: <cover.1724092799.git.jani.nikula@intel.com>
 <Zs-LdJYx_lVDt9PC@intel.com> <ZtCb5yc6KCy1S6bo@intel.com>
 <87wmj14c0q.fsf@intel.com>
 <m4uj2hvgkcuingb6rqqth7jc3qpa4g77xebi2wtyyt3a6hadqg@fufb76wcea6j>
 <87ldzh41hb.fsf@intel.com> <ZvV2ssfgHA8jvTro@intel.com>
 <87zfntxpew.fsf@intel.com> <ZvbGARm3OSe38HUV@intel.com>
 <87bk09xhqx.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87bk09xhqx.fsf@intel.com>
X-ClientProxiedBy: MW4PR03CA0230.namprd03.prod.outlook.com
 (2603:10b6:303:b9::25) To SN6PR11MB2864.namprd11.prod.outlook.com
 (2603:10b6:805:63::26)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB2864:EE_|DS7PR11MB7808:EE_
X-MS-Office365-Filtering-Correlation-Id: 2583d8a0-58b9-4819-8e90-08dcdf0f5054
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dj9xW5doR+dYksCAQysVxEPoWef4jW+x4aIs0lPeQOFRdWbxM9ZlfLPA1R1g?=
 =?us-ascii?Q?D4E0jCttie29K9bzhBZiHDxEShEfeS+9OS3GA/NiAqulZZOH0ryqvk/TR7ai?=
 =?us-ascii?Q?2VZOj8vv/endw09Ud4VjFcWj8iUa03fh1bCzyRwsLv2gtHffXlbiNfTI4VLM?=
 =?us-ascii?Q?iTdQ+jFjTALnIgbvLLRC4JGwUr5i5UtOOkuGsC6Ty11kD/WOcSucQe57c5PG?=
 =?us-ascii?Q?fw2HBmlnqZ0UhG272qFLeofup/R94rgy0MvixAHmRECa/tnawhJMZVqKvMzN?=
 =?us-ascii?Q?6gtYuBJ2kOhfynylJku/ZmHKOr9q4nXvVtutMzIFsohIQj5Z2LqFcDXNcOKK?=
 =?us-ascii?Q?9sqccBt8WEICw5u8Zrm1jWggYRxe/mu3Ys8V4WwMALjMwsrYZKXVa1oriKkG?=
 =?us-ascii?Q?kabzaxWYxSl6T0XUjMB1qoD0VOM2K4UEsvAOQ0QUHpM6l5TGxaAC2/x4J/5e?=
 =?us-ascii?Q?l7ikdcBJ0DEbEzDbO60iZ5lxI7V4zE4QojFDcp1pyKoFjGk/sxQqYfJrm8W3?=
 =?us-ascii?Q?8sLJNbkkZpKlmyusoF3a6380y3Am+qf2XcQ+f6Lt61XthFKolK0QarCaGYID?=
 =?us-ascii?Q?sRdU8MCNne9/cqjrh5nMTGXx+zYyLjv5k2+tWaU4tc4zNHBqhWf0bwyh/C8d?=
 =?us-ascii?Q?eDTAFMCWjRHIX1Qw0buOsR60cQo/wlY9SMN34T9OFRnHS4jJXVbi6pWtsBuP?=
 =?us-ascii?Q?C2gUYLKa+ClyPyAGUzvg3EUVgKgLdLpRZuDlPmzBF6zundHm0VAPd8wkoZUi?=
 =?us-ascii?Q?lpgDKIZvb+JyANvErPXLujjEnsuA4scUeD5hffLRoh31D+NaDbcgktppM3Mv?=
 =?us-ascii?Q?JwMwN2uRadGT1GHd1sKYks7sTM0hS+x3CV3XhQ2tL1CbfAeVJZ1qgzgowJj7?=
 =?us-ascii?Q?1XCtkZMG+X/KxhBVaTWpvJ2dgU9iJsgWJkPprHc0UM3dqxu6ZlK7IdmbqiHA?=
 =?us-ascii?Q?U0rsqY1y01R5NoNCpa6UHiX8QySXo74IbIpj5MwU4boILLLaCQB+syPZSpCN?=
 =?us-ascii?Q?J+xlNMc0JF+IVGXL59Q6csU7pFlMsRydmX7faU6oBVuHyt8/HhfFa7Ig63nD?=
 =?us-ascii?Q?QpVAYPs/gGsTb6sQQEx7J2EQkxLFMmsrCEMVvY5WYVL7xozAOq0rye9aDEk5?=
 =?us-ascii?Q?tPPGsNbw7glTK7tHiMLH5To2kSSdmaKHZECXf9gXItoiQzwUOaNuweUeqyjs?=
 =?us-ascii?Q?TFrTcz18ukoA9PpP1eSOhCx6+MJqoXRZifj+RKkIday5hCRoZKqaWXmjq4q1?=
 =?us-ascii?Q?Bk0vtnWpbp3BhboOL2WDH3t2v76vpepD8fQY87yDz8wCPwNFK6z8RzgHXhKz?=
 =?us-ascii?Q?faBkEE8qAD9aEet0ALFz8zGv4VYXzouahjUDUc7qHpEO3w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2864.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Sxe3ws9kTGUewSgMp/f1mUYsjmSLNH0+iuYbpYjc9YSnUq3OGnZyeRNW7EZu?=
 =?us-ascii?Q?Pu/P2uCrl1oIlhzTMWUX4lkR7nb5nmd++d1S6y8HEMzgOGhnPO10+XZ7N4mG?=
 =?us-ascii?Q?sDeczdYjXoziHHvZSgmjy8HeYndko05vvVPWtqa5a5+AmMTuD/kV9zT5PQll?=
 =?us-ascii?Q?Ln4smZTouiWZE7Ts5qGb6C8ng6ni90HUaqu/cOm3n6FW5RzOQwpANW5fwvYG?=
 =?us-ascii?Q?24sC5C/CTZ0HTwGx7NK5RLrK1vJSA8VQbWbphA1YobEDvgCzJfdO/jJWK+7S?=
 =?us-ascii?Q?ZYoddKj66PKHc37Ho9E3ev2DsXuaYPeC4Nq/mRBE5G8z3bEHKlk2LEHsaZ9L?=
 =?us-ascii?Q?kYZJ8wYMKeyFzka8JfkSGOVTnxmZqHdOV0jT5j7mzGt1yd6S1WpYku9Ma5Ok?=
 =?us-ascii?Q?0krAmIcrGK836D2mIDaTDFVb7fbrLIdnHueU6kVin5hRwIKxTtYFcHoKtHAn?=
 =?us-ascii?Q?EAiHdnnBITyOpUDHTeCQIViZfBy91uZD2NLF2AMNUC4jQhaRSwR4Hp2p1ElA?=
 =?us-ascii?Q?aFCKVv3+GdilFixA4B4h3/PkdkQIaYsE+Y538o4Y7nA+rFyc52Ja8gtmc1gY?=
 =?us-ascii?Q?qrP9jRkI/WoZ4lGeNtTCIk85RHfcKQpykHKm/hC7jA3kagila0hQO/FK8B8i?=
 =?us-ascii?Q?EUVWLNfX4zQvWs7wjeGOeWAiD8n+DP94rKY5XHK+hxOPQeX+tp1qlOR52GrZ?=
 =?us-ascii?Q?9LH7Xawno2w7DrnRVovdynwMPbfKg5dZl+7b5T+v4cE+NyNiS+VXEyD0ECVU?=
 =?us-ascii?Q?gVuSB+8ibIlO+1Q4oiFulS4kJ3hIrWj5Yn0ib+r2tGAf4Q70Ufrgr+/ljKN4?=
 =?us-ascii?Q?wUrCY/VJprAPHgZ1AmUfSmyfJNT/HHW8SwOI474sxt6v5P6ivGCUz0CC86kA?=
 =?us-ascii?Q?xrHhjRyzXzL++wzLlWuDSOBisOKARZiwpxCFeJ+kiNdSNDkw9zjT121FBVHg?=
 =?us-ascii?Q?fPSdbevrbv6aeRbRmdvo3TD6I742gDJQ43iv2d9nRDgT3Bgo2lvTmK9SUQM5?=
 =?us-ascii?Q?ZV/8a1e3Ax46nRyn+uM4h1yW1hrDBdNys+O8BzwuhXZOKsS+Mx6qUd7Ssete?=
 =?us-ascii?Q?Ir0WVUSGrvGera0IUBEK/3T74oHnEVhdIxr8Whxas0m94SJ9FeDlADEOinQe?=
 =?us-ascii?Q?FdQrTpZFCRxYxrXLppFCNNUU2l5axb34l2wmpb7uwowamWMnmEl1hBHOuVrF?=
 =?us-ascii?Q?xCXTg21thVta6URZG0Za3uEq6bZyhXZVhna1TqsSHkwB9uLLE3OkCN3iQhEE?=
 =?us-ascii?Q?DEIfdAP1UZNB7v0btZ8yXDvM6CLdfjzE9mErLCNcJ3bfui0XYRsGYbHvDrcu?=
 =?us-ascii?Q?IbW9hRiQ2S+tuGfqhTXE9HfF0N4/Dj0m6aVx6P0FdZjPhhkuOh11G6PiUJqi?=
 =?us-ascii?Q?34VkbCVlfdQvQkldKJhbJbysn4LxsJkXnWdaepWB/Pw1q5O4sGThVDd/rar6?=
 =?us-ascii?Q?u9740vaZgQ/snsxFNlrMdHQM5l2kH9IvctqBkhNzArT+pTlFZRbrHSubl2hw?=
 =?us-ascii?Q?UByCpZGTXUfWB1TXT09JnKJtoP1Dd+3r4FGVOCItRmILEenHLh/H6gud2H08?=
 =?us-ascii?Q?FmBUZ4lqka5agnvoh079eD8V5XRFoLzgGZ9kthuh90hDWc7u0G7Wo9MXqVsV?=
 =?us-ascii?Q?/w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2583d8a0-58b9-4819-8e90-08dcdf0f5054
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2864.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2024 16:13:24.8467 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4htKtDjp5S1G9WYqGKy21/JIxU648TOP3yVUrWDHZnJGlLkVIJYra1hEeNSGrzJUDwCRlyZ6XfDE48cl99gYQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7808
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

On Fri, Sep 27, 2024 at 06:01:58PM +0300, Jani Nikula wrote:
> On Fri, 27 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Fri, Sep 27, 2024 at 03:16:23PM +0300, Jani Nikula wrote:
> >> For example, RPL-S:
> >> 
> >> 
> >> 	if (display->platform.alderlake_s_raptorlake_s)
> >> 
> >> But the main platform also matches its subplatforms:
> >> 
> >> 	if (display->platform.alderlake_s)
> >> 
> >> This is the same as with the patches at hand. Except for the
> >> uppercase/lowercase difference, and s/is/platform/.
> >
> > Yeap, let's go with that then!
> 
> Double-checking: do you want both s/is/platform *and* lowercase?
> 
> 	if (display->platform.alderlake_s_raptorlake_s)
> 
> Mulling over this I've ended up preferring lowercase. (Maybe need to do
> something to pretty print them to logs.)

I believe that I like the lowercase more too.
We could have a map for the debug prints, but I would delay this, because
that could end up in discussions with marketing brand strings... :/

> 
> And just the platform without "is_" prefix, i.e. *not*:
> 
> 	if (display->platform.is_alderlake_s_raptorlake_s)

I like the version without 'is' better...

> 
> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel
