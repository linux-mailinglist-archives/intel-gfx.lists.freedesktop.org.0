Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA003B0770B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 15:32:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A04310E79D;
	Wed, 16 Jul 2025 13:32:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fCLYhtPf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE42B89125;
 Wed, 16 Jul 2025 13:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752672737; x=1784208737;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=K9+JMdyOm8xww5hTCKxFAxCufzqXN+KV0QklyXd/IiQ=;
 b=fCLYhtPfEQ7IX3SkmXx+0o9d8DMB5/oXv6foMzNcDo0+IdOvvA2yjfBW
 HeFA8FoqIUh1QezGJztyzpZ2tJqX44183m6yhiyBgyDE/+r6GCuObOiaf
 OIbvTXQSzuVd0+dKJ9J5DV2jq3ThU22U4JfZo8YSOl2Nk3Nl2sOFrrlLd
 cbUQBFFZpW6Y8aMYL/VoLla5OnbYNHZ+nkcxPQzxYtz6qEurvwTdpA0xm
 h+XMR6YehHh+OmxuUYxn2QkyLb6F6M4dBNyrvJM8EtVnfz2+WYpP7jHse
 W2j7ErNdgwZxcsYNdF547S1xlGrT1BOPyPqlcmEXuYepxxP1OSwRDvekE w==;
X-CSE-ConnectionGUID: Pl1epIf5R6eGqwV+I9f9HQ==
X-CSE-MsgGUID: cAITQTHvSx6nm9vhBzkyMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="58687632"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="58687632"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 06:32:17 -0700
X-CSE-ConnectionGUID: 5JzScjk1R0aCpOTXKvmsgg==
X-CSE-MsgGUID: rfxYQ9d1QPiHqcd3/8NwXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="156897102"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 06:32:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 06:32:16 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 06:32:16 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.82)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 16 Jul 2025 06:32:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rVH6zKVtZTXRlVpZvtS62J+l2KWEgN9EwsmQDXIwkW0YFKKm/8Uwsw+Ih1VxdMEMwKCTigsIlzP2DlPTxNWnTvvYGvC9YAxLINLRR9eoQUh9829tbKrUzUtAx1HSBxn5Bj7oe4tOo8PjSmcvNNNav91rtqyoG9KAg/ZeuJQaYCm9Xlfd3RrwRhYhlzs7fk70I/gaMZNgM5rT6nsfyzSAdHH3QnPgO2X4TelEFejkK2tjgsxNUSrSNMHy/6AtIFPfobPMADzN77AWlQZShcRS+pyB0stxZRVWlyeeyYOu3lUcETtMJxp6XYNGTeLAM5viSFksR6pZFUgiVaSsALriCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z8K0S/8ZXsXtvowP5i2KVrj6vL9zqydc3/uLg/4kMRg=;
 b=A5cHtYnUefPUrJorMA/4z38T5aN2XoGRax0l5c67RHgIb/YYHz+CQfWVbTPEaWEJ2brlb9Cekvu3+Aw4ijBJ8fnjdG8lqKlGGrab3BRZx42ZSApH+1YJVlL95N9aPJuExYbnOaFeANUfNcUp7VZAAmJtqksjGxFk8MY+7hGcxfabMBYzfp8x3MyJweyRqo9k7VfnLmq60MJH1CzoQUT9mghs8NkOewqs+eTIP5DreI5GRXsKk9pGdfTwso3bsw1jmeE3ZPLKVkLLHrG8oZXDJwBpN/0UqyatmjZ8Pu0qseD44XDy/s6ICkl/YnHVCBMY8Yo2m5soqpewBBpMhH+2oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7300.namprd11.prod.outlook.com (2603:10b6:610:150::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.35; Wed, 16 Jul
 2025 13:32:06 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8922.028; Wed, 16 Jul 2025
 13:32:06 +0000
Date: Wed, 16 Jul 2025 16:32:01 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/7] drm/i915/dp: Don't switch to idle pattern before
 disable on pre-hsw
Message-ID: <aHep0dty5Wq5nviW@ideak-desk>
References: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
 <20250710201718.25310-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250710201718.25310-3-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: LO2P265CA0338.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:d::14) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7300:EE_
X-MS-Office365-Filtering-Correlation-Id: f9b1fd1b-a638-4b0e-c510-08ddc46d2814
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?Z7e5ptAw3Ewb8niy6D+k0Q6ukbSenmFjVqKWrr3QJEULsfx2Y2UB+syvpK?=
 =?iso-8859-1?Q?eWBVZpyWDUjdInCrnTtHlLK/Obx4gU1za4t7v2BVLJg8vrQ5EF5ICOsjYM?=
 =?iso-8859-1?Q?C3Ta7PNm02nDU8gwJXz9xDAgYpf5mGPxvYPMc1yGEJZfUgRQPXXeCkYbzk?=
 =?iso-8859-1?Q?Wm121U/CXCoeC03nVk9exS7ZFOam+ao3HWmTmNa8UgSPHbZYv3O5deWxzp?=
 =?iso-8859-1?Q?k0DD29z5ztmj7AIqHy2TMqWS6LoJn6N4wfpNrfIzODcWSWAZ95sCuQ+0ni?=
 =?iso-8859-1?Q?4IubRNJXcnuWGBW7xqkwgcu+MGYXIiMWOIEZr0iVJz+PH4+DMEQVfyeQp9?=
 =?iso-8859-1?Q?U3eQBlqnmbnsU5bpJ2p0lIc8ceZCqjD60Hsl2fa58c8wQ5hiL83Z4ph9UH?=
 =?iso-8859-1?Q?GB7r1pJS0oZHO3Xxx4/Oz5gr6uwQ5Sn4NjsE+UmBAnhP7bZX/XkJ5jllbc?=
 =?iso-8859-1?Q?NJjlP16L87/jtuzL4kJ4Nv0KL9JEWmn69DorfFBdgE/TIVhONMaiAWDoys?=
 =?iso-8859-1?Q?C49dHngC6RLtln/uwh62hnOKLWqiZh7K79Blklysi+CgQ/k+sv+LzLoyPD?=
 =?iso-8859-1?Q?420hVlLMGCONyR6iOQjL7nW4GLbhVIm94VntUlw/yq+NddK4G/ws11slD7?=
 =?iso-8859-1?Q?IAVY0ZLd36p/0ihblZfponmTS1shRpCYm/4kcGJ+Fh40AwIsRYwALDulhf?=
 =?iso-8859-1?Q?EdB9XgL1JRxj2ArqHZmfkfPfIKSRSjWWQzqNJtxhEyrH9/FuBAr2sVGCo+?=
 =?iso-8859-1?Q?V4tSo9SvwIwQql/tJi/vznBz9/sOlahf8VCcq/pECxULYciZOMucctNqKl?=
 =?iso-8859-1?Q?0fxiMx5qhDizC+qmW+s6SF5ma+D6VtQiZlJz3ssBPbRJENBsZF8Nc/qHfh?=
 =?iso-8859-1?Q?GdrQPG2gcJgzRh/tVnlLbfxxC5KTjadDYg4+S/AR6JaGPG1szv9850QB92?=
 =?iso-8859-1?Q?uQtCcAuXlTboAodXZLb/Lto2vsnAkBr5xjdkfBiDJ9SggioILuY44EaYpC?=
 =?iso-8859-1?Q?v8Wvegb9hv3HDmpGwYYrJfYaeQ37WWnH/rWQLj1exxM22G3ToqKCT+jJGP?=
 =?iso-8859-1?Q?JwPqWohs0vP9HUT3IX9subizIFm7ckBWKjTUkycrxSbtEqO1qTaQGT7uvd?=
 =?iso-8859-1?Q?GG7hTGTfebSk1Djc3wCu4iAxyGPGk0rliolaNNN1NVz40RbPa4Qvo22Xyp?=
 =?iso-8859-1?Q?W+s9fpEFJhR7vHqh+sfA/pk4MZ0I12cedoTpaqUZ+3hD7+nbTzVM/PVPqQ?=
 =?iso-8859-1?Q?SVVKNCvJxbFg98JovjiSqiKZvuwFhgXA/TixQRTm4FS1uOPAjzNk76IJHR?=
 =?iso-8859-1?Q?PjSkbMlCTsQrgw8echuxYijXUHiYle8WXIHxiyjUgRo7X/JDDsfrVhdwHb?=
 =?iso-8859-1?Q?5gE1Udfy65hxv6z1rrzEOFROpN7G0pglgF1PZKJ8HtF9Ht2pHSg9FKYfYS?=
 =?iso-8859-1?Q?LvcOewVpyObvAEkqqtBkKNg5omn1x2WNoBCa1DTAsMFQpfPlICaM/YPpsh?=
 =?iso-8859-1?Q?0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Oid8vhaj4WxbniOrauFTmzeSdGfoJCIudxKk5D0zJO/JW9YlZY0LySflmu?=
 =?iso-8859-1?Q?LpNCLDpy43TPH++BhoEiW4h3IfLpO/zMbisfgrqeo6oPTY9e3YiLKkuEB9?=
 =?iso-8859-1?Q?xTUXeyUwxA/dbKlDT57JBiBSrHj2rzw4yOLbs2geH+LzMUERWj7pRAkUCU?=
 =?iso-8859-1?Q?d1S3jSWQ1zYkpW7EZLE4SY9aKDSAbaC4KHByE45UOLmub6ZibY5e67/bup?=
 =?iso-8859-1?Q?EHgv0tq4dcX/wovacgCUfELjrkWEV4nkqORvdB0WHEs0G8LjdtwSkMP1Ii?=
 =?iso-8859-1?Q?r5DBeZpZnVusO6n+GiUA9VAVi47MWPzj9PjZrNl1G+5r8nsk5HP7kRWLep?=
 =?iso-8859-1?Q?cLD9lJ9BmMtzUs5SkGsYHPTzSfymf0ST03rZjNBfMfwNKJLx1WvaxCj1Ut?=
 =?iso-8859-1?Q?v2jGOHd0JdT9KjayjGWmdJt0lE7w6pyG7YipxH6AvJ2x6S6SOkDCSO8Cl4?=
 =?iso-8859-1?Q?aMjEe8UzDid37QD6VioyFyCAgv8XzCeWIGvQ59lTmEfIVWLuBN47rokULQ?=
 =?iso-8859-1?Q?bpi6k8iC48kSuC5s0CAY+STooesKFmbwk3RBvQV1HAho7TCv/FtkNzTzwr?=
 =?iso-8859-1?Q?ZFnizGNMt7vm4iItKJeRyHLCTj2LuRBkz3Vo6GOVcVdJIArGcJ9PlYmsXR?=
 =?iso-8859-1?Q?hLPVnv78daloi4BMuDSlXNcNyK9ZObMRmMR8UpUjfFqmHepeeibI0vmKj+?=
 =?iso-8859-1?Q?8zOyYs4QjX6oG3I4xZLQKiJugovPuuYrvQEMtK+FSS0ntLGRbU1dGdTXY6?=
 =?iso-8859-1?Q?j4cHqp8VOc1LUKbUQKmzBPsvDMeT0rZmxx/Ufi4Tqllb8QCLfhqTNt1ZmS?=
 =?iso-8859-1?Q?MpPB9DS955u0tO85OCMZSdSSdBG/ovyM2z49UDwAOoL56jrB8cVgXY95Ru?=
 =?iso-8859-1?Q?6XHB+1HdR17Lz0PDQAOGHn21wIzosSne47X90WiJY3q/ecDxGZJGWJibcH?=
 =?iso-8859-1?Q?M3ZREBdadxRo08dR17YHD7N9JMWAYgyCZ2whkAYi5PvPi5i0BuavAPrZzo?=
 =?iso-8859-1?Q?vQooeoxcQMazu1y3vF6kA/T9tv8aRM+2HoYizDsipyyABSA3MD80e7WeDg?=
 =?iso-8859-1?Q?IPpdZo/iguWDuRK9dQeYn3U6R7xLxt+Xzwf4+jGCHImtcgIl5QKUbg42uz?=
 =?iso-8859-1?Q?WaPddwJCQ8lew7+8GZv6pVu8/wMlHZPRy+85SgMuKKDp6SWg0e4m4FwG83?=
 =?iso-8859-1?Q?rP7qtnaxc5Bw9seJxdHB2xIDnsIddL1lvNWBwGM+Lur3W0vnp5XxPuraYk?=
 =?iso-8859-1?Q?adguEQ1CXhUV7sOfr+7G84Ks9Ckbyv7IDaFnlsBpaIrCnDstE5+0G5Xk6i?=
 =?iso-8859-1?Q?2HrQfqViqserq4MzaYQ2q8HbuWdPGELTfV2QmzxerCz1lDZqr1aLIalw4m?=
 =?iso-8859-1?Q?G87rn6Cj4MbCfrZm/v4d/kBEr8rvljeLYKofD2/kl4f568QmvqZOde8Jll?=
 =?iso-8859-1?Q?gKJYlVZJG2sQS+ramT9CcjW1KC8psvL6GG/D+fUnUqagALqo0iuw7XjRMF?=
 =?iso-8859-1?Q?3nKmjlght06zix45MdEjuQYi2T/citPx6557NH1KHD0l1WFNZamecjdFck?=
 =?iso-8859-1?Q?tnkjbHe0+BVD78P8wrhyyTc/WuJ0rMkta2Ts2T9BHm/XTPXtkywUr0HBdQ?=
 =?iso-8859-1?Q?nmaRoAeds/1LFXBvzg08B+HpaNzj+zXWt9RwHeLEbjrM8hks3XKlZy+JAa?=
 =?iso-8859-1?Q?rQwFOLwepyuPnvXAbGsguFGWmtmGDpWlWN26Tps6?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f9b1fd1b-a638-4b0e-c510-08ddc46d2814
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 13:32:06.0611 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pBLMU+w4L7o5UZ5FdaGxMKgbP10kgusnbfQ3xzDX7MpuZuVdLaHqNZoK3WZnNZQLKpwADcxGlsRvcq9WB4ROjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7300
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

On Thu, Jul 10, 2025 at 11:17:13PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> For some reason we are switching over to the idle pattern before
> disabling the DP port on pre-hsw. AFAICS this has never been part
> of the documented sequence (and on hsw+ the spec explicitly says
> not to do this). Get rid of it.
> 
> The code goes all the way back to commit 5eb08b69f510 ("drm/i915: enable
> DisplayPort support on IGDNG"), and it was accompanied by a 17ms delay
> which got changed to vbl wait in commit ab527efc2fea ("drm/i915: use
> wait_for_vblank instead of msleep(17)"), and was later completely removed
> in  commit 93c9c19b3d25 ("drm/i915: remove unexplained vblank wait in
> the DP off code").
> 
> Smoke tested on g4x/snb/chv.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Matches the spec on SNB/IVB at least, I can't see a requirement to set
idle patterns before the 'Disable port' step there, based on that:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c | 11 -----------
>  1 file changed, 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 87f6b9602b16..b54edf0d1c23 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -424,17 +424,6 @@ intel_dp_link_down(struct intel_encoder *encoder,
>  
>  	drm_dbg_kms(display->drm, "\n");
>  
> -	if ((display->platform.ivybridge && port == PORT_A) ||
> -	    (HAS_PCH_CPT(display) && port != PORT_A)) {
> -		intel_dp->DP &= ~DP_LINK_TRAIN_MASK_CPT;
> -		intel_dp->DP |= DP_LINK_TRAIN_PAT_IDLE_CPT;
> -	} else {
> -		intel_dp->DP &= ~DP_LINK_TRAIN_MASK;
> -		intel_dp->DP |= DP_LINK_TRAIN_PAT_IDLE;
> -	}
> -	intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
> -	intel_de_posting_read(display, intel_dp->output_reg);
> -
>  	intel_dp->DP &= ~DP_PORT_EN;
>  	intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
>  	intel_de_posting_read(display, intel_dp->output_reg);
> -- 
> 2.49.0
> 
