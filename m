Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vPbrDCjEImqndQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 14:42:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96970648423
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 14:42:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b="C/3Z19vV";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EBDC112AFC;
	Fri,  5 Jun 2026 12:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AFB7112AFA;
 Fri,  5 Jun 2026 12:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780663332; x=1812199332;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=0C/ZOMfH8K8OWVyRs59cr8f6VEYTnGFDjyqeC9rPOww=;
 b=C/3Z19vViioNnefy5wE3BMg/F+D/upE5RZ5UKBqM/4t+XGW/wKnem3ZF
 83niyL3BYtsPhfT9v0NBSoNRhW3pLbB8H4eu7JTIvzrJBHR8/GoGrR8U/
 V6ajyUtKUd6k+SwtcZ9h6f0AmmoTJjUJANnKI83DXnTZiC8mYKGdmfWDS
 LSwMi4Iyfxlyr9UXb54N1vQnLObzDXD4Rb0fA2ZOlO55Bf06/6PtnYuJs
 +TjdRFp6n6ptAV35dwdmBgccZpoI/r/DcKd7El0FaIj4R363MCj1/ESGG
 FOMpRzSp//W1MANfui4ft0kUrZ4etb92l+hRmX2j3RPlp4yr3CYYpQk0r Q==;
X-CSE-ConnectionGUID: DEljDHvhTtmPbnPW9c/wEA==
X-CSE-MsgGUID: rTpbW/FpSdank+TI9Zze9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="84075828"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="84075828"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 05:42:12 -0700
X-CSE-ConnectionGUID: QeSNRFZYSpOMLTab1jaRSA==
X-CSE-MsgGUID: cx8ILOi8Ta6c4HtEw6hgHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="244698502"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 05:42:12 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 05:42:11 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 05:42:11 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 05:42:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eWkikOJ9vWVx+fo8kiSS2TQ95Or2YiEh6XW089SsC/dqp5wXr0inxBBp6MQeWgxq7czT6kcf27DMdxSp+keq1iNj7HMP4k12m4MuV4duEEJ9MHFmTaSqR+4RATpo6RxC0/IzIbotd1zrY9j+z9uVec5nmj0GhP9BLj88o/7Drg9xcWFboSALBeZK7FY+qCSZnC4cF85cgTCQdKz/UrBfD0Ul83VMt6mM++wc5AfU/QWCnL2hM1pmJmCtDgx8KsZwLZx3qyofVnlMYxP04pSUbiag4GoGV/tDuN94FTjcZQHessf6YyZkbgbmIggXZgE+rKgWK0ppOjGzJw+Vu6cS0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w/g4XWVIOChBzP9A3OJLkeF48Lm9GxjWGkNm509PzMU=;
 b=oviuo2U7eb5aXxxg/lT7g9gwHkqtpX7xf8copd407ERixljD6mQBVMzXSMYhIQkynxu7Bu8erfG4ZeBF6iHyAkwWsHXZ0NPcyrME4Yct2dsq9oV9yafIgB32L6ZW2TtIqrdH6OFHealXOjTJHz/mahN0sVWJbEHD941r8gs58Y/cBWNkhJAvwZ45gFdltxggtbyqGDfBsKb8R+1yza3y5VVPe2j6iluhwiHS39xesu5Y+t7LPJe4/X5f7WaPwJ9B7tDOlIQKCrWJh4gA0pi/C23pGxhPICtLxFDw0DRCv2JOsBD5vz3vCB53PXPrqeRbaui/Qdal6uzIWbeZKXn30A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by LV2PR11MB5999.namprd11.prod.outlook.com (2603:10b6:408:17d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.9; Fri, 5 Jun 2026
 12:42:02 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0092.006; Fri, 5 Jun 2026
 12:42:02 +0000
Date: Fri, 5 Jun 2026 15:41:56 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: Re: [PATCH v2 01/22] drm/i915/dp_link_training: Introduce link
 training state struct
Message-ID: <aiLEFPWzH4pJkDv9@ideak-desk.lan>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-2-imre.deak@intel.com>
 <DS4PPF69154114F0B34A29CAD6AD32B8A5DEF112@DS4PPF69154114F.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <DS4PPF69154114F0B34A29CAD6AD32B8A5DEF112@DS4PPF69154114F.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0080.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:274::10) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|LV2PR11MB5999:EE_
X-MS-Office365-Filtering-Correlation-Id: 61f3b523-79ef-4aa8-0904-08dec2ffd7b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|4143699003|5023799004|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: OWI+YFXUV4CQVPQX3XxppNzmiwEuQ9bPSEy91GNLmIMKhZ/yWggnts6T73Q85saoQmGPw5fCf69NYBpn+3bxayQscyZBHO/ZALEjhIR9UblexewRufD2Ovp2Cyw7zJCF9pBEROav9P8FnGYKQYdzYhn6l4Z+3a4uCoThvEki4iKGEUxnB8oT3mB2PMtl6uC/W8ckmZ8mnyAiRlS3F4bR7+hufRDPljzfv+dxTw5GruBjlizyMBLDupNUkivbMetzXvLZpKiM25A/2bEVESMxzVKnMJRls9fSTidg/JAObWPNP5KQMj8h3Nn6iFm6QOz3lAW+begIsUKXryy6X5bUt2WZ3Pu5GuCutNodxHHjg+GC5B8IfN2vQ6JV360thjr4fVcmTGo9yFP7kmvjaNsPWzg9PeqFdo7lw2mtV9DJOkmSk5Se/kWXBvlll8WfsxhuEKqnkNK0FSKN9Td5SHOTNpGEd03BI7U5AIHkr3HFqmK+mO/z4pVKjiU84yGp8HAvKrAkeUtkqZMCUD8gAUc5UvhwoN+0B/97dz46MHjlwja5dBkAQm0qRM6X0WaDUZelzeW0SzyiQjPqm3+9oSOjOkUG7+6eQHYiCp2Vf4Ee/elNPUcprOzHY++qsD/wbTeYWzpWbQdzy9KtmeA6Y40REZXN8W7GRMpxvGxosQzWOnom79NZMaJ5t/Y23uiPeYTM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(4143699003)(5023799004)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TyFj3o2pgvhikZJW4CSCI7zDpqtoDYUMpaBiZqk2fY4VUbCiGqbqBCWuUAHG?=
 =?us-ascii?Q?zU6wP/drbvMI1RGfh26xXvL2a3zpOhxjqKIBGgVFSe1BF5JRdHOpo/5OCaRh?=
 =?us-ascii?Q?3KZu8Tdh3xWZT/50oUGz9JvWwRarvCr0UBJ96boSKJMYPkCVCw5GrEAAyIM5?=
 =?us-ascii?Q?987rRCdrz5LIqfX7EviBPWTy0P4d3JddpcYrVC+PvryueFK2K5Vdsw7lgawM?=
 =?us-ascii?Q?TXc6Iy945aM0K78AIT1Y6i8NU2OH9/lbBBDOZ+9sh/a1ukXb7834EJxHaBH4?=
 =?us-ascii?Q?tOwZZGBJy9uNK8sACvFjROkUcZBT1H0Op95fTxVf/l8rcVRDUV0KrwTfW0rc?=
 =?us-ascii?Q?HBsDhHx2Odsw73DEe1w9R1hhbEZj941SuxLpuVczvt3S9+lwr3H3rxfLK83y?=
 =?us-ascii?Q?CPxCAkjlX2F96SEPytoktYJZCPpkW9U7DXXL65ipjAtC4qfKUpHjd2Oidied?=
 =?us-ascii?Q?OIzHWLA5DJxtSOJ9SMTQ/uwoBTNPDfjMhK46hD4kRcgDo2TYsd/tjIKPiSJN?=
 =?us-ascii?Q?uvYJ9MhcFACFcr7GNnxAkDWema7lMxuTIaZp9CbrVlHLBNFNBleQNBmmCHhd?=
 =?us-ascii?Q?tWrwzS7wtzLWRwRTRAMVZORiIfXQeUIq7wCgPGFR2FICaGEiurLmnGwm6ZOd?=
 =?us-ascii?Q?f5x37z++emWaB5Z8OBFqfwMmPPow5qbnZGmQ/wUbDJrHQB7m6De4Q45gl39t?=
 =?us-ascii?Q?n+sYC/u5CbN7vNKZdXuIrXvUJIgXn4QXOzZ75o5kn1EFw1BWH/DcWagD2qAo?=
 =?us-ascii?Q?pxE6Kc3pXnQYwGxPnLsf4iV4rDmcw4/Kd+YPhaFosW599C/IPpxyAjHgFeG7?=
 =?us-ascii?Q?GkrvoEPpYYLvpI7g5zmJhsVxUbhwqhOkB6oyUefu3yGgZ8vOGMzoOTOW+GUw?=
 =?us-ascii?Q?1chBEK2NxM4t+eU2rRS20zAwOyhlTUEpPcZ/AP497kZroxO73+knyaK3jEBM?=
 =?us-ascii?Q?q1gYy6n//TtVws32SriKl+oGCgztgSrcf7SkUZme/wh9Dd6CBWFgXwlnWrsI?=
 =?us-ascii?Q?Yd5wqfLrOF0Pe7jRkYRG/AMq4NPsBzdIS8ont2/N5/MW4k0ywNXYrLqTQeuL?=
 =?us-ascii?Q?phjMdcU05Jm28atIXcfzsGN1etBvrcriuD2Fs3wLkFhvLqj6Nhw+Tg/HXEGt?=
 =?us-ascii?Q?3dwZsvkU7aZrH3XmfV2GxIbM7NoEZyxKMoIadYLug7eTkzpYnvid5Qv6ldKL?=
 =?us-ascii?Q?RDOAY5c2AzOOOi/AW45glGiX4XiuTIb4REk87DnIbOF1k7RVw5himKDdKvVQ?=
 =?us-ascii?Q?6fi6B+cPIMbT8zNh0BvoVF8l8lB0YWw15EpAbAyA5TaCZ6/va2q4a9CCEMOa?=
 =?us-ascii?Q?5hVsk1NTPQ8DyAEfFPHN7LufiZSGEqntgtzKpyf2i8j1JqyJtukkOXeigcmu?=
 =?us-ascii?Q?xrLYBKzi+VEFeGCTpx3oOdjb3mppE8oa7tPruUMjwIfnOJefKD8lxsVJqtuV?=
 =?us-ascii?Q?uIuZd7ZPX5O1IXfW8rr1hCaH8YzUbqHr9ZrQ5w9MTI09W5xs8775a7e/Kmcb?=
 =?us-ascii?Q?ga5HkYIYvk/CWjDCV5i8YATSmBinys6V7N+aMF40VBj8r56Td92nDzE7jjAw?=
 =?us-ascii?Q?ZmVX6vi+TXiDxO6F1W41WhmHENFliCBhAckvY/v1L7uevEgoZhtOIkXnMr8f?=
 =?us-ascii?Q?Z3+XnNTQM16e67dRiOd8fIuyE0GTU1YuznBiCwbgdocpLm6eCrY1tQ0lyw7/?=
 =?us-ascii?Q?KHkHeIBRngCjLGFDhUkijPb046FJZXYB6uJ7lD8313GBsIWtfl7BJCWmk3Jq?=
 =?us-ascii?Q?tbaIVwg+QA=3D=3D?=
X-Exchange-RoutingPolicyChecked: kpTm6evPcC74TZvyuT62fVGxaUL3Yo+7x8zjU1r3kvUVx3gH/SiRDqVephX7gIbdvKaEA7z4I4s8BpM5zRT27CyoWkqlGu1dmQRtSmnAkiRgmu5zZuOmoecRaz9tJW1BKwKyfWKKjm0jY05iMBk/xpVf8Ua+TsiEDTVXTvPZO/DP7IvP6NdOp6YyHoX3FLWmA8EAjtgH1Glh4/i42uYfOH2mCKnt2zpxw54+m1HbfQ9LGFTdVXXm6D4KP3QceUK+oMjHM2Ix3gjpKACkoVjtQGUPVmuW2gpPgIYHqrSNrLOpsQ2ZQIlH+o8egKBEjUw7mNXOq34jsnjCRdQv4o2hEw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 61f3b523-79ef-4aa8-0904-08dec2ffd7b6
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2026 12:42:02.6576 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6juIQukNWN5bn6IJduicLlX+FWSd7zOD4qryB7ZgflYFHnrxyf2GzfktlG1r4XkjMtKyIIKjdBRKiWQOL40Pow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5999
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,link.training:url,intel.com:from_mime,intel.com:replyto];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 96970648423

On Fri, Jun 05, 2026 at 12:50:14PM +0300, Kahola, Mika wrote:
> [...]
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 0ce0c09835f6d..7a9157849159b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -7642,3 +7642,17 @@ u8 intel_dp_as_sdp_transmission_time(void)
> > 
> >  	return DP_PR_AS_SDP_SETUP_TIME_T1;
> >  }
> > +
> > +int intel_dp_link_init(struct intel_dp *intel_dp)
> > +{
> > +	intel_dp->link.training = intel_dp_link_training_init(intel_dp);
> > +	if (!intel_dp->link.training)
> > +		return -ENOMEM;
> > +
> > +	return 0;
> > +}
> > +
> > +void intel_dp_link_cleanup(struct intel_dp *intel_dp)
> > +{
> > +	intel_dp_link_training_cleanup(intel_dp->link.training);
> 
> Should we clear the pointer as well like setting
> Intel_dp->link.training = NULL?

The above is called either during driver loading in case of an init
failure or driver unloading. In both cases intel_dp/dig_port will be
just freed afterwards and so nothing within it can be accessed. So I
don't link.training needs to be set to NULL here.

> > +}
