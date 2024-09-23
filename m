Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E8797E63D
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 08:56:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B91910E38C;
	Mon, 23 Sep 2024 06:56:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fGHXxne6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29BA210E38B;
 Mon, 23 Sep 2024 06:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727074606; x=1758610606;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lRGkqqgqenReqFpEt8E+o81/5cQYCEW2bftUadPGZ2k=;
 b=fGHXxne6QajENF5VrRCWWnj75Z+Tslymq+IEMdYiTLTThsrGA3W/KYIw
 +HdnuG+ziaH8VFLk4Un3VuKRYGvte25qNkNz/1o+cRSFRKFgxyohBEnIu
 Ocg8wNpTCcLE80jhwdNZJflIoaOb8txLoB5iH5vG8MLPQ2hDuLkq6QLv9
 wZFJ6ouE6U04WZdKTFjMn5Ftf+KzZ2xUS5jxPYoy9Lio15Pk32NkpSyiY
 j4P4CZtrLboCYm2IbUn6pni36mm7k7PKVEdUMwg9+y1cHXT7Z0w0I3c9n
 3by7gTrkOn/FTHAACmXI5CuB2gfUsjlLmEk8O30fdtMkH8eNyf739L4uG Q==;
X-CSE-ConnectionGUID: c9Q5TbASSJ2CTcCZt4rETA==
X-CSE-MsgGUID: taTHDQ2ZTeqQafmrUDDjFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="28902457"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="28902457"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 23:56:46 -0700
X-CSE-ConnectionGUID: hYQ0WbvxRuOU0AFH5J0UcA==
X-CSE-MsgGUID: vI7tSmhBScW2W2mAmYI12w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="101703969"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2024 23:56:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 23:56:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 23:56:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 22 Sep 2024 23:56:44 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 22 Sep 2024 23:56:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gxzz3b/d+tE5v2auAb1Z1UNcypkE6Zc3D08uJRuvyzEob/TSM99kSkix/GHatAtKJLDJJcjXkaYQb0XS8T+tptxltdhCG0nlZ9Fk/CUOBVqxaL3xZPIMa4xZrUI7eSKuYOqNM+eBcGGZNSu8euttsqbrsTDEYEDN2YRGPGFXUmtaUX3ZfsZmd+hicQcwbgzl8qgLbieVngMNu4RyK1V4u8uOJKtn7lqF1dTRLJ9YC009Ucw6TlU9QjuoIRX7Y8FYOtdmKCpJGFi2fCJPMuPvdmZVJkTwUzNBkM4i6AxxoB2HcfkW2o0bXSVRt1NIebRYfzwDaRaJjZ0FHJCLxQWUnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nmrkcGoFaIX+Tq6IfAWIQPzXR1xcaQyyhZcwsOhqKeU=;
 b=I2E1fw+v8sJPow7rasTO1371QgWED9R+UPyAIku1ZiEUkIQrnCnE131/FJppPz4hgIW2InUFspyJ7okXBAWlFeXea/h6xT+yObeOrnLpdG21qJCFWkYU8RefqY1jM1/OevDWlT4sVq69CRw65Pki+neacUaDBZMhh2xQdH/UOVtpECwPFurQ4U1yh1eCjhkDrcftBN49Qu/zfNNF++x65+L2i1kdKfbCVBAg8ILA43h3cUO7tuGRzU1bj8/kUA1FaIvrjRKm4KGhkQ7AnTIjEQ52QJlTY18zh8k1S6yVJM3B9wgCL3wxw/kZx51bKYGTZqnhf0fDxV6D2C87Y3jv8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH3PR11MB8154.namprd11.prod.outlook.com (2603:10b6:610:15f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 06:56:41 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 06:56:41 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>, "Murthy,
 Arun R" <arun.r.murthy@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
Thread-Topic: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
Thread-Index: AQHbBNLcqGgbxRpHh0iYwFS0SOqK2rJk91PAgAACrICAAAc6oA==
Date: Mon, 23 Sep 2024 06:56:41 +0000
Message-ID: <SN7PR11MB6750DA67D5E31FEE746E5C55E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-3-arun.r.murthy@intel.com>
 <SN7PR11MB67504B125D9B035F37D79420E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <CH0PR11MB550849D56A0906235C115F27C26F2@CH0PR11MB5508.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB550849D56A0906235C115F27C26F2@CH0PR11MB5508.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH3PR11MB8154:EE_
x-ms-office365-filtering-correlation-id: c45b25f3-cce0-446b-3691-08dcdb9ce103
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?4Ye+yIPPP/dYCN2VYrHLH786CkOejJinYNv6ku8IxK0ROGKuGm+WOUOhzIqO?=
 =?us-ascii?Q?96lvLbzPOLJAy8L3BtFY0gn08ThYNhOyZ8DxBgWYsc7q3913rUCh8deGG5hv?=
 =?us-ascii?Q?LkP/7HUlvclGxnhegDVOQRuFcG/FdRse69obiadb3dlCkAftrw1bmwzgr739?=
 =?us-ascii?Q?s6J2wBqY9IBmpSau8DdQuYVJFUyrcKmwf0I4hDhIVSsMNmjb8tS6oLJwZj/3?=
 =?us-ascii?Q?BKGK3NTXHWOPH72oN2qhrUzQLrriH2iaNkwQwIsMcYdr6ApLrnNeV1rJmBji?=
 =?us-ascii?Q?Pxjnsi/cYc3bFZU5xXY1o/+m/V/hNgBdXXrmcQwBVSmRJD/M8yjs8fJVQoaV?=
 =?us-ascii?Q?IbXYTird/KzPkSgaqVLXhcCIhnjQVUlF4UaNruYB3LWIBYgK8b677ANTPjXc?=
 =?us-ascii?Q?y064eXw5ioxNAuBeq0MePxS3UcyNldie7eiE4tE0CrL8WK9lG/a7vhFhwsBS?=
 =?us-ascii?Q?3vhR5MQ8dPIYKANFCkBzz9UMZZi7Y5wa03yfxvGgsphJLxkR2dNPmunlPwAq?=
 =?us-ascii?Q?caim/tlKhf1te5asx2o9dX9DcqPh1u7AWLC7mdaCNWyVAI0C32Vjrnh44DRN?=
 =?us-ascii?Q?1dOUuj55BWTrJagOnhqGKj2DJRIzDbimGTuSsIdMTeyaW7MrzSJLgKlX04pY?=
 =?us-ascii?Q?7bUicWcc1G8XtlbB8rlD/rPsbwkXOF84HqcUGq0CPZlfsNfy3bXefBdF4In7?=
 =?us-ascii?Q?LjLm07NlA11PjizJUDQlgnF5BrxnggRSPItDZVo1NbbpPja7lXR04mWhordZ?=
 =?us-ascii?Q?9JKFNrmh7g3Bxok2rYbtBSJv103xn7g3ZJGiNLbaM61b7JHAJnV7kBBhhetB?=
 =?us-ascii?Q?AgFz/yCGokr3FSZ/90hWSRXb43UVYRyUKPz69kv6jsYhYAMAHMuMF9+BI0B1?=
 =?us-ascii?Q?tu9JI0xVUU+Mg9jtFCJPQ7zAWtEAENvy2IOdSf49m/k+PR/F0w3nxqTviNc3?=
 =?us-ascii?Q?n/guXBzo+KdVHvoHZI0okBZbv9wG0oN0+lUYTcmrn6IoyyMbcWxGzx8ub6EG?=
 =?us-ascii?Q?8o8FgaP6aJYowHgNtiKNBTC80VCAjQv8fIyRszFGKoHW1+7ndUKd2hOdYx51?=
 =?us-ascii?Q?SUaSuqlLi68XKu56c3D85pJQBWRdT5AoNhLmXSJoXbaDu22k8Ga/3Ry3Q3fW?=
 =?us-ascii?Q?r1XQh3JYRo98SG3Q6RjEAqn7NZC8gEcCq6qhGEkLuKYY3dEnRFQdX52d0MYU?=
 =?us-ascii?Q?GSj0SLhPJ9wkoVBRf4Lkx4bdnsqpHe6Sq7kD71F54x+z8Dme3E5uX4PhqFBF?=
 =?us-ascii?Q?F6ZgXy+2lpjbfvKqj+632qKeGhCM3G5RMUpFAviPg4kSV5kapMjcGiuMo2cm?=
 =?us-ascii?Q?H9/VV4/Wo1DuUARJBhqIKY998EtdCc+fWz+J9F9Jl2LCjgUldEehKErtwoxv?=
 =?us-ascii?Q?K0hbRz7SWf8yWk6gAj82gEEPI0A8VyjeprPcrxo2PFef4wV0Ow=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jwsNXrdeIAuLyEePfEmJgZYAz/bwRUWikQwocabh4eRcXbvU8WkNPmyIt2uf?=
 =?us-ascii?Q?U0tzDWrrfMheVC5ttRkE+mYo3v6CYpP31RDLMv8N76HTS4Cnk19iiCGRmy+k?=
 =?us-ascii?Q?kBQxcMM1H/Kmx7ACKkggqUUADyX0Ml2D+QDn+1mAYuPBhmyRYPxwJXuIQhU9?=
 =?us-ascii?Q?YVmdRZ+1SySo2YKeOZ2UnZhNr+A25+azEJAtdsWSPmP7ziloYU1+vEBBwYjk?=
 =?us-ascii?Q?cKNG9iLlE5NmeEryB0Yl8Sit/WAsZ2RJglX3+c9c7PMgRNl5LTFwXlVOWpQz?=
 =?us-ascii?Q?bVribjRk7Lkw8UCu4ZME82s5QGbw0h2K/CFR2L0L+dNVxUklLnyG4eyphSbl?=
 =?us-ascii?Q?0ROR3gQe/UL4airGX5RGcHX7XqnsVIbwF7lrxZwRy67dW8C7p4XA1f/qYHYd?=
 =?us-ascii?Q?p3ds+n112EiyEvPT62CXlQdWgIvFiskv31T0weTCbW9FflxOG0RCk3r+Ukzl?=
 =?us-ascii?Q?vW6cYJ72/D1zBSidyOfFXmrohV7Qo2zDfd18cJyKFsgh/SDRDWRCMYisKxpZ?=
 =?us-ascii?Q?Sg+HLR9kKzawBadnkP5ndzJFbRGn4J37jCjvxSmjLj13t12gJua27yXPuDG5?=
 =?us-ascii?Q?0upNDyIf8PEeB5Pj9Rbr06QgyNDLYAqdED5sF5V3hN/81xkhlN5WagFaaNRV?=
 =?us-ascii?Q?kd9TuoRjJuCVDNG+ag8ERT6NvKoJbXfI8VSuPCOqcLpsE0HcLrXJLzJSP5RX?=
 =?us-ascii?Q?TNq/OiutD0Qy/kM10d+/5TKJp9I7l646CWzVYTMc65sl22MWMsjnDu0nnVTv?=
 =?us-ascii?Q?YQKDoccB+axkf61yZoSDb2JNVvDB2U1Vw9SYStTaaAVuaAPQ05DHMy+ceup9?=
 =?us-ascii?Q?YdpZ+oeO9eGD/Gm6AeIfSaE6oOLPsA0K1gMRQvnxtzAb0NAo2A6XJSu/q2v8?=
 =?us-ascii?Q?2tChneeY4Y3loYP8cehdihTJ3HD0rMQE7B4I0ZFNdd1bVAdG28bpOERUxH6l?=
 =?us-ascii?Q?3rU31bb4VD/i9wbZg96p4fAgxDuiKQ/1NxHWAMSXqwMUjmtyDB5DIJbzm/Cn?=
 =?us-ascii?Q?Un/Wg0Mxm0zoFAtA0axHS+Tl/lQQwiZ4rySDVgJexelmTVztpCiuXGpibdii?=
 =?us-ascii?Q?BRG+HKZsdmZKaW51Jdhwla5UYPdNGMxk9a9kyb3BL5lQUZFeVVCEHvn1yfjl?=
 =?us-ascii?Q?af472HEXjeoYi61P9/PGDTtyn4Um906zqcQp7x4ZrgheXFx8LMsJZKK7Spe8?=
 =?us-ascii?Q?xf9/Z7/32wWUqxhfn9DeqpaeqrtO73ZgIZNiD099UzPYEgQkAwggmnAtPHrt?=
 =?us-ascii?Q?M7HFESC4xmHhF1Di8g2pPnJwZSqt7IXHD2/d2RbU1ll/lrc7rZl+zlBJ7ZCT?=
 =?us-ascii?Q?Bp8RCe5TlrujVndiI9JKF/O5fFEpqZaUiP4+J0FL3yWzzi5VRdIzJN4LqYqK?=
 =?us-ascii?Q?AX9eS9Cjd1mxjZPicSJ8Ft6cE0lp3SRBTd8pEf3q8irYgHaHtvJoLWexUlp7?=
 =?us-ascii?Q?UR0WJeXorudwOf36Ojmyuno1F66oLoIZweXZ8EixKZUEwZRKJEiNHA76hPnE?=
 =?us-ascii?Q?3sNQRSDsUCBNvJ2f4T/zEDH5ipg1wkPqUNpRD1BLXcwSjg4bNITZu0jnxAlH?=
 =?us-ascii?Q?adMGblZdeQdY8VuqIB302t2VZ/6kNL3stR6neRhp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c45b25f3-cce0-446b-3691-08dcdb9ce103
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2024 06:56:41.5688 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E0tlXHtntdhoQolcev9lVwNvtKBFYrDhNzmsJ8l2DZXkshyQqHwCihVlcekFbxqLH/KDbxcLfCQ3PSI6XeIa+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8154
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



> -----Original Message-----
> From: Srikanth V, NagaVenkata <nagavenkata.srikanth.v@intel.com>
> Sent: Monday, September 23, 2024 11:59 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; intel-xe@lists.freedesktop.org; intel-
> gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: RE: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading =
the
> FFE preset
>=20
> > > -----Original Message-----
> > > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > > Arun R Murthy
> > > Sent: Thursday, September 12, 2024 10:36 AM
> > > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > > Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Srikanth V,
> > > NagaVenkata <nagavenkata.srikanth.v@intel.com>
> > > Subject: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading
> > > the FFE preset
> > >
> > > DP Source should be reading AUX_RD interval after we get adjusted
> > > TX_FFE_PRESET_VALUE from the DP Sink. (before actually adjusting in
> > > DP
> > > Source)
> >
> > I think mentioning the dp spec reference here would be helpful
> >
> Please refer to Figure 3-52: 128b132b DP DPTC LANEx_CHANNEL_EQ_DONE
> Sequence of DP2.1a spec.
>=20
> > >
> > > Signed-off-by: Srikanth V NagaVenkata
> > > <nagavenkata.srikanth.v@intel.com>
> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > ---
> > >  .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 ++++++----=
--
> > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > index f41b69840ad9..ca179bed46ad 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > @@ -1419,12 +1419,6 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> > > *intel_dp,
> > >  	for (try =3D 0; try < max_tries; try++) {
> > >  		fsleep(delay_us);
> > >
> > > -		/*
> > > -		 * The delay may get updated. The transmitter shall read the
> > > -		 * delay before link status during link training.
> > > -		 */
> > > -		delay_us =3D
> > > drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> > > -
> > >  		if (drm_dp_dpcd_read_link_status(&intel_dp->aux,
> > > link_status) < 0) {
> > >  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link
> > status\n");
> > >  			return false;
> > > @@ -1457,6 +1451,12 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> > > *intel_dp,
> > >  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to update TX
> > FFE
> > > settings\n");
> > >  			return false;
> > >  		}
> > > +
> > > +		/*
> > > +		 * The delay may get updated. The transmitter shall read the
> > > +		 * delay before link status during link training.
> > > +		 */
> >
> > The comment needs to be updated as this is not being done before link
> > status Also a question does this not conflict with the requirement we
> > previously had (reading it before link status) ?
> >

Also  this whole delay us read should be called much below in the sequence =
from what I can see
In the dp spec just before we adjust the ffe settings at this point

/* Update signal levels and training set as requested. */
                intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX=
, link_status);
                if (!intel_dp_update_link_train(intel_dp, crtc_state, DP_PH=
Y_DPRX)) {
                        lt_err(intel_dp, DP_PHY_DPRX, "Failed to update TX =
FFE settings\n");
                        return false;
                }

Regards,
Suraj Kandpal

> > Regards,
> > Suraj Kandpal
> >
> > Regards,
> > Suraj Kandpal
> >
> > > +		delay_us =3D
> > > drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> > >  	}
> > >
> > >  	if (try =3D=3D max_tries) {
> > > --
> > > 2.25.1

