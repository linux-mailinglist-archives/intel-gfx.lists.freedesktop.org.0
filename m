Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3219CC5FD29
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Nov 2025 02:22:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF70B10EB57;
	Sat, 15 Nov 2025 01:22:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fj3zWBkk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A724D10EB57;
 Sat, 15 Nov 2025 01:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763169761; x=1794705761;
 h=date:from:to:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=iIX5gzWlOEaPIC6j24yDP+r1WBkQfU1THYT8UOoXWgY=;
 b=Fj3zWBkkn0y+Bkv7prnLCn5GiVttF9JHDxk0r0QWH1Mj/1/pqt5XELeI
 8hBGz/txvbFqpVp60yadl+bZR34Nfvzx7GgGDDNlUahOOvuV2DaNor5P4
 lbibodamKvdHS9XcQZtUqtpd7SmYuZOVRLkS6L/vEu74VM9RhHuV31UyJ
 5gU8Ni1HbGchVW/jlKuGvRYLEjVvbCdZKxaRw2YIkgKcjgLvkZnM4xBOu
 xLQjfsegED+RX6bL85X+lT8lMr8Lx6PMcgcVvxHLIdtIwAm95iqok1VTc
 HK4jC+Lw2xVf6hgwP2iIiqvLvJOVAoSNymxatkk9RVnFAV47wLnrspkwk w==;
X-CSE-ConnectionGUID: uQ2SMSQtTJ6elky3j9Dzfg==
X-CSE-MsgGUID: /Iy+Ti0kSS6yZc6E0NHrUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="82898312"
X-IronPort-AV: E=Sophos;i="6.19,306,1754982000"; d="scan'208";a="82898312"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 17:22:41 -0800
X-CSE-ConnectionGUID: C8Luf1inTkCt3AEpp/s9WQ==
X-CSE-MsgGUID: B7V37cweRZedn3vzN/D5ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,306,1754982000"; d="scan'208";a="189938391"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 17:22:42 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 17:22:40 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 14 Nov 2025 17:22:40 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.30) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 17:22:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BQ4dkH8/0xOWcIP5G3TeJwXXQ35y920eX0TeQ4ZcO6pbKAUTPF/bUEf+VKvBDLKRQzz2jEu6F/bLKWPJoV7BRbJc0kI5lVJ3/94hror3HKuqw2qy0E1uzfaDdomkPdsbcSlX9NuFiii5pjPtRNl322T066UlizYoqRQRq8jQjXD7fg61Lw1cp0zW/OKWjrALP/2cpDqmMgLV9LhvsNV1VMBu2EAR+Fz27XyKDdr/0MPwmLnFxWYK9wpFB3ktP+Y2Z4eEuZwOsr2wpesf+ZgEBsioAPwRMQNL1wwTxcdAHRANKAaCq2dmmDcOTeDOOgNODBREHsTQT/mr6Xf/wLsgUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nTrq56amPQIP8ugSCD3XkWcN3xpNgxFe5NXhFVZnJus=;
 b=AtR0M8l5g6FVBKftKe3HCC2Ll3BO/7cbtfmjKQl9LA3l29QphH3QResbPfOmxZ218MJLwAILAGwpcksOrmHTgcJSAQcQeXcFPplvMA93sZgdtBjb9nP1/yiQCAAtbrBRVTO7VXGugQr8shj6h1Jcf1fU4a47rUHG79JIaCUb6WEajz1PyCVPSU7bBkB/wDIRTyymeOkufqFf1hBrrgiO/vwjRXWOhLq+6vySoN/ESSbqXG1BkP6kVqXL+ienzpxtt6MJaily01IZDlYxRT0hQW8xz6pQNwtZZqdkZn2UhKqLo3r2tUqXf9egWKeIRFbrqAGh6kbj0JOB23x7MhU08A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB4791.namprd11.prod.outlook.com (2603:10b6:510:43::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.18; Sat, 15 Nov
 2025 01:22:38 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9320.018; Sat, 15 Nov 2025
 01:22:38 +0000
Date: Sat, 15 Nov 2025 03:22:32 +0200
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH v4 07/11] drm/i915/xe3p_lpd: Extend Type-C flow for
 static DDI allocation
Message-ID: <aRfV2MuICSW1jR4I@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-7-ab3367f65f15@intel.com>
 <aRTJq2h7ic7EcpL6@ideak-desk>
 <176314958906.3698.11640605946760436324@intel.com>
 <aRfL-CWPYR6gC6F6@ideak-desk>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aRfL-CWPYR6gC6F6@ideak-desk>
X-ClientProxiedBy: LO2P123CA0037.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600::25)
 To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB4791:EE_
X-MS-Office365-Filtering-Correlation-Id: d4acdf7c-6a99-4a2e-d202-08de23e576f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|921020; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2w11FgMK4oPwBr7gIHLiC8dclRsONjypzuPa3wT6crstH12V7XWbQ7OVr6Fq?=
 =?us-ascii?Q?DOpNabe61J2FXoPU1r2nlVjulzAsU2o1HQH+Gr/2EXdUbNKTFfHgJR0ybTNe?=
 =?us-ascii?Q?eNpbzr6xG8Y/2soLmqmUBDZGa8JM4iqTrCcM5eP10YseOGluz1yLTR6XoxhX?=
 =?us-ascii?Q?eYzk6wlnc8Ik0oWSjRjk+r5cA3zenbKYqV9fYD7q9bIr2GXt3XokgSv/hCwH?=
 =?us-ascii?Q?26qEhr44mPPD5xmEiHBqLWaToXz5K2cNKVjzqt5+Jsw8GuIrcUnJYF2mYUo3?=
 =?us-ascii?Q?O18Q0to+45OIDWSZ5ToS+cdjtHtKz+9yhYVFuTQYlBIHQu9b3FY4BTEhoyY9?=
 =?us-ascii?Q?GAsoWF29fH1Ac+1Bpt+jzBy4wYCbnJDKoPi4/ojkUpVbe9d6kOzcl5cS5Ey8?=
 =?us-ascii?Q?h7fbZJJ5RjfJPy3RrwELxzjYXAaySb76CC+ZhBXFRVPVz44pkpgOIcg6eR95?=
 =?us-ascii?Q?dDQEnWZ/EZiWQHg9wQlxZ70hiXDzfbx69rqfET3q/j9UHA4b1l6X9tIwpqo3?=
 =?us-ascii?Q?2KzEuDZkMCPX6DzqieKnFFCiLL1HZwJ2hE3bkoAdTFe7FoqQrSacnwqxP8gQ?=
 =?us-ascii?Q?cWR6lrWOOmK+cy5AxA/8rg8kfARvCl+gf6tjD9sWUJFHqqS/rEtNs5ZVNreE?=
 =?us-ascii?Q?Xe1rDSYyZ8zWC/Xv4Os3rwvfO4GupPgErny0PblTyi+R0YvvsGj5e2D/vDfL?=
 =?us-ascii?Q?wKdc0WWMJiGJ2izvZIpSkjlulba+UW8x6LNVkhlb1N66mNKBfXzJrBXyoL33?=
 =?us-ascii?Q?TKpvTSQMmOvyBt2ewyBhlFEGZOnYhnhWmKngpIvFlg3CQBr8Mlzvgx1Vb8ze?=
 =?us-ascii?Q?vEdfeJHl4WfjP4IrYpEufWXTMnQWrwPQU3j0SFMaPnE1cUgZ5A/TxOq34Ckj?=
 =?us-ascii?Q?ssHBo1dJ9dQowpF73rutrGIEsTluwMWU4iKr97AQh4t47uMvzMW9QH91AbrR?=
 =?us-ascii?Q?pg9e3naqOqBcurIh5utbw+QXCWouGKo+kH18psLwOucb+cOMEwENAcF6T/6d?=
 =?us-ascii?Q?oH9YtzvEc8vKMMgImjR29vFSDt9lKJKheQMiiniLXtolKaNTOmcUYC2YNbvT?=
 =?us-ascii?Q?kIaGz45TGpWAeC+kq3LemF4D4W1eOlqcRjHhWP80d8blvqqzGh269zJl9jns?=
 =?us-ascii?Q?BjucKd6iYA0vAVvGbAcc2+hai1HR9E2IejoYoG0DvB3XnwLAp1MNwNvz9USj?=
 =?us-ascii?Q?8M2nxYnya8fCF8f2gDSUMpYjx287/wlHL9oU8zK/q0P95RJD8rVST2kujfWX?=
 =?us-ascii?Q?lz+1WBLMzFpGRkrqX2CB8/INYWA8NQaJU7PDEFxVDiuUE7aiJWz4sjybt+Af?=
 =?us-ascii?Q?XXC0hf4L9kJY8Oqfmni3s4IikD8gtVZ2NuYI8e2YyC2yKBY5HnzX4HDP5M+6?=
 =?us-ascii?Q?W4Wu2voJMNOpNSNCGVLz3JxRf94VzlpUemgrV02r0T8THIWfTzsD3jrjiJ26?=
 =?us-ascii?Q?7/8vlZtGEEodw2zpbOTziTi0/gQBiSuvE+3zRfZkp+bOiOVd/cjairXwomkW?=
 =?us-ascii?Q?F8OC1syPyHuHddol/RUkwtYj+UsrmdVykB2d?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(921020); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lKAdPbuBkdVUv8yoguM5Sic+ZbxLKBS+xEQGHXRj/zAYTjR6uo9Fb7KpCxZj?=
 =?us-ascii?Q?zpZ39YZUfhGPePQLn+y8CVOd7rnR5c5/Rd3GeossZJHvZC8ZPfUJgYz4x13Z?=
 =?us-ascii?Q?piSnKePgTGSOWzknghgVBQr/cUCun2Zsr14ilRh/tL9zVj7JYQ+eMZiLhmCJ?=
 =?us-ascii?Q?hU53uaBeSyoDPz4H2387AUm6Zg3sR+/ZOQcbGdUGyZkWwWOey2K3gTwb6qHW?=
 =?us-ascii?Q?RBYrBsdAn3Sb1y8lQldNKkmr2Ms/SkxX+RlLBKr7FbWLxfdEiA8ZkyUOyuAu?=
 =?us-ascii?Q?lIk05z6v3DVfHc4bqxoI1xCGDGjtzoVeeH6RhpOJ9KkI4sRffSycL5VQL6ti?=
 =?us-ascii?Q?hPZAVxtn27bzFPslE0AQUY68256LNHPEr/CDp+ycjoqKxtBu9LsXR0X5+mYz?=
 =?us-ascii?Q?6tNG5RLfsQYV/BpSOn+Z776WWnoARSOWsnjMbBQuVWLeZ+0zTwDPTE2n3Dcs?=
 =?us-ascii?Q?bKLdZ8yHi5fYmegwjb/t9L7rvL8gZ6Vk/YaJHW59YOF4emA5iC/HZ3X34xIt?=
 =?us-ascii?Q?hiB6Py1PNGLdHDi4/BI1pmTXk4ijddXxL19PI3zo1cd14tXT3bJFZ+6PSwcn?=
 =?us-ascii?Q?pZCLDicSEy57I4r7eqO4APs7D4onE5DUyUbwA26+ZgOCrc4Q1hL/O9r2t+pl?=
 =?us-ascii?Q?25MeAbBCHLjVHpOYqOj4bsX1VQ/uh4wVHKtYgpnG/Qk7IN9Q1GzuwEWTC7/d?=
 =?us-ascii?Q?DwRyVqDSUy94fyOc254Px4OJgoxmlp4pwBXrKXt1yzI+ZXYSIJxqa/aCxEly?=
 =?us-ascii?Q?AK32RAQ/A66PXuPsULHlT7Bm2yelk/t7DEgk/tKTGzVpq6Svdlz/YEZDUFgn?=
 =?us-ascii?Q?W33ltPZ72gcVjADimM2nTdE2lY4ws5rXffABofwwnzIQW2Z2sYMEM7nPzyBO?=
 =?us-ascii?Q?9jol+8ZSpFUvRdrljKMkQaUIH1CDkm9sDGRt7Ma03vRvZ/T+ySop84ldI4Sw?=
 =?us-ascii?Q?fX6kVpUrt4m79bRCcPzPMo+065aRUi0psxrCGY/a6rrBPFJcQjQzIt/JtGYB?=
 =?us-ascii?Q?CFxKk4d+XgqcOOFSLtLQ1/BQpO36aWIuoOflOncW86CqnT/GFz2ns0i8T9YG?=
 =?us-ascii?Q?RKC0gD7E3QZiJeOTbLTHJgzyv4Ll+xb9FIF3gcFbx7sdTC7zvnC85wH4YCli?=
 =?us-ascii?Q?wqrNpyC0wJWnF28oyn0mMwR/bhl4tThprK4umnf2xMr2LNXq3a0vsLNN6LSQ?=
 =?us-ascii?Q?7XjKqqyyywpENleMCsRKyMqzjK9mUM6jxDRFZ38cuZXPWo1UduJi9PCTPA55?=
 =?us-ascii?Q?9VEfjOKIgezLp3jVt0j+OsU+Pq59KQFUqmnq8PtO/2uTG2WMdaBadm6di68U?=
 =?us-ascii?Q?cIHdSALdi99BCImEWMJKOCA8QCQqc7Gylj+FsTFWMBncN/E2ZK+tjL911JAq?=
 =?us-ascii?Q?qNCv1mF1S9yrk0CiyFDLzRagvnBD2jPy0haDQXuCp6w9Jm+JtxMg/2fItZM2?=
 =?us-ascii?Q?Q4XpmdofWCvQYn3TKa8ec28ddnUmixkKBPnoded4dIY3GQoo6d/cR7OERdL2?=
 =?us-ascii?Q?tVgYz0Qxa19z1rpXBcUFpDrr20FRfFfNckeng+2yTohGZvtc38qGrloOQFf1?=
 =?us-ascii?Q?YNB5A09DmmekRq/28TqU6ivKvKdPExQvCJzlBiuhHlT0CpbetQ9ks4sfb0eR?=
 =?us-ascii?Q?WoHvMG2UVdjZJcR/rBRBlsvlga6ZVCQsnZYNhktaMakD?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d4acdf7c-6a99-4a2e-d202-08de23e576f9
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2025 01:22:38.6322 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ge7zngIAcZ+a6ezIeIjSctI8VMqddbdYhHbpB+RiaxZHg0EkRAi3IuG5rBsZGSpGuTGiSI8wtWP4LRZ4NcFQQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4791
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

On Sat, Nov 15, 2025 at 02:40:24AM +0200, Imre Deak wrote:
> On Fri, Nov 14, 2025 at 04:46:29PM -0300, Gustavo Sousa wrote:
> > Quoting Imre Deak (2025-11-12 14:53:47-03:00)
> > >On Fri, Nov 07, 2025 at 09:05:40PM -0300, Gustavo Sousa wrote:
> > >> Xe3p_LPD has a new feature that allows the driver to allocate at runtime
> > >> the DDI (TC ones) port to drive a legacy connection on the Type-C
> > >> subsystem.  This allows better resource utilization, because now there
> > >> is no need to statically reserve ports for legacy connectors on the
> > >> Type-C subsystem.
> > >> 
> > >> That said, our driver is not yet ready for the dynamic allocation.
> > >> Thus, as an incremental step, let's add the logic containing the
> > >> required programming sequence for the allocation, but, instead of
> > >> selecting the first available port, we try so use the 1:1 mapping
> > >> expected by the driver today.
> > >> 
> > >> Bspec: 68954
> > >> Co-developed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> > >> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> > >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > >> ---
> > >> 
> > >> NOTE: This patch is still a WIP. There are some opens to resolve here.
> > >> Nevertheless, I'm sending it here for early feedback.
> > >> 
> > >> For the HIP-index stuff, I have a local refactor started and need to
> > >> finish it up and send it.
> > >> 
> > >> The other open is about concurrent calls to iom_dp_resource_lock().  It
> > >> is likely that we need to have a software lock to prevent concurrent
> > >> access to IOM_DP_HW_RESOURCE_SEMAPHORE from our driver.
> > >> ---
> > >>  drivers/gpu/drm/i915/display/intel_display_regs.h |  20 ++-
> > >>  drivers/gpu/drm/i915/display/intel_tc.c           | 151 +++++++++++++++++++++-
> > >>  2 files changed, 169 insertions(+), 2 deletions(-)
> > >> 
> > >> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > >> index 89ea0156ee06..0cf7d43ce210 100644
> > >> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > >> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > >> @@ -2908,6 +2908,25 @@ enum skl_power_gate {
> > >>  #define   DP_PIN_ASSIGNMENT(idx, x)                ((x) << ((idx) * 4))
> > >>  /* See enum intel_tc_pin_assignment for the pin assignment field values. */
> > >>  
> > >> +/*
> > >> + * FIXME: There is also a definition for this register in intel_dkl_phy_regs.h.
> > >> + * We need to consolidate the definitions.
> > >> + */
> > >> +#define HIP_INDEX_REG0                                _MMIO(0x1010a0)
> > >> +#define   HIP_168_INDEX_MASK                        REG_GENMASK(3, 0)
> > >> +#define   HIP_168_IOM_RES_MGMT                        REG_FIELD_PREP(HIP_168_INDEX_MASK, 0x1)
> > >> +
> > >> +#define IOM_DP_HW_RESOURCE_SEMAPHORE                _MMIO(0x168038)
> > >> +#define   IOM_DP_HW_SEMLOCK                        REG_BIT(31)
> > >> +#define   IOM_REQUESTOR_ID_MASK                        REG_GENMASK(3, 0)
> > >> +#define   IOM_REQUESTOR_ID_DISPLAY_ENGINE        REG_FIELD_PREP(IOM_REQUESTOR_ID_MASK, 0x4)
> > >> +
> > >> +#define IOM_DP_RESOURCE_MNG                        _MMIO(0x16802c)
> > >> +#define   IOM_DDI_CONSUMER_SHIFT(tc_port)        ((tc_port) * 4)
> > >> +#define   IOM_DDI_CONSUMER_MASK(tc_port)        (0xf << IOM_DDI_CONSUMER_SHIFT(tc_port))
> > >> +#define   IOM_DDI_CONSUMER(tc_port, x)                ((x) << IOM_DDI_CONSUMER_SHIFT(tc_port))
> > >> +#define   IOM_DDI_CONSUMER_STATIC_TC(tc_port)        IOM_DDI_CONSUMER(tc_port, 0x8 + (tc_port))
> > >
> > >It would be simpler to define the above without the shift, i.e. as 8 +
> > >tc_port.
> > 
> > You mean something like this?
> > 
> > #define   IOM_DDI_CONSUMER_STATIC_TC(tc_port)        (0x8 + (tc_port))
> > 
> > ?
> > 
> > Yeah... Looking at the code, we wouldn't need to shift back when
> > defining expected_consumer.
> 
> Yes.
> 
> > 
> > >
> > >> +
> > >>  #define _TCSS_DDI_STATUS_1                        0x161500
> > >>  #define _TCSS_DDI_STATUS_2                        0x161504
> > >>  #define TCSS_DDI_STATUS(tc)                        _MMIO(_PICK_EVEN(tc, \
> > >> @@ -2946,5 +2965,4 @@ enum skl_power_gate {
> > >>  #define   MTL_TRDPRE_MASK                REG_GENMASK(7, 0)
> > >>  
> > >>  
> > >> -
> > >>  #endif /* __INTEL_DISPLAY_REGS_H__ */
> > >> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> > >> index 7e17ca018748..3c333999bbe4 100644
> > >> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > >> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > >> @@ -9,6 +9,7 @@
> > >>  
> > >>  #include "i915_reg.h"
> > >>  #include "intel_atomic.h"
> > >> +#include "intel_bios.h"
> > >>  #include "intel_cx0_phy_regs.h"
> > >>  #include "intel_ddi.h"
> > >>  #include "intel_de.h"
> > >> @@ -25,6 +26,9 @@
> > >>  #include "intel_modeset_lock.h"
> > >>  #include "intel_tc.h"
> > >>  
> > >> +#define IOM_DP_RES_SEMAPHORE_LOCK_TIMEOUT_US        10
> > >> +#define IOM_DP_RES_SEMAPHORE_RETRY_TIMEOUT_US        10000
> > >
> > >The above param names should make it clear how poll_timeout_us() uses
> > >them (i.e. stg like sleep vs. timeout instead of lock_timeout vs.
> > >retry_timeout), but probably even clearer to just drop the defines and
> > >inline the values in the call.
> > 
> > Ack.  I going with the latter.
> > 
> > >
> > >> +
> > >>  enum tc_port_mode {
> > >>          TC_PORT_DISCONNECTED,
> > >>          TC_PORT_TBT_ALT,
> > >> @@ -1200,6 +1204,143 @@ static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
> > >>          __tc_cold_unblock(tc, domain, tc_cold_wref);
> > >>  }
> > >>  
> > >> +static void iom_res_mgmt_prepare_reg_access(struct intel_display *display)
> > >> +{
> > >> +        /*
> > >> +         * IOM resource management registers live in the 2nd 4KB page of IOM
> > >> +         * address space. So we need to configure HIP_INDEX_REG0 with the
> > >> +         * correct index.
> > >> +         *
> > >> +         * FIXME: We need to have this and dekel PHY implementation using a
> > >> +         * common abstraction to access registers on the HIP-indexed ranges, and
> > >> +         * this function would then be dropped.
> > >> +         */
> > >> +        intel_de_rmw(display, HIP_INDEX_REG0,
> > >> +                     HIP_168_INDEX_MASK, HIP_168_IOM_RES_MGMT);
> > >
> > >This matches what intel_dkl_phy.c does, that one also taking the
> > >required lock around the access. At one point the intel_dkl_phy
> > >file/interface could be renamed to intel_tc_reg or similar accordingly.
> > 
> > I have already started a local series that introduces the "HIP-index
> > based registers" abstraction.  I need to go back to finish it up.
> > 
> > The basic idea is that both intel_dkl_phy.c and this IOM stuff would use
> > functions specific to accessing registers behind the HIP-based ranges.
> 
> Using intel_hip_reg instead of intel_tc_reg is probably better, but I
> still think the current interface should be just renamed, instead of
> adding a new interface and making the current
> intel_dkl_phy_read/write/rmw() use that new interface.
> 
> I went ahead and put the above together now:
> https://github.com/ideak/linux/commits/hip-reg
> 
> > 
> > To give an idea, here is a copy/paste of the kerneldoc I currently have
> > in that WIP series:
> > 
> >   | diff --git a/drivers/gpu/drm/i915/display/intel_hip_idx.c b/drivers/gpu/drm/i915/display/intel_hip_idx.c
> >   | new file mode 100644
> >   | index 000000000000..ff2492b8275d
> >   | --- /dev/null
> >   | +++ b/drivers/gpu/drm/i915/display/intel_hip_idx.c
> >   | @@ -0,0 +1,110 @@
> >   | +// SPDX-License-Identifier: MIT
> >   | +/*
> >   | + * Copyright (C) 2025 Intel Corporation
> >   | + */
> >   | +
> >   | +/**
> >   | + * DOC: Display HIP-indexed register access
> >   | + *
> >   | + * Display MMIO mapping for offsets in [0x168000,0x16ffff] are governed by
> >   | + * configurations in the HIP_INDEX registers provided by the hardware.
> >   | + *
> >   | + * Usually each of the valid 4KB range in that space will be mapped to some IP
> >   | + * block, providing access to registers of that IP. The HIP_INDEX registers
> >   | + * expose an 8-bit index value for each 4KB range. Those indices provide a way
> >   | + * to access data that is beyond the initial 4KB block provided by the target
> >   | + * IP.
> >   | + *
> >   | + * As an example, say that the range [0x16a000,0x16afff] is mapped to some
> >   | + * sub-IP that contains a 8KB register file. To access the initial 4KB of that
> >   | + * register file, we would need to set the index respective to
> >   | + * [0x16a000,0x16afff] in HIP_INDEX to 0; to access data in the second 4KB
> >   | + * window, we would need to set the index to 1.
> >   | + *
> >   | + * For simple read, write or rmw operations on a single register, the
> >   | + * functions intel_hip_idx_reg_read(), intel_hip_idx_reg_write() and
> >   | + * intel_hip_idx_reg_rmw() can be used, which will call intel_hip_idx_lock()
> >   | + * and intel_hip_idx_unlock() internally.
> >   | + *
> >   | + * For other scenarios, then it is necessary to wrap the register accesses
> >   | + * with explicit calls to intel_hip_idx_lock() and intel_hip_idx_unlock(), and
> >   | + * use the MMIO functions provided by intel_de.h. For the latter, the function
> >   | + * intel_hip_idx_reg_to_i915_reg() needs to be used in order to provide the
> >   | + * correct reg argument to those functions.
> >   | + */
> >   | (...)
> > 
> > >
> > >> +}
> > >> +
> > >> +/*
> > >> + * FIXME: This function also needs to avoid concurrent accesses from the driver
> > >> + * itself, possibly via a software lock.
> > >> + */
> > >> +static int iom_dp_resource_lock(struct intel_tc_port *tc)
> > >> +{
> > >> +        struct intel_display *display = to_intel_display(tc->dig_port);
> > >> +        u32 val = IOM_DP_HW_SEMLOCK | IOM_REQUESTOR_ID_DISPLAY_ENGINE;
> > >> +        int ret;
> > >> +
> > >> +        iom_res_mgmt_prepare_reg_access(display);
> > >> +        ret = poll_timeout_us(intel_de_write(display, IOM_DP_HW_RESOURCE_SEMAPHORE, val),
> > >> +                              (intel_de_read(display, IOM_DP_HW_RESOURCE_SEMAPHORE) & val) == val,
> > >
> > >This happens to work, but it's more future proof/bspec conformant to
> > >properly mask the requestor ID field when reading it back.
> > 
> > Agreed.
> > 
> > >
> > >> +                              IOM_DP_RES_SEMAPHORE_LOCK_TIMEOUT_US,
> > >> +                              IOM_DP_RES_SEMAPHORE_RETRY_TIMEOUT_US, false);
> > >> +
> > >> +        if (ret)
> > >> +                drm_err(display->drm, "Port %s: timeout trying to lock IOM semaphore\n",
> > >> +                        tc->port_name);
> > >> +
> > >> +        return ret;
> > >> +}
> > >> +
> > >> +static void iom_dp_resource_unlock(struct intel_tc_port *tc)
> > >> +{
> > >> +        struct intel_display *display = to_intel_display(tc->dig_port);
> > >> +
> > >> +        iom_res_mgmt_prepare_reg_access(display);
> > >> +        intel_de_write(display, IOM_DP_HW_RESOURCE_SEMAPHORE, IOM_REQUESTOR_ID_DISPLAY_ENGINE);
> > >> +}
> > >> +
> > >> +static bool xe3p_tc_iom_allocate_ddi(struct intel_tc_port *tc, bool allocate)
> > >> +{
> > >> +        struct intel_display *display = to_intel_display(tc->dig_port);
> > >> +        struct intel_digital_port *dig_port = tc->dig_port;
> > >> +        enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
> > >> +        u32 val;
> > >> +        u32 consumer;
> > >> +        u32 expected_consumer;
> > >> +        bool ret;
> > >> +
> > >> +        if (DISPLAY_VER(display) < 35)
> > >> +                return true;
> > >> +
> > >> +        if (tc->mode != TC_PORT_LEGACY)
> > >> +                return true;
> > >> +
> > >> +        if (!intel_bios_encoder_supports_dyn_port_over_tc(dig_port->base.devdata))
> > >
> > >dedicated_external is stored separately in dig_port, why the "related"
> > >dyn_port_over_tc flag isn't?
> > 
> > The only reason dedicated_external is stored is because VBT data is
> > already freed by the time intel_encoder_is_tc() is called in the driver
> > unbind path.  In the future we should fix the VBT lifetime issue in
> > order to be able to drop the dedicated_external member of dig_port.
> > 
> > >
> > >> +                return true;
> > >> +
> > >> +        if (iom_dp_resource_lock(tc))
> > >> +                return false;
> > >> +
> > >> +        val = intel_de_read(display, IOM_DP_RESOURCE_MNG);
> > >> +
> > >> +        consumer = val & IOM_DDI_CONSUMER_MASK(tc_port);
> > >> +        consumer >>= IOM_DDI_CONSUMER_SHIFT(tc_port);
> > >> +
> > >> +        /*
> > >> +         * Bspec instructs to select first available DDI, but our driver is not
> > >> +         * ready for such dynamic allocation yet. For now, we force a "static"
> > >> +         * allocation: map the physical port (where HPD happens) to the
> > >> +         * encoder's DDI (logical TC port, represented by tc_port).
> > >> +         */
> > >> +        expected_consumer = IOM_DDI_CONSUMER_STATIC_TC(tc_port);
> > >> +        expected_consumer >>= IOM_DDI_CONSUMER_SHIFT(tc_port);
> 
> One more thing occured to me: why can't this allocate any free DDI? IOW
> does the address of DDI_BUF_CTL (aka DDI_CTL_DE) used for tc_port depend
> on which DDI gets allocated (or is there any other dependency on which
> DDI got allocated)? AFAICS there is no such dependency and the above
> address would be DDI_BUF_CTL(encoder->port) regardless of the allocated
> DDI. In that case any free DDI could be allocated here.

Ok, checking this again, DDI_BUF_CTL etc. DDI register addresses will
depend on the allocated DDI. So nvm the above, the mapping needs to
stay 1:1 for now until all the DDI reg accesses are converted to index
the registers with the allocated DDI index.

> > >> +
> > >> +        if (allocate) {
> > >> +                struct intel_encoder *other_encoder;
> > >> +
> > >> +                /*
> > >> +                 * Check if this encoder's DDI is already allocated for another
> > >> +                 * physical port, which could have happened prior to the driver
> > >> +                 * taking over (e.g. GOP).
> > >> +                 */
> > >> +                for_each_intel_encoder(display->drm, other_encoder) {
> > >> +                        enum tc_port other_tc_port = intel_encoder_to_tc(other_encoder);
> > >> +                        u32 other_consumer;
> > >> +
> > >> +                        if (tc_port == TC_PORT_NONE || other_tc_port == tc_port)
> > >> +                                continue;
> > >> +
> > >> +                        other_consumer = val & IOM_DDI_CONSUMER_MASK(other_tc_port);
> > >> +                        other_consumer >>= IOM_DDI_CONSUMER_SHIFT(other_tc_port);
> > >> +                        if (other_consumer == expected_consumer) {
> > >> +                                drm_err(display->drm, "Port %s: expected consumer %u already allocated another DDI; IOM_DP_RESOURCE_MNG=0x%08x\n",
> > >> +                                        tc->port_name, expected_consumer, val);
> > >> +                                ret = false;
> > >> +                                goto out_resource_unlock;
> > >> +                        }
> > >> +                }
> > >> +
> > >> +                if (consumer == 0) {
> > >> +                        /* DDI is free to use, let's allocate it. */
> > >> +                        val &= ~IOM_DDI_CONSUMER_MASK(tc_port);
> > >> +                        val |= IOM_DDI_CONSUMER(tc_port, expected_consumer);
> > >> +                        intel_de_write(display, IOM_DP_RESOURCE_MNG, val);
> > >> +                        ret = true;
> > >> +                } else if (consumer == expected_consumer) {
> > >> +                        /*
> > >> +                         * Nothing to do, as the expected "static" DDI allocation is
> > >> +                         * already in place.
> > >> +                         */
> > >> +                        ret = true;
> > >> +                } else {
> > >> +                        drm_err(display->drm, "Port %s: DDI already allocated for consumer %u; IOM_DP_RESOURCE_MNG=0x%08x\n",
> > >> +                                tc->port_name, consumer, val);
> > >> +                        ret = false;
> > >> +                }
> > >> +        } else {
> > >> +                drm_WARN_ON(display->drm, consumer != expected_consumer);
> > >> +                val &= ~IOM_DDI_CONSUMER_MASK(tc_port);
> > >> +                intel_de_write(display, IOM_DP_RESOURCE_MNG, val);
> > >> +                ret = true;
> > >> +        }
> > >> +
> > >> +out_resource_unlock:
> > >> +        iom_dp_resource_unlock(tc);
> > >> +
> > >> +        return ret;
> > >> +}
> > >> +
> > >>  static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
> > >>  {
> > >>          tc->lock_wakeref = tc_cold_block(tc);
> > >> @@ -1210,9 +1351,12 @@ static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
> > >>                  return true;
> > >>          }
> > >>  
> > >> -        if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
> > >> +        if (!xe3p_tc_iom_allocate_ddi(tc, true))
> > >
> > >This doesn't work. A connector registered to userspace must be always
> > >functional (except for MST connectors which are dynamically registered).
> > >So the DDI allocation and with that connecting the PHY cannot fail here
> > >for a legacy connector/PHY. Instead of this the allocation could be
> > >moved to happen already in intel_tc_phy_ops::init for now, allocating a
> > >DDI for a legacy PHY (intel_tc_port::legacy_port == true) and if that
> > >fails also fail the corresponding connector/encoder registration in
> > >intel_ddi_init(). The DDI would need to be released by
> > >intel_tc_port_cleanup().
> > 
> > Ah, I see.  Well, I guess for legacy connections, doing your suggestion
> > seems fine.
> > 
> > Is there any power management aspect that we should be aware here? Like,
> > some power well being disabled and causing the allocation to be "lost"
> > somehow.  Since this thing is in the TCSS, I think no display power
> > wells could cause that, right?
> 
> It would make sense to me that the allocations are preserved by the
> HW/FW across power transitions. If that's not the case then they should
> be restored by the driver.
> 
> > By the way, I wonder how we would handle things in the future when/if we
> > enable the dynamic DDI allocation thing.
> 
> In case of a DDI allocation failure, the modeset will still succeed, but
> the corresponding port/pipe will not get enabled.
> 
> > --
> > Gustavo Sousa
> > 
> > >
> > >>                  goto out_unblock_tccold;
> > >>  
> > >> +        if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
> > >> +                goto out_deallocate_ddi;
> > >> +
> > >>          xelpdp_tc_phy_take_ownership(tc, true);
> > >>  
> > >>          read_pin_configuration(tc);
> > >> @@ -1226,6 +1370,9 @@ static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
> > >>          xelpdp_tc_phy_take_ownership(tc, false);
> > >>          xelpdp_tc_phy_wait_for_tcss_power(tc, false);
> > >>  
> > >> +out_deallocate_ddi:
> > >> +        xe3p_tc_iom_allocate_ddi(tc, false);
> > >> +
> > >>  out_unblock_tccold:
> > >>          tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
> > >>  
> > >> @@ -1236,6 +1383,8 @@ static void xelpdp_tc_phy_disconnect(struct intel_tc_port *tc)
> > >>  {
> > >>          switch (tc->mode) {
> > >>          case TC_PORT_LEGACY:
> > >> +                xe3p_tc_iom_allocate_ddi(tc, false);
> > >> +                fallthrough;
> > >>          case TC_PORT_DP_ALT:
> > >>                  xelpdp_tc_phy_take_ownership(tc, false);
> > >>                  xelpdp_tc_phy_enable_tcss_power(tc, false);
> > >> 
> > >> -- 
> > >> 2.51.0
> > >>
