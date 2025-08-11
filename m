Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03675B20CF1
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 17:04:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CD3510E4E4;
	Mon, 11 Aug 2025 15:04:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P8UlwM8m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDDC010E114;
 Mon, 11 Aug 2025 15:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754924685; x=1786460685;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=C0/CZtNN/ugsGC/FTxcNnTG82J3OJ0MYjJxAYC7u5kE=;
 b=P8UlwM8m5kXbyrLy6kGFp0w+XoHOgMxdz0ZaEBWrTFrzxtY+QSYMOdN7
 QLJlzAqRYdZEqF6Lvlr+yGg1BEuH1z4bjRvCxCKtTluyvN3pOMjKEEzrV
 rV5oEdU5YqgP/5ulV3H9imsooXYkS25v1v2JmqGUZu2zmwPxCGvofbcL3
 8rCH/zCsQ1FfXTlvSGQjwKEqAoxVKhNcfkBcpCCBF24g05KV7Xy0Awnjy
 mBzrar3Vop1M9LSO/PDfHkS/NyZzHVyfrHYBKNdM1fkpHL17I+RCZLkv6
 wpWFw6GckJ0cq+OpIIGeOuosi4r6ivegeuXCN3HBtxLpZIy/eGpWm75BO g==;
X-CSE-ConnectionGUID: ldzga6odSZywh+aHufO23A==
X-CSE-MsgGUID: dYT4AJa5TxeRSN/eXIMRMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="74628676"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="74628676"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 08:04:45 -0700
X-CSE-ConnectionGUID: x2H5ITzBSrG8/Tnh91i2GA==
X-CSE-MsgGUID: bTYdYHtoSii7rtlNMYPVuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="170157031"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 08:04:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 08:04:43 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 08:04:43 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.61) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 08:04:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gTAyUKDSvkO/TUCC9GrFVgvdtT7MZM3S1T70VmedmqNfxqnuqQIHwtM+jbAR0jQZlxeS/XhGKFhman/xPqUP/ufH6UhlA2ILBGYCN4IuKDeuM0s5btzmoWEYB8b70dbwgtS3ILPw5qzXdR/oRYS+NsHdG7t46BzlNQhlBQ/silMYWpalMA5zS+GhczEggYXygjOjgamUrMh8I6WIoQJcugHV4OaAzDi6qJZgRd4255veZ9n1a25ooTp09i2X0BwWBpE37IJa9bL/ZLgEitvDkt7oR+d6Q3mCyoEXsKIyO7Xp7yPDSMrGyawh+qVC5GUe1UU1fxliZpvTJ3OdwKgHRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0iVtNrxK7ITdNsLk0hIo9aAPnZ64dP4t4CWjWQ3Q6MA=;
 b=OSWxKuqCnM9pr5q3XQIxs5iQ23VpbPsCMOXt5aP8QDxXrVSTnjmCsHE4bI5L5ufXjJkYy6rAf0gtvU26vwlilxTbTPFOV/hzD1C6nUs6ch6mQBXxuWJ598Ent7wubqwMsvVdMaWt++ZP2moFOZyyhuYGH5PB/kyO82cP3zVGcNw3ZEQECiDV5DjSspcB1z4B+DRDwSYuj2InWdTUgTQDG7pQ2DeNGZ8OYJdS7LYYY9M27m8KAmfEK3dtkTAxnFYZiCVI2I1+XqR7f0E5cw1k7I09oHr0mLGHX15EE2R2/vacs48U3Htx73Yhg3pfCoe9Iz0Xm4xFN2sHzL9wi7+e8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 15:04:40 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 15:04:40 +0000
Date: Mon, 11 Aug 2025 18:04:32 +0300
From: Imre Deak <imre.deak@intel.com>
To: JupallyX Ravali <jupallyx.ravali@intel.com>, TejasreeX Illipilli
 <tejasreex.illipilli@intel.com>, <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?=
 =?utf-8?Q?ure_for_drm=2Fi915=2Ftc?= =?utf-8?Q?=3A?= Fix enabled/disconnected
 DP-alt sink handling (rev4)
Message-ID: <aJoGgIX-VPN4_lSt@ideak-desk>
References: <20250811080152.906216-1-imre.deak@intel.com>
 <175490280808.225841.18271231768889882943@1538d3639d33>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <175490280808.225841.18271231768889882943@1538d3639d33>
X-ClientProxiedBy: DUZPR01CA0020.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46b::16) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB7965:EE_
X-MS-Office365-Filtering-Correlation-Id: 5865effe-602d-4834-e7ca-08ddd8e86567
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|7053199007|13003099007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?gHjCIfF7oLulVoBXhg1jZ9DJuX0gsc1JmLCPDib9EvStmE1jQLfFT/CCYk5U?=
 =?us-ascii?Q?2pXOaEZEdUrwt7lYB87OkwRpApG+Pg8sLQG0QaS2BD9R1Ldcx5dceCBITBhs?=
 =?us-ascii?Q?mmSXAjSibygE5AO6zMKtqadbsOHhOTyIRYqNhlOtTkE4PItdslpaKcaSLymO?=
 =?us-ascii?Q?WKnzxOi8xCH8OZ4zcC4LQ9Npd/pZ9UVSiNz50jWePnxV3UpQLjeDmBwAqPu/?=
 =?us-ascii?Q?FVnIzr4NJaKKSphmjhllKu1POlnEH3zAb2e7a4J2tyuSAMdcbqRO1iufmoWC?=
 =?us-ascii?Q?8feOkPEqR83y3eDTnh/PUfTqTFq8jYu+/TodPNatadV4qRH5G3niYpl4w9do?=
 =?us-ascii?Q?lrE81ymgFHhPWsKdaAEY2ImCT9PoJdpW7HTZb3um8L49fjxc41z7vfRo5dHY?=
 =?us-ascii?Q?s/3ueCGfNZHICX42RoFZkoXqusVJm2lZy28oKU7RpVlatizwfl/FjNeyzTMI?=
 =?us-ascii?Q?uoqfpHzEm5iNdHanCNKK4jCg1h1ofJ2xi9gJnzRoQ8D935Ult847D1asWG52?=
 =?us-ascii?Q?1tSloCMCXPOEZ61ofQv8Kb/9ut1Sgc8Xe6S+jpJJQTWrNtRZ0HJp2UpvHOLF?=
 =?us-ascii?Q?De45M7WiS0jOf3V0dWQYPv3QI+zOfw8H6+wdvQFB445YP09BuLafQaJBAVPR?=
 =?us-ascii?Q?cqJbEIacc0FAUtwjbZkrMxTUEPTrzjjrGBI4fF6zD9Oll3ktYhZsoAW9V9nY?=
 =?us-ascii?Q?3Bmd9hmq610PNrb9dFQtz+KkmpgcDuMLF2WXcaFfEJfM9xKldQ8YC5Nhr3jF?=
 =?us-ascii?Q?wY7doTMOS9oJ1PzdY/nMte8G865XKVwKuxC4Y5wmV3Y1g0DwgX24Jgq4stVD?=
 =?us-ascii?Q?92/mNqsh7jPWPldPtBm0ddUxmIz5Efz/l7qsm1n7R2RBhzyw2SXvjY9R5qQZ?=
 =?us-ascii?Q?ni5ZUgbbwE1ZWYNDQoOA5DHnNBtJou4YBRpIJDkSjFRG9gGk65jDnvjA3jPX?=
 =?us-ascii?Q?28+SAP9+Cz/RdiSKHveKjldYPpC+loWqVa+eUMI8vJGgZsHpM/q4+YK8H6Uw?=
 =?us-ascii?Q?aHpqLJnRtnMhIOqvV0et2z5lGJ80T/a9pCgLOUa2MEMMnWZuJBUhQfnLVHDx?=
 =?us-ascii?Q?LHz40KoysdH5QQBF6lsu2gJeKahL54XzU9Fjmj4wRW0nmC2exbbPuvbRCjms?=
 =?us-ascii?Q?kzVjOKTinS+u9dfkaf/+C5JEOhwiQJAqLGvs2ciUUZXueMXiN5eLINZMTu7a?=
 =?us-ascii?Q?ls3ZAfy89kGaoPI8SezlaSdRW63N8Kx+/eh/5sn3Io0ReKh+wb7B89dofZq+?=
 =?us-ascii?Q?UxmFSAz48EDquBJHaV1+9xzeAwd4ALcPq3z/9yHFTPuH18DrySfEAbR4HQAF?=
 =?us-ascii?Q?KR9Yqz6VPM2CUhwcTpOmAIWL842VBzFUZMoKWTSjRN/ybvwOLtFhgPsc7H41?=
 =?us-ascii?Q?dQqzJPHrY+5lMEqRMCkDAtwFpg2o?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(7053199007)(13003099007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vZKZK4Y7jC154DgHlYhIRiV6MaCf8I8XEndcHB7869uoiNJiqUsFbscIm/3h?=
 =?us-ascii?Q?xGJxyTNJ01XpUHzcLIL9ddyMZjsM/dIuq9oqQuK8CyEROu317h9yWslXGvXW?=
 =?us-ascii?Q?TYje0WE005oIAJxwzy5yI2sBX02bkTJY9jJQx4qR1zxKrlPdcGBeAGFVutOf?=
 =?us-ascii?Q?yw0GTUnb3NJg5Mw6/WfKRbVBL8zk57f2Pj4Jj5MeSAm63TdDE+0/444f1cpL?=
 =?us-ascii?Q?uF+n5vqV7gLwcby8N+TbC7L3qxz3310I9fFnz31WEx/kA0+zfkIkZ50mMnH7?=
 =?us-ascii?Q?0XdzZmnJ8QlkL4t8/SFELyw+0EHfShzcf+kO4zNKDYFG4P73E6Csj4Y6oRMz?=
 =?us-ascii?Q?8bcNTqJcMY1Hc46oeIz3Y9cAdYcVYO039p8edxTTirVBTskoExlhl1wN8n7D?=
 =?us-ascii?Q?Zuw1asc8+SJtaIfXQUgAZpKWyEyqdQVngNNzRVKGI3ZdZP5asi0gSyylLIgE?=
 =?us-ascii?Q?mRBZ01Bgka4xCRb+IAi8P9/DO0NHLGx+pyodAkYvPKzE2oGPfYHLUJtyojVc?=
 =?us-ascii?Q?NzZgqHoTo19jASyavl5RN3v4PDO+gsvrnpEG373MjYZNUtE5SJzOV8l3uBQS?=
 =?us-ascii?Q?ElACFxDCPpy4UrxwFJBpPZjxAepwj3F404FrXjtiXVCPFpyunqAlfVljsztO?=
 =?us-ascii?Q?Q01yAs6ImohLZ5nhDzHc9FMhYRhIE1cm2ucAT3Vw+OtnpA8tNxRda+6uOjah?=
 =?us-ascii?Q?OtNKPGY8+ZSLu4I4gbQei0lXO25z6fn7LORa15kOxupe2BhhVJdkb67h+Rhb?=
 =?us-ascii?Q?Zm0v9SLIdOjDTHfTFXus41Y51N65G2eAE3q7Btfh353xo+8e/a9Unq+rznNx?=
 =?us-ascii?Q?bri65ILNCzGN1tCUbhC8bqXuIahnSm79aGiU0SqD9dog3Nf2I0vsbVNIuuZT?=
 =?us-ascii?Q?1N8cJcGfviYYotVqP4vNHp3i4SJsfYnlZowfdW1KtRSt9qNJBX9yrmsD0c/n?=
 =?us-ascii?Q?HcAg5lkUBp+TIu4mP+3sEU+xgFFCtHiVUUviMIrnxJWF5Hu7bXflBwCFElxf?=
 =?us-ascii?Q?frCBa+0snNK7osDiqZ865N94xdffIaszkPuFnnGKLuqDYc4cgOB12gaugJSA?=
 =?us-ascii?Q?+6oPictK/7WL5uQK+OUlq/FY6++q15B9fBEfKOq7BjnD4+mCjbmDpwO+GI8d?=
 =?us-ascii?Q?+ieze0JpKIflGlQkC3fzaC2MwSWo9FsVo5VQ4IwI6R0XIoRoBdHf208C1Mi7?=
 =?us-ascii?Q?GNYNPAB1WDQLP07Ev+YLZTy8yu6z3d0M7RgESrZsqjFmOYeluJZot6ruZ+cm?=
 =?us-ascii?Q?83GNAVn+ZI+00CMKYBUwqDQQgh/wtRxv4F5lM91GzhSutGdpFSRVMAzYbW/q?=
 =?us-ascii?Q?yWrIjo6ug5huRhKHviKrVskfemPJ49yyKj7b09J8NwtPuQFoaT+X9cgk6MPK?=
 =?us-ascii?Q?Q2ChZShisDor7nQyOyjBhICPtzl1hSasrm+9RkSNZx94d2xbaQE1nt8y2wyN?=
 =?us-ascii?Q?mDm+WS0AfXS0Zgaut0sJ2QqAdewYvsedQYDTUW0GezUJYZ+GZLoUbjMhmW+X?=
 =?us-ascii?Q?1HVhKwwp11gyA2tNK0Z7PEpJZC8dg6PRBrSIT7D8e5moz0enrr5dBOZD7jUJ?=
 =?us-ascii?Q?ElAWYopqNZf6tOWZg8VlfH4gnC8H5+YK8hI0H3vGtUn5OthtDEvdxqYolSeD?=
 =?us-ascii?Q?Y6w1I0p+25QuBxCy0OsFJJtL7enOtaUHT+/FL9etNL44?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5865effe-602d-4834-e7ca-08ddd8e86567
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2025 15:04:40.4198 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lv9ABmqJumYpmIGu5qc6FcQ5OUkMp3533lz5seDp/Psd/HbjiOB96Z1wAyXZ6VT+zyk6ObAwc7J6aVACKycVNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7965
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

Hi CI team,

could you please re-report this result?

The failure is unrelated, see the details below.

On Mon, Aug 11, 2025 at 09:00:08AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tc: Fix enabled/disconnected DP-alt sink handling (rev4)
> URL   : https://patchwork.freedesktop.org/series/152515/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16975 -> Patchwork_152515v4
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_152515v4 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_152515v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/index.html
> 
> Participating hosts (43 -> 43)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_152515v4:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - fi-kbl-7567u:       [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html

kbl doesn't have TypeC connectors, so the changes in the patchset are
unrelated to this failure.

The failure is:
<4> [163.791609] WARNING: CPU: 0 PID: 5768 at ./include/linux/sched.h:2185 __ww_mutex_wound+0xb9/0x160

and looks to be related to:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14804

> 
>   * igt@i915_pm_rpm@module-reload:
>     - fi-tgl-1115g4:      [PASS][3] -> [ABORT][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html

tgl does have TypeC connectors, however nothing is connected on those,
so none of the TypeC changes in the patchset should have an effect
(they only matter if a sink got ever connected on a TypeC connector).

It looks to be the same ww_mutex() issue above.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_152515v4 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fence@nb-await@vecs0:
>     - bat-rpls-4:         [PASS][5] -> [DMESG-WARN][6] ([i915#13400]) +2 other tests dmesg-warn
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/bat-rpls-4/igt@gem_exec_fence@nb-await@vecs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/bat-rpls-4/igt@gem_exec_fence@nb-await@vecs0.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - fi-bsw-n3050:       NOTRUN -> [SKIP][7] +3 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/fi-bsw-n3050/igt@gem_lmem_swapping@basic.html
> 
>   * igt@i915_selftest@live:
>     - bat-jsl-1:          [PASS][8] -> [DMESG-WARN][9] ([i915#13827]) +1 other test dmesg-warn
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/bat-jsl-1/igt@i915_selftest@live.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/bat-jsl-1/igt@i915_selftest@live.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - fi-bsw-n3050:       [ABORT][10] -> [PASS][11]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@gem_exec_parallel@engines@fds:
>     - bat-rpls-4:         [DMESG-WARN][12] ([i915#13400]) -> [PASS][13] +1 other test pass
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/bat-rpls-4/igt@gem_exec_parallel@engines@fds.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/bat-rpls-4/igt@gem_exec_parallel@engines@fds.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-arls-5:         [ABORT][14] -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/bat-arls-5/igt@i915_pm_rpm@module-reload.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/bat-arls-5/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-9:          [DMESG-FAIL][16] ([i915#12061]) -> [PASS][17] +1 other test pass
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16975/bat-dg2-9/igt@i915_selftest@live@workarounds.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/bat-dg2-9/igt@i915_selftest@live@workarounds.html
> 
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
>   [i915#13827]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13827
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16975 -> Patchwork_152515v4
> 
>   CI-20190529: 20190529
>   CI_DRM_16975: b0354f42f0b7052682bfcc2f53b0aa023b6f68d8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8489: 4972020ea0f3d0ac8a0d7dd4f5419119b1b30995 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_152515v4: b0354f42f0b7052682bfcc2f53b0aa023b6f68d8 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v4/index.html
