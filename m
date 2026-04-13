Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLzAIKOh3GkEUgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 09:56:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6F63E89AE
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 09:56:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FB5C10E34D;
	Mon, 13 Apr 2026 07:56:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="js/bQh+U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9FED10E34C;
 Mon, 13 Apr 2026 07:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776066977; x=1807602977;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s81mqe9E/LcUHSnuE7jjN212KX74fGnfcp07M9a7tQk=;
 b=js/bQh+UIO6EnQwZVQJqLHEeCu3ZRhKyBuGIx01jhsfxiiMWFHgkmFvt
 mWlyAvgoO0kRjpJUCg97MY5SZlED6ljQ4R+dh3oylohLrzIQtet9b6GV8
 Y4YSR2O6cvqXOC6lnusgfQbYwjZipC5J1rzn/BjiYcvg8jjjcD4PkXulP
 DHuGfP5kWIZx5Drt9cQx5bPrB5U5Y/oX1+6ZSOTAS3+EiNlcp/SnqRBy6
 2CLy+bJhCnvqdhROVWPv5+iWGgpwUHjysijDLyR9q12TaffPAuv77lYkD
 QF+GgYawnM7OpxQMvElVMeR9zPOXSGz0AWS66jtUrjTV3w2HaZ/x8Zg10 w==;
X-CSE-ConnectionGUID: HIeFZCDbTti7W45il4rSrA==
X-CSE-MsgGUID: OmptGiRiQ82itGTYQaHUyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="99640244"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="99640244"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 00:56:15 -0700
X-CSE-ConnectionGUID: ODqnKXWvTzOTe8dsh1sobQ==
X-CSE-MsgGUID: +cg+b167QciOwyD3RGRcUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="223229216"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 00:56:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 00:56:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 00:56:12 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.9) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 00:56:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HcKj3qNd/GcNFG4C0u1KLX0VeP3rS2m3UIvYI7z9GmZWuhDk0uaAbagbkA6J+TsfM4zCg7hu8wnafwB/J5naib+UC8IYw8VzXgh6ZnWfd/5MKUPQ9UYRS93wivRRXDjGICegSJJkeVQYP5h6XS8w8ZrHwtg3W9jPXl0KUjEJid6Ms9fuKVD3Rt7jLrmJAkaqYggOFfTXPfausfyIRId+wPBlDWJ8uSdOk8mqh8Xn7YcpxbF78qouazzZWbfwqdBDx3syK1ylNvGVubEvBMPusVbCCYjK+SyyBbxL48oKhoce3pbC8Eoe/wOjk4QPRpUE5ppzkvrtkYE/PPToxKzhZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s81mqe9E/LcUHSnuE7jjN212KX74fGnfcp07M9a7tQk=;
 b=Mbzxa+c7o1Cm3i7SeXr5WM1YB5VD0muf27V9lB59DjBVTjbrVryC4iMbb/+K1aWsMn1PZZsq0rFfzX0wOfzRKFkGn8qL+kNOR/e98yqdp7s9RBGP134kFPNhSqvUxbA/0rtsOKsaYXnKVypMDOcwzTp+mpxdESeXAi/Jqf/XQhBP2+GO2bfh1rT+69wsRlpJAk0Oa40ayCzQvcz8r5BkdaKR4RKdhe7kSjegF5fHP6ZUrStau1VZUOuCkeE4q1u1PpHnCm7Ir57krNKsNqWv5dpRHMbdQelmJ5rA60a+yBjoCkxpmSLaLTVgDc6bZH8GMJLnj/ZodeZp6JOT775gSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPFAB4263235.namprd11.prod.outlook.com
 (2603:10b6:518:1::d41) by DSSPR11MB9643.namprd11.prod.outlook.com
 (2603:10b6:8:374::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Mon, 13 Apr
 2026 07:56:10 +0000
Received: from PH3PPFAB4263235.namprd11.prod.outlook.com
 ([fe80::62cf:3d13:b91:6a5b]) by PH3PPFAB4263235.namprd11.prod.outlook.com
 ([fe80::62cf:3d13:b91:6a5b%5]) with mapi id 15.20.9818.014; Mon, 13 Apr 2026
 07:56:10 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/2] drm/i915/joiner: Make joiner "nomodeset" state copy
 independent of pipe order
Thread-Topic: [PATCH 1/2] drm/i915/joiner: Make joiner "nomodeset" state copy
 independent of pipe order
Thread-Index: AQHcx3CEhScS5x/BIkCte3adcsBiZ7XVX5uAgAc/kYCAAAfeYA==
Date: Mon, 13 Apr 2026 07:56:10 +0000
Message-ID: <PH3PPFAB42632352A334AF507B05C7BED79E0242@PH3PPFAB4263235.namprd11.prod.outlook.com>
References: <20260408155744.13326-1-ville.syrjala@linux.intel.com>
 <20260408155744.13326-2-ville.syrjala@linux.intel.com>
 <64fcf34f83f7d3011ec204d7e260de399b265c6a@intel.com>
 <ebd35293306f951d2ea2f6632f97016069205111@intel.com>
In-Reply-To: <ebd35293306f951d2ea2f6632f97016069205111@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPFAB4263235:EE_|DSSPR11MB9643:EE_
x-ms-office365-filtering-correlation-id: 0f0266da-b4e4-4f7e-0dd8-08de99322044
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: CBm3ytkZnPh3PWamlzunKsq3Q7L2EHXoGNH6NuX388/cynEWy6SbnRYhpCwT10HIzdgOh7P5ArvGiOOKhoJ5Y0ZquKIFCHjDPBMK7KFYvlm8dyzIE/GxSOcRRP4xoVhihAUV0Y0mxlgibvy3delYgsfdJqz9UjJEUF9L7v92FBanEi11FQDpLIKRTtrBEwiH6XblCzX6mQqKjHMsKJoLaRsImO9rrY48RKkVduYuluWsJdNbodIWj93N+oxz91azdckbkVOC4iz96+sr8/b9QHScg6GBBszcHapZLbAT2Yqko2fiteU/9WjvePFwhCGp7f7/hCLOdrdNod5tj+MA76TR1LEv5rnsFOC4I650lVzn6Z+KdQSTJN8sKLe/kdn4xzuWZ9jmXO68KJFN9kWntN1nW2InDMzGYuIlr/2YUE6C0Re7igUxD8dYGcdy4UoX1GNEpwW9mledIlwc0qk5N0G0x85XWOa+W+kGEK6PvRm+EDxNOk8y0Kl6X/n0Ucpb9vIUoOJ61j5GjrdtManpFcnWftqwcNA4TgzqaF0wQliY/TjFtuMaG/S2+TqwypuGUvyGpepZF4wyEbXOEOIjPtv8TzqRnBrVNpYWLdo+QheVUkX/lLu1trqpni3iaqtnXNadajtoz/aaAx/QNumqTK/wBZLm+hH/fcfyufTR/fcJu7Dzv4sTQOOwC85dqg/yscnxg64QPKkAICPLigItzxLUyGii2XoSN7TFOL/GhsngP7jwQKi3/hcFIlbFT0cOYPRmsROA4SvpJ/WwKmPazXvASEzE6Y0z8QfSZV/nxHA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPFAB4263235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NmNwcWlyUGozMGNLcy9qVHR5MnhsTzNtamJESkh0eENaTUFpUnYrK3drVk5Y?=
 =?utf-8?B?SVFaMmhNV3NLQVRJbjJ0U1JhL0FKWG4rS093ZnR3ZHN6dENZa2VvSGlmNFl4?=
 =?utf-8?B?bTMxRStYYnBLUStDc09TeUF3d2trOHNSdnlDV1lvSVAvWnBPa2ZIdVpKTVNw?=
 =?utf-8?B?K085eGs5V2l1VlZObkhZZnUrS3FsS1kxdWF5bVVkVkVBUXRWRlM0SFZSRm5v?=
 =?utf-8?B?UGVSZFRWMEV2a3lkQTlHVU56bW1sc3BhaHNCTEw0UVNpdzlITDlvRUMxUTVN?=
 =?utf-8?B?TzhqY0N2QTNrcDJ4cDIrTEwycDRrQmdweDB3Y1MzTDgxNllEZFdUVHMwemhI?=
 =?utf-8?B?dE9yNEhYN281UmJJRDdLeXcrd09FRjQ0Y1Bxc2ZaS0s0Q3crVHlsWVlRU3lp?=
 =?utf-8?B?cnVtMkZWaGNQd0x5UitWYjFQcnFMcmlKK1BGTjBxdVl3Vis5ZS9TdjlsS0M3?=
 =?utf-8?B?bzkzbWxJanppcy9HRkU1elFidG9uVW54QlJtdnNrOXZubVdhVERlM29reWlv?=
 =?utf-8?B?VXc1dDZoVjZtcFZaa2M0VmdydTJHMnN2RE9YeTZvN2dmOVgySTJQUU9lOFg2?=
 =?utf-8?B?YWh3Vk1kNmpMWDJGR0k5Z0Z1Uk9hNUJSQ0Ivd2NiK1BPdU1CRCtiR2dXOGRn?=
 =?utf-8?B?UWIxTmtaV1ByajVSaG5lTXRuL3dxazdUdVJCVmlKZEY4U21PYVRuQVYwSkx2?=
 =?utf-8?B?Wmo3b1JXN3lydTF0aFQxVWIzb2EvT3JRbWdnOWhzbjJ3eGdaZWcvbS9LQ0ZC?=
 =?utf-8?B?VHpxRTc1dkEzNTZNYUJKZ2w4SU55WnJwaVRQTnk1ZWZzQktIbHBLZDNzRC9Q?=
 =?utf-8?B?dHZBNldLeURwRHhWaGQzU0Rad2h1OEdma252dHlQRjloUUtTN2dwVm5mTXR6?=
 =?utf-8?B?RkJFU1oyY2k4NFQrUlNkVTJZeFNhNnhabVl4MllaM2hpZ3dEZnhoUlRUc1V0?=
 =?utf-8?B?V2UwUDZPcHdrY2g3R1o2S3hYQStGalRhU3NoSXRORlFRdVNCbE9xdFhBYnBQ?=
 =?utf-8?B?TGNmekRaTy91MGpMUzB4NmJNL2xCYldHSnFBaVBwdlJFd3BUTFhyOW1VaXh2?=
 =?utf-8?B?OWlDSmExVXpML2hveXQ0QlBSWHZDeERLWVowSXJQQW1VZGE2Q1R5bEJTeDlC?=
 =?utf-8?B?R09KeGdXeWJLaDlJZVZGTjZ4d2UwZkxjSTBRL3Zrci93Q3pBRW54cjBRclVk?=
 =?utf-8?B?aGl3WkFkbXR3aWtWWVg1LzYxN3Q5ZzQ3VE1QQ2JxQUtMSysrekxVZTNRWkRL?=
 =?utf-8?B?NE9uczEzcE1mQUp3cVljcDNFWDhMblplNnhoTVpZV3dBMVdSMmExaU55NGZQ?=
 =?utf-8?B?c3lTc1FHK3R1U3I1V2FuVHFYYTYranBoeHh2bEJlNzQxODB1am1FenV6eHpH?=
 =?utf-8?B?OTJwMzFrblhxMjFKd1dWNkF0M2piazVKU28zaFRhamFDRjlGcFJDV2UycitO?=
 =?utf-8?B?Sy9HSjJFT1liekVzcSswUmNQS2FYRWN3Wm9NUXJvcGJ5VEo1M2lRbG1kRVNa?=
 =?utf-8?B?V2JmWDB6MGtzaVBYdkxTQWdUWU1hV1RhNWlqZUk2c0JxNityM01Rai9TYURR?=
 =?utf-8?B?SGZFQWNYOTIrY0szT01pQVp0ZDhaODcrQ2pYcTdSZFhFVm1VeCtyazdQN2s1?=
 =?utf-8?B?Y0ovMzQ0UVFEWjlGOGF4UnJwbm9CeEJTVVdqSU53TzdBUTBJZjZKaW9vNDFq?=
 =?utf-8?B?NTJLTnFZQytxUTYrN1lpRVNKWWEvUjJWcERqNVJlcW9xR29KdU1XbXVDZkZm?=
 =?utf-8?B?czM4T1BBNnJKOEdGeGJDMEtNKzYyM1IxcG5PRTRFanQ1SVdndzNjbm9wNEI1?=
 =?utf-8?B?RmZnWllKM3Z2M0V5d29LT2syQzlWckRHcHJQK1UvL05aRTM3MUFXd0Z5Z2dE?=
 =?utf-8?B?Tm8rUWM5UlJXMlNuR1NRWEtoU3lKNHAwZEhLbkIwei96aHY4M2pta09KYW0v?=
 =?utf-8?B?YWVLNW9vb0tBQkJMb1p3WjRhdElsYU1uUzh2SU8rV2UzMkNsT2FoS2Qra0Zp?=
 =?utf-8?B?VEpWc0xLQVE4SE9tYmx3ZXNPUHBmcmluMWkyN2RuUVFsdXpCcW1TQ3FRTVB1?=
 =?utf-8?B?Z3lFdXNQeDdzTk5mbjJmeDRQMEZUR3E3YjVqN1ROS3NXVlhPT2hmb2hqV0pI?=
 =?utf-8?B?aEdUeVNWN1B6M2gzNkt3b2tHTUh2dVZ6ZndKUUNsdXlRcWl5MzBXeFVDakF5?=
 =?utf-8?B?aDJzMk9VY2cxV1hneWErTHZXZU5xRWNKVnFyVmxlZjlrOWdjRndZS3FzcG8z?=
 =?utf-8?B?SElSVWxEQSs2ZEhSU0FCS1JwTk55L0xrSVZjK1JjcEpMZHlLWFZzTWh0Yzhz?=
 =?utf-8?B?Znh2UzVEbEhRNXRrWEdLNGhoSUl0SWs0RElzOE43OGZBT05LdmY1QT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: NUWZt9LevUlM2UjKZQN4x1QiRS/E/l9nOKVUVZFChIJwzxY9nZKMdwGbcHYJeu3LGuDy9ONddoPsHdsNwX7PDEDrz0IRRpuWBe8ZYLiiFwyPJmq8zhz6HoLhJ03vzGV0V5je0gWiSlKnN7bcgEcYUo71yIBzjTjx6GJZPQudUtOaW62j3VoysR2rlgZDvIeUixWp87jZPFKaHjNUoVPxRW+S+UJLzm2JDE73hA9a3VQl1RkMDfl1ExZC7cPTojq275EleGBfl2LxAElyxlOqsa2MM9ObfBeJSVUoLEHKD3TjXiJiWseI4UNWpK6OU9JNKl9hPmarO8YO1lDGctbtvA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPFAB4263235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f0266da-b4e4-4f7e-0dd8-08de99322044
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 07:56:10.1843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iJIovfz1QmNf5cd5XBQB3eg7Sl7Dt6coDRUz65xgXfuVga7/dnYnOwcfBrfcnPv/zM/pb99FOt0kh9m33C/CzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSSPR11MB9643
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.saarinen@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DB6F63E89AE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGksIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGlu
dGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEphbmkN
Cj4gTmlrdWxhDQo+IFNlbnQ6IE1vbmRheSwgMTMgQXByaWwgMjAyNiAxMC4yOA0KPiBUbzogVmls
bGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gU3ViamVjdDogUmU6IFtQQVRDSCAxLzJdIGRybS9pOTE1L2pvaW5lcjogTWFrZSBqb2luZXIg
Im5vbW9kZXNldCIgc3RhdGUgY29weQ0KPiBpbmRlcGVuZGVudCBvZiBwaXBlIG9yZGVyDQo+IA0K
PiBPbiBXZWQsIDA4IEFwciAyMDI2LCBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
PiB3cm90ZToNCj4gPiBPbiBXZWQsIDA4IEFwciAyMDI2LCBWaWxsZSBTeXJqYWxhIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6DQo+ID4+IEZyb206IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4+DQo+ID4+IEN1cnJlbnRseSB0
aGUgam9pbmVyIHByaW1hcnktPnNlY29uZGFyeSBodyBzdGF0ZSBjb3B5IHN0aWxsIGhhcHBlbnMN
Cj4gPj4gZnJvbSB0aGUgbWFpbiBjb21wdXRlX2NvbmZpZyBsb29wIGFsb25nc2lkZSB0aGUgcHJp
bWFyeSB1YXBpLT5odyBzdGF0ZQ0KPiBjb3B5Lg0KPiA+PiBUaGUgcHJpbWFyeSB1YXBpLT5odyBz
dGF0ZSBjb3B5IG11c3QgdGhlcmVmb3JlIGhhcHBlbiBmaXJzdCwgb3IgZWxzZQ0KPiA+PiB3ZSds
bCBlbmQgdXAgY29weWluZyBzdGFsZSBqdW5rIGludG8gdGhlIHNlY29uZGFyeS4NCj4gPj4NCj4g
Pj4gV2UgaGF2ZSBhIFdBUk4gaW4gaW50ZWxfYXRvbWljX2NoZWNrX2pvaW5lcigpIHRvIG1ha2Ug
c3VyZSB0aGUgQ1JUQ3MNCj4gPj4gd2lsbCBiZSB3YWxrZWQgaW4gdGhlIGNvcnJlY3Qgb3JkZXIu
IFRoZSBwbGFuIGlzIHRvIHJlb2RlciB0aGUgQ1JUQ3MsDQo+ID4+IHdoaWNoIHdvdWxkIG1lc3Mg
dXAgdGhlIG9yZGVyLCB1bmxlc3Mgd2UgYWxzbyBhZGp1c3QgdGhlIGl0ZXJhdG9ycyB0bw0KPiA+
PiBrZWVwIHRoZSBwaXBlIG9yZGVyLiBUaGUgYWN0dWFsIHBsYW4gaXMgdG8gZG8gYm90aCwgc28g
dGVjaG5pY2FsbHkgd2UNCj4gPj4gc2hvdWxkIGJlIGFibGUgdG8ganVzdCByZW1vdmUgdGhlIFdB
Uk4gYW5kIGNhbGwgaXQgYSBkYXkuDQo+ID4+DQo+ID4+IEJ1dCByZWx5aW5nIG9uIHRoZSBpdGVy
YXRpb24gb3JkZXIgbGlrZSB0aGlzIGlzIGZyYWdpbGUgYW5kDQo+ID4+IGNvbmZ1c2luZywgc28g
bGV0J3MgbW92ZSB0aGUgIm5vbW9kZXNldCIgam9pbmVyIHN0YXRlIGNvcHkgaW50byB0aGUNCj4g
Pj4gbGF0ZXIgbG9vcCB3aGVyZSB0aGUgIm1vZGVzZXQiIHN0YXRlIGNvcHkgaXMgYWxzbyBkb25l
LiBUaGUgZmlyc3QNCj4gPj4gbG9vcCBoYXZpbmcgY29tcGxldGVseSBmaW5pc2hlZCwgd2UgYXJl
IGd1YXJhbnRlZWQgdG8gaGF2ZSB1cCB0byBkYXRlDQo+ID4+IGh3IHN0YXRlIG9uIHRoZSBwcmlt
YXJ5IHdoZW4gd2UgZG8gdGhlIGNvcHkgdG8gdGhlIHNlY29uZGFyeS4NCj4gPg0KPiA+IEkgZmlu
ZCB0aGUgbnVtYmVyIG9mIGxvb3BzIGluIHRoZSBmb3Jlc3Qgb2YgaW50ZWxfYXRvbWljX2NoZWNr
Kg0KPiA+IGZ1bmN0aW9ucyBjb25mdXNpbmcgdG9vLiBCdXQgdGhpcyBsb29rcyBsaWtlIHByb2dy
ZXNzLg0KPiA+DQo+ID4gUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+DQo+ID4NCj4gPiBJJ20gd29uZGVyaW5nIGFib3V0IG1lcmdpbmcgdGhpcywgYWxvbmcg
d2l0aCB0aGUgcGlwZSByZW9yZGVyaW5nLCB0byBhDQo+ID4gdG9waWMgYnJhbmNoIHRoYXQgY291
bGQgYmUgbWVyZ2VkIHRvIGRybS1uZXh0IGF0IERhdmUncyBkaXNjcmV0aW9uLA0KPiA+IGluc3Rl
YWQgb2YgY2hlcnJ5LXBpY2tzIHdoaWNoIG1pZ2h0IGJlIGEgYml0IGN1bWJlcnNvbWUgZm9yIHBh
dGNoZXMNCj4gPiB0aGlzIHNpemUuIFNvIHBsZWFzZSBob2xkIG9mZiBvbiBtZXJnaW5nIHdoaWxl
IEkgZmlndXJlIHRoaXMgb3V0Lg0KPiANCj4gVGhhbmtzLCBJJ3ZlIHB1c2hlZCB0aGUgc2V0IHRv
IHRvcGljL3BpcGUtcmVvcmRlciwgYW5kIHdpbGwgYmUgcmVzZW5kaW5nIHRoZSBwaXBlDQo+IHJl
b3JkZXJpbmcgcGF0Y2ggYWdhaW4gc2hvcnRseS4NClRoYW5rcy4gDQo+IA0KPiBCUiwNCj4gSmFu
aS4NCj4gDQo+ID4NCj4gPg0KPiA+Pg0KPiA+PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4NCj4gPj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPj4gLS0tDQo+ID4+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIwDQo+ID4+ICsrKysrLS0tLS0tLS0tLS0t
LS0tDQo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMo
LSkNCj4gPj4NCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jDQo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMNCj4gPj4gaW5kZXggNThhNjU0Y2EwZDIwLi42NzRhNGVjZTZkMGYgMTAwNjQ0
DQo+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+ID4+IEBAIC01OTE0LDE3ICs1OTE0LDYgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hl
Y2tfam9pbmVyKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+PiAgCQkJ
cmV0dXJuIC1FSU5WQUw7DQo+ID4+ICAJCX0NCj4gPj4NCj4gPj4gLQkJLyoNCj4gPj4gLQkJICog
VGhlIHN0YXRlIGNvcHkgbG9naWMgYXNzdW1lcyB0aGUgcHJpbWFyeSBjcnRjIGdldHMgcHJvY2Vz
c2VkDQo+ID4+IC0JCSAqIGJlZm9yZSB0aGUgc2Vjb25kYXJ5IGNydGMgZHVyaW5nIHRoZSBtYWlu
IGNvbXB1dGVfY29uZmlnDQo+IGxvb3AuDQo+ID4+IC0JCSAqIFRoaXMgd29ya3MgYmVjYXVzZSB0
aGUgY3J0Y3MgYXJlIGNyZWF0ZWQgaW4gcGlwZSBvcmRlciwNCj4gPj4gLQkJICogYW5kIHRoZSBo
YXJkd2FyZSByZXF1aXJlcyBwcmltYXJ5IHBpcGUgPCBzZWNvbmRhcnkgcGlwZSBhcw0KPiB3ZWxs
Lg0KPiA+PiAtCQkgKiBTaG91bGQgdGhhdCBjaGFuZ2Ugd2UgbmVlZCB0byByZXRoaW5rIHRoZSBs
b2dpYy4NCj4gPj4gLQkJICovDQo+ID4+IC0JCWlmIChXQVJOX09OKGRybV9jcnRjX2luZGV4KCZw
cmltYXJ5X2NydGMtPmJhc2UpID4NCj4gPj4gLQkJCSAgICBkcm1fY3J0Y19pbmRleCgmc2Vjb25k
YXJ5X2NydGMtPmJhc2UpKSkNCj4gPj4gLQkJCXJldHVybiAtRUlOVkFMOw0KPiA+PiAtDQo+ID4+
ICAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gPj4gIAkJCSAgICAiW0NSVEM6JWQ6JXNd
IFVzZWQgYXMgc2Vjb25kYXJ5IGZvciBqb2luZXIgcHJpbWFyeQ0KPiBbQ1JUQzolZDolc11cbiIs
DQo+ID4+ICAJCQkgICAgc2Vjb25kYXJ5X2NydGMtPmJhc2UuYmFzZS5pZCwgc2Vjb25kYXJ5X2Ny
dGMtDQo+ID5iYXNlLm5hbWUsIEBADQo+ID4+IC02MzAyLDkgKzYyOTEsNyBAQCBzdGF0aWMgaW50
IGludGVsX2F0b21pY19jaGVja19jb25maWcoc3RydWN0DQo+ID4+IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsDQo+ID4+DQo+ID4+ICAJZm9yX2VhY2hfbmV3X2ludGVsX2NydGNfaW5fc3RhdGUo
c3RhdGUsIGNydGMsIG5ld19jcnRjX3N0YXRlLCBpKSB7DQo+ID4+ICAJCWlmICghaW50ZWxfY3J0
Y19uZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkgew0KPiA+PiAtCQkJaWYgKGludGVsX2Ny
dGNfaXNfam9pbmVyX3NlY29uZGFyeShuZXdfY3J0Y19zdGF0ZSkpDQo+ID4+IC0JCQkJY29weV9q
b2luZXJfY3J0Y19zdGF0ZV9ub21vZGVzZXQoc3RhdGUsIGNydGMpOw0KPiA+PiAtCQkJZWxzZQ0K
PiA+PiArCQkJaWYgKCFpbnRlbF9jcnRjX2lzX2pvaW5lcl9zZWNvbmRhcnkobmV3X2NydGNfc3Rh
dGUpKQ0KPiA+Pg0KPiAJaW50ZWxfY3J0Y19jb3B5X3VhcGlfdG9faHdfc3RhdGVfbm9tb2Rlc2V0
KHN0YXRlLCBjcnRjKTsNCj4gPj4gIAkJCWNvbnRpbnVlOw0KPiA+PiAgCQl9DQo+ID4+IEBAIC02
NDM5LDggKzY0MjYsMTEgQEAgaW50IGludGVsX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LA0KPiA+PiAgCQlnb3RvIGZhaWw7DQo+ID4+DQo+ID4+ICAJZm9yX2VhY2hfbmV3X2lu
dGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG5ld19jcnRjX3N0YXRlLCBpKSB7DQo+ID4+
IC0JCWlmICghaW50ZWxfY3J0Y19uZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkNCj4gPj4g
KwkJaWYgKCFpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpKSB7DQo+ID4+
ICsJCQlpZiAoaW50ZWxfY3J0Y19pc19qb2luZXJfc2Vjb25kYXJ5KG5ld19jcnRjX3N0YXRlKSkN
Cj4gPj4gKwkJCQljb3B5X2pvaW5lcl9jcnRjX3N0YXRlX25vbW9kZXNldChzdGF0ZSwgY3J0Yyk7
DQo+ID4+ICAJCQljb250aW51ZTsNCj4gPj4gKwkJfQ0KPiA+Pg0KPiA+PiAgCQlpZiAoaW50ZWxf
Y3J0Y19pc19qb2luZXJfc2Vjb25kYXJ5KG5ld19jcnRjX3N0YXRlKSkgew0KPiA+PiAgCQkJZHJt
X1dBUk5fT04oZGlzcGxheS0+ZHJtLCBuZXdfY3J0Y19zdGF0ZS0NCj4gPnVhcGkuZW5hYmxlKTsN
Cj4gDQo+IC0tDQo+IEphbmkgTmlrdWxhLCBJbnRlbA0K
