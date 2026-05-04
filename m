Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULubFztA+Gm7rwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 08:44:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 526054B8FA2
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 08:44:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1F7110E382;
	Mon,  4 May 2026 06:44:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ei/UQlZP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4564710E257;
 Mon,  4 May 2026 06:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777877046; x=1809413046;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ULeRReusImkeQ9sjLCWJ53XCI37a3WQu4DslICHNQy4=;
 b=ei/UQlZPRiGQVWvctSxu6pg/848RgqcFwZ4QC7y/v2StMTHr6lsWbMsi
 CMA9RwQ8Dny9+pn0jFCgAIdC+TEOZqEucE6TwHeHEF8EHcxEmGyCgg1Hm
 0CrBjCGh8b73Bxs1gnH0IS4Lu15OtW+DC0un/fg1+TeO9vQmlSi5XPX81
 L7xtsN8YKI7WySZylbNZNwYIxJb3dv7wDTSmolldcnzaQ9B0p/vIMVVf6
 ++TXDkQiGbta+lIvMr4KvfdDtxh2VD6Cb1vI1RettL9PxmrX2Mv2DpoaV
 /+ccD3cLzmcyHUIRbiF7oPs+iRglrZGzyDPmS37fi2qLbca0mugfrteIc Q==;
X-CSE-ConnectionGUID: sAQI+6r0TkmkXHnoaHeTsg==
X-CSE-MsgGUID: rIhQYThPSzqY/vYisyDPfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="90191217"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="90191217"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2026 23:44:06 -0700
X-CSE-ConnectionGUID: tNkex/XbTSCs1ArXaeA10w==
X-CSE-MsgGUID: GBFhXRcGRQGMlR0ukKoscQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="258783969"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2026 23:44:05 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 3 May 2026 23:44:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 3 May 2026 23:44:04 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.14) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 3 May 2026 23:44:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O83say7KBMEaKzyE7kpKmyCaSKtruVUP64GFdJ31OdeGnVWL3w7LlUec0CTRaZkW45crjPxt1T48OlSTOzM2uuvoecgnQniczWyfyb8CMqQd7W0ECucO891HfkPYGOzhffV4/Iny/UW0paWWkD3DWpBM1nXUigFQVqufRnb82gdgVlFQmJ8B8lkvtHWg4jkwXehRPUMYQYy71tqCRkz4jcYlZdk+h5OH0FAA13GBN0Nm9JaKBZ6MJkMXQu+m4dCMHLTjxSyiUNb+VlX5iY5n9CxLJM3kVYHbeFGk3Ai/ADu8PXiLW2aDtEvkj4N3LYA1gKSHlPzitDvglEJzd8uenQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MuBpvjUocvhaYxixapjuXx10iP/r6BnpyVZbxnJd9Y0=;
 b=ZPJV6YatLayf1Ch88P4PaF1DSAq/0S1SM5bDrr5pF/OicOKJDi2hGmplIEcq7cZCjXxD0XdGORDpSOCjiRED491ITbjvQG55O0lVgx4Su7dcPZyQewdCMOHIY9O8zvAefhs9MYNvUTVB08Tbr/8zu7SMgTuEVsbrMQ6OWWjuZLdhXI1CyFowIsvxgi/uPSLnSP4mjuLntLRWEj2QuodTpvibJZG4f1XpnM+f1K32Cjxfp84Ed6oQhMsy2l5rciusnQf8Yh+2N8PvNJBwObJ+ZDX6ggrQjttH6clEjgGiwL9JoliVrdPaPXfjEZYkBIwXjIuH4tEi9EVpYbCxFbpMbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SJ0PR11MB7702.namprd11.prod.outlook.com (2603:10b6:a03:4e2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 06:43:57 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%4]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 06:43:57 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 0/8] drm/i915/display: refactor display funcs
Thread-Topic: [PATCH 0/8] drm/i915/display: refactor display funcs
Thread-Index: AQHc2HtxjXbPhENgjEKX6cpA7UcTcLX9cV3Q
Date: Mon, 4 May 2026 06:43:57 +0000
Message-ID: <IA1PR11MB6467C9D685C9239670E691B8E3312@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <cover.1777537663.git.jani.nikula@intel.com>
In-Reply-To: <cover.1777537663.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SJ0PR11MB7702:EE_
x-ms-office365-filtering-correlation-id: 68e9aff4-730c-454a-b2f2-08dea9a88479
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: 0C9/e1nL6KFXU/tRJg+WuiqmeKDdc81j3RcD6L33TSklUtFlqlCH5oIkBXBQWgRyeUD691lLJgMiDHCsvRd7RODKgoz0XbotoqdcZttR5JOmPwBwW48H1U4OXn4hwyp9M0ADT0LEAvYboz3o4AF7bXQE0L0NiYsS3sEfoXekvzoOmoikNV9erDhqS7B9n1hi4ip8p1LVfI5teK1wcHlc2NH8RGndLXO301wwEo8qDHkEL23NoS3rNO92OQVQfdATjsq9tc6/LNgH5pBkgkD1AXOy1kSJS5SoAOIpD/qo3yfT489NM0sD5gmde4v9nkVdfvHYyewsEdCt7Upmj+mRXLl27CVpViLWVaN5RIvGG9bsn+BPV7RumMqrAC1QSxR5UQRM8PlPEV75n7KtLGu/TSKHXPtjJ7bEFe2OacQ51zWrmPh/nCM0cpvoRAQ5DYdaZ426vKkz9MFJ5Vo4mXtGxe1GUInNsEnYrvAfdPDXPTZYd8O4awAhNBJx8WW5gCpkN24SvaDNInH9AXEkvUB6dI3Hze0M+Q6zWrz+PMG0UcZrAYLsHfEtvfTF5dSSeyuFjC4mNWbsAUd18axiWVD0dcxb3S5NuYjs41RYMpSF13MjkKxGmU93pmwgPyrlrs8OAQJYADBO9hS6J3g+l1Md7wufXEY20/OH28aXuNN4htjwQSyXP119z5JMzRmoV/3GBaqYPQhcOn/GJIhwKLLCdhyKlMLiCJBAL9IMFtjubk/Yj+wMhn56fB6KjBPuarOv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IFUQjvQqwi/Tg+Gv3f7kspUsB3SlrLOLuoJcG8pRj3M7Q3Wyajbw8qYf7jSs?=
 =?us-ascii?Q?Po9Tth0Mt3Ny5YiMN/4zuFL+QiR1Ex9ft00DF4ca87gv+t6/kY6qrm2XAfDI?=
 =?us-ascii?Q?H+Q6ekfP30mot8tERUVFWLO/0wmKN1htJJzw9KmsfeKE9VsUeC5C4ZDhWXfk?=
 =?us-ascii?Q?vqoJ9DT7WB9PMlyZFQoMckBzWZFyx3PRJqI/KWTmRutOGtSr3glhWopGbGGz?=
 =?us-ascii?Q?08p1oHm0DPXId3mP5dlxe3Yx5zWUnryMJo/tcIZWnigKP5hCtvsnT5LbgE1K?=
 =?us-ascii?Q?DbZdLkobBoR6R7N6WQnqD3GcKM6uwL6twbKjYhWkvnADBg5uYOehlABzMGuC?=
 =?us-ascii?Q?Pm5mDNQiN1SjajP4IMDzELV4tlTEmDQ8XZ87IS2kvpWSdpiBF8oGHr4m43x3?=
 =?us-ascii?Q?JHoH8xfL7T4DLLrTT+dVtNvRgfTzz1RoU53blUyeVWMjhy6x7TimXbuFBG6N?=
 =?us-ascii?Q?Grq4sPPtiQE+DCMXNmAwtTK8VFAErkKhiqiX2ubPUX6Y26QtJLW6Yx34wN04?=
 =?us-ascii?Q?j4fqQglXikmmdoUkWv048eqVSpoFXoPeCI4L6kdk09Va0TKL2DR9uWDSQwE6?=
 =?us-ascii?Q?oALfldmSXqhaZBME3v8xf7EzfPFifk/MB8wImoTyqzMs4ymgyCjvr3qTLszM?=
 =?us-ascii?Q?m4H2m9B2Uba+ILlqE0n8awLy5J6fED09EfG/8UMorTyTKeOpUGrYaytkZUdT?=
 =?us-ascii?Q?A7kvn2LUCbgQftf1O1TTqphFll57NIXNbW+SXxcHHEc83pGYt3/lw6A/jrdF?=
 =?us-ascii?Q?ne8/DoccyOuczpX10B0eFGzYNYRfpcwk/8uOdnDzt8zI5V70eQk6hl2cfIyL?=
 =?us-ascii?Q?skbKKO47KdFQP1IipLSveK+ksosXi3ARqCVn6sKO1kYnNJPPjfpfvtBWlG6e?=
 =?us-ascii?Q?9yYcVfRmCB/MTJk1biaQYDjEN0WTKocqPgVembinxAmHKiHXVz4RaHiuHrwB?=
 =?us-ascii?Q?nKrpifoQHKAwOChSahM5v7+TybY5/yzh9k5lid28bp3Yvj9s9eyRzEn1UmEI?=
 =?us-ascii?Q?kny+bB0Pfn5xwHhY9opBxNav12PvRO6oEF0BNI9UKbrf3LbY70t4Y+O3jAY8?=
 =?us-ascii?Q?1ubbKYkLL/2flYMobS/6Qqj3er/XId7lNaWYdFmiE1FcjWJz1+Z3ff6xwKV0?=
 =?us-ascii?Q?7CS1jt88niYRuUxdyv7ac+Mv88ZoTWAFEHyVdw6QlbdOEBK3ArP52/oFpz/P?=
 =?us-ascii?Q?RVoJZUzAIuwawC3T0JNK9+AncZ2PGy4a6bn/Cu4P3hS0f9bUuEGBVSIo9AqP?=
 =?us-ascii?Q?oQpI1+yfpjTmv7wRKyeJdlQ/k/2hXbWQ3GSSMhTtgAn0BU7Ta7IXvYguJ5I/?=
 =?us-ascii?Q?TKAHZnn4mE9/nFZL1HrEcjEPMCJ/3smr+9ObF09CYsLDGT1vo2syQlk26Jpe?=
 =?us-ascii?Q?8jhQU5xMQpKXtK7bhm8TK3L5yrCm49gBj5IlnLgj16xUaE9IN68V6yigY+Ud?=
 =?us-ascii?Q?3Ezb1a1wORRV9iUl5poCSD7a1RI+ffJKA4XnVB+7CpzsxvSf9a/fuJSDZcY5?=
 =?us-ascii?Q?nzco/wXaLGuZbB0WDU3u7q2kFHrfZRMbPU27HbBnJZlG8eXZ6JVLaHQJgo1h?=
 =?us-ascii?Q?06/e1QZq4tKfu4B2Km/pLbCo4TcyPUTwJGaM0zNNni7bIJwpwNRSZ9L1ekiq?=
 =?us-ascii?Q?o2jBaj1jwvc4Zlsecwu8SnQP9Y/Y1SswOW5ATUmqxYbK/AeehP4DO+Eu60ll?=
 =?us-ascii?Q?YCG8KU2EJBg88SQdu4MP3O4zkaeJtzg4eHmZSZgPOGI0Dicz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HYm8BBMPOBBs819ZDmkDVJ6FWwd1OYkCRgFXeZt/ZGhZZazW87AZlWi3nYXeeQqh8DNcMtD5ht8OsSaEQDDrvE3kj6MfsQyPMdOMIeUJS2pwJpxjhRdLuznuxKuRBS3p5WDwvFB1fIlFkuNQjf4g85ZeTnTeMn2LFieiGoE8qpI5qIR+5lE4larKbgSn6CTMgDgHmIfw3r6PBpQp4wva6Z++uSXArbqNOeIbJ9QXZ3RnHhJ7x06/ZFm/mjhg/xFZBN0kuUgbTyhodyAfHnxUrXE13GX+wJxwKCDWeL93TU8Hpu82Rf+8WU2U8+SWjAJ8cwT7EvbRlnBvOtsVO7hxsg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68e9aff4-730c-454a-b2f2-08dea9a88479
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 06:43:57.5065 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IeRbmlwDZFoTw+4J0PM+nnnMPQ4AnUghMwFlvfUu3Maqa27j/q9ScnepPTulFjFMRwv+V3EdeGQ6VLW7JGE27w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7702
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
X-Rspamd-Queue-Id: 526054B8FA2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, April 30, 2026 1:59 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 0/8] drm/i915/display: refactor display funcs
>=20
> Split out the display function refactor from [1] into a separate series f=
or easier
> review and merging.
>=20
> BR,
> Jani.
>=20
> [1] https://lore.kernel.org/r/cover.1777458161.git.jani.nikula@intel.com
>=20
>=20
LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>

> Jani Nikula (8):
>   drm/i915/display: move audio funcs under audio sub-struct
>   drm/i915/display: move color funcs under color sub-struct
>   drm/i915/display: move fdi funcs under fdi sub-struct
>   drm/i915/display: move watermark funcs under wm sub-struct
>   drm/i915/display: move hotplug irq funcs under hotplug sub-struct
>   drm/i915/display: move dpll funcs under dpll sub-struct
>   drm/i915/display: move cdclk funcs under cdclk sub-struct
>   drm/i915/display: move display funcs under modeset sub-struct
>=20
>  drivers/gpu/drm/i915/display/i9xx_wm.c        | 22 ++---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 22 ++---
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 84 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_color.c    | 58 ++++++-------
>  drivers/gpu/drm/i915/display/intel_display.c  | 30 +++----
> .../gpu/drm/i915/display/intel_display_core.h | 57 +++++++------
> .../gpu/drm/i915/display/intel_display_irq.c  |  4 +
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 28 +++----
>  drivers/gpu/drm/i915/display/intel_fdi.c      |  8 +-
>  .../gpu/drm/i915/display/intel_hotplug_irq.c  | 30 +++----
>  .../drm/i915/display/intel_initial_plane.c    |  4 +-
>  .../drm/i915/display/intel_modeset_setup.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_wm.c       | 32 +++----
>  drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
>  14 files changed, 191 insertions(+), 192 deletions(-)
>=20
> --
> 2.47.3

