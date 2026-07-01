Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Mh7WMtA3RWoT8woAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:52:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3595E6EF653
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:52:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=Dad0VujC;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DFE610F014;
	Wed,  1 Jul 2026 15:52:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 083A010EF8A;
 Wed,  1 Jul 2026 15:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782921166; x=1814457166;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=LMzUYIxJU05Aa7jezvhH8CqWIJUv0GuXI43bCXl3kaA=;
 b=Dad0VujCo9bZHMQkLpeppl4DgrgkFIZqQkUWlv14mEEcIHQXCgPKt0iK
 XzOAyjUs4KP3bqZMv1mxk0VhGBrzMMosnoKdPcukwcRL6RILa0EbiEB8V
 8UXSoy2Y8G242LZjMzeOwTqJHeN6dDPdS3k5DbFmCSOFLQf1crcSC1USV
 i0xS1qpx0qFCjhcKMw29ufHTj4DaL9E2grtg6y3x1mokD8dDanj4AC9Ox
 I3z3VIDozkZsaEeche5gGE+M8ibdYSbs8mYP4t+yJYzadrpeYxcRJtJil
 TazIn+7S+14fbNrNrW/HHzE89YCc6lblUopXPEm4DrA25jmJO0dXrPLCe w==;
X-CSE-ConnectionGUID: Zje4jTr5SJ2Kgk/d1NgbDA==
X-CSE-MsgGUID: PiNJ6W4FSnal4QTVrLNAzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="83691122"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="83691122"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:52:45 -0700
X-CSE-ConnectionGUID: 1f/HgwiGQn2IaS3hdRkMeQ==
X-CSE-MsgGUID: y4L5294RStqDtIAley8Lhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="252739002"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:52:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:52:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:52:44 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.48) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:52:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=puww4BlaZdzeWu5LZ5Oel8iODvgVtpfkH5Snh4r1vcAeUkdbqPVnfCwvphAqS5T2ZSB9IdFhdaXwHVe+hqAgQcmkEzTu5WjGhpMbsKqfJDrwqk3NfTW9mcM1ZVSZLU/vFw4Cbr0wJA1+egKIfiA9BLCdVsI1T8W3MhtcxM2RMHwglSfofIG2IIdS4m1Z9Au7+pypj7riYcITc/IX7hZX1hrNIMinEnmUid8M8B/Vx7o7x5SlbkpKNjHEfDZbqHD/Ikba0/9KzuqFzB/MUB9b9EW17uzEsVpGdF0aEJFzcQVk0vg+lNF5ZaH2F6Osz81g0g8GLBxBOS0PqcH76Xx+YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HIyAfcqH6IS3OScsHcZSFCeuRizIYJmMxETH5/s6VXU=;
 b=DfVC3JqOqC/66eXO/qVpM/lU7x2/URb1/iXdiCNB6k1KMKj/99+g+jYNk9gKM7C05gbrCbzfA8n4lGBj7jyiwy2SQuQhuhXHo6hn2ijXY5oiaxKjRzShalSelz9IM0PffDyqE01e3XNvySQVBCvPJDIwBj69/unz4IppVFp/MdjIZSxbrIaJFOxkSxEO92Ya1k5cRFrzu3BluTaR9pKyrYVNpCZr5fITf+dx9w7QuaVSJdCmR1BT9eLJmugbTrWZl164L+YTFX1MjZSJ71AI0UXrb1Hng7nRpdfhx3uz3ji7hYsN8JYzF+WxoruQlSE29O3UAv7v8E5JmXP/msTjzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by BL1PR11MB6051.namprd11.prod.outlook.com (2603:10b6:208:393::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:52:38 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:52:38 +0000
Date: Wed, 1 Jul 2026 18:52:08 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Martin Hodo <martin.hodo@intel.com>, <stable@vger.kernel.org>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/mst: limit DP MST ESI service loop
Message-ID: <akU3qOVL4eh2E9ma@ideak-desk.lan>
References: <20260625142204.1078287-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260625142204.1078287-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0039.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:26f::7) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|BL1PR11MB6051:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a423f0c-7943-46f8-1ed7-08ded788c69a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|56012099006|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: ojl6UBKqjFApK3AhflfwC6laKr1F4B+mh5a1OPy1wMS6/2gRuJa6W0tBRiGdmlOi8Z0jDKtRemBGgEToYrbK4LsFCl/x/s46BA/qOEVYHlP2NA0rtR6t/9AUUmrad2G9jFVpGoRjwM/vuT46vLM35vXcsVrMLntJ/1QHmvckH1J8oymH93TWbH1V/NGtAHb8CvoUR6xf00Acug2buHqyz8V2rJpHBbW+pZbjOVlpDdGg/J0G3UPZNS7fcelQTDL4/9akr3bPgHQGXUmpDJ0L/8QAgyFLtmCa3/7JDlZ/6wfdSJhfYlvd6rhKaVYHSo/biQHCA5UtrVc4aEmtoQHI183v8WH1DJCJ1jP1tjdefanCgxy6DV9YvpcBI4qw4FZN8Dj8bRDCyXDXjvAYq1MS3B5EhixYwC3qiQvlsIpZpZgjbWv8tNF0VJci35B2WI8sZ72R5tkMfYXDd/BzufyIQeLNKXvH/nisgxInlRjF+NUhilxoFG4/4GWAS05dVEyOaqiVhrgIZYX/+9iHBJWnUyJf+YMjjLefaW1y/09KjBWC86DaOQg2yUpBAINiYVRKesRfz+5sbgrAhnWAn9gYB4Hr+MB+DBv/2pIG/6oACIHr9Mk6TSElx5JcuWoCySbWw/st3yUyW9VdzVQPgEUSk0lTIZnj2SFfcPqhjem33jI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(56012099006)(11063799006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?OvuOnNnjirg323paya0LMvKkOBG3Ox+rZYQnN128GSNRZEH5/C2IKyty66?=
 =?iso-8859-1?Q?BtVXPM9Gu1qHR/JqzZf2P5mG2GvTUamYEufGBxJqq3faD9IrCcbZ5ZM9fy?=
 =?iso-8859-1?Q?cmlZ+FLhAUGhVlsc/b3lkRaZS17WCXW6Ds2fLWeojONYPdHR24SC5kdA67?=
 =?iso-8859-1?Q?6OVrgLOKV6lGvP17mAjkXnA3okCgBamDv5zVPs8QhegNK/GhI945FpiLlT?=
 =?iso-8859-1?Q?i2yerAzOJuEufABlNkh4L1bzNevz2cU+GUSBOgVKNbS9Yu1VKpTbBsb0Gx?=
 =?iso-8859-1?Q?iPN7quMksGWywH/+wcOUdLt8RRIHD9jY066UU8UGp9P2Rg6sYbempz/mjd?=
 =?iso-8859-1?Q?a1tEOkCrbgSim4U7wLJ28Q7E1uzkF00irJz5zuzeZtlZRf8AGHcXuzraAV?=
 =?iso-8859-1?Q?Yvt4TOGcoUa5fUvqm0wmCs7IB9ymcWQAdySxNoh2cmtEfHcWALSlOFRYtC?=
 =?iso-8859-1?Q?wSv8gBrgX1wJ2ZL0irUZEtz/LTENn32UIZEbj6Ycuw1ei6gyBJkZ7zwUtI?=
 =?iso-8859-1?Q?QWB2q629+4mF/Hg7Q2YePpmX+qZbTFPDrWcKbGUqtow1V91b11ABPhrlgc?=
 =?iso-8859-1?Q?/+muHYM7IFpuHgfOQDvUVoWKjSl07L2smSmSxiR3ZFSSWkmwi1a90GA+rR?=
 =?iso-8859-1?Q?ieLwtrNr8PcdwlJ8GArkDwqFSI2UAr3jyd1jcfumtbktQkqtKpAALo7T3n?=
 =?iso-8859-1?Q?roWcUrdcZ/csGERfPi3ESIZsNRVC00/MJYJoM8sMtuxIVtR4fujlnnGYbG?=
 =?iso-8859-1?Q?jIP62TXDIe/QMVsCebXjeY6YM0K1f2CmTGdCDhDdmmVsG3hOkl0blDyEr5?=
 =?iso-8859-1?Q?YwlAh9axScDXfRuvfWPSXv0k5M33hVFc3vo8Fo58+lxnLeEQhGm9JMaBWr?=
 =?iso-8859-1?Q?Q1DYDKq7/CdsVJoX5jrYJA3V5TTiFpWmYzF6qs+CVITty7191mUduMfwYY?=
 =?iso-8859-1?Q?u/T5ohTAS93GZs1+kIXqBafwNFlM2lhytpqJYuaUZ0odvTw/tZaiu3svK1?=
 =?iso-8859-1?Q?epl44iD72Q5O2JgloMpW5GvUli1Fpf478W5UL7IVnTV+0EBq4V8K5z2igp?=
 =?iso-8859-1?Q?Wk5hzrGQ2N6JdKSpTpWB8oAf3h5M2iIuZGrhvf9jgzH22nKDIMRi3ZV21h?=
 =?iso-8859-1?Q?Sr0ye3qIkc74WtKvLkEMhv3WwhVhCSfVhyWXZP5D3igEmnejvInxZM5S99?=
 =?iso-8859-1?Q?IKAr3bLXqOWSQqkrtX2G8cSLtoJvsimsBLjG4wK7NXdL9oL5M1x5GvpNlx?=
 =?iso-8859-1?Q?bQqvgpb8kZs1yLxqbC/u3EeDaH2pGzDpe5fB6yfy8ZOxNNniyKYPgqbASe?=
 =?iso-8859-1?Q?lloZIf64AwiFJkfECnUSd6pnh1aYoP+jl+SmC8T2M6ZDzN0v4Moq6mt4f8?=
 =?iso-8859-1?Q?AvbjBh/6K9nu/ffYMXPFhSn1olKOdb64EOJ186MMFG+TQyykUzeAT3rJ+B?=
 =?iso-8859-1?Q?MGeOW14LxHTtgw6w869dRqRsDNoC+naElnqxb1o3pjek7utH8Dg2vA/mH8?=
 =?iso-8859-1?Q?DWCvYCMx8pogmBRxURe7JYWz9MCxj17qgazh2vkgSJ77+Q3ENYUI34WXhQ?=
 =?iso-8859-1?Q?eVCDFIPQ1aWSLH9mcyRpxS6+0BxlT0TgxFbhEqsP/NMsL6Z/L6P9GiSwSK?=
 =?iso-8859-1?Q?zmKTfMxte+xQp8VndVCB1L2wIfSFsvLtzqPdwRke6O8/pV71pjQ2uaoxZl?=
 =?iso-8859-1?Q?ISmXyuTRr8y+Iht7B/Mpawl/8wqQlRduo3jWIEj7te15L9sC3qXXx2p4ZX?=
 =?iso-8859-1?Q?Xu2Y48cUm/MZx9kvbrtKRUb8cTNpzj9MI/s34F9Zx3fz+1rsJWO0KwXoTP?=
 =?iso-8859-1?Q?T9uVuGjTEw=3D=3D?=
X-Exchange-RoutingPolicyChecked: HtlC3CHPy8jpF0DgsXZ6j4a2jDkOaXO5ggkgSP2XmHWo38wX8TZ5qextvuhhu52l12u83VFsIwDeCcq5bTPg48iw40K5AUIuGKVsLaYBkUecCvA6FqGOXOnc3KObssn4x7JtbV0UK9GrYbL24Y684NZ76WSg974dETIbqopigO3X4igYv29xtueBSAGJ1+MUd+sCeYZDH5PQVaee0dcc593pmij/hiPZ1phrnVwuPFXSZs2OI92IYI39MNu+ozGrMHicph1TL0ueVcGO9nu+CHbOWGw5MWwx/Wzsxeb4VhM9D0wt8QILma75SWoggXNbQ9zbdMFpIZJ5Pb3DvPb2bQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a423f0c-7943-46f8-1ed7-08ded788c69a
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:52:38.2154 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Prtr8zue9QxqADjgQ7OeRl4EYuI6G02JSOn1vI5JMOoWFYIvrvDfOuZute4IV3nWwSY3uYHmJSWRw5AUr9AjjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6051
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3595E6EF653

On Thu, Jun 25, 2026 at 05:22:04PM +0300, Jani Nikula wrote:
> The loop in intel_dp_check_mst_status() keeps servicing interrupts
> originating from the sink without bound. Add an upper bound to the new
> interrupts occurring during interrupt processing to not get stuck on
> potentially stuck sink devices. Use arbitrary 32 tries to clear incoming
> interrupts in one go.
> 
> Discovered using AI-assisted static analysis confirmed by Intel Product
> Security.
> 
> Note: The condition likely pre-dates the commit in the Fixes: tag, but
> this is about as far back as a backport has any chance of
> succeeding. Before that, the retry had a goto.
> 
> Reported-by: Martin Hodo <martin.hodo@intel.com>
> Fixes: 3c0ec2c2d594 ("drm/i915: Flatten intel_dp_check_mst_status() a bit")
> Cc: <stable@vger.kernel.org> # v5.8+
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6e3fa6662cbe..ade7e51e7590 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5590,8 +5590,9 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	bool force_retrain = intel_dp_link_training_get_force_retrain(intel_dp->link.training);
>  	bool reprobe_needed = false;
> +	int tries = 33;
>  
> -	for (;;) {
> +	while (--tries) {
>  		u8 esi[4] = {};
>  		u8 ack[4] = {};
>  		bool new_irqs;
> @@ -5634,6 +5635,11 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
>  			break;
>  	}
>  
> +	if (!tries) {
> +		drm_dbg_kms(display->drm, "DPRX ESI not clearing, device may be stuck\n");
> +		reprobe_needed = true;
> +	}
> +
>  	return !reprobe_needed;
>  }
>  
> -- 
> 2.47.3
> 
