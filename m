Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KIoN2yfxGki1gQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 03:52:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E258232E840
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 03:52:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F18E10E932;
	Thu, 26 Mar 2026 02:52:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U8mhvvWv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3242E10E224;
 Thu, 26 Mar 2026 02:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774493545; x=1806029545;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZQwjMy9ieugEs1szzDePpGUEFTNB0Ny/gQ/k5AEVHlU=;
 b=U8mhvvWvKd80+a954sosmDv3VrYGAC4jd/yQK9TmlTR+pZO8saREb3Fj
 1UdCKjf8DJD+4SuFGxN+ZcjI+ruT5T/RvFsGMUvGeXCxEIzatC+sO/uyB
 utjddrDBPHeXM8Q2cLk9qMYVX5uVv2qRa/XSPHbcqsnOzuT5znQGXhZQm
 KeBTfFWuA9FsiGxgkvHB6nWnX9k7XnIc48VYYO0KnAbyXrxPwZ6k/kjtv
 1oqz95fy2buStn9YD8psBGCxSxKHH1psDu2pIzS9Ev7m67P4GgLiOgjrB
 jXKlKfiGR8f08hKgdg8TCVPyqTy0j723qPt8NlKmtfUvx1ACgEuCCPGDZ g==;
X-CSE-ConnectionGUID: YptOX5FVQOm4rDP6ZuXCKA==
X-CSE-MsgGUID: /81MQRGoQb280cWGVbbHkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="85850729"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="85850729"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 19:52:25 -0700
X-CSE-ConnectionGUID: 2NSiJTLBTpq9Nrcmdhv4kw==
X-CSE-MsgGUID: QAzDUNB/SzitQdyI56TirQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="225124939"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 19:52:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 19:52:23 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 19:52:23 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.64) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 19:52:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QDyZLIKteqsRrESkosn9OxyjIQVPdUbFzgI3BPPV5iuDGKSRyYqVMfLXuDJ3SGdawkwMKCpvenih/7fWWbNXLeAXLq521bnP7zoUm6Pkc9gcColfVbXHaUzBXCwV6bGZGuR6mKOsNbCsnjgHKOFi3xMbhqwJIphH9Blf1bNLd0Ml7l93u2Xj6yDIoDKfY0WDhEnLvSoxO/MQPou19im9ZHGlEvUHL0h4Oq+R9073niXoLsCODJ+T4EHxplB1/1pjpr9IgkdeiTD91JifS8ikPV7C8d3Q6fcUljKAlYcD4GOlOmfChv9R5D3UmmNVb6FpTrxAVqf3D6d0OliYjIAGGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BjoU/vEwF/efAjCRB0Bgry7ozQMXDxX3GzhP6WkHiz4=;
 b=gfv7qh3rYqey7uBiU4SGuBetvaJ61Lsk3/7igCm6JILDunUM0R52NMT/xamSfygOFpX/6L9fhhS9j6vGNOPlkA6A6nvFKvVCxXtBE29C6h9/9mRqlOiabG87CZw3EAqIJK4Q93xZhxKVskjwoh/Yj1BqmY506LrOSNPRwOd3PGWhwAz63F2r2sXjruPsp4SIuwSbyx4WQdBz9l8tgWj+pIfHUNeA7uU7CrkCi9TyqwIxUxVgXmopHL90TQVJ/QXnN54sXuG1/66h73QuTi9hWbtJmAJ2ae9IRCtxzSc3ucstPQj2yt4a1LP+BkBbM9V9IihOuMT1JFXyym3TtnlTxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS3PR11MB9647.namprd11.prod.outlook.com
 (2603:10b6:8:38e::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.19; Thu, 26 Mar
 2026 02:52:02 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%4]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 02:52:02 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "S,
 Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 05/26] drm/i915/writeback: Init writeback connector
Thread-Topic: [PATCH v3 05/26] drm/i915/writeback: Init writeback connector
Thread-Index: AQHcvEeqAeAFGwg+E0e9Uv5iQSr3SLW/KYkAgADxDCA=
Date: Thu, 26 Mar 2026 02:52:02 +0000
Message-ID: <DM3PPF208195D8D38B26183DD88D543E5BAE356A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-6-suraj.kandpal@intel.com>
 <acPR2C5-z1-jeuxU@intel.com>
In-Reply-To: <acPR2C5-z1-jeuxU@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS3PR11MB9647:EE_
x-ms-office365-filtering-correlation-id: 5c78df2b-35e1-4b02-6e7d-08de8ae2a84f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: TdFDsvm0k8tl/bPiwex1hujtqqoZe+eEHWtVqkpCYGRV3HV063U5x53aeoYhg9dCig9Yn5bFQtw/OZ9bMO5oLosUQB/x43oaoyvYsoQjosbvasDZvBeirgRaWpk0pf2FeWxD12bCMNzOxSgIuGl8EuKyE7tppFgLkBmviOT3JU14S50HrXuuszjMtiqDE53ZB19Qtxm+wVjwxeweg2p94IoU3dWxRMg2eUkSyylksUO2fY4sWHQaKT17nDlCDo/+SbeBjMfHH3fXZmrG2y1tn5QP854NaIsPykdgTovqOBXK91eQ/kUk8MgQb1wKOlZT1VYUB/sn2Au6j8jT2OhSZz8maV8YxQchzwitm3u0utHhJievqvD8FhGlmJsldZjz6j5s/vDiXqI5I9VCrIeaqCG5RhzOMChOHsKL2vcB8DLSC4Wv3TiR5vRE1JbhdZvQhLqhsCSPv2eBp54bYWcF2A7zraBbDLyXKsk8qYpBcnO60aoH1jJvKheZm6wdz/Uxrk0XxDtGMJH7hY+SzXLHbqfBejvGqIj7PZZIIPNqOxF6oexd9k303ZXDEA6X2pi8RkChhCznKQKz0k5bgmM/KzBfsM1VS0rJYu45TsluO4PwXc4OY8WHT8/8KG8j+7h26VunFJZ87pWjrz0+fspXte4n2t479hgsHHMlz8qaE8biOYyChldj+RAi2Zm7iZBLqsEVV/RHLakEOHAbeFEP4ARirXRcF3hka6pXCLoyVJwRfNPm1Oe84yi7D5qnETE2PnuozUW7jrw5GVuUbRVXtnlGrrZkuForypyCxnIYyQA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?IBCJIcL+WLPNL3tNVOz+5IyyZYI5trmip+Idveq3r/sioXxWePc5GtaUKY?=
 =?iso-8859-1?Q?R5Db69o0icPsac8kJFYPISu2AqSCtyiUgIDS7gtT7hCE/pVEVIxTE93slZ?=
 =?iso-8859-1?Q?WAqIFd79DNbGVVosseMMACFt78N2Y1mKITSbhRscuRiaN7S0o7XKLK1Zg0?=
 =?iso-8859-1?Q?41PPl+MxSPHoL69OHXXYVOXBEmpLP6xB174lIoX/jU7lcrohnYWlMMGej0?=
 =?iso-8859-1?Q?2UcKKtbggbWdQWaqOtWQ9F8nwNDFUu28Sjj/eQKEJ5vpINyNtLmarPA1sO?=
 =?iso-8859-1?Q?FQhfEzTUZpzh5FYvYMgmJKYOQZNLH+GOkkM5N2CNa2Np/T1Sw5bAshzowB?=
 =?iso-8859-1?Q?IJwJsSnScogeJwDY3H1kvqe/VgUXlppu6/XNPWdYGFo7S1Dsxgquxqqwbt?=
 =?iso-8859-1?Q?tj3OgcK7+pa8ugv4zjA9/ffEzOpNSF+vC1RL+UnAWsxBxhjZDShIc9NhGT?=
 =?iso-8859-1?Q?37XfdgX6imAts6mMosccMrPnCcmWdI5aj1E4q8w1At5If0yfe9nmFL5RLN?=
 =?iso-8859-1?Q?wNBwspBL75Bit64ccJJXysPRPEYa4xOu5y7vfVfj35p4YnOSz0nJjhPKU+?=
 =?iso-8859-1?Q?FP9X66+0AtSpd9S9uzT8C+FBiqarhMekG2y2qVj3dpAab95rYE8dKicZSp?=
 =?iso-8859-1?Q?b5exOxN7ma07yNOpPdYJlGC6UAbb2QYDrY1cWkAP6GDU4qs7SZzLacn6PA?=
 =?iso-8859-1?Q?mJ/Jg+opu0dWI8FVoE0XFyUTN/QxdEBcWIBbth+4WvuM816Lcl2oPK5j6T?=
 =?iso-8859-1?Q?Qe9FzKM/699crBLcxGQolHXewQM4VkWF5G+Z2WFcL36Z0mgYZDFE9AMUGF?=
 =?iso-8859-1?Q?qX8Srmwlw4yPHQtbpGo9QNUQ1Mo3DVjoXY+YmE1s9+ip2BsHEZ8xAWNnzo?=
 =?iso-8859-1?Q?YoOMke9HwSPto3T5KhLX61Oj4KLTltUryg2XfT5+OOuv5ej5u0qS4A6L7R?=
 =?iso-8859-1?Q?c5Msg555Qz2UzEXCGMn8vYP0VqO5e2Kg6/4jffgacOa9cgkytFWHvCSKyP?=
 =?iso-8859-1?Q?6A1ALbczkySS/fPFjAlsrrjwqx1T4vrVlXyawWjCnk8yZjcUUwWIE9hG3W?=
 =?iso-8859-1?Q?LcWL1tW1jEihUHuFCSnnJM9aCr4gaPxFymiLDpRk5WaXOpz3RxVbKPASzJ?=
 =?iso-8859-1?Q?px35D+YK6/nJIY1woSsLpISYqsNLmfB0LOtQedjxBP+/r2nyJMZLmFSZCm?=
 =?iso-8859-1?Q?Cqfq/V6ASz7vQsBNmfTLCIhpL+ozGaZCI4MikjB7/2jG0iojoD21QCI/8o?=
 =?iso-8859-1?Q?z5+adcr1Ef781Sj5YsDsHe+lm4uH5NgxL6PCTrCoBSdf6XGSUI/1CEYBl+?=
 =?iso-8859-1?Q?NT5XjZUfKCneNzrNcV5baAOMrjNTayRAsd1UE9mmDZWD51+Dl1hKjlsk+7?=
 =?iso-8859-1?Q?zoMoJc331KqIvxZ5hlOTp5ce4ao6UFS+am+DeKTGgkuYzc1j1bnBuFUmf9?=
 =?iso-8859-1?Q?H8GDhA/gb3c5p4hn/0nCPfuSmINYYmJHCYR3nr6NQo9pvQif1fW4YDbAQm?=
 =?iso-8859-1?Q?sW5tPzmt0KfNRR9AaZOP/TreM1F8gU3vPQC/xNHL2flp97HmjokQlz6fGF?=
 =?iso-8859-1?Q?nhoox3ee9gj/MbfWeeEcJb5iCHQFGchdctW/GCZ3ps0D2Upuzr+bTCE7IH?=
 =?iso-8859-1?Q?LfY5bNPD/Cw3u0bPrPYq4NoXydjlD1iStWj40Z+vZ1I8LS5Vf+Cgsg0I8Z?=
 =?iso-8859-1?Q?8fQ96Fmb9+8qyS34maG0kECQhGT1IMz5ZLhwW6J25n/Mx9/8UapS8v/bdM?=
 =?iso-8859-1?Q?/zmWM6Wwqq62l8RcP7Cdmu3jYL5yN/xoEJsNYmjuMqiPwrzdQKrXAbkGdL?=
 =?iso-8859-1?Q?vgzbl3x6Lw=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UwGOp2pqLJjJ/N6cdmSCv98X4O68WY2l3AfyBSWQXbcC9/zMC3+SsZEB8ef35JkSil7l6aVFcES0yu2hzmTCfw6g9DEUl1sKZ+DjoPw7XNBxJ4eIul8EP8u9vU2lnqqVUHXHHTeF/M24djJyc0HdQPJCuegkAMwU5kX6BUYJ4IFQ6VXt1szlzNfa6+6/l9vwzTdIbKAIddwv7x540J5FYJ3y5u9R4HhcPvIXWvSGORP2mGVxbggxAKMecvYADlg+nrujHwbaMjz4tHVINCn5lRNJth3drRrwIJiB9a7qVHXeivO3BJzF+9fe8xtvRTDJW8E+BdCUngM5jWE27vr7hw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c78df2b-35e1-4b02-6e7d-08de8ae2a84f
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 02:52:02.3910 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TQFe3wUNe1jSDj3A4zaThY8R+tOPLcmH2iJTmJeZS/Nv5YyAkiAbLxHvG2cyz3QWnzRbATc9Bk+1eHcIItV2jQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR11MB9647
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E258232E840
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: Re: [PATCH v3 05/26] drm/i915/writeback: Init writeback connecto=
r
>=20
> On Wed, Mar 25, 2026 at 04:37:23PM +0530, Suraj Kandpal wrote:
> > Initialize writeback connector initialising the virtual encoder and
> > intel connector. We also allocate memory for drm_writeback_connector
> > but not the drm_connector within it due to a constraint we need all
> > connectors to be an intel_connector.
> > The writeback_format arrays is used to tell the user which drm formats
> > are supported by us.
> >
> > Bspec: 49275
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile                 |   1 +
> >  .../gpu/drm/i915/display/intel_writeback.c    | 126 ++++++++++++++++++
> >  .../gpu/drm/i915/display/intel_writeback.h    |  17 +++
> >  3 files changed, 144 insertions(+)
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_writeback.c
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_writeback.h
> >
> > diff --git a/drivers/gpu/drm/i915/Makefile
> > b/drivers/gpu/drm/i915/Makefile index b677720a1c2d..1e9140e7713c
> > 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -315,6 +315,7 @@ i915-y +=3D \
> >  	display/intel_vblank.o \
> >  	display/intel_vga.o \
> >  	display/intel_wm.o \
> > +	display/intel_writeback.o \
> >  	display/skl_prefill.o \
> >  	display/skl_scaler.o \
> >  	display/skl_universal_plane.o \
> > diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c
> > b/drivers/gpu/drm/i915/display/intel_writeback.c
> > new file mode 100644
> > index 000000000000..73101ee17d74
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> > @@ -0,0 +1,126 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright =A9 2025 Intel Corporation  */
> > +
> > +#include <linux/slab.h>
> > +#include <drm/drm_atomic_state_helper.h> #include
> > +<drm/drm_writeback.h> #include <drm/drm_modeset_helper_vtables.h>
> > +#include <drm/drm_probe_helper.h>
> > +#include <drm/drm_fourcc.h>
> > +#include <drm/drm_encoder.h>
> > +
> > +#include "intel_atomic.h"
> > +#include "intel_connector.h"
> > +#include "intel_de.h"
> > +#include "intel_display_driver.h"
> > +#include "intel_display_types.h"
> > +#include "intel_writeback.h"
> > +
> > +struct intel_writeback_connector {
> > +	struct intel_connector connector;
> > +	struct intel_encoder encoder;
> > +	enum transcoder trans;
>=20
> We don't call it 'trans' anywhere else.

Yes will call it transcoder my bad.

>=20
> > +	int frame_num;
>=20
> This and 'trans' are unused. Please introduce them when needed, not here.
>=20

Got it.

> > +};
> > +
> > +static const u32 writeback_formats[] =3D {
> > +	DRM_FORMAT_XYUV8888,
> > +	DRM_FORMAT_YUYV,
> > +	DRM_FORMAT_XBGR8888,
> > +	DRM_FORMAT_XVYU2101010,
> > +	DRM_FORMAT_VYUY,
> > +	DRM_FORMAT_XBGR2101010,
> > +};
> > +
> > +static int intel_writeback_connector_init(struct intel_connector
> > +*connector) {
> > +	struct intel_digital_connector_state *conn_state;
> > +
> > +	conn_state =3D kzalloc(sizeof(*conn_state), GFP_KERNEL);
> > +	if (!conn_state)
> > +		return -ENOMEM;
> > +
> > +	__drm_atomic_helper_connector_reset(&connector->base,
> > +					    &conn_state->base);
> > +	return 0;
> > +}
> > +
> > +static int
> > +intel_writeback_connector_alloc(struct intel_connector *connector) {
> > +	if (intel_writeback_connector_init(connector) < 0) {
> > +		kfree(connector);
> > +		return -ENOMEM;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct drm_encoder_funcs drm_writeback_encoder_funcs =3D =
{
> > +	.destroy =3D drm_encoder_cleanup,
> > +};
> > +
> > +const struct drm_connector_funcs conn_funcs =3D {
> > +	.fill_modes =3D drm_helper_probe_single_connector_modes,
> > +	.atomic_duplicate_state =3D intel_digital_connector_duplicate_state,
> > +	.atomic_destroy_state =3D
> drm_atomic_helper_connector_destroy_state,
> > +};
> > +
> > +static const struct drm_connector_helper_funcs conn_helper_funcs =3D {
> > +};
> > +
> > +int intel_writeback_init(struct intel_display *display) {
> > +	struct intel_encoder *encoder;
> > +	struct intel_writeback_connector *writeback_conn;
> > +	struct intel_connector *connector;
> > +	int ret;
> > +
> > +	writeback_conn =3D kzalloc(sizeof(*writeback_conn), GFP_KERNEL);
> > +	if (!writeback_conn)
> > +		return -ENOSPC;
> > +
> > +	encoder =3D &writeback_conn->encoder;
> > +	encoder->base.possible_crtcs =3D 0xf;
>=20
> We have code that takes care of that.

Ohkay. Will remove this.

>=20
> > +	ret =3D drm_encoder_init(display->drm, &encoder->base,
> > +			       &drm_writeback_encoder_funcs,
> > +			       DRM_MODE_ENCODER_VIRTUAL, NULL);
> > +	if (ret) {
> > +		kfree(writeback_conn);
> > +		return ret;
> > +	}
> > +
> > +	encoder->type =3D INTEL_OUTPUT_WRITEBACK;
> > +	encoder->pipe_mask =3D ~0;
> > +	encoder->cloneable =3D 0;
>=20
> We should probably just nuke all the redundant cloneable=3D0 assignments =
from
> all the encoders.

Hmm will remove it from here, will try to remove it from all encoder when I=
 get the time to test and float it.

>=20
> > +
> > +	connector =3D &writeback_conn->connector;
> > +	ret =3D intel_writeback_connector_alloc(connector);
> > +	if (ret) {
> > +		kfree(writeback_conn);
> > +		return ret;
> > +	}
> > +
> > +	connector->base.interlace_allowed =3D 0;
>=20
> redundant

Right will remove it.

Regards,
Suraj Kandpal

>=20
> > +	drm_connector_helper_add(&connector->base, &conn_helper_funcs);
> > +	ret =3D drm_writeback_connector_init(display->drm, &connector->base,
> > +					   &conn_funcs, &encoder->base,
> > +					   writeback_formats,
> > +					   ARRAY_SIZE(writeback_formats));
> > +	if (ret) {
> > +		intel_connector_free(connector);
> > +		drm_encoder_cleanup(&encoder->base);
> > +		kfree(&writeback_conn->encoder);
> > +		kfree(writeback_conn);
> > +		return ret;
> > +	}
> > +
> > +	intel_connector_attach_encoder(connector, encoder);
> > +	connector->get_hw_state =3D intel_connector_get_hw_state;
> > +	connector->base.status =3D connector_status_disconnected;
> > +	writeback_conn->frame_num =3D 1;
> > +
> > +	return 0;
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_writeback.h
> > b/drivers/gpu/drm/i915/display/intel_writeback.h
> > new file mode 100644
> > index 000000000000..5911684cb81a
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_writeback.h
> > @@ -0,0 +1,17 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/*
> > + * Copyright =A9 2025 Intel Corporation  */
> > +
> > +#ifndef __INTEL_WRITEBACK_H__
> > +#define __INTEL_WRITEBACK_H__
> > +
> > +#include <linux/types.h>
> > +
> > +struct intel_display;
> > +struct intel_writeback_connector;
> > +
> > +int intel_writeback_init(struct intel_display *display);
> > +
> > +#endif /* __INTEL_WRITEBACK_H__ */
> > +
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
