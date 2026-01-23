Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wEwtNA3Jc2mQygAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 20:16:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B7A7A0FF
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 20:16:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4A9710EBB9;
	Fri, 23 Jan 2026 19:16:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cIcVvofA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8C2B10EBB9;
 Fri, 23 Jan 2026 19:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769195786; x=1800731786;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=AfWJp/HaZ9Spr6K5f+9y4inV1agyWp3GMAqyUQL8xVc=;
 b=cIcVvofAAbxMcWE6dnxqtSWpNOxFKZR6vAY0yFMRGlBpdHAu5smt0ITv
 dDbPB4TUSzhk/Afr53rZvIayQPk+XsoYelu97xMiFPLzvORO11MNKfY4U
 bGen/cjhnFuHbr4HjHO1icDj3OtLwZVyEDquMVBSq0LyiYohoBLKNtX1V
 8mfbi36raOJ6OGlMiPRNkqlYq6raTR+bMMPNS/+IcaMi8JKPLe3+A0Gmu
 NvlcvEh41o0DuEpGSD+LNSrvd52xlHimA+5RNw7YWtd4DwNQEKYxQR/4H
 G5bLu4MiZEIsaQgCMiPT9EUARO/ZKBV+HrgV6V89i73VPcfXXD6jz4h+Z Q==;
X-CSE-ConnectionGUID: 6ZfHyjLlTa62Svm24Vt9bw==
X-CSE-MsgGUID: MUh7arGiQ3GjMS4aLM8u7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="81170660"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="81170660"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 11:16:26 -0800
X-CSE-ConnectionGUID: fNncOvN1TVWVA05t+IJ0qQ==
X-CSE-MsgGUID: xB0akuw4SKGurZRNunrbxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="206906710"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 11:16:26 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 11:16:25 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 11:16:25 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 11:16:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BK9HwOJ622h+DYz7/Skeofr4lex0ArsyWqucmFcmhhFAmOYbVx6ANqL0LPrqqw8Rz6W1Le/K7A3zip2IGvQwAP7yXmUJCRyUlT4zWCNCcV7ySGQ9erziDU9K0+gfpQpP6RP48fPR1C6Di5rNtUatUw5mGsJPwIIfgC9Mh9GBsA/RHip2iLJD1R5LrolyUbl0Hw0Zc3ahHmyIJvhi4IOHwlg8fHdoaDrkni7G5zl5tiq2fQlC3fT/jejXgvmSt8g84xKvTqbQ4nPTmv0PNXC7tv22MSmx6rxCvVFzXCLXbPK9vFG4gs2ZiOZgaRilmSN/f2WrFMT7zLNh7PSUNUALxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KpOHPHfCwAc5a0CB/M3iDsd48R/q8inbqLsJ5aFl2yU=;
 b=JiyfcIFdIp6S5owGFrsuI2n3nj/oYD9x/4YLBvoFcepzDLvgflaDfH3rdKvPL41sTdon0Ua16YXvtjtF1xVuA+4v47ageleJkvputtnacxwJgvoyyjPixSGJeS0aJ4q6w4JmVIieXT9K+Aem8fjmi8M5pNP1A/OxNlFYwPf0E7JGMFcebzkyDVAvYV5YRMvaDpvWTWzgXue82Bht1qU3DV8RT5081AKq4D8jF+YTV5eGjM6DVF5g/r14eZFk7SXgdPgzxh5w+Xlr3bPy4B0sQE/PXoB8Lw8C3Oz56pIFv++jX4IB74Vkosl4emU9iw/9Cqol6z4Ou3VIpm/9WWR1fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9207.namprd11.prod.outlook.com (2603:10b6:208:578::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.12; Fri, 23 Jan
 2026 19:16:23 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Fri, 23 Jan 2026
 19:16:22 +0000
Date: Fri, 23 Jan 2026 21:16:17 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 07/14] drm/i915/dp_mst: Move the joiner dependent code
 together
Message-ID: <aXPJARSWQ-SLRIYk@ideak-desk>
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
 <20260121035330.2793386-8-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260121035330.2793386-8-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: LO6P123CA0057.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:310::14) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9207:EE_
X-MS-Office365-Filtering-Correlation-Id: 53cec009-f6d3-4c29-2878-08de5ab3e557
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?byYwjKqwRLBFIph4SbbvzkDdqZhwaUvpyub+dZcbMJTzENFgrAdP17OzThyD?=
 =?us-ascii?Q?gvUdKiXhI32rpDjlIPluqcUe6zw5c1W3W8nzd/HSL1iRCvR1EXxzWIn7CGCT?=
 =?us-ascii?Q?T0wnDN0RoVOvHHzmzzhgbj4LLyuAmOgmf2cScnDCQzCdbf/ZnUUuzqotHGbj?=
 =?us-ascii?Q?QZfWGUzqTJiUeJgN4ZuxKSoagVRyFEcB5t9eCzRdYoU772z7gCed8ipMAM7C?=
 =?us-ascii?Q?0Q3ZvsAD3+akLZGoAC5fpEbFhWvxXxtMDs1TZBYLj2vQhGvb2Ytn4YcBy8BY?=
 =?us-ascii?Q?BKfWttHAObaNO2GNLmWOJffvvvdckElVDywL4FecXXlC+Djl0R4UJpgtlLmi?=
 =?us-ascii?Q?ZXk9El/wGvJm70QzcWPod/TmokKbButD1zMVHphVgEXliDAquUqup+Jc9dFt?=
 =?us-ascii?Q?u+CmQN9u/tMqys2Z74Lt58/h/v808+KeZng3gEj8w80YU3XLo3bDjmU7jwZ/?=
 =?us-ascii?Q?4kqCPny3t3phdKy3IJX05KexG7+Yvo6vDfZov8y70mPArPUeSz+hkCDPGDeV?=
 =?us-ascii?Q?8YL/dTrbY2SsE0wY4PbH63qeevSoaJTHVJ0hO4Jv3WRlahNyFPQyN3o54SCC?=
 =?us-ascii?Q?965tIkfxRj1XAnigG10Ymi84giLEPFMnXwaiVIb5h5ALk0oD2QcAeQVVnd/p?=
 =?us-ascii?Q?BsrYws2cjqLBwVl96psXqXIKLclPWX5du/4BE3FpivICxjVb0SZrLchn8CS8?=
 =?us-ascii?Q?/zAa/eKrzxZogXNTrjFHgOZ/Tjo5d1MsTmWC3+oT/CZvp+De7obQg5p+yZRe?=
 =?us-ascii?Q?9A/KbQJ/3GRDhYtNkAkj8CTgeDBRdUUdsqmsR7A7cOLdTwPnFz0dlLz3wyZF?=
 =?us-ascii?Q?KsC8o7U/E+ho0nOiGMuFLnP93FlWc1gNxTmg0KhUW2eLBnwNRqV2y6uH7BZh?=
 =?us-ascii?Q?c/X+nXuZisMq3KicfWc7AnyDbN0b4ETzxitApj37YUWRrltQ99enZNCohGrl?=
 =?us-ascii?Q?k4JA0l8yQ0/20SOSuhtlTmTwgVlFkLTvzc1azTHjHs0em9+hk8zyDhTIF2BI?=
 =?us-ascii?Q?BsDexuQ3oq8RrmkjBr7QUFiIyuY2+IgGP+zf7D26OBw27RKfhga9lJURRuyt?=
 =?us-ascii?Q?SZlauFvCXLSypReJ0TCfsTW9JJaCfoa9L7w1LP/F4vemw/BQUyfgSCdqSE4t?=
 =?us-ascii?Q?Ha6W1V9PJPaTevpWODwjWkgcWfJgPGQ+mlBNmjsyoTMhX/DR2CrTf3F6j5cP?=
 =?us-ascii?Q?bLqeH/UGZh/Xdf1jy0/PlDlp8G7P3QiS/nnIQQ4qWKlluoXOG3uSTeXGdNT/?=
 =?us-ascii?Q?+92pR58d/yMvYFLcYaP16+P9gmuRJ+Qe0V/0UMhsIDsUu9JtImId2uWQokgu?=
 =?us-ascii?Q?aP22rc8mLVNz5vpGoxf6L8zJ8ZZf2LXL/GxHon2ulEupBwdS5QNvPezOuSCN?=
 =?us-ascii?Q?D7sqnuVnNvqEbbf2fk+Sa5vSmCtYcgtRqf385i9GNzHoH6llw+Mo1TmLD6Ey?=
 =?us-ascii?Q?LCgxhOk+rpBGFCs7CAaeAska1FsWI8ufpl/cWRAYMW59pNJlQL+QM0E5tq4a?=
 =?us-ascii?Q?VWxH//Gkb2BmcLpVLw8HevK4xXFVevUp27qvkLnSbHl2Xsj3vzIHWshN4G2y?=
 =?us-ascii?Q?f3WmKG/Q1sP2FiNqMj0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Pjkh8OPxjzdDVx0K+lIIJ8bk1KAqGEoO3rkzZkXxL75wzx1qEARgfUy3otcs?=
 =?us-ascii?Q?ZllHf+h0w6AgEA64deo2OEWaJK2XenJ2C7xSIcYqhjVPEX6NVvn1feGxG1K+?=
 =?us-ascii?Q?/l5vLeEKNmmF6pT/Amk3S/A6LQTfIRUaobdO87M/LJ3Uty4/UMVSgRRQmwnM?=
 =?us-ascii?Q?5nw3QO2q1lZ3Tt63ospIzOlbfEdz1NCvmlGT5Cx3kZ+l5lkL9bz2PZUrgcEP?=
 =?us-ascii?Q?vaEKAZmpEgYHpZs6AcGUrCSClSmlvgbuL6cPeQuK/pn1DNk44H00Z9ByG9fO?=
 =?us-ascii?Q?ZaSfyds0N0wQkZgtEef/hWwLmIMWIottsaa95kOUqZXWaWBAyBFoX0uwU/NW?=
 =?us-ascii?Q?RVf4VYu2t2ApFOfDFauoWn9V3Lakv9pKXRbKalqLl5icP5+OGdWItRNvUCSy?=
 =?us-ascii?Q?w3PdS596mH3n1Y1oLK2zcG4lQ9utbtpVjP+k2Zakf7XC+RbMr6NlW3QoMS80?=
 =?us-ascii?Q?VJ835W4Fujb0j2llYoZLuJiEj2X6G0vmXQ5QCZ9+En58OIFu8SWQcQxRMt8o?=
 =?us-ascii?Q?Z7o6Uul5nXr27IpQOhgayrBTUg2F+BL/O1AF3Q/FiTbjOjEWnh1yM2TaEsyU?=
 =?us-ascii?Q?WJXMVqTtfIv1qiWTq5sn3a7Tzxzk6nVC9O6Fg8nKWnwo2oBd7KnxPnoN6cn7?=
 =?us-ascii?Q?w+aFWCbvPWPitZK6wq9uFUhUj4f3Y3o5qlnZfoDw90xJT/1dBzKiQNliGF3k?=
 =?us-ascii?Q?U5GUrHAiNq+u1dKuc/dops7r5HwU6IJj112yFe6Jahfm0lhNbmmt11hKDcZV?=
 =?us-ascii?Q?SVhl9zOdCaevu3U3XOfCXV/y3ZMDY/GP89hbHycmtwFZS3sZP1frb0rR5E6W?=
 =?us-ascii?Q?gf113DOoamJOifs3GbdoQO+1dSGOiXONVNVSaU0nzNYy50VQenfYjIJUu2KA?=
 =?us-ascii?Q?yLhUKqWZQbmm3cHMVzHRWoqRCpFjohPwO6YSk8VPJISPFTleaac+l7J9+NCr?=
 =?us-ascii?Q?UUED6lZPbCk+v2/ASmK/jCGr2DLB5xSsOFPU1GX0XNa5PNbA1YljCZ1E2e6c?=
 =?us-ascii?Q?ZQAb8YQj3ROGCH+gnwPDdTtwVEA5+WAjdLF3wml+zlyqKTYuO9WY1iwiF60E?=
 =?us-ascii?Q?r32kXqrIA2+C3qCnzGNKiMYZLDoj4C8Ys8GLu+MtOAq5KKW6Igq9ypaZaDbC?=
 =?us-ascii?Q?vq7XqMH97ZuQHFtOr6kWXFu5VnwUMEmsb9cXDgHs0uS7n19fkoUPRN5fU+N4?=
 =?us-ascii?Q?Ao/FFwcHmGsGQMvW/WElYes9JgfBERciX7707er0/5pXZeor2RhH+93ZDL75?=
 =?us-ascii?Q?nhyz5YXir7fz0pcfuqaJLNrDXJaCrrqjpfH0r3ACwMwl62eGyukQ/1zI2EuL?=
 =?us-ascii?Q?r3mjSyDJvJ5uPUrnkyGqd48gWQ+Pr/0RSjrY7c6ZFjGBXJG4bO9zeVQeaVDX?=
 =?us-ascii?Q?7jM9aLxBEc0prXXx2MK8dyQR9yUErfIgl0WSxKJES6HQCTcyaS7Ac3L/q5aw?=
 =?us-ascii?Q?mVDuNUo5sUlkNSSMxDoyPEl85ojaq9nCKBtof6CbAKParFZFaOE5tzmL4XWJ?=
 =?us-ascii?Q?F6cSBnTTSPu5E3jwhwLkMUAc1ZohdNAzkR3pTQSG2zWj5JXN6MbisQ1v7Apz?=
 =?us-ascii?Q?yKs1YmOzAIDb+voY0BcaSRKZT40BsOCJsZmtb6yYrYPu5kwGf3/lEJ/ZNcqD?=
 =?us-ascii?Q?uvGT2EPCiPXsProQpk0hjqvA/LuIKirLOPBPBTUd2d8RzmnGfTaRtB/9ymfJ?=
 =?us-ascii?Q?fxp3wxWCONmJx/Ph2rIQBtK1RCit9YVatvQKI3dzhDQ5zjfI4fQGIQtaHI8v?=
 =?us-ascii?Q?hPXqIQqC/A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 53cec009-f6d3-4c29-2878-08de5ab3e557
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 19:16:22.7785 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G3qbdQWPilrtXOhDHLewmV0rWTFvBdDC+IXrrP6q0tGIDij2/pRj1TlE9a+CSoJ3UtxlQ0ZalrY+B9mdGv3UdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9207
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.964];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 34B7A7A0FF
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 09:23:23AM +0530, Ankit Nautiyal wrote:
> Move the calculation of num_joined_pipes and other constraints that
> depend on it, into a single block in mst_stream_compute_config().
> 
> This groups all joiner-dependent logic together, preparing the code for a
> future loop-based evaluation of multiple joiner configurations.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 31e2eae6e4b3..8a42da2588eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -619,16 +619,16 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> +	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> +	pipe_config->has_pch_encoder = false;
> +
>  	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
>  						     adjusted_mode->crtc_hdisplay,
>  						     adjusted_mode->crtc_clock);
>  	if (num_joined_pipes > 1)
>  		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
>  
> -	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> -	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> -	pipe_config->has_pch_encoder = false;
> -
>  	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
>  
>  	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
> @@ -685,6 +685,10 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  						  pipe_config->dp_m_n.tu);
>  	}
>  
> +	if (ret)
> +		return ret;
> +
> +	ret = intel_dp_compute_min_hblank(pipe_config, conn_state);
>  	if (ret)
>  		return ret;
>  
> @@ -695,10 +699,6 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  		pipe_config->lane_lat_optim_mask =
>  			bxt_dpio_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
>  
> -	ret = intel_dp_compute_min_hblank(pipe_config, conn_state);
> -	if (ret)
> -		return ret;
> -
>  	intel_vrr_compute_config(pipe_config, conn_state);
>  
>  	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
> -- 
> 2.45.2
> 
