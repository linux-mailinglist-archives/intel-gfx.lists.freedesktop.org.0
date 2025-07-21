Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3145B0C889
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 18:22:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DA2710E297;
	Mon, 21 Jul 2025 16:22:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EpPmuJ+y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F134C10E293;
 Mon, 21 Jul 2025 16:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753114975; x=1784650975;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=NAIVk7gfPFzo5w4dga//vkHyNThOmWCr+/w1Y9Hcrbg=;
 b=EpPmuJ+y/+QnTpj/+EaSabpVUR8ETtyrJrYNYHxBDhSRykrt6Qk4HluR
 zgYmnTeDc+NwC27dvHHOMajDuiBhrY+rAaHPukXcLXGT9wGrhfR/nmzrw
 uZbJj1RCJLjL2gj+umr0QeTu3XCt0U/zOpJZQ6A4+XXxx7TGGIfMnJ93v
 34BkE3FyPG8RVoLsCXVPh6djPPxJKJiCeVYKLYd+y6e1l0LIwMevF/NKB
 BrbsQEAjtIAi6j4TuwKyJNgT+B1eatuUEJS3nO4Ur1QS52ImWF09xDaJ0
 sZeiWnOPEIh5UbCmSEKb1aBMaNzO7UxwE5kPb7IYBt7RwUr6gFO3jEDgU A==;
X-CSE-ConnectionGUID: ZW7rOvHHR1Oamv8ci07bUQ==
X-CSE-MsgGUID: X5sdNA9nQISIS1ub+vxaIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="80781743"
X-IronPort-AV: E=Sophos;i="6.16,329,1744095600"; d="scan'208";a="80781743"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 09:22:40 -0700
X-CSE-ConnectionGUID: N6UQRSr8Rl+d36ZdKAcYZw==
X-CSE-MsgGUID: HvgHFPsQQFyrPrOXVvsfIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,329,1744095600"; d="scan'208";a="159301489"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 09:22:41 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 09:22:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 21 Jul 2025 09:22:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.65) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 09:22:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pg2JEV9dB9YepIpY3fD8/Hbxx4aVgmmPlN/pPUsHjXAcbkEbN1hfA1/snQ5GFLnSrmyep4VAqzypUzEZP/hSbI3y39l9wcI02BdwRvEVA8Z5i33LRjr6GToqmqdrfaJSkLXyxgoZR9ngoN8o/p7oH1elWCi5MjloB/LH5/vfzpapj8XcqxGG8uGvaZ+gJnH1OUqfo2vg8IUFq9upNHGHtUHYFXgHv4KBtuznbHGsrHG1ofo/v6wtnsKWZiGRMxZ9TmOJxi9ZGDywZwp9LbUzi4TIpLvcfEh3esh2fevLNeYiJjxiDYjew2LqnTfjkw7o3Mt2H3SAoJcTbINQKh/3xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sATdRzIb0WjQG85t/ifFC24CvycJBsM7u0/tRTqNuug=;
 b=BaBQiFhLEcqIw0Yt3ZK/0zOSimQUaD9KtGYZ4mvcVAgzXXVQ94gzowxdn3yZmGwpBoXDFOlRxCg4WiA9IwBHZI9PPfz4M5aWSFexNnLur+nN+e6OuNrbgJv7wGJ/WMiWhMPB4c9HynIK9/YAE6nYz/eJ9lHV5gJgOvVs7/xw95D5zAWI64LQbGYGh7fK98JjJi7EMqToAgw+gdiL1pH0WxNplS0/RJqXB0JxlYlAngy4563hhqqbGCIJeHiFXnVucpMIMtuvfj6+nXaCKSXDH9/3mrrtpSDnDfknSm2krf4PgtbVoC51TiID3/+IpFD+mgCKBRPrMLI+N7oAalsa4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6389.namprd11.prod.outlook.com (2603:10b6:930:3a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Mon, 21 Jul
 2025 16:22:09 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8943.028; Mon, 21 Jul 2025
 16:22:09 +0000
Date: Mon, 21 Jul 2025 19:21:59 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dnyaneshwar.bhadane@intel.com>, <dibin.moolakadan.subrahmanian@intel.com>
Subject: Re: [PATCH] drm/i915/display: Skip unavailable power wells based on
 pipe mask
Message-ID: <aH5pJxjgyEInbyNl@ideak-desk>
References: <20250717051603.1036746-1-chaitanya.kumar.borah@intel.com>
 <175275376596.1809.4970039481532019393@intel.com>
 <aHpuI_h1ytLlujDN@ideak-desk>
 <175285640686.1809.2888738151042642518@intel.com>
 <aHqBlQ-yY2Lc8TuV@ideak-desk>
 <175286978035.1474.9787252535829745230@intel.com>
 <aHt1hKImGHBVXDBI@ideak-desk>
 <4dd05412-8f3e-4c2f-9ade-7158d5478b22@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4dd05412-8f3e-4c2f-9ade-7158d5478b22@intel.com>
X-ClientProxiedBy: LO3P123CA0033.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:388::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6389:EE_
X-MS-Office365-Filtering-Correlation-Id: a8308bae-bf47-41aa-d281-08ddc872bd68
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?LURuy91eKfpUroBrIJlxn1Wm5XbGis1Ix49aDTPH+nLgrlBzIAE4SWGCl9?=
 =?iso-8859-1?Q?6P8oAj5dV4YXE3YGZxU+0m4+020moPh+d7HSJ1bDtVl+tbCqTIBegEK3yP?=
 =?iso-8859-1?Q?iVCcIWifThsf5ulF3TgIn7zkays+PsqrFhQPQH89s283jk3j+cJbBvs4xA?=
 =?iso-8859-1?Q?zoxPU5hEK2/e2I6P5HyLYT7jI8F34IzTih60I3yxY/Y19w5r9uKf7ed4TG?=
 =?iso-8859-1?Q?4WwBXXfkN/+fZymNfJ6xTAP2dWQgt+V+J6cH5AIn/AwfGZyz/JXb2PpRqm?=
 =?iso-8859-1?Q?tUe55Rsh6w2olJeyAJGQ/AdMsjX7JU2RBW+GsUTC7YZsOeVul4itaMWR1J?=
 =?iso-8859-1?Q?yKWLMCGHxI13Vi30a78059x6S8k++bcGVFgxpC65rwp12P5Ynt21oPbbWP?=
 =?iso-8859-1?Q?pNcP9JzNgEcKmstNN5ZWn/YLAYGwUPK2sYlqT175Quco6M/Odcg5sA34dg?=
 =?iso-8859-1?Q?/t6v2No3S9XnHyyVrLFy+Yl+8oSXBOQLLGTIImeRi3SXk/SfxKE/s9LGek?=
 =?iso-8859-1?Q?9AxKh5fSgsHeLkB2DeEj6PEqRQ6xE46MmCNX7Is2Hf551Bb2R07BQDdddN?=
 =?iso-8859-1?Q?n0Oll7skSSvr8UdNScE5k9MAdV6zSMaQxnLdO+WJaSzQu5CvrarA9oCIWi?=
 =?iso-8859-1?Q?V7j2MfSBl/uRV+jNXXqPfeOnHwKKNpUUv0Sf2ssPTfBzzPxzHPU490/+W3?=
 =?iso-8859-1?Q?liEc7f/AVOW9C2oVcpWXNESXVokSAebXkCo/57cCT16pJYd/RybqW3S10g?=
 =?iso-8859-1?Q?uJ4THo0ZHWFZRntdSFhjW6sjorYN4C5oD6N9bJ2nKqk+0LvBNzPekSNKn7?=
 =?iso-8859-1?Q?eFjm+9NUhZBFHqdDyVsbKtulhYHbAcaNRuqhG5KiupJh/OEj7vWE70qvog?=
 =?iso-8859-1?Q?k7Timk3VJLbuzXDH7eLV280ybc/5wbMZniA3jKpXJfLHUB8af1Mg4qGdML?=
 =?iso-8859-1?Q?ZfYQhfjbT6/uzZQ3NX1Jar3vtvQfi8TAC8di7u0Cfa8zZFvzITsg6/VEGa?=
 =?iso-8859-1?Q?FP6Jm7Oehpl5mKsm1lM/xn4u+bjQw0hupugvA/F//Iq+c7A0KZb4Tx22Jj?=
 =?iso-8859-1?Q?avVbhhC9WjOdteexlI9dHG0BRthiuZWaFcWSZw2a31/Zz4yYG4fPzM3Ew4?=
 =?iso-8859-1?Q?RvKsSLaSMC1vIyHI28gosD6SWYwWJ7Sh0E+1zogTJ0cRQJGpe5s0PR/CWF?=
 =?iso-8859-1?Q?z5YF+QMOaUvpn46NtUErF56vw9ZbAVtZY28d0jpdr1wIKJlpb5aNEMO8/Y?=
 =?iso-8859-1?Q?S5uxtK50zueQRYGLjJ/272XoUNrlbxr528qGy0baXjjfvzY8NI+C48ti8M?=
 =?iso-8859-1?Q?g/w8a1/BCMVmurrOI2vAVzR/OjbuJkiq7tVFPlF3LOT4kY43GPvov1pLTm?=
 =?iso-8859-1?Q?1N+md3kdf12Qe+4MHVxB0SRv9+YL9AMKqhwf/67G1bzftyadFZIfSJX7wn?=
 =?iso-8859-1?Q?hPFNEtF/Ot1Ur1/swQuX7fB5LDauPApNpkmwTHx3Hmevmsbm2L4W8d7hox?=
 =?iso-8859-1?Q?0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?z9HSc2/h22wSuVAtLdkfRyeC65dbI8Prd3SlVfUdeCKIVJTRnYW9AZgF28?=
 =?iso-8859-1?Q?yq28RbLpI+mRAIwgEtQgeNFDoQtNqzcdUyIlaECg5tpFSB1dXPDi2+xQOg?=
 =?iso-8859-1?Q?KESNl9sMliX7NTdesj0KqxFxzs9UlT/AWmzxUq5izo0oRoa3yONuj3xm2C?=
 =?iso-8859-1?Q?nDhNTJhoUb1/aCJOX580sn2X4oaan6qsleNK1eMsJu9pFNBRxV/3gEARMn?=
 =?iso-8859-1?Q?a+OafT5A8RzrmtPdN/2/YQ0EccgFP4cceChOYG1MnkZ5B1XSdHDAvb3Iuv?=
 =?iso-8859-1?Q?qnvifGFBr3jmI+8P4q300zX+sNNaVNXCZBOkDz6C2hAQAz/CAdvla9a5eg?=
 =?iso-8859-1?Q?JH/LTWpq/tF38/2nm/6/aRQOQiG4ZA6db2keC+ZvJNoh91BcY3m/U3yzAP?=
 =?iso-8859-1?Q?kN7b560N7b7AhoKXKeg8WnAEbpgN24G5AO1TujGryBJcyRZOvcg2rp4jjO?=
 =?iso-8859-1?Q?4rzplBi65y6gFhhtGXV5lw7Kl7qW5GXQv3aOw/BMmCOwh1TqgyoWVOuMBd?=
 =?iso-8859-1?Q?3toIqEECr4IbOu/R61JPyYUXHKFdqS2dyLhzaNvNXlITaHqCugLJp+lxjR?=
 =?iso-8859-1?Q?U4v70hiAYK4DS+JoUqfg3G2v/CfhbRmRspypo9U5fnOtsVetSIjlwZzPek?=
 =?iso-8859-1?Q?n64J+QrEiMzmEwjHdI2yNoh3EBbgmwNV8mUP7yLFmo8joAgYO3rrLgrz82?=
 =?iso-8859-1?Q?AOb+A/TuUUg4lWwdwhvsWl/rIaVAFistzb7ZDbM8PspYtBuSQcoS/x7OOh?=
 =?iso-8859-1?Q?17XS3sGnT85BYH/DIOnRAHZYa2mTKA5QZ+xQNxcCshfDRVM91aw7XNW2lq?=
 =?iso-8859-1?Q?dZixVyOwDDNaayR9SQnPVfO5t1boUzUWFosxevQt/aGOTLrqvnTp++g0c2?=
 =?iso-8859-1?Q?b1tZc92xkFNNiz8pBSOErP51Cmf1pHYUfISYjlwfmw01heldpQWVnD31g0?=
 =?iso-8859-1?Q?VsbVtP4VGLxiPGa9/B7RUVDfRdRvd7j0z3Smv2SVPlolRwvAlOiAlZOa6v?=
 =?iso-8859-1?Q?Z8Sh6rNq1DIAPk1JYRpbcdb0CRhWio+/K16u6RnuFev1RecMrplC7weUDM?=
 =?iso-8859-1?Q?AnYSZxOhUJJCNy8aumEstUJM8EIgWfC5Ayu/rSQ0921nzRRgDsLh/m3hau?=
 =?iso-8859-1?Q?DT8Eh6lr2j+BZI5kZFpjRc+mMX1fIvbI1AFVQe4jAEGi/NRFwGOm/uVzh4?=
 =?iso-8859-1?Q?rPR8BLzruX9VthCBaFxmbNAlWQK/T2TiF1Q2JVai6Ei9HSiHt8T9qk6roq?=
 =?iso-8859-1?Q?VsJOYzu5nx/859edc1gzoHgouOYbF0Uxn5GCidX+vmBamyBYAwGo7aWfMF?=
 =?iso-8859-1?Q?w21zSDGw96BSptxReeyeh6/WqCqq/8lHINrhelEOoLw2ITvbPImzMC6ThD?=
 =?iso-8859-1?Q?bMT9BBP04tJJonIzxy0MqAAMkCLcgjssSxvtpQNoJcs+yXK0TEAAJMf8yp?=
 =?iso-8859-1?Q?d5TGrKUdQkpjdSFhCnJrL7s5FrsUSOle5a2viGuC/9Qnf94FQQ0VjFjNiR?=
 =?iso-8859-1?Q?pfdCBqDqHtNHHcc5QBDsTF7CMcxnJWHM7Hf8v3qfHetSawsKNgEcH1VSDC?=
 =?iso-8859-1?Q?/cj8YkC5sCsgs4kcQ2XolVKi3DttT16a75gQGWFT9KFeLxNOQDmQ6HH/di?=
 =?iso-8859-1?Q?pwmv54rF1Y2e5xk8pQC9k+MGq44r0Dvw+aTVY1HQfSkNedEBf+nJWwqar/?=
 =?iso-8859-1?Q?9uz7Q3O2AX8ApahnDsRIPfHWlbN8Rtk1a3ksW6GP?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8308bae-bf47-41aa-d281-08ddc872bd68
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2025 16:22:08.9715 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TZUQtMIAjADDAHllpLu+BowSsAZRV3KWbWaGB1vcppRXd1A13zHgtGaTINm3Zl5cdjyeNYj4MRwsoiR0Nfg/JA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6389
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

On Mon, Jul 21, 2025 at 08:47:56PM +0530, Borah, Chaitanya Kumar wrote:
> 
> On 7/19/2025 4:07 PM, Imre Deak wrote:
> > On Fri, Jul 18, 2025 at 05:16:20PM -0300, Gustavo Sousa wrote:
> > ...
> > 
> > DDI TC3/4 are never wired on WCL, so I'd still confirm the above, i.e.
> > do the PORT_AUX_CTL_USBC3/4 registers exist indeed (they do based on the
> > spec) and do the 'PHY Power Request' / 'PHY Power State' flags get
> > updated if the request bit is set/cleared as expected?
> > 
> > >   * As you explained in a previous reply, the driver needs to deal with
> > >     power wells of fused-off pipes to ensure those get properly powered
> > >     off in case whatever was controlling display before the driver takes
> > >     control let them enabled.
> > > 
> > > So, I guess we could either
> > > 
> > >    (1) go back to Chaitanya's original patch;
> > >    (2) or tweak this patch to use a mask of pipes supported by the
> > >        display IP instead of non-fused-off ones.
> > > 
> > > I personally would prefer (1), since then we would make the presence of
> > > power wells and mapping more explicit in the code;
> > Agreed, I'd also prefer (1). I'd still check if registering the
> > AUX_TC3/4 power wells is correct based on the above.
> > 
> I had a version of my first patch that excluded AUX_TC3/4.
> 
> That lead to the following warning. I need to dig deeper to understand the
> failure but it might be more obvious to one of you.
> At the time I just assumed that these power wells are actually present.

Is the connector for the TC3/4 ports get added? That would be incorrect,
as WCL doesn't have these ports. The VBT on WCL should indicate only
TC1/2 as present, but if the above is true that's probably not the case.
Please provide a full dmesg.

Regardless of the above, could you please check what happens with the
above PHY power request/state flags if you set the request flag to 1 in
the PORT_AUX_CTL_USBC3/4 registers?

> 
> [    4.223342] ------------[ cut here ]------------
> [    4.223343] xe 0000:00:02.0: [drm] drm_WARN_ON(aux_powered)
> [    4.223367] WARNING: CPU: 0 PID: 145 at
> drivers/gpu/drm/i915/display/intel_tc.c:1447
> intel_tc_port_reset_mode+0x135/0x350 [xe]
> [    4.223583] Modules linked in: xe(+) drm_ttm_helper ttm
> drm_suballoc_helper cec rc_core drm_buddy gpu_sched drm_gpuvm drm_exec
> drm_gpusvm drm_display_helper mac_hid video wmi pinctrl_intel_platform
> pinctrl_intel pwm_lpss
> ...
> [    4.223801] Call Trace:
> [    4.223803]  <TASK>
> [    4.223806]  __intel_tc_port_lock+0xdf/0x130 [xe]
> [    4.223943]  intel_tc_port_lock+0x1e/0x30 [xe]
> [    4.224062]  intel_digital_port_connected+0x33/0xa0 [xe]
> [    4.224258]  intel_dp_detect+0xef/0x860 [xe]
> [    4.224474]  ? ww_mutex_lock+0xfd/0x110
> [    4.224482]  detect_connector_status+0x1e/0x50
> [    4.224490]  drm_helper_probe_detect+0x4b/0x80
> [    4.224495] drm_helper_probe_single_connector_modes+0x3f4/0x680
> [    4.224502]  drm_client_modeset_probe+0x251/0x1a40
> [    4.224506]  ? kmem_cache_alloc_lru_noprof+0x2cd/0x3b0
> [    4.224512]  ? __d_alloc+0x2e/0x1f0
> [    4.224519]  ? __kmalloc_node_track_caller_noprof+0x347/0x4c0
> [    4.224524] __drm_fb_helper_initial_config_and_unlock+0x3e/0x560
> [    4.224529]  ? kstrdup+0x3c/0x70
> [    4.224533]  ? kstrdup+0x52/0x70
> [    4.224536]  drm_fb_helper_initial_config+0x36/0x40
> [    4.224540]  drm_fbdev_client_hotplug+0x76/0xc0
> [    4.224543]  drm_client_register+0x68/0xb0
> [    4.224549]  drm_fbdev_client_setup+0xe8/0x1d0
> [    4.224552]  drm_client_setup+0x5b/0x80
> [    4.224555]  drm_client_setup_with_color_mode+0x29/0x40
> [    4.224557]  intel_fbdev_setup+0x20f/0x4c0 [xe]
> [    4.224699]  intel_display_driver_register+0xb9/0x100 [xe]
> [    4.224905]  ? __pfx___drm_printfn_dbg+0x10/0x10
> [    4.224909]  ? intel_display_driver_register+0x32/0x100 [xe]
> [    4.225108]  xe_display_register+0x2c/0x40 [xe]
> [    4.225321]  xe_device_probe+0x4af/0x580 [xe]
> [    4.225467]  xe_pci_probe+0x9a2/0xcd0 [xe]
> [    4.225653]  local_pci_probe+0x4c/0xb0
> [    4.225657]  pci_device_probe+0xdb/0x230
> [    4.225660]  really_probe+0xe2/0x390
> [    4.225665]  __driver_probe_device+0x7e/0x160
> [    4.225669]  driver_probe_device+0x23/0xa0
> [    4.225673]  __driver_attach+0xe8/0x1e0
> [    4.225677]  ? __pfx___driver_attach+0x10/0x10
> [    4.225681]  bus_for_each_dev+0x7d/0xd0
> [    4.225684]  driver_attach+0x22/0x30
> [    4.225687]  bus_add_driver+0x118/0x240
> [    4.225691]  driver_register+0x68/0x130
> [    4.225695]  __pci_register_driver+0x65/0x70
> [    4.225697]  xe_register_pci_driver+0x27/0x30 [xe]
> [    4.225875]  xe_init+0x35/0x90 [xe]
> [    4.226005]  ? __pfx_xe_init+0x10/0x10 [xe]
> [    4.226131]  do_one_initcall+0x49/0x330
> [    4.226137]  do_init_module+0x6a/0x2a0
> [    4.226141]  load_module+0x21e6/0x22b0
> [    4.226145]  ? kernel_read_file+0x240/0x2c0
> [    4.226150]  init_module_from_file+0x9b/0xe0
> [    4.226153]  ? init_module_from_file+0x9b/0xe0
> [    4.226156]  idempotent_init_module+0x170/0x270
> [    4.226159]  __x64_sys_finit_module+0x6f/0xe0
> [    4.226162]  x64_sys_call+0x1b7a/0x2150
> [    4.226165]  do_syscall_64+0x56/0x860
> [    4.226169]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [    4.226172] RIP: 0033:0x7fab2003b25d
> ...
> [    4.226190] ---[ end trace 0000000000000000 ]---
> 
> - Chaitanya
> 
> > 
> > > but I wouldn't be against (2).
> > > 
> > > --
> > > Gustavo Sousa
> > > 
> > > > > > > * If the power well that has irq_pipe_mask is also used to power
> > > > > > >    something else than the pipes, we could have issues if pipes in that
> > > > > > >    mask are fused off.
> > > > > > > 
> > > > > > > I'm leaning more toward a solution that makes POWER_DOMAIN_INIT map to
> > > > > > > POWER_DOMAIN_PIPE_* based on DISPLAY_RUNTIME_INFO(display)->pipe_mask. I
> > > > > > > have some idea of how to do that without rewriting code to use a
> > > > > > > hierarchical structure (which IMO would be ideal, but takes more
> > > > > > > effort).
> > > > > > > 
> > > > > > > The idea is to, during runtime and initialization of the mapping, set
> > > > > > > the bit respective to POWER_DOMAIN_INIT in each power well that has the
> > > > > > > bit for POWER_DOMAIN_PIPE_* set for non-fused off pipes. That would
> > > > > > > also require removing the POWER_DOMAIN_INIT from the static mapping for
> > > > > > > power wells directly responsible for POWER_DOMAIN_PIPE_*.
> > > > > > Power wells that don't exist on a platform shouldn't be registered in
> > > > > > the first place, so it's not enough to only remove them from the power
> > > > > > well->domain mapping, while still registering the power well. Otherwise
> > > > > > these non-existant power wells would still be accessed while disabling
> > > > > > any unused power well during driver loading/resume. Also these power
> > > > > > wells non-existant on a platform would be incorrectly listed in debugfs
> > > > > > and other state dumps.
> > > > > > 
> > > > > > However, I realized that pipe power wells that do exist on a platform,
> > > > > > but for which the corresponing pipe is fused off (for instance pipe
> > > > > > A/B/C on WCL) we still need to register the power well. On some
> > > > > > platforms at least such power wells may be enabled after HW reset/by
> > > > > > BIOS and so these still need to be checked and disabled if needed during
> > > > > > driver loading/resume. I.e. instead of the above
> > > > > Ah, I see. Yeah, that makes sense. Thanks for the details!
> > > > > 
> > > > > Well, although Bspec overview page tells that WCL's display has only
> > > > > pipes A, B and C, the page specific for power wells still lists power
> > > > > well D. So I'm wondering if WCL display just has pipe D fused off and
> > > > > the power well still exists or if power well D being listed in Bspec is
> > > > > just a documentation mistake. I'll check with the hardware team.
> > > > > 
> > > > > > DISPLAY_RUNTIME_INFO(display)->pipe_mask
> > > > > > 
> > > > > > something like the following should be used:
> > > > > > 
> > > > > > u8 pipe_pw_mask(display)
> > > > > > {
> > > > > >         if (DISPLAY_VERx100(display) == 3002)
> > > > > >                 return BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C);
> > > > > > 
> > > > > >         return BIT(I915_MAX_PIPES + 1) - 1;
> > > > > > }
> > > > > Well, if power well D does not exist indeed (i.e. not a case of pipe D
> > > > > fused-off), we need either this above or maybe go back to Chaitanya's
> > > > > original patch.
> > > > > 
> > > > > I think I prefer the original patch, making the power well mapping
> > > > > explicit.
> > > > > 
> > > > > --
> > > > > Gustavo Sousa
> > > > > 
> > > > > > > --
> > > > > > > Gustavo Sousa
> > > > > > > 
> > > > > > > > +                return false;
> > > > > > > > +
> > > > > > > > +        return true;
> > > > > > > > +}
> > > > > > > > +
> > > > > > > > static int
> > > > > > > > __set_power_wells(struct i915_power_domains *power_domains,
> > > > > > > >                    const struct i915_power_well_desc_list *power_well_descs,
> > > > > > > > @@ -1763,8 +1773,10 @@ __set_power_wells(struct i915_power_domains *power_domains,
> > > > > > > >          int power_well_count = 0;
> > > > > > > >          int plt_idx = 0;
> > > > > > > > 
> > > > > > > > -        for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc_list, desc, inst)
> > > > > > > > -                power_well_count++;
> > > > > > > > +        for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc_list, desc, inst) {
> > > > > > > > +                if (is_power_well_available(display, desc))
> > > > > > > > +                        power_well_count++;
> > > > > > > > +        }
> > > > > > > > 
> > > > > > > >          power_domains->power_well_count = power_well_count;
> > > > > > > >          power_domains->power_wells =
> > > > > > > > @@ -1778,6 +1790,9 @@ __set_power_wells(struct i915_power_domains *power_domains,
> > > > > > > >                  struct i915_power_well *pw = &power_domains->power_wells[plt_idx];
> > > > > > > >                  enum i915_power_well_id id = inst->id;
> > > > > > > > 
> > > > > > > > +                if (!is_power_well_available(display, desc))
> > > > > > > > +                        continue;
> > > > > > > > +
> > > > > > > >                  pw->desc = desc;
> > > > > > > >                  drm_WARN_ON(display->drm,
> > > > > > > >                              overflows_type(inst - desc->instances->list, pw->instance_idx));
> > > > > > > > -- 
> > > > > > > > 2.25.1
> > > > > > > > 
