Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJKRCOkHhmkRJQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 16:25:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63896FFB43
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 16:25:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3938910E7F6;
	Fri,  6 Feb 2026 15:25:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HhRajN/S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE42710E7F6;
 Fri,  6 Feb 2026 15:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770391525; x=1801927525;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eezHVXOX7teudn+qNhOCitXy0zcXyTyjhABg/FlCgqw=;
 b=HhRajN/SYMPxGJFKTIMAIKfOhH0e/RVs1o3P4BvTjDhvxbCVweb1iYbs
 A7pWd4kJcnqumRBw4+ddQaqrdegyqTJczHfLkQwrVx5Ck+2nTreC4IU9r
 nuMFIVnGwLSByHUevRhTvCctp5rbT8X8eDF6Ahgq6ttZWF7pGnEsV5jFR
 RXPLzWMSCEIV6GH5z/DATvme0d/YaUdbkz0rSfdWMzp068nlSI0fJYUeR
 VwjfcWeMh4R/A6b5v/0ZrOrauLxsf84mVWbbjditZ2a7MTYk2ErqWUnGb
 5XEA+aYkuni0U6LghctSCvhgWfHJ0FNZpWuAaHb4ASK7/878cycVUnwHz g==;
X-CSE-ConnectionGUID: QeaziJytQdiRdXulr97nWQ==
X-CSE-MsgGUID: op9SaJEXSBSfAgXonigW1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11693"; a="71635486"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="71635486"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 07:25:25 -0800
X-CSE-ConnectionGUID: xYBcJzMiSj2PMd7DumMrMw==
X-CSE-MsgGUID: OyXTVnBRT2OxfacsiEImRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="241341203"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 07:25:24 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 07:25:23 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 07:25:23 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.1) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 07:25:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fx3XHe2iC7i5UiBHZ84UAOfSCdYDNHUgYlRAkMal1j/dYI4m1o5IgHHv4vEK/iVDBGkNCz+gMOKx/sZguZtJYNzg6n0qW3ZLBf8XcYlGDo2Fkn5aVpfuezMfDNJRI8khRW8CCvBTg0bXwcSeQLpB3U1UV1ROszwzzvn6J35fxooBrxXYtO2Ne6+6U8/TfXkns9+t575WwQodXVH+aSJESApYZ8uwSh181nre3BmgTfnyfI33y1L/E4sA7+sfZo1I2N0npP4tBLqN73Nz2+FIgmB0RLhZBvSJ6Pij2QbP8jZsAtIOQce69UOXp3IQ3D54favaSS8wbM5TSX+xTXyYBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ISMj7jjR/h06B6Il7U+7tF9v6FPIA4EDbC4WyrSJ2jU=;
 b=g7HUOC/QcTXLyWH6MN/prnpordiNAY6BJIOcNtWkYBPj+4tbeSQag1GKbTOChkPq9yjqEI1b93+XLhy3+Mvc5Zc1sSrfFP0Xe//Cwp+pXCd3Ihd3CvScH/5AUVNiYi5826u/6+Inf/OISPcOR6XGplOWxT6YJXf/ZdIaQ2nwa3wIChdskXY1nFxEPgkoCMpGeCn73rqVTSU4jAe4R851DrCb93cLv7w1yrA63JTvZHreAPiVJ3S2EvZX21CRwBzVaKo0+0mCVEQO9kfPwKaVq6FiVFMPsJ/FxFBRicY6gVEDOS2bEQLyoKf/q8Q3ho4bc3hIUUbtf7AItSGVRkfhVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB6358.namprd11.prod.outlook.com (2603:10b6:8:b7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.16; Fri, 6 Feb
 2026 15:25:17 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9564.016; Fri, 6 Feb 2026
 15:25:17 +0000
Date: Fri, 6 Feb 2026 07:25:15 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>, Nitin Gote
 <nitin.r.gote@intel.com>, Tangudu Tilak Tirumalesh
 <tilak.tirumalesh.tangudu@intel.com>, Mallesh Koujalagi
 <mallesh.koujalagi@intel.com>
Subject: Re: [PATCH v2 02/15] drm/xe/xe3p_lpg: Add initial workarounds for
 graphics version 35.10
Message-ID: <20260206152515.GL2174980@mdroper-desk1.amr.corp.intel.com>
References: <20260205-nvl-p-upstreaming-v2-0-9ec14f00cc6c@intel.com>
 <20260205-nvl-p-upstreaming-v2-2-9ec14f00cc6c@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260205-nvl-p-upstreaming-v2-2-9ec14f00cc6c@intel.com>
X-ClientProxiedBy: BY5PR03CA0013.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::23) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB6358:EE_
X-MS-Office365-Filtering-Correlation-Id: cc170331-0dfd-406c-7d86-08de6593eee7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?t5JnSHCq2fO8lVFCwIuZnrk/3S3AHNvA5dPTCjFR213X7cLZNsGoWyb0cnV+?=
 =?us-ascii?Q?IdlLnNbnfAm7drpNZBBDGB52vVSGeUIcul2W5rylAPonP3McMVjJwMbQDKlQ?=
 =?us-ascii?Q?3aMRQGkdLskw+mToFvm7NAt3CFYkTZk91Cz7ShaIs5P8o/IJVe8yRelydpNC?=
 =?us-ascii?Q?FaMPgdyT6x2fGG+hYfZyHPYEYrBeA9vOmWUEvVZ42w1kQ09VNG0WZQgFxt0j?=
 =?us-ascii?Q?TmUtI2wZCa/m8Khl0BTGWDYpaCG4bVYN4UW/SCaYXDmcTpREnMM0nhJ3jNm+?=
 =?us-ascii?Q?Eapvd2dNziWjMhadTIT8FrR/kLDYRo6vzyP0k5LsNKa3kbORMIJWQvePKQhl?=
 =?us-ascii?Q?5GmXarOV13Oe8h98wHmCcetpTefW7Oe/TQFZmFVzItNImawJhmpNYKlVAeQh?=
 =?us-ascii?Q?D4wQiQ8H1RZ6mPu1nBYhhF+uS+s2XGKBWFABtPFzdREEPxUtlIpCv14RT/1I?=
 =?us-ascii?Q?/8GAhhoKWk1AGp5V369XUxpULVgBTFmmjZNwYnVCUwXdpisIjmuyIYDI+g02?=
 =?us-ascii?Q?9/OyPGFVd9k99oRU7j/U4Fl4XGvLhrQ6HuXzYg+CnCqm67TA916A0DgFKiRr?=
 =?us-ascii?Q?zC1b8L3BKJXibs4j7E77y4ii2cuc2INza62ZYHXc3FeGC75HF77RrfFeTgVp?=
 =?us-ascii?Q?s2rnQO5cOo2faI9GMxmMsL9xtUF6RCxvzml1egqRITJ90ptYXKqdFIqxN+5+?=
 =?us-ascii?Q?0S2JPejZEglWYs2jxT7KtZzqg+QTzzcH9FpdHIDutp+abNektYNMJG3fIJSq?=
 =?us-ascii?Q?1o+zUxsBZLjbvwG2X0UnkYC/Hm9bw5kzLBYJ6GAVB1gkhdCn1YD3InjY/oYA?=
 =?us-ascii?Q?rHbj9OPDXDxyKFnKA0wm0vkE0fMrOFiUojrTvlmU+1lUgdZVhVeYQLHSLJIg?=
 =?us-ascii?Q?55n78EYe9S0PCfWekd1LJqdEEgatFP7nyUZenSjpes1bOw73M59BRzMyFUBd?=
 =?us-ascii?Q?r2NuxcW47Sg67sX6kitOIg5szWXTXiDHCAl6RGyuZMDalIbS5CqRgGK9AtmL?=
 =?us-ascii?Q?1zqeJEGPY/oPGb/P25JSF1QgOQQulYOvfwKMw9+8keTjm+nfYaCPHHt7/6do?=
 =?us-ascii?Q?x8XnDAiMNLvZKN4yFNJTC59iDxua9yAR4io293pcRIUDWLH0kaHXpUFgds0F?=
 =?us-ascii?Q?FxrLuzLSghykRdgWdTIvXXwth6IWxHe+oBJXgh8Fgsned/ztjc65e6s2Snrb?=
 =?us-ascii?Q?qfhIqUtHCyN3/Oc+rP9rQDCpXe/HrM2e1JPA15if57fgIp+bRRFAlOu2EJII?=
 =?us-ascii?Q?iNeibJ3LvUJrg2SeV5wMusUe05YMpZslU3PCPFOggSvCkMuBsxEv5I+UOncs?=
 =?us-ascii?Q?VNC7vZ/ZzUha7MTgHgxk/rlmy1mQB4rB/X+tP5RxFGmDKoy3jfkUylfLs8Rn?=
 =?us-ascii?Q?AD/aqNLOpNMEohbLqwR+Lbib4hEAb5wjdILOfrqK9kuN5C6m6xyUVBEZBq80?=
 =?us-ascii?Q?6LPxTD0ZKuNIUO3B6v1A/2T1rL3m/zQVMYTCnF8pp4BZe7e3geZF2dorqvhD?=
 =?us-ascii?Q?jybyItIF93orGli1Y3taW6+HArCoVL10qK2ndTxsMkTaWmJkGY2lnRYJQ9H3?=
 =?us-ascii?Q?ufXtZ3q21uRxRLnadgU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7VAn8h7m6Yvw/76RRc6+svmCc9ZurOm4mPIyqZaU+cA7gWE0JqfJyJN12BqE?=
 =?us-ascii?Q?5UK1/FuIKonrJEk7VYH3Qkya/JFdHC8ujs2L1TDpB24s5/2RufEwvB7uXWA/?=
 =?us-ascii?Q?xQ5t0C22v4O402QxPL3eKYQ6YWmM/Ihxh7gLrNE5+79k0j+H3l1q24k5pyUa?=
 =?us-ascii?Q?h7GqFP1+5TIX7q/qavi/536m+IR2BPO3UIUMp7CPvW2T+bL6oynkAlrD//va?=
 =?us-ascii?Q?TB76XBeHpK5Vzvnr/07fiHZf/6ZArNy9wJSvOpQnwM5W+4UfeMwNSv5HnG3p?=
 =?us-ascii?Q?8RfrkekH+nqAvFqEywtAnwgRPHXloOalIsKU51ZQNhhS66lSjbvFqlhhbd0c?=
 =?us-ascii?Q?vcx13Go0/dnFXQThqVyRO+BSEtGBq8ur3uf9gg/98VvqdyDk9HhqMXK2WAUX?=
 =?us-ascii?Q?LBUAKbO80GJQV13EvAau0e22jkwWkmO9ALeTcdFA/CgtPNmnJ+lZqA5RPOjV?=
 =?us-ascii?Q?X50s1aRsY14RXEv4Sl7U81oY0LBUtVwtuwf1AjgOurypQQwFZEUmPwq2bknP?=
 =?us-ascii?Q?Svpz7f+OUoKrjhgBjKNOlqrOCwOCadIbEJs0rn7Xwhz1FYPJ9y31XWYDIG/7?=
 =?us-ascii?Q?vacEkuM3sV2Y8rkgXPq/9q/TNjVylmlWDBMro//DupKqtu72m3tbQT+v8N1j?=
 =?us-ascii?Q?9pUV/5NDGMZI5FDeBIpY6tja0OZaD8M58d7fbCFRGA0836r/pf7MjOPprZGq?=
 =?us-ascii?Q?CI/DQ60m/XP+zbda83IzmsIuCHnU7YvXsRQ3P2kMJIKCtYp6e9HjnEClj68U?=
 =?us-ascii?Q?Cwk66nDtNLiKMz2cAbwiAmJLb/ZMeL/FtWgTuCa7eTd8/RsanOwXspVcLWlm?=
 =?us-ascii?Q?l6klm5KzFjSiudjk0HYAjdtdv5I9Gl+YvldfM7X1PeEMFWhiuiiOim90rlm+?=
 =?us-ascii?Q?4mhGcqZL6uy9u/94MvNNUgFRFSourIu0VOXWfLBxoF/yRsrx+oYYurDi3Wgf?=
 =?us-ascii?Q?NOcfLnvvlHIKyaHE0ItTUfWflUdBKLzQpcGXf7ZoQgkpHbJ7se5IHY9RM9C3?=
 =?us-ascii?Q?qCQi81936sJrnt7wHbqITdRBEcJmMfjjdcZuiFsD9KLE9i+344Ogi7JiY3Fp?=
 =?us-ascii?Q?EBLVYSSlI3CuCecqPx0+v6e6nkDSzCF787DrtZCXH+9kylB3mEbk1ZvlgR/F?=
 =?us-ascii?Q?T+FZQexDQFEGoHNC3YGavUK1sPMtyWseOi+4JKNc69bSETnAoiVMQofTtiRV?=
 =?us-ascii?Q?axzkUAdQFaD/K0A4HrBgHXqNy3kQllfYRWeg+VDQwsoTJKqtNuQcjEcrqhkZ?=
 =?us-ascii?Q?QHunZWrHcHPoIHymTHxN6JBOFrXL2XovY7RtVuNaQA86ftLmw2W65r6OOeAB?=
 =?us-ascii?Q?APZ0S8xFjSLvXJ5OtC1RBO9RK48PM94AsymN91kRvPwY8MIrUyCMuANwBDnE?=
 =?us-ascii?Q?ez1b+nuNi9a0sUua8qIO06i3JGckT4HK6FUIW8aVxHIdnOchxEyZspRcO4Ap?=
 =?us-ascii?Q?XCwt6Qs0OIgDwPNMZP0+Xl9EUkJE32VndzArarQBE4vvVigY3Uc34BYgz6Jm?=
 =?us-ascii?Q?iamM6YfuJNIuHpTA/D1fqvnMYiYIo+2efJNiM3DqBy6EUGfFUCJgyY9tUySb?=
 =?us-ascii?Q?xoyHodrc5R/RteevPxDop2AwSsgTyqh97lYD8l9GnJ7P5VR1/XY+0m75uiwM?=
 =?us-ascii?Q?Wq3ORWm8rmASR/qhYqw3pcslRDekbLP6LJ+haVqLJtJkJ6fMbbKgxsvLHW7G?=
 =?us-ascii?Q?dbLIsdLGKXi9WhUqH9Pq+l+uL3/gBgJQcw7e6dXG/KHuknmjx1SZSP4W+T7u?=
 =?us-ascii?Q?IKGu7QNME89iRVlztaGjZroVSoux+Po=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc170331-0dfd-406c-7d86-08de6593eee7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 15:25:17.7840 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DNBepiia3pEKUV+wnL6rUGZp+dCYduBv0CjJ2yJgbDn338DRODNTwdJMWG00KpQOE3eqQ+06rLmroWRTWd9k4JVKMQ9f5e5NCIqx9ggHu5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6358
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mdroper-desk1.amr.corp.intel.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 63896FFB43
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 08:39:30PM -0300, Gustavo Sousa wrote:
> From: Shekhar Chauhan <shekhar.chauhan@intel.com>
> 
> Add the initial set of workarounds for Xe3p_LPG graphics version 35.10.
> 
> v2:
>   - Fix spacing style for field LOCALITYDIS. (Matt)
>   - Drop unnecessary Wa_14025780377. (Matt)
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> Co-developed-by: Nitin Gote <nitin.r.gote@intel.com>
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> Co-developed-by: Tangudu Tilak Tirumalesh <tilak.tirumalesh.tangudu@intel.com>
> Signed-off-by: Tangudu Tilak Tirumalesh <tilak.tirumalesh.tangudu@intel.com>
> Co-developed-by: Mallesh Koujalagi <mallesh.koujalagi@intel.com>
> Signed-off-by: Mallesh Koujalagi <mallesh.koujalagi@intel.com>
> Co-developed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/xe/regs/xe_gt_regs.h  | 16 +++++++++++++
>  drivers/gpu/drm/xe/xe_reg_whitelist.c |  8 +++++++
>  drivers/gpu/drm/xe/xe_wa.c            | 43 +++++++++++++++++++++++++++++++++++
>  3 files changed, 67 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> index 24fc64fc832e..55f5be7283db 100644
> --- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> +++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> @@ -100,6 +100,9 @@
>  #define VE1_AUX_INV				XE_REG(0x42b8)
>  #define   AUX_INV				REG_BIT(0)
>  
> +#define GAMSTLB_CTRL2				XE_REG_MCR(0x4788)
> +#define   STLB_SINGLE_BANK_MODE			REG_BIT(11)
> +
>  #define XE2_LMEM_CFG				XE_REG(0x48b0)
>  
>  #define XE2_GAMWALK_CTRL			0x47e4
> @@ -107,6 +110,9 @@
>  #define XE2_GAMWALK_CTRL_3D			XE_REG_MCR(XE2_GAMWALK_CTRL)
>  #define   EN_CMP_1WCOH_GW			REG_BIT(14)
>  
> +#define MMIOATSREQLIMIT_GAM_WALK_3D             XE_REG_MCR(0x47f8)
> +#define   DIS_ATS_WRONLY_PG                     REG_BIT(18)
> +
>  #define XEHP_FLAT_CCS_BASE_ADDR			XE_REG_MCR(0x4910)
>  #define XEHP_FLAT_CCS_PTR			REG_GENMASK(31, 8)
>  
> @@ -210,6 +216,9 @@
>  
>  #define GSCPSMI_BASE				XE_REG(0x880c)
>  
> +#define CCCHKNREG2				XE_REG_MCR(0x881c)
> +#define   LOCALITYDIS				REG_BIT(7)
> +
>  #define CCCHKNREG1				XE_REG_MCR(0x8828)
>  #define   L3CMPCTRL				REG_BIT(23)
>  #define   ENCOMPPERFFIX				REG_BIT(18)
> @@ -420,6 +429,8 @@
>  #define   LSN_DIM_Z_WGT(value)			REG_FIELD_PREP(LSN_DIM_Z_WGT_MASK, value)
>  
>  #define L3SQCREG2				XE_REG_MCR(0xb104)
> +#define   L3_SQ_DISABLE_COAMA_2WAY_COH		REG_BIT(30)
> +#define   L3_SQ_DISABLE_COAMA			REG_BIT(22)
>  #define   COMPMEMRD256BOVRFETCHEN		REG_BIT(20)
>  
>  #define L3SQCREG3				XE_REG_MCR(0xb108)
> @@ -550,11 +561,16 @@
>  #define   UGM_FRAGMENT_THRESHOLD_TO_3		REG_BIT(58 - 32)
>  #define   DIS_CHAIN_2XSIMD8			REG_BIT(55 - 32)
>  #define   XE2_ALLOC_DPA_STARVE_FIX_DIS		REG_BIT(47 - 32)
> +#define   SAMPLER_LD_LSC_DISABLE                REG_BIT(45 - 32)
>  #define   ENABLE_SMP_LD_RENDER_SURFACE_CONTROL	REG_BIT(44 - 32)
>  #define   FORCE_SLM_FENCE_SCOPE_TO_TILE		REG_BIT(42 - 32)
>  #define   FORCE_UGM_FENCE_SCOPE_TO_TILE		REG_BIT(41 - 32)
>  #define   MAXREQS_PER_BANK			REG_GENMASK(39 - 32, 37 - 32)
>  #define   DISABLE_128B_EVICTION_COMMAND_UDW	REG_BIT(36 - 32)
> +#define   LSCFE_SAME_ADDRESS_ATOMICS_COALESCING_DISABLE	REG_BIT(35 - 32)
> +
> +#define ROW_CHICKEN5				XE_REG_MCR(0xe7f0)
> +#define   CPSS_AWARE_DIS			REG_BIT(3)
>  
>  #define SARB_CHICKEN1				XE_REG_MCR(0xe90c)
>  #define   COMP_CKN_IN				REG_GENMASK(30, 29)
> diff --git a/drivers/gpu/drm/xe/xe_reg_whitelist.c b/drivers/gpu/drm/xe/xe_reg_whitelist.c
> index 1d36c09681aa..9c513778d370 100644
> --- a/drivers/gpu/drm/xe/xe_reg_whitelist.c
> +++ b/drivers/gpu/drm/xe/xe_reg_whitelist.c
> @@ -81,6 +81,14 @@ static const struct xe_rtp_entry_sr register_whitelist[] = {
>  			 WHITELIST(VFLSKPD,
>  				   RING_FORCE_TO_NONPRIV_ACCESS_RW))
>  	},
> +	{ XE_RTP_NAME("14024997852"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
> +		       ENGINE_CLASS(RENDER)),
> +	  XE_RTP_ACTIONS(WHITELIST(FF_MODE,
> +				   RING_FORCE_TO_NONPRIV_ACCESS_RW),
> +			 WHITELIST(VFLSKPD,
> +				   RING_FORCE_TO_NONPRIV_ACCESS_RW))
> +	},
>  
>  #define WHITELIST_OA_MMIO_TRG(trg, status, head) \
>  	WHITELIST(trg, RING_FORCE_TO_NONPRIV_ACCESS_RW), \
> diff --git a/drivers/gpu/drm/xe/xe_wa.c b/drivers/gpu/drm/xe/xe_wa.c
> index 1e8d61ac581b..682865f1fc16 100644
> --- a/drivers/gpu/drm/xe/xe_wa.c
> +++ b/drivers/gpu/drm/xe/xe_wa.c
> @@ -325,6 +325,31 @@ static const struct xe_rtp_entry_sr gt_was[] = {
>  	  XE_RTP_RULES(MEDIA_VERSION(3500)),
>  	  XE_RTP_ACTIONS(SET(GUC_INTR_CHICKEN, DISABLE_SIGNALING_ENGINES))
>  	},
> +
> +	/* Xe3P_LPG */
> +
> +	{ XE_RTP_NAME("14025160223"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
> +	  XE_RTP_ACTIONS(SET(MMIOATSREQLIMIT_GAM_WALK_3D,
> +			     DIS_ATS_WRONLY_PG))
> +	},
> +	{ XE_RTP_NAME("16028780921"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
> +	  XE_RTP_ACTIONS(SET(CCCHKNREG2, LOCALITYDIS))
> +	},
> +	{ XE_RTP_NAME("14026144927"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
> +	  XE_RTP_ACTIONS(SET(L3SQCREG2, L3_SQ_DISABLE_COAMA_2WAY_COH |
> +			     L3_SQ_DISABLE_COAMA))
> +	},
> +	{ XE_RTP_NAME("14025635424"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
> +	  XE_RTP_ACTIONS(SET(GAMSTLB_CTRL2, STLB_SINGLE_BANK_MODE))
> +	},
> +	{ XE_RTP_NAME("16028005424"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
> +	  XE_RTP_ACTIONS(SET(GUC_INTR_CHICKEN, DISABLE_SIGNALING_ENGINES))
> +	},
>  };
>  
>  static const struct xe_rtp_entry_sr engine_was[] = {
> @@ -699,6 +724,24 @@ static const struct xe_rtp_entry_sr engine_was[] = {
>  		       FUNC(xe_rtp_match_gt_has_discontiguous_dss_groups)),
>  	  XE_RTP_ACTIONS(SET(TDL_CHICKEN, EUSTALL_PERF_SAMPLING_DISABLE))
>  	},
> +
> +	/* Xe3p_LPG*/
> +
> +	{ XE_RTP_NAME("22021149932"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
> +		       FUNC(xe_rtp_match_first_render_or_compute)),
> +	  XE_RTP_ACTIONS(SET(LSC_CHICKEN_BIT_0_UDW, SAMPLER_LD_LSC_DISABLE))
> +	},
> +	{ XE_RTP_NAME("14025676848"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
> +		       FUNC(xe_rtp_match_first_render_or_compute)),
> +	  XE_RTP_ACTIONS(SET(LSC_CHICKEN_BIT_0_UDW, LSCFE_SAME_ADDRESS_ATOMICS_COALESCING_DISABLE))
> +	},
> +	{ XE_RTP_NAME("16028951944"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
> +		       FUNC(xe_rtp_match_first_render_or_compute)),
> +	  XE_RTP_ACTIONS(SET(ROW_CHICKEN5, CPSS_AWARE_DIS))
> +	},
>  };
>  
>  static const struct xe_rtp_entry_sr lrc_was[] = {
> 
> -- 
> 2.52.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
