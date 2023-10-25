Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 475977D711D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 17:44:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B88BC10E5CB;
	Wed, 25 Oct 2023 15:44:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7FD410E0F6
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 15:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698248661; x=1729784661;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UMgY1tNOQJgY99lWgKf0nnUQM7OeNX5p2JFqRc9DtUM=;
 b=UhKFOG46iCfvQr44GpDqpA16EnoLIjRVr2SM7Ns4Hh7Eu4kzzmvyOns3
 joBkRg37bfqydQ1hZ14VsOB1AhBserrTWuxkThx8xPrC5MxJKlbNR5xMa
 4Wjal7jUaVz92EzTpak/uxvryfo+ieNbXHYawu9SnZvYN8bUQZMx1T1oQ
 UCsboHvtKzj134g6fsMw7ZZr71i0BACgkPzAee87qfAqd6gLdp48yYfwg
 X62r/eqf1T3l32EWSzp3pbcGcpvIUT+N2mWHcoBRC4lMB2Q2bslelkS76
 T/Qmd6rBeA5U4KKrPPYiw5MNd+Jd9oAWKZQEzu+Urw588x8bs3WW6HxoK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="391204595"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="391204595"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 08:44:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="882478196"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="882478196"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2023 08:44:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 25 Oct 2023 08:44:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 25 Oct 2023 08:44:20 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 25 Oct 2023 08:44:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fiN9ZLZwOF7Une4rIpX6Elx0az98VAIa5kato7o8LgBJ5sNim8BT4viD28XGI5MZv/AB0vQyjABsEwz5jSIeYOheMSnsfSakdq1+svqVUGed3oyRtpi5cwsMWYkXmpvHDSKEOLGI/QI3ZdhOphwgvdAr6lmDEh9NJd4FxzRi0ghozEFl9YYk1rbGJ1vS26v7fj4phtNRsIbWJZBKr/jDzxy0XSE2JGFLmi0vu/XWlgN/mo0D280H2zlctge0KILuQAb9ihOzrOI3uOTRx819qb5ytYta5CsNyQYGdPtFfY9BxDaMTvYTEXjj401fFYHtUGtvPjj1bEehfnaFqYwQEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RYeMjLf//aJM8lTM0A3uK9ESgT/co3FHNDj51p70WYI=;
 b=TGoV+XwJpgpQ8OPleDF8TFj8LC6THmbEIZp1HvNMCGcV/GGYZkaBLCWJCf/E5kdi6vMpAzdvoXldVCS5UTGu6hOPN2DpSDmPY3zJ6LROLvipLYmQ8+nDGEVvPx0aUeRtLSNmPjb2dOAqTIz0XOCIE/21HKQw2d7WpakM1qHSv9ovNyRR2n/IqKlBvxIcWdfv8tv6N0sf2EG6i+BGspNiTJ3Sdm6pRIINpMR7MjuJylNJETDYiBTYVKAhD/dt6BNBLS69M/xi00WAciXKpqNqaZabfmSVGZgnkfuafzniD40uX07pofUPqFbjlw7D27yH8p27BsQwO4Pmzt0qyHvFJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH8PR11MB6706.namprd11.prod.outlook.com (2603:10b6:510:1c5::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.29; Wed, 25 Oct
 2023 15:44:17 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::fab8:8ece:c8fe:fc7c]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::fab8:8ece:c8fe:fc7c%4]) with mapi id 15.20.6907.030; Wed, 25 Oct 2023
 15:44:16 +0000
Date: Wed, 25 Oct 2023 10:44:09 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <yxff6fwmnunox42h4iohgaxirvnjbyadd535xjjvyq5dte27wf@rbq3h6hzlo5f>
References: <20231018222441.4131237-1-lucas.demarchi@intel.com>
 <20231018222441.4131237-3-lucas.demarchi@intel.com>
 <169773148009.1959.9111774447308795723@gjsousa-mobl2>
 <kdxpremxa22f3ds3uzrtp2cohkkos3nef7vcfi5c7ikr5ojl22@ihkv6bktqett>
 <169807492642.2127.3806840422910041530@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <169807492642.2127.3806840422910041530@gjsousa-mobl2>
X-ClientProxiedBy: SJ0PR03CA0190.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::15) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH8PR11MB6706:EE_
X-MS-Office365-Filtering-Correlation-Id: 78bf8bf1-2ec6-461c-aede-08dbd5713e81
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gF/yWAh+uLspg3fwb+f/4lFLl5ASoVcKAs1C4vgveSE/TgcEtENZXlDCp329U6L2EbPBd2mnejjoEeEboOt+My0MT7ZGIBfw01hyoZYG6CySiMLmdo2GlCu8LttrFYayAhGTYCv5Q24h2rfcWpTCcgdr7QBorXp7PVCq98A8vNIkfCSV2P35x4tIkAcZojLw3VKxALLZ6gsXEDu1rIZszRTtQRPOs3Bu1i5rz7w/24CcwWwliIi8uJ5ys6eamoEQ7fB3OZ2byLNm5P3aekUNJ14lhe/3xjYYMVDexr5FQjIqkgRmqjAjPQP5zjMSewVQvnmwLEe129vMwTHX4SDYtFz06OgZ4qrFVQ1mTCh2DL90Uvfvh7maoUyAKyUdqE6oVSU2jVGOxCpDNPa/Csz3B7D+xv0tE6M5NQQdqa5LJyNCVSgqmT1N4bDFtzWGmTPFTuj3cV+OAAs09ozOumolgJMSWB5qyb48PhQn4QRKB01qUOFJAYYKmhlKH1/a1H23tItfP7DCQjhVrg7FM01/oWKDkzMQhsPSB2mEibonc2xUaWfubBT5efGwbXBe8GPl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(346002)(136003)(366004)(39860400002)(376002)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(33716001)(83380400001)(8936002)(2906002)(4001150100001)(38100700002)(4326008)(6862004)(26005)(8676002)(82960400001)(107886003)(86362001)(9686003)(6506007)(478600001)(316002)(6636002)(6666004)(5660300002)(6512007)(66476007)(41300700001)(6486002)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?p0FP4T6YT4xJoa4Gwjl3FDKvauUBrGpJO5lzYBsD36amXlrQmLZlaenp1VjU?=
 =?us-ascii?Q?XFs2ROpVUhaiCDWxUF7W1D2qh7ceqztQ1X6iGKBvmu6bkbj85zOwans1WoAS?=
 =?us-ascii?Q?z/PL0x4eNWBxVUnGsscoloJK01gUvnLreJwc54OIMd9EozNTCtUXqxtKZvO2?=
 =?us-ascii?Q?AuPnRvdmrOq1b6yCNy9MUL7HtKzA8UmUfENhzQS4vw18r8s1UU7joXK178tm?=
 =?us-ascii?Q?xsIrLOc0w/iFHnQJnIKEJ7exlyG3FTtBgNRgEIeq0T4UMkOSlxdfiTESAf86?=
 =?us-ascii?Q?Jq8YHkF9qYS2T9NKgoTF+m5JcZzx8BwJ7ZB/F5vG1RtOS8lO5GeXQzFqBHDb?=
 =?us-ascii?Q?2aT1Dna9bnxTP4yE88BTKd6+uEvYOAibVi+j0idZn0zQP1c3GVWJB+Y0UWDb?=
 =?us-ascii?Q?5HfBmK+Gon+TW0CPiumqjV4mYwn6zcgvK1r+wu95cKzSfkIBi7w3DIoI0135?=
 =?us-ascii?Q?MhQSqcBnwhX2hLwG4jn+3z6NzLoQMZwnLyem7Xl6AwWjj6E2x+gwgJbEEo8X?=
 =?us-ascii?Q?lQoiRYBvcTkvG0Ek0F2YEny7ZlBvKBJTJQUruN2j1uk2/dQMH2OUFOJD7qDy?=
 =?us-ascii?Q?eLUHRuMCSCws0X9LoHlr5OGiJFi+7aSzKsXMnZDNTCP+Ef1mjrye04VTP4LV?=
 =?us-ascii?Q?jSRAmdkiauQ+kzyTi8UYEDM5Gjtax28u5zEZ8MFoNyBW2zg+hctJwwOddT5W?=
 =?us-ascii?Q?rMP4NwDlitnG8VyYQD9aJ2vX0yzSJvK6TP8YIsx/EF2lZo3r/rui1TEn3CpB?=
 =?us-ascii?Q?v3+xo5fVNC8qLUO22kp3DoC05Gfz/ko88DFWLE0LHgwCjmWJPrqPdtoWMVJ6?=
 =?us-ascii?Q?JRMUKLztqIqD0LItul8u5ozcjqRaBwcTT7w0gJNzk0VbByiOJKZsQjgJVRTY?=
 =?us-ascii?Q?kuPzp1SXDC66wNFfIitEf/nqOuT4j4yM50+O5l/5B7bF73E4+6BOHgKcs3zd?=
 =?us-ascii?Q?7H5CVgJlP858oaShIOLRarxoWQTKqXzlzoRLhZryuZD9slq+bBvYnIkYj5cY?=
 =?us-ascii?Q?f4Bw+7NW0rmUn1JVMS4iFwInvuedp77OchHwNkcT/0hxR5K7PhyH+MYoTv5m?=
 =?us-ascii?Q?qXA0ihtXYJtEzvoTHnnIvHcKlAeEJcID8d5UIKgTkm4oc3JB2VUt1XvcbPQq?=
 =?us-ascii?Q?sCtX8ZpASmE0yrAQe3nrAzo3VuBQ59w0gYYg2C8pLLzrHLtceZhfDPe5V9i4?=
 =?us-ascii?Q?BWB2hhSobe3M77aXaf7WkGHpLcFPj4CTNcLmF5Y1mMIXdaePD8V6ySuA7k8T?=
 =?us-ascii?Q?H9HrwDo8VQr6vFcAneSs18vNqQrB402/03dadkA5yZwKMTxRluckynzENxTz?=
 =?us-ascii?Q?zaWDJ/XM773KH7vGVhaRoqWPn6MhEAtffSfzCcwkqPiXtvELE9+iFFVTQub4?=
 =?us-ascii?Q?4tE7fQP7jtHg7QBLbuAZPluY8nUxjCd2bLpw18blNjSs4fcOfkkyPISg1OW9?=
 =?us-ascii?Q?g1xAqaXKQxq47gY5qh9uLLymFgaCj+o+1dHYD+Mbwd4RW8CTBn0UXB9xFnN1?=
 =?us-ascii?Q?SxL05q3++JLeDkswhgUFav/ULSx+VvOpUCbKwgTmAzBtEpnNtCM9AlY7mP0Y?=
 =?us-ascii?Q?wNM/+dPHmZeimCIf8qhTzM7LjuD/tJcdIstUn5EpT1GNDVe8AfEnihSuf67B?=
 =?us-ascii?Q?0g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78bf8bf1-2ec6-461c-aede-08dbd5713e81
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 15:44:16.1386 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a7CFnxN0U2uFxq8i2qnz4D2ASclm0lnIviuX0voytL6R1Px1WCoMkPo/w6XOeqXXLh1OIlc3yxUjLhRm2x61NXEi9CDm28mj+xNXgWPi6EA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6706
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/lnl: Fix check for TC phy
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 23, 2023 at 12:28:46PM -0300, Gustavo Sousa wrote:
>Quoting Lucas De Marchi (2023-10-20 13:04:48-03:00)
>>On Thu, Oct 19, 2023 at 01:04:40PM -0300, Gustavo Sousa wrote:
>>>Quoting Lucas De Marchi (2023-10-18 19:24:41-03:00)
>>>>With MTL adding PICA between the port and the real phy, the path
>>>>add for DG2 stopped being followed and newer platforms are simply using
>>>>the older path for TC phys. LNL is no different than MTL in this aspect,
>>>>so just add it to the mess. In future the phy and port designation and
>>>>deciding if it's TC should better be cleaned up.
>>>>
>>>>To make it just a bit better, also change intel_phy_is_snps() to show
>>>>this is DG2-only.
>>>>
>>>>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>>>---
>>>> drivers/gpu/drm/i915/display/intel_display.c | 29 ++++++++++----------
>>>> 1 file changed, 15 insertions(+), 14 deletions(-)
>>>>
>>>>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>>index 28d85e1e858e..0797ace31417 100644
>>>>--- a/drivers/gpu/drm/i915/display/intel_display.c
>>>>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>>@@ -1784,31 +1784,32 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
>>>>
>>>> bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>>>> {
>>>>+        /* DG2's "TC1" output uses a SNPS PHY and is handled separately */
>>>>         if (IS_DG2(dev_priv))
>>>>-                /* DG2's "TC1" output uses a SNPS PHY */
>>>>                 return false;
>>>>-        else if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 0))
>>>>+
>>>>+        /*
>>>>+         * TODO: This should mostly match intel_port_to_phy(), considering the
>>>>+         * ports already encode if they are connected to a TC phy in their name.
>>>>+         */
>>>>+        if (IS_LUNARLAKE(dev_priv) || IS_METEORLAKE(dev_priv) ||
>>>>+            IS_ALDERLAKE_P(dev_priv))
>>>
>>>Just like already done with the previous patch, I think we should have a
>>>paragraph in the commit message justifying s/DISPLAY_VER_FULL(dev_priv) ==
>>>IP_VER(14, 0)/IS_METEORLAKE(dev_priv)/.
>>
>>humn... after giving this a second thought, I will take this back.
>>intel_phy_is_tc() is different than the check in the first patch and
>>it's actually something dependent on display engine. Here the check is
>>about is this a DDIA/DDIB or a TC1-TC4? This will change how some
>>registers in the display engine are programmed:
>
>Hm, yeah. I overlooked that... But we are looking into the PHY
>regardless. Is the mapping "phy number -> port type" really associated
>to the display engine rather than to the SoC?

we are converting back and forth. The phy number always come from the
port by using intel_port_to_phy(). See intel_ddi_init() for example:

	intel_ddi_init()
	{
		port = intel_bios_encoder_port(devdata);
		...
		phy = intel_port_to_phy(dev_priv, port);
	}

intel_port_to_phy() does use the display engine version and a
platform-based check in a few cases. Looking at the history, this was
added for EHL, where the ports DDI-A and DDI-D are muxed to one PHY,
called PHY-A.  Then some registers need to use that number to configure
the registers.

4+ years later I don't see the bspec doing any better job on the
registers that are using the phy vs port and this is derived mostly on a
case by case basis :(

Looking at intel_port_to_phy() and ignoring EHL/JSL as outlier, all the
others are basically answering the question "from the display pov, where
does the native/combo port end and we start the ports connected to "TC
ports". From those, then DG2 starts to be the outlier as it identifies
itself as neither combo nor tc, but rather snps. XeLPD is very
"creative" as we assigned a PORT_D_XELPD = PORT_TC5 to make it work
with the register offsets from the display engine pov they replaced
TC5/TC6. Then the phy_is_tc() also has to workaround that, as those are
not TC phys :-/

I think a better abstraction looking back would be to nuke this
intel_port_to_* / intel_phy_to_* / intel_phy_is_tc. Then we only set
that during ddi init.

Note that this is all different than the is this a C10 or C20 phy
question.  The display engine has no idea about that and doesn't care.
Until a few days ago it was not even documented in bspec as this is a
SoC characteristics.

To summarize: I think here we should keep the display engine version
check, resorting to platform checks for the exceptions to match what
intel_port_to_phy() does.  Long term we need to better abstract/document
that, but that is for another day.

Lucas De Marchi

>
>--
>Gustavo Sousa
>
>>
>>        $ git grep intel_phy_is_tc -- drivers/gpu/drm/i915/display/intel_ddi.c
>>        drivers/gpu/drm/i915/display/intel_ddi.c:               if (intel_phy_is_tc(dev_priv, phy))
>>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
>>        drivers/gpu/drm/i915/display/intel_ddi.c:                 intel_phy_is_tc(i915, phy)))
>>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (!intel_phy_is_tc(dev_priv, phy) ||
>>        drivers/gpu/drm/i915/display/intel_ddi.c:       bool is_tc_port = intel_phy_is_tc(i915, phy);
>>        drivers/gpu/drm/i915/display/intel_ddi.c:       } else if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
>>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (DISPLAY_VER(i915) >= 14 || !intel_phy_is_tc(i915, phy))
>>        drivers/gpu/drm/i915/display/intel_ddi.c:       bool is_tc_port = intel_phy_is_tc(dev_priv, phy);
>>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is_tc(i915, phy))
>>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is_tc(i915, phy)) {
>>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is_tc(i915, phy))
>>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is_tc(i915, phy))
>>        drivers/gpu/drm/i915/display/intel_ddi.c:       bool is_tc = intel_phy_is_tc(i915, phy);
>>        drivers/gpu/drm/i915/display/intel_ddi.c:       return init_dp || intel_phy_is_tc(i915, phy);
>>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is_tc(dev_priv, phy)) {
>>        drivers/gpu/drm/i915/display/intel_ddi.c:               if (intel_phy_is_tc(dev_priv, phy))
>>
>>and particularly the creation of intel_tc, which we do want to happen.
>>
>>I think we will really need to rollback the port -> phy conversions all
>>around the code and simplify it. While we don't do that, my proposal
>>here is to turn this commit into:
>>
>>-----------------8<--------------------
>>Subject: [PATCH] drm/i915/lnl: Fix check for TC phy
>>
>>With MTL adding PICA between the port and the real phy, the path
>>add for DG2 stopped being followed and newer platforms are simply using
>>the older path for TC phys. LNL is no different than MTL in this aspect,
>>so just add it to the mess. In future the phy and port designation and
>>deciding if it's TC should better be cleaned up.
>>
>>To make it just a bit better, also change intel_phy_is_snps() to show
>>this is DG2-only.
>>
>>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>---
>>  drivers/gpu/drm/i915/display/intel_display.c | 28 ++++++++++----------
>>  1 file changed, 14 insertions(+), 14 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>index 28d85e1e858e..1caf46e3e569 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display.c
>>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>>@@ -1784,31 +1784,31 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
>>
>>  bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>>  {
>>+        /*
>>+         * DG2's "TC1", although TC-capable output, doesn't share the same flow
>>+         * as other platforms on the display engine side and rather rely on the
>>+         * SNPS PHY, that is programmed separately
>>+         */
>>          if (IS_DG2(dev_priv))
>>-                /* DG2's "TC1" output uses a SNPS PHY */
>>                  return false;
>>-        else if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 0))
>>+
>>+        if (DISPLAY_VER(dev_priv) >= 13)
>>                  return phy >= PHY_F && phy <= PHY_I;
>>          else if (IS_TIGERLAKE(dev_priv))
>>                  return phy >= PHY_D && phy <= PHY_I;
>>          else if (IS_ICELAKE(dev_priv))
>>                  return phy >= PHY_C && phy <= PHY_F;
>>-        else
>>-                return false;
>>+
>>+        return false;
>>  }
>>
>>  bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy)
>>  {
>>-        if (phy == PHY_NONE)
>>-                return false;
>>-        else if (IS_DG2(dev_priv))
>>-                /*
>>-                 * All four "combo" ports and the TC1 port (PHY E) use
>>-                 * Synopsis PHYs.
>>-                 */
>>-                return phy <= PHY_E;
>>-
>>-        return false;
>>+        /*
>>+         * For DG2, and for DG2 only, all four "combo" ports and the TC1 port
>>+         * (PHY E) use Synopsis PHYs. See intel_phy_is_tc().
>>+         */
>>+        return IS_DG2(dev_priv) && phy > PHY_NONE && phy <= PHY_E;
>>  }
>>
>>  enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
>>--
>>2.40.1
>>-----------------8<--------------------
>>
>>This would at make intel_phy_is_tc() match intel_port_to_phy(), at least
>>for display version >= 13.
>>
>>Lucas De Marchi
