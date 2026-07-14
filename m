Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 67L/MUMIVmonyQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 11:58:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6F775325F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 11:58:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=jLyUk8dR;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC1D10E682;
	Tue, 14 Jul 2026 09:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3BD310E682;
 Tue, 14 Jul 2026 09:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784023105; x=1815559105;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AzHfaR5i6fonQseQ/aDCFFaSQFytF7+BpfSI2mX9K+E=;
 b=jLyUk8dRNKaTMkBBbMXS+vheLEHWa3XMv/k3Rruu0QF/oDgnLziG5f0/
 ooiC+UFkCD4cpgIBBgbT9Xsiy3+LkA904xhvoqxPu1AgV18AhDwYtOJjb
 U8df8Gz42cMNa9bv74QEB1mpg6ZsxT9nLp7yBVj4E7iyJ4SdseT7c28JA
 HXBDNt9dotFN1YZcML0WbcQlQ1zSeRD8w3gcIz15fH2kQtnyiQtF/mF7I
 54n1L524k++/OJVd62jlwH9duicfnQaN0d9x05S+a/BbkrPcH8sek5rIn
 5jRxX3HkmSo9uEgjX2KvSOtChSewJcYAxfYQWjtzkNM2EJcC8rQ7VW8pt w==;
X-CSE-ConnectionGUID: YRwFQwEKSTCtSD6c2AOGeA==
X-CSE-MsgGUID: fJYoGsCjQbuq6duYQkktcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="84521299"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="84521299"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 02:58:24 -0700
X-CSE-ConnectionGUID: 9wf6M6ROTWaIRIAD0ZXmkw==
X-CSE-MsgGUID: K1quKVqaS0SOIpvpRF70JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="251397903"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 02:58:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 02:58:20 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 02:58:20 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.21) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 02:58:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EqETEtklU1ZQBrQk7jifln0IAKvVjbHBPlTGU0xvN1ppH+2+cnvxMTWPYcMXr90S7+oKEtd86gxb/C5JrwxmuCwONeSaxPhRFdHFwbvnhqNFs+g0g/TJC5Zt5CGmMvPsA4YyStFnn+GsPDMhMabjPA6TNU13Bmzj2u1ICfuVYLNTpLR8SIhW1x7fgo/fsW8zuRM9Rd3U8fM6oGliKVlJHFkswh+SjEmjRUlLpn39PqOjb6vF6ItDE07toxr46ceZdnWegVIHHbfuEWhVflU9uM7fd0DBvkYXtesNq6Z474QLGYS+EVbI+WjXTV6cVIBtHHVvwLQYzVEuSos3xb2x2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KmX2xnIhy46VpfahOTqKQTz05rqQCUggP/48BnX1oC8=;
 b=QqbzOVzzaR48fLN+VIIlbCm3+92wJzJTEnlTxSgEM7Qdx0WdwVKVvkI3uvTxgH/sYWXNKLXpRJ9fp2c6SnFoecnwu/6+H7tfzr9k5BRxoYH7wKhDoXjIFozKOaYCiHo36Y2IUOvoijhjBAUQmz5fysAnZCSK3iFjkX9XqeHyvXlXIWtNqrPCJzR9pnQUSTyLwTJLyF+lyAXlN53OgQBTJi1iJHGCj3e3jFH0mS2b0z7Y1SHkSeMIaYQs3VPNlWrEFeNJnBfzcXbJYb1HQcCmi7u2EdbtVcYBxshqLSYajV7/vwyA4bNbBQgjAYuqCSZ0XpJIZqM3ucC0K9M0tQ2uNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by MW5PR11MB5882.namprd11.prod.outlook.com
 (2603:10b6:303:19e::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.20; Tue, 14 Jul
 2026 09:58:17 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 09:58:17 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v3 3/7] drm/i915/display: sagv pre/post plane calls to
 check pmdemand support
Thread-Topic: [PATCH v3 3/7] drm/i915/display: sagv pre/post plane calls to
 check pmdemand support
Thread-Index: AQHc/Q1Z8cFNIWD2IECKxssre28YWbZs9F/w
Date: Tue, 14 Jul 2026 09:58:16 +0000
Message-ID: <DS4PPFE901A304F64FBF9D331529E3655CEE3F92@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
 <20260615203355.218578-4-vinod.govindapillai@intel.com>
In-Reply-To: <20260615203355.218578-4-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|MW5PR11MB5882:EE_
x-ms-office365-filtering-correlation-id: 4ff0ad85-4b27-4a41-f6a3-08dee18e6cff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|4143699003|56012099006|5023799004|11063799006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: OQe7pTHj5azUD9nEfxgy8WB/Khn0xyldfK3jlNbW8HM3tThJPwnrz/mjNE40sd6dkWUfigrbwmfN2ojtHOmS2UsIcCotjxB2Oy1LRWTe0cL2/BD2X8R4j9WxwoZtvj/WB/0QHCn5pobeBY1eDLgcnr1pperKbuOeRw6KKzldtIUpJ6kVzwvjB87sHPQOX9JOZr9r5F9hHWyTGGg6NFPKFDilwORNWGTSe7tINsEkKZrvwMTtJbL6yWWgptHHg76FeJf9JzYhBX1ADDcVB8x7cG/mhviNSwgTolLOR7EHgwd9AsxBzA3darX87cIg+IdhBuSwakoQblEQv95gg5/sgeXNx0WCGUURFsFxb7kt/kS2uVhcwFoLjFJ+hak/1IfUKFked6aO3klwJiUXrWB9+SKBdLhEl/M07UAZa/qTsNOK0dU9slvEkyu0pbBpcO9RCmtjWZX6FA3XqeygRbJGp5493O1/3MKhR7IGUCjujdEA/h7nTljHDV1n0vSuFV+DMdX+1aKv5mueD/JQaJIqRTbinKvZipklV5oq2i/XTiMYjOPfbINmaO309zyUQ3tdJgtF13RY4A55ZsWy+Bnb2QeBvHFXZgWWpuM0h24dMNrJdWweYy79LfIYX70K79sGOcLvVRxuCodpBc+bJz0XdyW7vtlS/aX1dc6NN+8tvx6p1/OtBPLFJAa6cbv8AwEaNK5YchiMG3+7RjI2IoFMjiloag/g5SNDK9wysbE2nhg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(4143699003)(56012099006)(5023799004)(11063799006)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b6ezjc3wQvVcjmGBm+z6ffSUi8NedB1XW2LdqI4fNFf3KHze2SNpNTIMLDCa?=
 =?us-ascii?Q?A9WslEPgSBPZZRT3PV431NzQjHIszgmN0aMsqLlWU5qrbC0qIIFEE12o9pLD?=
 =?us-ascii?Q?zAQ8ZWHugWapRF6ay5kekRqQ/fTqG837RLVo/SUDapQIsVOAKYCDpMxpV4nQ?=
 =?us-ascii?Q?KETF6gEVJPXrUUwUYb5JIRnVNG+wvq41Eq4Lv7AxEyMt0a+x2wp7+ijdupSZ?=
 =?us-ascii?Q?CnqTCS9N2kbxFifgQvNSmT83s/Uob3usWP69YKX1TkozxY0uotcZaMSLu5mx?=
 =?us-ascii?Q?7lxF4yXKyJ0GHNLD9woRL0ktT5n2KowoOv9ah94wud7gJru54eoAjiZd1Y6I?=
 =?us-ascii?Q?nsJxHyD7IcRGHDVDZPKDB0CfAK8eKrk6KQ1Lv9kTd89pwNl8uwEfFKJg6e11?=
 =?us-ascii?Q?OAkBYLrsEQiYfNFS+yLBX0pHCVjfV661ebhpa9/RxQYa694kBaRg+dMfsMNL?=
 =?us-ascii?Q?TMZ4TAwVWjgMwS/PxCjzxdQ6PBaKK/Rm85cWi7itvwiDtftAfAcSnP08ZW3W?=
 =?us-ascii?Q?7o3+WOymPUFHYQrU1xYDA87O5Zh1abpo1MfMLP8YqhA6MH3prYwHa+muKRDw?=
 =?us-ascii?Q?okw5mVeRD/pZWA6rpDMhrBlsWen0i5RkeFW2Huo2SMHw65cqd5fIsI2pF+bz?=
 =?us-ascii?Q?3BR5Cd+2YewiGtwZbhlnYu8UDR/XRk41ADTNFuVAp3sgEnTsbl+g77nHFzFa?=
 =?us-ascii?Q?Dqh6ZZq4oPYjgUpZaVYtXAxj1q5LSmmxxJzi/7fmW+5rhfUOubuYuPWKgVVS?=
 =?us-ascii?Q?1Vo1zhZTdrX2cpToVzhB6DYUljUAF7MPuDpIw30LJ7HrQsJsQSoIk11mVbPx?=
 =?us-ascii?Q?a1hd+mT/uakTji8ReaDl7QQM37d2vkC5NK8KxuNkQXu3L9OLvAVvv+bEboVW?=
 =?us-ascii?Q?d93p2H9rAtrDNnXNAq346RSq/SuS/dt9FAjrBxyduVIAaHkly6CsTgEoPH55?=
 =?us-ascii?Q?iLUXySIasVJ1qGwS8AddExhcaWDtWj4N/UVQWfoyjg/BuR1Ne3JNlIWz+TrL?=
 =?us-ascii?Q?mYvODvuwrkK7DRSr4OnXgE7VZsoKgGLGiQvvnjotnPxNfFmu6im8jlQWqlTH?=
 =?us-ascii?Q?GqkuCJkrncyhhcfoXPdQf2AlJhyHHakoieBxhs2x7OIN5kiXSGbwM5Xpaxgm?=
 =?us-ascii?Q?Qg8rtB0jJVPWW0vbg/yoP38BgiE1UoSX+0fbRbn+id5EYhBo2Mp+0KAaEC0d?=
 =?us-ascii?Q?jEqHTDmigInonTK0QrfilMfE21H2KYLy5nmUG9A83f6GJgss4PivyeSRh7wl?=
 =?us-ascii?Q?5CGL7dirjKe5Wl4VdwdltIMAQRGIjahpvY4ejW8nNGc+IJFs0choDa6Ru2tu?=
 =?us-ascii?Q?kDAajX9JT3os55Tf8lf8Lyt6BeHeiTFO1zs3SJliem29e0d46dIiqo1OJS8f?=
 =?us-ascii?Q?nHEJB+mEbCPPvAT4rPdeRnWNX51k27zK+qVhKFVwqaem5BOgmgjR53XXr311?=
 =?us-ascii?Q?qBSqWnhJdFqQtTq+eeI/BRthgYlgzhRUJW1ZUgIj5CQSOLJ1tdPCZ9ljktvy?=
 =?us-ascii?Q?rcy5w5OMRhRvRKz617w+SXlO4y2DG6exl9klkFMDQQsGiiXc2X7aVvJDpIUw?=
 =?us-ascii?Q?UUQeD5+OMtIwglZ10PlntjgzQtaH1iy9ZfHukW2qtxS3PdSLORnRcn7yzjpL?=
 =?us-ascii?Q?P+M8g6hN/kwLe9VX2TMgPMn59nTVNVEJWhtI3fvPyQtzYHb3PVSw6xN5U9KW?=
 =?us-ascii?Q?YdfOY3/HG7XM/4SmE5mvAnfHhjn/xmhO32cqpoCclG7Q5SUfC1I6nsBmz/wP?=
 =?us-ascii?Q?iBzXCZeQCA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: g108PJFQqb3uwsI1Zcyag0dA48aCIkJkF0iFJSWibEDa519DPNAANoCAsZ+VF6SyUk/4NNdq+rtug9MuZyPY82x8BLvYNaJ8lI07A4eWRthJJyOvXTNwt6EpXzRT2JUdydMthw76udV89KT9CYp7eNynsa+0JU/gWqk/11RndhOpXPzwgLNFKdF1gwpxCskLgfyTuF3WWw98EUKyQveaUQ00ZolMqeDYgz2TbdwNgUacI31AY7jJsWW6eBgSuPy0CHsYHX3R83Qy2JKsFqlv7bH+nvEbu2v42OEo69ueIr/c/KH+I6ripWzVzf0Itn8x0/yUlz7qp4C0TttfUZuSVw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ff0ad85-4b27-4a41-f6a3-08dee18e6cff
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2026 09:58:16.3240 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mAgPL6LR00cf5WmsSlKrT6hF5qAQiSvhD1iRR+oPuzsea7JIut9FzqpsNaLk+/s3jl5UwVvDOBD9fMXOpGkoyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5882
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DS4PPFE901A304F.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2A6F775325F

> Subject: [PATCH v3 3/7] drm/i915/display: sagv pre/post plane calls to ch=
eck
> pmdemand support
>=20
> For pmdemand cases, no need to even calculate the masks based on the qgv
> points index. Though the current logic avoids setting the registers based=
 on the
> pmdemand support, some qgv point masks are compared in vain and do
> nothing. So leave early if pmdemand is supported.
>=20
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index a4ce21d4c024..ec1bfe46edef 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -275,6 +275,9 @@ void intel_sagv_pre_plane_update(struct
> intel_atomic_state *state)
>  	if (!intel_has_sagv(display))
>  		return;
>=20
> +	if (HAS_PMDEMAND(display))
> +		return;
> +
>  	if (DISPLAY_VER(display) >=3D 11)
>  		icl_sagv_pre_plane_update(state);
>  	else
> @@ -295,6 +298,9 @@ void intel_sagv_post_plane_update(struct
> intel_atomic_state *state)
>  	if (!intel_has_sagv(display))
>  		return;
>=20
> +	if (HAS_PMDEMAND(display))
> +		return;
> +
>  	if (DISPLAY_VER(display) >=3D 11)
>  		icl_sagv_post_plane_update(state);
>  	else
> --
> 2.43.0

