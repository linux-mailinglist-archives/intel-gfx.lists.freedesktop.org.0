Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIK+HzwS1mmxAwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:30:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9113B9114
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B58F10E57C;
	Wed,  8 Apr 2026 08:30:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ULDYj90u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76EEA10E57C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 08:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775637048; x=1807173048;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=6diHbyxuIQLQV6lZ4e8RQAwqT7YPjVc6jHtUbqR4+S8=;
 b=ULDYj90umnyMqClxRDT8qLZT4S5MX9nKC0Dd1OiFqvDXEYrewMDIHprh
 CEes2oVhiEdhHSPcZMQkz8wO2YfqftE3PK8tj6aGZoLuH4tIRx38tsupY
 DWC41zpPAlEKzVaSKMmbWsQxBJpvoW58zcQ6Z8pKllsib1+9MoFn5zRl4
 xHxKq4wlHWPHRpl6IDF8KvT5mduSwoWhtdWBrZsuLB38C2j5UsrDNGHdg
 XnCHzkx2DkojoxYX9twyZhSNPAIochY8ywIlyr5Y/Po93wq6buCJd6tmw
 3LCCtZRtUXW0m1uyqNNRF9eeyaP1Q5OJr4ArWn27/fYQKVIwq/6QbJ1TR Q==;
X-CSE-ConnectionGUID: fl68oQCjTma88KIQ9OYR0Q==
X-CSE-MsgGUID: WlG036EHQt+zFqLE5HbIiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="75651379"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="75651379"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:30:48 -0700
X-CSE-ConnectionGUID: ZKtZ7MiQQryIBz+S74ySHg==
X-CSE-MsgGUID: XcOwDxyyQrGSCz4t0kgYNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="221860005"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:30:48 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 01:30:47 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 01:30:47 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.11) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 01:30:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kOA7fy/MF/UkvH/pfZTs1kf6hHsQkMuSj9qbHXwd7WLzGxjWAG7Hg2ZrEXtR6Ozo3eJ6tkoBZmCSvZgHW95oecSjUIvRcLLYEDBCEn3WNdlkTFkO6U6JW6Hr9RDaYA6oQ1kEUOME+T7Wk3foWmImYRA8Orf8SUBu45Z6bBbnNpf1X8yM8IJ5GXcgQPWIdfWxz2p2GW2KSjyqisV2hOe+IpC1l5c1xUaqRRpnE8/ZLz5iA5sMimo4OdrX19N9aQw3kYOhGQO71J9Np79JBeeTFwNOWFa+duP/ybYPqX6PM1Szt25xX4XEPwXdAgHiW4/PChzNgtKwQpqMJZJZzx+Eng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cCBclIpDf5oKtIesj6w6pMa+nC4KHnro1hiQNzHF70w=;
 b=dki+jCNZ76ScNd/vX1Li9hpQFxVEeABT8dEo8cAjS9PAk9LgjeAR5UDS4N6SlJhuAXsg0tnZaWHdUOB9Xq198wWD73XpBUPi2x6qTcJ6XnwyFjbfYK2R4myfBhf1E21NjALvZVsGj1gu23Uo8r5jUPI372h2j4wtDGWGjRdLfmWOS1OlQfGpT4Qo30jiTzQYKQzJYJ++WRDe+aGCNPULW2SRx2CGCxo+kYKgIVrLM5oGYOB74+FKlWjr9y3DN+kViSRelYleqTb1LGxzvUC3v4n2rhfCVb8TQMbP5mrphCv3QWZVho/IX5e0Wor4FIVJHUPL5TrNB5YpadeV4PdjKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB6857.namprd11.prod.outlook.com (2603:10b6:510:1ed::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 8 Apr
 2026 08:30:44 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 08:30:44 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [RFC v4 0/2] drm/i915/selftests: Use safe userspace memory for
 mappings
Date: Wed, 8 Apr 2026 08:30:32 +0000
Message-ID: <20260408083034.2060372-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TL0P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::12) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB6857:EE_
X-MS-Office365-Filtering-Correlation-Id: f7aa6928-a33f-4e0e-ff1d-08de95492065
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: J8xuOxN/+Vn+hl6s9NE72J+9dW4DhrllkMLRiHaJmBwYvR1Y8yAtXUSUugWfjYkyhcUllDRHZcPJ6//frqpJuY4SW00UQR1/EOsmcY2f82kNl888Ogq6cNJ2h2AvcE4wLLm95xi9QLXbFMF8PWNXztIfJHvZJHbarIyaSEi91uBuOIBHcLFy+YA6FHWbYDBbh4SXSKhVwRFG/FlHfAKNwISdHLAcACe040W0hLvxjWhBPTh/q6AUHRWFrwkmxnTTBPJF58aG2Fqg2xzI1pys+7nBPjxOZvXtxOBP72w3p1yyvdsaAmFtS9zCbGp2y1D6wjrecxCWHoGEefxucwaly2a+r6Ym2sbAYsJUc0qihNWmPsFmXAyKqRXWWzj71jcE9IDCApsTCz3t11u1vLUUeE+N8kKzUF9C2oC8mBU7DJzy2xcs6U9+1oNw+3xoiWICyChst7gSmDRB4IepyjT5hK46OEOnC/hIL3G0/3+WiPX4tM174ui9Skfe98z7EWIeZN3F4wlomSRzKaE7+O0QrpJ6K9112M/s+hTtpa1wdC70ZBWmFsyPQjliWo4xUdmcMjH/pansaokg/A/lfRB/k/Ik0YZHdOpeLyTz1IQZZbGwZAOROo4OzR85Kfw1D1M4vW6jSIKMG8ljzr6xoGgnEzIq4aMpI8og4k2UgkHv84yJAkCEY7rXuMRxbz8S0/Ptrct/2dtQhT8Fb0EaeWwtYZa3vWw0nFzMjv4R67/wd+Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(56012099003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UabadhSLyEAcIafBkXjos++9uMgxI1x+BqA2WnaOye4C4YCe5YLxs7bEqQw7?=
 =?us-ascii?Q?emqpALwxpGidjSrnoN11ziNUDJCVnZaUAd9Zn8iCzHihlte+sVzgi1DAWIuk?=
 =?us-ascii?Q?85BAyBCPcNWriEQJqzlFYIxy6ZHsLlAmohUCuJN+P46vrSBXcpYYXhyecqLp?=
 =?us-ascii?Q?Mm2ruBavF0frn8WwbI5ndkO77BdwLzK4sEptU+iwhdooSVMuAPrGNtj86KQp?=
 =?us-ascii?Q?f8FjmtRcKLl6hnWTVmgtts2ZC0C09S2a2gyy6+DTXUg7/Scgm+U5jI6ivCP/?=
 =?us-ascii?Q?j+LEzJ5Aexhqi/lI6QaDvmcH3uuq/CbWnOMgf/OANFHjmEvBillGg99eGt+s?=
 =?us-ascii?Q?rwEk2WseGmTbCWbdqt3mRvW0ZRfeWbR4ssDeSJ2HmV3ktk/vTpONYlgR+u9F?=
 =?us-ascii?Q?8pdb1uIzdd8Ngb3UVMVofuBSqtunIa7kfyV6r3ChO1n/KPCE+6woMPwDCt9M?=
 =?us-ascii?Q?HI5gNYGx5qnWkSocAFGTURu/dxIp2Hz3lwvXE7pB1L4a0wxQATQD5LkZlLVp?=
 =?us-ascii?Q?4W3wxCqtChmR/A9GHDN2JQnNDTD4NBiLIgQiqIOLg1HkuVXKz60a+k+7tDII?=
 =?us-ascii?Q?LiJDnuoSHsOaj8ex6k+8a61zS/spUMfjX69J1qMG7FeQq/d2kdjqQTvvVLLh?=
 =?us-ascii?Q?4enVJ+Z3Y+hj5j8oDYMa6jOSUAiK8YhErI8ZJZctUY50WJGU75KMa9SXtYhh?=
 =?us-ascii?Q?ZkeNFxELKAi/7DQT4sxMMKXUnuG+m5rO0/8nyYdbSpqbZB0N/06ExrSq+e0b?=
 =?us-ascii?Q?GEJtHhlAHAE1XKppO8jEyLmj3tANeOZLzWC0D2BF8Z1JdYuu5Szf2/5O2RjP?=
 =?us-ascii?Q?GKe5Zgi++G/U+G6zqT5PXB3TObE4fcUhCze11kV9ClJ8+97fOCAFAhIX5Av1?=
 =?us-ascii?Q?VVSoYldDb2dJwtycEIuC9CwzBc5qshE7rD2IiMvgE+jIJulQt/njr20lZrkI?=
 =?us-ascii?Q?bU32CDee7JGMT35E7ISLQhagh2fGPuBpWzC8AoUPygo9Cd0xZj3aV4Fk64m0?=
 =?us-ascii?Q?trBJS3S40/tirF1459XOHI9oeyMT08a0RHm3IxNljDw/saPpoeN2TbBJOfMi?=
 =?us-ascii?Q?3DDCGimTbNR2QO9LqPkEQT/g/IPFJ5BQjJzFbJ5mhEH8FUFtjU9GDFSm+TAY?=
 =?us-ascii?Q?maJAYVGyk2I3AjN8aVZpnuRcRGLjxlPK+hyrEL9qKzNuWMBDopdc7D+5Zgf1?=
 =?us-ascii?Q?2Odh0un0R5lAN+N44uEXwONNd+b+CYQbi//k1I2N1yTvWz+XunT6GOWEdBgf?=
 =?us-ascii?Q?rXRIG/k9CHsk073SpsepSnYZ6QPOUD//D14au82jadWCto1jarrY8bqiGBNN?=
 =?us-ascii?Q?oy+5p8iRIFIS0JSR/6DolqpS2QJPuAR++Vvfi4tS29XbH0gBR6bt2U2SJ5aq?=
 =?us-ascii?Q?kgoAcPtHs+ndcLD2hZdK5TFh+WYgAJUsxy+vjSZqlZBku+Uoh/64gtr+n4oU?=
 =?us-ascii?Q?3wVllk0IxyLGdH+KZEpVsV7pUW+raL+CKVYBRuzBZ0KRCakiYh/lk/RWih1d?=
 =?us-ascii?Q?Lvde3bvLMrJXsjUJrFzxlHpcp59zomqTkpzjZQoaW7ikaM5o35hstLwdrwk/?=
 =?us-ascii?Q?6rWg83Vno67H4c+k/jcF522O9b2KdNDuib7icwt2QO2s20NGtx5MuBGCMn7Z?=
 =?us-ascii?Q?TlFh30V2/0kmjafcdcNQdHL8Y+UYKZbFDev4e0xPZMlcMY2SmMC1HdkAo70N?=
 =?us-ascii?Q?d8GRyEbWnUYLX3lSBTYNBeAnQRmmJo2DqR6nkQBpR6SGK0eZmn8D8/0Kg8zi?=
 =?us-ascii?Q?qZ+ZqEVMS1ttguWzvMJ0SJgNrDW9qzY=3D?=
X-Exchange-RoutingPolicyChecked: YtQy1blnrd3ZW0j2mN2mgUdb4p17hu0/iupJQO1zJnRdabIpltMkN4G5G1aDWiGMEKJbNB3JnisypHiNazWACz1j6CbwvNg6SIMGfoyU/XugX7nBTspck9U4U44OR1r00OxJda4JB3Ej2FV7kNM55PxRxbwGcM2+paZXesubM0uY3plWYBx3ItAtzjNYZb2/kyjEGeP+5LfHy2yl19svxdPhMRXtqPkF77CLaeM9kF7Fk0qH6boNg5sWyFwE+79fo2sQ/NeVQ1Prj4Ye7HqH2hPwQ9vOZtLXSe8y23XNvIqsw3HA6UgYPSY1Yu8hgJn6j85vWszX+73tM5cAl/jVcA==
X-MS-Exchange-CrossTenant-Network-Message-Id: f7aa6928-a33f-4e0e-ff1d-08de95492065
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 08:30:44.4870 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QSErHl+IBg+nKitOFcRGaFrBmzFG8oWF2AetdP9wtkns5LiFxPwL30nc9Yqhp17XR5XQKDjiMmb/YJmNSh7Sojw7uSRcNCx8E5DFwMXKY/Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6857
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EE9113B9114
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

v4:
 * Rearrange the code in patches. (Janusz)

Krzysztof Karas (2):
  drm/i915/selftests: Prevent userspace mapping invalidation
  drm/i915/selftests: Run vma tests only if current->mm is present

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 14 +++--
 drivers/gpu/drm/i915/i915_selftest.h          |  1 +
 .../gpu/drm/i915/selftests/i915_selftest.c    | 51 +++++++++++++++++++
 3 files changed, 58 insertions(+), 8 deletions(-)

-- 
2.34.1

