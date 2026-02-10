Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFJgJ5wAi2nJPAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 10:55:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E55119360
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 10:55:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E138010E535;
	Tue, 10 Feb 2026 09:55:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hbOO5JMX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFD9F10E531;
 Tue, 10 Feb 2026 09:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770717336; x=1802253336;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=YiuPyQjBJykMBhpn3HPTzYC3xKyv+gl0R35zs6QbFIw=;
 b=hbOO5JMXY4RVQXotS83VJH6NEf+vL1Vytzs/7rLL6uS4uMIhdMqpG5gK
 PLaTNrOB0ar/g5K+GhC+DlqE6qpPZviQePapZg/8eAKahKgLadhma/6M6
 GZCL0pU2KRKOGBGzwbafMvHLY3rj3jx6mRf9fSMsrzVcRnJo07Trwq3Mx
 SxmQmnVXoGjBSFqQUfDM2qmIk6NXTr3k9v8j+Wwy3Ke1/B21XtvSgD0Wj
 sDk/ahwKYIYrkXsC90NgoWl4j9z3mWjGraz9XRtQqbmtBtcJgni4J5huj
 jL90IOeARP/z6AODf97mObLDTMTK9txF7lBA3gdwfQwBjx95islZSrMci w==;
X-CSE-ConnectionGUID: lrC85ld1QoKW88u0zLvBcA==
X-CSE-MsgGUID: kOUtUwfxSgyomx3bZPCgjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="83278982"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="83278982"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 01:55:36 -0800
X-CSE-ConnectionGUID: chXhJLSTSiGbuhMMa4ZhEg==
X-CSE-MsgGUID: jp4Tp1xzSpKcakj1k7e/pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="211527479"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 01:55:35 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 10 Feb 2026 01:55:34 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 10 Feb 2026 01:55:34 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.8) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 10 Feb 2026 01:55:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U7eYahE3kLCGLsS8qPHugwkBm0LibkszGRFKa6bzzjtHGJPVdvxNk4qXbeNl1JA0gqVzZBz9ix5OqwfTCJLNywhK4HvLNUVmZQQjaf/a7DF+y5xiqxhfHWA18sGIQSgrkwaOS2OO3toCRM/oyprvHGqCTqaxb3b9w1lYzQqG3AG95wW7Y6hziDXwcP8v4h2ymhYjw/enPUaEb3hkC4SUAw0XgloKqLiwWFq8+Nmh0M89eGWYDrPref3znjas5sOvqbVZg9WC7apQ9VS1P/NYowZkq5WFQPhK7cZcSPwV0Rl3f1JhdDN3Ws4O1vd9cRWwmKXtfDSlacfbyjqvOR8asw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CRiiW56GD/ulnnWJKzZkaxSwqKZwau4fdRBMn21CBdk=;
 b=eQnAv8501lGLUsQTlA2HKg8MQt0ubj8pcrNFWmNomng4fJIsGDDFjQoAK3vUsijR4W4/w8GZUVMNKw6sQLQjnMFBuP0sxyP20E7CbJQ9nJOsZX1smlZMJru7i9L/65DezTlQBheNXnvy0oGJsvOR4wDlZuO05kGzu3Astt6cWnCE3Om02AJMlH4N2FIzF2c2wv0zL2Gciy7MO9aldb8by0cTyLykGCk203tedWbvWjDEtWbEj6aME4w1jQPUc0n/6gdsjZy6eFIAFgGsHrqn5GKOK24TiHpuodKJIWl9JMdtv1+A56d40KrPpHCnnwraU6LmZLqZM/uNXhmH+XbC/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by BL3PR11MB6484.namprd11.prod.outlook.com (2603:10b6:208:3bf::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Tue, 10 Feb
 2026 09:55:25 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::fa90:e665:4a25:58a7]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::fa90:e665:4a25:58a7%4]) with mapi id 15.20.9587.017; Tue, 10 Feb 2026
 09:55:25 +0000
Date: Tue, 10 Feb 2026 11:55:19 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit K Nautiyal <ankit.k.nautiyal@intel.com>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <I915-ci-infra@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_series_startin?= =?utf-8?Q?g?= with [v2,1/2] drm/i915/dp:
 Fix pipe BPP clamping due to HDR
Message-ID: <aYsAh2lnXe7zqjPO@ideak-desk.lan>
References: <20260209133817.395823-1-imre.deak@intel.com>
 <177067695572.239579.15984876432204423723@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <177067695572.239579.15984876432204423723@a3b018990fe9>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF00007567.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::3e5) To PH0PR11MB4840.namprd11.prod.outlook.com
 (2603:10b6:510:43::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|BL3PR11MB6484:EE_
X-MS-Office365-Filtering-Correlation-Id: 323c9bdc-8952-437f-5ad5-08de688a82f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?raaGXAfxAKiV/MwqMXiiC4JevuajyPGEMcwNAMjPD/OSzqJsxGahVNCgQBqZ?=
 =?us-ascii?Q?myf1RM6JoTCmu3j1waS21q/vGeoV1Ncx/FeCFongClw0hbibmZhP5xR1eU5q?=
 =?us-ascii?Q?Ku/hyqRu1gwQK9DazyYjkdSqfL5Z+Ys8D9u938yCnqr6a1aPPjpw//IpWoUB?=
 =?us-ascii?Q?RKJSaW8nxmXsY5B7PgghzbzAGGGmZ+drEq5Y3WvJd56K+IBghUSAsQegzu3p?=
 =?us-ascii?Q?aJ+xxa/8xwKU9WqblCXCKuyTcbYzgFf7OszTEYh5kUeZdPFkhhRvsohlkcBd?=
 =?us-ascii?Q?KHbDhS/zSp/AOXfxkcjkjN95YGI9zNcySWKRamwT+EI9qHi5SNhzG5OshF9a?=
 =?us-ascii?Q?ZQ1AszXlhkwDXtUoybDJnSyzZWMtx0M6L2Ohnz5wh4FEUDJb+Lc/WWk0Mq1A?=
 =?us-ascii?Q?Ijfaqr66Wh4B6SZqhWfv/OU9dKHTm02O59wrGGa7JCYM2t/PPAGa9r1p9Rg+?=
 =?us-ascii?Q?J+HIC6v0r/+xnofXqhPhLd/QFC6gHvahK6cp1CuVgW9oVobC3LEQRrYpV4ID?=
 =?us-ascii?Q?JVmPt1y0y96GXPwKYoodHQvexeqmRjvEoSXindWZObLI8lCV2oj8pJIUJ/a0?=
 =?us-ascii?Q?7eoEwLQm+PAKkymqmSJYK1UVJbO2hCMVE8t7guvmM0JOJeZV8lmZ0Pce++fU?=
 =?us-ascii?Q?E6pVLlYp2JkY2f0B+yMwsyJnjd3ydSxgfToCYHYmNQjj7SYK0Bi8+37K5Fg3?=
 =?us-ascii?Q?Oj9qNy1PYVG59mSP9ujPVBZcfK6zeJtZGACbv36xAN3rLpXzV4xcg3pQ4gD9?=
 =?us-ascii?Q?SksSYOBId6f/4m48eDpXjm1E+//WuIwEEz2mr0L+zTjmnpAUg1VMkEJCJg4z?=
 =?us-ascii?Q?ytt28NYJZ4TROZk2H0Mt+E2neSINKDja+B4FIBAgaQFHuSquP8NnE8zikfzS?=
 =?us-ascii?Q?AAtBXlmBMkB4FfJ0N/Ir+h32sxYxgFRf23IQzCA5QQUBEVxyDZiorxLACZPW?=
 =?us-ascii?Q?A9CPrcUoMPT0sFt0TxvcnvQkqGO7cXydnoGwNUFK63qL/Pd7tkxzQ7Z+u4xw?=
 =?us-ascii?Q?gQ6Hpxv26eOhRUb4XtwNtZeQkzydoJJ/W1EjB6MVQbMaZKS9OykInjUJh+dz?=
 =?us-ascii?Q?dbST4sIkQUBBH4XeJDxGRwsX4/o45QXKE8R9pp1GtRoDKdJEIJh2QLUTGMK5?=
 =?us-ascii?Q?L/s7EzgHxunaJfTVl9GR35hOB+PqV3upLhk0F1kQSYfb5yekXL/yqeGkgwF6?=
 =?us-ascii?Q?7b7Du6DHGvTUUs9h7K/Pk52i3eCS5p/h7gORL4QX+cTChZWcs6LVF5Th8yLV?=
 =?us-ascii?Q?nfFPfnZJr5kOLX56ToI//UlRQN8H9lc9HRCIX4RbU2pp4i8NRcpU36QxRpHg?=
 =?us-ascii?Q?2MjexI0BzhE1YsVQoms96Ffrj6+tSk+RoSeQO404IVsQ9GnXqY3YArFOXOA/?=
 =?us-ascii?Q?UK584AXx53X3KFFhBYqNUrsb7uDke8RZX6+o3jJpcNDBzuXrSALZPI9SgoJE?=
 =?us-ascii?Q?Q2QtCRY8EipxuPmtFB1yDkRdqg+KygUmdYySxDWmnoptu/RCFKyVCUxIDPhp?=
 =?us-ascii?Q?cKHqSD6zMcSHv6U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ujZNgLXw/VBb0zKjG0j7ai/hak7Gs25vO6qRv+XQS00MBX9RPWbt0hxvvShM?=
 =?us-ascii?Q?5bJVvlIig2ovolzzQz4zRoGj/TtYIGZwx8h0pIjb+gT824QcVdzEswBShU1w?=
 =?us-ascii?Q?uPPbaJiDkXpYjnrtrPvXsM9uIA/yH/m9HYwMRjr+ycek9UiJOStgWCSEwZ6t?=
 =?us-ascii?Q?GGJTidwdYaxhFPo0npu/Iw1rATohRP/6/GMnBNg+VJTpJK13ATNmzv3QT7YG?=
 =?us-ascii?Q?vmCuGVkxbsj2poey0/S9aPICvuO7x22RPetXEtaMU/60yh4TRV/Zg1y8YijW?=
 =?us-ascii?Q?rqodsE3i50hFku2/+d5gsFSrEwSgCSUoPkTeqEaWJo+lyWWyI2Qz0ER08mpF?=
 =?us-ascii?Q?GI+pfoU2EJhRDHPSuhzR0TtK1pnn7wwpzx6BPQ+H+HPSVcQH+/+sJgVIAIFr?=
 =?us-ascii?Q?7uS6B9MlcKOYoMlfN2L1CuNVIldsDTSmvQk8gIDSh4O8Ti0eMLa0+24AGrJD?=
 =?us-ascii?Q?hkT4nslIszBdGP3LvrpUT+9vb+F0tefFdCj39LdhsqKZTzc6RXV6d+rrMLdj?=
 =?us-ascii?Q?lRjVaw+E9IZUD/GOJP1feyc6CuUe4sK+D33cmFhstVr9dyhlyABLJxj9H+hA?=
 =?us-ascii?Q?7/uc7yBQZc43YM0qXp0xoicPcxX/wPFP17Pvw9IsAARps2RrfhpvifQGHfVB?=
 =?us-ascii?Q?bgeHU5urv7ORmMh+6BspNf0/dP2BkqdrIyNr4bEy84iB9r1Or5KYzR8M8nwr?=
 =?us-ascii?Q?pwplwsrmbHiqz8itc6URktfFScvkwKhBJybOV+1Aai3g/vOi/U/5Q+iso5AM?=
 =?us-ascii?Q?wNiA2XHpwhe460hMvEJIhlqe9q0bw9pP3b7q3KTuk+AI4AFu/6w15pqfmN/g?=
 =?us-ascii?Q?yeiuNYWHRXydjy3Jb+PBM9j6P6VTfGD2mw2pfBbjN2hJ7Hn1DQZQzkkwu+qO?=
 =?us-ascii?Q?h6y57pJcsNHxnBeeQYWNN1t11aAlcytRTx7xQWL5HSyCzX5fgs5f9KSC652l?=
 =?us-ascii?Q?X6zqSaXQI6UvAbfq8k8785BT8t3t+N/gSOOMd3+Y8c9fxURPpzdxvHOAg/cS?=
 =?us-ascii?Q?FZQKC43Aj65Vd4cP5mLZP9YN1O57AcfX1tQw+Pr8BwHxxuZC+u1RLXwuGs19?=
 =?us-ascii?Q?6/oVDLCpuzzxu1WvJ++DK36VBTBOPhEJQKFrjffy6Hi1hukiTOHgVQVkmEXq?=
 =?us-ascii?Q?G1falgPl0/6ZNCKWrklK80lTaXEabdNzE6XKfNYXIb7oTB82C/1a/HIdt6aK?=
 =?us-ascii?Q?0/78lxFDnoS68ocCK02g33M6K3YhKwipJpCB6oIhmJDh0IkDfwAmr1ly3+cM?=
 =?us-ascii?Q?oOXUWkINF2iqTR8kwhn5f+pwLR/EAh6IYLHPpSCcJYjpk25WkGpFP2kWXXwW?=
 =?us-ascii?Q?P5OvSDY/8CFHaETxwreH8BmA2JMGJtcdK22tMM08VTDrStaw166htliWG9xq?=
 =?us-ascii?Q?A++T6uGE3N/JMSFJ64qGnwGSLppi4RhNYtuhvlZEcierzvTLapKUEgztlQSs?=
 =?us-ascii?Q?vcGy4Fj9TaRrNF5lC89Ee4W1jH2qUZ7xP3rcGdk5QfG7z7301pYLfs44vdPZ?=
 =?us-ascii?Q?3q96hSkXM6ucDIu+NTdKcvp8srUhzJQXZyF8YiEwjzrG4NlcU7MExSCf+fgo?=
 =?us-ascii?Q?K/RugvoiXVqd7KzcB+1+dJQGvOsoJcPJ1IXtUI4zqqTnZ1gKU081Sf4X+X4U?=
 =?us-ascii?Q?utVsyLvEkvL+M6CdfSy3obmjxlIwzZ5WHYBXO+rD2/H5YrnI+6UWvUR4f6YN?=
 =?us-ascii?Q?5PQ4ZgW5JbnULOMBjKbt9S0m5/A/KTuwJQq6Ve3hGQi47KPh50c5hhscsMu7?=
 =?us-ascii?Q?cZZcL2weDQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 323c9bdc-8952-437f-5ad5-08de688a82f9
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4840.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 09:55:25.0881 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HWBhf478MoeF9hhhKJJFhhDpYxRhXDldVEWep0a7d49x/efdNq6Lo1KqWdyU02GbcPsmredBn/hDImRLEBI8tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6484
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
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 84E55119360
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 10:42:35PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v2,1/2] drm/i915/dp: Fix pipe BPP clamping due to HDR
> URL   : https://patchwork.freedesktop.org/series/161363/
> State : failure

Thanks for the reviews, patchset is pushed to drm-intel-next, adding
another Closes: trailer to patch 1.

The failure is unrelated, see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17961_full -> Patchwork_161363v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_161363v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_161363v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   Additional (1): shard-snb-0 
>   Missing    (1): shard-dg2-set2 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_161363v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_pread@exhaustion:
>     - shard-glk10:        NOTRUN -> [ABORT][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk10/igt@gem_pread@exhaustion.html

The above host doesn't have any DP outputs, so the DP specific changes
in the patchset are unrelated to the failure.

It looks like some GEM / Prime related issue:

<4>[  111.394228] DEBUG_LOCKS_WARN_ON(1)
<4>[  111.394230] WARNING: kernel/locking/lockdep.c:238 at __lock_acquire+0xb58/0x2790, CPU#2: kworker/u16:4/99
...
<4>[  111.394437] Workqueue: i915 __i915_gem_free_work [i915]
<4>[  111.394878] RIP: 0010:__lock_acquire+0xb5f/0x2790
...
<4>[  111.394969] Call Trace:
<4>[  111.394973]  <TASK>
<4>[  111.394979]  ? trace_hardirqs_on+0x63/0xd0
<4>[  111.394990]  ? irqentry_exit+0x6a/0x7c0
<4>[  111.395000]  lock_acquire+0xc4/0x2c0
<4>[  111.395008]  ? dma_buf_put+0x2e/0xe0
<4>[  111.395018]  _raw_spin_lock+0x2f/0x60
<4>[  111.395026]  ? dma_buf_put+0x2e/0xe0
<4>[  111.395032]  dma_buf_put+0x2e/0xe0
<4>[  111.395038]  drm_prime_gem_destroy+0x38/0x50
<4>[  111.395048]  __i915_gem_free_object+0x5e/0x1d0 [i915]
<4>[  111.395384]  __i915_gem_free_objects.isra.0+0x7b/0xd0 [i915]
<4>[  111.395717]  __i915_gem_free_work+0x25/0x30 [i915]
<4>[  111.396049]  process_one_work+0x22e/0x6b0
<4>[  111.396061]  worker_thread+0x1e8/0x3d0
<4>[  111.396068]  ? __pfx_worker_thread+0x10/0x10
<4>[  111.396075]  kthread+0x11f/0x250

> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_17961_full and Patchwork_161363v1_full:
> 
> ### New IGT tests (22) ###
> 
>   * igt@i915_pm_rpm@bad-rotation-90-4-tiled-mtl-rc-ccs:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@basic-read:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@bo-too-big-interruptible:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@busy:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@busy-accuracy-50:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@crc-sprite-planes-basic-y-tiled-ccs:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@dr1-dirt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@fbc-1p-primscrn-cur-indfb-draw-pwrite:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@fbc-rgb101010-draw-render:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@lease-invalid-crtc:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@legacy-engines-cleanup:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@planes-upscale-factor-0-25-downscale-factor-0-75:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@psr-2p-scndscrn-pri-indfb-draw-pwrite:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@psr-rgb101010-draw-mmap-wc:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@sync_multi_consumer_producer:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@sync_random_merge:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rpm@wait-wedge-10ms:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rps@mmap-boundaries:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_pm_rps@test-time-stamp-atomic:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_atomic@plane-invalid-params@pipe-a-dp-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.89] s
> 
>   * igt@kms_rmfb@rmfb-ioctl@pipe-a-dp-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.15] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_161363v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][2] ([i915#8411])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-rkl:          NOTRUN -> [SKIP][3] ([i915#11078])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-7/igt@device_reset@cold-reset-bound.html
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#3281]) +10 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-tglu:         NOTRUN -> [SKIP][5] ([i915#9323])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][6] ([i915#13356])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-1/igt@gem_ccs@suspend-resume.html
>     - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#9323])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][8] ([i915#12392] / [i915#13356])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_ctx_persistence@hostile:
>     - shard-snb:          NOTRUN -> [SKIP][9] ([i915#1099])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-snb5/igt@gem_ctx_persistence@hostile.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-tglu:         NOTRUN -> [SKIP][10] ([i915#280])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@noheartbeat:
>     - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#8555]) +1 other test skip
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-1/igt@gem_exec_balancer@noheartbeat.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-tglu:         NOTRUN -> [SKIP][12] ([i915#4525])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#4525]) +1 other test skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@gem_exec_balancer@parallel-out-fence.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][14] ([i915#4525])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#3539] / [i915#4852])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_reloc@basic-concurrent16:
>     - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#3281]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@gem_exec_reloc@basic-concurrent16.html
> 
>   * igt@gem_fence_thrash@bo-copy:
>     - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#4860])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@gem_fence_thrash@bo-copy.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#4613] / [i915#7582])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-7/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#4613]) +2 other tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][20] ([i915#4613])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-tglu:         NOTRUN -> [SKIP][21] ([i915#4613]) +2 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][22] ([i915#4613]) +2 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk6/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#4077]) +2 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-8/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_mmap_wc@bad-object:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#4083]) +2 other tests skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-8/igt@gem_mmap_wc@bad-object.html
> 
>   * igt@gem_partial_pwrite_pread@write-snoop:
>     - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#14544] / [i915#3282])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@gem_partial_pwrite_pread@write-snoop.html
> 
>   * igt@gem_pread@snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3282]) +2 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-8/igt@gem_pread@snoop.html
> 
>   * igt@gem_pxp@create-regular-context-2:
>     - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#4270]) +1 other test skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@gem_pxp@create-regular-context-2.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-tglu:         NOTRUN -> [SKIP][28] ([i915#13398])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-context:
>     - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#13717])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4270]) +1 other test skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#5190] / [i915#8428]) +1 other test skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#14544] / [i915#8411]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4079])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@gem_set_tiling_vs_gtt.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-rkl:          NOTRUN -> [SKIP][34] +23 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@gem_softpin@evict-snoop.html
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4885])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-1/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#3282]) +1 other test skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-tglu:         NOTRUN -> [SKIP][37] ([i915#3297])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3297]) +2 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#3297])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@gem_userptr_blits@dmabuf-unsync.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][40] ([i915#3297])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#3282] / [i915#3297])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#14544] / [i915#3297])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#3281] / [i915#3297])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][44] ([i915#13356] / [i915#14586])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk10/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-glk:          [PASS][45] -> [INCOMPLETE][46] ([i915#13356] / [i915#14586])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-glk1/igt@gem_workarounds@suspend-resume-fd.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk1/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@gen7_exec_parse@oacontrol-tracking:
>     - shard-snb:          NOTRUN -> [SKIP][47] +133 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-snb1/igt@gen7_exec_parse@oacontrol-tracking.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#2527]) +3 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@gen9_exec_parse@allowed-all.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][49] ([i915#2527] / [i915#2856])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#2856])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#14544] / [i915#2527])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_drm_fdinfo@isolation@rcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#14073]) +7 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-1/igt@i915_drm_fdinfo@isolation@rcs0.html
> 
>   * igt@i915_module_load@fault-injection@__uc_init:
>     - shard-tglu-1:       NOTRUN -> [SKIP][54] ([i915#15479]) +4 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@i915_module_load@fault-injection@__uc_init.html
> 
>   * igt@i915_module_load@fault-injection@intel_connector_register:
>     - shard-tglu-1:       NOTRUN -> [ABORT][55] ([i915#15342]) +1 other test abort
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@i915_module_load@fault-injection@intel_connector_register.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#8399])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#14544] / [i915#6590]) +1 other test skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#14498])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-dg1:          [PASS][59] -> [ABORT][60] ([i915#13562])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-dg1-16/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg1-13/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [PASS][61] -> [INCOMPLETE][62] ([i915#13729] / [i915#13821])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-snb7/igt@i915_pm_rps@reset.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-snb4/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#11681])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@i915_pm_rps@thresholds-idle-park.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#4387])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-tglu:         NOTRUN -> [SKIP][65] ([i915#6245])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-rkl:          [PASS][66] -> [INCOMPLETE][67] ([i915#4817])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-2/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#7707])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#12454] / [i915#12712])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume:
>     - shard-rkl:          [PASS][70] -> [INCOMPLETE][71] ([i915#12761])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-8/igt@kms_async_flips@async-flip-suspend-resume.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-3/igt@kms_async_flips@async-flip-suspend-resume.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][72] ([i915#12761])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-3/igt@kms_async_flips@async-flip-suspend-resume@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-glk10:        NOTRUN -> [SKIP][73] ([i915#1769])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#14544] / [i915#5286])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][75] ([i915#5286]) +2 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][76] ([i915#5286]) +2 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#5286]) +4 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-tglu:         NOTRUN -> [SKIP][78] ([i915#3828])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#3828])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-8/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][80] +6 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#3638]) +2 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4538] / [i915#5190]) +3 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-1/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-addfb:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#5190])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_big_fb@y-tiled-addfb.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#14544]) +3 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>     - shard-glk:          NOTRUN -> [SKIP][85] +169 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk9/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#6095]) +49 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs:
>     - shard-dg1:          [PASS][87] -> [DMESG-WARN][88] ([i915#4423])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-dg1-12/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg1-13/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#12313]) +1 other test skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][90] ([i915#6095]) +24 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#10307] / [i915#6095]) +143 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-4/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#12313])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#6095]) +71 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#14544] / [i915#6095]) +18 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#6095]) +207 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#12805])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#14098] / [i915#14544] / [i915#6095]) +12 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][98] ([i915#15582]) +1 other test incomplete
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk5/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#14098] / [i915#6095]) +46 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#6095]) +68 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][101] ([i915#12313]) +1 other test skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#14544] / [i915#3742])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_edid@hdmi-mode-timings:
>     - shard-tglu-1:       NOTRUN -> [SKIP][104] ([i915#11151] / [i915#7828]) +1 other test skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_chamelium_edid@hdmi-mode-timings.html
> 
>   * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-1/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-single:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#11151] / [i915#14544] / [i915#7828]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-single.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#6944] / [i915#7118] / [i915#9424])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-1/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@atomic-hdcp14@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][109] ([i915#7173]) +1 other test fail
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-11/igt@kms_content_protection@atomic-hdcp14@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#14544] / [i915#15330] / [i915#3116])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-0-hdcp14:
>     - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#15330])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_content_protection@dp-mst-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#15330] / [i915#3116])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#6944]) +1 other test skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_content_protection@suspend-resume.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][115] ([i915#6944])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_content_protection@suspend-resume.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#6944] / [i915#7118] / [i915#9424]) +1 other test skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#13049] / [i915#14544])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-tglu-1:       NOTRUN -> [SKIP][118] ([i915#13049])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [FAIL][119] ([i915#13566]) +1 other test fail
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][120] ([i915#13566]) +1 other test fail
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#13049]) +2 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#3555]) +8 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][123] ([i915#3555]) +1 other test skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#3555]) +2 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#13049]) +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x32:
>     - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#3555]) +1 other test skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-32x32.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#13046] / [i915#5354]) +2 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#9067])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#4103])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#4103]) +1 other test skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dp_link_training@non-uhbr-mst:
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#13749])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-7/igt@kms_dp_link_training@non-uhbr-mst.html
> 
>   * igt@kms_dp_link_training@uhbr-sst:
>     - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#13748])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_dp_link_training@uhbr-sst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2:          [PASS][133] -> [SKIP][134] ([i915#13707])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-1/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#13707])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_dp_linktrain_fallback@dsc-fallback.html
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#13707])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-tglu-1:       NOTRUN -> [SKIP][137] ([i915#3840])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#3555] / [i915#3840])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#3555] / [i915#3840])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_dsc@dsc-with-output-formats.html
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#3555] / [i915#3840]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#3840] / [i915#9053])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-rkl:          [PASS][142] -> [INCOMPLETE][143] ([i915#9878])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-4/igt@kms_fbcon_fbt@fbc-suspend.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-3/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#2065] / [i915#4854])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_feature_discovery@chamelium.html
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#4854])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-8/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#1839])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-1/igt@kms_feature_discovery@display-2x.html
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#1839]) +1 other test skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#1839])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#9934]) +9 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][150] ([i915#3637] / [i915#9934])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-snb:          [PASS][151] -> [TIMEOUT][152] ([i915#14033] / [i915#14350])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][153] -> [TIMEOUT][154] ([i915#14033])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#14544] / [i915#9934]) +2 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#3637] / [i915#9934]) +6 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#9934]) +2 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][158] ([i915#12745] / [i915#4839] / [i915#6113])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk3/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][159] ([i915#12745])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk3/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#14544] / [i915#15643])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#15643]) +5 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#15643]) +1 other test skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#15643] / [i915#5190])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#15643])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#15102])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#14544] / [i915#15102])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#15102] / [i915#3023]) +16 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
>     - shard-glk10:        NOTRUN -> [SKIP][168] +180 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#14544] / [i915#1825]) +8 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#5439])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#9766])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#9766])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-8/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#15102]) +3 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#15102]) +11 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#15104]) +1 other test skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#15102]) +14 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#15102] / [i915#3458]) +2 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#14544] / [i915#15102] / [i915#3023]) +4 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#5354]) +16 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#8708]) +5 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#1825]) +44 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-tglu:         NOTRUN -> [SKIP][182] +36 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:
>     - shard-tglu-1:       NOTRUN -> [SKIP][183] +21 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-tglu-1:       NOTRUN -> [SKIP][184] ([i915#3555] / [i915#8228])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#3555] / [i915#8228])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-7/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#15460])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#15458])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][188] ([i915#12756] / [i915#13409] / [i915#13476])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk5/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][189] ([i915#13409] / [i915#13476])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-4tiled:
>     - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#14712])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping:
>     - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#15608] / [i915#15609] / [i915#8825]) +1 other test skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping@pipe-a-plane-0:
>     - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#15608]) +27 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping@pipe-a-plane-0.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping@pipe-a-plane-5:
>     - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#15609]) +1 other test skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping@pipe-a-plane-5.html
>     - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#15609]) +2 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping@pipe-a-plane-5.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier:
>     - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#15608] / [i915#8825]) +1 other test skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping:
>     - shard-tglu-1:       NOTRUN -> [SKIP][196] ([i915#15608] / [i915#15609] / [i915#8825])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping@pipe-a-plane-7:
>     - shard-tglu-1:       NOTRUN -> [SKIP][197] ([i915#15609])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping@pipe-a-plane-7.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping@pipe-b-plane-3:
>     - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#15608]) +14 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping@pipe-b-plane-3.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping@pipe-b-plane-7:
>     - shard-tglu-1:       NOTRUN -> [SKIP][199] ([i915#15609] / [i915#8825])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping@pipe-b-plane-7.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
>     - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#15608] / [i915#15609] / [i915#8825]) +2 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-7/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping@pipe-b-plane-5:
>     - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#15609] / [i915#8825]) +2 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-7/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping@pipe-b-plane-5.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping@pipe-b-plane-7:
>     - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#15609] / [i915#8825]) +2 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping@pipe-b-plane-7.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping:
>     - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#15608] / [i915#15609] / [i915#8825]) +2 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping@pipe-a-plane-3:
>     - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#15608]) +12 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-8/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping@pipe-a-plane-3.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping@pipe-a-plane-5:
>     - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#15608]) +24 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping@pipe-a-plane-5.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping@pipe-b-plane-5:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#15609] / [i915#8825]) +1 other test skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-8/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping@pipe-b-plane-5.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#15608] / [i915#8825]) +1 other test skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier-source-clamping@pipe-b-plane-7:
>     - shard-tglu:         NOTRUN -> [SKIP][208] ([i915#15609]) +4 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier-source-clamping@pipe-b-plane-7.html
> 
>   * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:
>     - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#14544] / [i915#15608] / [i915#8825]) +1 other test skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier@pipe-a-plane-0:
>     - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#14544] / [i915#15608])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier@pipe-a-plane-0.html
> 
>   * igt@kms_plane@pixel-format-yf-tiled-modifier:
>     - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#15608] / [i915#8825]) +3 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_plane@pixel-format-yf-tiled-modifier.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][212] ([i915#15608] / [i915#8825]) +1 other test skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_plane@pixel-format-yf-tiled-modifier.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][213] ([i915#13026]) +1 other test incomplete
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk6/igt@kms_plane@plane-panning-bottom-right-suspend.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-tglu:         NOTRUN -> [SKIP][214] ([i915#13958])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_multiple@tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#14259])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_plane_multiple@tiling-4.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#14259] / [i915#14544])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
>     - shard-tglu:         NOTRUN -> [SKIP][217] ([i915#15329]) +4 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
>     - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#14544] / [i915#15329]) +3 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#15329] / [i915#3555])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#15329]) +6 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#9685])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#14544] / [i915#4281])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#8430])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_pm_lpsp@screens-disabled.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][224] ([i915#8430])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][225] -> [SKIP][226] ([i915#14544] / [i915#15073]) +1 other test skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [PASS][227] -> [SKIP][228] ([i915#15073]) +3 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html
>     - shard-dg1:          [PASS][229] -> [SKIP][230] ([i915#15073]) +1 other test skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-dg1-17/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg1-14/igt@kms_pm_rpm@modeset-non-lpsp.html
>     - shard-tglu:         NOTRUN -> [SKIP][231] ([i915#15073])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][232] ([i915#11520]) +3 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][233] ([i915#11520]) +6 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#11520]) +8 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#11520] / [i915#14544]) +2 other tests skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-snb:          NOTRUN -> [SKIP][236] ([i915#11520]) +2 other tests skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-snb5/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#11520]) +3 other tests skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-8/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
>     - shard-tglu:         NOTRUN -> [SKIP][238] ([i915#11520]) +4 other tests skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][239] ([i915#11520]) +3 other tests skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk9/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-tglu:         NOTRUN -> [SKIP][240] ([i915#9683])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#9683])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_psr2_su@page_flip-xrgb8888.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][242] ([i915#9683])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr-no-drrs:
>     - shard-tglu:         NOTRUN -> [SKIP][243] ([i915#9732]) +12 other tests skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_psr@fbc-psr-no-drrs.html
> 
>   * igt@kms_psr@fbc-psr-primary-page-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@kms_psr@fbc-psr-primary-page-flip.html
> 
>   * igt@kms_psr@fbc-psr2-primary-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#1072] / [i915#14544] / [i915#9732]) +4 other tests skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_psr@fbc-psr2-primary-blt.html
> 
>   * igt@kms_psr@pr-primary-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][246] ([i915#9732]) +5 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_psr@pr-primary-mmap-cpu.html
> 
>   * igt@kms_psr@psr-cursor-plane-move:
>     - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#1072] / [i915#9732]) +21 other tests skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_psr@psr-cursor-plane-move.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-tglu:         NOTRUN -> [SKIP][248] ([i915#5289])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][249] ([i915#5289])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#12755])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-8/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#14544] / [i915#5289])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#5289]) +1 other test skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-tglu:         NOTRUN -> [ABORT][253] ([i915#13179]) +1 other test abort
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
>     - shard-dg2:          NOTRUN -> [ABORT][254] ([i915#13179]) +1 other test abort
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-8/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#14544] / [i915#3555])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-tglu-1:       NOTRUN -> [SKIP][256] ([i915#8623])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern.html
>     - shard-glk:          NOTRUN -> [FAIL][257] ([i915#10959])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk5/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#15243] / [i915#3555])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@kms_vrr@flipline.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#3555] / [i915#9906])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_vrr@negative-basic.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][260] ([i915#3555] / [i915#9906])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-1/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-tglu:         NOTRUN -> [SKIP][261] ([i915#9906]) +1 other test skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#2436])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-7/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@global-sseu-config-invalid:
>     - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#7387])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-8/igt@perf@global-sseu-config-invalid.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-glk:          NOTRUN -> [FAIL][264] ([i915#14433])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk3/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#8516])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#3291] / [i915#3708]) +1 other test skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#3708] / [i915#4077])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-5/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#14544] / [i915#3708])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-rkl:          NOTRUN -> [SKIP][269] ([i915#9917])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-7/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-random:
>     - shard-tglu:         NOTRUN -> [FAIL][270] ([i915#12910]) +8 other tests fail
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-7/igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-random.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-snb:          [INCOMPLETE][271] -> [PASS][272]
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-snb7/igt@gem_eio@in-flight-contexts-immediate.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-snb5/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_eio@suspend:
>     - shard-rkl:          [ABORT][273] ([i915#15131]) -> [PASS][274]
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-1/igt@gem_eio@suspend.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-7/igt@gem_eio@suspend.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [INCOMPLETE][275] ([i915#13356]) -> [PASS][276] +1 other test pass
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-1/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-rkl:          [INCOMPLETE][277] ([i915#13356]) -> [PASS][278]
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@gem_workarounds@suspend-resume-fd.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-rkl:          [ABORT][279] ([i915#15060]) -> [PASS][280]
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-1/igt@i915_pm_rpm@system-suspend.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][281] ([i915#13566]) -> [PASS][282] +1 other test pass
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-tglu-7/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-10/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:
>     - shard-rkl:          [FAIL][283] ([i915#13566]) -> [PASS][284] +2 other tests pass
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-rkl:          [INCOMPLETE][285] ([i915#6113]) -> [PASS][286]
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-3/igt@kms_flip@flip-vs-suspend.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-5/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
>     - shard-dg2:          [FAIL][287] ([i915#15389] / [i915#6880]) -> [PASS][288] +1 other test pass
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-mtlp:         [SKIP][289] -> [PASS][290]
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-mtlp-1/igt@kms_hdmi_inject@inject-audio.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-mtlp-4/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-dg2:          [SKIP][291] ([i915#3555] / [i915#8228]) -> [PASS][292]
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-dg2-6/igt@kms_hdr@bpc-switch-suspend.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-11/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
>     - shard-rkl:          [INCOMPLETE][293] ([i915#14412]) -> [PASS][294] +1 other test pass
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [SKIP][295] ([i915#15073]) -> [PASS][296] +1 other test pass
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>     - shard-dg1:          [SKIP][297] ([i915#15073]) -> [PASS][298]
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-dg1-14/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][299] ([i915#15073]) -> [PASS][300] +1 other test pass
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_vblank@ts-continuation-suspend:
>     - shard-rkl:          [INCOMPLETE][301] ([i915#12276]) -> [PASS][302]
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-3/igt@kms_vblank@ts-continuation-suspend.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_vblank@ts-continuation-suspend.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-rkl:          [SKIP][303] ([i915#3555] / [i915#9323]) -> [SKIP][304] ([i915#14544] / [i915#3555] / [i915#9323])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-2/igt@gem_ccs@ctrl-surf-copy.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-rkl:          [SKIP][305] ([i915#9323]) -> [SKIP][306] ([i915#14544] / [i915#9323])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          [SKIP][307] ([i915#280]) -> [SKIP][308] ([i915#14544] / [i915#280])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-2/igt@gem_ctx_sseu@engines.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read-noreloc:
>     - shard-rkl:          [SKIP][309] ([i915#14544] / [i915#3281]) -> [SKIP][310] ([i915#3281])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>     - shard-rkl:          [SKIP][311] ([i915#3281]) -> [SKIP][312] ([i915#14544] / [i915#3281]) +5 other tests skip
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-rkl:          [SKIP][313] ([i915#14544] / [i915#4613]) -> [SKIP][314] ([i915#4613])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@gem_lmem_swapping@smem-oom.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-rkl:          [SKIP][315] ([i915#4613]) -> [SKIP][316] ([i915#14544] / [i915#4613]) +2 other tests skip
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@gem_lmem_swapping@verify.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-rkl:          [SKIP][317] ([i915#14544] / [i915#3282]) -> [SKIP][318] ([i915#3282]) +1 other test skip
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@gem_pwrite@basic-exhaustion.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-4/igt@gem_pwrite@basic-exhaustion.html
>     - shard-tglu:         [WARN][319] ([i915#2658]) -> [ABORT][320] ([i915#15647])
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-tglu-6/igt@gem_pwrite@basic-exhaustion.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-5/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pwrite@basic-self:
>     - shard-rkl:          [SKIP][321] ([i915#3282]) -> [SKIP][322] ([i915#14544] / [i915#3282]) +1 other test skip
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@gem_pwrite@basic-self.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@gem_pwrite@basic-self.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-rkl:          [SKIP][323] ([i915#13717]) -> [SKIP][324] ([i915#13717] / [i915#14544])
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@gem_pxp@hw-rejects-pxp-buffer.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          [SKIP][325] ([i915#14544] / [i915#3297]) -> [SKIP][326] ([i915#3297]) +1 other test skip
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-rkl:          [SKIP][327] ([i915#3297]) -> [SKIP][328] ([i915#14544] / [i915#3297])
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap-cycles.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-rkl:          [SKIP][329] ([i915#2527]) -> [SKIP][330] ([i915#14544] / [i915#2527])
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@gen9_exec_parse@batch-zero-length.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-rkl:          [SKIP][331] ([i915#14544] / [i915#2527]) -> [SKIP][332] ([i915#2527]) +1 other test skip
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          [SKIP][333] ([i915#14544] / [i915#6412]) -> [SKIP][334] ([i915#6412])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@i915_module_load@resize-bar.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-rkl:          [SKIP][335] ([i915#8399]) -> [SKIP][336] ([i915#14544] / [i915#8399])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@i915_pm_freq_api@freq-reset.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          [SKIP][337] ([i915#4387]) -> [SKIP][338] ([i915#14544] / [i915#4387])
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@i915_pm_sseu@full-enable.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
>     - shard-rkl:          [SKIP][339] ([i915#5286]) -> [SKIP][340] ([i915#14544] / [i915#5286]) +3 other tests skip
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-rkl:          [SKIP][341] ([i915#14544] / [i915#5286]) -> [SKIP][342] ([i915#5286])
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-rkl:          [SKIP][343] ([i915#3638]) -> [SKIP][344] ([i915#14544] / [i915#3638]) +1 other test skip
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][345] ([i915#12313]) -> [SKIP][346] ([i915#12313] / [i915#14544])
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
>     - shard-rkl:          [SKIP][347] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][348] ([i915#14098] / [i915#6095])
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          [SKIP][349] ([i915#14098] / [i915#6095]) -> [SKIP][350] ([i915#14098] / [i915#14544] / [i915#6095]) +6 other tests skip
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_chamelium_edid@dp-edid-resolution-list:
>     - shard-rkl:          [SKIP][351] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][352] ([i915#11151] / [i915#7828]) +1 other test skip
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-resolution-list.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_chamelium_edid@dp-edid-resolution-list.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>     - shard-rkl:          [SKIP][353] ([i915#11151] / [i915#7828]) -> [SKIP][354] ([i915#11151] / [i915#14544] / [i915#7828]) +6 other tests skip
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          [FAIL][355] ([i915#7173]) -> [SKIP][356] ([i915#6944] / [i915#7118] / [i915#9424])
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-7/igt@kms_content_protection@atomic-dpms.html
>     - shard-rkl:          [SKIP][357] ([i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][358] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_content_protection@atomic-dpms.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@atomic-hdcp14:
>     - shard-rkl:          [SKIP][359] ([i915#6944]) -> [SKIP][360] ([i915#14544] / [i915#6944])
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-2/igt@kms_content_protection@atomic-hdcp14.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_content_protection@atomic-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-type-0-hdcp14:
>     - shard-rkl:          [SKIP][361] ([i915#14544] / [i915#15330]) -> [SKIP][362] ([i915#15330])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-hdcp14.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_content_protection@dp-mst-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@lic-type-0-hdcp14:
>     - shard-dg2:          [SKIP][363] ([i915#6944]) -> [FAIL][364] ([i915#7173]) +1 other test fail
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-dg2-8/igt@kms_content_protection@lic-type-0-hdcp14.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-11/igt@kms_content_protection@lic-type-0-hdcp14.html
>     - shard-rkl:          [SKIP][365] ([i915#14544] / [i915#6944]) -> [SKIP][366] ([i915#6944])
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_content_protection@lic-type-0-hdcp14.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-4/igt@kms_content_protection@lic-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@uevent-hdcp14:
>     - shard-dg2:          [FAIL][367] ([i915#7173]) -> [SKIP][368] ([i915#6944])
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-dg2-11/igt@kms_content_protection@uevent-hdcp14.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-1/igt@kms_content_protection@uevent-hdcp14.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-rkl:          [SKIP][369] ([i915#14544] / [i915#3555]) -> [SKIP][370] ([i915#3555])
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-rkl:          [SKIP][371] ([i915#13049]) -> [SKIP][372] ([i915#13049] / [i915#14544])
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
>     - shard-rkl:          [SKIP][373] -> [SKIP][374] ([i915#14544]) +12 other tests skip
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>     - shard-rkl:          [SKIP][375] ([i915#14544]) -> [SKIP][376] +2 other tests skip
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-rkl:          [SKIP][377] ([i915#4103]) -> [SKIP][378] ([i915#14544] / [i915#4103])
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-rkl:          [SKIP][379] ([i915#14544] / [i915#9723]) -> [SKIP][380] ([i915#9723])
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-rkl:          [SKIP][381] ([i915#3840]) -> [SKIP][382] ([i915#14544] / [i915#3840])
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-rkl:          [SKIP][383] ([i915#3840] / [i915#9053]) -> [SKIP][384] ([i915#14544] / [i915#3840] / [i915#9053])
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-rkl:          [SKIP][385] ([i915#14544] / [i915#9934]) -> [SKIP][386] ([i915#9934]) +2 other tests skip
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-4/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-rkl:          [SKIP][387] ([i915#9934]) -> [SKIP][388] ([i915#14544] / [i915#9934]) +5 other tests skip
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-2/igt@kms_flip@2x-modeset-vs-vblank-race.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-glk:          [INCOMPLETE][389] ([i915#12745] / [i915#4839]) -> [INCOMPLETE][390] ([i915#12745] / [i915#4839] / [i915#6113])
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-glk6/igt@kms_flip@flip-vs-suspend.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk3/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
>     - shard-glk:          [INCOMPLETE][391] ([i915#12745]) -> [INCOMPLETE][392] ([i915#12745] / [i915#6113])
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-glk6/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-glk3/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-rkl:          [SKIP][393] ([i915#14544] / [i915#15643]) -> [SKIP][394] ([i915#15643]) +1 other test skip
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
>     - shard-rkl:          [SKIP][395] ([i915#15643]) -> [SKIP][396] ([i915#14544] / [i915#15643]) +2 other tests skip
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
>     - shard-rkl:          [SKIP][397] ([i915#14544] / [i915#1825]) -> [SKIP][398] ([i915#1825]) +8 other tests skip
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-rkl:          [SKIP][399] ([i915#1825]) -> [SKIP][400] ([i915#14544] / [i915#1825]) +18 other tests skip
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][401] ([i915#15102] / [i915#3023]) -> [SKIP][402] ([i915#14544] / [i915#15102] / [i915#3023]) +9 other tests skip
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-rkl:          [SKIP][403] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][404] ([i915#15102] / [i915#3023]) +5 other tests skip
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][405] ([i915#15102]) -> [SKIP][406] ([i915#14544] / [i915#15102]) +3 other tests skip
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          [SKIP][407] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][408] ([i915#15102] / [i915#3458]) +3 other tests skip
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][409] ([i915#15102] / [i915#3458]) -> [SKIP][410] ([i915#10433] / [i915#15102] / [i915#3458]) +1 other test skip
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-rkl:          [INCOMPLETE][411] ([i915#15436]) -> [SKIP][412] ([i915#3555] / [i915#8228])
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_hdr@static-toggle-suspend.html
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-rkl:          [SKIP][413] ([i915#14544] / [i915#15460]) -> [SKIP][414] ([i915#15460])
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-4tiled:
>     - shard-rkl:          [SKIP][415] ([i915#14712]) -> [SKIP][416] ([i915#14544] / [i915#14712])
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping:
>     - shard-rkl:          [SKIP][417] ([i915#15608] / [i915#15609] / [i915#8825]) -> [SKIP][418] ([i915#14544] / [i915#15608] / [i915#15609] / [i915#8825]) +1 other test skip
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping@pipe-a-plane-0:
>     - shard-rkl:          [SKIP][419] ([i915#15608]) -> [SKIP][420] ([i915#14544] / [i915#15608]) +1 other test skip
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping@pipe-a-plane-0.html
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping@pipe-a-plane-0.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping@pipe-b-plane-5:
>     - shard-rkl:          [SKIP][421] ([i915#15609] / [i915#8825]) -> [SKIP][422] ([i915#14544] / [i915#15609] / [i915#8825]) +1 other test skip
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping@pipe-b-plane-5.html
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping@pipe-b-plane-5.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:
>     - shard-rkl:          [SKIP][423] ([i915#14544] / [i915#15608] / [i915#8825]) -> [SKIP][424] ([i915#15608] / [i915#8825]) +1 other test skip
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier@pipe-a-plane-0:
>     - shard-rkl:          [SKIP][425] ([i915#14544] / [i915#15608]) -> [SKIP][426] ([i915#15608])
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier@pipe-a-plane-0.html
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-8/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier@pipe-a-plane-0.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-rkl:          [SKIP][427] ([i915#3555]) -> [SKIP][428] ([i915#14544] / [i915#3555]) +1 other test skip
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_plane_lowres@tiling-yf.html
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-rkl:          [SKIP][429] ([i915#13958]) -> [SKIP][430] ([i915#13958] / [i915#14544])
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-yf.html
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][431] ([i915#15329]) -> [SKIP][432] ([i915#14544] / [i915#15329]) +7 other tests skip
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [SKIP][433] ([i915#15128]) -> [FAIL][434] ([i915#9295])
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          [SKIP][435] ([i915#11520] / [i915#14544]) -> [SKIP][436] ([i915#11520]) +1 other test skip
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          [SKIP][437] ([i915#11520]) -> [SKIP][438] ([i915#11520] / [i915#14544]) +6 other tests skip
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr@psr-primary-page-flip:
>     - shard-dg1:          [SKIP][439] ([i915#1072] / [i915#9732]) -> [SKIP][440] ([i915#1072] / [i915#4423] / [i915#9732])
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-dg1-13/igt@kms_psr@psr-primary-page-flip.html
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-dg1-17/igt@kms_psr@psr-primary-page-flip.html
> 
>   * igt@kms_psr@psr-sprite-render:
>     - shard-rkl:          [SKIP][441] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][442] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@kms_psr@psr-sprite-render.html
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@kms_psr@psr-sprite-render.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-cpu:
>     - shard-rkl:          [SKIP][443] ([i915#1072] / [i915#9732]) -> [SKIP][444] ([i915#1072] / [i915#14544] / [i915#9732]) +13 other tests skip
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_psr@psr2-sprite-mmap-cpu.html
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_psr@psr2-sprite-mmap-cpu.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][445] ([i915#5289]) -> [SKIP][446] ([i915#14544] / [i915#5289])
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-rkl:          [SKIP][447] ([i915#9906]) -> [SKIP][448] ([i915#14544] / [i915#9906])
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-vrr.html
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@perf@mi-rpc:
>     - shard-rkl:          [SKIP][449] ([i915#2434]) -> [SKIP][450] ([i915#14544] / [i915#2434])
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@perf@mi-rpc.html
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@perf@mi-rpc.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-rkl:          [SKIP][451] ([i915#3291] / [i915#3708]) -> [SKIP][452] ([i915#14544] / [i915#3291] / [i915#3708])
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@prime_vgem@basic-read.html
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          [SKIP][453] ([i915#14544] / [i915#3708]) -> [SKIP][454] ([i915#3708])
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-6/igt@prime_vgem@coherency-gtt.html
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-2/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-rkl:          [SKIP][455] ([i915#3708]) -> [SKIP][456] ([i915#14544] / [i915#3708])
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17961/shard-rkl-5/igt@prime_vgem@fence-flip-hang.html
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html
> 
>   
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
>   [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
>   [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
>   [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
>   [i915#14412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14412
>   [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#15060]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15060
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
>   [i915#15128]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15128
>   [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
>   [i915#15389]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15389
>   [i915#15436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15436
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
>   [i915#15479]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479
>   [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
>   [i915#15608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
>   [i915#15609]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15609
>   [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
>   [i915#15647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15647
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17961 -> Patchwork_161363v1
> 
>   CI-20190529: 20190529
>   CI_DRM_17961: 5e0595fbb024e9b7e243a7ca8a028f93a37883f2 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8745: 8745
>   Patchwork_161363v1: 5e0595fbb024e9b7e243a7ca8a028f93a37883f2 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161363v1/index.html
