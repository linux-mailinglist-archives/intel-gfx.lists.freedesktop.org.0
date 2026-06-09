Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7abOK5NnJ2orwQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 03:08:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0291A65B8AA
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 03:08:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=EKdvp5V2;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96AEC10E027;
	Tue,  9 Jun 2026 01:08:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9C3310E027;
 Tue,  9 Jun 2026 01:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780967311; x=1812503311;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=kckmxcr7X4Qfoa4rVMsf6mfiIAOsO3A0W3ZPsLoGF1w=;
 b=EKdvp5V2Ezlz4+luYiTzLZaE30JEPE3RfaxpAxNZc0QnyBmRUT12almv
 cjfk6SqjUxi30jw0l35mfSS3Yo4uh4FKJvkacHPZOS145sJs6RK3vAPnj
 Nqv3kGSwv6jWuD8tW/pXzJ6804s7zoI8s+ny/o7mz96b3Uk9TyU0opBH2
 zN4b04kbhz5IwZH1DXO1LjsJ9ub5Ws/wyucqRWWxgt13+RathVOLLMfnK
 qLtmdjEVAAR2RQe2ADs9ZvcSDqzybiMKXMCL7UUC6duOjp3cOCIbAk0Ah
 2Nou3g3hj6CoGQKgPSMA5sjiR5Ix9RNhtu2F5jvZhZTkgsMs4epMMeI/I Q==;
X-CSE-ConnectionGUID: 4HA0DqtlSL+IWeglDBGekw==
X-CSE-MsgGUID: PS9G/h4ZTpiSvy8TcnwELQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="92825710"
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="92825710"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 18:08:31 -0700
X-CSE-ConnectionGUID: eLznkCecRlGUqpAB/qp4+w==
X-CSE-MsgGUID: 1758PVjbRyOzsueKOlPw4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="243269754"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 18:08:30 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 18:08:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 18:08:29 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.17) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 18:08:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QNSSn9y1kYr6EHdHmEHvKXAmD0LgClDikcYDbmABtLLAjrLeFkhNUD5ja2v0VAVsTxjbNefqH3QBGyBzsYpXzgFA5cpFZF8LbmaZGmaIK0a3YZj3pvqQUhNPPE0qSYuzvM+VZnT5aps9Si+zF57W1/gryLkMhyCHIxufYIBeDOzUVe4RQNPrVBSLcPA81FSFILDEh/JOkGhbpTifKvFDzhkOZRmSfl7lZ9/gkaod6jR13SlBwvEKFkwXPMF1Zyh6iWLelrHOfw1fP8zcTL8SYdoqRYZh8yIek2T0j3ZXvUqM2ebWPvFQ4omk8LFknUmYYwfJhEXoWoLVR3MJSFzlmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IO+BF7G4qGdBGdG4eW7FPszmZrhUV84ajVguo1v9xug=;
 b=Q6g9wkdQ7o/8bLa0gBv5kvbTcPepXXCT9bdTEQT3kQnu7Pt1+UcLyRCxsSP2erzkqOyiVDS09ncnJCeZoSt7a2VSt5PMDG7qQx/mi3bwUWCXGsXWfLT6uY60u57F2sc1Nfnxb29jQUYtILs5MvxrbKICGPaY3DZGym/iTZqtZ5bjHJxsWnFTCAPLMBHyN+UCHZALOLSgQqiMpY44WHGOh8zDrhY80vCQYNSEBdNQ+jHOcfzOl3/I4+2sKYmQ/8J0WeAOUM4wL6k4xNglpPVziTRC47Cz1uqEkGXKPZzYG0iFucnc0XRqiqOBuV5ckliphn8JpvMZuNc6njWs84bpqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by DS7PR11MB8783.namprd11.prod.outlook.com (2603:10b6:8:254::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Tue, 9 Jun 2026
 01:08:25 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0092.011; Tue, 9 Jun 2026
 01:08:25 +0000
Date: Mon, 8 Jun 2026 21:08:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <imre.deak@intel.com>, Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH 24/24] drm/xe/display: unify runtime suspend/resume with
 i915 for non-d3cold
Message-ID: <aidnhMTk4bOxx0Ks@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <2b7015d5f0c2c6d7b91fd020cba25deda91c0baa.1780051905.git.jani.nikula@intel.com>
 <ahnlL1v-W68om8cc@intel.com>
 <4e06d22ae910b81852f246e063cd04971de3c0b9@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4e06d22ae910b81852f246e063cd04971de3c0b9@intel.com>
X-ClientProxiedBy: BY5PR03CA0024.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::34) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|DS7PR11MB8783:EE_
X-MS-Office365-Filtering-Correlation-Id: 477b091b-6f54-48e3-20de-08dec5c39b80
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|11063799006|4143699003|56012099006|6133799003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: PmYnBJqYEb9KH475uBSNDBlq2lugJsk9LQhGUopeiyO4P2Nrun+KLWFWhLxUtAC1ZLHHz+l8GAN4UkhWvgGqKKIQLNDqRogqHX+3Xpa5AExL7kn+DdMUk2h1Ao8C2KN3rBdYSequPll9KUtVoC0JRI54FCfD0hExwAjoEKGTJBi+44ATeDaDJcSOC+5CPdZ+UxbEVBpbWML/TC3lHuL9MvIGf7yxuKXY7d7gWVR5r7vPXkkOZHmesh/cwWzMp3KPQPEzzV6s65ZLzYL6TMVi3M0TiugSCaQ5NytgnsSR9GhIu6WpwKH+fBAyfK1PyWJwNwEBL/ewUrTnOAdpPkM2qHV6HMVQa6VGpsLBXnJQbnsSM2m0tkf18B9CQ2/9N2tcXfZwG76hcOML29wH7v3yXzM/H6omcbs9UZUOMdoTBF09Bq9LRAE4ZN5HcM15OX+yrfkZLCDeiWyJskqXHXY54rml79hY5QUqtpFH1HRBJMvdcPxmjKBbBrl8yLJEImT1bHNr5M6QKYMRuRjPiWTrKEvgxLlV1Scv6Fy3wdVzbbwdCNFfaxtyrkjd9GD3SWb2TgooicB9oAYB5OeRTazKatveLBZzwKaliKyLv+Dxg/AK4lGa/sHXZ+ykz3H1gvOv64bpHfRcj6iFefDIXnj/AHhoCJngMZijBummBGDIzRy3Q4RgmnDROOHuN3BurOuR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(11063799006)(4143699003)(56012099006)(6133799003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?o7RkH8sAFp27CJI5a15Tvmd+wx2HwcJUop73fDeYTugJ5nEz+8m3uSXiBm?=
 =?iso-8859-1?Q?OumZzPxuEEZd1d4W1XnVa54vQsc4ZikaJ+2x1md97BrFYvmUuPG6flE7GE?=
 =?iso-8859-1?Q?sp781liVs8jzjNvINSSOl2C/AUAJsYuHuOyWZlgfDf4dkRPPYea+Tjtmvh?=
 =?iso-8859-1?Q?pWI9yqOj5yiJs29IAtVHliYxL9fA1AnPK5O9IhN0z+WQeoAxKKlnULXBDu?=
 =?iso-8859-1?Q?i3LQ/zCQIJ+LXdWgwKBTYRnmFlHS1M78LPnAtXsd7OYp/nBXg1Nkelti8H?=
 =?iso-8859-1?Q?TgOcTf65SJ0mM2EWj5399D7cTodd/dvULOXyATrOR3/x+xd0EKAMRrxtIl?=
 =?iso-8859-1?Q?KERDe01lMmQ+/G/TcswZa8A6icHAgDGfWhjUyfP6YbhwyMFq8CfuXKEUVn?=
 =?iso-8859-1?Q?5CG9Cpckl+/TzJSKXvTbLfpxUu5E/HnIwuFoL1a+1cD0woK1VT4ZN7sbzM?=
 =?iso-8859-1?Q?9mV63ofx1/KAvkSJaM+92LeLcJaUl/QVGSv95rzjpdf+m2jvti1Az3EclX?=
 =?iso-8859-1?Q?WQvMiv3eF7Mk8rM//6iftdORAY7NJmWzce665GuvJnl9k+SxkE0OT+iiML?=
 =?iso-8859-1?Q?8m44/UnYHlwJie4gmWw9M5edyO3rQqFD1KotDp9+1Jl6sy9/cA7MySMhtD?=
 =?iso-8859-1?Q?6WqT58najUkgsquJXY/sS//OACS6mW0dctQ++TU/8n+OpHZPqOxOqbi6Gz?=
 =?iso-8859-1?Q?CDGmSy/Iawps5cfd1JAj8Xc3VmRwK6Qctq0bLsx2cNEfu5LW9XADqilfb4?=
 =?iso-8859-1?Q?ETC8gqG/7TnTnnyxytxViwlsftGgPFfXcf7vpdYVswmLGqIu19+90oYYuT?=
 =?iso-8859-1?Q?CiuYjJrneu+gT0Cs9XwYUEKHvoWASfQGjOsBZiymHpcEJL3nyM/7gL7iz/?=
 =?iso-8859-1?Q?69IrUrLQ47maGmGb8GyUh4dF2F4MyrndxiCrQvH1AE1H2RoNJBrhdXXz0x?=
 =?iso-8859-1?Q?ZL9SVitsrSlYXMj6qqM4F5HFy5JZX5Z6i4oah9hxukWQtioz4gTYXkLu35?=
 =?iso-8859-1?Q?pYhz6qlozH3o/yQIBV7K4lr/Qz7f0suUrAqxbD0WkZ94Fw7cxEVEidpM0l?=
 =?iso-8859-1?Q?tvQoasF/CWVbD3vbQq0JQZFxuP+Dtro0EW2e/FtffMXUSxtxbY+g5gTMpD?=
 =?iso-8859-1?Q?FsJvuXp4o7X7wkSfQCXPIYAcEaRUQ1T24kTuMprwRMSXHihjy3wqmW9DO0?=
 =?iso-8859-1?Q?NFoXlO/8IOIrnArEx2sOLK3TXjj+bvBAoE6cKOsQxQkV8sr3p4mX3tTovl?=
 =?iso-8859-1?Q?TIYjEFgCJwiOQEudfloUDjYu3VwGHMtFzVS0VmVf7z7joXiPQF8StqazMj?=
 =?iso-8859-1?Q?bmDWlG5wMGm2BOMKht3xr/HfvTxZw9T40ZVQZljd6K9mwQBVh+XjnypFfS?=
 =?iso-8859-1?Q?GMsUDYC5uGftoB8eUvm3cUVVEIRRAsFwXCqLp6TbSk9BqemNe2GZy+L0KX?=
 =?iso-8859-1?Q?qinMT/09BJh9SVs++M+GQfKY9Mp2VZOHax0tAgzefDK+K2nUmi/iIRFMQG?=
 =?iso-8859-1?Q?2pmTFdBeK5ha3oRYibjJgajXWP57nfQ0M1fmIsNXnhcwSU0PKQ9feinPfP?=
 =?iso-8859-1?Q?3NEIMx5ojasWZMKoyCLbtmwEm9WBx7ntWgI3roT6ZSvMUJoT1x9fIOzXlx?=
 =?iso-8859-1?Q?8IWhc0cbTf8k4NYqwX6CYDkCpn5tuccRTwzm6863J9j3vfz3Q84Ir3GJNs?=
 =?iso-8859-1?Q?np/GUeUa4XO96IKbejvc2qWJCBiYDdbWzy5/8RR7rSThmXNfJ3m07f+K+L?=
 =?iso-8859-1?Q?1t6tll2Ctd1M45cfVUgszYlU0zqBQdriUngH3xW8zyZeFIT04yfLhSTrpf?=
 =?iso-8859-1?Q?prMCMBggFQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: IosspPC9lKYDIJiCeXYRwQICL9vmHl+ts2F9mql1OjnP/8ou7U2yzYr2w5fr+yF21DZvn1aFX5p9GlHUV2kACDcxm6h86SHMeXAhnEE2BQHXRazJym69nF03Cd7OYGt7XMSmuA7ACajbtWqafyzNTYLn0vY7N/VLH3BwmVyQSvPlL1tN/GCnVZzQPPd41IGRNC5xLWQmsoU8OBgLgssaAqiiql1rhLHLPcah0rpjhBn7uZy8tmSg+kGUCUC43t0xnjhmVJoCrLhhkcvdOXTsvunftF+yeH5YsuqgZE0PDNBUZOsGH4y+ke1VvHHuc6fVIZqdLEYh7s4NlBdMxypSkQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 477b091b-6f54-48e3-20de-08dec5c39b80
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2026 01:08:25.4763 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dEvBAUfOzIsHbQWuf+2KKGQUgg+VQ6E76RHZ9B1vCUKQNguwk2VzzcXzndsLouggUBain0mMQhm5sgp8LJo7pA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8783
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0291A65B8AA

On Fri, Jun 05, 2026 at 07:04:59PM +0300, Jani Nikula wrote:
> On Fri, 29 May 2026, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Fri, May 29, 2026 at 02:04:08PM +0300, Jani Nikula wrote:
> >> With the special d3cold handling in xe runtime suspend/resume separated,
> >> unify the non-d3cold paths with i915. There are multiple changes here at
> >> once that probably wouldn't make much sense to split out further.
> >> 
> >> Add the call to intel_display_driver_pm_runtime_suspend(), which in turn
> >> starts calling intel_display_power_runtime_suspend(). Deep down, this
> >> should take care of intel_dmc_wl_flush_release_work(), allowing us to
> >> drop the extra call in xe_display_pm_runtime_suspend_late().
> >> 
> >> Add the call to intel_display_driver_pm_runtime_suspend_late(), which
> >> starts calling intel_opregion_notify_adapter(). The
> >> intel_hpd_poll_enable() call is also done here, postponed from the
> >> previous location in xe_display_pm_runtime_suspend().
> >> 
> >> Add the call to intel_display_driver_pm_runtime_resume_early(), which
> >> contains the intel_display_power_runtime_resume() and
> >> intel_opregion_notify_adapter() counterparts found in
> >> intel_display_power_runtime_suspend() and
> >> intel_display_power_runtime_suspend_late(). (They are not symmetric.)
> >> 
> >> Finally, intel_display_driver_pm_runtime_resume() replaces the direct
> >> calls to intel_hpd_init(), intel_hpd_poll_disable(), and
> >> skl_watermark_ipc_update().
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/xe/display/xe_display.c | 14 ++++----------
> >>  1 file changed, 4 insertions(+), 10 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> >> index 0fadc62e1cdd..cd7264d7dfe2 100644
> >> --- a/drivers/gpu/drm/xe/display/xe_display.c
> >> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> >> @@ -363,7 +363,7 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
> >>  		return;
> >>  	}
> >>  
> >> -	intel_hpd_poll_enable(display);
> >> +	intel_display_driver_pm_runtime_suspend(display);
> >>  }
> >>  
> >>  void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
> >> @@ -379,12 +379,7 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
> >>  		return;
> >>  	}
> >>  
> >> -	/*
> >> -	 * If xe_display_pm_suspend_late() is not called, it is likely
> >> -	 * that we will be on dynamic DC states with DMC wakelock enabled. We
> >> -	 * need to flush the release work in that case.
> >> -	 */
> >
> > The entire comment seems wonky. I don't think we have any platforms
> > with wakelock+!DC9. Ah, it was added exactly because the D3cold path
> > is broken and doesn't go into DC9. Would have been better to fix the
> > actual problem instead. I guess you should move the comment to the
> > D3cold path in the previous patch to keep it where it actually makes
> > some sense.
> 
> Huh, but the comment says, "If xe_display_pm_suspend_late() is not
> called", and the d3cold path above calls that. It's the non-d3cold path
> that does not call the function.
> 
> Yeah, I don't know what to do with this.
> 
> Commit 731c74e988ff ("drm/xe/display: Flush DMC wakelock release work on
> runtime suspend") says, "We currently are not calling display runtime
> suspend functions when D3cold is not allowed." But that's not the whole
> truth, we're not calling the runtime suspend/resume functions *at all*
> on any xe path. (Which is what the patch at hand is trying to fix for
> non-d3cold.)
> 
> Why is the fix in the above commit just adding the single DMC wakelock
> call, instead of doing the proper runtime suspend/resume for non-d3cold?
> 
> I don't get it.

Yeap, it was never called and we were indeed dropping the DC9 savings out.
DC5/DC6 was the only thing that would be working anyway I believe.

And Gustavo's patch was more like a temporary workaround at the time that
we knew we would be working to unify the sequences. I'm sorry for having
dropped that effort :(

> 
> Cc: Gustavo, Rodrigo
> 
> 
> BR,
> Jani.
> 
> 
> >
> > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> >> -	intel_dmc_wl_flush_release_work(display);
> >> +	intel_display_driver_pm_runtime_suspend_late(display);
> >>  }
> >>  
> >>  void xe_display_pm_runtime_resume(struct xe_device *xe)
> >> @@ -399,9 +394,8 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
> >>  		return;
> >>  	}
> >>  
> >> -	intel_hpd_init(display);
> >> -	intel_hpd_poll_disable(display);
> >> -	skl_watermark_ipc_update(display);
> >> +	intel_display_driver_pm_runtime_resume_early(display);
> >> +	intel_display_driver_pm_runtime_resume(display);
> >>  }
> >>  
> >>  
> >> -- 
> >> 2.47.3
> 
> -- 
> Jani Nikula, Intel
