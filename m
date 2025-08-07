Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A0AB1DFA9
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 01:02:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B28C710E49C;
	Thu,  7 Aug 2025 23:02:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B4A+H3iQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D811010E49C
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 23:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754607729; x=1786143729;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=lsxrHn7aEwXPnuHwq6qVsWeKrJH2XnC+n2/SJdjr95k=;
 b=B4A+H3iQ01PjBvfQZ4X7pQpcCGV4HNrTAeiaGpeHJxbZif/QN14Mem4I
 cnhF+exhGC58lc62zLROyh0zXu2QpFPchhLUc0VSj12f5NVueCXdSWGKM
 enqGL68uWyKXYYGCi39D+Ju3F5QKroDbvr4NzWGk7Z4QNJ2ojPaU8oBQ4
 VJDNoFHG1VHDqCq4JLPtQZwSDkr2oQVEhmWLUPhwDE7lu51AOTkKKxz15
 boEO7d6g/mfS40q6p3AyBjCquoSs8+apVywPNx0OXBiNf0ZJnWMqDuCii
 3WCJzF3WjyXBGEukakWRYoOYK+17ZKyPvH78wvfG9Isk90KgaZVs0Fm/Y w==;
X-CSE-ConnectionGUID: zgSKBLjyQ96PSi9UFRgM3w==
X-CSE-MsgGUID: 2XQJBxyrRrykr1uo6qCTtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67221963"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="67221963"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:02:09 -0700
X-CSE-ConnectionGUID: /FfbWrcGT4i7nLNdoVvAqw==
X-CSE-MsgGUID: fpaFih1aSHKPijqIuk8DZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="165519481"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:02:09 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:02:07 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 16:02:07 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.42) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:02:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x3KRltkw0QZ0ANpZ+GZmtmAjSgA6UTWOLLjYzEMnkDaALEtif1tm3uk3UPY73uz5Ljmxgw2ggmR9YXPG1PkgzfTwGjK09Cz8z6i97GtXVEPPsLNd8+yUGeBz/20xawYTP/G9KgHGQxQE0/4kCon4obVnq/7zDkHVAJfK1FcJDMnLxe406bEp5Bc8z9zPNFpx3oZHgS0uikXvEskI/p7Ph68fv6aUCjhxcd/Z1wvz8shUzVRH5uvHKgVxLUNUFLk1jLQ5OXEv5j5XIUaEf+7rJ81hdDJ+YmRo8p6CXp7NXQanX1pWmloXdXjjRmyYeLNWZpfwvlgWL53bnV6GoLcwAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l1hbEmvOBjRvNhElpfqG+Z5MQwvejn7xNkTKSwsFaXQ=;
 b=ZOxtRBSiH/KWh2n719s4Rt6QZlk94XM79wrhUYjnFwIn+WlImYYK+f8GDCvKsX/z0W6ETlRado/HLP7/jfVIm2e91PvRq8MwVTPSWvGV8+cFjBeRoenEIC7BRagVB4kX/rLTzk4YfDMde5p/pfUD9xuvUvFMP56IA20BFUqo1G/m32KSMl3/arT+kxLt3DOs7KH1/s48+NOIM42SZTXjlizLDipb0cKF5w/e5lrpSN9RkHCwZ02HnbWug6sPBDPNO02l0KzP1xb4idyxLeeoqa43Y9XvmM0HKyA/dVumnXK0c4IUhIyg41cwmtOuLSRCmUEkJBmAYjRK9V8YfxHcfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SJ0PR11MB5134.namprd11.prod.outlook.com (2603:10b6:a03:2de::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.16; Thu, 7 Aug
 2025 23:02:04 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.018; Thu, 7 Aug 2025
 23:02:04 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: [CI 5/9] drm/i915/gem: Clean-up outdated struct_mutex comments
Date: Thu, 7 Aug 2025 19:01:49 -0400
Message-ID: <20250807230146.128362-16-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250807230146.128362-11-rodrigo.vivi@intel.com>
References: <20250807230146.128362-11-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR13CA0188.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::13) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SJ0PR11MB5134:EE_
X-MS-Office365-Filtering-Correlation-Id: 654b6f94-8e3f-4848-e4d0-08ddd6066cd1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?X0DD6OmMixuUEPzyl4wUYsi8jPSFtKaBRrNV6N60t2kf7zcttr9k+6URH1Vt?=
 =?us-ascii?Q?+uUQjJNwup25C3yQB/bhjLZxo753YU8ZEIN3hkcVq6IWZ/eoGHuwseoYJegH?=
 =?us-ascii?Q?KPGi6a3Kqi9Xfa/v1X/NtXxhEL2HgCKbcmoAbpBZjmLO6bXSnRcNcrGVzeok?=
 =?us-ascii?Q?jNuw9ghYs5WV1RmYoVXHzQg7dC1WrV8AHW88VC3j3BFHFRFLH0/Dh0aJIeTX?=
 =?us-ascii?Q?pr1aExNvxfvjOHp2Vmf/5ILCag4Xs/PJwI9jIPcQAhhMGLSUPOGpJ6yRMGfl?=
 =?us-ascii?Q?1GsbZqk+UnvOGcC3PkdAbfjQ2CUEYn7uM+KWk/tOxcBteUuvpD4NdRVZsFrj?=
 =?us-ascii?Q?C15PY0sSJVStEITw+8e6CjInHfQ9AeirGLEo7tSUz7wlDhrq70tBzoW278un?=
 =?us-ascii?Q?b5xTyXTgHCn6iEQSH0vFSDHgqT/3sbOFK0DsrJEHRPGtmrh4w4bvgVkQ0rcS?=
 =?us-ascii?Q?dVIF1a6IYDW31VxPG6j+Jl3OhDob6fvun9A8lAbtZZjofmHQouWq8Im8JebE?=
 =?us-ascii?Q?4Aih3mPXQNzu6HP2hbzD1w7UGhtaUhGEQ5CLUoXIUF7AzgryUE0a8A2a0rl/?=
 =?us-ascii?Q?UMDn8t8fhWHjvKEASg4DCca2vLQSeRnaTkaNgFxxe2zSqX2IP8Mqmvv8BTjR?=
 =?us-ascii?Q?sWOh51QBJkwLphLVtF8Wf/BRn3Dhpkho6Vm2VB+VlhvMxHSDjMXIWn9yiNK1?=
 =?us-ascii?Q?k+LQjBpxANa0/GLLCdUYMFoCsIFbpZDqpAK7GbrfMKX/b65e3An+fC9XERgB?=
 =?us-ascii?Q?IFObEedjiWuclkeqYJpb8VxtiRo7c+yQHxu9XIPFEZjvEP6CyDcHMVDufKCr?=
 =?us-ascii?Q?CoKqMceU+DAARNuMmmHrBl649PzWRjy2aB8oR47tJzJiFYj1wd94IVVuiAkd?=
 =?us-ascii?Q?zp98DCkdgO54Ke36iW16xHV/pQI24BgwNF+SdySubkFkLz720lSnBmQIUaNe?=
 =?us-ascii?Q?ran/WZfmFFoLljUCqGScDo04GltF7PSHnSHnBMw+Y87WrGzt2RfC0W6e7jfd?=
 =?us-ascii?Q?FeixhWjqs2WY/daCe9f/OcCo/JhHe3z7Gbz+d0QFeum17zFMJRALvgfuptaX?=
 =?us-ascii?Q?/NFdsxYTTSbdzHWw8Xtpi7hPsTVKSj2B0rpPWgjfkR3JCWOcIQzhobWK3iMc?=
 =?us-ascii?Q?nO8V29+cHBTuCL7bhvkZ2UoDRlGeXIv4VW2ZrGije6MGmyO/fmO+4XOk81Xb?=
 =?us-ascii?Q?dcOBBKax7wCp2A/MhTPJC5kzNslD/bDAdtHjbmd4/2Z6ko5L1qeUI83W8B84?=
 =?us-ascii?Q?oCMg4DDip6ZVS7DPb38vY9WM11GWgjC/bRaQPHxI3Q4FF6OLQ8fWvJnWpY1D?=
 =?us-ascii?Q?dhP8oUpjuvWAlKDvmXo0ObNZXJPkGOKlJpih0a/50MpvhL7JAdcMItXmG9Na?=
 =?us-ascii?Q?IB8SL/Kq3UQw16Lj2KQWJajzeaooAaA8g8DXXsSvKM53kA6Re8WBab9KpEur?=
 =?us-ascii?Q?xxmIuMzuRkk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lBUzRqz+pxT4CcLYioR6iHAO8JUfOcMtsFCfxC7kys3QS4De/CzRyJIp7HBm?=
 =?us-ascii?Q?KmxTAmRs8gLmWzDInAzkHwrA+RBlaoQab17Rji1z/bTSMYo5BRTaDeXpPpSA?=
 =?us-ascii?Q?khRJICQjqLywsx9bgQH/lEMs6BzWl+Y3m+SXSVGPVxdaIb+v1uCVYWyCucRx?=
 =?us-ascii?Q?37k/rBpomzzTsM52V5A25EvOJv0SdGyzkQoSngujjyYe11oFvDX7wVzj/MAg?=
 =?us-ascii?Q?SHsG/lNqtbWQRU42aLpWqpoANlQgxZ9AmxI3SnxmgA6RFn1piFH9DO3q+W3q?=
 =?us-ascii?Q?ZPuA1MXK6DoxGswNyiK4nblQmbplWwMZwMEWtnLE6cgwbad7Eoek5RJid3mN?=
 =?us-ascii?Q?CSvR9QYw2nGSt9UylPPudtch/nflXlh4GoD1E7JJ/Iqo6c+Y2WBIi/uOnZBL?=
 =?us-ascii?Q?izAvCW/GQXz5iQ2VI+On9QKMK92cadXSm2qaiosAqyYS79lORJNqTQt9vG9j?=
 =?us-ascii?Q?syYTU3baa00/1WImBeD9rD+g81Q4fpn+VxGeIYKj1y9PpLbaGzEsb6/BMqTk?=
 =?us-ascii?Q?n7+p5EwF9sLbyruRy9mwreGBBwBad98WuJdi2RYqFh5EMB+CBLBD90H4mwxe?=
 =?us-ascii?Q?W2Sv7tiJt87Dzcve55q0YkNl3djTN4Qf8gxpf3+duEGyS18ofBI6YbKHzmrd?=
 =?us-ascii?Q?+hfXA5TBhLr2/sbScaCExK+9V3QdE5q7yzCo0pmxKmyUvQB2zB43NT7U/tX6?=
 =?us-ascii?Q?o7/QjII2QvCQUd6uX5Prv2CVgHLoDF1yIrLLqvVzRDYeuJfTwca8IRjXaFDR?=
 =?us-ascii?Q?RGHUF4f/fS7pRnrbc4oYx63DO3oRFrSr00u9QDEaaRnvToXZyS4LHBIUU1dr?=
 =?us-ascii?Q?EgwfLgAMZC0CtJr1yUVOvZSi1h97BcH6Yvv1TqV6c6pAd+y8XYqgUwl+CjLk?=
 =?us-ascii?Q?CseVVBRJp0ENhY7jVO4hqNLAAp2xwKAWQth5NQDUX1UfTuE7nQsiVWFDZV5J?=
 =?us-ascii?Q?jbUJTqVZvgnsPCuKxHQp5YP6OsAfy2VrDIulrYwS6OJvgveLiMJcNBgnTIem?=
 =?us-ascii?Q?pIKjYdrt5L4Pf5cQAEFhUmiWgLF274Ert+H3M09EtY4mVaJUSzIp2hwsOoV5?=
 =?us-ascii?Q?ue+zOnMRSukyU5M34llNhGx2jn3ejdxhDYqj00mHeKpvwMcZ+mtoDbJjFmtV?=
 =?us-ascii?Q?VFQ84RrQo7cVq3EReCy+/tvMd9YFxOEd9u+87u98uPpH+xKxxB92S8x4zFnF?=
 =?us-ascii?Q?/ks5AtQ+JqkNLuccsDak6+Ym+Ghim1Og/WosQAMvOr5P4euSQ2ssXynWUocq?=
 =?us-ascii?Q?kU/IRO8O8vbJnr55Uz5pcgsvj2QuLaW6E4g45WR+CKGs4iMsJnDYlc+OMg6S?=
 =?us-ascii?Q?GH3IDM5aTN0XtoLjtbd5UAXeOwqOfFiiACMKD4Qywc9VIiaQLwhd5/h5apf/?=
 =?us-ascii?Q?/LWJFc1qGAJ8zOP9O2AgknFUWWoCO+4K/xV/ZOZQsCgkoy6JCFLI4LgYctx9?=
 =?us-ascii?Q?p6iPjzuMZnYBsIkukv6yUtuY+TDBktT1HozQ+erN8UG1Rd1BjLF8zM76V8eb?=
 =?us-ascii?Q?SCvMIW7/hKbSw492CZYWBgvbPh9rg2l/OzFHa/WMpKeyo1t8BfTPUNOO2n4U?=
 =?us-ascii?Q?EyjMU5bKdQFh7ID+v2ZVEa4MLceyNs3Nidizg217U2PWOoNh6mLaou3jRVPJ?=
 =?us-ascii?Q?0g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 654b6f94-8e3f-4848-e4d0-08ddd6066cd1
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 23:02:04.2849 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HVrMZk9jQllG/Jl78sL40tkCDqSge8UzkglZp/mvYGkvgpur1P6bLwKRfelrze/cBJY0Yjjxl4eD2i9YW4/mZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5134
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

From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>

The struct_mutex will be removed from the DRM subsystem, as it was a
legacy BKL that was only used by i915 driver. After review, it was
concluded that its usage was no longer necessary

This patch updates various comments in the i915/gem and i915/gt
codebase to either remove or clarify references to struct_mutex, in
order to prevent future misunderstandings.

* i915_gem_execbuffer.c: Replace reference to struct_mutex with
  vm->mutex, as noted in the eb_reserve() function, which states that
  vm->mutex handles deadlocks.
* i915_gem_object.c: Change struct_mutex by
  drm_i915_gem_object->vma.lock. i915_gem_object_unbind() in i915_gem.c
  states that this lock is who actually protects the unbind.
* i915_gem_shrinker.c: The correct lock is actually i915->mm.obj, as
  already documented in its declaration.
* i915_gem_wait.c: The existing comment already mentioned that
  struct_mutex was no longer necessary. Updated to refer to a generic
  global lock instead.
* intel_reset_types.h: Cleaned up the comment text. Updated to refer to
  a generic global lock instead.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c     | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c   | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_wait.c       | 8 ++++----
 drivers/gpu/drm/i915/gt/intel_reset_types.h    | 2 +-
 5 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index f243f8a5215d..39c7c32e1e74 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -182,7 +182,7 @@ enum {
  * the object. Simple! ... The relocation entries are stored in user memory
  * and so to access them we have to copy them into a local buffer. That copy
  * has to avoid taking any pagefaults as they may lead back to a GEM object
- * requiring the struct_mutex (i.e. recursive deadlock). So once again we split
+ * requiring the vm->mutex (i.e. recursive deadlock). So once again we split
  * the relocation into multiple passes. First we try to do everything within an
  * atomic context (avoid the pagefaults) which requires that we never wait. If
  * we detect that we may wait, or if we need to fault, then we have to fallback
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 1f38e367c60b..478011e5ecb3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -459,8 +459,8 @@ static void i915_gem_free_object(struct drm_gem_object *gem_obj)
 	atomic_inc(&i915->mm.free_count);
 
 	/*
-	 * Since we require blocking on struct_mutex to unbind the freed
-	 * object from the GPU before releasing resources back to the
+	 * Since we require blocking on drm_i915_gem_object->vma.lock to unbind
+	 * the freed object from the GPU before releasing resources back to the
 	 * system, we can not do that directly from the RCU callback (which may
 	 * be a softirq context), but must instead then defer that work onto a
 	 * kthread. We use the RCU callback rather than move the freed object
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index b81e67504bbe..7a3e74a6676e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -170,7 +170,7 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 	 * Also note that although these lists do not hold a reference to
 	 * the object we can safely grab one here: The final object
 	 * unreferencing and the bound_list are both protected by the
-	 * dev->struct_mutex and so we won't ever be able to observe an
+	 * i915->mm.obj_lock and so we won't ever be able to observe an
 	 * object on the bound_list with a reference count equals 0.
 	 */
 	for (phase = phases; phase->list; phase++) {
@@ -185,7 +185,7 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 
 		/*
 		 * We serialize our access to unreferenced objects through
-		 * the use of the struct_mutex. While the objects are not
+		 * the use of the obj_lock. While the objects are not
 		 * yet freed (due to RCU then a workqueue) we still want
 		 * to be able to shrink their pages, so they remain on
 		 * the unbound/bound list until actually freed.
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index 991666fd9f85..54829801d3f7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -217,10 +217,10 @@ static unsigned long to_wait_timeout(s64 timeout_ns)
  *
  * The wait ioctl with a timeout of 0 reimplements the busy ioctl. With any
  * non-zero timeout parameter the wait ioctl will wait for the given number of
- * nanoseconds on an object becoming unbusy. Since the wait itself does so
- * without holding struct_mutex the object may become re-busied before this
- * function completes. A similar but shorter * race condition exists in the busy
- * ioctl
+ * nanoseconds on an object becoming unbusy. Since the wait occurs without
+ * holding a global or exclusive lock the object may become re-busied before
+ * this function completes. A similar but shorter * race condition exists
+ * in the busy ioctl
  */
 int
 i915_gem_wait_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
diff --git a/drivers/gpu/drm/i915/gt/intel_reset_types.h b/drivers/gpu/drm/i915/gt/intel_reset_types.h
index 4f5fd393af6f..ee4eb574a219 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_reset_types.h
@@ -20,7 +20,7 @@ struct intel_reset {
 	 * FENCE registers).
 	 *
 	 * #I915_RESET_ENGINE[num_engines] - Since the driver doesn't need to
-	 * acquire the struct_mutex to reset an engine, we need an explicit
+	 * acquire a global lock to reset an engine, we need an explicit
 	 * flag to prevent two concurrent reset attempts in the same engine.
 	 * As the number of engines continues to grow, allocate the flags from
 	 * the most significant bits.
-- 
2.50.1

