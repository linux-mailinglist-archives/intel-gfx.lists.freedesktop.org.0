Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hEreBSozRWpT8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A546EF46E
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=U7zi2VSj;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C62110EBBC;
	Wed,  1 Jul 2026 15:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4258D10EDC0;
 Wed,  1 Jul 2026 15:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919975; x=1814455975;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=7xx9exDBiv/fxEa+9ubBdPLBaIBxpqPANI+NqpC6MrA=;
 b=U7zi2VSjNo+6G3e+Y0FscoEq+uciOnS2nixp1hrmZGzOEBu3iMTnk9Eb
 +OGSs8jxOyr/GgEfF/qL8OJWJaLWYP9y2mEbiCvDc2MRHTXEZQdzmP5d3
 qIpQXCBERXVPHSnPmzgEWeLCTCkzSYo2jNtj0dfoxf6YO1eArhloVjC3u
 SxM8G4v0VqiI2RFobFAaklskfJyj6am6R4QujcEUGBiYdxYGbro2drhmg
 YVYC69ba2tLeZOdxTnf8cqDrx0cX2YSa8213QFlk+hx+8v9O9PgcoRT80
 VXzhnS9rtoerDQG93dc1UyGQ6uFaz2dYWOXG5jNxZ2CwVbayMaqQpPmFW A==;
X-CSE-ConnectionGUID: XHXv8+9gRwuQv5ONG4jNGg==
X-CSE-MsgGUID: jLq0DoRUQSyMTu3nXdMuiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94310083"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94310083"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:55 -0700
X-CSE-ConnectionGUID: i/fkbZLVR3u8iM1eSiykbw==
X-CSE-MsgGUID: jVVvTi3OQ0K7xKyBV+4Iyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256515606"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:55 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:54 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:32:54 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.29)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yunTouYMpwOl5ogIybvqYsArLE8KUaCaxCM0Kjhwup44cIAXzjsR3DbaOVRALC5tmMjZwWW51WkvOAc4MM1TXmO9zGir0egiGEx0AE7f43nsY/GsVS6joszgvNylF6Vrz9fLydm2wzAKJgRrDHy0+UTi+Bf+Z/wumUL9hTStscfIyOFDumwNgSeBivhkeqJ161FaNrBVkMMw+toBtqV9ZrBKvnOjZqMjAM0pwGhOGpw2BnylMCdKm4M7LU29MO9Lt/O65gM5D46vGzBaI0Azqy9Ah45x91Q9zlygtohVGUU14fio2ID37GvvG5I1QQ88QI/ArK/1a7g6cFFusoSqkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dwIUMXzoKQU+uBek19gc3Sv4uF6Uf5EPjCr5KTyLQKw=;
 b=hkJHg+dkJTScicK8lOy4fbMjMDreR3nSYg6FIRKEEVTRaipb2aP3n1fN74vndn4n9FUg27MdJVZLWao/8IirXaRqnf0Wx9cUmtxHHHrE6kYjDDa7mInY0FfnlsJvchnw3yWaj475qbOMsqskgAuovjHklcWnug3tWu4FK+372sgfrcq0Ddt9JJ8MK+oXVYD0WeggLReO3wl52839AuAKsGIYDfZ4IrM2lJvCcu1+6jTnfxDdY5NOXsqqBsodprRQJEDgD4sRqUWARkdNT28f9ufZ86iQr4i7XcSGWbAyzNohz5gSmd53qe8V8f5zofEAg+2HfFHFKNtG20u6m+BjGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:32:52 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:52 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 12/34] drm/i915/dp: Add link configuration filter for
 modeset computation
Date: Wed, 1 Jul 2026 18:31:41 +0300
Message-ID: <20260701153204.4124150-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-1-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0097.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MN2PR11MB4598:EE_
X-MS-Office365-Filtering-Correlation-Id: f777e9c0-49f8-4e56-240f-08ded78603b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|56012099006|11063799006|18002099003|3023799007|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: Y8tw5LxrdYfbEZw3uHHefxA35JuGu9uGrdWAiQU51OvRlV2AVMwp/5J4vLXVwQ1rnmRsXKpCzb+HxVc5KAkyvS+tPMUb5wFM7RlW0bCzTAXa6i8ij9NZhDhwyTWCQ4jQaqrQSYACl95ygLjAOp6UaGWEWAIaisx84Z1r775VhUvWfHbtYEKB0KUbv29rYGp1QKJkIZS3dwNKc0p+rz63JH8z/XGL52qFNPmucLKhh10WAF8bFGY/a1QJAB68LuhKv/rDfe9aMeKmCUJZPBozSABGq1dRUIuFpLl8VGvPtPmtKPhreTvOizZ+X59FRPgdDrukHelvpyQx8czxv+9eVZNW+Sb0STiJUTA4z1U2JNQzXc6jKygzQHf4Lgx/yVbijaoNZJ9YHDi+3bUNh7nQnb4+Ag/4isb/Ik7UoRmMl9c8Efbsjeil+jRHZycYo5FKLMNeqlHBk7jOvCPUqkB7dxfYAzHFXFv1VluViMTUTEla8GE3sATMFVfFeuU42U/9F+QhZJdK/e3gue2RqHSZpnCzHMItVwb4LfW1hdabuysphRdSV10xe8OfIfokX1GUErUea1drcqjNLXKbZLA0zydQHQC/x/TyYcgnmkjtHo9jLmAJiL31g2z+YWEj7B6tNQE2Cp0Yx6C5f/A0k3SQg81KtjQ4mCkBlIcVdowkvzI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(56012099006)(11063799006)(18002099003)(3023799007)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2bZA2SCkLnDWjx4WIUD9SLHa22glYSTXw6abnOLCEf2Cngt8YOEtmfveGMmC?=
 =?us-ascii?Q?+KJwbEXTgxpoHGMbMiMwoFSWXLghDXy3fH69tTp0o1z3PtbpSvR1ou4IpIA3?=
 =?us-ascii?Q?Ew2YP2fDORYcn84avAabLDKUYvj8CE7NUK+qFEad8F3t2HgMNcWJ5B41ATyy?=
 =?us-ascii?Q?4QpsIKWKIHD6LW9KWe0hb0LP9Kd+AEj/grjUvFuaNzLe2XJFUIJOvkM0sgni?=
 =?us-ascii?Q?AioCrLPzSJR6j4tYxsNTjdNXIkDpKSQp5VdyYY4U0XJ+SxemMF5a7xAfDYxp?=
 =?us-ascii?Q?+vULfzxihmQkL8dBiede7LfVVDRMAz0nVnomU6mxXZnGaKf/K7eAzFlA//gy?=
 =?us-ascii?Q?N20U2xwJcIG5kp+bpV+GodajdiU/MvoXJj+av9oXzMSkquJRcKxhH73E0yUs?=
 =?us-ascii?Q?5HaoiO1odEMHNzf4bvg3ytp4U2waa3DjDcI7LNXGn1of4SAvBJCmF08IzSVK?=
 =?us-ascii?Q?YMGA/F8n9OUGuh8DwQYi+mZy+3L+mcPAMggV5klPzkYRCn/ysZ2STnbo3JBg?=
 =?us-ascii?Q?Ek9r7TrB7/enEovOPFzOcm7V+j6nP4/gv8UIZzoAhd3K34Hl0xaLN/1iUh2W?=
 =?us-ascii?Q?14KH+ludTfZvvxXvm3slkQOVUXMBrYeWOfkNwgxU3hUYxQQrlRtdqIwjI5Bn?=
 =?us-ascii?Q?VBW6Kiv40c7TAIE8CXXz8uJ+AOAazi/joq2/JF1q5YxX0uC9nqLxUpmB/C2A?=
 =?us-ascii?Q?NcXzWHyL9tfOMjOpnOhPt5//uSmfn3plxn4OgJ/wKMiDfqkV9rUO4dKGyuiw?=
 =?us-ascii?Q?JpqLeE55JfjAFlguIYEO/OnMtkF9a0r/TX9QiVKIkPnvf9BJICwubBFYwy02?=
 =?us-ascii?Q?2q2E8yX6P2zoRdXlSPPHvDT/xFaBDA9Dw9cnmNGG5vsX7di40eABdhp+GHcP?=
 =?us-ascii?Q?5W+odX7oCZUg/rwTqOCbg23A6WqrDSvAmIyFFlTaGuJH+KoSX052qaumAK2I?=
 =?us-ascii?Q?nwC+KdCWphRBBdXDbc4F8/OK/oK0sdzHDOSzs5mCjVxqNqXinfkCMHfB835K?=
 =?us-ascii?Q?o8kzHpNn7em0Oi5G+iDSE/GBSPlSL85edRfhbslrl04nM9tnLoHtVXPb0my7?=
 =?us-ascii?Q?vIwhPSdD3w1w683kRxX7/NrGml2jUct1Fixja693obLTGH4BCs8VZIXoidDM?=
 =?us-ascii?Q?t/S6u3CnddXEEPTFKnn8PEYlLGoAIZ1WUhwoe2EkE2svL1d4e+PlB6QmLSl4?=
 =?us-ascii?Q?T/I4p6xCu/vBbgDT8VZJw5z1YYFDbB7v4RI0H//Xz+YtfNHDAkP8PY+GuBXq?=
 =?us-ascii?Q?r9UzXVHD0JKEWAMkaL+YNbBHlAOEi3mkezUfG4v0p4vQTwEx9Ywivm8Q7ieU?=
 =?us-ascii?Q?bEIb/jXFC468u7UlUzb46CarehYqy/3yYQHsJF6YcGx2UvJcSLXDkVD3GQ+F?=
 =?us-ascii?Q?69YOhSOPOdN1Vw1S54aGUpLIfGjvQFJhTIfbcnJG4lVqLVO2iOyBPetf0zvT?=
 =?us-ascii?Q?v+BXyno1thegYjw7oz5mwEg2Qa5Lob8zB1VRE3VHLJa5+RMx678AYsdMNNVM?=
 =?us-ascii?Q?Vpn08TvlA+s7ItAv1VS117HwV9PcDjF1lVUULQMSMhpES0Bc9mGr7h8bitYG?=
 =?us-ascii?Q?qSRQ3NqLrcbMdJtOqg/8USH0DWZdSg0UKNU9CzNMkX/tLY+K1PsB7CAeA8FS?=
 =?us-ascii?Q?vXIUfQK/feLm87ApyJeOacIuD/CfoqJa2hR6ckT9btMLrtUGAV/ppHb5DEHi?=
 =?us-ascii?Q?KEEnhbIy2uFAyh5c/Z/gEdVN+2v6FifGdQ4443NulOcMGwuAVrzDhYsB0Iho?=
 =?us-ascii?Q?jqQnRp3kfQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: c6Qu2GH8kqAcb2oHfljNt4BbfFyP6MYUbXVWTt2OE4BjCr66dXazQvUUhBA0IZoyaV5e2o7vtScqGAJ2DT5zvPojlQfHY91oggEUp311ZXvJbUlL9/BHhGENlvW89hPj6bX/FJtjKurOOWPYr8MB/SHxQh7Gw0ySCg5FgekEgmF41CgjmLHd2d9DXIkkt83ZXnI1is2+NhVEcj4wvhJIxnjEdCB0QxaRmsuUwknEgB3z8DcaVJxFaZThDqKyeDIXQaqWOS6fy76PQ/s5gxj0cpXC8eODFiATUHG0ZvgHvduSTyoh8MbtiBKglj5T0i6spwIqZ6IrfvAyb6D115oWOw==
X-MS-Exchange-CrossTenant-Network-Message-Id: f777e9c0-49f8-4e56-240f-08ded78603b2
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:52.3360 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DRyYr0PUmYYHUwyOEwQRwjrlY6HA45feTmcfdjXqiapYN68CDkT+nOzKWXS5vVCb1irNuoAvhj/fq1MwpoXllg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4598
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B4A546EF46E

Add link_config_filter to link_config_limits to track the set of valid
link configurations during modeset state computation. Keep the existing
min/max rate and lane count limits for now, until all users are
converted to use the configuration filter.

Add the helpers required to select the maximum configuration from the
currently allowed configuration set. This will be used by follow-up
changes as well to query the maximum link configuration without having
to iterate the configurations.

v2:
- Rebase on changes using a filter object instead of a mask of
  configuration indices.
- Rebase on changes using an iteration object.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 42 +++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dp.h       | 11 +++++
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 46 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  6 +++
 4 files changed, 102 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 23001541283b4..bc333bc9296b2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2577,6 +2577,20 @@ bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
 					       bw_overhead_flags);
 }
 
+bool
+intel_dp_get_connector_max_link_config(struct intel_connector *connector,
+				       const struct link_config_limits *limits,
+				       struct intel_dp_link_config *max_link_config)
+{
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_caps_order order =
+		intel_dp_link_caps_connector_compute_order(connector);
+
+	return intel_dp_link_caps_get_max_config(link_caps, order.key, limits->link_config_filter,
+						 max_link_config);
+}
+
 /*
  * Calculate the output link min, max bpp values in limits based on the pipe bpp
  * range, crtc_state and dsc mode. Return true on success.
@@ -2593,6 +2607,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
 		&crtc_state->hw.adjusted_mode;
 	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct intel_dp_link_config max_link_config;
 	int max_link_bpp_x16;
 
 	max_link_bpp_x16 = min(crtc_state->max_link_bpp_x16,
@@ -2622,14 +2637,17 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
 
 	limits->link.max_bpp_x16 = max_link_bpp_x16;
 
+	if (!intel_dp_get_connector_max_link_config(connector, limits, &max_link_config))
+		return false;
+
 	drm_dbg_kms(display->drm,
-		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d min link_bpp " FXP_Q4_FMT " max link_bpp " FXP_Q4_FMT "\n",
+		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max link %dx%d max pipe_bpp %d min link_bpp " FXP_Q4_FMT " max link_bpp " FXP_Q4_FMT "\n",
 		    encoder->base.base.id, encoder->base.name,
 		    crtc->base.base.id, crtc->base.name,
 		    adjusted_mode->crtc_clock,
 		    str_on_off(dsc),
-		    limits->max_lane_count,
-		    limits->max_rate,
+		    max_link_config.lane_count,
+		    max_link_config.rate,
 		    limits->pipe.max_bpp,
 		    FXP_Q4_ARGS(limits->link.min_bpp_x16),
 		    FXP_Q4_ARGS(limits->link.max_bpp_x16));
@@ -2680,10 +2698,15 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 			       struct link_config_limits *limits)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 
+	/*
+	 * Remove the following min/max rate and lane count setup, once
+	 * all users are converted to use link_config_mask instead.
+	 */
 	limits->min_rate = intel_dp_min_link_rate(intel_dp);
 	limits->max_rate = intel_dp_max_link_rate(intel_dp);
 
@@ -2692,6 +2715,8 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
 	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
 
+	limits->link_config_filter = INTEL_DP_LINK_CAPS_FILTER_ALL;
+
 	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
 	if (is_mst) {
 		/*
@@ -2755,6 +2780,9 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 			    crtc_state->pipe_bpp, limits->pipe.max_bpp);
 
 	if (is_mst || intel_dp->use_max_params) {
+		struct intel_dp_link_caps_filter new_filter = INTEL_DP_LINK_CAPS_FILTER_NONE;
+		struct intel_dp_link_config max_config;
+
 		/*
 		 * For MST we always configure max link bw - the spec doesn't
 		 * seem to suggest we should do otherwise.
@@ -2768,6 +2796,14 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 		 */
 		limits->min_lane_count = limits->max_lane_count;
 		limits->min_rate = limits->max_rate;
+
+		if (!intel_dp_get_connector_max_link_config(connector, limits, &max_config))
+			return false;
+
+		if (!intel_dp_link_caps_filter_add(link_caps, &new_filter, &max_config))
+			return false;
+
+		limits->link_config_filter = new_filter;
 	}
 
 	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 02b691df67555..13872b8c4975e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -8,6 +8,8 @@
 
 #include <linux/types.h>
 
+#include "intel_dp_link_caps.h"
+
 enum intel_output_format;
 enum pipe;
 enum port;
@@ -22,11 +24,17 @@ struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_display;
 struct intel_dp;
+struct intel_dp_link_config;
 struct intel_encoder;
 
 struct link_config_limits {
+	/*
+	 * TODO: Remove the following min/max rate and lane count limits
+	 * once all users are converted to use link_config_mask instead.
+	 */
 	int min_rate, max_rate;
 	int min_lane_count, max_lane_count;
+	struct intel_dp_link_caps_filter link_config_filter;
 	struct {
 		/* Uncompressed DSC input or link output bpp in 1 bpp units */
 		int min_bpp, max_bpp;
@@ -144,6 +152,9 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 				 u8 dsc_max_bpc);
 int intel_dp_compute_min_compressed_bpp_x16(struct intel_connector *connector,
 					    enum intel_output_format output_format);
+bool intel_dp_get_connector_max_link_config(struct intel_connector *connector,
+					    const struct link_config_limits *limits,
+					    struct intel_dp_link_config *max_link_config);
 bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
 				  int link_clock, int lane_count,
 				  int mode_clock, int mode_hdisplay,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 4482e1f9d6cd8..d00bb8047de2f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -504,6 +504,52 @@ void intel_dp_link_caps_iter_end(struct intel_dp_link_caps_iter *iter)
 	memset(iter, 0, sizeof(*iter));
 }
 
+/**
+ * intel_dp_link_caps_get_max_config - get the maximum config in a given order
+ * @link_caps: link capabilities state
+ * @order_key: ordering key used to rank candidate configurations
+ * @filter: filter for candidate configurations
+ * @max_config: returned maximum link configuration
+ *
+ * Find the last configuration among the currently allowed
+ * configurations filtered by @filter in the iteration order
+ * selected by @order_key, and store it in @max_config.
+ *
+ * See also:
+ * - &enum intel_dp_link_caps_order_key
+ *
+ * Returns:
+ * %true if a maximum config is returned
+ * %false otherwise.
+ */
+bool intel_dp_link_caps_get_max_config(struct intel_dp_link_caps *link_caps,
+				       enum intel_dp_link_caps_order_key order_key,
+				       struct intel_dp_link_caps_filter filter,
+				       struct intel_dp_link_config *max_config)
+{
+	struct intel_dp_link_caps_order order = {
+		.key = order_key,
+		.dir = INTEL_DP_LINK_CAPS_ORDER_DIR_DESC
+	};
+	struct intel_dp_link_config iter_config;
+	struct intel_dp_link_caps_iter iter;
+	bool found = false;
+
+	intel_dp_link_caps_iter_start(&iter, link_caps, order, filter);
+	for_each_dp_link_config(&iter, &iter_config) {
+		found = true;
+		break;
+	}
+	intel_dp_link_caps_iter_end(&iter);
+
+	if (!found)
+		return false;
+
+	*max_config = iter_config;
+
+	return true;
+}
+
 static int find_config_idx(struct intel_dp_link_caps *link_caps,
 			   struct intel_dp_link_caps_filter filter,
 			   const struct intel_dp_link_config *link_config)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index dcbde890809bc..6dd2ce64e24ed 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -29,6 +29,7 @@ struct intel_dp_link_config;
  *
  * See also:
  *  - &struct intel_dp_link_caps_order
+ *  - intel_dp_link_caps_get_max_config()
  */
 enum intel_dp_link_caps_order_key {
 	INTEL_DP_LINK_CAPS_ORDER_KEY_BW,
@@ -140,6 +141,11 @@ bool intel_dp_link_caps_filter_add(struct intel_dp_link_caps *link_caps,
 				   struct intel_dp_link_caps_filter *filter,
 				   const struct intel_dp_link_config *config);
 
+bool intel_dp_link_caps_get_max_config(struct intel_dp_link_caps *link_caps,
+				       enum intel_dp_link_caps_order_key order_key,
+				       struct intel_dp_link_caps_filter filter,
+				       struct intel_dp_link_config *max_config);
+
 void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits);
 bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
-- 
2.49.1

