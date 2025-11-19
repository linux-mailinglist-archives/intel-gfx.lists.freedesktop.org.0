Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9E3C6EEC6
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 14:34:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 928B910E23F;
	Wed, 19 Nov 2025 13:34:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NQEJTXGw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9880088FBD;
 Wed, 19 Nov 2025 13:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763559283; x=1795095283;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=JnxbdUbEB4qZov22DDxz0MBbbddcNvIEqEaEohoSDnE=;
 b=NQEJTXGwdu5yaWxMYp0cPq2BtdXKFrRm9QpZMQzbl1TnO5S3cIn2Thze
 1no93PUZTgoYLYFpABexCP8VMglSMWbzHEDSp4xTu6EgK6dJ7+D3yAlNs
 zunSJwkCZYfchXNob4npJPRW8BCfOD7kNJbHP3D4eYRU3bMIDRK4NeH3W
 nREwn/ErIC71kOxs5IawsXAeXAZQrJwtaeI+hww2XWGKcQxVF7fM8mHhg
 7cHX+8wivcPc5i/3/pJrKyqNUgL+gA4B9g/NC6w9w7/gKL+h/ZIeV+akW
 rBH1+jTysHBJo86fpsj7J/izYpv5sZH0tAhjnRsSV25gh/0pG/XxMj/TU g==;
X-CSE-ConnectionGUID: MPUzkvSjQHm0lTUYnsSbZw==
X-CSE-MsgGUID: TaoEg3sdR4+DL814X1Y23Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="77063445"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="77063445"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 05:34:43 -0800
X-CSE-ConnectionGUID: jI9XIDqmR2yCeD2NwsbsxQ==
X-CSE-MsgGUID: bsujWCTVS9ai7/Gj4QKNGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="190304546"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 05:34:43 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 05:34:42 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 05:34:42 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.50) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 05:34:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nVdOfDkhuc1QlNJY4tOuvHOULbk1xT6cVH24Jd88U/Hu0uMDlZ0UuYoCNEhQtQN/9+5mK2CMxhPoSUAzTRi9UPX8cDHoMh5QHBZskvoV8T2asveP+2YEknQcnqQ+DfassfK/xpOOhuLed6COHlz7II/9uHWBaxtK3IRW/PR83uAfSVhqkUYPecbdejOlJ3EqELxCwRQgh/9cHxtrsoNhSU0PxpYtYTJNLR5cyvU+fIfIG9k0EX4JYU5ZAdhZZpiJZEAV2HnJV8B7EjHd9cviKwR92VDNisd5a7Fy58i9ab9pSEtA+lo0xlEX5AyqNbBQuvjVBIFBIeXDPMOMS2tC9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WkAxse+BEHeH+iGgRQCee5ZFcIReRe4pxDDsUEVgVC8=;
 b=AxB4HQrBkNUywC7CCBD0x42RZHDWYy5gg1cSDHhf3XwUGLqcP3uylUY6JPiDzXmpJKMkZ2MaXjMhSVytldtkoufTn7tbQDDooet1H3/KpsZdlz1ZluwNFAwThknxeq7fNlZOu0+Y1m09GVgJUp+w1U+s+RjE+NXsPotYJotIkwd0BIAO+DViwHe/0WcRvCJNHxBTOapYYFO1hGLkP+0Uic8BRO1QqSLw/5n15TDF8bJlmira8cMCCIJX6i89VOiNEgU9TIRGo2y3V7muSt8RC6yP79DNTy3n4PtGSt4eFtsQKZ9tJ0GKJ0QfG/FCDTDJkNnPIOjICAhbrowDV0gjAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7136.namprd11.prod.outlook.com (2603:10b6:930:60::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Wed, 19 Nov
 2025 13:34:39 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9343.009; Wed, 19 Nov 2025
 13:34:39 +0000
Date: Wed, 19 Nov 2025 15:34:31 +0200
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
Subject: Re: [PATCH v5 1/8] drm/i915/vbt: Add fields dedicated_external and
 dyn_port_over_tc
Message-ID: <aR3HZ7KLzejTCOOJ@ideak-desk>
References: <20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com>
 <20251114-xe3p_lpd-basic-enabling-v5-1-c183388367f4@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251114-xe3p_lpd-basic-enabling-v5-1-c183388367f4@intel.com>
X-ClientProxiedBy: LNXP123CA0019.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:d2::31) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7136:EE_
X-MS-Office365-Filtering-Correlation-Id: f4949b71-5fc0-49a5-ce7a-08de2770633c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Zc7j2TdjMrZnLNhuyAI2DHjsEX9t+U9jShbPDwKbb5wDtHQbD1gvcfK2FZhv?=
 =?us-ascii?Q?dVTexdAQQJt9iDCOIImP60kfvVzLiohMm/u1FOQv0g/5BvV3X84JQtH2/55S?=
 =?us-ascii?Q?ZSaG0uyQUIwaP0yC36WH0GE98JtXM3ZPevqykM+LJsaMWte1rn/FGUj0nf4N?=
 =?us-ascii?Q?f6ni1yenujJjL8tR0KW3j/0GHTgDh8rj62mjtfEfv75d1WrFIHRoN5rjntLk?=
 =?us-ascii?Q?JhcPRFoMWit/wVoSv80eGpDJ47IMC/y9PLTXLyVhDUytHUEnaqE972xYCAeG?=
 =?us-ascii?Q?/9RCHN6Utu6OPEFydcycjzkDQ2yz+4kzH57Qob3y7kfFsptr8FELbpI59Tjm?=
 =?us-ascii?Q?j4PWuiNI5OptfHlRjeZMbyDNgSA8Q+PlNhpkvkmmD7tmpYUIsRnSqLjyhKAV?=
 =?us-ascii?Q?jcc7wryzWD16U+aEbQhOP+k427p0xg5NY1yLvP4F0D6xhqFJriJazXcgZlNr?=
 =?us-ascii?Q?A60vT8OK9YDPx+hel1uEEuTkZmHXEhatTgTX/s8w2g7deB9Olr/7rh7YTZfo?=
 =?us-ascii?Q?K2uF69zHKuinKQooAOHzsTlaCl8BEWLS0MBBNNGZDzmdkNn9m2oac06TH365?=
 =?us-ascii?Q?P73HUdPERgrP+G6TF/O3fzxXcQ5I3zxFDY97Kt2AdzdpHCZX+2TJAQIApf3D?=
 =?us-ascii?Q?MPUFxZh+9ZO7Wrs25jlwAQPDvCEWTcevRLSh/6e7HY/A5FUX8zx/ADI+DPZZ?=
 =?us-ascii?Q?gucJJWhCr8ZIKKYRDCz1Etjzy4EZ0U7K9+fq8JrHxAIL+eTl14kkYbJ0iZ00?=
 =?us-ascii?Q?/oPEKsD6IWzpY3HcKwv9SkIZ44Jx0FNYhUwd2FDwrMVbogQTWs4Vlv+gUc+V?=
 =?us-ascii?Q?hBM5hmuHOZbE0v6b7ardT7/tocRezpYi4EezKLhAMHzgzC3nnS0ScD2JYkAF?=
 =?us-ascii?Q?RVCwLARMcOtCb7fp5pkPEPC5sYZwS8IXReDsm9JuTmLMl3vPh6upPFCDkhOy?=
 =?us-ascii?Q?U2mpmwVewG1sb7HoXYaHr2eYUvp30vU5EWTYaN8ZoYMQIfO94ZbEk+84PAue?=
 =?us-ascii?Q?NbTkKe5QBVZAb7Zg8bZR8x6pxMP+rbb+QgsPKVJGxVM8dngvTM1RVg3O8McO?=
 =?us-ascii?Q?+Ei5xCDMb8iKsH4uL3/CYODVWBLsXrnq2cJwUwot2XjHEjXaxubQNFvslI1H?=
 =?us-ascii?Q?ewlXaNW2Q+ymHBGQjk3xX+Bda5LGAJhuG9S+b2DUmrAyu5UYopMffH14fX+r?=
 =?us-ascii?Q?gfKDutdsA4FsAbK4kcl7GoP43gfWspjOoy+C0iAiUbwPyMYFtkw3HXNmPUBh?=
 =?us-ascii?Q?6eS/VruSS6A46S7hDn9GN2Pa9XOWFQ//kBPThpD3ETsyzw7M65KR/Sley6Co?=
 =?us-ascii?Q?Ys/+F/5KOZKfuf8fe1FhhkviFMZzKlmMktPPGNKpf/xyJjHzbC2w2y03mva4?=
 =?us-ascii?Q?28PcOyE+trfk7GaB0db86d//YQ3NLVFIOLtsh5MUQpbqd5vXa8AT5YkYOaFQ?=
 =?us-ascii?Q?3lmp2SOvWuv5xD0EoYWR6r0vv8YQFX1/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yaV6FXM1+d991/l7zM0Gva/dwxoSUqVqKUmcyxgd2KkAVAH1nEkHJVW3bjav?=
 =?us-ascii?Q?DAmOC5JFuP/DlL+ct6j2BFAI9LaXYAlFnmKJ/4eVJoumcGKq8Ta39dRk6DQs?=
 =?us-ascii?Q?OmeQXZabC+0wkd1Wf+TRF6L4o5JFuHxtqEGRaFDG00fY5JyyFSxAXZyuGFHL?=
 =?us-ascii?Q?zzjDma1b2AKYak1MUU8ZvPxKBfCTbUU2m1w373N0iR31QxFdf89ceSR7jyZO?=
 =?us-ascii?Q?9Ql7gUHsY9tmfFQoeVAtdNOkCO6jTdIkdH8Uvhm62jMCIQJ3kLwBDkcIut+R?=
 =?us-ascii?Q?D6LJQWYH3B9TevEn8PO4jH3A4wnCQ1D42xFwEElmAl8BEo2kP4SlyaFuvolk?=
 =?us-ascii?Q?opX6lm+I5G8sFhRlkxeA11hAOsBTnTEVvCcVTokaXt3eSINRm0RhgD/CqL2K?=
 =?us-ascii?Q?0sszW1bXWchZl4AnocNhHKcaRPXjIniNrLwdCp+l1TgY0PDkA27diZDChCcv?=
 =?us-ascii?Q?Clmtsk2Z5i8hmwysRxGdzqe86qIb1e5hVPimeXPQAT//eG25eJ1Jv66oBIAN?=
 =?us-ascii?Q?j+nnpniV2jP+pFzunQsFOD7drUzDKLOii0F/0qcJbBHdyBd7YnIkvG/s177c?=
 =?us-ascii?Q?5dB0Xi+Og5jYkN7oiGNMg1a9GGAseq7EhhI8AY6cHX/y6uFBZn7bS/Qo9dPY?=
 =?us-ascii?Q?DBFuWGYyLHms9eGhYkE3MV6gY0KKlWU8D/JK9ApBCaOXKX173bUMVvd8/iXo?=
 =?us-ascii?Q?X7I91J9xXScRi//9mSY5miMXFR8h97l1Y5f59RtPirZJqWPyl2Na5blatKF/?=
 =?us-ascii?Q?0P3Y93y3UQoDs/QRZf0VmraJkOzRiaf5x22G8aY20uFnwPlTNfCEJDNUY8Q7?=
 =?us-ascii?Q?y6PYNlNdq+I0JNVW4P+aY52YE2dfmlCbY+7X2mD5lN3NZsU7fEt2qwgYAX6M?=
 =?us-ascii?Q?mzeea7mFoUAZ1Bij5mKeVCRA/2M8cX340oEqfBzA7Cg8EboFsVWN3qmIxAr0?=
 =?us-ascii?Q?lcjrerAt9WDYo0o13OFCl907G4OW9xzSWC/NDDmAx3YOHmwZyMLdCw9uLjkP?=
 =?us-ascii?Q?uB6aNUszDwhyb2KcjXfg1nxTLi7hv3sDqs8ozC0E1UfLQ/Ke+TOt6kG0B7ch?=
 =?us-ascii?Q?MxkEJgWdT9C1YFbElhxlRhdGBnsst7mOkACKutRpPGXXOaMfchwt46xVL9em?=
 =?us-ascii?Q?naUbaGdP31rZvMkfkPcKg+wSLl/wb4Zun9mSPzQSUHSTWPQY+dQK5asxl0kc?=
 =?us-ascii?Q?1jEc/mF+W9BZpN+pLP/UzNOJtHJPsnUsF2CzFEtVS7UXboRQaR/RNo/MnqcA?=
 =?us-ascii?Q?h5Awkh4eFJyeunu4CwlDi3wYysvRi/D+IAc905NH3uV+F4DZ5P+ONAduYE8K?=
 =?us-ascii?Q?ux8on5J9HWtII/zS/1ndg787h6vYZ0GsVwiOlMk/UXW6CLGHSEq7RrjhF6QW?=
 =?us-ascii?Q?jNzLtVm7kgUUzSxOM2/LNmHPjQQKFWJv3D2/EdOJlprJ9GJMdGoPSJ/7NNUh?=
 =?us-ascii?Q?XgyKTF0fS1xofzQr2teAjkr2owUu3MRlAewzIokZ+lQlkpvVXom4MNwu81Hn?=
 =?us-ascii?Q?UkZFr6ZcbnLZo6wwjF1dO2LDYpUU+KIRc2kRrpXzKdFTcR5hMqkAYvv0M9J7?=
 =?us-ascii?Q?+cDuiHq1k0i6QTGRtY9R9U/uQt5pjbNTYDZB9REaftMDSR79/eNmZk+hM01K?=
 =?us-ascii?Q?9fHyIILofhz7uIHtkRL6OkEoJrbfJE/H0FcEErVCnFg3?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4949b71-5fc0-49a5-ce7a-08de2770633c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2025 13:34:38.9954 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 44QgsnazyVtLBO+MkwnyvP7sDJjchGVydcjGWahMpQEgtXK5p8ZhbJCE0Xp9kPjkEQl+0tOYqDmxXGpfypaBow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7136
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

On Fri, Nov 14, 2025 at 05:52:08PM -0300, Gustavo Sousa wrote:
> VBT version 264 adds new fields associated to Xe3p_LPD's new ways of
> configuring SoC for TC ports and PHYs.  Update the code to match the
> updates in VBT.
> 
> The new field dedicated_external is used to represent TC ports that are
> connected to PHYs outside of the Type-C subsystem, meaning that they
> behave like dedicated ports and don't require the extra Type-C
> programming.  In an upcoming change, we will update the driver to take
> this field into consideration when detecting the type of port.
> 
> The new field dyn_port_over_tc is used to inform that the TC port can be
> dynamically allocated for a legacy connector in the Type-C subsystem,
> which is a new feature in Xe3p_LPD.  In upcoming changes, we will use
> that field in order to handle the IOM resource management programming
> required for that.
> 
> Note that, when dedicated_external is set, the fields dp_usb_type_c and
> tbt are tagged as "don't care" in the spec, so they should be ignored in
> that case, so also add a sanitization function to take care of forcing
> them to zero when dedicated_external is true.
> 
> v2:
>   - Use sanitization function to force dp_usb_type_c and tbt fields to
>     be zero instead of adding a
>     intel_bios_encoder_is_dedicated_external() check in each of their
>     respective accessor functions. (Jani)
>   - Print info about dedicated external ports in print_ddi_port().
>     (Jani)
> v3:
>   - Also zero out field dyn_port_over_tc when dedicated_external is set.
>     (Imre)
>   - Use intel_bios_encoder_is_dedicated_external() directly instead of
>     storing return value into variable in print_ddi_port(). (Imre)
>   - Also print info for dyn_port_over_tc in print_ddi_port(). (Imre)
> 
> Bspec: 20124, 68954, 74304
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 73 ++++++++++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_bios.h     |  2 +
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  3 +-
>  3 files changed, 76 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 4b41068e9e35..0283c0d418cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2529,6 +2529,54 @@ intel_bios_encoder_reject_edp_rate(const struct intel_bios_encoder_data *devdata
>  	return devdata->child.edp_data_rate_override & edp_rate_override_mask(rate);
>  }
>  
> +static void sanitize_dedicated_external(struct intel_bios_encoder_data *devdata,
> +					enum port port)
> +{
> +	struct intel_display *display = devdata->display;
> +
> +	if (!intel_bios_encoder_is_dedicated_external(devdata))
> +		return;
> +
> +	/*
> +	 * Since dedicated_external is for ports connected to PHYs outside of
> +	 * the Type-C subsystem, clear bits that would only make sense for ports
> +	 * with PHYs in the Type-C subsystem.
> +	 */
> +
> +	/*
> +	 * Bit dp_usb_type_c is marked as "don't care" in Bspec when
> +	 * dedicated_external is set.
> +	 */
> +	if (devdata->child.dp_usb_type_c) {
> +		drm_dbg_kms(display->drm,
> +			    "VBT claims Port %c supports USB Type-C, but the port is dedicated external, ignoring\n",
> +			    port_name(port));
> +		devdata->child.dp_usb_type_c = 0;
> +	}
> +
> +	/*
> +	 * Bit tbt is marked as "don't care" in Bspec when dedicated_external is
> +	 * set.
> +	 */
> +	if (devdata->child.tbt) {
> +		drm_dbg_kms(display->drm,
> +			    "VBT claims Port %c supports TBT, but the port is dedicated external, ignoring\n",
> +			    port_name(port));
> +		devdata->child.tbt = 0;
> +	}
> +
> +	/*
> +	 * DDI allocation for TC capable ports only make sense for PHYs in the
> +	 * Type-C subsystem.
> +	 */
> +	if (devdata->child.dyn_port_over_tc) {
> +		drm_dbg_kms(display->drm,
> +			    "VBT claims Port %c supports dynamic DDI allocation in TCSS, but the port is dedicated external, ignoring\n",
> +			    port_name(port));
> +		devdata->child.dyn_port_over_tc = 0;
> +	}
> +}
> +
>  static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
>  				 enum port port)
>  {
> @@ -2693,6 +2741,16 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
>  		    supports_typec_usb, supports_tbt,
>  		    devdata->dsc != NULL);
>  
> +	if (intel_bios_encoder_is_dedicated_external(devdata))
> +		drm_dbg_kms(display->drm,
> +			    "Port %c is dedicated external\n",
> +			    port_name(port));
> +
> +	if (intel_bios_encoder_supports_dyn_port_over_tc(devdata))
> +		drm_dbg_kms(display->drm,
> +			    "Port %c supports dynamic DDI allocation in TCSS\n",
> +			    port_name(port));
> +
>  	hdmi_level_shift = intel_bios_hdmi_level_shift(devdata);
>  	if (hdmi_level_shift >= 0) {
>  		drm_dbg_kms(display->drm,
> @@ -2750,6 +2808,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
>  		return;
>  	}
>  
> +	sanitize_dedicated_external(devdata, port);
>  	sanitize_device_type(devdata, port);
>  	sanitize_hdmi_level_shift(devdata, port);
>  }
> @@ -2777,7 +2836,7 @@ static int child_device_expected_size(u16 version)
>  {
>  	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>  
> -	if (version > 263)
> +	if (version > 264)
>  		return -ENOENT;
>  	else if (version >= 263)
>  		return 44;
> @@ -3721,6 +3780,18 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
>  	return devdata->display->vbt.version >= 209 && devdata->child.tbt;
>  }
>  
> +bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata)
> +{
> +	return devdata->display->vbt.version >= 264 &&
> +		devdata->child.dedicated_external;
> +}
> +
> +bool intel_bios_encoder_supports_dyn_port_over_tc(const struct intel_bios_encoder_data *devdata)
> +{
> +	return devdata->display->vbt.version >= 264 &&
> +		devdata->child.dyn_port_over_tc;
> +}
> +
>  bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata)
>  {
>  	return devdata && devdata->child.lane_reversal;
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index f9e438b2787b..75dff27b4228 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -79,6 +79,8 @@ bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devdat
>  bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata);
>  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata);
>  bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata);
> +bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata);
> +bool intel_bios_encoder_supports_dyn_port_over_tc(const struct intel_bios_encoder_data *devdata);
>  bool intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_data *devdata);
>  bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_data *devdata);
>  bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index 70e31520c560..57fda5824c9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -554,7 +554,8 @@ struct child_device_config {
>  	u8 dvo_function;
>  	u8 dp_usb_type_c:1;					/* 195+ */
>  	u8 tbt:1;						/* 209+ */
> -	u8 flags2_reserved:2;					/* 195+ */
> +	u8 dedicated_external:1;				/* 264+ */
> +	u8 dyn_port_over_tc:1;					/* 264+ */
>  	u8 dp_port_trace_length:4;				/* 209+ */
>  	u8 dp_gpio_index;					/* 195+ */
>  	u16 dp_gpio_pin_num;					/* 195+ */
> 
> -- 
> 2.51.0
> 
