Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDhcD7st4ml22gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 14:55:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9306641B5CA
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 14:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C881610E2AD;
	Fri, 17 Apr 2026 12:55:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lVrcofcz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDD1A10E2AD;
 Fri, 17 Apr 2026 12:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776430520; x=1807966520;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=GhQmqqBAFQmFxXyVMM0NrLFrlTwxeAPofJTm2lne5/Y=;
 b=lVrcofczsLCTydCAmTK4fKAxLb/UyoNKS7fwIU0zhAo5H8d4kweOg+6V
 blc2lOpPRqvxnj63bWkMvQqfkuRCuhBCRhHqZldxhDq6s8CXD/FnuJOzy
 n5p7elw7h2soL8RmwP4apMqxQ5gJe/dECc4w6gpLpDaTawnQhMu/+vmSx
 C63GPaC9LbWaqbhDUohor744rLGgMaIf0WFrx4kRGGC/9+8cJRCsMGajB
 pKh5Z/rgESi38t7USNCffwwXtgA3F06KzCs3V7ZjuvN57rGOYY9nV97sq
 yc4wjUtvx8P++7yZZQStzRWfXcJHg8VGQmJVQ0n4r3tZs3/xXvWmE/Dst g==;
X-CSE-ConnectionGUID: 54guDILKQeykoX5wl6pcAA==
X-CSE-MsgGUID: LIGs87X4R+ehuia94LTxEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="88898910"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="88898910"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 05:55:19 -0700
X-CSE-ConnectionGUID: YBeEtd9pR/yeuh/c3sZMGQ==
X-CSE-MsgGUID: LizCuXtZRLqDBZIt5Orasw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="235990543"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 05:55:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 17 Apr 2026 05:55:11 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 17 Apr 2026 05:55:11 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.57) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 17 Apr 2026 05:55:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X74E4gV8gy1j7HR7LKOJiFfTGEer0pIvZicU7aMJrEcbwmaCCUWCYaLNEpXLp6TYkn/tYgeQ8BuWh6jLqP7hdFq5KIdAsdU3cOA+YPFKgg4QdajSh13Ca3FQ3ZcVbySnoITf9dunSO4NklT99WTK5pNrWevayBNls/fpBD2gPTlDIsvItlLuFjQ5TyzjmjtYr94JzmUby51k9eZbNawOPNTv6eHssOYLcON5k387hTQmiEhphbB3WenmqVQPU68kvgjVF8pqzr+Ur3druSSr2si9bdwLnkCnUH0j5+3H5Jgi2Aaov8SLYvsR8kxB20lHNq8eCeFCemoB3TXn73RnnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qkFEb+U1cA5UrGKfBq1C/vTeRkWSLhBSGeS86gaVp74=;
 b=S8nFbiRqShDemyrag0UEVfZ16/TUsESElg6tnPUFMwKG9ibELHMadgGkYOtCaVs7pAdMIUT4l/MP4Kbd3zVCTtGUiHRXPA09p0XToVFUDUHRiO6SARwBrzdmyP8l7ovso/qk7cOF4yPylPP61zyW/oY/9zMF4HEkoMJlr27otgd/rGwsQyO1OnbYnYxtkGiadFmrxInvLivYx9fc3hjoMRzCtC46CWsEijPPC3NA6qrUqZt1SxkCISykPeinKGOnCdK+64SyVp3c9iZT4gs5lphXf7u/pIMLwvNq9Uxr1k/xIQkGlAWDdlJlBNs4jO0rKm3CFeKqs82Np9stP7+Nqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by SJ0PR11MB5039.namprd11.prod.outlook.com (2603:10b6:a03:2da::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Fri, 17 Apr
 2026 12:55:02 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%4]) with mapi id 15.20.9818.017; Fri, 17 Apr 2026
 12:55:02 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "seanpaul@google.com" <seanpaul@google.com>,
 "Navare, Manasi" <navaremanasi@google.com>, "Lee, Shawn C"
 <shawn.c.lee@intel.com>, "Srinivas, Vidya" <vidya.srinivas@intel.com>
Subject: Recall: [PATCH] [RFC]: drm/i915/display: Fix vblank timestamps for
 fixed RR  on VRR-TG-always platforms
Thread-Topic: [PATCH] [RFC]: drm/i915/display: Fix vblank timestamps for fixed
 RR  on VRR-TG-always platforms
Thread-Index: AQHczmln+PxroWcyFkCLbVps2q9DJA==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 33
X-FaxNumberOfPages: 0
Date: Fri, 17 Apr 2026 12:55:02 +0000
Message-ID: <PH7PR11MB82527EAF9A82D391E8083A4E89202@PH7PR11MB8252.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|SJ0PR11MB5039:EE_LegacyOutlookRecall
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c581d7a-a5bd-4257-13db-08de9c808a52
x-ms-exchange-recallreportgenerated: true
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-recallreportcfmgenerated: true
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|18002099003|38070700021; 
x-microsoft-antispam-message-info: ECvmVVo6/HPPi9N2OlfCyPqIMFs1XCG0nVjzgZ2PP0jqCN2+HHNk/ZEfKQUHA3gk/dcHVIxO3GUNzo3LsTmbZCac6QAdKLQZ18qjTWszpR1Fi95YWNA8BwU4PKOJNXpdJPwrYlDUp1WhK38phmGjiMyabQRoQa+MW0HUtdUQG0GjUb212Pp7rdXhLnBvlVRxU3DmEg4vb5akjZ2hdPMobkRmO9mtTYeQe7PMv29eRsfM3dGsF9JljaFzP97Y5mAn4ZiYM6U0nv04HLRXzG7cIh49oVD+wRci1skhmltYwLZ6jgPoRT3bdK/zxKp+Y9aG67rXKW8NVulvkB7ABQA5Xah50aCO5JLXQQWhUjitEz7kIIcUT29eTL7LZijhp2+n7T39wtgxUCjImlOqpyYypqpnc9F4VCLtGxD/xx/sa0+/6xrtvPQ3I3FMwmLbnIkR9YYrC9nIl0Vatrv4dDlgjJO6qjl1NaWVGxtGA1fAClPLTE3Ziqk0QAq7/Fzn2ua+IH1QMUEqltJv2k3PTAj1Pd55rIOvF0Eaz+CpgaLVO2wcPHTKnSuOTSSbbI85ETCo+yd/0QczSJh5u6toat0AZReX2zclpvAvCOQUn8g2mPyOFdTp1xj9Blgz6L+4zri0FERu/53lDdHAWbywvd8Q8tQDHSNVJAlGbrp/+Ea1GROr7wgzjDndonCa5oPMXDozdK3qyHO1lj5ouM7q3HlwhOjoIFmI2gA53v8u7zTyhCxRnqz18Rlpyo9tqaoxKfktIsQDIIWV3tSNeqZMUumLtGg/gikcJMbkJy3BChAX0mU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?akDWWAFJ+h9sy2uPFWha2x8sL0smGXCWkZHd/o7R4OxiJ7XbuaNppAZ2iucq?=
 =?us-ascii?Q?J38nHczAbFgP6KmxDAfnRf8LIwlyvqXCZsMNv4A5PPuVipOy2JjdP2oc8t9G?=
 =?us-ascii?Q?0qL1YBvRZuBCisuzUS4/RLceOf1jv68NSRX0X0Ojuerpq29QWhFA3NBqxx21?=
 =?us-ascii?Q?7wtDUIL30CF+7ko6xVkhsIOX4E5Dvw2c3feUvI33YP7d3uKUUdwA/LSD1IDF?=
 =?us-ascii?Q?adv8C+caQx7d8ohUnl3I6JMAJtnL1MuYD5tolZywqRY7rwaTkastwl5h/8ok?=
 =?us-ascii?Q?XTidNUXtoCOZz5P4DfL/fBrfQWCW3txZhhjVaRLf8pglC/W3+Q+h3DFuImSn?=
 =?us-ascii?Q?yGdAeFYJm+7lPPkYWQ2krwQ5DItB+pbRFYFtqA6rwpo4zqMTf9Q2LGt8UMSC?=
 =?us-ascii?Q?Zpotvu92RGFM6j3r5jOoHdJSua9y8cZbH7IoR71wRrWrQJiJZmn1LiesMi7M?=
 =?us-ascii?Q?Fq06gsiGGo4T6WUs27YKqFcgNXPm9+XorB1mQ0vvfOB0p3Fg1Ck9mGawDOjD?=
 =?us-ascii?Q?Hp8Rb4BgvgzL+l0aofiyuuyMPa+vYvy6/UZhDYcqUOdTIZor1SZriJf4b38z?=
 =?us-ascii?Q?e+fZ4D8feGIkbdIwiCvrFsyw3Zecn4aYcRms3HJrm52CNHLOYobnVl8v2/nR?=
 =?us-ascii?Q?0Pp742rDbujpgr1Aw1Urqbr8Q14Bwbw1JrefchrjhyRK4AyFJezlZG4RpgZL?=
 =?us-ascii?Q?3XIRq2Xsa7iF5UsJHZ4rqa6HO8QgKQcCH8Ll5cL3SDsGKJfCn57NfNJNlL6y?=
 =?us-ascii?Q?4NTYNPZT9FCMt2r1Heegs/11EyEpL1H5tBkLnd/PEjl0L6JrmFeJJrki6uyU?=
 =?us-ascii?Q?KM3QUOJEgKeXf+GvZK1wSv4/ssUcOZtcPs8LOeoUFi6pqNri26CF7MwPXx2P?=
 =?us-ascii?Q?V4bIqs/F3+kjc0kC5RkCqNAseSja/4z/ddwquxF91YzQusXn7tjJMgzqf3UZ?=
 =?us-ascii?Q?1FFcYMMSBPulEgoE0CH1duEmSwp8OcAyDJU1oOqiWBy8snF5in2mUM/DTkou?=
 =?us-ascii?Q?4y390Nn69R9k3KVoWvn+2Hw7TA/ocgsEr5hgXfo2SNeRZzbuFZJLJBESEZxk?=
 =?us-ascii?Q?d7AxCZMMhueKl+XPuCRj2JPhShED9XYgV77G5gJPkzy6XgWMVhWMNr/l3o6T?=
 =?us-ascii?Q?Ay7J9RY9EIW220+af9WBku825kWLZ85Sw5UDsnQTdjRTGFOFpEv3JUNhzx6G?=
 =?us-ascii?Q?heh97RcMM0kP6yAFi0826gEXRaJy4AmGaEMVIHv7Ksm5nFFGux7Acs++qkyt?=
 =?us-ascii?Q?fpXNlQ6Rx12QwBdrnq4DHyJRdnmcklYJEayIvjdMBm66hVJOkpqEm+T55F+e?=
 =?us-ascii?Q?27QkjqqLEpNoGJNGI8jkPGbYbviTN54mH4X6PixR2I8uU8951v6N402Wcg5Y?=
 =?us-ascii?Q?bzf4uli/xzLEokaXUHsSZJ4lJxt6RL50F5/xtdOUlEyrRERzi8Z/t8PwhDvC?=
 =?us-ascii?Q?CUrEPv9JPLuMiluKb/MxXgzdEGX/lguR20PIQWCUAREeGUzB6AT3aINBSTSh?=
 =?us-ascii?Q?I14yYqfJeNlltE1W4oaZxyPPvZOfDhANgzK6JTgEDuPXb2t8nM5C+AjFIL1M?=
 =?us-ascii?Q?pz2Hbo+b6F3/5v6mMpc3giWbHRJHjZt1lDp95mOw45z5nuR0phP/j7XFPcgq?=
 =?us-ascii?Q?DzRPyvp91EOYQR1HRN7XvlQH9gSrYk8GVbmDPTATFkPhF+NKGVkgfpTK6S4J?=
 =?us-ascii?Q?9SU/1qnO56vhYUt1rI7CmAqavvvFwKeFxc6doi6ZtNwpdvz6SHPl2ecmm3A4?=
 =?us-ascii?Q?/7zasAi5kQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ThQsAfPS5rIEyeVHV3omtlrWQD4MjsOWPzAiJovAxBKMys79w+EtGl3R229qF95f958mgTYmWjHIDcm6HyG980z2wrN/AtPSMD1lb5djbmvJaz7mf918qhG673gm5CcAec4B/yG9U648xyeZtFnh0n9ySXLzw2bUiF711ROaCwcrPpjt9CRG0yzefeWVrY7BpyMC0PbjB9BMFr4A6YJkD+A4J2D0G/8mIcDc/9ik+vhbuZu5xJYakVaGJQiFhbYQblvTXzVFOBNHcjT3Uq6MjM41HQNw2iKpbLQ9ZApwcyAIHxnWMC9Ct4B9h+N74cqp9noENo3hCfuT2l3TufVTEA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c581d7a-a5bd-4257-13db-08de9c808a52
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2026 12:55:02.3342 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zxK88oaGA32275zMmeq188bzNfpHcIZuCeZbDUJZ5xLJ8/8mop/Je8gSoBcJQsT9eC+6HmQAVtMFCxuQYuW6/a48eO5QC3+ioDwoJfr8j2s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5039
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,PH7PR11MB8252.namprd11.prod.outlook.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9306641B5CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Srinivas, Vidya would like to recall the message, "[PATCH] [RFC]: drm/i915/=
display: Fix vblank timestamps for fixed RR  on VRR-TG-always platforms".=
