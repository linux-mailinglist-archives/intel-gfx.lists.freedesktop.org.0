Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8675AB1D7F0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 14:33:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F61710E828;
	Thu,  7 Aug 2025 12:33:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b4nIYSBx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D10E10E82E;
 Thu,  7 Aug 2025 12:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754569988; x=1786105988;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=6jACGKCH0nFkR5SxsZleziQjw8a4cTJn9NCF44PNobI=;
 b=b4nIYSBx3yw9/kFMrxT/qa5L2bvS4CI5aETFPOqChV7PRz+3bhCWPV25
 7FlT0h7uA/CIDgS0kGL2QjXU0jmroyPDcn8PuSRzQWRnsw8hEnXwlUPsF
 zjkpn2Sgyq6JnRYLmLjehRj+UeIr3H/5ElyBNtePJdKA4MZrWl3MlBjdB
 6XO+msbql/qtsGtg7Tm6zi8XEupqVfDKf/hULhYJbJwpLm3WjfCSCuQL3
 cgHfurwPTEKF4rDMR6Z+3Ns7Wbzsu7Q+Ia1BtD0m96pfN9ANw6pCUrcwo
 qqNHd/VxCYnTcrHNlP/Me8ZioY4XHO9bxdtsqRpa69+R1zt9AViJ4oPeW Q==;
X-CSE-ConnectionGUID: dlyHG9XPRkqqc6UMarSh2w==
X-CSE-MsgGUID: YMw1VymIRMiyCIRb4J5low==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="59517867"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="59517867"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 05:33:07 -0700
X-CSE-ConnectionGUID: ZiTceJs0Q2CCTwh3ZnOfTA==
X-CSE-MsgGUID: Fm0yy5QtQbWe9SXW0gE3dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="169173211"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 05:33:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 05:33:07 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 05:33:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.75)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 05:33:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DmFIXUMfgXwo0rBokulGc69BlUgQbTLnJCYlPr+0DMyg6YP6vARq8aLnMX+cr4OTSz2WtZWwRZ18dEeeYIm77CCVt++GTQ03iwzzIwga5plpLqSC2eQo5geYaVKmbp6gQEzeQZYsohVp7y5BL840iPE4HXFdQlwMzIJJzLNghEV0RXWHZ1xjGr2J2sXfnZmeQe9AkCPzm3z3LaMg7iqAr2IDCGA1uqk/Pqbl+RAr0oivbI+uxPejAveWj/qZZ6rJFVz+gU0ws8SJ9SNJd0icihUDuVKZJPfmEBB4QR4R/6hleywJcIciQ4T9jaAh1vWwQU/oENel1OMYXR9JTnGPow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xs8ZkQ+0zsR123om62gxMIbL4bA2lhDmMoN6ctR3hI0=;
 b=VOdi9ZEp4EAz9OXxPLOm9BJIghR8Szyl2Sw90XVNbpuE6Fc9qi+/IM9P6jWGR/HfM1RAIfDXs2QP/DnRb46qHFDusGuz0crkp3AvQw/W2KmA3rIzf2TZv0qTZJPOnqJjS/Y4ssA/2TG804dMldq4Hds3cbWOEpxFooyigdlEKDvzsRH3SWiNPJYZmGEY4evl/ynPLOfXJUraiOdjkmARodOef6/xEy6mOsAdTLkW4e6ZWie9K/Pxi7PAzTTKtf9NFOHcJXWFGQc7jg3l04BYdSItgukSfTgGKBUBQaM3YFlChNtKH73w3Hb+uS16DRQTSdY/KepqIxCHp65QLjmm+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by DM4PR11MB6311.namprd11.prod.outlook.com (2603:10b6:8:a6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.13; Thu, 7 Aug
 2025 12:33:03 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd%5]) with mapi id 15.20.9009.017; Thu, 7 Aug 2025
 12:33:03 +0000
Date: Thu, 7 Aug 2025 15:32:53 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <stable@vger.kernel.org>, Charlton Lin
 <charlton.lin@intel.com>, Khaled Almahallawy <khaled.almahallawy@intel.com>
Subject: Re: [PATCH 01/19] drm/i915/lnl+/tc: Fix handling of an
 enabled/disconnected dp-alt sink
Message-ID: <aJSc9UaVwn132FqX@ideak-desk>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-2-imre.deak@intel.com>
 <95999d2602067f556dc2e5739758deef7c462e17.camel@coelho.fi>
 <aJSQKu72vVYmUd4Y@ideak-desk>
 <d8e9cabb243cd8bbe7ac942d117146bf7f68b631@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d8e9cabb243cd8bbe7ac942d117146bf7f68b631@intel.com>
X-ClientProxiedBy: DUZPR01CA0191.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b6::20) To CO1PR11MB4834.namprd11.prod.outlook.com
 (2603:10b6:303:90::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|DM4PR11MB6311:EE_
X-MS-Office365-Filtering-Correlation-Id: 926130c7-d90a-4e4b-1dcd-08ddd5ae8d0a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|10070799003|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/6Oq/kSNJj4Byxw1bGto26sxMQdA1nN1Xp9MGBdNPvrPw6UOGQs2O8iYDGxp?=
 =?us-ascii?Q?INVT/4yiyFP2V+HOuISIop+JdySFyHM9EzFlOJ1eszxT8JWqlFsD/Vyhgz1z?=
 =?us-ascii?Q?ocVMKLF2GUM2dZKin/gFCoxJFtYNfavyROp6yKO3APmHbnuqt7vo/8B7MJat?=
 =?us-ascii?Q?p5syb8cVW0SQu1WoO0ML9UJv8T3WiZvB7TpnaukjkYqd4BXy9gRs9K6s8WZP?=
 =?us-ascii?Q?i1OqSJ7uMRJc0XG3tyQFxUoegi1MgSxHYn5zUjpZD84oz+24JLZ+FBVva9PJ?=
 =?us-ascii?Q?F9005MqlZEyOh2OnzzuwyzZNPXWqrYAMZuk99reXwTtIHoeFZ06CvDv91PfC?=
 =?us-ascii?Q?Qdvzz6fAA3U8MQIIxkeUDx+j0iO20coYCaOJBYCOPTketNGRwK23juWY1Mhm?=
 =?us-ascii?Q?TLHRJUIZwn519FlFdqh0xUwuoRo+Op3a4h24G9DPpwrG6VGua/vzprVL+gun?=
 =?us-ascii?Q?24SOX19jSD2iN20izcijbBRuBfeSJQvuYeDI4U5+uYLlb9xMz9fOrvauI+hJ?=
 =?us-ascii?Q?KaUGdSDWzAmKSBDGtYG1CwmN17dSdFPUXXdghKWff2wO4vz81l36+AMCmoPl?=
 =?us-ascii?Q?0XELMpuE3cDWxX64djlAmC4wlfPNL0GU6oQuIRGq0mLk0fXvAXX61rYTKndu?=
 =?us-ascii?Q?+AVEZVSh8fB/rLF+n5rV1nOvvdC/ffbMmgLgzv1LHH6YisI64KXxbyCyIe1Z?=
 =?us-ascii?Q?/zqPtA8x61fbHQ5m5ydoEwf9/OZIyV1J/fjEaHmmez5FHFlHoDhKfmoEMemd?=
 =?us-ascii?Q?UyQ2MN5qYdLql0cgaqRuGYEI4Vu6WoOLw8fyV/M/yir9F2OqZtNqGbzx+2Vu?=
 =?us-ascii?Q?E4RlZH+YGVqhP4OCKMtWAVh7oQmnMTXJf3pjL73gfEaSlGYdPHMu6Sb8r27H?=
 =?us-ascii?Q?R/gOBTVlpfv18qjEvh65Q0Qf4FX7SV/NsAxAGgKlxhWKLYAVak2da55uouvc?=
 =?us-ascii?Q?lf+0P7cAcvXOUqrG0wsBirh7VCFFGRp1DtkMScY+ZeU3Rhh+daIf06fLofZa?=
 =?us-ascii?Q?EmUtG2WLhtTdL7bQxsgu1ETm3LnCl1O2PN6wVGCixKEQ/1Y7wFpYzKd1TwLa?=
 =?us-ascii?Q?iPW/ra9LId/MANeCV578zxsTU+n/yPrJwbSgWD6NJ3fcr2JY2tnTl8+FQgCH?=
 =?us-ascii?Q?nxzDBCUeJLg8PJd1WOLV2ubRfVUD6K/Vs1hCsi/Qh6yGASqs7d1RQtgcwiMW?=
 =?us-ascii?Q?YtpFm984mtqGDaC/bM9cRYRPiuwCzOtbrTMJ1eDTuzdHqLwDeMN355o+uEN0?=
 =?us-ascii?Q?06Cp7ZmqUxAPeNwP34OlYiwa0ZSNRC5GU/Yu2tqvLSZeBrJCLPy7Ya5KteGB?=
 =?us-ascii?Q?jo7KqIzlC1mvjOIdX5zPfHkbopscTAOE07mqnbUam2DCCp26xup+cIlCMTB/?=
 =?us-ascii?Q?DYGzKZEeuOTQJxsslxRyeFlnZErZ7h5x0taTHJaNgoFYlYpB6QWV7W7ebQjY?=
 =?us-ascii?Q?oqeQtuFUYs0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?obwIkwNBKRmGarNUnFOcQeKmw2uPrC2CqkZu/OewZsrO9e58nLqjA2LWbgpk?=
 =?us-ascii?Q?OqMldQHDZmYY3mE9m39jHBXLXbItYGq5PDY8wAqu0kNdpPRj2pAd9uIX+M4S?=
 =?us-ascii?Q?UJvALBXeOPb/GDiOXzwyv8TMM70vbqWbWasKzvdUTbQyQieogWsj2tWimE+d?=
 =?us-ascii?Q?jaSnYEeF4WZHw04dPM7+8nU1YqPS2sIu2nnzdBBWO8u6FUatT8ZF+W8/AqsW?=
 =?us-ascii?Q?VINJuhYaMg/l63BDPddB+wrNgmaPH779V/QkZvDjyv4N36sabWuFb/gjdS9z?=
 =?us-ascii?Q?XOKKwBZLXwR9GHH8MBgU2jzCsiq00VNdTwuugkBeHjPbblsEzFgFvav4PN5W?=
 =?us-ascii?Q?Y7ol/26eMpAtgVOqDLEfA8O323xwMtulw5+TgBAjWIa1LQB+vc7NtBXNAQC2?=
 =?us-ascii?Q?2bmmiQVTw6scAj32jfrqQ8YG2XUrUociu603I9Ld6ZteOfXacKnreaWqyv9s?=
 =?us-ascii?Q?MGdOCbb75+naJdgbhN29PnB0SXcpNNHGfwMA9DBHY9GE9XMfCgftCDhFfubQ?=
 =?us-ascii?Q?DlP88/tCLSR3CkxAGnHuIx5gjyCuNp3S/UJlTkoqaA3q3Hi7p6fnGAuKz4fg?=
 =?us-ascii?Q?XujttR47/n3immSF7zj1VTmJdj/UE86WVJjXX7vpaBFRXUty+YPunw8nsZuC?=
 =?us-ascii?Q?qFU+TWjI/NT93fWxr05ICeM7Ja2hXSbj6pZ+41bamqjZQTzXiFuRM4wqOljl?=
 =?us-ascii?Q?QQqm/+m5FnAlmpm0FgPSLfczN7SquvLWwyecfNBpxnMXqI9IVrw3KNUZa89A?=
 =?us-ascii?Q?4GE9vmrneG0Or1yH2AifyWp/1cLY74uURn5vJJTQUFOR3pE2wgBw8xM1abtF?=
 =?us-ascii?Q?xx7cbKQxSh86JCyzznlhX9mWuK97QUU2riAeLOR7MJcV+1jjUhFu+vZ57RfI?=
 =?us-ascii?Q?FDNBgC4zLPKU+b4iYSIcWiym5ddeZDJw+xK+k2jOBg3bGFQCBMi/+dBvaVgM?=
 =?us-ascii?Q?l175h1bNq0VvRXCj22v2ZGfr1NroqKxQospPLfk28bWx7PGXkk/KXbBwTb37?=
 =?us-ascii?Q?K3ADOmqVEQN4FygZkCgqJV7SRmCPYea0KYc4tKGMALdjXp+ggTcK3A0THAeo?=
 =?us-ascii?Q?xkGzU80pFKMOBkEruCevFGT0JGYLfemWtQukfqU8jiOGeE5+8sokVF70s8XI?=
 =?us-ascii?Q?l2LEdchcl4Xu2FpYC2qKjyXSLs4gzAyxVaoY+7FYkjP/cU8FHbnP3QL0Alvd?=
 =?us-ascii?Q?ej0BMoSSTLaKxtmH/235yTmpIBhEC9ytgirmss5N5rPi9OTQBqbSJBnhL7OR?=
 =?us-ascii?Q?ZNVjvPaaGRklPvUU9iz7NIUfEAYJRl2KxryYztZv8cwnv8SqiITjjOhyxBXY?=
 =?us-ascii?Q?fO/2j/Xm7EIJPfesjoWPcDLzY363Kq9aOKkBn2wabmanUJZb9LDyBzxVpmzA?=
 =?us-ascii?Q?uHB6DmfeoTQxaM3z9q5qqQgj/2jdvdl0EkP+QUCqQA7xHnPso8IPv/VXQ4oT?=
 =?us-ascii?Q?CXpzPZiQONr9NYrARhofzMUcHQaQVMEP4yt0E/cXhTCDIRBLlNKrEQGBrZ9M?=
 =?us-ascii?Q?sHeREKVJWZcLBEuI4nMuMmREqRb0GtiqU8IXy5CpGIDs4xNLSCfPV1B+N540?=
 =?us-ascii?Q?62x7O+PfprBar7IRYCiIZwfQJKOQNwafTZsXadFcCSGq0+cFK5eqjXcdMmfq?=
 =?us-ascii?Q?kAW74Qfan9A30F4kJCMRBn4iH1aP49usa5Ztu+IdmVdp?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 926130c7-d90a-4e4b-1dcd-08ddd5ae8d0a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4834.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 12:33:03.4167 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0tpBZXpKcPq+9SLaUf3eaHhf/k9aKqF7fJ22UAXCYKQvsbKfiflAenAOcuFw8XD90NP6S7/O9BLGBrs2jYz5bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6311
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

On Thu, Aug 07, 2025 at 03:19:17PM +0300, Jani Nikula wrote:
> On Thu, 07 Aug 2025, Imre Deak <imre.deak@intel.com> wrote:
> > On Thu, Aug 07, 2025 at 01:59:21PM +0300, Luca Coelho wrote:
> >> On Tue, 2025-08-05 at 10:36 +0300, Imre Deak wrote:
> >> > The TypeC PHY HW readout during driver loading and system resume
> >> > determines which TypeC mode the PHY is in (legacy/DP-alt/TBT-alt) and
> >> > whether the PHY is connected, based on the PHY's Owned and Ready flags.
> >> > For the PHY to be in DP-alt or legacy mode and for the PHY to be in the
> >> > connected state in these modes, both the Owned (set by the BIOS/driver)
> >> > and the Ready (set by the HW) flags should be set.
> >> > 
> >> > On ICL-MTL the HW kept the PHY's Ready flag set after the driver
> >> > connected the PHY by acquiring the PHY ownership (by setting the Owned
> >> > flag), until the driver disconnected the PHY by releasing the PHY
> >> > ownership (by clearing the Owned flag). On LNL+ this has changed, in
> >> > that the HW clears the Ready flag as soon as the sink gets disconnected,
> >> > even if the PHY ownership was acquired already and hence the PHY is
> >> > being used by the display.
> >> > 
> >> > When inheriting the HW state from BIOS for a PHY connected in DP-alt
> >> > mode on which the sink got disconnected - i.e. in a case where the sink
> >> > was connected while BIOS/GOP was running and so the sink got enabled
> >> > connecting the PHY, but the user disconnected the sink by the time the
> >> > driver loaded - the PHY Owned but not Ready state must be accounted for
> >> > on LNL+ according to the above. Do that by assuming on LNL+ that the PHY
> >> > is connected in DP-alt mode whenever the PHY Owned flag is set,
> >> > regardless of the PHY Ready flag.
> >> > 
> >> > This fixes a problem on LNL+, where the PHY TypeC mode / connected state
> >> > was detected incorrectly for a DP-alt sink, which got connected and then
> >> > disconnected by the user in the above way.
> >> > 
> >> > Cc: stable@vger.kernel.org # v6.8+
> >> > Reported-by: Charlton Lin <charlton.lin@intel.com>
> >> > Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> >> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_tc.c | 16 ++++++++++------
> >> >  1 file changed, 10 insertions(+), 6 deletions(-)
> >> > 
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> >> > index 3bc57579fe53e..73a08bd84a70a 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> >> > @@ -1226,14 +1226,18 @@ static void tc_phy_get_hw_state(struct intel_tc_port *tc)
> >> >  	tc->phy_ops->get_hw_state(tc);
> >> >  }
> >> >  
> >> > -static bool tc_phy_is_ready_and_owned(struct intel_tc_port *tc,
> >> > -				      bool phy_is_ready, bool phy_is_owned)
> >> > +static bool tc_phy_in_legacy_or_dp_alt_mode(struct intel_tc_port *tc,
> >> > +					    bool phy_is_ready, bool phy_is_owned)
> >> 
> >> Personally I don't like the "or" in the function name.  You're
> >> returning a boolean which is true or false.  The return value is akin
> >> to answering "Yes/No" to the question "Is it black or white".
> >
> > The question the function is meant to answer is "Is the PHY in legacy or
> > DP-alt mode?". The return value is true (yes) if the PHY is in either
> > legacy or DP-alt mode, false (no) if the PHY is neither in legacy or
> > DP-alt mode. There are many other uses of "or" in function names in this
> > sense, so not sure how else I'd name this one. Simply leaving out "or"
> > would make it less clear that the legacy and DP-alt modes are two
> > separate modes.
> 
> What's the opposite of "Is the PHY in legacy or DP-alt mode"?
>
> Would that lead to a simpler name, with the reversed return value?

The opposite is either TBT-alt or disconnected mode, so the reversal
would result in the same function name format.

> BR,
> Jani.
> 
> 
> 
> >
> >> This is a nitpick, obviously, so I'll leave it up to you.
> >> 
> >> Regardless:
> >> 
> >> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> >> 
> >> --
> >> Cheers,
> >> Luca.
> >> 
> >> >  {
> >> >  	struct intel_display *display = to_intel_display(tc->dig_port);
> >> >  
> >> > -	drm_WARN_ON(display->drm, phy_is_owned && !phy_is_ready);
> >> > +	if (DISPLAY_VER(display) < 20) {
> >> > +		drm_WARN_ON(display->drm, phy_is_owned && !phy_is_ready);
> >> >  
> >> > -	return phy_is_ready && phy_is_owned;
> >> > +		return phy_is_ready && phy_is_owned;
> >> > +	} else {
> >> > +		return phy_is_owned;
> >> > +	}
> >> >  }
> >> >  
> >> >  static bool tc_phy_is_connected(struct intel_tc_port *tc,
> >> > @@ -1244,7 +1248,7 @@ static bool tc_phy_is_connected(struct intel_tc_port *tc,
> >> >  	bool phy_is_owned = tc_phy_is_owned(tc);
> >> >  	bool is_connected;
> >> >  
> >> > -	if (tc_phy_is_ready_and_owned(tc, phy_is_ready, phy_is_owned))
> >> > +	if (tc_phy_in_legacy_or_dp_alt_mode(tc, phy_is_ready, phy_is_owned))
> >> >  		is_connected = port_pll_type == ICL_PORT_DPLL_MG_PHY;
> >> >  	else
> >> >  		is_connected = port_pll_type == ICL_PORT_DPLL_DEFAULT;
> >> > @@ -1352,7 +1356,7 @@ tc_phy_get_current_mode(struct intel_tc_port *tc)
> >> >  	phy_is_ready = tc_phy_is_ready(tc);
> >> >  	phy_is_owned = tc_phy_is_owned(tc);
> >> >  
> >> > -	if (!tc_phy_is_ready_and_owned(tc, phy_is_ready, phy_is_owned)) {
> >> > +	if (!tc_phy_in_legacy_or_dp_alt_mode(tc, phy_is_ready, phy_is_owned)) {
> >> >  		mode = get_tc_mode_in_phy_not_owned_state(tc, live_mode);
> >> >  	} else {
> >> >  		drm_WARN_ON(display->drm, live_mode == TC_PORT_TBT_ALT);
> 
> -- 
> Jani Nikula, Intel
