Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPGSIDmu8GkWXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FF5485521
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8135F10EC50;
	Tue, 28 Apr 2026 12:55:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LM9dL79i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45E7310EC78;
 Tue, 28 Apr 2026 12:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380919; x=1808916919;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=lpz3+6vmJBxNyOOe1UhnHpImlmL+IEUm2tnqviKZn0w=;
 b=LM9dL79itRNQo+K+Y9Er6abYbzhuzcv0UXnFXQgo22fsdmow4ViybzJl
 osJaJYIagKjMI93Fw9b99MzsIbrfcu/1NUQqmSSV5YxVrt7RXKXFctXt7
 COcztpUZPK4/14mfIfWLqyNmqLzfJdMhO0M0Rlc5UEBQLITojRHjUdVHZ
 xM9X/0+rakF67Fj0IZXDXEvZWp30Y1cyMk9Cpw8qzWhoxFbj7CYQ65kS+
 LL9Cd56z18Ciexf3pwI8Fstvth1vVmweINAlk6U2ikijSNXmpIEkFVIiJ
 mT/xt0A4Mdtx+0KWLgkVeBVD2nuywwh9nY9Ic/dELI2Y51nfgPf/Tnvcy w==;
X-CSE-ConnectionGUID: ehFiSVilSbeDZmtEbnWP9g==
X-CSE-MsgGUID: DR4OO3JlTtyp5BYUwOHM4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893834"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893834"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:18 -0700
X-CSE-ConnectionGUID: in+VUsEBTtG5swSkJR5wkA==
X-CSE-MsgGUID: 3Y5fya7oStW7KfW2tEQ+BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233092700"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:18 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:17 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:17 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.55) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=libIuIgV++aBBlv9WrNKD4JmQ44H9TzYIQp4gZchnxxLUpXyaH18l1YgA36J/w1CX8qqOQgoiEJRajTxfefeFKq2Dk/OKBkGAt25qptqPcLsQhLhJpwEdGrtFzVncLxa55hSx1NSB9cV8bTST/HZ3v3eEb4ZeJ4x2dqPE2Anu81B0TmldZaEcSAwR499llr2iaYVBtV8zi+6gVVPw6beLqN29U6/m9jgt/u84YjTBU+ICrTTKbBbgucCkQYGNwmBpxx5uwPBF5vW+pfxpXTMADKxQW5KOEVFMpsDwPyQ1zpmRx7sdtPV0KqRJLdWKKVlfDq1c+p92EBUkpEL/JCkbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QFJ7G5hiF1jb9Hkv4aIdRwDxB+9YhixwekPeMQHQcB0=;
 b=W3Ab/hNRNqQqU7NUmOy63hwUjoPZ7C8LykwfdcoyzFGvZOoOVLX3wAQwbE8J5PEhMKBB5Z7pzCM5TukTR5hTyXZVEsJ0kLmMiFgnWGAlSmAFvBhqNrbAd5D/WWDe8QAZa11KchjDqQz7kMqQtU9VFezX9HzxTTr8dc9Wd83M6ZIOGUWQcbrEkXqoPqDXn0JILoKJ3oRK0xNCO6AV4BjxhEgxjwEIhDyQcIL4te2trvY50b8+gsJgCUTo4efzbUM9Z03nVZAfYlytjzE1WJsxVSrcRrDQ85CKJVlvtmWvvK73nRshukpGeYNTKUCIcx4PqdD1neOVqduYmNlgzN8SYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:55:12 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:11 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 073/108] drm/i915/dp_link_training: Reset the max link limits
 in the fallback code
Date: Tue, 28 Apr 2026 15:51:54 +0300
Message-ID: <20260428125233.1664668-74-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ1PR11MB6155:EE_
X-MS-Office365-Filtering-Correlation-Id: 7316656a-7323-4f68-c1dc-08dea5254f7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: ZZuct1Qf+pDmFN4/awNWZu+u0ndHFho7rZxkxaI5jZX4NPU22K6Vk0caa90rIBxPQcUDDoL/r18Kpw+jFS9DrL4bnlNl/gICBdZvwg563isd5qXZsLrKXx9XDTgFvMexoSem2lTYr0WdX3t6v49k97+NFkIU1EG6vcmUCEamHOo/6xe4twcm2hVhzK6hCxxO4nqFTCpcnOgBHX4rt4okeWmkxsPz8gUsCsGsJKfb/lWF3cMJwA9Np4zgxprqgPLAuABox+MbxV89kGDLBZjYFINFpAl5Pl2A/v8pBRH/tET9S/aOieB7t4U1FzOoT+IMJKGZu9owG6tYZRtBLJDWx8a3hxVYD3nVkTumenJeqOBS6+lr9HdK+SS5M0nO/hR29tLiWSAQiNbAmPWGl3T0GRI4XOVErtLW9NvNLc2nTMMowL2JZIOh4Ec0DmwLTSKVLRMWg9X5sboknklq7oZ77H3LUOBVnxv1VvylPAE7DEYdHX6bvCkqNwp/hclps6pWUC6eBTuAIJDLwpQFUc+zEYnMSAPLQmV+SeIkfkM0GK9UJgP3Kk/+TTuqToJXgqhMqfQP3XI0YLkS91ntfacmAaHXm5oHe3mP0B/qv7gXTMClohVjZ5nrVCqIfLXZlnQ5AZ6C6DjIRAAUgJVX/i0Qb5jcXwDkd4JVOSLq+qX3RvBISZ/UXLj2HwnUnU8ymHXggJ4C7pWwYlQoxZ4RJOPDc9SYN/Narx5ubrtXBbQjs1A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EtZki0g0VJnx+hlN6eewZtamPVtsIU92VL7cWpjfQ2derSnwm60yR+Q9CnaL?=
 =?us-ascii?Q?KuA1xlAzd3MG3fp812/sRfybyqaPqwpqQCMqrbMmjkQnaqKO7PfJ7aJ0Uk95?=
 =?us-ascii?Q?kJQ8Cx8jybxRr1JNIfD2sMu3FgPahIUYXA8gLjjSXq3t5BPWldP48Jr0z8gR?=
 =?us-ascii?Q?qrFhAfcclMzOMxVQ/n9qOUfsv/Y3hhfs2foq1iHI0eOAVcVGq+vpYM7+1R7O?=
 =?us-ascii?Q?7fOdZXLlb0gtYtMr03mYDLohaFeQl20u0Pwu723EYJ52MeIpEyZ1SDA3JILx?=
 =?us-ascii?Q?nGEll9eOJxpHNhhGRPy+jnZZGhpfBm+NvbgL3p8qsRcFiHX+r166sdF+oYUy?=
 =?us-ascii?Q?c9S5zaGv9RuIsAfrRWRkagKvKA2xYYUATwGS5ICEA7qbrXvozZGcPqoMcBUm?=
 =?us-ascii?Q?clWghQORqpP8RHdhzlKAufkpIBQ0QrDPgcbf2bi6HdcdfuPgv4xqI7NSI/w0?=
 =?us-ascii?Q?aGZeT23BShollCcKSz7oeaTM9KsEQvkUk2tScXoMSVDhg5BHRhFvC5Jk1uoX?=
 =?us-ascii?Q?t57A62IkrSyHP3Dldmynd8/5Kzfhih5tvradLPpXAx0pDqtI6Md92vbO21R4?=
 =?us-ascii?Q?ULbH+cwU+LUS3t6QwSl3bZQCH/22EdlF3rJ3ofSZ5joRnUEKLvvPU8Brmr5p?=
 =?us-ascii?Q?MwvldpPk81+u4KLqtx6Okd0uD+1Is/jO38LR6Z1hmTJBSkZRSfyMD+SQWM1M?=
 =?us-ascii?Q?RcbRU2ihO6MuKasnYhYsJSgEheClhnL4QsCJPO5NpMQEyIn0jD8dZJA6b66w?=
 =?us-ascii?Q?AfQiv5J4qPSIs7VYCFYX963swqLm8OBK7QVcF0dkg41vYobR3me1rwkY21E1?=
 =?us-ascii?Q?uEPa7b3Ne6Hfh93xqg4TYcQ4aDS+g0odMO+1xOZQRdl+EXRp4wUPqGPtXNqT?=
 =?us-ascii?Q?UlAmi9rWNYk2cdnF2IVn0AZpQCCcNlIJPS3moQX/daTv7sfz0KLR599pWv20?=
 =?us-ascii?Q?978Ya6X850jdeZgosPZoWOzjiDe4MQUxSMrNXNKuxfK2x0eBBNrQ2WSAKSxL?=
 =?us-ascii?Q?SsBZwPRuBJ/DrYPAYELmv95NN6bwhuDkYyZbbR/gbgMyMBLtIKS0EW7xqWmS?=
 =?us-ascii?Q?c/71Z01NScsVOkoEO4X9o/2wD51xD9JKIR2//nwUjzdqlJ33F9JADxNifX7K?=
 =?us-ascii?Q?zhXBXJYos/WO7+weEutcxaR1SmEtCJEfyAOLNmkmZjN0Lfa3qUyRNma4C37u?=
 =?us-ascii?Q?JKnpDLqAs6CzbVh3ew9EU8nUI/wWsRYLN63O+dtRW4TOU9jmgXzE2eEcKuzz?=
 =?us-ascii?Q?p2+9wtKv0mKbrGiljPe/T41A6s9KXsdt5A+PgTvhoA92K/Db38gBuWfAG+TN?=
 =?us-ascii?Q?1KJuR+64iRNAk7qaRyqpIpNn9EEkOHSdCXwfpGopVxf+7oPpXQ8qiP6y7r2w?=
 =?us-ascii?Q?lzUqacoh9bhRFGMqrdi+wjClZuzCr3dXlz+sF0RdJCAsE3jqiJgMGyEB7Gqh?=
 =?us-ascii?Q?Wv41h4nq09HbvIG8mqN4A/OiIbZR7BzItAJepOMDqvskk32ztibvaUC6d0MZ?=
 =?us-ascii?Q?p5dFxXEe1sdW0DvNyseqZXYZqWsQiHhwvNAUW9fum6wJ8vjrzvZBdpzdjHYr?=
 =?us-ascii?Q?C9zE+bnVtkqiL8E3p48Rg+0L8iKIA8rB1e3VCe6mRc6NljUg5rGhWvI/Sncj?=
 =?us-ascii?Q?a1APbXziWKwR+ud5sptaTuFdiYxO7qWeonp4yRjmAlMVh71vxTXuGsfCFY/6?=
 =?us-ascii?Q?FjoUfFQxM1KTkCPV+7iMVMEAoF9D0gcSSHkhBX3fN+SakZgy3eAtHQfVWTX4?=
 =?us-ascii?Q?M3Ga7y5eVw=3D=3D?=
X-Exchange-RoutingPolicyChecked: HOHgb8xb1yk0JpGlX7smBxaDXxDnqXOpq8sV85dnXAZZwekDhgV3Wn6l3HTOhsT/pNlaaPz4j6ioODcF0ttCMTyeC7LJdXxWTpkPuAkBu2chFGdg5Kx7vPnup5/tSwh+gK3ljzX+T1YYD/NAlnlNduAoGcmGISbIE00BpG9vdQ5WFrUPBIwENV/P1n9/PjmiNyE9yZSknZstJH53W03mC7DogEd10W/UNKqiyBzUnkNxDvQ6+DF4pko5qmDeG3Z5Grp0wXbwbOFT8X1/JXkAoi+KIt4ZQZgM14DXuqcx1gLlnY5oyv5ZMBJby6VmhERUbya1FaJqqkSmqH/nAJRj1w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7316656a-7323-4f68-c1dc-08dea5254f7a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:40.0978 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IKmwROnf7TkiCe2vfEVmxxaQtxuRs15occSgbdMoic02nhbXIWWjN3jTlmEQHLLDCxRn5mfuOEVRVySIg6J51A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
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
X-Rspamd-Queue-Id: 29FF5485521
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

The target maximum rate/lane count selected by the fallback logic may
exceed the current link_caps max_limits' rate/lane count, the latter of
which are used as a limit by the lookup functions when filtering allowed
configurations. To ensure the fallback search finds all relevant
candidates, temporarily reset the link_caps max_limits to the maximum
common supported capabilities.

After the fallback search completes, set the link_caps max_limits to the
configuration selected by the fallback logic, as before, determining
the allowed configurations for a subsequent modeset.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 41 ++++++++++++++++---
 1 file changed, 36 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index b7645bcbe0c2b..69396dbb94b2e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1874,10 +1874,12 @@ static bool reduce_link_params(struct intel_dp *intel_dp, const struct intel_crt
 static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 						   const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_dp_link_config max_link_limits;
 	int new_link_rate;
 	int new_lane_count;
+	int err = -1;
 
 	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
 		lt_dbg(intel_dp, DP_PHY_DPRX,
@@ -1886,14 +1888,34 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		return 0;
 	}
 
+	/*
+	 * Temporarily reset the max link limit before selecting the fallback
+	 * config.
+	 *
+	 * After fallback, the current logic narrows the allowed configurations
+	 * to the selected config's rate and lane count. That can make a later
+	 * fallback candidate fall outside the current max_limit, so reset it
+	 * before searching.
+	 *
+	 * TODO: Make max_limit just reflect the maximum of the allowed configs
+	 * at all times. Then fallback will stop narrowing the allowed set this
+	 * way, the limit will never need to increase, and this reset can be
+	 * removed.
+	 */
+	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
+	intel_dp_link_caps_reset_max_limits(link_caps);
+
 	if (!reduce_link_params(intel_dp, crtc_state, &new_link_rate, &new_lane_count))
-		return -1;
+		goto out_restore_max_limits;
 
 	if (intel_dp_is_edp(intel_dp) &&
 	    !intel_dp_can_link_train_fallback_for_edp(intel_dp, new_link_rate, new_lane_count)) {
 		lt_dbg(intel_dp, DP_PHY_DPRX,
 		       "Retrying Link training for eDP with same parameters\n");
-		return 0;
+
+		err = 0;
+
+		goto out_restore_max_limits;
 	}
 
 	lt_dbg(intel_dp, DP_PHY_DPRX,
@@ -1904,10 +1926,19 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	max_link_limits.rate = new_link_rate;
 	max_link_limits.lane_count = new_lane_count;
 
-	/* TODO: handle an update failure */
-	intel_dp_link_caps_set_max_limits(link_caps, &max_link_limits);
+	err = 0;
 
-	return 0;
+out_restore_max_limits:
+	/*
+	 * Shouldn't fail: setting max_limits can only fail if they drop below
+	 * the optionally forced rate/lane-count parameters, but the reduced
+	 * config was chosen to satisfy those constraints.
+	 */
+	if (drm_WARN_ON(display->drm,
+			!intel_dp_link_caps_set_max_limits(link_caps, &max_link_limits)))
+		err = -1;
+
+	return err;
 }
 
 static bool intel_dp_schedule_fallback_link_training(struct intel_atomic_state *state,
-- 
2.49.1

