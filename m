Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCHNFamt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:52:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A524851E7
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35C6510EB84;
	Tue, 28 Apr 2026 12:52:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ip7c9idu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B1E410EB81;
 Tue, 28 Apr 2026 12:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380772; x=1808916772;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=uqkAvltsbuJ27MET5gj1+SGMxIZsV0TkTFufjXElpns=;
 b=ip7c9iduJGMI6gcR6rAkHc33B6kkffwN0F13DdPvSrvn3fAjQN+U9W/o
 dyj3Zf6cTdV3hxyhnMo49xMG/4K1LnO545/lnkug44w3PcP8muOR5XJpi
 NhtHnBprS6RDj18PsLhWV0miWY2HyZaAF62p9KsQKhMF6740Wu+4PgAA1
 I07YXx8SdjNklI81q9J04+a/HE0vU7PaV+GmrUG7TMHlVPT/ICC29EgAa
 FEk+TLpONWCaVi+TbQ0Y9f6oKuWtbOJ637e54ywsGguug7mJegF9eaJaW
 RebSpKjZBwrY0t1kiC8qy/p8HDI0hjLI2arQrtxxiO1xAlYTFL78QBW2D g==;
X-CSE-ConnectionGUID: CiwrijOCS5ejdghohZ5dgw==
X-CSE-MsgGUID: jFk5+/igRv2pcywJGoMwwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78306388"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78306388"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:51 -0700
X-CSE-ConnectionGUID: hragLShBSg+zoa6n5g0Jdg==
X-CSE-MsgGUID: 3kEvbzXLRUyML7nBsBjTXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233895448"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:50 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:50 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:52:50 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.56) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RjNGFXM058+/O5Uq3HH9p7xaQCpV2gapGzHdAgsHx+wh7xqAnKc+yhpOkQRMTaCXHOuxIjcd2tpOAO3himF0tI87qPdHRFxVC/iKnVSz/gdOOe99hmjtzHgL0sfRtGxSNqsRWbcL6ch5aCZqtBmpE/BqKNpRbtm2VaYRg69Xz4OQ/NN/HtFD4giQ6qJWjW6il+g0k8FFFKvpF/i9/eOcGNT3x1KdWw1gs2OWRg76T77IvduC50TLxQ1dpa1mIYkzFg0wxa4QNEmIp3oCB3s+EHdCH37uNIM0Xx9waKPgB8kCe5e60Z9a4y2pYglozxyKktr3YXz7XuvbWPhxkixnCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M4VAeDIxXcHtECNkAn6Pk/w/P7Kq3u3q/6dff4acjKY=;
 b=mPDZIdJZn7T1Q7iTvixLtA4TbeX+qy6LCrGi/TG+vUSQKYJ9sVcKsGxQWo7MNvunS8vHLlsVl4mAUEIY5JcDZUaN8KmZuWZmLorsFRezxGHtwS1tNgtmprOZrs3PnDOt4cGxokJOi7QqmBbjAgtK3rOwfeur/Z1NNcO8yvYRfnX9b+4kGvc+oNpj2IwiKyZv/iiEQTGNiFZKmH2QxkzXjGhXR8zIpj6rnoIH77ckGTLolDRffKYw7hYgRySSKZo+tHaJOkSN8jVbruJiJdyqE+ur1/YuBc2TBtppALj7BYR0rzV2wlHw3Zf04FCfVtZ9v2bCg3/wQ1F8OiAbLqA6RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:52:47 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:52:47 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 004/108] drm/i915/dp_link_training: Introduce link training
 state struct
Date: Tue, 28 Apr 2026 15:50:45 +0300
Message-ID: <20260428125233.1664668-5-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: b54307f8-71f0-47be-9cfe-08dea5250c4c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: ka3XJ8wzugvwwnhFWqTuCsks3uHmbUYQ0Yt4Lv/g8XrYgI8x+alLW3HSFB9AbMKIBjrZUpQRrwaQ9znmEk363Uy6tWOXbemp3W94qeYNY4SRbQxeJflQ+FCl9JCbnMlZ/timOXmGYxk3qkTuzWh41vIsziQ6J59TBQQgscfn6qOCqwB9L50JVCK+5Id0Rsl/enFmpUD4ySsARJIBQ5mrVtNHTsNGwdcQgGqVIzzzd5sPedwafe+DRtvC7hM1mGBlaGRI4NbtnGqfg8oFYkk+HvAh2Y4mBF1cl4J4x1B800sSj4H1jUQ4tzTRntc3QGnTOKKr5T5ZleFgOeKwmykjQSSQH4accTqWPMrWilAkzGW0QrPu7+csoNEz6ctEdCCsrk9JP6YYvAbkD8nBsrZ73udXCHEccPZJPvni+aWKyuYHZQImBLCFVn9ZpiyUs4sLY+miHf8HX5aYE3Onz6wlxLxv+8zBa33PjYJm8whV1JZxCNeHYmubIRIzJNF8CxS7Q1BVAYr30mPU/LAKmz2oHcIPw2udbnWtlopxptqfaSvVBwxJvaV6ZFYWIW4yYGt8/YG+c3EhaZsbrqlygJGYeQtZ5FdG6owmta2yzkZUPSOUCc8nboyJwpPIaK8D6Fi3D1juxWtmf1f5iYxmV5DvNaVINOSyFP7jL8S/7kEQY8k3EzLk8W4cIsnxSAxC2vQG4qJCqV4eU67ZDhxgpiFyMS/1U8qb9ZosCsue4EsHDYo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sUTHo15P+JvQus9zMbj3iFMKK8q3NQRrXbhT3u7aLK6UGzt0PQZJVVcAk7IV?=
 =?us-ascii?Q?v28Vq8CHNvO75sVAkGBhNA+VNCkv5vEbc/BCRSs92OKPDooxbjWZAU0yAMo9?=
 =?us-ascii?Q?O2dsn/3nkRQ1e3O2d9Ytqf+MtR8mUdJjZaj93nXOc35I5R8yzN1eU+YnibJP?=
 =?us-ascii?Q?CXba3rKHV2N9ax/QyiF5dQ69ru13wBq2HabK0BL/7ePvBeI7lCs6BZK2k1gl?=
 =?us-ascii?Q?0d7AqXgvtlu3Cpby3LlNcazW8yV9gDMIWoqLvlKUNaouoFeODQIVeglT+LZs?=
 =?us-ascii?Q?G2pKvauuX+bSVEvV8v6GNZ1HmJoy1CDq0hnOWLjgg3pYq1OoDckOKLYk0Cya?=
 =?us-ascii?Q?Jv6q4RPxF4+ZnyXZcGNBQaRqxNowPHc0hmzOUZL8UImM5h2NZ1th/YpMkoji?=
 =?us-ascii?Q?HGHqc5JwNr/dq5PJ1WQdW1ZAYSwR4f8S/LX0Ey+N8cbJw+vNo0rakOutauDV?=
 =?us-ascii?Q?5Z1U9YIoG02/BavO44nmsylWblwt34i+UIRY6RnIbqa91qimnOak9bWKjRkZ?=
 =?us-ascii?Q?AkgcRSF0P3Tkdfl9erpLH+lavRvOolwneL7wfGYPYJ9w0NoeQyTSEzYzgGdb?=
 =?us-ascii?Q?k9888Jr4CVE7DDbzH/+udbqpaMAq2gtC58R54xz+qL9hjwtGvn9nW7WnXWDM?=
 =?us-ascii?Q?QE9i9dTHvpKfa+rAAxoSd9n08RTjGKkd15LdLAtx5j+hBqa5ZZMSofr1hv9M?=
 =?us-ascii?Q?noacE8/1DAs/6g3E99dG8486S1QA2sfLzVxfXzCgIX2pyk2vrHPmPSQcWrAH?=
 =?us-ascii?Q?gZ+v5v/Aed5K4suqmooL6jO8LTW+Ss7F/Q0TQnx7488uFQ3TUBd4iSqfMpPY?=
 =?us-ascii?Q?oVFxI5V1nqGBozy0T7osxT3SL9rAhEWHnCO4PLhZys7ELhW8uG8gtXhAoY8m?=
 =?us-ascii?Q?x6smuron1zw53VBp/IwOY3OTwTHmkkKHI2Nm4IAABUj5uppM5B+aUd9tGFKJ?=
 =?us-ascii?Q?CBYroLVt6Fr5zWxjOgn5dtfuHsdIubdfQsIN59GRUs33BZbrJGOanmM5pDXZ?=
 =?us-ascii?Q?77YzIgTp+4tezpKPZ0ErjxTMtJvpOFxyg+rDnKKpn2v1QDaLF+6m3nVjMJ4w?=
 =?us-ascii?Q?ZRfA+P/gFoHTL4fF/qsATNmwPCHvRSm6tsyAEIHv9ctloeIhTfNjEASfIsz0?=
 =?us-ascii?Q?rmFFZuWGC0GJgH1B9NwPSKlRWNwWPX1j/SxN57q1SnNWvamwPMYmPX8KRp0L?=
 =?us-ascii?Q?l1/nab9pqZvZLuo0xFrwswwxyh1Q24AXcFi2ECtubhMLKUfz9wjOooJqsXjJ?=
 =?us-ascii?Q?oVcxMF2JNB5kfHa4WpTGr7xVLMXz9RnBpvuXiXCyDjb46qbGqpWaVdxeBhBl?=
 =?us-ascii?Q?2191RmbwzlESHat7PTkkz7vEwadNQx+yC64E/vcc4aXn/GsK6daKUINaiF2N?=
 =?us-ascii?Q?Ptw9/eQEgksHyX+UwVcuf5Ts3WC1I+NKRzObvnrflNSlfkpYRFCm37U9ML+q?=
 =?us-ascii?Q?L7YEwuDodhyPMYzRKEOI02P5UfBlF6vpoxXKGdMgHNijJ/hzVh0T/G5a2TuI?=
 =?us-ascii?Q?Vz9F7OJ/8s9+yKuySOle8apfVCn/qrcdhWgB50iXy+vG90ir2+XwPBbLn0Dw?=
 =?us-ascii?Q?7teKJZzrwAmltTrwJuUZvKBdGb/T8TE9TsVe/ZnPXLnn5xQ7VfspIKiAzjLM?=
 =?us-ascii?Q?TalBr5ZXCkZHbQ2U9DAU3ZKFuiMm67dZGdqZ53JvX1h61vHth3sIHUnTpDTE?=
 =?us-ascii?Q?OtJakpYNjeyRJFNwV3StdUvMFefhDmL9iUlgjy5FZ33S9I9MqWrkkF4x0lMW?=
 =?us-ascii?Q?3HS0KQWiDQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: J8lVeUdZ17JZjNmv7QaW54mcUS4mwU7flMBFzZvR45yvjbHdqun7N3bOqFR89+rp04V+Jswu6gCEWmLMeOfuBs1GHd4CU+jXrhYuTntEj9MF/OrHHbOoiPCjpgUaeHrVPA/3DGtrI1u2nJLkdQxeUvyyQHndat9rOrbtT4+iEI7HaDF5ZwgNcDINhnkiMdC4S5uVlX8m1FbGvpHBgo4PnAhStH1JdYaLH76IJDAoQQF9IWV+KB1Le3VoTae490xkdvdN2FgUlSZFc+kHt13NVFx3lRGv5gwTzneRWOW7/lSagwnacfok7epA314a6qtd1I2m/4xScfOv7pJ7phNfJA==
X-MS-Exchange-CrossTenant-Network-Message-Id: b54307f8-71f0-47be-9cfe-08dea5250c4c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:52:47.5024 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PbDa431MF+FZycMqogw/eJWWEIqGB8SvAi1JBdHWZWbLhAY3U0ZI9ocD6hOClmUh+RsMseWRQUAM+ycX5N+5tw==
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
X-Rspamd-Queue-Id: 03A524851E7
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

Start isolating the link training state from the generic DP code by
introducing a separate intel_dp_link_training state struct.

Allocate the state so it can remain opaque within its own module.

Follow-up changes will move link training fields from the DP struct to
the link training state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         | 10 ++++-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 18 ++++++++-
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 31 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h       |  3 ++
 .../drm/i915/display/intel_dp_link_training.c | 39 +++++++++++++++++++
 .../drm/i915/display/intel_dp_link_training.h |  4 ++
 7 files changed, 104 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 5e74d8a3ba5c8..e1698172a8163 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1252,10 +1252,13 @@ static void g4x_dp_suspend_complete(struct intel_encoder *encoder)
 
 static void intel_dp_encoder_destroy(struct drm_encoder *encoder)
 {
+	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
+
 	intel_dp_encoder_flush_work(encoder);
 
 	drm_encoder_cleanup(encoder);
-	kfree(enc_to_dig_port(to_intel_encoder(encoder)));
+	intel_dp_link_cleanup(&dig_port->dp);
+	kfree(dig_port);
 }
 
 static void intel_dp_encoder_reset(struct drm_encoder *encoder)
@@ -1350,6 +1353,9 @@ bool g4x_dp_init(struct intel_display *display,
 	intel_encoder->audio_enable = g4x_dp_audio_enable;
 	intel_encoder->audio_disable = g4x_dp_audio_disable;
 
+	if (intel_dp_link_init(&dig_port->dp) != 0)
+		goto err_dp_init;
+
 	if ((display->platform.ivybridge && port == PORT_A) ||
 	    (HAS_PCH_CPT(display) && port != PORT_A)) {
 		dig_port->dp.set_link_train = cpt_set_link_train;
@@ -1419,6 +1425,8 @@ bool g4x_dp_init(struct intel_display *display,
 	return true;
 
 err_init_connector:
+	intel_dp_link_cleanup(&dig_port->dp);
+err_dp_init:
 	drm_encoder_cleanup(encoder);
 err_encoder_init:
 	kfree(intel_connector);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2681940a5cfe3..f094830d34b92 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4656,6 +4656,7 @@ static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
 
 	drm_encoder_cleanup(encoder);
 	kfree(dig_port->hdcp.port_data.streams);
+	intel_dp_link_cleanup(&dig_port->dp);
 	kfree(dig_port);
 }
 
@@ -4693,11 +4694,16 @@ static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_connector *connector;
 	enum port port = dig_port->base.port;
+	int err;
 
 	connector = intel_connector_alloc();
 	if (!connector)
 		return -ENOMEM;
 
+	err = intel_dp_link_init(&dig_port->dp);
+	if (err)
+		goto err_dp_init;
+
 	dig_port->dp.output_reg = DDI_BUF_CTL(port);
 	if (DISPLAY_VER(display) >= 14)
 		dig_port->dp.prepare_link_retrain = mtl_ddi_prepare_link_retrain;
@@ -4710,8 +4716,9 @@ static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 	dig_port->dp.preemph_max = intel_ddi_dp_preemph_max;
 
 	if (!intel_dp_init_connector(dig_port, connector)) {
-		kfree(connector);
-		return -EINVAL;
+		err = -EINVAL;
+
+		goto err_init_connector;
 	}
 
 	if (dig_port->base.type == INTEL_OUTPUT_EDP) {
@@ -4727,6 +4734,13 @@ static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 	}
 
 	return 0;
+
+err_init_connector:
+	intel_dp_link_cleanup(&dig_port->dp);
+err_dp_init:
+	kfree(connector);
+
+	return err;
 }
 
 static int intel_hdmi_reset_link(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c819167618502..27714e4cffcdf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -58,6 +58,7 @@ struct cec_notifier;
 struct drm_printer;
 struct intel_connector;
 struct intel_ddi_buf_trans;
+struct intel_dp_link_training;
 struct intel_fbc;
 struct intel_global_objs_state;
 struct intel_hdcp_shim;
@@ -1853,6 +1854,7 @@ struct intel_dp {
 		int seq_train_failures;
 		int force_train_failure;
 		bool force_retrain;
+		struct intel_dp_link_training *training;
 	} link;
 	bool reset_link_params;
 	int mso_link_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index df34df6610ac2..442610054d7f7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7526,3 +7526,34 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
 
 	return true;
 }
+
+/**
+ * intel_dp_link_init - initialize link state
+ * @intel_dp: DP encoder state
+ *
+ * Initialize the link state for @intel_dp and the connectors attached
+ * to it.
+ *
+ * Return:
+ * - %0 in case of successful initialization.
+ * - negative error code in case of failure.
+ */
+int intel_dp_link_init(struct intel_dp *intel_dp)
+{
+	intel_dp->link.training = intel_dp_link_training_init(intel_dp);
+	if (!intel_dp->link.training)
+		return -ENOMEM;
+
+	return 0;
+}
+
+/**
+ * intel_dp_link_cleanup - clean up link state
+ * @intel_dp: DP encoder state
+ *
+ * Clean up the link state for @intel_dp.
+ */
+void intel_dp_link_cleanup(struct intel_dp *intel_dp)
+{
+	intel_dp_link_training_cleanup(intel_dp->link.training);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 2849b9ecdc71a..f2abd6059a22a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -238,4 +238,7 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
 	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
 		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
 
+int intel_dp_link_init(struct intel_dp *intel_dp);
+void intel_dp_link_cleanup(struct intel_dp *intel_dp);
+
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a26094223f780..c4e461d24e2ed 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -60,6 +60,10 @@
 
 #define MAX_SEQ_TRAIN_FAILURES 2
 
+struct intel_dp_link_training {
+	struct intel_dp *dp;
+};
+
 static void intel_dp_reset_lttpr_common_caps(struct intel_dp *intel_dp)
 {
 	memset(intel_dp->lttpr_common_caps, 0, sizeof(intel_dp->lttpr_common_caps));
@@ -2217,3 +2221,38 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 	debugfs_create_file("i915_dp_link_retrain_disabled", 0444, root,
 			    connector, &i915_dp_link_retrain_disabled_fops);
 }
+
+/**
+ * intel_dp_link_training_init - allocate and initialize link training state
+ * @intel_dp: DP encoder state
+ *
+ * Allocate and initialize the link training state for @intel_dp and the
+ * connectors attached to it.
+ *
+ * Return:
+ * - Pointer to the newly allocated link training state.
+ * - %NULL if allocation fails.
+ */
+struct intel_dp_link_training *intel_dp_link_training_init(struct intel_dp *intel_dp)
+{
+	struct intel_dp_link_training *link_training;
+
+	link_training = kzalloc_obj(*link_training);
+	if (!link_training)
+		return NULL;
+
+	link_training->dp = intel_dp;
+
+	return link_training;
+}
+
+/**
+ * intel_dp_link_training_cleanup - free link training state
+ * @link_training: link training state to free
+ *
+ * Free @link_training.
+ */
+void intel_dp_link_training_cleanup(struct intel_dp_link_training *link_training)
+{
+	kfree(link_training);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index 33dcbde6a4089..e68d51bcb42e1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -12,6 +12,7 @@ struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
 struct intel_dp;
+struct intel_dp_link_training;
 
 int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIVER_CAP_SIZE]);
 int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp);
@@ -55,4 +56,7 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 
 void intel_dp_link_training_debugfs_add(struct intel_connector *connector);
 
+struct intel_dp_link_training *intel_dp_link_training_init(struct intel_dp *intel_dp);
+void intel_dp_link_training_cleanup(struct intel_dp_link_training *link_training);
+
 #endif /* __INTEL_DP_LINK_TRAINING_H__ */
-- 
2.49.1

