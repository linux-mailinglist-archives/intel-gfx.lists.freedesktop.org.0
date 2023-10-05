Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 466F47BA510
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 18:14:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B9C310E426;
	Thu,  5 Oct 2023 16:14:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E97F10E426
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 16:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696522442; x=1728058442;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aqqVml5tTb0W6NBjMfLppyB+VkuFmeVeM/dVam34Yc8=;
 b=FpKeC83kX8y5L4VmaJ6Btl+pUWvS9awUeMKKBCdY/VI32GBqhUye9Wzi
 mrX2nzw4x8XBAcmcIHfXa9+E8KOHG/ujYDIVaIb/Vetjy7MdzCoLucv7Z
 OW1kTYk0DJmXhUsR9++Le3a5BnGUE5JbShCjpVJsC46RnjSocTEFflwFs
 zzarBesQM5gtGeaiUTci7ZGcvRFuEIAoGNTnCo1Dac99N+TX6oqEcK+Yc
 P1kQbVkLRgz1p7IMRExyWgo4ye8eRx4ODumMaITbo5c/k95PVLtQnxf6C
 pdiucVY/iBkI37od4R47uLb0EPoeJfL8F2mh6zc/7g1BqsNWzfrHrJV7G w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="386374371"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="386374371"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 09:10:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="1083089033"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="1083089033"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 09:10:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 09:10:30 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 09:10:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 09:10:29 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 09:10:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d+7O+Gm3e3xLD/4kOvBY6eUBRVfrGUwjyBYaryXtRMmSU1hKTMEcHvYkd0C+f15sB39//Bwwa7ykOmg6RgXKw7f4tMf/D1y/HLSDPemFz5V44nsSRkDBTEwfqf4oy+2NdhYCf392HV0lDkVXLUadQzF0BjUWobj2T/KuxOIwbwxl22XyYOkI/Sk0AUPZm5oCG6cWiktXiHHj2GPvz8RKy4B/QmuU2vtIYZrMzEkWozK0wDpU3/Qt9jUMbTNmbRTaYM1AOaYe975RUaDcLv3hyhA2M2TkwwCLgz12U5PF1JwUySknskUlxyp46JgbBCS5/9Je5GSBi5Y+I93xQezQCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PmaGmAYbvjhviYm2lhZ8x8mfu2EAfegq8i4JyshHHcc=;
 b=j+n8tx+Vs4Ag8Qf7mX38auBSJhtWmUcWgB/rlmOhVWTAjL9tlwcV/F3jfWqpJI7IkJ2OUpSj4QgjZNvVXVgE/pZs7a+qlVzv6yf6gWQelnEbNGtL4bFfpOBlMiJ/GHdr9jc+eKb+jKZSEWyuSYt6JE68S30YNnxmLoPtXhWbG3u03OgU4EnWlRQDesXqUZ4mAP+w4l02dYftJF4fyca+LVNKDjiLG7yVr2YzrklF4K/7rNyo+44VUtUcKNDtEStsFktPKnir6U29hhvt7ZPPCBfzqBcqS06nwBVlnpsqeLlY+rBGTZZ0vNCrrMvobDphUAzBMWXxptr+IHoE3KDXeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB5326.namprd11.prod.outlook.com (2603:10b6:5:391::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.33; Thu, 5 Oct
 2023 16:10:27 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%7]) with mapi id 15.20.6838.033; Thu, 5 Oct 2023
 16:10:27 +0000
Date: Thu, 5 Oct 2023 12:10:23 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <ZR7f7zs+ZvcQYfc7@intel.com>
References: <20231004102504.497023-1-mika.kahola@intel.com>
 <ZR1g2e+gfdeJHad9@intel.com>
 <MW4PR11MB7054CF26F52F649E6D147CF0EFCAA@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZR7Snm5Fnt9hOFEl@intel.com>
 <169652043551.1601.10514040093231401136@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <169652043551.1601.10514040093231401136@gjsousa-mobl2>
X-ClientProxiedBy: MW4PR02CA0009.namprd02.prod.outlook.com
 (2603:10b6:303:16d::20) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB5326:EE_
X-MS-Office365-Filtering-Correlation-Id: a3255e9c-476f-4bdd-e0dd-08dbc5bd968c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5me0Yic0Z1sZa2tAXAhlSr6QkQ0QSzOwJXjIOjZMy1akxa78E/r3/sTIHelSINLgfNBj7DzrmCn9RNmxGG1V8VrUMwffjEf1+aCzxY+1dOKMuqD4Ae06WI37koYYOTWjQ16HjsVNH8Cq4pynMZhPkOiJGXZUpBwkWnq9w88YG32vFK0MpCjEAzd6/Mym/cgWk//8XoYAE0ij8rf1hyCEVfCNg8P6Mwi3KhdEJ8YBRiKys/JaZ3udDIDqfkoJlaTaYt1rRzLCYy6C5CR5JBGNx+QUUMARlC8X7EkarPEQi2QiPeURov3YMCkVij2DbmP0OahOLUg/+JeJqDfOwe7ge8K3Eb1/f1O6KIE2fjAs8WSstZFiSvukkZ+zxYbX8LcMEXfvCxy5VtM5c2haLaSpM8D0IE6Q9FQY+nUGfInhiYWWYc1lHbdz0QZc5L0V3uwel/yhFrClMarqIQyfK2EHquGbfPwzJTci1ENHiFLNaGqI2WERYGOqXpjUVQdmV00+wDnaJPvZZexGK+MSZmnONrE/RUR22kMRW+MIcbO+lTaskwwixzwjAHWz/Uhcef6PgBw9hKp59WZpnfxWxrltUQ63aywExTqB6CTTy2vR2ai0d2Te8X9O+/M674JXcT4T9EJmjCXe9cF+nUw6IUHVgA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(346002)(366004)(376002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(38100700002)(82960400001)(86362001)(36756003)(2616005)(316002)(2906002)(6506007)(6486002)(478600001)(6636002)(37006003)(4326008)(44832011)(53546011)(41300700001)(66556008)(6512007)(6666004)(8676002)(8936002)(5660300002)(66946007)(83380400001)(26005)(6862004)(15650500001)(66476007)(21314003)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zzFv0TA+TdnoK/NOx7xYMIBF25AgmNWfkKI4sM6YIkCHg0AZIU0cFmxZJxHl?=
 =?us-ascii?Q?mXLzRcmxrCCz3QRi0aZrtXjPpiG9PtEVOr7oJibfhTg4gTgZQTSxL3TJDm1z?=
 =?us-ascii?Q?24RyUh7RZ2Hrjwot+8rraymhradhsQ1TuKJmgzngyLCJQHycBI9jn0zQiqlc?=
 =?us-ascii?Q?EREJA2ap3lyphlAiXiaqWds4SliqrfGDl+Ym0zfLWxnc7d0OcLFbe60wFxa+?=
 =?us-ascii?Q?0UncIXXFa8juDiVf5tnEE63KfYNPkYrG1A9UBYxnNIO3cO/IQH10Dwjt5GuD?=
 =?us-ascii?Q?1mWFCMv1HuiuEj+e9F2dz3Hj6nPMuiCvbsBab5+4t1iE837r61uS2Kfo3z65?=
 =?us-ascii?Q?BexP1EqgmIbpBhD/OCuhPuwRbwGNsAEtdaa7Rld74kw4TyTWjUPYC72JHAh5?=
 =?us-ascii?Q?vPV5+TwRu1gxrNEVdL2ogHJ5Fe5xOfaVTVUMlp9fEinos+iRYqmLHxY4gbtE?=
 =?us-ascii?Q?hWBL53mCCA26J8JI9R4wYmP+H92gxLdlHdDGSW7xyTgGMbTiZ2KFvca9gEbw?=
 =?us-ascii?Q?caYKsEw0QOz1GkRMr0Ki/eZkt0pztMNpO589HENWeGpBd0RzieujATfXV/Ne?=
 =?us-ascii?Q?DAiQz9zHfkGLIS0kiGm8IljNn1yd3degrCdHtM66EsfFlK3yE9iQz+bHM/9G?=
 =?us-ascii?Q?kfosIvjd8Ys9eG7j85I/8t1jGK5bkinc7zTK3ZttAcJHqPTSWqS+hjHu7XKE?=
 =?us-ascii?Q?ZKKUa60kppYiMLRzrG3MkYWjRxSnFGxyNsc+uNPznLYkOTlULFjFcrdep2YW?=
 =?us-ascii?Q?dGinX0FNqsE71tQrxRB+8eSDLbKsvn1x0jBXzidTB5Up3yyaFY7YA42Gx4gg?=
 =?us-ascii?Q?bCPNUiivWzxQqpp6tEqkDoc2HdVvgpHaiKGFJ3NJk2Ue3SWeBbYQleCIj7eR?=
 =?us-ascii?Q?7wHZTt64E7njcTIxqhL6WcbhBZjqi9SZzLnSBEkN64I15g6Il8J7dNezGyyg?=
 =?us-ascii?Q?T3YBiFAM0sSo2B6CdyFlIrR/pj9tSXKlBh3urQSqcb3Xk0FTJVROOeDEZvOl?=
 =?us-ascii?Q?IgYtdfWj4g3ANedefe79HeiThn/xOqlgq81DBjibCFj3TKk8gsnr3rtSOkbv?=
 =?us-ascii?Q?UbHK760JjVqtwwThLYWrOI3g8oMruNe++oOPG2OEmQi7k0mRPT7X6n/hGvRh?=
 =?us-ascii?Q?WcAAItUtlU4Ap4ZnLrK2UhVqCrUAXmA6+IBgHkiWp1RCw/75ZxkCtWa1383/?=
 =?us-ascii?Q?5n2lcco7G/mTFmXXTc3fxTdQroI0lCH8FiPzaFbQqipt0UjOSlnglXYITXyt?=
 =?us-ascii?Q?/MsQqDL/VkAULhPftq0LhOE+jo0fI7XrG4DK6rfxU1/q4UkyXVZA9oMIenjW?=
 =?us-ascii?Q?QdsEkediba05l93Bfa+4jhyVZjL5tCuaQRPC17+mTpPsLz5qWSi4x8u7mAhw?=
 =?us-ascii?Q?iW76Z1SzGlUbilfFaa1iW71jy5qgPmsG/TLJp9e8F30Ug4yzyh9nGNhGjLef?=
 =?us-ascii?Q?yAJ6ZJXakPGNJrqkkrgozjLiJvQQYJZwBDsY8G8hMEb0Ewwv2vhP4uuEF33y?=
 =?us-ascii?Q?Ujmq+Kwcn4rcXg+5DUZirRB+OK2K+3hoLds0IKvCmHoWlWso8nyNLPFcTQvK?=
 =?us-ascii?Q?yQaObyRd8zQcCgRf6s//pXAWK2YSpD7BarjR55nM28V68OsSnuxvOmL520ga?=
 =?us-ascii?Q?dg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3255e9c-476f-4bdd-e0dd-08dbc5bd968c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2023 16:10:27.1342 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NukrUfmTtaCqDMW732HeoJ0KisL3NJfxJO2F/HJ2FVhNmkSxdyBcraRmZfkFol3kD7gsVLjmgP0DCcMEhibVTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5326
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Reset message bus after
 each read/write operation
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

On Thu, Oct 05, 2023 at 12:40:35PM -0300, Gustavo Sousa wrote:
> Quoting Rodrigo Vivi (2023-10-05 12:13:34-03:00)
> >On Thu, Oct 05, 2023 at 03:05:31AM -0400, Kahola, Mika wrote:
> >> > -----Original Message-----
> >> > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> >> > Sent: Wednesday, October 4, 2023 3:56 PM
> >> > To: Kahola, Mika <mika.kahola@intel.com>
> >> > Cc: intel-gfx@lists.freedesktop.org
> >> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Reset message bus after each read/write operation
> >> > 
> >> > On Wed, Oct 04, 2023 at 01:25:04PM +0300, Mika Kahola wrote:
> >> > > Every know and then we receive the following error when running for
> >> > > example IGT test kms_flip.
> >> > >
> >> > > [drm] *ERROR* PHY G Read 0d80 failed after 3 retries.
> >> > > [drm] *ERROR* PHY G Write 0d81 failed after 3 retries.
> >> > >
> >> > > Since the error is sporadic in nature, the patch proposes to reset the
> >> > > message bus after every successful or unsuccessful read or write
> >> > > operation. However, testing revealed that this alone is not sufficient
> >> > > method an additiona delay is also introduces anything from 200us to
> >> > > 300us. This delay is experimental value and has no specification to
> >> > > back it up.
> >> > 
> >> > have you tried the delays without the bus_reset?
> >> Yes, we have bumped up the delay, first from 0x100 to 0x200 and then as per 
> >> BSpec change 0xa000 and I have tried 0xf000. Increasing the timeout reduces
> >> the frequency of this error but doesn't solve this issue.
> >
> >what is exactly this BSPec's 0xa000? where can I see it? So maybe you can
> >update the message above removing the 'no specification to back it up'.
> 
> (Resending this because I got a delivery failure notification)
> 
> I think we are confusing "delay" with the "timeout parameter" of the msgbus.
> 
> The PHY has a register to control the timeout parameter of msgbus transactions
> (BSpec 65156). It's default value is 0x100. With commit e028d7a4235d
> ("drm/i915/cx0: Check and increase msgbus timeout threshold"), we had integrated
> a workaround that bumped the timeout value to 0x200 in case timeouts were
> observed. Later on, there was a BSpec update with the formal timeout value to be
> programmed to 0xa000, which was incorporated with commit e35628968032
> ("drm/i915/cx0: Add step for programming msgbus timer").
> 
> I *believe* what Rodrigo has asked was about the usleep_range() calls added with
> this patch, if we tried to only keep the usleed_range() without the bus reset.

yes, that was my original question.

> 
> --
> Gustavo Sousa
> 
> >
> >Oh, and my english is bad, but it looks to me that 'empirical' might
> >sound better than 'experimental' for this case, since you really did
> >a lot of experiments before coming to this final conclusion.
> >
> >> 
> >> > have you talked to hw architects about this?
> >> Yes, HW guys requested traces which I provided but based on these the sequence we use in i915
> >> is correct.
> >> 
> >> > 
> >> > I wonder if we should add the delay inside the bus_reset itself?
> >> > although the bit 15 clear check should be enough by itself and it doesn't look like it is a hw/fw reset involved to justify the extra
> >> > delay.
> >> That should be enough. To me, it looks like when reading/writing to the bus maybe too fast, the hw cannot handle that and we need
> >> to reset and let things settle down before trying again.
> >> 
> >> > 
> >> > well, at least some /* FIXME: */ or /* XXX: */ comments is desired along with the messages if we are going with this hack without
> >> > understanding why...
> >> True, I will add these the the patch.
> >> 
> >> Thanks for review!
> >> 
> >> -Mika-
> >> > 
> >> > >
> >> > > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> >> > > ---
> >> > >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++++
> >> > >  1 file changed, 6 insertions(+)
> >> > >
> >> > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> > > index abd607b564f1..a71b8a29d6b0 100644
> >> > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> > > @@ -220,9 +220,12 @@ static u8 __intel_cx0_read(struct drm_i915_private *i915, enum port port,
> >> > >          /* 3 tries is assumed to be enough to read successfully */
> >> > >          for (i = 0; i < 3; i++) {
> >> > >                  status = __intel_cx0_read_once(i915, port, lane, addr);
> >> > > +                intel_cx0_bus_reset(i915, port, lane);
> >> > >
> >> > >                  if (status >= 0)
> >> > >                          return status;
> >> > > +
> >> > > +                usleep_range(200, 300);
> >> > >          }
> >> > >
> >> > >          drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d
> >> > > retries.\n", @@ -299,9 +302,12 @@ static void __intel_cx0_write(struct drm_i915_private *i915, enum port port,
> >> > >          /* 3 tries is assumed to be enough to write successfully */
> >> > >          for (i = 0; i < 3; i++) {
> >> > >                  status = __intel_cx0_write_once(i915, port, lane, addr, data,
> >> > > committed);
> >> > > +                intel_cx0_bus_reset(i915, port, lane);
> >> > >
> >> > >                  if (status == 0)
> >> > >                          return;
> >> > > +
> >> > > +                usleep_range(200, 300);
> >> > >          }
> >> > >
> >> > >          drm_err_once(&i915->drm,
> >> > > --
> >> > > 2.34.1
> >> > >
