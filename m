Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJIYKN6BnGnaIgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 17:35:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AD0179E1A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 17:35:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA34C10E3EA;
	Mon, 23 Feb 2026 16:35:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S7TTB+6C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06ED110E3EA;
 Mon, 23 Feb 2026 16:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771864539; x=1803400539;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=LxluHc+5YjLKuXLc1cilNLhrr5hK/2mCz4X88m07Ifw=;
 b=S7TTB+6C6WF9NhKiKGu2S1apmHymC9QDGJKvjeu7WTAOnm5KJQMQ3Dgb
 AqpqgE9iwXyQliKl9Sbd6+bfqajH4b0O26ATlKUlH5Hc/YXS/wXWKJxAY
 tegR/SIh3QOjCtXIoo6H6ey0tSmSDV+LZG/gpQ73qpwV3wZOK62kIMwW8
 kmQ+/p2CD3q5Qs+UuEyD8SOmjBaq6WoQDBDe+28bgCXkD4jsSTx6Hwp/H
 rVegSO1E/DkJsqoYbIztgr+qC2ZIqisC0Uqtf/WVU+f1if/PFQnkT8lLq
 hHmN25eI8GC3djTBbn50gFMVu6G7mZeIPbgK5JnqlTMUzY+IT3PR66+x6 Q==;
X-CSE-ConnectionGUID: xnUKUUKvTOyFO45HLRJavQ==
X-CSE-MsgGUID: jWykd0OjTqmDk9/GHuBDww==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="76729293"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="76729293"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 08:35:38 -0800
X-CSE-ConnectionGUID: lqght2v2Q3KyT4cIYr8RPw==
X-CSE-MsgGUID: 0QOHW9AfStm7BGydo919nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="219154441"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 08:35:38 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 08:35:37 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 08:35:37 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.20) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 08:35:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CWSOwu7SFEJyzu4Ctj/CdE/NiIdibBbYfPtArvLRNfBpz4nL3xDaH0SEhdl2OPD9d+0coU4pFwBKrEWONT20dZUQOh5lt4Q7KWP8qpvjmFeGqYvJ1O4iC+/1HjpVJX+IrE5evU9nxFl6+O5Dfjoiaqp1A7w1zNts6OoLhj28KFEfYRZ4l3NMM/z9O/KINlW+AvXX6sxy5pMDXPOvrT9tqoevvggZS0RsN+zWERpSvO2gdGF2AXQfK5bZ1eutcNdgA/0k6bHyM7Ccud8Cvpq9wn74ty5fXpxAOQCC77z9OXKn9Mx6vIZHJzUH+kzFh/GxAzKw5cae8br2Gjsvajdjyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pySBSFOTub9E/ukZFIoWP2GIlLppWLJ8ZO8PpJlSFeY=;
 b=i3OXFFsr1SPWKTDMcPs1MzpaisvbARM5Ih5YLDE+LZz8P1+WubHg6rwairTB84HOc3JIti798mNuHnAE1rCEF373sY+GEJXAMPKnmZ0Ky3sFVyGTts6EII9Whny52sk1OhxEgFJkZKMHGTCg7A2wevecUmrKosZLhwFPxdcrqP7bt32bJTUPAeVT2UCyyFELBq6ZFk369EfzO2nJ+4dGT+Zp5Ltgbs2WLGwQiBXrILa1AazDTTmlbl4MPjHAHPbsF3diJBg+S85YIlbR2epwtujAtCSLj+Vbc7sUEIKa+oexwV1uqrDRo/zr+iWX/tBX5kAvIat1eeE3Ge4HZcEnfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BL3PR11MB6434.namprd11.prod.outlook.com (2603:10b6:208:3ba::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 16:35:29 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 16:35:29 +0000
Date: Mon, 23 Feb 2026 18:35:24 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/5] drm/i915/dp_tunnel: Simplify detection of link BW
 change
Message-ID: <aZyBzNZYecyQxdvK@ideak-desk.lan>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <20260219182823.926702-3-imre.deak@intel.com>
 <IA0PR11MB7307F5E3DF179F283F94D4A7BA77A@IA0PR11MB7307.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA0PR11MB7307F5E3DF179F283F94D4A7BA77A@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0054.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:271::6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BL3PR11MB6434:EE_
X-MS-Office365-Filtering-Correlation-Id: 679dd5af-6c70-49fc-ed0f-08de72f98e59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Uc2she5Z2n6sH1DfcLik0VZceSRjmnipbt1WwasaS8RiCiFEKzozUw1EWzEN?=
 =?us-ascii?Q?T5b+LhGdkAb5w/7fyJFue0pZ3UC2mbUubdBfeQRVceBodarPLHCwa8I9Tq14?=
 =?us-ascii?Q?IVWf4jMVhmwpFnW4DvANFMowhFPUd9W9dU0ulLxo3PQjR7N8IBOvNMl4lSHZ?=
 =?us-ascii?Q?ZiRPnfH6XS+CeOQ75X2troJE9vTmgK4QgRqNqjOoI4iBKUlNmEBTiedua96y?=
 =?us-ascii?Q?BmLcK5f76UID26KQP2qbKP2KitL1NS9ub62uzq6wPnqCFyiXOhW27VFHlORh?=
 =?us-ascii?Q?lvTrKK4okW2Oc77elmcT5bR360F65tF+5neQq9U+EvNcxW6WLhYb3e2XuEAr?=
 =?us-ascii?Q?06x9MWrBa/1OpACtqX8ZJeal3vbngSm60WP1/0/ItrgkXPtJMLtl3QzawMrU?=
 =?us-ascii?Q?+TDOf2prhR3QbcdTW+sVeaRAHBjOPYxMhEu4xNi5IwD5qE3LxMzuBnE+0pKy?=
 =?us-ascii?Q?f5D0J7KjhQC/RVX/5g6mhg8NQ6bUiM0C2REr31kcGss892Zg9vQr9J+tcFTn?=
 =?us-ascii?Q?wt9qZf9QRU8AYBbTmYSuidkWrlMmziptWFtWQMx3bu0yl2P9mn0zQ5IYfHkt?=
 =?us-ascii?Q?WhB+S84+qM2m/q/U2pv9t+iHZfpmMKeEwxaeqUUolQEmE9Icp1uk7PlxRQY6?=
 =?us-ascii?Q?NqPAkhp+faSWrSz2Zalz3yILdhoU9RKdq2+ZV9FKAIBRti5mPurRVjoP3Y2k?=
 =?us-ascii?Q?kZLjjx6eDPimMTvc7DWqaR5ky0qKr1BWqizuq7p0q4wj0Gdejcsc+2kT0TVB?=
 =?us-ascii?Q?Td76mGP6ECCkBtmse7Yykb9zBAlVc3/0PSlZvX2NGzKWDXxx/f1J52/N0I7/?=
 =?us-ascii?Q?hYphRRGek7N+OXCpHE6TQA4xIzngKhlkM3OFTyEYt2Qn1/7uBMD3olMhA0ZH?=
 =?us-ascii?Q?5JFfKymkaE7T42hSifQf6R6gsKftHOfKgnXYRoi0xwtpYqYMzy316GgP8fWd?=
 =?us-ascii?Q?uQK7EWqK1yBEl7C6ZLbfAA2Gl9UAQY5tnmh35ZJQPhVSzHhdiNydEv6CH9HJ?=
 =?us-ascii?Q?D+97GWzSJL/YOZaj+yZutNFyizgD312eO/xAESP/gv9VR9DWExd3yOjwe0YD?=
 =?us-ascii?Q?A7MfCmGSZ/HMdTIEGfxmxVuJp/vx4hJsrO03TKDhjWAX+vfVJaOr9HEkmgAD?=
 =?us-ascii?Q?hy5jnCS2G1qLpLgntYyLgGXka2xbRpoHP0cEW69GkmPO5z7oC2sqZJlSKB2T?=
 =?us-ascii?Q?NHa0GvcDaEaS8SG4enT1EfYemqHoEU7Br1E34qSCXQM1KS/iALO71DvDTgkw?=
 =?us-ascii?Q?J/HzCtnCJs6maEnG35BX7n9/oYxofYKji1/oJIXbWPv/BwRgtf1Z1rxAwlab?=
 =?us-ascii?Q?5q1NveksSuytoZWujvkyk+wpnSeMGwGQno9olxXGjtzNhcfJ4tPHU+h1fwcF?=
 =?us-ascii?Q?2/7s5T5vxVHUG9kL41cBAikQlEvBVmPGXHqgtfs6u9jPOCpmEFbYgzendFvV?=
 =?us-ascii?Q?/OGzvIgU93d/YcyM+9kFCOoFocLEpa3y9LKM6np/JMDTDn5efqpT3BSkL+4e?=
 =?us-ascii?Q?wgNrWfe/B+AVLSE59NTXEeJ+j3NHQQSeRSg1juzQQND7XLalyesdcmZdyfKd?=
 =?us-ascii?Q?pDqF4/XMJKt/YWO9Iys=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?n+3wAY1RTfcTtBLpFMXWn1MQZUuCvFeBRcbkyPSUdDCm++ObFrsSF60S1biv?=
 =?us-ascii?Q?i2Fxn1IqdksET1OZWWe2HE+/mIYYbeoYJXGtjGOs+LINjb7QYsCFXRv1BdUG?=
 =?us-ascii?Q?O9+avMLffEDek3aPyfQQFTbKWDcWTA9mt1/EKVpsffUcSRotw58ZJ7BR2DKX?=
 =?us-ascii?Q?GHZkCmCEn8xleE90pzbzstt8va1WwYvk4oaNEjxEcmxyoqn5QzgiQylq7unG?=
 =?us-ascii?Q?BBekkNq41MKgE+p31s4ClYirDqme6ohP53as/dbMtHCiuHQDaBC6X+Adixm9?=
 =?us-ascii?Q?R9ff3/vdBIwKp6/VHU5yBHHAR0puQ/oBLH16d1ZWYXrLgUhK0GbhW/dg2J2I?=
 =?us-ascii?Q?7ozOWNPW7bgODFFqQURAY9rxqtpnmYWzC/p05uYqmJrGO1YYWh7eCgeD0JtT?=
 =?us-ascii?Q?BZ0+7qmmF8jyiHcpK4rccnClEG/OP0711HYgp1FugQ1c+CbCJxJjHmLIMaQ4?=
 =?us-ascii?Q?1kqaBcWgIekC75nitZgpkk5jscdaQdekbdxeTazENvKGnanr3YaSPYNec+P0?=
 =?us-ascii?Q?zz9TIOKUMP7qvNwFDam05jUomCohIsTJ2n8ytuZGOp3+jJEO1l8ToGXfzG5c?=
 =?us-ascii?Q?5op/tePgBFYpZT8er3HQPX8waMtFdjR7B6KYkKLQR3eYyuAuLmnNDFczgJh6?=
 =?us-ascii?Q?3DrP4rs0m8EN0YZlm/hMnRluGYeiKmj3wO9RBCzsjGve99aBiV/faOqU3CId?=
 =?us-ascii?Q?M8BxsBFC9soCMZsCDULbx8aMesFzovXM5a2OaKNJb4QwPGmoTaGjTyra3d7f?=
 =?us-ascii?Q?Wj6rk/vjW7U4JMLI1U77A5/p0+DRc8nmLyyK/brY5xzQF/UcWXDEKfkRDHPv?=
 =?us-ascii?Q?W2MUyL9capn2b0ew3ROOaUj057DHX3h8SJV+pioTRbHhLeKeR26z7GyX3B8i?=
 =?us-ascii?Q?2sAXIongQqzwaUPZ5Uj/Wsk5J79lkDx3rPryLqHYqpujE3o9SdyHpVbRW1Ah?=
 =?us-ascii?Q?aiRxtwLaSz/O/2n2fDEZibwhFD/04L0yPQKhV5UaA29NGLRNNmUhwbLDL5CR?=
 =?us-ascii?Q?Pi3OPELWzFoB6uHeflus/bjbRLtVxI8F0exyD6YPksX6G/HqxrJ9AR9+X0z1?=
 =?us-ascii?Q?Xz6bNFnEN8YO7H7ymUMUQYtL5Ydn+/q2L12Ic82y6GEET0+/01pj9Lv3bixC?=
 =?us-ascii?Q?z9+gmMsNL5wwu5uPneFZz5eBj/wqU03wtcmloU1ldVyTArqFaeGebCw1xbwu?=
 =?us-ascii?Q?CZcYW7wlI0d7Hmiu/XiwcaRI08OrwhwGHvt6tGVHP8o8JZjPrDRe1vG7AVez?=
 =?us-ascii?Q?oEi9+xGuGg23u7mHo0rX9UpOPXVVl+Jyot6sb0UCY5mMw5GbpfQ1c1wAQzwn?=
 =?us-ascii?Q?27eCHf6RwQMa9KdEhLgZLO4OWNNtzjoC2UAL4HjNgxMdGWG6K2sTaXa3I+i7?=
 =?us-ascii?Q?cCGuxXU0qEQB99NTB+zD+BJsECU0tRpJP9NagxsbGRLQloppoRwlbsS2wKfY?=
 =?us-ascii?Q?WP52FJdfwlh8JbQqtYN3H20bfOIMUH9jAxbf0A5pp/i6r7E5V/EO2sEQj4/o?=
 =?us-ascii?Q?Uo/tsPud+NijxEXbVUU0x6gFN77QaBF/eihkoW/rvnCR0RYRH53/zBsyc+1F?=
 =?us-ascii?Q?G+N6rdG4OXduUi5xbw4RGdb9AdkhDtBF/jAADJflTc41F/lvKfveiMaonf8W?=
 =?us-ascii?Q?ask+zgmIpvL/xxKXuZyTI8BDCXi4gPolUX5JqG0/V09Bp6hl++UUUbszbV5d?=
 =?us-ascii?Q?sWbQ5EQ/kzVGAL7c8ErEJGIzTa5HoQevsYkcVVrT3vWW3ks+UQnLIf3JkwmK?=
 =?us-ascii?Q?oMRiC3M6Cg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 679dd5af-6c70-49fc-ed0f-08de72f98e59
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2026 16:35:29.5514 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LHvSPJTDo1cclxXlECerNeFkuMaXIZ6sgaGRVE4M0oR2hOuqZlhrBCelMuMONxE6ySF8AGnPL+W5rlq9v4QfSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6434
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,ideak-desk.lan:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F0AD0179E1A
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 06:02:26PM +0200, Murthy, Arun R wrote:
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre
> > Deak
> > Sent: Thursday, February 19, 2026 11:58 PM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Subject: [PATCH 2/5] drm/i915/dp_tunnel: Simplify detection of link BW change
> > 
> > update_tunnel_state() checks whether a tunnel state change (e.g.
> > available tunnel bandwidth) affects the list of valid modes for the sink
> > connected through the tunnel. If so, its caller sends a hotplug event so
> > userspace can re-enumerate the modes.
> > 
> > A change in tunnel bandwidth does not affect the mode list if the bandwidth
> > was above the sink's DPRX bandwidth both before and after the update, since in
> > that case the effective bandwidth remains limited by the DPRX.
> > 
> > As get_current_link_bw() via intel_dp_max_link_data_rate() already returns
> > bandwidth values clamped to the DPRX limit, the condition for detecting a
> > mode list change can be simplified to:
> > 
> >     old_bw != new_bw
> > 
> > Remove the explicit checks for whether the bandwidth was below the
> > maximum DPRX bandwidth before and after the update, and rely on the
> > clamped bandwidth values instead.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 18 +++++-------------
> >  1 file changed, 5 insertions(+), 13 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > index eb1eed1c8c7bb..9f3750035f68e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > @@ -54,30 +54,23 @@ static int kbytes_to_mbits(int kbytes)
> >  	return DIV_ROUND_UP(kbytes * 8, 1000);  }
> > 
> > -static int get_current_link_bw(struct intel_dp *intel_dp,
> > -			       bool *below_dprx_bw)
> > +static int get_current_link_bw(struct intel_dp *intel_dp)
> >  {
> >  	int rate = intel_dp_max_common_rate(intel_dp);
> >  	int lane_count = intel_dp_max_common_lane_count(intel_dp);
> > -	int bw;
> > 
> > -	bw = intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
> > -	*below_dprx_bw = bw < drm_dp_max_dprx_data_rate(rate,
> > lane_count);
> > -
> > -	return bw;
> > +	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
> >  }
>
> Function name says get the current data rate, but we are returning the
> max data rate here.

It is the current link bandwidth, i.e., the link bandwidth allowed by
the Thunderbolt Connection Manager at the moment. It is not a maximum
(which could refer either to the maximum DPRX bandwidth or the maximum
Thunderbolt bandwidth), but rather the amount allowed by all other
components on the Thunderbolt link sharing the same bandwidth.

> 
> Thanks and Regards,
> Arun R Murthy
> -------------------
> > 
> >  static int update_tunnel_state(struct intel_dp *intel_dp)  {
> >  	struct intel_display *display = to_intel_display(intel_dp);
> >  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> > -	bool old_bw_below_dprx;
> > -	bool new_bw_below_dprx;
> >  	int old_bw;
> >  	int new_bw;
> >  	int ret;
> > 
> > -	old_bw = get_current_link_bw(intel_dp, &old_bw_below_dprx);
> > +	old_bw = get_current_link_bw(intel_dp);
> > 
> >  	ret = drm_dp_tunnel_update_state(intel_dp->tunnel);
> >  	if (ret < 0) {
> > @@ -96,11 +89,10 @@ static int update_tunnel_state(struct intel_dp
> > *intel_dp)
> > 
> >  	intel_dp_update_sink_caps(intel_dp);
> > 
> > -	new_bw = get_current_link_bw(intel_dp, &new_bw_below_dprx);
> > +	new_bw = get_current_link_bw(intel_dp);
> > 
> >  	/* Suppress the notification if the mode list can't change due to bw. */
> > -	if (old_bw_below_dprx == new_bw_below_dprx &&
> > -	    !new_bw_below_dprx)
> > +	if (old_bw == new_bw)
> >  		return 0;
> > 
> >  	drm_dbg_kms(display->drm,
> > --
> > 2.49.1
> 
