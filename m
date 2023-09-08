Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA82797FEB
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 02:57:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A44E910E852;
	Fri,  8 Sep 2023 00:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1B7310E84C;
 Fri,  8 Sep 2023 00:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694134647; x=1725670647;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7QvH2SPAKVxvBc2SmwIhBJPLecKHyJiSaLmyt8JeBIM=;
 b=Pyx94JHdf9mAZn8pCvWSvR5eDNFUU01y9YliSMzG4yE16i/U9kyIkY91
 JuIr887hBuYCJECx4sdyhyqqEUjEoVMgZiUJ3+xez/f/STGEnpzZjKV1O
 wtfOUXoOkP8PKzei9Go7KvAeJDGIXCjtnhT10loKEHfoh4zSY3TrDAk/U
 Nze7L0g4w2Jy/WbcG9uFPwUMcm9Tfsk01GhkZNw1kinwxwnJedk0tYDbN
 LmhQkefEQHEmWXc83Dkih89XGdlZsipQjCUo0tXCa8GB4+7xw5oUMYJ3R
 kQdwLkl4rLFlMn/nZnFAAZo6oJngfmt6YbvLjJf6txC7B5Cw+PfecdyJc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="463902259"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="463902259"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 17:57:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="915939886"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="915939886"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 17:57:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 17:57:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 17:57:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 17:57:25 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 17:57:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lP/j3zFfqiaUsEijyNhaM5Rwyo4yZbZQgTIb9XCBr9NRJO9ZJpAoQKrGHl3FKzSR91qOVDlOJmWpDjxKFeOtBsbIcBQ2yOsw3SLifOrdNMkYIXJzJLfbczu4JEnmcCi/zq6H+VcbjH1rcRupZ4R2kHOeYevRNzLTu+nFHbVZq9vHk5LgEfDG6xrTwegxouavoQvTHCkwyEwyZH0RafZZsU9l0fPapTIqw4VM69qhsCbnY5ujTGPFX/PmMVT0QKIEjw3df5fdEYCA69DbTbcBTrfbg+Ab+m+2kaT3PJI3uX75j0y45FHEA+AYLzu58bOc9tuLBA/Ph6/xJmEiLx/uDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W1bt8dQQj8JG28ZgvQUCO08zy5mW3R13nN3FlZGJFpM=;
 b=DOrTe3V9ZEjlmBB+AgJdJ8Y1Pg4nkL+lZkK3xZlw5PXbDODrEPke8UpGLlY1l15qzOYAMrD8gRl+Z0MiPbF5Zr+yYmi/37+xxpF6aQ34aq3FDeoRwsjT1k9SXRyytdVz9smmMqgnOJOssI6rcQo00DTD3LDfEBl706xEWDxUy567+IrySmByjDR+DF7lhIwuhZ9xrktZHlYuj/qVpVnn4KcNceYnmFZbkhtChhMG1oMUioWp9sDG1M2lapUfTORCU0a62hBV8zYWWxnu54fkVrsJVe+x93RbKE+QDCshmiZ5ZC3H8g4d7uOJi4dyiMrnrTP13fKnx/H35HEZngTXlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CO1PR11MB4785.namprd11.prod.outlook.com (2603:10b6:303:6f::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.30; Fri, 8 Sep 2023 00:57:22 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Fri, 8 Sep 2023
 00:57:22 +0000
Date: Thu, 7 Sep 2023 17:57:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230908005719.GU2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-6-lucas.demarchi@intel.com>
 <20230907170442.GK2706891@mdroper-desk1.amr.corp.intel.com>
 <oxqzybmceob67inunbnnvjna7sgbpjjhb4kwqzfwc7rz5hir6u@x4warrnufecs>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <oxqzybmceob67inunbnnvjna7sgbpjjhb4kwqzfwc7rz5hir6u@x4warrnufecs>
X-ClientProxiedBy: SJ0PR13CA0029.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CO1PR11MB4785:EE_
X-MS-Office365-Filtering-Correlation-Id: c3cad7d5-dcad-4c58-2b26-08dbb0068f64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mdBTFUA1glJFrlFY3Y70wBmj0YAd4CRdQNOLVf2UNRocZvMxUdnis7XekDg4H5Ux8x1QhhMaWo6T2ERROn4iCzORtvE0o46k4vT+q1lAN++21H7pwLuKrXPm9KmXhPariEiRo3+pJEWKsF3vmUXOSqTDjh3XgEX875Q4BZYztLF9i1XrOzTubgPk7UIHRC14gKc9Qov+WfkSUj8Me7QJXduF9nhJuo4TOVLz4W1Iwhd7H88iNfYVoTy6ZuJSKRsMpKwHwKnwdjuJ7LIJf1/TeuHCychfspXXsY7g7y0t+o1UqUg44mBg7JK+mHwh1ZscTxjRvRXECUge7C64H9VZxqpWxB6nSs6C1vWD7JMuexuSoriKidv3OcQ1ESQ3E9F31uiyBh3XZ5Rl9U5+GaIWW79qkQBbASlEoxtzV6BwX3j2KOVxkf+zm/0p+S74K612GB3Q0Q6+SEz9xu7jbC8Y/IZvTnm7s5uuQ8uEXxsiU3evJxLfe3gRc8kB41JiXsGBvPKxDWdpX4iBajfQHwqWv0sstaDCwIeym3warlK5M3aZ35UvgTp27yWmDuhprEuHphMb0X6UUPUSejMdZSHX8dWJvGG/1dEM4Q2KNj1Rx0UZILaZ3840/eYQeNKaNCh7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(396003)(376002)(39860400002)(136003)(451199024)(186009)(1800799009)(478600001)(5660300002)(66476007)(66946007)(66556008)(6636002)(83380400001)(316002)(8676002)(2906002)(6862004)(4326008)(8936002)(6666004)(41300700001)(450100002)(6486002)(6506007)(6512007)(1076003)(26005)(82960400001)(86362001)(33656002)(38100700002)(226253002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rRtzgx/Rn8YG5udyn81LiFrSBIwQ8y5LKjR2jrUps4/RaFo7BtnxhVgrFTSl?=
 =?us-ascii?Q?bnf+TsVsaUTC6zik6rgD4ccGxpCH2YvflwoJVeDxqHQ7VGe14EBZ73sb7vWR?=
 =?us-ascii?Q?CZDkm2fPBy//ivHJl9k5gF67KCOZXDtYOJvmh8zL9q1fZ+YSY8a2EgjqySFl?=
 =?us-ascii?Q?UTIooBScBGRrVp77tfm3O/E7b1upS8lG9tbp1hXr6LJUu+ATJUcQl5SmHEip?=
 =?us-ascii?Q?LHzMfgAaRTw8yyrl2ye8lM7aLbpWz/nINXbI75Rzs/YBeyGEk9VAxJ5MxI9X?=
 =?us-ascii?Q?MB7ailzgSKmvuNpdIvUf4yXQMYZE6ElfpK2XezR7XsVQEF/DjXkH8/v76MzK?=
 =?us-ascii?Q?91H6XJ1EY+YkpIkNnwPgKwaj7vaUpoYtEAqjOSKQ37dnahJrMx9BnNHrSjP4?=
 =?us-ascii?Q?xpgOgBBY4YFHNw4JpqbI4mZ3vLNvKbjy7hlkRSCCmzCUJtLYyaYpX6+K33//?=
 =?us-ascii?Q?lxDr5bR8QsqoE/XBX4oKNd1Zj9g2GImy6HAFK2MNcREwi+PirYhL7ip2Aznu?=
 =?us-ascii?Q?bjORzopdydvZ1sf28iQ1J2fV1OLXdlbDOnGza/hnmpoDma3Y2fTj8wFaow5R?=
 =?us-ascii?Q?zqg8LihZMi2Q8t5/M3CXIqriPkXy2Ql8ee1tqZ3CFbyI/f0I032GIekOGWyJ?=
 =?us-ascii?Q?0hI3BAXj0mww043OcZtFCSKDJxNftDjNskuFr7jeyuHqvI5D1zfOyGy4Ie8N?=
 =?us-ascii?Q?bX5ZzJWKeyVThTyx6WuNZym0WX0qtNOHWD2W+nYL6YfFOhD30YWUV+FfD+Vl?=
 =?us-ascii?Q?C7amK6kgKMkvUVmrjCi40bS2FiATYyQo88fgvRSw1NXieaEJxjpDh4O199/y?=
 =?us-ascii?Q?J9kvcTc852GcL8Oflu9f9KzItKY4orF+hoCI/DRZ9dVOKZTdyfCl6oz+EImi?=
 =?us-ascii?Q?wtjOrd8SuNI38heFN110RDabVmw7gWD3VzJjxWLcnmYW7+WDva1bO0zvJS32?=
 =?us-ascii?Q?hfqTUvhFAqZKODT46KSeLt6upkgjrzRWBtpjeFXWueQi2zckfUdw4Z0+05uX?=
 =?us-ascii?Q?PIGOOkgNWz9BchzLRjZISLsKAzf28buoWZ5mXqtR12VV+8vVnXDNXDkCcx11?=
 =?us-ascii?Q?ni+5UWiPk8m+Uq0SFyKlniYpx8JW8Y0UKsKdHG1OcxkA9AnvkRa1DA4bKTYu?=
 =?us-ascii?Q?xKiGEyrZjjfwz1dpxVm9rpUZL/YVR4Usz8mhfc8ZTkJg8JKaF+OmbZdtv2rG?=
 =?us-ascii?Q?bz0lV6mccmSQwq0GAb2DwVwZ2xCRLXQ2hnmNmjDyqFlaX5+ALHvqEGDkzUxB?=
 =?us-ascii?Q?fp1atCwOancNs5lkL1d+ACrH1QzDeheUO+qxPao3+DL6glsyQic8TKJ2mVDy?=
 =?us-ascii?Q?P6O4SmQ+7qgXdaaTZoOoaezDJ1Bak8hCXKuiJSv/12nqllBvdynhGO8SIDt3?=
 =?us-ascii?Q?TUNRkzW4v8cH+C5YoeHUdgaLSiF00KTib2dgmO3lo62g64BncxLUFfxDVZl/?=
 =?us-ascii?Q?YK0SMnwckFrPJuWsv/KH/35ZA+pl5kZUA9Qcs/x1Trlby7qBGcDgLtDzDQ3I?=
 =?us-ascii?Q?OK/YgHOva1Cc/o7lV7sVrbfottsQ1xwosxO5XU8ZXBh190TJRC8y4Iksrv8K?=
 =?us-ascii?Q?1huVua+nouUCQbvYXRWFgi1RSOnJ9ucbsoa67Ouhy1MVzWHyvlBYqM7wbbw+?=
 =?us-ascii?Q?pw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c3cad7d5-dcad-4c58-2b26-08dbb0068f64
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 00:57:22.6803 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hkS7qU5hEql6iEYuKEfJEg4A2tUZIAvuw5C4C9bwodn+FeuSy/J61QLLYBQ5CU+EVawHs5yIcoS297R6Z3sF0ax0IXI+2nybk/PfslOWGXE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4785
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 05/27] drm/i915/xe2lpd: Add fake PCH
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 07, 2023 at 03:43:59PM -0500, Lucas De Marchi wrote:
> On Thu, Sep 07, 2023 at 10:04:42AM -0700, Matt Roper wrote:
> > On Thu, Sep 07, 2023 at 08:37:35AM -0700, Lucas De Marchi wrote:
> > > From: Gustavo Sousa <gustavo.sousa@intel.com>
> > > 
> > > Xe2_LPD has sourth display on the same SOC. As such, define a new fake
> > 
> > s/sourth/south/
> > 
> > You might also want to drop the word "same" from the description here
> > since NDE and SDE are technically on different dies in this case (NDE is
> > on the compute die, whereas SDE is on the SoC die).  To be 100% accurate
> > we'd want to identify SDE behavior via the PICA's GMD_ID (since PICA
> > also lives on the SoC die for this platform).  But since we've just been
> 
> I'd not re-architect this based on where the PICA lives as it seems very
> easy to change in future.... tying the SDE behavior to the PICA behavior
> because they are on the same die, doesn't seem very future proof.

The point is that tying it to any one thing for every platform is
incorrect; figuring out a) which die is relevant to SDE behavior and b)
how to fingerprint the variant and stepping of that die is very platform
specific.  Art specifically suggested using the PICA ID in cases where
the PICA lives on the die that we need to fingerprint but the NDE does
not.  But again, that's not a silver bullet that can be used on every
single platform.  Nor is using the ISA bus ID like we've done for a long
time.  Nor is using the display version.  Nor is using just the PCI ID.
There's no single answer here, which is why we need a major rethink of
our strategy at some point in the future.  But that overhaul can wait
for a future series; I just want to make sure that the commit messages
here aren't causing further confusion.

> 
> Here the real reason for the change is that from the SW perspective they
> are under the same PCI device and there's no reason to look for a
> different one. Maybe rewording it a "Xe2_LPD has south display on the
> same PCI device" would be simpler?

No, that would be even less correct; PCI device isn't really related to
any of this.  Obviously at the register level, everything our driver
cares about (NDE, SDE, GT, etc.) is accessed through the same PCI device
(e.g., 00:02.0 on an igpu).  Under the hood the various pieces of that
PCI device (NDE, SDE, render GT, media GT, etc.) might be located
together on a single chip, or may be spread across different dies.  When
spread across different dies, those dies can be mixed-and-matched in
various ways (and it seems like hardware design is trending toward more
flexibility in mix-and-match).  

The register interface to the SDE (i.e., which registers exist and what
bitfields they have inside) hasn't had any meaningful changes in a long
time.  And if it does change in the future, the _interface_ changes are
probably more tied to the display IP version than to anything else.
However there's some important SDE handling that the driver needs to do
that may vary based on the identity of the specific die that's
responsible for doing SDE I/O on a given platform.  I.e., there may be
I/O-related defects+workarounds that require special SDE programming
when a certain die variant and/or stepping is present.  There can also
be differences in how lanes are physically wired up, resulting in pin
mapping changes.  In these cases we need to be able to fingerprint the
identity of the specific die handling the I/O (which might be a compute
die, an SoC die, and IOE die, a PCH die, etc.) and make our decisions
accordingly.  If the SDE I/O happens on the same die as the north
display functionality, then using the display version might be an
effective way to fingerprint.  If the SDE I/O happens on a different die
from the NDE, but on the same die the PICA lives on, the display
architects suggested using the PICA ID in that case.  If neither of
those cases are true, then we may need to look at PCI IDs or something.

In the past, the PCH was often where the SDE I/O responsibility was so
we needed a way to identify exactly which PCH variant was present.  The
"PCH ID" that we try to match on during driver startup is entirely
unrelated to the SDE; it's just a random bus that we know was always
part of every PCH and always present in the same predictable PCI slot,
so it's handy for identification purposes.  The fact that we're still
looking at the ISA bus on MTL today is 100% wrong because most (maybe
all?) MTL platforms don't even have a PCH (so that ISA bus might be on a
different die that we really don't care about at all).  For MTL I
believe the NDE and the SDE's I/O are both on the same SoC die, so we
should really just be making our decisions based on IP version and/or
graphics device ID.  If I remember correctly, LNL moved the NDE display
to the compute die, but left the PICA on the SoC die.  So assuming the
SoC die is still where the I/O happens (I don't have the platform docs
open at the moment), the PICA ID could potentially be used to
fingerprint the die for the purposes of die-specific workarounds.  It
might even vary between different SKUs of LNL, MTL, etc. so we really
need to dig into the platform specs to figure out the right course of
action (the graphics bspec doesn't cover that high-level platform
layout).


Matt

> 
> Lucas De Marchi
> 
> > able to get by so far with just matching PICA behavior on the display
> > version rather than on its own version, we can just use display version
> > for this as well, at least for now.  We may need to revisit this all
> > down the road once we have platforms with more possible combinations of
> > these components.  Of course we really need to rework the SDE handling
> > in general (and break its assumption that SDE behavior is tied to PCH on
> > modern platforms), but that's work for a future patch series.
> > 
> > I was originally wondering if we could just reuse PCH_MTP here, but it
> > looks like there's one place where we setup HPD interrupts that needs
> > different handling.  So this should be good enough for now, and we can
> > revisit the whole SDE design separately down the road.
> > 
> > With the minor commit message fix above,
> > 
> > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> > 
> > 
> > > PCH entry for it.
> > > 
> > > v2: Match on display IP version rather than on platform (Matt Roper)
> > > 
> > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > 
> > > ---
> > >  drivers/gpu/drm/i915/soc/intel_pch.c | 5 ++++-
> > >  drivers/gpu/drm/i915/soc/intel_pch.h | 2 ++
> > >  2 files changed, 6 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
> > > index dfffdfa50b97..240beafb38ed 100644
> > > --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> > > +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> > > @@ -222,7 +222,10 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
> > >  	 * South display engine on the same PCI device: just assign the fake
> > >  	 * PCH.
> > >  	 */
> > > -	if (IS_DG2(dev_priv)) {
> > > +	if (DISPLAY_VER(dev_priv) >= 20) {
> > > +		dev_priv->pch_type = PCH_LNL;
> > > +		return;
> > > +	} else if (IS_DG2(dev_priv)) {
> > >  		dev_priv->pch_type = PCH_DG2;
> > >  		return;
> > >  	} else if (IS_DG1(dev_priv)) {
> > > diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
> > > index 32aff5a70d04..1b03ea60a7a8 100644
> > > --- a/drivers/gpu/drm/i915/soc/intel_pch.h
> > > +++ b/drivers/gpu/drm/i915/soc/intel_pch.h
> > > @@ -30,6 +30,7 @@ enum intel_pch {
> > >  	/* Fake PCHs, functionality handled on the same PCI dev */
> > >  	PCH_DG1 = 1024,
> > >  	PCH_DG2,
> > > +	PCH_LNL,
> > >  };
> > > 
> > >  #define INTEL_PCH_DEVICE_ID_MASK		0xff80
> > > @@ -66,6 +67,7 @@ enum intel_pch {
> > > 
> > >  #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
> > >  #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
> > > +#define HAS_PCH_LNL(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LNL)
> > >  #define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTP)
> > >  #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
> > >  #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
> > > --
> > > 2.40.1
> > > 
> > 
> > -- 
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
