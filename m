Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOYeDqTBkmkSxQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Feb 2026 08:05:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8FE1412F2
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Feb 2026 08:05:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E99D10E187;
	Mon, 16 Feb 2026 07:05:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mlavie05";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA35A10E187;
 Mon, 16 Feb 2026 07:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771225504; x=1802761504;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=g01i/5jzUARBhJMo+kUtjOsIsrScCBcgMDys3lzuEqk=;
 b=Mlavie05OmzyQiPd2IR0F7MM+qe3hEfSJCBpgk2wmKFChO8pheIhZgVn
 N81H0vDL9Pukhj2FXXSobpzhoSdIrn/gDDtRpn+u5uzV5CcEOAHYY3QQ3
 hmN2HnvVrG2DZMaDmy6ubtIjytsNSC2OF+G0YUUx8RccAb5jYN+t8EA2S
 bhSvE//WdJaKmvDBecDQEbusnFYo8p7PGOZJ2nEjECt2XzXXM4bLiEekv
 gEWOdXki22yQo89Re7JIgQFAP51FLidtEi/TbV/zOOjuFoM6HwQH73hXq
 gChtMz4nBN0Gs38Y1Kzpf2Q2dUr0SAcCVbV6yFEhwXDe49/hPAAPPASiR A==;
X-CSE-ConnectionGUID: DBWqHRYJRWOLt+7/s8UguA==
X-CSE-MsgGUID: uiXae94kRtiHPA4MYiI9tA==
X-IronPort-AV: E=McAfee;i="6800,10657,11702"; a="82938072"
X-IronPort-AV: E=Sophos;i="6.21,293,1763452800"; d="scan'208";a="82938072"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2026 23:05:03 -0800
X-CSE-ConnectionGUID: VJ9slc6fRa61gXpAV70d+Q==
X-CSE-MsgGUID: WrooCwg3QW6wWqJ5V69Qjw==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2026 23:05:03 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 15 Feb 2026 23:05:03 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Sun, 15 Feb 2026 23:05:03 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.20) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 15 Feb 2026 23:05:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WubmD3kK9njP94Ach1HngWWTUUejzptOOsDtcqvOVCt9+nruzIS7lMRxqyE317xazqqsbI+xhagq/aLk8v3wGHBHBd1lff16kdxpRCVgCZw/emyh3y7PTYWyG9o+09Jj9Qa0foR2OYrq1y2RK6TXD3MU3DreBZEiailiCpxnWBm/3QG2q4Y6KQe1fwiIth/aYyW1UrbORm01w77KSKdWetbT6lXhWykUu2J3VWyXTZrlKJNu09i4c8mmqxlAnXqPwIVgpT04rM+uWuGBKA/ASpMVY023O7HYjhLyqKMqyW5xo3GMF+LbOrYLaYxjmuzvsk1dcjN1rxhU6ElBL4ieTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zmOYErPF+UDoSzJj47utuqrbcvN66iRrT2rhfPO2ioQ=;
 b=rkVGjOLyXdMw+0cBZg7RoN5b8uSYDEi4GQ5NYVVibFthmIG/dYSb2mjF4OT9KW57o7KH0oV7vU45I176ieMnYW8gkpHLcDCgQUcs1PMftSRKhn9jvF4pTPACyQqcYgHYZS9e1AEW11bPcX2i2gAq+W2oFY6LbD+l2u6nn3h/YNASjb7e+qTa2MKO30JqKQu82UrrQzNa9O/x9KnAT7Lfg9N68FFX0qiFFXAaZPJXVkFqV2on5Tkxk152RR7mtxWzIxUUkom2LIzTXbBADt9QNOC7p96f8UAbhrtyMsm7jcbTc1Tke0iFR0+abKbM58YiJ4Ej588VK/QOQu4MaqONLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BL1PR11MB5240.namprd11.prod.outlook.com (2603:10b6:208:30a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Mon, 16 Feb
 2026 07:05:00 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9611.013; Mon, 16 Feb 2026
 07:05:00 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 3/4] drm/i915/dp_mst: Track min link BPP as x16 fixed-point
 during mode validation
Date: Mon, 16 Feb 2026 09:04:20 +0200
Message-ID: <20260216070421.714884-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260216070421.714884-1-imre.deak@intel.com>
References: <20260216070421.714884-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3PEPF00007A84.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::616) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BL1PR11MB5240:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b3180e3-7d95-4b75-2e17-08de6d29b365
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?XMoB9EYyJBtxS8kP9WhS7XqpzySJTch81cqwSOXWf37FGnVfssJpkMBarkFV?=
 =?us-ascii?Q?INu7YAihkYOR8GaPRbBRau6GjBGPJFhd2z0doHa9HQFlpdVdWQPQy3Fl9ags?=
 =?us-ascii?Q?g6l6BTpR+TV/j92HAtwnCE7oK0oyJrebw3EZbDLpI58jJY1D03d5e+bY795h?=
 =?us-ascii?Q?+rgO3SLoMJsMr1BA2T8/ceIw2p0t2gXf0NaEm94J7JX2kcTBzFLn6FnrIPEf?=
 =?us-ascii?Q?Ll36VM6ru11/WtS4t7vF7uXXjpVQt1CvaoPstO5CShMUR7D7ZvUQYCCKUxAa?=
 =?us-ascii?Q?Vaved7lZnShRDvg8fEWO4Dl+VkOVL05tObL+tmOxWb8WSMhPKei68sQGv+Nt?=
 =?us-ascii?Q?PjHc2/q9o6DqvDPLjKm3Few0ZrifBUbUnlGAUaL5GaRMoa1eRANDGZNJf9OP?=
 =?us-ascii?Q?cSilCORs8VanEPjvSmHQmn3QqG37qD+3C4thwK9Msx9JHSCr7+4hAZfwNLcN?=
 =?us-ascii?Q?n/5N5g6I99w+lSARJ5haJd63o1vkRXEDCVSL1N9IV2tYAY69CHZ7N7pqa2qn?=
 =?us-ascii?Q?2xDfmrJ78s42lFrZjY5RDCZHVRelGG2+WDSjlIOZg5+QTBS3cSmsKsY9ch5c?=
 =?us-ascii?Q?AzF/FLu+RE8JORBBnfC/prpctgNOKLKMvCbi0L7IZbm8PioI3MQSs6mDiaB9?=
 =?us-ascii?Q?/vfUkqTsH1GL591P55ZKAc43INDoslAAZJ7RhkAIz23e3cNMJeXT2OWPVaHj?=
 =?us-ascii?Q?ipLL1IUreUw/4ZZZVPIiTP5/r0oMwZFCxAXx2OEx/ayQB0ouwD78KxK1bV1T?=
 =?us-ascii?Q?b6a6z3Oyn6H3kTRjRSIlXALwE9oI/T4N0GRlZXnaA91mfR0dBo8FFTWdc5N9?=
 =?us-ascii?Q?n3dxXqCja9blRmjWJVtMPP2Rw2vnBNUqUGpc4I4+vLQGBuTIifYfn/YCKODH?=
 =?us-ascii?Q?ZVyVF6R1VoB5PbmgTO2h8a9Rk+PsWEnPRB/SusqidNzxrNMawYhFJvPnW+8Z?=
 =?us-ascii?Q?rsQOxUW6+iM1YUFLJmN0jgQCMD8ZSH6zFMMgZ7Wi29+ztGe1pdpOdqhvmWry?=
 =?us-ascii?Q?I4l8pI7DavLAlk8SpGXjKpW92MVkiecxOZdgBhGyGEhW7WMAVv0UBCyz0BoM?=
 =?us-ascii?Q?pKfkjt92HnbkYPJ2+gyQZslD6PYEduIkM0ceBVg8qsu8esP1CpQlfXxKep+o?=
 =?us-ascii?Q?uLxxNbbRLEUqwbG+A2BZAdUUxdFbRkCohnesIUx/3IwOmwDsLD3kvpuFbo8y?=
 =?us-ascii?Q?4KzZkevbmqRnvqBoqGFN1X5IzyiVGIojozrV6Ifqb7kzO/Jbs8nALa836bKt?=
 =?us-ascii?Q?9OumRsoWkF3RGpIhqlfiAAOMYkMY0HRNeZJXQ3a4fXtbVktLghF8gqaIsnMD?=
 =?us-ascii?Q?/SPy2PGmH6MCNL6RlMwpGKxrp2XJwj2g9musDAtVFnxRGN5lbGhjo4G/ogbG?=
 =?us-ascii?Q?QPzx1jC1lluzHvtQej43vvP8/rLJqMamPtpRqrbE0tGnW93z+hrFXvK+zuoA?=
 =?us-ascii?Q?fKRArdKZspJOxjCmGqSNhIvNbP7iLVx27tQA8goW/CFbrhLnvN/xkoI3UGXI?=
 =?us-ascii?Q?Zwju+a0jL7fCYAMO7Ze1WLdcZ7PKVZmVb9zQAiHZclE+Bf5pryGJNnqV1aMX?=
 =?us-ascii?Q?dVoPWA5Flf33cQQ64t4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ylrmSrAYjt0f1sMeG+/TQzIob+HBgav9jfDSgSorLawJk5roGG/JXTDd4jsf?=
 =?us-ascii?Q?5jVAZ2VXOB60xBE7V2DGxVRHL+MNlzyLuSrZH7Saco7zECQovYvqDleIIfnY?=
 =?us-ascii?Q?BMshfUzmu1Dgy2A9ZE3yEQzkXw8Nb0bJZWlJ9/8LlZ0rZgd+qyq+sQopqMLU?=
 =?us-ascii?Q?uW/GFYLA7KsEhzxyO+XO/xr5lmR8A5OmhP+X178TM73rAY3nBtcyvhOfTvRW?=
 =?us-ascii?Q?aqcTKqqS9MKuYrqKfJJGMF4nxH9fM/HQFkZ7QysBYssWBRKCi+/R5o6O0+oJ?=
 =?us-ascii?Q?8fWyWIjjS5wGGI6sMwWV5LsB8vd7QCt7KR9gvgqsdLdVuIet+jbvHv/zAfdE?=
 =?us-ascii?Q?17nG/NOnLlOnB9CfrCZV1eHys+07Z3NYaQAU5EFar9AyyD2L4ui8GQ5eWpyr?=
 =?us-ascii?Q?aaazUm5fkxZgyNDame2xFVnGTNUTKdusSQYqeX9DjNHpQIwsG0MS+NtVW0s6?=
 =?us-ascii?Q?Kwe9fN6gS5cEvYF9RT1VtQNPM1BqhEtqEYTRjbB/pXZeZvX0wFcA0mHym+an?=
 =?us-ascii?Q?82pTJIwkeop/syjjlhkmW1I2ckxJ04E610fnBfGhpIaJ4tNGFh2lxdl0auG0?=
 =?us-ascii?Q?cmhzsyd7Z74muMhZUrvJhj11IvTE+AUUHX3vGOcSSw1wp6z3xSyNIVlqk2oU?=
 =?us-ascii?Q?MUPxw6Zk7HiVgNgdy1CLpWs45frWqlerQpkld/f1EKw4WSp/hyV9Ri4nkWrL?=
 =?us-ascii?Q?RiG9ECPLr5QbdZwnOk98FH1dj9qDDkY3Pk08oXcz0ln1MMvLy1Y4og/7hN/z?=
 =?us-ascii?Q?s48tjSKQXiB5iEYOR7QPWbylaIBrnZ59yOcPlMsV4q4+gzowgyxJ6P5GTiMR?=
 =?us-ascii?Q?3J2xvei7GLkHgaD2jIvbyN+jMIYMGJJqqbP8HlebCFw9acesQIIewC7WbA/X?=
 =?us-ascii?Q?iHeulPGJnpddHQSLfZpZnnabwxtSTU8d1xj8wBi9UJImPJRsvE50ANVXQyOV?=
 =?us-ascii?Q?XbsIJUSfd+hT6v7aMtRXDhr/QhyCE7kVuu/Pq6o/PBVrkzUktln23HB0YXoD?=
 =?us-ascii?Q?q2S+jlKNnFjdovQ730HiCal69IxwAHbPi+orNoB67I2As976/KeMpMy/3Ig2?=
 =?us-ascii?Q?35iM7cft0zG91g/pQ+I/qqQpTBSPjjlAzNVw8/Ow5o14CG3vDtTqWtmQ1Fhf?=
 =?us-ascii?Q?X9PUd7nA4Yc3li76jnu6aMdRbgVJL43VmatsHQnM5+MYmHqZNbT7/3oW8D9Y?=
 =?us-ascii?Q?IBNS+06PmtFGGdFwFypZgKfvAMmn/7xHekJGduyJrwfe915RKr4OnV2WVlPm?=
 =?us-ascii?Q?Ilr66ekNyNGv+yArO+FXaxiRVkfHoj9ngwAVwgN14V4QLZjU78xjN98pkQlO?=
 =?us-ascii?Q?oXrNgvX4n6wrwrVFcvkoqsMVgllBMAxf4z490yiIkzf8/vdbEks/Upec8DWe?=
 =?us-ascii?Q?TDO5NNS97OMA04mHlfATXwTFBc9TgliJ0Hi+j+o+J18JU80RDUj8DsFu1sSG?=
 =?us-ascii?Q?SsaU7EpV3I8Z9mMSFjsJDPllYJPtqsV3DswQJiVgYasGpDiANy0x7U76wInC?=
 =?us-ascii?Q?DUhUY2Qbl70bqLUpaCTfSQsAK7bCMbZXVikC8oCwFUFZLWdAGtPDlHxOFNKC?=
 =?us-ascii?Q?0nKiTCHfxgBWktXKzovctpkSCPREqmnp/48mycFl36yhZthIuDmKO27247Bq?=
 =?us-ascii?Q?c6t9sSjTkFFVFCWT3tXR/8lDNdlbPfuSYvB8ODqLhWpEdnm3aGSejXut3VSW?=
 =?us-ascii?Q?HWfKcgNKsc98i1/XKHLxf9RDI8fzGD5SUu7gTrRB/aJ05LWolmjWQqrSvgz2?=
 =?us-ascii?Q?wUJeS3Z6bw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b3180e3-7d95-4b75-2e17-08de6d29b365
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2026 07:05:00.4815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YHRYXRAhTJ1scbGBnRuwvRaPOkhx+fH4J6NpNmE3coOdXPUGmS/w0DlQK9gwfJGqPk41NSpAlG53c4ofpRCOaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5240
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DD8FE1412F2
X-Rspamd-Action: no action

Track the minimum link BPP as an x16 fixed-point value and, for
clarity, rename the variable storing it to min_link_bpp_x16.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 29713075e4135..7ca2e2245fc70 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1463,10 +1463,10 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	struct intel_dp *intel_dp = connector->mst.dp;
 	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst.mgr;
 	struct drm_dp_mst_port *port = connector->mst.port;
-	const int min_bpp = 18;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	unsigned long bw_overhead_flags =
 		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
+	int min_link_bpp_x16 = fxp_q4_from_int(18);
 	int ret;
 	bool dsc = false;
 	int target_clock = mode->clock;
@@ -1498,7 +1498,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 					       max_link_clock, max_lanes);
 	mode_rate = intel_dp_link_required(max_link_clock, max_lanes,
 					   mode->clock, mode->hdisplay,
-					   fxp_q4_from_int(min_bpp),
+					   min_link_bpp_x16,
 					   bw_overhead_flags);
 
 	/*
@@ -1518,7 +1518,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		return ret;
 
 	if (mode_rate > max_rate ||
-	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
+	    drm_dp_calc_pbn_mode(mode->clock, min_link_bpp_x16) > port->full_pbn) {
 		*status = MODE_CLOCK_HIGH;
 		return 0;
 	}
-- 
2.49.1

