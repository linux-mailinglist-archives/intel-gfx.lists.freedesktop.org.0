Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AK7hKQ1gvWl09QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 15:56:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0D72DC1D9
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 15:56:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1443210EB02;
	Fri, 20 Mar 2026 14:56:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GOIz8dEr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A77310E90C;
 Fri, 20 Mar 2026 14:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774018570; x=1805554570;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=W3/ONfspVNuxddwyvtAKjWoKOIvBn2ChHLFgu/WMYUo=;
 b=GOIz8dEryMX2unTEwgWT+ouUZo+YzUSrA8dB/zVeRpaZZspWDcCTwPej
 nk1Okb6//Df2ZmFOCBsKjFSXUoMZ4Hym4AC2A6jxQnozm7k8F3kd0649j
 9OeqUvJTyONMW4rHica6xP6kEerIZP8GgAKJCJ38wYl6T+hGbiWWAN7Xf
 2AYMJiouNC8O/R5MckZ1UGE9nM3QiayNTREjrgPdBKX7+0GlX3fjXi1AD
 6r0fgr+2iAv7Vrau5dsCfaLkSNn6935rWaFlq9zfCdBjqwYCcEtq5FK3U
 jVKxtbJKK5wVcmY3/SdE94Nf9s7YB1Tmb1K57Gc0ZxQhQkfGpwo1RYSb0 g==;
X-CSE-ConnectionGUID: VsrdVv/mTOqUXP8iDgSJLQ==
X-CSE-MsgGUID: 2tYq4XFhQuiPr2Mv+iVdwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11735"; a="85808274"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="85808274"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 07:56:09 -0700
X-CSE-ConnectionGUID: khpirnfDSqS7SLrd1lWlyA==
X-CSE-MsgGUID: seav+SRXR9Cc6FiVzX4F/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="220639920"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 07:56:09 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 07:56:08 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 07:56:08 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.32) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 07:56:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N1K2bTlzJfCHf9UXOaD0aE+KkSpL/y8uRZUGgSjHXzJaU+lPHS/9ReiNmkzftuivkoORp/cOAZ1rJVTRqUN4DiNy/0YMc+tT066b84VNDvo2SvkOR0ylep4LNv+JRFVLUcMNTTRftGoKjC1PeHZEPraSROXt7v2wPshDLdcx8+Ax2D/XGd5+6RjndlL9CtovxoEob5VLuijJBIRscKkuhWnOqEm8ZYtwZYF+Jtz6zg0W2yUniwiEpw3y2VcLxzFXMtLipdsHVBxyjosXSRW2BGuAjxfiK8oQ4M2smIxWC+rwzIxZxv0QGCYl2BmaYO6xSvsG3S4ytCaREinOfUo7Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bMB4XN2xhnoI1bfx5R2Tbjj9rTFgxryZ/BgiEpot+G4=;
 b=lD7WPN2L7Q6PVRWZ3p/GGMnJmCaS8+K7eBjZznaJiQ2UDrinzkUUgLc1JtzSnTOnV7W47eFqKZvyrM4Nni2V1zNKI/sFRRqJhNkdlsLyKvCdVAFLDNKS2gljGeZdGdrjDSfBuCLSv5ocEww1JIxKOtXlQ0gNV99Ox8eDlGICNp8Xrsw6Zod0H/iN5R6qDgVpdnCnCkwB4lZI40RnvbNCLst6R9I//8bODJbaR88l+i10JAorqAyIyv79I8wiTx09gi2v6fwFIP1kz3DJLkB1X+5bSOZKl/u9bY5oG8jU5FuRWIU4SLMxClh9L9pAdjEdcd05vzbevHHE6X1NThDa1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA4PR11MB8916.namprd11.prod.outlook.com (2603:10b6:208:55e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Fri, 20 Mar
 2026 14:56:06 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9723.010; Fri, 20 Mar 2026
 14:56:06 +0000
Date: Fri, 20 Mar 2026 16:55:57 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/dp_tunnel: Fix error handling when clearing
 stream BW in atomic state
Message-ID: <ab1f_WvJCZZRR5eK@ideak-desk.lan>
References: <20260320092900.13210-1-imre.deak@intel.com>
 <DM4PR11MB63602830F5D63903389EF2DAF44CA@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB63602830F5D63903389EF2DAF44CA@DM4PR11MB6360.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F707.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::392) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA4PR11MB8916:EE_
X-MS-Office365-Filtering-Correlation-Id: b3e3a915-e06e-4483-04f6-08de8690d014
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|22082099003|56012099003|7053199007;
X-Microsoft-Antispam-Message-Info: We1llalsHKC3dm1V1pjWR3r/d6v3/N7GG2qHrzqxabavGyPVev4z6m3d3h+jvl2wljiwDcWAIabf8gxeI985g4ClSOFBjvjmBmNOQeKLJaSJT+tdmeE4OCkf42oFwK22AWaVZKJ0KALoSoorwFUxoeIQLHRehBSsWhqYmtczl6KfaK3kKfo03R4GuiFlCQmXGyuqM29tJFizn88O76s/0PWlQdbzvRvDEde4P4LIxREa4gW+p4wRQyXdhRYd225mCITxftE2FT+2A/y2ekCo2YpfKp6sqdoRpF1WTHwJhOpdAfhy+/bh038PGPKd1Mqkx5v+WUHOOuC6MBivc54iXjRXvCfwWcCu3vouAK4BY09yfw6WykPzN10ScJ0ZaW6sPLb43NZYoz82KsnrZ2HASi7Ny3b5hRuGdC+fOfsVCkVw7mtGDvnOs2xWYFHmJds/8DDsmQVQ9VUoR72Gz1/E1jfOX/KTdwjapfxQaVNfGuY6ckgHxB8dpxrSDGRsCfurOhNKshZfzh14saTE3zH0TflV+VMzPJxsv9Q4AZ0OAuX5JBfH94Am+5OOoRXipy0K488z1fcBDAzQNuYy2zh0Fm8vYH/jE9WJRmRGvQWrpZqar4uVIeHHeu9Zakh+YXO8upvb9O/BuE+rle8l5Ckr3jz/IX8FFIESWshvQzpRPkgnDPiD0/EONrwbGrtnmmZDfv5xZS/Z3VO/ridUTYU/wvGseHpSkZiegqLPE0Jmnrg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(22082099003)(56012099003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?iQ0EnTXrLfEYdMDhE7QOHsqEL5XAqPizFX9pBoWTXKcStK0WE7fPecHiyT?=
 =?iso-8859-1?Q?FLV3y7kVGuL/DxUl88ZxhN6vOjvRlcPge/z9UQZiQephujdAjaSzrj3lLM?=
 =?iso-8859-1?Q?dYc7mxZPymV3alqeKmCdWIyYJQ3L8pGLEXxLK7y5bBRaex1si/hGFViFgD?=
 =?iso-8859-1?Q?yhY55ox4MdRAdOnn8jStip0apeAMFbxhEU81Up3B9fWssWVuiYg6JRnnkg?=
 =?iso-8859-1?Q?ojc245AO001WXug8xhp6pXDA2vMl4x4VA81w7K9ahtIaX1veGuIum1zyXI?=
 =?iso-8859-1?Q?3BnBnkECgvoNaEL6JmJF8j+SHyzQvGaI6adE5hM+AtzuCJaJoKHslyxmVI?=
 =?iso-8859-1?Q?iIc9EPRu4KIPMU6/bB5nLYdmib3dJAhbkoWT6HS8pdI2i2zZ9B3b5A3ooz?=
 =?iso-8859-1?Q?NMCN3Jts/iQwb3obn1KM+Tv6zCNMd2TjaZrURLZpkTxzkUP5fRVN7l4VCz?=
 =?iso-8859-1?Q?nNzdDyxx+kvdoCYyco9xQXS0zIGt9D273LGrl613jtN0aTULhoLuLX2yg9?=
 =?iso-8859-1?Q?jrs69DPdsVVU2UpGemb+Li8s+dM3jHtjJmPx5EMVSNOx87B6jDvQSnj0bE?=
 =?iso-8859-1?Q?nr+jGkzU48N+9EipvyHx2IB24LmwRD+diOnkKH7Ne6Yrc0r+uhxk+z1gmi?=
 =?iso-8859-1?Q?FZjIgGEuv94L679krsbgW068YtYWEh4GsfHXvp8kIc9nV2keopgEMLCd+c?=
 =?iso-8859-1?Q?EkvIRHx2PPcSGFwJZwNzGtr9ns2zc/uNvvztyeXEtVTH4HwYssJta38H5A?=
 =?iso-8859-1?Q?KnKdurGY9Q3LnOBsHRiiletdnPGeKusfBb8Gn26/Sn7XbGR/Q7vhur9nTY?=
 =?iso-8859-1?Q?F5xC5Srbhtgb5ne8SAWRa5JCGSoM1p7q43/KRw2OgoAx3CXoBrwiEyfPpA?=
 =?iso-8859-1?Q?rgGoflZvkl1tS+cuMudZ5+9zSGdz8qEgXOGs7lNOhvZJnjjWz71P/lfril?=
 =?iso-8859-1?Q?b+ENf6QdkYYG8CMhhTPFZlRSu00q5nTOr9Dfpw6QsJW7Ibv2/DSgzCrUo3?=
 =?iso-8859-1?Q?HC6vmUGSGEEv7LufVofpidSrZHKinG6fPQQNqBZQ6lSSJYCz3v6PMS3m+D?=
 =?iso-8859-1?Q?1y9wxCA3H240soXTfHXeByUSYb8o5Q102SVMNBM1w78L6f3v9jKz5/UDvN?=
 =?iso-8859-1?Q?UYVU1ilMYdzp5rXSPY3oVr987E//F1uwS2MHIDLebhkc9Zc9rCZ3XUcdYf?=
 =?iso-8859-1?Q?xH8pIprc/Z2sFqLx5g0meqS8pZNuXtTp7rpdx/ZzVKxRDHrwbH/swlGYEn?=
 =?iso-8859-1?Q?/rhgB32Rz8q2mjirXbQvu13eIZm8Qhzz2VCu1A3KwqlaQjM1PBOZ80mneZ?=
 =?iso-8859-1?Q?BY4WhI8eLavPBzjbTbshRQNaYC006Gdh+HD+OO1JEYbuosJ6oaJF8ahR49?=
 =?iso-8859-1?Q?qQo+cpiwZhNJxtAjdtlneR0Lj9/iLKa0htxEXVE/Pg78LZZz+nT+FR40m4?=
 =?iso-8859-1?Q?aS1UUXY/aepZW2v2ynNTSA9bOLEWBz1iHETTyqXdOvQkFyaQhPr+TQzScD?=
 =?iso-8859-1?Q?HtXd7dmb4Em2Kjrw4C5lIVqx50Lh3c9M1wBwgSoY6Iw15+5O8oqMkECENx?=
 =?iso-8859-1?Q?MLF+X2cAXocwoxdA8Oa++KmI5wzE5rzkrpBR9tK00LrBZdNAoL8hKMONNs?=
 =?iso-8859-1?Q?6yEczx5pEFeXDVAfvIdkumEN4aHh9frb6cgYwtW+brXkx0Emm8zPKWyxkC?=
 =?iso-8859-1?Q?FncVXlf5azZPt9gAIACqWr6X2tUYxB5nb6h3KGSOIxJOizLIWg8gEJziDd?=
 =?iso-8859-1?Q?FsciPfz8z51MuxFGpjELZa/e84PJliyRJRTgtberhbFfDGX6uMGDwYcpjG?=
 =?iso-8859-1?Q?Hk4XWbAcVw=3D=3D?=
X-Exchange-RoutingPolicyChecked: DKAoMBgweFIL58mfyLPYFi0Z/IqJh2jyjjrb7Oi1C/iLwJ6GtBHjgp6almCkmS1cpiffrc4z+zfMEk6R9ak47m9ztrkCUewiMP7HiO3A4MHtmgSOK4e9CJrwbUzuLLC8PBj0Ca4vPL+LuKA2ch8Hw3fP3SWzrFv6fiaKSb+Pn2NoemTxePbbXRMx5f5toN8awWtBUzNa82T4tQHVd+BHa65sUN9rJhWJ9o4odPPi2eliQ/FwFPckYrPzmv2U3fO0FrzxYWDTwvUWqblKjiVUP0lx5BYVkh+dC2TjqJ8cQIUmEam565EdK1MZsYdj5XnxjVRZzjjW5EYvnImu8o6u8w==
X-MS-Exchange-CrossTenant-Network-Message-Id: b3e3a915-e06e-4483-04f6-08de8690d014
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 14:56:05.9617 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: czsqs0+wLbWIG3024Sr0cU9XQAH+QKQJIz2yhTWv1BslWsz4Lk3nhseJ//l9it8KoccFYOtzYYyThoUv7D2oRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8916
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:replyto,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.678];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EB0D72DC1D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 01:42:58PM +0200, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Deak, Imre <imre.deak@intel.com>
> > Sent: Friday, March 20, 2026 2:59 PM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: Shankar, Uma <uma.shankar@intel.com>; Ville Syrjälä
> > <ville.syrjala@linux.intel.com>; stable@vger.kernel.org
> > Subject: [PATCH] drm/i915/dp_tunnel: Fix error handling when clearing stream BW
> > in atomic state
> > 
> > Clearing the DP tunnel stream BW in the atomic state involves getting the tunnel
> > group state, which can fail. Handle the error accordingly.
> > 
> > This fixes at least one issue where drm_dp_tunnel_atomic_set_stream_bw()
> > failed to get the tunnel group state returning -EDEADLK, which wasn't handled.
> > This lead to the ctx->contended warn later in modeset_lock() while taking a WW
> > mutex for another object in the same atomic state, and thus within the same
> > already contended WW context.
> > 
> > Moving intel_crtc_state_alloc() later would avoid freeing saved_state on the error
> > path; this stable patch leaves that simplification for a follow-up.
> > 
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: <stable@vger.kernel.org> # v6.9+
> > Fixes: a4efae87ecb2 ("drm/i915/dp: Compute DP tunnel BW during encoder state
> > computation")
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  8 +++++++-
> >  .../gpu/drm/i915/display/intel_dp_tunnel.c    | 20 +++++++++++++------
> >  .../gpu/drm/i915/display/intel_dp_tunnel.h    | 11 ++++++----
> >  3 files changed, 28 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index ee501009a251f..882db77c0bbcd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4640,6 +4640,7 @@ intel_crtc_prepare_cleared_state(struct
> > intel_atomic_state *state,
> >  	struct intel_crtc_state *crtc_state =
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	struct intel_crtc_state *saved_state;
> > +	int err;
> > 
> >  	saved_state = intel_crtc_state_alloc(crtc);
> >  	if (!saved_state)
> > @@ -4648,7 +4649,12 @@ intel_crtc_prepare_cleared_state(struct
> > intel_atomic_state *state,
> >  	/* free the old crtc_state->hw members */
> >  	intel_crtc_free_hw_state(crtc_state);
> > 
> > -	intel_dp_tunnel_atomic_clear_stream_bw(state, crtc_state);
> > +	err = intel_dp_tunnel_atomic_clear_stream_bw(state, crtc_state);
> > +	if (err) {
> > +		kfree(saved_state);
> > +
> > +		return err;
> > +	}
> > 
> >  	/* FIXME: before the switch to atomic started, a new pipe_config was
> >  	 * kzalloc'd. Code that depends on any field being zero should be diff --git
> > a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > index 1fd1ac8d556d8..7363c98172971 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > @@ -659,19 +659,27 @@ int intel_dp_tunnel_atomic_compute_stream_bw(struct
> > intel_atomic_state *state,
> >   *
> >   * Clear any DP tunnel stream BW requirement set by
> >   * intel_dp_tunnel_atomic_compute_stream_bw().
> > + *
> > + * Returns 0 in case of success, a negative error code otherwise.
> >   */
> > -void intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
> > -					    struct intel_crtc_state *crtc_state)
> > +int intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
> > +					   struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	int err;
> > 
> >  	if (!crtc_state->dp_tunnel_ref.tunnel)
> > -		return;
> > +		return 0;
> > +
> > +	err = drm_dp_tunnel_atomic_set_stream_bw(&state->base,
> > +						 crtc_state->dp_tunnel_ref.tunnel,
> > +						 crtc->pipe, 0);
> > +	if (err)
> > +		return err;
> > 
> > -	drm_dp_tunnel_atomic_set_stream_bw(&state->base,
> > -					   crtc_state->dp_tunnel_ref.tunnel,
> > -					   crtc->pipe, 0);
> >  	drm_dp_tunnel_ref_put(&crtc_state->dp_tunnel_ref);
> 
> Hi Imre,
> Should we not drop reference even in case of failure, is this intentional ?

Yes, the early return in case of an error, preserving the tunnel reference
in the crtc state is intentional. The error here will make the whole
commit fail and the atomic state - within that the crtc state - being
freed. That crtc state freeing will drop this reference, see
intel_crtc_destroy_state().

Aside: it wouldn't cause a functional problem to drop the reference as
you suggest in case of the earlier error either - the related dropping
of the reference in intel_crtc_destroy_state() described above would be
skipped then. But I still think the usual early return - as done in the
patch - in case of an error is the logically correct way.

> 
> Regards,
> Uma Shankar
> 
> > +
> > +	return 0;
> >  }
> > 
> >  /**
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > index 7f0f720e8dcad..10ab9eebcef69 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > @@ -40,8 +40,8 @@ int intel_dp_tunnel_atomic_compute_stream_bw(struct
> > intel_atomic_state *state,
> >  					     struct intel_dp *intel_dp,
> >  					     const struct intel_connector
> > *connector,
> >  					     struct intel_crtc_state *crtc_state); -
> > void intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
> > -					    struct intel_crtc_state *crtc_state);
> > +int intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
> > +					   struct intel_crtc_state *crtc_state);
> > 
> >  int intel_dp_tunnel_atomic_add_state_for_crtc(struct intel_atomic_state *state,
> >  					      struct intel_crtc *crtc);
> > @@ -88,9 +88,12 @@ intel_dp_tunnel_atomic_compute_stream_bw(struct
> > intel_atomic_state *state,
> >  	return 0;
> >  }
> > 
> > -static inline void
> > +static inline int
> >  intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
> > -				       struct intel_crtc_state *crtc_state) {}
> > +				       struct intel_crtc_state *crtc_state) {
> > +	return 0;
> > +}
> > 
> >  static inline int
> >  intel_dp_tunnel_atomic_add_state_for_crtc(struct intel_atomic_state *state,
> > --
> > 2.49.1
> 
