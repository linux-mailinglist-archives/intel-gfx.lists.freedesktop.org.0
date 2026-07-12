Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iUqyI2HwU2pKgQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Jul 2026 21:52:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3990F745C9A
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Jul 2026 21:52:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=DaSK+04J;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFEFF10E4D6;
	Sun, 12 Jul 2026 19:51:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E90510E09A;
 Sun, 12 Jul 2026 19:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783885916; x=1815421916;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=HZ8NsAWtdobIBdxWuhiMzYbMRfQmysjbYGnXugAYl9k=;
 b=DaSK+04J5A6mIBBkh08UD4kQciiTYRRS0qJAPnw+QONo+h8azRtY8qZl
 3JbGFN7wT4qlSx67PGZS6iGoDaK+c3hLVFWSVYKymqjNUr5xpUY1SWJwf
 Y0HOxgYIB2JLG6GDoFESy13q3zfubvf23aMaRjAwMuTk0paojbTcQ71z4
 vUjOPKWdvSeCzy1UFUqNSH2AxC+CAld7+MwK6IQQouX4B8sU84AKvApqN
 GxeW6bzDzDKRX3aJFHBgMtdwXYtixy8hv5LICSHjhCyJbf9dVCOTPHEK4
 EsAwjXy6mzkTUGPP2a1ygBsDQptkuiHw8KOjv0wjE2VutEQJVncv+CKA8 Q==;
X-CSE-ConnectionGUID: w+B1fx18S0Gn7OOP5MU5/Q==
X-CSE-MsgGUID: W7HnoAV0Q+CunfJ4ojVKTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95151603"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95151603"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 12:51:55 -0700
X-CSE-ConnectionGUID: VKNr20QPQu+WnFp3kKUGkQ==
X-CSE-MsgGUID: U36qkqSvQ8mY2LhmZ3BRdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="293562327"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 12:51:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 12 Jul 2026 12:51:54 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Sun, 12 Jul 2026 12:51:54 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.51) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 12 Jul 2026 12:51:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qKp0RQqcnA3SHv+Ufdw14mpAcN2PJ/G7yahkvz4H8V05vbZs+C9B7AThliqxe1JgEnVTNcs/zYO7XpPon/FcCFuWKoN55+9mxqZPBB9PFs/HvtcbE2mydKWr2XxHMkvPKFGA2ORW5a3oWc3vXI0ki5JFJSKp0xqZRVJj670lszNMOlVmHIQIx/h6W7z3TJAd5z3w4r1LdFtlJrmIr1p0vAvF/pH6/fnlYuMVcEGjrG3gtwZGc0loIk33NMtRoYo84tC6tM7kXUEMDkUQnB8ysjDQ1Cygx3UKGNf+vW+eXh4wK/g+kjr2WvQJ/T4mf1S1E5UzuMFxOhv4CSl/YEQ53A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1nOqmFTNu0t0B1IuKMOH3pxSfkC08X5WfAHXjkRb7rw=;
 b=ucodOdskRu9i+duvDH4jhVzajp4ANiVAZr232G3eXHhiGfCHb7OvVKxaWSkk3ksf1V9JiEvfgPNeRZfjrGcAYTtnDnWdKFWknuYJP/oN1WPgBNATaOhx36knyozvxzqyqesm8ofzqGQrtjXYYp/MzrqjkeIowN7zrBS82s6rhgcVXlvbRyrKMCY3nNY0KG845U7R83FZENcTRykaMbdREsUtq53QsAnFKdQmY6TPhnPzrAz2E7zO9kFamlMzRU/SagiVQWTeKiaiKhw+bWob85wum+n+jatSaMKoHH6N3vkNT+192zPUSh52Jd3YdWxhyN2fM14oFdZVr8VlW+tKqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by SA0PR11MB4590.namprd11.prod.outlook.com (2603:10b6:806:96::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.23; Sun, 12 Jul
 2026 19:51:46 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c%4]) with mapi id 15.21.0202.014; Sun, 12 Jul 2026
 19:51:46 +0000
Date: Sun, 12 Jul 2026 12:51:43 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Danilo Krummrich <dakr@kernel.org>
CC: <christian.koenig@amd.com>, <thomas.hellstrom@linux.intel.com>,
 <ecourtney@nvidia.com>, <simona@ffwll.ch>, <nat@pixelcluster.dev>,
 <airlied@gmail.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 01/12] dma-buf: Add reference counting to dma_resv
Message-ID: <alPwTypl8Y8PN7hz@gsse-cloud1.jf.intel.com>
References: <20260710190752.2355-1-christian.koenig@amd.com>
 <20260710190752.2355-2-christian.koenig@amd.com>
 <alGcHjo9fzhHshx8@gsse-cloud1.jf.intel.com>
 <DJVRML4G11GZ.Z7FTZH7I1LZN@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DJVRML4G11GZ.Z7FTZH7I1LZN@kernel.org>
X-ClientProxiedBy: MW4PR04CA0256.namprd04.prod.outlook.com
 (2603:10b6:303:88::21) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|SA0PR11MB4590:EE_
X-MS-Office365-Filtering-Correlation-Id: ac622cd9-19c1-4535-71c4-08dee04f015b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|23010399003|1800799024|56012099006|11063799006|4143699003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: VYDw5rUEN/ZEXgPhpHTeZ6/iJb6ZD1jRbbSPGGBA8aeqXJ2W+shlpe8YD8scaLR8EQLetSiC8zT+uWW3gSefvno5KHGH2BRRF6VulwMPE/JujfzNUaQXOZ36QA6Dd+5oue0YMiNG8h8YJiEfeUHNU1TYsuRSJphm0tgwaQ/EvHg9ncWIPy8RUv/clQgEuhcQDC/SRiChuDi/m0z5K9VLEfqWoI+hgNjCOmLqEDMags+fE/Q26CFwJoT0Es7ykH7+Bain0Bq1lXatdRaG3R+xDofBp6f2pKfP/y7ERl6xqTgD/r5vjMbNi2XHKJhbk9WnFnKUiz8mfbJSlGsYLEZ7ZcxJeiT6bTbP20ezWq0BSNwu042SErBARkdqqMYPijfOAtSQV9XxhGVJZXOlQxmhTNP3Sc/Izj6r3RjOWeA+B9Acm+Uwif3xPfDi7SP6HbbUOWclWRR0SyTKckP9jafUaJ7w13qtZCM3sVOBh9uCiqDH4SB6uOgt+cic5NIYi46ZG4YkdA1T86V73XwNuW2p/LhtD6/B2qgV8W7Nb1BovZ3pS0MYdzUx6m5O0pMuQuJ6aPr92LaLwwi+wW0olUV/wLLo0+agxli1I1SFpOfhaTyCqUGW2ceyge101XrED3fyQCxf/eUVS1JDffd9YXibm2bseGLEaYW2LqUbNwiB/XE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(23010399003)(1800799024)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?1MfoB3a/gr1IMOigbc8zZKdtic/7mwNq08bf0fD34TFcvz+5nAjxG0Kr3g?=
 =?iso-8859-1?Q?lMb0MeQ6sgBvGqdI+i0oIBO3+zjqhJL23VXirZ8oSuSwCUbGYnpdbbGY+j?=
 =?iso-8859-1?Q?7gvklEYO894KqxuyEr/3EXM6UqX7OxzDNHaA065DVt8j0uJniWWDqCReGt?=
 =?iso-8859-1?Q?JImUT8lnBbdOQ8gItEfNnIzXD7RKMRKVSjWVz5hJsdBalbuHvVz1xIeXum?=
 =?iso-8859-1?Q?od9eKJR/sydvP/kbpgkPZLZ/5qAYo0XOr/dAWZ3qScBkzcDDihB3IpFwwV?=
 =?iso-8859-1?Q?sfR/eZxBIIiyWp3HuA/Av6B6RiDauOViU2v37C3HgflHXePPEfHjJL0uZX?=
 =?iso-8859-1?Q?prGDMFG0I8x/y9QBtKHbDEhZyawkUpuBCUuumvTGqVQYfiMtt8//z3C0jp?=
 =?iso-8859-1?Q?IYA/ROIRBiBECS7QZ5TsE0RvCSKtDJwAlJjLDGeLF3nVWIN5dJzgBPH38k?=
 =?iso-8859-1?Q?j93OWtekuDeyyUSSLss3pNWH+NLTSCdGzQigVyu2DRSpJM8Bh4VUUD+k0/?=
 =?iso-8859-1?Q?GfEjcraEAzZZSmN7LHb61NPwn/XyR/+cC0tDBqSr/MSQKasJtDPcG+NKqG?=
 =?iso-8859-1?Q?qOLCPKNaQw6sPs9GI28c/0i+gTUtjlxN+6NlcGS1deHWnGhzoCB9veoapb?=
 =?iso-8859-1?Q?O0iPtDKWGQBVd1eMAcrysp6q887adrW7YSkX6hxe0S7XBWtvsV5EXYZKL+?=
 =?iso-8859-1?Q?yrHVOKPvmyKT2DA7WAIkWgqyLYB6njEy3ToOu/PwQaW25kMck4bMde8ikD?=
 =?iso-8859-1?Q?IYJNFASg36QUrGp107iF3VM4gB6Un5x91Kdv+pT1NjqVI29Ql/Unk7hRvz?=
 =?iso-8859-1?Q?TKHErGrcQdKPK2vmnn7astF8qwJqjVuNKX5HvyiVCrAQXYnXlM5FZsLoVu?=
 =?iso-8859-1?Q?ZSjhnPFeTtswLV4mmr85zOe/ooxsi5t7et0zt+suJD4AU45FvVl6iz43A8?=
 =?iso-8859-1?Q?trvRR3nKxENW9sh0KAK7RSvI3iN9vLX0yYdfE5ikHJ7wJo6Wpbx9KBfRa/?=
 =?iso-8859-1?Q?3Xz2WM+kkZV5dDyxArsbNFlwnG0CgFxbJlPnx5/CNaIQ4Byaaz+dhT/Gdz?=
 =?iso-8859-1?Q?GURUXzVdcUyoblDt9LujTdyOSHMLalndzdGfLez77Ebm6zT2PhhbMmVyAJ?=
 =?iso-8859-1?Q?dqwQegLZQAFyLNVkNdhs+UYek1tVKvY9zuR4AyLs28BmnThtA0fgzhJL5w?=
 =?iso-8859-1?Q?Lj8NGfME9ZgwH43GdkpDdkygT0lye3K090WsvKRyDP1ztKBhbMrjLLZ9kz?=
 =?iso-8859-1?Q?dTL90Wb7q+hea0RrfdGkykrWyoB1OEIm4yAsf7EtUTcVxGzRT1MCdoZFzH?=
 =?iso-8859-1?Q?JHMR9JKpzA86bOzElT/T4ODP/n+Kci47gZw/d9N8q2F0wF/vBYcGw3dUMS?=
 =?iso-8859-1?Q?5oMLq2f21dYwMzaGknhUIub/XWa93JKMp5SkEN7TYgMY+FP2Rw4eL72BH5?=
 =?iso-8859-1?Q?bOwX7R/znRTFpz9EbAWI6R1QTCAgD733f248KjT6Nt6PqmLUnUCdBvkFQb?=
 =?iso-8859-1?Q?rBWJH1qr2YevqdhgoTFLvS4uR5aX3/oFx4zSAd04jB9GWegFsKYK+R10Ff?=
 =?iso-8859-1?Q?RXY12V38NdD/FlUxkmnBILkWUeA8Nlhm3am71ADKP3YEUw/BHJy4QKHoNH?=
 =?iso-8859-1?Q?1dTe/PS1/2jcYDLUuPgChiBLTTpMJC5jhZmInfiP8N5eQSdx+PCFl2SKxa?=
 =?iso-8859-1?Q?DPH2Eqt6vv9Doeg9zXSBBYRE2AZKi+hZWB7KCBZ2ehhm5JCrcvH62HVgRI?=
 =?iso-8859-1?Q?6v0y007xKMfxwtjQlAdCSUiXM+RyCXMOmUdY7m5ziqO47DRbdoyywGDXrM?=
 =?iso-8859-1?Q?+rx1tIwdEg=3D=3D?=
X-Exchange-RoutingPolicyChecked: Jr74mBCTFmtni+WanR0CMWJJ0fEBtuxFRWizvhMpArdyouGDrUcNGGz5si5M8aOD8rtmj6fE19YPjrwz4lAOA5UvZx1R77JiW1SxXBosMXaxvHgu6nGBSq3dwtqafvdoWbOFGNzz8vrjtSEu91nORTlc1nWOPt52VxNDz7wiFFTbG1cq/Y9M5hezHymiMZjD0gXoXK3JJmPOUWUY9RF+oF/RkVx6QvuTPyANXsQuurGEVYLv7K5zbLGT+1AOKc7XXKFI1aiFju9s1WmiP1BYZxr8YqrOsCPOovNWWNu3/nqzS9Zw3BVSNZ2pdTSX9wdQ0cir5TSbD+eH08JfrRVtHQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: ac622cd9-19c1-4535-71c4-08dee04f015b
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2026 19:51:46.5324 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2ATUWsspNUzGa+64Jv6JJQfKihrmWFF+PBTzHKYfu5+qxOsaqW7LUNn/voOAvyK068sCHFMVgriKvH9DXDKn4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4590
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,linux.intel.com,nvidia.com,ffwll.ch,pixelcluster.dev,gmail.com,lists.freedesktop.org,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:dkim,gsse-cloud1.jf.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3990F745C9A

On Sat, Jul 11, 2026 at 03:10:58PM +0200, Danilo Krummrich wrote:
> On Sat Jul 11, 2026 at 3:27 AM CEST, Matthew Brost wrote:
> > On Fri, Jul 10, 2026 at 08:52:41PM +0200, Christian König wrote:
> >> This provides clearer ownership semantics and makes the code more
> >> maintainable by removing the embedded allocation hack.
> >> 
> >
> > This looks a lot better to me. In particular, I agree with the last
> > sentence in the commit message.
> 
> I have to disagree with this, it is the opposite. As long as the struct

Daniilo is of course correct here, completely missed this when I looked.

> dma_resv::allocated fields and the corresponding semantics exists, this does
> result into less clear ownership semantics.
> 
> When the dma_resv is embedded in another object the reference count becomes
> meaningless. If the object embedding the dma_resv is freed it doesn't matter
> whether I have a reference count, it would a UAF regardless.
> 

Yes, I agree. The allocated field would need to be dropped to make this
viable, and we would disallow embedding a dma-resv object into other
objects (which I believe is the suggestion).

This doesn't look too painful, as I can only find two instances of
embedding in the kernel: drm_gem_object and i915_address_space and
handful of stack variables.

Matt

> It is misleading (and hence error prone) to have an API where one can obtain a
> reference count of an object where the underlying memory can be freed regardless
> of the obtained reference count.
> 
> A refernece count represents a shared ownership model, which is undermined if
> the underlying memory is not owned by the reference count.
> 
> That said, I don't mind the reference count, but we can't mix up exclusive
> ownership (embedding a structure) and shared ownership (reference count).
> 
> >> +static void dma_resv_release(struct kref *kref)
> >>  {
> >> -	/*
> >> -	 * This object should be dead and all references must have
> >> -	 * been released to it, so no need to be protected with rcu.
> >> -	 */
> >> +	struct dma_resv *obj = container_of(kref, struct dma_resv, refcount);
> >> +
> >>  	dma_resv_list_free(rcu_dereference_protected(obj->fences, true));
> >>  	ww_mutex_destroy(&obj->lock);
> >> +	if (obj->allocated)
> >> +		kfree(obj);
> >> +}
