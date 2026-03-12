Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IG74N6QwsmmzJQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:19:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA8326CBCD
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:19:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B2710E948;
	Thu, 12 Mar 2026 03:18:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KdXBAtbN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4304510E945;
 Thu, 12 Mar 2026 03:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773285537; x=1804821537;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e6l7RwFZJ8EzLpM//MzlM9qpElU2QcO8mqPtnEq8R1c=;
 b=KdXBAtbNYFTDUlm4bJeOFnPA6UGT3HvckS72Z6qk7wcaQaYoyUKBctkZ
 acCy+7h3CDo9JZF/xG9eBWJnKtjNj7YoGHyP/NPNo0g08nB8gPdnXOFpC
 IfzxaRhCvgQ9Ng7UNllNtzXL9slIiD/lmrN/rndQGcX6amHEjbLNsLy4O
 IE6NXfy137hTVUHOXJDL8PSZr6mw2x99x3HqcielWtIhGZmgYZ44oEO0w
 e7h8DWl2Aktn/0ljFckJtPKEkV0DRGHFAYcqN3/7KIlJr6OghtX8g+zQE
 6ARdi8luMrsfPvXjDhcIIjbV3WasipuYPMhrihyh7Rhjy68pO2wwaSYz2 g==;
X-CSE-ConnectionGUID: 2rPhdqAkQzSKRdAwdE+Y8w==
X-CSE-MsgGUID: fEaXwG4ISV+7+uqj72r0Jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="91747768"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="91747768"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:18:56 -0700
X-CSE-ConnectionGUID: 8uQQyypCSA2CJiS4N9G+0Q==
X-CSE-MsgGUID: fW+t4qK8SvqHN/wS8IqWSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="219791698"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:18:56 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:18:54 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 20:18:54 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.69)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:18:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EaUNqSeoZT6+Bm03p219z6fvdt0MDcwKaD7lf7xCvihXjW20FGH+UdxtHwDEqGGO49xBLkCACB6xQTqw1gcVjdYrE+p3vGwN1v2FJ4u6ZKHyUd4etBy4sDgHGz0eYAqo5LneHO5iWwhKD+3cd85NYYKTBOPNZ73UXYs8EZU4U+kucQXsjFpX7bGRPk0mOFfUB0s2BchIEM1NQIFBXEtyr5tjKm6w0RvQI/Ae9dGiKdfVLs9ZHReIFbfMCsg/1//o16P+fO6Xjz5VxU7FvOdR3B9zbgcyQQUEzNxBr4+15LHWRjoBLkESueNkpFmOQrD0ov/nFU22Af4XgvwPn7jrFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BpiZoU9IsyDm9pC9XNQmcb/Zoj95FiMwXBCfFfFZrKE=;
 b=nM80Wz2TD36VEnWkpcDIsaXmUe5NBIBQbZMe5YlV/OJo0mbLzBSa82ljxZlkEmCcGOy9yUQC/WImsKltyWglNVg3aUHs88cFIfk5Rz0pTYnuGcZFeBLIJX/KkBtx6lAI8Vomndff12WuJ3Ubo8qmUPnL+0LCmENdZBsFm9JPSUTZ1bYD6wduSmPzgn1iiaUtSXzfDb6ys6BIGW1T7B5rkpwzmPf75a8rn5udBttaF4oWJyHxCwVJOnHsu/mn8Cc1NYhNOMIzCuw4UsGH3ovqLsAx251Onw66PpVImTNAUk1x32pV8QN4lJIREJO4734QPK9M2g/99y/4GR+hO2nm3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB7254.namprd11.prod.outlook.com
 (2603:10b6:8:10e::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.6; Thu, 12 Mar
 2026 03:18:50 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Thu, 12 Mar 2026
 03:18:50 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Thread-Topic: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Thread-Index: AQHcsSHWLW1MaEEmHE6nBRY4po2yObWqOcBg
Date: Thu, 12 Mar 2026 03:18:50 +0000
Message-ID: <DM3PPF208195D8D8D1894ECDE4A41681332E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260311063259.2608206-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260311063259.2608206-3-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260311063259.2608206-3-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB7254:EE_
x-ms-office365-filtering-correlation-id: 9361ae3f-10bb-47b0-2631-08de7fe614ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: X/qZkPriJY4FTSQYjkOvW2D+DAHB9mJTRboA/exw9C6N8smpZR39gtmHD6aWbZcx2u/Rj0X/V5uENQW7O8zJk1uLde+2uZUsxH1U5zoNjylZsgBm5ee1qfSdmyKZsWdLWunkHwVWmP9OurkkVBPq+zydH5+0BbtvJLsCFqhnE37kF0D0a6WFPZaE2w1vM35RKPivd0huqWlEf0r6BgXg6DnHGX5F67NTz4jf8po29gr0I09dwkdn/KYDyI5Rzx9v0apnomuAJiPbjT+6nwOzpKEB53dyP5LEHQ6k/Czf00MsGkVCfHp3zqrQYjojvGOLztqDU2+/9X5OlH/I0aie2iVRKtV/cPii8v8bweVYPs2/vWesEyn/1In8KT2GES8Wpjv+mA2+iIfNvnk4H1Qp74bS23YuycISgPWMh4+socYFficzpvebufQvJF4dB2WVnQSdpWTe0gb6A0Nm358S7/jVKiNyDJI6DJB9m4S1rIKB8C4SsHBuRiBIRss4a2PjfJKwpw5WNowDHwdIU1Y8zLPvuWswAgHU9+Mvp0ebHVDWpP8DKeBFjRTuMbaGNXp12G/qEdJCasxFZvk3KOYlPUQr6Rv2EaZ9OOKUiJZidKbfLTTt6Sd6NPCTcAwZLmE4l+xRokLrfdhQYkrSDPubS8AWP/mAHSwSoPkSQR1WIPYryEHc3X5QuFBpAfHDBaZ32FrqtqVqnN0s72AQhiYzGw8SToHNvdDtsACNmaWbnf9M/ZfaMan3rXRXY33Sl2gsItpsLXAfujNRajiUfeWRHJA8cv7PpapKqGgkyTG/fVg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kd5+wZaBPofL5ht3x5Q5LNf0doqksv6c+7DYiSnq+ts0S3ueTCGlHcDlXRLg?=
 =?us-ascii?Q?f1YYsrdk/pqz3UA3XqzBEIWf24MdrA671+vGGE1qEeO0sEt0GEW0kB+CWC/H?=
 =?us-ascii?Q?lO4odx2RqSlpwRDG1YZ+SjdRWciLsL2bbk7KjSwv5SLTpyxeqoNptP4qPhUB?=
 =?us-ascii?Q?kC9HRjIe7Vgu8ltFN6UeRm1pNXRJvCn57l0Kfz2F7JCuf9Fj0O5QctU2ypfl?=
 =?us-ascii?Q?m0FjUH3kG49mASN3evbw4ikNp6kKTwPV7XklcPRF/GRVcKtGJLgIyk1XmszX?=
 =?us-ascii?Q?XyyAl4uzJ9GjsbV/RYhpICiv71OUjJZslSJP2LG6rzYmHxEMBbB3Y4aUTIE2?=
 =?us-ascii?Q?yQNJmcjdzkoGeym2PcBK5JZUfozaIiAjN0QRsPb5TzNgmCxhLpE2mbJPPr/a?=
 =?us-ascii?Q?PVAqn+rxPqvMyh3G/7mRiBkuKhDsmAUxmb/u96C3ni3p2TAfiA5ETYm3hRqa?=
 =?us-ascii?Q?dEPIhXPG/RV76eXcWR4AzeGG4xuE650MHCizn6CqUz6Fn3DnGQHuBqcoiCUE?=
 =?us-ascii?Q?mV5gi0nP/A5aI37pMo0i+yfRacBBEpJ33ohzZE4jMETW4hD3GngzAG4hhqIC?=
 =?us-ascii?Q?tOVwtlo1WEoFj5vwrteS3Tt4GYeYZbmtqnloRMNRLUUhBu/LudJB4WRZBK6b?=
 =?us-ascii?Q?ROtYc7/Nn0AYVUXqRpW1oc7L3AGFTI/nlw0KzvkPfkLUQsk7qhkD/89srMQC?=
 =?us-ascii?Q?GJ34/o0CXC98gcZlwJc0rHxtXzzreZJy7jcpw05CYi13KUAKS39ziXYSVRs+?=
 =?us-ascii?Q?8r7xYLOjLFxPp+eFlrFPpFTcAfV/5iA+I/59403g3bc8iDAfYfQaRi50mY2u?=
 =?us-ascii?Q?iXy74vH8mg4Px1WLhw/9ptIlzJjuFxs0HgcWTDQNs6f7rAifeiLCrnfqHGXk?=
 =?us-ascii?Q?3JDHl/T9e3A59LYdd/9dh+A+9wfS7IX61FgxTH1UlkMvWSaZf6OLot8OoYC2?=
 =?us-ascii?Q?gyVZEmiO7SYJyh13T6JqBtu3rA2Mfyi2O+3nHwWRq7K9Tou5xj3cdW6YoGtE?=
 =?us-ascii?Q?xk+JFlRl+1XG1AkfdR1TuRBr3kcQQ2r0njIeGsCqJipliNdLt3ScyaX+KA+Z?=
 =?us-ascii?Q?mjLpOtigx/L9QW4a5YsL/OWj3fiD8q+mrgunKWuu9PmFNR032NQxTLyqDFiV?=
 =?us-ascii?Q?eZ80KU8pMFeWECzGHu80xFwY7KQw2sEZ8E0c0kOd2Trjal9k4dRoxxjbWFsn?=
 =?us-ascii?Q?+NIwjJi9IrRp0EY06BpN0XoQ9Hx/CDiVoXi9BeRlAQARCLDVYRsHL8tcqUJy?=
 =?us-ascii?Q?W9H/0ErjfKIia1Tc2ygogK/7NXBwCQAyHuR+vQT0mgI2OuseCz1rUdDd45kC?=
 =?us-ascii?Q?9wkLOgmRK6crywSorCPmJPvy2XOZavF/yWyycTa2DTl54kSuj6vbEjO8O4WH?=
 =?us-ascii?Q?Mdbv7LmJsxfr1lfbSYtJv9FkC0Y4UEqVc3pOWEQBM/MljOSdk3i++oimUTTB?=
 =?us-ascii?Q?J4DpoG5BI9lz2ztqMby5T1iB//SqgpE87/VsboSumxjK+k/QOKPcPGSSebXA?=
 =?us-ascii?Q?6QHeVvxaXUQdjZLX0yrPvhkz9H4DKC9ik5L4/DlwbpUG/4EDK/fQpXXapiYy?=
 =?us-ascii?Q?ukCyW2Xuz208bVfs2sIqeP1iXyRfkQXEdNeJRbOBXX5eFCxN+HKhvVyz+4JB?=
 =?us-ascii?Q?G6rXm+d+CCvmsDydMhMXDbGmwzu9AhdtGOsxH2HKpEXE8//fW3in77F1GVV1?=
 =?us-ascii?Q?5CG9RVdxX6/DqaKXZfie0M12d6dt479KITFbYAfFL053HfLSBePfrZ0s95u8?=
 =?us-ascii?Q?e1JnPtUcjA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kJTndS0QNzPGQmsX/M1v8JwmRpiYdE2gQZUSUHkWKPC8WTGGiSK6NrxRs1EH+kP6gkup5e7q1YMUhEnSSzSsRxgHMHF66AVnssfHrqo3JlDmDPMKboZ7Exsn0VtvYVndttkVu8bCFjgSv0mqhEJke4JbO7edpqyoMIJPhJ04NM3WOjuzgM0VwGyh7fa4OOchifPhwJcJ2Fe3O2OOx5dz6fhTAhbgI4oBFjWHWxsnTu+gklN1yhpQPS+6Xvczx2nuWMbbY375a38cuvzxaFSYnK/j1cEZVoR5LDvKLvMtAvHWKA2TFXOW7DgElUGhHsE2/bM3KMdnDkFIBP9u+iXcEg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9361ae3f-10bb-47b0-2631-08de7fe614ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 03:18:50.3148 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nkEcHi1j81p9OXrAYErWwNFkbajmt9AZliyFpVVTR6pesUJx+oq5LHSrRkLYMnl0StORSmCOQkdBj6xFD/yV/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7254
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4EA8326CBCD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
>=20
> Enable PIPEDMC_ERROR interrupt bit for display version 35+.
>=20

Add same Bspec link here too

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 38b284a0db82..e60f1f977070 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -510,7 +510,8 @@ static void pipedmc_clock_gating_wa(struct
> intel_display *display, bool enable)  static u32 pipedmc_interrupt_mask(s=
truct
> intel_display *display)  {
>  	if (DISPLAY_VER(display) >=3D 35)
> -		return PIPEDMC_FLIPQ_PROG_DONE;
> +		return PIPEDMC_FLIPQ_PROG_DONE |
> +			PIPEDMC_ERROR;
>=20

Mostly looks okay but here's my question:
I know LNL pipe B had an issue with PIPEDMC_ERROR being triggered on LNL pi=
pe B,
As I can see from Ville's commit message, but is it still the case for PTL =
?
Can we have that tested ?
If that works we can add the PIPEDMC_ERROR from PTL onwards.
Then here we can change code to create a mask and then return it finally li=
ke :

mask =3D PIPEDMC_FLIPQ_PROG_DONE

if display ver >=3D 30
mask |=3D PIPEDMC_ERROR

if display ver < 35
mask |=3D PIPEDMC_GTT_FAULT |
                PIPEDMC_ATS_FAULT;

Return mask;

Obviously that is if PIPEDMC_ERROR works on PTL properly.

Regards,
Suraj Kandpal

>  	/*
>  	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
> --
> 2.43.0

