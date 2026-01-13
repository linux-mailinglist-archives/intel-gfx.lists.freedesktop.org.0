Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E642D19847
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jan 2026 15:37:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D025D10E1F7;
	Tue, 13 Jan 2026 14:37:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MTX5C13y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7267310E2B9;
 Tue, 13 Jan 2026 14:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768315038; x=1799851038;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=qSXCVNK03iAEojvSTVA1mRwV0ZePPhDeLJ09E3stFMM=;
 b=MTX5C13yBzz32ycRjCfn/HutOiZ4k27meieQ4LGHnHxKpzBV/4p6tRTM
 u1Fc94lOwzlKpN3/dhTis7AgolquC7js/pd5fHxm5V4df4ql2TFa1sS3r
 XwCf8qPOnIGChCHFGX2DrhGEfcsK46gGBo8rL61e1EsanNQi8X9xTnJd8
 wgGyqqR8ttOiMzV7qtPYqGake9cCXkNIX4DKomADqTVXUw2Zp1oy+ApFp
 bhJn+6oYFmXUT2t5VEiOpHYI3SvmXgIxOGVRxh0RW9FbvYIQ+L1ipxXyw
 je/1nrS3JvSsG2q+EAmao3huBT/vAi41wbOp5e31e4J2R5kD1uy4cr1Fa g==;
X-CSE-ConnectionGUID: QhxKHeGxQxC3HVpZZ56jCg==
X-CSE-MsgGUID: wZtF4qvqTdSUxOhTfhTS4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="69331730"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="69331730"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 06:37:18 -0800
X-CSE-ConnectionGUID: qkbWmwdbTbmZZwp9hjKenw==
X-CSE-MsgGUID: 0cuJCOUyQ2ay7uuKFrr0Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="227592090"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 06:37:17 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 06:37:17 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 13 Jan 2026 06:37:17 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.23) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 06:37:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tjiu0XxXfiymCZPzmpVMyIxI7lEWyeVmZ8QSB/udGgUgR8f172bWgJzsGKxL3MJsWULrGj0kzl0F2pGMikICyAnQVb157ng4O/EDKKO94BEXI3j5P4Po1GhBM7qrOv/xtynO2fxYCItxNjOUD6O65RDYCWy2kVsjcq4wcGKv6nJQWTOK3wS07qkfesEcvSugAatJ4Q1xAIPi1XxlaWa2jtNJEntPYR2bt+zeivkvtXaTOgOcSOuW3dxaM1GB8HCqUz9EAHaTF+kFQMxqsI3fnIJZ4zoiDvw3rChrPGXpPu04AYs5c402kDlAlSaVT7G9i8wXVg08koDwXOmvaOaDKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XdAJQCcu2l0mlWCumx+5wzW/MrfQo8R2khqyIMf9OnY=;
 b=NCpw5yYn/YITk/FzNsBDexdWf56wpLNvf6MJB0ju/XNy/6UzaUCxWn09etgR8/kT7jgsFvj5JUG+45y0mC/Giv968GWClt29cBFoQpeJQ/nOwFNysSWdrOpvHJattnBId/4OThZBU6gox1PhaEz3Qj8y3m/Pt/UEWhRlRxk3/WID/oMfwn6WBQNfvwCf2DWI9WPi8GI8HGLArgB0JrHuKn+hGVD1quhMDB12IBxOmm4fp+gCxG3VjzUC7krlo1AMvAX504HOF16xXZuI2i1OvmHBlItwjbGBacMBnebk0/EEmxJvq+ZMzEYj7xEpfkbL6dr1WGd6Tqmq8OPejNvubQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA2PR11MB4986.namprd11.prod.outlook.com (2603:10b6:806:114::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Tue, 13 Jan
 2026 14:37:14 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 14:37:14 +0000
Date: Tue, 13 Jan 2026 16:36:32 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 12/15] drm/i915/lt_phy: Add verification for lt phy
 pll dividers
Message-ID: <aWZYcKFk0glTCZGn@ideak-desk>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-13-mika.kahola@intel.com>
 <IA3PR11MB893722B40977A210F1E94BD4E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
 <aV_AuH7hzqOfr8ev@ideak-desk>
 <DM3PPF208195D8D430C5159B9CBAFBC1E50E382A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <DM3PPF208195D8D430C5159B9CBAFBC1E50E382A@DM3PPF208195D8D.namprd11.prod.outlook.com>
X-ClientProxiedBy: LO4P123CA0673.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:351::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA2PR11MB4986:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d1ed545-ecc0-4813-27ad-08de52b13e82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?3xwXZo1VwXQ7HYemtvujT16gbzBUMywOnrpjbWIkhzA9nTLTVdX/x4XYjCFb?=
 =?us-ascii?Q?+Tjnt9C3wyWj6r5PCdckkXcs985jKLmb5tCUVv6qUcW8Z2VZhBMeGJbuDdpl?=
 =?us-ascii?Q?Xele4981fqQupLjsFyex1Wq/K30crL2CxHuIrh1Z7tqENOcEJTDmDAmgLy/4?=
 =?us-ascii?Q?bnyMtO1BSfxqeh4V702pRNlX5cbK+kxLMcJbyoRUJQeVSZMDaFtr/sNlpZHi?=
 =?us-ascii?Q?BgOBPzkfFSdsZNkd/HACHUHHGBRwYlttwzTdNKQXVgaYb0+bZMSXBMx3TEPk?=
 =?us-ascii?Q?gQ4Wj8OudcimYEP2HQs3uU5iBhnhN6SpPAEo/tsy0pTnAHkZ1Irv0VtmnQr/?=
 =?us-ascii?Q?pbsXI7L3cWTaqHb5GJyIH5D8QYW7/+dLcXvZn6CgrokB4s59VgqVlGWrV+hy?=
 =?us-ascii?Q?hxuSp3nFCIhLZsvnbTXcvrE/jATVCv1vimXkQE6fAukk4ZbypsXq7dRznfxQ?=
 =?us-ascii?Q?U2HC1gpKDtO/WlNy3fsMFrkvUocAIB/OWGch1dBEvkdr7eJjs3Kojab0QKl1?=
 =?us-ascii?Q?xRokqIh1uq4AcgdrxqyXChvG1AQLeHNS3MwcoTIrZqci9JbHZHvseY5kOL99?=
 =?us-ascii?Q?JaxuUwSKtrAw0FAw8h4vueyItlQ/1YaQPpGcpCORt8MClHGie9EexcBGQ8V9?=
 =?us-ascii?Q?FaCS/cU5OwUJd0WmNSTDT6s2Gq6GqDCCIlW8HyEwL315/MojQnkBaPjgsgXk?=
 =?us-ascii?Q?xoTbVQNa9w5jkkutl9MEPAZfbsIBiyi52uXBn57/FwlAUHXQLc+YyG2eSjgH?=
 =?us-ascii?Q?71WLc+lfOSz+nY8r94oudxcaicZ0U4OBhqoYJcY4FngKtWhTlABOn6EftU59?=
 =?us-ascii?Q?CtLsicMtU/IIHSqIFzQJlGcMOCNfQiXneTzHR8GyHeTcPtgwDfLYDwOZLG7C?=
 =?us-ascii?Q?jU2I7tYYpmfGRIo73hVYVhECn7iT7gf2yjhOz1CN3MnGqgO8ZrSCsES0G2uJ?=
 =?us-ascii?Q?tIzZ1WRcOBLXjEiOMS7FyncuoE65Dcj7KyR7xH2DlE66kdNXgtEYUYoKDEXo?=
 =?us-ascii?Q?JpQepO1pRfC8/12Yium74KF1Jdv9kSr98ZOCYi0Fh4UT3OxrcWbEBhsSElGk?=
 =?us-ascii?Q?5s6hkGxOL8uIMzXUjxQmIVORqUaEmuE9EHc1wv9cKGOFghKl1dYCtSSbKpDi?=
 =?us-ascii?Q?hq9Skc/SYKdH3DzA8SZVRqnHJKNmCZ3zKDLLLZaeKjyx3d0sHqpDVLmOvwn4?=
 =?us-ascii?Q?/4hT+JLqHs1sIcxAApKClFFAZ+Py0K+7E1RQa/BpsyY2HC5ZGez1yQ0Wk5ve?=
 =?us-ascii?Q?ApCciBDTPJq/jdQrr5z+udqJuOYgH9nhMj0pmWJTyjnJeP2FKtvl34Jy0sym?=
 =?us-ascii?Q?bvC4jd4lLjWtGU+06n/VZwn9ZWwIac1tpWsdqRdXBbe4StcTE1rLdZvh4ApJ?=
 =?us-ascii?Q?V3x09pPql34O8hRSl1jmSSKbqoMtrfX+clfpeq5VUWWLF/sQCJTG0Wn/GdQ9?=
 =?us-ascii?Q?XK1npvvSTI9+kpjffaSDHoRHmie6aGP9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bjT2Q67LB1uf4B6R0XzFA0HTZVdDMkz4BHDlq24h6E4+VhQf54U/Gl+sLoyO?=
 =?us-ascii?Q?RS7WQRw13xtbqvGNyXK+7O0O6z7aZpbpbwtI//TNqEreyBUsiPHq2r3QKnnC?=
 =?us-ascii?Q?cYD99Tm0yGpoaDhcygRTWEvDy0R0ZbAh9MxlcuHU4HYUQg0MlX2suvmA8fRm?=
 =?us-ascii?Q?k6X4yBzXyzcAxIY+GqYs2kxba4ORkDEo8I5vMnEwot0LcyDFhMpWpjfza1Et?=
 =?us-ascii?Q?dhJl6dOVlPU8TCcsk+z1+w2RvMb35L3SowU/EwPt5WHKwtJdJ6nnXeIIczEj?=
 =?us-ascii?Q?I8J4K8U6cyQp7kpEe80bkWS9KWnJ10cTZHBDeeGUnLWw1r/tWFmGYrQKG6VX?=
 =?us-ascii?Q?pT3OIJ/W7pmyMxwg0m3noHdfvGiYJ/jSXYZgOeqXO485AFrce3EHUsVqS0Yk?=
 =?us-ascii?Q?EUx/v+2mzSMAUOkldg8DqIDfh6jn0GM/7A4q94lE4MK8hfPgoYYxw4V364WJ?=
 =?us-ascii?Q?4uwrIGj22ZmWB7/xXwtqjnXbEJoEdcLz79yjR0pzLNAP+bzT78PG+yrMacuK?=
 =?us-ascii?Q?z/eMB2MTyAuToRpUUj+nyF3T8o8mhFrNiFCiE6QA3iJ/S/+dMFuDscDfAtUA?=
 =?us-ascii?Q?YeesN8y8jyXSDO8UdEClB1+7rOwrlJCv05mDTf/EtujE0wBnb5bL1PO9kS+4?=
 =?us-ascii?Q?OX2QMw0M6DeFai8kLpb1MNl/nYtDYub7ul/v94UIlEU3IDPA7yIW3E9ghdN3?=
 =?us-ascii?Q?ed+8L5FJvInjs+ui1eaDzdd6Iea8wioMk+WYSHB+cp5eaH11Do1oUXeMuWav?=
 =?us-ascii?Q?dvva6xL9qaPV4boTIpiqaCnBeB1uOgupVxteQdayDoRrmi3Q8kk7vqH1GCX/?=
 =?us-ascii?Q?bbVv9kbUIZn/bOwssMTxK+Em1I9hTGvTewJpJms0Us8I++SMPktLF+0Ugobs?=
 =?us-ascii?Q?GEPuCJCl4Fzw1SdO30z/q4kmWSi0zsMZyWLr88ATYyk/cOJVilPoQg1cmj2G?=
 =?us-ascii?Q?79oiSzoSkY3Ad7CLqqmrsJwuk9DTBDiA9pJlJ8vhOuVicFf2zoe7Frl58gnk?=
 =?us-ascii?Q?DMGXoCwgzHkbzjpnQ0u8MfeEQRSJYacbLFoWd120ck6uOIm9IqnnJVvN9fV0?=
 =?us-ascii?Q?SH6B1Bvrlwh/AcRz+xl94JhmUZnSKJdLJZLzeYJDIrGThab2QX+nIZyV66VW?=
 =?us-ascii?Q?5w2/Ux4lb8s0smTwXT1Ug7mZLkZVoJT03u5pQewRllElFWPjLRXMwj3YYh5e?=
 =?us-ascii?Q?6w9LjbY7wcUsTWUuc7TbYqNs8/xWeN+gf6XvWVTgrDL1Ds1ILZR7vMYk9wjY?=
 =?us-ascii?Q?Jcp7xqfnMVjQxm4Hrdkjcrb7XfeL5u5pfKmu1pxXjueKYOWpSF+/IBUsqaOY?=
 =?us-ascii?Q?Db60yTMeCkVLIOCHzBQbuDp2EoOADEy3TsxjPwi/VNeXItTx/EQwWhJLFKQh?=
 =?us-ascii?Q?SrBTWjfDtXA1mAMpzMX60uXk8X5c5vXw02QM0Q2BubHGdE6Sr/UdQ4RgqQq4?=
 =?us-ascii?Q?ctUI4ZXbF9K2l0sHXJU6EgTiXQg11k2CiFOZRHAxTp6JLud+49hwt78mWrJk?=
 =?us-ascii?Q?aTDAHdCK4GryT73tdWDlEcDN9FBQlVZnLVcEeAqyz8D+EgFrU8tjd9yWfuA7?=
 =?us-ascii?Q?/8SBCq+5T6iG1YhjJPlg6/7up3kUInBQ0ECsTZvYPRR4E6JYjUKjYb+96rlp?=
 =?us-ascii?Q?5klRPbWuvnp/ulIoRf2z7r+tJSzl57TfQwSql2E15w2ih+4HFy5pX3gM869W?=
 =?us-ascii?Q?xWwO/VCkVUqMDXTMItOaQVd2lzwYesOXvaEoMSmCwdWvYrLIpu1P1NHLdeyc?=
 =?us-ascii?Q?KJvVxp7FXg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d1ed545-ecc0-4813-27ad-08de52b13e82
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2026 14:37:14.6131 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OL9O+3ozTBHhLPfbWQr8uEg31/fJ12jNZWNYxcqnKpHYlVOC7CuEXH6eCDHANxP8hifI6avpJrYsLfc+LOUl7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4986
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

On Fri, Jan 09, 2026 at 06:12:25AM +0200, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Deak, Imre <imre.deak@intel.com>
> > Sent: Thursday, January 8, 2026 8:06 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Cc: Kahola, Mika <mika.kahola@intel.com>; intel-gfx@lists.freedesktop.org;
> > intel-xe@lists.freedesktop.org
> > Subject: Re: [PATCH v2 12/15] drm/i915/lt_phy: Add verification for lt phy pll
> > dividers
> > 
> > On Tue, Jan 06, 2026 at 05:07:25AM +0000, Kandpal, Suraj wrote:
> > > ...
> > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > > index e33f6f48a6ce..13acfc7c0469 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > >
> > > > ...
> > > >
> > > > +void intel_lt_phy_verify_plls(struct intel_display *display) {
> > > > +	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_dp_tables);
> > > > +	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_edp_tables);
> > > > +	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_hdmi_tables); }
> > >
> > > Same thing as the previous patch this is not needed.  Moreover we do
> > > not go through any algorithm for edp and dp tables for LT PHY hence
> > > the Rate always matches. This patch should be dropped.
> > 
> > Similarly to my comment on the previous patch, the tables entries should be
> > kept correct even after they were initially added. So please don't drop this
> > patch.
> 
> But testing DP eDP tables still does not make sense here since they
> don't go through the traditional HDMI algo that CX0 go through the
> clock rate in a way is signalled just by a single entry of VDR0_CONFIG
> So other than verifying table for HDMI the rest need not be done.

The LT PHY DP/eDP PLL determination of the PLL clock from the PLL state
and the inverse determination of the PLL state from the PLL clock is
just the same as for HDMI. The fact that the PLL state is just the
VDR0_CONFIG register value for eDP/DP vs. the PLL divider values for
HDMI is odd and should be looked into and fixed in my opinion (so that
we know that the rest of the eDP/DP PLL state is actually correct), but
this difference between eDP/DP vs. HDMI is irrelevant. What matters is
that the PLL clock is calculated from the PLL state and we do need a way
to verify that the PLL clock matches the PLL state and the functions
converting between the two are also correct (and all these things stay
correct even after the initial addition of the table entries and the
functions).

> > 
> > > Regards,
> > > Suraj Kandpal
