Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9V+aAXUFK2qr1QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 20:59:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4E3674A14
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 20:58:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=cb4vRa7d;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97CB610F0B1;
	Thu, 11 Jun 2026 18:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B9F210E665;
 Thu, 11 Jun 2026 18:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781204337; x=1812740337;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xjh7+brO6ZrbaqCB8MubrlwfKNZrEwnScyZuppaTpgo=;
 b=cb4vRa7dpzTmc5eOQf0xheCKMUeKgMiCfVgIbaHWpB5AlEDrKJuvpaKm
 CPG9JUPhP316ZcgU1eV9oBgVBFRckvyDa11dp7TRMm0i/UVM8kJzZNykE
 oAGjLY9ystXYNeZr3Gyne677ucNTw+Z2oNz9NKL9R2BfJxzOMPLZuenA2
 +lGEUZXE6NjjhcoHooagnJgr3WBS4IHakxJzPRyU/0JjE3lpiVu+6CfYH
 c8HBTm3R1Lv3xsPIR3FLLUGMupCynwVwGbsceLHtgicGkdZazc51o84Ke
 qeDjMX4XWtXfpFiz7/msrhOaLYa/wQ2EDCwDhNa5rz4WRhGlNG0AgHUJS A==;
X-CSE-ConnectionGUID: lA2/jIwqSnmmOJvOMY/NZw==
X-CSE-MsgGUID: leJm7iD3QBewPGwJ2axxPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81770775"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="81770775"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:58:57 -0700
X-CSE-ConnectionGUID: 1wWeLuh7SZSnWV0thVE0pQ==
X-CSE-MsgGUID: S7aT6pPTT9+q8G1ykGyWCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="250859879"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:58:56 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:58:55 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 11:58:55 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.62) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:58:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L3edS+cRrAACQhCRhdwmtCrf0ure9lbWMuUT4uwOKb8+pKRyAcLzCGR8oqfE1P3txIEeZg4y9mJsNU+xFxb/pL7DMyi3mDYveuJ8d4vytiJtcehAeUXp4pnqd3dW71aU47bL4ZD5hRc4eDAgy8Z10V6rT6ot3mrfoGNo6LZXi9lHhf/yPl5oMt0JNRH9i42Nb6OprGQ9XvaMlvNsNGnJZNQJssJu33uLDTXx85CLDB0GjYnrQZHXp2Uc8tJcgRPgabOAKNpMrUHOFAnLZzfd6m7/A7Y8lHrBGWHRQxJO62a7BoJxiEAw4GWHjqP31eZmVHaicSNjBy+f2Ifctfu6/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YKUNYh8J6iBWOpFf0IgDyd/UymzlonO//C7QVmFCMw0=;
 b=p1BLHoxAhIYDW8vIttymPQInRoRm3wRDiGK/uM3zyX6UiF+q4VHa8DWbwR+6ZfawJnAt8s333vzgsIO+tRI4I1AS11vox9ZS0eS1NhnYJQbp/wFSYnssFVhjoVfuf28EoTcO+nTuFaG4O53OmfZjEjB1R2va//4wjw34qvKzVuzsBTPUEU0fTX+a7TWWqAftboaxBEke9CjSyL3IwZjqMiomFcBqSLSck47DqiwWQ4I09FJ6OKbuospVFBiycLXI+4J3tcQ8vcKB1KeeoXSqE8wqG0Fh9t5Ywz98bQqslDefrlsX1QuvwK83VBCwkwQ4HRD6nLdh+UaEJBxySO4NwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM3PPFA4B6D88E3.namprd11.prod.outlook.com (2603:10b6:f:fc00::f41)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Thu, 11 Jun
 2026 18:58:51 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 18:58:51 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v5 08/14] drm/i915/display: Add DC3CO compute and set
 target state in commit tail
Thread-Topic: [PATCH v5 08/14] drm/i915/display: Add DC3CO compute and set
 target state in commit tail
Thread-Index: AQHc9Me0Dp6wPF/1TECA/Q7QTnQSS7Y5vqzw
Date: Thu, 11 Jun 2026 18:58:50 +0000
Message-ID: <DM4PR11MB63606F25BFCC17D0FD747DEDF41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260605084421.3912865-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260605084421.3912865-9-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260605084421.3912865-9-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM3PPFA4B6D88E3:EE_
x-ms-office365-filtering-correlation-id: aafb6c3c-4ef0-4fa6-c5c5-08dec7eb79e7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|3023799007|6133799003|4143699003|56012099006|11063799006|38070700021|18002099003|22082099003;
x-microsoft-antispam-message-info: 20AlNwvS/BxRX5pySWprQ9w7iG4KVbSzYZWFXkDDKCNfyFZz5YQkg6QI6/K25qZTcFrbHqEYaUeydYlqFREifqlGELgoQFuS4o98GW/dMI6L+WyVnO7VBNElVHt/iCrzhUoTv7cFlarljr5esL0TbC32gS4TZYHSe1Iehy0TditF/yWehH7e/H9wdX72zmOWbkNip0AgZS6N9fvQWSHR8MHjpdEPVlpKmravC3LS3LxYNZMVir9XDfK5zBrcswfcsRf+QfSfjcuPsuY3IM5S5LekfL5otYZBg7oJB7fIgSvGIPly9s0zvb9LKGAVaruNoO3TMfQwHCGpbPWSX50DwXPCeC5B1V/4bc6OB5dzYl6O6hqUZFSW5ENPFrZgRLiUHyIy11Tf9JYSy2bmwIbvgqaU8prniS9zsEHMV+HKremRGBUmi4pITF6G3NGEu+bsq2jenKOKymVjQPWN/AzFfb0ZrIpfOsvYdz/3H1QknpyfwHlNPIfDDa7Kn6yQK5C/AmKsczMQmKVyCFjcof8mCOxt5m8lbw6u7XKD5wHZ3XrGexsQkLFxOX2IXEjfA9GIXk3f9PQrLNnJLxi8cSk878lKZTs3fEFasORiQGsGoou/3PD6sfN09jXqdKYw9dZ1LCIsuL6YcyeDjPPK4u0Ac6WXLjeDs2I3H9E7g8XWLhCYJ/kXXOxv0/iVHrn84X/56JbcSHxtdTCQE0yV313uO8+Ii0MBwP6DaR7wMKXuPeyyEVIptpX1fUVF921hbC3e
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(3023799007)(6133799003)(4143699003)(56012099006)(11063799006)(38070700021)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MDxEhjwNO7ERttHgUigcruyNZT3olsFTxWzR5SPaC+Bq/t9Roh+FhgP3ZGGb?=
 =?us-ascii?Q?ehL1Dm2tylHBTtocNexx4rlanAFMH9lqJSkm/Q4Q6784ylg6cYYaw9reZFi5?=
 =?us-ascii?Q?Wa/IN2hoZ5LpdxAyIOlFKCRALAcs3eQG0txH9wxoFSMfq2VUgLXn2ycdHX+d?=
 =?us-ascii?Q?gjeJ8Z2CEACglzHw2b4nnignDmw2syKCjY3PZWJeEem2+DLYl4UMPbNtPuaF?=
 =?us-ascii?Q?x4GpdELCWPoecvD6rowS8YAIYPy4qWZDfR09V+54/K5KhB8YCnrOistIG6XX?=
 =?us-ascii?Q?3IlFOl8e8/ZL2iQtBPa5OZXQJAlKA3kxqOs7zg4lA8q/oaP5ehU5dzSqvqXF?=
 =?us-ascii?Q?BIdmYwBUllOPICBs0EIGz8xYwsMeU1qZ7YLMacr9LcmOnJQMVwYdWxHas/ep?=
 =?us-ascii?Q?cha522Ozl5VDLtXn5lRRHnKuAWKmXMhCFHAO6S26z3DFFz1li+YyvyZpHvRO?=
 =?us-ascii?Q?Yckv9w3ZOElD20kHzbfMa7GFRorC4zq5rrFMDIsVkX3gPgb9IkTKjobkgsyF?=
 =?us-ascii?Q?kXcXYxpAMWT5gGh8H4hvQDr/de5eS9S36LwZoSI/wmIwEm7wxJYa9A/KBj6h?=
 =?us-ascii?Q?/eU7fMMk+i49YoGVjORMz5r0yXzTFR3gfGgxOs2qA8CJr/HHEwF6CTqhXbTX?=
 =?us-ascii?Q?BnbLP9c6GxmBk3L7XOsfyZiLCh3vVNvjAprWxz7Cf7MXqsugICcp9XNfWrN1?=
 =?us-ascii?Q?3Qrs2RFewH7o8hTZfOUgNzBnY26GUUq4rzeEW7CAj8hQ8pQ8NQKCOdEysmNx?=
 =?us-ascii?Q?xnMqqlKeSYGGHHd2lZ+EI35ZksmCAS3jKRKNMy4A/bcw1dOrC0d6xqi8CRxy?=
 =?us-ascii?Q?htkKQo/30uJEAjSkKs3iaBY20RgtA0M28cTNzC8wduRSQxQEQioeJm8Ih3nS?=
 =?us-ascii?Q?8jGHfgrR4ckvj+nxI6lKFQDQeXGAUH10Y9wwIPq7+nNpqjFGZjAy75IZj8dx?=
 =?us-ascii?Q?VKHFRTVhbiC+SLgcJM+RjxKizyxZCwr95mfvlhYdC9rr7IIh4q9+Cs85LiUO?=
 =?us-ascii?Q?XhwSfE3kWh1Wcjsh7mnKU+Ul/ggu7GQDNmNR5qIWJgi4VT8YhwE0borVZKLO?=
 =?us-ascii?Q?jBy1AJvRqL/YuLXAho6eM0rxI7KctiRolTTEvh2izViR7dYACV64N4Ek8ooY?=
 =?us-ascii?Q?joBeBS5wuVs0zad7+poffiWwtmUgIiSosm57s8k2cE9KNuvhu4oOq2aB7O/I?=
 =?us-ascii?Q?mTAIhlkYN5L7xorkSvg5Q53+rSlrXn4G2SP0Byooe6u/iswS5Ze0XBtnjzKo?=
 =?us-ascii?Q?yelkyUqaKeABj0rghZ2Wwo2EWysQF3TtFP5z5GGwQdoqKLaiQlix46U4wu5q?=
 =?us-ascii?Q?iQFkr13DWCucu5thGs7x5+kT9+hxRbLK81oG/EXrkOaIvCdnzqCnB/gOX7B3?=
 =?us-ascii?Q?gecfZr80QewXfb2qbFLA2XdEaJp3VM4v/H2hrn+fCNBDIvXqRha8Qt8x/XWO?=
 =?us-ascii?Q?1Mxtbj/xBVXSszWqcFYSASiI1kJOEqLpg4yTqq4FyRyjhUwjIE/OHrf+NaCG?=
 =?us-ascii?Q?t65fGkVSLJuBjgQ6EyBxB2h0UGZZ+clxDQow0GfrRppFxTGBq37xBRYgPVvd?=
 =?us-ascii?Q?2updx3VI++RqqjP4N0swLGMWZizYGbS+sLrfuwLLdSWnU2+KfipYOVORj4jH?=
 =?us-ascii?Q?38aT2TcV6gozHJGXVtwwhWZTqDestM8aWXw1pnR1g2+olgfdsFL64OWNnRXZ?=
 =?us-ascii?Q?lZW+Q6y2551I2JuPqOWAbnFIf/blOA28eNhSWcVm1iAMtZ7pi9GnyV90CKuE?=
 =?us-ascii?Q?wETmPqbfpw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: S9rRRakccpItWHAeFSRGHXsSbm3jBxg9kfnzAI0Hlht3W/EIAb5eebmwCLdUzpuNroMBZYCn4xmuG3UWnzNJK5SAs3x7cDNxONjGC3DzFFtuJFuhZ5uyWfr3b1OgGgW8thslXKW3bCbq6jrX8eA9XlwaBehqKgWmmi5qHtIv75+XyhgbesE0657ja+xiFgLR02Izb2GAdq69mrPnJR6dw0dosfBpz4ZUcSCzyxxzPTBmL0cdCMVTYbdH9g55ecdzKMyCZxXrSiuaCVt7KvhOmdnX3tw+RLP1qQOPxwNsz+XMdQ/L4fSrjcuNlH9pmnyTuYDkK8gGWLF0rTAhuIXKxQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aafb6c3c-4ef0-4fa6-c5c5-08dec7eb79e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 18:58:50.9343 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rjVCMao7TbS14nnCpg8jCeFfUxv4e+2bNqcp7RREVnkqwkn1iZPbj2EinrCh+czmKSoLjIxaClPQ622DwJE1cQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFA4B6D88E3
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,DM4PR11MB6360.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CA4E3674A14



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Friday, June 5, 2026 2:14 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v5 08/14] drm/i915/display: Add DC3CO compute and set tar=
get
> state in commit tail
>=20
> Compute if dc3co is allowed in intel_atomic_commit_tail() based on pipe/p=
ort
> constraints and runtime triggers and store result in display->power.dc3co=
.
>=20
> When DC3CO can be enabled, request DC_STATE_EN_UPTO_DC3CO and
> reduce the DC entry delay. Otherwise, retain the existing delay and set d=
efault
> DC_STATE_EN_UPTO_DC6.
>=20
> Changes in v5:
> - Move DC3CO compute logic from intel_atomic_check()
>   to intel_atomic_commit_tail as it is not advisable to
>   change persistent state in atomic check (Jani Nikula)
> - Add psr2 deep sleep check in dc3co compute.
> - Move allowed computation logic inside dc3co update (Jani Nikula).
> - Add dc3co support check in dc3co allowed function (Jani Nikula)
> - Move all dc3co functions to intel_display_power.c and
>   rename functions accordingly  (Jani Nikula)
> - Clean up dc3co/dc6 power async delay in
>   intel_atomic_commit_tail() (Jani Nikula)

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  14 +-
>  .../gpu/drm/i915/display/intel_display_core.h |   2 +
>  .../drm/i915/display/intel_display_power.c    | 135 ++++++++++++++++++
>  .../drm/i915/display/intel_display_power.h    |  37 +++++
>  4 files changed, 183 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 8e269b71f18e..083a77de752b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7428,6 +7428,7 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  	struct intel_crtc *crtc;
>  	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] =3D {};
>  	struct ref_tracker *wakeref =3D NULL;
> +	int power_async_delay;
>=20
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state)
>  		intel_atomic_dsb_prepare(state, crtc); @@ -7536,6 +7537,8 @@
> static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  	/* Now enable the clocks, plane, pipe, and connectors that we set up. *=
/
>  	display->modeset.funcs->commit_modeset_enables(state);
>=20
> +	intel_display_power_dc3co_compute(state);
> +
>  	/* FIXME probably need to sequence this properly */
>  	intel_program_dpkgc_latency(state);
>=20
> @@ -7632,11 +7635,12 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  		 */
>  		intel_uncore_arm_unclaimed_mmio_detection(uncore);
>  	}
> -	/*
> -	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
> -	 * toggling overhead at and above 60 FPS.
> -	 */
> -	intel_display_power_put_async_delay(display,
> POWER_DOMAIN_DC_OFF, wakeref, 17);
> +
> +	power_async_delay =3D intel_display_power_select_target_dc_state(state)=
;
> +
> +	intel_display_power_put_async_delay(display,
> +					    POWER_DOMAIN_DC_OFF, wakeref,
> power_async_delay);
> +
>  	intel_display_rpm_put(display, state->wakeref);
>=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 09ce25a6d4b1..6068d0f5089e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -538,6 +538,8 @@ struct intel_display {
>=20
>  	struct {
>  		struct i915_power_domains domains;
> +		/* DC3CO state */
> +		struct intel_dc3co_state dc3co;
>=20
>  		/* Shadow for DISPLAY_PHY_CONTROL which can't be safely
> read */
>  		u32 chv_phy_control;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index eadae8eb5709..193129e171cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -14,7 +14,9 @@
>  #include "intel_cdclk.h"
>  #include "intel_clock_gating.h"
>  #include "intel_combo_phy.h"
> +#include "intel_crtc.h"
>  #include "intel_de.h"
> +#include "intel_display.h"
>  #include "intel_display_power.h"
>  #include "intel_display_power_map.h"
>  #include "intel_display_power_well.h"
> @@ -30,6 +32,8 @@
>  #include "intel_pch_refclk.h"
>  #include "intel_pmdemand.h"
>  #include "intel_pps_regs.h"
> +#include "intel_psr.h"
> +#include "intel_psr_regs.h"
>  #include "intel_snps_phy.h"
>  #include "skl_watermark.h"
>  #include "skl_watermark_regs.h"
> @@ -368,6 +372,136 @@ bool intel_display_power_dc3co_supported(struct
> intel_display *display)
>  	return (power_domains->allowed_dc_mask &
> DC_STATE_EN_UPTO_DC3CO) =3D=3D DC_STATE_EN_UPTO_DC3CO;  }
>=20
> +bool intel_display_power_dc3co_allowed(struct intel_display *display) {
> +	struct intel_dc3co_state *dc3co =3D &display->power.dc3co;
> +	bool allowed;
> +
> +	if (!intel_display_power_dc3co_supported(display))
> +		return false;
> +
> +	mutex_lock(&dc3co->lock);
> +	allowed =3D dc3co->allowed;
> +	mutex_unlock(&dc3co->lock);
> +
> +	return allowed;
> +}
> +
> +void intel_display_power_dc3co_update(struct intel_display *display,
> +u32 trigger) {
> +	struct intel_dc3co_state *dc3co =3D &display->power.dc3co;
> +
> +	if (!intel_display_power_dc3co_supported(display))
> +		return;
> +
> +	mutex_lock(&dc3co->lock);
> +	dc3co->trigger =3D trigger;
> +	dc3co->allowed =3D !!trigger;
> +	mutex_unlock(&dc3co->lock);
> +	drm_dbg_kms(display->drm, "DC3CO allowed=3D%d trigger=3D0x%x\n",
> +		    dc3co->allowed, dc3co->trigger);
> +}
> +
> +static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
> +					     const struct intel_crtc_state
> *crtc_state) {
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	enum pipe pipe =3D to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> +	enum port port =3D dig_port->base.port;
> +	int num_pipes =3D intel_crtc_num_joined_pipes(crtc_state);
> +
> +	/* Need to follow 1:1 mapping because of CMTG restriction */
> +	if (DISPLAY_VER(to_intel_display(crtc_state)) =3D=3D 35)
> +		return num_pipes =3D=3D 1 &&
> +		       ((pipe =3D=3D PIPE_A && port =3D=3D PORT_A) ||
> +			(pipe =3D=3D PIPE_B && port =3D=3D PORT_B));
> +	else
> +		return num_pipes =3D=3D 1 && pipe <=3D PIPE_B && port <=3D PORT_B; }
> +
> +void intel_display_power_dc3co_compute(struct intel_atomic_state
> +*state) {
> +	struct intel_display *display =3D to_intel_display(state);
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *crtc_state;
> +	struct intel_encoder *encoder;
> +	struct intel_dp *intel_dp;
> +	u8 active_pipes =3D 0;
> +	enum pipe pipe;
> +	u32 trigger =3D DC3CO_TRIGGER_NONE;
> +
> +	if (!intel_display_power_dc3co_supported(display))
> +		return;
> +
> +	for_each_intel_crtc(display, crtc)
> +		active_pipes |=3D crtc->active ? BIT(crtc->pipe) : 0;
> +
> +	active_pipes =3D intel_calc_active_pipes(state, active_pipes);
> +
> +	if (hweight8(active_pipes) !=3D 1)
> +		goto done;
> +
> +	pipe =3D ffs(active_pipes) - 1;
> +	crtc =3D intel_crtc_for_pipe(display, pipe);
> +
> +	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> +
> +	for_each_intel_encoder_mask(display->drm, encoder,
> +				    crtc_state->uapi.encoder_mask) {
> +		if (encoder->type !=3D INTEL_OUTPUT_EDP)
> +			goto done;
> +
> +		intel_dp =3D enc_to_intel_dp(encoder);
> +
> +		if (!intel_dc3co_port_pipe_compatible(intel_dp, crtc_state))
> +			goto done;
> +
> +		if (intel_psr2_in_deep_sleep(intel_dp))
> +			goto done;
> +	}
> +
> +	if (crtc_state->has_lobf)
> +		trigger |=3D DC3CO_TRIGGER_LOBF;
> +	if (crtc_state->has_panel_replay && intel_dp->as_sdp_supported)
> +		trigger |=3D DC3CO_TRIGGER_PANEL_REPLAY;
> +	if (crtc_state->has_sel_update)
> +		trigger |=3D DC3CO_TRIGGER_PSR2;
> +
> +done:
> +	intel_display_power_dc3co_update(display, trigger); }
> +
> +/*
> + * Select the target DC state for this commit and return the async-put
> +delay
> + * to use when releasing the DC_OFF reference.
> + *
> + * Picks DC_STATE_EN_UPTO_DC3CO when DC3CO can be enabled
> + * otherwise falls back to default DC state of DC_STATE_EN_UPTO_DC6.
> + * The chosen target is programmed via
> intel_display_power_set_target_dc_state().
> + *
> + * Returns the async-put delay (in ms) to use when releasing the DC_OFF
> + * reference: DC3CO_PUT_ASYNC_DELAY_MS when DC3CO was selected,
> +otherwise
> + * DC6_PUT_ASYNC_DELAY_MS.
> + */
> +int intel_display_power_select_target_dc_state(struct
> +intel_atomic_state *state) {
> +	struct intel_display *display =3D to_intel_display(state);
> +	u32 target_dc_state;
> +
> +	if (!intel_display_power_dc3co_supported(display))
> +		return DC6_PUT_ASYNC_DELAY_MS;
> +
> +	if (intel_display_power_dc3co_allowed(display))
> +		target_dc_state =3D DC_STATE_EN_UPTO_DC3CO;
> +	else
> +		target_dc_state =3D DC_STATE_EN_UPTO_DC6;
> +
> +	intel_display_power_set_target_dc_state(display, target_dc_state);
> +
> +	return target_dc_state =3D=3D DC_STATE_EN_UPTO_DC3CO ?
> +		DC3CO_PUT_ASYNC_DELAY_MS :
> DC6_PUT_ASYNC_DELAY_MS; }
> +
>  static void __async_put_domains_mask(struct i915_power_domains
> *power_domains,
>  				     struct intel_power_domain_mask *mask)  {
> @@ -1047,6 +1181,7 @@ int intel_display_power_init(struct intel_display
> *display)
>  		sanitize_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
>=20
>  	mutex_init(&power_domains->lock);
> +	mutex_init(&display->power.dc3co.lock);
>=20
>  	INIT_DELAYED_WORK(&power_domains->async_put_work,
>  			  intel_display_power_put_async_work);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 06b3e49e5f8b..7470b541677b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -9,9 +9,12 @@
>  #include <linux/mutex.h>
>  #include <linux/workqueue.h>
>=20
> +#include "intel_display_limits.h"
> +
>  enum aux_ch;
>  enum port;
>  struct i915_power_well;
> +struct intel_atomic_state;
>  struct intel_display;
>  struct intel_encoder;
>  struct ref_tracker;
> @@ -131,6 +134,36 @@ struct intel_power_domain_mask {
>  	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);  };
>=20
> +/*
> + * DC3CO enabling triggers (bitmask).
> + * DC3CO may be enabled when at least one of these triggers is active.
> + * Additional constraints may still apply.
> + */
> +#define DC3CO_TRIGGER_NONE		(0)
> +#define DC3CO_TRIGGER_PSR2		BIT(0)
> +#define DC3CO_TRIGGER_LOBF		BIT(1)
> +#define DC3CO_TRIGGER_PANEL_REPLAY	BIT(2)
> +#define DC3CO_TRIGGER_ALL		(DC3CO_TRIGGER_PSR2 | \
> +					 DC3CO_TRIGGER_LOBF | \
> +					 DC3CO_TRIGGER_PANEL_REPLAY)
> +
> +/*
> + * Delay to re-enable DC5/DC6 states by 17 ms to avoid the off->on->off
> + * toggling overhead at and above 60 FPS.
> + */
> +#define DC6_PUT_ASYNC_DELAY_MS		17
> +/*
> + * Use minimal re-enable delay to allow DC3CO entry on
> + * the next idle frame.
> + */
> +#define DC3CO_PUT_ASYNC_DELAY_MS	1
> +
> +struct intel_dc3co_state {
> +	struct mutex lock; /* protects allowed and trigger fields */
> +	bool allowed; /* DC3CO compute result */
> +	u32 trigger; /* Bitmask of active DC3CO triggers */ };
> +
>  struct i915_power_domains {
>  	/*
>  	 * Power wells needed for initialization at driver init and suspend @@ =
-
> 183,6 +216,10 @@ void intel_display_power_set_target_dc_state(struct
> intel_display *display,
>  					     u32 state);
>  u32 intel_display_power_get_current_dc_state(struct intel_display *displ=
ay);  bool
> intel_display_power_dc3co_supported(struct intel_display *display);
> +void intel_display_power_dc3co_update(struct intel_display *display,
> +u32 trigger); bool intel_display_power_dc3co_allowed(struct
> +intel_display *display); void intel_display_power_dc3co_compute(struct
> +intel_atomic_state *state); int
> +intel_display_power_select_target_dc_state(struct intel_atomic_state
> +*state);
>=20
>  void intel_display_power_runtime_suspend(struct intel_display *display);=
  void
> intel_display_power_runtime_resume(struct intel_display *display);
> --
> 2.43.0

