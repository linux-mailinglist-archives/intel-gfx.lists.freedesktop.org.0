Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULKMOYEW52ne3gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 08:17:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C7B436D01
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 08:17:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4116310E151;
	Tue, 21 Apr 2026 06:17:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aPjmv2Vt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EA7D10E151
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 06:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776752255; x=1808288255;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=ZGRN4wDC/VvMe9Dlx+E/o7D/UTRx+eDptmhzHotTmzo=;
 b=aPjmv2VtIFOj6lQaUshoam+QE7d32AVJueSX3y7WmdbQxejyQgJPA/Mm
 te1JWv3xkpLq5qeY8Z9iY+U0fDN1e7zJrXv7BdqzWxcEJeZo1sZpCElZZ
 RaPiI4nS73DK8LzXVJN5tPYOz2KV0UeAJtVmCeAek6ndEe8sR/Sv8eDG6
 nVkd+uvfabvgdQBgntavX9KMKGLwAaX7fzTV5iVKiY1sYTbhJ6PWdrXVv
 AyxD7XYw5fQSK2nY4357A77PVUDKrYfuuiMHp4S2kmqnbSwcVELsjbfOC
 BWB8ytxdVdBupCk4PRzoPbfnBG/Sk9WVhoKloB4Dzbd17GXj+hMRTue2I Q==;
X-CSE-ConnectionGUID: Viec12WFSD2/9YXYnjgDEw==
X-CSE-MsgGUID: +pmzgb/tSWi7i0KQmqB7GQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77553119"
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="77553119"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 23:17:34 -0700
X-CSE-ConnectionGUID: cDdHC+tlQnO8k92lDFcZLA==
X-CSE-MsgGUID: eL+7bmmaRGOxA2khvpXRWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="228784144"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 23:17:33 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 23:17:32 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 23:17:32 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.45) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 23:17:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TF3mahR5FXEZVOOg46XI2tqlcwrWXaHNJ4ugNcSm7JNISH/No0nA1MI3vktMeD/g9LuClxgdLvmJAjkcjt185bNANg7IfVE4j2Capk+TGuIW5+4IkOWTG9BbTNvpk7ONqtTGP4mIudxfVMXHVfnGzMtoqIzO9/q81KRjTxnAIOTI83VQhSgKhxNchXK0FJgUthgvJZj5o7tFiHufv7wJo2iNBaowYI2dGd6j2SlGepPSd65CrojUoiigAFWd7gXg4qess+VgaMRcp3EQzkN5dmK5BlBIomUdWX4tW4QZ70UqJC2t9h5qVO23Oobvq2c41/sWlqosl0J/9XySJk57cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EYfVRZSS76CKtQLS24R+I+E/ZxgeuvsOxerDQSLPogM=;
 b=TPcBzLqoqr47HQJTQ+TF/hMgicL8W75MkvbpaHhQ5/+RQCbRUXfz/SHnae21mz6+nVd2HTH6UUwA9V5XOCkLGlecI21R9DsB6mct3WkjfJJSZcbSxA81fUQ6tOns6XkdQhet3yiPwm3IWs2SdVTIA/pZegAwEpb/F7KH8X0n23HMEr6zPffNo4yJUZitrnAzoCcpi9m6pUGuM0mh8OkKIMMuIFndSCEpvKeMCd9f+jmh0OM5mTDpz5Yn+jMTKHRSX8LjRzQubCpFh29/SwwAv72w5IqtIHIbMI/59pkiAvZzbBPpfe2bCF9JI1TUcaje+2a/wSGir/NACMpKQwnP4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA2PR11MB4810.namprd11.prod.outlook.com (2603:10b6:806:116::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.16; Tue, 21 Apr
 2026 06:17:27 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9846.014; Tue, 21 Apr 2026
 06:17:26 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v7 0/2] drm/i915/selftests: Use safe userspace memory for
 mappings
Date: Tue, 21 Apr 2026 06:17:14 +0000
Message-ID: <20260421061716.3341529-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR06CA0095.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::24) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA2PR11MB4810:EE_
X-MS-Office365-Filtering-Correlation-Id: d439eeab-1958-4730-be00-08de9f6da6fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: niNhFdZMyeo2hwgrxgmmIDNm3TxW8EjGVx/VVR1zCt3eZQHwvg7KXHQsZLIkUdH1aA853VD9iLTOepbrdVB+GVcAtPIwOGTXPOf0Y3zMjONFLVAM2CG/ffiBIswwuzt7m3+THoYmHv1skUBBORGUh7Fuuwd9lDSTAJRjti2tMoLgmrJuNFJ8uyyboYg//MNetb4i6bqq3DZwhZIK59BCDz5gW+q5jAqpBciQ8B1kUxTz4sRoJVPrHd05VskkArvGzpjw64JNoR6iXmQmbzEVJY87KaBhzhXmOurj5Wc62ydopaGeLWTuT01KQYOHX02cO5eysVtc9t0BaazA2NSTkooXCDzyUChDoM4zZuEI3Kc4uH9k+PEmFeSak+sGc4Kqvhy8GSMDJ1udw2fktHA0hGrpAJO69xaSK6hOMz3BkCR1iZd3m6l9wDmsOixDqSUhAg5PqEWZPioGulrJjJqG3gRJUI/HTJFGxr9LEVcVmlri41tKynLp5epaw6yNrZkb43D3yOM7b3LW3FUFplQqRyupwXbgFs98eebGzC2XShuL0aeN28DdrwJXNcnaNEpGIDBjpbfpWpAnZcttPnXhRXuNpFI/4+vhnCLP90+vLzeBsdTIRhAFxg6zAppYzvuOSkaAE4EtRZbFxB7cwSwWY44s0Gocu2W0h3JBYCG7vl26eWjzOgpwtRzr0QajFt29EjCtIdzXBQvzXqQaXR4M4fJlZZoVSo068FbKS3/JGRM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kPxMjRGBhvcyZdaG3MwZNwouMCuobY/LDnx6hstWPSPRMKF4wk3T0WpHbqMp?=
 =?us-ascii?Q?OpDedDF4RRfkAdVvAFFeKWX0DfSZrCehVZvD5VNmtBufOKNXj8O/DDZY4jIx?=
 =?us-ascii?Q?nbYFxWzJ7JWMMgGR3o/7yIdb1kaAGtofZDxBtDR0g1ZDv0BhLCHSbY2cw4f9?=
 =?us-ascii?Q?ycpMymBfVuGM7cfStJmxG/slWVENmIfeDrXAWPuQEhBJTQBkluRRJNfFvvCT?=
 =?us-ascii?Q?Eyw/mM7Gu77ZyFhUfmIJDBc8cVW6EsTeL24jT8XqkzLNauPWJ2v3DuCPValv?=
 =?us-ascii?Q?8y68zhJFiEPCNdXKdkBDjqN2xjlqetdglEuqtlmntpoGVdEzv9P7jq5eEmpI?=
 =?us-ascii?Q?3dce/WQg8MxiIHODBGRO1Y0RH1WcTe8V4lhgoIQURjFyYCwEKgVOa3gafH4L?=
 =?us-ascii?Q?aNBZ/9ZdWC6Annb7Kf9xYbSsLPDuBI1lsbLiGBPr0w9LLaA8Y+rbc+m5jpvF?=
 =?us-ascii?Q?h6hEPKMqv57H4/EQelNTIvDgX4V/brfveqEiA3EPDvJPPLrejqEQ+oedpXgC?=
 =?us-ascii?Q?X2IBftnSjGjt6djLoAjPk8mlxBzhaBtJFHW1Zg9jfaJIM2QVAEdr23Jps4am?=
 =?us-ascii?Q?6Uxr9cT41qxL9JksRWhgh0XfqvYSnryBgVWtsw0jXzI8BU/NcZzrB+hEP2PH?=
 =?us-ascii?Q?poj/SjMA39vGrvtucweJIcBBymWevNZk2prR6se3xHTjrHrLJY//KD7of1eI?=
 =?us-ascii?Q?hkSslCne7yQD5nWTVsVKP0i73EpWZ7Fdm3aN6t+urZHM3B6fdXFOuzJXynJa?=
 =?us-ascii?Q?xCTcwX3TR6bkbwlrPT3El87z4TcGJBrKocDVK8gn7JXCIT7XdBX1IjYd2IoV?=
 =?us-ascii?Q?43sqhIrIPeLipDeFGJ7MlBeyZmOVyb1JD4LcMcMADjUTWaareg8ah4zl8D3h?=
 =?us-ascii?Q?jYsj4L24eWkUH1TlVUCRSjV1XcfVIyXrC4S5riwwMGN4FwilEv9iT1Kp+i3Q?=
 =?us-ascii?Q?IPQLxi2Wyt16TJcMgzABz6fLVOEY1tpr8PqaPDzmmBmyRMPTER3O1cFa8OA7?=
 =?us-ascii?Q?3qYRFn2957sqMXAFGnyGx2G0i0cjtSX4nuR5IsIGCO/VX8SHEPwyhDb8ngqz?=
 =?us-ascii?Q?EwU797q/sEHi8S2FvlhdqCPQwMdXTgfRgKkF1VUYo0CxGR81ewDLimKFjGwg?=
 =?us-ascii?Q?SKmp2x7pQMWd9jfIKWBWAKnJy/PvWLdhdyvuzw4JzhSk0iarxa6NsHUwRD7A?=
 =?us-ascii?Q?3PG3N82ips0kjJymwcInFYjruS6A0cBrOpVtAf7AucsX8ERtpGVEydGORcXo?=
 =?us-ascii?Q?6GJYh/vcQLqWUQiucy7VDLHcDR6fY4zQK37Rc5Oy/RJu3zd1rWKkBtp05cFO?=
 =?us-ascii?Q?mnWhaI+U5VHyH8R/BwUNxFCp7dDf08IvZSZgu3K2vxvrFmH4I6BGNk5/1tkx?=
 =?us-ascii?Q?ntTIDYAXERBAm2yoWSTMpqFbWq/kYWaEfpFseBZU7LjXwLbv6jy+0hqDDgBS?=
 =?us-ascii?Q?VVQH450B2WWfJ26kxl5TMwho1hha1BR4sENhxE6WjZmbK3OssK/fJSi40xkY?=
 =?us-ascii?Q?R48L6Wzo4ZxCzUSXHEyaN5ygs81JDHiiRjxpjqBwRGdiag2zf4V+M2xOUda4?=
 =?us-ascii?Q?6DgpyZktYpCpI49eZXSP9Ygse6p0xHXZz6KRYarVpiRYrRCWcmCqhA2hFd+4?=
 =?us-ascii?Q?UTFirYFQvaeHBrxl1V4tXtVjaDo79s3YZINT7dtZ6Fy0SSqzz5UY0gjsGshZ?=
 =?us-ascii?Q?4gH8RToQb9k+iLp7oBj6ahaBNQNs174ziIKrqS8a2P03U3dNRnIRppunGQDz?=
 =?us-ascii?Q?hJSkl6TJ6MCmdCzRSyJ+KF4Vc2oub+w=3D?=
X-Exchange-RoutingPolicyChecked: MHMp9Vz5MtwWFjaLTJ4cIRv1titJTMJjQjHJ0s1FtgCZshXyzjPo/g479WUVjCOLd5yHOQGtRn+hGsqCDMSGmxFY34n3S5c5GoFnP7O4kla/d8E8ZKHBCPandfDvAnsZtD17Ba6xucTz4fSy9U33m4tvzGYqX3jKDxW9t/bQsxAq85rrkXckhfDM0RROd+EcQqwrDoYxiSRC8QemMBODs4FhF0ifByHXdZtu9IXUYZGPQ9U2F+9JzhHA9TcpbP2HDEsVsjF5tZb+8ImF+jdJUI1Lps77Qoi/tlmDqXM2pLK63j5qiZdBwMlWoE+hsJQPbcx2yXkSfa7lwZUISOwTQQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: d439eeab-1958-4730-be00-08de9f6da6fd
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2026 06:17:26.5922 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7EcUHi6fE13VwKXyC54tAmHR39GcV8DU/HevU2tbzUKIbGkTswZX5goYx00dIwm+S7+NVBAp9naMuUHzFctfZ4UwiG6LlrCwR446WZquDdQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4810
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
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 15C7B436D01
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Test-with: 20260330102400.1157658-1-krzysztof.karas@intel.com

Currently, i915 selftests use unknown process's address space to
perform mappings to userspace memory. This is problematic,
because there is no control over lifetime of the memory of such
task, so the test would occasionally borrow memory scheduled for
or in the middle of a cleanup causing SIGBUS errors.

Utilize user-provided PID of running userspace process to
perfofm mapping in a safe environment.

Krzysztof Karas (2):
  drm/i915/selftests: Prevent userspace mapping invalidation
  drm/i915/selftests: Run vma tests only if current->mm is present

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 16 ++---
 drivers/gpu/drm/i915/i915_selftest.h          |  1 +
 .../gpu/drm/i915/selftests/i915_selftest.c    | 62 ++++++++++++++++++-
 3 files changed, 70 insertions(+), 9 deletions(-)

-- 
2.43.0

