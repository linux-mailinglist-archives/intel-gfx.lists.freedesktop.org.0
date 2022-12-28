Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4A4658744
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Dec 2022 23:20:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A80C10E227;
	Wed, 28 Dec 2022 22:19:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C26A10E227
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Dec 2022 22:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672265979; x=1703801979;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=CxWqTLLDDQPquY+vCeLIZXGrQMhrO2+5vwjFL6BkIGU=;
 b=m1W0AwmaYElqMuPG/bs4HzsPoa5iIVU8Zf0NMWir0s5OUiRc8YoRJGLD
 e1gQjVfi6JRhbTAbffYf/hAwIDF6BpW1OVicp3NdZ0qMKg4NSwQpnsC9y
 Qq9730g2i6BW9AzmbfDBYNalI9CNALpEQoDxoxU3Ez1J5MDNOGdGrkRpI
 2glhTOluAsg7JAKjUXxrXC6eaYD5rqr+qU1ShxEYoc2kqo9Nzlbg5Jtlr
 /W8LHm+Uz9Rv8u2c8iaL7AHlvDLLMdmLobWIUGEO8XheRcsINwEsDRGfk
 TYmWyXirdPI8KlGfV2S23GydMjKcm/u1Uu/VgC4xz/sxPj81idJXhANRb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="322923354"
X-IronPort-AV: E=Sophos;i="5.96,282,1665471600"; d="scan'208";a="322923354"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 14:19:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="760768344"
X-IronPort-AV: E=Sophos;i="5.96,282,1665471600"; d="scan'208";a="760768344"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 28 Dec 2022 14:19:37 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 28 Dec 2022 14:19:37 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 28 Dec 2022 14:19:36 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 28 Dec 2022 14:19:36 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 28 Dec 2022 14:19:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sr1ij05BdG61JbzZLApAS80OnGkh19j0JSfHj3HbzdddRVFL1v6/LPXPebVMX4wHomYOykl6hDbsUal/3MM4qsKyqUJKDQ4YekPSAfAonj1/MiAgpHC+tmEpe/vqeMxkuexuCRejBROOYISNCED2G2o3V3QdGkQZkRqdcKfKmte3KQYgtaAJKdnR/9NB7764VoZMsqSBRCl2c+RIQ/Nw3mxBexjXCSHkzcMB1v4WawWbhcNLRSvD1et/gHPW4PRx8poncjdZz5KYqGdy0HJ/yy9DoY2L2mCqZgI8OIdCvht1SSjV87CE72FAAAQn1IWpEBEHhUkcJQ38HHd+jDvR9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uxMtAagt8ReTUAsSgx/KIaSAPJU811oiKVkR5Fqev7k=;
 b=dUz5VjWZ1lzLHb2KbiXp6LYH5jZXxBHuRIyn8eMpy0i8o69UPtB+rNbeLaACxVOBLO2KNafHDA9xqeem9EodKqIVWLDK0+vqu2DkFSEQ37V1iSX6CB1AfihJXloI08qBanAKuppbcPHuHib72MvKWqjDDj2LNQF6PVOZfM++P0c6mUpEf+p5tKns5pHb8qRBgT2Eu/cyPwUb7zrxdMwxkskW5vcsmp3NXnGG1j/01wy1P9zYvze+r4EnfuEXLNWC3y4YGmcf5fOsm8vGSEjW8ogm/cW/Q+EywkYNqqtfPrsO8tYszBU+i26Ay3EUngU7BQJRSxNpmVO3ZVA7RD+HpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH0PR11MB5659.namprd11.prod.outlook.com (2603:10b6:510:ea::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Wed, 28 Dec
 2022 22:19:34 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.5944.016; Wed, 28 Dec 2022
 22:19:34 +0000
Date: Wed, 28 Dec 2022 19:19:26 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Message-ID: <20221228221926.le7i5pwjhnl6fxur@gjsousa-mobl2>
References: <20221220201104.339399-1-gustavo.sousa@intel.com>
 <20221220201104.339399-3-gustavo.sousa@intel.com>
 <87wn6l1299.fsf@intel.com>
 <20221222002345.xbz37hl6gzhb44np@ldmartin-desk2.lan>
 <20221222221208.dk6tgqrwx7o3rdwh@gjsousa-mobl2>
 <20221223005221.4wv73d2j2d6kmw5w@ldmartin-desk2.lan>
 <20221223115159.px2ho2rqp4ivmonr@gjsousa-mobl2>
 <Y6XK5WtfndPrYVNB@intel.com>
 <20221228220005.7c4kwrcyrpndabf5@gjsousa-mobl2>
 <36f3c33edf586f58cad5cb7505d6077facdcd143.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <36f3c33edf586f58cad5cb7505d6077facdcd143.camel@intel.com>
X-ClientProxiedBy: BYAPR06CA0069.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::46) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH0PR11MB5659:EE_
X-MS-Office365-Filtering-Correlation-Id: b05ef442-17a2-4e15-5dd4-08dae9219905
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ABLRthRYfP9e84PRh05YhhoQSKcuu7hChkKgkzNwuau4rxP3AA2Z99D7xUCCIRF2C1uVEiIjGx0cUsd6o/AtqqirQzP5QEoesbqn0BTxNs8ifX2vXXnn8SUPU47jkHW0vxA6KAtxIxO02dKzKh05yiSljHPM97XNiDswadtQZWbXStyOm+nrEGdvn8Rh5qgiekPRqgbm9KQpzW+au5i1yXv6tDWTG7yjLEia/LHzMqpQ6xRraewVqTKK/zOBXghkf1s/vTLQMsUcCkfNUhiqfatIQrQyMJIeyAex2qFmndo/WPaz6dGp7T93WQ80RCHR6QpJTY3Mlfeq4GpelnRufgkh19Xt6kIH1xY69KkiAbVtRdY/yivaeZlXeBrqHZ33CUOqNR/DJTOWqwtcV4xFvsW5eZxXqr/METMttay6AZ4cyiCsrVtV3Na52O7wuwhJEA+OItEVKiSKfmv887BkdqVFSgM6S0aO0Ye81HTDJwnwdHDt4gOhQeBIOavuoe3/XPqK8Z6Ty73dk4BZzoR2rH89cKhdYg3Zvg6W9EMCNiZe9EsRfHkpEPzm9fEcYxt00F+jXMLzbmlOfmKl7d9HNANBWMlrKeX7mjdSvKTlpFc7deZplX//UMuY0F1ns1JCKItolwHkNtd8e7nnqZQv4YJc4yHa6NXcOiYAVh8ODrI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(136003)(346002)(366004)(396003)(39860400002)(451199015)(6486002)(966005)(478600001)(316002)(54906003)(6636002)(4001150100001)(2906002)(6506007)(83380400001)(33716001)(38100700002)(82960400001)(6666004)(86362001)(1076003)(26005)(186003)(9686003)(30864003)(6512007)(5660300002)(66946007)(8676002)(66476007)(66556008)(4326008)(6862004)(8936002)(44832011)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?wvAws8JbvbnBxtZwUI7fK02G3zy0G0cs2eq8EANB1FimXzBiNP5amqg3mD?=
 =?iso-8859-1?Q?MO6kWJdvlh87VB7x0vtcsiRw5PvlMSV5y/oA44DHG+e/1wvTdPrEyniVz+?=
 =?iso-8859-1?Q?ihjrzhoYVh7zY15gMchMwm19VxQF5Wzs8oUQOLP5HjhCzGb79kGcp+OQ9B?=
 =?iso-8859-1?Q?vNYueKH/XBJdd/8RLKeN2E4Ls/V8ho4//iC9CfP2oxjJR4RvroNNhS6pQD?=
 =?iso-8859-1?Q?t7yf5iEa5eWvGTNeauLKq4Frkhavq84Mg0Q8WLHumLk8eBbN0XQ892u8wl?=
 =?iso-8859-1?Q?ETOz7STg4L7IEYWeqifcWKwYs/jRRAP+EPmehXXrfpm9R8L2z5Mq6s4Tkp?=
 =?iso-8859-1?Q?HYIYV0DjRhRFsDcSn3tN2pXzucdkJsDgq96i/kyvgJg2w1PxV1yiOSYLem?=
 =?iso-8859-1?Q?NSN29HpAAaG1cIWjXrLVkR3sTmpbnIZiJnh9Pl7+yVP5jSzopA9Fg1gfTe?=
 =?iso-8859-1?Q?poo2lF9qJacFq8d6l8m/v8JbiZXs/6vgD5b5r+IROAziu7Tram22KOh6Wa?=
 =?iso-8859-1?Q?wPof3MoKbguCIxs0Nz4Y/vRIRWOZ3garW7l3J0tWsTsMzDdIVDAUKJXM1x?=
 =?iso-8859-1?Q?JXO+tdiiBC9O+NDZGDE6pEEpOazvaULw+1e5t0+8DIswLcCiPxBPfmpIi+?=
 =?iso-8859-1?Q?Dzm9FGE1iqKKXWCejN/a4gti8z6vcVg2sULHuc+bn4+pouxmOUgO1f9iJo?=
 =?iso-8859-1?Q?3IE72QtvcgYULGoPxsUyg3PqNmys9vMjvQGv9+hME9JEkcyW7dcQCJdoC7?=
 =?iso-8859-1?Q?a3Ghm69mVKKTW9zj7iUWf7gHxKb2Q7ypn0CB+vj3pEURV8Am8Y9uvYCzj2?=
 =?iso-8859-1?Q?1VnpZwfGcozK3iWK/FZd2SApLvlOBCHi4Oojuvl+Ix9dd/JRhaGUjZyTbi?=
 =?iso-8859-1?Q?YmGdL8HKEZhXaNgJyASg4irtTsOIMtGaF97GZk/lyEipAxP3U27cY93yZD?=
 =?iso-8859-1?Q?olvqg8jleEfYCdyKjGIcuifaDl6OUg2gfKDJtwnjs03k3kjbGGCSEt9mqL?=
 =?iso-8859-1?Q?9vHlMit1YmFScDGzLKcjpCcZSI7+16mWbqHHkiLVoyBUQ7H5Z5gTpDnOBt?=
 =?iso-8859-1?Q?bgT04Ms4OWYv97a76eg33w1kuVcz3pVc4lbKaIOPLkc4lW5zKpoYs+gkgR?=
 =?iso-8859-1?Q?mS4tfRtPu0Q8nnJN2l4Kwk3AvM3S2VeV/I9Kp3fJMpyu1hPbnf+y7xLg1c?=
 =?iso-8859-1?Q?3QsQo2C6LQOnRcp/j7UIAnGabs6Spty1svRFmt5NGnryQdKc6GGB8YMzCj?=
 =?iso-8859-1?Q?uVEuW/XjzrwfoIACqqlDhaSkW8sazbm0UBBM5GAK9rydFTobmz2Az4NT/h?=
 =?iso-8859-1?Q?75R0jLfo3Jf4bf3UK6fWJyegLvEYEvDdOPdiL/uqkh50AdUaNbBmeb9ruZ?=
 =?iso-8859-1?Q?+YVnz0DZK/B/UdkVaFaxhqVCR3wX18gNH0tmNdO2TNcwTdXV0zoJZJcQRe?=
 =?iso-8859-1?Q?UvTFDHLNbmQYE2siA/bYDQ8d+//r7X6CjMOu+Pjv07Q0QuGnTk+LqfuOnY?=
 =?iso-8859-1?Q?TdOCJh9k5Q7HMJMb02qsqloGv1CJwywrXrxsdF0EvSluXvIc2yYUzhSEI/?=
 =?iso-8859-1?Q?iM811lPA3VgKClg7ONYp3zVDuH1dGSy/9rDbI7Cu/AVO+fAxQrov8cj5BY?=
 =?iso-8859-1?Q?PukM2aZukAlB/sKv4Ciq3lkfNMsh5nF2UR1HnCI3se19xicbYDhAWSag?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b05ef442-17a2-4e15-5dd4-08dae9219905
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Dec 2022 22:19:34.0554 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1ntxevQ+o3HDwQUjT266sqT0tHmitT9nPlLh3f4NNKA1w43x1EiRad6W/g6zy4c3+WXfAViwXD54PADQLONTXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5659
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dmc: Use unversioned firmware
 paths
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 28, 2022 at 07:04:46PM -0300, Vivi, Rodrigo wrote:
> On Wed, 2022-12-28 at 19:00 -0300, Gustavo Sousa wrote:
> > On Fri, Dec 23, 2022 at 10:36:05AM -0500, Rodrigo Vivi wrote:
> > > On Fri, Dec 23, 2022 at 08:51:59AM -0300, Gustavo Sousa wrote:
> > > > On Thu, Dec 22, 2022 at 04:52:21PM -0800, Lucas De Marchi wrote:
> > > > > On Thu, Dec 22, 2022 at 07:12:08PM -0300, Gustavo Sousa wrote:
> > > > > > On Wed, Dec 21, 2022 at 04:23:45PM -0800, Lucas De Marchi
> > > > > > wrote:
> > > > > > > On Wed, Dec 21, 2022 at 12:26:26PM +0200, Jani Nikula
> > > > > > > wrote:
> > > > > > > > On Tue, 20 Dec 2022, Gustavo Sousa
> > > > > > > > <gustavo.sousa@intel.com> wrote:
> > > > > > > > > As we do not require specific versions anymore, change
> > > > > > > > > the convention
> > > > > > > > > for blob filenames to stop using version numbers. This
> > > > > > > > > simplifies code
> > > > > > > > > maintenance, since we do not need to keep updating blob
> > > > > > > > > paths for new
> > > > > > > > > DMC releases, and also makes DMC loading compatible
> > > > > > > > > with systems that do
> > > > > > > > > not have the latest firmware release.
> > > > > > > > > 
> > > > > > > > > References:
> > > > > > > > > https://lore.kernel.org/r/Y3081s7c5ksutpMW@intel.com
> > > > > > > > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > > > > > > > ---
> > > > > > > > >  drivers/gpu/drm/i915/display/intel_dmc.c | 98
> > > > > > > > > ++++++++++++++++++++----
> > > > > > > > >  1 file changed, 82 insertions(+), 16 deletions(-)
> > > > > > > > > 
> > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > > > > > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > > > > > index 4124b3d37110..b11f0f451dd7 100644
> > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > > > > > @@ -42,51 +42,70 @@
> > > > > > > > >  #define DMC_VERSION_MAJOR(version)     ((version) >>
> > > > > > > > > 16)
> > > > > > > > >  #define DMC_VERSION_MINOR(version)     ((version) &
> > > > > > > > > 0xffff)
> > > > > > > > > 
> > > > > > > > > -#define DMC_PATH(platform, major, minor) \
> > > > > > > > > -       "i915/"                          \
> > > > > > > > > -       __stringify(platform) "_dmc_ver" \
> > > > > > > > > -       __stringify(major) "_"           \
> > > > > > > > > +#define DMC_PATH(platform) \
> > > > > > > > > +       "i915/" __stringify(platform) "_dmc.bin"
> > > > > > > > > +
> > > > > > > > > +/*
> > > > > > > > > + * New DMC additions should not use this. This is used
> > > > > > > > > solely to remain
> > > > > > > > > + * compatible with systems that have not yet updated
> > > > > > > > > DMC blobs to use
> > > > > > > > > + * unversioned file names.
> > > > > > > > > + */
> > > > > > > > > +#define DMC_LEGACY_PATH(platform, major, minor) \
> > > > > > > > > +       "i915/"                                 \
> > > > > > > > > +       __stringify(platform) "_dmc_ver"        \
> > > > > > > > > +       __stringify(major) "_"                  \
> > > > > > > > >         __stringify(minor) ".bin"
> > > > > > > > > 
> > > > > > > > >  #define DISPLAY_VER13_DMC_MAX_FW_SIZE  0x20000
> > > > > > > > > 
> > > > > > > > >  #define
> > > > > > > > > DISPLAY_VER12_DMC_MAX_FW_SIZE  ICL_DMC_MAX_FW_SIZE
> > > > > > > > > 
> > > > > > > > > -#define DG2_DMC_PATH                   DMC_PATH(dg2,
> > > > > > > > > 2, 08)
> > > > > > > > > +#define DG2_DMC_PATH                   DMC_PATH(dg2)
> > > > > > > > > +#define
> > > > > > > > > DG2_DMC_LEGACY_PATH            DMC_LEGACY_PATH(dg2, 2,
> > > > > > > > > 08)
> > > > > > > > >  MODULE_FIRMWARE(DG2_DMC_PATH);
> > > > > > > 
> > > > > > > We have an issue here.  Previously `modinfo --
> > > > > > > field=firmware i915`
> > > > > > > would report i915/dg2_dmc_ver2_08.bin. Now it's going to
> > > > > > > report
> > > > > > > i915/dg2_dmc.bin
> > > > > > > 
> > > > > > > that modinfo call is what distros use to bundle the
> > > > > > > firmware blobs in
> > > > > > > the initrd. It may also be used for creating package
> > > > > > > dependendies.
> > > > > > > 
> > > > > > > If we do this, unless they have updated their linux-
> > > > > > > firmware
> > > > > > > packages, the initrd will be left without the firmware.
> > > > > > > Just checked
> > > > > > > git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linu
> > > > > > > x-firmware.git main
> > > > > > > and we still don't have the unversioned firmware there.
> > > > > > 
> > > > > > Interesting. Thanks for the explanation!
> > > > > > 
> > > > > > I think one way of approaching the issue would be to
> > > > > > synchronize the process:
> > > > > > 
> > > > > > 1. Work toward getting approval for the patch (i.e. r-b);
> > > > > > 2. With the approval, send a PR to linux-firmware with the
> > > > > > necessary changes;
> > > > > > 3. After the linux-firmware PR is merged, the patch could be
> > > > > > integraged.
> > > > > > 
> > > > > > I think that would still apply if going with your proposal on
> > > > > > your next comment.
> > > > > > 
> > > > > > > 
> > > > > > > > > 
> > > > > > > > > -#define ADLP_DMC_PATH                  DMC_PATH(adlp,
> > > > > > > > > 2, 16)
> > > > > > > > > +#define ADLP_DMC_PATH                  DMC_PATH(adlp)
> > > > > > > > > +#define
> > > > > > > > > ADLP_DMC_LEGACY_PATH           DMC_LEGACY_PATH(adlp, 2,
> > > > > > > > > 16)
> > > > > > > > >  MODULE_FIRMWARE(ADLP_DMC_PATH);
> > > > > > > > > 
> > > > > > > > > -#define ADLS_DMC_PATH                  DMC_PATH(adls,
> > > > > > > > > 2, 01)
> > > > > > > > > +#define ADLS_DMC_PATH                  DMC_PATH(adls)
> > > > > > > > > +#define
> > > > > > > > > ADLS_DMC_LEGACY_PATH           DMC_LEGACY_PATH(adls, 2,
> > > > > > > > > 01)
> > > > > > > > >  MODULE_FIRMWARE(ADLS_DMC_PATH);
> > > > > > > > > 
> > > > > > > > > -#define DG1_DMC_PATH                   DMC_PATH(dg1,
> > > > > > > > > 2, 02)
> > > > > > > > > +#define DG1_DMC_PATH                   DMC_PATH(dg1)
> > > > > > > > > +#define
> > > > > > > > > DG1_DMC_LEGACY_PATH            DMC_LEGACY_PATH(dg1, 2,
> > > > > > > > > 02)
> > > > > > > > >  MODULE_FIRMWARE(DG1_DMC_PATH);
> > > > > > > > > 
> > > > > > > > > -#define RKL_DMC_PATH                   DMC_PATH(rkl,
> > > > > > > > > 2, 03)
> > > > > > > > > +#define RKL_DMC_PATH                   DMC_PATH(rkl)
> > > > > > > > > +#define
> > > > > > > > > RKL_DMC_LEGACY_PATH            DMC_LEGACY_PATH(rkl, 2,
> > > > > > > > > 03)
> > > > > > > > >  MODULE_FIRMWARE(RKL_DMC_PATH);
> > > > > > > > > 
> > > > > > > > > -#define TGL_DMC_PATH                   DMC_PATH(tgl,
> > > > > > > > > 2, 12)
> > > > > > > > > +#define TGL_DMC_PATH                   DMC_PATH(tgl)
> > > > > > > > > +#define
> > > > > > > > > TGL_DMC_LEGACY_PATH            DMC_LEGACY_PATH(tgl, 2,
> > > > > > > > > 12)
> > > > > > > > >  MODULE_FIRMWARE(TGL_DMC_PATH);
> > > > > > > > > 
> > > > > > > > > -#define ICL_DMC_PATH                   DMC_PATH(icl,
> > > > > > > > > 1, 09)
> > > > > > > > > +#define ICL_DMC_PATH                   DMC_PATH(icl)
> > > > > > > > > +#define
> > > > > > > > > ICL_DMC_LEGACY_PATH            DMC_LEGACY_PATH(icl, 1,
> > > > > > > > > 09)
> > > > > > > > >  #define ICL_DMC_MAX_FW_SIZE            0x6000
> > > > > > > > >  MODULE_FIRMWARE(ICL_DMC_PATH);
> > > > > > > > > 
> > > > > > > > > -#define GLK_DMC_PATH                   DMC_PATH(glk,
> > > > > > > > > 1, 04)
> > > > > > > > > +#define GLK_DMC_PATH                   DMC_PATH(glk)
> > > > > > > > > +#define
> > > > > > > > > GLK_DMC_LEGACY_PATH            DMC_LEGACY_PATH(glk, 1,
> > > > > > > > > 04)
> > > > > > > > >  #define GLK_DMC_MAX_FW_SIZE            0x4000
> > > > > > > > >  MODULE_FIRMWARE(GLK_DMC_PATH);
> > > > > > > > > 
> > > > > > > > > -#define KBL_DMC_PATH                   DMC_PATH(kbl,
> > > > > > > > > 1, 04)
> > > > > > > > > +#define KBL_DMC_PATH                   DMC_PATH(kbl)
> > > > > > > > > +#define
> > > > > > > > > KBL_DMC_LEGACY_PATH            DMC_LEGACY_PATH(kbl, 1,
> > > > > > > > > 04)
> > > > > > > > >  #define
> > > > > > > > > KBL_DMC_MAX_FW_SIZE            BXT_DMC_MAX_FW_SIZE
> > > > > > > > >  MODULE_FIRMWARE(KBL_DMC_PATH);
> > > > > > > > > 
> > > > > > > > > -#define SKL_DMC_PATH                   DMC_PATH(skl,
> > > > > > > > > 1, 27)
> > > > > > > > > +#define SKL_DMC_PATH                   DMC_PATH(skl)
> > > > > > > > > +#define
> > > > > > > > > SKL_DMC_LEGACY_PATH            DMC_LEGACY_PATH(skl, 1,
> > > > > > > > > 27)
> > > > > > > > >  #define
> > > > > > > > > SKL_DMC_MAX_FW_SIZE            BXT_DMC_MAX_FW_SIZE
> > > > > > > > >  MODULE_FIRMWARE(SKL_DMC_PATH);
> > > > > > > > > 
> > > > > > > > > -#define BXT_DMC_PATH                   DMC_PATH(bxt,
> > > > > > > > > 1, 07)
> > > > > > > > > +#define BXT_DMC_PATH                   DMC_PATH(bxt)
> > > > > > > > > +#define
> > > > > > > > > BXT_DMC_LEGACY_PATH            DMC_LEGACY_PATH(bxt, 1,
> > > > > > > > > 07)
> > > > > > > > >  #define BXT_DMC_MAX_FW_SIZE            0x3000
> > > > > > > > >  MODULE_FIRMWARE(BXT_DMC_PATH);
> > > > > > > > > 
> > > > > > > > > @@ -821,16 +840,63 @@ static void
> > > > > > > > > intel_dmc_runtime_pm_put(struct drm_i915_private
> > > > > > > > > *dev_priv)
> > > > > > > > >         intel_display_power_put(dev_priv,
> > > > > > > > > POWER_DOMAIN_INIT, wakeref);
> > > > > > > > >  }
> > > > > > > > > 
> > > > > > > > > +static const char *dmc_legacy_path(struct
> > > > > > > > > drm_i915_private *i915)
> > > > > > > > > +{
> > > > > > > > > +       if (IS_DG2(i915)) {
> > > > > > > > > +               return DG2_DMC_LEGACY_PATH;
> > > > > > > > > +       } else if (IS_ALDERLAKE_P(i915)) {
> > > > > > > > > +               return ADLP_DMC_LEGACY_PATH;
> > > > > > > > > +       } else if (IS_ALDERLAKE_S(i915)) {
> > > > > > > > > +               return ADLS_DMC_LEGACY_PATH;
> > > > > > > > > +       } else if (IS_DG1(i915)) {
> > > > > > > > > +               return DG1_DMC_LEGACY_PATH;
> > > > > > > > > +       } else if (IS_ROCKETLAKE(i915)) {
> > > > > > > > > +               return RKL_DMC_LEGACY_PATH;
> > > > > > > > > +       } else if (IS_TIGERLAKE(i915)) {
> > > > > > > > > +               return TGL_DMC_LEGACY_PATH;
> > > > > > > > > +       } else if (DISPLAY_VER(i915) == 11) {
> > > > > > > > > +               return ICL_DMC_LEGACY_PATH;
> > > > > > > > > +       } else if (IS_GEMINILAKE(i915)) {
> > > > > > > > > +               return GLK_DMC_LEGACY_PATH;
> > > > > > > > > +       } else if (IS_KABYLAKE(i915) ||
> > > > > > > > > +                  IS_COFFEELAKE(i915) ||
> > > > > > > > > +                  IS_COMETLAKE(i915)) {
> > > > > > > > > +               return KBL_DMC_LEGACY_PATH;
> > > > > > > > > +       } else if (IS_SKYLAKE(i915)) {
> > > > > > > > > +               return SKL_DMC_LEGACY_PATH;
> > > > > > > > > +       } else if (IS_BROXTON(i915)) {
> > > > > > > > > +               return BXT_DMC_LEGACY_PATH;
> > > > > > > > > +       }
> > > > > > > > > +
> > > > > > > > > +       return NULL;
> > > > > > > > > +}
> > > > > > > > > +
> > > > > > > > >  static void dmc_load_work_fn(struct work_struct *work)
> > > > > > > > >  {
> > > > > > > > >         struct drm_i915_private *dev_priv;
> > > > > > > > >         struct intel_dmc *dmc;
> > > > > > > > >         const struct firmware *fw = NULL;
> > > > > > > > > +       const char *legacy_path;
> > > > > > > > > +       int err;
> > > > > > > > > 
> > > > > > > > >         dev_priv = container_of(work,
> > > > > > > > > typeof(*dev_priv), display.dmc.work);
> > > > > > > > >         dmc = &dev_priv->display.dmc;
> > > > > > > > > 
> > > > > > > > > -       request_firmware(&fw, dev_priv-
> > > > > > > > > >display.dmc.fw_path, dev_priv->drm.dev);
> > > > > > > > > +       err = firmware_request_nowarn(&fw, dev_priv-
> > > > > > > > > >display.dmc.fw_path, dev_priv->drm.dev);
> > > > > > > > > +
> > > > > > > > > +       if (err == -ENOENT && !dev_priv-
> > > > > > > > > >params.dmc_firmware_path) {
> > > > > > > > > +               legacy_path =
> > > > > > > > > dmc_legacy_path(dev_priv);
> > > > > > > > > +               if (legacy_path) {
> > > > > > > > > +                       drm_dbg_kms(&dev_priv->drm,
> > > > > > > > > +                                   "%s not found,
> > > > > > > > > falling back to %s\n",
> > > > > > > > > +                                   dmc->fw_path,
> > > > > > > > > +                                   legacy_path);
> > > > > > > > > +                       err =
> > > > > > > > > firmware_request_nowarn(&fw, legacy_path, dev_priv-
> > > > > > > > > >drm.dev);
> > > > > > > > > +                       if (err == 0)
> > > > > > > > > +                               dev_priv-
> > > > > > > > > >display.dmc.fw_path = legacy_path;
> > > > > > > > > +               }
> > > > > > > > > +       }
> > > > > > > > > +
> > > > > > > > 
> > > > > > > > I'd keep the request_firmware() with warnings.
> > > > > > > 
> > > > > > > then not only it will be missing from initrd but we will
> > > > > > > also trigger
> > > > > > > new warnings. Humn, I think one alternative approach and my
> > > > > > > proposal
> > > > > > > would be:
> > > > > > > 
> > > > > > > leave platforms that already have published firmware as is
> > > > > > > as long as
> > > > > > > they are not behind a force_probe. For the new platforms,
> > > > > > > like mtl,
> > > > > > > just use the platform name and don't bother about the
> > > > > > > version.
> > > > > > > We will also have to fix it in the linux-firmware repo.
> > > 
> > > This is also my suggestion. Don't touch the old ones unless needed.
> > > Let's live with the versions there for the ones we are not
> > > updating.
> > > 
> > > > > > > 
> > > > > > > We are likely not updating DMC for very old platforms
> > > > > > > anyway, no need to
> > > > > > > rename them.  I think that after having symlinks in place
> > > > > > > in
> > > > > > > linux-firmware for a few years/months, then we can go back
> > > > > > > and kill the
> > > > > > > version numbers if we really want to.
> > > 
> > > I do like this option though...
> > > 
> > > > > > 
> > > > > > Sounds good.
> > > > > > 
> > > > > > This patch was an attempt to have all supported platforms
> > > > > > changed to the new
> > > > > > convention and keep us from having to send a new patch for
> > > > > > each platform that
> > > > > > would need the change because of a new firmware release. But
> > > > > > to avoid warnings,
> > > > > > I think your proposal would be better indeed.
> > > > > > 
> > > > > > It seems that currently the only platforms with display that
> > > > > > are
> > > > > > using require_force_probe = 1 are DG1 and MTL, and the latter
> > > > > > does not have an
> > > > > > entry in intel_dmc.c yet. Moving forward with your proposal,
> > > > > > I guess we could
> > > > > > also keep DG1 as is and only update it when/if the time
> > > > > > comes.
> > > > > > 
> > > > > > That said, I still think we would need the logic for loading
> > > > > > from legacy paths
> > > > > > as fallback so that we do not cause regressions when, for
> > > > > > example, ADL has an
> > > > > > update and we "move" it to the new convention. Do you agree?
> > > > > > 
> > > > > > So here is my proposal:
> > > > > > 
> > > > > > - Keep using the same paths (i.e. versioned ones) for the
> > > > > > current entries in
> > > > > >  intel_dmc.c, but define them with DMC_LEGACY_PATH() and
> > > > > > reserve DMC_PATH() for
> > > > > >  the new convention.
> > > > > > 
> > > > > > - Keep the logic for the fallback in place because we know
> > > > > > that it will be
> > > > > >  needed soon enough for some more recent platforms.
> > > > > 
> > > > > here is where we disagree. I don't think we need any fallback,
> > > > > because
> > > > > it will likely not work:
> > > > > 
> > > > >         MODULE_FIRMWARE(ADLP_DMC_PATH);
> > > > 
> > > > Yeah... I was thinking about this and maybe we could also have
> > > > MODULE_FIRMWARE()
> > > > calls for legacy paths as well. Looking at the documentation for
> > > > MODULE_FIRMWARE(), the module files are understood as "optional",
> > > > so I think it
> > > > would be somewhat okay for one of the two missing, as long as the
> > > > one is found.
> > > 
> > > I believe this will generate a big warning when the initrd are
> > > getting updated
> > > and the firmware is not there. Please run some experiments on your
> > > side there with
> > > this idea. We need to avoid these warnings. But we might need to do
> > > something like
> > > that, at least temporarily for the cases where we end up in need to
> > > update the
> > > minor version and we are out of the force_probe protection.
> > 
> > I did some research and tested generating initrds.
> > 
> > The test consisted of generating two images, both including i915. The
> > firmware
> > directory was left untouched for the generation of the first image.
> > For the
> > second image, ADLP DMC firmware files were removed from there
> > location in the
> > system prior to calling the command to generate the image.
> > 
> > After generating the images, I compared their content. I checked that
> > the module
> > object was present in both of them. I also checked that firmware
> > files were also
> > present and that the firmware for ADL was missing in the second
> > image.
> > 
> > I ran the test on:
> > 
> >   1. Arch Linux (my host system) using mkinitcpio;
> >   2. Ubuntu 22.04 (virtual machine) using mkiniramfs;
> >   3. Fedora 37 (virtual machine) using dracut.
> > 
> > For all cases, no warnings about missing firmware blobs were raised.
> 
> just to double check, you ensured you have removed the files from
> /lib/firmware/i915/ before you triggered the regeneration, right?

Yes.

> 
> > 
> > > 
> > > > 
> > > > I think declaring possibly missing fallback paths is less ugly
> > > > than overwriting
> > > > the versioned path with a blob of a different version.
> > > 
> > > Yeap, please, let's not override a path with a different version.
> > > This will
> > > lead to confusions later.
> > 
> > So should we go with keeping the fallback mechanism in place and
> > declaring both
> > new (unversioned) and legacy (versioned) paths for the modules that
> > will be
> > updated?
> 
> If no warning is raised when you don't have the firmware, then I
> believe we have a path.

Cool.

By the way, specifically for mkinicpio (the one used for Arch Linux), it does
raise warnings for missing firmware, but only if *not even one* firmware file
listed for the module was found - if *at least one* is found, it does not
complain.

I haven't checked if the behavior is the same for the other tools though - just
checked that they do not complain for the test scenario explained above, which
should suffice our case.

--
Gustavo Sousa

> 
> > 
> > Following the direction to update paths only for platforms that get
> > new DMC
> > releases, we would have dmc_legacy_path() simply returning NULL for
> > the time
> > being (which I think is not that bad, as we know we will have new DMC
> > releases
> > for platforms already using versioned paths).
> > 
> > --
> > Gustavo Sousa
> > 
> > > 
> > > > 
> > > > > 
> > > > > this means that distros will only package and or update their
> > > > > initrd
> > > > > with the unversioned path. If a developer updates the kernel,
> > > > > the
> > > > > fallback will simply not work if i915 is loaded from the
> > > > > initrd.
> > > 
> > > Yeap, if one (not necessarily developer) updates the kernel, but
> > > for some
> > > reason linux-firmware.git was outdated, then the initrd will end up
> > > empty
> > > and the firmware won't get loaded.
> > > 
> > > This is the regression that we should avoid. One of the main
> > > reasons on why
> > > we are removing the version from the path.
> > > 
> > > > > 
> > > > > For those older platforms I think we can simply keep updating
> > > > > linux-firmware overwriting the same dmc_adlp_2_16.bin. It's
> > > > > ugly, but
> > > > > doesn't break compatibility.
> > > > > 
> > > > > I defer to maintainers to chime in on that though.
> > > > > Jani/Rodrigo, what do
> > > > > you think?
> > > > > 
> > > > > Lucas De Marchi
> > > > > 
> > > > > > 
> > > > > > - Similarly to your last remark, if we find it necessary, we
> > > > > > could in the future
> > > > > >  remove the fallback logic after linux-firmware has all blobs
> > > > > > using the new
> > > > > >  convention for good enough time.
> > > > > > 
> > > > > > 
> > > > > > --
> > > > > > Gustavo Sousa
> 
