Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEaON1Dx8Gn9bAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 19:41:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DAC48A1E7
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 19:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA30E10E37B;
	Tue, 28 Apr 2026 17:41:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YkWbuJEm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0B8E10E37B
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2026 17:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777398094; x=1808934094;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JkWiGKLiuiqVMJyWID3zUg5MZ88wezPsmRiHy7nGQZ8=;
 b=YkWbuJEmn3bIzM0BWOqM0rEYF/gdwOJemCte4Tf3vDvZ22/qDfUcaNNL
 vem4t5qKbNSZOLP+qtbrzDQjI3hFNFQZrHK9utcIB49m476fOtvwnAzJq
 QWAt/gPLwIXaF7TgDTW5vbRrExzhAS8P3FfWmWvke3xjXvIRwUl73RFxz
 o08TlYlGRwHExY32VDrAfNPwr+IkLpbCH4QD8ptNMGovg3bAzIgPQY4wz
 s9IRYM+T+5EdNGi5At3a8kUI0soginclRT/AcKlyzQo/1FVTXbH8piHZh
 H/BsJtVMS/kBI7Ou4Qoh8gTbPNMUBI+SbiNfV7KBIPEsKxXdzaZRc3OpR Q==;
X-CSE-ConnectionGUID: 8Epni/WdQVGIcnHJjg5+sg==
X-CSE-MsgGUID: 0HT5hA18SrW167cqyZcibw==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="78377241"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78377241"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 10:41:33 -0700
X-CSE-ConnectionGUID: r2zO+Tl0RQ2qUuPadpSOTA==
X-CSE-MsgGUID: kk4t0UXBRVSEkcO/DZerOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="264403437"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 10:41:33 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 10:41:32 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 10:41:32 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.25) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 10:41:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iquS19vYnGV9tjVcLANQExTOHjHzyssGt0fUE85ph5i20t7n9Hfgqrx8BcNX5pD3CG21hlS9EVayQA7A6LmgPBIl9/X/Ryr45WqeRoJsTE4xcri4BCcdwo/vKvuSIyvRRphe5M8tJ45QXiyXDInodMbNBiDZCxUlhBIfCGy1j1vy0fZP9TYsZHrIsHIR/52tl8PRiEkKUsgrf/1nhB73hqewSRH206O91Ps5kIeVqmudJ4897UxNJBCPF9alpJ7vUKtmFiV1vHC1ZsQ4aLlMJRh6/YoKs1yBNRYJfrm/GTfhzMue/nTCjbE+2lzxw9/1oGX20SDI5G68LSPExmIdfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ciXMCB3Q0UrJ6eyCASQoNzXT+TB2dZeJuMasaVv3A1M=;
 b=QAumUz9kQRtaVb/MsmBkE6wHFSq4GSr8MutOAAPZrjpgK4K4IanxTLqDfqIo8+Lk2by1t0oWm+Yx43M/WJDlLx+ITUXOh5xPXjTJorwQ9GSRXzudITk7Lf0kGG2I+80j4pdTpWs8DxlUUd/Oev5E2Cn8ryrstcmIQGTFiOpT4Cme2ADgHRoPl1OBNN5jr2QmoV8vFFcnj2MMTnTMWj8oXzbjrrNj0I5M7FmXH1b4Bz09JiqRGJu7gCOKseHO0a+Eh6r7CAvo7Wtr6kVgWLIDUXmO8ppBFkKPi/LZCzrwobjs7lLubpK6NIRMFqabt1+LbFzHdHjy0npyNEqdWmOVhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8040.namprd11.prod.outlook.com (2603:10b6:510:238::11)
 by DS0PR11MB7997.namprd11.prod.outlook.com (2603:10b6:8:125::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 17:41:07 +0000
Received: from PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::89bf:2274:1371:50c5]) by PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::89bf:2274:1371:50c5%5]) with mapi id 15.20.9870.016; Tue, 28 Apr 2026
 17:41:07 +0000
From: "Yao, Jia" <jia.yao@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Lin, Shuicheng"
 <shuicheng.lin@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Plewka, Maciej" <maciej.plewka@intel.com>
Subject: RE: [PATCH v3] drm/i915/dg2: Add per-context control for
 Wa_22013059131
Thread-Topic: [PATCH v3] drm/i915/dg2: Add per-context control for
 Wa_22013059131
Thread-Index: AQHczih2xEH8h8kVw0WqyCcBrd1mJrX0qBUAgAAnYiA=
Date: Tue, 28 Apr 2026 17:41:07 +0000
Message-ID: <PH8PR11MB80405E093ADF09DF3371D914F4372@PH8PR11MB8040.namprd11.prod.outlook.com>
References: <20260417050956.1945481-1-jia.yao@intel.com>
 <afDPqHOR6FhmfROf@ashyti-mobl2.lan>
In-Reply-To: <afDPqHOR6FhmfROf@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB8040:EE_|DS0PR11MB7997:EE_
x-ms-office365-filtering-correlation-id: d35c3708-7e3f-4d46-2fdd-08dea54d53e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|42112799006|366016|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: CoD8ld7hTI7oDNnde4APfV64n0FZFHMYcYmm8KWMCUBRTnMUcfDafYEfax960zO+L8MRUv3hdLV0ulH740XfH0ZNra0y5fJ/tYAQD+tdg5Q2WijHmkGgizJ2hbD6jbq1FS5CWOja764IS7+9hPsVGlJvIdoKO6Q6ExYTqFla7pJZ7uZ6nMnoVCVbC+GdgV+xAq1YauTJnLZPhEMc12g8GYtDfuzQ9UeDz/AQDJ3EG9QM6H5GunTjdyWCKwbPTqwUP3ihQMpN3KwdONMvK9tz8YEZFfL1NHAlPoAZQCT6i6lwWkSIMrh7C1Z+6wbb9YC+BVAhdF62pxwyNymtApZauSGpnEtIICiP/S4tBRqe4MEyQk9LOy5+ASoAiZqUHwYujcwKAdbTd0vuk1W0+xESaYNYjOJ2XSTBZ7L0WXkXK/FrU2Js+8KvX6iSs0ADUAam4o64gUFehD/dhWzCvUvJuERji6niHrG/WKWm1DllpAcs8EHpdnbLJgwzLMEIxI2V1f+XHM8xLwJySNylLlgrEMJiDwmdeHKRB+Lp7ctaUxYaqzg8+4KtyEErp4DQdiVSudUlZaFM853fGj7COsz8o/aD4zYRXG6tBE6nruDs/BKUrOwp6fU+ePoT56GLiFo9Pyw2eNYliE8Fky69AhujPOMegyqFL4qy666sGi/d592TSUViSxFL9euON29OpmUelNB8xf/fQh2yjakXGMLZxIzeQkUzrT9qno1Cho8pHf0QE7ei6fJqwAdOcrzqSTEg7Vc13dIXF7+HWB9ucM3Hnw7ZGjqd4OAn/SfH5nvBzps=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8040.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(42112799006)(366016)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2J8M/I58NYNuDRzVO4yapRdPchnhkiQa5TLsC2XxaO9ejAGbf1IejMyyW3W9?=
 =?us-ascii?Q?wgNop2oFK8Yox//TojEBBdHoE44YDsuumYHo7dw96qjZGt5iQVujnbJuGFsq?=
 =?us-ascii?Q?cNIbNflRCbAyr0+i+itHo/FoVrCd9X4TmN/18gh91BfB5yCAycCOf9vIKfO9?=
 =?us-ascii?Q?ME48XcQfzstAalmDp5StQIpSip1XBUpf6EOFfmxrWagC/MuTqQYpP6qZZgDp?=
 =?us-ascii?Q?dFWV/dif8GrUEkFfL73othjnGarRIk3tq0UPWxSqNBDD/3l5tNvxNyV6DdFs?=
 =?us-ascii?Q?DtKsCumF4bQB66WpMOz/cS2jQkIpLbEb3g3EG1l7CidV6JWVp2mGjDZG+AFh?=
 =?us-ascii?Q?B1GD0ltQ8SdkaWsdJVrnAJDK60i8L8aRa+SvwCis8oCA6xTs31HExOU94qoY?=
 =?us-ascii?Q?9pgDU9nYbTDVkG/3QIwDCYsU3Fi/DSmv3bxZVJX21jT24sNNhEc3TrCXiKGI?=
 =?us-ascii?Q?jWR09M0NZxUm2USdZpv1RYtk6RdTgowNJURhbx1WePUEqg4BsQm/pqCTMfNt?=
 =?us-ascii?Q?ZBUMjdS/jJqajRcqXxXSGG+tGmtkK3MtmYUEywJwDx+OC1L2WeJGW4e91q4o?=
 =?us-ascii?Q?0YLrGtC0Y1IpFtgwfrXz7c0AdUKpcw/x7QiBdWjNwKXt2RqRPjxg4hG52uFh?=
 =?us-ascii?Q?B0EBQyUOwRoiyOPjeZqdQsA9r1StkNz4jgA5CPrDLOXAQFVpfl3dSX0JXGD8?=
 =?us-ascii?Q?nirsWDVWYXO7kAXNrMy+JlwwQ9DIl85oSDEHQ+jj1dJoW2+UZkGmNBspOHiE?=
 =?us-ascii?Q?QkdJFLF07YZs7IOHn3UDDU2uUc7e2V28BRcuZ/UeaLdURMtepNAjbiZ7/x19?=
 =?us-ascii?Q?T4go1PNGsBRmqxL0vkuT+0M9JredqfGCfkMFgOTtPIk0qEHRaO+la643iK0k?=
 =?us-ascii?Q?j2KtrOFV3g2ypTYPapf9D3Gk6cfD5VVxj069OMKpgqhQv/z5QD6CACwiAZwN?=
 =?us-ascii?Q?x+XcNzv7WrEOkDnia4wEZQ2gnbKgGmWUWwzV4ePg0oSbPlCfRQvzhKJ9dTaS?=
 =?us-ascii?Q?j8npZXB2X79h1yN93BVOuChCWuEBqjuFcC5u4F9FnWm4QMXOlHtSsRKQ/o+1?=
 =?us-ascii?Q?BMnAqYiI6vXMYRAk+xeb8pGmIYV+C56vOPommAK+UQh1VYxyRgbc4fvPV+un?=
 =?us-ascii?Q?dBf7mAGewivTuHBcuWNHBX57PgayoCDf11icGYZ/Tl5d7IirlQAOcERT+/Mp?=
 =?us-ascii?Q?b2hOuuhRzmtKxJHL6LQrgvxDoQ5Ngdczg9cbHjkg9Qm0ToCfpFO8O5igm+fa?=
 =?us-ascii?Q?jknEKJzddKu/i6dG/lgmIPkjz3bq1rOSTNtYKzLPNIyWEc0WKepgqcHVFZcr?=
 =?us-ascii?Q?SK5KDWOAp3X7w81mSe11qX7XDmNVLBd1BCStWufE42W2xgH22ys8czKxwnlX?=
 =?us-ascii?Q?FqT/RlRoiDBrA05KjOfn6ukShU/T4yAYT7cXZ4vVYT1ZuD3EPPZlX5AOXmHq?=
 =?us-ascii?Q?9zA+xjRK1X8z+TRMBmxcefSRmmsU5CfITryUEx2bejjWRJeUfPLTo9DORyLK?=
 =?us-ascii?Q?wgD1TrvnTDNYyWZ9MecccnCKuX4vskFeR952ekvmiLc/C4q2PgROqQNr2Kz1?=
 =?us-ascii?Q?VDY7InX5aN5pmQp4qbDaQ2LVX/xqOQakq3R65+aftEH5d/bMco+1tcqBOC/k?=
 =?us-ascii?Q?xtwZsI1554G7DBTnPEFoQwq2oTUeSl+sqdMYOXweNQyv/wF2lT5VriPngc1l?=
 =?us-ascii?Q?dJ9IvOwHHQ3KDueZWMwoDKYrSGBmB/jwhee9g1/OqFja22DC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: sO1O4z3PL0gt5Mxd5tkAt7OUEC7Ue85pVWgRNTIkHsn0URLR4lyeXvSDQtXhdrNJtQizD6CNPpGFXjC0T+s0G1uC4nfFtiyr4bldjFE23DKzD8/V520Z7eU5is07Orl9nHRSPcq1U6EejdtFlvmn41Qcq8IXrGe2MWN164PnptR4rwoFePmPuqoljQUVr8hcLPCPdwO8cWMGNxm4OPesA47hZY/xi+Mw5ZCJ/zyNxjFa/I32gDjixXAch7zRTyKfFFA/uSwc0zFLky4ZczMKKsd413ydmL1cFXL3R4AarDQf6dGGPBgxfk/VUp+gsm05O4bIk2tUQX26+Dm4WYbwdw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8040.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d35c3708-7e3f-4d46-2fdd-08dea54d53e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 17:41:07.1687 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NfEs80H7RW6Ki6yyrZw1SZe1qahsiRqQ3YZBewcwzSGj4t4sLYpWR2E3Y3B++APfXcPJ0GVwlLp2qJlAEZyQbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7997
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
X-Rspamd-Queue-Id: 42DAC48A1E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@linux.intel.com,m:stable@vger.kernel.org,m:shuicheng.lin@intel.com,m:matthew.d.roper@intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:maciej.plewka@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[jia.yao@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jia.yao@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]

Hi Andi,

You mean we need add NEO public link https://github.com/intel/compute-runti=
me/pull/919  here?

Thanks,
Jia

> -----Original Message-----
> From: Andi Shyti <andi.shyti@linux.intel.com>
> Sent: Tuesday, April 28, 2026 8:18 AM
> To: Yao, Jia <jia.yao@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; stable@vger.kernel.org; Lin, Shuiche=
ng
> <shuicheng.lin@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Joonas Lahtinen
> <joonas.lahtinen@linux.intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>=
;
> Plewka, Maciej <maciej.plewka@intel.com>; Andi Shyti
> <andi.shyti@linux.intel.com>
> Subject: Re: [PATCH v3] drm/i915/dg2: Add per-context control for
> Wa_22013059131
>=20
> Hi,
>=20
> On Fri, Apr 17, 2026 at 05:09:56AM +0000, Jia Yao wrote:
> > Wa_22013059131 sets FORCE_1_SUB_MESSAGE_PER_FRAGMENT in
> > LSC_CHICKEN_BIT_0 at engine init, but this is known to cause GPU hangs =
in
> certain workloads.
> > Add I915_CONTEXT_PARAM_WA_22013059131 so userspace that handles
> the
> > workaround itself (e.g. by limiting SLM size) can set it to 1 to let
> > the kernel know bit 15 programming is not needed for that context.
> >
> > LSC_CHICKEN_BIT_0 is not context-saved by hardware, so the kernel
> > restores the correct value on every context switch via the indirect
> > context batchbuffer to avoid leaking state between contexts. The old
> > unconditional application of Wa22013059131 in intel_workarounds.c is
> removed.
> >
> > v3:
> > - Kernel-internal context will not change workaround settings
>=20
> Do we have a link of the userspace using this API?
>=20
> Joonas, do we need also a documentation update here?
>=20
> Thanks,
> Andi
>=20
> > Bspec: 54833
> > Fixes: 645cc0b9d972 ("drm/i915/dg2: Add initial gt/ctx/engine
> > workarounds")
> > Cc: stable@vger.kernel.org
> > Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Maciej Plewka <maciej.plewka@intel.com>
> > Cc: Andi Shyti <andi.shyti@linux.intel.com>
> > Signed-off-by: Jia Yao <jia.yao@intel.com>
> > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
