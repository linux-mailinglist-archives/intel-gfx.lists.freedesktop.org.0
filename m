Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7D79889EF
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 20:13:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD2D710E436;
	Fri, 27 Sep 2024 18:13:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gFZgcA3K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7638710E0F6;
 Fri, 27 Sep 2024 18:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727460784; x=1758996784;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=sWUP73nOlfCxmmkZzK7Yyd6WksJfCPLOkDTAST6L8Tc=;
 b=gFZgcA3KnRsrc9oYbLsnfs6CssGgoEojFP9Ymg7HFLMu3Fm5c8QSaAvu
 ZJ70VzIJE4QcDX6V84ZwYc838d8dyOsh7V9SaGPV3RlAzoG5gPlceXHdK
 PgILN/jcls4XWO1jKvRKLCeMJ3a6XGZ8A+8kQKfxfT3G4TYwb4oPny/Uu
 BqSCcRKsx+FkZXUe+/llxZSKlesccgNPq20TDgD3579eoBd++/DQbC2Ck
 l82Z2IhI34eWVAVSUjdGQ/PyRFdhuNNFNse+LjZj5uFg1voqzJzUZdkLX
 SubWehUc3ycGbDeYEs03fpWmcGL8+uSvia5bhnFJR2QE7pLwkQimhEqgw g==;
X-CSE-ConnectionGUID: fL7c5GolRyyucnh2JdvmXg==
X-CSE-MsgGUID: 4jjstEwwRNuAetWFXr+v9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="29497412"
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="29497412"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 11:13:00 -0700
X-CSE-ConnectionGUID: FWpyakpiToWrz+q9nZ+tCw==
X-CSE-MsgGUID: UJXcfjSnSMaIpme+pWnRJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="72494411"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2024 11:12:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 27 Sep 2024 11:12:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 27 Sep 2024 11:12:55 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 27 Sep 2024 11:12:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WcGWzj2J2WBExkYRwGMOKqhYJ7EAIyEsT6GBIktUaqWDyJRhTH8do5/sBr59fEMargZH3ugJh3IV9SNyFBiSc+PW5QVcc2CJfRNt051wJiWzuJ+jheETIKkp3flnLSWtLdvMyIh4rN+E5WHHjhxaRfJHpBhDRAijO4ikqK8VMdiXQPAp1uf9rjwBAsi1NLsSzBgb4YrYNw9QJUKfJxVvx2f2n6W/oKE1CmdpSXpHgr2SW69N29zU6jPSKTSQKFyZdy95gduuqqT/50KHtEzCDBqpNGdX8VCYEKK2ww8DA2bwQwmnWLsXSWZUX6n31da+6vTOSAp0iHiYu7dnH4IVEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZhpJcc714L2JI1Wfq4ymT2dNfxiRUuoCXaJxz+EoLZ0=;
 b=KIJ06U1WU4X51RtslqGBYiYMMhS5kJJk5YdIQvH+CUV2Rfk4d1kE0PIBtkk2cdymonpoAW4JLgdFEF4qP0mtHAMWaUTrZnZTAxYF9XHvJHPyTPOukwDDonKaOjlZ3YAljhfuNUTDBsftUhTj9RAVhXGlWFi3U94/7WPw28kJ3d3/vA90kO2V0lJ87rOS7eA0KQvAib+OXsfHeuK6PSWo6bQQ9MrI1IniumprO0G6GNhoG3NXqqvu9oPaK/i5d8reMIx9qGdg3FVGRFLqpKEmdA/Eaa6aY6xE7EYDuPxeocA++bHbc37sXQdkmvV4QSJLqeCJG+S/GH1OLwYWGUqDWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SN7PR11MB6797.namprd11.prod.outlook.com (2603:10b6:806:263::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.22; Fri, 27 Sep
 2024 18:12:53 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.7982.022; Fri, 27 Sep 2024
 18:12:53 +0000
Date: Fri, 27 Sep 2024 13:12:49 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 0/9] drm/i915/display: platform identification with
 display->is.<PLATFORM>
Message-ID: <2j3ykxtt3d4fmzzjrbbjsnawroi2rpr5iqc2r4cmblrik2zc7r@rrorlebuj7jo>
References: <Zs-LdJYx_lVDt9PC@intel.com> <ZtCb5yc6KCy1S6bo@intel.com>
 <87wmj14c0q.fsf@intel.com>
 <m4uj2hvgkcuingb6rqqth7jc3qpa4g77xebi2wtyyt3a6hadqg@fufb76wcea6j>
 <87ldzh41hb.fsf@intel.com> <ZvV2ssfgHA8jvTro@intel.com>
 <87zfntxpew.fsf@intel.com> <ZvbGARm3OSe38HUV@intel.com>
 <87bk09xhqx.fsf@intel.com> <ZvbZoIyzcg-EZ9ic@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <ZvbZoIyzcg-EZ9ic@intel.com>
X-ClientProxiedBy: MW4PR03CA0194.namprd03.prod.outlook.com
 (2603:10b6:303:b8::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SN7PR11MB6797:EE_
X-MS-Office365-Filtering-Correlation-Id: e15c965c-65de-4e09-32e7-08dcdf20013c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?yDyP4DfatjB29JEVAOuJFQtWcsLMKgzLfI/0iH6NFLjhj00aE47q4T5tICD3?=
 =?us-ascii?Q?578BTvns7l+EdKZm7nE51UTKzGSkSOeqnS4Q47ogEM9YcaaQEu1sMoc6KkSP?=
 =?us-ascii?Q?H8Tx7HZwtWql5FZJIKDZ6s0LV8EjDlDuCnDMHcsbMn8KLht3Q9gnxjnzDFO8?=
 =?us-ascii?Q?Hbod2/X2hmskKWFMaU9LdNDKR6i+DCiaIcmvwpUBoagr75i8yMW2cV41K93R?=
 =?us-ascii?Q?YDw40Fw0ttOGGZvctvnxcETNpz6q0hFVBRSzUc6dtAPGo0OM3MAMCW57VaoP?=
 =?us-ascii?Q?M6oJ3ungvB4tYxrLA3vkLXEB88hu3CT5rCj5+SADIh1ALJ/sDwhutCzWinaQ?=
 =?us-ascii?Q?tGD6KqVbuUnJSL5NBd5cSbyi+TrjHL/eZ1/ptEaZ0MNfbAwzaC3EF3BKKXZR?=
 =?us-ascii?Q?d7xfxJGMoBHCVEWnApGM/4NrpNUOQwyQQ4NSrFqWnKLIGPhtXOAaIghUYq6R?=
 =?us-ascii?Q?7yL61nc4fzowz8FfiItEHpUwzfrCf/n4B+CNVnRa4rNYDNbLrhpOMoo21xrX?=
 =?us-ascii?Q?MkhZ6ZyH6Ww98L7vL1cl36PcJKcJ2l64FVDjhfMfsEfGa6ftVt9Ap+1GI58W?=
 =?us-ascii?Q?nZcgUd4tRFex6gLYX5uEcsmeBIL7Lp77YqyJ4hK5upz9u+VY91Yu4Bn+Aus+?=
 =?us-ascii?Q?VA/CcHOvVvoSqwC2z6ZV9NrlpeywjNtmXfMsuFsNeVivFYBtF2hMDVvbkgcU?=
 =?us-ascii?Q?kiEOVsNriq24e5DvX5etLza5/DoarVhgcSeH+6To3GxpIzPZeyht2ZpLTus8?=
 =?us-ascii?Q?K+85/yGcvAWtJMMrgCoAXPxB3ybdhCVkRXJ/mP9ggOi0NMUV/xlrj75iIKD+?=
 =?us-ascii?Q?DqewhUPx/7HVcoHi3JtmzZjYt+sDxsARt1qa/D4/BfHbDG8l6qgjxlCA4MuZ?=
 =?us-ascii?Q?iSXqfgXBDSIMexjXlf4uhiZCb8ciONSDz9cQfEg9ciusEWRgf7AfHIjzJjgc?=
 =?us-ascii?Q?0Tpv/Soqwj3snc22P+h4DPhowm99tkq0d56oi2HQFXKJ899fqjhijxT15VMe?=
 =?us-ascii?Q?K9nsmCRfwwQaub/U2+8uCjnRUefggRaZ39B1c/98IrjaRgBCNqtPAopN6JEf?=
 =?us-ascii?Q?njxGS5pw+52cDonMFHMbxgkKxcHG4q8QH9iB/wI14AUMGT6rtneGu2YzKOsq?=
 =?us-ascii?Q?c6clDo2Cb9Me0te3VeyYQC1BSJqnC13xgitaH9Wsq73daPqRgWXWj9SZqr6E?=
 =?us-ascii?Q?qs43rfBZFLPZdsPOHxOQPdvQqauA7VxfoxrcCfAJ2g5I9yyfs3mZ1lIUjdYA?=
 =?us-ascii?Q?f8h/n3d9IXf5RkzeaTgOZIuwxT5Z1NbOXLHceAcpIEFTcHMc48+1DaWYUhQg?=
 =?us-ascii?Q?JEi/5+uPCERmP1UjmK9eyJCy9p9r9+/rPCpXHCdLJhlS0w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gQbOkeBsPIrhBSlI7JPNfmjCgPui6+ln9LYpLizeVQulGqWNfhyrS8PJ3fj4?=
 =?us-ascii?Q?3F2OKOX4b3foW7sCidQ+QBy3axfE//SQ312rMRG+MGQJP1Rsj72LPCJZwViB?=
 =?us-ascii?Q?WFSDoQKFLxyV7DJYibw/AiFBy6mKJ9V4J+ZTuPzoUEGMjeYFj1dXZDn7Jge2?=
 =?us-ascii?Q?btdHKhZWaoUOR5Poxel1p11TW7UrYEgoz9Dt2aZNthNR6Kc60LGgWhO+/O1U?=
 =?us-ascii?Q?ylrBWPnO7+O7Y/ok1D4hqR99uEiso8To8Yqu/nYh5jAtPnCmMmP1P1TYq3Bg?=
 =?us-ascii?Q?AA5yvNAe0TWM73EWpLhYqEGAhj3WDo8MM6k05v44cIxf0vItkR65LUtTsT0W?=
 =?us-ascii?Q?DV62yWiCqsB0sPvia/ElwFp6mh3Mf592cor+DsM5zmnZNvF+rUa+Xi824q+z?=
 =?us-ascii?Q?uQ8ZOSMDaIuKtzrLGWAYPZn4UwdInXLAt/4Qs2Pse/WCYgjkTIPWoL8VVNB3?=
 =?us-ascii?Q?sQhPN3h4kb7LFuzvY78defnHYgjQxZUIjadUx+LjmnHStisM0M7BuHlQKqmm?=
 =?us-ascii?Q?yMEHs6/gFaM1OQlkHtZEHhUQRBOO4KNDmaLk3EyZRwIfnl2wNGraWLWjW8gq?=
 =?us-ascii?Q?UvNF4SmzuOGp1eNvUVzMXvEWmUY3f7q5jXKWQ7Q1pyyQJju5vYwSDMEp4uKO?=
 =?us-ascii?Q?aGNXDsqBRQpy1dWQ0gSAbsUapG7ye9Ta/cKMdv3zJjPrJlLZ7nEs4y4QQZGe?=
 =?us-ascii?Q?0ZjJnogVGZyRBeNzmePoj37f/gpSTVz0TywELqkJdZafg7Oqt4oOw6356qqT?=
 =?us-ascii?Q?hP/T/VI18jZWXq6mPa0rNG0Qx2rB8rR2ZCzC797bvnEbrLnN6X4WWaPYFMUu?=
 =?us-ascii?Q?VAnyMN9aiGPVBlukde82V2xHNPwGBFVdVcVeNlB8LK/PfNHvJ2N1E5nKW2Uc?=
 =?us-ascii?Q?dKu4wO9p4Ne47ghEWfF/2ISlEEuDJd5f8R85ECmnP1jNS9YKgsWx8+l44ZBj?=
 =?us-ascii?Q?YS7C/AjGFFxs9NI3VTgPrNwhiB3ub+VfUCVTv+2niBIRzMGIDmO0kXiUzuGM?=
 =?us-ascii?Q?fyAOJ8MyZlVDh8JUrMj0gBNQk/9ZotesgAM9C8+QFwhR8NsLV67SZoqXDFVp?=
 =?us-ascii?Q?buNpOoGm8eFcUU+wHqf3Y9VFSA+cEZuw5GusyYrMvNet4Vh/5KqMTpPkkFMB?=
 =?us-ascii?Q?LXq6z/ZmCUsgdiT06yh13rp++Vjwp7V0OOzCXfDc7+lYYjn3D5STv20yzPVm?=
 =?us-ascii?Q?00Xszmq+m7GEc6vGS7PDFeSkCxJcxnvuLl1GDsn8NBwNnuf+CW90U1eT8oWb?=
 =?us-ascii?Q?SE+16EzB9wQDbeL9tiX0wPtcITRNo7NVB/XMUmN6ExYs2JR5m7AiTp0DcGEV?=
 =?us-ascii?Q?2zyn35DdHgesqTy5M6vfbTe4Wq7HWj1x+hkWMEtJAeREz47UsZv3gvZmUcK4?=
 =?us-ascii?Q?xEkRbIBW7zO9YiX97TAjCJkfWU1aYTwq2PVVG+o0Qutx1JIQNkvxQua4rIDA?=
 =?us-ascii?Q?Lk99J5deQm5hVJwgLL+iLt8+S2b6W+/AYHNgwGShgUrgXXg3e4O4sa9ZUUS/?=
 =?us-ascii?Q?9cjK9jzVks+AhRnqTbHsdwC7NUEHtAtfLTzWxfdc6SX2jmBtjMAMfUnTQDcL?=
 =?us-ascii?Q?5qs/96NmaOSkIpKV+H48cSZCZvO/YWujJ0tA3ISwFC3oaAE9BV5ghSFMbPl/?=
 =?us-ascii?Q?FA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e15c965c-65de-4e09-32e7-08dcdf20013c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2024 18:12:53.4733 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XWTw1qdmqBUVXwqbgYkKZWhCeJ4+VAUWjAY2DQ8/lCdz7guDy2tHYDbUgGLA4G1gsN6Sg/5h8fAf0Wwq0fwsndtOpIasYDdMNx7DiJl2qOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6797
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

On Fri, Sep 27, 2024 at 12:13:20PM GMT, Rodrigo Vivi wrote:
>On Fri, Sep 27, 2024 at 06:01:58PM +0300, Jani Nikula wrote:
>> On Fri, 27 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>> > On Fri, Sep 27, 2024 at 03:16:23PM +0300, Jani Nikula wrote:
>> >> For example, RPL-S:
>> >>
>> >>
>> >> 	if (display->platform.alderlake_s_raptorlake_s)
>> >>
>> >> But the main platform also matches its subplatforms:
>> >>
>> >> 	if (display->platform.alderlake_s)
>> >>
>> >> This is the same as with the patches at hand. Except for the
>> >> uppercase/lowercase difference, and s/is/platform/.
>> >
>> > Yeap, let's go with that then!
>>
>> Double-checking: do you want both s/is/platform *and* lowercase?
>>
>> 	if (display->platform.alderlake_s_raptorlake_s)
>>
>> Mulling over this I've ended up preferring lowercase. (Maybe need to do
>> something to pretty print them to logs.)
>
>I believe that I like the lowercase more too.

ack

>We could have a map for the debug prints, but I would delay this, because
>that could end up in discussions with marketing brand strings... :/
>
>>
>> And just the platform without "is_" prefix, i.e. *not*:
>>
>> 	if (display->platform.is_alderlake_s_raptorlake_s)
>
>I like the version without 'is' better...

ack

Lucas De Marchi

>
>>
>>
>> BR,
>> Jani.
>>
>>
>> --
>> Jani Nikula, Intel
