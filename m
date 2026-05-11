Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMHRAliNAWqNdwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 10:03:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF25509C05
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 10:03:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3A5810E2BE;
	Mon, 11 May 2026 08:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gd/RBGe8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F77A10E2BE;
 Mon, 11 May 2026 08:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778486613; x=1810022613;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=sW7hQQmv4xMsuSmZylNU7627CfSMojAKjdGDYDzA5pU=;
 b=Gd/RBGe8XWvi3OKL+Wf+RqMvNFqM1LPrg6BThRGWY2OfobF9VaGmQGzj
 oLwieaTxPHzKNg4j/nPqlcTqZwNWWlTCBEl1xCpkf8t00MOhtYrmEwI7b
 Pgza9NHtWHdGAfUcxwkya40T92aSpy+ijZIx38fgOfF/CAdz9tbpc2Upv
 6YiRq0UY/9JgeEy+3OfRA2Lx6qyTUQvQC8lntulPf30LsTUUJXb23VuoQ
 x4aqzAik//gP/d0o8nRQADtFNxKK/n/dIpfwa+nsxSDoxa4ywRWNvP5+Q
 ZoMZUC5tf4zCEGWYs0w2dm0cyn1fxnrRle0Vjp424frllF2332rZXLwvK A==;
X-CSE-ConnectionGUID: 3w8fBz6BT76zD4v1+SuR3A==
X-CSE-MsgGUID: 5p5BKoFXTsa5yM7yPTfp0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90067035"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90067035"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 01:03:33 -0700
X-CSE-ConnectionGUID: TvdCoOeASYGBnmuzA46PsA==
X-CSE-MsgGUID: KL07nVXBTGqRiEDJnQXsIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="234324418"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 01:03:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 01:03:32 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 01:03:32 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.38) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 01:03:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nX2i1eThLZGV8qxCw8sA+GiIXMKHT9W1wcgfTS3QLOc24T8DZW964Wuh92gpVR2Jbha4/A9QSA4CqxYRLKLOqQDSiyNkfxwU4Jv9qGoyTCd/nPsX1RRXmRuGO6vsMJvpbZR427Qch6YygXc+2A5ibgV3skaq3i4y3ed7/t8mhIytTTUDbC1SlPmkBhNbz+9EG68GGHzfOYzIx68YMsMTuDZq7a3D7U5n9EC+BicryVhLINH609qiY3tGKoAh3MwkKi2Ra5Sci/RNl9OhnIuFtGUVzF+HOZHAWoNbsQyRIIvKJatuJZgdiP8UpnITP+XbT8y/PXTZTVJ0JegUar36Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4IV+O/+0Bedz8q7n6osQNd13I4gVPcApQZzb07VpYa8=;
 b=YCpW/Jq+eJr8ROKIvWqcEOvhbvPy/QXq2+wFzapPNgw8eaC6+DimvM4LIkTS+y4EPfH8A4I71Vd+wTISbjVCcX8Vk2wvOH6c5neY/khsIN1SoFeF+u+dWvn6paN+qc+q54RlygYOhaIcXq49y78/OZj417M8ZIUc8ULRR3j83750Enu3yl9x96notgEZzqIkS1BB9jeRq+Jpa3ivNJN0QjaZE5hZdUXp9RAgLLmN10ejhdDMb0bZP7LDTsjf1JZ8nPyPgGVlahNXnc8tjMJFR+MNul9Ilu1MlBqc3fHWF7lJlQ8NfanG91/Tp6EaRcS98jEoBRdYCebwrlkysqdwpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3658.namprd11.prod.outlook.com (2603:10b6:5:142::24)
 by MW4PR11MB6935.namprd11.prod.outlook.com (2603:10b6:303:228::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.27; Mon, 11 May
 2026 08:03:28 +0000
Received: from DM6PR11MB3658.namprd11.prod.outlook.com
 ([fe80::2c3:cb39:90c:2542]) by DM6PR11MB3658.namprd11.prod.outlook.com
 ([fe80::2c3:cb39:90c:2542%3]) with mapi id 15.20.9870.023; Mon, 11 May 2026
 08:03:28 +0000
Date: Mon, 11 May 2026 11:03:21 +0300
From: Imre Deak <imre.deak@intel.com>
To: Aaron Esau <aaron1esau@gmail.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jani.nikula@linux.intel.com>,
 <rodrigo.vivi@intel.com>, <joonas.lahtinen@linux.intel.com>,
 <tursulin@ursulin.net>, <mika.kahola@intel.com>, <stable@vger.kernel.org>
Subject: Re: [PATCH 0/3] drm/i915/cx0: fix PLL enable failure handling on
 Meteor Lake
Message-ID: <agGNSW0r6w-IHW_q@ideak-desk.lan>
References: <20260509162407.510539-1-aaron1esau@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260509162407.510539-1-aaron1esau@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DBCE.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::6ac) To DM6PR11MB3658.namprd11.prod.outlook.com
 (2603:10b6:5:142::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3658:EE_|MW4PR11MB6935:EE_
X-MS-Office365-Filtering-Correlation-Id: 39b4e658-11a1-4240-4b31-08deaf33c8f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|3023799003|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: jMvaxTXsyqzLkTFfLMW7UUb9HkrghgxWJvUMY9i8SFJJFu5n57rkh3CkH3ainYiPTx4bCvNxPvEpC87Ylvcm6Kw8rdLf869ZbKN0UoFsIt1MDlexNI4kfvE4cWF6GNJWSOfbwXMmVopscW3PL+OTi1qKvcgxavKWU/FPjYYZ231L7ap7et7nHkaHBdbHDwyP1iEZc57AU2Q+b04kLP/neFuEuaGIYAaLw14Yfd17LblACYMHMu2/EDODztiEVVicjonfzX1WdV0OjkN9ckQS7L8zV7TPbCp7Qi/qNTN3A1znmWlNaSbAgjobT+F6uDsSNDqth3iw/s4Sv5uF7W/ohkHC+RVJ2W5iqoj1FiaNY6XX1I6v19fOvopEaEnwFci+/tAUBXZDEdvSs2wzIqFAtpKWGAwnIeU+kLeKH/jdEv9aRknPZ8DXwsJkhVhEKY5aZbCHz3RPNkZKRMqi32kvIJjSRu1nE+YDJRiv8uE8KAraylfj/xfifPtm0SMg3W7rgCE6orJJjOIJtTDNfRIAROT83P8XkEP4nAZP7IlCeZFoY0XH5HaCVtsm6xkmwaABacPrulOjQ9A+vUDInnBZjmqlfg9NtzD/S/xUZY3DN72n/KiMTHOIA5ybmEc8HTe5H32zmDLc2xN7CQMuiZqPim/Zw5GnUHGKIWIiBPPvACl+2eZB1ypy6gfW2Mv5MmIn
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3658.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(3023799003)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dL9xT6XfahiRuSSMhK3ajpmI0kK3PprzID2hUfevE8C5vznqUiF800Xv/kY/?=
 =?us-ascii?Q?cEGiSvt2LNdmjsaVsTONjwOfoclaxD6cU/k3jdgBPHGrxdxP2blNhxTSQfH4?=
 =?us-ascii?Q?/098DSB0F/3LTwReflxd7mQF9zu+YqKMXeH9ocmJMPbzWRYygUN6BERiV24K?=
 =?us-ascii?Q?KBi+aPzHyVCSZVYSelZIC9lP/uD/ypmWSaTKi5ouD7kFd/JSyHGc/GcV2brN?=
 =?us-ascii?Q?dpLvhyqzVzfcF4szEDtbBFLxDr+7mrZ3uoxVlTejBpCBNk7vqkxKYa30ys7U?=
 =?us-ascii?Q?/hQAh7LGouvc0OJxU/BKE11/uo+OvRSJ1zvPcA2KkhLY5/Fx/9zRN/NA5qc0?=
 =?us-ascii?Q?9LMa+bZWlsfXFzfMbqINErJXaNZXTFVLkEbAHVwU5EwdzXhuMk05AU0P2Hkl?=
 =?us-ascii?Q?k9ygcg4/S0tG2B0BggRZjFLLeJCnNa5eAW2gUcuYAdoRWPs2VTuSVpQS8KKF?=
 =?us-ascii?Q?bjDUvX2uEoPHHlX/iPUA5p5UzIMuQbyy3gKJ80Ft2+NljTqeWWNj2HDbn8Jw?=
 =?us-ascii?Q?oI4sICRLxJwSiTvgkeIKf3F0EzcBz/V/PhL5cpIiW0/tK2ONVQ8Z16n+XU48?=
 =?us-ascii?Q?NEs2yxubvCZUAWGKiW14sGGVysSX5V5xZEg1CVFj1Q+M6ldEXb/sXUqSpy7R?=
 =?us-ascii?Q?VV+Qy21RSwQ0Ldh+lucNNCrgJ6q4UY/WWIx7D4V6F+WR6uzy50QIgSp4yU5p?=
 =?us-ascii?Q?3/qbekG1eGvyFbjpt6x3SWA8gL/dsgaIburL7X+DgHPbX+P+kwgY0H67uepK?=
 =?us-ascii?Q?tZIvg3HrDUam2kZ9I7EulVHzP9VQn9zFU2+TZZTHatMOtiUBWVGm+4d2vSdC?=
 =?us-ascii?Q?8zwIhyevvRijfyUEOVDKV2kecABV2JtqnBNcCMnJkDRags9YCGqqxRcYcS34?=
 =?us-ascii?Q?I9QtwuUlXotFJdLMr2klgI+w5SikJJWGqaCuFGGjN2/VKrWgxQ88/y0v4kBH?=
 =?us-ascii?Q?PSlkNGszr2VR5OeklkylrtENAMk4g31nyftzWftICcUnxDWCeVs0GOC/q0wv?=
 =?us-ascii?Q?n04ubh3younXOoWNbW4TN84EYMQMYsJH8HwIFdyjXBjgq7tcMFE904IwlOnW?=
 =?us-ascii?Q?QfhAItdNT4iYF4YSDy8kpeYTt64VeuNgfUZxlZanR4xIJjzndmsWjugAEJW2?=
 =?us-ascii?Q?qHJUE/90AHIh6fX56daiKCUU0t308fNhiBvkDyvpzaGKyaE5DcIKQfoU0AZm?=
 =?us-ascii?Q?dmtVOKqjU1SIy1n5L883b5+k5Cy2whXhminek5jGZiYZsAtxKNfExAFqft80?=
 =?us-ascii?Q?GAPkw3P0VrmqItf2zyxcU2pLqCtWfme2r0sdihX/hhZuQ/EF/qtNp5g/mLf+?=
 =?us-ascii?Q?61jaWNASX/Rk/NOX5vhBe+wb0W7LPu1VTKGThCsf/KOtFTsH8ch8F6k2IgXY?=
 =?us-ascii?Q?MIWVUmZK0tvw+mfxvrB+mkty7J86T8xQiMwOW+5sGJeycGB1mLrwULchsdPi?=
 =?us-ascii?Q?ckNF8dar6MVG6xSG7vxd920zj4nqShF3hPrMG6nGLYiDwO0vRYKfHrBR8u9u?=
 =?us-ascii?Q?DRNmxITtM9PWZQmJMKIxtbHwVCto67pQy4kjfpLy7J9nd+o3wvcKJh3sZcj0?=
 =?us-ascii?Q?NV/w9hyjll8me5chmHHzG4CcrErijxaqcdtQji35LQgz/BlNZtudYdFHuW6x?=
 =?us-ascii?Q?U3I/CP1mWD1TVjcc0JAWK5dWibGmSzYbwZ2/fvPEvhQNjZ653QsJJYsK3hrF?=
 =?us-ascii?Q?b0wx/QEpOJngPXe5dm7L2fKrEyLiXK0QPhb2g6M7ff3kvlKRxsm/49ca55LD?=
 =?us-ascii?Q?/cPeL0OO9Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: DhswtbdZDPAgCVLUIR7e+3Mtla8w/QH2Rr5CCJ8x6RZjs/KtIVfKCKseoUwnblVXyc1rbgRDgDmv5reoz+jJ+aie3oAh/J/vsARLk9YYWfxGdO8nVHIFwL65EjBCBeQa3bgP+x8sUWQ5HZl4yZQPAqlu4/HGLI2efmghqA5txmR2Iwx3xbSOPb2FP7F4x8SJ2RNO3G4kDW2euW3fBDyMoBQUpAlWRlPxl1pgVpWXw267vZbYKS/lUyVcZqe5c6ZnHRBXnjezuL0+HJ3kUXVBYVIvV1e+Sh//Hs5tCQgGdBlM3YMp0Q8ImvmVkXuZCZEuHWJeAxdl/omY+9QIM868ng==
X-MS-Exchange-CrossTenant-Network-Message-Id: 39b4e658-11a1-4240-4b31-08deaf33c8f5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3658.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 08:03:28.5002 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1KXKrd0pIp+BBp/FC98IipXM1CmYvODONxgUgbSEEaKTIPgZefPax+WyoVKEl4RmMC10oUyALPWMxlnzh7bbjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6935
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
X-Rspamd-Queue-Id: 5FF25509C05
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.942];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Sat, May 09, 2026 at 11:24:04AM -0500, Aaron Esau wrote:
> On Meteor Lake with a hybrid Intel/NVIDIA GPU setup, s2idle resume can
> leave the CX0 PHY MSGBUS unresponsive. When this happens, the PLL
> enable sequence silently fails: register writes via MSGBUS are dropped,
> the PLL never locks, but the driver marks it as enabled and proceeds to
> drive the pipe.
> 
> The root cause of the MSGBUS becoming unresponsive appears to be the
> NVIDIA dGPU not participating in S0ix (addressed via the
> NVreg_EnableS0ixPowerManagement module parameter). However, the i915
> driver should handle PLL enable failures gracefully regardless of the
> trigger.
> 
> This series:
>   1. Fixes intel_cx0_pll_is_enabled() to check the hardware ACK bit,
>      not just the driver-set REQUEST bit, so a PLL that failed to lock
>      is correctly reported as disabled.
>   2. Adds error propagation through the DPLL enable path: changes the
>      .enable callback to return int, threads errors through
>      _intel_enable_shared_dpll() and intel_dpll_enable(), and checks
>      the result in hsw_crtc_enable() and ilk_pch_enable().
>   3. Makes the CX0 PLL enable path return -ETIMEDOUT when the PHY
>      fails to come out of reset or the PLL fails to lock.
> 
> Found on a Lenovo ThinkPad with Intel Ultra 7 155H and NVIDIA RTX 2000
> Ada. Kernel traces before each crash:
> 
>   i915: Failed to bring PHY A to idle.
>   i915: PHY A Read 0c70 failed after 3 retries.
>   i915: Timeout waiting for DDI BUF A to get active
>   i915: [CRTC:149:pipe A] flip_done timed out

This looks to be an issue in the BIOS/FW leaving the PHY and display
output HW state in general in a broken state. Could you please open a
ticket and provide a full dmesg log booting with drm.debug=0xe, so we
have a better idea on the sequence and proper ways to work around such
issues?

Thanks.

> 
> Aaron Esau (3):
>   drm/i915/cx0: check PLL ACK bit in intel_cx0_pll_is_enabled()
>   drm/i915/dpll: add error propagation to DPLL enable path
>   drm/i915/cx0: return errors from CX0 PLL enable on failure
> 
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 54 ++++++++----
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  6 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 10 ++-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 87 ++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  2 +-
>  .../gpu/drm/i915/display/intel_pch_display.c  |  7 +-
>  6 files changed, 117 insertions(+), 49 deletions(-)
> 
> -- 
> 2.54.0
> 
