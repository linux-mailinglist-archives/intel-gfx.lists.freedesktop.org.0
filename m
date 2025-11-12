Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEA4C53600
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 17:24:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E20A210E0DD;
	Wed, 12 Nov 2025 16:24:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RY7rlRm1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2598210E04F;
 Wed, 12 Nov 2025 16:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762964682; x=1794500682;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=9cDd+079vlBNOBzqEssHTb3ZPWYvH6Wd6eS+K9CXRSU=;
 b=RY7rlRm1NkVsmzCS27+aKrPMr6Oa69jxJ+wzrs7TrHZMjuEAtyJ6gAJt
 cQcALqs/kNsB5Y6zEC+PyIQz2HaTBeBAxG85zun6Jup77nPVwkL6d40xv
 kYIJgFX22U3WW9XPDdEqatlk2HP8RiLG5Hi2sNpbzbpgCuSX5aFUPcMGz
 6wUa7prSpQtWSKcWnUTDY7PeJZFEVQJu/qUr+0Req9MjrRDbgX+vz535I
 I1VL+Y8qy0Tiw5EL1/QMCfEvXZ8x+3w3XruO2+UKxT3ANT4At7r3xQ7TL
 y57pELZvZa1uzmhBLqLPHRltaAoshFz4bPeOpJEGesZD9+yLLna2XIg9Q Q==;
X-CSE-ConnectionGUID: 2yeG4IzUR7Ski9WMreC80g==
X-CSE-MsgGUID: 3bQsR7GiQzix6xEMswYe+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="75339464"
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="75339464"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 08:24:41 -0800
X-CSE-ConnectionGUID: 5jsCDB5zSoG/gOnfmoIozg==
X-CSE-MsgGUID: 3w5WH2mKTrWvpA4Vf3JRoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="193651660"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 08:24:42 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 08:24:41 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 08:24:41 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.70) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 08:24:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DlOBbHVyAqpaF3ybWSg/eDy/z6EyLikrWoq4l0AHWkItG3Q90y6dYXOI0/XUuoPHAFp+P/I3Yk9zCVLRFi4v5Zwp15onRZNoGW5vBh9pUiDaSLZdAvoHlKuT6J2RE9dcDxS7ry1ShVkNT3sbMGP98OeaM1FnUCVCx0brqfgYoqo9fEXqAhfHx0CA/ZItUF01hCnUJM+Gr6oBm6b4vSAE/tNR+Te6CMTQQouKs88uSVg1FKelIhOGWQE9VNIRTK5e+4TYQ/XH5iGEqHR/dvB3c7a6Xd10ckarh5oU8PM0oucIczFCyIAiCoa7X0ikIVJLw4PNgx4Shn1B03npBmGoaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SSzJqdaCRG6Hu13nPQHCaG6kxAZVIZN0Qkpd11pcX4I=;
 b=pDeKOcYLYy8laesdx0q/AVY3Hkca0lKbyElQ1Md9G4lG9n71aZp7BcHQzhUjEc27+VYTDzNPzKwIK3A5bNYaPuS1CN8QR1gjl9rtOiSbp6ft/dnM82ZLt8D+dw3LtHdO7gNj1Lw0Oika04qR4aI3IROeiQ/TGAtJrg389RL3inxtHOwAG6ScWL5X9DJe35sNAxHXjm5oaSXYDwVpf63BoWy8WDCGxbEcamr5/yENvnWJJgDlx2m0VsFAO4S5bWh8ttSMSsn7SXPMS2LEvt8Ee9iSEe6avOXf32Hhl+sIsw4Plzy88ty0D8umgZexH2Kg+HDZfmQdS3uuBoQc+tSI8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6462.namprd11.prod.outlook.com (2603:10b6:930:32::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Wed, 12 Nov
 2025 16:24:38 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 16:24:37 +0000
Date: Wed, 12 Nov 2025 18:24:30 +0200
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v4 04/11] drm/i915/display: Handle dedicated external
 ports in intel_encoder_is_tc()
Message-ID: <aRS0vlGbTdn9m8dm@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-4-ab3367f65f15@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251107-xe3p_lpd-basic-enabling-v4-4-ab3367f65f15@intel.com>
X-ClientProxiedBy: LO6P123CA0004.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:338::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6462:EE_
X-MS-Office365-Filtering-Correlation-Id: 697cfa6e-a34b-43fa-c3e9-08de2207f956
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qKY3ufcEPyWF1/jCK1yBL8XXEn7468tjzJgw55e4ir0Xy0YTvYdsioWuvXU7?=
 =?us-ascii?Q?SsoWIdNtJ4MKeTNb+xE38Y9TgjNqRV3pPgPctOGnVvIBob6UmGA6sKTWMn7t?=
 =?us-ascii?Q?fWXdFhtX9S/X0xjDRYCWUGIH8LrrfSdBbKRUdhDBXLn2YL5AsVtc8Pdc/Lyl?=
 =?us-ascii?Q?4HcBLsGRNllPYXBT3rjGYrLV7Tc06R22+LShixTO+fp4JOGc63aMu6P5D44u?=
 =?us-ascii?Q?+Dqbtbu/H51GLV6bX6cumuNbOqKmKFnU+sPZmtAP5SWEM90t08Gu7KdrHhJg?=
 =?us-ascii?Q?Zj8AcH5Y7mz7BODfLgQyPs3wMGIqlvwK5ShHqwmabvHR1h+IZjJtPpbfx1n/?=
 =?us-ascii?Q?mj6jnVpE4A+2niHb7puybkgAQ/L20nTrA0+WrwI2AudnLN1HNMOSli337jAE?=
 =?us-ascii?Q?3J+IKQ/EFV2XobW7qJcR6+OzmEODWMNkCY+biIZ3TmsiQTbTqps8gz9c7qKC?=
 =?us-ascii?Q?FLMOYgyeanl60B8XhuMPdz2vkr+so6UgpCg368eWo3gj1LOIZx6gphz5dYxH?=
 =?us-ascii?Q?Kgu6aHegYFojC2lhGcSEtSB+Tx3mTJUR3C8QprRV3V/NTNKTalhqQCAu6myz?=
 =?us-ascii?Q?Tg224zIUGoOc51qACTxkKibggfRRImFaqeEi4oCBWQaXAWlU7U+GTd93ErFg?=
 =?us-ascii?Q?ybaEsTVQQzY5gc8IBkmtbW9pDGgO9GpJ9+Z9jIw6VP3jjiibLbOj1P6SHbc6?=
 =?us-ascii?Q?xREFowp0t+N1aNj9dNTTstcl/rrUkI3qe+lMk2w4Y8eU7LOAoZoPuDTJftn6?=
 =?us-ascii?Q?mKM217h0FDuGD2E9R58B/EwqSNKegS8dVtgDLrgINXwCZTF2M6nqn/pfOMQg?=
 =?us-ascii?Q?cDifulzJXkrLr79TMvqzcBcZbIiUknB21TKlalh7a2yEowGK/YUIwmpFEkMF?=
 =?us-ascii?Q?z7/fqsg9pAyshcrKQlGid03gJJazihrDIdjK/cRbwo5OMEuZj/XC8FU/Pqlz?=
 =?us-ascii?Q?+/laipPkVb4HnGRwmLeCLcNrG/cvA2HSW0frIom/0dXk+OXKavJzm49VGeb5?=
 =?us-ascii?Q?LxXL+3/SdQaty8m3P+o8ufRa5PpNj/fwMfuquy5nQNFPNxn094R2urpv4S9F?=
 =?us-ascii?Q?3Oh8qImtK1DgFyx9WbdB8spI4Uha1BE9559rEazVKlFcRIEdTYZP2pVo22nv?=
 =?us-ascii?Q?i0w84Bft+AbvVFQ3rdI2lKw2hD6UAFDoZg2sxeq7HZsvPC3EHzDHuTbONj67?=
 =?us-ascii?Q?W4bi9EPoxjvYV6qsmJDX2WQ9HO6Vxs6wdkOJBYLngYZ1Fp8xChWLvO6Ef3Nv?=
 =?us-ascii?Q?emGqm2Xks2JNfW/J5f6/I8ig/TCIokoKRDJeDKdyw8MVFdONq1/DpXUGf804?=
 =?us-ascii?Q?2LRtWdJ2F/AUrbXttVZk+FxAyIgUXe7vQGH2MgbhWYOTq0HN0cfONMnmy78V?=
 =?us-ascii?Q?CDLiDEcojMWjJ8RvYaTAHlheAxTS6QSVwcL65wHBMigBBsKZni9nZ2IqVRGh?=
 =?us-ascii?Q?9WYS5wDs83YJFyNZhg5MV3i4y3GfghXD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2pisQlSCYIL9V1AsmuJCQZ8lNCJEo6c6pWy7vFaH8oVpEVG1zMNK7QhXIMSz?=
 =?us-ascii?Q?OG4GKiU+OCsSHavvf9QGZtEPmxFeVqacjPVi9qhwPyxOwvT2YD0HNo9GVPCa?=
 =?us-ascii?Q?l8v1i9/iH3na0c+CateJc6FAGqnBSz8yzHm0fQClDTqFImLqTcPvJEAdHC28?=
 =?us-ascii?Q?xUmMfVdq7v2Lp5QXI/D04h2RfqqqS6/Kl5QV51zxUBbtlZCdhqgwZPEYMAyr?=
 =?us-ascii?Q?6FIYjiisYFKbbMQyn0kE3JQUmcbCuYqM8CpKld9gA4U2o+uAo7UGovXrHEEf?=
 =?us-ascii?Q?bCo/yJNZkm79SMqvEHcBd8pgWvYpbZJl5Jn50MbYa/+BhkXs+GG4OoBv41j+?=
 =?us-ascii?Q?s19yLdMJz5+W4kp2quboPrXMSY2YdnSO1U9ZAgcEGj8LqVbMtgTiiHVJucu6?=
 =?us-ascii?Q?JuVi5hFwKZz85C/4rT15CZBjp6D70JxuIA70U4+YMmqjjqvc68GEL47bxPv/?=
 =?us-ascii?Q?i84cBBbGJaleMik/Fp9vbgsLV9aaHESUCDwTjRg8Sgy+Fp54jz00l+3Tm1j1?=
 =?us-ascii?Q?rBBw+CjG4rRCyAbbzrxfqUFKvgst/p5/cV5lU1Xl57XqsSJuVbglEF990OXR?=
 =?us-ascii?Q?FigSdTe7UfTjB9OARU+qWmibsMCRBFjEIHaXVgzxVLONhhUFXHwOz9lMIxxP?=
 =?us-ascii?Q?Tw8It20PC9z7LZZiCvCek3swoyraR6tgasn8nBeKLnUzqDJv13+FJ2Q4SDvI?=
 =?us-ascii?Q?vhK+2FumgQSWerngnZp0FkMIGV+oA76uZEw673R2JBHeOGVPSLZtKSprCd1L?=
 =?us-ascii?Q?I/rLltprKZ7BLnRNjb71iB9CEgaEnDASxFc3jrlwlrkrPDzqPDmtLyL3y8ZV?=
 =?us-ascii?Q?8Fv3U+USeuYm7pJmOs8R6kR+G+PGvcPX2VZIoed/fwf686glUvvV79xOP1Ih?=
 =?us-ascii?Q?7wu4r0+DX7LLfQqmd7CWaEsR+ckCKQx6IGUMfKl3WWgF/11eyNdAfz9Dbt0L?=
 =?us-ascii?Q?WFKIe+RjKuG1BOf8iccKg+W5CsO5cJSzJU5Cuyh3cm5RU6d2XRHAV+PAzan7?=
 =?us-ascii?Q?LiZ6siu+5DTeAyoLMwXGnEvmveGzDLBSWWkKVFeVonZbibyR9Y/qoQ75hyTl?=
 =?us-ascii?Q?O4NlWRZuSwMJLzJPgyHfOZDQhUd6JzBPfwENFkZDYyRFytjovAjHf6vta+t4?=
 =?us-ascii?Q?ebncbW800/A3Xh2vhaww2GqdBZw2Kcp0W/B02qpmK7u5S7AvLK2GZhO0YF0r?=
 =?us-ascii?Q?Klj7+EtxTo1Nrw9yKZWVuy4Iz3JXhAQjjhWaLDirJL/3wEYZw1wx4rhYbQGS?=
 =?us-ascii?Q?HFDCnhH60S7TWxO5sRbpvEZFUv/kX5W671FBMI4rbTW+1/cMQgNFzT27619b?=
 =?us-ascii?Q?WSiFZNtvrxdrkrvFJBRHjR+T2tGon9iEBagtMlozBjyW3he1Uk7Xoh785AEd?=
 =?us-ascii?Q?vI8+AolP7rqkgLdZSY0JL6RUkt/xTee9cG4dsI7mm7/pPvjo2xLtRxAx2ouF?=
 =?us-ascii?Q?zQ5oUYV6hBZBrFKQVDHCOld/EQkVsG27j6Ase55PGty0LxEcYxhyfhpdTkm1?=
 =?us-ascii?Q?P1fn0vpGq/iFLBYVB4TrxH7QI2aDuQ2bW8oTYvZFxJp3RfnpsE4JvOlLfbPZ?=
 =?us-ascii?Q?k+NxpZ6X0bVeS306ING4hl4AQd/X5rf3FSOzMffebrRQ4ZjF1qAJ+5+eqEEE?=
 =?us-ascii?Q?5irta3c1tmtdzkKg1/PVq6GGQzLx9Pq7R4xd3Qo/zS41?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 697cfa6e-a34b-43fa-c3e9-08de2207f956
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2025 16:24:37.8866 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RVNSNiei1xpbxSdxvsqQSVwVwx7ivfuB2Gsd+/gzYAXpyM8A7R71uJFFXIRe0SvYscUnG44eCWHa4mQyIB25LA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6462
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

On Fri, Nov 07, 2025 at 09:05:37PM -0300, Gustavo Sousa wrote:
> Starting with Xe3p_LPD, the VBT has a new field, called in the driver
> "dedicated_external", which tells that a Type-C capable port is
> physically connected to a PHY outside of the Type-C subsystem.  When
> that's the case, the driver must not do the extra Type-C programming for
> that port.  Update intel_encoder_is_tc() to check for that case.
> 
> While at it, add a note to intel_phy_is_tc() to remind us that it is
> about whether the respective port is a Type-C capable port rather than
> the PHY itself.
> 
> (Maybe it would be a nice idea to rename intel_phy_is_tc()?)
> 
> Note that this was handled with a new bool member added to struct
> intel_digital_port instead of having querying the VBT directly because
> VBT memory is freed (intel_bios_driver_remove) before encoder cleanup
> (intel_ddi_encoder_destroy), which would cause an oops to happen when
> the latter calls intel_encoder_is_tc().  This could be fixed by keeping
> VBT data around longer, but that's left for a follow-up work, if deemed
> necessary.
> 
> v2:
>   - Drop printing info about dedicated external, now that we are doing
>     it when parsing the VBT. (Jani)
>   - Add a FIXME comment on the code explaining why we need to store
>     dedicated_external in struct intel_digital_port. (Jani)
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c           | 11 +++++++++++
>  drivers/gpu/drm/i915/display/intel_display.c       | 19 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>  3 files changed, 30 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 733ef4559131..d9aaeafd1570 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5376,6 +5376,17 @@ void intel_ddi_init(struct intel_display *display,
>  			goto err;
>  	}
>  
> +	/*
> +	 * FIXME: We currently need to store dedicated_external because devdata
> +	 * does not live long enough for when intel_encoder_is_tc() is called on
> +	 * the unbind path.  This needs to be fixed by making sure that the VBT
> +	 * data is kept long enough, so that
> +	 * intel_bios_encoder_is_dedicated_external() can be called directly
> +	 * from intel_encoder_is_tc().
> +	 */
> +	if (intel_bios_encoder_is_dedicated_external(devdata))
> +		dig_port->dedicated_external = true;
> +
>  	if (intel_encoder_is_tc(encoder)) {
>  		bool is_legacy =
>  			!intel_bios_encoder_supports_typec_usb(devdata) &&
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 25986bd8fbdd..431f7f030a9b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1800,7 +1800,17 @@ bool intel_phy_is_combo(struct intel_display *display, enum phy phy)
>  		return false;
>  }
>  
> -/* Prefer intel_encoder_is_tc() */
> +/*
> + * This function returns true if the DDI port respective to the PHY enumeration
> + * is a Type-C capable port.
> + *
> + * Depending on the VBT, the port might be configured
> + * as a "dedicated external" port, meaning that actual physical PHY is outside
> + * of the Type-C subsystem and, as such, not really a "Type-C PHY".
> + *
> + * Prefer intel_encoder_is_tc(), especially if you really need to know if we
> + * are dealing with Type-C connections.
> + */
>  bool intel_phy_is_tc(struct intel_display *display, enum phy phy)
>  {
>  	/*
> @@ -1885,6 +1895,13 @@ bool intel_encoder_is_tc(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  
> +	if (intel_encoder_is_dig_port(encoder)) {
> +		struct intel_digital_port *dig_port = enc_to_dig_port(encoder);

Just dig_port = enc_to_dig_port(encoder); ... if (dig_port &&
dig_port->dedicated_external) would be simpler and would be also more
consistent wrt. MST encoders.

> +
> +		if (dig_port->dedicated_external)
> +			return false;
> +	}
> +
>  	return intel_phy_is_tc(display, intel_encoder_to_phy(encoder));
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 00600134bda0..8bf392bc0d5d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1937,6 +1937,7 @@ struct intel_digital_port {
>  	bool lane_reversal;
>  	bool ddi_a_4_lanes;
>  	bool release_cl2_override;
> +	bool dedicated_external;
>  	u8 max_lanes;
>  	/* Used for DP and ICL+ TypeC/DP and TypeC/HDMI ports. */
>  	enum aux_ch aux_ch;
> 
> -- 
> 2.51.0
> 
