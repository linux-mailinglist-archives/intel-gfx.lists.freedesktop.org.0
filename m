Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F1579819A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 07:51:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00C8010E088;
	Fri,  8 Sep 2023 05:51:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 677A610E088;
 Fri,  8 Sep 2023 05:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694152280; x=1725688280;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=RP0J3Y8DqDbT1Fe0tZjK3ikv9qkbEWkb3Dawkxl7SYc=;
 b=ItxZ3v84aMpsoheYhJbM+CNpzdgWBzfykEEtiTJLK2A9XU2HTitp2VZP
 YTBUyZLC/YmyvSGeEB7Rlw4pPXumlU6juEhMFIxmGWZ634/xni3oQY3L1
 dkLhgY+V5iE5xijazMN1dNxZRb9ln7MzpeBdt3i2EhfyVyyRioJk0SAfW
 pkv2Ay5S8eEVogBLNabfARdcBzKwPa3Yjf+PoXlVbCnuLsedYRpRIvVBP
 NqFqjJuA55ijW5O8Ye8b2t8yB3hlSc+lLO+tOeyRNha7xBONri2+IH0XY
 dDYEwFR7Ohl4fCJPDLfAnA8rDmigYQEOhsUHzIUC00nmyidMEFvxmGjl4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="381379763"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="381379763"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 22:51:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="777427503"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="777427503"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 22:51:18 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 22:51:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 22:51:15 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 22:51:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oOMCi6BXd56fpEPQpZkyswyPwCnFIUXeoRoXiGKzQT2cLZvuzQzaMCTPbNjIMPNsGMiNdhNHo4IA7/wJkZKXaf9RKUS4wdMeu3fP08yPkwpX1kE0ehQAnByl8Cw9tNXLCxG8od40K7zNFyNy6p1cIA4wfs4E/jrX9KBKM62lH63HEqOvwngTnv1eJ69SXdfi65rLqgtpabBAKpzFg71UHNOxPtoWbYcyV25MUuyK4I61KmvPTTrHOlISLBGu+o+vAwx2UlH3ZUPS5NW9n33ulXGs/xWbAiwUB6nnwA7E5DSCOZwa5EqOsgskrycM2Yi2xsHuqYZnuMJkn7scy+RYeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8b1o/UEBiOdnqk9HvBWIb/RrAB1I5KuS/KuOO0x52YY=;
 b=X46Uq+Zv2Ad27ha/bKNu4+acKZ3j99d+03HNGlbD78+dQvUAz8wh2y5HYAFdL3B9fTxzKnPGS6Zcx5oJpCOpjnyB8vRBdlN2Lw+4wgbSJS/mnlALiyHw3sw4vAfl4bmLBxg9sZFroDzzu+qe4VniF3P83518G9jH9896QYasYj5KPrvZdsp+lp0hmqYlJr30ITp8TorwIFjXqOX1NQ8dimd6USu/WLtdmcRxjzXyQAl19v0A0zG15mJbNa4RIBhZ8Vl431X0JVaoG8EU5McrZaRlNTmZOPSjM0xFXn54rvFb4nmWovHK6MMRcEm+LpZE0Qd5LH9SQIUOzXM7HaGwqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW4PR11MB6934.namprd11.prod.outlook.com (2603:10b6:303:229::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.33; Fri, 8 Sep
 2023 05:51:13 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 05:51:13 +0000
Date: Fri, 8 Sep 2023 00:51:09 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <pxfmwknh5jetgwlqslwnkybdkhghbc6krclqqt6wf2tu3kb3tw@qu52d3etwech>
X-Patchwork-Hint: comment
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-6-lucas.demarchi@intel.com>
 <20230907170442.GK2706891@mdroper-desk1.amr.corp.intel.com>
 <oxqzybmceob67inunbnnvjna7sgbpjjhb4kwqzfwc7rz5hir6u@x4warrnufecs>
 <20230908005719.GU2706891@mdroper-desk1.amr.corp.intel.com>
 <ZPqzpNlTWiLrRXCy@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZPqzpNlTWiLrRXCy@intel.com>
X-ClientProxiedBy: SJ0PR03CA0154.namprd03.prod.outlook.com
 (2603:10b6:a03:338::9) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW4PR11MB6934:EE_
X-MS-Office365-Filtering-Correlation-Id: 95766721-78b2-483f-dd37-08dbb02f9c05
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4g8OMWytChv+LNiCr27HmJdtVSoDEk7liXOybHOMAIb87w6kCu8l3UYNyDrVaQY3h/kkOSRc8pHQrIsDcu3Pr3Cp2X86mB/yxvUaBdbmI3oMxPVJ3DAHjo5rsHZSs3YC/wuIhASTqPuLL5YrTZg25Trrnr1P/Hbbf3CseXB2ZV5BQG+2dWJ9fx7yJQW10jlp4l3q2QXJDLwHW+U/fSab36116WEEdYzlxu6OqAeydl6oDXE6CIhPOcyGLkOyx9AJgH+fqwZnQn7fbxsLlM6Ut5xaa0acYFzbwq/6POi76X8keeMP+IREj72wmjnDbKyZHiys4EJB70CSPTrNocxAyHCeO3T29Xt6xt/LZzYKXy5tkMjH17W1tEeIVq05O3TROtzBVn7bykG6TdLrAxhZ+ghXbmE6fNT+ztDGW3A4C0X/En4rQwVXmCTB/iSplvQj7hRBLtE0vUfs6rQV0B1drcDetbYpoaW/lvJZdFizKNv583vr4SkTMEJpC1gRM4bE6kS8VDv/l1Qn7S73ebW0JLL+IJSPHb3oir8H+favS1IKjMWDL9g/LZ/vI3hRZGT4qhJhPWX7De+o+WHKfpRrT428QpEPC42lpSF03oelhovRbd1Se9Qan2+BtS0v7kGH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(366004)(136003)(376002)(39860400002)(396003)(1800799009)(186009)(451199024)(83380400001)(66899024)(2906002)(66574015)(38100700002)(82960400001)(33716001)(86362001)(6486002)(41300700001)(6512007)(66476007)(6506007)(9686003)(66556008)(316002)(66946007)(6916009)(4326008)(8676002)(8936002)(478600001)(6666004)(26005)(5660300002)(226253002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?iK/6f094pFbs6WeWyV8SKUh/m2xdosbsaY3eprCRSdGLfNIOjOTRRNIl24?=
 =?iso-8859-1?Q?e1JX8wePzaXiDJtX/H/BEuHjudnIdb/sK3zRrFQV4+1gKFSGpDryasHVP/?=
 =?iso-8859-1?Q?f5yXgIA+taVeYWLqk9dzevtzJy81NaEKFgAclMBsouvdwfpoU2c01Y0rze?=
 =?iso-8859-1?Q?z9kOBzlBgPaGjZ90vJbhZsvY3GIzdeVucidNJkdNFn6SK5DlGqaltPVQW+?=
 =?iso-8859-1?Q?5rTelyK64a5ZEJ5Cqto597XVvh4Imw2glHQkhePIHxRY9Lm8nmJlBtY+UN?=
 =?iso-8859-1?Q?Rw1rdM6p325uiAnQarFLAdUVh+Iie73PcVl0lRDed7MxckV1LljQUvrTit?=
 =?iso-8859-1?Q?x7jhWt0C4SgErokEikrAh2Ajqf9DmXdjOGhJ8BTpkmL7tx2R8ilueQd5tR?=
 =?iso-8859-1?Q?hkQojDgqIAmtU/M87Kj6AkLwQ0gEcUEYmdPI2XiXhg3U6cULEGiFY+Vqfz?=
 =?iso-8859-1?Q?geQaod8UBBh2nsiFR2Iw1IN8NC33+5NgMwOfL3rmqDAJ6vOQd99RXUeXA6?=
 =?iso-8859-1?Q?HwbR7M6pBZoEMi5CDz9jVysQeNEm2/Ys/kNZz/SWF6xiAj8OIk+1EUcoEM?=
 =?iso-8859-1?Q?Zjte11D5h6Xe0lANw6P8sgNpao9UYp0W8ulSsZ3Av/VlUa+qESnYgZ9/z+?=
 =?iso-8859-1?Q?4Cq8qTbHyvpm2utNgQMpTZWD/Nxrsf6aXOSrpPrhOWbcdCyI9+OaYo53tE?=
 =?iso-8859-1?Q?LeZL8ETzRjiAjHWoLpn1wNgdgOC6/ltokIcPqkxMrtOIvZxjiip/OE1fOS?=
 =?iso-8859-1?Q?VgoAuPk2SBoAPOpdYh2vvk1Id4+sC6iFzfw1vEZYHw2gXY22raJUEd1stO?=
 =?iso-8859-1?Q?o3ADkJ7DvBGpyO4RlbKKrX2p/ZxdKrHNmxDGzJCXR7pO5ITyqDRiHzy5dv?=
 =?iso-8859-1?Q?EsF0Vy0WVvr89PRClQwxSbUqBIvIRfLysV9kK5qEcOMz3l2HPwcz5cIfME?=
 =?iso-8859-1?Q?NfcA41GQGFDg2Dx2wYRf9ABPNGInxtH9A87v/L0FtQ/J6KMa6yOV+WKlSs?=
 =?iso-8859-1?Q?XZLBvwOC86Ltt48Yo7nP8xiR4VirfsfwyJXzXLlgF80a2em+n7bLBKtQGq?=
 =?iso-8859-1?Q?GVaaiYj3YQMFbR8jnTQybTh1E9ltnO8uEo10V+UjLW20dh8rihrOCn20KT?=
 =?iso-8859-1?Q?v90iPwMx8Fc/+zgNf6DXIVARlgtYbKGexss8QZR1yVcOU73g9xIbNonikd?=
 =?iso-8859-1?Q?w1EUX0w04JYSia4CmsFU1IpNI4BxVF1BOoSLFwrU+jq7dhiW4+EjIsN2CH?=
 =?iso-8859-1?Q?Z1d2nXgwTQfLmXXgVrua/QMlmKWTG8JQpwoDCgEZGtaNCWrru5FPIZHG1x?=
 =?iso-8859-1?Q?PyrGYHaQtJz5vl0PCmu1l1RC7tFTOvlWWPDoAtN6ySgYNbBRsLyiqm0k4a?=
 =?iso-8859-1?Q?VmXSlvgwAAQU03dlGmzJzCtN5xQqnPJ5hvvNwh+Bwqy8JjcgRIZr16mDso?=
 =?iso-8859-1?Q?K8K/cXSveWlITpi0mBS9ekZDWHf3c4klhpl8kLzwhiVCuXFuZn2oKaL/dy?=
 =?iso-8859-1?Q?mozLBXPfHrFzw75nUQSAY1fCklz85yStLnTDHK7wCZi0WwxGi7lBigTUdF?=
 =?iso-8859-1?Q?2cAyHtECRz3KVxhYVdRnYySYAEwqf0pFtxIsa9vdOFRN2S1J9ss6nNj1Yv?=
 =?iso-8859-1?Q?GWOKLDVHJrXDtopAOdgUHJ9JUmtwSuIJS1UzEL/WqVO/+5l6QO8KwYPQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95766721-78b2-483f-dd37-08dbb02f9c05
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 05:51:13.1786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DTJd7nmohHiZZ84wihNJ1QBRjiu6BLaUMq5180JYX5ds1zQ8Z8OAQzkaWDaMKsaER2I0UQTho8IUF1rFJIXELuOERNiw/9MQe7F8IT+WXyU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6934
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 08, 2023 at 08:39:48AM +0300, Ville Syrjälä wrote:
>On Thu, Sep 07, 2023 at 05:57:19PM -0700, Matt Roper wrote:
>> On Thu, Sep 07, 2023 at 03:43:59PM -0500, Lucas De Marchi wrote:
>> > On Thu, Sep 07, 2023 at 10:04:42AM -0700, Matt Roper wrote:
>> > > On Thu, Sep 07, 2023 at 08:37:35AM -0700, Lucas De Marchi wrote:
>> > > > From: Gustavo Sousa <gustavo.sousa@intel.com>
>> > > >
>> > > > Xe2_LPD has sourth display on the same SOC. As such, define a new fake
>> > >
>> > > s/sourth/south/
>> > >
>> > > You might also want to drop the word "same" from the description here
>> > > since NDE and SDE are technically on different dies in this case (NDE is
>> > > on the compute die, whereas SDE is on the SoC die).  To be 100% accurate
>> > > we'd want to identify SDE behavior via the PICA's GMD_ID (since PICA
>> > > also lives on the SoC die for this platform).  But since we've just been
>> >
>> > I'd not re-architect this based on where the PICA lives as it seems very
>> > easy to change in future.... tying the SDE behavior to the PICA behavior
>> > because they are on the same die, doesn't seem very future proof.
>>
>> The point is that tying it to any one thing for every platform is
>> incorrect; figuring out a) which die is relevant to SDE behavior and b)
>> how to fingerprint the variant and stepping of that die is very platform
>> specific.  Art specifically suggested using the PICA ID in cases where
>> the PICA lives on the die that we need to fingerprint but the NDE does
>> not.  But again, that's not a silver bullet that can be used on every
>> single platform.  Nor is using the ISA bus ID like we've done for a long
>> time.  Nor is using the display version.  Nor is using just the PCI ID.
>> There's no single answer here, which is why we need a major rethink of
>> our strategy at some point in the future.  But that overhaul can wait
>> for a future series; I just want to make sure that the commit messages
>> here aren't causing further confusion.
>>
>> >
>> > Here the real reason for the change is that from the SW perspective they
>> > are under the same PCI device and there's no reason to look for a
>> > different one. Maybe rewording it a "Xe2_LPD has south display on the
>> > same PCI device" would be simpler?
>>
>> No, that would be even less correct; PCI device isn't really related to
>> any of this.  Obviously at the register level, everything our driver
>> cares about (NDE, SDE, GT, etc.) is accessed through the same PCI device
>> (e.g., 00:02.0 on an igpu).  Under the hood the various pieces of that
>> PCI device (NDE, SDE, render GT, media GT, etc.) might be located
>> together on a single chip, or may be spread across different dies.  When
>> spread across different dies, those dies can be mixed-and-matched in
>> various ways (and it seems like hardware design is trending toward more
>> flexibility in mix-and-match).
>>
>> The register interface to the SDE (i.e., which registers exist and what
>> bitfields they have inside) hasn't had any meaningful changes in a long
>> time.  And if it does change in the future, the _interface_ changes are
>> probably more tied to the display IP version than to anything else.
>> However there's some important SDE handling that the driver needs to do
>> that may vary based on the identity of the specific die that's
>> responsible for doing SDE I/O on a given platform.  I.e., there may be
>> I/O-related defects+workarounds that require special SDE programming
>> when a certain die variant and/or stepping is present.  There can also
>> be differences in how lanes are physically wired up, resulting in pin
>> mapping changes.  In these cases we need to be able to fingerprint the
>> identity of the specific die handling the I/O (which might be a compute
>> die, an SoC die, and IOE die, a PCH die, etc.) and make our decisions
>> accordingly.  If the SDE I/O happens on the same die as the north
>> display functionality, then using the display version might be an
>> effective way to fingerprint.  If the SDE I/O happens on a different die
>> from the NDE, but on the same die the PICA lives on, the display
>> architects suggested using the PICA ID in that case.  If neither of
>> those cases are true, then we may need to look at PCI IDs or something.
>>
>> In the past, the PCH was often where the SDE I/O responsibility was so
>> we needed a way to identify exactly which PCH variant was present.  The
>> "PCH ID" that we try to match on during driver startup is entirely
>> unrelated to the SDE; it's just a random bus that we know was always
>> part of every PCH and always present in the same predictable PCI slot,
>> so it's handy for identification purposes.  The fact that we're still
>> looking at the ISA bus on MTL today is 100% wrong because most (maybe
>> all?) MTL platforms don't even have a PCH (so that ISA bus might be on a
>> different die that we really don't care about at all).  For MTL I
>> believe the NDE and the SDE's I/O are both on the same SoC die, so we
>> should really just be making our decisions based on IP version and/or
>> graphics device ID.
>
>I think ideally SDE would have its own IP version/etc. we could
>use to identify it.

maybe some future platform

>
>I'm not really sure why we even started down this "fake PCH" route
>since we never added that for BXT/GLK either, and they managed just

it was originally done for the discrete cards, I think DG1, and got
extended to the next ones. Differently than BXT/GLK it doesn't work
at all to try finding the ISA bridge as that would end up matching the
wrong one.

Lucas De Marchi


>fine without it despite keeping a bunch of the logic in the SDE
>register range (instead of moving it back to the NDE range).
>
>> If I remember correctly, LNL moved the NDE display
>> to the compute die, but left the PICA on the SoC die.  So assuming the
>> SoC die is still where the I/O happens (I don't have the platform docs
>> open at the moment), the PICA ID could potentially be used to
>> fingerprint the die for the purposes of die-specific workarounds.  It
>> might even vary between different SKUs of LNL, MTL, etc. so we really
>> need to dig into the platform specs to figure out the right course of
>> action (the graphics bspec doesn't cover that high-level platform
>> layout).
>>
>>
>> Matt
>>
>> >
>> > Lucas De Marchi
>> >
>> > > able to get by so far with just matching PICA behavior on the display
>> > > version rather than on its own version, we can just use display version
>> > > for this as well, at least for now.  We may need to revisit this all
>> > > down the road once we have platforms with more possible combinations of
>> > > these components.  Of course we really need to rework the SDE handling
>> > > in general (and break its assumption that SDE behavior is tied to PCH on
>> > > modern platforms), but that's work for a future patch series.
>> > >
>> > > I was originally wondering if we could just reuse PCH_MTP here, but it
>> > > looks like there's one place where we setup HPD interrupts that needs
>> > > different handling.  So this should be good enough for now, and we can
>> > > revisit the whole SDE design separately down the road.
>> > >
>> > > With the minor commit message fix above,
>> > >
>> > > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>> > >
>> > >
>> > > > PCH entry for it.
>> > > >
>> > > > v2: Match on display IP version rather than on platform (Matt Roper)
>> > > >
>> > > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > > > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> > >
>> > > > ---
>> > > >  drivers/gpu/drm/i915/soc/intel_pch.c | 5 ++++-
>> > > >  drivers/gpu/drm/i915/soc/intel_pch.h | 2 ++
>> > > >  2 files changed, 6 insertions(+), 1 deletion(-)
>> > > >
>> > > > diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
>> > > > index dfffdfa50b97..240beafb38ed 100644
>> > > > --- a/drivers/gpu/drm/i915/soc/intel_pch.c
>> > > > +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
>> > > > @@ -222,7 +222,10 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
>> > > >  	 * South display engine on the same PCI device: just assign the fake
>> > > >  	 * PCH.
>> > > >  	 */
>> > > > -	if (IS_DG2(dev_priv)) {
>> > > > +	if (DISPLAY_VER(dev_priv) >= 20) {
>> > > > +		dev_priv->pch_type = PCH_LNL;
>> > > > +		return;
>> > > > +	} else if (IS_DG2(dev_priv)) {
>> > > >  		dev_priv->pch_type = PCH_DG2;
>> > > >  		return;
>> > > >  	} else if (IS_DG1(dev_priv)) {
>> > > > diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
>> > > > index 32aff5a70d04..1b03ea60a7a8 100644
>> > > > --- a/drivers/gpu/drm/i915/soc/intel_pch.h
>> > > > +++ b/drivers/gpu/drm/i915/soc/intel_pch.h
>> > > > @@ -30,6 +30,7 @@ enum intel_pch {
>> > > >  	/* Fake PCHs, functionality handled on the same PCI dev */
>> > > >  	PCH_DG1 = 1024,
>> > > >  	PCH_DG2,
>> > > > +	PCH_LNL,
>> > > >  };
>> > > >
>> > > >  #define INTEL_PCH_DEVICE_ID_MASK		0xff80
>> > > > @@ -66,6 +67,7 @@ enum intel_pch {
>> > > >
>> > > >  #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
>> > > >  #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
>> > > > +#define HAS_PCH_LNL(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LNL)
>> > > >  #define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTP)
>> > > >  #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
>> > > >  #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
>> > > > --
>> > > > 2.40.1
>> > > >
>> > >
>> > > --
>> > > Matt Roper
>> > > Graphics Software Engineer
>> > > Linux GPU Platform Enablement
>> > > Intel Corporation
>>
>> --
>> Matt Roper
>> Graphics Software Engineer
>> Linux GPU Platform Enablement
>> Intel Corporation
>
>-- 
>Ville Syrjälä
>Intel
