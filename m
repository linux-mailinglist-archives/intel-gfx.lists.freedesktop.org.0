Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGGGFMOt8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 025AA485258
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CAF010EBA6;
	Tue, 28 Apr 2026 12:53:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UKji9euG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B01610EBA2;
 Tue, 28 Apr 2026 12:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380799; x=1808916799;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=1cvjCgPRHIxg3ib5eLwLqOmj8cEq8tsz+cF58jl6RGM=;
 b=UKji9euGZEsPZBxcCuvHZkJyq88v3wMxfcqjvj4m/1paQfsApYkn/4l4
 Xr5lRQJglZoDCE/WEYXOu/sgFCUtbFOdPXQsCYhzewPAeu3JQ49ntcTSh
 3lIfg/0avviyY6Mn+D47p8PHUro9cEXiTIZTFFbTtfAWWLxqKqIt2sMHy
 RjGBvEtTdLVYCL3rZ0Mzce/K50cAXZYo6IKa50uCpLyjiNQ+8nTWdzqbX
 PLhj+dGmHzW0UhWUbjPpPtHDdh/VdKkqnh4hKmNVgInnQ28jJeL8YM59A
 LzEo7m3wqTH83uNFRwGAy3U3lppU2XL9Jh5QAUvPwYFxC0OHdYPM08cAI Q==;
X-CSE-ConnectionGUID: s+lo/ApWQjKOBybUHTge0g==
X-CSE-MsgGUID: c0/G7IPjT4GkIkI6kx0bdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203063"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203063"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:19 -0700
X-CSE-ConnectionGUID: aPWJshzlQPuwaFhveUlitw==
X-CSE-MsgGUID: JDs7r9QWS/q8Zpj5xo1oRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244040"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:19 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:18 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:18 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.51) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NnXO6WCh7EZr1tB84zGZOjnoQX/vUXDYkwVMkUrD/HegTzBX8EcGqJt5zwqmwsJ23qAwbg6o0ZFvZXNb2WADmnBivETBgC3phjKo2gMN1oIEF/L1SHwYWg61LpvL1mE9Yj9ui01G6JrXbj2Lf6nH0JwYUdmOupYTyKv0ndcdlQb7dlGPRAvCIOhwfsE1HnQiXGdnBWwzbuz4P6Cui/NP/F8L1qlbd1vQFKI3VHRe3XNf4XRfiwF+a7It5O1N72KVweITEdiwXGD11i7UQb6IbhYQxhfP95Y0nSDhSLImL1R52iCH9oAThwC/GGLwVU9YXN+/mXHLx4W3OsDAifcGdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DFBq30mLT2A/mxXZtAkTFe5eD5NrZXeUSDWnNRS+5L8=;
 b=PeD5aXcGMeC4oAGDuyO31skiMnfBTyAMN+YrDrXxqNHsZPJ2HSzxRaUa4562nn7PPpUKBSWOpjHnaDqVqnDZgNypkzmpJrMzsCta4+kJIF+Ruk8Ng1kBiFtfpH8XIIcc9Z2QNWXXkzELKccXOPq6Xxof5YAzhvwAjr/mtEbe5VOoeSWRN9B4GtatqFm8FeDPPIx47NFDdDjYnnHe+LovM07HboFYa8swSGab1xPt6Gdd1T3TqITf5QEAiv8pKH885LNkQ2rPbAFCdzF9r+gdEliB+Ut8WjdwPSH7a/W5cAoGyR29y854ONuzAOwRLqNshN39QkYcQwqBfgM4UewDYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:13 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:13 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 020/108] drm/i915/dp_link_training: Add no-fallback link
 recovery state
Date: Tue, 28 Apr 2026 15:51:01 +0300
Message-ID: <20260428125233.1664668-21-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: 322762f7-e700-4d8c-258d-08dea5251bfd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: u3FNuVO02Lb0RgpuDIEWJ4iDBrfNYFDFU6dciY4BZyuEoFsf436ZJVNesHU/t8M7UQCIHO3xGBiQ261VcykyMhgEhmR4EhogvfF+mB0x5yBk21KpAwSbBPoQK00s8nig7dfFvYjDoFH3LzKETLtBdV0J6AXfPANnENH4uY1tqd77PaMCbvZpx00IUd89bTgHSLs1u65oDc/v+eGLrbJ6jB0ouM636dC3ZAK6E/7E8EK0af9mNNvyjiM2VRyQpVA7mWveM+1smQzXBAizJGjgHXC6rFF3/NI81QOwPGfvS0eGIqKJEUQl5lqS7DIqJwxBRTSrd/VLr4kK8DS0CDZtXkgdtcJuEn4yPQDGobtqfRniw+VLQa0CGdzhIWDy7n/eCj70iKV0mrBPWqrgMkweUEQI+jBtS67YIXyxgjm0Z2BLUfx4MlaMD0je/gr3yHnO/VSde+TCzUfLEABqHT0jG5fR9x6rS08WvdxjXUaonodgRD93clCPVS5qlzi5gRNdcVhJiVJYtr1hzY57iImpYNhKpkxRMEUT5ealypG3lotbdWRT4E6XSZr8UAJr5qzeg6BRiX/ErCUbIzc7qDQaHbqhDHU//IGEbD5ZaqkdsdGVg6QvqMhNykONnw2vbu9HLXRvjSaxPrZBLsc/OL2pEkAdrsAyIFmAoQH8blSqjK47O+DERjAxxL3AByzRjSdknM+FMcZedNgi+Mmm9TCVs72hrpCdd/FJevkGpYIgSuM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Xc9utLYNtEYFwP1z/31mW/+BNmEOh/XT7GFMvCmDsq1nZOzfflr4xQVlE7wm?=
 =?us-ascii?Q?a6tnf4cq5uOfMl2arXe0cteD7ayp3tybJWsZ1OYv3KS1kNUv1Q7gIuSU20mv?=
 =?us-ascii?Q?ZJ4ZV4cZWPHlqeKOdiUnxFzYSxHhvyHBgLerSBTfFesyim4XZg6pjuKocR5u?=
 =?us-ascii?Q?zVuL8MeNP2auVAfkSBuxzR3kiJ2jZ6Olw+qNM6yvyNMJdjyFq1o5hYTkspZK?=
 =?us-ascii?Q?BRJlek7on3x9uhTVjxK7F/Rew3haKa+edPj7K+aT2OuKS6z7bMAa5smYdW4b?=
 =?us-ascii?Q?XCKP+vlGVEpO6dSiNwhi5vHZMo/j2aogErZhnGvYCZasVUOdxYnO1pJOuiwz?=
 =?us-ascii?Q?cOgBdF4/DXnpi6lgHzMuPM/vc4dFSkQczBCsm3D3IpxLzpu9gsW2R1rXE4yt?=
 =?us-ascii?Q?iqdC4KZ1F+bDvPxwSIFCBNI2KVhuK3U1+ZLY4dBE9iFGHfK5Hx9ZxhXrxn5r?=
 =?us-ascii?Q?RLy1KndYN519OYvyI8TJJGNT8aDpQbwB4Shv8wclxiOWdu0TaxRNKjwCRjiN?=
 =?us-ascii?Q?ODcAFib5KoCmDPfvwaKIIQihpIFiOLXas8dsXuMy3kP2+x91Wmr+BnVzt9iL?=
 =?us-ascii?Q?EnXPZETN/5k6U3kg6bJM72YWclW+QoNVbTuUIImx6DGXWq2+vjhB4gPo3iZi?=
 =?us-ascii?Q?FstoPvyqguYQc9dF/WxSkJ//eMog/TXS8dM1APRfMY6TL7M4zxEp+HRvvDBl?=
 =?us-ascii?Q?ijG8jKDX8Mgyjid/Bp5XeWTDD4Bo1S/gQxc+cL3J/rNNMgo2H8+DutxKw8e4?=
 =?us-ascii?Q?CBpltwyGiK+nXzoLMEIbybWyswN5z6sr6Gmt/dnuuH+felN/pHDLJTfy4b3L?=
 =?us-ascii?Q?5vo+9PrwaPBw7ut29e3XsNE2vgizOugQkv3LUcaMM96as3adOECNe6q6vEQP?=
 =?us-ascii?Q?Gs2GxHxW2aNrGnIp2dm0b5Dwb7VD/N22sOQGI1RNoW7ACA74MfPQyOWSKEaN?=
 =?us-ascii?Q?jJg3zhILcoE9z7q7RFKN3OpHzUKTNQlyT2z35pkxeJBLqJFn5arB61Uif4Mj?=
 =?us-ascii?Q?xwPsa0glt7mJeIi61uLYMAqoOx1td3+aCApSJGtrhWO4Ddov6A1FoxsGlCRz?=
 =?us-ascii?Q?u2CkqX7o1I3NwZgjcDGo6tdvBAj9Y/obImnHwMET23JR+rFpfwTEyK7fz9hh?=
 =?us-ascii?Q?tiRRgAEPuyY/CrwqKua3FZAMjrt3/waEV5ehoePU87dX+PdW1cELdBJ5QrR1?=
 =?us-ascii?Q?Sraz7P7EwgyF1BhBW4Cr3vsEv1oCcSvM825lOEDURkT9LezSJWpdTnLMmU79?=
 =?us-ascii?Q?HVXDTPwhnXNzk7nxrukkQ0jD+RuRYgmYCpbFvmEDMGxxU69ZFfuifxg+oKMq?=
 =?us-ascii?Q?4CAK4sXxEaa0mzLHewiWWl7yqbizCFFfTxRNpfp46EgYcFjAnMUtPsi/HxJ9?=
 =?us-ascii?Q?4wUoF5V8ZW+WG4JYRjV9CDRm5v+nnZxIb4bn75od3HnvgSa5Rpa3oxGg9Kv9?=
 =?us-ascii?Q?3NzG7hqoq8gprU1wuFoOIlxaO5kO036rGboIOwEwMhzyEzdrjWjx5WdY93OX?=
 =?us-ascii?Q?mEZa++/qVnOnrV5bm0M4JKDlNV9RKTwtVUBc4/8k/SlTzn3dKPl4gbm+Nt5Q?=
 =?us-ascii?Q?zRuCWIa/gBchcJ76ksG06bMCUF2kexCuGaCx2ipN3njIXpyL7VTFPcZmDoQd?=
 =?us-ascii?Q?LoXIWrzZjJb/VdglqlT7S8kOZ50tRPsjiR5eLEzNK3SxmbbqQywCsUOPm1yA?=
 =?us-ascii?Q?9zd6e0Ss8vcoxC3PMjz2g3zd3mKeB1X0zxje2fzyEDAAXiCePYddxQnRGSKd?=
 =?us-ascii?Q?4PBTPQwdUQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: siaWVw5WDKdAlST4lDOQFGljZwtghxKJiGY4JPHtWLoLaILsReExjUmJ+0Pioek1GdWit/OUEBzEghGl6vOe8vIEZ300ly2MoFnkWm67/TA03nABCSofeTs3GYPpoBbpSGUIOFqJQGRKElEwfv0L4U0AZWRfnlDqxpH98acUdW21LvNA9BPGj5cnYYl+iMbIC9+gMG6fmrhUOtwuM28hiJ/ruYKgEDtZtOYPRz2qcpx1X4GjlM9u0KvflEibGmdlNftJ5YV6eaXvC2ulfoVQbUKHzs7ppfscsMKgDp0vzLeh0GnTNY5rXHJDxorgnRQkgiFkFVSUPZCsFtS533YyQg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 322762f7-e700-4d8c-258d-08dea5251bfd
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:13.7179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j5TseVVbxgh7SkT/wfIc9X4I8PTJY0+n11UbaDIdMQHdCAIG/7kmBzPvhwxY+ngJ+VR/yhUGmuU0INe13NAQSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
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
X-Rspamd-Queue-Id: 025AA485258
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

Replace the misnamed retrain_disabled flag with a dedicated link
recovery state indicating that no fallback link configurations remain.

This clarifies the meaning of the state: it has always represented the
situation where no further fallback link configurations are available.

While at it, add a TODO comment to the debugfs entry, to expose this
state via a more appropriately named entry.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 43 +++++++++++++++++--
 1 file changed, 39 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index c44416e0e328f..cbabf01d4b670 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -84,13 +84,21 @@
  *   failures trigger further fallback selections and userspace
  *   notifications.
  *
+ * @INTEL_DP_LINK_RECOVERY_NO_FALLBACK:
+ *   Fallback selection is no longer possible, as no usable fallback link
+ *   configurations remain. Recovery must proceed via userspace modesets
+ *   using the remaining allowed link configuration. Userspace continues
+ *   to be notified of subsequent link training failures.
+ *
  * Describes the link recovery state used by the Intel DP link recovery
  * logic.
  *
  * See also:
  *   - link_recovery_autoretrain_pending()
  *   - link_recovery_autoretrain_allowed()
+ *   - link_recovery_has_no_fallback()
  *   - link_recovery_mark_train_failure()
+ *   - link_recovery_mark_no_fallback()
  *   - link_recovery_reset()
  */
 enum intel_dp_link_recovery_state {
@@ -101,6 +109,7 @@ enum intel_dp_link_recovery_state {
 	INTEL_DP_LINK_RECOVERY_IDLE,
 	INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING,
 	INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED,
+	INTEL_DP_LINK_RECOVERY_NO_FALLBACK,
 };
 
 struct intel_dp_link_training {
@@ -108,7 +117,6 @@ struct intel_dp_link_training {
 
 	enum intel_dp_link_recovery_state recovery_state;
 
-	bool retrain_disabled;
 	int force_train_failure;
 	bool force_retrain;
 };
@@ -1317,6 +1325,22 @@ link_recovery_autoretrain_allowed(struct intel_dp_link_training *link_training)
 	return link_training->recovery_state < INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED;
 }
 
+/**
+ * link_recovery_has_no_fallback - check whether fallback is unavailable
+ * @link_training: link training state
+ *
+ * Check whether link fallback configurations are unavailable.
+ *
+ * Return:
+ * - %true  if fallback is unavailable.
+ * - %false otherwise.
+ */
+static bool
+link_recovery_has_no_fallback(struct intel_dp_link_training *link_training)
+{
+	return link_training->recovery_state == INTEL_DP_LINK_RECOVERY_NO_FALLBACK;
+}
+
 /**
  * link_recovery_mark_train_failure - record a link training failure
  * @link_training: link training state
@@ -1344,6 +1368,17 @@ link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
 	return link_recovery_autoretrain_allowed(link_training);
 }
 
+/**
+ * link_recovery_mark_no_fallback - record that fallback is unavailable
+ * @link_training: link training state
+ *
+ * Record that no more link fallback configuration is available.
+ */
+static void
+link_recovery_mark_no_fallback(struct intel_dp_link_training *link_training)
+{
+	link_training->recovery_state = INTEL_DP_LINK_RECOVERY_NO_FALLBACK;
+}
 
 /**
  * link_recovery_reset - reset the link recovery state
@@ -1950,7 +1985,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))
 		return;
 
-	link_training->retrain_disabled = true;
+	link_recovery_mark_no_fallback(link_training);
 
 	if (!passed)
 		lt_err(intel_dp, DP_PHY_DPRX, "Can't reduce link training parameters after failure\n");
@@ -2550,7 +2585,8 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
 
 	intel_dp_flush_connector_commits(connector);
 
-	seq_printf(m, "%s\n", str_yes_no(link_training->retrain_disabled));
+	/* TODO: Expose this via a debugfs entry reflecting what the state represents. */
+	seq_printf(m, "%s\n", str_yes_no(link_recovery_has_no_fallback(link_training)));
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -2590,7 +2626,6 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 
 void intel_dp_link_training_reset(struct intel_dp_link_training *link_training)
 {
-	link_training->retrain_disabled = false;
 	link_recovery_reset(link_training);
 }
 
-- 
2.49.1

