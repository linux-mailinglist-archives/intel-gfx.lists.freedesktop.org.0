Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B318A8035EA
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 15:04:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAF3610E1DC;
	Mon,  4 Dec 2023 14:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D11FC10E256
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 14:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701698681; x=1733234681;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=sl0nW2zriHut7i1AXa03wVpgtecBub2gG7FLSV4nZrg=;
 b=MaxUeCBPX1U6IeuIJbC3VkIzbLaAOC+avkc5BTqstN6aWhAjp+eW5TlJ
 isvXWgY/mTo6vmq+7ZRwucf2RQ23DS0XqdmUR4d591Tyzid+7VW0FA3hE
 /r8YZlnxXedfJLWfDKizb24Pu7baRxWV/lfFwAGOHaoe7ZgYWgB3uPHmD
 iSvKe7v0FIDgK/RupbpWE8eZL1ic1Humd/oGNDcGaTQmJfo00GBiXBYiP
 pxQ324YdhPQx6SYrAWJDtTHfw3ca2r6dSQ58xFlJyhbzN736YSdOpg3+y
 gq4C5Hbt6BO00C/GgQIsFLFfHWjBV6MrWEdiGPve9axJvwmHMSdGfVdCH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="373168201"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="373168201"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 06:04:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="11979919"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 06:04:34 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 06:04:33 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 4 Dec 2023 06:04:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 4 Dec 2023 06:04:31 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 06:04:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CSnHrJF6uCJTMi4D8p3Dwca0pcGYU4v+2ddgfFvF5M+jcC3D9v8WDPjAqruQILb+evWPfJMXDIthic7FeN8gZg+ptjv2W2CAmXQxgY+64GkIslsOhfecOcTmWluz4BaHaLN87cRFyV93P0jT2Xaebm0wtdT4nuMJzgVqVZ1erQkFdHBssZUGAUNBWV1dbdiIOZrt7f9FJvBg4xCXb6i5Bh86tcBF5nEuQc16ikHYSs8kW/T0RJGhVsDrxSxX7WZ4yNIg67ZkD5VsnSNoOOaUDb/wr0lDkGehLMC6XTpK+uW/8lA7bZlLpdX7vREnacDIDbza7p7hgS0cjhP50iIfOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cw+qSssAgws1Y+kO0iDCZcegSuNIEydDT9t3Ca4OokE=;
 b=VWBeHPT6QgWm27Og+gR21Q+VRllfBBOWmyVslfz4Wx6jU6bJ5z7SJv2j7QFxhQj9NqeErdUVjEmO7JTXqchgnB6pX6Eham+rMa4cfkTsAE7M91VsrIIcavI5fnayDWnrUbwFddbNJFpyeVP9vLNbcW3TvNEF80OCKrn8IRisjdfhWbREl/GnklngFSSQtmP/2jsOkqwMqy6ljjp/U8lmURovbxlGqL97s5E/YzGDTm+XYdyOoYRkYImVTeXhPloRr9JtCNQjZKboZTWR1BXcMedkRxJ5ceE2LtvoNyyhRTMtsSRt06uCrxnvbYtvVLmsmXl67kzjTgZ7oXJcKDUXAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MW4PR11MB6934.namprd11.prod.outlook.com (2603:10b6:303:229::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 14:04:26 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 14:04:26 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231201230748.GU5757@mdroper-desk1.amr.corp.intel.com>
References: <20231124205522.57696-2-gustavo.sousa@intel.com>
 <20231127162146.GG5757@mdroper-desk1.amr.corp.intel.com>
 <ZWWoOL3WS5wTGiM2@intel.com> <ZWW4L7POCQLJi6aJ@intel.com>
 <20231201230748.GU5757@mdroper-desk1.amr.corp.intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, Ville =?utf-8?b?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Date: Mon, 4 Dec 2023 11:04:20 -0300
Message-ID: <170169866064.4486.2471074166550309330@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY3PR05CA0044.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::19) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MW4PR11MB6934:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d3d4547-c947-4d12-0bde-08dbf4d1ecb6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eEw2pB3yXTGJfCkJhcAGkf/8/N0EMKp1qKh+GuS/zAXVcxqs5JyyKg3rxWx/J/VM/WfecvjNo9rpPTKoK41voCK/rD8S8WSOpYdfTZy6I649gyj+qh+CIfr4j9IZx0lWUNVRitZRJpfxz2lgHCVNQOIIKtbfpWo/G6fGhw2ciSxM0wYiyhRO91Gumb5GLOdcmjXHStS1E0NUFtCFSKWqMHJAjcA5qbfnAfI+/JW3b1eksfOYLlkeAQnL4L4xtWLMJhmuV4bFR0GFxpQDE76L9BoZg6r38Lg4cGmGkinDxXQUClKQMejCgl0eIyjwCxQlDEHuF0Ln1QGAxviLBKHd17RDcxXO8a5trhWh+Z4Vo19ZSxa4SZxYcRRCUuAdkQkXCNoaZsQ/ijnUjntiQmougeCSiXXke43f2PGZpJ+r3bJULVSRwT+pojjOW9iPCE3OvB69UNUTS73out2ONIjD11irfBEDkpPxW69ucjDBAgSo29Buu1MdA6bVgPGpP7/QtGkkHLi0w6LaZZDpUjmmd+baDVPNgn1Df+OtkuZVacAcHWsoKdeuKtvI7H7cvHKe
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(366004)(376002)(136003)(39860400002)(396003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(66574015)(38100700002)(26005)(110136005)(66946007)(82960400001)(66556008)(66476007)(316002)(6506007)(6512007)(9686003)(83380400001)(41300700001)(2906002)(33716001)(478600001)(6486002)(6666004)(30864003)(4326008)(8936002)(8676002)(5660300002)(86362001)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OThMOGorWHk4S1oySWpjK09BSnl6ZktFK3E0RmFvRkVwYWg0anNmc2crZnVO?=
 =?utf-8?B?eFpXZmFkTlhSTTRpVnFHaVh3YzIxNW9VSzh3SUtJdUpxRWdMOVBxR0FPWXNq?=
 =?utf-8?B?SzgzdElWaHR3SktDRXh6NHVuUXZzSE1IaGRKeit6WnJCS2NXV3NtOWw0WXpq?=
 =?utf-8?B?RzBXN2FsUXpaNGQzWnlnZVFJZHkrZUNjdklwVG1nM01BS1VBUWo0TElmbUZw?=
 =?utf-8?B?bWl1c2ZXZGp1ZjV4VWc2V2g2dWZvZDhGd21XVEkwdldpK0MzaWhkVThkOHE2?=
 =?utf-8?B?NFIwUi9CMEhjYyt3cXRwbDFUTW5tWUdBSnBmaTJEZEF0Zy85VHJ2UitQdUkx?=
 =?utf-8?B?eldwVWNjbyt5SGJvMW1KQW5VVGxDMVh1c1BuQXdiZnJRRjNaWTBtYWpkTEh3?=
 =?utf-8?B?SXFrMENZWk5QYkdxM1pIYTVWaHg1QVEwMDdIbEgzaHBJYUFTZVIxbmFJZjh2?=
 =?utf-8?B?VldoUGM4ZGFHWVhDN0tGbUF3UXdzdkVZT1BCaDNtbyszenNlbkJub2p2UjVQ?=
 =?utf-8?B?M1Z0aURLZk1ZU091L2xFSUROS2FKL0Y2UEJvbmg4Um10R1NGR09aYktyUlFO?=
 =?utf-8?B?aDQ1OCtOYjFGK1RXWEtrMnY0NjFwUzNNdFNJL1ZGc2lMbEtYUVlaN3J3dHFl?=
 =?utf-8?B?VWt1VWJ0citIQ1F2amJIUVpiREMrZWZOc2QyVktkbTh5V1dnY3RjeldnbHVZ?=
 =?utf-8?B?b0g2MEh4N2hmQnFTdWFGQ1U5SzVBcGJjU2MyMzlua3BXZU52ODRkT2N1a2p3?=
 =?utf-8?B?Q0k4Y0FMdG9reEV6d2RudTJJSEovMVFaeEdHbmtpSWFnR05ScmY0MmlUNTJG?=
 =?utf-8?B?SWh4UjhBZUpzNi92cVV1RnpJVm16U2VuaG5ZSFVqd1pYdFRNaWNPNDhiR1R2?=
 =?utf-8?B?L2V4bnJXZ1I0M2hmZW5DWlJETWc1NCs4OEVrTGNDdHZxZURxZWk5Q1lYOHlU?=
 =?utf-8?B?SGxGTm51NXZCL1JaSXkzbktBQ2VnUUhxbjdSTU9zQ2xCdTdtU2FFNmJlcFZs?=
 =?utf-8?B?L3hmMWNnZDhVOTdLUklpSDRHUGpGZDhWZkVMa0VhbnRWVXJXTnpvWjBKZ2ov?=
 =?utf-8?B?OHJxRDdpczVCWTYvKzNWc1lEK3hLaHQrVHZkNHN3UlF1OWl3M1ZmOHEwMXVG?=
 =?utf-8?B?aHN6UWdrUzRSa1BoRjVPYlJpNzZkdkpkWWZMR1pXRTJ2bkkxTXVOSnZnWktZ?=
 =?utf-8?B?Q2FIbXdXTTRNQVIrQUtJVWJjK215Q1lZNFVwNUFzYW5DSFl1UWtHRHBLdnZo?=
 =?utf-8?B?OHZRRGN0M0pnbHp3aG1VVHV6ZVhqWE9MdjBnd0Q0aGFyNm43Q0RxR1Q1SXJ1?=
 =?utf-8?B?SlF5ZndpKzNQcDJCaExmT01wUFlkRHdoYnlPZWoxcUZlUDhnYzVvME9MNUN2?=
 =?utf-8?B?NUZocVcwMVprN2pqNm1uVk9ZZTIxdHU5bmNOVjRkMG9DSWlZOGM3SFpOVGE5?=
 =?utf-8?B?NFY5QWFib28rb0tsWWpoT0xNSXlVYkFUR3kvNStPODlXWml1WXdnRVVhQlhR?=
 =?utf-8?B?aVcwSjJvV1JYckFNYTZreHAwekJ6UVdhaTUzWGUvT3FLMDJ5aWx6V1kybGVy?=
 =?utf-8?B?SStyOGd0UFE1bi8rUUsxcDJTeXV5WnBCNW5PcmlOU3E5Nm96dzN4ZjhTNHlG?=
 =?utf-8?B?azNYTUFKSldTYk16cktIL0VXZFloY3VaUE52dnVEeklnRC81eFN4RDhTZzMv?=
 =?utf-8?B?dXVEdU9BTXg5Y0VZV0JicXRPU0J0RHpLdEFkNXQwRG1qT2VRSk5QVHFVUmg2?=
 =?utf-8?B?dkRtQklTd05GaGVIWEpYWFFSN2FwbFpYamg3ZGJ5SFhJSWJFbENndi9OMi82?=
 =?utf-8?B?WnRUTFpGWWpWeWFJcHdlWFlCOVZreEdOTTViZFVUUUZDQTVzOERXR2hZK3NW?=
 =?utf-8?B?NDlqMUs1UXJseitWM1gzaTlmYk5oaU9rUC8vclBPNmtNcEJZQWh5NmRLZnpR?=
 =?utf-8?B?aElUK3Z2cTBycENyNHJjM0ZMVE1EQ3ZlWVJYVHhESGxQZXhBUjZQQlFBeFB5?=
 =?utf-8?B?NWlTYVlWVExzOW9XeXhpR2NCa3hFTmthOU10cE80M2N4ZlEwaW13dTNvRUls?=
 =?utf-8?B?dVMvd3JSTFdVREpBaTFJL1hXSkQ5M21jWERjUHZzSnB0WmNHQ05IRHZYc3Vv?=
 =?utf-8?B?a3NoelFQUzB3QUF4dUYrYlIvOENxNXJ3dTc3MnNLVGY5WXhNOHhFMml4R1Jr?=
 =?utf-8?B?TXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d3d4547-c947-4d12-0bde-08dbf4d1ecb6
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2023 14:04:26.3221 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7ufR7Q/HovPasCBpDZsW7iKSsBmKy3Bmk0BsNrtCCOIcvbfSrY1seo7hnTe+zeTY4Geh+TADW4iea5SiwD6IlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6934
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cdclk: Remove divider field from
 tables
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2023-12-01 20:07:48-03:00)
>On Tue, Nov 28, 2023 at 11:51:43AM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Tue, Nov 28, 2023 at 10:43:36AM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> > On Mon, Nov 27, 2023 at 08:21:46AM -0800, Matt Roper wrote:
>> > > On Fri, Nov 24, 2023 at 05:55:23PM -0300, Gustavo Sousa wrote:
>> > > > The cdclk tables were introduced with commit 736da8112fee ("drm/i9=
15:
>> > > > Use literal representation of cdclk tables"). It has been almost 4=
 years
>> > > > and the divider field was not really used yet. Let's remove it.
>> > >=20
>> > > I think we need to go the other way and actually start using it inst=
ead
>> > > of (incorrectly) trying to re-derive it from cdclk->vco.  The logic =
the
>> > > driver is using today doesn't account for the potential use of
>> > > squashing, which means we program the wrong divider value into CDCLK=
_CTL
>> > > in some cases.  I pointed that out during the LNL code reviews a cou=
ple
>> > > months ago, and I believe Stan is working on fixing that.
>> >=20
>> > The code should be correct as is, but it does assume that the cd2x
>> > divider is 2 when squashing is used. If that no longer holds then we
>> > have to change something.
>>=20
>> Something like this should be sufficient to eliminate that
>> assumption.
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index 8bb6bab7c8cd..58567d42e725 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -1897,10 +1897,7 @@ static void _bxt_set_cdclk(struct drm_i915_privat=
e *dev_priv,
>> =20
>>          waveform =3D cdclk_squash_waveform(dev_priv, cdclk);
>> =20
>> -        if (waveform)
>> -                clock =3D vco / 2;
>> -        else
>> -                clock =3D cdclk;
>> +        clock =3D DIV_ROUND_CLOSEST(cdclk * 16, cdclk_squash_divider(wa=
veform));
>> =20
>
>I haven't had time to come back and revisit this (or check your new
>series yet), but when I was reviewing the cdclk stuff a couple months
>ago, my concern was around bxt_cdclk_cd2x_div_sel() which is deriving
>the CD2X divider from the vco and cdclk value.  On a platform like DG2,
>we use squashing instead of changes to PLL ratio to hit different cdclk
>values, so the calculation there doesn't seem valid anymore.  Am I
>overlooking something?

I looked at Ville's patches and they seem correct to me - althought I'm
not that experienced and might be missing something as well... Here goes
my rationale:

Looking at how cdclk works with our hardware, I would say that the
cdclock is defined by:

    cdclk =3D vco / div / sq_div / 2

, with: vco being the output of the CD2X PLL; "div", the CD2X divider;
"sq_div", the divider that is derived from the squash wave (16 / "sqash
wave 1's count"); and 2, the final division that is done at the end.

The DIV_ROUND_CLOSEST() operation suggested above is equivalent to
doing:

    x =3D cdclk * sq_div =3D vco / div / 2

Meaning that x is the "unsquashed cdclk". From this point, what
bxt_cdclk_cd2x_div_sel() is doing is:

    y =3D vco / x / 2

(the last "2" divisor comes from the switch-case statement).

That resolves to:

    y =3D vco / (vco / div / 2) / 2 =3D div

--
Gustavo Sousa

>
>
>Matt
>
>>          if (HAS_CDCLK_SQUASH(dev_priv))
>>                  dg2_cdclk_squash_program(dev_priv, waveform);
>> =20
>> >=20
>> > >=20
>> > > I wonder if the misprogramming we're doing today is what requires th=
e
>> > > "HACK" at the bottom of intel_crtc_compute_min_cdclk for DG2?
>> > >=20
>> > >=20
>> > > Matt
>> > >=20
>> > > >=20
>> > > > Cc: Matt Roper <matthew.d.roper@intel.com>
>> > > > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > > > ---
>> > > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 269 ++++++++++------=
-----
>> > > >  1 file changed, 134 insertions(+), 135 deletions(-)
>> > > >=20
>> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/=
gpu/drm/i915/display/intel_cdclk.c
>> > > > index b93d1ad7936d..7f85a216ff5c 100644
>> > > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > > > @@ -1227,183 +1227,182 @@ struct intel_cdclk_vals {
>> > > >          u32 cdclk;
>> > > >          u16 refclk;
>> > > >          u16 waveform;
>> > > > -        u8 divider;        /* CD2X divider * 2 */
>> > > >          u8 ratio;
>> > > >  };
>> > > > =20
>> > > >  static const struct intel_cdclk_vals bxt_cdclk_table[] =3D {
>> > > > -        { .refclk =3D 19200, .cdclk =3D 144000, .divider =3D 8, .=
ratio =3D 60 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 288000, .divider =3D 4, .=
ratio =3D 60 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 384000, .divider =3D 3, .=
ratio =3D 60 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 576000, .divider =3D 2, .=
ratio =3D 60 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 624000, .divider =3D 2, .=
ratio =3D 65 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 144000, .ratio =3D 60 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 288000, .ratio =3D 60 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 384000, .ratio =3D 60 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 576000, .ratio =3D 60 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 624000, .ratio =3D 65 },
>> > > >          {}
>> > > >  };
>> > > > =20
>> > > >  static const struct intel_cdclk_vals glk_cdclk_table[] =3D {
>> > > > -        { .refclk =3D 19200, .cdclk =3D  79200, .divider =3D 8, .=
ratio =3D 33 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 158400, .divider =3D 4, .=
ratio =3D 33 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 316800, .divider =3D 2, .=
ratio =3D 33 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D  79200, .ratio =3D 33 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 158400, .ratio =3D 33 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 316800, .ratio =3D 33 },
>> > > >          {}
>> > > >  };
>> > > > =20
>> > > >  static const struct intel_cdclk_vals icl_cdclk_table[] =3D {
>> > > > -        { .refclk =3D 19200, .cdclk =3D 172800, .divider =3D 2, .=
ratio =3D 18 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 192000, .divider =3D 2, .=
ratio =3D 20 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 307200, .divider =3D 2, .=
ratio =3D 32 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 326400, .divider =3D 4, .=
ratio =3D 68 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 556800, .divider =3D 2, .=
ratio =3D 58 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 652800, .divider =3D 2, .=
ratio =3D 68 },
>> > > > -
>> > > > -        { .refclk =3D 24000, .cdclk =3D 180000, .divider =3D 2, .=
ratio =3D 15 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 192000, .divider =3D 2, .=
ratio =3D 16 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 312000, .divider =3D 2, .=
ratio =3D 26 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 324000, .divider =3D 4, .=
ratio =3D 54 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 2, .=
ratio =3D 46 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 648000, .divider =3D 2, .=
ratio =3D 54 },
>> > > > -
>> > > > -        { .refclk =3D 38400, .cdclk =3D 172800, .divider =3D 2, .=
ratio =3D  9 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, .=
ratio =3D 10 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 2, .=
ratio =3D 16 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 326400, .divider =3D 4, .=
ratio =3D 34 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, .=
ratio =3D 29 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, .=
ratio =3D 34 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 172800, .ratio =3D 18 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 192000, .ratio =3D 20 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 307200, .ratio =3D 32 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 326400, .ratio =3D 68 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 556800, .ratio =3D 58 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 652800, .ratio =3D 68 },
>> > > > +
>> > > > +        { .refclk =3D 24000, .cdclk =3D 180000, .ratio =3D 15 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 192000, .ratio =3D 16 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 312000, .ratio =3D 26 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 324000, .ratio =3D 54 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 552000, .ratio =3D 46 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 648000, .ratio =3D 54 },
>> > > > +
>> > > > +        { .refclk =3D 38400, .cdclk =3D 172800, .ratio =3D  9 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 192000, .ratio =3D 10 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 307200, .ratio =3D 16 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 326400, .ratio =3D 34 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 556800, .ratio =3D 29 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 34 },
>> > > >          {}
>> > > >  };
>> > > > =20
>> > > >  static const struct intel_cdclk_vals rkl_cdclk_table[] =3D {
>> > > > -        { .refclk =3D 19200, .cdclk =3D 172800, .divider =3D 4, .=
ratio =3D  36 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 192000, .divider =3D 4, .=
ratio =3D  40 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 307200, .divider =3D 4, .=
ratio =3D  64 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 326400, .divider =3D 8, .=
ratio =3D 136 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 556800, .divider =3D 4, .=
ratio =3D 116 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 652800, .divider =3D 4, .=
ratio =3D 136 },
>> > > > -
>> > > > -        { .refclk =3D 24000, .cdclk =3D 180000, .divider =3D 4, .=
ratio =3D  30 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 192000, .divider =3D 4, .=
ratio =3D  32 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 312000, .divider =3D 4, .=
ratio =3D  52 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 324000, .divider =3D 8, .=
ratio =3D 108 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 4, .=
ratio =3D  92 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 648000, .divider =3D 4, .=
ratio =3D 108 },
>> > > > -
>> > > > -        { .refclk =3D 38400, .cdclk =3D 172800, .divider =3D 4, .=
ratio =3D 18 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 4, .=
ratio =3D 20 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 4, .=
ratio =3D 32 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 326400, .divider =3D 8, .=
ratio =3D 68 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 4, .=
ratio =3D 58 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 4, .=
ratio =3D 68 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 172800, .ratio =3D  36 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 192000, .ratio =3D  40 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 307200, .ratio =3D  64 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 326400, .ratio =3D 136 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 556800, .ratio =3D 116 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 652800, .ratio =3D 136 },
>> > > > +
>> > > > +        { .refclk =3D 24000, .cdclk =3D 180000, .ratio =3D  30 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 192000, .ratio =3D  32 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 312000, .ratio =3D  52 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 324000, .ratio =3D 108 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 552000, .ratio =3D  92 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 648000, .ratio =3D 108 },
>> > > > +
>> > > > +        { .refclk =3D 38400, .cdclk =3D 172800, .ratio =3D 18 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 192000, .ratio =3D 20 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 307200, .ratio =3D 32 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 326400, .ratio =3D 68 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 556800, .ratio =3D 58 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 68 },
>> > > >          {}
>> > > >  };
>> > > > =20
>> > > >  static const struct intel_cdclk_vals adlp_a_step_cdclk_table[] =
=3D {
>> > > > -        { .refclk =3D 19200, .cdclk =3D 307200, .divider =3D 2, .=
ratio =3D 32 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 556800, .divider =3D 2, .=
ratio =3D 58 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 652800, .divider =3D 2, .=
ratio =3D 68 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 307200, .ratio =3D 32 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 556800, .ratio =3D 58 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 652800, .ratio =3D 68 },
>> > > > =20
>> > > > -        { .refclk =3D 24000, .cdclk =3D 312000, .divider =3D 2, .=
ratio =3D 26 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 2, .=
ratio =3D 46 },
>> > > > -        { .refclk =3D 24400, .cdclk =3D 648000, .divider =3D 2, .=
ratio =3D 54 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 312000, .ratio =3D 26 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 552000, .ratio =3D 46 },
>> > > > +        { .refclk =3D 24400, .cdclk =3D 648000, .ratio =3D 54 },
>> > > > =20
>> > > > -        { .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 2, .=
ratio =3D 16 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, .=
ratio =3D 29 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, .=
ratio =3D 34 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 307200, .ratio =3D 16 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 556800, .ratio =3D 29 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 34 },
>> > > >          {}
>> > > >  };
>> > > > =20
>> > > >  static const struct intel_cdclk_vals adlp_cdclk_table[] =3D {
>> > > > -        { .refclk =3D 19200, .cdclk =3D 172800, .divider =3D 3, .=
ratio =3D 27 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 192000, .divider =3D 2, .=
ratio =3D 20 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 307200, .divider =3D 2, .=
ratio =3D 32 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 556800, .divider =3D 2, .=
ratio =3D 58 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 652800, .divider =3D 2, .=
ratio =3D 68 },
>> > > > -
>> > > > -        { .refclk =3D 24000, .cdclk =3D 176000, .divider =3D 3, .=
ratio =3D 22 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 192000, .divider =3D 2, .=
ratio =3D 16 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 312000, .divider =3D 2, .=
ratio =3D 26 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 2, .=
ratio =3D 46 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 648000, .divider =3D 2, .=
ratio =3D 54 },
>> > > > -
>> > > > -        { .refclk =3D 38400, .cdclk =3D 179200, .divider =3D 3, .=
ratio =3D 14 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, .=
ratio =3D 10 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 2, .=
ratio =3D 16 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, .=
ratio =3D 29 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, .=
ratio =3D 34 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 172800, .ratio =3D 27 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 192000, .ratio =3D 20 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 307200, .ratio =3D 32 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 556800, .ratio =3D 58 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 652800, .ratio =3D 68 },
>> > > > +
>> > > > +        { .refclk =3D 24000, .cdclk =3D 176000, .ratio =3D 22 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 192000, .ratio =3D 16 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 312000, .ratio =3D 26 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 552000, .ratio =3D 46 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 648000, .ratio =3D 54 },
>> > > > +
>> > > > +        { .refclk =3D 38400, .cdclk =3D 179200, .ratio =3D 14 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 192000, .ratio =3D 10 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 307200, .ratio =3D 16 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 556800, .ratio =3D 29 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 34 },
>> > > >          {}
>> > > >  };
>> > > > =20
>> > > >  static const struct intel_cdclk_vals rplu_cdclk_table[] =3D {
>> > > > -        { .refclk =3D 19200, .cdclk =3D 172800, .divider =3D 3, .=
ratio =3D 27 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 192000, .divider =3D 2, .=
ratio =3D 20 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 307200, .divider =3D 2, .=
ratio =3D 32 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 480000, .divider =3D 2, .=
ratio =3D 50 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 556800, .divider =3D 2, .=
ratio =3D 58 },
>> > > > -        { .refclk =3D 19200, .cdclk =3D 652800, .divider =3D 2, .=
ratio =3D 68 },
>> > > > -
>> > > > -        { .refclk =3D 24000, .cdclk =3D 176000, .divider =3D 3, .=
ratio =3D 22 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 192000, .divider =3D 2, .=
ratio =3D 16 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 312000, .divider =3D 2, .=
ratio =3D 26 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 480000, .divider =3D 2, .=
ratio =3D 40 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 2, .=
ratio =3D 46 },
>> > > > -        { .refclk =3D 24000, .cdclk =3D 648000, .divider =3D 2, .=
ratio =3D 54 },
>> > > > -
>> > > > -        { .refclk =3D 38400, .cdclk =3D 179200, .divider =3D 3, .=
ratio =3D 14 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, .=
ratio =3D 10 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 2, .=
ratio =3D 16 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 480000, .divider =3D 2, .=
ratio =3D 25 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, .=
ratio =3D 29 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, .=
ratio =3D 34 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 172800, .ratio =3D 27 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 192000, .ratio =3D 20 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 307200, .ratio =3D 32 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 480000, .ratio =3D 50 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 556800, .ratio =3D 58 },
>> > > > +        { .refclk =3D 19200, .cdclk =3D 652800, .ratio =3D 68 },
>> > > > +
>> > > > +        { .refclk =3D 24000, .cdclk =3D 176000, .ratio =3D 22 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 192000, .ratio =3D 16 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 312000, .ratio =3D 26 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 480000, .ratio =3D 40 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 552000, .ratio =3D 46 },
>> > > > +        { .refclk =3D 24000, .cdclk =3D 648000, .ratio =3D 54 },
>> > > > +
>> > > > +        { .refclk =3D 38400, .cdclk =3D 179200, .ratio =3D 14 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 192000, .ratio =3D 10 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 307200, .ratio =3D 16 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 480000, .ratio =3D 25 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 556800, .ratio =3D 29 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 34 },
>> > > >          {}
>> > > >  };
>> > > > =20
>> > > >  static const struct intel_cdclk_vals dg2_cdclk_table[] =3D {
>> > > > -        { .refclk =3D 38400, .cdclk =3D 163200, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0x8888 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 204000, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0x9248 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 244800, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0xa4a4 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 285600, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0xa54a },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 326400, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0xaaaa },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 367200, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0xad5a },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 408000, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0xb6b6 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 448800, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0xdbb6 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 489600, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0xeeee },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 530400, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0xf7de },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 571200, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0xfefe },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 612000, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0xfffe },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0xffff },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 163200, .ratio =3D 34, .w=
aveform =3D 0x8888 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 204000, .ratio =3D 34, .w=
aveform =3D 0x9248 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 244800, .ratio =3D 34, .w=
aveform =3D 0xa4a4 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 285600, .ratio =3D 34, .w=
aveform =3D 0xa54a },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 326400, .ratio =3D 34, .w=
aveform =3D 0xaaaa },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 367200, .ratio =3D 34, .w=
aveform =3D 0xad5a },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 408000, .ratio =3D 34, .w=
aveform =3D 0xb6b6 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 448800, .ratio =3D 34, .w=
aveform =3D 0xdbb6 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 489600, .ratio =3D 34, .w=
aveform =3D 0xeeee },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 530400, .ratio =3D 34, .w=
aveform =3D 0xf7de },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 571200, .ratio =3D 34, .w=
aveform =3D 0xfefe },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 612000, .ratio =3D 34, .w=
aveform =3D 0xfffe },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 34, .w=
aveform =3D 0xffff },
>> > > >          {}
>> > > >  };
>> > > > =20
>> > > >  static const struct intel_cdclk_vals mtl_cdclk_table[] =3D {
>> > > > -        { .refclk =3D 38400, .cdclk =3D 172800, .divider =3D 2, .=
ratio =3D 16, .waveform =3D 0xad5a },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, .=
ratio =3D 16, .waveform =3D 0xb6b6 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 2, .=
ratio =3D 16, .waveform =3D 0x0000 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 480000, .divider =3D 2, .=
ratio =3D 25, .waveform =3D 0x0000 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, .=
ratio =3D 29, .waveform =3D 0x0000 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0x0000 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 172800, .ratio =3D 16, .w=
aveform =3D 0xad5a },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 192000, .ratio =3D 16, .w=
aveform =3D 0xb6b6 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 307200, .ratio =3D 16, .w=
aveform =3D 0x0000 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 480000, .ratio =3D 25, .w=
aveform =3D 0x0000 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 556800, .ratio =3D 29, .w=
aveform =3D 0x0000 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 34, .w=
aveform =3D 0x0000 },
>> > > >          {}
>> > > >  };
>> > > > =20
>> > > >  static const struct intel_cdclk_vals lnl_cdclk_table[] =3D {
>> > > > -        { .refclk =3D 38400, .cdclk =3D 153600, .divider =3D 2, .=
ratio =3D 16, .waveform =3D 0xaaaa },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 172800, .divider =3D 2, .=
ratio =3D 16, .waveform =3D 0xad5a },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, .=
ratio =3D 16, .waveform =3D 0xb6b6 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 211200, .divider =3D 2, .=
ratio =3D 16, .waveform =3D 0xdbb6 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 230400, .divider =3D 2, .=
ratio =3D 16, .waveform =3D 0xeeee },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 249600, .divider =3D 2, .=
ratio =3D 16, .waveform =3D 0xf7de },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 268800, .divider =3D 2, .=
ratio =3D 16, .waveform =3D 0xfefe },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 288000, .divider =3D 2, .=
ratio =3D 16, .waveform =3D 0xfffe },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 2, .=
ratio =3D 16, .waveform =3D 0xffff },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 330000, .divider =3D 2, .=
ratio =3D 25, .waveform =3D 0xdbb6 },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 360000, .divider =3D 2, .=
ratio =3D 25, .waveform =3D 0xeeee },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 390000, .divider =3D 2, .=
ratio =3D 25, .waveform =3D 0xf7de },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 420000, .divider =3D 2, .=
ratio =3D 25, .waveform =3D 0xfefe },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 450000, .divider =3D 2, .=
ratio =3D 25, .waveform =3D 0xfffe },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 480000, .divider =3D 2, .=
ratio =3D 25, .waveform =3D 0xffff },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 487200, .divider =3D 2, .=
ratio =3D 29, .waveform =3D 0xfefe },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 522000, .divider =3D 2, .=
ratio =3D 29, .waveform =3D 0xfffe },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, .=
ratio =3D 29, .waveform =3D 0xffff },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 571200, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0xfefe },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 612000, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0xfffe },
>> > > > -        { .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, .=
ratio =3D 34, .waveform =3D 0xffff },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 153600, .ratio =3D 16, .w=
aveform =3D 0xaaaa },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 172800, .ratio =3D 16, .w=
aveform =3D 0xad5a },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 192000, .ratio =3D 16, .w=
aveform =3D 0xb6b6 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 211200, .ratio =3D 16, .w=
aveform =3D 0xdbb6 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 230400, .ratio =3D 16, .w=
aveform =3D 0xeeee },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 249600, .ratio =3D 16, .w=
aveform =3D 0xf7de },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 268800, .ratio =3D 16, .w=
aveform =3D 0xfefe },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 288000, .ratio =3D 16, .w=
aveform =3D 0xfffe },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 307200, .ratio =3D 16, .w=
aveform =3D 0xffff },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 330000, .ratio =3D 25, .w=
aveform =3D 0xdbb6 },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 360000, .ratio =3D 25, .w=
aveform =3D 0xeeee },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 390000, .ratio =3D 25, .w=
aveform =3D 0xf7de },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 420000, .ratio =3D 25, .w=
aveform =3D 0xfefe },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 450000, .ratio =3D 25, .w=
aveform =3D 0xfffe },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 480000, .ratio =3D 25, .w=
aveform =3D 0xffff },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 487200, .ratio =3D 29, .w=
aveform =3D 0xfefe },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 522000, .ratio =3D 29, .w=
aveform =3D 0xfffe },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 556800, .ratio =3D 29, .w=
aveform =3D 0xffff },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 571200, .ratio =3D 34, .w=
aveform =3D 0xfefe },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 612000, .ratio =3D 34, .w=
aveform =3D 0xfffe },
>> > > > +        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 34, .w=
aveform =3D 0xffff },
>> > > >          {}
>> > > >  };
>> > > > =20
>> > > > --=20
>> > > > 2.42.1
>> > > >=20
>> > >=20
>> > > --=20
>> > > Matt Roper
>> > > Graphics Software Engineer
>> > > Linux GPU Platform Enablement
>> > > Intel Corporation
>> >=20
>> > --=20
>> > Ville Syrj=C3=A4l=C3=A4
>> > Intel
>>=20
>> --=20
>> Ville Syrj=C3=A4l=C3=A4
>> Intel
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
