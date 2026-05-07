Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOYaM56g/GksSAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 16:24:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7FE4EA1AF
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 16:24:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE82010E241;
	Thu,  7 May 2026 14:24:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZAN3kT32";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8290510E241
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2026 14:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778163867; x=1809699867;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=ZKjGKeQF6r2lLIJ38GGgtdC61oEaNjWZ0/+dqofw88M=;
 b=ZAN3kT32d6ei8etfBB5pC5YzkDre3SVnbXlG6CZy8n86tYyB5ELgFmil
 0+AeYoKE3XBFCC8xIcQW6/LijHSBiyE5teA9rxEHZriBBLfROBH0LnPgf
 PeZxjVKUTlh8GxSgbxHCxs5qcw74GcoAh1guRYbM6a4DmqHw1f473LQ74
 th21LpjkQ33XyJn2zCywqn7ZcUfy9p3d7jFmrZ4LzsY3lxMy0Spzvwh+F
 gjWdq66gaLpjjtbYvbf/mIZdSYz6z3Ma+rZ/eodB+NFyLi1z8FCIk9/UD
 /BX0oIHwj/YNA21m/3p1O72kP7pTOqqVB7NK3y4FUdBUr+BuND1WHpl7s g==;
X-CSE-ConnectionGUID: NwTXpuTXTRiEcXMmCR/AEg==
X-CSE-MsgGUID: tsUmfanbQ9WM89DMZZn1lQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="96683275"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="96683275"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 07:24:26 -0700
X-CSE-ConnectionGUID: wBKJ/6v8QiyUS7GTsxuXPw==
X-CSE-MsgGUID: pXY0gNRUSmGsDZkzEczHVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="241478850"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 07:24:26 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 07:24:25 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 07:24:25 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 07:24:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LBl07igDSzBjap0MoYhhzwpkgZXKNU5PZMcXDhHCvhMQvthbYVYUQ5Uw+JoF6p6ulmHD1lMP0EoKe3neoBlgu/jPfUlWIaib6RFxenPAz0rMa/mIVuK7fAs3z/O4kuGWetH1MYwP+rbJOsNIcC2V+CPC3rG9mpQF9l6HqOhV3GWvPJd/b/gEFaHcaEbVIFMWqzlDa8oNQ5HV0d8bQPGTVs8IpRQNv+tJ0BC1mwsY+UK8b9ZvPk+eB3V3aq2iSkn2AJpKhC3aM4S/hxmWv/tXwxITaUbs5Pnmd5XhddeP54AboBNSYPr84Z+IJ7b0YUNyoK99xHhfQ/CLMIfygOGWqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4wLf/NuIFhsk5ppf1HC2Ob6NFA2WICTUEXhvfSiNj3Y=;
 b=Uol1DeSmbByifu6HlPgyccw66fLYx7qK6EqFSn6qS7I09D3ZvkefGDG772mcDai2mC8Dy6gcU82rY1NO3fmJYbw7HySs1bwabpVAQrFp8t6j4tQIeQ9SknGeX65/SU4Sn6NA6yeC9dPqj/Y1V0YbSJLTXQVQ4stdxBDWDGrnHQmiktYbWPsepfPugWofPhqrwC4HwtF4dH5o5d0QIm5zuS3ymK0KZU8H7ajjBimpRE+BRSAjSUmA4GBw+D33nCvYWP4hNHqJbXSvMtUBHFOS0y8uNdcLrdeIV5QusUxNhJoxTJqOqshNyy3LH4htaR1kVVhY1pgieSiwmsh9IciOjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by LV2PR11MB6022.namprd11.prod.outlook.com (2603:10b6:408:17c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Thu, 7 May
 2026 14:24:18 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9891.016; Thu, 7 May 2026
 14:24:18 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v9 0/2] drm/i915/selftests: Use safe userspace memory for
 mappings
Date: Thu, 7 May 2026 14:24:07 +0000
Message-ID: <20260507142409.1913513-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI5PEPF00000934.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:808:1::82e) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|LV2PR11MB6022:EE_
X-MS-Office365-Filtering-Correlation-Id: e83f177a-9585-419d-f32b-08deac4452a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: Mgu/lbrgJZmhv2HAXANwrCcDwougViJShy8iCKRG/4WmVduTc1dUI4zDJuInIZO3bWM2lz5dKfENSaU4cMHfHyFkqcr3eU4aOYx+7cCm7pemLi/ha/0tXR6i9w/SfRh3WRCXecfzoQXEihEcj8hgRupJZjHS5DM4t3S4IhJ6rdFP/+P83y3SJtqkrv1+tgtVK581jDocdDm1H5c3er25x06/tOCfk0NUHiws+o+rDPTzsLw+5PcBzlMcOsdlq3bDLcHqj9lJZertzPHGp64MCln8VdLTniUE2Jr+5rFyzKieD4//sePOmyja2QMFh7w2W7sYkJCfHslr9YdPPHeQOu83hNq4f+tS1aBfHOj9Y7ZKZzDeqrcBd5ydPREa5B50X81cAjBYCYbVv9J9TlUc9FRyj2k8h3GBxdjhJ1mNLDFsgozpSlRDVQUpWBYiTw1UIEZFka05IZObSU4mUCvQ6lfBEok6F4lusMqy1AmQauC0srp7Um+TrvBpYXk2R0s8A0OkNf82ekXb2v1i1QfdMf8eGY7t4P5TK5yzehBmwh7SAPbqKUGPHLAHQ6d3+r54mKJJ2Z4C9eA/tsD31uK9W4nz0KSCXMAG154fy/dofRE3uF9SLVvIq6XW8Y8qyMFv724CsWQumyAcqEiXW1rsr+ucUZ+AcqyPeP5LBaFbpK37Qoz1GqbZ47dUfDtoR9aZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(56012099003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Qt8gbzC3PqHLmFOvpYXD2GkE9PQ6iXnRwmmCf4O/S+xJ8r4HMzJG7UCfyNUs?=
 =?us-ascii?Q?2M7p2YlAe+eMoaQzKytvvzmzwPT1lAK8TE+u9N+/KaDr1NiSYsWYb+dGC4Zh?=
 =?us-ascii?Q?Emw7FcBycSgJ5XcSlbmExfhCbeFnMSoNtjDtVrhbICr/KF8cYhXZEqyOQByT?=
 =?us-ascii?Q?Sb6h0t/eVk0k+YZThGLkgtncuoc2jLK8MrfbI9b/AUqAXhXp8N0ksU3QWlP6?=
 =?us-ascii?Q?PkhHlJ9WHOqIFiYzFgn/14CmrXslQ1SQMVl33Nn/GyIQ3QZv4WnUJgT+cAW/?=
 =?us-ascii?Q?lI9KqWH8Xv/J4C00BQMPd//meYHi9xhcr/mN9seiwWld+Z+etvoSxpNcJSF7?=
 =?us-ascii?Q?1HtvgeBee3vIBSVl140jVcIqvKb737Plm6VRffvcnA2RwnJ1A4yQavp64wHN?=
 =?us-ascii?Q?YaRV2QJVa9ca68V5hAduO4VWNMeiXtluQZiPZuvco8ceXI8yF8oPCWU+ofU8?=
 =?us-ascii?Q?0xFtld7Bov2Q0CbTsxieU720hLTSqAe8UzhleF6gduvJwuk0goALrkdxVzJf?=
 =?us-ascii?Q?iK100WqUj6gj5kbs/kMjqAmC4Ez4PjXEbIeGJdTKrB989UAzk22bYRcVlaAN?=
 =?us-ascii?Q?JwX2SbLshD4Iwnq72rG5MBoZkvtff1ZbT3lz7fNtFA4N4fdrPP+N8NHGjzy6?=
 =?us-ascii?Q?zRmtFUrQ7J75idMHtyWNVYMl7bczzChQtomqVMiNtpORUMXV3i62dVCfFwlt?=
 =?us-ascii?Q?wELCFBOd6iFpK12T0aW63oh9ri0LNMefFFN2CWv9tF9HzzdqPPW6lS5GjvOK?=
 =?us-ascii?Q?v7D23Ulpsz6iPD4CoQwEINpMkeyKxubHcnehoDK9DxpmKr5qIeUOefdtTO3M?=
 =?us-ascii?Q?cA24Pgno1pEXoMErGiH1JwCDxpJpyH4eymJeel6DjaAmtoXsOpjvfVhQRmZp?=
 =?us-ascii?Q?cjkL2YI1h5WHXohGiYNWsOUCQc7kTXblMwvPd0sR3LVx8/u3vX0By4rdFSQp?=
 =?us-ascii?Q?TR0ZIPvn77GlpdD7T/olwu13OkmULgEi1w0SXVk5QcBDj6dPiLKYBlXtIT3B?=
 =?us-ascii?Q?tjnnNyGB8Jj8h9wa62Yfz1ZpHSBYF/6xCq/UwsJnopac6f05jBVjkMeWGIQk?=
 =?us-ascii?Q?t/JvtTc20G6oVxbZ3b0TowXZDagKERmndQ3h79BhY7mmbQh6eduiaK80+rxL?=
 =?us-ascii?Q?YcgJ7z7TuLE4hr60A7VDOQB9Jw8kRyfyWO1hQ+ONE2PloVv/dis0C75O7JVF?=
 =?us-ascii?Q?9JBv9TIydroEc+pxgJVubBHy2kS6x5h0Ja2D00366QtBS3XTCVpqinRfgJZO?=
 =?us-ascii?Q?KH9eV05IVW3N3FwKjHxYsjTSsAiI5cgPTVEjNoLAAVkMmwFpAQlEMx9upUSW?=
 =?us-ascii?Q?zqoEDueeuwVa8odApNzZ4YLsII5hRiUdBIDnqILBnHD6CBTHARnQPTdQHRWt?=
 =?us-ascii?Q?//NVILGj/S/JRddGu8MbYLTYdH9FTwKUMfF6vUs8RzbUtc3r4P3Qvo8ndbwS?=
 =?us-ascii?Q?nc8wZjhnxqAIRa1pPN+vg0k0ejMtLjjlNdd42Jn5SeXcL2PUasuvjJYMZLbI?=
 =?us-ascii?Q?3JVhHKs5yzMUn0fmr68PhtosicVG/6xj4q1PPsPCpX2HOiTeDYvEQ3s8JZvx?=
 =?us-ascii?Q?jQSrGw7SzlcjY6Ih4E02XbllxuAlISBS4YeQ2Jbff2xczaKxDFhErKFh+AI7?=
 =?us-ascii?Q?1LgEiJh8BjKqMFQvEmeeJ+Ne+eoHWu/EnH/X4EJ4XygDUPi3SCyRYNKg6gB3?=
 =?us-ascii?Q?vqFExa+p3vs3uskX6PueohzNylVB8zy4Ztd4GT41Ft913HrzS5kWLJsEzdVV?=
 =?us-ascii?Q?CB17HNeklm0J+h712t2LHElgbQQQ6O4=3D?=
X-Exchange-RoutingPolicyChecked: RYcVbaeUm3DoDcbExkzYPT3crkLilvkRr36prdSX3ZIV0Pxl90LSHFtXQHaUNNsRDUqF9wXKm8rYryD20q7DvanjhhrCoEcT7ewI0SPOZ7oiIqFgOU1BFHCdTf1FFQrDI6dwrjkEralB/exm/3M7I/LtBQR1X5o1rm41FexhBKd8FA6F4bcRX3xTbmNOmZ82iUF/doNcq9j+iiZ/bI3cbiqVwBQAA7C9juSlD6b4z+gwF84zneUE1jk3DPd3MF2bMiGc0N2XaJHGGPzynr/1+jvGn23SYlqSn85Tj9q2pDWayKnc/VmEDw4Zk/snE2Idv6b6+Rkf6zjlb3XfIjBFoQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: e83f177a-9585-419d-f32b-08deac4452a5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 14:24:18.3805 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lcwHxElgk6t+6Tip/b7fVp1gwJ5Zc3aid71f6JnB77tE5W1tiNuGjrnr2Mro77zDox5u+DHazK6r6LSo6TIJpfvWOT4QuKeHdC7fFB3fCkg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6022
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
X-Rspamd-Queue-Id: BD7FE4EA1AF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

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
 .../gpu/drm/i915/selftests/i915_selftest.c    | 68 ++++++++++++++++++-
 3 files changed, 76 insertions(+), 9 deletions(-)

-- 
2.34.1

