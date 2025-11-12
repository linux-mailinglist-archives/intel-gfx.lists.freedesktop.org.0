Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E5AC526E3
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 14:20:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FAF410E0D5;
	Wed, 12 Nov 2025 13:20:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WWdXHbav";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2664010E0D5;
 Wed, 12 Nov 2025 13:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762953643; x=1794489643;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=M/ZcC9e/ar4nr1c8uAGGvf2hvw5B18GaKimJSr/oJIo=;
 b=WWdXHbavnzUdrxayjNoR/lKR2oRuyIjlcKVC0TCDwv/iCQu927G9scnf
 i8j1wttaM7UEGIBJrYffwG2ZQv8QpRek4L/mbHerlr8487pp8/Rpr4qY9
 5hEEBgbRfQfyfVYkJ+tHs0jhKJkFtXDXZLZouMF5ybhcrMJf0vJR4W2dU
 sRqRugaksQurgzTe3WE5gy0wK0UGKGY34uRGNLsTtoM89fGIhZVTm+9de
 c6scNX3zolf30ppk49JydaLNJcv3K71ZBSrGaHwDvWa11I8MF+9T0AEVM
 UDkWx1selFX7xXMaxCHwp+/BiN1mjATJomjsIWPoFW7JQRiVuFl2IYNHn w==;
X-CSE-ConnectionGUID: ML10wTcnSfWfUdxYE+eXkg==
X-CSE-MsgGUID: fjHTbxkhSiaCLy30pW82jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="64218910"
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="64218910"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 05:20:43 -0800
X-CSE-ConnectionGUID: vDQuPHU9SG27ngMrdvTbrg==
X-CSE-MsgGUID: mNDoUB4hQmOqKY6JPdmgGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="188508018"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 05:20:42 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 05:20:42 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 05:20:42 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.51) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 05:20:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q3F+Zr27vbOqEkrM4DFWhcZQ6vQ5jA7gtYWskGm7UczOwgiR6msVRfYb0SMHZsBVTNq/89RwNyIEF8mfF1dltJ5J82ybvcFJPqn/VCI8JAfNp8VoWZbGSfNndFi7RUg2k3PHbT4mSVp3AifRcU36Y5QTLYQBvDkGwY5x8GXTtKhN5yW6ySIeBaTt3hsrWZuTmMFtIjvrE6MxRq29Lb0t9slucRz9Ejt9o1fdWH+TGJrij5hkQWTUHJJk2HxH2tEJy1cAoOtS5uhw/E3IUqgUT1a7/uOzO15MN3VgbPbSjxJS9sAv7yu1FSFrnUz6dDJc7KxQH/g1kKk/yoQVHuhPzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X7JFWxdhl14AuDwrHIBXKDjoWfb7DSWVzDFMoWpgkuQ=;
 b=JxkwO06TU2keSlUDvETZU9B4oIkAiPv4zMN3wvL0tYyJJ9R+ulhszY7q19apGm0gxGsVo9uRRs9sDXtRgVwH7Dt7vXJfDnWX2Au3vORX/1joZD7v7MdFdYE7TZtNy96Af3mCRvyWpqaHeGOMkwrxGnhOzD1dNMDByAbdMvZNSpcdCzF6YIdRLjyLADYouOg66+WDQ+eX5gsy9dvHtMbDsmlieWp1Do5HJN6C/QffW/X60vRz9p5EGQf6EPWJv4IKouft09qdb1Nw+FAME6GgLVEegUpF1EN2LwaXHyaGcjW6ooq8XRp+IKWc1QhdFWSsHhf7MEwyFtM9lhiaMtPWNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB7629.namprd11.prod.outlook.com (2603:10b6:8:146::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Wed, 12 Nov
 2025 13:20:37 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 13:20:37 +0000
Date: Wed, 12 Nov 2025 15:20:31 +0200
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, "Ankit
 Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, "Matt
 Atwood" <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v4 02/11] drm/i915/vbt: Add fields dedicated_external and
 dyn_port_over_tc
Message-ID: <aRSJn4pvElpFSibV@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-2-ab3367f65f15@intel.com>
 <aRNeF6O4SBuBGZvy@ideak-desk> <aRNhLYc2SPuNKEIv@ideak-desk>
 <176295242789.3698.8127437932458349279@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176295242789.3698.8127437932458349279@intel.com>
X-ClientProxiedBy: LO4P123CA0349.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18d::12) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB7629:EE_
X-MS-Office365-Filtering-Correlation-Id: 3faf4cbc-b6e4-4321-2029-08de21ee44c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?kbojtF2mQ427Ihya02AjVph4yxlLrjrkSm2ZeIcPg5JAw08mVAOo+GyogVrj?=
 =?us-ascii?Q?VDVjVdfzOFGmtXAe0Zz74rmlZ7oOz/ZUUpE4M5SSWHSYi6qh8fX1bzd6fYCb?=
 =?us-ascii?Q?ORgKtzRs6b/HTUw37MzGBLZcMREQN0V4N57Nc44l7HViLdkHb/0UDBsK4wAK?=
 =?us-ascii?Q?3HeXK1+3G/bKdIJg12UkVKQaGB0N8e9u1L/q3OraonT0KOdcnwK3bbz4iuqT?=
 =?us-ascii?Q?5Jrz7I7t8ZRwE8MMZx2Sx/ks2esvebVUs9Wi67BrOIDe5lZamvw0lyOy4gyj?=
 =?us-ascii?Q?WgK+jcmiqKbUtneXxJ4YR0E5vlyrutyzK5Bj9Xo8p5g1Zczl8uooMp8GVTy/?=
 =?us-ascii?Q?Zbnn+vXXKc7LLzPyDN9xQR7t3QVOr0k9BsPyO8YSW3K23xAsTkCVdPcK8L+G?=
 =?us-ascii?Q?y8bDRHibG2MdvN9QB4HKc4qw0K22knXlyuZAmrZAFIhJfngGmpFN9cqk5qKk?=
 =?us-ascii?Q?3eiWxetY9XMnbH3QbaaahbKbR9d3QjHKbptWDSpZYQgPBZuMWtceLueug7vD?=
 =?us-ascii?Q?W5uC5Lg9/vkO4DMRXEevWLhtsnbhg9f668eqvc8Oa/4ko6BrErAfUbWuxrGj?=
 =?us-ascii?Q?q166wsqsjRvSFKymGQbBu09CMg2uBYMOzJRRWf4PFdrkrOkj06VXKFrq+YK0?=
 =?us-ascii?Q?QaHTHqvqO3lsb6cuegITixZ2dNGd0fVGYrNu9eLeLTNX/LEZ+ndRDkh+aMw8?=
 =?us-ascii?Q?8Ug8VfjPmt5QyfsoqlCbB4fIvW3pPTZUlYCtfRpzS4LR9ktuPbg2R7GZeQ0y?=
 =?us-ascii?Q?bvKnhQP4J3mF+a81YbSIfI6e7ax+25qZg3skbhg5QX+u0BU1uUqgKpg+3j8O?=
 =?us-ascii?Q?yBVXqegafQ81d1zJ61SoixsYgPxsusrBfCPyLFBmVk5EBl9On+bXGuWcVxAt?=
 =?us-ascii?Q?1Om4i1T9LqXXjyI8jLUd7JV2yCWAlp5DQzjG0+rceyaZ3ja1qPgjTGaS+FEN?=
 =?us-ascii?Q?2Y8qkc+MKW4/ZaVeGjpFpgpP64IENV6JjdL2a4xVAeY1zCZV2FdUgErWv7X/?=
 =?us-ascii?Q?o1+rGdV3ZHJ9uDIcRMesIx6yjvichJaBEa048qXKkoK/EwKuqmEBtxmDpQaF?=
 =?us-ascii?Q?LywPrKGBcavqorHVt6DRKixt+X+31SgV9TbTHB84ETcali4mL4ik2p9Bqamk?=
 =?us-ascii?Q?3sLeDtppH6mB1+Je8IGxJ6HlqQlnEQDg02HWyYbdXiqQLKHIKm0EnukEpM+V?=
 =?us-ascii?Q?9L+BZwn7nV/TedTbw/gid1UM+frblpAUPMPPNnqv6pFKpaDr1UPAwMXQwwQb?=
 =?us-ascii?Q?tf+ySTWOPx8Jvu2sZTwXm+gXaG3qaws0h7A/7r4Ct00W1tpnFk/Y3mk0D/dF?=
 =?us-ascii?Q?vOyNuPJ7zpWNLi2c/xGkDOIAo65aI3PopHmpFP9K3Y8p4H1Bozv2Kx2b0g92?=
 =?us-ascii?Q?/V4IoX9O8fv4WlzJsqsKOrkFlIVA3Jy45O6av7Fze3JKd5UFSph2fUnUWXAR?=
 =?us-ascii?Q?hbu2icyzNiVUrKYRuv9irWACfTIY7cV6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xkIJKBEj2hSPFMuXYPgfH9gRv+YwipRSfoi7UkCVTJod4DGXA0xOQiW+60OE?=
 =?us-ascii?Q?tuOKr43uEUDR2lp2lL0iADdVHLoj4dbmS49K6Mr2Pt8kTgrN/Py8dL8jwPIe?=
 =?us-ascii?Q?n/67o+/fjBYDuyTFISljwLwK2AeMJWQVtANX9BEhGhvmCj2UY/9Ppu2aLk7E?=
 =?us-ascii?Q?YBs5g8EI5VZUFxmD1JD/A/fud4DqMN+KjoVr6QNKYHLHE3j2o9ngMBUr9jxo?=
 =?us-ascii?Q?MMeMuKJI+Pavn4z2pciQZe5mpHUkHcKnQsUq2yeLXdujCiCNMBcXwtUvN1Ef?=
 =?us-ascii?Q?yjsYoyMK6buF8ichDouFFXVH1jJPzlGDBN9S/F9uXlcXz1nNQ3AwyaCusa0T?=
 =?us-ascii?Q?xfP6XHNX3QyPPiWFnBbRrbJ5b39TShRKxtWzbUzvfcHOKDyYYyGU3VBizagP?=
 =?us-ascii?Q?FS18ou9qaoYnK06tzPNVwXOqYw7fap7ex0owiOE9AqlFRQmZeiyDpTlwYvQ3?=
 =?us-ascii?Q?SH2646kNf5+wSQwgdEG9UShCtAONBirBS00jHKs0b1Xx3nJH5xQD5W44qtVE?=
 =?us-ascii?Q?DvqgE2NWwgZ8iGohnBkeGcbyW9y6nT8qZUMunzGd123NRH3gWxi6chG+ttN2?=
 =?us-ascii?Q?8cMqbBWBFLRtHwiYskNgpIY3PYG0EYXA+/g4FGRltKmnqLMCbDzXGzVBfM1e?=
 =?us-ascii?Q?NnTrnoOZleypJDvaMIiifcapHlnUcLmTMqV+EZX8/iCP90NSZ2t1GjmlwwLg?=
 =?us-ascii?Q?1HNJawVfsn9QFGSXpF7+rnWJFrOLu3wgUvXgv57jbhhtrh7VI7bxfRytCyjv?=
 =?us-ascii?Q?TLKBmi56GqueqnUnyzqoHkKA7Ut7/TQMtz3ZvnCHqZ7kVMxW0TEL1OEfAaH7?=
 =?us-ascii?Q?Zw+ZDmmzo52XztbmA7yRwH/Vu2Ty4HztWBxsmmhIMzTBg8/0SO94XtWuZA0I?=
 =?us-ascii?Q?F2f9zn0azOuApA7h4e6R+dBgqrraHerpHcOjS/FZY8a13g1I78vFDpHqETfv?=
 =?us-ascii?Q?d75NfR+m0DUYTgZknI7UHu5G4kVZDIuSqKGy+Nh1Dnzd9mUtr1SOATi5726z?=
 =?us-ascii?Q?4qSLKQivI1XGaMJU8ZGKpRXOwVpnVPK6kOkPxF5mmZ4HKBDNJ6GIswgBkJNa?=
 =?us-ascii?Q?VlOLCQoPtaIS/i1U0oPx4ELzzXJiLOQNJoMFAHy1APogCJknWf16TnDbCZqx?=
 =?us-ascii?Q?ZqFmAnUBmsmDwIsPIIq7fWiz3wrA2ZrqLJE/WSR+0UwHP3L6CGqGSz5U6ysi?=
 =?us-ascii?Q?I3cSK5Qq6ZaX0/tUsLnh/JemAavp+uabnm2W9hRBFlkeM3jas2macXNUKL74?=
 =?us-ascii?Q?OyYkIaGuS8s4stjMzUXxg97XwDm8HZrKHyYmPob+vWy9Ds+gsC3JxsRKe4mE?=
 =?us-ascii?Q?cZXcZMOiu/ThHoTKXKuM/MKxp7yZD0yEd71r+KWbxxIPtqUi3Suka947imWL?=
 =?us-ascii?Q?QXTVHcRPYeM8/WYlvaoQcictLWfLNgN9vFsLNGh55jOYYg/n9lDoFH0gxFIa?=
 =?us-ascii?Q?x4qn1DKLTvshbCOwYLhUUeviMF1LwXELaib7pSuWyUw7U6ruXhZMaglCpFw2?=
 =?us-ascii?Q?/4UH75BmLhDzzX7hfkqmfCpeADgdlsGhT3zBkMBn1d2EPWQmInwNrkx+KRH8?=
 =?us-ascii?Q?eV+IzuGxHUc5WonXg5dLmNgpcxb5dk7Cmk9QBNigVeslOtu1FX+k3izG7yXi?=
 =?us-ascii?Q?nwaWO/mdKT4ZnPy9eVFMqP2PDmUT+vnfBXMkNx7fAqzv?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3faf4cbc-b6e4-4321-2029-08de21ee44c1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2025 13:20:37.5353 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RduhErkQVebPgUBAu6elBX7RR9yfpbpacJQz3v6j5czFIoQebWeW1assJmrR/HdBhWfuwMqCErBW6se7emnIMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7629
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

On Wed, Nov 12, 2025 at 10:00:27AM -0300, Gustavo Sousa wrote:
> Quoting Imre Deak (2025-11-11 13:15:41-03:00)
> >On Tue, Nov 11, 2025 at 06:02:31PM +0200, Imre Deak wrote:
> >> On Fri, Nov 07, 2025 at 09:05:35PM -0300, Gustavo Sousa wrote:
> >> > VBT version 264 adds new fields associated to Xe3p_LPD's new ways of
> >> > configuring SoC for TC ports and PHYs.  Update the code to match the
> >> > updates in VBT.
> >> > 
> >> > The new field dedicated_external is used to represent TC ports that are
> >> > connected to PHYs outside of the Type-C subsystem, meaning that they
> >> > behave like dedicated ports and don't require the extra Type-C
> >> > programming.  In an upcoming change, we will update the driver to take
> >> > this field into consideration when detecting the type of port.
> >> > 
> >> > The new field dyn_port_over_tc is used to inform that the TC port can be
> >> > dynamically allocated for a legacy connector in the Type-C subsystem,
> >> > which is a new feature in Xe3p_LPD.  In upcoming changes, we will use
> >> > that field in order to handle the IOM resource management programming
> >> > required for that.
> >> > 
> >> > Note that, when dedicated_external is set, the fields dp_usb_type_c and
> >> > tbt are tagged as "don't care" in the spec, so they should be ignored in
> >> > that case, so also add a sanitization function to take care of forcing
> >> > them to zero when dedicated_external is true.
> >> > 
> >> > v2:
> >> >   - Use sanitization function to force dp_usb_type_c and tbt fields to
> >> >     be zero instead of adding a
> >> >     intel_bios_encoder_is_dedicated_external() check in each of their
> >> >     respective accessor functions. (Jani)
> >> >   - Print info about dedicated external ports in print_ddi_port().
> >> >     (Jani)
> >> > 
> >> > Bspec: 20124, 68954, 74304
> >> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> >> > Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
> >> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_bios.c     | 54 ++++++++++++++++++++++++++-
> >> >  drivers/gpu/drm/i915/display/intel_bios.h     |  2 +
> >> >  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  3 +-
> >> >  3 files changed, 56 insertions(+), 3 deletions(-)
> >> > 
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> >> > index 852e4d6db8a3..1487d5e5a69d 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> >> > @@ -2530,6 +2530,36 @@ intel_bios_encoder_reject_edp_rate(const struct intel_bios_encoder_data *devdata
> >> >          return devdata->child.edp_data_rate_override & edp_rate_override_mask(rate);
> >> >  }
> >> >  
> >> > +static void sanitize_dedicated_external(struct intel_bios_encoder_data *devdata,
> >> > +                                        enum port port)
> >> > +{
> >> > +        struct intel_display *display = devdata->display;
> >> > +
> >> > +        if (!intel_bios_encoder_is_dedicated_external(devdata))
> >> > +                return;
> >> > +
> >> > +        /*
> >> > +         * Fields dp_usb_type_c and tbt must be ignored when
> >> > +         * dedicated_external is set.  Since dedicated_external is for
> >> > +         * ports connected to PHYs outside of the Type-C subsystem, it
> >> > +         * is safe to force those fields to zero.
> >> > +         */
> >
> >Forgot this: IIUC dyn_port_over_tc doesn't make either sense for a
> >dedicated external port. IOW, a dedicated port/PHY is not enabled by the
> >TypeC sequences defined at bspec/68954 and so for such a port/PHY the
> >DDI->PHY mapping is always 1:1 and so the corresponding DDI can't either
> >be dynamically allocated to different PHYs. If that's a correct
> >understanding, dyn_port_over_tc should be also verified/zeroed out here
> >imo.
> 
> Yep, there shouldn't be any need for DDI allocation for dedicated
> external ports.  However, we would only be checking for dyn_port_over_tc
> when doing the Type-C flows, which would not happen for a dedicated
> external port.  Give that, do you think we need to add the extra check
> here?
>
> The main reason we are adding those checks below is because the VBT spec
> marks those bits as "don't care" when dedicated_external is set.

Right. To me, the interdependencies of these flags in VBT are a bit
complex. We are reflecting now about the above dependency, which is
good, since we'll at least agree then how these flags are supposed to
work. Imo it should've been also documented more explicitly in Bspec,
similarly to the DP-alt and TBT "don't care" documentation.

With all that, at least a code comment would be good about this for a
future reader, but even the verify/zeroing would be useful imo, in case
there is a VBT setting the flags contrary to our assumptions (that would
remind us then to figure out if our or the VBT authors' assumptions were
wrong).

It's a detail only, I'm not insisting on either of the above, so up to
you (maybe you'd only update it in case you have to resend the patch
anyway or stg).

> --
> Gustavo Sousa
> 
> >
> >> > +
> >> > +        if (devdata->child.dp_usb_type_c) {
> >> > +                drm_dbg_kms(display->drm,
> >> > +                            "VBT claims Port %c supports USB Type-C, but the port is dedicated external, ignoring\n",
> >> > +                            port_name(port));
> >> > +                devdata->child.dp_usb_type_c = 0;
> >> > +        }
> >> > +
> >> > +        if (devdata->child.tbt) {
> >> > +                drm_dbg_kms(display->drm,
> >> > +                            "VBT claims Port %c supports TBT, but the port is dedicated external, ignoring\n",
> >> > +                            port_name(port));
> >> > +                devdata->child.tbt = 0;
> >> > +        }
> >> > +}
> >> > +
> >> >  static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
> >> >                                   enum port port)
> >> >  {
> >> > @@ -2668,7 +2698,8 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
> >> >  {
> >> >          struct intel_display *display = devdata->display;
> >> >          const struct child_device_config *child = &devdata->child;
> >> > -        bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb, supports_tbt;
> >> > +        bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb,
> >> > +                supports_tbt, dedicated_external;
> >> >          int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
> >> >          enum port port;
> >> >  
> >> > @@ -2694,6 +2725,12 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
> >> >                      supports_typec_usb, supports_tbt,
> >> >                      devdata->dsc != NULL);
> >> >  
> >> > +        dedicated_external = intel_bios_encoder_is_dedicated_external(devdata);
> >> > +        if (dedicated_external)
> >> 
> >> Nit: the variable could be dropped imo, and would be good to print the
> >> dyn_port_over_tc info as well. Either way:
> >> 
> >> Reviewed-by: Imre Deak <imre.deak@intel.com>
> >> 
> >> > +                drm_dbg_kms(display->drm,
> >> > +                            "Port %c is dedicated external\n",
> >> > +                            port_name(port));
> >> > +
> >> >          hdmi_level_shift = intel_bios_hdmi_level_shift(devdata);
> >> >          if (hdmi_level_shift >= 0) {
> >> >                  drm_dbg_kms(display->drm,
> >> > @@ -2751,6 +2788,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
> >> >                  return;
> >> >          }
> >> >  
> >> > +        sanitize_dedicated_external(devdata, port);
> >> >          sanitize_device_type(devdata, port);
> >> >          sanitize_hdmi_level_shift(devdata, port);
> >> >  }
> >> > @@ -2778,7 +2816,7 @@ static int child_device_expected_size(u16 version)
> >> >  {
> >> >          BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
> >> >  
> >> > -        if (version > 263)
> >> > +        if (version > 264)
> >> >                  return -ENOENT;
> >> >          else if (version >= 263)
> >> >                  return 44;
> >> > @@ -3723,6 +3761,18 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
> >> >          return devdata->display->vbt.version >= 209 && devdata->child.tbt;
> >> >  }
> >> >  
> >> > +bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata)
> >> > +{
> >> > +        return devdata->display->vbt.version >= 264 &&
> >> > +                devdata->child.dedicated_external;
> >> > +}
> >> > +
> >> > +bool intel_bios_encoder_supports_dyn_port_over_tc(const struct intel_bios_encoder_data *devdata)
> >> > +{
> >> > +        return devdata->display->vbt.version >= 264 &&
> >> > +                devdata->child.dyn_port_over_tc;
> >> > +}
> >> > +
> >> >  bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata)
> >> >  {
> >> >          return devdata && devdata->child.lane_reversal;
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> >> > index f9e438b2787b..75dff27b4228 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
> >> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> >> > @@ -79,6 +79,8 @@ bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devdat
> >> >  bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata);
> >> >  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata);
> >> >  bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata);
> >> > +bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata);
> >> > +bool intel_bios_encoder_supports_dyn_port_over_tc(const struct intel_bios_encoder_data *devdata);
> >> >  bool intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_data *devdata);
> >> >  bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_data *devdata);
> >> >  bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> >> > index 70e31520c560..57fda5824c9c 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> >> > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> >> > @@ -554,7 +554,8 @@ struct child_device_config {
> >> >          u8 dvo_function;
> >> >          u8 dp_usb_type_c:1;                                        /* 195+ */
> >> >          u8 tbt:1;                                                /* 209+ */
> >> > -        u8 flags2_reserved:2;                                        /* 195+ */
> >> > +        u8 dedicated_external:1;                                /* 264+ */
> >> > +        u8 dyn_port_over_tc:1;                                        /* 264+ */
> >> >          u8 dp_port_trace_length:4;                                /* 209+ */
> >> >          u8 dp_gpio_index;                                        /* 195+ */
> >> >          u16 dp_gpio_pin_num;                                        /* 195+ */
> >> > 
> >> > -- 
> >> > 2.51.0
> >> >
