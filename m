Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 013FEB07FCB
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 23:42:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27EBD10E089;
	Wed, 16 Jul 2025 21:42:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jyxeBM2W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 210EF10E089;
 Wed, 16 Jul 2025 21:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752702132; x=1784238132;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=y2RcSiu8O44K36jVMUY5PqJ//jPkJzpknNVtqlk3XDc=;
 b=jyxeBM2We+fSJv4yPV69MBz85MA8xnVx7U9aYtNKVaRcudcSJ5ERUl7w
 cl+2Vs1Anw+PXdoQyF9WIkyPJ+YXIuvNbKc3EmJNnLQEFipL4TC9IaVS4
 q1EZzUPWe/oigHqRwp8hneJqzW8aQrFJPt9BisN19RX2ZtNLNqKqd1zGb
 xdhqzhyVCLS6T2Bkus09JJ+3rQmOeybBXcGRAj6vDyJJRb6EB7Ql12Mh9
 +TFxoNk6i9Rn264fLylXyaXzrR2llti49nZxflqQ8yWUpC/ZUxmYt8+Vr
 LpcI8+d0BQTuxPRWO13NkSAKisa5YXJkXcEPgoS2TDjd1LmV3fylCul4p A==;
X-CSE-ConnectionGUID: n4rVwgQbRmq3S1+crkq0hw==
X-CSE-MsgGUID: SZF2OzaQQkGZq+25Ox2NKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="54902066"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="54902066"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 14:42:10 -0700
X-CSE-ConnectionGUID: 1AjEFPWeQ+eyUb25vXq/Bg==
X-CSE-MsgGUID: x9Y4BwlsRlSMU8tEZ70X7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="157018260"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 14:42:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 14:42:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 14:42:09 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.79)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 14:42:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YTVIZv6h4ZN3NAjbhqJOXRfV7s5NhRs5NTNQoKmL0KO3Mm6bkc01h4nnrBG5drbrt7EcUEYmkmLHnnqxPr5wKabM5bXrV0f+LLc/6KNDfHBCY9gzpAtJ/Chp/xH4kFZOttplCLSWbsv7HSq9qyqcsiPz3Z2sKUEBrvpSYpHu0lV1mK/cTVtPTT9mK00w+X7V3sFNlyx5UZOWtvjUYOXDC3zgY9AY/4ZZPQ3m8Eazc60uANfwTByy/W6K44jkCLuXyv7R5bR1UZc6USUsIJ6/v7qAPD9w3UTD619kThmPzPbjcYhg15BEGtbntE1V6ucvMPQ+CsIQuyQzps/Ekr7PMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AcMdO7AdL67e6fEH1xp66xY4vWVM0KwKLdG5D675/4E=;
 b=bHLVoq1SyC2MBCNoKJeZhYUMflsRkPiz8igUApf0YwKWHwEq0K2w9cnG0fxXyLwf6g2UZXzFMFiYSbsoY+c4S5dpYKgYjZLzdVxwvrn7eB/08w+iGnyAyn9qQVvwu0uA8lb0rBjxQQqR77kJ0sDcgCEDO+tfFu0QbP0weh4QEfqBlOoY+pBPhoAPMPR1Tz2XTI/O0zMMkMHotykS4VXD/1k3jNWhroRdawcZ12ynKR0bagjgG/809fBAugnWWaYLViSR8GyOa13HK+MPjO+hhUUuLMZri85DSu7KpQqWEkTDWjZ9/8MNgjwNV3uFiG6lgyF+kXa1EGyfNDV8FqoSBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.28; Wed, 16 Jul
 2025 21:41:38 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8922.028; Wed, 16 Jul 2025
 21:41:38 +0000
Date: Thu, 17 Jul 2025 00:41:32 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH 1/7] drm/i915/dp: Fix 2.7 Gbps DP_LINK_BW value on g4x
Message-ID: <aHgcjAMrjmzuIZPg@ideak-desk>
References: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
 <20250710201718.25310-2-ville.syrjala@linux.intel.com>
 <aHenHJLCSVjYDUKp@ideak-desk> <aHfyKJ_NJL-i8B94@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aHfyKJ_NJL-i8B94@intel.com>
X-ClientProxiedBy: DU6P191CA0016.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::10) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BN9PR11MB5276:EE_
X-MS-Office365-Filtering-Correlation-Id: 67ebc89f-77ae-4893-4552-08ddc4b18b4a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|10070799003|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?qTRHIwnp8TMceJhwTQGo52DPZaQ/M4Z1oUXpRi5kHU0lrO9zyyfskwXCfw?=
 =?iso-8859-1?Q?smcspcOyadj9fqAT9acSMG0ZFpwEND9jaxqCcXZo7Q8lZAflN4IOv2uxvd?=
 =?iso-8859-1?Q?5uX4eHVJtL2eFnbzbRcUYnCSOK2nAEq8D3q3ZtsW5h5/Je5jAafepQntGP?=
 =?iso-8859-1?Q?uPEN//uV9YB+FxGwIqC74JC+tyqu1c97QTOjiTzYi9QquJZ7dXlV7EceMS?=
 =?iso-8859-1?Q?1dsAOa1Yn/g/Uub2fM/QQobpeTDmLGxa65+RZeCdGlrkM2jv0D/Jzi6xs/?=
 =?iso-8859-1?Q?hA7itQP2A0mA0AT+XrapIof3dMJu0BJAEVpxR1X4CeIfRtqDfB2pVAqI4a?=
 =?iso-8859-1?Q?9MFw9nPTXyHvqCRmZQJHdZ474ficN3y7ynbDehZtbIVpThOvRwQ/FVX+sR?=
 =?iso-8859-1?Q?gM2wqfKpeqaHQdw3VKaaTLXDeBw3Yvj8xhsWz/HD7Mvlze3oXDieTuW42+?=
 =?iso-8859-1?Q?7n69jdOyE0DR1DUWp2HIVEdNociOskKFj5snfO2zT2D3+Tfy4JtcL4/PR1?=
 =?iso-8859-1?Q?uGf2z0D0uaSS1k2Em9sZGRFNZe/TxiFdvhNx/0Oog2v1BE0gaXSGTmSuje?=
 =?iso-8859-1?Q?zKXCClCqOHIDTzQKTGdw3Sz6fpboia59rmbwOSuS8eDCGujOyxzvFqnpiG?=
 =?iso-8859-1?Q?HSiyidwTSuYCh7cSS+TEwvEmHXm/n8YOCJ1tY7fE79DPAX1BXp6FkHVWRr?=
 =?iso-8859-1?Q?FH/6POvWkrR4aEnUMyTEdxfdGfYbrQN+T8TVuFhsbDTCZYPbelBnhsO25/?=
 =?iso-8859-1?Q?quLcuRD7bKy1EIcC65rZGqAMpwdNYgnTGfSlei0r+i/Iw7in7E7CTNlV1N?=
 =?iso-8859-1?Q?SNcYyE5Z94HfP0M74R7zRqfPLSrlX6dxsmtg5N4J24L+FlgEFMheJJcJtA?=
 =?iso-8859-1?Q?tpbg//zViS6Kq8gqs91U7FFu9eyWJrCAEeptWJ1m9T9A0gudUt5oJFJSQd?=
 =?iso-8859-1?Q?/aD+KmGkjB37vRxqmvKr6JKvxU91tFPeVYl63EEnWC7hyGe6w2iAwe+qp6?=
 =?iso-8859-1?Q?4FWDocFM1TJGNb6ilKrN62BRch9806gNlnf29MiCZKP7Lay36w7Lq3sbYp?=
 =?iso-8859-1?Q?Nq7b8ckpDusurgRFEVTXIixNirN13t61IRkndyd0JqdIz2cvoaaBkCE5xX?=
 =?iso-8859-1?Q?d7eO/wOktilqK4WCMWZug3wRh2jR8CInf19H6lU9fDnznGb9uqzOV9Zej7?=
 =?iso-8859-1?Q?nJPcu2NMp+nSLqrsBFDbfu6MoUWS93pBg8ku/ojLvnhVFwSfZu5T3DJmt7?=
 =?iso-8859-1?Q?bubaZWJFJtzCnpGY1KvHkc6oqP0sEPI2HQBY1w8FYVMqErBhIL2sOGBJWK?=
 =?iso-8859-1?Q?FeW+h90HBfBWqyPUfBx1tCiJbMY8tth5irRUgLLtjSc0/Rat/fKcT5QQUf?=
 =?iso-8859-1?Q?pV/7Nm21AdSrf2zEAud/gp5Zh7meVyU3Q/BgRcPX/dHiMs2j4aeEeZ5KZQ?=
 =?iso-8859-1?Q?q4mVeV8llYC9PHfAVhJVCqBkn9ffBG2Q0mC19w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?qE4kaxC4bzMLalyjc/WyAJb0Og7K6PvzzzYwttATLHzjkqmgQkfzKufcyp?=
 =?iso-8859-1?Q?BU7rpER1E+LWPrS8m5Ajvr/VcFbwACde18DXfeArNxk5uE9QCZJ0SQAJOh?=
 =?iso-8859-1?Q?pyt6tfiF9ASWxz58FLYI6Fbhy9tjU3LvZS2v76xrf//4afZ++vWIDWSAX/?=
 =?iso-8859-1?Q?gEzRZtCKy/jSo0YYLCJ/kL4jZlbq9gKBxoeHzJ7jKwZ5ttH0hRNndUUyD7?=
 =?iso-8859-1?Q?qr3Q2cGUq7ecc1K9N4RWRQ7Z4IiZRg1EvYPeps/PcIw+8Lxdwufqk+4I8K?=
 =?iso-8859-1?Q?Pc0ZYjjk3QJRbnGBqRHQiwvKy6FC+xzD7Y8EKErE2bCx4vSSI4HXliiVos?=
 =?iso-8859-1?Q?frlz9izn364puqdeqdRV98ZX5TyoYoh0Hl5CSSsUMY01yICU5L4WcsmfK5?=
 =?iso-8859-1?Q?Zba8iydLGN6C/G0H5w/36ilVOY3CLKoPH+zujUFhlzuPv2BTZhZgS86xc9?=
 =?iso-8859-1?Q?8z8rpbjz7FGjC6zjD9g/+ACniSKubkdRmTpdbCHX/6zaOrxb86Z9FQMG7u?=
 =?iso-8859-1?Q?pvMVOo70kFM+f7igf3Bp4xK4lSSIBxRO2LEBix8rWg8mpZGzIZZ2ZWagup?=
 =?iso-8859-1?Q?D80UFXv/WqF2ckW+/SaAC1xOmSfrJSCLYt21nPfiUdAyFh8VhuIyS8qVBg?=
 =?iso-8859-1?Q?8pTEG+1IkJv7qO2z2qu1OcTQ/fv9vl7SCy6qOdU4lPonDaAPVtmx3tc8mr?=
 =?iso-8859-1?Q?u7vIcTQ3uX9/sbZsNgvR6bLi074Zk4AUGPkFVNs3eKZgLK3n1Kx4wErQtb?=
 =?iso-8859-1?Q?cbD71mezs1iv+oIFvSN9JsoX3mJmNa0db8V6TOdIE6fEFKu7PYiGXSSl78?=
 =?iso-8859-1?Q?ENP2Gmu+V1mmqst7q5XCEgKKFDG8cOLZ1fJ0cLCo9fxx0CoD+G4hUhSPsJ?=
 =?iso-8859-1?Q?tzGheTjM916FdYTDyk5rK7vPIH3/kwGZ2Q9fI3oGim1LOmmQW2mVN58H5I?=
 =?iso-8859-1?Q?eZblbB3eHuD7uPuG2BrPknwN0gUKmmGMjUNkRknxJ2baEysjxx8l1kdOv2?=
 =?iso-8859-1?Q?DU0hXHn9+57naoXmawF2BqwgNSZ2YDDyXu+Y9z/kVZO+JbXBoiSpTpso82?=
 =?iso-8859-1?Q?XbJFGZOxyBud6h8bu2TrItOl2Oagkj5MWxnrrr4ZjEyuUlmz9+Y138Aft0?=
 =?iso-8859-1?Q?W5L/UxNKCTZuKUCAZSmF/IdPoKgCV1vA5yK49eUdU3vYqNGYxynbufy6+y?=
 =?iso-8859-1?Q?oi5Ddu4b3DMPhi8eBU/rtcpcQF92tRNQ8YpZbYu/N/2C/Nd0RevwcZ99gG?=
 =?iso-8859-1?Q?u2tCpOOCSpu10Z9zKgvqITFlUrhuF1XubiIoBOJsOZsTQ/mSS/4CboPcTh?=
 =?iso-8859-1?Q?mfDlMKW+FzC9C9ikYuMcwkK8NJ5aH1ErG1DeD9i0i43QKz+JTxUq7f9YIp?=
 =?iso-8859-1?Q?ytw6pyTYcqy5Bh79IEhOObj4qkNZNFAXNKILf/MlIT9JcUqS2t6y1SDZ8R?=
 =?iso-8859-1?Q?BfS3gyFtj1CgTgZU9LwYMSOywP/l8/fXNbi5TS1z7iqsP5jMtfL2pZrbDR?=
 =?iso-8859-1?Q?SdE31aTQ7MM0OgD4vPm6IU4rWQsh6he4nTlVEpUBoVap1s2IX+QKkxKoT2?=
 =?iso-8859-1?Q?M0gad8tNLSclN7XaW3DewQMQrcxa3245IBoah4/sjSI6HtSI5FBBbkeRWE?=
 =?iso-8859-1?Q?roQlsSvxvyIvwRb7+YVMfis80AHlJLLiz1UoRxZdOde0vCR0RTWCWJn8V0?=
 =?iso-8859-1?Q?Os6YgpT0nxNgt5Tgx2Y1NM2JOd5+zSbtIvGXPF6F?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 67ebc89f-77ae-4893-4552-08ddc4b18b4a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 21:41:38.5392 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 30KGzUbPIMVdUYHnmYsc5qMRWKQmZ6Ic0lqozgkRcd5cJ/7gOURJXMyryzoJ/nTZjbxtF0ezy+TCGfr9Z+Nlzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5276
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

On Wed, Jul 16, 2025 at 09:40:40PM +0300, Ville Syrjälä wrote:
> On Wed, Jul 16, 2025 at 04:20:28PM +0300, Imre Deak wrote:
> > On Thu, Jul 10, 2025 at 11:17:12PM +0300, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > On g4x we currently use the 96MHz non-SSC refclk, which can't actually
> > > generate an exact 2.7 Gbps link rate. In practice we end up with 2.688
> > > Gbps which seems to be close enough to actually work, but link training
> > > is currently failing due to miscalculating the DP_LINK_BW value (we
> > > calcualte it directly from port_clock which reflects the actual PLL
> > > outpout frequency).
> > > 
> > > Ideas how to fix this:
> > > - nudge port_clock back up to 270000 during PLL computation/readout
> > > - track port_clock and the nominal link rate separately so they might
> > >   differ a bit
> > > - switch to the 100MHz refclk, but that one should be SSC so perhaps
> > >   not something we want
> > > 
> > > While we ponder about a better solution apply some band aid to the
> > > immediate issue of miscalculated DP_LINK_BW value. With this
> > > I can again use 2.7 Gbps link rate on g4x.
> > > 
> > > Cc: stable@vger.kernel.org
> > > Fixes: 665a7b04092c ("drm/i915: Feed the DPLL output freq back into crtc_state")
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Reviewed-by: Imre Deak <imre.deak@intel.com>
> > 
> > IIUC, port_clock for g4x is ref * m / n / p, where for DP the fixed
> > ref=96000 and m/n/p values from g4x_dpll are used.
> > 
> > Ftr, m = 135, n = 6, p = 8 would give port_clock = 270000, but there's
> > no intel_limit for DP, so can't know if these params are within range.
> 
> The P divider can only be some multiple of 5.

Right, missed that, so with this ref clock setting an exact link rate
doesn't seem to be possible indeed (within the VCO range used for all
other output types on g4x).

> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index f48912f308df..7976fec88606 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -1606,6 +1606,12 @@ int intel_dp_rate_select(struct intel_dp *intel_dp, int rate)
> > >  void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
> > >  			   u8 *link_bw, u8 *rate_select)
> > >  {
> > > +	struct intel_display *display = to_intel_display(intel_dp);
> > > +
> > > +	/* FIXME g4x can't generate an exact 2.7GHz with the 96MHz non-SSC refclk */
> > > +	if (display->platform.g4x && port_clock == 268800)
> > > +		port_clock = 270000;
> > > +
> > >  	/* eDP 1.4 rate select method. */
> > >  	if (intel_dp->use_rate_select) {
> > >  		*link_bw = 0;
> > > -- 
> > > 2.49.0
> > > 
> 
> -- 
> Ville Syrjälä
> Intel
