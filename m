Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9dzzHMIDMWqmaQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 10:05:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D21D068D063
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 10:05:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=naaSicVd;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6422810E23A;
	Tue, 16 Jun 2026 08:05:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A254110E23A;
 Tue, 16 Jun 2026 08:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781597119; x=1813133119;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e2EAbt1J5lSkUOhzwQ6yVC2523u5sa0Rwy9E3pgCoFA=;
 b=naaSicVdBSdI30ZvIPDXW3CFvJOglQErKf51x2MCUJTYPQIIiWOrvbQo
 /Q2JpNJ6Tww80SZrLhygafCBgWz1lVURNMCbFhGS0e4jPRCuvDg7lrq39
 9omCcUPbaTGyUO4C9+XPcyRzzWDylbCdCqMELmgv7M4KtDpTZRdoWdR3d
 reqLOOI+Zy0CY3Wsn8ZN79QvI5kruLNQvVYSEsUFVyWddGRVHhlVYlCUx
 joIwyxwL+cFg0UBLmJFT4IcACRhR+Y6f9cnCDdU6R+3qkw4JdYpwJlhWf
 wtHzUEAjFd7ifRWHa4iHAr/dkLBsK7z6JI8VZvxITNANkDE1CKqljlfjy Q==;
X-CSE-ConnectionGUID: PVI8S/yHTt+OVwqcsgMkRQ==
X-CSE-MsgGUID: E0TapkZASQ+sGTKmz5ICwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="84918395"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="84918395"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:05:19 -0700
X-CSE-ConnectionGUID: JogCGwMrTu+JUw/3YufNrQ==
X-CSE-MsgGUID: LvTnBsxWQf2RanmNs14fnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="243537627"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 01:05:19 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 01:05:18 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 01:05:18 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.40) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 01:05:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lXfvLSTzRPFc8blv3w+fVeAoz91ATfhNlhgfVffmqffxachaoR0cEcXwzsX4XWtd5hE9xOJFqxbldOH9ufByqs7cj5mIbFB/HnKElWk4JRlCVkj3qU0y3q2EzdLrtJ+Nk6LmbySfqvaiK5MPAcXBX36I4P54QtonfMoJnirs2uYPq70/n4/46C9aSTFkpUIfmIyRg7GJHjDJR+xI+2I7iVrT+6Wps4iX7CAlNyNUbiGfI5u9nlCZ8p31PdsE0uOy0aDMGtanmw0eoHRJBPCJCUt0qTYBdq8onu6YdWfTL+QdnVJx1WQi+jC+y4mnsu279lvv1LxS3hS3jkr2Bf241g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0lniyH4f4l0T89o8nCUpfJknmbcJGJURxTj/5VekbAg=;
 b=B0/BWT9Du4YOvSiWRDrLoW/iHge1FAUSBsmX0pRHGtZPja6kdLRxZqrzVkHGHWgS3Vw0ron9PGuJVXn4trJqNx+yP7VxuokmoORkT5WSLsX4tq/aKSc5EcI5AS5vQaOEFpRlrUHWYesT4vFUQkni1deWWtvEU9KUU+x6zQ3i3HsnBrv+gJ1EVl0oWXS7oXPLgg0TukVmEZgMwM/FbJPmz2K7k8P2P+/ye9rmuSKUuJx2TFXJupYM8+yEco4ecjPJfD54ZeHQKA8DwJrJas4boKS1YAQc54U+RMqN1gNqFlEFgcGKBJtghiqWbtpSXJeBtpbX7/ZJJesC6QIE3vv/1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MN0PR11MB6012.namprd11.prod.outlook.com (2603:10b6:208:373::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Tue, 16 Jun 2026 08:05:16 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 08:05:16 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v9 05/22] drm/i915/display: Rename cpu_transcoder
 parameter to transcoder
Thread-Topic: [PATCH v9 05/22] drm/i915/display: Rename cpu_transcoder
 parameter to transcoder
Thread-Index: AQHc/QaaHe8EPLcpgEqD3BoxrunqXbZA04Tw
Date: Tue, 16 Jun 2026 08:05:16 +0000
Message-ID: <DM4PR11MB6360450C28D55BDB8654E3BBF4E52@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260615200339.885190-1-animesh.manna@intel.com>
 <20260615200339.885190-6-animesh.manna@intel.com>
In-Reply-To: <20260615200339.885190-6-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MN0PR11MB6012:EE_
x-ms-office365-filtering-correlation-id: 9e813ac3-9c73-4e4d-b614-08decb7e0057
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|38070700021|18002099003|22082099003|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: aHigO+tbckgwnHl5kJVecqVgTCWLU91PQspjGTAzxr3/SrjDn5ViUtQ8PYtwiwAmt8UUO+iDOSlea7dMJ78KhCXl+EwNISJ+WUqf2DfEcZi6t6jMQHcBAu9RS3uwXL9FI6K8VBdtA+LgZSdOGIzvwSWg/nrQ6AplEZAxpdQZZpC8kao5Lg7SBIgGUqOpcg6TZn4T+whxKJWvoGCBXdDnY1fsbnB+5bVir7lWk1hVeEmH+enZx7VaUXwwtCjzlTGGWv2B9S5nbXVpg4lNM4oECxkRpomWRIKAwvieX5nPBN9cXowSjMvNhaBuhC0ZIUkCSINKtUPWUMPEfch0w2mCWPijvU9JECA+6L79AApasDB8bvfab2jpNSILInXcrpcGacOdQBYke/xrqpmmudFWwLvmMleuOIer2WgitpC+1aHIqmBSfGCFUBaEg7nNp2DcY/1J1yyv+S41pK4aIucAeCF7KT7WvIztQtZGntWrLt7OGswhMcT6p4FpZIHKTuBZOewsHbcHAXi98aZSv0fZJiAovTtjHkEVEFMbP76UOzSN9yYg00IRo6cdxm7uG6LtBij575WRqfzhSXBVgQkXLMweGEc1bOles1aTx1KULuJjDYOrO5cU2z91rG7MEPPMDu0QBXqzrBzc2yi1X4L982GGpv135lSAfs8oG2zyqrL/o4+pHueg2jOG9b1zBYNq5ZGHq729gx+qo4j8G9n9tahnczCGnq2ieicWy7lD4FHx545niFS1HpJRKT6fWlz4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(38070700021)(18002099003)(22082099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OZMpAAV3PZ0BdfvzSsyDFRy99aFHn1fJ5wKJDtxKr67Vhk7d7teqRyXIJh8f?=
 =?us-ascii?Q?HM/nCRote1eXaPIBFXjgT5/VBrqw9yq9Ab9z9qTGafmLXUGue6jweCw7kW86?=
 =?us-ascii?Q?7xrRPlcxJ6CieeJCNGtK7e8WzW2KFx0iAz2+J7FwHjyxkTLM+AoKYru6ZFh/?=
 =?us-ascii?Q?zXRLX6cKXv8IUOWHLw/rWzi1oqJuMNvG0Eot0cKVr036Q6ZrmHSL53R+22wc?=
 =?us-ascii?Q?SlyYxqv18hA9psdgOgOuj+5BOjq8/Xowu76rw4XQK+RqNsmRTgj/EhFGFXz2?=
 =?us-ascii?Q?DCQFSFQKxEPS7dTvpac4lDDeekD7jAeKF+gpI5QkcibND8kJSgoVDKzhfSvu?=
 =?us-ascii?Q?9TCAc7bgH4d9nzZtG6I0ksLbIIst3oiyfdv6L9eRY2qyq5Jp//5cng4fxhkx?=
 =?us-ascii?Q?WlK59qGxU2O0XE1bpXID+ert+P9M5r8bxj9G1OSmBCTNDjL/Bqwn4PvHaXxQ?=
 =?us-ascii?Q?vC48H5I4KmE0qagPIRGSICh0f6zLbuynx2I7fqWFyIkEq3jCwUqbruhvd2eb?=
 =?us-ascii?Q?9YFptHZaMArjzgcnncK/Kq/+ImLMGRCBsHUsH3kYpEMOk8U/NTHVNAaV9U7D?=
 =?us-ascii?Q?5tyk/jeXdrmYCgcP4J77RY4WbLdDpN7Idh7pz3lqECLJqr9ZOb80sONJBwnV?=
 =?us-ascii?Q?diNdFb9hdixArjWL+hkR1jXd2G3b8Psk3llX4kH/xrblWbUgmvH0f9eJEtLi?=
 =?us-ascii?Q?vq8XeUpV5+Z+J4DWIcvXTAYV2aKWJNPWoa4XnsFaFqxzFzqW5Ue0C/p/uCZG?=
 =?us-ascii?Q?d0fiDoboee7CS/WYwIBiulZor3wC2YaXpKAF0+p5pEBq2Rlew51Yl/qcvpl3?=
 =?us-ascii?Q?A9lCy5r6uuE6G1DrEs8tShpGFx8QyLZWCP2Ex56UmQ6UaXUgQu+w632V73mq?=
 =?us-ascii?Q?OVkIafzKgsn7kz1/AwzshHEq4dRCuZ304zhtoJ+F10OC/DglfW67GqMUch5V?=
 =?us-ascii?Q?qoLfFeJd53KAvu0kQr3NFfSqBu+tyM7LcyZYTzq13ADG1JR4/0DppeoTdP+L?=
 =?us-ascii?Q?Md37ET7py/Dt2/MsGCksN2lSNTp58RPdAiUxm3agREpumgThjApiEpXm3hYQ?=
 =?us-ascii?Q?vl4wewXp+bnv8AySOet56TbUcAVY+cvkU70SUgQWqJz6aNBBzVqb+poyux7o?=
 =?us-ascii?Q?ZQkfmY1kWS0aWpw17Myt8Adrhp/ZoB58E0j3ym/qe9wl3PkkAccuI+CsN7BQ?=
 =?us-ascii?Q?TYivKRu/G59Mp06WYBtO1Opy/gyj5ggvcPukkwQ7CmwCqHTZp1Oy/BWEJOVg?=
 =?us-ascii?Q?+mLCv2dUF9Hnq1RXey+e2pua3ie/E7fX872SCI0uZmToAoKoY86AopqKxfXA?=
 =?us-ascii?Q?2lww5najh9+RdyPi72A8CtFOiAr3tnTzuo2BsphUCKP1usdSHFRnm/exqVbp?=
 =?us-ascii?Q?Ob5U6xr2ZBGdG/4OU6h7FdEYrtmATCinKn6v31B5w40hyXcy54DO3adEsdlE?=
 =?us-ascii?Q?1bd83fnWD6YHKur/rWcaKPMxSVFlPRfOJL5I9UTRXgv4LbjqI4UpSJGUyXSl?=
 =?us-ascii?Q?G2VbP1jAO4qUkq/Z7qzy8ZIxTIjZ8VIF/DEm0kSZrLuHyuM7by8QiQE5sI2/?=
 =?us-ascii?Q?oHzo5Vb2Rq2GszTo5lC2ZGXv+JXBtOGR5fBb1gxWKHpqH/n71m5jB5MErDMy?=
 =?us-ascii?Q?1Magy3PZIIAH6yE5BInbC6XJYcmbQiEXQJ/oGfI4v2qjMVmpTCEUXFRqKx6y?=
 =?us-ascii?Q?eMk6fe+rBpg14xUEdESKaEpkQsIlw2rJ0YtJVkDo2fp4oQMhZ7OyU3NxGlxF?=
 =?us-ascii?Q?8h7HS9iULw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: oKTBzkgBNU1yc4pOolzi+g1BIBMkk45mJI72cURxqngD373T+C3uup4ovrTrsohyiiK/X7+6CTOcZ4Q0wwVKqUIp7/H10+fbKiYMPIck+oEC4kmUj9TpdQbuc5JgGDnBtoIVkMCKIzyKWiW0FK+A5XhC14BE7yTyK9PmoJpg8iYV9UgPwhN01NaOqZ9Rjf/GV6Pm447+1Exq6uy51n18RRGCAgzEmK5ANBxMKJ7MSpSuot7GWYoVaODclkXq0dQpb1k7zDKfSwSH1Ln/K7Z9ETWVcgcMBuKfeoFk5x2o5fyigDMJMP8E+LAaC7YZ4zgST8rO3rn8Lbpj/ucJ/PTLcg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e813ac3-9c73-4e4d-b614-08decb7e0057
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 08:05:16.4738 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e8C2R0MktNT4uYk704jBtRUSfYrNGp62Ghupz48UT5L4skPMTVQPQ4oMCRFllEJfMNTBoSRGp1dRsjL4cMEw1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6012
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	SEM_URIBL_UNKNOWN_FAIL(0.00)[vesa.org:server fail,DM4PR11MB6360.namprd11.prod.outlook.com:server fail,lists.freedesktop.org:server fail,intel.com:server fail];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	SEM_URIBL_FRESH15_UNKNOWN_FAIL(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:server fail,lists.freedesktop.org:server fail,vesa.org:server fail,intel.com:server fail];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RBL_SEM_FAIL(0.00)[131.252.210.177:server fail];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D21D068D063



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Tuesday, June 16, 2026 1:33 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v9 05/22] drm/i915/display: Rename cpu_transcoder paramet=
er
> to transcoder
>=20
> intel_set_transcoder_timings() now takes the target transcoder as an expl=
icit
> argument rather than implicitly using crtc_state->cpu_transcoder, so the
> parameter name 'cpu_transcoder' is misleading. Rename it to plain 'transc=
oder' to
> reflect that any transcoder may be programmed.
>=20
> No functional change.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 26 ++++++++++----------
>  1 file changed, 13 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index dceb70cf5397..c11def137711 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -133,7 +133,7 @@
>  #include "vlv_dsi_regs.h"
>=20
>  static void intel_set_transcoder_timings(const struct intel_crtc_state *=
crtc_state,
> -					 enum transcoder cpu_transcoder);
> +					 enum transcoder transcoder);
>  static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_=
state);
> static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);=
  static
> void bdw_set_pipe_misc(struct intel_dsb *dsb, @@ -2666,7 +2666,7 @@
> transcoder_has_vrr(const struct intel_crtc_state *crtc_state)  }
>=20
>  static void intel_set_transcoder_timings(const struct intel_crtc_state *=
crtc_state,
> -					 enum transcoder cpu_transcoder)
> +					 enum transcoder transcoder)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -2675,7 +2675,7 @@ static void intel_set_transcoder_timings(const stru=
ct
> intel_crtc_state *crtc_sta
>  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
>  	int vsyncshift =3D 0;
>=20
> -	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
> +	drm_WARN_ON(display->drm, transcoder_is_dsi(transcoder));
>=20
>  	/* We need to be careful not to changed the adjusted mode, for otherwis=
e
>  	 * the hw state checker will get angry at the mismatch. */ @@ -2704,7
> +2704,7 @@ static void intel_set_transcoder_timings(const struct intel_cr=
tc_state
> *crtc_sta
>  	 */
>  	if (DISPLAY_VER(display) >=3D 13) {
>  		intel_de_write(display,
> -			       TRANS_SET_CONTEXT_LATENCY(display,
> cpu_transcoder),
> +			       TRANS_SET_CONTEXT_LATENCY(display,
> transcoder),
>  			       crtc_state->set_context_latency);
>=20
>  		/*
> @@ -2719,16 +2719,16 @@ static void intel_set_transcoder_timings(const st=
ruct
> intel_crtc_state *crtc_sta
>=20
>  	if (DISPLAY_VER(display) >=3D 4 && DISPLAY_VER(display) < 35)
>  		intel_de_write(display,
> -			       TRANS_VSYNCSHIFT(display, cpu_transcoder),
> +			       TRANS_VSYNCSHIFT(display, transcoder),
>  			       vsyncshift);
>=20
> -	intel_de_write(display, TRANS_HTOTAL(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_HTOTAL(display, transcoder),
>  		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
>  		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> -	intel_de_write(display, TRANS_HBLANK(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_HBLANK(display, transcoder),
>  		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
>  		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
> -	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_HSYNC(display, transcoder),
>  		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
>  		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>=20
> @@ -2741,13 +2741,13 @@ static void intel_set_transcoder_timings(const st=
ruct
> intel_crtc_state *crtc_sta
>  	if (intel_vrr_always_use_vrr_tg(display))
>  		crtc_vtotal =3D 1;
>=20
> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
>  		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
> -	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VBLANK(display, transcoder),
>  		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));
> -	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VSYNC(display, transcoder),
>  		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
>  		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
>=20
> @@ -2755,7 +2755,7 @@ static void intel_set_transcoder_timings(const stru=
ct
> intel_crtc_state *crtc_sta
>  	 * programmed with the VTOTAL_EDP value. Same for VTOTAL_C. This
> is
>  	 * documented on the DDI_FUNC_CTL register description, EDP Input
> Select
>  	 * bits. */
> -	if (display->platform.haswell && cpu_transcoder =3D=3D TRANSCODER_EDP
> &&
> +	if (display->platform.haswell && transcoder =3D=3D TRANSCODER_EDP &&
>  	    (pipe =3D=3D PIPE_B || pipe =3D=3D PIPE_C))
>  		intel_de_write(display, TRANS_VTOTAL(display, pipe),
>  			       VACTIVE(crtc_vdisplay - 1) |
> @@ -2770,7 +2770,7 @@ static void intel_set_transcoder_timings(const stru=
ct
> intel_crtc_state *crtc_sta
>  		 * followed by BE which DPRX devices are unable to handle.
>  		 * https://groups.vesa.org/wg/DP/document/20494
>  		 */
> -		intel_de_write(display, DP_MIN_HBLANK_CTL(cpu_transcoder),
> +		intel_de_write(display, DP_MIN_HBLANK_CTL(transcoder),
>  			       crtc_state->min_hblank);
>  	}
>  }
> --
> 2.29.0

