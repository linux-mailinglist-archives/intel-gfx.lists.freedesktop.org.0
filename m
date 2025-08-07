Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 207C6B1D6CE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 13:38:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8F5510E809;
	Thu,  7 Aug 2025 11:38:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j4LUwuVT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFBA910E809;
 Thu,  7 Aug 2025 11:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754566712; x=1786102712;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=mzopvIR7zaqV/g95ieaylfH6CE6g8lCqHDbXgPxXDnQ=;
 b=j4LUwuVTGwSfiXsJ2LoRnkIXSjDujXwbfyqZqpUNL9/swpbRgnLRXtWJ
 FI9+CmTzb3pPp+7Nnj9yIYK1PkN8o3xqiSRoy9BtrertMdMUko2bT7RNB
 APXIdgVOSxC4yxBhxXAyxffORVOhZLm8Bb3V37lAikH06+yy9MaBRzBC6
 YzYVHRv4B5lWEosBZc5XGtwq14amlZYmqUKdyDFNks6u8Fxa/LqXsRpod
 2ceBZ+iOBH2e8WOy/Rp83ErQAYETtNHpz8K9zQGXIGrl7/GUqx2c2HSL5
 wlW2RnyJUx2siBiL4Btlt3+UfleM29Mc1AIv5rUwcfxp14il1cDYXEZem A==;
X-CSE-ConnectionGUID: o0cJ70ZYTZiPFaCvdNFLIA==
X-CSE-MsgGUID: QBxmcdwmTRqSz/zlQDJBhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56109132"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="56109132"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 04:38:31 -0700
X-CSE-ConnectionGUID: ktvlKIzyTkmTOJ4z7FGZqA==
X-CSE-MsgGUID: zALmaB5USs2kQmbGdopihw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164937524"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 04:38:31 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 04:38:30 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 04:38:30 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.67)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 7 Aug 2025 04:38:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=en/6yche6YvJZBcUKqOMr8RKSeyPK9qAck+V+vvANafKy2ddtT30rxmD1WfBPVvyw7CP8fautiez1SuRGSu3KUeDUJ03UnzI8jdJwiIjkjaVKohqbqLUVJGkIl4dA9M9rIFWCLZm9LYQqH7Y/rYU9sc50t5iWgc2zsL9CTsr/nsNene6OGCNQHxJZiKgpNGAMx76vFSvGp+lFVSVbYz4uioS1J/q5r9JfEaFRznYIFvMGxFCIiyQJHCiQPTUFzspB76sf046BG+DxHtvYeROzAQTjywlqE9t3LFDJ4K6uQoGaK000UL4VJ9thvgV37P4f9MqjtdY82nsyIWWsT2bRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0gPbb8sKEA4xq3ib9GqZoJdsdc4DgSlTl4/1oiMTYSk=;
 b=uJ3W8qrRo9uG+O2Ry6eY7HWy/Cv2dSOVz3aZRQ8RCpJ7RDQ65etHUeKQ/D7B+Fh38o993BObt3FTOs1nZu9OcIRrdOV1Cgy0CUje+taM58C2cxX/R2kZRRUJgJNLuwYufdiI5TtG5TtwrffZbf0cuBXebZi8/AebHfoxZ73awbqR/owbSp86N4mCPppaWkeKwkzwjlh1Ujd2pvxNG8gjIcjPtdkVegoMBwcIVto+G+Pj/V9CcpdjxZ3fvajZKIjTORKBJF/5rFPiBgZQOeiV+nUbQbgLo84wQaWP4bS3m/UkASe6fjkM5+Yl99bX6gDtr7cEOOwTR76xX2uAOQqauA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB4948.namprd11.prod.outlook.com (2603:10b6:303:9b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.16; Thu, 7 Aug
 2025 11:38:28 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 11:38:28 +0000
Date: Thu, 7 Aug 2025 14:38:18 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <stable@vger.kernel.org>, Charlton Lin <charlton.lin@intel.com>, "Khaled
 Almahallawy" <khaled.almahallawy@intel.com>
Subject: Re: [PATCH 01/19] drm/i915/lnl+/tc: Fix handling of an
 enabled/disconnected dp-alt sink
Message-ID: <aJSQKu72vVYmUd4Y@ideak-desk>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-2-imre.deak@intel.com>
 <95999d2602067f556dc2e5739758deef7c462e17.camel@coelho.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <95999d2602067f556dc2e5739758deef7c462e17.camel@coelho.fi>
X-ClientProxiedBy: DB8PR09CA0024.eurprd09.prod.outlook.com
 (2603:10a6:10:a0::37) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB4948:EE_
X-MS-Office365-Filtering-Correlation-Id: e06f76fd-a617-43db-f5cc-08ddd5a6ed12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tweEAwWUj7UJYdqVnMQOLzPgfeyYDgNAROHTqSDf9/no/SSqXdMw51zOynJ2?=
 =?us-ascii?Q?KDkHYiPNlLKVY1aXzCeQHwqB/fbwbehsVRBOVFKo0oVgntc1t0FXS4LtWAfp?=
 =?us-ascii?Q?Jrw5vN5cH1sOKoQqUXalxYNMcKMpQO8QcbLC9eOXZ+ypUsxcCqMfMlPw32td?=
 =?us-ascii?Q?Wc+IKOM9RDHTFVh5HXN8dB5PWtJTtNhH6r/kmjhuPwhS6LQjsvu5a1m8pqO+?=
 =?us-ascii?Q?aciX04xNt5lKAtqQridQ7elBli/hYqgNV1lOh2f1X3LBiXSgAGB7uoeBTo1/?=
 =?us-ascii?Q?WLL3Y4Qs7IiUjmgZnXOZ2DP/AsZV10vSdl6oFa2vWu11yhs2Gm+Tiz5giNun?=
 =?us-ascii?Q?ZQbVAxvFs6XvXiCaunxAzTWGMDrBSxjq/TdeLQqxvowAXUAVV4vwUnnQeK7O?=
 =?us-ascii?Q?R2ZW9QSrweUQ3dd2HxA2LP0DQqfT8KTnGnf4C8wQrPLctIGX8Kd/Dc/WDJQL?=
 =?us-ascii?Q?UZ+cPJv3sksVqXMI1iEmklff9wNH/NBIhLYVRMDFHPPa+4O15FvezwZfgiSh?=
 =?us-ascii?Q?s5VqFMI3qq584MN3ieFunucf7DbYW3bAZ26HA3f0bde+PSqqHFViXhBCUYHC?=
 =?us-ascii?Q?byePvdwyyQoXeoQOErpxrfkJ2b5VDCGGgK1V008LRMQ3RoCkqin7xQv/PdeY?=
 =?us-ascii?Q?jINO0uMcC7z+fvler+1qDKQbLgh+lLrontlAVW3mf9ILnF5tScA/cTRk9uaf?=
 =?us-ascii?Q?LqdEpo3MuVj02XMBHhIa2TYbaGPL07hafDbp+Yr3XVUBEg+Cr/te057scBc0?=
 =?us-ascii?Q?kGWLesSRYa90ka2pqAufAV/ew0+ImVbK0aD55Oi47J4SDR+hKcvVFmRv1XqV?=
 =?us-ascii?Q?/dooxlyk8H4FY81ZDkSG2le64rC6KHgStj489+Mi+JbIjC25EwNYvcnclrlw?=
 =?us-ascii?Q?fPTzMEesD52N7+1lIbaqsWzXBn4hcMB2fqY2UArVJlX8g3X+X4lbvDZ8quG9?=
 =?us-ascii?Q?uTmHpGWMEt7S++3dtfNgG8/sZBAX+q4r8dcAJyNj9o0Fw4KvkfUbdwgSFpEW?=
 =?us-ascii?Q?SPI/aF9TMKxkSnVDjg5s6K2LCVbS5GsLX1fvkUNLZ7hq6esaTp1qcoFBYitK?=
 =?us-ascii?Q?hBw47oGrSWpxp1LwE5aR6UiuS/nFs8VKdIEazvxTf4qs56EHp+gKVZxG8iQX?=
 =?us-ascii?Q?7B48+5/9s2Wyhbz0BrzXShNuwyDzcbPijeh4orE6Q9XqJuFiFYHXPwpgLVuo?=
 =?us-ascii?Q?S0KOYTGFIXSPvWX4ehi/N/fmgz7Itew61liQFChcagVe1WEhqk8kiTYIR9i2?=
 =?us-ascii?Q?LoEhmOAiz/vqaZOfy3OchihDl2z2R7V4n80mDcDCDtFgycZmOlwKc6PZm8+j?=
 =?us-ascii?Q?zILp5+j8Za9621MXijUhH8dFzL82GdGvx2NWoIS8VsXNFAhurfmB6IYWQ+ci?=
 =?us-ascii?Q?CSOcqJPFnMpmqZgyAPJhmEXKN17OVVDnh3RkRyOaPNwZgGfeTNF6ex0ig9pW?=
 =?us-ascii?Q?6POzxi2JAe4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iEw+AJZ9aZShSMj4krUYLT87DJiqO5jiN+jYzRhrIf5gtHa6g3H+jpZ3BPOn?=
 =?us-ascii?Q?wTWwTKetS4k/dTEVTBHh9GfSciy41lb6LJ6h3xaBU0LazIQMBGvbt0bTy7bV?=
 =?us-ascii?Q?D1vRIda6b9DXWs8SygKGVEiNAXTg0DbcEIkrqqcrTPz82wmLXJ75eD06QcG5?=
 =?us-ascii?Q?iMaKyPapRrm/jvZl3NZ154RxLTb1G6qbYw77uUPcMieKJPkS2V6QuaOXHRnA?=
 =?us-ascii?Q?vmdLPj65npBDpxhPUZzZBF/jzhDyVLVRZ9Thzns3b9sKaQ3VJNs2Hnnx3b/9?=
 =?us-ascii?Q?zrL6ZqKFfF6Nj9CpT6hYXXm+l1UD6IfvO5+52UwXxYXuqerEOglagD4lUCXp?=
 =?us-ascii?Q?NAAVG3a2+fN1B8Y2wi+yevo1hf6S+qUnIEmlKop/1mRrGJHVDCvfV+5nUtJO?=
 =?us-ascii?Q?xMlDbgMTLNBoIt6pPHw9NWPA+0VCd+bu0PJhzMGUaVW8MVYcbvqoz8/wmlgc?=
 =?us-ascii?Q?Zbl5PPWjIpd6kwdSGwLuhN4cRhXgg9J2jwKsHUfkR/zSeOXL39VbTXW1Wnl9?=
 =?us-ascii?Q?yXEU+IP3tTfsfsHM4OMsndX1iu99OrJVHbCXhvbybK6UTRKe2todk5/1hbqK?=
 =?us-ascii?Q?nAjVdiFA743wmKZ4VeyGqikdO+oLCcS+Khx2OgXjt+hcOmkco3E8R7obNp5r?=
 =?us-ascii?Q?2FzFoTHSYPn69V/XV0Ey59DaBCmowh1e6TTtaxEl4i1gQiSlqKLJFirXeik4?=
 =?us-ascii?Q?YoOhTaKELVeSXxD1CsLPpEHjX7JNy1porwAiOZDdXlYdp58uOFx4BH0+Q2/X?=
 =?us-ascii?Q?Y0g/ZtWaEH/dZgJJfHPoyVtA55AaFUpx6kovLNFysXY08CZwGUuxJ7i8IMAL?=
 =?us-ascii?Q?bkBbEro2nHaFekj5xkVqpvXpy7BChlSld/Zt4PJWFGvCAJ2AcJ96G3XKPbVJ?=
 =?us-ascii?Q?uRjwq9F4G/bx0p5XdE1O7fwt97zvTCZGVHj5qYrnD5L8NCYuCKWfItWWFFxg?=
 =?us-ascii?Q?EZ0TqjE5wpQJCJqqF6qqTS0q6CUupe54yMmaiLykWnqxLtxlUIVAdVt9whBh?=
 =?us-ascii?Q?ENHXZOAxLCRP/lGM6YGj2ofWinrh7yrQ6Sh3gCLvOSW8IaPKl7DGKV4UvfkS?=
 =?us-ascii?Q?m9hxskJnUgmBzzmQdaSJ0hh/03G0ymQBVOxKx6zTUbLJNLOM5pp+cuX+gWtX?=
 =?us-ascii?Q?zqMozrbEYd/QuCobAz6rodfsn5rORBlmlTG3CGIqEq43L6EsTMdx/VfQ6QyD?=
 =?us-ascii?Q?2iHfSBjYSGhQczXO6ENNXa5blU/HVkUiLqF5K4Mc/db/jww3EHvzn7HbsbWQ?=
 =?us-ascii?Q?+Yh885lSs9cl2Fh6af+YnCQanoQ3Ka/OnnrV8Q8IUT4SiungOdyCn2Ab5IKD?=
 =?us-ascii?Q?4FH2UrtnZbOdhS9/BYmGch4H5R/iBrShAjcSW1cvkQS0uEtw9lSv5fcVcDzf?=
 =?us-ascii?Q?yJVg1YF2GY6njcL0/CMVuy3DdnJYtJokBLf8NAuZeGwrnvwM0KUJX6NYnj5t?=
 =?us-ascii?Q?XchqzITmaRYjHKN6w5umdnqQFmxaqw2TEUIIfcLl7/hn8tlK8t/IaB147oTw?=
 =?us-ascii?Q?yztrFkcTsnmXq3+L0DoG8I++OhTxgT2DbEnVwBrKuzmUhkpt7CVMi7/mfxqQ?=
 =?us-ascii?Q?gZSPLIb8rOitp5cb53ukG6/nK1CThC2EVpxUMclTri8lfDsuhhjQYOkxrapr?=
 =?us-ascii?Q?bHEHT190Pqily3Y7vdA8Xp1h1thgNgQVBdgBJHMhBnNG?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e06f76fd-a617-43db-f5cc-08ddd5a6ed12
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 11:38:28.0754 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b6MPQwpqQLTrwAeovhOTxCP3ekyro9Nu8W5u+pK5a2tJRhah6cj+nyfd57Z5XUjdC4qUEOzi1AD+yfYmq9mEZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4948
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

On Thu, Aug 07, 2025 at 01:59:21PM +0300, Luca Coelho wrote:
> On Tue, 2025-08-05 at 10:36 +0300, Imre Deak wrote:
> > The TypeC PHY HW readout during driver loading and system resume
> > determines which TypeC mode the PHY is in (legacy/DP-alt/TBT-alt) and
> > whether the PHY is connected, based on the PHY's Owned and Ready flags.
> > For the PHY to be in DP-alt or legacy mode and for the PHY to be in the
> > connected state in these modes, both the Owned (set by the BIOS/driver)
> > and the Ready (set by the HW) flags should be set.
> > 
> > On ICL-MTL the HW kept the PHY's Ready flag set after the driver
> > connected the PHY by acquiring the PHY ownership (by setting the Owned
> > flag), until the driver disconnected the PHY by releasing the PHY
> > ownership (by clearing the Owned flag). On LNL+ this has changed, in
> > that the HW clears the Ready flag as soon as the sink gets disconnected,
> > even if the PHY ownership was acquired already and hence the PHY is
> > being used by the display.
> > 
> > When inheriting the HW state from BIOS for a PHY connected in DP-alt
> > mode on which the sink got disconnected - i.e. in a case where the sink
> > was connected while BIOS/GOP was running and so the sink got enabled
> > connecting the PHY, but the user disconnected the sink by the time the
> > driver loaded - the PHY Owned but not Ready state must be accounted for
> > on LNL+ according to the above. Do that by assuming on LNL+ that the PHY
> > is connected in DP-alt mode whenever the PHY Owned flag is set,
> > regardless of the PHY Ready flag.
> > 
> > This fixes a problem on LNL+, where the PHY TypeC mode / connected state
> > was detected incorrectly for a DP-alt sink, which got connected and then
> > disconnected by the user in the above way.
> > 
> > Cc: stable@vger.kernel.org # v6.8+
> > Reported-by: Charlton Lin <charlton.lin@intel.com>
> > Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_tc.c | 16 ++++++++++------
> >  1 file changed, 10 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> > index 3bc57579fe53e..73a08bd84a70a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > @@ -1226,14 +1226,18 @@ static void tc_phy_get_hw_state(struct intel_tc_port *tc)
> >  	tc->phy_ops->get_hw_state(tc);
> >  }
> >  
> > -static bool tc_phy_is_ready_and_owned(struct intel_tc_port *tc,
> > -				      bool phy_is_ready, bool phy_is_owned)
> > +static bool tc_phy_in_legacy_or_dp_alt_mode(struct intel_tc_port *tc,
> > +					    bool phy_is_ready, bool phy_is_owned)
> 
> Personally I don't like the "or" in the function name.  You're
> returning a boolean which is true or false.  The return value is akin
> to answering "Yes/No" to the question "Is it black or white".

The question the function is meant to answer is "Is the PHY in legacy or
DP-alt mode?". The return value is true (yes) if the PHY is in either
legacy or DP-alt mode, false (no) if the PHY is neither in legacy or
DP-alt mode. There are many other uses of "or" in function names in this
sense, so not sure how else I'd name this one. Simply leaving out "or"
would make it less clear that the legacy and DP-alt modes are two
separate modes.

> This is a nitpick, obviously, so I'll leave it up to you.
> 
> Regardless:
> 
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> 
> --
> Cheers,
> Luca.
> 
> >  {
> >  	struct intel_display *display = to_intel_display(tc->dig_port);
> >  
> > -	drm_WARN_ON(display->drm, phy_is_owned && !phy_is_ready);
> > +	if (DISPLAY_VER(display) < 20) {
> > +		drm_WARN_ON(display->drm, phy_is_owned && !phy_is_ready);
> >  
> > -	return phy_is_ready && phy_is_owned;
> > +		return phy_is_ready && phy_is_owned;
> > +	} else {
> > +		return phy_is_owned;
> > +	}
> >  }
> >  
> >  static bool tc_phy_is_connected(struct intel_tc_port *tc,
> > @@ -1244,7 +1248,7 @@ static bool tc_phy_is_connected(struct intel_tc_port *tc,
> >  	bool phy_is_owned = tc_phy_is_owned(tc);
> >  	bool is_connected;
> >  
> > -	if (tc_phy_is_ready_and_owned(tc, phy_is_ready, phy_is_owned))
> > +	if (tc_phy_in_legacy_or_dp_alt_mode(tc, phy_is_ready, phy_is_owned))
> >  		is_connected = port_pll_type == ICL_PORT_DPLL_MG_PHY;
> >  	else
> >  		is_connected = port_pll_type == ICL_PORT_DPLL_DEFAULT;
> > @@ -1352,7 +1356,7 @@ tc_phy_get_current_mode(struct intel_tc_port *tc)
> >  	phy_is_ready = tc_phy_is_ready(tc);
> >  	phy_is_owned = tc_phy_is_owned(tc);
> >  
> > -	if (!tc_phy_is_ready_and_owned(tc, phy_is_ready, phy_is_owned)) {
> > +	if (!tc_phy_in_legacy_or_dp_alt_mode(tc, phy_is_ready, phy_is_owned)) {
> >  		mode = get_tc_mode_in_phy_not_owned_state(tc, live_mode);
> >  	} else {
> >  		drm_WARN_ON(display->drm, live_mode == TC_PORT_TBT_ALT);
