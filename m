Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jIViCjbMTWo4+QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 06:04:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A5A721881
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 06:04:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=TfDywSxB;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5544710EFCB;
	Wed,  8 Jul 2026 04:04:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 167D010EFC4;
 Wed,  8 Jul 2026 04:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783483443; x=1815019443;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IXelPNP6v1kOKI/JHGuUKnZvMdR4hp+0iwPKPMu7Wxg=;
 b=TfDywSxB/qYGprHGPGx4LtRG0trzahsXNWh+/B/o36xhUuZ329SD8NUC
 fl8mSI78QbfG3R64y5n3wpnXbtz9rlk2D3GUaV3NtTIUaWQLNJIrfhWKj
 Af8IM6AQZP789t5wRlH23mlMJ6KKAJFdcmmfHP8xayQaFKVJVdJci8Xk/
 ID5UvMzQeIhQQ976RohG/fEqvbCSLUxihviAx/DA51C5IhqNOh/A3wdVX
 /8NznzXpti3KmGZo3JB7KEuK263Q8VWC/KDUynL1vjB5jCKwFf+dmNDYi
 1b1G0gEfKAv/enEVuYLV25DbNQk1atZkEzFu+3u27pN+iJb/CS486W7a/ w==;
X-CSE-ConnectionGUID: Gz8YvxiVSVqyQda5MF+Azw==
X-CSE-MsgGUID: wR5+qyTFSHi7i8iIbF+5qQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="94492476"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="94492476"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 21:04:02 -0700
X-CSE-ConnectionGUID: TSETo9IwRF2EldBxR8bgRg==
X-CSE-MsgGUID: OJRbbffDQ12WSakYOgEVhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="250820947"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 21:03:57 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 21:03:56 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 7 Jul 2026 21:03:56 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 21:03:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FhHN4ti4IZ5pQ5slm+pKQr2d4kKbUy6WLKcr9gVOs/Z+kZf1+P/escZitEQ/Hysocaf/+HMlTAUcI5EqVgkjC9+cifK0nDyJd1R/gFUPUexdlLe227JgWqpWncpey/ViIEqYT+cKxmCUb93Fttb33i9lGxLulrV6ndFs4loej9Zgb+sJh5lfO2jW5ztiFasSN3wC6QckH1cOxzWh2MfupyiVfR+6FNMbH7JTZZj2XJZFuELh7ZSUn2/RZ1KAS99jkIrwT+kIguAZZ7FSRicSaWns1M6Gke3Lt2Nv11mqsfZqCwP65DfHZZUPoaO9OSeL2D+7GQeP3mD/xRYEyJVz9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vvq4z3jq/MhhWXJRXaSQvzdm/95QR5GVet++aDXU+3k=;
 b=Uq1upbTAWH3vzPowsttCwTay8Mo4cd1SEnymKH+gkkw9eUBXVXKZ+nQ6O2uoLZs8XeaWaVcdegqa1u1uEa+7nmHbbwBW8H3cwJ1Zi2G8I7oVL/OgJs0hzhavC8sojh5UO3Tb+i677jZICzteXbyszh/pBvBSkiZWiMaBlduNnGtdKLRZq4HeOLcd2vHGrELSa9zI04XX7rtBr0YjZv16SzeImZVFYwJrx3jHKb+4fbZLV5wf7o079rH+TYXKNKspanJubhH5FUzB9veyf6a5bHhz5Up9MqmMQtlgTP2yMGQS/ftcSZQ6Nq9eim4bdZyzBO5cMnBD410+8U54g/Pzkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by SAWPR11MB9547.namprd11.prod.outlook.com
 (2603:10b6:806:4e3::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.9; Wed, 8 Jul 2026
 04:03:54 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.012; Wed, 8 Jul 2026
 04:03:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt on display
 version 30+
Thread-Topic: [PATCH] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt on display
 version 30+
Thread-Index: AQHdDVza/nE47o+CcUaLzc2H0k1C9rZjASpw
Date: Wed, 8 Jul 2026 04:03:54 +0000
Message-ID: <DS4PPFE901A304F373618749F0401FEFCA8E3FF2@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260706153122.3282182-1-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260706153122.3282182-1-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|SAWPR11MB9547:EE_
x-ms-office365-filtering-correlation-id: 11f5ccd7-d91c-4425-8262-08dedca5ed67
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|38070700021|18002099003|56012099006|11063799006|22082099003|6133799003;
x-microsoft-antispam-message-info: i8u0IebfRK5WOI/xwUaOXNdIoscEKuI8If58RrQvmvKefL233eNdtX/nqy+hz8qBgdfQ2VrJ/Ap/GQJ1XluaLeoyd9hsBGeFnWtcDC+/c3v8juwcmEhtV8hyzmpdkLfTbD5+qkkfopZS0WwmKWTSo6BIdOvSh0mbrvQ62FLKwhKz/1X7Z5+09A5tudDbzG0MGaCSukF5dMEPyLE3fEe8FnKNr8X3R7yFVMzv/KpKDjnmJjo/87IKptyeYQa8B2CRWpH5uJBeB9DTDVWDf2/OEHbrYw/+/IlFgm2R00ebX5JP8/rSh4z2IJcxWPnnkdeCjtraf5GoUfG/Rp3v8zxWkIzHurmPbquDFGsQlchLYT8WQ0bToyrh8C2E2j/jwO6sq3yw7oyctodv3VVzOAwExjygf2lNbGYhjXLv9PJP6AtEWK6RXeXuCNgJkkkykVs1HkUHacbW3+t7TDWQngIxGyEfzVu531VPc7lp3lrlCr3Lx58hQwDmNMbI62vvurxWTXN+gP8S+ihHfb42smwQ5HjzJcz9XQpPb/tdbb3V1Ujq/DvZ/xZBkW2dSn3WVrs1QvB56n21xXeJtHEwy9/NRjXti/Psbq/fC/rVh9TQC5jaTEorcoDwdIJObx6eaRl2XoketIMn/Am7lkuGqj0VILCKgoN90P2HsxZustiSgkZEMwDtenVvAZfugc0pjnIW/lK59YqAwLCgDXee6FzZ2m0egUYlIjZyYSgiCl13KH8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(38070700021)(18002099003)(56012099006)(11063799006)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vw/xat7WnXMcyPR/zdOdVMgRHz0CeoVbCsHo3yoAdnJFIUcYsGgyHTmyCHKs?=
 =?us-ascii?Q?veIJ0o5sjL0/94mn3j7WxWsbt3pAkvZU4Dd7F9fd0ZnOYxYMajmDndzj9IGz?=
 =?us-ascii?Q?3GTeBqsK1zGTjaeEVTwjt/+Hb8R9YPwxK2tODxJDe0s2ZuG7Qe7oVNYcUYrB?=
 =?us-ascii?Q?aEyDlv0Zlmwabuw4I6FtaUvXhLNkBhXU/u7QZpon9mYvYLU/QUCRe6MogatJ?=
 =?us-ascii?Q?es3AJJUqsrmYI+1beOuGYXlN/X4L9ZjkBXknnwtmV+sdv3MS0Nhk5/71i3PW?=
 =?us-ascii?Q?WrsYT3APOt5HZOye/FYrxOit0oBW1yeaxcq4RynqosQeME8SVrnQWG/sYUh0?=
 =?us-ascii?Q?5SXxWfw7XheuijYTdB5EyOqFBfLFtPIxQaXR8iX3xRv8z8/VAWFPvPyXFcvl?=
 =?us-ascii?Q?np+YkTJUIBOdE4k2lmhChNl5eGsWsy1qDWgsCP+CeqQf9SViwjpAQnEHT/Lc?=
 =?us-ascii?Q?alN4ESgjobsh8mCkOc62AGyqCA/zIyBHOTOwmSqhFMl2jBtrQIFkyncvMZKi?=
 =?us-ascii?Q?O9LLZI89Vaqhme/LzbG0a/IrikmjM0LhfWpNZR+Mz9hWZfZ3DNrhLSPovDJg?=
 =?us-ascii?Q?llrAUZJllamOKL5KGHlWgdRvukCrrD9dYLHu60JDVw3aE43kUx6YUGijkjba?=
 =?us-ascii?Q?auhVY1i7ykXLf/f5aBf41CGsAhrVJKM/O6foF+Krt6lsHseLBvw0mmI1y7I8?=
 =?us-ascii?Q?4+Quge2NjRLs8dRKvBtNJI57jgIRJyyWp2NpnmOw8o8sQCY5Lh+AJxJJ/KfS?=
 =?us-ascii?Q?SqalnhOCCvwYPo1UCT7RBUkMjfw2PSrhBmlh++g59xhO/IjNZ7w48VKNypDJ?=
 =?us-ascii?Q?WhaynItGsS73KxdjtIlj3vyZnY2uzdtw+wTSn3Qy46dmgjWelXr22/Co4TXV?=
 =?us-ascii?Q?7S9/MSXt0F5fnnDb0kBzzXpESw92WCJnruWMppmElv9uWWdnYdIfg6NmtWUF?=
 =?us-ascii?Q?CnRi6SmE6CW+mggS2X09pTi5T1FoPY+TeesDBUdpsnKVpbVK8GVKOnJc1Kvu?=
 =?us-ascii?Q?ka/O7kqy93b506s3da+YFawTHF+6bgfPgz4cD9YYSXSdA4vdWS5qUg6/DRc8?=
 =?us-ascii?Q?lBejjzTBDAb0Nre2Ed1RY+qkErACZiZy5aXoLuxX4vhKMsI4Q7qX04Pj2EfX?=
 =?us-ascii?Q?2bDDf29tQDI/zWENAXr1ZHgSOXVw04wabT34nBtwO7AtYV3/GDN2hozaKuPv?=
 =?us-ascii?Q?0BiC+B0HjpQw8h7M/sVNSyTHUcYnlPOJlUlkX9IUEwegecJU0cWRxHt2jXa6?=
 =?us-ascii?Q?onFUl7xrXEXlnMXJjR+BV29nn4phc9vVQhym1bmRniqByLZy+K/zBvrkKSjd?=
 =?us-ascii?Q?Roc4r9YOy2wOFAMabmwOrzkehVTZE8E2GpQjpfQeJfJ+jxO6eEvVbT2UWd49?=
 =?us-ascii?Q?3pLnAeT38vHBr/qloY1WugpY1iHQ51As/0Pxv4tiCdO0aW7qr/LFXPiM7Iiu?=
 =?us-ascii?Q?x1RxT2TYTpZYEiHItJdeiMdlITLQi3ss/FR16DTBbOGgBVa079pvwI/x+fHi?=
 =?us-ascii?Q?Tt/trZP1ukQcIA5TvnndCvNKwKKX9yviTq6RpwYK47AW03jSHARJuVhy5HdF?=
 =?us-ascii?Q?lL0XMao7NqcA0/ct6qtHmMnVmHZu/3Ds8UOJ+sw5zxugdwNwkyzL09oKVEvL?=
 =?us-ascii?Q?9nBG0oB+GjV0dV6pFXYGTf4gOvSlG4iCxt3p5QEopxo9bIOheeTDTFKRPmqG?=
 =?us-ascii?Q?7DDIHi0b8Tvwl/INbQAd3yYIsGI0o5Vb0PpNrQx2z24BYDgAmuT/l4L3w/xW?=
 =?us-ascii?Q?xJX/3avPxw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: MVQq8qHXS6j2wL1uyzu3ui53zvNgPrNL6nOg7av/gLaFbkJJX3ADI+j37jFxEPEU9o0ndVZltP2SY6yvvr4fdzmpJjPnLUg0F3Yloy4PmwSjhtbjg4TDSrC/8H7rGacOGmnrAp8aLpiGp79ioGQhyz88w91xZsRUX23+Ho6oD+Y7ovLUyP9luVH7NvvsHFkWCVYvK7F2MdBbaRoXzGN6XGZE0Tpm479kYoJCrxINGJdXEgd1r8s60xMABFPmdgo4ZZBzTzvlbtmEFNW6aLArC9uy69L1qdXDnos7CeYCtlG1tqwdHLeYokLtQhrKOpPqYfQ19cfmH81nG1i8uzimQg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11f5ccd7-d91c-4425-8262-08dedca5ed67
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 04:03:54.3541 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1zJp5gspZ4IPCjJtsKPhpisRRvnDAnXqZKicyga0IJE2lpq89JEmsJigGiG3gQQhjaMVpKDb6qQmrRbIXDw0gQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9547
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:dkim,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 63A5A721881



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Monday, July 6, 2026 9:01 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt on display
> version 30+
>=20
> Enable PIPEDMC_ERROR alongside the existing PIPEDMC_GTT_FAULT and
> PIPEDMC_ATS_FAULT interrupt bits for display version 30+.
>=20
> kms_pm_dc IGT test on PTL does not trigger the spurious interrupts that w=
ere
> previously a concern.

This part about the IGT test can be omitted from commit message

 Enable the interrupt so pipe DMC errors are reported by
> intel_pipedmc_irq_handler().
>=20
> Bspec: 70296
> Suggested-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>

With above fixed
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 11f5dbf91e68..a191eee240d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -505,14 +505,16 @@ static void pipedmc_clock_gating_wa(struct
> intel_display *display, bool enable)
>=20
>  static u32 pipedmc_interrupt_mask(struct intel_display *display)  {
> -	/*
> -	 * TODO: Check if PIPEDMC_ERROR bit enabling causes errors
> -	 * on PTL, enable it if validation passes
> -	 */
>  	if (DISPLAY_VER(display) >=3D 35)
>  		return PIPEDMC_FLIPQ_PROG_DONE |
>  			PIPEDMC_ERROR;
>=20
> +	if (DISPLAY_VER(display) >=3D 30)
> +		return PIPEDMC_FLIPQ_PROG_DONE |
> +			PIPEDMC_GTT_FAULT |
> +			PIPEDMC_ATS_FAULT |
> +			PIPEDMC_ERROR;
> +
>  	/*
>  	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
>  	 * triggering it during the first DC state transition. Figure
> --
> 2.43.0

