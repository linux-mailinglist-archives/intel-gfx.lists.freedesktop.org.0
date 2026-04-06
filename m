Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cABUBLEc1GnHrAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 22:50:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D753A7554
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 22:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB39F10E2A6;
	Mon,  6 Apr 2026 20:50:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IHfvmUOX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B29E510E2BB;
 Mon,  6 Apr 2026 20:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775508652; x=1807044652;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hXFU8VENy6xmp5pXm/JDMXhA6cbS4BMPcEfoZJ+zxf8=;
 b=IHfvmUOXTet5oH91sBELS9p32u2/UcdiruqKeN4eJrS2D09MlKgZmeR6
 m+4Oft+j36JqYYnugzT5fjlaf/nx5+ytYHx6qX+jA4KmRQL3iHL/lOykT
 FCi4GRwABpwGx8iFXrKrnay3yyp1/zJMRV6OjIuS+pEShPHe1/U1pmrSS
 pG9I+DLoPcjGKMOr33I/eNG0sAnIe8/Dht36bXTJ4Q3mYn3izzqKmDtMt
 9Ze4qrQRzj0z5DMjKYbzkdua8qADhY/6vYTNpDcX696aOSSeJN+KQ65yY
 605Winj9IY4aqKOklEjB5ulAga1FoiX1i/zHnLaKv4KmYG/YTNb8o5sSl A==;
X-CSE-ConnectionGUID: v44Rg+t0SHapkcf1kNKjaA==
X-CSE-MsgGUID: iTZawtdKTyeAkQ4ClMsXaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="101917178"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="101917178"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 13:50:52 -0700
X-CSE-ConnectionGUID: jIXhOLluT3GpjkQzXZLKEg==
X-CSE-MsgGUID: 14nd5pW5RZSghcCUh4dI+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="229639339"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 13:50:52 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 13:50:51 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 13:50:51 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.52) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 13:50:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IkzXmFwxb6PYtgzeRFls1DtLLZ9c6ShsSKsLoHYQdw5Ptw/1JOZTPBYEnvFFWan18TDnnN/uae8U0VdGXYM21+9qKgEpw2KGMnFz/fcDZmL6dHmiIlV+riPM8DmC91BWUceD39LzaOrHhX9DvGJQvQERO0p4QWu5oYxASk3BgiQde1ngPwJmPJLIIy2mel7AH5e9CY7V3WKse3FIdyTqkszic4T4isLc0yFSA5FyERMRENv8wCAOEo3a7OQVtrP2NiFCKJ323SiJRkMcsutfSennXgGRxNnSlKoq4pSoOIsFjBtoYMU1dLIGGXBAiHSX07FH3QEmja1VAiiUlmHd7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P2mn8fl19juDtiFuS1Mqps6PQyjcLWHe1EUc3IvHKTI=;
 b=gYDaJt/x4iFI070UFKGu2VAlxVy4YoBlS4qKFkxd4w912FaRYLifzdhbmrPCuo9oEiMRSSFiDpYnZ6M2Ihnfzgt6pohbsMLF/em+4OHDr2ftFFGAHeRG9Vz3St06NPkwysGdxy8rVu0VPqlMlX2n9SuDuVPuMN+30EemyCDn0ln7rC/KcweXTZXVPuu+kA5ns2dT8AOdSuKruIQFhuB7nBX7Pf9pYRlerOmxxeF819AIZlBkIAJmm/OOPL+vOjunY/UgF0ZjSHV0pluhgVyVEThZ22bbqQCXmtjPn7yttRT6gLeQ2cCEAWvm2yZvCe750hFko174ozz7Fo5t3gKnpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH8PR11MB6951.namprd11.prod.outlook.com (2603:10b6:510:225::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Mon, 6 Apr
 2026 20:50:49 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 20:50:49 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v3 09/12] drm/i915/cmtg: Add trigger to enable/disable cmtg
Thread-Topic: [PATCH v3 09/12] drm/i915/cmtg: Add trigger to enable/disable
 cmtg
Thread-Index: AQHcswMR59ragFuHgEiohkMnHqOBvbXSpewA
Date: Mon, 6 Apr 2026 20:50:49 +0000
Message-ID: <DM4PR11MB6360498A12F769ED4668506BF45DA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
 <20260313153300.3530695-10-animesh.manna@intel.com>
In-Reply-To: <20260313153300.3530695-10-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH8PR11MB6951:EE_
x-ms-office365-filtering-correlation-id: b8656f9c-b8c7-4f77-30c3-08de941e2f12
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: LUhKZ2JcailjNSpQ15ywgD9tEso6g4dkY2xgxPPbqKl+2rj+afwShsdUM1aMf/ETEATcCKeDRqc3YDpds0AiwtdmoIUpaOSpHT/aHwCDDvVhuIkadEszA94T+Lmktxhooro+ACseVDmg96q4Jg+QoghAVKQtXo80Unwz2uGfeLNDMrjA6xo10XDSewQI7ns4BM686LsWTHQGTFIgt6c5LER1pHaphi4u23jz5krEkVEy85G6D2CX3jXQUyOHlb+2gXdnzvFs2/toLlcv+JnYD0IFjgsNC8VgSj+ExDHWulAJFhFifY0ZsAyFj/Ffu3/RKNR3al/jwX44iCPh5M0cgHYWqx0k9EvCTqz5is4D8iu7kpRLFovLs1GiFzTQJo41cailnKP4Z+ShiRLLzR4KbXm9j85dYXPaNOMRWC2fXRyyPQ9uhLREnn8pNXrmdr7kbmJn3kNNxOBalZzp1saxv8dT/19dd/jW/qst9BmuINvFpt6P4kdNQalwsqjRSY2whUw84BwdRvHyKNROSs9UNwcxGBMs/inBd7LzQYqm2LTRPoNI3BC1CDNxTcyFVqlJ39Pakfpa0Qv0vrPZ3zk38N6/n5BKu7m6BaLPF+1GSMBw9WQ/gLhi8v4XFSFxxww9IOY9JIKSKGUIq5cdSGMV8UrbD6w1nJwQnJuQ/QvmR9sa8NbXDT5f2uJipMkw4Me2u91ATekvXNiL8HdXwZ4AZ50cSnMFxRGqECtxxqZ70wgrxxqD/hll8yvOevgjncH+7Sm9vWPptEwhl/oBEL8GmdZRRMMlEI6+1Q1XCcHyJxw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IheEYLV2+NFJCYfNvLGB9ic5BbEVew5xMD2+pG+BEJ7ZeMN1yZBfhWK4jqH9?=
 =?us-ascii?Q?72WHKYBAIjlDDKmmmRA8h1kXHeRSJNUhrW8o23O+7fFuavjqJTNDFal3dxnK?=
 =?us-ascii?Q?hXVW2HoP8jrKyi3rg7dSQkL5+i9JGijRjjld1iFyrpHyb38t27f/w88gIssB?=
 =?us-ascii?Q?UD15b9yllvJJ62055UXY+XViHqjECOp2jlJ6DbLjidevP85J9gVMIcsrrJ0x?=
 =?us-ascii?Q?Ri0tgpn4ytrvHXtDryWTAx7A3chIj5cowlrykQjnMAdc+/VKPWkRiRh520cM?=
 =?us-ascii?Q?FQX1ux0uCpeVSYq1tIq8RPHsPOLXiX951P0pI8bZcCrw9kNQsulAWTU9YzG4?=
 =?us-ascii?Q?xZ/o1MKoWSRbfb77on04FAVZlSbQovQxUtYacXATZ71cHSpzv//4vIhurO36?=
 =?us-ascii?Q?cTuPn0IkZ5D70HtsWNNL9KQyGGQGlbz7c7KoLPKuem5lOfFh1INq2HcbHzqT?=
 =?us-ascii?Q?rMatBryd/ngkyV9jdNWo+CslqA6zfqLPxLtuB0JXzx+/VqAUxaYDz54Pm3YZ?=
 =?us-ascii?Q?4qzKAOruMSRnUjN1RzTQw2jP7FgAJCw6r523sE1fIIV+jlCIN3bH8/ZlG++I?=
 =?us-ascii?Q?xDnt8LpvPMnTwMcULfRhWVI7LaqZTWt1EA+ChAdf0aY2uMDrxrtNA6Ieinl5?=
 =?us-ascii?Q?X74gHVasq+qjuf7kMnRqfqbJWgPtF5DwmUi2a2Mj+fGSfGZ2p8TzXOIHKco0?=
 =?us-ascii?Q?l0TJ8C9UWGFq24tBLWPyapRGNO7iLaQHptLD2Ccv3k/1Jq8thzBz/uOxnGCL?=
 =?us-ascii?Q?pEecEFJw+70hFfiQEi52pw3sqsFVdboxXIVZWZlv8xUWikByRdtEqSOftqtm?=
 =?us-ascii?Q?4p68XcXDSqvlvjwqF1jVdB4svAcg9uUmgwRoNBbD3D1Hl2fWtj3TvvPqLSrX?=
 =?us-ascii?Q?YGe/HE8aCus+Bq2Tty6Z6ecBaz5oedIaFcp/U5zNFHXRV4mDsvJr1dLV5QeA?=
 =?us-ascii?Q?ZruVVGqgbpn57cB8GY84IvwJWUS3NzPH6INSCMPPpvwffSBTyHJ/M5X+PsjF?=
 =?us-ascii?Q?+xT0HWReUuPfyT+5L/DxZUFC7TnbHLronsTaIZYv/EotJZsNMesq1Crj1Vz3?=
 =?us-ascii?Q?s92j7+nye3XnhZf9vwsjWxcQFxswy4z+d0BasZMoYA9fsp/4OOj8H1pdJ6tP?=
 =?us-ascii?Q?HBEFMU/t8fmR7Ottop5+7RSfY4waur7QBVQdqAwVkP7uA9jLJhPjfZI+rhK8?=
 =?us-ascii?Q?ZudNBBvymQr/FyCOW/50PQcgUIHwj8lM7g71FrG0iHW3CLok8yeU0ViidIdY?=
 =?us-ascii?Q?TPBABeHIU4cJ+ojw8ywFjGfWbV9VIMzO7xQA6a2eyf2tBrmvEv6E6TKjlzHk?=
 =?us-ascii?Q?egaQrjTHjgQOYMsdf1B7j2cuqX774FVRpxVRrqEUCAyiV2u9svwqca8aK4ox?=
 =?us-ascii?Q?AeZzU4CQGC/4XS5bHs81pR2/43Hp6OuDg1Fi5Eywv9YrxfuMOdAPIKDhgukT?=
 =?us-ascii?Q?/rbSmNNjhdZokPdA0NQKHPMvXvOM/sP1nmbrEuONhLAU0cVKNMOd5Y+cR7tP?=
 =?us-ascii?Q?VNaKKz3TRmZJ2rJuUgAlj5Szv6z6CLqevmswEfWFKv4dATpLQwI1kC0T2n89?=
 =?us-ascii?Q?QK+yTdSh+Phv+Y6I+xKB/HKRDnZ0AQ2a+qdfoHm5z2QhCv0pjXd2FjE3TseG?=
 =?us-ascii?Q?98I2nlUzBzjPXnN0AyCz+DIzoFdS7PTg7qKgapJdDEfR357O7LLQvfER5QDB?=
 =?us-ascii?Q?jryrybau2BZ+L/qQijQAjIn2Pe6H3YzACKyxvaoGJG1NjqzNQV2xftbVx8pD?=
 =?us-ascii?Q?Hejqrf69wQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: sQuvHyfhziZuL0ldwnJqfb2wsK+xPB0heZUPrynSXAfvXDTupIz8ELWMEWD24HfSCh66rkBVb071VH5MKc+02wln7IG4/+IDM4WJJp3mWiu1uMNKTfRkaq9qDWg/+7dN2DQIdtFQn/e1HYXxHpid65QoEI4Fh2wGvmWPegmhObSlHlgJFTlq5hlkGyDOXyB/tWqfOURTOM6jygcKSoM+K5ADST7uafGl1855s1GEE8qHf7otsKOe3MeKEsM2HzLEHAFNtF1mtxZkSv+ZGsKWltTpYxM8G6UkLW1TPDixwQ4YeSYDY/5BUCchV0j4N+LqzbELrgtTGELas3tzBPP/tQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8656f9c-b8c7-4f77-30c3-08de941e2f12
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2026 20:50:49.2337 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 62xx2H9oHfJndnWlUS9wavsBSIjVxShIIxc7ysj8BchZdzmuh0B57Iu92EI7vopWezxoIooEAMAyhsykfkSrYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6951
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,lists.freedesktop.org:email];
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
X-Rspamd-Queue-Id: 68D753A7554
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Friday, March 13, 2026 9:03 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v3 09/12] drm/i915/cmtg: Add trigger to enable/disable cm=
tg
>=20
> Enable CMTG with fixed refresh rate mode and with dynamic dc state enable=
d.
>=20
> Disable CMTG with transcoder disable or if there is a transition to vrr m=
ode from
> fixed refresh rate mode.
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c          |  5 ++++-
>  drivers/gpu/drm/i915/display/intel_display.c       | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_display_types.h |  4 ++++
>  3 files changed, 18 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index a6ac87fd552e..fff299e1acfb 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -160,6 +160,7 @@ static void intel_cmtg_disable_all(struct intel_displ=
ay
> *display,  void intel_cmtg_disable(const struct intel_crtc_state *crtc_st=
ate)  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	u32 val;
>=20
> @@ -184,7 +185,7 @@ void intel_cmtg_disable(const struct intel_crtc_state
> *crtc_state)
>  			 transcoder_name(cpu_transcoder));
>  		return;

This return without setting flag to false can be an issue. Please check onc=
e.

>  	}
> -
> +	crtc->cmtg.enabled =3D false;

>  	drm_dbg_kms(display->drm, "CMTG: %s disabled\n",
> transcoder_name(cpu_transcoder));  }
>  /*
> @@ -368,6 +369,7 @@ void intel_cmtg_enable_sync(const struct intel_crtc_s=
tate
> *crtc_state)  void intel_cmtg_enable_ddi(const struct intel_crtc_state *c=
rtc_state)
> {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>=20
>  	if (!intel_cmtg_is_allowed(crtc_state))
> @@ -375,5 +377,6 @@ void intel_cmtg_enable_ddi(const struct intel_crtc_st=
ate
> *crtc_state)
>=20
>  	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display,
> cpu_transcoder), 0, CMTG_SECONDARY_MODE);
>=20
> +	crtc->cmtg.enabled =3D true;
>  	drm_dbg_kms(display->drm, "CMTG: %s enabled\n",
> transcoder_name(cpu_transcoder));  } diff --git
> a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 35f5fd02c815..baf4d640bfbf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1080,6 +1080,11 @@ static void intel_post_plane_update(struct
> intel_atomic_state *state,
>  		intel_alpm_lobf_enable(new_crtc_state);
>=20
>  	intel_psr_post_plane_update(state, crtc);
> +
> +	if (!crtc->cmtg.enabled && intel_vrr_is_fixed_rr(new_crtc_state)) {
> +		intel_cmtg_enable_sync(new_crtc_state);
> +		intel_cmtg_enable_ddi(new_crtc_state);
> +	}
>  }
>=20
>  static void intel_post_plane_update_after_readout(struct intel_atomic_st=
ate
> *state, @@ -1793,6 +1798,8 @@ static void hsw_crtc_disable(struct
> intel_atomic_state *state,
>  	struct intel_crtc *pipe_crtc;
>  	int i;
>=20
> +	if (crtc->cmtg.enabled)
> +		intel_cmtg_disable(old_crtc_state);
>  	/*
>  	 * FIXME collapse everything to one hook.
>  	 * Need care with mst->ddi interactions.
> @@ -6917,6 +6924,9 @@ static void intel_update_crtc(struct intel_atomic_s=
tate
> *state,
>  	if (intel_crtc_needs_fastset(new_crtc_state) &&
>  	    old_crtc_state->inherited)
>  		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
> +
> +	if (crtc->cmtg.enabled && intel_crtc_vrr_enabling(state, crtc))
> +		intel_cmtg_disable(new_crtc_state);
>  }
>=20
>  static void intel_old_crtc_state_disables(struct intel_atomic_state *sta=
te, diff --git
> a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8a92ea4f1438..b4c3d8537a99 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1574,6 +1574,10 @@ struct intel_crtc {  #endif
>=20
>  	bool vblank_psr_notify;
> +
> +	struct {
> +		bool enabled;
> +	} cmtg;
>  };
>=20
>  struct intel_plane_error {
> --
> 2.29.0

