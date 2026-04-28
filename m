Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNqeC0iu8GkgXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C87C04855BB
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1385A10ECB2;
	Tue, 28 Apr 2026 12:55:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OXgcCL+z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1181910ECA0;
 Tue, 28 Apr 2026 12:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380928; x=1808916928;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=1p8z495vTJVxLkwhJROm6qY0PkGwsidd/eZLDSlmuWQ=;
 b=OXgcCL+zHm8jVjxMJ3Jxc2uIC+fqKwjkdH0q+LVvRWuWuIugfTMrTpDM
 okY21LsK8aiBvnBS1wPQPIXyEhQUhLBKl/pxFUKzBtZ/MkmRDEREZslj8
 yCdF8BQTdusjunSgygKP4QDuPBT0CXe9Hl4HMASNFuyMPKZe00WP9DetM
 FE1NiO0yeCHw03mqiPe6jpVK+hyxxqOGAJjCtvYJRZbTtsrAhuZ3sqzua
 N70IuIgWPWqmd8srKU8GyObEUChgI8Yi3j1/ZiXxpinjkRQmbehQNLG/p
 Hydjg+jOdzUfiNMX6mS0hCf1WkB8CHqTsZbr+2ORlR3L9cry8+coU+ZJR g==;
X-CSE-ConnectionGUID: O3jrCYdqSi61AcJZbB6FQA==
X-CSE-MsgGUID: WUgAjMLASJyMmLsteimQXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77318782"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="77318782"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:27 -0700
X-CSE-ConnectionGUID: vyZ5pTeLQmaaIeh35mVu5g==
X-CSE-MsgGUID: MgDP5w83SUa9oelE7CAkcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233818249"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:27 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:26 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:26 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XfwVHdj99vn5UitQFxqqAn/eIpfzt2HqKJ5oQ6nSteKR4OkFd/tlyUtBaEjAMcyv1OmDdKqWCMte6idLQYAuMqxfYxWq/kOOCPsfMqdGuQmw+Vgq5FFfneoS1QQqpUUhj44PjdaC6ENKXeXg59P66nOTCjANqKdE+OaVeR3NYHUbbXjmuwDqhejcBIdXVW7DKxx0G1uVSY732yt2O5vN5f4MXaxOHo6J+2Fn9+4oVHDwjmpkEVQli+/jP6vcWcHUUDfOOsbmDPKiI8TazbQHmSWg/6xAtmUi0eIPz3t0YBpTJIiDdmwKadkQeET7lYsSneIjSxoLuG0231lcboEs8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6hio9XDMeA+c/6jOssbiTgE7CBCnD/u5/hldubgzhZ8=;
 b=SBesKlA5WxprqqnZjCjBdpIJgh2jo326IQI2Xc1a2W+mtEBT54CBZvZQg1cZ4Ulg56QfHy4Ur+BouR4yqX8fHDhxywqEeErlfVfUGyiOqO5rtrd3119/IL2j8OZ9KQsVbkzux/UGYSN21+9+i5GrReo7RdPhEu31ZmMDdP58R8QroMvOZFPPqvf0oUoasVRLi1fOmViozPyY/Gckf8lMPTLOZ1h+G0dtmmILh0uv4HzbZI09y+YG5nZ+oWjDFO1N2FoaKLczROTsOFdYQbcqpCyBXyEqC4IgPHr8yeFg7/b65jAUEPq4NWvvqxaJkt3zz9ebhxbeTQIeXMPOyAzWUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:22 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:22 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 093/108] drm/i915/dp: Use link caps for eDP DSC config
 selection
Date: Tue, 28 Apr 2026 15:52:14 +0300
Message-ID: <20260428125233.1664668-94-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9063:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d84aef3-ed89-4a2c-5412-08dea525631d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 8IwBdpQVWhuTelKRmkWJwwTqnC7PcrT8GADc4mFEnr08FjZ63ZK5HMzXflraBtZpdaZj3XBdP1GlFEKHFxWmXkzAEz14VDO/zhFxVXnwbdVXbK54MOFouZjDf1k2tI3DGSD8OVa1qynrDvf35NuFnfxcIiUQQSrPxxC4wlgO2rXXKgW136A1d671ctaEz4wacmTAhQIY8iSq0W00C+LvcFZEs/I4Y/DPVws7LvqYyPRzu/yMsRIzlANl/KmFRUYxlLM5S/SLuWQ7ASZCcDUdfrrX0EB9MeqhWt4sRmNCN0hX41EQwW+LKpsQfWG5i6LKZ3g8wDMpFHNxkBHp4AsldTrslCYlc5nVC03VYz+UIPt3uQyOn2tNvTycY1Yep+lX2RLon9xKtgOYS6M2kXwshUEuzaduks9YwQTt+nm0JGXRILvuVMTxbVxyRJqhdH4aeDJ69Yr5DTS4R9n6tIWsxTZbyGuAXONOgzQkijFOnzsiptVvvO0igYoRyF/A+9BLCDr093kKzHnzGyWUUSrHfJsMDPSHs/DQfapYctrFMizcEpVzpr6TGFdvSOnu50vpQl9v+UR6xgWEopeiqcJJ41JRuCmYyJQc1FkirSlRvaVpULwwfKXlZb5rq9B+ghI4bvnSwnStM9goNdFz2xqgKUIleSMAmM3Gl+p4DEAgsbQIv2KZ4c9NW3YbBdRanAePlH6Yiv1MqEVvKSGKbb4PVpEScZZK6mTMABMiWnz2z2g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hZTvbLCpsCJmS85I07yMNt5WsY0710eAuGvX5zFsa09bvGHpg+9Ab55BAJhR?=
 =?us-ascii?Q?Jn4H0+vyKOh1qxlhYbCIvku1EShku8XersP2BWQHo8Dlp8aaQ0sEn5ssh7D7?=
 =?us-ascii?Q?S0JRPCs1xddgahKj7OvM5+oIiDMKfqvRt580EuiOK3IJb+MHL1any+FdjflC?=
 =?us-ascii?Q?5IRnUsqssL7Gihr+sin971akUHTeCXz3puFRMkRj2lhwuZjb6i4djGWI3PXG?=
 =?us-ascii?Q?6oc4ShTGUjDdvkZEh6jgDIzxaCB1FY0NoTpQUAhyN8KY7vgZvadSkMJqaT3Z?=
 =?us-ascii?Q?VhSpKUOJxA4kiJ2iP/TtqK06hGxie+3mN+J4r4t11RS9iOTHXj0LDoe9LGL1?=
 =?us-ascii?Q?0nAHhLA/uj1zzB1fCthVdcb/2cFP1AnmEVBbH8ZBWzln3TVR5yEdGOOeukAE?=
 =?us-ascii?Q?sy2wdapKjZzsDQEtj4fs2y5kXDXxfZoKqbUgD/Ljq/rSEjviGbNbnAavmyhr?=
 =?us-ascii?Q?zb9Vu6+4mTJH5ns48XRBHotj+anhxewjrh/gKfgwQHt6Ij5QrLSd/+zOkBmm?=
 =?us-ascii?Q?RixI4gGKu4ZSRU7I2Iy0mf3ptPdofMiZC3rfq6Q8XW/tW3hqImfLLYeSq5Dh?=
 =?us-ascii?Q?+UJ3t2jW3qVf3HiWw+5ir/C5dwjcGhXL7yx2CAz0CvwlGAhTVZqSkpFbU1mP?=
 =?us-ascii?Q?QmHWPUTf6G92ddLqW9sgzYVF6WqB5VyAF2w0n0HQGKjeY9+pyhl8H9PFr3C6?=
 =?us-ascii?Q?8njfFbZ6PboJWYs352v6BeKY4hXJbF0cERyJNd3JMGKqXkDiNPuE3IeVcO8E?=
 =?us-ascii?Q?Wa7/Ivqn0X4sz1xlktiBxSnMBX9cJ7EhGt2iFJrkf/bcug+DOFMjTaiZCGuu?=
 =?us-ascii?Q?ABJBoQi+g0EeG8zyj0P54vZsBOKGcYHdjHNVgLWMRP/rIRxIeuw0Pj7cpoP2?=
 =?us-ascii?Q?2n4QBligoejWK0KoR/HXJJRSSCo1zK6QwsN6yRqY1DdKzGODrQAgS7RwuMdp?=
 =?us-ascii?Q?3/y8KMIiWbZvhaxOOVoFPTojG4OxmayvyQOPaeP6QYJLBsUVD0+ScIZSAtHc?=
 =?us-ascii?Q?P6685wT7xJPuPK2SaGeuOuTxBgPXgJI+FpfGtPVoFKynDs16/cEOOydVzZeZ?=
 =?us-ascii?Q?TrhTbpqm4r89chQBplKdNz7CXYS0F/CsHHNrVoX+Db4bv4E1YuvODvLIzX41?=
 =?us-ascii?Q?E5KXg46wWdkHxZPanLj8TZtlcoBPSihG+2i7Q1Z322HcrbjymaJvh84VCR/n?=
 =?us-ascii?Q?eveAkm0QeUf6VmojK6avhLN3dD7TFP5qHDP9aAnhK/CeT+qrLec6tS+OWO8f?=
 =?us-ascii?Q?JrMdm/+RADliCpWXheUvNiu8+gDhNBHJQQcNbGwS5Sx2aGnw4igdTPB+8lPi?=
 =?us-ascii?Q?hU9JfyoN9YRUhayOahVcmaiUWyYG55w/0NMnnByTHMb6hNn+/gEnKWJZvRLZ?=
 =?us-ascii?Q?LvNVZu3Dq1nZm0qe0D8XN7/pXMbnjv7ab3G6tl7Wf+mD2q/YXifLcfsa5w+7?=
 =?us-ascii?Q?O5OXIe92Jh01JaYhOf2g8QbXb7PEpbCqFrcAX1dW85o6U5hA10Zgu70tDogW?=
 =?us-ascii?Q?astrFnRiBNKYWWE8pZTDiQuvUBukx7ooi4T4xA8CiKD7kDcnH1+Hh4i9Fgj7?=
 =?us-ascii?Q?u724JKZI9OvaRmxn92J2nYEULkBBmHFZK/0MB29HpzS4A11sukaAAOEVY6aM?=
 =?us-ascii?Q?smkO3bz0APLOjydcipia93hb5a0v1QFKensQquUzAP/+6Xq/iM83CaMLi2Cr?=
 =?us-ascii?Q?7tCaoBEHH2ntDEdLNKz0ErQhqBgz7F2Mh+hBHodenkeNFoRuxjJMJ1HSFW/G?=
 =?us-ascii?Q?UJq4L7Nqvw=3D=3D?=
X-Exchange-RoutingPolicyChecked: luMLj6t3ulPJpB9rL+Xw4XIxEppsBm+GxlN1z2/0rbPFuebGUzWUjuYuwuBvyydc3LGnfoHvVIIoXWtwbPLgMMcBP5WQgd4u09Fj82sy4cyRBORL1kHr9Lzkiorg8E+4tJDKxBzJETd/PguJjwK90YqIftk5Cp4uubW95OD2uBhKd/dVMbbB2VyvQa1N4ZGEt9PixMSKBL2FBkIUTN2zViiceDO+QQ2B+NwINt3LgweRVDEvfvH/44iE87vWebN1lSX9kbkuFAmGXoRw53LeZobSS3haiz9g6AdynbeFaWs9nA4FJ73Ny8VCnPKiWiP2CTlCPOdHNk3uIF+3EBgCAA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d84aef3-ed89-4a2c-5412-08dea525631d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:13.0838 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JQWcXweao3jj2yPBNVQwWR3ZwfTvUmBnpPEFymnRoA08yl8AYcwpfYJPvCYZzC5RUquXdjGP9/X26i4FyfeWzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9063
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
X-Rspamd-Queue-Id: C87C04855BB
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

Use the link caps helper to select the maximum eDP link configuration
for DSC computation, instead of using the separate max rate and lane
count limits, which may not form a valid configuration after individual
configs are disabled by fallback.

This is a step towards unifying configuration selection and iteration
across connector types and between compute and fallback paths.

The state computation should likely consider all allowed configurations,
as noted in the code comment; for now keep the existing eDP DSC behavior
of selecting the maximum configuration determined by the eDP connector
rate / lane config iteration order.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 62fed6de83b12..c33209ec7782f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2243,7 +2243,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 				      int pipe_bpp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
 	int bpp_x16;
 	int ret;
@@ -2255,8 +2255,19 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	max_bpp_x16 = align_max_compressed_bpp_x16(connector, pipe_config->output_format,
 						   pipe_bpp, max_bpp_x16);
 	if (intel_dp_is_edp(intel_dp)) {
-		pipe_config->port_clock = limits->max_rate;
-		pipe_config->lane_count = limits->max_lane_count;
+		struct intel_dp_link_config max_link_config;
+
+		/*
+		 * FIXME: Clarify why eDP does not use the regular SST BW
+		 * check and instead always uses the maximum link config,
+		 * regardless of intel_dp::use_max_params. Then unify this eDP
+		 * path with the regular DP path.
+		 */
+		if (!intel_dp_get_connector_max_link_config(connector, limits, &max_link_config))
+			return -EINVAL;
+
+		pipe_config->port_clock = max_link_config.rate;
+		pipe_config->lane_count = max_link_config.lane_count;
 
 		pipe_config->dsc.compressed_bpp_x16 = max_bpp_x16;
 
-- 
2.49.1

