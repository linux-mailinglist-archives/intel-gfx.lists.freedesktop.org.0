Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKyiKiWVrmnqGQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 10:38:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1533B236463
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 10:38:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 817B410E4BE;
	Mon,  9 Mar 2026 09:38:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tosar30v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B5CC10E4BC;
 Mon,  9 Mar 2026 09:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773049121; x=1804585121;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ShPHMfXq3dbNGUEL4I5c+3+2ZJEix1bQmvG0ptLe9p0=;
 b=Tosar30vBNFwTpopwIDA/v0dl44q4jDoVxcKs49drgh+umXS0tuZwo6C
 G8/dIwgEN4Op0Ai5EZvsCO+SHR8SEhyBoGELFBLHng8O10K+WXBXbfzwk
 JRsbSEnqhioXMq69ZMgs0zLke3nEs27Jbkjq5QNPT5Nd+WGQMxa8XQMcw
 3baA+A6mLDm1DhydyR11gOPLk6uouJJV2m8j4F247UWVAOH5Tq591x73w
 uc4jGDLczIiQOXrbfxgDPBlJUZ3b3+E8SYRf567mA8QU7tz6lsdCkIrTb
 JQFxReWIN8+h8HNGFZ1f4FlCgXo/k/mddwTQnQu56pbuyOXHXxkjdzst4 g==;
X-CSE-ConnectionGUID: ONE8JmsVQGGPZZ1WdIiECw==
X-CSE-MsgGUID: sKiDDMHQTXmelQCmCu2iqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11723"; a="84702000"
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; d="scan'208";a="84702000"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 02:38:41 -0700
X-CSE-ConnectionGUID: IQK+dS70TLyFYndAQ8WBcQ==
X-CSE-MsgGUID: X/CyAw8kRMqnGPCp/QCOaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; d="scan'208";a="218902317"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 02:38:41 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 02:38:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 02:38:40 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.55) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 02:38:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VovXhCUBMQ0Oa/mIQ2VAZ4e1r8N3moaeeRuGkajR2fJbmWqjs10OtQ0d3/hJX1GpI2H/kHB2bRmJAygpJvfNvbywsK3oGPqilyeYDybWED6QYQt/JeUCe+j2IL7azy/yd96TpODqQ2d4mPtxMl8DJrX8OxjRTmUu5q2NBRfv5BUTUd9ej6T3ToUeXhKxVOBC4sJiAd6OfINw9jz93k01DARbklgWozhrvy2ba7PFp6YbzDg0FWpl/MfyDsnt6Iz35LhPhS0IRqSGtqxZ7JeynwhbHKneEJYqJ4F4D/3yrBCEqeYI9Ymi2BRX0HlR1XR0/v8xoQuqEQrmIE43e9Zhqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ShPHMfXq3dbNGUEL4I5c+3+2ZJEix1bQmvG0ptLe9p0=;
 b=Ml1OSYO95CGOSe+HHr9sOIEE6lRHjlupeKIS71BrAnpol5odSdbmAzYukN2dqoiQL1jKCdC440F6eg0H2zXig/jmkCiMBEl9yLmCpPXGgVI6QO8KY0wEC01T160urCjTG7nw1w5BnI6hZCSBJpjXmS0r1/ScvrhG/emBWqK7ujy6Wv4EYGrR3UZWIgkv9V27TL2ECm8STGLQFUPp9rEd3O5g/w3zfU68JtQ+sOqE8rtA8SwSKKkcxB8YRZfhXtEP2HxVE51acTxr7dYJ0QbeCZkMhp6gblL4yZbvfVr0ra5Xxbl0Pp+Fl9OSzutbtow5jb+j3lzLUkTmI7vny1CxMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 LV1PR11MB8820.namprd11.prod.outlook.com (2603:10b6:408:2b2::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.10; Mon, 9 Mar 2026 09:38:30 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%7]) with mapi id 15.20.9700.010; Mon, 9 Mar 2026
 09:38:29 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCHv6] drm/i915/dp: Read ALPM caps after DPCD init
Thread-Topic: [PATCHv6] drm/i915/dp: Read ALPM caps after DPCD init
Thread-Index: AQHcq6fPGb1V0+grJ0aqzF8kdKVQ/LWl+Q7g
Date: Mon, 9 Mar 2026 09:38:29 +0000
Message-ID: <DS0PR11MB804923B1E8BB59729382E13CF979A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260302033630.428913-1-arun.r.murthy@intel.com>
 <20260304072157.1123283-1-arun.r.murthy@intel.com>
In-Reply-To: <20260304072157.1123283-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|LV1PR11MB8820:EE_
x-ms-office365-filtering-correlation-id: 9d48ad8f-76d3-4bd7-670d-08de7dbf9f13
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: nGrBeJkmVPwZzJEjBQnNYvknnMkGj0NasqZ7zAIrNZJz07jbBkrURMjjsdoWx6Pu0UHt4D6gr5pPs+j3/QsGZRfu+t7wV2Hh0FpHFkvEKidMXMtSswQ12AkghF3kkuXjMz3djhLb/KLc93TPV/nZYXNw1LTBiLnD9uzhHMYZ+RVzAtasDzoaGclpUDM7PrmxyjCoVLkQMlBBN9IsJAMOXletmfZi8YZW08LBNg433UsP2IplP/85Ecif9XHE99dN9C/RjWizoXLqbo3fBMv8TaTiLk2qSLll1AXwVxnGZ98skd6WpDojpvmXvcyCUwRslwkAz+97KK9Y+KLOwKn3UH4Y9mtON7kJXHO8sNgMJMGDupCBbxOw5z9kxNK3dLTD+Q0MqqnY2j294mWdRPBAzOQaLJFHHGeY1h83CMVOd/ROI0J/XNQOiyuCwqAQquqsdyVsVinT2xMgbP8c9Tf38Xir6o2IwDqOz6/uZnl4SxqNfGXCkt0sA93xvD3pw/0MtbRvXJOjfeYyUVeQQT3WO0xijVH6bLWi19edJbx3/tJxCpprAooaOfVGcJDnXcJi/OnMr9bVQb6LSTKEYmWgakTgwgkaBfLXc9EnSpafvncdYrHxhzoW+/RQ59n6Cyh3ljkg4ED0G8jA0uS+wndpXqdUWASd9Nm5o62K8GvPtS3z7VyAVaJ23RZTc8X1wGsuLQZ5jSZZ0VEPwxKiCNqFwJACRzAPX2Tyamma7t7JeR12dbgNK7+IUcthmHtaDBcZJpN/PyjNmI5YhhAIr5XyCg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDl2RUticlR0Zk1QQUNSL3VsdisxeTNlZGhZUVpkVzZwWlBvdGRrRVFzZmx2?=
 =?utf-8?B?a1pKRGpRcXEyYlpYQ1g3WXpzUENVWnFwcjRSSHNITERkZzFHVFN3MThJcHU0?=
 =?utf-8?B?RmptcG1tWWM2MkFOOFdyeGZVYUw0S0RvOEdGdHBEZVVRc3ltNzJ1TjFsak41?=
 =?utf-8?B?TVVmd2pnR1UxcEUvUENBZ0JmNnI5Z0FLcklmU1BiMmxMRHBaTUZwdWtEYVhU?=
 =?utf-8?B?cmhWV2dLNVJmZktmVTYyVnFRcnZMQ0VyUVluSGJ2YzhlLy9mdklVclJUSTYr?=
 =?utf-8?B?b0JnWVRER005cHM5Q0Zvd1A0NTdEajdFQ2Eyekk0T2tOcG5lVlN5ejR6MUdr?=
 =?utf-8?B?TEpnMHk2T3cyeGRjOVZmWHprVVVPNFRIa2x2MG5QeVJ1V0J6dFhtTGdwYzVk?=
 =?utf-8?B?S1dkV1pqQ1Y1RGhzempsWHJ3eHR4K2tZSmh4MnlVUjI1REU1VkR2SHZib0U3?=
 =?utf-8?B?UkVpZEtmVjZkSVFvc3pXSC8vYXFKQnBNUUw3UktRbDAvWUorY2JpLzhvN3Jz?=
 =?utf-8?B?dXd5WnFlOUxOSHRsNWZkby9wcjFIWG9qeTF0amRrbHY3c0RMNDExbmtyZ3k3?=
 =?utf-8?B?a21DNVFFbXgzTkU3S0kzZEFPdEE3cmttT0ZjQUVpbjdZQ1lIUEhaT1ZkQkYv?=
 =?utf-8?B?eWlJQy9qMU4ySE1XOXBaL05jNUpQcUd2TG53dkNZV2VWOG9ZVWIweDJKRnhC?=
 =?utf-8?B?WlpBMUV3N1FiK2JVWUNKNzFLNnVpblhPOHhJenR3elpQb1k5dnNwTHAwbENt?=
 =?utf-8?B?cWlESlJIYXBoam1hMXkrTTF0VXJIQnlBQXdTeSs0K1JlK2hWZ0FrZWVLdG5X?=
 =?utf-8?B?a3F5TkQ5a0RwZzA3SmRqeDNHRUZNWWE1MXRtZEU1ejlPSE9mSkt0bENkWldB?=
 =?utf-8?B?RXg5VXp5U0NKeW9MMktaNkEyR1FRK21qWm5UeEVIemZZaUZZMnVVZmQwU2F3?=
 =?utf-8?B?T244UWhnUEJwQjFQVDA0VUJQcXo0MzRhK2NiTmw2R1ZtclJvNjdjSDJOL3dK?=
 =?utf-8?B?YW13TUpIMU1LR1ZrZDJwZUtPdmxHWlVRV1pPcVBST3hOQW5jL0lOdHBqbWY5?=
 =?utf-8?B?MUwvYlR6Q2cxYU1ueWl3d3R5T2tudUVGYjF1M3lXUWlPMUFTQUkyQ0NxOGNK?=
 =?utf-8?B?MWVkL3BidGR3cG9VUmJ4eGdNMkpiQkE5dWxhTlFtSDlEVjFEaEJLR1h6elcr?=
 =?utf-8?B?YkZXWThyOXJLcUxFdm95TXVTRWFtYXZoZHJwcWIzMU13a2JEaEcvREVGTkJp?=
 =?utf-8?B?K1JSRjNwMGtmNjZJR1pIMlFXdTA5eHpLenp6bFQrRThQTEsxRXFCNmVoYXlS?=
 =?utf-8?B?VHF6TkdyVGdNZFVhZWl6SFB0TXRsNW1HNDdCemxOT2RwakdsU3VKQUpWbkll?=
 =?utf-8?B?OHFnY1R2TnBFZ0ZocWttVG9BSDRMb3F5S01Bdk9VaUJabENBN2pHVSsyMDBF?=
 =?utf-8?B?TW1MSGRhMCtvYkE5ckxVaXgwa1FNZ3BTNTd5RWNkWENaeWlEUXhxSlpEdWhM?=
 =?utf-8?B?QkpSNDB3cnBxOEZwQVk0UkFRTDFVZ1hVc2xKQitob3VzdldESFJsUE9iekxr?=
 =?utf-8?B?Nlovdis3YmZwd0N4YmZQdDVaOStvdTAwTUo3ZkxzeUhGclRka2VOalBnajBi?=
 =?utf-8?B?K2xtaVR3a09LS0NrZE53UTlOUDZHcUFIUGl0Yk9EVjl4b1dUUU1ST2hENXNn?=
 =?utf-8?B?OXc1Mks5VUpmVUlBM1hJUlNGc0JoZy9acEYrNnU5eXdESjE0Q3J4VkdlK3Rh?=
 =?utf-8?B?VlJEK0lqaGVDVHI4VHNKSFhUendWTlY1Y1hhcVNBTytHaWllcENEWGcyUXV3?=
 =?utf-8?B?Y1hUYXRYQkpoaXZoc282d3g1cldJaldENDJoZUFmZXZVWVhYSW5CcS9RUjlS?=
 =?utf-8?B?K2pUWjJJSkhqaWtOQlUyWWZUMkxNM1pSNU9zcDVYdnVuV281OWtVbVhSYkF1?=
 =?utf-8?B?a2xjcHRyYm5HL0p0Q1ZlQllwbGNqUE0vUk1ZN0o1Mk5xbXdkNFpFZGlaRnNr?=
 =?utf-8?B?cHZFQXZ0cDNMNVJFeEloakVQN0p1YWkxc0kwQm54Y29ZNGlEdEwxRTJtNFZY?=
 =?utf-8?B?VFQwV1hCdDlXRmVZbC8vWUVuM01VbGlENjNwOXdyL2xnOTY1Yy9ZZ2t0cm95?=
 =?utf-8?B?L1pYb0NPMzdDeW9HVkVpTzNDOWRNdFpyTzI1ODNyV1NFcGwvMmEvYVVLaU41?=
 =?utf-8?B?dVFUZTFUZTVCZ1paNVJwY0dxcDBLTHgvWUxNWDhLRkNVeGFOenUybElFODNa?=
 =?utf-8?B?VjFRMzV4citHV2c5MHhTT1R4bXJHdkJPankxOXZsRzVhZCs4SHkwUFcxOFR5?=
 =?utf-8?B?alpacEdWWUNQZDBReU5hSTlTcGJkbE9LcG42eEdTTjdueDU2UHlMQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cUBFxM/zBjdx8bDgFxonyt8J9ETideitI6iOBuJpccX99co1oCZ9tDhf1p0Nl1bzEjeZQltR9bZeZL40I8m59GHke2GlRMIqwZ6UxK7w6TEC3oR4kQBmugwv6zCsmh3h8/8M6Yfe1WC/oPD4OJMf2pTYpOomn5me5P+HaTaK2ozFIejuqV46sgRQakWa7XRuKXJWhxc2EBpwu41PxYxVGe3xmCEbifNuaFl5tux/sBOdVbjfLgpeKdIAWT0eS/PCsda0skkE5IhtoeyO/fXjYIMmFhqfZreI9bziX/e0vJwp/aeD9VnV4SQIpEmAwHZNkw/QamqT1V/Wf7GabeCHIg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d48ad8f-76d3-4bd7-670d-08de7dbf9f13
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2026 09:38:29.3284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cfQ18xJeAkheGITY4wiaVG6iiXWk4XxOVIOkxMwAlQNPinRfLH8WVGHo3jnoWCZQBtQ6ATtUE9p+yMJaILV41g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8820
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
X-Rspamd-Queue-Id: 1533B236463
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTXVydGh5LCBBcnVuIFIg
PGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE1hcmNoIDQsIDIw
MjYgMTI6NTIgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVs
LXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gu
bWFubmFAaW50ZWwuY29tPjsgTmF1dGl5YWwsIEFua2l0IEsNCj4gPGFua2l0LmsubmF1dGl5YWxA
aW50ZWwuY29tPjsgTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ow0KPiBIb2dh
bmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT47IE11cnRoeSwgQXJ1biBSDQo+
IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIdjZdIGRybS9pOTE1
L2RwOiBSZWFkIEFMUE0gY2FwcyBhZnRlciBEUENEIGluaXQNCj4gDQo+IEZvciBlRFAgcmVhZCB0
aGUgQUxQTSBEUENEIGNhcHMgYWZ0ZXIgRFBDRCBpbml0YWxpemF0aW9uIGFuZCBqdXN0IGJlZm9y
ZQ0KPiB0aGUgUFNSIGluaXQuDQo+IA0KPiB2MjogTW92ZSBpbnRlbF9hbHBtX2luaXQgdG8gaW50
ZWxfZWRwX2luaXRfZHBjZCAoSm91bmkpDQo+IHYzOiBBZGQgRml4ZXMgd2l0aCBjb21taXQtaWQg
KEpvdW5pKQ0KPiB2NDogU2VwYXJhdGVkIHRoZSBhbHBtIGRwY2QgcmVhZCBjYXBzIGZyb20gYWxw
bV9pbml0IGFuZCBtb3ZlZCB0bw0KPiBpbnRlbF9lZHBfaW5pdF9kcGNkLg0KPiB2NTogUmVhZCBh
bHBtX2NhcHMgYWx3YXlzIGZvciBlRFAgaXJyZXNwZWN0aXZlIG9mIHRoZSBlRFAgdmVyc2lvbiAo
Sm91bmkpDQo+IHY2OiByZXBsYWNlIGRybV9kcF9kcGNkX3JlYWRiIHdpdGggZHJtX2RwX2RwY2Rf
cmVhZF9ieXRlIChKb3VuaSkNCj4gDQo+IEZpeGVzOiAxNTQzOGIzMjU5ODcgKCJkcm0vaTkxNS9h
bHBtOiBBZGQgY29tcHV0ZSBjb25maWcgZm9yIGxvYmYiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBBcnVu
IFIgTXVydGh5IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IEFuaW1l
c2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogSm91bmkg
SMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNClB1c2hlZCB0aGUgY2hhbmdl
cyB0byBkaW4uIFRoYW5rcyBmb3IgdGhlIHBhdGNoLg0KDQpSZWdhcmRzLA0KQW5pbWVzaA0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jIHwgNiAtLS0t
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgIHwgNyArKysr
KysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Fs
cG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IGlu
ZGV4IGIzMzM0YmM0ZDBmOS4uYTczNTBjZThlNzE2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBAQCAtNDQsMTIgKzQ0LDYgQEAgYm9vbCBpbnRl
bF9hbHBtX2lzX2FscG1fYXV4X2xlc3Moc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4g
DQo+ICB2b2lkIGludGVsX2FscG1faW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSAgew0K
PiAtCXU4IGRwY2Q7DQo+IC0NCj4gLQlpZiAoZHJtX2RwX2RwY2RfcmVhZGIoJmludGVsX2RwLT5h
dXgsIERQX1JFQ0VJVkVSX0FMUE1fQ0FQLA0KPiAmZHBjZCkgPCAwKQ0KPiAtCQlyZXR1cm47DQo+
IC0NCj4gLQlpbnRlbF9kcC0+YWxwbV9kcGNkID0gZHBjZDsNCj4gIAltdXRleF9pbml0KCZpbnRl
bF9kcC0+YWxwbS5sb2NrKTsNCj4gIH0NCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMNCj4gaW5kZXggMDI1ZTkwNmI2M2E5Li5kNmE3Y2NiYzk5MzIgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTQ3MDksNiAr
NDcwOSw3IEBAIHN0YXRpYyBib29sDQo+ICBpbnRlbF9lZHBfaW5pdF9kcGNkKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsIHN0cnVjdCBpbnRlbF9jb25uZWN0b3INCj4gKmNvbm5lY3RvcikgIHsN
Cj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50
ZWxfZHApOw0KPiArCWludCByZXQ7DQo+IA0KPiAgCS8qIHRoaXMgZnVuY3Rpb24gaXMgbWVhbnQg
dG8gYmUgY2FsbGVkIG9ubHkgb25jZSAqLw0KPiAgCWRybV9XQVJOX09OKGRpc3BsYXktPmRybSwg
aW50ZWxfZHAtPmRwY2RbRFBfRFBDRF9SRVZdICE9IDApOw0KPiBAQCAtNDc0OCw2ICs0NzQ5LDEy
IEBAIGludGVsX2VkcF9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gc3Ry
dWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yDQo+ICAJICovDQo+ICAJaW50ZWxfZHBfaW5p
dF9zb3VyY2Vfb3VpKGludGVsX2RwKTsNCj4gDQo+ICsJLyogUmVhZCB0aGUgQUxQTSBEUENEIGNh
cHMgKi8NCj4gKwlyZXQgPSBkcm1fZHBfZHBjZF9yZWFkX2J5dGUoJmludGVsX2RwLT5hdXgsDQo+
IERQX1JFQ0VJVkVSX0FMUE1fQ0FQLA0KPiArCQkJCSAgICAmaW50ZWxfZHAtPmFscG1fZHBjZCk7
DQo+ICsJaWYgKHJldCA8IDApDQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKw0KPiAgCS8qDQo+ICAJ
ICogVGhpcyBoYXMgdG8gYmUgY2FsbGVkIGFmdGVyIGludGVsX2RwLT5lZHBfZHBjZCBpcyBmaWxs
ZWQsIFBTUiBjaGVja3MNCj4gIAkgKiBmb3IgU0VUX1BPV0VSX0NBUEFCTEUgYml0IGluIGludGVs
X2RwLT5lZHBfZHBjZFsxXQ0KPiAtLQ0KPiAyLjI1LjENCg0K
