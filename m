Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NdoAOCBz2mwwwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 11:01:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE353927CC
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 11:01:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4D3510F451;
	Fri,  3 Apr 2026 09:01:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JzOevAsq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B5F610F451
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2026 09:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775206876; x=1806742876;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=UyBUovcTzXGl7JQbGf0SHq7pILkftzoGnv2BkohA97Q=;
 b=JzOevAsqFJx/ovynByoPCVS66gsp/k6aJeKIpevmgjb/8HT+mzw9bDle
 N1REDAk79Ks+Z97GPQVtwt3xIe+c83pE6RjLBEf12edZ9HnMZJLDNg/2x
 A4XZszjMcxtnBFGDBm9R9k5iQY0I24cILCdQnjCzoWQJp0Y4OXfiTK2nq
 dlTDoss6hlC+ONrpoAe1pqrkLBwtg0WupVrOHiczZhaiOBR4jCrGpZUp+
 dIj9FPnbKIsuCRrfMI3l2lsB0SaQw/ZDZ3+7Jwxs6lWLiQdPNis7+DRR0
 dwJAncU6a6nKxV6gcj1oM6XZ5QfDCHXrwAKIw1O/hNcdzWwyuzFpUyhRW A==;
X-CSE-ConnectionGUID: E8pPUO4nSXmgDACnhjAmDQ==
X-CSE-MsgGUID: QoQzb2WXRsW58QaeyHe6gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="75313216"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="75313216"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 02:01:16 -0700
X-CSE-ConnectionGUID: s5x0U4UNSiyY8HdQiFXyog==
X-CSE-MsgGUID: b5+xLKSwRhqLKzICutwxRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="250291471"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 02:01:16 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 02:01:15 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 3 Apr 2026 02:01:15 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.4) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 02:01:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jcap4Cg/Pc7tXSeka1FrssKscgGhyojcu0lGq9J6fnherc86r02E2zcEwLCehCWP6PUZMv94CqiLPBiJjq8fmQtS3xwRL4aVT1cIpK53t2Ndkbir5NvjIRr6dAOfhxbSlwVpacwDY8y6Lxu9galLxpiWpxB2ioY6IBPPvwZwFOaX5x9hE2cs0Fmt58ZuNZ5HejXlBE2aCG97STsbCdvCF6n0NsEMgDXCem8rDm9BbydxT3FNKVaFoo3IMP5NBmGjX/EuX196mf4rKESvXxlPKjL+jf/KXKZF950BHI6NvuKo+W5Lwdse+KH+tloeJU1tV+5xdhorM3yo/dB1m6+NJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z2NTIqJuRRsR7yGS8gko7YBj8ihgVoJT8lgFA/1UHJA=;
 b=MGtOKcBXu17V9CxQ1rrmhdfmzThEI6nQWPsUoKNuqiXKvBOyBbi0KHzsJc+pEEdg1C1Cty83f0qlvag1MGuhLhjW/cl9h8vjZ2MHSFSXWjcFTbLCelQPleou/HsuVZ6raFKrIrkkbNu9qFDaxw9sjCh1nNz0VPhFSiStCz0RfN8OkKxRyH1oJ4JdExWqGjFJKRfnJmKNFhtngDXtL92G7dEdiy5Od0oaEHYCKlamkXA+54li5VLCDNWyUYLg7/DEkgWyB4IcxLSy3tmXxrUMDHx6yz1plZYHQDkuzAlxeZ7BKi89ivPMipALjrefa3gAfCirri4hj6o6I65KwE0sEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA1PR11MB8802.namprd11.prod.outlook.com (2603:10b6:208:598::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Fri, 3 Apr
 2026 09:00:33 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.018; Fri, 3 Apr 2026
 09:00:33 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [RFC v3 1/2] drm/i915/selftests: Add userspace PID parameter
Date: Fri, 3 Apr 2026 09:00:18 +0000
Message-ID: <20260403090019.1933036-2-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260403090019.1933036-1-krzysztof.karas@intel.com>
References: <20260403090019.1933036-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TL0P290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::19) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA1PR11MB8802:EE_
X-MS-Office365-Filtering-Correlation-Id: 84a9c66f-1adb-4b6f-4b24-08de915f7674
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: LFRmwMpePXk9TW81l0zPvjouiclWQ0hkcBE67unPz4Er8XtEsNd1ls6JfRDgUNlNaFxnTcWezG63FXlbulwLKg9rasSyPyZE60m7xuj1kKvCoJbkQYqshW0O7T5BBVN78kwoaDXtu6zUhHV/2FluVPZZmIDrpOwzorB4c5D479NWYXVIXKXeM3TVbcD2jD+pWdk1dhIjM+cHJ+fEs16osbmICo6SqK2+LsFRMGjHZGXh7Ul696EnZG2M63Bjn8FzUg8hGkjHS0WzcsfvZULsd0UIK37/zv2tg0UEz6hcE7lASFaD+V7nL9lCWq1+au4zv5fr7L/KnkhrJ/o4FtKXlRZjAZRMobqDwOywjXSiwhhM6WGoehLFi0dgk9+cZqZMWtwgUIjzsMqazMMcyarn6WvGUObdmXJy5ewDr59NgVZF2vzcePPP2YB2lAKsJpmRakKlD8D7ZcKi/runJcutCyGYd0chSHp4sVzIpWSRWUTP9D0QpgVuRCw8wmEc60NAlnnEG4QIEzf877+VXsXS7niOgHddUIpLuv8cqm1GTnpCExMdu9Gu9cyHJFjjHmMzSTd0S4hC+aUfIDnktNCkTU6p0LoUmu3JecAnjq1VT6jZrnWybZPdYBi8oUlOE3Qjxlj6NDhXc6gBNDo/vea03ByJwSXf6sF5+wXxjgVRVCUDYMSqY1HpQ5cWCT9K0U4F1iZQW4qKZIYdxAEToD8ZksoL6NAtxina7Zcyk/MEr/0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dmLg1GUWPxtTNuXKwo5xrgVz4Htmes62CphXtFwbX5Moa8ktE7+WjaHqtLPD?=
 =?us-ascii?Q?H6Ms4It7HDmx7oUPpj6iXUikNxgg5T2rvvdHa5xkAhnXVphJspC+k5ST6SHc?=
 =?us-ascii?Q?xfbVAm1nulSBsKY+LqxpXPMRPEZjBWyXY5/Hn/dNeau6+Vk16o/6VJKaBJSM?=
 =?us-ascii?Q?1X5NM23h1/IPbHxRiCajHIwZMYhKuvakzs8GQjWiWSg5lLdqO8iYObdhzVH7?=
 =?us-ascii?Q?N/63GpR9uPwNZb494jU2pvirsHBqCkBFryALlGpL4cVXJThLCIA7OCi5w7NZ?=
 =?us-ascii?Q?1WibTeRosrJIAWA8kpKak4WZbtFIv9Z2SrWsnn/U+Hbe5msESl9qKWCFG/Uh?=
 =?us-ascii?Q?uAj9GnA9Yg437uXBtcBO8rJeOpfgbaE95OeHY/h2D+bNEaTmFk33b052qaPH?=
 =?us-ascii?Q?Wj604/waEoRtSjd69xO2vpSX1nvJmMqcSdCzd7z/tJZM6R73TtVozEuly3bJ?=
 =?us-ascii?Q?dYkISnkPuuU6r28sHfDFFRNARMt0Qs4GZnZxtsBL8musC8SSUWrvyyEgN32N?=
 =?us-ascii?Q?sNVJW5LzumPxl3CCU+T8VsgbCzVBBkZ3ekh5c0mbZN8RpTkk9eDEYAapjywo?=
 =?us-ascii?Q?gAWY1OvKrCyu7wRddathYJLhFwPhc6ocwKmpdtTzUiYQGkjqR0zYWndllBoO?=
 =?us-ascii?Q?EC+Hi4by+D7Sl6CVs0s/Ydqmiyt9ld52A8kjJv6U9bpeXT4ksfGwtRED7BL3?=
 =?us-ascii?Q?mX32fsOaITVhyMaoZ+pmIwfffVqu556WSGOmRr41SLzXx8+lMDxQbz1pRVeU?=
 =?us-ascii?Q?5eNLVbRmNQfX5fg1O5H7M2R0qG7Q/PDo2daN+26MI/sYccr7w6VkEw33yTf6?=
 =?us-ascii?Q?+7NqzVuvqOglwKEUeXJEvtvtlUPfbXCTLi8nW3PJZ47sli6x6cnJDkOaXdB8?=
 =?us-ascii?Q?md8QbxR05GqvrM8H2M1VtQ7DA2NQTJcc1HjXoD7LxQhwx6tMG1Gu1E684p6p?=
 =?us-ascii?Q?fq62m3/KNWRcZ16hUIzdwp9UbUTNsuUsNhkWPG0REX5+cPzW7SuyoQPmg4Kc?=
 =?us-ascii?Q?ZhKZ8nhFgQf75P8Dp+OEHXOKtjDdorXINEpEFj9EJTuT2h693N7gP8YFhJ4M?=
 =?us-ascii?Q?VyPH3hgwuV92PuRJY/Xdhlc1WIULpJyGK27iwjh+sHHCoUdu9B8Ge2Cl4n9E?=
 =?us-ascii?Q?ig2WjerxI3AU9sWIZAyApumEqngqfJuumJJGb7NRi4klA+DgwFyXouh+DgkP?=
 =?us-ascii?Q?vAMJxyhPiCEHto5UK0M0ULm9pu+ciXq5K2bNyrDS9UbwLekjmkUF+sDrA0zM?=
 =?us-ascii?Q?qLm+3IfDHp1DHrssz563LKX/hS+Lq2MwBirjPDmnX/Y8YCo9KD2cTTKsY6ur?=
 =?us-ascii?Q?0wZ42d0W+HJxDh4F2BlMvpcuTGg/XjdV1c6SV6UlWn/pAzxMa/+d4Ji6eldl?=
 =?us-ascii?Q?uXI5jfuH58iDj9fmqjKyOqwX9RiuT+z2YBsRv0aB5chiR6V2Bs6q9U35PH4r?=
 =?us-ascii?Q?KEB6g3PzhKgygS81gupcDAHRjRLmDj57/maynytC4bdap0/7QMmyrIGrdSKF?=
 =?us-ascii?Q?DsC18rKehVtFiJp5MGtrtnGK08UqzYy9xTim1NtPUOGEKh/2RdByEpn4lg3n?=
 =?us-ascii?Q?OG4RmCUH7yhhLMMic1UAyrOX128Ry0GvHwI9mYczdr23mfMDBFZt4tOZNAMe?=
 =?us-ascii?Q?GuQAXf6sbm5UWcNiGdBeSy3DEmdltHw8Mng9sE46r2p7TAx6DItpGymaeKMW?=
 =?us-ascii?Q?WTFdJ8wpPk38QoRu4v2yxDZLCMuHMNgLOSKPAHA2flCnHFcFY8z3kembHg5k?=
 =?us-ascii?Q?2pUSpCNeOIeEkSDlBcDxfAr87vftZSs=3D?=
X-Exchange-RoutingPolicyChecked: WRRkd2VKlkf10EsQWn2ON4/soeA/Un5nRQS+rQUcxmcOktWSH0zZayzcvjNCp1MyaBqVSUfbbYy1po1i5u9LzhkPxm6lgSmq6vhDxnUiijMA6otWIgGi9T5Y4Uh0QdBn25Yag/0+YZIAbisHz2gVS4Q8BwN1P6P0nMCP7f4QoKcx5QHfvMGpOHHUmVK42lmtwnsvxdrrEbZcWFu3U3yUZN4cYPjtcVqEPEnCvp2rQw8tGqo0/aI9fH17bap2sR3zhhMBKzGcxX+DalsP1MW30P8yWfBPOJexEy29dOI8y1009zNEOq09Y/zi0yalTVZ9EVEUmjw4afOt08guQTYSsg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 84a9c66f-1adb-4b6f-4b24-08de915f7674
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2026 09:00:33.0242 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jzY1V89CgcyWW8hJDr8R0VRIMbp0M0Rq/DKY2MfZfO/Qttw/3ODD4Mnd6K1EKAN4+G/wU12Rxd5Xn1SSPfrWGTNcrqIdsSnw0TClAcG6wCA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8802
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
X-Rspamd-Queue-Id: 6BE353927CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently, memory management tests using VMAs for object mapping
are not guaranteed to execute in completely safe environment of
user process in kernel context.

Since these tests may execute in kworker, for example on
multi-cell NUMA systems, their process would not get its own
userspace memory, so it'd borrow mm_struct from a process
previously handled by the scheduler (current->active_mm).
The test does not control the lifetime of that process and its
address space, so on occasion it could borrow memory that is
being cleaned up or that would be cleaned up during test
execution.

Add a new parameter to i915 to let users running these tests
pass a PID of trusted userspace process to ensure the mappings
will always be utilized in a stable and predictable environment.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/i915_selftest.h           | 1 +
 drivers/gpu/drm/i915/selftests/i915_selftest.c | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
index 72922028f4ba..e29ca298e7eb 100644
--- a/drivers/gpu/drm/i915/i915_selftest.h
+++ b/drivers/gpu/drm/i915/i915_selftest.h
@@ -35,6 +35,7 @@ struct i915_selftest {
 	unsigned long timeout_jiffies;
 	unsigned int timeout_ms;
 	unsigned int random_seed;
+	unsigned int userspace_pid;
 	char *filter;
 	int mock;
 	int live;
diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
index 8460f0a70d04..a1ccfde7380a 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -507,6 +507,8 @@ void igt_hexdump(const void *buf, size_t len)
 module_param_named(st_random_seed, i915_selftest.random_seed, uint, 0400);
 module_param_named(st_timeout, i915_selftest.timeout_ms, uint, 0400);
 module_param_named(st_filter, i915_selftest.filter, charp, 0400);
+module_param_named(st_userspace_pid, i915_selftest.userspace_pid, uint, 0400);
+MODULE_PARM_DESC(st_userspace_pid, "For usage in tests that map userspace memory and require address space with controllable lifetime.");
 
 module_param_named_unsafe(mock_selftests, i915_selftest.mock, int, 0400);
 MODULE_PARM_DESC(mock_selftests, "Run selftests before loading, using mock hardware (0:disabled [default], 1:run tests then load driver, -1:run tests then leave dummy module)");
-- 
2.43.0

