Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GbTeAZmtMWospAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A9B695171
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=bqY5RhSy;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E94A10ED33;
	Tue, 16 Jun 2026 20:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2583A10ED36;
 Tue, 16 Jun 2026 20:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640595; x=1813176595;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=dxRZJv3dLu1vdK3EehBaHlSoi1qlOxDOaeN3zBS7AyI=;
 b=bqY5RhSyL2CXvXl2n4fA/zhIFoEvFHsP8HUDQ+G3KCXTI8PJakZnfZWx
 YMlGRJ390eSMlqjrwzdk4WmsNloip+VNUInVj0S4CozWAbJk3owsmAn5J
 NmJNU9d5IjWnFXkcjSmbbq884jQcRIpISJWZkr9WnLeyDvSFOYVq9ZPUC
 SAP/GaA8dzok77oq7C5gbOpMmDJvoeJb1Q8HHEoHDsWmijELF4PVD9k7Y
 IXrj2zFkn+SeiFnVUS2h9kr2ZNO8xeeHQ3QknGawaEOPmaaDTvFH1Brj2
 QwuAAx4xzbD3bYq3Cb8UQOn/6HJFuaGNVGqJPT5Oi6oU5elwS1lRF4cD7 g==;
X-CSE-ConnectionGUID: IigJ+OLTTn24HVFM/MOPZw==
X-CSE-MsgGUID: naxDchMgTtu225ZY0O8wDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86255876"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86255876"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:54 -0700
X-CSE-ConnectionGUID: HwYzrO5pQ+Gi2VD+mAgjAA==
X-CSE-MsgGUID: pw06vRdzRO+zlu0iDTC8yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="271579832"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:51 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:50 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:50 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DoJ8sPATJAhrjN5I+788N9aXfZTiwtw+ftgHZv2LlP4T4CVPy4immLrm7amhjzFb/JpRqOXSoRUjc6l0lgxmoH+jYCW27cB/tfPQuWHYPLdDOwyYk3drc0mrM/CBMZvrklafdKSHBkD7yQlGoTiUZb0dV3lDI+acj4AyZmMOPut5/P/924E6sVGq8wVEC97TSbLXEYLfImTyASBfjwuHa7GFNhcjQiwN6cP5et3/3GkVKi3fFSklfX165UVO6gIbRogUFhWJbpeJ5QgO2SWuieyBCE/PwMRZOF94FpF1uXOzJDjmLoGKmTL5qz/GRl5FRMfvl8OFhAn7uHtbuMac8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sV6K71SgaWmc7OBYUPyboZMlbPXXhJYv6XFHg02nk4g=;
 b=ENeLB8a5zGlCsw2f8M2YbFeVQ76iq7aB64MthvciSlUGF9ywFZXswkgSgwQRJC6iE1ICkXYeYjazCZ07bOxfflGd2CPRWx4vfmMJfzrTyHcoIU08pyXUvV8dMU8MjmbDmEAdODGSBtj0Cd8vFH+5dTEecQmDZY2gBDWtTptApHzh3mhvOmNk59acbh37RSIoxJOO0w92GftPRNmKqQXFtk8VCPXI9CKyozoA1ewgOftDqMabyFGCUwN900V0Uto8lZ0RexdVywpGHjIZO+JEsj1pilRdgFGgOl4iiRSwI9ijGTSAWEyzsIZhfibbABkaNRcecTCtLSE4ZqVstH20Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:40 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:40 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 17/28] drm/i915/dp_link_caps: Add helper to get common rate
 index
Date: Tue, 16 Jun 2026 23:08:37 +0300
Message-ID: <20260616200849.3534628-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH8PR11MB8257:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b3d483a-168f-423a-b3e0-08decbe332cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|6133799003|11063799006|3023799007|56012099006;
X-Microsoft-Antispam-Message-Info: 77FibYd0/5wnSnExzxzVGyIuseOse2WQEIJcGrSwWMWG0nHO0wzIlSkRons8WM7TqVDb7D4wainKM+t44JLki6rQfugUP6MowfZVbL/9KULlBYqNZuG4VLTAsXiFTMg+wpZKg6GprbqZcW5xxHMoUoEWLS5w1csW2zJwM4gLa/QpjBa0wsH4rO0dYpAKzCeNRnOEGx9QtXxUjuTDichZinG72y8F6zz4Ndec4cLR5GCZ6MWuAYvB8eooMUyvqfkmMoZ7OpvCyqB2k31Xtt/vozF4bByS1McOHZaFawoE7vWn3d52oqhWBmJe0XvoCcrGCpzhApzO81f7ew3pVLFC1JVTW/zoGKrCsQ+VsAd6vVDVJrRi+reG4kWafMnBsqFcc78cwq+SA5edEmgasGtgjfS+YrnUbYc2oIejWtk+BU7vIVEIZJoV3LdSJmSLapivZMgYWcQHwE3lsTxdMcw9IPZfxuTHvE5b2qUR3/C8eR+zW22mEcJ6VC6DoAUHaZo0wGDJiUAGU21fBan7ejzwn8NvuFwAzAY76O9TfG8Jj1cyH+C4OeuR68DwzhNkvt4nn1nFAidN/16m1/T5fZnx0XQsZT2dQJKWLdBHxWP/ySZ/ChjkqZAz3bD8TkH/ZOeGy4kQDdOaNJ9jE0VmP0T3JzXMKblyYL8Xovvd2C79A33b8isH2e5z66mawri5b/HX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(6133799003)(11063799006)(3023799007)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rwniGF4xVEzXJQJ5Cq0d1wCtfHetSkHeAZoQFulgrbwlFQNuXPxaeWR0Or/p?=
 =?us-ascii?Q?ODymiC4Y8D/HwF1ujdySdLmSDhjKlBE9TMc251uPN+LW1yS7IFtyyom1HZBg?=
 =?us-ascii?Q?2Mbmk5VT9QOdLUuy76BTXTZgNcAzUrUXHviXlSzb91bbV/SdWq5a2z7TypPK?=
 =?us-ascii?Q?sw0DdJu0SAUXtoarmsIqKb/8vZNRanhaL4NEjQOs+OfkN88EoiWcakt8SqJs?=
 =?us-ascii?Q?vFvZVzjL4BWy38xpmSsgDLv4FX6gsQRqZYw5Ou4S94uK7nJSvkgYsbx8qgsV?=
 =?us-ascii?Q?4z6cLfsJOJsJZiFRN7puGg8Sj0wCxQIsSrB7hOeIV6CZM3J3oDb9N9OS8AaZ?=
 =?us-ascii?Q?DQ8tUFudyI16gaq1Z5ZyPTDj27tELDoVmnxcKhRVVI06bht1LC7+ZUq/7lXK?=
 =?us-ascii?Q?C+UyW/8oycyGRp3cCS1Cr3yNM7nYwWSLlfEmwHu8440gpY1sw5k62xMmj3Ht?=
 =?us-ascii?Q?wYQzWtDvZJWisWllNsHvJ5xMDQyNau79UGZt4XdrDqcZ1LXmCkMzCkU1QMlo?=
 =?us-ascii?Q?/nchjEzEUYcxn6sIYii3/sl2W+Wuje551ozmNf75k7Ha1UqIVsshxSVkZhzh?=
 =?us-ascii?Q?7L6VlP6zmQI71A2w5eSIhZnnfwpcz9Zn1EEN7saTsfA4CuL8vYlZMXbqgyWV?=
 =?us-ascii?Q?NrBPt7y9gjgJGsAeOFtsmuBMkaJacUVOpTkkSpp6FuEaPVvho4oXk5TGg3Zo?=
 =?us-ascii?Q?+IdGYc0t3Rz6ncifOZi8TKFV4bDcr5BuCSLod0ooUmsko1bAkxxKEzm5n3R+?=
 =?us-ascii?Q?9dTBZy9QpX+ObeKDo+R5VZ1JVrRqoqUPCnv97I1FLippfPruWCkL47G/I6Po?=
 =?us-ascii?Q?klem3ljXPemVYvBrgMyTT8dpXnY7TmyWctZ5iBELOL24FvkOyw7KP4c+tv/a?=
 =?us-ascii?Q?cy/kWuPK6h0bNSdW2y+TArpvNrmWog14XmDMSD9HIvK8Vwu76cHy32zpi810?=
 =?us-ascii?Q?kCKTL0IzFP7GpNbB5houcsFtnDeZrQvuxnOpZ9VBIm3PsADYg21aK01fPstG?=
 =?us-ascii?Q?6cW0aamgv8y6nEgby/Ln3JYLl9l/yQLH4cbcA6QKafcnfv4Wn1A7SMs5gNdA?=
 =?us-ascii?Q?R8lpyjBwatmGDDEhggTEgx0GYrOOlM+va0sogsFifCVTKL1xC7DBonTwAfe3?=
 =?us-ascii?Q?2rt1a/VT2tXZIanC5Up/Aifrqr5uV39Rxx52Du0T6ynHMdArD4a5zkW44cR4?=
 =?us-ascii?Q?DJXLR24xJP/2reNHFV24VmNyHHR3KLvFcRV7mkGcWASF0D4YAzjfLgm3QNX8?=
 =?us-ascii?Q?pJfXx4LnJ3blp1ULW7lT0hH6+4dbTUDFwuJxtPvPvyFK1QLwz0xwCdSJt1qI?=
 =?us-ascii?Q?JCjDRbhiJEenDixHbDLFiK4MCXUzisCk9mkqGkYf5E1SJz7eIOYnP1+4Q1WB?=
 =?us-ascii?Q?530GkvkGWm1t8jOOvClQ8MtFRTKlqh7XmM6+FOoJia2qXUedHXoz9ln1pLlN?=
 =?us-ascii?Q?TDY0IK9HAHNPv+kADVRmBkNgmoW/QDIsigp0spenYoQFuf+f2roplt6YfYPz?=
 =?us-ascii?Q?MQQJIJxa+4qXh/Yu8U+BbUKEmtk0ZK5tU5X+VeSLhIBFxvjx/UBRV0rnwhvN?=
 =?us-ascii?Q?mN5pwDkoK6sAgSw80hpkl/Vzccy0EvnefSvUS3vv7yuBRjYPATFWK6V4Lx6K?=
 =?us-ascii?Q?Lt5ssjgMiQmGN4LMzxoUEWRo7RO3ivjd63TnTkW7OUIu51YTP/pfF2ek+SW7?=
 =?us-ascii?Q?YuMt2TTqnUdRHXUieVz2uWpQTURBGkvpgiDyV26KMhF0AOj/sEOCOOIZD9VY?=
 =?us-ascii?Q?dz1X/XiBMA=3D=3D?=
X-Exchange-RoutingPolicyChecked: PK9QGVnnxAquDv0jTnzMFaP+08CuJb2oTJLlnudNdYPt7saww/cgH41C3TTzA8FyTWRS11fDvK2FvwP3P7V2Vv9xQ+q1o7N7YrhTX8I1HeHTycuGK22vqfSjNyVX8vSs8T93mXnFKf7SBU5esXWwpc76Q4ap5ceyl1X7hniAJ3Rf8Lhl933QROnfOW3c1R8s/VUteDLb+vyP905O2G11/+/6Aoj9FDrvnzdxc7FwBD8x5zRSoiukGSTIlyL2Rufdw6sbTtkI5gHPqc6qSIyr4Dl23RJWnRcME0T9/8NryG9HOBfg2SBgrwDNiOGGw+F8UBOJl8sV+9oEVAbtxjCzPg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b3d483a-168f-423a-b3e0-08decbe332cd
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:40.5755 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FJfl+krE4V0gkZMzqueYo617kUyJj0eVmS+Llje/xGjExoN1Man+VdDGDk20K5qM38/rR7LUEEmhAdLf7iR7EA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A3A9B695171

Add intel_dp_link_caps_common_rate_idx() to look up supported link rates
tracked by the link_caps module by rate. This prepares for tracking these
capabilities internally within the link caps module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c     | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h     | 1 +
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 ++---
 drivers/gpu/drm/i915/display/intel_dp_test.c          | 7 ++++---
 4 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 09b60a0cd6fbb..84d9636f4adb4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -61,6 +61,15 @@ int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
 	return intel_dp->common_rates[index];
 }
 
+int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate)
+{
+	struct intel_dp *intel_dp = link_caps->dp;
+
+	return intel_dp_rate_index(intel_dp->common_rates,
+				   intel_dp->num_common_rates,
+				   rate);
+}
+
 /* Theoretical max between source and sink */
 int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 3413f6f760453..7d7d3d11ba3fe 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -14,6 +14,7 @@ struct intel_dp_link_config;
 int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
 				   int max_rate);
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
+int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
 int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 61ada34ab9c8e..ec9bd9b4c800b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1891,9 +1891,8 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 	if (forced_params.rate)
 		return -1;
 
-	rate_index = intel_dp_rate_index(intel_dp->common_rates,
-					 intel_dp->num_common_rates,
-					 current_rate);
+	rate_index = intel_dp_link_caps_common_rate_idx(link_caps,
+							current_rate);
 
 	if (rate_index <= 0)
 		return -1;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index ba44769c9cfbe..da7632536dace 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -14,6 +14,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_test.h"
@@ -32,6 +33,7 @@ void intel_dp_test_compute_config(struct intel_dp *intel_dp,
 				  struct intel_crtc_state *pipe_config,
 				  struct link_config_limits *limits)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
 
 	/* For DP Compliance we override the computed bpp for the pipe */
@@ -54,9 +56,8 @@ void intel_dp_test_compute_config(struct intel_dp *intel_dp,
 		 */
 		if (intel_dp_link_params_valid(intel_dp, intel_dp->compliance.test_link_rate,
 					       intel_dp->compliance.test_lane_count)) {
-			index = intel_dp_rate_index(intel_dp->common_rates,
-						    intel_dp->num_common_rates,
-						    intel_dp->compliance.test_link_rate);
+			index = intel_dp_link_caps_common_rate_idx(link_caps,
+								   intel_dp->compliance.test_link_rate);
 			if (index >= 0) {
 				limits->min_rate = intel_dp->compliance.test_link_rate;
 				limits->max_rate = intel_dp->compliance.test_link_rate;
-- 
2.49.1

