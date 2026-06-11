Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 01ptOTDyKmplzwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 19:36:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8E16740A9
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 19:36:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZhXFa5BS;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D37B10F058;
	Thu, 11 Jun 2026 17:36:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77F6810F03F;
 Thu, 11 Jun 2026 17:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781199406; x=1812735406;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RNPqej3/4qT/DhPpiHFu/kUrLlpH770Foy1p/trYgl8=;
 b=ZhXFa5BSNThZ9aJkhO3hoD2kWynr/LH0t+g7buHYxGaINwBpz6jLXUUA
 oeCYyTUZIqIpXRNFdytEuW209qNFLBx3pwiBAlcevZ2xrdUzg0yen4OX3
 EG64Q6U4uIj0S4vv01ogJUAnSx441T8Jkxr1hIHRuC1bkoWjJMmCe6NwA
 VwHrdY70K4YXapZq6SLKNeA9TLGBddtvdBVu1du4rx6Kh4y/AuzTgn6B2
 5ohf8OJwVmCnp6ApwmUevkrMBoIiBeDYl2ZZQvqqXHZbH6yw/QaIAftra
 +ERPZ2MZW9olg6L5orABf9+GC3u3vpffrst6NQYbVNR6ytyq2ReR4l7DK A==;
X-CSE-ConnectionGUID: s77wdnEiQCalmjoquGw1jQ==
X-CSE-MsgGUID: asSAqLbkSyyyDkwrzlzTJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81762497"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="81762497"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 10:36:45 -0700
X-CSE-ConnectionGUID: RFw6ffODRfWnoBTu7dlxtw==
X-CSE-MsgGUID: PeLXAxWwQsu5fjwmKJNqig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="240215961"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 10:36:44 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 10:36:44 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 10:36:44 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.39) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 10:36:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZP2+pTJ/KBCMzim0s9g8Oz5LDxLB0SBRmXuYenBXS4zTHgTtsFFSWHcxhHSqmgoJgPRJz9D559c2G4yaAMt/yPCEI+bflpIjzGC8HjR6lQtTnOZub6MxmwDKwWoudceLF2KAAQG6jp+INhaXuTe0z+6N+Dy0SLwUQQwgDT2J9wAMW3lBC+q1qyWA0v0RLOvGEBQqU639wcD3usGV2aXFc8w9sT4anipD6SViYeqOzIaWwhbBf0Bbttp+/npKrURaqT1ng5iUPG20wa3bsduNc4YEU7KhjxmI4PHb+V099iQ/GtaIMZXFB/PyfuZeMRzFiHjMPStweWiID2dX1TzTsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cZO2RyteX0dWYeyoC9WLWNsBXI7VWgz/+DYqilFKZYQ=;
 b=j7idKqLxVzYIYXNoUhYknPHTbdpkJMPDZhjRVOjW8kqC40NjjQpFRjIl5feXbCYaIGZpX86xFfQGpjrFHS0MKkcvO/XqBT4gpAzXx4Q6egG0yf0h2lCeWdnzgGuUaSIk+1RrpFataxMchXIFBm4a4LTzlBfQu5YNL79FqATIMikFqzONHe+2H/kog+YDLzaeTj4v8rFjVhE5/Vfr6man9VYdPH/km7Lg8uo6T1ltXiurJwXiFDY6p5TFcoUH7uJX+n+LNtH51kTYZXRMPLkmZpzNKQihQBqilxZIZ9prd8rH02hz5RkMo+kZsnSSPFyj3cVRdao1bAlFAKcIQaYHzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB7616.namprd11.prod.outlook.com (2603:10b6:510:26d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Thu, 11 Jun
 2026 17:36:37 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 17:36:37 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 09/20] drm/i915/cmtg: Program VRR fixed-rate timings
 for CMTG transcoder
Thread-Topic: [PATCH v8 09/20] drm/i915/cmtg: Program VRR fixed-rate timings
 for CMTG transcoder
Thread-Index: AQHc85dTY1wSLw1V8UiDXm9RtjhLCbY5qnVw
Date: Thu, 11 Jun 2026 17:36:37 +0000
Message-ID: <DM4PR11MB63601AF44B2F1851BC54B1DCF41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-10-animesh.manna@intel.com>
In-Reply-To: <20260603195416.91639-10-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB7616:EE_
x-ms-office365-filtering-correlation-id: 5ee9ced2-3712-4e9c-ae58-08dec7dffd39
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|6133799003|4143699003|11063799006|5023799004|56012099006|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: DD/OBg5u9Oii1TJjpcEt527CEjR3neMtiA3jKKdJAIR5EAMXn+DvNxmKg5vwM+MFOjj66PmHP3AzL0tmw9DhSbZwaTk8xw+Ginyn/tdEeeRNSY6wWCr4W5DsI4YJfFpeb1fnrGZ/2xd1+yAsMwP4ty39DPcYxxH7NcbwodgeEAj54BcLdOW0Py0PNZYMtw3h4tQXC685LjJHpeMiP2YQejRJaf3kECFAHsPMJyjFnYp5aWkuH+W9V4p5Iufnx9RuiKxQbKCbmBgSI9yuBbecFCtK49roe0uHI+V5VuufTrlLO2+Gp0EeluN3UEPEiQ5UKB7czTIKqX4NYzFMi+RGRnaMFXrJLpbcGYEobwO66M6qtBsvZKebfLy+zbWzid1dJdoKthPpiDBNX6AZ8cmR8d9wz0qX/F6JIq7/efPo71xQrIuPVRSfvRx7HqKNTqfclfHViS5CA2Bln9KoTn9l82+NU4ZsNnx6NHELeE0rhzP6mn5Ky1nLSzq0RX8cek2pL1pxS8NMnh0WzGvMaB6vMSlk6QJ+RnIO0ZXDLCr180/FCXxK0PGoaKyRCc/NPLEuqdD1XgDZdW9K7UxOdQwVXTlJOYnm567IuW1Y3oX44cjhyUHfVhWWKe1pqo4JigCLAoZspxQ/QAdB3xBirf7/Vy5OV5uqQYlNP7T6GK5AfwKZO7Z7cgbTqBx0lPN+8O8JPdP0uD9VuVLAD+6SofRfFJtKXSPzgUm4yxqmopQ3lek1ka0TGCv0uCk+N008MccR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(6133799003)(4143699003)(11063799006)(5023799004)(56012099006)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IlLGDoQq7ev+blRsMigf5ImUFvb0JC7iP426r7B8qix9rfkRVmUEYf/HRlFZ?=
 =?us-ascii?Q?dLzYecQe4tmx5kr2nxaJWpZBFIINc7mT1di5ZMuq+dDY1GK3idkeHliSZU65?=
 =?us-ascii?Q?Os0mjJ6jkkxegyYjO+ax8n0cvShxBuqXiEAGQ03XCwxj89vwujYolL2RcedH?=
 =?us-ascii?Q?gXhnKXKN1wlBp9UfN2teQW3ClWRglYf7R12tU5YWEdS0NJX3mitK4AjOWXE3?=
 =?us-ascii?Q?xsoOG65sLggPyorwuYjajMRk6a7i9Ee8i74pUBH/5sdcUO/YwEbijlcn962N?=
 =?us-ascii?Q?WRdZV981fCm6Jy12MziW3PZkfdWBdls/6q2qKRqrbHjMuVgu3jIpjVEcvbaV?=
 =?us-ascii?Q?C875HzVncWm3Rd1erFW1whz2z55KXn3bE96ePvSHuXENRfD8R+X51a/jze0V?=
 =?us-ascii?Q?re+fdW5cPphKB3Ylty1xLSO0egN9D/Jigv9/xRIJ/fFvQtxrZbSsaABnUSFm?=
 =?us-ascii?Q?xNssBhBeoNtOA7oDRK2mi01NwYWyPQnJQoGG96sKXd7vXel1ZvmvQVDxV2IU?=
 =?us-ascii?Q?WpHBaOkC6FE6PBw53jwCbBvf6QL42ctcvrjhXzPhYfq5SxZ7ckQIraB6fMnO?=
 =?us-ascii?Q?alsGW4ry0AzZryPCz4jPg5zuqpAGe0T9DVHt0/jK4ThJfmMFsD//mfBp2SEr?=
 =?us-ascii?Q?yJGgBWkuXqSQ7U98f+8BQOMYzRKyv1eSEUbQACYHEtRKljykmqmJgFOvL6Sq?=
 =?us-ascii?Q?+IsDp1sRp+bJIIAV2CUp/1m3Jlmuhc3G52WonxiZlyAvhRfuSjzz4ddtb8kS?=
 =?us-ascii?Q?FvBCP+v0H3r1uC40LrLNlSOMCAALQpeeGKFocAc2daT0CtUgd1Kgrxvi9MqI?=
 =?us-ascii?Q?LwOXFfQndqljLHcrxqCXJp3Jnoq1NwPoxtZ88WGcLGLzmR9yh+E2gAVmtheN?=
 =?us-ascii?Q?Ni/mWzBaoQ36qNARXuv0qbG/UepD9kGVzo5aI6c5ajsrNRSM2GOwfFWEa1b9?=
 =?us-ascii?Q?AsQEFIXd9KXmUJPbw8EyzNnDCY6vtMhyWMY51tlrRIh/N80iP3PQPTHZE/XU?=
 =?us-ascii?Q?gi3Zt7gyP8J+ExtqDziI3ufxAvSzlO0qKnBnWNEGQGpZ9GsdokK0ApJuvPnh?=
 =?us-ascii?Q?aa3KVHzzqX55pA7Fr9NQx7d2kt/MoYrbdcawKgher1iwCFdYkkr0suUVyw1z?=
 =?us-ascii?Q?YDltbC1EWS3x1OYUOzX5dc1uF2NaCDwoE1mCbqRDTVne7JPug3OUxfx549pj?=
 =?us-ascii?Q?lHFMwhCoJxEv84QCsRmHCPuwLXwohSsQxvZm6KHEnG/dfCgIIzH5EckpXrHu?=
 =?us-ascii?Q?zKF4VUifnphAQ2ENooG9z9YN78chSB8N8Wrx0JYeZlvdWejDrb/MWmUT0HRQ?=
 =?us-ascii?Q?AqZ18GaTiAuJTyuHJ72J64mAfxjrR+5Zql8d/LMIcO2Dx3Imi+WMWEeAuvb4?=
 =?us-ascii?Q?Y+rn3QAQGKi1Ix70PGm1MtASUBmbV7Xmz7eucuPx+RM+Et93E/kWTbmiP3w3?=
 =?us-ascii?Q?Ncv7OXIBcWL7U8A2eYQhVeL0xL9WlCsG/E8aAFMRiMtXqHxRaE/S2nWF+aBi?=
 =?us-ascii?Q?OxgQw6TJ4zanLAL41GhvfO96kM4I8ODiuFRQg6C7tVB0HvhMfiRwwrLaRjNH?=
 =?us-ascii?Q?T/DDm37LrJGIBMZcuXqOQv7ty9y6TYAzs6GMhRvZWqWn4qvgCzMxoWA9qbaY?=
 =?us-ascii?Q?sp3ncu3nlSZR5Yjpa7D33GmM0+XDRda6VMxn5oItPo+pc3YNs3r8w7GDt6/b?=
 =?us-ascii?Q?MS5FXw1orEMWXNA8zKK0GNbKVXoO5pIwYqw7Jf51UT5vsSl7YrCc08ewgCqB?=
 =?us-ascii?Q?yrQbVZ9IHg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: RZCKyFcg4PaR8nSQFIlMFQvcxR0Qofg/F10PmFAp/Xezys2tSffQ2LurvvGX6CpMmtTDHCGGBCfYqLDmcmIvWZIPyb5eckdhfDuQ7J0f1DNAjoPBriA9d22hfBl4poZwuIlmmtu+r+yPWQY7FTexNkMaYVorCxK3jAV+mSN8REnWB5Wk+A646eFkeR6vBMgnO/pQ2sIojaGLXVD862Z/gvYneXIk1E26xmTooyF9Bwfyynx5f3bufJK8T7yiLzL2/HcS9GTTbQSJ/Ezg7BTTNboFHrDOFh5OSGYk+M4Gm/7P/s2ftL8n1gFnIIk6xI7PE6avQAJhNzh/w+RaIac1Vg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ee9ced2-3712-4e9c-ae58-08dec7dffd39
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 17:36:37.2541 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xaNGBObdwgR9HMKiNWMbA2IE6OKj1cGxfnO4uxs6wyz6fNhjbFliRzxY9wFp5zGdGIGVkj9Pt2bJaOU6x8GtxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7616
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4A8E16740A9



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Thursday, June 4, 2026 1:24 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v8 09/20] drm/i915/cmtg: Program VRR fixed-rate timings f=
or
> CMTG transcoder
>=20
> Program the VRR registers of CMTG, as the VRR timing generator will alway=
s be
> enabled for NVL.
>=20
> Add intel_cmtg_set_vrr_timings() which mirrors the per-transcoder VRR
> VMIN/VMAX/FLIPLINE programming on the CMTG transcoder paired with the
> pipe's cpu_transcoder.
>=20
> Invoke it from intel_vrr_set_transcoder_timings() and from the LRR fastse=
t path,
> right after the existing intel_vrr_set_fixed_rr_timings() calls, so the C=
MTG VRR
> timing registers stay in sync with the cpu_transcoder's.
>=20
> v2: Use sw state instead of reading from hardware. [Jani]
> v3: Program cmtg vrr timing registers along with vrr transcoder registers=
.
> v4: Reuse vrr timing programming helper.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Bspec: 68989
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c    | 11 +++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_display.c |  1 +
>  drivers/gpu/drm/i915/display/intel_vrr.c     |  2 ++
>  4 files changed, 15 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 082c04bec9ee..4c8187ddef1f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -16,6 +16,7 @@
>  #include "intel_display_power.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> +#include "intel_vrr.h"
>=20
>  /**
>   * DOC: Common Primary Timing Generator (CMTG) @@ -244,3 +245,13 @@
> void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bo=
ol lrr)
>  	else
>  		intel_set_transcoder_timings(crtc_state, cmtg_transcoder);  }
> +
> +void intel_cmtg_set_vrr_timings(const struct intel_crtc_state
> +*crtc_state) {
> +	enum transcoder cmtg_transcoder =3D
> +to_cmtg_transcoder(crtc_state->cpu_transcoder);
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	intel_vrr_set_fixed_rr_timings(crtc_state, cmtg_transcoder); }
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 53a44f505dd2..899a2744514c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -11,6 +11,7 @@
>  struct intel_display;
>  struct intel_crtc_state;
>=20
> +void intel_cmtg_set_vrr_timings(const struct intel_crtc_state
> +*crtc_state);
>  void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, b=
ool lrr);
> void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)=
;  void
> intel_cmtg_sanitize(struct intel_display *display); diff --git
> a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 416dea9e0d36..56769a2c7f72 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6675,6 +6675,7 @@ static void intel_pipe_fastset(const struct
> intel_crtc_state *old_crtc_state,
>  		intel_set_transcoder_timings_lrr(new_crtc_state, new_crtc_state-
> >cpu_transcoder);
>  		intel_cmtg_set_timings(new_crtc_state, true);
>  		intel_vrr_set_fixed_rr_timings(new_crtc_state, new_crtc_state-
> >cpu_transcoder);
> +		intel_cmtg_set_vrr_timings(new_crtc_state);
>  		intel_vrr_transcoder_enable(new_crtc_state);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 15d22de66d63..2295f6545981 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -7,6 +7,7 @@
>  #include <drm/drm_print.h>
>=20
>  #include "intel_alpm.h"
> +#include "intel_cmtg.h"
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_regs.h"
> @@ -646,6 +647,7 @@ void intel_vrr_set_transcoder_timings(const struct
> intel_crtc_state *crtc_state)
>  	}
>=20
>  	intel_vrr_set_fixed_rr_timings(crtc_state, cpu_transcoder);
> +	intel_cmtg_set_vrr_timings(crtc_state);
>=20
>  	if (!intel_vrr_always_use_vrr_tg(display))
>  		intel_de_write(display, TRANS_VRR_CTL(display,
> cpu_transcoder),
> --
> 2.29.0

