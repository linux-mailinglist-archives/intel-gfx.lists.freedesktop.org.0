Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3pyrHqKoTmpNRgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:44:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B799729EEA
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:44:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="YcTcig/n";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97F7110F276;
	Wed,  8 Jul 2026 19:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC2F210F264;
 Wed,  8 Jul 2026 19:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783539858; x=1815075858;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kTEHubsFl5Tftv2LNwm7YgwA+8CM9Mrr+oMic/1iKVA=;
 b=YcTcig/nUU/TLMMs+VHrR3cmVDb1dFJDD02ycY6ZNme3bOZEww54n/Ju
 QwwRx+xNuS927qVEfKNMVXZCcS51uvpNNX4Ldem2fzL0jLQXTX9tBgUn0
 KpVzraYIbhZLNe/niI/+AYxBm+mOwt3eJ4tEGywqufLVD0uKlSy1inUd/
 ADEh8Bbzn6aoR+ampItZpMtnE/4rTXi1xr7lWtH1/+mqpNTXVk5RAYfnX
 SN97fmzXLmP6coW4xls4jKJ5U57lANitKrANOt4HnyE3UJ+5BLHayl+XP
 rz+r7GL7vBcykYYJ4kIqMk8FqRxOCxm0R2SFsfXN1VQ5Fwfu5P0tL+xUz Q==;
X-CSE-ConnectionGUID: zKaDHz4rSXSdxZ202a04IA==
X-CSE-MsgGUID: VEsE4tG2Q7WRA6EJ9uuZog==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84235429"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="84235429"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:44:18 -0700
X-CSE-ConnectionGUID: c/p8rfxxRw2s7IOBQEwZRw==
X-CSE-MsgGUID: H25sxVSrSdKkNZgrUMEd6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="254479467"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:44:17 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:44:16 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 12:44:16 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.19) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:44:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uzr02yXWYarSZ5G1zUMDJZeEwu2pwauK/4bJ8yBjexzXdR78qJIPe0Pc6wZP+Z3CFhhvJd1GVGk2vSwcOeA0qbr3ivovoEzkScS9o0cAfZI2ram+2eugRyLUBG8dCcLZqyvegba7JiX95K3U4wwnAjwBZMh6aap25iUKBuBCoX5MVugIkXZYPQcJeRzgmsFNcNH3tQnTqQ/3InGl/VFPac422yeasMrlnRrOLh+RZhwelIpCbG6vHufi9EJUuPRCU7eZ3co1DmoaDuuKIiM18kDlHRuBTs2iXztll/3AeuX4vPIjSzc72pPIwTjF7rjRY3zC2YgxIF9iuaP8UPTHeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WFLGl72b4/BFE9PTORgGLFZbTtaCVAlW24uZiX1FXIE=;
 b=Ar3JlvWdTFtCTd6xzGrM1/oyq1YYyhNJ1k4GNn08q6WDh8cSogBCGk6/yZFuuoN8hie1PaYM4XdXaSjvbLnLHIeky9yuaEWre391KjpQXo7G9yws8pYvHSKP4nRYjWlnpzeRzuY5kDdrSI+d6rUMfqZiLnG3vswRpfdk2BeB1XoGG1E6GZGjIJr3ubtHjrzqAp2uRnzS78DgbXCtEv/py6fz4aMT+tkX1HtQeHyM727PdL8KrkFzvnmaQT1hwrcTFU6A//n5cABnOHFXqX1JXOJi8d6MwZ7GbpipRRhyNMzA3RuixSwS4JNFQJWurmEB3ljnZ5M0C5Ui2rmr6Ecuvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by SN7PR11MB6702.namprd11.prod.outlook.com (2603:10b6:806:269::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 8 Jul 2026
 19:44:13 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0181.014; Wed, 8 Jul 2026
 19:44:13 +0000
Date: Wed, 8 Jul 2026 15:44:10 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: Matthew Brost <matthew.brost@intel.com>, Thomas
 =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 28/34] drm/xe/kunit: Add display test config
Message-ID: <ak6oii2kPPS4j84Z@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-29-imre.deak@intel.com>
 <akz5e_Zhf-1dKUNG@ideak-desk.lan> <ak6iGSYxh0k5cCHH@ideak-desk.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ak6iGSYxh0k5cCHH@ideak-desk.lan>
X-ClientProxiedBy: SJ0PR03CA0376.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::21) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|SN7PR11MB6702:EE_
X-MS-Office365-Filtering-Correlation-Id: ab2e0618-13e0-4af3-5fc8-08dedd294973
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|23010399003|366016|4143699003|22082099003|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: OyGdCHG/4Ljeeyk1PjRH/2OR36MTbQQua7jbuGzW5RI+CFgtU6rnFjAOOhjTeUgUWxeoK7JjNKGtnas5HxR13D+SwR7SUUgyBj4WOOIsHKpy09QZrtY3rvxv9R1+yeX8yZKHWepkDY+o2TuT3ye7gDU4ekoYuXkSehOgb2S9iNJyO4fXImXfYvxkW/gFWROPMC91ZcVVtrGFUmit+dy6kSZwmrW7fmSKqzc6JktBuEojxx879aoChGtvraMjr0+XFoTze8fars9TAL26/sGlTyr/YKX1mxb8DSeeM6+eZ1LNBPOdN2TMBJopRKkmA64bYI1b2gL5h2fRxN5fgxOLfdIT4BDGUiEj04rCMOJ7+FGPtc4HdCVVHto1tpxTIIQ+NFN+KX5cRTkEIPk1v8Hapw3L824e63gUH4oMKMhdvJPrsw7lcwZIAIEKCP2GCbTMk3TtfPqF6Ax4qRCsvurF1qeOZh29BVP/1mp04qtC/p62GBxRaj6SiqBMLCnhwCYISb9M3FkeKOkp4dhY57WGD7K6BXgp+Vh+rnH/vqn30jl8mvq/UE5JeU8vg33As1uAnJUoy/lV/l2aIMhXjoCF4oDVltsRRlkPd6a8cIuMuRwhholUgtluBQBuY5M+7eBBkz+2b9Ud0q327P1FR6TWrQSmOZRSyi7MD5udWHP8+tw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(23010399003)(366016)(4143699003)(22082099003)(56012099006)(11063799006)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lu0AAYxGPUJiffPRvO9eVVes3axg3w5vkKoIOiqBaX8S3uG4eXmYNzgk15uK?=
 =?us-ascii?Q?YNQeT7mRNsU2qGkoWu1/laPE8J4TC5Ednh0H9sLHgKomoTMdEErBWDl/sI9J?=
 =?us-ascii?Q?oujL1qd2lljMsVwVN6R24Lg5MQDKB6ckAKkdI+eka1XuEU5VXY+LlUFt+BlE?=
 =?us-ascii?Q?HYJHpQQ0cXWasnDSudjeMewONoDToviroOFZ3Hf4mGyXICx9ht4Njb+bznH1?=
 =?us-ascii?Q?EJfbVQODyD/nErXae2FdcpxhSM2LQF7ICe3i+ccjMLX6lvjRrWGNE75A4hE/?=
 =?us-ascii?Q?db8L/IgzAoRRzaX/u59nPmvYoZaZcwKGnQHXPae1oieC89LzA0VoWi9pmI00?=
 =?us-ascii?Q?woJ5kYQfFEeLU87LOH4sGtb/tlR+DUW6td3sEhDFl5rnOiaP3gOjRyQyFkah?=
 =?us-ascii?Q?dMHQ8BQOO9qwKxqjaMu8/WuqdCXtAEnGdyn0I/ltDz39BCQQVnIcesNm3vWU?=
 =?us-ascii?Q?ixiVjDwhSoc4EM9c3p0SsyUhEUsu7oi7tc/Sd1Jml0Fj8ov+2SqjiRIfKJrY?=
 =?us-ascii?Q?TBXkKNG+65RWKOym4Fd1mJZrrfNS8ofsbQDPl74WWrFycZWfzZxd2w+dkqiJ?=
 =?us-ascii?Q?ZD5ZQtKGZte4PQcpwL1VkfcgHBHs7lW9GjkTN9iaRyCq/iIMVq4VZ7ZtqhWX?=
 =?us-ascii?Q?1dVfdQ1E2hTo5e0xXdeX519gwuHOS7hmrCc8s0+2RYS3hww9ld9nN5d4Szwu?=
 =?us-ascii?Q?IGc0e+s3ASB3sSNVYaZ3xviVvMDjArUv/8eqi2i3qMbjDobWDWPgF3RNzBVd?=
 =?us-ascii?Q?UQCJp7BYYgE4ZbqYyVuJpkoDMSoNphEPsAValuzujgcqoIYc6fiWGbowMafa?=
 =?us-ascii?Q?xGmNFlgvnInHcb/wGbSiff5ZStJdSCd/Ke3N7qHgs+f49FQd8ZmDAOP9qrlP?=
 =?us-ascii?Q?5nIvMYL2hoSAem+2TMQTiRX2Zx+PD8QGy4jdIGEP+wuZAOWLJ2B7bsiLONNs?=
 =?us-ascii?Q?cELj2XlahLILoCVplPe7h6L2uOW6ncP/VpUbfGfwyVSnbjYB909/TBL2lXrk?=
 =?us-ascii?Q?q0ErwGoiw2fSPaABGXZN4SVm7Hg/gBIvC9+MD8JDWRIX7RlagedwaW8Hf6Gm?=
 =?us-ascii?Q?4amhNxkErECPGsRDT2eq3AXN/WrS0guFgwlAKQoCd4XlOb7xI4O3b6Ca3ByJ?=
 =?us-ascii?Q?H8Ps6DO8NaM6zRo1S743NBVTVgcXgtRklqGJqmTBsdi1K+I0i7P9qNavHGjK?=
 =?us-ascii?Q?IQu+40/fbZwx1TJEo8F3JNzyQOtfh14YA/ZORtjeT8nZAsBhe+lhK3NOUCfD?=
 =?us-ascii?Q?SI9GrIb2/6YfgyaqyoAdkDIvLloPsWwYfhx+k9YPLMxLo5WSiTz9QUUe+KpN?=
 =?us-ascii?Q?FbvUtRDQ5T06oaLpP6gaqjA9ITgZdt45vc7cNMT0LOBcuVJuqXXKwlgDfIPp?=
 =?us-ascii?Q?n04p9hi26BlbSwvoizFU3p/BPWD2cjue7MAWIubeogfFydy9zVTpV2zUliJf?=
 =?us-ascii?Q?nPxZ8adz+nN1z0rubmsduDpViwFrMNc08QKonaR8ETWrzViiBOqgz4OBy2Ad?=
 =?us-ascii?Q?ZEWjapqCdU+O00L1+bBwawxWMgfVdkoZz/3KZo2NaqtBI6DoPvW0OBuaBwu3?=
 =?us-ascii?Q?TlwjCyTYxYe0yqN1hS4nPaBYQJK8T0bA5QjWU5VDUMJdVXJ9lvBeetoKGV0J?=
 =?us-ascii?Q?ddiz79Np99UHWr5po44FI1sSd9Vpm30o12WJK2Ov+TaZToTZi8Z0C7EhsYZW?=
 =?us-ascii?Q?+WY79qp3tPU9r4gzaSpaXiSlj8aSeotZ+orkWF77vpTm3kjcMf3U9Rcyg8La?=
 =?us-ascii?Q?elKKVavOuA=3D=3D?=
X-Exchange-RoutingPolicyChecked: ZgwExbXEzyg7vUbzFP92RMjxfBELUdHnYN9Wdo8N28idXV3RDME6RZ3kNJdQEgjfi7/BIx5a58jixZyyZUwvxPlG/NzJf7LBQSNtqF+WbYWRZtJ7aDq4S9ocaxbbjRQ9WTk82pyn2iSBCSv0JzUlePEd3NJ0QeCUojVAC+WGL+MAjQ0wSEQtSLSfn/3tPbz9dF9r5iBBkSOtuOQ/wTKNW9S/HK5P19Z0hZs8dcRoG54ZHdXJqf6eO4EWwJkIEa3rDO7HCy9LTAX1Ufbg7EpuQ08Sp1G1AONMYgFMCzwRYxmGPH9amnaJGPcmfzK2Y5myuQjwUrugYJsSBj7FIEmJdA==
X-MS-Exchange-CrossTenant-Network-Message-Id: ab2e0618-13e0-4af3-5fc8-08dedd294973
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2026 19:44:13.1168 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vlDlV95priBoUO6RGfdrbkW9PCyJf9153CmbFd10CVgJhRNgHovaoKENLt22QaNHpwvfVeFZJsVXDFLr4vkg0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6702
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B799729EEA

On Wed, Jul 08, 2026 at 10:16:41PM +0300, Imre Deak wrote:
> Hi,
> 
> On Tue, Jul 07, 2026 at 04:04:59PM +0300, Imre Deak wrote:
> > Hi Rodrigo, Matthew and Thomas,
> > 
> > are you ok merging this and the next patch in the series via the
> > drm-intel-next tree?
> 
> any objection to get the above two patch merged to drm-intel-next?

sorry for the delay. no objection

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> > 
> > Thanks,
> > Imre
> > 
> > On Wed, Jul 01, 2026 at 06:31:57PM +0300, Imre Deak wrote:
> > > Add a separate xe KUnit config for display tests.
> > > 
> > > The existing xe .kunitconfig builds xe statically, which is suitable for
> > > non-display xe tests. The display code can only be enabled for xe when
> > > xe is built as a module, so add a separate display config with DRM_XE=m
> > > and DRM_XE_DISPLAY=y.
> > > 
> > > This can be folded back into the main xe KUnit config once the display
> > > code becomes a separate module.
> > > 
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/xe/.gitignore           |  1 +
> > >  drivers/gpu/drm/xe/.kunitconfig-display | 11 +++++++++++
> > >  2 files changed, 12 insertions(+)
> > >  create mode 100644 drivers/gpu/drm/xe/.kunitconfig-display
> > > 
> > > diff --git a/drivers/gpu/drm/xe/.gitignore b/drivers/gpu/drm/xe/.gitignore
> > > index 8778bf132674d..6dad8a5a21355 100644
> > > --- a/drivers/gpu/drm/xe/.gitignore
> > > +++ b/drivers/gpu/drm/xe/.gitignore
> > > @@ -2,3 +2,4 @@
> > >  *.hdrtest
> > >  /generated
> > >  /xe_gen_wa_oob
> > > +!.kunitconfig-display
> > > diff --git a/drivers/gpu/drm/xe/.kunitconfig-display b/drivers/gpu/drm/xe/.kunitconfig-display
> > > new file mode 100644
> > > index 0000000000000..17020aa4ded3a
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/xe/.kunitconfig-display
> > > @@ -0,0 +1,11 @@
> > > +CONFIG_EXPERT=y
> > > +CONFIG_MODULES=y
> > > +CONFIG_KUNIT=y
> > > +CONFIG_PCI=y
> > > +CONFIG_DEBUG_FS=y
> > > +CONFIG_BLK_DEV_INITRD=y
> > > +CONFIG_MAGIC_SYSRQ=y
> > > +CONFIG_DRM=m
> > > +CONFIG_DRM_XE=m
> > > +CONFIG_DRM_XE_DISPLAY=y
> > > +CONFIG_DRM_XE_KUNIT_TEST=m
> > > -- 
> > > 2.49.1
> > > 
