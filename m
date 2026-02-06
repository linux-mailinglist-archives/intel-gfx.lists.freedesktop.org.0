Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFQ3Kc1fhWmfAgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 04:28:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C18F9BCB
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 04:28:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF15410E26A;
	Fri,  6 Feb 2026 03:28:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X2VjTTzB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C366510E256;
 Fri,  6 Feb 2026 03:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770348491; x=1801884491;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NIi/jG+gLAxHG54TMr0cimzQh9sU+YZHCkcLfpqhzpM=;
 b=X2VjTTzBHOaVDfO0iuOGqFrsfpqhx1UVABnr77xRJKp+h2fMiuj/2ImL
 kYuX3LCiaUXTWil6ufG/n2OIE/uPQfWhLZsYYbPtkcNJadGiZ3b/prguw
 tNQ6dQCy2LXKID9EV5o6tV+2obpVXncNAPKzXFlvDosATz3CgpV3w2TGR
 glB5eJlLBT5YsYWHLJD8lpkhz5goOZ8ZVt3kp8PXq0405nOM/E58pQ20K
 GU7SOMMXyfWnCSAKA6qvPWXFwEpUz4N06i6YlSobzXWppI3lpY1FQgfrd
 xFf8RBKhHChybd8EVQ5Viy8OImVFG4MHCnXb3W6dG7KPoJrBDdTktWn5S A==;
X-CSE-ConnectionGUID: gXPE6/xZQeyLwdqQmPzQ1g==
X-CSE-MsgGUID: nGm29ZH0SiupYJ3jzf2zcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="71595479"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="71595479"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 19:28:11 -0800
X-CSE-ConnectionGUID: KBf4za/2QYmY2O9hQeHxZw==
X-CSE-MsgGUID: qhC1hO7/TeCT5neSPQQEUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="248358988"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 19:28:11 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 19:28:10 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 19:28:10 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.8) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 19:28:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hHSNWIAj+rtGYpEe75nHF5bS50DsiA7IzjbVR2kMR8iOVXEVGyEsFEpBuVk8D36hv8MdLjH5uAQJeyG9X39W3PF94UpJ0vy/JuZ5uMRexuJr5gT43O8e9dvWSunvLsMltt9qn1Kk+gPX1KhNq67gxze2nOkvuQBsvw1uErhpJ3YpdYvmo7XPBioXHBT4sEhTo2WyZIBR2BXUy/6w2rNZ0g5rCEW51bP49g2PQVoO96lUImQJsCnjp+aLuX9iJ+W8UOKlvUVMppg7D7vhDzpTf4ez4UUSrZQOJPWtTmpjQPxUZ+gb3p7r1purQE1Wv6RCB7fEedgMnP4EHorxZ/BIxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LB4eOCEf4LjEllCC+OcAzezCqVWra613kbj0F+wfF+g=;
 b=nhCRrl2G60ip+lcqf8sbKwpBIt9vVITBvpO/IqDjRMWAAOZE4yBl1M4oj0rv+ZzGjxtRCyh6SoY1s/mB5DHBQKmGBi3UdXmliNXcDqo99xYIurnMKefEalIeETm1+z2rub7QY3MavsoD0GWCImafIk5nSXwQ5/bp5lB4rjmt6lLB+ooWn86xyfWWS/G8UD4iu5PLM9qd22ljbUKap3PWVVJ5rkIVvbriGdz3l1o7JLvv3c4YCVWowOq6252UnYTpU5logMaKFxLJ07/pY/4kt4vFO+i2+2H93zCTmQKCV4R6US6qkqe/ymNC5lhi7Xn/Z6rERymHjgusBrt7TMUo2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB5895.namprd11.prod.outlook.com
 (2603:10b6:a03:42b::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Fri, 6 Feb
 2026 03:28:04 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9564.016; Fri, 6 Feb 2026
 03:28:04 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v2 07/10] drm/i915/cmtg: program sync to port for cmtg
Thread-Topic: [PATCH v2 07/10] drm/i915/cmtg: program sync to port for cmtg
Thread-Index: AQHclRdillyOUF6FU0CEEUm4T1ebprV1Bj/w
Date: Fri, 6 Feb 2026 03:28:04 +0000
Message-ID: <DM3PPF208195D8D780131D2D7B85F491CD1E366A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260203134407.2823406-1-animesh.manna@intel.com>
 <20260203134407.2823406-8-animesh.manna@intel.com>
In-Reply-To: <20260203134407.2823406-8-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB5895:EE_
x-ms-office365-filtering-correlation-id: 315add2d-cd01-44d1-6078-08de652fbd09
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?/nBkhGFxxAWSKCCZTF+hsgr7tivIRXe8xbiK3hPn1fEW8WDzOGyyLgMLb+wy?=
 =?us-ascii?Q?ox6HlM4C8rYM9mH0Y80IWjIYfeloJSVsW5fPIdD24AvU5UIOMJrjtSKRTnHx?=
 =?us-ascii?Q?ynuki/+1hizkf1WHLYpAHMbvt0266THpiPZRPuowVcXiZTUFMYXfDo8Lot7v?=
 =?us-ascii?Q?5mqs2H/jMnSRLpeLdLK0a7sSpXd8j9TpI3HfN1kP1CznjJk6+Ac6o99UtZuz?=
 =?us-ascii?Q?W5vUZ4uDTLcYHQ7d5A67bpJNDEExvgSAjSJqBYcZtB02ijf1U5W11/GamvaK?=
 =?us-ascii?Q?qufUsIhx7o9W/95DDWWqqQ+MuJ/gYJMb36PiQ2WD0B8ZCpyq+S85HVZrz6nk?=
 =?us-ascii?Q?2t1fVuP10Ed4kbgoCM7O8bNgILqHpzFfYbjMbbcSLRThy/VPcBuq/ahBwDs3?=
 =?us-ascii?Q?tFk+lT7q/xOVe/5A8e/n0T/2+pD7ntRJ6m1BjzExuEEf/5q8OZRH5opsesKv?=
 =?us-ascii?Q?cMCl57ovj9aQXQiFr9o00qzQA1pX0JmRfgqq26sThQjOCRlpHdEhnGnEfQQO?=
 =?us-ascii?Q?p/QtpzfbXjAe1KiLv7jIApLfZSQhjLsePg9Yzi85/r5a3kxztnPPEaLy2Dg/?=
 =?us-ascii?Q?lPF4VVrpMxDvvHFbz8UfS2P6sFuWUNydIj/uYMW8aaElV9H2/GIPDN5rFhhR?=
 =?us-ascii?Q?OObCVKtOEa0ZqdvbuIrevJ63IbYpVacTctPHkd+l21yk7t05g06A2wczVsFh?=
 =?us-ascii?Q?7+2ggveIhFyUMJ+DAHcK70t036JctxX01ZDUGKHJ/TNERLEoRTSctbxuYiCC?=
 =?us-ascii?Q?yCkdaXEUs+hSW6NPriRZyPv2KNIsesbgc6tYEVEXZlYmtPz2CxPrs1c8kCyn?=
 =?us-ascii?Q?ia93UTZFYTYSDDo5CubcNwIfPFkQnj/el/BPGo512b7ig7xqFCVucY+nZ6m0?=
 =?us-ascii?Q?OFm75vQyqHLSAAuHx/T0KRxMnJyKUJ3ZU/0xx6om+GcNfcMD9/V1YOkfHTbP?=
 =?us-ascii?Q?H10NJNaz72XpQQyYMrtZekoT4q8HLmQMTCaEWtR+E90D7hDWj3gxFMcABqDc?=
 =?us-ascii?Q?MwImZLLy3vhUphM/FZYiXVRoftgn1rckhxeLBr1JxwKOUv9kkI26m9wagZIA?=
 =?us-ascii?Q?HIOIr/5mTz56HnX6rDv2xxudqDcs8h1vcp8fmVhfhtni3cBtoDIyDvmwd2m3?=
 =?us-ascii?Q?2dBKITHxXq1P4vCHqwQb+7Uc7FuPxwQbcm8j0JmkTZ7tcFp5MYraBdoY01op?=
 =?us-ascii?Q?5V5hrl/N5L0/m5K/4+4ccY9vPsZZ0IZ2nIFuJsPGgBdqGUFdQx1i6jXznD2O?=
 =?us-ascii?Q?DFIMzz4Go01lA1uM5ewEpbuRzxFrbqSBwoZKBU3o3n55bnR7PZhzuyfLc1It?=
 =?us-ascii?Q?XPiG+cRb6twqcUkvt9dNzx+pBl12YAD57mIbHt+h1yJuRWJ9gQj7Tg8IyZeT?=
 =?us-ascii?Q?vNI4tNuQ22VnXythGLO/h3PrAYU+mAvEAcIvRQ0uzfxA8AEUeRvGXGQPoI9/?=
 =?us-ascii?Q?DKJtdYaOTb031J4t/aD9hEtchjVTuEr9tcvBwjUHKw5b/FXTp/N7edTFXagh?=
 =?us-ascii?Q?kplQKA6aELl4gJJ7GCr3oxcTKwuqe8GCGT2gBE117FlgPxOlvFJlFKDlLm63?=
 =?us-ascii?Q?fg5MB7xc+wlT34fM7fTepC6s8d1Dxq/QtIA+bxEIUo8/wlKQ/TQpJZ3KRerY?=
 =?us-ascii?Q?YG8tQ2qie5mDV7WXAxlBttY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?W5F/8DqYtwHKRUWPJX2x0JSDn0U1o7+Bdl35ZJLRrKGuJXiTRuMff7KXbxc+?=
 =?us-ascii?Q?hMTPEIEapsy7yTts17SwIPIcMj9JaDhGKdU35c2qVcTpukK/iNo+npmCEWlc?=
 =?us-ascii?Q?fsH81ZJFgzJVXg3t8l7WGyuKAwA/xBR8tuHCjoWLZy5gcC2eyaMz4YxzF93B?=
 =?us-ascii?Q?G9cw4reu6dXaPD5YrjZTieerdNOD0ElkXgxQMYsfiGxue7fdd+eHE4+gR6k6?=
 =?us-ascii?Q?rOVBElJ8ADE27O78QB5dYY3UX84m5AcqcLJwp65zsUc3GtOaEP9GrFpizrfs?=
 =?us-ascii?Q?piDbfZERfp/D2JQuAukQUMcXhUDabc5WswyCXZvsbW9EIKgNqykzBtKr/HZh?=
 =?us-ascii?Q?a5qmPEJJJ1Q2TFZLKeISUnuUWW06atJYwXE59fVreZ5xHW5BwcozNxJcWo+2?=
 =?us-ascii?Q?C4GGyBzdrxuhOB+cdnq69BxvdCwFjeihJfSpmABQI4w8ovh8UsnsbawIhnFX?=
 =?us-ascii?Q?DoQJgSpEKp96fyn3sIy5rWWkce8KGIgiR2B+YsD4IfBhwsSUrsZVIbms/Jft?=
 =?us-ascii?Q?GibHu7mAkuHwg/QCFVSBBpqTkFDDAxHY4mRZhZRPTt9p7rb2Feiot4C5fBR8?=
 =?us-ascii?Q?0hVqDJOrkC+LobmvRhxmJ14WHWoCUCo4xXbzgitxQoWafnQdSxj3KGDryr1r?=
 =?us-ascii?Q?b9oTk4MEQDF8HVNzn+Cy6Mhzytyh10Lgs1WgofkoKtC9gOUgDXRpX/hmfoIM?=
 =?us-ascii?Q?FZLoC87tdbTFWhk90J0anFtj2Zhsn4hFrstAlAhbvtph/QxLwYHFvmdnwJYI?=
 =?us-ascii?Q?Uaj88P9LmqYXf1uCpysnrz1ebd9DiEZzVfDIU6bAYq0EoN0EE9xAvkQ/Taoi?=
 =?us-ascii?Q?lkx21ZEwowhJ6iGVufWS8+bjVj9s93OlNY8zq/oANSE+2nJKJlA4cJS7TsL1?=
 =?us-ascii?Q?ueuMjZmPM0NA18FiCJcXrN2+fpTiLv/x24fxKQFYnQwMePqFc4M5CH9rTyD/?=
 =?us-ascii?Q?aYOMoGOD/o8kEzVErQu6He1m/ZNVOCKY4WSsIM+JZrCZPmdQTfBNcVcI/hzY?=
 =?us-ascii?Q?OM0X10V7ZuUj+MEgjeD48JtrtMRN1+n0ike11lpv0xMGJwEev9LSttLMEGeV?=
 =?us-ascii?Q?i0yax3SAOWphiUQhIyV7RSrujxo3g/CB+tlABc2mRbaL0r87YkQGiw+IDsCw?=
 =?us-ascii?Q?tWqr3kwGieryj2oGLwXbikBYynJUGjobHVj5f5ympL6Qxpq/k7s/8VwQRPKM?=
 =?us-ascii?Q?BcB/kssQ1NOaqkJLyZoPMdNtfMpTxeEP2w4KfTyIu41uvZVwMTQfZtrRBFg2?=
 =?us-ascii?Q?IuQeQPVBGuWGY5MeQltCtVZ0YI1J8/1ntxsyHwkPG6VhLexA3+6BEFucF5/1?=
 =?us-ascii?Q?9llLPr8o4zxKOxArjkYZS4XtaIBIn/M5P4jM/8T9rV681KgtGXaOhUZ8XTH3?=
 =?us-ascii?Q?2dMSUVkaadE40SVZNAXsQY1qTwIVBxyVLrSYUU9FgxnVzti0DczwiJ1SkT6+?=
 =?us-ascii?Q?HgsRkz1xmH3CidbVtaSTjcwV9zJTHD1pVjHYjlHxwDIJL3q6jOp36XIjDNa9?=
 =?us-ascii?Q?a70+RoxUWelaDhHFr+eYdUtNfPgJRFjo6mSdgFRppF8Jj2dr+YpzSgLm46i+?=
 =?us-ascii?Q?3kPm91F+9nfzmd+ky1FNGrewlSBTmAuOMF/1BI0jbUWnr6OL4YstXtqzZ7Gm?=
 =?us-ascii?Q?dqmDQy5A3usCUSRRY3O2UPIwepXhuscP/ORIBeyEsyVOcuAuqL32KVX743TS?=
 =?us-ascii?Q?9SB9zxGmFe3/tvQ/W4CdrdZCbPmYzgeAsfH14geYx2WRlssS+XXENqG2fX2o?=
 =?us-ascii?Q?oYkFh4gQqA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 315add2d-cd01-44d1-6078-08de652fbd09
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2026 03:28:04.2207 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pKZ/Ortw1rDga8AYq8rQKUcziXugx+LIWGDy12G57C6iHqKRaLw6q4WKgOF1/sM0EPBlSPpf5XVF2AQUdZdu7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5895
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,lists.freedesktop.org:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 35C18F9BCB
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> Animesh Manna
> Sent: Tuesday, February 3, 2026 7:14 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> Subject: [PATCH v2 07/10] drm/i915/cmtg: program sync to port for cmtg

* CMTG

>=20
> Program Cmtg Sync to Port Sync. Set before enabling the timing generator.
> While cmtg start running this bit will be cleared.

* CMTG
Bspec link

>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c      | 3 +++
>  drivers/gpu/drm/i915/display/intel_cmtg_regs.h | 2 ++
>  2 files changed, 5 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 12a081dd7e4d..3af4aefc760e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -258,4 +258,7 @@ void intel_cmtg_enable(const struct intel_crtc_state
> *crtc_state)
>  		       intel_de_read(display,
> TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder)));
>=20
>  	intel_cpu_cmtg_transcoder_set_m_n(crtc_state);
> +
> +	/* Program Cmtg Sync to Port Sync, TRANS_CMTG_CTL */
> +	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder),
> CMTG_SYNC_TO_PORT, CMTG_SYNC_TO_PORT);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index b766ded8686c..0ed767a797c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -18,7 +18,9 @@
>=20
>  #define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
>  #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
> +#define TRANS_CMTG_CTL(id)		_MMIO(0x6fa88 + (id) * 0x100)

What's the point of defining TRANS_CMTG_CTL_A/B if you are not going to use=
 it
Also have a look at how _TRANS_MMIO works
Use that a lot of you register definitions can use that without having to u=
se a formula for
Every def.

Regards,
Suraj Kandpal

>  #define  CMTG_ENABLE			REG_BIT(31)
> +#define  CMTG_SYNC_TO_PORT		REG_BIT(29)
>=20
>  #define TRANS_HTOTAL_CMTG(id)		_MMIO(0x6F000 + (id) *
> 0x100)
>  #define TRANS_HBLANK_CMTG(id)		_MMIO(0x6F004 + (id) *
> 0x100)
> --
> 2.29.0

