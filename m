Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BplmE37FKmqSwgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 16:26:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B947F672B4C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 16:26:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=MOTo00lX;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4532110EF51;
	Thu, 11 Jun 2026 14:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A67210EF51;
 Thu, 11 Jun 2026 14:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781187963; x=1812723963;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=y4/v6lH4X7EORR8vA3cSl1tkRA7hIeIIVy3Hbtjtz1M=;
 b=MOTo00lXrdHYkt9C3cQAmIJ11MoHJ1PhTonJy656ApUXDv7xk5QeVDET
 +Ta9Fd/It/XQYAROvoQniDL76WQSrjfrjwGZXrFNZAsWbTJTL6ktEuHc/
 w0kqTeS5QcH6NbOlM8vlPLAjdkzI+cN3c1pSwEoStu7PQaZ7c2SaDKVkM
 hnhGXkb2iYwMIhpRi4fU29xr7hTGCIem7UoAEVS1KPZwaDTYW/qJ3OIV2
 rqWORHDmzG501WCIixBm/vQN7QO7aCOAoNVqRi+WoDVanNyPWT1DcG8wp
 YsdTSBPuWMYEIb0r3gcYoeSuangAMcKIBZS0VAsD7kFOlqRPRmvpn83Vo g==;
X-CSE-ConnectionGUID: XnVhZE3IQCqIdehfHRF9UA==
X-CSE-MsgGUID: 3/SCBjJ9QhCNaCBjoyu03Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81983772"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="81983772"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 07:26:03 -0700
X-CSE-ConnectionGUID: T0ynSg/4QZG+8fot4hUItA==
X-CSE-MsgGUID: mxLEf1C2SFiMftPJy/Mrxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="243551910"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 07:26:02 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 07:26:01 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 07:26:01 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.51) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 07:26:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hFeX3jyo4W5sLN8RC/i6tP9bEGa19J5/W8y4yjedqhDfc+LmR53XLmVA5nWQlfpLrrd+0LiAILWSuSkxDsQ4cz1dfdQRLcXKyzVwkUJhV6uZtFvVYOHqe1Y0dNbXkojeZcQyhFGu6jQCfkxjRMBllbjxpoe0LVhPI3oMAaURKB1bgMCPsawDE+EcJIXJJ/l9oc13tisj2duS2zWyaOrGP0s27IlFDzmuule3Y3OQgQND6c6PDEj5/m2ME8M7t6XsC8BJSFSMvZN2ieDc3esdHNYcRDG0aYCgw2/EbVhNy1rM8Z+pd1eDAarOEpfpu4SWP9GuDmgq5QLEFc6up5RCnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=330DOHAMKFkXCKjMRQsfkhgjX/ak4e9f5R5wgl7HLh8=;
 b=TYexnOxLo4U3vQzhSfXWwPlhGeqhLNDVZ/IfjtXoiwDk9AZilV/RU3X3plxkQcdjN13jLjOmwcB4oUBB05mGRjSIKh8dYwvpOSC2lGJQnwP0QHOkOaR8l/UI7FrFixRP60jRrKMd4rP/K0INQJe0teztkhd8kJqZQNFP06rab0H2q+2r3hdaZveRQl5RrZTFDmSTYkxpFAue/7vxgt8/j2m260HvyZDPJzCCBl0x2e5GWDpqIwUpwYo/f9Ag9YSNQaHe1akw3LtmJa+q6MXzgR9F+CVeO1l6AXEdwBFN+8Amp9XNLjAy+r3SWd3/1nRumgqwM8S8dIk+YJaZ1IC1VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CYYPR11MB8386.namprd11.prod.outlook.com (2603:10b6:930:bf::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Thu, 11 Jun
 2026 14:25:56 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0092.017; Thu, 11 Jun 2026
 14:25:56 +0000
Date: Thu, 11 Jun 2026 17:25:49 +0300
From: Imre Deak <imre.deak@intel.com>
To: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
CC: <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>, Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/dp: Skip RBR for sinks with the
 NO_LINK_RATE_RBR quirk
Message-ID: <airFbeAOC7_czAe5@ideak-desk.lan>
References: <20260610174807.6231-1-alexander.kaplan@sms-medipool.de>
 <20260610174807.6231-3-alexander.kaplan@sms-medipool.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260610174807.6231-3-alexander.kaplan@sms-medipool.de>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0035.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:26f::12) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CYYPR11MB8386:EE_
X-MS-Office365-Filtering-Correlation-Id: 5bdf0c4d-943a-49ae-ef78-08dec7c5597f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|4143699003|56012099006|6133799003|11063799006|5023799004|3023799007|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: nqc8Vo3FUXYEV3l7CLrEcIelyMP0u4mfDhtdB8EQ85qJjwtaZaI3ukWIx782Qw4iVtr3aGKb5DGkuoesnIEaRA0HG8ztipdUW/RHixo2IWTkz95SIVWKn6vQb1oafNo5KeTNemohLh08cJT+Z6d0/T89nxF55EH+hLXeSoxXh2XRBei+dWh+JMmIkWiK2suzRgAUfjNckvz1zapt9EFT1ITXWGetkAJI8N0YE/gqxbSr/9Tl8ljjR4NqMvmey03jjBNTkFGdt6H6Q7fJSGt2yzCZdS6SsjPZsadvNA7eh0676c/M0mqfhAj0B1rIcpgoFFgf+zGjReiztHSOvuLdY4J0Dwx2UJxqlmlKqLPYgxdsZ6S+waD5ENiyoTtlI537AHw+1Zc/2UuUTCHL1DoF2HeGbe8huMA68W9TwDvmZY430lgCXzI1ihaKatIhu0tbnibBtVLoDeT8uYqiDeTFDhlQ/gnqKZn/oHPOfPCIcFMq6a9lZ3yiihBRDieT5S+LtsNxfUKQYhpeg2OEFJotTWq+0UbKJ7HxvfLiGc6b1uG0HY38+rAKTq/r1VC6mWYey3+O1nWJ10JOREgnxvJwGKIA2LGS31gMdcCP6295fm9QPeU/nO/VshkG/PS4eyAnvKOP5MdGgqP4N2BomgtznoAef0OfPQr0z+MkcVzc+KZgYlQGpFXKJwd61O4m8v4tXNoCEWOE/gf1ey3dGK555g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(4143699003)(56012099006)(6133799003)(11063799006)(5023799004)(3023799007)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?L4AwOcKawkc12UiUphldCddPuaG5l8nSDjTs8mVaPhikGgZfTBqa9wPUH4eo?=
 =?us-ascii?Q?E683om55RYMXQiKP/kLkn5yYOmG5SXYgenfRNyuNqCBEtWfxiSrzUuebGkkw?=
 =?us-ascii?Q?f+SwKGivxqHXqCulY98eBLKt2Ii7Z3qAY734cxC5H3Im5yHTDXU3g7EfAlfT?=
 =?us-ascii?Q?3lNpmgJK+Lzoa1OItUBTutcS+bP13VNotlyvH8iOISHm++ViA3bqfkKNkj63?=
 =?us-ascii?Q?s2pzUX89OMqn23X3v/nRPr8ycxkdCCirMQ7yUBcoOzosw6AF1NmaD3tQclE/?=
 =?us-ascii?Q?2bxxfRj5ynMjUJ5hBDvJH0K8gy+VNdXH57+AcQTn+g2TvW1NhxEAG4LCetY9?=
 =?us-ascii?Q?JXAW/6K1keTNxG06ms3+Kf38LVQluwO0kPz6d83peD6iErWCa/YPw1imWwRl?=
 =?us-ascii?Q?nW2/1Pv+mRBJeXplxtf5jg1HaKHQ1p89kP/p+mFoYnMbiukssXwKwUa2w1S+?=
 =?us-ascii?Q?ZoIdcBe06XA1dMYeYve86R9gnTY+mRj6kQdydCSAZK443pJQ7ffId5XjcojB?=
 =?us-ascii?Q?ifcV8FP5OXS0g3IfPliMh1euShd3o7kDdoYi4OK+p/SsgkN14vBJi2BOMBVB?=
 =?us-ascii?Q?b3O3Wq/RvGCpRUfoylvhTr/uY/4V2gxIccQ7qnk7oXuCgfqcEkBUMD2a/Ic7?=
 =?us-ascii?Q?0HlEa+I35MDwm1xANXb+1/c8Yl7VlcsGX0hOCUGAI7iWNLaHqwRTx3eYdXrK?=
 =?us-ascii?Q?UZD2JAYXwjQCbakutg8shntZc80SenlYPDMeE/hMgc8GWMMIfcJBfFmGLpcE?=
 =?us-ascii?Q?1hQSjagtT4lPiEmnqv0jvUFrggGyIp7HI1rLuM+C+5uFOFTOrQCQKluOZjDn?=
 =?us-ascii?Q?juPe/KCDxReJhtfYaSVTZOqwMItb/cqdliAIAC9cKKc40RUdok+LgfFwqFPH?=
 =?us-ascii?Q?9W1vgnKORCzdp2aqwLgpn24ZlgmdMUPaaJneo20bIcS1b4pRaHDFO6+rumLv?=
 =?us-ascii?Q?clVgynPqfM3PicIbHXUOMp3+xUUlZPbuInvlUTcfU/6yqGH9mQ1ToP2+zy8N?=
 =?us-ascii?Q?xljhOXC1yOQHIUc1wSviGMsANEy4Nlfew84tar1PwCtLuwu3acCwwYct3F0A?=
 =?us-ascii?Q?hAEnaxFNKCP4rNWRwS0VHKr1jIzgnr0yNlUw8wGVoFM8dWg8npS1HDMHL0uc?=
 =?us-ascii?Q?fYkMg1Hb0Swih/rys1VCmX4+G0OyOy5TP87nBiSwL3Wd4wzp+oCFlk6+1+ja?=
 =?us-ascii?Q?KZI7/1MlKNbz2WMcwxOtpDIL1QDU/hy4VdAqk32zsedKbpF8gnu/AXeGKVDk?=
 =?us-ascii?Q?/UhY7xRYNtNZFbBeaiss6vQ+Hjz04xq3JeCNM+Bpvpt1v8Q7cM+JrwRMuXac?=
 =?us-ascii?Q?qmmwDI07yMADpMyeT9V1ZUx+k/ExkmwHWYXpqBeCt81vOS8/RPqItZwiKYhQ?=
 =?us-ascii?Q?m2eSYVTA0912Zh2GfqXq3ECcEZSemwWsSnTpwsANtG9eMP9FZvOZj7SSzwll?=
 =?us-ascii?Q?L9pRq7KcLXeFYvm1O+kfHivy61OlfMvtFleWvw0B/8V0Xb9+/uS8lm0GrW4J?=
 =?us-ascii?Q?uuXADeMOoI7WoVUFZF/PTiZStJ2K8Cyoz5N5EngYjSUsktXfOD0EFRWDryfl?=
 =?us-ascii?Q?eyGMn7VCcau4AWvVTUt/APD6NeaFrDqWQu/bf/pwH0DTljYLAYwzWS7Y4eEQ?=
 =?us-ascii?Q?14FzwpmpzP0Hbc+pN8jo/dgvjVXzOrDe92bLfiVUZ/wViwM05SDZQGEu7tga?=
 =?us-ascii?Q?1OElydhRboMOW3ZsItFTKuIOuUsWKIlBS7qQrPFPPD7g7szj8u96meOu/jiT?=
 =?us-ascii?Q?+alrCw7t5A=3D=3D?=
X-Exchange-RoutingPolicyChecked: rtgis5foqg1Vb6XNVCzbrSCTdUdwAlr20+pxvTi5T79xwuNDbM09uKuFwwfNyW8zy086xmHKZiAgkjjJVzMzZeYtPklfjaxf5CV+xrx4dxm8GbWc9MvHu1mAbNFnL1IGxZk+Lnkdx6tYLMdD9wpYulF2GSin9h3yqgn8CGfNo4NqalLXQlZJ/qa1f0L5YxoHiCZRsyHMabmm0GwMsbLoTp22jsmoVKcZ/2c7HQmxHkjX7lpcnM8WjMst2145YtEAAFHr4JK1mDk1Wm1PzOxrgZ5/IabrB0dD3D/VdXVwewSHSMNOmaMtlJPxE7Ce0zQNc3t3vXh+bWuNqAYMJgN1yQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bdf0c4d-943a-49ae-ef78-08dec7c5597f
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 14:25:55.9281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yCfmv3pajP1kodQ4+W5Fa9jnMQvuHGu+7EEyrPSwQWdRnfhx/egnZx2Y0uLRvN2I/WWoIkilGcnfXNJmDrCAvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8386
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,sms-medipool.de:email];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B947F672B4C

On Wed, Jun 10, 2026 at 07:48:07PM +0200, Alexander Kaplan wrote:
> Synaptics VMM7100 PCONs with branch firmware 7.1 deterministically
> fail 8b/10b channel equalization at the 4-lane RBR link configuration
> (see the preceding commit adding DP_DPCD_QUIRK_NO_LINK_RATE_RBR).
> 
> The link config computation optimizes for the minimum link rate, so
> it picks exactly this failing configuration for low resolution modes.
> E.g. a 1080p60 boot greeter computes to 4x162000.
> The resulting link training failure makes the fallback logic reduce
> the link parameters, and since the rate is already at its minimum,
> the lane count is halved to 2.
> The reduced intel_dp->link.max_lane_count then sticks: these PCONs
> hold HPD high and never raise the long HPD that would re-sync the
> link parameters via intel_dp_reset_link_params().
> On the affected system the boot greeter thus permanently capped the
> link at 2 lanes, limiting the subsequent 3840x2160@60 desktop mode to
> 6 bpc dithered output instead of the deep color modes the setup is
> capable of with 4 lanes.
> 
> Skip RBR when computing the sink rates of a device with the
> NO_LINK_RATE_RBR quirk, unless RBR is the only available rate.
> Any mode that fits into the RBR link bandwidth also fits into HBR at
> the same lane count, so no mode support is lost.
> With the quirk applied the greeter trains 2x270000 and the 4k60
> desktop mode 4x810000, verified on PTL (xe) with an affected PCON.

Thanks for the tests and root causing of the issue.

I think the right solution to avoid using a problematic link
configuartion is to rely on the existing mechanism which is the link
training fallback logic. A quirk in this patch would add another way,
which is less generic and would potentially disable the link config on a
non-affected device as well (I did read your test results above, but I
still think it's possible that another device would use the same
OUI/device ID without this issue).

The existing link training fallback logic in the driver does have the
problem that you describe above: after a link training failure with a
given link config, a set of link configurations will be disabled for
subsequent modesets, where these disabled link configs haven't been
tried yet and so could still work fine. That issue should be fixed in
the link training fallback logic, by disabling only the link
configuration which has failed. That in turn needs more changes, which
could be done after [1] is merged, the rationale for that and more
details described in the cover letter of the same patchset.

One way to force a (minimum) link rate (until the above issue is
addressed in the fallback code) is to use the i915_dp_force_link_rate
debugfs entry.

[1] https://lore.kernel.org/all/20260428125233.1664668-1-imre.deak@intel.com	

> Signed-off-by: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 23 +++++++++++++++++------
>  1 file changed, 17 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 85d3aa3b9894..dec68f07161e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -197,7 +197,8 @@ static void intel_dp_set_dpcd_sink_rates(struct intel_dp *intel_dp)
>  	static const int dp_rates[] = {
>  		162000, 270000, 540000, 810000
>  	};
> -	int i, max_rate;
> +	int i, num_rates = 0;
> +	int max_rate;
>  	int max_lttpr_rate;
>  
>  	if (drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CAN_DO_MAX_LINK_RATE_3_24_GBPS)) {
> @@ -221,7 +222,17 @@ static void intel_dp_set_dpcd_sink_rates(struct intel_dp *intel_dp)
>  	for (i = 0; i < ARRAY_SIZE(dp_rates); i++) {
>  		if (dp_rates[i] > max_rate)
>  			break;
> -		intel_dp->sink_rates[i] = dp_rates[i];
> +
> +		/*
> +		 * The quirked devices fail channel equalization at RBR, but
> +		 * train reliably at all higher rates. Skip RBR, unless it's
> +		 * the only available rate.
> +		 */
> +		if (dp_rates[i] == 162000 && max_rate >= 270000 &&
> +		    drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_NO_LINK_RATE_RBR))
> +			continue;
> +
> +		intel_dp->sink_rates[num_rates++] = dp_rates[i];
>  	}
>  
>  	/*
> @@ -252,14 +263,14 @@ static void intel_dp_set_dpcd_sink_rates(struct intel_dp *intel_dp)
>  		}
>  
>  		if (uhbr_rates & DP_UHBR10)
> -			intel_dp->sink_rates[i++] = 1000000;
> +			intel_dp->sink_rates[num_rates++] = 1000000;
>  		if (uhbr_rates & DP_UHBR13_5)
> -			intel_dp->sink_rates[i++] = 1350000;
> +			intel_dp->sink_rates[num_rates++] = 1350000;
>  		if (uhbr_rates & DP_UHBR20)
> -			intel_dp->sink_rates[i++] = 2000000;
> +			intel_dp->sink_rates[num_rates++] = 2000000;
>  	}
>  
> -	intel_dp->num_sink_rates = i;
> +	intel_dp->num_sink_rates = num_rates;
>  }
>  
>  static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
> -- 
> 2.54.0
> 
> 
