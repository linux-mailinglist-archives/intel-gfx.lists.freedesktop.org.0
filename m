Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C520C64D53
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 16:18:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9721310E3A2;
	Mon, 17 Nov 2025 15:18:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P6/XYMjl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7884310E3A2;
 Mon, 17 Nov 2025 15:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763392680; x=1794928680;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=JMKGK4pdT7RwG4/JDfS5yUFkk2vQu22OqsvRs0663PU=;
 b=P6/XYMjlc8cHjkhx9Z0W1ZqY5mXvbFw/lDvnSYaiYFQ0eScuskP4iDcw
 8rsT0y1/mUxEyA8wk2qPbOX5+jHr17LHpwPfH7Z8vg2RPSDXjhXNXvN3N
 ERIXzmQo51uyFojS2BWi0aH05YvdW4ZS+zOTf9mtGDRRHaaknIpL5UV33
 7ASkb8iKztvV37CXlIyzdcKDmpFrS/fZYDvNaj0UtCn2qHQsYzNunQRHI
 +6tO/QqIruxIoojgUNxP+SmKnTKBN3gcUFzOzmmBO/VIioUkKNuaaF++d
 S/5NmX7nwJga3/SI1pdQ2u6/pEpopS1DC57EA7YdKpfbaLWo+9fkNu+5V A==;
X-CSE-ConnectionGUID: HkIO3Wj3R4i1T70ACfkBXg==
X-CSE-MsgGUID: rGROO5yMR7+nCn9HVvuc5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65549607"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="65549607"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 07:17:59 -0800
X-CSE-ConnectionGUID: 2+SggFeQTy6gz72QFkgdjA==
X-CSE-MsgGUID: NbXO08D1QLiRWctHD+Iyeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="189726917"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 07:17:59 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 07:17:58 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 07:17:58 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.5) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 07:17:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=foGsx6bUdU8t2mMSAd0h73eVRsstT9x+RXQMJ3G/pxZ7tUd1IQ8kjfeEedZv6XodedzCaccZP/YWTxzdrtpnhMdupsn/EAPsC7r3z8f/3yr5nrz+yUA707Y+zwIUnlsxHb5L00rbLbieMNcnB9sLkkM6jseepfPRQsFa8jLI4IVQVtx1rLmTH8i3UR0ecyFVIsyEnXrTfaQgcGcT874UkKPYB2QNOYoKTTkKqLx6mUVNqcKB2+/2jEwjy/0rQDpedoT0pE+L8CUHAW9S4IyojXAGwUoLqv2gF2zOQj5T92X706/QNYHqEvdzM49FXMCrakvyFNiMH75U1N26XvdN6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ymTR/mDCgKzkO+zAgnVqazCrDp7ABBjiqPwmsyUmrI=;
 b=OwgYsrKVPmDpFxdX1cxm/qgscR/c3KkTXt5Ph//5Yd+dBnOJDi+H5zMxVduMiZL7NI64NhAQ5995yzOp9enlgD7gOWa3YBioaG+VDS+RmTQnS8KvODt6fQE8VxORxEaPmbGumDzjNUUeZ2June7TvwL/BoF/n8Jc3QKTEZzTvw2OFDYPjZDEy681321/figpR6uW5ZmtyarkBsG1QWEv+xSAVEv9sfFwJBA5AhqwSENjVb8V1zk1or5rM+//ehJqwjFR1Dr+DHM88vZ+ZcZuVdHBA3E6WCyp4Hz1KLWEzOjJwXE/O4n51R85bVEcK9J1LBeUml/fKgIYqa6RmTJNbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA0PR11MB7742.namprd11.prod.outlook.com (2603:10b6:208:403::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Mon, 17 Nov
 2025 15:17:56 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 15:17:56 +0000
Date: Mon, 17 Nov 2025 17:17:48 +0200
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, "Ankit
 Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v4 07/11] drm/i915/xe3p_lpd: Extend Type-C flow for
 static DDI allocation
Message-ID: <aRs8nFHQ-syeq4SB@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-7-ab3367f65f15@intel.com>
 <aRTJq2h7ic7EcpL6@ideak-desk>
 <176314958906.3698.11640605946760436324@intel.com>
 <aRfL-CWPYR6gC6F6@ideak-desk> <aRfV2MuICSW1jR4I@ideak-desk>
 <176339175784.5989.15280881790145867529@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176339175784.5989.15280881790145867529@intel.com>
X-ClientProxiedBy: LO0P123CA0015.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:354::12) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA0PR11MB7742:EE_
X-MS-Office365-Filtering-Correlation-Id: 97bc1975-b319-40e8-fa5e-08de25ec7c24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?J/FWBXFhiG2UusBLn+qiq3ivEW0iI+goyCBUTyZrzyB9bJ20o1x9sC0AtIJ4?=
 =?us-ascii?Q?VUvXOW3+TgjLpuIJFcX85CF8iqKaT0WgKqQaOTB4TSkXZtjCxgWOg7reLnBx?=
 =?us-ascii?Q?qQGK2MCbGXnkfaB1AljQbfm04bnH4RXP8vOLrlpY24tKbGvyBP9Z3IuijzEd?=
 =?us-ascii?Q?ZjLlUQcLNYDbpYE+i6FJaz1fO6AxpZW93VHnyloRvHpX+bTr1+jrweq2zHHo?=
 =?us-ascii?Q?eFO7NjZBe1It2hrDKLzhjnsIQLNX9MXmBaDEf4bAPfCv0KpTNGt87ipZ3vB5?=
 =?us-ascii?Q?Ri0xD/kxS+uAbYUgbLSgAXJ+dN+UU/tLrWEctYQZWssE+OxzPO2ymyOkHq3t?=
 =?us-ascii?Q?av5x8BRfzAafMwhCL9kN/YxoWxywteoR9+YOpbuLtLR5ytBX7ZoH6qdAZVKE?=
 =?us-ascii?Q?JsYUXxFSZRDQTD1ZbwDdYhoMhk2iXqc8zKgczXLynhqKPD0jvOLgoxwWntci?=
 =?us-ascii?Q?4sLEB6lsA7OIXqOdFaX2p9H52kL8kOJ7YiTrhd0xjkp+/4456w5gKS/Cm2W8?=
 =?us-ascii?Q?fGLqc/SZFOhMRgHx1NBMyF5+s5iu70vPZ4V6Ye4WZJzXlpBeIH/rGoZzuV0e?=
 =?us-ascii?Q?1njE2grav8CguylYBc4M5rJ9yKFkqBXYxqSCbv6AB7TbyGrckWKHjfWk5t24?=
 =?us-ascii?Q?+EW6QrCzjmCDTG1blXnMlIvphaw1vm3icVGHfgh0ZUtHlUA/Q5QIZ46vRRjK?=
 =?us-ascii?Q?XTMAHe1rcKfRYs6+tTWcuqK42mJAJsHh9IxiVEowAewCiXVpWtGDb0d4YrOZ?=
 =?us-ascii?Q?4481cgMqRsgxWr0j61/H4z15BF6CuxUYPUrB6dgWmF0jke62v1u2yRPoQjW1?=
 =?us-ascii?Q?8k4ysUHrORQnHu7S+VxU1xhC00et0px6d0eryNzYdfUQnZBB/KgDDpQetjRu?=
 =?us-ascii?Q?x40uU5cBuppZDWdGThgarfDUNh9gyJNMNMxRHApfPg3HidSY2U17skCJ8ADF?=
 =?us-ascii?Q?eH3RmoQz39w/baEEam+tL+45P6gZhZZAPuXWEGdWc98aTYc6FfZO2y9Arvtv?=
 =?us-ascii?Q?oKWxH32zQnT68SKf45AbQ8+HoaNIGXCgT8aqUcE/VSOR02csdTfGJ0wFvKRb?=
 =?us-ascii?Q?8woFZHLn4k9nOI2a70IDneW0rbJDgomFK5X/k44aOUKoWStpFNvB2Dt8ZECg?=
 =?us-ascii?Q?faWGkyg8cO93ZUEH6lbGoiCRwO+mYlaWLsfap6KIUOfGMd1f0UQM3r+GlTfn?=
 =?us-ascii?Q?15JWONFeM74zJKBGAUn5059m8jYXm4PytkeKhxQyz75QHrANqz19qxY3UFtu?=
 =?us-ascii?Q?ETFYDu398LYgkHSIvPXPk2CPv7SAydNeDOeNhVT+hM8hVXa3B42zNAD2euPB?=
 =?us-ascii?Q?eU1XZg8dvY0VJV8DZYW/IxxQOB+b9VFOMaLZZSPPGDZGchKMTRsVSggxWOfj?=
 =?us-ascii?Q?htLJyAJzn6acWYLsxxjioz2DLml0xmB/l2m0YIfSFJWDE/gWHmBqROTgAGWW?=
 =?us-ascii?Q?95EzOsft2aRF965xI3hzdb1vENmHHWwy?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?w5inuxnSFhGUezEVY+Nu5B3rUSEvZsIKpw1a4U17VtqHO5+mcQCp1IHDz/EA?=
 =?us-ascii?Q?O/J77EOPBVzzghOGYjscSh6BC95dWVdfIlM9gl8BtDugLFKGyFuTWbHG5IMN?=
 =?us-ascii?Q?lbi9OYeREzB1N561Qgaui3NrznHyQlm5y+S654cJhzwBNX6oFPyoG/czMFFl?=
 =?us-ascii?Q?W5UTMZcV7GBu1MNcne1sbPdM3cNL36LcTLIZbwW1S3CCrfKBnKRhkwgmWJpj?=
 =?us-ascii?Q?6IPRi354tuj3h8NPTg2LZKaERJxiyHZDQEZlIBxeZY2eHlCC3pFy9CEgeNT2?=
 =?us-ascii?Q?3FktKYYpQ6iVuFXH34O+dzU+FPwEgfBk6Ob8wGhSzV+r8b9XHj3YO6DXhpAF?=
 =?us-ascii?Q?v2pAtuq0jY3EHaOq1qLG+f0pEkLTlG0MCsIPbMh5xGNJOa+ztC1zU5Qc2AX5?=
 =?us-ascii?Q?+HW/2jmqPHT1Chnisl5uP1gdNFDKMtGh9CiWlTYEF+dkT62IHFuwPD+8AnVg?=
 =?us-ascii?Q?WJGcIKWXWJrqJN6O4bbKTYOWcucqaTB2CF0GsUhds46698nviMo6WT1ig59x?=
 =?us-ascii?Q?pUtL6Ai+aJx0BR7L2mp85NLhLaQQLhHLepMo9y2Q1ka7AaQfiqQoFuztYCoN?=
 =?us-ascii?Q?tNoiNXVshToDO7ebUap9cgjiId5HPj0PYICFX4BypCLbxgG2QqGeuZPB5IQ/?=
 =?us-ascii?Q?QnH2g9AkFfbxtMvgouH/+mngLvW8WUqPDwrwjzLy3Oon5uDom8byAAOn1rbG?=
 =?us-ascii?Q?XeHZdgv0Hm8i3pmzK4yqu3RayXJUkRwVMqI7t3LyPqEKT5x3Oong57YIqWT+?=
 =?us-ascii?Q?ebJeCn+4fh8mDvJySv2LZnWmY6gPg4QrzH4RxlY3LscG+9dQG7BfnFNEIquc?=
 =?us-ascii?Q?y/2QZbe2aqz5gfrRXvY9PKMF5HQpSj7chSNdFCmGkEI+Csz/Fl+aQsiOoIA1?=
 =?us-ascii?Q?htLpLnxPzwLwyihN3Uw8Sz+cLbsziTj+9vA4xL7gkfBcrD6Wt3OoLkheNk5q?=
 =?us-ascii?Q?ECmBcR88nm0uGmG/BxgTUnSi+NyK6g42V01ZW6Vwg3GNab6L9cUBy6CYnryj?=
 =?us-ascii?Q?1qo/jN5JaCmeY1FSfQK5zwQr8F+/2XzPuFnTVIxg+cy6z1GVv5QWPrfgZynP?=
 =?us-ascii?Q?E14g4QGdeVChZPd+VMXVq7YUr0hPpVTBouLPeUaJTDz0q12xeE4HB3iviZvh?=
 =?us-ascii?Q?wwEOAxhA8H1YMWcDOfpJo56mBquoCrRRpKc29qq+IGF/SXintuvNxKeQdTA4?=
 =?us-ascii?Q?wtNyCty7jUH1yTaNNnwOtqVpH8IOkTJXQcEeB+dOh86o6FwRGk6VhoVYhG9+?=
 =?us-ascii?Q?So0jTFlpVMOjefg9d67ctP9Pek/gJjxnBXWR1QnuQYPBFU9Bph6lGKTn0fmg?=
 =?us-ascii?Q?ejNMwqVtbM1scXZxUme0ZbbQct17zDFcUi7otOXWDSz/N5MbUDr1tO/3qvUH?=
 =?us-ascii?Q?AM8E/1/oIjsC8PJ7vodN8E7WC1Y33KQFl5FoykBRKHw+Aq8cLEHbbBhEYmse?=
 =?us-ascii?Q?2Z0cDP5+eF6KpVjpm+eZYicsx+dl2IVMzynsg02MryWJ1D/DKDqogVj1XMY2?=
 =?us-ascii?Q?aNP1LLmP/jgkFn3V4etM/T6asX+oykwMhFPLQiSaEP60tXuKldFP6kPQp9ML?=
 =?us-ascii?Q?XqCJfY9/h+KVRLCCYg4lz92dP7sC+Kpjnes4HY/XZloXvXSSoQysCe5gHmOs?=
 =?us-ascii?Q?oUma1+C2zlC23LHBlKXIBDqEfZXRLhXSII57Rltw26Oy?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97bc1975-b319-40e8-fa5e-08de25ec7c24
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 15:17:56.1848 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sm5ZuZueagYIyjF2G9Y1xrsWXesznSGB5hEWr9tSVbbZPbh6dYrdyG+yNqlhX8gqZhsiav9Ev99e32W+txZSCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7742
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

On Mon, Nov 17, 2025 at 12:02:37PM -0300, Gustavo Sousa wrote:
> [...]
> >> > >> +        if (iom_dp_resource_lock(tc))
> >> > >> +                return false;
> >> > >> +
> >> > >> +        val = intel_de_read(display, IOM_DP_RESOURCE_MNG);
> >> > >> +
> >> > >> +        consumer = val & IOM_DDI_CONSUMER_MASK(tc_port);
> >> > >> +        consumer >>= IOM_DDI_CONSUMER_SHIFT(tc_port);
> >> > >> +
> >> > >> +        /*
> >> > >> +         * Bspec instructs to select first available DDI, but our driver is not
> >> > >> +         * ready for such dynamic allocation yet. For now, we force a "static"
> >> > >> +         * allocation: map the physical port (where HPD happens) to the
> >> > >> +         * encoder's DDI (logical TC port, represented by tc_port).
> >> > >> +         */
> >> > >> +        expected_consumer = IOM_DDI_CONSUMER_STATIC_TC(tc_port);
> >> > >> +        expected_consumer >>= IOM_DDI_CONSUMER_SHIFT(tc_port);
> >> 
> >> One more thing occured to me: why can't this allocate any free DDI? IOW
> >> does the address of DDI_BUF_CTL (aka DDI_CTL_DE) used for tc_port depend
> >> on which DDI gets allocated (or is there any other dependency on which
> >> DDI got allocated)? AFAICS there is no such dependency and the above
> >> address would be DDI_BUF_CTL(encoder->port) regardless of the allocated
> >> DDI. In that case any free DDI could be allocated here.
> >
> >Ok, checking this again, DDI_BUF_CTL etc. DDI register addresses will
> >depend on the allocated DDI. So nvm the above, the mapping needs to
> >stay 1:1 for now until all the DDI reg accesses are converted to index
> >the registers with the allocated DDI index.
> 
> As far as I understand this, especially after talking with Windows
> folks, the allocated DDI will define the port index for the whole
> programming, including the registers used to program the PHY - and the
> hardware would take care of routing to the correct PHY.

Correct, that's how I also understood it after "checking this again".

> Thus, it appears we would need to do the allocation at hotplug time,
> like saying "this PHY will be driven by DDI x".

To clarify, if the mapping is 1:1, as in this patch, the allocation can
be done statically during driver loading as discussed earlier. This is
the only way it will work atm, because the DDI allocation cannot fail
during runtime.

> One of the reasons I think we can't allocate a free DDI at the moment is
> that the driver is expecting a 1:1 static mapping for HPD interations.
> We will neeed to make the driver aware of the mapping in order to use
> the correct encoder when handling HPD events.

Again clarifying, that the above is true only for legacy connectors. IOW
for a TBT/DP-alt connector, where IOM does the DDI allocation, the HPD
IRQ delivered to the driver will be already according to the allocated
DDI. That is those connectors are _different_ wrt. to the mapping
requirement than the dynamic legacy connectors, for those TBT/DP-alt
connectors the DDI registers will be accessed based on the
tc_port/encoder->port to which the HPD IRQ is delivered.

> --
> Gustavo Sousa
