Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEM+EKk2B2rftQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 17:07:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D74551DEF
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 17:07:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A060410F561;
	Fri, 15 May 2026 15:07:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fl2PHlRI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D86410F560;
 Fri, 15 May 2026 15:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778857637; x=1810393637;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=REv4OlRoOcJUTQuzTu3cyGi61M7XYDXE15X4MeySvBY=;
 b=Fl2PHlRIvpbJv92IRdZsan5UaUZZrpQb/dZnr8DUso5cDSxtO84OVEiK
 ko53HTS/Dm/usKnGzEdO2aE7mRfQNoNJqIn6ypjA9zZ5HWabXVK6rGT+c
 hGYfvAYTRG4sLisRE9QL2r5xzSmDUw83/E2ARt81njkTN0hJhZUQRJA9R
 q1/2cWQTYzynjEpc1mTNocqhT9/bXn21sD23B1kqLRKusOQ1wSJTYFOeO
 kX//aj1dZk28HwZ98ExbGArS2cvjD+FLn4jT3Wp3dR76ETLCFWER2O2kG
 IXAGlbv7lD+D3RG8Ygjy82dCF3ZzvH1VpEhHWQ/LkEssm/LKrc6g2yS7n w==;
X-CSE-ConnectionGUID: UuzpiPn+TuuUxYb7Z5O+gw==
X-CSE-MsgGUID: 1MtorvRvTHSoWpxoG+SlLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="82379883"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="82379883"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 08:07:16 -0700
X-CSE-ConnectionGUID: bRcRDoq6RLShBgJHXWCI3w==
X-CSE-MsgGUID: ggdvPp34TRCLLHcuMChfWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="243689591"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 08:07:16 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 08:07:15 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 15 May 2026 08:07:15 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.5) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 08:07:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dE00qul76dOA8lQDzaknHgjkx6kj0AJKc65Niee5wO8ZNhthDxilgyIR3VyOMHJpCVY/WsE4qIgGvJeywAz6Oo0GtDXKdMNn3lwAwseAXXxm14UhYRIeI3F9/Tb1+QUTAbeZTctIPQRZc/CStCR2nx48x90Pu9JiqU3Q3j9w7GODwGcWqHF5/cbGERQcq4jrXy5kZ6Nj3ymzF3v1uCwQFsuwNbOuTCrsJgFo9xjyuYTB4yXQnoeXur+jH5/ONw9U/QS0XyDMZE7n2LVOVLuIS0deLn76GBGsUXVHF28mN6bNEbYXbK1WNum7/eDLDYeEb7EVV15+zY4fHVqmqfMYZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fN5OIHc2xLGtgSwokY9BvM7mGV8g3xvGrRSQRNNQjqM=;
 b=Z6Ve/0NTl3lMfZWOutg1m+DCBHAnSp/k3kEbWc24VjK0pbuJZF6HNzfg+4yT+t1L1urO9sgQ4oMrvJ/kg+c1tgmL8p3WEs9g/3wZVMRqWlnTnzyeyMo1iAxR8eaLmKbpqszq0hpbEo077nRrkQIp3btiQKSqtyQAfEaHE4khA8PpxHhI/SGWSMr+uzOc2MjBYO2v1Sz+EBsx8YC0YyOpNj7es/uzOJwBzxdhJvmX6W99aOoXaJrbzfAW3yyOMW/KU7DwK/OLobE+6m9neZamLBPisoESQ7mt4KC0Gj4TldUEUMhFfnuiG+BNJfhjCqcl6+a7E0aLvq+ZMUNKCS2dbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA0PR11MB7813.namprd11.prod.outlook.com
 (2603:10b6:208:402::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Fri, 15 May
 2026 15:07:11 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Fri, 15 May 2026
 15:07:11 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH] drm/i915/display: Use PIPEDMC_FRMTMSTMP on display ver >=
 30
Thread-Topic: [PATCH] drm/i915/display: Use PIPEDMC_FRMTMSTMP on display ver
 >= 30
Thread-Index: AQHc5ERRwRj9Up3Kxk2Kig5c92abY7YPLT6AgAACsiA=
Date: Fri, 15 May 2026 15:07:11 +0000
Message-ID: <DM3PPF208195D8D69D833B6EB37257F1497E3042@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260515082443.975592-1-suraj.kandpal@intel.com>
 <87ik8opvrq.fsf@intel.com>
In-Reply-To: <87ik8opvrq.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA0PR11MB7813:EE_
x-ms-office365-filtering-correlation-id: e9b93e0c-6323-4ab4-3ec0-08deb293a406
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|11063799003|18002099003|22082099003|56012099003|4143699003;
x-microsoft-antispam-message-info: cOkeZxGPjftUplulO8WT4ZJ3bWKwBI4pUuoiaNkxQ+93ViwJ8Plon4lEtT5OqQ62ulOJkjXxILCDkBh07yrDDMFyfuwTo92BdW/3ezi3wL0MJLTvojgBAIzlPE8NtdN5/o/lpt7KCMPDtfL2HbxrRmOFFxgFTVD+yHK/AExdtF0srN+ArVUG3Sbccfl9p0BXYeDO8QhlBuIqBlQHkEeqyL6/RDB1UPzGWVoEjHl/MT7Np2UYMA6SHxm06HpLQ/1lbrw5jkbgSMtxIxNQiR42ydKYoB4wLs++jxnBEQqWZmJR56BCGhdHZyzv2xaIrHWFs604urA+DepcRLZrZImGKbl8l/tHR1twncz2XHBPCqOJAbQ6M7sRQMwIEKTqR29EtkxPHYZgrzC17zBqAcAlL8QHVs9iLif+ppzi3DUKZxqTFPy4YoxLBtbfgLyuR66vqPDJ+1nsaB2r3EYwpgf2WeUHpEW11d77nCLCxRenmGNfm2GR+WdNFEgxbnX/IX9KoO0T4tJa9iLTF4iXR8o1V794Du/Y6p/4TXgXHOda5MjTfN9na83zqb3aWNkKJKNntRp4O3NvLPgCKOlWLccQa/9zInip/hymD63gdO/zTS4gLckTTUTl6qVadpZci6nkM31yuDs77O8Dt1XvR04YeP9vElqpVS/r9XF3eof7Dvsm6liEO59/genP+KPPlRBcCPxq8ShadTGDefeAlvH7OUgxuBzt1MQgJ39kD1LOydSx1RhOlWDAtM8xqxKcyZ87
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(11063799003)(18002099003)(22082099003)(56012099003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iMvsoB7zLiuUkvj1O3gL76i8k3sXK+gCX0P+2fdKtcS3cI6dkifbHkA7PsDY?=
 =?us-ascii?Q?Q50O+5FPww/ZV5q27zL7GX9Kpu1Lenp0GRyUGO+KJL51Z39ODlU8emvlCN68?=
 =?us-ascii?Q?Tj4iEFVnEKZXOFQmUyqOST1TQaO25IyWzZtZtKGa1f3/jSJ8CPJIZzDSnD+F?=
 =?us-ascii?Q?QEdDJnuwPoGWhxm/YF4sk8fsZ0VAfWre8QP7n55OsAClFog6A52Y8aK4HvnI?=
 =?us-ascii?Q?oyJcaDtPulUfb0HQZsAjDxDGy+bR57w1Ke8Fp4Qt60qk0F/6yqtidn8sdqzp?=
 =?us-ascii?Q?10/Lj67eVS2XLOJdumC4eft2PXuiui51c4OVdsHtNkKk9FzW/Pq9lLxQgond?=
 =?us-ascii?Q?mLH2IyNLvWbXFI49/2N2I5k0iSnlt78hVwnBiJnGGD3xetpaH0mdoFgi3gKZ?=
 =?us-ascii?Q?nKNNCptHa7yra3QF3nG205UOC9R0pSxBx9WfXTeZHF/uYgsdE9IESGUueEW5?=
 =?us-ascii?Q?N4t0kgvS4GmcIyW+86RTYBs+UuMFN15sicEQU/gTFiqS1uVANiv0bliaTXjl?=
 =?us-ascii?Q?VGc77VU81tdjOzseWJpbEhz/k2O5pwqz1T6aBOL0lXJDt3PGWirRQSQCodkM?=
 =?us-ascii?Q?fmONGZ/WL14FK85UPZbLWRPVBh4mu+actTcb1hqMsefTtM5FpmpMp4YaHrX4?=
 =?us-ascii?Q?0MRvwRhNGJcvzVIcnhG1Edzr5gn9arh+eM6EI24lu0a5Z5k1YxGT16ItCsxu?=
 =?us-ascii?Q?zbTc32m6GxZv+PSk9uBIBfa/ptw0oIIJYDm0vMW59VZX6z1OrzC9q5hguRoa?=
 =?us-ascii?Q?E0n5l0wYm5fF2WF4qDiWVG1VP8Fqxkk1OuxPptmHGKTMk6LJ1l5onf2g2GC/?=
 =?us-ascii?Q?9pRQOezqsuVycrmwOPpuV0SAiIdXpOW+AcolH1aa7sVU7ze+48nXUfW8aSlR?=
 =?us-ascii?Q?Z2g8aO73kIi0a45a/bjUlyqG0SeWeo+yFjEyYbj7E5XxCSpdk1q1af2mNBFK?=
 =?us-ascii?Q?d7fUEfBf9HG6xNG/t+P2nKFBUgvHGVDpghGe1dCwI0EY+B5kyM7fMcmVDlbC?=
 =?us-ascii?Q?HPOPpcDKy/Q+DM/cbfweVxY0TSPlR87+hgEMRYfE1NNRSPu1NBRSVLtbYdw3?=
 =?us-ascii?Q?vtx9LRlB/9f7dLCNTfrLNP/dCi8avdl+sj714XHqqXr7R3hJf4eB8WvtvGOc?=
 =?us-ascii?Q?6YG7yPbRkzBhxCfdZw7KOvl261hHEUJhmbYVD0fo59hoQQtEy1x5N2gCkWLO?=
 =?us-ascii?Q?rxDaoWeADrKS9S7Hi+yBgItY4g2nX3lC/zN6Lqq4QJtvrnciOjH0QUDm2oH5?=
 =?us-ascii?Q?gZUDFzuP199weE+3npz4P6CuZfU9f29ojADuQfwbahrwlHlHzmOiCNv28xKn?=
 =?us-ascii?Q?9r0of6mjltcX94KXVRNLtQ3OGn7zgpw1idFUBPD6dV+k/R0D/6o18BP7Q2Hu?=
 =?us-ascii?Q?xVAblnOVYux7uelbfnRztTEqcMhcXi2FBTtLY8JrOEVJvhiNPhWjLtMRUP3P?=
 =?us-ascii?Q?dcsFy1YtrOSO59ojXjF2pWtqEtBSOGas58A0WJj4HM+RjooIzXwvuWp0Dawf?=
 =?us-ascii?Q?qbuLVojdObPJbWG1gudRQtV3aMF+9s4zLpDG23ppS8zp3OoimrPh3AULJRPf?=
 =?us-ascii?Q?UhEY0OmuuM58JUqYdQiyXZz/Jzk4qSrRObvaRqr/fSM4L+F8avBQCdyJM+OA?=
 =?us-ascii?Q?774XFqzrNPHE8mVqFN6Ye2obhQF7jGwUoEft9Owa6Rih3gOobSKcY6049czn?=
 =?us-ascii?Q?i2Y4SrtcZ7pjiXB0dpjY2ybXIlF4eOqLR6r4hL7uJxzo+LJMa4y3WEqggMr1?=
 =?us-ascii?Q?vxo/DKZBZg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: CZiH0JaHUDetAjZMUya7X6YUvU03cUjCtO35Q2KxaXrPDilaFSTmiAuJxfhuoUpuh7G2G6mFQfnk4OnVyBZQz6qvMeXbPTGjYNLnLJ0Y9bzEMVYpvPf5Wvt6GjmpzxZmDBzMGMpo1VZKuMMoM5IDDtbbkXFggYKTbblW3KEhp+uFRXEQfv5EzXCts4nelWopoLG5770PWD4Hkx/OH9AA+s/ksCM0rU3aLbYYQAYeobi2D6x7Jw3C9MbT0nURWZIioWkyDS6lFFwVrgJt656BT398ynjeV4Up+1eqb1sJ84X+7+2s+ATZs1OFkNDlMRr4XYoVZfpcl4bsKBeqPqvxCw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9b93e0c-6323-4ab4-3ec0-08deb293a406
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2026 15:07:11.4703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pUPfo5t13FmGmuo1ZlnQzKPo65Uuz/0SzsvFHKdkWhQMndPuaNFS5QLZrEyyeoeJq+QMOcxgdzS9EhYTTupD0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7813
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
X-Rspamd-Queue-Id: A0D74551DEF
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
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: Re: [PATCH] drm/i915/display: Use PIPEDMC_FRMTMSTMP on display
> ver >=3D 30
>=20
> Suraj Kandpal <suraj.kandpal@intel.com> writes:
>=20
> > Starting with display version 30, the per-pipe frame timestamp is read
> > from the PIPEDMC register block (PIPEDMC_FRMTMSTMP) instead of the
> > legacy PIPE_FRMTMSTMP MMIO. Extend PIPE_FRMTMSTMP() to take the
> > display and select the appropriate register based on DISPLAY_VER(),
> > and update all callers (intel_vblank, intel_initial_plane) accordingly.
> >
> > Bspec: 79482
> > WA: 14022946399
>=20
> Why is this workaround being mentioned here?
>=20
> If this is part of the workaround implementation, we should use the prope=
r
> display workaround infra (intel_display_wa.*) and we probably don't need =
to
> add this commit trailer IMO.
>=20
> Is the idea to use the PIPEDMC_FRMTMSTMP register as an alternative for t=
he
> workaround in display IPs that support such a register? If so, I think th=
is
> alternative will not apply to previous display versions, right?

Sure will use the intel_display_wa framework

>=20
> Another important question is: is this register updated even when the DMC=
 is
> not loaded?

Its actually does not, I have fixed the issue which will arise from this ma=
inly in intel_inital_wait_for_vblank() and will refloat that in the next re=
vision.

Regards,
Suraj Kandpal

>=20
> --
> Gustavo Sousa
>=20
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_regs.h  | 7 +++++--
> > drivers/gpu/drm/i915/display/intel_initial_plane.c | 4 ++--
> >  drivers/gpu/drm/i915/display/intel_vblank.c        | 4 ++--
> >  3 files changed, 9 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 4321f8b529da..579f802215d3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -3149,8 +3149,11 @@ enum skl_power_gate {
> >  /* g4x+, except vlv/chv! */
> >  #define _PIPE_FRMTMSTMP_A		0x70048
> >  #define _PIPE_FRMTMSTMP_B		0x71048
> > -#define PIPE_FRMTMSTMP(pipe)		\
> > -	_MMIO_PIPE(pipe, _PIPE_FRMTMSTMP_A, _PIPE_FRMTMSTMP_B)
> > +#define _PIPEDMC_FRMTMSTMP_A		0x5f0ac
> > +#define _PIPEDMC_FRMTMSTMP_B		0x5f4ac
> > +#define PIPE_FRMTMSTMP(display, pipe)	(DISPLAY_VER(display) >=3D 30 ?
> \
> > +	_MMIO_PIPE(pipe, _PIPEDMC_FRMTMSTMP_A,
> _PIPEDMC_FRMTMSTMP_B) : \
> > +	_MMIO_PIPE(pipe, _PIPE_FRMTMSTMP_A, _PIPE_FRMTMSTMP_B))
> >
> >  /* g4x+, except vlv/chv! */
> >  #define _PIPE_FLIPTMSTMP_A		0x7004C
> > diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c
> > b/drivers/gpu/drm/i915/display/intel_initial_plane.c
> > index 034fe199c2a1..004cbdb6be32 100644
> > --- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
> > @@ -34,9 +34,9 @@ void intel_initial_plane_vblank_wait(struct intel_crt=
c
> *crtc)
> >  		return;
> >  	}
> >
> > -	start_ts =3D intel_de_read(display, PIPE_FRMTMSTMP(crtc->pipe));
> > +	start_ts =3D intel_de_read(display, PIPE_FRMTMSTMP(display,
> > +crtc->pipe));
> >
> > -	ret =3D poll_timeout_us(end_ts =3D intel_de_read(display,
> PIPE_FRMTMSTMP(crtc->pipe)),
> > +	ret =3D poll_timeout_us(end_ts =3D intel_de_read(display,
> > +PIPE_FRMTMSTMP(display, crtc->pipe)),
> >  			      end_ts !=3D start_ts, 1000, 1000 * 1000, false);
> >  	if (ret)
> >  		drm_warn(display->drm, "[CRTC:%d:%s] early vblank wait
> timed
> > out\n", diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c
> > b/drivers/gpu/drm/i915/display/intel_vblank.c
> > index 28d81199792e..52ff47936f9e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> > @@ -157,7 +157,7 @@ static u32
> intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
> >  		 * is sampled at every start of vertical blank.
> >  		 */
> >  		scan_prev_time =3D intel_de_read_fw(display,
> > -						  PIPE_FRMTMSTMP(crtc-
> >pipe));
> > +						  PIPE_FRMTMSTMP(display,
> crtc->pipe));
> >
> >  		/*
> >  		 * The TIMESTAMP_CTR register has the current @@ -166,7
> +166,7 @@
> > static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc=
 *crtc)
> >  		scan_curr_time =3D intel_de_read_fw(display,
> IVB_TIMESTAMP_CTR);
> >
> >  		scan_post_time =3D intel_de_read_fw(display,
> > -						  PIPE_FRMTMSTMP(crtc-
> >pipe));
> > +						  PIPE_FRMTMSTMP(display,
> crtc->pipe));
> >  	} while (scan_post_time !=3D scan_prev_time);
> >
> >  	return div_u64(mul_u32_u32(scan_curr_time - scan_prev_time,
> > --
> > 2.34.1
