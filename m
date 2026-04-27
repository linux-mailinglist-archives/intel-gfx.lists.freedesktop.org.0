Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGuSCufU7mkKyQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 05:15:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8CF46C4C2
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 05:15:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04DCE10E1F3;
	Mon, 27 Apr 2026 03:15:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eXekoMuq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B0A910E1AE;
 Mon, 27 Apr 2026 03:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777259748; x=1808795748;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TLZw3w+9LgI1BQ/n87mx4N0Y+5+TmlcNks/UuBxRYuM=;
 b=eXekoMuqJeK6EWD+l3WX2PcFE4WaEVnm4ChoGJ+yTVOGayceOUYP1TYZ
 qZWaQTXlBJvDsQ6kzXz5fQmSecYecyITt0S07uTYLzVHuZhKLmPWv7HxN
 +4XYOl0V2ktc+6GFV02WcZYqVjqyqPqrxNWfC8n2JerPmsvbc67zkIYr/
 GqNnk5OJPu9VqXJnh07pH+eOH9xQUMQmXJaCU9LSDqAE9br0+ifVOzm+5
 vskSiWCSPU1XwpLuIJwFhC9GnWFQhh3aRU9vtc0II+GVPNUSFuIkiXroh
 OOPJurxzDGL1xAWcz8VayOoqYrRYzTDyy27kM/DxL8pQSF9cAg/9NUBvY Q==;
X-CSE-ConnectionGUID: 4Hegs0oRQ/ChZwirb9l92Q==
X-CSE-MsgGUID: npZq1t1CQ1Sm3NpH6LQVOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="77166429"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="77166429"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2026 20:15:47 -0700
X-CSE-ConnectionGUID: thKQvDluRE6Hdel8Cloj6Q==
X-CSE-MsgGUID: hmX2flZgTYebJYz9F34HQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="230880451"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2026 20:15:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 26 Apr 2026 20:15:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 26 Apr 2026 20:15:46 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.33) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 26 Apr 2026 20:15:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GDgBHrFWLJeh30jOFlnhWZdSn4n6P/QZ6leahxwyARM8rmqzVox0P9xW7qisbFMLmcLCxK+ojpDUEA4a++red0eCXlxqTDSR3lLckj+mVrA17hkiwzFs7vbtvSPDoiVUV8cYi7Mo4dBAZgRaeR1aExaDnjz/v9OCwYwU2sz/sknnIL/LBwA91K4SoUI4+NpaHpdTYtYenTmVEYEiBAPG3lh46F2Lu7AMSLLFpnFSOQJgBYK3qdUjQRGJYS9lVqP30yO9J5VHU6QL7d7a1TJQUc54B9dC+6QawGuESn4MNldsu7Iy9iE0o+jhooDMdXtw55ockV/HLc7X85cCPfPo0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ey6xwMNMlXjwn+1zbTZUywTjnp4AUGXVn4yl8bE2aH8=;
 b=TrSwZlbb7qjsOzCE4EO8JATIbLK4IQs+McKL5j1ORq5rxGGQa6Y59TgfJznJj8PSoB2DsP5vq9j1Q9+pjPOJsgYuD/Oir8RvjFywEtObUbDYvg67sIxORvHfIQ7AUD8JT3uHEVPEtHbE9mQc/fq2+gJ5DJQkNval5DGshvVT7b2l2AlINVxwX9LI7htqKGsSF078NXhSnBKx/PtgazMFo8KLT+Bs/+L9ZJEiJhLN2c1DWM5R0OoRRat+sO6w+xmlFk/wxgShp8MjuKeePsdftVk+6y9TSWaB/CiPhO7xHxhj1bfbnXzDCvco6A7/ynavynD0ThdFFeBtlKMxkdUQOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9870.16; Mon, 27 Apr 2026 03:15:43 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 03:15:43 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH v2 11/13] drm/i915/display: PSR Add delayed work to exit
 DC3CO
Thread-Topic: [PATCH v2 11/13] drm/i915/display: PSR Add delayed work to exit
 DC3CO
Thread-Index: AQHc0nTLCuLWW2ABZkWmqiEmUPTgm7XyQzfg
Date: Mon, 27 Apr 2026 03:15:43 +0000
Message-ID: <DM4PR11MB6360B0DBDFF16FCA8D96E0CDF4362@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260422162622.1869831-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260422162622.1869831-12-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260422162622.1869831-12-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL3PR11MB6435:EE_
x-ms-office365-filtering-correlation-id: 438fc5b0-37bb-455b-b803-08dea40b448c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|376014|1800799024|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: zMTg2YYAdHolz3AEjkHT1Q5z0Ant+Fsjsori/G6/a4yjNy7xYIBCsql2VzRUhLLBF11DbogvgBnCa/r/3zZU/WGlI4cOt9+hXV+FUTRw4hV9v50ARHg8QyBAbUcYoEt7V63ho7lpXEpL20WCuo4oHi2jkMVbedZak7LfwADnHHbo0u3Kk8hpsDE15rRP8R+u4Ml4tHOxP2nHqHG+mfEAyF0epeDCBEMhh9CDkHeipwFs+ZzsumrzHvOYXxlj9nNTuC0DHt1ZMToGG6JmTqyxn0CraeIHq/pr9dNz2ZuUybXroIpqEi+/CU+DKl44SQ8ntMQbg4erXZEstGo2S5ky7U4LnkLMUUXkZiknr678Eu7Hl5fqTn2xYP9whTLEROSGoo8PBdpXEjoGLNSpMf7HTkt+x3NBroKARNc6WGARHU7vH5IIGcoiE6DOj+yBDrJAIu1ELGmX3dC7k5dstrLfrFmO58FLC83OVPT0lLkf9ibAYO3GggUohjJyg+gDVb0mnGtB6VZrNTr3eelcA3Rvv+O9WVRHqF9NKtlAv/WTZOTpLZxQug7Q/cVy+mqPFdJA7BjnB6Q3XVPMlWETHOnAqSqqaqupUWWrnodAy53sh+yaFTEI6b9BuS4bTbhbvZgsnlfJyknxeanimJVFHrT64hJ47qEQxwuL4FF2zk4KEiadF/wyZoFVDSXXKrQZ3LVOFCGxkSTun+jSF0mZqwNeQFOIMhKv8gnYUc4mpn1zlmotERwmp6pvrA9P2A1TV9FHENEkyMf/B6sUwGCS83vuy+m4+Bld36UMFnoaB1WxqTc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RNXNoCgRoIMiok9DhVqnAsA5MriISUt8rbxWZ+eoa3X8qZhxdTiwP4IrXHoR?=
 =?us-ascii?Q?AMcKGyCas9mBHluglRawwWfcZ4Z7sSivZQWrl1rQACIfuTFRUu86szVdTerT?=
 =?us-ascii?Q?C0a7nTNO0+CWgoc7TFwPOGSYBlyvXTQ2US9gqIONCeK66gmh3tazN1nuA419?=
 =?us-ascii?Q?adXtotFAVm1yZLu1X+7rdRovqFUHMnu+oLaB26zwle9rSD0FUVvwRHesBbIM?=
 =?us-ascii?Q?Tvo8nnfNNAqrQGG+N7qhvwnvDpbmlM+6nXIQM/0Y1beibC/bWqrPMVHANv70?=
 =?us-ascii?Q?nZuIXJdVKxwI4sjSWsRU0eNrPozBkMijDJHd8TeMlTTKYzdXthVEuIlVdLRu?=
 =?us-ascii?Q?MwSYG1lKDNAaku7a3OY3MROVSvAqZt01tfr6as4mJTcsLoCVz8QySaZlD0tc?=
 =?us-ascii?Q?qRzV2s6D9b2mpqMcqyrNr8Od/DFuAftlKC7cJ9UtAKdZ6awvAnGrpVpXnM31?=
 =?us-ascii?Q?WMUrsqnl/X6I+JtdtykolAxEJ1G+0yfXqm3X8ykt6GCOM41V70cw7mO01t1R?=
 =?us-ascii?Q?RXh+KTg708qYmD+tFz771ejyLruX9y8Qa6sV/aLO0F83LdkJVAiGozg7c7oz?=
 =?us-ascii?Q?IM9XVEV3YHk3DZPs1uNIxf0KTzkuS5QYOMac7iWPzXDe0TDcqA3yZW1O0k2h?=
 =?us-ascii?Q?OfP2Cv/Bv1JqRTfP2CS1dXOPsnERQYg47HFY2A/NH27GtDRmdvx4Hmn6NkS6?=
 =?us-ascii?Q?DoRS183OKBVCY+gtMxcS+6y41yMOUUHIMUxgGo2FgnOmV+zrOQwqduPxkraC?=
 =?us-ascii?Q?5/GQpRGpLWia5u+sG8hat5PuPpQ7+nbOhVsA/g8Y9DYHWhamwKmDIgjyak7G?=
 =?us-ascii?Q?Rfs36xkr0lF0dAirOwy2uuxorhr28c+TokdnOVaqJu+tytowY/WEA89wPax8?=
 =?us-ascii?Q?k445CE6kNqHBz89YwxUegBUZt34MVItpLH5mZPRkPFTdBzSUUJTU5vXIS3b9?=
 =?us-ascii?Q?mDKg2zPTw77t7grVuXOgUv/yHn8uq1Pw/M8YBOrrZmooOg7ym7VfjbdKedYx?=
 =?us-ascii?Q?bpTBSvD6udglZ3uVM1RbIOggfve69tt6AXOU2M5ySHIAJlfpXFq0cj0B0IiY?=
 =?us-ascii?Q?nHMByoEtZkjJK7OB2rNrWevH7RthYJWGKEbBQULO8UISrm/P5K20steAdk1X?=
 =?us-ascii?Q?yQ+vliXXHpLEb245Ks1Rrk0YMA2rfZNUMNzJkM0c2X8itC4lfso83uf+4PTO?=
 =?us-ascii?Q?g/qlEXv5MjyBjF6UaGcs+Ob2JcWFM53ZBj/qgYuaIxWfFi4CEyxKuLGAQ5fX?=
 =?us-ascii?Q?rNrPmQEQU8PElA3Kx2XPKYdt9yKmTCgTAmHPKAtA2Fx+EvxWEOznC8uc0ly6?=
 =?us-ascii?Q?pYrqJD8r8J+RAdFisucOGZSs/ldX6JCVaUPxN2YYbHSq6S36x7abCcd5PYYa?=
 =?us-ascii?Q?Pxgf6XxdtfRr5hYPD4LH6wLx4uyg4ZK+gbfh95VxIdCK6arYwBAJmm8fAJtL?=
 =?us-ascii?Q?ccWJXiTrFyZCI4mzTpLne4D0WVtcEqe6YCxWDmsnV8m7dbRr8DtgA0t+YIGt?=
 =?us-ascii?Q?SwXijezvWxRgInniP2mA/4MQRY7ijjq1przelIGmT4C1AGz4cCjOiMpGnSOX?=
 =?us-ascii?Q?e3Bv7o6czwqakSIkQDdK4sOY+D2QKvdCBydC+WU0yVYVIq/3Ydr088NGcSxy?=
 =?us-ascii?Q?EL9ozvRDuyiufpVNdb+lyqmcGOjBvgx7gUGYyh5DsI1RrdqbrcUZaC7XOsEZ?=
 =?us-ascii?Q?SiL4O6qN3aJZ3HgAc1EmS6sa7jXmn+VwzQ4Pbo2s4GfA4wY+vCb+JMP+OK8x?=
 =?us-ascii?Q?w/Hkh1ssdfLCgnvRSPDEtbbkYIeZCVS16hOfuv6K5P6qjgD67Lsr0eNo8prt?=
x-ms-exchange-antispam-messagedata-1: R2iW3bm7Kpxa5Q==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Lg3/XWDz8T99AjWCkHPWDsmOUquGgokXMQxvXB++0jKTTywUTl4qZp+YzRQGXo9EIx8JY7O1dGCNBMBR/HvAJvgzc+6ToKiCDSengXULhB4dwYQ6VCigREUvwmlm6bzTvOFhEpk7X+iIGjt6vRvHcgR2U3scyaeJlUii3g6GHognPU81MyUwORmPG5IAlG/YDcdkXAB287a7uEqHSMx9Ohi5Vh7xVCw1mYS+QLci5NvpcYV8Czdf0owi/DwcEsnEK5E545jPHpLED/IsK8F96lgyN4SkvU2rDVKEXfGsLd6xK8umhASBfAPlNx+8TN/cZNMsTuQQ9K24m8MouDUN6Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 438fc5b0-37bb-455b-b803-08dea40b448c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2026 03:15:43.4471 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uGsO+WCwv2kiQG93IyAptPLMASftSD4931+D4w5+82SxQ9a2YQcFfJj+eDJ7/6i4Qn1+yx0cR5dhpUheqBv2Xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6435
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
X-Rspamd-Queue-Id: 7E8CF46C4C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,dc3co_work.work:url];
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



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Wednesday, April 22, 2026 9:56 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH v2 11/13] drm/i915/display: PSR Add delayed work to exit
> DC3CO
>=20
> For DC3CO, idle_frames is programmed to 0, so PSR does not enter deep sle=
ep.
> Add delayed work to schedule DC3CO exit after an idle duration derived fr=
om
> frame time (minimum equivalent of 6 frames).
>=20
> The work is re-armed from the PSR flush path on relevant frontbuffer acti=
vity.
> Once the display remains idle, DC3CO is disabled, idle frames are reprogr=
ammed
> to their normal value, and DC6 is enabled to allow deeper power savings.
>=20
> Changes in v2:
> - Squash "PSR set idle frames while exit from DC3CO"
>   into this patch (Uma Shankar)
> - Add cancel_delayed_work() in intel_psr_disable_locked()
>   before clearing dc3co_eligible (Uma Shankar)

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 50 +++++++++++++++++++
>  2 files changed, 52 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 28ab686b702a..fb5c12bb5b5c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1771,6 +1771,8 @@ struct intel_psr {
>  	bool irq_aux_error;
>  	/* DC3CO eligibility used to control PSR configuration */
>  	bool dc3co_eligible;
> +	/* DC3CO disable work */
> +	struct delayed_work dc3co_work;
>  	u16 su_w_granularity;
>  	u16 su_y_granularity;
>  	bool source_panel_replay_support;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index ff9ce7d2a5aa..36180206d3ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1728,6 +1728,51 @@ static bool intel_psr_needs_wa_18037818876(struct
> intel_dp *intel_dp,
>  		!crtc_state->has_sel_update);
>  }
>=20
> +static void psr2_dc3co_disable_locked(struct intel_dp *intel_dp) {
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +
> +	if (intel_dp->psr.dc3co_eligible) {
> +		intel_dp->psr.dc3co_eligible =3D false;
> +		intel_display_power_set_target_dc_state(display,
> DC_STATE_EN_UPTO_DC6);
> +		psr2_program_idle_frames(intel_dp,
> psr_compute_idle_frames(intel_dp));
> +	}
> +}
> +
> +static void psr2_dc3co_disable_work(struct work_struct *work) {
> +	struct intel_dp *intel_dp =3D
> +		container_of(work, typeof(*intel_dp), psr.dc3co_work.work);
> +
> +	mutex_lock(&intel_dp->psr.lock);
> +	psr2_dc3co_disable_locked(intel_dp);
> +	mutex_unlock(&intel_dp->psr.lock);
> +}
> +
> +static void
> +psr2_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuf=
fer_bits,
> +			enum fb_op_origin origin)
> +{
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +
> +	if (!intel_dp->psr.dc3co_eligible)
> +		return;
> +
> +	if (!intel_dp->psr.sel_update_enabled ||
> +	    !intel_dp->psr.active)
> +		return;
> +	/*
> +	 * At every frontbuffer flush flip event modified delay of delayed work=
,
> +	 * when delayed work schedules that means display has been idle.
> +	 */
> +	if (!(frontbuffer_bits &
> +	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe)))
> +		return;
> +
> +	mod_delayed_work(display->wq.unordered, &intel_dp->psr.dc3co_work,
> +			 intel_dp->psr.dc3co_exit_delay);
> +}
> +
>  static
>  void intel_psr_set_non_psr_pipes(struct intel_dp *intel_dp,
>  				 struct intel_crtc_state *crtc_state) @@ -2264,6
> +2309,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp=
)
>  	intel_dp->psr.psr2_sel_fetch_cff_enabled =3D false;
>  	intel_dp->psr.active_non_psr_pipes =3D 0;
>  	intel_dp->psr.pkg_c_latency_used =3D 0;
> +	cancel_delayed_work(&intel_dp->psr.dc3co_work);
>  	intel_dp->psr.dc3co_eligible =3D false;
>  }
>=20
> @@ -2294,6 +2340,7 @@ void intel_psr_disable(struct intel_dp *intel_dp,
>=20
>  	mutex_unlock(&intel_dp->psr.lock);
>  	cancel_work_sync(&intel_dp->psr.work);
> +	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
>  }
>=20
>  /**
> @@ -2324,6 +2371,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
>  	mutex_unlock(&psr->lock);
>=20
>  	cancel_work_sync(&psr->work);
> +	cancel_delayed_work_sync(&psr->dc3co_work);
>  }
>=20
>  /**
> @@ -3558,6 +3606,7 @@ void intel_psr_flush(struct intel_display *display,
>  		if (origin =3D=3D ORIGIN_FLIP ||
>  		    (origin =3D=3D ORIGIN_CURSOR_UPDATE &&
>  		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
> +			psr2_dc3co_flush_locked(intel_dp, frontbuffer_bits,
> origin);
>  			goto unlock;
>  		}
>=20
> @@ -3616,6 +3665,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
>  		intel_dp->psr.link_standby =3D connector->panel.vbt.psr.full_link;
>=20
>  	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
> +	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work,
> psr2_dc3co_disable_work);
>  	mutex_init(&intel_dp->psr.lock);
>  }
>=20
> --
> 2.43.0

