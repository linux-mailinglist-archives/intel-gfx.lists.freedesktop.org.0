Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 371AB798127
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 06:14:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 589FA10E859;
	Fri,  8 Sep 2023 04:14:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22F4C10E859;
 Fri,  8 Sep 2023 04:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694146478; x=1725682478;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IX97qTMKH1zoeelnaE8PySiovnwVwTSP+UEejnni6Cs=;
 b=df0fiX11+JTNMmuO2JkaVRaNA1USE1UYvlzZEx9b3YCSBE0BBUQjMrf7
 yw9XGGtHyH7UDeGHKmpRc76KH1C6bdYVzSEJmTZh4lNeUBq6wq+0zXiCe
 C7w4L6zuq2ADWDlaGdSZT7xzYm/+kPzdvQm7uIwRZIo0YUOM0Xa+FO/rd
 IvbnNuKbldRDHg50CGx5OuMC3Q5UBuSMlWt13yEUiJzXyO95+ISqoeaPO
 /ixoVVk4NKA3V+zqY1+6Jjk8b17Qq6SMOgVssIv2/rImiE0ltRBY1bSDa
 C/ic2JFu9HLfYKHRq7jNdfwO0GSem6JEPDo7IzuvoLNnd+pXLpl+V8f+Y g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="381364250"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="381364250"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 21:07:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="865923631"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="865923631"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 21:07:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 21:07:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 21:07:09 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 7 Sep 2023 21:07:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JjWl+iH6jy7GykpSsYTE2MLZrRUFpcIOAFCE5TS877qWyg+//mKLAOwHqGk1MhykXpJYcUCsgdFI3KGfWfc83M0UvZLZJU0AOL4pHMk6Ws7Bg7BxMD4BYgA//rWb0ZIF1uaHmATH3aMH+WFwOThD+v5omMUVxoid5gJULU1ztjqPpEcnqyTgkUB4491kKBG+6YOmLzqtFTUQkTGcWk5srXrBS0ijB50fgnIG6AulZR7OQlGQpFUD0m6XWrtAjJYGNsXKEkKD7Uz+AD6oJiHYCMi2e+FexnV8al4iOHKG8mqSIVRJm2lNAYkMtItHi0R0KiFrdQLeY/DM6qoSHP90HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YUhYZorw9GedAMbHXSGgNA61Yez9pJ0n1SrU7cPPmVk=;
 b=n2Hfh806OoZdMPw+V04gyPVfbknVo5rQdpfYA7F23eAiFQDNh4gPLgu+swplsqr7+zSRdujPjyioJUp4XlWaTOHyo47ZXae5+gEp77fp34VNcokSDIjQRhigfln+iOFugJKGtEp/4rQbxR6JCt1wc8Fe42j4knZUL/2o2YU1PWR87IHE/gr8ONzBmqjSnZFHFAlP63mqkWNLxDioq91RUfvAJWNzHYCHnJ5MPN0JkfpWjy2CKhHB9iSCMUUfMK03xBpvucr1NqxPFL+aETLx9V+ZVexOSiYDIt6AG04dV+CjgA84znrVViJTPnH/jyUXH0jmjtaaPe9dDPUjBTl6ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH0PR11MB5539.namprd11.prod.outlook.com (2603:10b6:610:d6::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 04:07:07 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 04:07:07 +0000
Date: Thu, 7 Sep 2023 23:07:03 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <2dlmnjvxigrghegcxvj77wnshhhhn6lxhsyzsxyyzyarfl4u4l@ryax4na6pnek>
X-Patchwork-Hint: comment
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-6-lucas.demarchi@intel.com>
 <20230907170442.GK2706891@mdroper-desk1.amr.corp.intel.com>
 <oxqzybmceob67inunbnnvjna7sgbpjjhb4kwqzfwc7rz5hir6u@x4warrnufecs>
 <20230908005719.GU2706891@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230908005719.GU2706891@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR13CA0235.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::30) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH0PR11MB5539:EE_
X-MS-Office365-Filtering-Correlation-Id: 6dd26b18-b556-4015-218f-08dbb0211116
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yYQLwpwbNi3QtiiyAJ/1ZOzCyI+iK/gwdk2rANUVo8omzYJudAUrFN495KB6cPq9ujJWYZo2EXXFWKtTmcqZWuzvg19pnlUTLSM3+wX5EOHx8lptKvqHQ6X68zhZgM/UDfTz7t9osB0N2NQOV/B1ikGGZfZ/GFrkWi8/sX8Tw+2Sl9Tp0WYDLlYfdAE0NadhaMDMS2fQD9B+yyK/kjdIrGEsSdT1U2flErPyWkXLbcJSc5mToAUsMjvJe9n7XxkYLFdL4U0mtmN4CNBq/Lk4rH92m+/U4xfXrU12q8GwLgH7s8x+u/fxg6iq0mKw1sAPIaQtmuSnEKin2x0lceo6edI1kyE5vJlRcXbpMayLJ4v3oG5QSjzUY+qNbQHEY+BTaQLs9OVrmNJqFxnuVujPBcGRLFXdE5Bio/AzB4O07p6o/WhcuAcRFiAVkz+tQwsqKa82EI1+/WWuemfrCNlVrApKbTWg4+bCIu/1LbfVq7EB86st7d+BkF3BKkg1x7YBzPL1uBX6qXtzcGjJN8pPowSmRv76rX6yBO1wXm8RROVHXnjSQCvHwLdkhutf1DUEgDJeN3DdYu1XKZhh9TrqUa9tOFaaRRNBaMrxzOb5eERj2Hc2lvvIhBaVaErrJdXQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(346002)(376002)(136003)(366004)(396003)(451199024)(186009)(1800799009)(82960400001)(38100700002)(86362001)(33716001)(478600001)(2906002)(9686003)(6512007)(6666004)(4326008)(450100002)(6506007)(6486002)(6862004)(8676002)(8936002)(5660300002)(6636002)(66946007)(316002)(66476007)(66556008)(41300700001)(83380400001)(26005)(226253002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MXFoJFH81i4eMWIRzY9qqNGuMYQL07nliWMoJ+ii1UZfUAQJqaE1NGQGIP4n?=
 =?us-ascii?Q?VOyc7IT2VUtT0PunmT/yQB3HeBp0F1Oa07rSpSMQUf+j/M0Vh90a1kICgzNr?=
 =?us-ascii?Q?2KCYV0168O8veHdCn5x0GHlicGwTP6u5bovIH7Kh4bNhNudWBwk3p4RX3eJE?=
 =?us-ascii?Q?hpCxUx7w4eJNY5U+m5ll8S+whWsosrpwcDZKP3LEiogvq6EO4fyvuGvs0ZKa?=
 =?us-ascii?Q?XRJ/hzM4mX/dysHGfCnj2pgjpqpPnVTpWDbpNcIbZaxCCWWwpzOfmdb8ZZ83?=
 =?us-ascii?Q?pw3enkinSqrNnxkEwQlzquRMRRZpUdKdzAf32ijkkYpSi3TgDnyPK+s+Xce0?=
 =?us-ascii?Q?hK56C3vc9Hw17ZcMATex+q9hLSbeF3s6Wh376A5strga7EGAZjxGNGgwuKBI?=
 =?us-ascii?Q?MiPJqiUd1i/8OdqKG9onX1dTNgCdysTJRiC3r4qLpZeaZvZaHqcOpxiulKH1?=
 =?us-ascii?Q?gfRO8ijO+kOtRQNRqrNg1pbpc+sMh69TkzcuJ0AlAqWe1dYsxmFTN3ekJJ5N?=
 =?us-ascii?Q?9+ly4tgmCPl2Ii+kdQt5+x7pL9A9RolHqNzoiNB3EhiCZxvEAx5RN3iyActF?=
 =?us-ascii?Q?lWhWAiuMY//05QNP3+xW086E03AkiNwOMuq2smWWWDgOJFjCcLR20dyp2hJg?=
 =?us-ascii?Q?T6VdktZSavFwPHd6/IGgFlCpYEH+dDIKejqtevldvO7EKE8hnNNa0GYARurj?=
 =?us-ascii?Q?pmMfF27Btzc0B2E27kyrjuUGcWhc/Zzivktai174hKZVwnFOZuIyk5hOdd9/?=
 =?us-ascii?Q?IHlir1hRJMSeAtFsvShWRbDmRGryUvUl9HawADT5iv9N2smfG6L4q88OBkUY?=
 =?us-ascii?Q?6Ar9Iu4yq2wANwpdOQC62S8ZqwyGpo1yLH4Yur1IhVk+lHSuOcuefWl9woNP?=
 =?us-ascii?Q?XJi+wDR60nw5fifWXX6EW0DpyE/5fWWs9GaFoNulbsPjBjqOx8PsTgGO7K7c?=
 =?us-ascii?Q?jqbBOEXpWBEm9EKnTtx4sBosKlkZHERC6UMteTbBL3KyJ0d3ecO4Ja/gTPY1?=
 =?us-ascii?Q?SGZhL4sRyBj+g8ND3BVPnyJ/3cvEQXk4aq/7OclMMy9Yld4L/WWJkUL6HoQg?=
 =?us-ascii?Q?Pc/ITPBNNoncOC5olfB4/9V02QiYBUHpbt1Ise6ZAcs6QRuOUZ11+xAhFgTD?=
 =?us-ascii?Q?eTahIwQEE2b8+HwB0ObV7M+6uT4D8mYoSfFBjAvZ5G0+i3C5ytnscjCnoney?=
 =?us-ascii?Q?2Kp2PjI/sUKslas2HUhA9fCe8bPnDwxwxLe/xIhVQFpmjdYt05l7R8CZIg2D?=
 =?us-ascii?Q?l8+CMPNbrb4DGL4SZc6DwOqupWfc3joNJuZnGcbz9qXBU6WxbofhFuMmXzeU?=
 =?us-ascii?Q?YZRcgE98BebHi/cDGJGOTdkbsGnHmY7Zk0iaMQH695QbrU0UJvcLkI8smJXc?=
 =?us-ascii?Q?WzKAcwNpio2kI3IFZQ3jK7fLoi1xepPICjNXhvoOU+48f0hzTdeqG9F1tmYh?=
 =?us-ascii?Q?8XOayNjJaCeYzOLlgu3JLgFu9d0ESH3/HKXu9FE+Lvvg8xweSbsbpS40vH8r?=
 =?us-ascii?Q?7XYnWx+0+lnQvYn5OHQ1yCQgWHVoxRdumlMyC0ocTTbrSUt6jj7T2sIq+XAY?=
 =?us-ascii?Q?MP3FNwBec4Ph2vCTYmpAIJxvwpuw2YHtEEIaZIdNaDyXMxjqK/jKMrYWaeYk?=
 =?us-ascii?Q?9w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dd26b18-b556-4015-218f-08dbb0211116
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 04:07:07.2034 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3A4sabXlG1nd0PclR0aKIczde04cTVpr3AmP/b5oCAw2WzWp5MmlvrZ38nuxonW+AV4xfxkhlFMNcpSLKxGQN23gXXx/7KvK8gxcjokxu4g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5539
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

On Thu, Sep 07, 2023 at 05:57:19PM -0700, Matt Roper wrote:
>On Thu, Sep 07, 2023 at 03:43:59PM -0500, Lucas De Marchi wrote:
>> On Thu, Sep 07, 2023 at 10:04:42AM -0700, Matt Roper wrote:
>> > On Thu, Sep 07, 2023 at 08:37:35AM -0700, Lucas De Marchi wrote:
>> > > From: Gustavo Sousa <gustavo.sousa@intel.com>
>> > >
>> > > Xe2_LPD has sourth display on the same SOC. As such, define a new fake
>> >
>> > s/sourth/south/
>> >
>> > You might also want to drop the word "same" from the description here
>> > since NDE and SDE are technically on different dies in this case (NDE is
>> > on the compute die, whereas SDE is on the SoC die).  To be 100% accurate
>> > we'd want to identify SDE behavior via the PICA's GMD_ID (since PICA
>> > also lives on the SoC die for this platform).  But since we've just been
>>
>> I'd not re-architect this based on where the PICA lives as it seems very
>> easy to change in future.... tying the SDE behavior to the PICA behavior
>> because they are on the same die, doesn't seem very future proof.
>
>The point is that tying it to any one thing for every platform is
>incorrect; figuring out a) which die is relevant to SDE behavior and b)
>how to fingerprint the variant and stepping of that die is very platform
>specific.  Art specifically suggested using the PICA ID in cases where
>the PICA lives on the die that we need to fingerprint but the NDE does
>not.  But again, that's not a silver bullet that can be used on every
>single platform.  Nor is using the ISA bus ID like we've done for a long
>time.  Nor is using the display version.  Nor is using just the PCI ID.
>There's no single answer here, which is why we need a major rethink of

this contradicts what you said above that "To be 100% accurate we'd want
to identify SDE behavior via the PICA's GMD_ID". That is not true because
if what you are using to fingerprint SDE's behavior change from platform
to platform, then you can't decide anymore on what to use to fingerprint
it. At that point we'd better request a SDE id to be added.

>our strategy at some point in the future.  But that overhaul can wait
>for a future series; I just want to make sure that the commit messages
>here aren't causing further confusion.
>
>>
>> Here the real reason for the change is that from the SW perspective they
>> are under the same PCI device and there's no reason to look for a
>> different one. Maybe rewording it a "Xe2_LPD has south display on the
>> same PCI device" would be simpler?
>
>No, that would be even less correct; PCI device isn't really related to
>any of this.  Obviously at the register level, everything our driver
>cares about (NDE, SDE, GT, etc.) is accessed through the same PCI device
>(e.g., 00:02.0 on an igpu).  Under the hood the various pieces of that
>PCI device (NDE, SDE, render GT, media GT, etc.) might be located
>together on a single chip, or may be spread across different dies.  When
>spread across different dies, those dies can be mixed-and-matched in
>various ways (and it seems like hardware design is trending toward more
>flexibility in mix-and-match).
>
>The register interface to the SDE (i.e., which registers exist and what
>bitfields they have inside) hasn't had any meaningful changes in a long
>time.  And if it does change in the future, the _interface_ changes are
>probably more tied to the display IP version than to anything else.
>However there's some important SDE handling that the driver needs to do
>that may vary based on the identity of the specific die that's
>responsible for doing SDE I/O on a given platform.  I.e., there may be

which only happens to be on the same die where PICA is. *On LNL*. 

>I/O-related defects+workarounds that require special SDE programming
>when a certain die variant and/or stepping is present.  There can also
>be differences in how lanes are physically wired up, resulting in pin
>mapping changes.  In these cases we need to be able to fingerprint the
>identity of the specific die handling the I/O (which might be a compute
>die, an SoC die, and IOE die, a PCH die, etc.) and make our decisions
>accordingly.  If the SDE I/O happens on the same die as the north
>display functionality, then using the display version might be an
>effective way to fingerprint.  If the SDE I/O happens on a different die
>from the NDE, but on the same die the PICA lives on, the display
>architects suggested using the PICA ID in that case.  If neither of
>those cases are true, then we may need to look at PCI IDs or something.

I think that's a different read of what was discussed. My read was more
in the lines of "if you really need that, you can use the PICA ID". With
no guarantee of this being future-proof. That's why we decided it made
no sense to change now. 

>
>In the past, the PCH was often where the SDE I/O responsibility was so
>we needed a way to identify exactly which PCH variant was present.  The
>"PCH ID" that we try to match on during driver startup is entirely
>unrelated to the SDE; it's just a random bus that we know was always
>part of every PCH and always present in the same predictable PCI slot,
>so it's handy for identification purposes.  The fact that we're still
>looking at the ISA bus on MTL today is 100% wrong because most (maybe

I agree here: MTL shouldn't be using that just like LNL is not.

>all?) MTL platforms don't even have a PCH (so that ISA bus might be on a
>different die that we really don't care about at all).  For MTL I
>believe the NDE and the SDE's I/O are both on the same SoC die, so we
>should really just be making our decisions based on IP version and/or
>graphics device ID.  If I remember correctly, LNL moved the NDE display
>to the compute die, but left the PICA on the SoC die.  So assuming the

>SoC die is still where the I/O happens (I don't have the platform docs
>open at the moment), the PICA ID could potentially be used to
>fingerprint the die for the purposes of die-specific workarounds.  It
>might even vary between different SKUs of LNL, MTL, etc. so we really
>need to dig into the platform specs to figure out the right course of
>action (the graphics bspec doesn't cover that high-level platform
>layout).

That's where we disagree... you seem to prefer it more fine grained
while I'm perfectly happy with keeping it simpler and coarse until
the day we need it. For LNL we have Panel Control, GMBUS DDC, HPD, SDE
interrupts, GPSB, TCSS, PHYs and PICA on the SoC die, but those
IO interfaces could very well be on a separate die

I think we have to agree to disagree here and move on. What about the
following?

	drm/i915/xe2lpd: Add fake PCH

	Xe2_LPD doesn't have south display engine on a PCH, it's actually
	on the SoC die (while north display engine is on compute die). As
	such it makes no sense to go through the PCI devices looking for
	an ISA bridge.

	For the places we currently use a PCH check, it's enough for
	now to just check the north display version. Use that to define
	a fake PCH to be used across the driver.


Lucas De Marchi
