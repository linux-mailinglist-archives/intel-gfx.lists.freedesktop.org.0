Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDbELitq3Wn5dwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 00:11:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 253AB3F3BA2
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 00:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1830A10E53A;
	Mon, 13 Apr 2026 22:11:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="crP04giX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AE6A10E109;
 Mon, 13 Apr 2026 22:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776118310; x=1807654310;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IslV9iwRRl8bSfx5szv0+PoM6XNeVYlagJBSt+ESInk=;
 b=crP04giXQcgyW/qu68CzhnR9zX8rAkDUO0QDrSCM/+X0/aTd/d1sclsn
 Ye5pMX5Lf1Te6OY4R4onrpvxPXfZGYcnhsdHHOvl6rbVik3LDbYayTTRf
 /Nqw1To1P0Jkl6U1YF6CA+aNc6BLyEG7rSP5H1j5xA2HDJ2ftpj79Hp2x
 ZxrxWLEYs+kqGvLu6Ss7gybERRqwsZqZ/PnQzo1ICCg6q2GCYV14+ZJXw
 mOMHzGA3J88lXyaJZ/wknKlNO1DTt5SDeX5zBIerCOX6egl3iBfldWAz5
 is+UyG4aBbMUrVvPFoTbrdMOYG7nSh/NxhOPdDjmRrDt0n06BQb0XfQxI g==;
X-CSE-ConnectionGUID: 3fBlxQ6+SGemchfuF6y+Zg==
X-CSE-MsgGUID: sqICcXyARzSw0Tr43AW7Og==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="80950318"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="80950318"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 15:11:50 -0700
X-CSE-ConnectionGUID: G6hz/0WNRXuOAl7V3xPbcg==
X-CSE-MsgGUID: bSmDHDX9TJ+VvJ0d3hfnhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="226743600"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 15:11:49 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 15:11:49 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 15:11:49 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.23) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 15:11:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cV14mrmm4LP0G2ciuwFweXnm7Atm6xMg7lr5m18Sa2qcuEKanV+BVmXa/0cr6sJmyhBhV0vE8DFVhqSZWiM79HfJoGL8quULvdcCg36V+r+gvdXbovss9ejBlIOgoTzwO0DC+dyn7GdhumbRxp8EdhTxEN3MH+VSKW+VTY2UwcowDKr7xvrE6zTaCnSWZapN9PQgL57M1UDOEDkyGs2gKz66U1J1STTQ+SAnPmUS6iZ1CIINmQ+LnoxjM9UvdtKPRyX6wHyvPRS6jTua47ovTOkHXVu8cii+TjyT86l83O1T/TLjGqrtCK3lauq4nvoHSgwB5ANHI4RhkEJkjCBYBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M6tjaKHdSzB7BvDYV+KgOnktTMzAZTehoMoGAVEia28=;
 b=V/4kj5t5Y8BRvXyqbbM2uxOIhHXrBhmZJHOlU5k+qevWWqxSUR6kGDX8pmdecPy/OOvEUPdnXUz95ASReT/lH0LQ6LGw4usohV983DWqMyLwiTypz0otWlCCY/LEJ1MFH9W2YOtsd+EV69HsQ3/n9JnBhSTjSTBCM6WspylEmseQmJruvb2TCpiswa5GcwlV/Aq9o+f/aA6YHlO3acLquH1b+MiirAZci+2PLPZuGAi6bq/B/MxpUMmBM+D48n9k72cUPf1JbsmVXQfz38CGRdxPj875Jg2VDpnfsU9S1dAhgY+fEw6TCPCjILvdK7HqOtR9J6DGEp3wfcKDMciJVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW6PR11MB8366.namprd11.prod.outlook.com (2603:10b6:303:24c::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.48; Mon, 13 Apr 2026 22:11:46 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 22:11:46 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 15/19] drm/i915/display: PSR Add delayed work to exit DC3CO
Thread-Topic: [PATCH 15/19] drm/i915/display: PSR Add delayed work to exit
 DC3CO
Thread-Index: AQHcvUQ15ZGVpFIWSE6UygPt5Cs7XbXdqM6w
Date: Mon, 13 Apr 2026 22:11:46 +0000
Message-ID: <DM4PR11MB6360B0C68F4C91CFA236A682F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-16-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-16-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW6PR11MB8366:EE_
x-ms-office365-filtering-correlation-id: c245f45e-01f4-479f-9e5a-08de99a9a747
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: xzvBpUeyqRRqUIBzIK0fZz6sgqRgMaeehmYFjJRjUimEmkjiqlc9xTMQ1wyCUzkWDEOZgSWCjaVRf7EVq+gRndjp/PMv7hgLOHom/s/FkIVyxMsNK5QEDEGh8oXtJqb66sisTWY2n6YyF/R41UK1FOrBWTkyy2/vN4a0OSJPY4w1/sxFf7NU0aCffmZEngNz2dHDoHW2AOqa10p8BHTs9Eu+vfj6FJUR/J5Xq6xA0fNvPRCKJ9EkQK6zzvFViZeJiZ5VMXXWOt+naQskVlZeoFQkPLCbbUOs+JuUIMceI3tDI+qLfVbvGMTNuLvur56qQ8fYZKEAt8y4CQh703o4bT3qB/zggkzzNI1Ylp7r4tWh8tpl+ochJ+8eRpliOboZLBp6n2czC5BPq2f9AnUe1o6AhpIyN7jU2Twm1qam3lZOjpma9DvWztDKjCcLha//U2prAAfJrFqK1mEWeFiFatYpF9hWFXI0QjkHbyzEwNgdHkIYXYmW5+skkO+NJSXdq7k4Gmuo7Et7RiZQqpwWSg1nF/mLWsJTiIIfkbmGvj8VnGeqvwNPiuDXoXAFQIB9Crojy8aQOjA1l9Z0FT2K9BE1jWojAWjGnpK/1InODyqsVYH0iEpp5blBsrwnWGQXMpjzUK5Przq4v6KXTCNNAnMEdiwVb17CCK1qQl2W2+8inx8cma2uiYt2+ZHK/qhF7xBjhvoHrxPHQP97I3pZ0Wga9+/P2HMKZvoaYLQbzx4RPh4sL/G8A2pLQPWbi54j9H4NsVvFk0nZM0xqt10BbkkB+rL1OVOVaLI/MerYYwo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HTfWzmpi6mbHqq0sbnIzcDC8zLiPwMTj0c6M6oWvJdswii7haOqg0iFpF7cx?=
 =?us-ascii?Q?8NpEWS9JK2CtXthMGWFyPuVBApeV2+M61FwYlAMhl0lE/ihd4sZ0qpZCPT6L?=
 =?us-ascii?Q?oTP6hAg/Ah7ap5i5lYwhJ0usTfAGJ3/duTbllQF1DfM+msFVjvb0ZILPqizG?=
 =?us-ascii?Q?V2iF7lVGPvXGLu1FvOpXWZCf8mJpzsfkY8x2i0CpJobUuW5O0nnHDQSvdrTQ?=
 =?us-ascii?Q?NX/6RxUB7DmEq0hIfK6f4GLyidcbpXrlONNZHzc4yU5woMRm/Oxa6aVvRH7q?=
 =?us-ascii?Q?/zU1rAWrC5BOEotO1cjVxqqt8/ELHjw86CvXpsOc8z24F/bw9JhdaAnsg9J6?=
 =?us-ascii?Q?EzE3vSrYuO46u6juz2ymdHUfPUaT9GLEt3iFjrwiHVs6uFCvFaMrBuhKTNEM?=
 =?us-ascii?Q?sGYIEW/+LjE185ekAUg2lO0jm5xmNCw9YIBhxv0VryvMzmdFXfrRQRKhxZ6/?=
 =?us-ascii?Q?QVll0V5RaHMhJzTpTZRlcGCGUDCSadRwVhimU/TLocE+PUcOTkSGbam8jA7p?=
 =?us-ascii?Q?r6XvNwTHdN5SQBaO4oYfCTBBtzXtDjmj3rakwoCg3vCLzCYrLnKXNAMwWzWX?=
 =?us-ascii?Q?cNcvlFTDXBC3dIvdZbb/0/zdRlpqMH3K/BxZlxgGS/vbYp5uj6g9c6j0wM87?=
 =?us-ascii?Q?/uiRgggPW2mTWhRQ7R2+HT1sPRgSEMs25wWiqPn+7Uilz1xOVSJM3f9QMVNH?=
 =?us-ascii?Q?CN80vTW2sZNuRsJsEgN8bEyWnRl0KzpgvTWkNLnkQUs0kbhUh3x+QrmBT7yR?=
 =?us-ascii?Q?gL9XRz93nqktI3P0Gl9WwjLpiERsXUzGYB31nvt1wg4c9YSW9/6P2Xsasp7G?=
 =?us-ascii?Q?MAZAmZ7anQ3UkA3FlmCW0uEAOh1ITGbBIfqPPfzAE7pt9AOv9e1yqqnANnWS?=
 =?us-ascii?Q?8xw+PkryH6YX9OF2kwjOGT9+l979aXlc99SUkKjqF6S5G7PgNq1fr+H9QIPv?=
 =?us-ascii?Q?4FQzVku1JsZTAXSRPBLvmEaQIO0XlX3mtFEI0QxpVB+lalWJYNOBdBZNrnAn?=
 =?us-ascii?Q?4HLbLtq+B2lW/Ho+T2kGB/rWMbpXTHuE2X+fAOEOi9PgXbIJIJdrYk71zwIO?=
 =?us-ascii?Q?xzJ9oR+sMXpwbFC7JK8jag/fyA3ez/QDPpPxFr56ZHd+QW594wQviHPpHbld?=
 =?us-ascii?Q?HBCML78vzf6ZEHm22y5Yhhvs71WmE3c6yWWEu55iKszgmqWFUmPR3FpVc95h?=
 =?us-ascii?Q?zrDQGrVRWVieaoCVtqGA/E5A0CQGK4mZMPcg2hb+JKtin+Yquta35PL/PDEz?=
 =?us-ascii?Q?KYwIUCKko3k+SrYBqO89N4/Tb2pJZpjGQk0tJyUTNVKYjJZAjkZMS/dtQ+f9?=
 =?us-ascii?Q?Mkpnazhydxqs76ei8Rg2eDwL66sdZ0koPG5FeQjcMJT7aFjWS67j42xYSnFH?=
 =?us-ascii?Q?JaGDruWEti4twYqCkGgo19aA70ZdQMkpeuInmL6LxgfnaumcaFHyw9WffX4M?=
 =?us-ascii?Q?KTHJU/Tlnu+tzJrMhjDGJdApRC254sF0naR+g7TuE1J56yIl4y86IbWcfuOi?=
 =?us-ascii?Q?s7n4If37t6KzP1heMX22wuHGR3Wv3Vn7JpHYp+mJxOovY/OK8qfqC/TiIs/7?=
 =?us-ascii?Q?qY2Pq04Bu4ataUTb8kDTuCyKI33coFMUozc1e3AgR8sQkdGSOYFrtpl8s7R9?=
 =?us-ascii?Q?WuSjCdFssAxW4UszdEkA6V+12zJaLhopBVt14VzcbGg+Ut7ex0oBPMTLzeEw?=
 =?us-ascii?Q?uI7Vn9Unsyzs0RIA+U2fhVXgC+DAtO+TB0icKws4tdTDCIu0IjZIscv76gwX?=
 =?us-ascii?Q?RuyWHm1kjw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: RR54c7SoFMT6zmFf+t1c5fP01lCNsiW9ZX/M3VFsUGkxL4hQqc5/yiBwKcmNzPb9iKkR3B8OFH3IV/9GlOZX6CC+JxEByQOQfc42+qCBzK+MC4N6U4DMVDFtFc0Cznd0hujWQeEnBsL/M0KPUeTIlShbNaDnNIKP9eQN7uo2EdYqZP9NYrQ8da2c2v/o4Q9Bef+raxWPp7B+wVXgSmDvtKlaTNvVc0q2g/vKBP2lRsk7OIl2jTCt37fQJlyP9S3gG8PwLE2mZyH7L2qVXt9EjSN+5wj+Z6v1skjgsHRb1TuxoBT222N5V0s2k1BpZ6Ono+/8ntue28sj4AgwMFq3Tw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c245f45e-01f4-479f-9e5a-08de99a9a747
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 22:11:46.7756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qd+USsa8aa01qbJiRpCm/Brpm9ZWL3Pew7mVEJ83Abq80ykT6EMJR4n19bpBMxqC6OtlMNdU2mBP01/m7aHkLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8366
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 253AB3F3BA2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Thursday, March 26, 2026 10:46 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH 15/19] drm/i915/display: PSR Add delayed work to exit DC3=
CO
>=20
> For DC3CO, idle_frames is programmed to 0, so PSR does not enter deep sle=
ep.
> Add delayed work to schedule DC3CO exit after an idle duration derived fr=
om
> frame time (minimum equivalent of 6 frames).
>=20
> The work is re-armed from the PSR flush path on relevant frontbuffer acti=
vity, and
> once the display remains idle, DC3CO is disabled and DC6 is enabled to al=
low
> deeper power savings.
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 48 +++++++++++++++++++
>  2 files changed, 50 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index d0d2cda3d669..0c8958338f76 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1785,6 +1785,8 @@ struct intel_psr {
>  	bool irq_aux_error;
>  	/* DC3CO eligibility used to control PSR configuration */
>  	bool dc3co_eligible;
> +	/* DC3CO disable work*/

Add space before *

> +	struct delayed_work dc3co_work;
>  	u16 su_w_granularity;
>  	u16 su_y_granularity;
>  	bool source_panel_replay_support;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 16a9f4111ac8..f3476118b8d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1701,6 +1701,50 @@ static bool intel_psr_needs_wa_18037818876(struct
> intel_dp *intel_dp,
>  		!crtc_state->has_sel_update);
>  }
>=20
> +static void psr2_dc3co_disable_locked(struct intel_dp *intel_dp) {
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +
> +	if (intel_dp->psr.dc3co_eligible) {
> +		intel_dp->psr.dc3co_eligible =3D false;
> +		intel_display_power_set_target_dc_state(display,
> DC_STATE_EN_UPTO_DC6);

Before switching to DC6, would be good to call cancel_delayed_work so that
it doesn't get scheduled later and mess up the state.

> +	}
> +}
> +
> +static void psr2_dc3co_disable_work(struct work_struct *work) {
> +	struct intel_dp *intel_dp =3D
> +		container_of(work, typeof(*intel_dp), psr.dc3co_work.work);
> +
> +	mutex_lock(&intel_dp->psr.lock);
> +	psr2_dc3co_disable_locked(intel_dp);
> +	mutex_unlock(&intel_dp->psr.lock);
> +}
> +
> +static void
> +psr2_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuf=
fer_bits,
> +			enum fb_op_origin origin)
> +{
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +
> +	if (!intel_dp->psr.dc3co_eligible)
> +		return;
> +
> +	if (!intel_dp->psr.sel_update_enabled ||
> +	    !intel_dp->psr.active)
> +		return;
> +	/*
> +	 * At every frontbuffer flush flip event modified delay of delayed work=
,
> +	 * when delayed work schedules that means display has been idle.
> +	 */
> +	if (!(frontbuffer_bits &
> +	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe)))
> +		return;
> +
> +	mod_delayed_work(display->wq.unordered, &intel_dp->psr.dc3co_work,
> +			 intel_dp->psr.dc3co_exit_delay);

Where is this exit_delay assigned, please check. If its 0, work may get exe=
cuted immediately.

> +}
> +
>  static
>  void intel_psr_set_non_psr_pipes(struct intel_dp *intel_dp,
>  				 struct intel_crtc_state *crtc_state) @@ -2273,6
> +2317,7 @@ void intel_psr_disable(struct intel_dp *intel_dp,
>=20
>  	mutex_unlock(&intel_dp->psr.lock);
>  	cancel_work_sync(&intel_dp->psr.work);
> +	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
>  }
>=20
>  /**
> @@ -2303,6 +2348,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
>  	mutex_unlock(&psr->lock);
>=20
>  	cancel_work_sync(&psr->work);
> +	cancel_delayed_work_sync(&psr->dc3co_work);
>  }
>=20
>  /**
> @@ -3527,6 +3573,7 @@ void intel_psr_flush(struct intel_display *display,
>  		if (origin =3D=3D ORIGIN_FLIP ||
>  		    (origin =3D=3D ORIGIN_CURSOR_UPDATE &&
>  		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
> +			psr2_dc3co_flush_locked(intel_dp, frontbuffer_bits,
> origin);
>  			goto unlock;
>  		}
>=20
> @@ -3585,6 +3632,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
>  		intel_dp->psr.link_standby =3D connector->panel.vbt.psr.full_link;
>=20
>  	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
> +	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work,
> psr2_dc3co_disable_work);
>  	mutex_init(&intel_dp->psr.lock);
>  }
>=20
> --
> 2.43.0

