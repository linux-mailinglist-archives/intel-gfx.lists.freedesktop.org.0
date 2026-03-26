Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAVyEAecxGki1gQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 03:37:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7387132E6A0
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 03:37:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7196B10E206;
	Thu, 26 Mar 2026 02:37:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UDh4+/uu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED0010E206;
 Thu, 26 Mar 2026 02:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774492676; x=1806028676;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fh0twgBkQk2RBdSewtC0yn1g5z3eZEdwV9HL/zKlRjI=;
 b=UDh4+/uuldBdGCBGlhAVxVPHQx1Hevu0/Y5GLiffJui2el6NxzUuc07F
 DxztQAiH+TuL+voFYzRoHCDI/B1/lOtFhYTTNDQnG/O+w037FDrqHoTiq
 pXT8RgTZTsSFkQj5fclX8MYjwCzXsoCZylfXfjXe2kyB4pRN9mRu873QC
 hFr1o/Tl7KCwjUa6ESWrH8rx8PdmFNKQU/DJnA4X2Q/rqmT4tp1SJe/Gx
 /Wq2buLYNsjuM/ORgHQRvLuvRRJ4OuPuFS2pnmOtc/CRQGaLt6cOa3fbc
 4pE6dJ8QdEibLi72sNc9cqWx0FBbmjsZvXPoxt8w+bm2+wGW5G5Nulod6 A==;
X-CSE-ConnectionGUID: 7JBgS0qiQyWa68rw+Y/sbw==
X-CSE-MsgGUID: b3hegt6jRrasDV92dphfkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75506833"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="75506833"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 19:37:55 -0700
X-CSE-ConnectionGUID: tBP5vMFtRhCl3nemFWcK3Q==
X-CSE-MsgGUID: RiWDxOmYQG6O1g5izvQ4UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="228930127"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 19:37:55 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 19:37:54 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 19:37:54 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.37) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 19:37:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jy0PTzXaRuzU3BXsmbVdzGIzYb7Va8QJnDGS85JrthLhYliTt07j/bjZwpqgo+oIGnc34rnOkCONmL1DFJrFCupvoivNmNWoMMyJUvfR0wPjchFdiIclivPMcdnCS1wsvWvenprkGqQhvdztFq+0nuqp4LkZbqx7H+QqDdsPaz9jBscKTzgKUIMj6H2sJn7dW0wAmtOCiUaUWZOdcff3vMBfRyouSXZiaPQvM0KYgXgXUD6Dm6G0QdzITHjtqqwD2uwT+cNXxGx51Fx+4rtYov/KzSRclstLR3LN+dnFXsjXUUAM11dL2WOckdaCQBKdb45KIee8et284M8DIf1Uqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SHi+d1KIJhudo3wiwlZ+cbtmweIeq2MNk3TNcf2fBP0=;
 b=TidrguixK9vTiSBSG05RCW5EDBmUdaRJ+dSZF3162NupXAdhY/gdVi6R3ojlx6LP5cixkMvwMVZFFai4WNJ2bTHLJ5QdiqwMJdXtNnTnAkra3lniZ4x+se2c6auw2NBHZMuUzYI158iP8K5bVQPw/exrncCxMMmvlzRTM9ullFJ0MHCuF3h6JOzeXxrOVAiy+49ixAS22TkfToP8IyKn02DGryb3lKD9MTMelLGe0t4MCIjbJiBlox+CxLYZcFZuw4+mCmYfjYLeDm8QSKqiR7jtK1Ag1U0/qZeIjDjz+R5X7bx8SDMdvgOQ/sBFg0auIdma8jMQCf1TOBFQBnkZJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH3PPF23335A1E7.namprd11.prod.outlook.com
 (2603:10b6:518:1::d0e) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Thu, 26 Mar
 2026 02:37:52 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%4]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 02:37:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "S,
 Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 04/26] drm/i915/writeback: Add some preliminary
 writeback definitions
Thread-Topic: [PATCH v3 04/26] drm/i915/writeback: Add some preliminary
 writeback definitions
Thread-Index: AQHcvEesPfUhZUns7UGSDdfCPIvI3rW/IymAgAD1pXA=
Date: Thu, 26 Mar 2026 02:37:52 +0000
Message-ID: <DM3PPF208195D8D006B1B9713312D4E3F79E356A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-5-suraj.kandpal@intel.com>
 <acPMf-mh689g7TuO@intel.com>
In-Reply-To: <acPMf-mh689g7TuO@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH3PPF23335A1E7:EE_
x-ms-office365-filtering-correlation-id: 5c498d36-c106-45a0-7740-08de8ae0ad7a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: 6XsgJ1iPv1atGf6wwnIsN/XsL1rnvWCVyYQ2os3vS4ECQO8+mf9JGyk7aXDm9VBWIoQanI9+CX6l0icIfycbPF0luC9m/cYSgMDrThbggzvRMeD0NGArGrLsvZ5A5a6XNKOHKOVRgfxZmgnBB4OWgCHri0flQEAe1aU48xFXl5JDvxxkqiE+M+TnFA0MI176gG1EVxQyM13zykObRkp6CrUcvVKbrEodqwJJEgKbBx4MScpoml48eR7TyekCf2dSgZbM3EeEtvL6dzBB2bPoizw7tCoSWm3Jx6Ht+EWeRQoYa1ipjs28LWZKMM58pRNn07SJIOAQn+GKojhn5Fe/l8lAMLWE3G6KPReW1yQOmloJFLuKQAMr+NVcCe+OTi2ZZhnAbkp/g/aiNrLikh+t9ldRxVS0rHvK4lVv/+rETKrlXadSLlaOb7IV/kLybI2zoZPnVQ8gPSOXbhlr/3unizm4WqDi2PoEhigm8ofg2blhboKEeA8neCZGVHTNDoEueBI26Ysh1ESpFQT4vfcKIlSsNLXDOuYgQT7rP/cruYfaBal06HhC4Y/nQG94ar+qXaVXH6MQOAJFGF3XEsCMu2yorF++OwV/e4ONUVWjkeEFrQ+z8LsZk1QoDmJ0PXBiSiciJzOqHlX064kYNGPaN2MZWL++PeIJDzPY+ForMQSKEQ+/iLobPO9t7rCFrZjGBd0cw8q5uYda2g7Ix6Pxri8EjE8JY35GcIXF2p0qGjoPqJpU5q/J7HVqwAMiRShWBAShHAwV0VZ0nXrFHOkZAB01+YYXYRZiVj9mBPSsWbo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?nJ7svFViG1Drs9hRa+sxF3L4g4kzcqKAoi8Bf7PDkvEs4oD8MtY4D6HKsA?=
 =?iso-8859-1?Q?ChbgtJOtRsEXEoy6y9wPA2HvZLCYruJtDyukG+uDEGA5xP9NiME1Sx3FGC?=
 =?iso-8859-1?Q?LEUJrkv1VPg+F6sNQjuqi8FAULM0LzS3eEj0WCTmrWQ9ZrceqmnQgy8m2n?=
 =?iso-8859-1?Q?GKmtWGbORSHymx9unGik6bG0Xyw4/wDhr/nY43/Xhh2jDJ+mchhcWHfdNl?=
 =?iso-8859-1?Q?Y0Qsa/8w0VdjlrEPOa7nz795dep8E7LZKCUFK3dsACGZBeLfjFUUL7SJsH?=
 =?iso-8859-1?Q?rLm2gOJ8RBWiDVBICsrVteg+DELAj4h4POjSLRJgiXFkAY4KPeWKOoCvdG?=
 =?iso-8859-1?Q?xwdH2Nc/Y0ZYBmNHOW1R7K3xoyKBAUbVU8dDozajWHZxbpEtk6nSg4G5ap?=
 =?iso-8859-1?Q?aBjU+skNtMrJvDsBUPHVYTBjzcJAJLJNBvV54UNSCW61l7QjSUOUDbXUWS?=
 =?iso-8859-1?Q?tKJ54kST/ZLR5+FIUunXp8hsobtMbipWA92m2qYr1rJoZ58/vnBPKL4IkQ?=
 =?iso-8859-1?Q?o8pNJqQ28zF05+S2H6/Lkl6/QRKwFdsVdt5B5FgoUPBRqin3+I/1D1UmM2?=
 =?iso-8859-1?Q?sPmqvKpUQvKASfSnJQ3Tt1lqJM9xXkGK4AORitiQk8cW6S3EDdLJlFcdzz?=
 =?iso-8859-1?Q?S4SXj9K4+Zxdpzf6ycbw2zTuxun/Q7o2PC/CpHCJLI/HGRpDBWFE17ccZn?=
 =?iso-8859-1?Q?y7SlfBuKn/rIaKo0aBVC4np9qr5a2B3FGTaonywAG3sAcGfCyNPlcpuIAH?=
 =?iso-8859-1?Q?Oqc8cAZvDjVEcOeXMGosiZL+qGWJK2mjcgyBxSIDLqCs33OXoazrUJO1YO?=
 =?iso-8859-1?Q?HaU74vyTUoXq3n+GBYM+FZZJstBwzDbp7tSNFv7ifHVnmgkKHCx7Pc8mPy?=
 =?iso-8859-1?Q?SstRBbhBeXjty95ZvmK4SNxtZ3XR/7iEZEoNoRp1FzlYLmyT+veIQzI8Pd?=
 =?iso-8859-1?Q?UWZwJ5FOAD5n/Q06jlrp8u6fvHDpxDov5uyENq3L6K+MVl5aByhuLnMs+E?=
 =?iso-8859-1?Q?LHyGX5r7wQTCGvNZPZth6/RKg6AZlJDJj1h9jbCv9R6JBsmriHKl5kHGjv?=
 =?iso-8859-1?Q?sy1czG4tSslNzCf6lZ763WtkhqdDevZVZnLonGVPYvNx1fPDhe70adXWmq?=
 =?iso-8859-1?Q?gLF9fNePwlLCMFh1WrBIa277qzVJI9+Up3kKdekQdPvcnQnnh3yZfOYO91?=
 =?iso-8859-1?Q?P5L+/eDWUKnEyFMsdxfGa4wbd+Z/4b3yYQsQIwSoxYTKbInI28GNzSdtmO?=
 =?iso-8859-1?Q?GJR5rZHM8q/GcI06Ttx/Tbc8HeXC/EJkdEqth2NnitInXw+1uypseorcSb?=
 =?iso-8859-1?Q?Yjv1KA5MN5/nTrEFndAaZqGUf4A7sg1iFrRgXqx/jSVTDqYwbtse/QVRf+?=
 =?iso-8859-1?Q?A8yGBfAO2q3wskTRIvjUhkZNUkieyUERRcHS7q4XN3Fo4LaZtT+NBHWEUA?=
 =?iso-8859-1?Q?RYAXxu4vb3c2670yT6Tu526KkVp81pd2VJfBM5jiv+IXUUQOl50SsgmWHF?=
 =?iso-8859-1?Q?RJYVrH2Vy6dgPC1Pd4bf+neeuJKnAdITzLQItln0ZguU4MMoBGyvSAsGG8?=
 =?iso-8859-1?Q?xp09LjThuNqJ/wp8rzINlf8JDmO9FrW7hzFriMe4PSE9Jq80o6xUvOWc1I?=
 =?iso-8859-1?Q?3yDZJVtv2Gx00+8b1Yy/9MU/flz1tn3y07JWaccfKduMbwLfXoh8vSaaAW?=
 =?iso-8859-1?Q?urvwVMmHIMABNLfwNcvVMZaBOM/twCPAbhG76hkMDPPoCghoPRQfuTSoXT?=
 =?iso-8859-1?Q?8bUYiNriZk8/9vgTqoI4I5xTB+UIZuaLuQR2elT01IFI5aRWi699bqPf5h?=
 =?iso-8859-1?Q?he3sekebxg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vHpRGCWNZdxmACT5GFYlUJ0AkYADDJciodlHNT5Vyajy3FvZfKdjOWepklLfhIJw2ihhCvM3Jqi4pS7PVsfrKhgz7M7WX7bypUBTYRWwG+5KhWiftM7yegsxp/jQGnaH/EhhS6xqqgfFHAP7yzz3A2BVxmSQiTbRbwnzq1t0wYaqcFg28F9wKlWshPQyj0ecTvwSiqcnEAV5ONimaLECb4qpj05Gs2jQMpWd8oHzK+HU6OTmETrN54bS5Z2x0vU6jVl9vyObRHxc7xnedMpTL7Qt9MP+JKBNJbSzejm2kIKiSWEeW1BQ0V4V03FE2dwVVxdAro8tirvCoqI2FlmF3A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c498d36-c106-45a0-7740-08de8ae0ad7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 02:37:52.0457 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: INIvcGJPjo3TQD+qjGwkZh30Yk+K18NL/AvLMykt4trJuDkn+uXQcAuXboL5BGoi/77vuc391xypBcW95vi2dA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF23335A1E7
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: 7387132E6A0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: Re: [PATCH v3 04/26] drm/i915/writeback: Add some preliminary
> writeback definitions
>=20
> On Wed, Mar 25, 2026 at 04:37:22PM +0530, Suraj Kandpal wrote:
> > Add some preliminary definitions like, output type and transcoder
> > related to the writeback functionality.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_acpi.c     |  1 +
> >  .../drm/i915/display/intel_crtc_state_dump.c  |  2 +-
> > drivers/gpu/drm/i915/display/intel_display.c  |  3 +-
> > drivers/gpu/drm/i915/display/intel_display.h  |  4 +++
> >  .../drm/i915/display/intel_display_device.c   | 29 +++++++++++++++++--
> >  .../drm/i915/display/intel_display_device.h   |  2 +-
> >  .../drm/i915/display/intel_display_limits.h   |  2 ++
> >  .../drm/i915/display/intel_display_power.c    |  4 +++
> >  .../drm/i915/display/intel_display_power.h    |  2 ++
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  10 files changed, 44 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c
> > b/drivers/gpu/drm/i915/display/intel_acpi.c
> > index e06f324027be..89b8d3b4f1f2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_acpi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
> > @@ -256,6 +256,7 @@ static u32 acpi_display_type(struct intel_connector
> *connector)
> >  		break;
> >  	case DRM_MODE_CONNECTOR_Unknown:
> >  	case DRM_MODE_CONNECTOR_VIRTUAL:
> > +	case DRM_MODE_CONNECTOR_WRITEBACK:
> >  		display_type =3D ACPI_DISPLAY_TYPE_OTHER;
>=20
> I don't think we want to add this stuff to the DIDL/etc.
> Something somewhere needs to exclude these from that.

Hmm will have a look how that can be done

>=20
> >  		break;
> >  	default:
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > index 234843b8f83a..4e9e880d2778 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > @@ -53,7 +53,6 @@ intel_dump_infoframe(struct intel_display *display,
> > }
> >
> >  #define OUTPUT_TYPE(x) [INTEL_OUTPUT_ ## x] =3D #x
> > -
>=20
> Spurious change.

Ahh sure will remove it.

>=20
> >  static const char * const output_type_str[] =3D {
> >  	OUTPUT_TYPE(UNUSED),
> >  	OUTPUT_TYPE(ANALOG),
> > @@ -67,6 +66,7 @@ static const char * const output_type_str[] =3D {
> >  	OUTPUT_TYPE(DSI),
> >  	OUTPUT_TYPE(DDI),
> >  	OUTPUT_TYPE(DP_MST),
> > +	OUTPUT_TYPE(WRITEBACK),
> >  };
> >
> >  #undef OUTPUT_TYPE
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 10b6c6fcb03f..d433ffaadd65 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -3768,7 +3768,8 @@ static u8 hsw_panel_transcoders(struct
> intel_display *display)
> >  	u8 panel_transcoder_mask =3D BIT(TRANSCODER_EDP);
> >
> >  	if (DISPLAY_VER(display) >=3D 11)
> > -		panel_transcoder_mask |=3D BIT(TRANSCODER_DSI_0) |
> BIT(TRANSCODER_DSI_1);
> > +		panel_transcoder_mask |=3D BIT(TRANSCODER_DSI_0) |
> BIT(TRANSCODER_DSI_1) |
> > +				BIT(TRANSCODER_WD_0) |
> BIT(TRANSCODER_WD_1);
>=20
> WD has existed at least since SKL. Looks like the tagging in BSpec is a b=
it
> inconsistent in that the filter only shows this for SKL+, but I *think* B=
DW has it
> already.
>=20
> >
> >  	return panel_transcoder_mask;
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> > b/drivers/gpu/drm/i915/display/intel_display.h
> > index 552a59d19e0f..07d9f62e0866 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -66,6 +66,10 @@ static inline const char *transcoder_name(enum
> transcoder transcoder)
> >  		return "DSI A";
> >  	case TRANSCODER_DSI_C:
> >  		return "DSI C";
> > +	case TRANSCODER_WD_0:
> > +		return "WD 0";
> > +	case TRANSCODER_WD_1:
> > +		return "WD 1";
> >  	default:
> >  		return "<invalid>";
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c
> > b/drivers/gpu/drm/i915/display/intel_display_device.c
> > index be55ef8ea617..129b1c561847 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> > @@ -22,6 +22,7 @@
> >  #include "intel_display_wa.h"
> >  #include "intel_fbc.h"
> >  #include "intel_step.h"
> > +#include "intel_writeback_reg.h"
> >
> >  __diag_push();
> >  __diag_ignore_all("-Woverride-init", "Allow field initialization
> > overrides for display info"); @@ -145,12 +146,16 @@ static const struct
> intel_display_device_info no_display =3D {};
> >  		[TRANSCODER_B] =3D PIPE_B_OFFSET, \
> >  		[TRANSCODER_C] =3D PIPE_C_OFFSET, \
> >  		[TRANSCODER_EDP] =3D PIPE_EDP_OFFSET, \
> > +		[TRANSCODER_WD_0] =3D PIPE_WD0_OFFSET, \
> > +		[TRANSCODER_WD_1] =3D PIPE_WD1_OFFSET, \
> >  	}, \
> >  	.trans_offsets =3D { \
> >  		[TRANSCODER_A] =3D TRANSCODER_A_OFFSET, \
> >  		[TRANSCODER_B] =3D TRANSCODER_B_OFFSET, \
> >  		[TRANSCODER_C] =3D TRANSCODER_C_OFFSET, \
> >  		[TRANSCODER_EDP] =3D TRANSCODER_EDP_OFFSET, \
> > +		[TRANSCODER_WD_0] =3D TRANSCODER_WD0_OFFSET, \
> > +		[TRANSCODER_WD_1] =3D TRANSCODER_WD1_OFFSET, \
> >  	}
> >
> >  #define CHV_PIPE_OFFSETS \
> > @@ -581,7 +586,8 @@ static const struct platform_desc hsw_desc =3D {
> >  		.__runtime_defaults.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) |
> BIT(PIPE_C),
> >  		.__runtime_defaults.cpu_transcoder_mask =3D
> >  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> > -		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
> > +		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) |
> > +		BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1),
> >  		.__runtime_defaults.port_mask =3D BIT(PORT_A) |
> BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
> >  		.__runtime_defaults.fbc_mask =3D BIT(INTEL_FBC_A),
> >  	},
> > @@ -678,7 +684,8 @@ static const struct intel_display_device_info
> skl_display =3D {
> >  	.__runtime_defaults.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) |
> BIT(PIPE_C),
> >  	.__runtime_defaults.cpu_transcoder_mask =3D
> >  	BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> > -	BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
> > +	BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) |
> > +	BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1),
> >  	.__runtime_defaults.port_mask =3D BIT(PORT_A) | BIT(PORT_B) |
> BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
> >  	.__runtime_defaults.fbc_mask =3D BIT(INTEL_FBC_A),  }; @@ -830,6
> > +837,7 @@ static const struct platform_desc cml_desc =3D {
> >  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
> >  		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
> >  		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
> > +		BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_0), \
> >  	.__runtime_defaults.port_mask =3D BIT(PORT_A) | BIT(PORT_B) |
> > BIT(PORT_C)
> >
> >  static const enum intel_step bxt_steppings[] =3D { @@ -884,6 +892,8 @@
> > static const struct platform_desc glk_desc =3D {
> >  		[TRANSCODER_EDP] =3D PIPE_EDP_OFFSET, \
> >  		[TRANSCODER_DSI_0] =3D PIPE_DSI0_OFFSET, \
> >  		[TRANSCODER_DSI_1] =3D PIPE_DSI1_OFFSET, \
> > +		[TRANSCODER_WD_0] =3D PIPE_WD0_OFFSET, \
> > +		[TRANSCODER_WD_1] =3D PIPE_WD1_OFFSET, \
> >  	}, \
> >  	.trans_offsets =3D { \
> >  		[TRANSCODER_A] =3D TRANSCODER_A_OFFSET, \ @@ -892,6
> +902,8 @@ static
> > const struct platform_desc glk_desc =3D {
> >  		[TRANSCODER_EDP] =3D TRANSCODER_EDP_OFFSET, \
> >  		[TRANSCODER_DSI_0] =3D TRANSCODER_DSI0_OFFSET, \
> >  		[TRANSCODER_DSI_1] =3D TRANSCODER_DSI1_OFFSET, \
> > +		[TRANSCODER_WD_0] =3D TRANSCODER_WD0_OFFSET, \
> > +		[TRANSCODER_WD_1] =3D TRANSCODER_WD1_OFFSET, \
> >  	}, \
> >  	IVB_CURSOR_OFFSETS, \
> >  	ICL_COLORS, \
> > @@ -905,6 +917,7 @@ static const struct platform_desc glk_desc =3D {
> >  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
> >  		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
> >  		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
> > +		BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1), \
> >  	.__runtime_defaults.fbc_mask =3D BIT(INTEL_FBC_A)
> >
> >  static const u16 icl_port_f_ids[] =3D { @@ -975,6 +988,8 @@ static
> > const struct platform_desc ehl_desc =3D {
> >  		[TRANSCODER_D] =3D PIPE_D_OFFSET, \
> >  		[TRANSCODER_DSI_0] =3D PIPE_DSI0_OFFSET, \
> >  		[TRANSCODER_DSI_1] =3D PIPE_DSI1_OFFSET, \
> > +		[TRANSCODER_WD_0] =3D PIPE_WD0_OFFSET, \
> > +		[TRANSCODER_WD_1] =3D PIPE_WD1_OFFSET, \
> >  	}, \
> >  	.trans_offsets =3D { \
> >  		[TRANSCODER_A] =3D TRANSCODER_A_OFFSET, \ @@ -983,6
> +998,8 @@ static
> > const struct platform_desc ehl_desc =3D {
> >  		[TRANSCODER_D] =3D TRANSCODER_D_OFFSET, \
> >  		[TRANSCODER_DSI_0] =3D TRANSCODER_DSI0_OFFSET, \
> >  		[TRANSCODER_DSI_1] =3D TRANSCODER_DSI1_OFFSET, \
> > +		[TRANSCODER_WD_0] =3D TRANSCODER_WD0_OFFSET, \
> > +		[TRANSCODER_WD_1] =3D TRANSCODER_WD1_OFFSET, \
> >  	}, \
> >  	TGL_CURSOR_OFFSETS, \
> >  	ICL_COLORS, \
> > @@ -997,6 +1014,7 @@ static const struct platform_desc ehl_desc =3D {
> >  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
> >  		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
> >  		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
> > +		BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1), \
> >  	.__runtime_defaults.fbc_mask =3D BIT(INTEL_FBC_A)
> >
> >  static const u16 tgl_uy_ids[] =3D {
> > @@ -1142,6 +1160,8 @@ static const struct platform_desc adl_s_desc =3D =
{
> >  		[TRANSCODER_D] =3D PIPE_D_OFFSET,
> 		\
> >  		[TRANSCODER_DSI_0] =3D PIPE_DSI0_OFFSET,
> 		\
> >  		[TRANSCODER_DSI_1] =3D PIPE_DSI1_OFFSET,
> 		\
> > +		[TRANSCODER_WD_0] =3D PIPE_WD0_OFFSET, \
> > +		[TRANSCODER_WD_1] =3D PIPE_WD1_OFFSET, \
> >  	},
> 	\
> >  	.trans_offsets =3D {
> 	\
> >  		[TRANSCODER_A] =3D TRANSCODER_A_OFFSET,
> 		\
> > @@ -1150,6 +1170,8 @@ static const struct platform_desc adl_s_desc =3D =
{
> >  		[TRANSCODER_D] =3D TRANSCODER_D_OFFSET,
> 		\
> >  		[TRANSCODER_DSI_0] =3D TRANSCODER_DSI0_OFFSET,
> 		\
> >  		[TRANSCODER_DSI_1] =3D TRANSCODER_DSI1_OFFSET,
> 		\
> > +		[TRANSCODER_WD_0] =3D TRANSCODER_WD0_OFFSET, \
> > +		[TRANSCODER_WD_1] =3D TRANSCODER_WD1_OFFSET, \
> >  	},
> 	\
> >  	TGL_CURSOR_OFFSETS,
> 		\
> >
> 	\
> > @@ -1169,7 +1191,8 @@ static const struct intel_display_device_info
> xe_lpd_display =3D {
> >  	.__runtime_defaults.cpu_transcoder_mask =3D
> >  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> >  		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
> > -		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
> > +		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1) |
> > +		BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1),
> >  	.__runtime_defaults.port_mask =3D BIT(PORT_A) | BIT(PORT_B) |
> >  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) |
> BIT(PORT_TC4),  };
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> > b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index 1170ac346615..90aa629595db 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -292,7 +292,7 @@ struct intel_display_runtime_info {
> >  	u32 rawclk_freq;
> >
> >  	u8 pipe_mask;
> > -	u8 cpu_transcoder_mask;
> > +	u16 cpu_transcoder_mask;
>=20
> Ugh. You'll need to go over the entire codebase to make sure we never use=
 u8
> for transcoder masks.
>=20

That's true but currently if this is not done we end up running into an err=
or since now transcoders have increased, do you want me to add a patch in t=
his series that basically makes sure that
We always use a u8 transcoder everywhere or should I send a separate series=
 when I change this from u8 to u16 and the corresponding changes that come =
with it.
Open to other ideas on how I can get around this issue without having to ch=
ange transcoder mask.

> >  	u16 port_mask;
> >
> >  	u8 num_sprites[I915_MAX_PIPES];
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h
> > b/drivers/gpu/drm/i915/display/intel_display_limits.h
> > index 453f7b720815..a99e269b1aee 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_limits.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
> > @@ -45,6 +45,8 @@ enum transcoder {
> >  	TRANSCODER_DSI_1,
> >  	TRANSCODER_DSI_A =3D TRANSCODER_DSI_0,	/* legacy DSI */
> >  	TRANSCODER_DSI_C =3D TRANSCODER_DSI_1,	/* legacy DSI */
> > +	TRANSCODER_WD_0,
> > +	TRANSCODER_WD_1,
> >
> >  	I915_MAX_TRANSCODERS
> >  };
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index ec96b141c74c..448f1c57439d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -79,6 +79,10 @@ intel_display_power_domain_str(enum
> intel_display_power_domain domain)
> >  		return "TRANSCODER_DSI_A";
> >  	case POWER_DOMAIN_TRANSCODER_DSI_C:
> >  		return "TRANSCODER_DSI_C";
> > +	case POWER_DOMAIN_TRANSCODER_WD_0:
> > +		return "TRANSCODER_WD_0";
> > +	case POWER_DOMAIN_TRANSCODER_WD_1:
> > +		return "TRANSCODER_WD_1";
> >  	case POWER_DOMAIN_TRANSCODER_VDSC_PW2:
> >  		return "TRANSCODER_VDSC_PW2";
> >  	case POWER_DOMAIN_PORT_DDI_LANES_A:
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> > b/drivers/gpu/drm/i915/display/intel_display_power.h
> > index d616d5d09cbe..fc24d7153ef8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > @@ -42,6 +42,8 @@ enum intel_display_power_domain {
> >  	POWER_DOMAIN_TRANSCODER_EDP,
> >  	POWER_DOMAIN_TRANSCODER_DSI_A,
> >  	POWER_DOMAIN_TRANSCODER_DSI_C,
> > +	POWER_DOMAIN_TRANSCODER_WD_0,
> > +	POWER_DOMAIN_TRANSCODER_WD_1,
>=20
> This patch is doing about a dozen different things. Please split it up.
>=20

Sure will do

Regards,
Suraj Kandpal

> >
> >  	/* VDSC/joining for eDP/DSI transcoder (ICL) or pipe A (TGL) */
> >  	POWER_DOMAIN_TRANSCODER_VDSC_PW2,
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index e2496db1642a..a43625e30430 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -83,6 +83,7 @@ enum intel_output_type {
> >  	INTEL_OUTPUT_DSI =3D 9,
> >  	INTEL_OUTPUT_DDI =3D 10,
> >  	INTEL_OUTPUT_DP_MST =3D 11,
> > +	INTEL_OUTPUT_WRITEBACK =3D 12,
> >  };
> >
> >  enum hdmi_force_audio {
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
