Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPlzBw0egmmhPQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 17:10:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BA7DBB46
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 17:10:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEDE510E6EA;
	Tue,  3 Feb 2026 16:10:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b24Vuv17";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6C0510E6EA;
 Tue,  3 Feb 2026 16:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770135047; x=1801671047;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=m7JmmDW31ynJ8xetU5/wfO9RFnJXKCxphrnTq/wBjFg=;
 b=b24Vuv17cohhT8y2yreku1DgpT1A2D2qcfBhRYeC+nZNHkBMVUOKFoSP
 Qxc+ig/8Pi1D8yMVJ+ZLgzpyQoQEhnnxZhv+1MzFHPKu8SIigXP9tZbnm
 vhxAuz6+CXsGjLHG2BhzRn3U0Y0KjxNypYghDDFcW3jaozrDohN0phlN5
 d0o0E0oGu5Wi7tyX/8/vjsUvsxjBKQXNPjTtB5LLDhdy+82XDEoUPmimR
 nxOtedfTzGLhIOvu+js8wLz/zh9ZEtKVw1W781R4+/mg06OvSLbWtslbA
 jp2KxRWVGrVljcfPy5GIb2uO+2z6rkw5x/xYtMkdFlibHGwBWOYXqhm4R w==;
X-CSE-ConnectionGUID: 6VzAT6GDR06/qYoLVm8JPg==
X-CSE-MsgGUID: +DgqWqhZTESIEqVGQKQNJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="73908137"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="73908137"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 08:10:45 -0800
X-CSE-ConnectionGUID: Pe8hYVooSM20CWoOxssJIg==
X-CSE-MsgGUID: jl+QgGMvThernfD+PK5Fxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="214040293"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 08:10:45 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 08:10:44 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 08:10:44 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.25) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 08:10:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JAQxf0oO1BesTYmP0XcqUzDsOvkcqolWmTUBXc46c2jtC0LXK6XLF4JA9dv79SrStkVqo20TTVsG8TY/ORiXtsu8UdpwQUPjW638wCrAF6GZxiPr+MSvA4Cy8/diPC64CcokldZ4lKa0EapIfiZYsij0zS+b+AHq5upBHpPWIaHwGcpE5wJSQJ9gd5L+oed4yOlJHp9jDnpG1xNbQu7KPY17JA50XI3hRS8mVpoIKPpORUkpdGZ60UZcKtT71SA26z8KtrGm+0hr4/PGorBqJLO2k4hN6v1Tkm4N2uCMh7rzDfKztR6Ak+GCx7bsBc0WL/F20tmGYGfI9nskp9R1og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sSVrDYDpYLKB3BoxuvV32rkjKg5qrNahzyJvh685YY8=;
 b=qYc+IIuO7FnBzcx1troAa4tU/U041GL8KM9tLEDfaIx0lbe/4LonY0TeZn+t0QOoAejujlSeNWlYLQHR9dkLGY0ti+4mY4wwOzvyFqP9w80yCfTJhynxn0wWPuGH7bd640aVON8f01mEoSLO5YCGVC0o4UOYe70Kb4sldik63WpyV/7xDVx8Ekbdhzgkj/bOuA21q6WsO6Ju2scGgkMxKd6eL83DVCV9jDojphjU5Uz/DWaHhDiQW4IeA5iTvC4I2g6GDyvCorRNhf2Qpi68D5whKCqi+gombKnXSUPOzE/Hacs5m7//K4SRRYrEOsJG7t+TLWRbSlD7baPWwcTcUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5784.namprd11.prod.outlook.com (2603:10b6:510:129::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Tue, 3 Feb
 2026 16:10:39 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9587.010; Tue, 3 Feb 2026
 16:10:39 +0000
Date: Tue, 3 Feb 2026 18:10:33 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: Re: [PATCH] drm/i915/ltphy: Return true for TBT scenario during
 lt_phy_state compare
Message-ID: <aYId-fUaKONE4fvS@ideak-desk.lan>
References: <20260203024141.1549517-1-suraj.kandpal@intel.com>
 <aYGxCTupSRGPp4jH@ideak-desk.lan>
 <DM3PPF208195D8DDE068284324584CE5BA3E39BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <DM3PPF208195D8DDE068284324584CE5BA3E39BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3P280CA0072.SWEP280.PROD.OUTLOOK.COM (2603:10a6:150:a::7)
 To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5784:EE_
X-MS-Office365-Filtering-Correlation-Id: f5b2bd17-b4a3-47af-3862-08de633ec5ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?uVIjSnyMHi+RuSwIa7qvNS0pn35CD1WAOMipSfrmUdAAbHqVQx7mprGzKcjl?=
 =?us-ascii?Q?+8nderqrhE1WcmQC5htqN4Sa9O2AECkgESRxekCN862D+YXxKg98BHvQsoCN?=
 =?us-ascii?Q?yG2RQnTss4yzIo23gpxFqKIV8Xff+7d1Z9w6AW1ySJQRURkxivAujvplm89a?=
 =?us-ascii?Q?rmiGje6PhFCxTw1pQ7X+uMlcwD20OOb9yJDFlYku1b0oal02OqpzgxHxnYnL?=
 =?us-ascii?Q?aOJplFF6zEIi4FrQd7gfeR0eww/9TXA2JaTccD9gsJbf3JiGi9qwJ4SXaUXA?=
 =?us-ascii?Q?eqnoKDlilqi+j7Apf7XS9GB7EcxxxpayFD7XEvtg9SqmBrxuEdt196fpy1PL?=
 =?us-ascii?Q?9rHx6QNYTcl6MRQTaJQT8gqFsabcTtkC3V46WJg5W9KSl/7qeZplkTHwVkAD?=
 =?us-ascii?Q?WlosJLZvhW9kDG37tL27GrtESIFNgBXW4YpXGTuJfclLm+xnk3q48VE7iXjw?=
 =?us-ascii?Q?N/F5ZTN076VyPbCZRCtPXEaoefM0StAR4WSMKalF01CqtAQYLSJ2vakpUw02?=
 =?us-ascii?Q?DR3xnboeWTeyn7XS3IUXRV1vhT6lIBVwrOMl6Ut+gUIfuMvHq0N7HjJQa3Oz?=
 =?us-ascii?Q?Jf3IYk3nWXrGl+oXeqdNumiD5F8ZTdudfYHwIH2WJ9zUhWh/3XugPPU6GWdR?=
 =?us-ascii?Q?8LWHgScN8/+r49DV/+diL2Hpj0HZJLDaFDq8dcF/K/RQbHGb25jGCEvT6+pa?=
 =?us-ascii?Q?NHqBybqWJ0Auc7L+Si+e+UqPJCQpYJveWOyOaSQ8YHaj5dihYCSNYZI6OBZc?=
 =?us-ascii?Q?VxK/tHDKLoOf4Zz8U+XTShX+rbGJcinEwADWNzgXmd5WSFotNJ11yOo0f7hR?=
 =?us-ascii?Q?G98WiDQyOK/X4dY0rRTUzIxQdU/yiIEpx0VtTGd3+G9uXK06hcg/KKmp4D5R?=
 =?us-ascii?Q?urNdDuTt48SRKG/Sf3zFncGth2q9TF2G9eXas9k8i48ZH1bQ8KSLE/HJjGtU?=
 =?us-ascii?Q?F6sVR0kGvO5yJPDS6StteVR9GukQDpaZEdFb99Mg7cmuPhavMF61MelTBMXk?=
 =?us-ascii?Q?HHl7oZR5hiSRoJm0vpzP3jy4ZpkEIXW6+8MDw8Qq87s34K4EYC4qDuprxiUw?=
 =?us-ascii?Q?pvwinzmWIdEHw3AQuvJFDlgFXeCmV2YgrABCoIm5uvyNT/8S6a7/fcDJZSXS?=
 =?us-ascii?Q?hmlq2eVwYovoPW3BmFQhNOvvcMMaqPiJ6lXT/TGUBYqg5Uzs/+Q6PeMosFaE?=
 =?us-ascii?Q?gOwYzN+y/iSjlpbQ970dcL0VlpCKAN/lx2ruZ1RywH2bVGHb8dx/hJj9v3vx?=
 =?us-ascii?Q?As0JHl4V9YjXtV/eE2AAlpsBl63LOX6oLAh0Otgzf4pApGAK47XolCX9LSz7?=
 =?us-ascii?Q?9yMEtWaOiksqj10y4M7YIcOhXUS/O97M79xojHq6ngoZusdIwwgrayYYbkoj?=
 =?us-ascii?Q?5GAWiG0x4I58EqTltLzE+Ttl1S0MqHUKmz+HGg7jRJULoU7eBNpns0LrQDKZ?=
 =?us-ascii?Q?88aRAki8t5hHVKPw5sfy5jOOXzMWnSI+xzP29/HO8s0mxPNYzdaD0fBTQeSf?=
 =?us-ascii?Q?X2hblTifGHKJgHE+ESy9H7kAhYH3gEayQniuTOqbOcLa2+TvoLVXebhtz1RW?=
 =?us-ascii?Q?IwzuT8iPyb2nJTlSTQc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XZgo/Ebn6/QdUAr8CSYxCGcMOjD+/H1o11ugPTVNb9sRA+GU+EAc/09+b7qM?=
 =?us-ascii?Q?tMt2V89Ko8okZ2uMdHK8cctKg4FLezWqJ0E4qLI6oAMhNwRDUK53rd/Fj3h3?=
 =?us-ascii?Q?QT4yFZCJzskI+hmoU8PF1zan4VuR1DLPnbzA+jX0zn3T9aPJoAm01p90m5+w?=
 =?us-ascii?Q?rkQru+OFrRTkAKIzcO1AXeOwRakfaLHoSLQvtMesnf+PTFOqcw/hgFml4qBe?=
 =?us-ascii?Q?emcpuBLZ/FgrNvH3jJZNh1aI8Ij5dduZVsnknMp/eOFQYlLuTmYm1KFu2cLp?=
 =?us-ascii?Q?6zLf7mr39UpSdlja/aon1vsS/ajNXd0omiyaE38TVGhZtei4JaJL5eEq3Ho6?=
 =?us-ascii?Q?L9nLkuz0WbzH2IUIW2imcB0gXUKDirRRCkt3q5TqncusYx3xWQ9EAj1CJJyW?=
 =?us-ascii?Q?qqk9v6rUACtKHUPUuV2g59xT0brGnO8EBsmVfHR/Y6GVqe+RxgoCMZ8ffAK6?=
 =?us-ascii?Q?zbtJH3vEg1vmYAoQkwnFiQHngOBrprc3n+q3nbHAWfkFjK0qg7bEb869K+ne?=
 =?us-ascii?Q?Di1rK4zplvKQ1oP3c6WE4nMYMboKu7a6QzxqxXd4DxB7ODgYUBhhQYA29A3x?=
 =?us-ascii?Q?Apaft05Vm1AkxH9YMuUgMUxZ4DrbYNhScCd0Vfh+4+Yob8B7N1amSKeGgeF0?=
 =?us-ascii?Q?kxOLhzimi0YCG+mP+JjTU9AuVIAlKMYk8UT59bq4aoKG+VFhsS8zivTXtjwS?=
 =?us-ascii?Q?IXo5xFixmcVEFH+MRI6Lb28jWWP1mF+Wz0mKHLlCXEbkjGM9fsauXTqAKJ4v?=
 =?us-ascii?Q?aUjpx0NqdYxPy80m2L0ZHlUQhbZyh40DKYQnVkrDN/O8Ye4oTI8yFbZ97mW7?=
 =?us-ascii?Q?5DZQE4mV7kMM3Oh8J9vrav4UyqcNBqY37B6sdYC78gPB4tcepWOyzm5+JMYM?=
 =?us-ascii?Q?nnCKDl2/nhTr0ZiWZR4kICAVLWgFUKw/hjdEHMv/ILXkiBvU6H1kOWt4LQUF?=
 =?us-ascii?Q?ECwSDr3CTXmo4y9yRepRvUlRV94UV55pc5NrhUeLtvxQt3ZxvbxtDWmXbGCZ?=
 =?us-ascii?Q?f0rKvnUN8pZ5Im303FrFD9KQcPQS3zU8RHBGuCgVzQ0bShEaSie+wOkfUdD6?=
 =?us-ascii?Q?YG57V/p7e3o9edfYvk5es6yuDmwGUREzkn5mVWsACsALNxLc55Wqdk0lhmeO?=
 =?us-ascii?Q?IyMtoDPKrDdl+tXMP4qnCg/kBfklthqZI//WAcPcDY8P6cDtnA3762c2kCS2?=
 =?us-ascii?Q?zq4Zh6cuY3dHr/CblIpXPnm9zxU82j6VjIAFfeSZX+/m5bToGJ3zOVqxbN4J?=
 =?us-ascii?Q?T8lJFHG2keZkIqEvMF6RmruzDG8fcvuZ2SmCZslETemZPk8EK//TGD9hhGDA?=
 =?us-ascii?Q?VI+lTd1T5nuoEcbW5giUui8ogrsy+P5jwfr6u9pGD5uiJAkjaoZI2f7dDw1p?=
 =?us-ascii?Q?vCV+ajuniahd9mI+dbMuONCo4TgozkpJqRZxF3IPyFjjo2SK2O0fAKa/IsGQ?=
 =?us-ascii?Q?GwPfQs7d7ms1fqOEFw4SjTkTBI4+zAgP8G5DYDIg1ijLRxD0Tfmu/+PivQHM?=
 =?us-ascii?Q?skAjmHiBQBo2l5YLd79m9JWz2wZj3to3yNIRJJRlhY7Kj8yp/Uq4KS7flv9M?=
 =?us-ascii?Q?QCQXXuaL4W5Gi61t0pR4VN11G8uXj+4fDXQkWmj3nSw+W9Lhlohz/rJU0E5P?=
 =?us-ascii?Q?lxQ7sfYf8LseFawUsz7s/JAsiderRNOI3E5OefGgtPDGZZ8tUYz0e9Hohp8y?=
 =?us-ascii?Q?Na9DTbBPGgaElZekS5UtB0vAoPxIw//48D9KwZZTHTCybwg9oa9u0cPrFYZ2?=
 =?us-ascii?Q?QgfXQaJ8rw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f5b2bd17-b4a3-47af-3862-08de633ec5ee
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 16:10:39.4276 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: khRCBJ3YYJf/W7cKJZov9ik4ksAgVOJhicD/xex8we+VTylyUtleHLW9hJjkpCK9RAGl2oNYghgTKY6IeMOp5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5784
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.992];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 21BA7DBB46
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 10:40:33AM +0200, Kandpal, Suraj wrote:
> > Subject: Re: [PATCH] drm/i915/ltphy: Return true for TBT scenario during
> > lt_phy_state compare
> > 
> > On Tue, Feb 03, 2026 at 08:11:41AM +0530, Suraj Kandpal wrote:
> > > TBT PHY is enablement/disablement is handled by its own TBT module.
> > > We do not play a big part in it's state management that being take
> > > care by it's own TBT modeule. With that in mind comparing the state
> > > would be wrong since we really don't touch it.
> > > Simple return true when we are in tbt mode.
> > >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_lt_phy.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > index 04f63bdd0b87..27ad8407606b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > @@ -2158,6 +2158,9 @@ bool
> > >  intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
> > >  				  const struct intel_lt_phy_pll_state *b)  {
> > > +	if (a->tbt_mode || b->tbt_mode)
> > > +		return true;
> > 
> > It is a relevant state whether the PHY is in TBT mode or in a non-TBT mode,
> > even if the PHY is programmed by the TBT HW block in TBT mode. So it's not ok
> > to ignore a difference in this state. Please provide the actual context for why
> > the change was added.
> 
> Bspec : 74492
>
> We do not write the PLL registers when it comes to TBT Mode that is
> done by the TBT dock.  Since the VDR register are shadow registers our
> shadow registers will never have those values. Which Means we will
> always have a state mismatch.

Reading out the HW state of the actual PLL dividers and configuration is
not read out in TBT mode for the above reason but the verification is
skipped in TBT mode for another reason:

The PHY/PLL TypeC mode (TBT, DP-alt) can change after the PLL state was
computed for a modeset, so the state verification after the modeset
sequence would indicate a mismatch in case the mode changed from DP-alt
to TBT, or from TBT to DP-alt mode. To avoid such a mismatch error the
verification is skipped if the mode for either the read-out or the
computed state is TBT (where that TBT PLL state doesn't reflect anyway
the PLL's actual HW state).

Could you please amend the commit long along the above lines as a
rationale for the change?

> This has always been the case since SNPS PHY.  Check
> intel_cx0pll_compare_hw_state int intel_cx0_phy.c too
> 
> Regards,
> Suraj Kandpal
> 
> > 
> > > +
> > >  	/*
> > >  	 * With LT PHY values other than VDR0_CONFIG and VDR2_CONFIG are
> > >  	 * unreliable. They cannot always be read back since internally
> > > --
> > > 2.34.1
> > >
