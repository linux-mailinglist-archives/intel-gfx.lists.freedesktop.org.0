Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c7yiN7LEMmoQ5QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 18:00:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB5969B32B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 18:00:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Fkr0rrt1;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E15B10EA43;
	Wed, 17 Jun 2026 16:00:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A29810F049;
 Wed, 17 Jun 2026 16:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781712043; x=1813248043;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0ngpiZi1i+pNOWgz5Zda3xIyjIVCKL56pcr38vrihDc=;
 b=Fkr0rrt1K0IwDB9KMs9dxWGpgleQRAwx23OFcyRwEaSzK5mOAZz3wCOe
 LkgF14wUR/G6GuAU1PjFpQ1NaSktNtRBWcNNtLo4kT7O635Vvob77Njdx
 84/C5bWibHHuaVPsLilSrTkoirIqGUrgYA0aVeMaWnOGJG1CljPYfokVC
 pwEoeQxHJeLHkm79tDzMd3iYknZsKUzxAsvkziEHCiDhjBchhIdPV2vr2
 Q4OnF+cmOzmKfZKlPNf1n9cTAbYtZJjf4neJPoj6fLkpFo6cWa7FmiLnl
 k7loYVGB1XqsrA7Do/aX3T/WndfVYeijkqaSnSVgFZHMjUhQpadYqtfki w==;
X-CSE-ConnectionGUID: rKfyXs2hRWGS7lyrH9T1oA==
X-CSE-MsgGUID: u4nx3ow3SCKd6VeIwKmc8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="70044492"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="70044492"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 09:00:36 -0700
X-CSE-ConnectionGUID: amdLbVYpQuuB87TXxs7inA==
X-CSE-MsgGUID: vklOB91TQ/6s2PxW/SamPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="252003741"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 09:00:34 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 09:00:34 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 09:00:34 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.51) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 09:00:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IJ7Jqu0bDyuoJbeMJsAIZXsNlJn/X9DutYHDcRFKsZOTjGtW9RwnexDV9FOwImobYT5OjQnRu4gmqCFQs9vP9gE2Q/W7rDJuyN5y7cdqaNXxKywGAWdVpXg7oK6GWA2BOjpP3I5UNCH55o6TX5svdJLHJbvmjVwVF9+pxRtuL+trGFSxgfVbot6YLdjMSKyqIgmlsflNRLgewBj6gpGg6do9CMlJXa29iCU78aZy6nCZO5KGbetRN53mPWjhi/yulkKezgiBjVA6m18G/fWR2lbQMYq/yV4ayAZxlokUJN/zmljKR9FV83da9/syEbjkk/GRxokUEyAOHKN/7UkhBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1kL3EI0YVJtabhmbQ6p3w9n2N+OI78MndJetnD307+0=;
 b=NKC4o8KbAZ/vDWMtu433/PAxqZyte1KPQzgOlXfJDxaf8rby45IV8w543UYGg83WC1cRzA5RBS4SSHEUNnjMjZnrhN/l8J0IzK6Xn+ubGjmhg1BZIUuTKBzZ947FnPXbv7l/DucDy6VqbPGjBWCICHGfZLjEk2B0R10tN+wsgylw/hU3WHsP6/zUlCCBEXTqSbqaSLbPkoun0FoDj2Y54HyepvCY9p7h8/Dyv5KbwVN3UYQNNU42R4TQeJZw+zTXeQXvS1OH3Ej8V6c5P7zLR+36ygxUpvMixUarnvxP9ldGmFhrf1tYDLIaI48wv2KDVAu2RPm2G4/iotLfJouL4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by LVXPR11MB9753.namprd11.prod.outlook.com (2603:10b6:408:387::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Wed, 17 Jun
 2026 16:00:31 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%2]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 16:00:31 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/backlight: Set brightness to 0 on disable
Thread-Topic: [PATCH] drm/i915/backlight: Set brightness to 0 on disable
Thread-Index: AQHc/XPR/0jeZXIL0k2M/0wP8PYInbZCqyuAgAA7g0A=
Date: Wed, 17 Jun 2026 16:00:31 +0000
Message-ID: <IA0PR11MB7307FFBB38D8349F112126DBBAE42@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260616093636.2334540-1-arun.r.murthy@intel.com>
 <245d6c1875c760607407faeac238314b85c22c91@intel.com>
In-Reply-To: <245d6c1875c760607407faeac238314b85c22c91@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|LVXPR11MB9753:EE_
x-ms-office365-filtering-correlation-id: 23dca6e0-d8d4-44f5-9801-08decc898ed0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|56012099006|11063799006|5023799004|4143699003|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: vknm/usS3uVg2fKzEwTEzzD0/LpzfhpH3xq8Ll+U4nlfBrof0CyTnLy6UzJCLbSL/73hwtm6rCI9wXKp4ZTdlRn+759H/c0CbGGmIEUld94uuVKsXnRD3ZlqF8xfIA+vP2cmnHF7tWlPfbRsbVGx845B2OaxwIlC/d8ANah+N5JYz+jPykXGX1+Nv/TO7SQHIRjkdmyeL9RlbFMaKPGu3NlKpv0zy3ZYh6i8eDX3o+Cjh/vHbMOrK7sxGzT3LWqHLq9CwR2D+Gd4LeSDbN9aLJ7ngp+lbIfHhvfn3EjtWnC76Z55PYbWId9KJenC6/el8fi6VjQjvWKrwTj9AIhwIuV5XTrfgSCKoK+kfoYhxzUhvNVZrhm+kVV09ABoricD/PLkeUWfgjTHT9dxixPJLg215048zScUrciK7j1O+BIAVlMU+qoIJreHjBL7j2JEi+YzEiKbQNdZWKsiRAu2uwH3jkkRVIaU3pl1+ZjP7LoDapm9/UfdbYOpEHgKE25rbyBDyreUnjnkE7S635xAwbdXQ1FKah1l6h8fX6fyo5rQK9HRHh9YTK5mLuux74rbM1KuEanKZmCSknyBY8JYPsirJ6K+vKxkw+vP3WIJowH6PJgbHs1dNn77YCR4M44vTvjwb3Umpdu8iH02j6v8TkDYUydS9tW0R7w88uHKKQRTS0gq/nkHtyDfRfrPA2oNQPhcUKBGqwy8PWz4xCqS45gi3zK8y9yHV3JgnhRjK8eJasITRej9aVLG16R9MU8b
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(56012099006)(11063799006)(5023799004)(4143699003)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ieMr/jovLFdoyG4piJ6gpLeAIOHQJO8ELXS3X9/+50VxAVsOg8wgvzLfVXiY?=
 =?us-ascii?Q?xy9Vsv6LBCG0vR7zXkHNzU6i5pDBgxDTr0OFGkad/4wQJPDxws30ssTDQ1Ic?=
 =?us-ascii?Q?rlf27uQDDcndAFAUFnDtqiInTq8JUd+0cTP6lv5bAbrqHWHC0RhwpWPG0Ta7?=
 =?us-ascii?Q?Agtp6wcCnClHd/yniheh3hhU+rXF8XnQlT6E1Z/jiyJk+JCSIPe/Ii/sLCC4?=
 =?us-ascii?Q?glxZH0DRgR0J/hhp5mxNXeOzKMvooFJ3f9vwJIoUbMgzrXJx9u7RMmpXpUq1?=
 =?us-ascii?Q?pSTPSzdDhZBnzDA+xPp6JC1G7XWtEkTnijeY4lhh3F0NwVvAYDgeBgQzt6NI?=
 =?us-ascii?Q?dtNnR5Kew7p1XOQTmM2tZ6G39lVqbItPtOeEZA1yxsmNpX6JxwzkX5AIU9C+?=
 =?us-ascii?Q?vrGZPoQHl5hD5Ie8kGGw6a8Ev7eHhVLbbcmUPsQ8cg8bOZmNvEGuZGouUIv1?=
 =?us-ascii?Q?Ss6Y3YlEmGs1HYtSvS39XuZoshcwL8m/JBJxihEwSMlKhqpMaimuZ5/pQwAL?=
 =?us-ascii?Q?BLJicUQhD5Fzio7gorUFkfzs4bFLiaZ8GK8nu4cjUXzS6PKNZTP4TjJG+EZH?=
 =?us-ascii?Q?E67Vc3VfhernQcjz9D2CCyvncCEd6/w0k50RjMyNuTpORLmDO69ttqlWxxTy?=
 =?us-ascii?Q?lZUVF+62Y2v5OuMUwNxnzHIbXsyiNVlZA/70+l5jdAAn8pGTbGz6omrQOQZa?=
 =?us-ascii?Q?5QkvwCZUqXA+zrhYQtrAV+yiue6k9oCV74XPubvDvtwRWQmfTWOu+JvHT4Gj?=
 =?us-ascii?Q?QGqJUmIk0lSqpU00e99IvMuImV1ZGhoSVoJq+3YYWwy5yrcUc3WdrQ8+lkvv?=
 =?us-ascii?Q?UDSeTLVXo1IfDKeqoclXy6QrlNwhk2Ou4HuDIKpbILXub7VsN2kLB6oZijtO?=
 =?us-ascii?Q?VTzHBe8hadq4ZZFXL5/WxKUGB9q1ScReaPpxfPC07zBIwbdgLVdpae2gjSKQ?=
 =?us-ascii?Q?MA4Fn9YXueOBKy/i+GvYnZwKlV3e4cBYC91PChuRQ61mFpqYpvLYnYWayAue?=
 =?us-ascii?Q?5P7G40m/IiIEHXCYc2UZFjksfg9VZxfIav4CUrg0krSoppYEM4+dpITffS67?=
 =?us-ascii?Q?RSh2yvB8DTl2C3UWa5Ai2ti6vz7zjBOpnh4paOqPTulQWntVKq2CYv21ePES?=
 =?us-ascii?Q?Bp85siDeqzKxDlBUOUWx5QDwBgLhaud7ERhCGHcrDCilBnfwF4O6RDdfpxZE?=
 =?us-ascii?Q?wDNnZy6mIcdSW6Ea6duefxo5fFhM9kwxQepaNTKZMf5uusMfMaiblmiDw+WN?=
 =?us-ascii?Q?7r9sRJ2eqjrSBnJA2GVY+dcxh0sSUFCBFgLiJeDmyC6dJVCSiyKt9+cWn7bH?=
 =?us-ascii?Q?Amt1Wpbq9RKBQbYe/mI6RhHftr1a6Dj3WmiU+SDr+4pFWIVGoaDToYgrQhA0?=
 =?us-ascii?Q?P7yeePsgUOQzGfw57NLQfEvrr/BztxoBA6voyjvUHu9SSBlOjtwWKOz/J4Y9?=
 =?us-ascii?Q?x1VEyEwXr7h9tA2SUTgxlNhBRK0PoJoLTqCfewwJZVsBy+qw2BOn2KxlA3cg?=
 =?us-ascii?Q?PnaglZO5zIkgXS/FIDNbvjiM6wPYQ1zlhVBg9dIjpCU1M0OYWFOWkp3HOT2E?=
 =?us-ascii?Q?tprLFtatp89s/36iSh/YUPYm+I0QQFQacVlGEnpD9vlFoZXlAdg59EAfjE/i?=
 =?us-ascii?Q?ryqVAcXeFVxcBdaDWjW8vWBYJ4pJ7tZjoPlGHB/m+x0MnR8oWq8nJ9Eb5OVC?=
 =?us-ascii?Q?Dl3s7M2HtB/rOlQ34NyEXGWZkkARvs1sxZxXwjplbGJj6PgnD/zXfL2RwYm5?=
 =?us-ascii?Q?39qIHUxLaA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: jE8fCEBf6e53BN3OPZYAlXs6/8v87oyWBITsW6fwI5ZcPlbdH4BXpvMreh1Br3BPfnHSHiD5MRQwnl/HwGGSm4SgqMvrfvTdkqnEzE6JAGPgAyzfydqsN5jGS8cqvkaS6hrV24Zgmj6aDZh5kE6DWewNEoMvPiGrYfjmdIEkZXq01W7BkmUyDDBOSfJNVOAFsh97NSLukX8i55rTCBypIWlnOteEIufvkCekr2N8FRjYXpcr83xDheYJhIL1PpNePIkf1eQJx83OXU0RFQkw62wiF6LYTKaD0p/UT4idi1ZD28vzhR4Pb4JB4PYK0tQ7L8TAO9oZoVn4yJub8ZxABw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23dca6e0-d8d4-44f5-9801-08decc898ed0
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 16:00:31.1718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cSHJ8fv0nPG4GPPWI1JXUk68gHDCgyN4W3pvwWgo4REkgj6ZTHQQNnHxEtRWv4tjCeUrfG6awhTfQ2giHseahQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LVXPR11MB9753
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RSPAMD_EMAILBL_FAIL(0.00)[jani.nikula.linux.intel.com:query timed out,intel-xe.lists.freedesktop.org:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8BB5969B32B

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, June 17, 2026 5:46 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org;
> intel-xe@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: Re: [PATCH] drm/i915/backlight: Set brightness to 0 on disable
>=20
> On Tue, 16 Jun 2026, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > On backlight disable for AUX based panels set the brightness to 0
> > before disabling the backlight. PWM based backlight also does set the
> > brightness to 0 before disable.
>=20
> Both the commit message and the code comments have a lot of the *what* bu=
t
> are very thin on the *why*.
>=20
> Even if there's *zero* explanation of the *what*, it can be deduced from =
the
> code changes. But nothing can replace the *why*.
>=20
> Answering the *why* is the single most important thing a commit message
> *must* do.
>=20
In the same i915 driver PWM based backlight on disable is setting the brigh=
tness to '0' before disabling. To maintain unity DPCD based backlight brigh=
tness also will have to be set to '0' before disabling.
Another reason is Xorg upon receiving shutdown, will kill the graphics clie=
nts and then finally the server. Now while killing the clients a particular=
 framebuffer associated with the client will be killed and if there are mul=
tiple clients displaying on multiple plane, then one of the plane having fb=
 while the others being shutdown/killed tend to look like a corruption/garb=
age at the time of backlight being disabled on QHD panels since only the pw=
m based brightness is set to '0' and not the DPCD brightness. So a momentar=
y corruption just before backlight disable can be seen.
Hence while setting PWM based brightness to '0' on shutdown set the DPCD/AU=
X based brightness to '0' as well.

Thanks and Regards,
Arun R Murthy
--------------------
> BR,
> Jani.
>=20
>=20
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_dp_aux_backlight.c | 15
> > +++++++++++++--
> >  1 file changed, 13 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index a8d56ebf06a2..e4ce39c1eebb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -355,9 +355,14 @@ intel_dp_aux_hdr_disable_backlight(const struct
> drm_connector_state *conn_state,
> >  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> >  	struct intel_panel *panel =3D &connector->panel;
> >
> > -	/* Nothing to do for AUX based backlight controls */
> > -	if (panel->backlight.edp.intel_cap.sdr_uses_aux)
> > +	/*
> > +	 * Drive the DPCD brightness to 0 before tearing down the link / powe=
r
> > +	 * sequencer so the panel can blank emission gracefully.
> > +	 */
> > +	if (panel->backlight.edp.intel_cap.sdr_uses_aux) {
> > +		intel_dp_aux_hdr_set_aux_backlight(conn_state, 0);
> >  		return;
> > +	}
> >
> >  	/* Note we want the actual pwm_level to be 0, regardless of pwm_min
> */
> >  	panel->backlight.pwm_funcs->disable(conn_state,
> > intel_backlight_invert_pwm_level(connector, 0)); @@ -519,6 +524,12 @@
> static void intel_dp_aux_vesa_disable_backlight(const struct
> drm_connector_state
> >  	struct intel_panel *panel =3D &connector->panel;
> >  	struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder);
> >
> > +	/*
> > +	 * Drive the DPCD brightness register to 0 before clearing BL_ENABLE =
or
> > +	 * dropping the panel power.
> > +	 */
> > +	drm_edp_backlight_set_level(&intel_dp->aux,
> > +&panel->backlight.edp.vesa.info, 0);
> > +
> >  	drm_edp_backlight_disable(&intel_dp->aux,
> > &panel->backlight.edp.vesa.info);
> >
> >  	if (!(panel->backlight.edp.vesa.info.aux_enable ||
>=20
> --
> Jani Nikula, Intel
